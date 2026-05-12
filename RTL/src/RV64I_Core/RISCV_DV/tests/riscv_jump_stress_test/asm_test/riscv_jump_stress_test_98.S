.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xc90daa52
                  li x1, 0x2c0d67c
                  li x2, 0xf0c9c25b
                  li x3, 0x323695d5
                  li x4, 0xd
                  li x5, 0xb
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0xf1550ab7
                  li x9, 0xa
                  li x10, 0xf60b8693
                  li x11, 0xb
                  li x12, 0x80000000
                  li x13, 0xf4e2bdfa
                  li x14, 0x0
                  li x15, 0x6
                  li x16, 0x80000000
                  li x17, 0xf470e789
                  li x19, 0x5213fed4
                  li x20, 0xbd1e1074
                  li x21, 0xf4b338a6
                  li x22, 0x313dd0b2
                  li x23, 0x9dd61115
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0xf456a515
                  li x27, 0x80000000
                  li x28, 0xf
                  li x29, 0x80000000
                  li x30, 0x0
                  la x18, user_stack_end
main:             la           s9, sub_2
                  addi         s9, s9, -539
                  srai         t2, a2, 19
                  sltu         a6, t3, t4
                  ori          ra, t4, 198
                  srli         s5, a3, 31
                  sltiu        s10, s3, -1263
                  xori         s4, t1, 1616
                  beq          a1, s6, main_j3 #branch to jump instr
                  or           s11, s7, a3
main_j3:          jalr         ra, s9, 540 #jump main -> sub_2
main_6:           jal          ra, 7f
0:                jal          ra, 14f
1:                jal          ra, 9f
2:                jal          ra, 10f
3:                jal          ra, 1b
4:                jal          t1, 3b
5:                jal          t3, 4b
6:                jal          ra, 15f
7:                jal          ra, 6b
8:                jal          tp, 2b
9:                jal          ra, 17f
10:               jal          ra, 13f
11:               jal          ra, 8b
12:               jal          t4, 11b
13:               jal          a3, 16f
14:               jal          tp, 5b
15:               jal          t4, 12b
16:               jal          ra, 0b
17:               auipc        tp, 130772
main_3:           jal          ra, 13f
0:                jal          ra, 12f
1:                jal          t1, 2f
2:                jal          ra, 3f
3:                jal          s7, 5f
4:                jal          t0, 7f
5:                jal          ra, 0b
6:                jal          ra, 9f
7:                jal          ra, 11f
8:                jal          t1, 10f
9:                jal          ra, 8b
10:               jal          ra, 4b
11:               jal          ra, 1b
12:               jal          ra, 14f
13:               jal          ra, 6b
14:               sltiu        s0, s3, -1309
main_0:           jal          ra, 17f
0:                jal          t1, 4f
1:                jal          t1, 15f
2:                jal          s6, 5f
3:                jal          s7, 10f
4:                jal          ra, 12f
5:                jal          ra, 3b
6:                jal          s6, 14f
7:                jal          s5, 11f
8:                jal          ra, 0b
9:                jal          t1, 6b
10:               jal          ra, 9b
11:               jal          gp, 18f
12:               jal          ra, 13f
13:               jal          t0, 1b
14:               jal          t1, 7b
15:               jal          t1, 19f
16:               jal          a7, 2b
17:               jal          ra, 16b
18:               jal          a4, 8b
19:               slt          s0, s9, t0
main_2:           jal          ra, 3f
0:                jal          s11, 24f
1:                jal          s6, 5f
2:                jal          s11, 11f
3:                jal          ra, 26f
4:                jal          ra, 12f
5:                jal          ra, 13f
6:                jal          ra, 18f
7:                jal          t5, 16f
8:                jal          t1, 27f
9:                jal          ra, 15f
10:               jal          t1, 17f
11:               jal          ra, 19f
12:               jal          a2, 14f
13:               jal          ra, 10b
14:               jal          t0, 23f
15:               jal          ra, 1b
16:               jal          s3, 20f
17:               jal          ra, 4b
18:               jal          ra, 22f
19:               jal          t1, 8b
20:               jal          ra, 2b
21:               jal          s11, 29f
22:               jal          ra, 25f
23:               jal          ra, 7b
24:               jal          s8, 9b
25:               jal          ra, 21b
26:               jal          t1, 0b
27:               jal          s9, 28f
28:               jal          ra, 6b
29:               sltiu        gp, a7, -456
main_4:           jal          ra, 14f
0:                jal          t1, 17f
1:                jal          ra, 9f
2:                jal          ra, 8f
3:                jal          ra, 18f
4:                jal          ra, 13f
5:                jal          ra, 10f
6:                jal          ra, 16f
7:                jal          ra, 15f
8:                jal          ra, 12f
9:                jal          ra, 7b
10:               jal          t0, 3b
11:               jal          ra, 2b
12:               jal          ra, 4b
13:               jal          ra, 6b
14:               jal          t1, 11b
15:               jal          ra, 0b
16:               jal          ra, 1b
17:               jal          ra, 5b
18:               add          gp, s10, a0
main_8:           jal          ra, 18f
0:                jal          t1, 25f
1:                jal          t1, 17f
2:                jal          ra, 8f
3:                jal          t1, 26f
4:                jal          ra, 20f
5:                jal          ra, 15f
6:                jal          s7, 9f
7:                jal          ra, 10f
8:                jal          t3, 4b
9:                jal          s7, 11f
10:               jal          ra, 21f
11:               jal          ra, 0b
12:               jal          t4, 13f
13:               jal          ra, 22f
14:               jal          t1, 6b
15:               jal          ra, 24f
16:               jal          t5, 2b
17:               jal          gp, 3b
18:               jal          ra, 19f
19:               jal          ra, 7b
20:               jal          s3, 14b
21:               jal          ra, 23f
22:               jal          ra, 1b
23:               jal          t1, 5b
24:               jal          ra, 16b
25:               jal          t2, 12b
26:               srl          s0, s7, s7
main_5:           jal          ra, 0f
0:                jal          ra, 12f
1:                jal          ra, 9f
2:                jal          t1, 6f
3:                jal          a6, 10f
4:                jal          ra, 18f
5:                jal          t5, 7f
6:                jal          t1, 14f
7:                jal          ra, 16f
8:                jal          ra, 15f
9:                jal          t1, 3b
10:               jal          ra, 11f
11:               jal          t1, 8b
12:               jal          t1, 13f
13:               jal          ra, 2b
14:               jal          gp, 17f
15:               jal          t1, 4b
16:               jal          ra, 1b
17:               jal          ra, 5b
18:               sub          s8, a3, a1
                  ori          t5, tp, -2027
                  sltu         gp, a3, a0
                  bgeu         s0, gp, 20f
                  bltu         t2, s8, 9f
                  addi         s9, s2, 1356
                  bltu         a5, t2, 10f
                  nop
                  and          tp, a0, a1
                  and          s7, t1, a1
9:                nop
10:               xori         t2, s6, -725
                  sltu         s10, a3, t6
                  srai         gp, s3, 7
                  add          s9, a6, ra
                  xor          a7, a7, t2
                  bne          t0, a0, 33f
                  nop
                  auipc        s9, 671296
                  sub          zero, s10, tp
                  sub          t0, tp, t5
20:               or           a3, a4, s9
                  auipc        t5, 358893
                  srai         a2, a0, 1
                  sltu         s5, sp, t3
                  and          a3, a7, t5
                  srli         t0, s4, 18
                  and          t1, a1, t5
                  sll          s8, zero, t3
                  xori         a2, a0, -32
                  slti         s7, a4, 1478
                  and          s10, a5, t6
                  blt          s2, a1, 45f
                  slli         t3, s8, 18
33:               beq          t3, a3, 44f
                  andi         t5, t1, 161
                  srai         a0, gp, 13
                  srli         a6, s9, 19
                  slli         t3, a4, 4
                  sltu         s3, a2, a6
                  slt          s0, gp, tp
                  ori          a3, s10, 1692
                  sub          s11, s0, a7
                  slti         a0, gp, -1715
                  sltiu        t5, t5, 388
44:               slti         t4, t5, 347
45:               slti         s0, a3, 450
                  ori          a0, s10, 1816
                  slt          a0, s0, gp
                  sub          a1, a6, a6
                  srli         a2, s7, 15
                  sra          t4, zero, tp
                  bgeu         a3, s10, 58f
                  sub          t3, t0, s5
                  beq          s2, t4, 64f
                  andi         s6, a1, -2019
                  sra          a6, a2, tp
                  bne          t5, ra, 70f
                  slli         t1, a2, 19
58:               lui          s9, 207777
                  sub          t3, t5, tp
                  slt          s7, s8, t4
                  slti         t1, a2, -1191
                  andi         s5, s5, 1388
                  beq          ra, gp, 70f
64:               ori          a6, t0, -562
                  srai         a2, s9, 4
                  xori         a5, a0, -1242
                  ori          s8, t3, 781
                  sub          t5, a1, s4
                  sll          a4, sp, t4
70:               bltu         gp, a5, 89f
                  beq          a1, s6, 79f
                  bne          t4, a6, 77f
                  slti         s7, a2, -221
                  sltu         s11, a7, s11
                  sub          s11, s10, a3
                  bne          s1, s4, 81f
77:               ori          t5, s4, -712
                  srai         s5, t2, 10
79:               beq          a1, s9, 85f
                  srli         s7, sp, 19
81:               auipc        a5, 956367
                  bgeu         s7, s7, 91f
                  andi         s3, s5, 950
                  nop
85:               andi         t5, t1, -829
                  sltiu        a1, t6, 1245
                  slli         t2, t0, 3
                  slt          a2, s11, s3
89:               andi         t3, gp, -756
                  srai         s11, s2, 17
91:               srl          a5, t1, s5
                  sltiu        t4, t2, 823
                  add          tp, a7, s10
                  sltu         ra, s9, tp
                  add          s8, s0, s4
                  bge          a3, t0, 110f
                  and          a4, a5, a7
                  add          t5, s2, a2
                  sltu         a3, zero, s2
                  bltu         a2, a4, 119f
                  bne          s9, s0, 112f
                  xori         a1, s8, -1712
                  bne          s2, t4, 109f
                  srli         s11, sp, 19
                  add          zero, a2, s4
                  bltu         t3, t1, 107f
107:              auipc        s9, 427646
                  lui          a4, 967919
109:              sra          a4, zero, s1
110:              blt          s1, a6, 115f
                  lui          s4, 36675
112:              sra          a0, a3, a3
                  slt          a2, s6, a2
                  slti         t4, a4, 225
115:              slt          s3, t5, a7
                  nop
                  xori         s5, t3, -1945
                  srl          t2, a7, t5
119:              add          ra, s5, a5
                  add          s8, t0, a7
                  ori          s9, gp, 1977
                  slli         s9, a3, 28
                  nop
                  addi         a2, gp, 1796
                  srli         t1, s10, 29
                  lui          s3, 492521
                  bgeu         s6, s1, 139f
                  or           s9, s0, a3
                  add          s10, s7, sp
                  lui          a3, 576701
                  and          t1, s2, t0
                  auipc        a0, 418602
                  ori          s4, s4, 703
                  sltiu        gp, a4, 1866
                  addi         s9, sp, -1183
                  add          s6, tp, s7
                  auipc        s0, 1023160
                  slti         s9, tp, 953
139:              andi         t4, a7, -932
                  bgeu         s8, a6, 150f
                  sra          t0, t6, s7
                  bltu         s9, t2, 152f
                  sll          a2, zero, s0
                  bge          s6, a1, 164f
                  srai         s7, s11, 5
                  sltu         a1, t3, a6
                  auipc        a7, 969642
                  andi         tp, s2, -992
                  or           s10, t6, s5
150:              srli         t4, s8, 26
                  or           a7, t3, a1
152:              slli         s6, a0, 8
                  bltu         a2, t1, 167f
                  bltu         a6, a6, 173f
                  or           a2, s6, t4
                  addi         s4, s6, -758
                  bgeu         s7, a2, 165f
                  sra          s10, a7, s4
                  bne          s3, gp, 176f
                  slti         s7, s6, -1370
                  slt          a4, a4, s9
                  lui          t2, 910773
                  nop
164:              xor          t0, s9, zero
165:              addi         a3, zero, 975
                  slt          t0, s11, s5
167:              ori          tp, t2, -630
                  slti         s9, t3, -1526
                  sltiu        a4, s0, -1623
                  beq          gp, tp, 184f
                  addi         ra, a6, 1121
                  auipc        s1, 494414
173:              andi         t4, ra, -1419
                  beq          a4, s9, 194f
                  sra          a7, s0, ra
176:              ori          a0, s4, -1346
                  bne          zero, t1, 183f
                  ori          s0, a3, 1201
                  sltiu        a5, s10, -1572
                  bltu         a3, s8, 194f
                  blt          gp, t0, 187f
                  xori         s10, s7, -18
183:              sub          t2, gp, a1
184:              sra          a0, a0, a7
                  andi         t3, t1, 16
                  ori          tp, s10, 476
187:              auipc        s3, 79099
                  slli         t5, s10, 18
                  sra          a5, a4, t2
                  ori          t4, s6, -1283
                  slli         gp, s10, 27
                  ori          a6, ra, 1492
                  add          a3, t3, t3
194:              bgeu         a4, s6, 212f
                  slli         t2, t1, 18
                  lui          s0, 751203
                  srai         s6, s10, 12
                  addi         t5, s10, -1725
                  or           t2, t3, t3
                  srli         t4, s7, 7
                  bne          s6, t4, 209f
                  ori          zero, s9, -62
                  bltu         s8, a5, 204f
204:              sltu         zero, t0, s1
                  srai         a2, s1, 21
                  nop
                  srl          zero, a0, a3
                  srai         s1, s7, 18
209:              sltiu        s9, a6, 617
                  ori          t4, a4, 984
                  addi         zero, ra, -132
212:              xori         a3, gp, 1462
                  andi         s0, s11, 677
                  srl          s4, s6, s4
                  auipc        a5, 705455
                  srli         s1, s1, 20
                  sltu         a7, t0, s0
                  sltiu        s8, s5, 1773
                  ori          tp, s11, 674
                  sltu         s1, s8, a5
                  slt          t3, t5, a5
                  sll          a0, t4, zero
                  auipc        a1, 304940
                  sltiu        s7, tp, -1440
                  xori         s3, t6, 650
                  sub          s5, a1, s3
                  sll          a4, ra, sp
                  bge          t2, s3, 247f
                  bgeu         a6, ra, 248f
                  srl          a3, a0, gp
                  auipc        a3, 266395
                  slt          s1, s8, sp
                  bne          gp, a4, 247f
                  nop
                  srl          s11, s11, a4
                  srai         a0, s10, 24
                  sltiu        a2, t0, -258
                  andi         a4, s7, -1659
                  addi         s8, t3, -277
                  bge          sp, s0, 257f
                  sll          s10, t4, s4
                  srli         t1, gp, 23
                  bne          a6, a7, 254f
                  slli         a0, ra, 0
                  sra          a7, s4, ra
                  and          s3, s2, a1
247:              addi         zero, sp, -1861
248:              bgeu         a1, t3, 253f
                  bge          s0, s1, 263f
                  sub          t2, s1, t0
                  or           tp, t5, a1
                  xor          a3, s8, a6
253:              and          s5, s0, a0
254:              sub          s9, a0, t1
                  auipc        t2, 996181
                  slt          s5, t6, a6
257:              xor          tp, s5, t4
                  bgeu         a1, a4, 269f
                  sub          t5, a2, s11
                  bltu         sp, t5, 270f
                  bgeu         sp, s7, 273f
                  sra          t0, s2, tp
main_1:           jal          ra, 14f
0:                jal          ra, 4f
1:                jal          ra, 18f
2:                jal          t1, 20f
3:                jal          t1, 9f
4:                jal          a0, 10f
5:                jal          s4, 6f
6:                jal          gp, 16f
7:                jal          s11, 12f
8:                jal          ra, 19f
9:                jal          ra, 0b
10:               jal          t1, 15f
11:               jal          t1, 22f
12:               jal          ra, 1b
13:               jal          ra, 17f
14:               jal          t1, 21f
15:               jal          ra, 5b
16:               jal          a4, 7b
17:               jal          s4, 8b
18:               jal          ra, 11b
19:               jal          ra, 3b
20:               jal          s7, 13b
21:               jal          ra, 2b
22:               srl          s3, a1, t5
263:              auipc        a6, 369500
                  or           zero, s7, s4
                  or           t3, s4, a6
                  addi         a3, s1, 212
                  blt          a1, s10, 277f
                  add          zero, s11, zero
269:              andi         ra, ra, -1187
270:              sltiu        t4, a7, 957
                  srli         t5, gp, 25
                  blt          s7, a7, 277f
273:              add          s3, a7, a1
                  andi         a4, t0, -1764
                  beq          ra, a6, 280f
                  auipc        a6, 1002527
277:              add          s5, t5, t4
                  auipc        a6, 279993
                  andi         a6, s4, 130
280:              bne          gp, s6, 287f
                  sll          s5, tp, ra
                  bltu         a7, t0, 291f
                  xori         s6, s6, 142
                  bgeu         s10, t5, 292f
                  ori          t0, gp, -1982
                  xori         t2, s8, -734
287:              sub          s6, ra, t1
                  beq          s10, t3, 306f
                  andi         a2, s7, -687
                  auipc        t5, 795176
291:              srl          s9, s2, ra
292:              blt          a5, t6, 298f
                  bne          tp, s0, 304f
                  bgeu         t2, zero, 299f
                  sltu         a0, s9, s1
                  sltu         a0, t3, s4
                  blt          a6, s1, 304f
298:              slli         a7, s10, 23
299:              ori          s11, s4, -983
                  nop
                  nop
                  srli         t5, t2, 19
                  sltu         s3, tp, s1
304:              beq          s10, tp, 323f
                  bge          s10, s4, 311f
306:              srl          s3, s0, a0
                  bne          s9, t6, 315f
                  slli         s5, t3, 19
                  srl          gp, a6, s5
                  sltiu        t3, s7, -1084
                  slli         s11, s8, 14
                  xori         s5, t6, 1063
                  andi         a4, s10, 706
                  la           a0, sub_2
                  sltiu        s3, t4, -1669
                  xor          s5, a4, a1
                  addi         a0, a0, 133
                  sltiu        t2, a5, 2033
                  blt          a3, s7, main_j2 #branch to jump instr
                  xori         t3, zero, 1812
                  slti         t5, t5, 601
                  andi         ra, s3, -103
                  sltu         t3, s10, a4
main_j2:          jalr         ra, a0, -132 #jump main -> sub_2
311:              bltu         s9, s4, 322f
                  sll          s7, a5, a0
                  and          a5, ra, a1
                  lui          s6, 265558
315:              xor          a0, gp, s10
                  xor          a3, s0, a3
                  srl          s6, a6, s9
                  bne          a1, s3, 337f
                  bne          t5, s2, 339f
                  sltu         s1, s9, s4
                  auipc        s6, 97260
322:              bne          s4, a1, 333f
323:              bgeu         s5, s11, 324f
324:              blt          gp, s5, 336f
                  sll          s0, a3, t6
                  slli         a5, s9, 15
                  andi         s11, a0, -85
                  blt          a7, s2, 336f
                  xori         a2, a0, 1639
                  blt          a4, a3, 337f
                  ori          tp, s6, 1619
                  or           a4, t2, t0
333:              srl          zero, s9, s8
                  slt          s7, s5, s8
                  slt          t2, s0, a5
336:              sltu         a5, s7, s7
337:              sra          t1, a4, t0
                  nop
339:              beq          t4, s8, 357f
                  srai         s4, s9, 21
                  blt          s8, s7, 355f
                  srl          s5, t5, s9
                  andi         a1, t3, 332
                  andi         s1, t5, 129
                  addi         t4, s7, -377
                  sra          t4, s8, s2
                  bge          ra, a7, 357f
                  slt          s0, s10, a4
                  srai         t5, t4, 3
                  slti         s0, s3, 684
                  or           tp, tp, s1
                  sltu         a4, gp, tp
                  srl          t1, t4, a0
                  ori          s0, ra, 1200
355:              bge          t4, t0, 366f
                  srai         t1, t1, 13
357:              bltu         s0, a2, 366f
                  and          a3, a7, s10
                  sra          t3, a1, t4
                  slti         a7, t5, -869
                  srai         t4, a1, 0
                  sll          s0, zero, s9
                  bgeu         a3, gp, 369f
                  bge          a5, a6, 383f
                  auipc        s8, 686763
366:              xori         s10, a2, -1032
                  bge          t5, a0, 381f
                  bltu         a2, s5, 382f
369:              lui          s7, 718393
                  and          s1, a6, a0
                  xori         a6, a1, 252
                  addi         s8, a1, -856
                  srai         s11, a0, 18
                  bge          t0, a5, 381f
                  xori         s11, s2, -986
                  slti         t1, zero, 1373
                  sll          t5, zero, a1
                  xor          s5, t2, a5
                  sltu         s10, s7, t5
                  sltu         tp, s4, a5
381:              bge          s9, s11, 398f
382:              sra          t4, s4, s7
383:              sll          t2, t2, sp
                  blt          s2, a0, 398f
                  sll          s4, tp, s1
                  srli         s1, t0, 19
                  srai         s10, s6, 19
                  bge          a7, s2, 393f
                  bge          t2, s0, 399f
                  addi         a5, a0, 1445
                  sll          t2, s10, t3
                  auipc        s3, 867846
393:              sltiu        gp, t4, -1888
                  add          a0, t3, t2
                  xor          s10, s3, t1
                  andi         t4, a4, -1726
                  bge          gp, t1, 402f
398:              blt          s4, a6, 403f
399:              srai         a4, a1, 15
                  or           tp, s7, t2
                  bltu         s2, a0, 406f
402:              srl          t0, a7, s10
403:              nop
                  srai         s11, a5, 7
                  nop
406:              sltu         s5, a0, gp
                  beq          s2, a4, 426f
                  nop
                  bgeu         s8, s10, 415f
                  andi         t1, a7, -8
                  srai         a2, a5, 1
                  and          t3, a5, s8
                  slti         s8, t3, -1498
                  xor          s10, s5, s5
415:              sltu         ra, zero, t0
                  slt          a1, s4, ra
                  ori          s8, a5, -1164
                  xor          t3, a1, s2
                  srai         s8, tp, 18
                  srai         a2, a6, 18
                  add          s0, t1, s3
                  bltu         s3, s1, 440f
                  sltu         a5, s0, a3
                  srl          zero, s2, tp
                  nop
426:              blt          gp, a4, 436f
                  and          t0, a3, t3
                  nop
                  addi         t4, s0, -646
                  beq          t4, a4, 450f
                  sltu         a6, s5, s3
                  xor          s11, sp, t3
                  sra          gp, t2, t1
                  srli         tp, s8, 13
                  sra          t4, zero, tp
436:              slli         s4, s1, 30
main_7:           jal          ra, 8f
0:                jal          ra, 2f
1:                jal          t1, 21f
2:                jal          s1, 11f
3:                jal          ra, 23f
4:                jal          gp, 1b
5:                jal          ra, 17f
6:                jal          ra, 19f
7:                jal          ra, 24f
8:                jal          s5, 18f
9:                jal          ra, 5b
10:               jal          ra, 16f
11:               jal          s8, 14f
12:               jal          tp, 9b
13:               jal          t1, 0b
14:               jal          t4, 22f
15:               jal          ra, 6b
16:               jal          ra, 15b
17:               jal          s10, 4b
18:               jal          s8, 3b
19:               jal          ra, 12b
20:               jal          tp, 7b
21:               jal          t0, 13b
22:               jal          ra, 20b
23:               jal          ra, 10b
24:               auipc        t4, 436179
                  srl          ra, a1, gp
                  xor          a7, t6, zero
                  sra          ra, gp, tp
440:              sra          a6, t0, t5
                  slti         a7, s3, 1203
                  slti         zero, s7, 719
                  bgeu         gp, s2, 454f
                  ori          t5, s6, -1972
                  and          s1, t6, a2
                  andi         a4, a7, 1711
                  srai         t1, s2, 26
                  addi         ra, ra, -1833
                  bgeu         t4, a5, 455f
450:              or           a7, s1, s9
                  add          t2, t2, t5
                  blt          s5, s0, 459f
                  bltu         t1, t5, 472f
454:              sra          a3, t2, a5
455:              sltiu        t1, a7, 850
                  sltu         t0, s5, s8
                  xori         t5, t4, 1745
                  nop
459:              bge          a6, t2, 473f
                  srli         s6, t6, 9
                  auipc        s0, 186669
                  srl          t3, sp, t1
                  bne          s0, a1, 468f
                  sra          a1, s5, s8
                  or           t3, a7, a4
                  sltu         s0, s11, gp
                  add          t2, s5, s10
468:              bge          s4, s5, 480f
                  beq          ra, s5, 487f
                  bgeu         s10, s2, 487f
                  add          s11, a3, t6
472:              bge          a5, a3, 477f
473:              blt          s10, sp, 483f
                  and          a2, s3, t6
                  bltu         ra, t3, 476f
476:              bne          s7, ra, 490f
477:              slli         s11, s5, 23
                  sra          s6, s7, a5
                  ori          s8, s6, -1329
480:              nop
                  slli         t1, s5, 0
                  la           t1, sub_1
                  srli         a0, s2, 30
                  srai         a3, t4, 8
                  srli         gp, s10, 15
                  auipc        s3, 690756
                  sltiu        s8, t1, -1124
                  addi         t1, t1, 785
                  srl          t3, s4, a6
                  or           t3, s6, zero
                  slli         a3, t3, 24
main_j1:          jalr         ra, t1, -784 #jump main -> sub_1
                  slt          ra, a6, t6
483:              sub          t5, t3, s9
                  auipc        s1, 105317
                  add          t2, s5, t4
                  bgeu         t0, gp, 494f
487:              lui          s11, 520092
                  bge          a5, ra, 494f
                  sltu         t5, a2, s3
490:              and          tp, zero, s5
                  slt          zero, gp, a5
                  slli         s7, s11, 18
                  andi         s8, a2, 283
494:              sra          s9, s10, s3
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         s2, s2, -8
                  xori         a5, a6, -1391
                  sra          t0, gp, s4
                  sw           ra, 4(s2)
                  xori         s3, a5, 423
sub_3_0:          jal          ra, 17f
0:                jal          t1, 5f
1:                jal          t1, 18f
2:                jal          gp, 3f
3:                jal          ra, 8f
4:                jal          ra, 2b
5:                jal          ra, 14f
6:                jal          ra, 13f
7:                jal          ra, 12f
8:                jal          t1, 9f
9:                jal          ra, 20f
10:               jal          ra, 19f
11:               jal          gp, 10b
12:               jal          t1, 21f
13:               jal          a0, 7b
14:               jal          ra, 16f
15:               jal          ra, 6b
16:               jal          ra, 4b
17:               jal          t1, 0b
18:               jal          t5, 22f
19:               jal          ra, 1b
20:               jal          ra, 15b
21:               jal          t3, 11b
22:               slti         a7, s1, -640
sub_3_2:          jal          ra, 5f
0:                jal          ra, 21f
1:                jal          t1, 2f
2:                jal          ra, 27f
3:                jal          t1, 17f
4:                jal          gp, 10f
5:                jal          t1, 18f
6:                jal          ra, 12f
7:                jal          ra, 28f
8:                jal          a2, 23f
9:                jal          s1, 20f
10:               jal          gp, 6b
11:               jal          s4, 13f
12:               jal          s8, 14f
13:               jal          t1, 4b
14:               jal          tp, 16f
15:               jal          t1, 25f
16:               jal          a7, 22f
17:               jal          a6, 7b
18:               jal          ra, 26f
19:               jal          t1, 3b
20:               jal          t1, 24f
21:               jal          t0, 15b
22:               jal          t1, 0b
23:               jal          ra, 9b
24:               jal          s8, 19b
25:               jal          ra, 1b
26:               jal          ra, 11b
27:               jal          ra, 8b
28:               slti         s10, t2, 939
sub_3_4:          jal          ra, 20f
0:                jal          ra, 23f
1:                jal          ra, 7f
2:                jal          tp, 10f
3:                jal          t1, 19f
4:                jal          tp, 3b
5:                jal          ra, 18f
6:                jal          ra, 5b
7:                jal          s7, 17f
8:                jal          t4, 12f
9:                jal          ra, 1b
10:               jal          t1, 8b
11:               jal          s11, 0b
12:               jal          ra, 15f
13:               jal          tp, 21f
14:               jal          ra, 9b
15:               jal          t1, 4b
16:               jal          ra, 22f
17:               jal          t1, 13b
18:               jal          t1, 2b
19:               jal          ra, 16b
20:               jal          ra, 14b
21:               jal          ra, 6b
22:               jal          ra, 11b
23:               or           a1, s1, zero
sub_3_8:          jal          ra, 4f
0:                jal          ra, 8f
1:                jal          a1, 19f
2:                jal          t1, 16f
3:                jal          ra, 9f
4:                jal          t4, 17f
5:                jal          t1, 3b
6:                jal          ra, 11f
7:                jal          ra, 22f
8:                jal          t1, 7b
9:                jal          t1, 20f
10:               jal          ra, 21f
11:               jal          ra, 1b
12:               jal          t1, 15f
13:               jal          ra, 12b
14:               jal          s5, 2b
15:               jal          ra, 14b
16:               jal          ra, 6b
17:               jal          ra, 18f
18:               jal          s8, 13b
19:               jal          ra, 10b
20:               jal          a3, 0b
21:               jal          t0, 5b
22:               ori          gp, ra, 791
sub_3_3:          jal          ra, 6f
0:                jal          ra, 14f
1:                jal          ra, 4f
2:                jal          ra, 8f
3:                jal          s8, 7f
4:                jal          t1, 12f
5:                jal          a1, 3b
6:                jal          ra, 10f
7:                jal          t0, 13f
8:                jal          ra, 5b
9:                jal          t3, 15f
10:               jal          a4, 0b
11:               jal          s6, 16f
12:               jal          s6, 11b
13:               jal          ra, 1b
14:               jal          ra, 9b
15:               jal          ra, 2b
16:               andi         t2, ra, -102
sub_3_1:          jal          ra, 10f
0:                jal          ra, 12f
1:                jal          tp, 9f
2:                jal          s3, 1b
3:                jal          s10, 20f
4:                jal          t4, 7f
5:                jal          t1, 6f
6:                jal          ra, 18f
7:                jal          ra, 2b
8:                jal          ra, 16f
9:                jal          ra, 22f
10:               jal          ra, 11f
11:               jal          t1, 19f
12:               jal          t1, 17f
13:               jal          t1, 0b
14:               jal          ra, 13b
15:               jal          t1, 4b
16:               jal          ra, 21f
17:               jal          ra, 8b
18:               jal          ra, 14b
19:               jal          s3, 5b
20:               jal          gp, 15b
21:               jal          s10, 3b
22:               srai         s8, t5, 27
sub_3_6:          jal          ra, 21f
0:                jal          a2, 13f
1:                jal          ra, 20f
2:                jal          ra, 0b
3:                jal          s10, 12f
4:                jal          ra, 3b
5:                jal          ra, 9f
6:                jal          s6, 15f
7:                jal          t0, 10f
8:                jal          s11, 7b
9:                jal          s10, 17f
10:               jal          a6, 18f
11:               jal          ra, 14f
12:               jal          a2, 11b
13:               jal          s3, 1b
14:               jal          t0, 8b
15:               jal          tp, 2b
16:               jal          ra, 4b
17:               jal          gp, 19f
18:               jal          t1, 23f
19:               jal          ra, 22f
20:               jal          t1, 5b
21:               jal          ra, 6b
22:               jal          ra, 16b
23:               and          t4, a3, tp
sub_3_5:          jal          ra, 3f
0:                jal          tp, 8f
1:                jal          ra, 4f
2:                jal          t0, 9f
3:                jal          a3, 0b
4:                jal          ra, 7f
5:                jal          ra, 2b
6:                jal          s4, 1b
7:                jal          tp, 10f
8:                jal          ra, 5b
9:                jal          ra, 6b
10:               nop
sub_3_11:         jal          ra, 2f
0:                jal          ra, 3f
1:                jal          ra, 9f
2:                jal          t1, 5f
3:                jal          t1, 8f
4:                jal          t1, 6f
5:                jal          ra, 0b
6:                jal          ra, 1b
7:                jal          t1, 10f
8:                jal          t1, 4b
9:                jal          ra, 7b
10:               jal          ra, 11f
11:               srl          t1, s0, a5
sub_3_10:         jal          ra, 18f
0:                jal          ra, 5f
1:                jal          ra, 12f
2:                jal          t5, 19f
3:                jal          ra, 0b
4:                jal          s5, 2b
5:                jal          s11, 23f
6:                jal          ra, 21f
7:                jal          ra, 11f
8:                jal          ra, 13f
9:                jal          ra, 1b
10:               jal          a7, 15f
11:               jal          s3, 4b
12:               jal          t1, 14f
13:               jal          ra, 17f
14:               jal          t1, 7b
15:               jal          ra, 9b
16:               jal          ra, 6b
17:               jal          ra, 20f
18:               jal          t4, 22f
19:               jal          ra, 16b
20:               jal          t1, 10b
21:               jal          a2, 3b
22:               jal          ra, 8b
23:               slt          a1, s10, t2
sub_3_9:          jal          ra, 8f
0:                jal          ra, 1f
1:                jal          gp, 9f
2:                jal          ra, 17f
3:                jal          ra, 11f
4:                jal          ra, 7f
5:                jal          t1, 2b
6:                jal          ra, 13f
7:                jal          ra, 6b
8:                jal          gp, 16f
9:                jal          t1, 15f
10:               jal          ra, 14f
11:               jal          ra, 5b
12:               jal          t3, 18f
13:               jal          ra, 3b
14:               jal          ra, 4b
15:               jal          a3, 10b
16:               jal          ra, 0b
17:               jal          s4, 12b
18:               slt          ra, a1, s4
sub_3_7:          jal          ra, 9f
0:                jal          ra, 5f
1:                jal          t5, 10f
2:                jal          ra, 15f
3:                jal          ra, 13f
4:                jal          gp, 12f
5:                jal          ra, 17f
6:                jal          t1, 3b
7:                jal          t1, 0b
8:                jal          s7, 1b
9:                jal          a2, 6b
10:               jal          ra, 11f
11:               jal          tp, 7b
12:               jal          ra, 8b
13:               jal          a6, 14f
14:               jal          t1, 2b
15:               jal          tp, 16f
16:               jal          ra, 4b
17:               sub          s8, s5, s4
                  add          tp, t2, a3
                  nop
                  srai         t4, a0, 14
                  add          t5, a3, t2
                  nop
                  sub          gp, s9, t6
                  andi         a7, s8, -138
                  sll          s11, t5, t2
                  sltu         s8, tp, a1
                  add          t2, a4, s5
                  and          a2, a0, a2
                  bge          sp, a1, 24f
                  bge          t1, t0, 30f
                  bne          a4, s0, 16f
                  sra          a5, s11, tp
                  bne          t3, s2, 30f
16:               and          t5, t4, s2
                  beq          s5, s2, 28f
                  sra          a0, s0, sp
                  srli         ra, a0, 7
                  beq          ra, s9, 30f
                  bltu         s4, s9, 29f
                  nop
                  srli         a2, a1, 8
24:               xori         ra, t0, -1577
                  add          s10, s8, s7
                  sll          s6, t0, a0
                  andi         zero, zero, 732
28:               bgeu         sp, t0, 44f
29:               sra          s3, tp, a0
30:               nop
                  andi         zero, s5, -1750
                  sltu         a3, t1, a6
                  and          tp, s11, s1
                  add          a2, t6, t0
                  or           s11, s4, s3
                  blt          a4, a5, 37f
37:               sltiu        s11, a7, -941
                  bltu         s5, a6, 42f
                  auipc        a6, 193904
                  sltiu        a2, a4, 1059
                  sltiu        a2, t0, -2004
42:               slti         t5, a6, 101
                  xor          s8, gp, ra
44:               sub          a2, t0, zero
                  or           t5, t2, zero
                  bgeu         a4, s2, 62f
                  auipc        s6, 821632
                  srl          gp, a2, tp
                  xori         s9, t5, -1215
                  slti         t4, tp, -931
                  xor          a5, t4, a7
                  addi         zero, t3, -1654
                  sub          zero, t6, t6
                  slli         a2, a5, 5
                  xori         a3, a4, 901
                  ori          t1, s3, 476
                  ori          s1, a4, -1314
                  srl          s3, s5, t4
                  andi         s9, s1, 931
                  sra          t5, s11, gp
                  bge          s2, a4, 75f
62:               sub          a0, t3, s7
                  bge          t3, s8, 67f
                  srai         s0, a3, 11
                  ori          a2, s11, 1653
                  blt          s9, a5, 68f
67:               and          s0, s0, s2
68:               blt          t1, a1, 75f
                  or           s1, tp, t0
                  xor          s10, s4, t3
                  nop
                  srai         a1, s7, 21
                  sub          a6, s2, t3
                  nop
75:               srai         t1, s3, 12
                  nop
                  add          ra, t5, a7
                  lui          a3, 982632
                  sub          zero, a3, s8
                  srai         a5, t3, 28
                  bltu         s11, a0, 98f
                  sll          t4, t2, a2
                  auipc        t1, 423737
                  sub          a5, a3, s11
                  add          t2, s7, s9
                  bltu         s9, s2, 104f
                  ori          t2, t1, 659
                  bge          a5, s7, 103f
                  srai         zero, t1, 18
                  sltiu        gp, a6, -1126
                  slt          s11, s7, t3
                  sltiu        a6, t6, 1436
                  xori         s3, s7, 1174
                  andi         a2, s10, -1240
                  andi         a1, s4, -1987
                  slt          gp, ra, s2
                  srli         s4, t3, 18
                  la           a3, sub_5
                  add          t3, a4, t3
                  addi         a3, a3, 710
                  srai         s3, s6, 9
                  auipc        a7, 867173
                  sub          a6, ra, s4
sub_3_j7:         jalr         ra, a3, -710 #jump sub_3 -> sub_5
                  slti         ra, s3, 2042
                  bne          t0, s7, 104f
98:               blt          a5, t0, 108f
                  xori         a0, s10, 193
                  blt          s0, s7, 110f
                  slti         s0, t4, -1066
                  xori         a2, a1, -1336
103:              sltu         s0, t2, s1
104:              sll          s5, a0, s0
                  sltu         a0, t6, s6
                  sll          t3, s0, s9
                  xori         s11, a2, -777
108:              srli         a1, t2, 27
                  nop
110:              bne          s9, a5, 114f
                  ori          t2, t5, 862
                  bge          a6, s1, 116f
                  slli         zero, t6, 1
114:              xori         a4, t0, 579
                  srl          a6, s7, t4
116:              addi         zero, a1, 1832
                  andi         s9, a0, -102
                  srai         s6, a0, 7
                  andi         s7, s2, 410
                  slli         s1, a7, 0
                  sra          a3, a7, t3
                  lui          gp, 69013
                  slti         s0, s3, 549
                  ori          s1, s1, 1416
                  lui          a7, 591172
                  and          t4, gp, ra
                  slli         t3, s7, 18
                  ori          a7, a0, -546
                  nop
                  auipc        s7, 11301
                  slti         s11, s9, 1484
                  bne          a3, t0, 150f
                  bgeu         t5, s6, 146f
                  auipc        t2, 361242
                  ori          a2, a6, 71
                  add          s8, t6, t2
                  slt          s9, s9, a2
                  addi         t5, t1, 1621
                  bgeu         t1, gp, 144f
                  or           t4, a6, a5
                  bne          a2, s0, 152f
                  xor          a3, a7, t2
                  srli         s1, s2, 28
144:              andi         a4, a6, 1957
                  xori         a0, s6, 691
146:              srai         t4, t6, 22
                  beq          s2, t3, 151f
                  xori         s6, s9, -160
                  sub          s3, ra, s2
150:              auipc        s3, 352016
151:              bne          s11, gp, 160f
152:              srai         s0, t5, 30
                  sra          s8, a1, s3
                  sll          a4, s6, s8
                  andi         s0, s8, 168
                  srl          t5, a4, a5
                  sub          s11, s10, s3
                  slli         a4, ra, 29
                  or           s6, ra, gp
160:              beq          ra, a5, 166f
                  xori         t1, t1, 2037
                  lui          s9, 267124
                  beq          gp, t4, 172f
                  blt          s9, s0, 168f
                  beq          t2, a2, 178f
166:              sltiu        a5, t5, 1034
                  sll          t0, s10, s2
168:              nop
                  sltiu        s8, a3, 1532
                  ori          a6, sp, 114
                  slti         zero, zero, 640
172:              srli         s1, a0, 11
                  beq          a0, s1, 189f
                  bne          zero, t4, 181f
                  sra          a7, a1, t1
                  xori         ra, a2, -977
                  auipc        s4, 907612
178:              andi         s7, zero, -1831
                  sltiu        a7, t1, 1953
                  and          s10, s3, s0
181:              sltiu        s11, s0, -1108
                  bltu         a7, a0, 192f
                  sra          s0, s5, zero
                  ori          zero, s4, -1279
                  slt          s0, a2, a7
                  slti         s0, t3, 1224
                  bge          a0, a4, 205f
                  slti         s3, s9, 570
189:              bge          t4, s3, 207f
                  or           t5, s7, s6
                  lui          a4, 329470
192:              sltu         s7, sp, s3
                  beq          a2, s7, 199f
                  or           t2, a1, t5
                  blt          t4, a0, 211f
                  or           s11, s4, s5
                  blt          s8, a3, 202f
                  bne          a5, a2, 211f
199:              sltiu        ra, s3, -246
                  bne          s2, t4, 207f
                  xor          t0, a0, s6
202:              slti         s7, ra, -1063
                  srai         gp, s9, 31
                  srl          t0, s10, t0
205:              srl          s0, t2, a4
                  sra          s11, ra, a1
207:              srai         s5, a1, 8
                  andi         s10, s0, 1045
                  bgeu         sp, a2, 213f
                  andi         s9, t3, 221
211:              beq          s11, sp, 225f
                  sra          a1, s8, s0
213:              sltiu        zero, a5, 1783
                  beq          a4, a0, 229f
                  add          t0, a2, s0
                  xor          zero, ra, s3
                  nop
                  xor          s10, s9, a7
                  andi         t2, s0, 2045
                  add          s7, tp, t0
                  sll          a5, t5, s7
                  xor          s4, s4, a4
                  bgeu         s9, s7, 234f
                  addi         s6, s1, -1060
225:              sra          a4, s8, s6
                  blt          t1, gp, 236f
                  sub          s3, s2, t1
                  slli         tp, a4, 24
229:              xor          s0, ra, a6
                  lui          s5, 184603
                  sra          t3, s8, tp
                  bne          s10, s10, 250f
                  addi         t4, gp, 809
234:              bne          s0, t4, 249f
                  or           a6, t1, s3
236:              slt          s11, tp, tp
                  bne          a2, a1, 245f
                  auipc        s1, 684301
                  addi         s10, s8, -1180
                  slt          t4, s5, t5
                  srai         a5, ra, 14
                  blt          s3, t5, 245f
                  slli         a3, a0, 31
                  sra          gp, a5, a7
245:              srl          t4, s4, a4
                  bge          t3, s8, 250f
                  sub          s0, a5, ra
                  xori         s8, t3, -547
249:              sltu         a3, t6, zero
250:              sltu         a7, s2, t4
                  srai         s1, a4, 24
                  andi         zero, t6, 490
                  bne          s9, t0, 257f
                  beq          a0, s5, 271f
                  bgeu         s9, s2, 259f
                  bgeu         t2, a3, 266f
257:              sltu         a4, tp, a1
                  blt          t3, a4, 259f
259:              lui          a5, 881882
                  sltu         s1, a3, tp
                  addi         a7, a1, 1745
                  lui          a3, 955643
                  bge          a5, a1, 265f
                  srl          a7, a5, a7
265:              bge          t2, s10, 276f
266:              sub          a4, a3, a2
                  blt          s5, s1, 285f
                  xor          ra, a0, s10
                  sub          ra, t2, s8
                  ori          s6, s3, -482
271:              sll          zero, s2, gp
                  srli         gp, s4, 9
                  xor          s7, a5, a4
                  beq          s0, a4, 281f
                  auipc        s11, 792146
276:              sltiu        s10, t1, 860
                  or           t1, t6, t0
                  andi         a4, t0, 871
                  sltiu        ra, tp, -1862
                  sltu         a0, t6, a1
281:              ori          a6, a1, 1506
                  add          t5, s0, s9
                  blt          t4, a4, 297f
                  slt          a2, a2, s1
285:              addi         zero, a2, -95
                  sltiu        t4, zero, 221
                  srai         t1, t5, 21
                  sltiu        s5, t3, -1826
                  bne          tp, s0, 307f
                  sub          a2, t2, a1
                  bltu         gp, s4, 304f
                  sra          s7, a5, s0
                  or           s4, a1, a7
                  or           t2, s8, t0
                  slti         s9, s4, 1134
                  bge          a5, t5, 311f
297:              add          s8, tp, t6
                  sra          t4, s11, a4
                  beq          t1, zero, 309f
                  slli         a7, a0, 11
                  nop
                  blt          a3, t2, 306f
                  xor          s3, s5, a2
304:              bltu         a7, t5, 319f
                  srai         s10, s11, 9
306:              andi         s11, s3, 1722
307:              srli         s0, zero, 23
                  auipc        gp, 890051
309:              slli         t0, ra, 18
                  sltiu        t4, a1, 1940
311:              add          s4, s1, a7
                  auipc        s4, 97259
                  sltu         t3, s9, s3
                  slli         s3, s6, 1
                  sra          a6, t3, a2
                  nop
                  andi         s10, sp, 677
                  beq          s5, t6, 320f
319:              ori          a1, zero, 2008
320:              sll          a4, t3, sp
                  sub          tp, sp, a5
                  andi         s0, gp, 372
                  srl          a0, t5, t4
                  slli         t3, s10, 25
                  sra          a1, t3, s3
                  blt          s11, s2, 329f
                  sra          s0, t2, t1
                  beq          a4, s8, 338f
329:              add          t5, s10, a2
                  slti         s11, a6, 540
                  sll          t0, t0, gp
                  beq          t4, s0, 338f
                  bne          s0, a4, 346f
                  nop
                  xor          t2, a6, tp
                  nop
                  slt          a6, t2, s0
338:              auipc        s10, 361945
                  sra          zero, a2, s10
                  srli         s8, a1, 1
                  xori         s11, t5, -334
                  slli         a1, t5, 8
                  blt          gp, s3, 351f
                  srl          t2, s10, s0
                  addi         a5, s11, -1667
346:              blt          t2, a2, 362f
                  xor          gp, s6, s10
                  slt          ra, a1, s1
                  blt          s8, sp, 367f
                  slti         s1, s4, -158
351:              bne          s9, a2, 355f
                  or           ra, s6, a5
                  or           a3, zero, tp
                  sll          a6, t3, s9
355:              or           ra, s3, t4
                  nop
                  srl          a0, s11, t0
                  blt          t5, s1, 362f
                  nop
                  slt          a3, s4, s11
                  sra          a4, gp, t2
362:              bge          a6, t3, 373f
                  andi         s9, s10, -631
                  slli         a3, s8, 21
                  bgeu         s4, tp, 369f
                  nop
367:              slt          t2, s8, s4
                  bne          s0, s9, 375f
369:              lui          s10, 303453
                  andi         gp, sp, 1032
                  sll          t2, a4, s10
                  xor          a6, t6, s6
373:              ori          a1, s2, -968
                  blt          s9, a1, 390f
375:              auipc        t4, 204541
                  slli         a4, t1, 16
                  bgeu         tp, s2, 386f
                  blt          sp, zero, 389f
                  sub          s11, t3, a6
                  sub          a3, a2, a7
                  andi         a5, a3, -290
                  bgeu         a0, t2, 392f
                  slt          t4, zero, s11
                  blt          a6, gp, 385f
385:              srai         a4, a7, 23
386:              lui          t1, 872771
                  beq          s7, s2, 392f
                  slti         zero, a6, 1109
389:              bne          t1, s4, 393f
390:              sra          s0, t6, s1
                  srai         tp, s7, 26
392:              srli         s9, sp, 11
393:              bltu         t0, sp, 410f
                  sub          s0, a6, s11
                  and          s8, zero, a1
                  or           a6, t6, s10
                  slli         zero, s5, 17
                  bge          a5, ra, 402f
                  xor          a2, a1, a7
                  srli         ra, zero, 21
                  slt          gp, a7, s2
402:              nop
                  ori          s8, s6, 1695
                  sltiu        a6, t3, -1305
                  lui          a2, 31709
                  bne          a4, t4, 412f
                  xor          t3, a1, t1
                  slti         gp, tp, -1820
                  bne          zero, zero, 419f
410:              auipc        tp, 937948
                  slti         tp, t3, -1651
412:              sra          s8, t0, a3
                  bne          s6, s9, 417f
                  sltiu        a6, sp, -74
                  add          zero, s4, a4
                  slt          tp, s3, t2
417:              and          a3, t2, s6
                  add          s9, s8, a4
419:              beq          a0, tp, 433f
                  add          t5, tp, s10
                  ori          a7, ra, -663
                  auipc        t5, 752731
                  add          t0, s11, sp
                  blt          s10, s6, 429f
                  bgeu         s1, t1, 435f
                  or           t5, t1, sp
                  or           a2, s3, a3
                  sltiu        t0, t2, 1166
429:              bne          a0, s7, 436f
                  lui          a2, 549104
                  auipc        a0, 199168
                  slt          a6, s10, a4
433:              bgeu         gp, a1, 451f
                  srai         a3, s5, 23
435:              beq          a4, t0, 439f
436:              slti         s0, s3, -1642
                  bltu         s6, a2, 438f
438:              ori          s8, s6, 765
439:              ori          s9, s6, 1642
                  xor          t3, t0, s8
                  sll          a6, a1, t2
                  add          s5, s11, s11
                  bne          a0, s3, 459f
                  bge          ra, a4, 457f
                  bltu         t1, t3, 447f
                  bge          s5, tp, 457f
447:              lui          s0, 199358
                  bgeu         a2, s1, 452f
                  or           s4, s11, s4
                  bltu         t4, a5, 453f
451:              slli         zero, s6, 20
452:              addi         ra, a4, 1242
453:              andi         a3, s4, 1019
                  slli         a4, ra, 24
                  blt          s3, t5, 465f
                  auipc        a3, 967846
457:              slli         t4, tp, 2
                  sll          a4, s0, s7
459:              andi         gp, a3, 1279
                  ori          a7, gp, 880
                  add          t1, s7, a2
                  xor          a7, a1, a0
                  sub          s6, a3, t6
                  slti         s10, s0, 1344
465:              or           s7, t3, s2
                  bltu         a2, t0, 483f
                  bge          s0, a6, 478f
                  and          t3, a2, s2
                  sltu         s11, s8, s4
                  andi         tp, ra, 630
                  bne          t5, ra, 489f
                  slti         a4, a3, 589
                  sltiu        a0, s3, 227
                  sltu         a7, a1, t5
                  srai         t0, t2, 19
                  addi         s7, gp, 316
                  slli         s3, ra, 27
478:              srai         tp, t0, 9
                  nop
                  lui          a2, 121921
                  slti         a3, a5, 462
                  bge          s4, a6, 495f
483:              bne          t0, a7, 492f
                  lui          s9, 641215
                  add          a6, t4, s10
                  sub          s11, ra, s11
                  addi         zero, s4, -79
                  andi         a6, s2, 689
489:              and          t2, t0, t1
                  andi         s1, a3, -1368
                  nop
492:              auipc        s1, 400187
                  nop
                  lui          a6, 774078
495:              xor          gp, s0, s10
                  sub          a4, a5, t5
                  xor          a5, s3, gp
                  ori          a0, t5, -1340
                  srl          a4, zero, t2
                  srli         a0, t4, 6
                  xori         s9, t6, -1160
                  bne          s4, a4, 509f
                  add          t5, s2, sp
                  srli         t1, s0, 9
                  sub          s3, gp, s1
                  sltiu        s5, s4, -455
                  bge          zero, s6, 515f
                  addi         s5, t6, 1999
509:              xori         a6, t1, -1641
                  addi         s11, s3, -1126
                  slt          s10, s5, t1
                  auipc        s3, 527407
                  bgeu         a3, s7, 529f
                  srai         s6, s3, 3
515:              andi         s11, tp, -771
                  blt          s9, a1, 531f
                  andi         tp, s4, 474
                  andi         a0, gp, 832
                  sltiu        s5, a3, 1707
                  addi         s0, s0, 1482
                  srai         a0, t0, 1
                  xor          s5, s10, a4
                  xori         t0, s1, 1346
                  sra          s0, a2, s5
                  addi         a3, t4, -2005
                  add          s3, s1, zero
                  slti         s0, s11, 1173
                  bne          a7, a1, 546f
529:              xori         s9, tp, 633
                  addi         s6, s2, -901
531:              srai         s6, t6, 13
                  srai         t1, t4, 1
                  addi         a4, s9, 1159
                  sra          t3, s5, t6
                  sll          zero, a5, t5
                  sra          a5, a3, s3
                  bgeu         s3, t0, 552f
                  bne          s4, a3, 542f
                  sltiu        s1, a1, 897
                  srl          t4, a2, s0
                  blt          a7, s5, 545f
542:              bge          a0, s1, 552f
                  srli         s1, sp, 27
                  srai         t5, s11, 5
545:              andi         s1, sp, -259
546:              and          t5, s10, t3
                  add          s8, t3, a5
                  addi         s3, a3, 274
                  srai         a4, ra, 22
                  bge          t4, t2, 553f
                  beq          zero, gp, 568f
552:              slti         s8, t0, -1425
553:              lui          s10, 349789
                  sltu         t1, t5, a6
                  sra          a1, s10, s2
                  blt          s9, sp, 562f
                  and          t1, sp, s7
                  sub          s7, t6, s11
                  sub          gp, s2, a4
                  sltiu        s8, t3, 1052
                  andi         a0, s10, -585
562:              and          s6, t4, a4
                  srl          a7, t5, zero
                  srli         t2, s1, 4
                  andi         t0, a3, 165
                  xori         s10, t5, -607
                  srl          t3, ra, a4
568:              and          s3, s5, t1
                  xor          s11, sp, t2
                  add          t5, s7, t1
                  lui          a2, 422777
                  addi         s0, t0, -704
                  or           t4, t1, a5
                  beq          a2, gp, 584f
                  sltu         zero, s0, tp
                  sll          a7, s4, a2
                  andi         a1, zero, 228
                  lui          s1, 426650
                  sll          a7, zero, a2
                  sltu         ra, t5, s8
                  and          s7, s3, t6
                  slt          gp, t1, s2
                  or           t5, s6, a5
584:              bgeu         s9, s10, 602f
                  or           s10, s0, s1
                  srli         t3, a1, 18
                  bgeu         s7, a6, 591f
                  bne          a2, s2, 592f
                  xor          a4, s5, s11
                  add          tp, s9, t4
591:              srl          s6, s2, a0
592:              addi         t3, a7, 1443
                  bltu         s2, a0, 606f
                  ori          a7, t3, 1326
                  bltu         s2, gp, 600f
                  blt          t0, a5, 600f
                  slti         a0, s8, 1041
                  or           a2, s0, s3
                  sltiu        s9, t2, -812
600:              sltiu        tp, zero, 792
                  blt          s6, s3, 617f
602:              bltu         s2, s7, 611f
                  or           t5, s3, s0
                  beq          t4, zero, 612f
                  xor          a7, s11, s0
606:              bltu         gp, a0, 621f
                  bltu         s2, s6, 609f
                  bne          s2, sp, 623f
609:              slti         ra, t3, 1260
                  xori         a1, s11, 993
611:              srl          s11, t0, a6
612:              auipc        s3, 692957
                  add          a7, s4, s10
                  sub          gp, a6, sp
                  srl          t2, s6, a4
                  or           s3, s3, t6
617:              srai         t5, s8, 4
                  addi         a4, zero, 1685
                  sra          a2, t2, t1
                  nop
621:              sub          s0, s3, s2
                  slt          s1, s5, t0
623:              xori         t3, s7, -974
                  srli         a6, t0, 1
                  xor          t3, tp, s5
                  sltu         a6, s5, zero
                  blt          gp, t0, 645f
                  xor          t4, s9, t2
                  andi         t1, gp, 720
                  bltu         s8, sp, 648f
                  bltu         zero, s7, 645f
                  beq          s3, t5, 633f
633:              bge          s6, s7, 646f
                  xor          t5, s11, t0
                  bne          t0, a5, 646f
                  andi         t1, s4, -858
                  auipc        t1, 579292
                  bge          t0, s8, 645f
                  auipc        t4, 584833
                  srai         a3, s0, 3
                  sltiu        zero, t2, -1659
                  auipc        t3, 691719
                  srai         a6, sp, 18
                  blt          t2, tp, 648f
645:              or           t2, a0, t1
646:              auipc        s10, 28013
                  srl          gp, s7, t4
648:              add          s8, s10, s3
                  sltu         s1, ra, a5
                  addi         s6, sp, -1269
                  lw           ra, 4(s2)
                  sra          s0, a4, t3
                  addi         s2, s2, 8
                  nop
                  sll          t0, gp, s7
929:              addi x30, x1, 0
929:              jalr x30, x30, 0
sub_5:            slt          t1, t6, s9
                  addi         a1, s10, 1008
                  slti         s11, a4, 1402
                  addi         s2, s2, -28
                  srai         a5, a3, 3
                  andi         s4, s5, 1590
                  sw           ra, 4(s2)
                  or           s8, t5, ra
                  sll          s8, t4, sp
                  srli         gp, s1, 13
sub_5_11:         jal          ra, 9f
0:                jal          t0, 5f
1:                jal          ra, 2f
2:                jal          t1, 4f
3:                jal          t1, 1b
4:                jal          t1, 0b
5:                jal          a5, 8f
6:                jal          ra, 7f
7:                jal          s11, 10f
8:                jal          ra, 6b
9:                jal          ra, 3b
10:               jal          gp, 11f
11:               lui          s10, 651100
sub_5_1:          jal          ra, 3f
0:                jal          gp, 12f
1:                jal          tp, 7f
2:                jal          ra, 6f
3:                jal          a6, 11f
4:                jal          t1, 14f
5:                jal          s9, 8f
6:                jal          a7, 4b
7:                jal          t1, 10f
8:                jal          ra, 9f
9:                jal          s1, 2b
10:               jal          t1, 5b
11:               jal          s6, 0b
12:               jal          ra, 13f
13:               jal          ra, 1b
14:               addi         a7, s5, -1657
sub_5_5:          jal          ra, 9f
0:                jal          t0, 7f
1:                jal          ra, 2f
2:                jal          ra, 10f
3:                jal          ra, 5f
4:                jal          ra, 1b
5:                jal          ra, 0b
6:                jal          s11, 3b
7:                jal          s5, 8f
8:                jal          ra, 4b
9:                jal          tp, 6b
10:               nop
sub_5_10:         jal          ra, 10f
0:                jal          s5, 11f
1:                jal          ra, 6f
2:                jal          t1, 18f
3:                jal          ra, 5f
4:                jal          t1, 19f
5:                jal          ra, 1b
6:                jal          ra, 13f
7:                jal          ra, 8f
8:                jal          ra, 0b
9:                jal          s10, 22f
10:               jal          ra, 12f
11:               jal          ra, 21f
12:               jal          ra, 2b
13:               jal          t1, 9b
14:               jal          ra, 7b
15:               jal          ra, 20f
16:               jal          ra, 17f
17:               jal          ra, 4b
18:               jal          t4, 14b
19:               jal          ra, 15b
20:               jal          ra, 3b
21:               jal          t2, 16b
22:               sub          s3, s7, t1
sub_5_2:          jal          ra, 7f
0:                jal          t1, 13f
1:                jal          ra, 14f
2:                jal          s6, 11f
3:                jal          ra, 6f
4:                jal          ra, 17f
5:                jal          ra, 1b
6:                jal          ra, 15f
7:                jal          t1, 5b
8:                jal          t1, 10f
9:                jal          ra, 19f
10:               jal          ra, 12f
11:               jal          ra, 0b
12:               jal          ra, 9b
13:               jal          t1, 16f
14:               jal          t1, 18f
15:               jal          t1, 4b
16:               jal          ra, 3b
17:               jal          ra, 8b
18:               jal          ra, 2b
19:               srl          a1, s10, gp
sub_5_9:          jal          ra, 2f
0:                jal          gp, 7f
1:                jal          t1, 8f
2:                jal          ra, 11f
3:                jal          t5, 12f
4:                jal          s0, 1b
5:                jal          ra, 6f
6:                jal          t0, 9f
7:                jal          ra, 3b
8:                jal          ra, 5b
9:                jal          s11, 0b
10:               jal          s10, 4b
11:               jal          ra, 10b
12:               jal          t1, 13f
13:               srl          t0, t4, t2
sub_5_0:          jal          ra, 8f
0:                jal          ra, 3f
1:                jal          ra, 2f
2:                jal          ra, 7f
3:                jal          ra, 6f
4:                jal          t1, 12f
5:                jal          t1, 13f
6:                jal          ra, 5b
7:                jal          s7, 11f
8:                jal          ra, 4b
9:                jal          s7, 10f
10:               jal          ra, 0b
11:               jal          t4, 9b
12:               jal          ra, 1b
13:               andi         s6, s5, -1595
sub_5_6:          jal          ra, 6f
0:                jal          s1, 7f
1:                jal          s7, 8f
2:                jal          a0, 5f
3:                jal          gp, 1b
4:                jal          t0, 0b
5:                jal          ra, 10f
6:                jal          ra, 11f
7:                jal          ra, 2b
8:                jal          a6, 9f
9:                jal          t1, 12f
10:               jal          ra, 3b
11:               jal          ra, 4b
12:               sub          s0, s9, a5
sub_5_7:          jal          ra, 22f
0:                jal          ra, 26f
1:                jal          t2, 4f
2:                jal          s6, 25f
3:                jal          ra, 17f
4:                jal          ra, 11f
5:                jal          ra, 27f
6:                jal          t1, 13f
7:                jal          ra, 18f
8:                jal          ra, 3b
9:                jal          ra, 30f
10:               jal          ra, 1b
11:               jal          ra, 2b
12:               jal          t1, 9b
13:               jal          t0, 5b
14:               jal          ra, 20f
15:               jal          ra, 28f
16:               jal          ra, 29f
17:               jal          t1, 16b
18:               jal          s7, 8b
19:               jal          t5, 7b
20:               jal          ra, 10b
21:               jal          ra, 15b
22:               jal          t1, 24f
23:               jal          ra, 12b
24:               jal          ra, 19b
25:               jal          gp, 0b
26:               jal          gp, 6b
27:               jal          t1, 23b
28:               jal          t0, 14b
29:               jal          ra, 21b
30:               srli         a1, s10, 28
sub_5_3:          jal          ra, 10f
0:                jal          t3, 15f
1:                jal          ra, 5f
2:                jal          t5, 11f
3:                jal          ra, 0b
4:                jal          ra, 18f
5:                jal          tp, 3b
6:                jal          ra, 4b
7:                jal          a3, 14f
8:                jal          ra, 17f
9:                jal          ra, 12f
10:               jal          ra, 9b
11:               jal          ra, 8b
12:               jal          ra, 16f
13:               jal          ra, 6b
14:               jal          t1, 2b
15:               jal          t0, 7b
16:               jal          t1, 1b
17:               jal          ra, 13b
18:               add          a2, a3, s8
                  slti         s8, t2, 778
                  ori          s4, s2, -1297
                  sra          s3, s1, a2
                  sra          zero, sp, s6
                  bge          s5, t4, 24f
                  sra          a6, zero, s1
                  sra          a3, s2, tp
                  bgeu         t4, t6, 19f
                  nop
                  bge          t2, t6, 24f
                  bgeu         s7, s7, 14f
                  sra          s4, ra, s5
                  ori          s7, ra, 602
                  srl          zero, tp, s6
14:               xori         s3, tp, 1587
                  nop
                  bgeu         s11, s4, 35f
                  and          gp, t1, s0
                  bne          t6, a7, 27f
19:               andi         s5, s9, 184
                  lui          t0, 371546
                  srli         s6, s4, 15
                  sll          gp, a0, s9
                  and          a2, a4, zero
24:               ori          a5, s7, 1646
                  bgeu         s1, a2, 28f
                  srl          t3, a3, s11
27:               srl          s1, s9, a2
28:               xor          s1, a0, t1
                  ori          s5, s9, 804
                  xori         s11, s11, -1499
                  slt          a1, t4, t2
                  auipc        a3, 469002
                  add          zero, a5, ra
                  sltu         s3, t5, t0
35:               xori         zero, t0, 489
                  ori          s10, a6, -385
                  or           a3, gp, s5
                  beq          s1, t5, 56f
                  bge          a7, t2, 47f
                  slti         s6, t2, -814
                  xori         s1, a6, -574
                  srai         s3, s7, 3
                  bne          a3, s6, 45f
                  srl          s5, s4, sp
45:               slti         a2, t4, 969
                  sltu         s6, a0, a6
47:               bgeu         t5, s9, 63f
                  srli         tp, a6, 4
                  bne          gp, a0, 68f
                  and          ra, t6, a5
                  nop
                  bgeu         t1, t1, 60f
                  bne          a3, a3, 65f
                  sll          a1, a3, zero
                  slt          s9, s0, a1
56:               ori          a5, t2, -1153
                  srai         a3, s7, 10
                  or           s3, s9, a4
                  srli         a5, s9, 18
60:               slti         t1, t2, 1685
                  xor          s4, s0, a5
                  xor          t5, s0, a0
63:               bgeu         s4, zero, 74f
                  srli         s5, t0, 15
65:               bgeu         gp, a7, 84f
                  bgeu         t2, t0, 72f
                  slti         a1, s2, -1491
68:               xor          t5, t4, a0
                  or           a4, t4, tp
                  slti         a6, a1, 1471
                  sll          s3, s7, ra
72:               bne          sp, t5, 92f
                  srl          t3, s2, a0
74:               nop
                  sra          t3, s9, s6
                  srai         s5, a0, 25
                  xor          a4, s2, t5
                  lui          zero, 569999
                  xori         s10, a6, 537
                  sub          t0, a0, a6
                  sltiu        a6, a2, -871
                  srl          a6, s1, sp
                  sra          t0, s9, s5
84:               add          tp, a4, tp
                  xori         a0, s9, -342
                  or           s3, s7, s1
                  sub          a2, s0, s5
                  slti         s11, s10, 1164
                  sra          s4, a3, s3
                  srai         zero, ra, 2
                  bge          t0, s8, 95f
92:               bne          a7, a7, 96f
                  sltu         a3, a2, t1
                  auipc        s3, 374110
95:               sll          s0, s8, zero
96:               bltu         a3, t4, 112f
                  auipc        s3, 528235
                  slli         a4, a0, 9
                  addi         s11, s3, 520
sub_5_4:          jal          ra, 16f
0:                jal          s11, 5f
1:                jal          a6, 15f
2:                jal          ra, 0b
3:                jal          t1, 10f
4:                jal          t1, 7f
5:                jal          t1, 9f
6:                jal          ra, 4b
7:                jal          ra, 17f
8:                jal          ra, 6b
9:                jal          ra, 8b
10:               jal          s0, 11f
11:               jal          t0, 13f
12:               jal          s5, 2b
13:               jal          t1, 14f
14:               jal          ra, 12b
15:               jal          ra, 3b
16:               jal          s10, 1b
17:               srai         a2, a2, 9
                  auipc        s10, 29905
                  sltiu        s3, s10, 407
                  and          ra, s3, sp
                  or           s11, tp, s0
                  bne          a5, t0, 123f
                  bltu         s9, tp, 110f
                  sltu         t1, s5, a2
                  slt          t5, t3, a3
                  blt          t4, s10, 121f
                  nop
110:              bne          a6, s0, 124f
                  bgeu         t0, zero, 117f
112:              srl          a1, a1, a2
                  srli         a3, s4, 4
                  blt          a0, a1, 130f
                  sltiu        a3, t4, -952
                  slti         s7, t6, -936
117:              bgeu         zero, s5, 135f
                  sltiu        s6, ra, -700
                  srai         zero, s4, 5
                  slt          a1, s7, t6
121:              auipc        s11, 386007
                  bgeu         t6, s2, 142f
123:              nop
124:              sltu         t0, a1, s0
                  xori         a4, s7, -1204
                  xor          t1, s1, tp
                  beq          a3, t1, 144f
                  sltiu        tp, a1, 342
                  slli         s7, s5, 8
130:              lui          a7, 233006
                  beq          s8, t0, 148f
                  xori         s0, s3, -1419
                  bltu         t3, s4, 152f
                  sub          s3, a2, s2
135:              nop
                  nop
                  xori         s7, s0, -1175
                  bne          a0, s11, 150f
                  sltiu        t5, sp, 1806
                  nop
                  sltiu        t1, a4, -1180
142:              slli         tp, t2, 24
                  sub          a5, s0, a1
144:              nop
                  and          ra, a7, gp
                  bne          a7, a3, 154f
                  bne          a1, s7, 165f
148:              add          s9, s4, s0
                  xor          s1, t2, s10
150:              bne          t6, a3, 162f
                  sltiu        t1, tp, 1832
152:              slli         s0, a2, 24
                  sll          s10, gp, zero
154:              xori         t3, s7, 2029
                  auipc        ra, 179589
                  andi         s8, t2, -1312
                  srli         s10, t4, 4
                  lui          s6, 133171
                  srai         s8, t0, 7
                  sub          a7, t2, a0
                  sra          s9, t4, s6
162:              bne          a0, t6, 166f
                  sltiu        s5, a5, -360
                  bltu         zero, a1, 183f
165:              andi         a1, t1, 2028
166:              addi         gp, zero, -965
                  andi         gp, s6, 1526
                  srai         s6, s8, 26
                  nop
                  bgeu         s2, s8, 175f
                  xori         s1, s8, -1266
                  sll          s8, s7, tp
                  xor          t3, a4, a4
                  and          a5, t5, a3
175:              xori         t5, s10, 1734
                  nop
                  sltiu        s4, s6, -975
                  and          t5, s8, s1
                  xori         s9, s6, 214
                  bne          t3, s5, 199f
                  lui          a3, 194791
                  auipc        a1, 914725
183:              ori          s7, s9, -1877
                  addi         s0, a0, 379
                  srai         s10, a7, 30
                  blt          t5, a5, 189f
                  sll          s5, s4, a4
                  sub          s4, s2, a5
189:              beq          s11, s8, 200f
                  and          s3, t5, a2
                  slli         s10, s11, 26
                  auipc        a4, 919907
                  bltu         s9, t6, 211f
                  bgeu         ra, s5, 214f
                  bge          t6, t2, 215f
                  xori         a1, t2, -1597
                  bltu         gp, gp, 213f
                  nop
199:              xori         s3, t0, -1583
200:              srai         tp, t1, 27
                  beq          s3, t4, 215f
                  slti         s5, s4, -1690
                  slli         s4, a0, 17
                  srli         s7, s2, 26
                  slli         s8, s4, 18
                  add          a4, t6, a3
                  blt          s10, a5, 211f
                  xor          t1, s2, t5
                  or           a5, a2, s2
                  srl          t3, s4, a5
211:              nop
                  or           a1, s8, s6
213:              sub          ra, t0, t2
214:              and          t2, s3, t2
215:              bgeu         t5, a2, 224f
                  bgeu         s8, s8, 229f
                  bgeu         a4, t1, 223f
                  srli         s11, a7, 0
                  lui          ra, 990234
                  sltiu        a5, s3, 729
                  srai         a0, a5, 4
                  add          a4, s11, s7
223:              sltu         tp, s2, t4
224:              srl          a0, t0, sp
                  srl          s4, ra, s1
                  srl          s3, a5, s7
                  sltu         s0, a2, s1
                  nop
229:              lui          s6, 912986
                  ori          a5, a0, -1726
                  bgeu         t3, ra, 250f
                  add          t5, sp, a5
                  srl          s8, a4, a3
                  andi         a3, gp, -293
                  add          s1, gp, s3
                  addi         a3, s1, 880
                  and          zero, a7, a2
                  sltiu        t3, t0, 384
                  sub          t0, a4, s8
                  add          s4, t0, tp
                  ori          s3, t5, 1426
                  xori         gp, s10, 570
                  sra          gp, s9, t2
                  or           a7, sp, a7
                  andi         s11, a6, 524
                  xor          a1, sp, t3
                  or           a1, t1, sp
                  srl          a3, s5, s7
                  slli         s1, zero, 4
250:              srl          s9, s1, s0
                  blt          s9, ra, 253f
                  sra          s4, s1, s0
253:              beq          a1, a3, 268f
                  bge          tp, a7, 262f
                  srl          s10, a0, sp
                  addi         zero, gp, -427
                  ori          a7, s10, -1118
                  add          zero, s10, t1
                  ori          s5, s6, -367
                  bne          a7, s4, 276f
                  slt          a0, s0, a2
262:              sltu         a1, sp, s5
                  bne          s7, a3, 279f
                  sltu         s5, s10, gp
                  ori          t3, a4, 1061
                  bltu         s6, s1, 272f
                  add          s6, s1, t0
268:              sltiu        t5, s5, -1502
                  addi         s11, s6, -53
                  slt          tp, a0, s0
                  slli         a3, ra, 24
272:              bge          t0, s0, 276f
                  beq          a6, s3, 293f
                  xor          t4, gp, t2
                  and          s8, t2, a5
276:              slli         t2, a0, 2
                  srli         s1, a1, 8
                  and          s1, a3, s11
279:              lui          a7, 612766
                  sub          s10, t2, a2
                  and          t5, a4, t0
                  blt          ra, s8, 295f
                  bltu         a5, s5, 303f
                  nop
                  bgeu         a5, a1, 304f
                  sra          s9, zero, t2
                  sltu         s10, t6, tp
                  bne          t3, a0, 302f
                  auipc        t2, 309937
                  slli         s8, s10, 23
                  bne          t6, t5, 295f
                  lui          ra, 638578
293:              srli         t1, a3, 29
                  sra          t5, s2, s8
295:              slti         s0, t1, -1540
                  sltu         s9, s6, s2
                  slt          t3, a6, a1
                  addi         s10, a7, 1127
                  nop
                  bne          tp, a3, 311f
                  sll          gp, t6, s7
302:              nop
303:              slti         a7, s9, -1704
304:              auipc        s7, 358566
                  add          a3, t6, a5
                  bgeu         a0, s10, 312f
                  lui          s9, 651728
                  slli         s6, s0, 25
                  beq          t0, t2, 318f
                  blt          s11, s0, 330f
311:              srai         a3, s6, 8
312:              bne          t4, t6, 316f
                  sub          t4, t0, t1
                  sll          a2, zero, t5
                  xor          a4, s10, gp
316:              addi         t1, a4, -805
                  add          tp, t4, a3
318:              bne          s10, s5, 323f
                  bgeu         a5, s10, 337f
                  addi         a2, t2, -924
                  beq          a7, t0, 337f
                  nop
323:              srai         a6, a2, 31
                  and          s4, s4, s3
                  ori          ra, t5, 1532
                  srli         a7, s1, 19
                  srli         t5, s11, 31
                  slti         s8, s1, 2047
                  srai         s10, zero, 31
330:              sltiu        s10, t3, -1922
                  andi         a2, a3, 1371
                  sltiu        s0, s8, 252
                  sll          a6, s5, t3
                  bge          s7, a6, 342f
                  lui          t5, 665039
                  slli         s5, s1, 14
337:              blt          t6, a7, 355f
                  xor          t5, a1, t5
                  andi         s9, a3, -1769
                  auipc        s5, 827976
                  and          t4, a5, a7
342:              lui          a2, 332819
                  bge          t4, s4, 347f
                  srl          t2, s0, a2
                  nop
                  add          a5, s1, t4
347:              or           a4, zero, tp
                  beq          sp, t0, 351f
                  bltu         s2, t2, 357f
                  addi         s0, s4, -1488
351:              srli         s6, a0, 29
                  sltu         s5, a6, gp
                  xor          s11, s11, s9
                  sub          s9, s9, s7
355:              ori          s0, s9, -636
                  or           t0, a3, t2
357:              ori          a7, t2, 1552
                  xori         s7, s1, -120
                  ori          t2, s4, -510
                  srli         a3, s7, 31
                  bgeu         a5, s1, 367f
                  xori         s8, s10, -1142
                  srai         t0, s10, 29
                  xor          tp, a7, a6
                  srai         a5, t5, 21
                  slti         s7, a7, 734
367:              bne          s5, sp, 379f
                  add          a4, a6, a4
                  add          s10, a4, t1
                  add          t4, t4, t2
                  srli         s3, a7, 9
                  bltu         s2, a4, 388f
                  addi         s6, a5, -1414
                  bltu         s3, t3, 394f
                  slt          s3, s11, t3
                  beq          t0, sp, 395f
                  slti         t2, t4, -988
                  srai         zero, t1, 27
379:              srli         tp, t3, 19
                  srli         t0, s5, 27
                  blt          a3, s0, 383f
                  sub          a5, gp, a6
383:              or           a5, t3, a6
                  ori          a7, s6, 135
                  lui          s6, 264117
                  sltiu        tp, s4, -485
                  bltu         a7, a1, 403f
388:              xori         ra, s2, -1820
                  bge          s2, s2, 401f
                  slt          a2, a4, s0
                  slti         s6, s4, -64
                  bltu         a1, s11, 411f
                  sltu         a5, a1, t5
394:              bne          s3, a6, 411f
395:              or           a2, s0, zero
                  lui          gp, 344095
                  bgeu         a3, a0, 416f
                  add          s4, s7, s4
                  blt          s3, ra, 414f
                  sll          t2, t5, ra
401:              andi         a4, zero, 689
                  or           s7, a4, s0
403:              sltiu        a4, s2, 882
                  beq          s10, a2, 424f
                  srl          t0, a2, a5
                  sltiu        s10, t4, 384
                  srl          t3, s10, t4
                  bltu         s11, a7, 427f
                  sll          tp, a6, s9
sub_5_8:          jal          ra, 7f
0:                jal          ra, 21f
1:                jal          t5, 29f
2:                jal          ra, 15f
3:                jal          a2, 27f
4:                jal          ra, 12f
5:                jal          ra, 23f
6:                jal          a6, 2b
7:                jal          ra, 16f
8:                jal          ra, 24f
9:                jal          t1, 0b
10:               jal          ra, 30f
11:               jal          ra, 28f
12:               jal          t5, 11b
13:               jal          ra, 1b
14:               jal          ra, 18f
15:               jal          ra, 8b
16:               jal          a3, 17f
17:               jal          ra, 26f
18:               jal          ra, 13b
19:               jal          ra, 4b
20:               jal          t1, 6b
21:               jal          s3, 22f
22:               jal          ra, 20b
23:               jal          ra, 10b
24:               jal          a5, 25f
25:               jal          ra, 5b
26:               jal          ra, 19b
27:               jal          t1, 9b
28:               jal          ra, 14b
29:               jal          ra, 3b
30:               sra          s5, t5, s9
                  blt          a7, s5, 429f
411:              bne          tp, s2, 417f
                  bne          t0, a7, 416f
                  sltu         ra, t3, a1
414:              bgeu         ra, a0, 426f
                  slt          s5, a2, t3
416:              srli         t1, s0, 3
417:              blt          a2, gp, 429f
                  ori          t5, tp, 1690
                  xor          a3, s2, tp
                  slt          t0, s5, s6
                  sra          tp, t5, a6
                  bge          ra, s2, 437f
                  addi         a0, a4, 1056
424:              bge          s0, t0, 444f
                  lui          ra, 633124
426:              beq          zero, s6, 445f
427:              lui          a6, 817446
                  xor          s3, sp, a7
429:              sra          s10, a4, zero
                  and          s1, s11, t1
                  sll          t4, a4, t1
                  srli         t5, s2, 20
                  xor          s5, s8, s5
                  sltu         gp, t3, s10
                  sll          a1, tp, a2
                  bgeu         s1, s11, 444f
437:              andi         s10, sp, 629
                  nop
                  sll          t0, a3, s2
                  slti         gp, a0, 1097
                  sra          s11, s6, a0
                  sltu         a3, s5, s5
                  srl          t2, t5, s2
444:              beq          t5, tp, 446f
445:              ori          t1, t6, 1836
446:              slti         s0, a0, -1364
                  xori         s10, t6, 675
                  sltu         s0, ra, t2
                  sltiu        a2, t2, -359
                  sll          t3, t0, t0
                  slti         t0, t5, 1819
                  nop
                  sra          gp, a3, t1
                  xori         s3, s4, 1340
                  sra          s1, t3, sp
                  auipc        s8, 776502
                  add          t4, s3, s11
                  xori         a2, s8, 354
                  andi         s9, s9, 1029
                  sll          a1, a1, s6
                  sub          a6, t3, s4
                  slti         zero, a1, 1057
                  sub          s4, t3, a2
                  add          t5, ra, tp
                  auipc        t1, 398738
                  and          a7, a0, a7
                  ori          t5, a4, -1064
                  slli         a3, t4, 7
                  sltiu        s0, s10, -948
                  nop
                  srai         s11, sp, 0
                  sub          a6, t4, a5
                  sltiu        s6, a2, 265
                  and          a3, t5, s11
                  srli         a5, t2, 8
                  bne          tp, s0, 482f
                  addi         a5, s9, 1913
                  srli         s10, zero, 2
                  auipc        s5, 854613
                  sltiu        s8, t4, -96
                  slt          t1, s11, s5
482:              srl          s6, sp, a2
                  sra          t1, ra, a6
                  ori          s5, s5, 15
                  sll          s11, s3, ra
                  srl          s5, tp, a3
                  addi         t1, t0, -104
                  slti         s1, a7, -302
                  or           t0, a3, s8
                  nop
                  nop
                  srl          a4, a6, sp
                  beq          a6, a4, 509f
                  bgeu         t2, t2, 497f
                  xor          s8, s9, zero
                  xori         zero, t3, -1487
497:              beq          t0, t4, 508f
                  bltu         a0, t6, 502f
                  bne          s6, a4, 516f
                  bge          t4, a3, 519f
                  sra          ra, ra, a5
502:              sll          s10, s6, s2
                  or           t5, s8, s8
                  blt          t5, zero, 522f
                  xor          s5, a5, t3
                  sub          s5, s2, s3
                  bgeu         t2, s4, 515f
508:              bne          s9, s4, 524f
509:              or           a6, t5, tp
                  auipc        zero, 10710
                  sra          s1, t0, sp
                  bltu         a5, t6, 526f
                  sltu         a2, s9, t6
                  bge          a6, a5, 527f
515:              srai         t2, s6, 3
516:              slli         t1, ra, 16
                  sltu         a0, s4, s7
                  and          s3, sp, s4
519:              xor          a2, s11, t1
                  sltu         zero, t0, gp
                  and          s6, s0, a5
522:              blt          t4, a4, 542f
                  xori         a5, t5, 1836
524:              auipc        a2, 999591
                  add          t3, t5, zero
526:              xor          s7, ra, s2
527:              sra          a0, zero, s2
                  blt          s0, s11, 532f
                  xori         zero, gp, -1404
                  slt          s11, a3, sp
                  slt          t0, s10, sp
532:              lui          t5, 797198
                  lui          a7, 515508
                  srl          s0, s6, a5
                  slli         s4, t3, 3
                  srl          a5, s11, s7
                  sll          zero, s7, s3
                  sltu         t4, a0, s9
                  xori         s3, a5, 73
                  or           a5, t3, s8
                  auipc        s7, 768703
542:              andi         a4, a5, -1280
                  xori         s9, tp, 28
                  xori         t5, t6, -41
                  srai         s1, tp, 19
                  andi         a0, t5, -960
                  sltiu        t2, s2, -242
                  slt          a3, s8, sp
                  blt          t4, s9, 558f
                  srli         a2, s4, 6
                  bgeu         s6, a0, 567f
                  sltiu        s6, s6, 521
                  slt          t4, t3, ra
                  sltiu        tp, s0, -1688
                  xori         a6, s8, -1032
                  ori          s3, t1, 1625
                  add          s1, a0, t3
558:              slli         s0, s3, 0
                  addi         s3, sp, 920
                  addi         s7, s11, -1604
                  srai         t0, s4, 23
                  lui          s10, 901942
                  slti         s7, t1, -1818
                  srli         a1, a4, 31
                  xor          t2, s1, a7
                  srai         s8, t3, 4
567:              srl          gp, s5, ra
                  srai         a2, sp, 15
                  bgeu         s6, s8, 574f
                  nop
                  and          s3, a3, t1
                  auipc        t2, 985627
                  add          t3, t2, s4
574:              xori         t0, a6, 1788
                  bge          sp, s4, 593f
                  add          a4, s9, a5
                  xori         a7, t1, 590
                  auipc        s11, 460526
                  beq          a2, t0, 599f
                  srl          t1, s3, a1
                  xor          gp, s8, sp
                  beq          s0, t6, 598f
                  slti         t1, gp, -1955
                  sltiu        t2, t1, 1995
                  blt          s7, t3, 602f
                  slt          s1, sp, t2
                  xor          s11, zero, s11
                  lui          s11, 697174
                  bltu         s4, a4, 605f
                  bgeu         s6, t3, 598f
                  slti         t0, sp, 1530
                  add          s8, ra, s4
593:              ori          a7, zero, -1304
                  bgeu         a0, t1, 598f
                  slt          s1, t1, tp
                  blt          s11, s2, 605f
                  blt          a4, s9, 605f
598:              srli         s8, a0, 15
599:              add          a4, t4, a1
                  auipc        s7, 80280
                  sub          s4, t6, t0
602:              andi         s1, t6, -1443
                  add          a6, s2, t5
                  bne          s3, a7, 605f
605:              slli         s0, a4, 26
                  lw           ra, 4(s2)
                  srli         t2, a3, 18
                  addi         s2, s2, 28
                  sltu         a0, t1, zero
                  and          t3, a5, s11
                  xor          t1, s8, s10
                  ori          s4, s2, -1350
                  and          tp, s0, a1
                  sltu         a0, s10, sp
                  slti         s0, s0, 1487
859:              addi x5, x1, 0
859:              jalr x5, x5, 0
sub_1:            auipc        s6, 701527
                  addi         s2, s2, -40
                  addi         s7, s6, 1370
                  sw           ra, 4(s2)
                  xori         a3, t4, 1852
                  slli         a0, a4, 10
                  srai         s0, zero, 12
                  bltu         s10, a6, 11f
                  addi         gp, a5, -151
                  and          ra, t2, s10
                  ori          gp, s8, 1723
                  nop
                  bne          a7, t5, 8f
                  addi         t4, s3, 138
8:                sltiu        s11, s6, 1173
                  sra          gp, a5, s4
                  sltu         t3, s11, s1
11:               ori          s11, s2, -1571
                  add          a7, t1, a7
                  xor          t4, tp, s0
                  sub          a7, s11, a0
                  lw           ra, 4(s2)
                  addi         s2, s2, 40
                  xor          a5, s3, a0
24:               addi x9, x1, 0
24:               jalr x9, x9, 0
sub_4:            add          tp, s3, a6
                  add          t4, s2, a4
                  and          t0, a7, a2
                  sub          a6, t5, a3
                  bltu         a2, t6, sub_4_stack_p
                  xori         t1, s0, 537
                  srli         s11, a5, 7
                  slt          a5, a0, s5
sub_4_stack_p:    addi         s2, s2, -28
                  nop
                  xori         a5, s2, 964
                  sw           ra, 4(s2)
                  addi         a1, a7, -1543
                  srai         t5, a2, 28
                  slti         a0, sp, 242
                  xori         s3, s8, 1533
                  sll          a2, s2, t5
                  sra          s5, a0, zero
                  blt          zero, s9, sub_4_j8 #branch to jump instr
                  srli         gp, a2, 12
sub_4_j8:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  sltu         s8, tp, t6
                  slti         ra, ra, 733
                  auipc        a0, 261664
                  auipc        s6, 406635
                  sltiu        s1, t2, 664
                  sra          tp, t4, t3
                  sub          t1, s10, a7
                  beq          a4, t1, 11f
                  slt          s5, s3, a1
                  sltiu        t2, a0, -812
                  sltu         a0, t2, t1
11:               sltu         s3, a5, s1
                  auipc        t3, 559416
                  lw           ra, 4(s2)
                  ori          a7, t0, -1724
                  sub          a4, s9, s3
                  andi         t3, a4, -534
                  addi         s2, s2, 28
                  slt          a7, a1, t4
40:               addi x15, x1, 0
40:               jalr x15, x15, 0
sub_2:            sub          t4, t1, tp
                  slti         t5, s10, -1948
                  beq          gp, s8, sub_2_stack_p
sub_2_stack_p:    addi         s2, s2, -28
                  addi         s4, t5, -886
                  or           zero, s6, s3
                  andi         s11, s11, 1785
                  sll          s6, a1, s9
                  sw           ra, 4(s2)
                  sltiu        s3, s2, 332
                  and          t2, a7, t3
                  and          s8, s8, t3
                  xori         t4, gp, 1631
                  auipc        zero, 441883
                  sll          a0, a3, s6
                  sltiu        t2, a3, 1423
                  srli         a7, a3, 13
                  srl          s9, zero, a7
                  lui          a6, 868789
sub_2_j4:         jal          ra, sub_4 #jump sub_2 -> sub_4
sub_2_16:         jal          ra, 1f
0:                jal          t1, 10f
1:                jal          s7, 6f
2:                jal          ra, 9f
3:                jal          ra, 16f
4:                jal          a2, 3b
5:                jal          ra, 13f
6:                jal          ra, 8f
7:                jal          t0, 2b
8:                jal          ra, 14f
9:                jal          ra, 4b
10:               jal          s3, 7b
11:               jal          ra, 5b
12:               jal          t1, 0b
13:               jal          t1, 12b
14:               jal          t1, 15f
15:               jal          t0, 11b
16:               slt          s5, tp, s4
sub_2_5:          jal          ra, 4f
0:                jal          ra, 8f
1:                jal          tp, 11f
2:                jal          ra, 16f
3:                jal          s9, 17f
4:                jal          s5, 24f
5:                jal          s4, 2b
6:                jal          t1, 3b
7:                jal          ra, 28f
8:                jal          t1, 13f
9:                jal          ra, 10f
10:               jal          s9, 29f
11:               jal          ra, 12f
12:               jal          ra, 14f
13:               jal          ra, 23f
14:               jal          ra, 21f
15:               jal          ra, 0b
16:               jal          s11, 25f
17:               jal          a4, 9b
18:               jal          ra, 6b
19:               jal          t1, 27f
20:               jal          ra, 5b
21:               jal          gp, 19b
22:               jal          ra, 7b
23:               jal          tp, 18b
24:               jal          t0, 1b
25:               jal          t1, 15b
26:               jal          ra, 22b
27:               jal          t1, 26b
28:               jal          ra, 20b
29:               sub          s10, t3, a7
sub_2_15:         jal          ra, 7f
0:                jal          ra, 8f
1:                jal          ra, 12f
2:                jal          t5, 6f
3:                jal          ra, 14f
4:                jal          a3, 13f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          ra, 10f
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          tp, 9b
11:               jal          t1, 1b
12:               jal          ra, 15f
13:               jal          ra, 5b
14:               jal          ra, 11b
15:               add          a6, s7, gp
sub_2_18:         jal          ra, 6f
0:                jal          ra, 4f
1:                jal          ra, 16f
2:                jal          ra, 3f
3:                jal          t1, 13f
4:                jal          ra, 17f
5:                jal          t1, 14f
6:                jal          t4, 15f
7:                jal          a4, 18f
8:                jal          t0, 12f
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          ra, 2b
12:               jal          ra, 9b
13:               jal          s0, 1b
14:               jal          ra, 11b
15:               jal          ra, 8b
16:               jal          t0, 7b
17:               jal          ra, 10b
18:               sltiu        s8, t3, -893
sub_2_2:          jal          ra, 2f
0:                jal          t1, 12f
1:                jal          ra, 5f
2:                jal          ra, 8f
3:                jal          t1, 18f
4:                jal          ra, 23f
5:                jal          s5, 14f
6:                jal          tp, 1b
7:                jal          ra, 3b
8:                jal          gp, 6b
9:                jal          t1, 15f
10:               jal          ra, 16f
11:               jal          ra, 13f
12:               jal          t1, 7b
13:               jal          t1, 20f
14:               jal          t1, 9b
15:               jal          s10, 10b
16:               jal          ra, 0b
17:               jal          t1, 11b
18:               jal          t1, 22f
19:               jal          ra, 17b
20:               jal          t3, 21f
21:               jal          ra, 4b
22:               jal          t0, 19b
23:               slti         a4, s4, -538
sub_2_19:         jal          ra, 12f
0:                jal          ra, 13f
1:                jal          ra, 0b
2:                jal          t1, 8f
3:                jal          ra, 11f
4:                jal          s5, 5f
5:                jal          ra, 1b
6:                jal          ra, 4b
7:                jal          ra, 3b
8:                jal          ra, 6b
9:                jal          ra, 7b
10:               jal          tp, 2b
11:               jal          ra, 10b
12:               jal          ra, 9b
13:               and          s7, gp, s3
sub_2_0:          jal          ra, 9f
0:                jal          s5, 19f
1:                jal          t1, 26f
2:                jal          a1, 11f
3:                jal          ra, 5f
4:                jal          ra, 16f
5:                jal          ra, 6f
6:                jal          ra, 12f
7:                jal          ra, 1b
8:                jal          s4, 23f
9:                jal          ra, 22f
10:               jal          s6, 17f
11:               jal          ra, 20f
12:               jal          tp, 4b
13:               jal          s5, 15f
14:               jal          ra, 21f
15:               jal          ra, 0b
16:               jal          ra, 18f
17:               jal          ra, 14b
18:               jal          ra, 13b
19:               jal          ra, 7b
20:               jal          t0, 25f
21:               jal          ra, 8b
22:               jal          ra, 10b
23:               jal          ra, 2b
24:               jal          ra, 3b
25:               jal          ra, 24b
26:               slli         zero, sp, 10
sub_2_21:         jal          ra, 0f
0:                jal          ra, 3f
1:                jal          tp, 7f
2:                jal          ra, 1b
3:                jal          ra, 2b
4:                jal          ra, 10f
5:                jal          ra, 8f
6:                jal          ra, 5b
7:                jal          t1, 9f
8:                jal          ra, 4b
9:                jal          a6, 6b
10:               xori         t3, s0, -738
sub_2_10:         jal          ra, 0f
0:                jal          s4, 2f
1:                jal          s5, 15f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          ra, 1b
5:                jal          a6, 16f
6:                jal          a7, 8f
7:                jal          t1, 5b
8:                jal          ra, 14f
9:                jal          ra, 3b
10:               jal          t1, 12f
11:               jal          s5, 6b
12:               jal          ra, 17f
13:               jal          ra, 9b
14:               jal          ra, 10b
15:               jal          gp, 13b
16:               jal          ra, 11b
17:               andi         s1, s9, -1849
sub_2_20:         jal          ra, 18f
0:                jal          s10, 19f
1:                jal          ra, 6f
2:                jal          ra, 14f
3:                jal          ra, 15f
4:                jal          ra, 0b
5:                jal          t1, 1b
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          tp, 16f
9:                jal          t1, 2b
10:               jal          ra, 12f
11:               jal          a4, 10b
12:               jal          gp, 5b
13:               jal          ra, 8b
14:               jal          ra, 13b
15:               jal          ra, 4b
16:               jal          s7, 17f
17:               jal          ra, 3b
18:               jal          tp, 11b
19:               addi         a1, a4, 109
sub_2_22:         jal          ra, 12f
0:                jal          ra, 6f
1:                jal          ra, 13f
2:                jal          t1, 8f
3:                jal          t1, 1b
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          a2, 14f
7:                jal          ra, 5b
8:                jal          ra, 0b
9:                jal          ra, 7b
10:               jal          t1, 4b
11:               jal          tp, 3b
12:               jal          ra, 11b
13:               jal          ra, 10b
14:               slli         gp, s4, 1
sub_2_7:          jal          ra, 1f
0:                jal          ra, 2f
1:                jal          gp, 24f
2:                jal          t1, 8f
3:                jal          ra, 10f
4:                jal          ra, 23f
5:                jal          gp, 22f
6:                jal          t1, 20f
7:                jal          ra, 17f
8:                jal          gp, 9f
9:                jal          t1, 15f
10:               jal          t2, 0b
11:               jal          t1, 7b
12:               jal          s0, 16f
13:               jal          ra, 11b
14:               jal          ra, 18f
15:               jal          ra, 19f
16:               jal          ra, 14b
17:               jal          ra, 5b
18:               jal          ra, 3b
19:               jal          ra, 13b
20:               jal          t1, 21f
21:               jal          ra, 25f
22:               jal          t1, 6b
23:               jal          ra, 12b
24:               jal          t1, 4b
25:               slti         s9, s6, -1529
sub_2_17:         jal          ra, 11f
0:                jal          t1, 7f
1:                jal          t0, 0b
2:                jal          ra, 1b
3:                jal          t1, 22f
4:                jal          ra, 18f
5:                jal          ra, 16f
6:                jal          a2, 13f
7:                jal          ra, 3b
8:                jal          t5, 20f
9:                jal          t1, 2b
10:               jal          s7, 8b
11:               jal          t1, 17f
12:               jal          ra, 15f
13:               jal          t0, 10b
14:               jal          t1, 19f
15:               jal          ra, 21f
16:               jal          ra, 14b
17:               jal          t1, 5b
18:               jal          s1, 23f
19:               jal          ra, 12b
20:               jal          t1, 9b
21:               jal          s4, 6b
22:               jal          t1, 4b
23:               addi         ra, t0, 1902
sub_2_13:         jal          ra, 5f
0:                jal          ra, 12f
1:                jal          ra, 8f
2:                jal          t0, 17f
3:                jal          ra, 16f
4:                jal          s0, 11f
5:                jal          t1, 0b
6:                jal          t1, 7f
7:                jal          a0, 14f
8:                jal          t1, 2b
9:                jal          t1, 18f
10:               jal          s6, 13f
11:               jal          a5, 1b
12:               jal          gp, 10b
13:               jal          ra, 15f
14:               jal          s3, 9b
15:               jal          t3, 4b
16:               jal          tp, 6b
17:               jal          t1, 3b
18:               add          a2, s2, t0
sub_2_23:         jal          ra, 1f
0:                jal          ra, 11f
1:                jal          ra, 14f
2:                jal          ra, 4f
3:                jal          ra, 15f
4:                jal          tp, 7f
5:                jal          ra, 10f
6:                jal          a5, 13f
7:                jal          ra, 8f
8:                jal          ra, 0b
9:                jal          t1, 2b
10:               jal          ra, 6b
11:               jal          ra, 5b
12:               jal          t3, 9b
13:               jal          s6, 3b
14:               jal          ra, 12b
15:               slli         t2, s6, 31
sub_2_6:          jal          ra, 11f
0:                jal          t1, 12f
1:                jal          s11, 10f
2:                jal          t1, 3f
3:                jal          ra, 15f
4:                jal          ra, 6f
5:                jal          t1, 0b
6:                jal          ra, 7f
7:                jal          tp, 8f
8:                jal          ra, 1b
9:                jal          gp, 5b
10:               jal          a1, 9b
11:               jal          ra, 14f
12:               jal          t1, 13f
13:               jal          ra, 2b
14:               jal          gp, 4b
15:               sra          t2, s4, tp
sub_2_14:         jal          ra, 18f
0:                jal          tp, 19f
1:                jal          ra, 15f
2:                jal          t1, 13f
3:                jal          ra, 10f
4:                jal          ra, 22f
5:                jal          a2, 1b
6:                jal          t3, 0b
7:                jal          s8, 17f
8:                jal          ra, 11f
9:                jal          t1, 21f
10:               jal          t1, 9b
11:               jal          s4, 24f
12:               jal          t1, 16f
13:               jal          s7, 25f
14:               jal          tp, 20f
15:               jal          t1, 14b
16:               jal          ra, 3b
17:               jal          s3, 5b
18:               jal          ra, 12b
19:               jal          t1, 2b
20:               jal          t1, 6b
21:               jal          tp, 4b
22:               jal          ra, 8b
23:               jal          s11, 7b
24:               jal          t1, 23b
25:               sub          t0, a0, a0
sub_2_12:         jal          ra, 13f
0:                jal          ra, 12f
1:                jal          ra, 2f
2:                jal          t5, 7f
3:                jal          ra, 9f
4:                jal          t1, 5f
5:                jal          t1, 14f
6:                jal          a5, 3b
7:                jal          gp, 15f
8:                jal          ra, 6b
9:                jal          ra, 10f
10:               jal          ra, 4b
11:               jal          s10, 0b
12:               jal          t0, 1b
13:               jal          ra, 8b
14:               jal          ra, 11b
15:               slti         t5, tp, -1391
                  blt          t2, a4, 10f
                  bltu         a6, sp, 19f
                  sub          s0, a2, a4
                  xor          s8, s0, a0
                  beq          t0, t3, 24f
                  srli         t0, tp, 14
                  sltiu        a7, s2, -893
                  slt          a1, a2, t3
                  nop
                  bltu         s10, a6, 19f
10:               bgeu         s8, s2, 26f
                  sra          t2, s0, s3
                  srl          t0, t2, a6
                  add          s0, t1, s5
                  sll          t3, s5, s9
                  bgeu         s10, t5, 19f
                  sra          t0, gp, s10
                  blt          t1, s2, 25f
                  addi         a7, zero, 1015
19:               or           t4, s0, s9
                  srai         a0, s11, 0
                  slt          s6, a0, s0
                  sub          t3, t1, s2
                  or           a3, t0, a4
24:               srai         t4, a4, 29
25:               sltiu        s0, s5, 697
26:               bltu         t2, a5, 32f
                  slli         s1, s9, 0
                  bgeu         s6, s10, 45f
                  beq          ra, s6, 42f
                  bne          s3, s6, 35f
                  nop
32:               sub          s8, a7, s3
                  slti         a6, t1, -2014
                  sll          t3, ra, gp
35:               bgeu         s9, t5, 55f
                  andi         s6, s11, -1743
                  bge          a2, tp, 43f
                  blt          s7, s9, 48f
                  slti         s10, a7, -1930
                  addi         a7, s2, -402
                  and          t5, s10, a1
42:               slt          t5, s11, t4
43:               sll          t2, s2, gp
                  bne          s0, s8, 54f
45:               slli         a5, s1, 20
                  sub          a1, s0, s8
                  ori          t0, s7, 479
48:               xor          a4, ra, t4
                  sltu         a5, a1, tp
                  or           t4, a7, a7
                  sll          a1, t0, s10
                  srai         s4, a7, 5
                  add          s1, a2, ra
54:               beq          a1, zero, 62f
55:               bge          s9, s6, 64f
                  lui          s3, 890354
                  or           s1, a4, t6
                  slti         s4, t2, 595
                  xor          s3, s0, s2
                  auipc        s4, 73385
                  xori         s8, a2, 1818
62:               lui          s9, 466987
                  or           ra, a1, a1
64:               andi         t3, s2, 1767
                  blt          ra, t6, 83f
                  bge          s5, a7, 69f
                  beq          t1, a5, 79f
                  xor          a0, s0, ra
69:               lui          zero, 774123
                  nop
                  bltu         a2, t1, 80f
                  nop
                  nop
                  bltu         s1, t4, 85f
                  blt          s4, a5, 89f
                  xori         a6, t2, 822
                  blt          tp, a5, 84f
sub_2_9:          jal          ra, 9f
0:                jal          s7, 16f
1:                jal          ra, 10f
2:                jal          t1, 22f
3:                jal          tp, 6f
4:                jal          s4, 19f
5:                jal          ra, 3b
6:                jal          ra, 15f
7:                jal          ra, 23f
8:                jal          ra, 13f
9:                jal          s8, 21f
10:               jal          ra, 4b
11:               jal          t1, 17f
12:               jal          ra, 8b
13:               jal          a6, 7b
14:               jal          ra, 18f
15:               jal          ra, 1b
16:               jal          ra, 12b
17:               jal          ra, 2b
18:               jal          t1, 11b
19:               jal          ra, 20f
20:               jal          t1, 14b
21:               jal          ra, 5b
22:               jal          ra, 0b
23:               and          a1, tp, s11
                  addi         t0, s10, 75
79:               bgeu         t6, s1, 95f
80:               sltiu        gp, t2, -767
                  sll          t0, s4, s9
                  andi         t2, t5, -242
83:               auipc        s10, 883487
84:               xori         gp, sp, -759
85:               xor          t2, s9, s11
                  sltiu        a0, a5, -1391
                  xori         tp, s3, 832
                  and          ra, t2, sp
89:               xori         s1, s0, -734
                  slli         t0, s10, 27
                  xor          a5, s0, sp
                  bge          ra, a5, 99f
                  bgeu         zero, t2, 98f
                  add          t3, s3, s7
95:               sltu         s0, s2, a3
                  bne          s9, t1, 105f
                  auipc        s4, 122529
98:               beq          a4, a4, 112f
99:               sltu         s0, a1, a7
                  addi         t3, a5, -165
                  and          s7, a2, sp
                  add          s1, t0, s11
                  addi         ra, zero, 1574
                  blt          t2, s0, 116f
105:              sra          s3, t5, t6
                  sra          t0, zero, s7
                  bge          t1, s6, 116f
                  lui          a4, 55439
                  sra          a6, s5, s8
                  srli         t4, s7, 15
                  sub          s11, a2, a2
112:              add          a4, s0, s1
                  add          a3, s7, s8
                  sra          s6, tp, a2
                  beq          s5, t1, 126f
116:              srai         s1, s7, 18
                  bgeu         s11, tp, 127f
                  beq          sp, t5, 126f
                  blt          s10, t0, 139f
                  bltu         t6, a4, 125f
                  nop
                  sltiu        a3, a3, 871
                  xor          a4, s7, a3
                  sra          s1, a4, t2
125:              slt          a7, s4, t1
126:              bltu         s4, s4, 143f
127:              slli         a3, a6, 27
                  ori          t5, a4, -465
                  sltiu        s9, a3, -814
                  slli         t0, sp, 19
                  sll          zero, a2, s9
                  bltu         t3, s8, 142f
                  sltu         tp, s0, s5
                  or           zero, s11, a5
                  nop
                  bgeu         a2, gp, 152f
                  xor          s0, t0, s8
                  ori          t0, s8, -808
139:              andi         a7, s11, 467
                  bge          a6, s8, 147f
                  andi         t0, t6, -1450
142:              slt          a7, s8, t2
143:              bgeu         t3, s2, 153f
                  xor          s8, gp, t0
                  sltu         a0, a5, zero
                  andi         tp, s10, 166
147:              bgeu         t1, a3, 165f
                  nop
                  nop
                  auipc        s9, 920743
                  blt          t6, t0, 171f
152:              lui          s6, 81123
                  auipc        a7, 443812
                  addi         a4, a1, -1252
                  slti         a3, s5, 800
                  xori         a3, s6, 306
                  add          a7, s0, t4
                  sltiu        s4, gp, 740
                  andi         t0, a7, 1008
                  slli         t3, s3, 26
sub_2_j6:         jal          ra, sub_3 #jump sub_2 -> sub_3
153:              bne          zero, s10, 158f
                  bge          s10, t6, 157f
                  auipc        a5, 961980
                  sll          s7, a7, tp
157:              bltu         s7, a2, 173f
158:              xor          a2, t0, a6
                  lui          a1, 20723
                  bgeu         t4, a7, 166f
                  sub          t4, s10, a5
                  sub          s3, a0, s7
                  blt          a3, t1, 172f
                  andi         a4, s4, -1754
165:              sltu         s1, ra, sp
166:              sra          s5, t1, a5
                  bge          t4, s2, 173f
                  slt          t2, t3, a0
                  bgeu         a4, tp, 183f
                  bltu         a6, s6, 177f
171:              sll          a0, s3, s0
172:              sub          t4, t2, a5
173:              sll          zero, zero, s7
                  bgeu         s7, sp, 187f
                  srl          t4, gp, t3
                  bge          s5, s1, 188f
177:              lui          a0, 985091
                  beq          gp, t3, 188f
                  sltu         s1, t6, a7
                  slt          gp, s8, t0
                  andi         t3, s8, -1635
                  xori         s3, ra, -1165
183:              addi         a1, s0, -237
                  xor          a0, s4, s10
                  andi         a6, t0, -581
                  nop
187:              bltu         s3, a5, 195f
188:              blt          a0, gp, 192f
                  sub          zero, t2, gp
                  xori         a5, t4, -1903
                  beq          t3, s11, 200f
192:              lui          t0, 237421
                  slli         ra, s9, 21
                  bne          s0, s2, 206f
195:              sltu         s0, s10, a1
                  ori          gp, a5, -305
                  sub          zero, zero, s1
                  srli         tp, t3, 1
                  or           t1, s5, s11
200:              lui          s9, 926264
                  bltu         ra, s8, 219f
                  andi         s0, t2, -508
                  xor          s7, t4, s2
                  slti         s7, a0, -456
                  slti         t5, tp, 2039
206:              beq          s11, t4, 220f
                  sra          s6, s10, s1
                  and          t0, t6, gp
                  add          a7, s1, t3
                  srl          s8, s6, zero
                  beq          a7, s3, 217f
                  sltiu        ra, sp, -1630
                  slt          t2, s3, tp
                  bltu         s2, t6, 230f
                  srli         tp, a0, 7
                  sra          s10, zero, a5
217:              andi         s11, a1, 172
                  slli         t5, a7, 12
219:              sltiu        s9, t2, 1483
220:              bgeu         s8, gp, 229f
                  bltu         s2, s3, 224f
                  sra          s1, t1, gp
                  slli         a5, a1, 19
224:              srl          s3, s4, s5
                  ori          t0, s0, -2002
                  lui          s9, 921400
                  sll          s5, s1, s1
                  ori          zero, a7, -1060
229:              auipc        gp, 874288
230:              xor          t1, t6, s9
                  sub          a6, t2, t2
                  and          s7, s6, a1
                  lui          s7, 1018850
                  bgeu         a2, a3, 239f
                  and          zero, a7, a2
                  add          zero, s4, a7
                  srai         zero, s1, 3
                  and          t2, zero, gp
239:              bltu         a0, t5, 249f
                  sra          s4, gp, a0
                  sll          t1, t6, a2
                  beq          t0, t2, 252f
                  sltiu        s11, tp, 1730
                  bge          gp, a1, 260f
                  srl          a0, s6, s0
                  bltu         a3, a3, 256f
                  beq          t3, t0, 259f
                  add          s7, s11, t5
249:              xor          t5, s2, a5
                  nop
                  or           s11, s0, a6
252:              sra          s6, tp, s8
                  and          ra, a7, ra
                  slli         s3, a3, 20
                  sub          s9, a6, s0
256:              sub          a2, t6, s3
                  bgeu         s5, a4, 275f
                  srai         s10, s8, 0
259:              bne          s0, s3, 265f
260:              bgeu         s8, gp, 280f
                  xori         a0, s10, 1121
                  sra          a1, s7, s11
                  srai         a6, a3, 8
                  sra          a1, t2, a6
265:              sub          zero, s7, s3
                  sltu         s6, t5, s8
                  or           a1, s7, s3
                  sub          s6, a1, s10
                  srl          s0, gp, t1
                  xori         s5, a3, 1166
                  and          a0, s8, s0
                  srl          a3, s5, s5
                  sub          s11, s3, a6
                  bne          s2, a6, 288f
275:              srai         s0, a0, 29
                  lui          a3, 365022
                  beq          tp, s7, 297f
                  sra          s9, t5, sp
                  bgeu         t4, t0, 290f
280:              sra          gp, t3, t1
                  bge          a2, a0, 299f
                  ori          a2, a3, -1973
                  bgeu         s2, t1, 296f
                  beq          s1, a1, 296f
                  sll          t3, a6, tp
                  blt          s1, s11, 293f
                  srl          a4, s1, s3
288:              blt          a1, s10, 305f
                  srai         t1, s10, 11
290:              andi         a5, s2, 906
                  sub          a7, ra, s1
                  addi         tp, t1, -1541
293:              xori         zero, s7, -440
                  add          s5, gp, a4
                  sra          a3, t2, tp
296:              blt          a5, t2, 300f
297:              xori         a3, s6, -1885
                  xori         a7, a5, 1074
299:              blt          s7, s5, 307f
300:              bgeu         a0, a1, 314f
                  auipc        s7, 856
                  slti         a7, s0, -412
                  sltiu        tp, gp, -222
                  slti         s11, t6, -76
305:              slt          t0, t6, s8
                  bne          tp, t4, 313f
307:              sltiu        a7, t5, -1053
                  sltiu        zero, t6, 322
                  bltu         gp, s11, 314f
                  ori          a2, a1, -177
                  sltu         t3, ra, tp
                  sra          t1, a3, a2
313:              blt          s11, s3, 322f
314:              sltu         s3, t0, s1
                  slli         s10, ra, 19
                  and          t5, t5, a0
                  slli         s9, ra, 31
                  srl          a2, s6, t3
                  lui          ra, 535249
                  xori         a6, ra, -325
                  blt          a5, s11, 331f
322:              sltiu        t0, a4, -1988
                  xor          t5, a7, s4
                  sra          s6, a4, s11
                  sltu         zero, s1, s8
                  slli         t3, s3, 19
                  beq          t0, s10, 336f
                  or           s10, tp, sp
                  sub          a6, s1, t5
                  ori          s3, s4, 711
331:              blt          gp, a7, 339f
                  sltiu        s9, t2, -1083
                  slt          s4, a5, ra
                  bltu         a5, s2, 339f
                  sub          t2, s3, t6
336:              sltiu        tp, a5, 654
                  and          s11, s4, s3
                  ori          t1, s5, -1980
339:              sra          a6, t2, a0
                  srai         s5, t3, 24
                  srli         a4, a2, 15
                  addi         s5, s2, -218
                  bgeu         a6, s4, 354f
                  auipc        a2, 689810
                  xor          s7, t3, s9
                  add          a7, gp, s6
                  sra          a3, a5, s9
                  blt          a6, s11, 362f
                  beq          t5, a6, 357f
                  and          t4, s5, t0
                  addi         a0, ra, -645
                  sll          s7, ra, a2
                  sll          t2, s9, s0
354:              sltiu        t1, a4, -203
                  bgeu         s11, t3, 358f
                  bgeu         s10, s9, 372f
357:              addi         s8, s9, 310
358:              sra          s1, t0, a1
                  or           gp, a5, a3
                  auipc        t3, 267714
                  ori          s5, s7, 1673
362:              add          gp, s8, s11
                  xor          s7, s5, t0
                  xor          a0, s7, sp
                  ori          s11, a5, 1626
                  lui          s6, 386781
                  sltiu        a5, a2, -1053
                  addi         s11, s8, -1963
                  lui          a5, 783576
                  sll          zero, s8, t5
                  andi         s4, a3, -198
372:              srl          s5, s0, s10
                  and          t4, t2, s2
                  auipc        s9, 956781
                  blt          sp, s3, 382f
                  ori          zero, tp, -1236
                  bgeu         t1, a0, 387f
                  and          a4, s10, t6
                  bge          a1, t2, 399f
                  add          t4, a1, s3
                  srl          s4, s9, s8
382:              andi         s4, s10, -18
                  addi         a6, s8, -1640
                  srli         t3, s0, 26
                  slti         t4, a2, 1645
                  srl          t3, s3, s10
387:              blt          t4, s8, 397f
                  auipc        a7, 216431
                  xori         t2, a2, -509
                  add          s1, s10, t3
                  xori         a6, a3, 333
                  sub          zero, tp, gp
sub_2_4:          jal          ra, 29f
0:                jal          ra, 21f
1:                jal          ra, 20f
2:                jal          ra, 18f
3:                jal          s8, 25f
4:                jal          a3, 3b
5:                jal          t0, 26f
6:                jal          gp, 15f
7:                jal          tp, 0b
8:                jal          t1, 13f
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          s3, 7b
12:               jal          ra, 28f
13:               jal          ra, 24f
14:               jal          ra, 23f
15:               jal          ra, 30f
16:               jal          a2, 6b
17:               jal          ra, 14b
18:               jal          t1, 11b
19:               jal          t1, 9b
20:               jal          ra, 5b
21:               jal          t1, 10b
22:               jal          s4, 1b
23:               jal          t1, 19b
24:               jal          ra, 27f
25:               jal          ra, 17b
26:               jal          t4, 2b
27:               jal          s11, 16b
28:               jal          s7, 4b
29:               jal          t1, 22b
30:               srli         s5, s9, 5
                  sra          s4, s3, t3
                  bge          t1, sp, 403f
                  slt          ra, s9, sp
                  bltu         s1, tp, 404f
397:              bge          s5, s3, 410f
                  lui          s3, 284724
399:              nop
                  sll          s0, sp, a3
                  add          s1, s11, s11
                  sub          gp, s0, a6
403:              sltiu        s8, a5, 1051
404:              blt          s1, s11, 422f
                  slli         s0, s10, 20
                  slti         ra, t4, 275
                  bltu         s0, t2, 416f
                  nop
                  xor          a6, zero, s10
410:              auipc        gp, 235573
                  bne          t0, a2, 423f
                  xor          s1, s11, a2
                  ori          s8, a2, -1485
                  lui          ra, 326630
                  ori          s4, a5, -1633
416:              bne          s6, s8, 426f
                  slti         zero, a5, -1882
                  sub          t5, s6, s9
                  beq          a5, s9, 439f
                  xori         s6, a1, -1752
                  blt          ra, a2, 426f
422:              ori          s7, t2, 1776
423:              addi         s3, gp, 566
                  bltu         s5, ra, 430f
                  srai         t2, s6, 3
426:              bne          a2, t0, 438f
                  slti         a4, s11, 1746
                  sltiu        s10, t4, -1050
                  srl          s6, sp, a0
430:              auipc        a3, 912494
                  slli         t0, s5, 0
                  or           t2, a3, s5
                  bgeu         t4, s5, 451f
                  sub          s1, s11, t2
                  andi         s4, zero, -1323
                  bgeu         a7, s1, 443f
                  andi         t2, s5, -1021
438:              slti         a5, s10, 1086
439:              sra          t1, s0, a6
                  and          a1, gp, t5
                  andi         a1, s6, 821
                  slt          s11, ra, t0
443:              slli         a3, a6, 9
                  and          a0, s3, zero
                  slt          s0, tp, s2
                  xori         zero, a2, -556
                  sll          s9, s11, t4
                  sra          a1, a5, sp
                  lui          a4, 141646
                  lui          s9, 119945
451:              sltiu        a4, a7, 1725
                  bge          a4, t3, 461f
                  addi         s8, s6, -385
                  beq          t5, a2, 460f
                  nop
                  sltu         a1, s8, s10
                  lui          zero, 620274
                  xori         s4, t4, -1610
                  lui          a0, 503558
460:              and          s7, a3, s5
461:              andi         a1, zero, -1633
                  auipc        a0, 290609
                  bge          a7, sp, 480f
                  xor          s3, t3, a2
                  or           s11, s5, s3
                  ori          s11, s5, 667
                  srl          zero, s8, a4
                  srli         t1, t3, 5
                  bne          a6, s5, 485f
                  sra          a5, ra, sp
                  nop
                  lui          a6, 639762
                  sltiu        s8, a3, 1613
                  auipc        s4, 716769
                  ori          s7, s9, -765
                  addi         zero, s7, -1661
                  and          s9, t4, s4
                  sub          t5, a6, s10
                  bne          t5, s8, 493f
480:              slt          a1, gp, s6
                  add          s7, a4, s10
                  srai         t0, s1, 1
                  bge          s5, s0, 487f
                  slt          s10, t6, t3
485:              lui          s10, 100623
                  xor          zero, a5, t4
487:              lui          a7, 137658
                  and          a1, sp, a6
                  bgeu         a2, sp, 499f
                  nop
                  sub          s1, s0, t3
                  sltiu        t0, s3, -927
493:              sltu         s6, t4, s0
                  blt          s2, s5, 506f
                  sra          zero, s2, a5
                  auipc        a7, 339105
                  bge          zero, a2, 507f
                  sra          s7, s10, s6
499:              srl          a0, a2, s1
                  beq          t1, s4, 508f
                  slti         a5, t3, 10
                  addi         a3, a6, -1654
                  nop
                  sltiu        a7, s0, 706
                  sltiu        t5, a0, 630
506:              bltu         t3, s11, 510f
507:              ori          a4, zero, -102
508:              slli         a3, s9, 12
                  sra          s5, t3, s4
510:              sltu         a6, a3, s6
                  srl          t0, t1, s11
                  blt          t2, s5, 523f
                  ori          a4, t0, 146
                  srl          a0, a2, a5
                  slti         gp, gp, -1379
                  nop
                  xori         s3, ra, 321
                  nop
                  sub          s9, t2, a7
                  sltu         a0, t3, a7
                  sra          s10, t2, ra
                  bgeu         sp, s1, 528f
523:              nop
                  srai         a2, s10, 30
                  xori         gp, ra, -929
                  sra          t4, t1, s10
                  slli         a0, gp, 8
528:              ori          zero, s7, 106
                  bltu         a1, a1, 538f
                  ori          s9, a7, -504
                  andi         s9, a2, 939
                  bne          s9, gp, 537f
                  or           a4, s8, tp
                  auipc        a0, 597030
                  sra          t5, s0, s5
                  or           ra, s6, t1
537:              sltiu        gp, a3, -1257
538:              add          ra, t0, t1
                  slli         s3, a3, 1
                  bltu         s10, a7, 550f
                  add          a4, s7, a4
                  andi         t3, ra, -1943
                  bge          t3, s7, 549f
                  slti         a2, a0, 729
                  bge          a1, zero, 565f
                  srai         gp, t6, 5
                  lui          t4, 360441
                  lui          s9, 798186
549:              sll          a0, s11, t5
550:              slti         gp, t2, -1577
                  slli         s1, a6, 9
                  blt          s8, a3, 570f
                  srl          s3, t3, a4
                  addi         a6, tp, -746
                  slt          zero, t2, t0
                  bge          zero, a5, 563f
                  slli         a0, s2, 16
                  sll          a4, s2, a6
                  blt          s10, t4, 562f
                  srai         a1, s8, 21
                  slli         gp, s9, 3
562:              srl          s0, zero, sp
563:              bne          s9, t2, 573f
                  or           s4, s4, t5
565:              xori         s4, s1, 1811
                  sub          s3, s5, s0
                  sub          a5, a0, tp
                  auipc        s4, 605072
                  sltiu        s3, a2, -1983
570:              xori         t1, t4, 1133
                  bltu         t6, tp, 578f
                  and          t5, t3, s6
573:              srli         s5, t5, 9
                  addi         a2, a2, -569
sub_2_8:          jal          ra, 18f
0:                jal          ra, 23f
1:                jal          ra, 22f
2:                jal          t1, 20f
3:                jal          ra, 25f
4:                jal          ra, 14f
5:                jal          t1, 0b
6:                jal          ra, 3b
7:                jal          ra, 15f
8:                jal          ra, 13f
9:                jal          a6, 7b
10:               jal          ra, 27f
11:               jal          t1, 24f
12:               jal          gp, 16f
13:               jal          t1, 2b
14:               jal          ra, 19f
15:               jal          ra, 12b
16:               jal          ra, 8b
17:               jal          ra, 10b
18:               jal          s9, 11b
19:               jal          ra, 26f
20:               jal          s4, 17b
21:               jal          ra, 4b
22:               jal          t4, 21b
23:               jal          gp, 9b
24:               jal          a2, 1b
25:               jal          ra, 5b
26:               jal          s7, 6b
27:               auipc        ra, 315585
                  sra          t2, t0, s7
                  srl          s7, t5, s9
                  slt          ra, s8, gp
578:              nop
                  and          s4, t2, s7
sub_2_11:         jal          ra, 7f
0:                jal          t3, 4f
1:                jal          t0, 6f
2:                jal          a5, 3f
3:                jal          t1, 10f
4:                jal          ra, 17f
5:                jal          ra, 12f
6:                jal          ra, 2b
7:                jal          t1, 16f
8:                jal          ra, 15f
9:                jal          t1, 19f
10:               jal          gp, 5b
11:               jal          t0, 20f
12:               jal          a3, 8b
13:               jal          t1, 11b
14:               jal          gp, 18f
15:               jal          a5, 9b
16:               jal          tp, 0b
17:               jal          ra, 14b
18:               jal          ra, 1b
19:               jal          ra, 13b
20:               ori          a4, a0, 1476
                  auipc        s1, 709450
                  bgeu         a5, s2, 597f
                  srai         zero, ra, 19
                  andi         ra, t5, -1322
                  sra          s10, t4, a0
                  bge          t0, s2, 603f
                  or           s6, a6, s4
                  slt          t4, s11, s8
                  and          t0, a4, s6
                  sub          a4, ra, sp
                  ori          a2, a6, 1864
                  addi         s7, s9, 1604
                  or           a4, a3, a4
                  xori         t1, s5, 2044
                  add          gp, s4, s6
                  srai         a2, s10, 27
                  sll          s3, s2, s9
597:              bge          a5, zero, 611f
                  xori         tp, s0, -1433
                  or           ra, t6, s5
                  slti         s4, s5, -683
                  xori         s11, t5, -395
                  srli         s8, t2, 14
603:              srl          a2, a3, s8
                  addi         s3, s2, -664
                  sll          t1, a0, s3
                  and          s10, a0, tp
                  bge          s10, a5, 620f
                  slli         a6, s6, 30
                  nop
                  bne          tp, s10, 630f
611:              srl          a1, t5, sp
                  and          ra, t3, t4
                  slli         a5, s10, 26
                  auipc        a6, 227375
                  sub          a7, s8, t2
                  bge          a5, s3, 625f
                  add          s6, ra, a3
                  sltiu        s8, s10, 1653
                  nop
620:              sra          zero, s8, t5
                  xori         t2, s5, -388
                  sll          s3, a4, t5
                  sub          t2, a6, ra
                  sltiu        a6, s8, -1096
625:              ori          s4, a3, -58
                  sra          a2, zero, s0
                  nop
                  and          a1, s10, a5
                  blt          s7, t4, 645f
630:              slli         t5, t4, 27
                  ori          a1, s5, -2032
                  slli         gp, a6, 28
                  add          s7, a0, a0
                  xori         t2, t5, 360
                  bgeu         t1, t2, 652f
                  lui          s5, 452332
                  blt          a1, a6, 647f
                  addi         t0, t3, -925
                  srai         s10, ra, 21
                  bne          s5, a3, 649f
                  slti         t1, a5, 499
                  slt          ra, a4, s1
                  auipc        a4, 688401
                  sltu         t1, a4, a5
645:              srli         t1, a0, 21
                  sltu         ra, s0, t6
647:              auipc        a4, 152770
                  srai         t2, s3, 6
649:              sra          a0, ra, s6
                  sltiu        t0, a4, 1047
                  addi         a0, s2, 1695
652:              and          gp, a6, a7
                  sub          zero, a6, s11
                  xori         t3, s0, 263
                  or           s7, t4, s11
                  srli         s10, ra, 31
                  lui          t2, 279451
                  srli         s0, s10, 16
                  slli         s6, t3, 10
                  xori         s6, s8, -1735
                  blt          a3, t2, 669f
                  andi         s0, a0, -408
                  xori         a6, t4, 1674
                  ori          a5, a7, 1104
                  sll          a5, ra, t0
                  and          zero, s1, a2
                  lui          s11, 695775
                  beq          a4, t3, 673f
669:              sll          a2, t1, t2
                  slli         t2, t0, 26
                  sra          a1, a6, a1
                  ori          s7, a3, -1877
673:              srli         a6, s7, 27
                  auipc        s11, 160086
                  bgeu         t1, s0, 689f
                  and          s0, s2, s0
                  bge          a2, s7, 689f
                  slti         t2, gp, -1735
                  sra          s9, s8, gp
                  srl          s11, s3, s0
                  sra          ra, a0, zero
                  bltu         s7, a5, 696f
                  blt          sp, a0, 693f
                  bne          a7, s8, 696f
                  or           s4, sp, s8
                  slt          s5, t2, a7
                  sub          t2, sp, t5
                  srli         a0, a7, 7
689:              beq          t2, s3, 698f
                  sra          a3, t2, a4
                  slti         a6, t2, 190
                  lui          ra, 40960
693:              sltiu        s9, a3, -1898
                  auipc        t2, 618621
                  andi         a1, gp, 967
696:              slt          t3, zero, t3
                  lui          s10, 592882
698:              addi         s6, t4, -1408
                  blt          s6, a1, 705f
                  or           ra, s7, t3
                  slli         ra, ra, 6
                  blt          a5, zero, 710f
                  xor          s10, s1, a6
                  sltiu        a6, t2, 265
705:              sub          tp, t0, a6
                  sltiu        s8, s0, -1287
                  bne          s7, tp, 727f
                  andi         a5, a5, -1159
                  bgeu         a2, gp, 727f
710:              sll          t1, s10, gp
                  lui          t1, 434458
                  ori          a0, t2, -287
                  blt          a4, a5, 719f
                  srai         s10, gp, 3
                  slti         ra, s11, -1076
                  auipc        tp, 420867
                  add          tp, t6, a1
                  blt          a6, t2, 734f
719:              srli         a2, s10, 29
                  add          t0, s11, s7
                  sltiu        s11, s7, -461
sub_2_1:          jal          ra, 11f
0:                jal          ra, 1f
1:                jal          ra, 5f
2:                jal          ra, 3f
3:                jal          t1, 4f
4:                jal          ra, 7f
5:                jal          ra, 9f
6:                jal          ra, 13f
7:                jal          a3, 12f
8:                jal          ra, 14f
9:                jal          t1, 10f
10:               jal          s3, 2b
11:               jal          ra, 6b
12:               jal          s10, 8b
13:               jal          ra, 0b
14:               nop
                  lui          t1, 26913
                  nop
                  beq          t5, s10, 738f
                  ori          s6, s9, 1276
                  auipc        a5, 471295
727:              bge          s8, t6, 737f
                  nop
                  sltu         a5, zero, s7
                  bltu         s6, s5, 741f
                  srai         s8, s4, 18
                  bge          zero, tp, 745f
                  xor          a4, ra, s0
734:              bne          a4, t4, 741f
                  auipc        s1, 866494
                  blt          t1, t3, 745f
737:              lui          t5, 872498
738:              bge          s0, s0, 745f
                  slti         a6, a1, 1816
                  srl          s4, t2, a4
741:              srl          s0, s2, s11
                  blt          s4, a5, 759f
                  and          a5, t5, t3
                  xor          t4, a0, s6
745:              srai         s6, s7, 7
                  auipc        tp, 760954
                  srli         a0, s5, 8
                  or           s10, sp, s0
                  bltu         t5, s5, 754f
                  bgeu         tp, a6, 758f
                  blt          s1, a5, 756f
                  srl          a4, s0, t5
                  bne          s11, s10, 765f
754:              add          s0, ra, a0
                  srai         t3, s6, 26
756:              sltiu        a2, t6, -366
                  nop
758:              auipc        t2, 710441
759:              sub          s10, a2, t3
                  beq          t1, s9, 776f
                  auipc        s7, 689420
                  xori         a2, s7, -585
                  sub          s3, s7, a6
                  bne          gp, s2, 768f
765:              sll          a2, t3, s8
                  or           t0, a7, s8
                  add          s5, s0, sp
768:              xori         t2, s8, 1565
                  sltiu        a4, s2, 1396
                  slt          t5, s2, t1
                  beq          s2, s11, 789f
                  blt          gp, a1, 782f
                  bgeu         s3, a3, 783f
                  bne          t3, a0, 777f
                  andi         s8, a3, 910
776:              sub          s10, t6, a0
777:              bne          s1, a4, 786f
                  slt          s5, s1, s10
                  xori         s5, s1, -949
                  auipc        ra, 199775
                  xor          a0, s8, a7
782:              sll          s3, a3, s2
783:              bne          gp, a0, 803f
                  srl          a5, t5, s11
                  slt          ra, sp, tp
786:              nop
                  srl          s3, gp, a3
                  bgeu         s7, s6, 802f
789:              addi         t1, a6, 351
                  slti         gp, t2, 268
                  srai         zero, tp, 14
                  blt          s9, a2, 799f
                  sub          s7, s3, a7
                  xor          s6, s7, s3
                  andi         t0, s11, 499
                  srli         s4, t4, 25
                  sltu         ra, a0, a7
                  slt          a3, s1, a0
799:              beq          zero, a2, 810f
                  or           s11, gp, s9
                  beq          s3, t4, 807f
802:              or           s10, s8, t0
803:              srli         t0, s5, 16
                  lui          ra, 85607
                  blt          a1, tp, 811f
                  or           a5, t5, t5
807:              or           gp, t3, tp
                  nop
                  bge          a1, s6, 821f
810:              sll          t2, tp, a2
811:              xor          s8, sp, t0
                  bltu         a0, t0, 820f
                  slli         t0, s3, 11
                  slti         s9, a2, 1884
                  sub          zero, s3, t2
                  lui          t1, 831925
                  or           s5, s1, t1
                  add          s4, a6, ra
                  sltu         a5, sp, t5
820:              xor          s4, s2, t4
821:              sltu         s11, s9, s5
                  blt          s7, s6, 831f
                  add          s10, t5, t4
                  or           t3, a3, t1
                  auipc        t3, 375544
                  srl          s5, s2, s9
                  slti         s1, t5, 865
                  srli         s11, a3, 16
                  sub          a0, s6, a7
                  or           s0, s2, s0
831:              bge          a6, a5, 849f
                  xor          a6, s0, s6
                  slli         s7, t5, 4
                  bltu         ra, s3, 839f
                  sll          a0, t5, t2
                  blt          s1, a0, 850f
                  bltu         s4, zero, 844f
                  slt          s8, t1, s10
839:              xori         tp, s1, -1939
                  andi         s8, t0, 1424
                  xor          a5, a1, tp
                  blt          a6, t0, 852f
                  sll          s1, s0, s3
844:              slli         a0, a1, 1
                  nop
                  srl          s4, a3, gp
                  slti         t2, s6, -1521
                  auipc        s11, 1047791
849:              slti         s8, s6, 173
850:              xor          s5, s11, s9
                  bltu         a0, a0, 860f
852:              srl          ra, t0, s2
                  lui          a6, 332280
                  sltiu        t0, a7, -1375
                  blt          a1, ra, 865f
                  beq          t3, t6, 865f
                  sra          a5, a0, a3
                  auipc        t4, 768831
                  addi         t1, t6, -780
860:              ori          a3, gp, 2029
                  or           ra, s1, s4
                  addi         s4, zero, 694
                  lui          s10, 203119
                  sltiu        t2, s1, -1922
865:              beq          tp, s0, 875f
                  addi         s4, t6, 945
                  slti         a6, s1, -416
                  slti         a4, tp, 1100
                  bltu         t5, s6, 879f
                  auipc        s11, 652602
                  blt          s7, tp, 891f
                  srl          s1, a0, s5
                  slt          a4, a4, s1
                  sltiu        a3, s11, 1236
875:              sltiu        a6, a5, -421
                  sra          s8, sp, gp
                  srai         t1, a0, 4
                  sub          t5, s11, s10
879:              and          ra, gp, s1
                  blt          zero, s11, 892f
                  sra          s9, zero, s9
                  srl          t4, a4, t6
                  beq          a7, t2, 886f
                  slt          t4, a5, a1
                  bge          t4, gp, 901f
886:              blt          a3, s9, 890f
                  slti         s4, s2, -1917
                  sub          gp, s11, s2
                  and          a2, a5, t2
890:              or           t0, s10, s5
891:              auipc        s9, 735607
892:              bne          s9, ra, 905f
                  xor          s8, t2, tp
                  lui          s11, 780754
                  and          tp, t5, a0
                  sltu         s9, s6, a0
                  auipc        s3, 544401
                  bgeu         s0, s7, 914f
                  srli         a7, t1, 25
                  sll          a1, s6, s1
901:              sll          t4, s8, s8
                  sll          t2, s9, tp
                  and          s7, s11, a7
                  slt          zero, sp, a1
905:              slti         t3, s11, -940
                  srai         ra, s1, 13
                  bltu         t1, t0, 915f
                  blt          s11, a3, 928f
                  xor          t4, s9, s5
                  nop
                  srai         t0, s11, 29
                  srl          t0, s11, tp
                  xori         s4, s10, -1247
914:              sub          t4, s8, t5
915:              sll          t1, s2, s8
                  sltu         s10, a2, t6
                  bgeu         s6, s4, 934f
                  lui          a0, 28500
                  sra          a7, ra, s9
                  andi         t5, s0, 1390
                  nop
                  xor          t1, a2, s1
                  auipc        a7, 642367
                  add          s10, s5, a0
                  sll          s9, s4, s10
                  slli         s8, ra, 3
                  or           ra, a2, a2
928:              sll          t2, a5, a0
                  addi         s8, t2, -59
                  sltiu        zero, s4, 1883
                  bltu         t6, gp, 949f
                  xori         t1, t3, 1026
                  andi         t2, t5, 1474
934:              bltu         s2, t3, 939f
                  slt          s5, s9, s3
                  slti         ra, sp, -1270
                  xor          s1, t2, t1
                  or           gp, a5, zero
939:              bge          a2, gp, 948f
                  nop
                  xor          a3, s8, s0
                  and          a4, zero, t2
                  bne          s3, t0, 949f
                  slli         t5, s8, 14
                  or           s4, t2, s9
                  andi         s8, t1, 1794
                  xor          tp, s0, t6
948:              addi         a5, s7, 1475
949:              bltu         ra, a0, 957f
                  sll          s4, s8, s3
                  slli         s7, a3, 12
                  ori          a2, s2, 1431
                  auipc        a4, 47825
                  auipc        a0, 238556
                  slti         a3, s5, -898
                  xor          t2, a2, a0
957:              xori         s7, tp, -589
                  srl          s7, a1, ra
                  ori          s9, a5, -1131
                  sll          t0, t4, s5
                  xor          t3, s4, s0
                  sub          t2, s4, t5
                  nop
                  beq          s2, t0, 972f
                  sltu         t4, t3, tp
                  sll          a0, s2, s3
                  xori         a1, t1, 1394
                  add          s9, s1, a0
                  lui          s6, 692524
                  bltu         a7, s1, 973f
                  xori         a6, tp, 321
972:              slli         s7, t6, 29
973:              srl          tp, a7, t1
                  srli         t2, a5, 6
                  or           t1, tp, a2
                  srai         s4, s6, 29
                  srli         a7, a2, 23
                  addi         a2, a3, -1999
                  lui          a3, 551456
                  sub          s6, t3, t0
                  addi         t0, ra, 1090
                  sltiu        a5, a5, -1265
                  srli         s9, s4, 26
                  srli         s10, s0, 17
                  add          gp, gp, a6
                  sub          s9, a1, a6
                  xor          s9, s11, s10
                  lui          s11, 352653
                  bgeu         t4, a3, 999f
                  beq          t4, t2, 997f
                  sub          s0, a1, a1
                  lui          a7, 238258
                  lui          a1, 880969
                  xori         a4, a6, -23
                  sll          t0, a2, t4
                  andi         t5, s1, -236
997:              bgeu         gp, a1, 1013f
                  auipc        a3, 262590
999:              ori          a6, s6, 1672
                  or           s7, a1, ra
                  nop
                  ori          s8, t2, -77
                  andi         a6, s10, 1808
                  sub          s6, a1, a1
                  addi         a5, a0, 1985
                  auipc        ra, 548839
                  slt          tp, s0, t2
                  bne          t3, a3, 1019f
                  slli         tp, t3, 14
                  beq          a2, t3, 1020f
                  or           t4, ra, tp
                  xor          tp, s2, t0
1013:             add          s11, t5, t2
                  sltu         s6, t3, s9
                  lui          s8, 868790
                  bltu         s5, a6, 1029f
                  add          t1, s1, s10
                  srl          s11, s6, t4
1019:             nop
1020:             slt          t1, s4, s1
                  and          a7, s9, a2
                  sltiu        t3, sp, -60
                  add          zero, s10, s5
                  bne          t3, s0, 1036f
                  bge          gp, a5, 1039f
                  xori         t3, gp, 1820
                  xor          t4, s1, s6
                  andi         a5, s1, -414
1029:             slt          s6, a7, s2
                  bgeu         a2, ra, 1042f
                  beq          s6, s4, 1041f
                  slt          t0, s3, s5
                  lui          a4, 404990
                  srai         t4, a0, 19
                  ori          s5, s5, -1341
1036:             auipc        t4, 998387
                  bgeu         a4, a7, 1057f
                  srl          s7, t1, zero
1039:             or           t2, s11, a3
                  sltiu        t5, t3, -1000
1041:             xor          t3, a0, s4
1042:             slli         s3, s9, 5
                  addi         tp, s0, 1041
                  ori          t3, s9, -751
                  slt          t0, s5, t1
                  bne          s3, s8, 1055f
                  blt          sp, a3, 1067f
                  xor          t5, s1, t5
                  srai         gp, a6, 11
                  ori          s9, s2, 1019
                  slti         a4, s9, 1732
                  srli         t4, s11, 24
                  sra          zero, s7, a7
                  ori          t1, s4, 1189
1055:             srl          zero, a4, s10
                  sll          s1, a4, s4
1057:             sltu         t1, sp, s10
                  xori         s8, a3, 1157
                  srli         zero, s0, 6
                  addi         s1, s0, 1705
                  slti         a3, t3, 217
                  addi         s10, s2, 177
                  sltu         s10, s9, s6
                  or           a4, a7, s0
                  sra          s11, s1, t6
                  slti         t4, s0, -1947
1067:             sltiu        t0, t5, -2000
                  nop
                  bltu         s4, sp, 1074f
                  slt          zero, s1, t3
                  auipc        zero, 188256
                  and          s5, a7, t5
                  auipc        s1, 702257
1074:             blt          a0, s4, 1090f
                  or           s5, s10, s6
                  add          s3, a1, t6
                  srl          s10, t3, t6
                  ori          s1, a5, 1208
                  slli         a3, t1, 15
                  and          s11, zero, a5
                  add          a7, s8, a7
                  srai         s5, a7, 11
                  slli         a1, a5, 19
                  xori         s0, s0, 1496
                  or           gp, a6, s4
                  addi         s1, a4, -1436
                  slli         s9, a0, 22
                  add          t5, a1, s3
                  bge          s2, s3, 1095f
1090:             sub          t5, a7, gp
                  and          a5, s9, t1
                  nop
                  sub          zero, t2, a6
                  nop
1095:             bgeu         s8, a3, 1109f
                  andi         t0, s3, 2016
                  srli         s6, zero, 31
                  sltiu        t4, a5, 141
                  sub          gp, s8, s9
                  srai         t0, s10, 12
                  bne          s10, s8, 1119f
                  ori          t2, sp, 1180
                  add          a6, t2, tp
                  srli         t3, a4, 0
                  lui          a6, 618330
                  srl          zero, a3, a6
                  andi         ra, s8, -1533
                  ori          s4, a5, -290
1109:             bge          a0, a6, 1114f
                  srli         t0, s7, 16
                  slti         t3, zero, -487
                  lui          s0, 1030133
                  beq          s6, gp, 1120f
1114:             srl          s10, s3, t0
                  bgeu         a7, s8, 1133f
                  auipc        t1, 392964
                  bgeu         s3, s0, 1121f
                  bne          t6, s7, 1128f
1119:             or           s10, t0, s6
1120:             ori          a7, a7, -1797
1121:             ori          s3, gp, 343
                  addi         s4, a0, -318
                  sub          s11, t5, a4
                  sra          zero, ra, a4
                  nop
                  auipc        s8, 282258
                  bne          s0, t1, 1144f
1128:             bltu         sp, a4, 1137f
                  lui          t3, 526079
                  xor          t1, tp, sp
                  ori          a0, s8, 1726
                  sra          t1, a7, t0
1133:             slti         t1, t5, 1526
                  sltu         zero, s8, tp
                  slt          a1, t0, a2
                  srl          t3, s8, gp
1137:             sub          t2, a3, s3
                  slti         gp, a7, -208
                  blt          t5, a3, 1149f
sub_2_3:          jal          ra, 11f
0:                jal          ra, 2f
1:                jal          t0, 15f
2:                jal          ra, 8f
3:                jal          ra, 17f
4:                jal          t1, 0b
5:                jal          t2, 10f
6:                jal          t1, 7f
7:                jal          ra, 5b
8:                jal          ra, 20f
9:                jal          t0, 3b
10:               jal          ra, 1b
11:               jal          t1, 6b
12:               jal          a5, 16f
13:               jal          ra, 21f
14:               jal          ra, 9b
15:               jal          s3, 19f
16:               jal          ra, 13b
17:               jal          ra, 12b
18:               jal          ra, 14b
19:               jal          t1, 4b
20:               jal          ra, 18b
21:               sub          s3, s9, s10
                  sub          s10, a2, a7
                  xor          t3, t1, t0
                  nop
                  sltiu        gp, s5, -1396
1144:             or           s8, a4, s11
                  sltu         a1, a1, a0
                  beq          s1, a6, 1160f
                  slt          s7, a3, sp
                  bltu         t6, gp, 1166f
1149:             bgeu         a7, gp, 1165f
                  sll          s4, t1, a6
                  ori          s5, t2, -796
                  srai         s0, t5, 2
                  sltu         zero, s0, a4
                  and          a2, t1, t3
                  bgeu         s0, sp, 1165f
                  bge          t4, s1, 1159f
                  ori          s8, s4, -22
                  sra          s4, s2, t6
1159:             lui          s4, 661224
1160:             nop
                  xor          t1, gp, t5
                  lui          s11, 946289
                  nop
                  or           s5, a5, a0
1165:             bge          s5, s8, 1177f
1166:             bne          s9, s5, 1182f
                  sltiu        a5, zero, -346
                  blt          t5, t2, 1175f
                  srli         s4, t3, 20
                  auipc        zero, 840188
                  sltu         a4, a4, s0
                  ori          a2, s4, -671
                  la           s1, sub_4
                  slt          a0, s1, s11
                  or           ra, t2, s5
                  addi         zero, s11, -1197
                  lui          ra, 1002029
                  addi         s1, s1, 466
                  auipc        s8, 979358
sub_2_j5:         jalr         ra, s1, -466 #jump sub_2 -> sub_4
                  srl          a4, tp, s11
                  beq          gp, zero, 1179f
                  bne          t3, a4, 1186f
1175:             sll          s9, a2, t0
                  sra          a6, ra, t3
1177:             andi         s9, tp, -8
                  sltu         a5, tp, a1
1179:             sub          t5, s3, s8
                  andi         a7, s1, 892
                  nop
1182:             sll          s11, tp, zero
                  lui          s1, 3709
                  srl          a0, s6, t1
                  slti         a7, tp, -924
1186:             andi         s8, a6, -1386
                  auipc        a7, 808015
                  srl          s1, s5, t3
                  srl          t2, a1, a3
                  sub          ra, a6, t0
                  sltiu        a7, s8, -1931
                  nop
                  sra          s5, a5, s11
                  addi         a2, a3, 964
                  xori         t5, gp, -1916
                  beq          a6, a4, 1206f
                  addi         s11, a5, 1530
                  ori          s9, t2, -378
                  bgeu         gp, a3, 1205f
                  blt          t4, s4, 1209f
                  addi         s0, t4, -1810
                  srli         s11, s1, 1
                  xori         t3, t4, -645
                  blt          a6, sp, 1212f
1205:             sltu         a3, s8, s2
1206:             nop
                  sra          a5, s9, zero
                  andi         s1, t0, -631
1209:             or           s9, s9, t5
                  slli         s3, s8, 12
                  add          a4, tp, gp
1212:             sub          s6, t3, s2
                  auipc        a4, 507876
                  slt          t0, ra, t1
                  auipc        s8, 545426
                  xor          t4, tp, s5
                  beq          t4, s6, 1223f
                  srl          t3, a7, a0
                  bne          s10, t1, 1223f
                  beq          s7, zero, 1223f
                  slt          s4, a3, s3
                  lui          s6, 625752
1223:             nop
                  or           a0, t4, t2
                  or           t0, s0, s9
                  lw           ra, 4(s2)
                  xor          a1, a0, ra
                  slli         s7, t5, 4
                  or           s1, s5, s4
                  slti         t0, tp, 2004
                  slt          s0, t0, s4
                  addi         s2, s2, 28
                  nop
                  xori         gp, s5, 1984
1792:             addi x10, x1, 1
1792:             jalr x10, x10, 0
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
.align           2
mtvec_handler:    
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x31, x18, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x17, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x17, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x17, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x17, x6, ecall_handler
                  li x6, 0x1
                  beq x17, x6, instr_fault_handler
                  li x6, 0x5
                  beq x17, x6, load_fault_handler
                  li x6, 0x7
                  beq x17, x6, store_fault_handler
                  li x6, 0xc
                  beq x17, x6, pt_fault_handler
                  li x6, 0xd
                  beq x17, x6, pt_fault_handler
                  li x6, 0xf
                  beq x17, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x18, x31, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
