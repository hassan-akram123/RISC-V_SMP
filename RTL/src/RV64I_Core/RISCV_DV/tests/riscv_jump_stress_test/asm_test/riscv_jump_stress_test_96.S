.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0xabce5e0e
                  li x1, 0x0
                  li x3, 0xfc9df3b4
                  li x4, 0x87a27046
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0x3732dae8
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x6
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x7
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xf
                  li x18, 0x8
                  li x19, 0xf97a7371
                  li x20, 0x0
                  li x21, 0xfc984e1b
                  li x22, 0x6f079ed
                  li x23, 0xe0ce8dab
                  li x24, 0x0
                  li x25, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0xf22f49ae
                  li x30, 0x0
                  li x31, 0x7d6c0736
                  la x26, user_stack_end
main:             ori          a6, zero, -476
                  la           t6, sub_1
                  addi         t6, t6, -786
                  slli         s3, a5, 14
                  sll          tp, sp, zero
                  auipc        s6, 92658
                  xori         gp, a5, 1905
                  xori         a3, a0, -1764
main_j2:          jalr         t1, t6, 787 #jump main -> sub_1
main_0:           jal          t1, 14f
0:                jal          ra, 1f
1:                jal          ra, 9f
2:                jal          s1, 16f
3:                jal          a5, 19f
4:                jal          ra, 15f
5:                jal          ra, 0b
6:                jal          ra, 10f
7:                jal          t1, 3b
8:                jal          s1, 2b
9:                jal          a7, 4b
10:               jal          ra, 13f
11:               jal          ra, 12f
12:               jal          a2, 17f
13:               jal          gp, 11b
14:               jal          t1, 18f
15:               jal          ra, 7b
16:               jal          ra, 5b
17:               jal          t1, 20f
18:               jal          t0, 8b
19:               jal          tp, 6b
20:               ori          a6, t2, -972
main_1:           jal          t1, 4f
0:                jal          t0, 22f
1:                jal          s7, 2f
2:                jal          ra, 24f
3:                jal          ra, 20f
4:                jal          ra, 3b
5:                jal          ra, 15f
6:                jal          ra, 7f
7:                jal          t1, 26f
8:                jal          ra, 0b
9:                jal          ra, 17f
10:               jal          gp, 19f
11:               jal          t1, 6b
12:               jal          ra, 18f
13:               jal          a5, 14f
14:               jal          ra, 23f
15:               jal          ra, 27f
16:               jal          t1, 21f
17:               jal          ra, 10b
18:               jal          t1, 5b
19:               jal          ra, 8b
20:               jal          t1, 25f
21:               jal          t1, 11b
22:               jal          tp, 12b
23:               jal          ra, 16b
24:               jal          t6, 9b
25:               jal          s2, 13b
26:               jal          ra, 1b
27:               andi         s7, sp, 2020
main_5:           jal          t1, 8f
0:                jal          s11, 2f
1:                jal          a7, 20f
2:                jal          ra, 5f
3:                jal          s4, 10f
4:                jal          ra, 3b
5:                jal          ra, 4b
6:                jal          ra, 12f
7:                jal          t1, 1b
8:                jal          a0, 17f
9:                jal          s6, 15f
10:               jal          t1, 6b
11:               jal          ra, 16f
12:               jal          ra, 21f
13:               jal          ra, 7b
14:               jal          t1, 13b
15:               jal          ra, 14b
16:               jal          ra, 0b
17:               jal          ra, 18f
18:               jal          s6, 19f
19:               jal          ra, 9b
20:               jal          ra, 11b
21:               sll          t3, s8, a0
main_3:           jal          t1, 24f
0:                jal          t1, 30f
1:                jal          ra, 13f
2:                jal          ra, 0b
3:                jal          a7, 7f
4:                jal          a4, 26f
5:                jal          ra, 20f
6:                jal          ra, 17f
7:                jal          a6, 1b
8:                jal          t1, 10f
9:                jal          s3, 19f
10:               jal          t1, 18f
11:               jal          tp, 14f
12:               jal          t1, 9b
13:               jal          t1, 12b
14:               jal          ra, 15f
15:               jal          t1, 28f
16:               jal          t0, 11b
17:               jal          t0, 21f
18:               jal          ra, 27f
19:               jal          t1, 4b
20:               jal          gp, 2b
21:               jal          t1, 3b
22:               jal          ra, 25f
23:               jal          ra, 5b
24:               jal          t1, 22b
25:               jal          ra, 29f
26:               jal          t1, 16b
27:               jal          ra, 23b
28:               jal          t2, 8b
29:               jal          t1, 6b
30:               srai         a5, t3, 12
main_4:           jal          t1, 6f
0:                jal          ra, 8f
1:                jal          ra, 14f
2:                jal          ra, 0b
3:                jal          t1, 11f
4:                jal          ra, 7f
5:                jal          t1, 9f
6:                jal          t1, 4b
7:                jal          ra, 10f
8:                jal          ra, 1b
9:                jal          t1, 3b
10:               jal          ra, 5b
11:               jal          ra, 13f
12:               jal          t6, 2b
13:               jal          t1, 12b
14:               xor          a1, a2, s6
main_6:           jal          t1, 7f
0:                jal          a0, 15f
1:                jal          t1, 6f
2:                jal          ra, 3f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          ra, 9f
6:                jal          t1, 5b
7:                jal          a1, 8f
8:                jal          ra, 11f
9:                jal          s0, 17f
10:               jal          s0, 16f
11:               jal          ra, 13f
12:               jal          s9, 1b
13:               jal          t1, 10b
14:               jal          ra, 2b
15:               jal          ra, 4b
16:               jal          ra, 14b
17:               sltiu        t3, a2, 1270
                  slli         s0, s10, 31
                  sub          t0, zero, a2
                  beq          t4, s6, 8f
                  bge          s1, a6, 20f
                  nop
                  andi         a7, s8, 1998
                  xor          gp, t4, s10
                  lui          s5, 590070
8:                sltu         a6, t4, s4
                  srai         t3, ra, 19
                  blt          s11, t2, 11f
11:               bgeu         a1, a0, 27f
                  xor          a6, s10, t6
                  sll          a4, a6, s7
                  auipc        a7, 816845
                  sltiu        s3, s4, -1152
                  xori         s11, t3, -1804
                  auipc        s2, 354243
                  xor          s7, s8, sp
                  srai         a1, a0, 1
20:               bltu         t3, s3, 25f
                  blt          t2, a4, 36f
                  auipc        s3, 1025786
                  and          tp, t3, ra
                  sra          gp, a0, a4
25:               srl          s0, a5, a4
                  sub          tp, a6, a3
27:               auipc        t6, 305210
                  beq          s2, s7, 39f
                  sub          a0, t0, a6
                  sub          a7, s10, s0
                  nop
                  slli         a7, ra, 10
                  sltiu        t5, a6, -814
                  bgeu         a2, s10, 40f
                  xori         s1, s2, 253
36:               bge          a7, gp, 48f
                  xor          ra, s9, t5
                  addi         ra, a6, 1362
39:               srl          s8, a2, s5
40:               sub          t2, s5, gp
                  or           tp, s5, s2
                  blt          s9, s4, 55f
                  sltu         zero, a7, s1
                  addi         zero, t6, 1044
                  bge          a3, s3, 48f
                  bgeu         ra, a4, 55f
                  or           t3, sp, t2
48:               bltu         s8, a1, 68f
                  bgeu         s1, s1, 57f
                  sra          a1, a2, s8
                  andi         t1, s7, 89
                  sub          a7, t4, t0
                  sll          a1, s10, s0
                  andi         t0, gp, -57
55:               auipc        s4, 911107
                  bge          s7, s10, 65f
57:               lui          s8, 272260
                  sra          s11, a3, s5
                  sltu         t1, a0, a7
                  xori         s7, t6, -170
                  ori          s11, t0, -666
                  bgeu         s4, s2, 81f
                  srai         tp, a6, 3
                  slt          a3, ra, s0
65:               sltiu        a4, s2, -1798
                  slli         s5, a4, 11
                  andi         zero, t6, 1588
68:               blt          s1, a4, 77f
                  auipc        t6, 679895
                  bne          zero, tp, 81f
                  sra          a1, a2, tp
                  add          s3, t6, s3
                  bne          s10, s0, 74f
74:               sltiu        s2, s7, -1385
                  sll          s7, a6, s9
                  xor          gp, a1, s2
77:               sra          t5, a4, s4
                  slt          s1, t5, t6
                  add          s3, s3, s5
                  srl          s11, t5, s8
81:               sub          s4, gp, s5
                  sra          s9, t6, s10
                  slti         zero, sp, -1052
                  add          gp, s3, s0
                  blt          sp, a4, 86f
86:               srl          gp, s10, zero
                  sra          s4, s8, a7
                  sll          a6, s8, zero
                  or           s3, a1, t1
                  srli         s6, a1, 5
                  auipc        t6, 930402
                  bne          s8, s9, 93f
93:               sub          a4, s10, s8
main_2:           jal          t1, 28f
0:                jal          t5, 14f
1:                jal          t1, 16f
2:                jal          t1, 23f
3:                jal          ra, 25f
4:                jal          t0, 26f
5:                jal          ra, 17f
6:                jal          ra, 8f
7:                jal          t1, 13f
8:                jal          ra, 12f
9:                jal          t1, 20f
10:               jal          ra, 2b
11:               jal          ra, 21f
12:               jal          t1, 22f
13:               jal          ra, 15f
14:               jal          ra, 24f
15:               jal          ra, 27f
16:               jal          ra, 5b
17:               jal          tp, 0b
18:               jal          ra, 11b
19:               jal          a1, 3b
20:               jal          ra, 29f
21:               jal          t1, 7b
22:               jal          t1, 4b
23:               jal          ra, 18b
24:               jal          t1, 19b
25:               jal          ra, 9b
26:               jal          t1, 1b
27:               jal          t1, 6b
28:               jal          ra, 10b
29:               xori         s3, a0, 917
                  srli         a1, s9, 22
                  addi         a0, s3, -1306
                  bltu         s2, t1, 103f
                  or           a7, s10, t3
                  xori         t0, s8, -52
                  lui          a5, 737942
                  nop
                  sltiu        s3, sp, -526
                  ori          a5, s5, 144
103:              slli         t6, s0, 3
                  srai         s0, gp, 11
                  slt          a3, s6, s1
                  andi         s4, sp, -1369
                  bge          s6, t6, 126f
                  sra          s6, a7, s7
                  blt          s3, s8, 112f
                  addi         gp, s1, 1150
                  srai         a3, t2, 8
112:              srai         s1, s9, 3
                  beq          a7, s0, 117f
                  and          a4, t1, s2
                  or           a0, a1, t0
                  sltiu        s4, t5, 189
117:              auipc        s8, 733285
                  andi         t2, t3, 934
                  blt          a1, a5, 128f
                  bltu         t1, tp, 125f
                  sltu         s9, ra, t5
                  sra          a0, s3, a7
                  bge          t0, s10, 128f
                  bltu         zero, a2, 126f
125:              addi         a1, s3, 1298
126:              srl          ra, a2, s11
                  slti         s5, s5, 794
128:              srai         a1, ra, 7
                  add          s0, gp, s3
                  blt          s10, t2, 145f
                  ori          a0, a5, 891
                  nop
                  and          s0, s0, sp
                  or           a0, s9, gp
                  sltu         s4, s8, a6
                  blt          a4, a4, 145f
                  andi         gp, sp, 1262
                  sra          s9, s0, t6
                  bge          s11, gp, 140f
140:              srli         a3, s2, 17
                  blt          s7, s1, 144f
                  srai         ra, s4, 10
                  sub          t3, s10, a1
144:              srl          a4, s6, t2
145:              bltu         s0, tp, 146f
146:              slt          s7, a2, s5
                  sltu         t0, tp, a4
                  addi         s8, a2, 1532
                  bgeu         a1, a7, 154f
                  slt          a2, gp, ra
                  ori          s3, s3, 1070
                  sltiu        a5, a0, -1269
                  lui          t0, 281381
154:              bge          sp, a1, 159f
                  ori          s2, s11, -1082
                  nop
                  auipc        s6, 550775
                  add          a6, tp, a7
159:              xor          s5, s4, t2
                  nop
                  bge          s9, a7, 168f
                  sltu         tp, s3, ra
                  blt          t4, s11, 175f
                  or           a6, s9, t5
                  srl          a2, s11, s7
                  bgeu         zero, s8, 167f
167:              srl          s9, t5, s1
168:              sra          ra, s10, s7
                  bge          t0, s11, 178f
                  xori         t3, s1, -1689
                  addi         a1, t5, 300
                  or           s0, s9, a7
                  sub          zero, a3, t5
                  slti         s8, a4, -338
175:              sltu         s4, s2, sp
                  slt          t1, s1, a4
                  sltiu        s7, tp, 1742
178:              add          s9, t1, s5
                  xor          tp, a2, s7
                  nop
                  nop
                  and          a1, s5, a4
                  auipc        a3, 790562
                  slli         s8, t2, 7
                  nop
                  sltiu        a0, t4, -1729
                  bge          t3, s11, 202f
                  slt          s0, t2, t4
                  xor          s8, a5, a5
                  slli         s1, s7, 3
                  slti         s4, s9, -1004
                  sra          a1, s10, a4
                  la           s1, sub_2
                  addi         s1, s1, -1004
                  auipc        s7, 274760
                  add          ra, a4, s3
                  bne          s1, t0, main_j1 #branch to jump instr
                  or           zero, s2, t4
                  srl          s0, s7, s1
main_j1:          jalr         t1, s1, 1005 #jump main -> sub_2
                  beq          a7, s5, 204f
                  and          a0, sp, t0
                  blt          s3, a1, 213f
                  sltiu        a6, t3, -935
                  andi         t5, a2, 1380
                  and          t0, s2, a2
                  srli         zero, s5, 2
                  bltu         s11, a1, 201f
                  and          s0, s7, s3
                  sltiu        s9, a3, -476
201:              lui          s6, 551978
202:              sltiu        s7, s10, -1184
                  sra          s7, a7, s11
204:              srli         s8, a7, 3
                  sub          s1, a5, t2
                  sra          gp, a1, t3
                  sltu         s11, a7, s8
                  sltu         t2, t4, s3
                  srl          a7, t2, gp
                  sra          a5, t5, a6
                  srai         t1, s3, 6
                  xori         s7, s0, -553
                  la           s4, sub_1
                  addi         s4, s4, -439
                  sltiu        s6, a4, -105
                  slt          s6, t0, a2
                  nop
                  slli         t5, tp, 29
                  addi         s9, t5, -274
                  xor          zero, t3, s2
                  srl          s8, t4, a6
                  srai         s9, ra, 1
                  and          a3, s10, ra
main_j3:          jalr         t1, s4, 439 #jump main -> sub_1
                  bgeu         t0, t0, 228f
213:              xor          s5, sp, t0
                  addi         s2, s5, 148
                  or           s6, a2, t3
                  slti         tp, s0, 956
                  bge          s11, a0, 226f
                  sltiu        a7, zero, -797
                  slt          a0, s5, s2
                  xori         s2, t2, -1661
                  add          t1, a0, a1
                  slli         a1, t1, 20
                  xor          t3, t1, t0
                  blt          s11, a4, 243f
                  xor          t1, a0, t4
226:              bltu         s4, s4, 232f
                  srli         t1, ra, 29
228:              addi         s11, t3, 1282
                  auipc        ra, 280990
                  or           t3, s8, a0
                  and          t5, s7, s6
232:              blt          gp, t1, 237f
                  andi         a7, gp, 131
                  xor          s11, s3, a2
                  sub          t6, s6, s2
                  ori          s9, s1, 1183
237:              sra          a2, a3, t1
                  bltu         a4, t6, 244f
                  sub          a5, t3, s4
                  sltiu        s5, t3, -1331
                  ori          s0, t4, 1065
                  bgeu         a0, s11, 246f
243:              srl          s8, a5, a0
244:              bne          s5, s2, 253f
                  andi         s5, s1, 42
246:              add          t6, a3, t2
                  bge          t2, t2, 262f
                  and          a2, t3, a1
                  beq          a6, s3, 266f
                  andi         s0, s7, -628
                  srai         a7, t2, 24
                  srai         s2, sp, 31
253:              blt          t6, sp, 264f
                  bne          a3, a2, 265f
                  bltu         t6, t3, 263f
                  blt          tp, s0, 257f
257:              bge          a4, a3, 276f
                  bltu         s8, zero, 260f
                  beq          a2, s6, 271f
260:              addi         zero, t4, -1231
                  slli         zero, s1, 26
262:              sltiu        a4, a3, 455
263:              auipc        zero, 781832
264:              sll          a1, t1, s4
265:              xor          ra, zero, s7
266:              sll          a0, t5, tp
                  bgeu         s7, a3, 272f
                  srl          a5, s7, a5
                  slli         tp, t4, 18
                  sra          t1, t5, t1
271:              bne          gp, s8, 279f
272:              sub          s8, tp, a0
                  slt          a7, a2, a1
                  sub          s9, a5, s2
                  auipc        s5, 410365
276:              add          a6, s4, a1
                  srai         s5, a3, 4
                  xori         a0, s6, -1537
279:              beq          s0, t5, 294f
                  sra          s2, s10, s9
                  srl          t3, s0, s0
                  bne          a1, a3, 286f
                  blt          s5, t2, 284f
284:              and          s5, s5, t1
                  bgeu         s4, s6, 294f
286:              sltu         s3, s4, s3
                  nop
                  or           s6, s5, t2
                  bne          t0, s5, 291f
                  bgeu         t1, t1, 299f
291:              srai         s0, s8, 22
                  bltu         a0, s3, 297f
                  bgeu         a1, sp, 298f
294:              ori          a2, s8, -1588
                  srl          s6, s7, s1
                  slt          s6, s5, t2
297:              srli         s7, t1, 11
298:              sll          a4, t5, zero
299:              srl          s11, s1, t6
                  sltiu        ra, zero, -2030
                  nop
                  addi         a5, a7, 252
                  bgeu         s6, s4, 309f
                  addi         t1, a3, 516
                  and          s4, s9, s6
                  xori         t1, a7, -1281
                  bge          t1, s2, 316f
                  ori          a6, t1, -18
309:              add          s6, s5, s6
                  bne          t4, a4, 317f
                  blt          s3, a6, 320f
                  or           t1, t4, t6
                  xori         tp, s11, 620
                  bge          s5, a6, 333f
                  srl          t0, s10, s8
316:              slt          s5, a7, s9
317:              lui          s4, 440504
                  sll          a2, s2, s0
                  srl          s9, a3, s5
320:              bge          t2, sp, 321f
321:              beq          a7, a4, 327f
                  lui          s5, 653281
                  srai         t3, s1, 8
                  beq          t4, t3, 327f
                  or           a1, a3, t1
                  sra          s9, a7, s4
327:              add          t3, t6, t6
                  lui          a0, 529006
                  srl          s8, s0, s2
                  bge          s6, a4, 333f
                  bltu         a0, t1, 346f
                  slli         t2, a1, 8
333:              xor          t3, a0, s0
                  srli         t2, zero, 27
                  sub          t5, a2, a1
                  sra          t1, a7, s11
                  xori         t6, s6, 888
                  xor          a1, zero, a0
                  ori          gp, a7, -981
                  bge          a5, s7, 356f
                  sra          t1, a3, t5
                  sra          s3, s4, s0
                  bgeu         t1, a6, 363f
                  xor          a7, s11, zero
                  sltiu        a1, a5, 678
346:              slti         ra, a0, -1847
                  sll          a2, s1, s9
                  bgeu         a7, s9, 365f
                  lui          a0, 188108
                  lui          s1, 520859
                  xor          t1, a6, a1
                  ori          a4, sp, 201
                  blt          gp, s0, 366f
                  andi         a0, s9, -286
                  bge          s10, s11, 374f
356:              bge          t1, sp, 367f
                  srl          a5, a5, a6
                  andi         s3, t0, 1905
                  sltu         gp, s9, ra
                  sub          tp, s6, a4
                  nop
                  blt          zero, s11, 363f
363:              ori          gp, s4, 1233
                  sltu         a6, a1, s9
365:              blt          a7, sp, 366f
366:              and          s0, s11, a0
367:              srli         gp, a6, 12
                  sub          s1, s9, s7
                  addi         t1, ra, -306
                  lui          a6, 823732
                  slt          s6, s8, a1
                  sltu         t6, t6, a3
                  blt          s3, gp, 384f
374:              auipc        gp, 106852
                  slti         s11, s4, -1117
                  auipc        a2, 665877
                  auipc        a3, 398121
                  bgeu         zero, a1, 384f
                  sra          t6, t0, t1
                  slli         a7, t0, 24
                  sltu         a6, a0, a5
                  auipc        s7, 225316
                  bgeu         s9, t1, 394f
384:              xori         a0, s4, -880
                  addi         s8, gp, 217
                  srli         t0, s8, 20
                  nop
                  bne          a3, a7, 395f
                  or           s4, a0, s9
                  bne          s11, a2, 395f
                  bge          a1, t5, 395f
                  bne          s1, a6, 393f
393:              lui          tp, 971083
394:              sra          s8, a3, s6
395:              sltu         s11, s10, s2
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            auipc        s11, 149578
                  or           t5, t1, a3
                  blt          s6, s7, sub_4_stack_p
                  srl          s3, t5, s2
                  srai         s7, s11, 5
sub_4_stack_p:    addi         s10, s10, -52
                  sll          s8, a5, t6
                  sw           t1, 4(s10)
                  sltu         t0, s6, t4
                  srl          ra, sp, s10
                  srl          s9, a7, t4
                  sll          s5, a3, t1
                  slli         s11, a0, 6
                  srl          t3, tp, a3
                  auipc        a3, 608436
                  blt          gp, a2, sub_4_j6 #branch to jump instr
                  nop
                  lui          t5, 825948
                  srai         a3, ra, 3
sub_4_j6:         jal          t1, sub_5 #jump sub_4 -> sub_5
sub_4_1:          jal          t1, 13f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 16f
3:                jal          ra, 4f
4:                jal          a4, 19f
5:                jal          t1, 14f
6:                jal          ra, 2b
7:                jal          ra, 11f
8:                jal          ra, 0b
9:                jal          t1, 7b
10:               jal          ra, 1b
11:               jal          s6, 5b
12:               jal          t0, 10b
13:               jal          ra, 18f
14:               jal          ra, 20f
15:               jal          tp, 21f
16:               jal          ra, 24f
17:               jal          a7, 12b
18:               jal          t1, 22f
19:               jal          ra, 15b
20:               jal          ra, 17b
21:               jal          t1, 8b
22:               jal          t1, 23f
23:               jal          tp, 9b
24:               ori          t5, t3, 1474
sub_4_0:          jal          t1, 19f
0:                jal          ra, 2f
1:                jal          ra, 11f
2:                jal          tp, 26f
3:                jal          a0, 28f
4:                jal          ra, 7f
5:                jal          a1, 15f
6:                jal          ra, 0b
7:                jal          t1, 3b
8:                jal          ra, 17f
9:                jal          ra, 22f
10:               jal          ra, 5b
11:               jal          ra, 12f
12:               jal          ra, 18f
13:               jal          t1, 20f
14:               jal          ra, 1b
15:               jal          s2, 24f
16:               jal          ra, 4b
17:               jal          ra, 27f
18:               jal          ra, 9b
19:               jal          t1, 14b
20:               jal          ra, 23f
21:               jal          ra, 10b
22:               jal          t1, 8b
23:               jal          t1, 6b
24:               jal          ra, 13b
25:               jal          t1, 29f
26:               jal          ra, 30f
27:               jal          s6, 25b
28:               jal          t1, 21b
29:               jal          ra, 16b
30:               xor          tp, s2, s10
                  bltu         t1, t2, 1f
1:                srli         s4, ra, 16
                  or           s7, s7, t3
                  beq          s3, a5, 19f
                  blt          s10, a5, 20f
                  xori         ra, t6, 1665
                  bgeu         a3, a6, 9f
                  auipc        a6, 260403
                  bgeu         s7, s0, 20f
9:                nop
                  xori         a0, s7, 1740
                  or           tp, t0, t1
                  bne          a1, t5, 24f
                  nop
                  slti         gp, a3, 767
                  bne          t0, a6, 33f
                  sll          s9, gp, a7
                  srli         a6, s7, 30
                  and          s5, s5, a7
19:               xori         a2, a5, 1443
20:               beq          a4, a6, 40f
                  and          ra, t5, t3
                  beq          gp, a3, 24f
                  bne          s2, s5, 38f
24:               addi         a6, t4, 137
                  sra          a5, a5, a0
                  addi         a4, zero, -1839
                  slli         a5, a7, 30
                  slli         a6, s4, 4
                  add          s5, a2, t0
                  bge          t2, s10, 48f
                  auipc        s5, 209869
                  srl          s11, s6, gp
33:               slti         s9, tp, -806
                  srli         t3, a0, 4
                  add          a0, zero, a7
                  srai         s6, s4, 31
                  auipc        zero, 197822
38:               bne          t6, a3, 56f
                  sub          a0, t1, s1
40:               srli         zero, s3, 28
                  bge          a6, s3, 47f
                  bge          s8, a1, 43f
43:               bgeu         t5, a4, 53f
                  addi         s2, s5, 1814
                  addi         s2, s10, 329
                  or           a0, s1, s7
47:               blt          t5, t1, 58f
48:               auipc        a2, 510236
                  blt          s1, t1, 55f
                  xor          s5, s3, a2
                  andi         s1, s1, 1024
                  xori         tp, s7, -1292
53:               srai         zero, s5, 1
                  sltu         s8, a3, a5
55:               srai         s7, gp, 18
56:               slti         ra, s5, 990
                  bltu         ra, s10, 76f
58:               srl          a4, a0, s1
                  sra          a4, a2, t3
                  sra          a0, t4, s4
                  slli         s2, a7, 10
                  srli         a3, a5, 19
                  xor          t3, sp, zero
                  bltu         t2, a6, 66f
                  srli         ra, s1, 0
66:               slti         a0, t5, -1314
                  ori          s2, a0, 405
                  sltu         a0, t4, s0
                  sltiu        a4, s4, -840
                  bge          tp, s0, 83f
                  addi         s3, a2, -1292
                  sll          s7, a2, s4
                  srl          a5, s9, s4
                  xor          s4, s4, a6
                  andi         t2, s10, -760
76:               xor          s8, tp, t2
                  add          s11, a6, t1
                  bne          s0, a0, 93f
                  and          zero, s10, s4
                  srli         t1, s8, 14
                  sltiu        t3, s11, 1493
                  xor          t3, tp, s11
83:               slli         a2, a4, 10
                  auipc        s6, 990937
                  bltu         t0, t0, 100f
                  addi         s5, s10, 80
                  or           t1, s4, s7
                  sra          s7, gp, s4
                  andi         t1, t1, 1401
                  slt          t0, s1, t6
                  xori         s9, a6, -933
                  addi         s0, a7, -1444
93:               xori         s0, s9, -1185
                  slt          t0, s4, zero
                  xor          s11, t1, a3
                  blt          a6, s8, 100f
                  addi         a4, a1, 1780
                  lui          s3, 261832
                  beq          s0, ra, 100f
100:              slti         t1, s4, 514
                  xori         a2, t0, -1737
                  lw           t1, 4(s10)
                  slt          t2, t3, s1
                  nop
                  and          a3, s10, zero
                  slli         s3, s4, 15
                  addi         s10, s10, 52
                  andi         s7, s7, -217
                  sra          ra, s8, s4
                  sltiu        a3, t2, 682
                  ori          a4, a4, 485
190:              addi x4, x6, 0
190:              jalr x4, x4, 0
sub_3:            bltu         t3, t5, sub_3_stack_p
sub_3_stack_p:    addi         s10, s10, -8
                  and          s11, a6, a0
                  slti         t6, s9, 1610
                  sw           t1, 4(s10)
                  lui          s5, 592756
                  sll          s0, zero, t1
                  sra          s4, t0, s1
sub_3_16:         jal          t1, 5f
0:                jal          s9, 9f
1:                jal          t1, 2f
2:                jal          tp, 3f
3:                jal          t1, 6f
4:                jal          s6, 18f
5:                jal          a4, 1b
6:                jal          s5, 13f
7:                jal          a0, 21f
8:                jal          ra, 17f
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          ra, 16f
12:               jal          tp, 0b
13:               jal          ra, 14f
14:               jal          t2, 15f
15:               jal          ra, 4b
16:               jal          ra, 19f
17:               jal          ra, 7b
18:               jal          ra, 11b
19:               jal          t1, 20f
20:               jal          ra, 12b
21:               lui          a5, 612624
sub_3_22:         jal          t1, 3f
0:                jal          s5, 4f
1:                jal          ra, 28f
2:                jal          ra, 7f
3:                jal          t5, 25f
4:                jal          ra, 10f
5:                jal          t1, 27f
6:                jal          ra, 18f
7:                jal          ra, 16f
8:                jal          ra, 15f
9:                jal          t1, 8b
10:               jal          ra, 14f
11:               jal          t0, 24f
12:               jal          ra, 9b
13:               jal          tp, 19f
14:               jal          ra, 13b
15:               jal          tp, 26f
16:               jal          tp, 11b
17:               jal          ra, 21f
18:               jal          ra, 2b
19:               jal          ra, 17b
20:               jal          ra, 0b
21:               jal          t1, 12b
22:               jal          ra, 23f
23:               jal          t2, 1b
24:               jal          t0, 20b
25:               jal          ra, 5b
26:               jal          ra, 22b
27:               jal          s8, 6b
28:               andi         s2, t6, 200
sub_3_27:         jal          t1, 7f
0:                jal          t1, 6f
1:                jal          t1, 0b
2:                jal          ra, 10f
3:                jal          ra, 4f
4:                jal          t6, 2b
5:                jal          ra, 11f
6:                jal          ra, 13f
7:                jal          t1, 8f
8:                jal          s9, 12f
9:                jal          ra, 1b
10:               jal          ra, 5b
11:               jal          ra, 9b
12:               jal          s8, 3b
13:               add          t3, a4, t4
sub_3_20:         jal          t1, 21f
0:                jal          t6, 4f
1:                jal          a0, 7f
2:                jal          t1, 13f
3:                jal          ra, 23f
4:                jal          t1, 2b
5:                jal          t3, 12f
6:                jal          t1, 16f
7:                jal          gp, 0b
8:                jal          ra, 11f
9:                jal          ra, 26f
10:               jal          a4, 25f
11:               jal          t1, 24f
12:               jal          ra, 9b
13:               jal          t1, 19f
14:               jal          ra, 18f
15:               jal          ra, 5b
16:               jal          t1, 28f
17:               jal          t1, 10b
18:               jal          s5, 8b
19:               jal          ra, 22f
20:               jal          a1, 17b
21:               jal          t0, 3b
22:               jal          gp, 27f
23:               jal          s5, 15b
24:               jal          t3, 1b
25:               jal          ra, 6b
26:               jal          ra, 14b
27:               jal          t1, 20b
28:               ori          a6, a3, 746
sub_3_23:         jal          t1, 22f
0:                jal          t1, 20f
1:                jal          ra, 16f
2:                jal          ra, 11f
3:                jal          ra, 12f
4:                jal          a1, 17f
5:                jal          ra, 2b
6:                jal          ra, 5b
7:                jal          t0, 15f
8:                jal          t1, 18f
9:                jal          ra, 24f
10:               jal          t1, 1b
11:               jal          ra, 7b
12:               jal          ra, 6b
13:               jal          ra, 21f
14:               jal          gp, 23f
15:               jal          t1, 14b
16:               jal          t1, 9b
17:               jal          ra, 3b
18:               jal          ra, 0b
19:               jal          ra, 4b
20:               jal          s7, 19b
21:               jal          t3, 8b
22:               jal          ra, 13b
23:               jal          t1, 10b
24:               slti         t1, a6, -1803
sub_3_25:         jal          t1, 10f
0:                jal          t1, 7f
1:                jal          tp, 16f
2:                jal          a3, 25f
3:                jal          s0, 21f
4:                jal          t1, 13f
5:                jal          s3, 22f
6:                jal          ra, 0b
7:                jal          t1, 27f
8:                jal          gp, 1b
9:                jal          t1, 17f
10:               jal          s6, 6b
11:               jal          t1, 5b
12:               jal          tp, 15f
13:               jal          t1, 28f
14:               jal          t1, 29f
15:               jal          s4, 30f
16:               jal          s5, 14b
17:               jal          ra, 11b
18:               jal          ra, 12b
19:               jal          ra, 2b
20:               jal          s0, 3b
21:               jal          tp, 19b
22:               jal          ra, 23f
23:               jal          ra, 8b
24:               jal          s11, 20b
25:               jal          t0, 9b
26:               jal          ra, 4b
27:               jal          a7, 26b
28:               jal          ra, 24b
29:               jal          ra, 18b
30:               add          a1, s4, s9
sub_3_18:         jal          t1, 11f
0:                jal          t1, 5f
1:                jal          ra, 19f
2:                jal          a4, 12f
3:                jal          s6, 4f
4:                jal          ra, 0b
5:                jal          gp, 6f
6:                jal          ra, 15f
7:                jal          ra, 1b
8:                jal          a1, 2b
9:                jal          a1, 3b
10:               jal          ra, 18f
11:               jal          ra, 17f
12:               jal          t6, 13f
13:               jal          ra, 9b
14:               jal          ra, 16f
15:               jal          s1, 14b
16:               jal          ra, 7b
17:               jal          s1, 8b
18:               jal          t5, 20f
19:               jal          t3, 10b
20:               slti         s2, t0, 245
sub_3_13:         jal          t1, 27f
0:                jal          ra, 16f
1:                jal          ra, 22f
2:                jal          t1, 19f
3:                jal          ra, 10f
4:                jal          a0, 26f
5:                jal          t1, 6f
6:                jal          t1, 28f
7:                jal          ra, 0b
8:                jal          ra, 3b
9:                jal          t1, 21f
10:               jal          ra, 4b
11:               jal          ra, 1b
12:               jal          ra, 5b
13:               jal          ra, 8b
14:               jal          t1, 17f
15:               jal          a4, 13b
16:               jal          ra, 25f
17:               jal          t5, 24f
18:               jal          t1, 11b
19:               jal          ra, 7b
20:               jal          a1, 15b
21:               jal          gp, 23f
22:               jal          t1, 14b
23:               jal          ra, 20b
24:               jal          gp, 12b
25:               jal          t0, 18b
26:               jal          ra, 2b
27:               jal          a4, 9b
28:               nop
sub_3_21:         jal          t1, 11f
0:                jal          t1, 13f
1:                jal          t1, 0b
2:                jal          t1, 5f
3:                jal          a5, 1b
4:                jal          ra, 2b
5:                jal          t1, 9f
6:                jal          t1, 10f
7:                jal          ra, 8f
8:                jal          t1, 14f
9:                jal          ra, 12f
10:               jal          t1, 4b
11:               jal          t1, 3b
12:               jal          ra, 7b
13:               jal          tp, 6b
14:               sub          t1, t5, s5
sub_3_4:          jal          t1, 5f
0:                jal          t1, 1f
1:                jal          s3, 7f
2:                jal          ra, 11f
3:                jal          ra, 4f
4:                jal          ra, 9f
5:                jal          t1, 14f
6:                jal          ra, 0b
7:                jal          ra, 8f
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          t1, 13f
11:               jal          t1, 12f
12:               jal          s5, 10b
13:               jal          ra, 15f
14:               jal          s4, 6b
15:               and          a2, t0, s3
sub_3_0:          jal          t1, 13f
0:                jal          ra, 2f
1:                jal          ra, 19f
2:                jal          ra, 22f
3:                jal          ra, 21f
4:                jal          ra, 10f
5:                jal          ra, 14f
6:                jal          s1, 17f
7:                jal          t1, 15f
8:                jal          ra, 5b
9:                jal          t0, 18f
10:               jal          ra, 12f
11:               jal          t1, 16f
12:               jal          a1, 24f
13:               jal          t0, 6b
14:               jal          t1, 23f
15:               jal          ra, 25f
16:               jal          t1, 26f
17:               jal          ra, 3b
18:               jal          ra, 0b
19:               jal          ra, 9b
20:               jal          t1, 11b
21:               jal          ra, 8b
22:               jal          s0, 20b
23:               jal          ra, 4b
24:               jal          ra, 7b
25:               jal          ra, 1b
26:               xori         a1, s5, 1910
sub_3_7:          jal          t1, 1f
0:                jal          a0, 8f
1:                jal          ra, 0b
2:                jal          t1, 11f
3:                jal          ra, 4f
4:                jal          ra, 2b
5:                jal          ra, 6f
6:                jal          ra, 9f
7:                jal          t0, 5b
8:                jal          gp, 7b
9:                jal          t1, 10f
10:               jal          t1, 3b
11:               and          s2, s2, s5
sub_3_8:          jal          t1, 28f
0:                jal          a0, 19f
1:                jal          t0, 3f
2:                jal          ra, 8f
3:                jal          a7, 9f
4:                jal          t1, 11f
5:                jal          t1, 17f
6:                jal          t1, 21f
7:                jal          ra, 25f
8:                jal          t1, 27f
9:                jal          s7, 22f
10:               jal          ra, 15f
11:               jal          t2, 1b
12:               jal          t1, 2b
13:               jal          ra, 5b
14:               jal          t3, 7b
15:               jal          t1, 20f
16:               jal          ra, 4b
17:               jal          s3, 29f
18:               jal          t5, 23f
19:               jal          ra, 12b
20:               jal          ra, 26f
21:               jal          ra, 18b
22:               jal          ra, 30f
23:               jal          ra, 0b
24:               jal          ra, 10b
25:               jal          s6, 16b
26:               jal          t6, 13b
27:               jal          t1, 14b
28:               jal          ra, 24b
29:               jal          ra, 6b
30:               or           t5, s11, s5
sub_3_10:         jal          t1, 22f
0:                jal          s8, 5f
1:                jal          ra, 9f
2:                jal          ra, 1b
3:                jal          ra, 10f
4:                jal          t1, 23f
5:                jal          a5, 17f
6:                jal          gp, 24f
7:                jal          t1, 20f
8:                jal          t1, 11f
9:                jal          tp, 26f
10:               jal          t1, 15f
11:               jal          ra, 21f
12:               jal          a1, 16f
13:               jal          t1, 19f
14:               jal          ra, 27f
15:               jal          ra, 12b
16:               jal          s1, 8b
17:               jal          ra, 6b
18:               jal          tp, 25f
19:               jal          ra, 2b
20:               jal          ra, 13b
21:               jal          ra, 14b
22:               jal          ra, 4b
23:               jal          t1, 18b
24:               jal          t1, 7b
25:               jal          ra, 0b
26:               jal          ra, 3b
27:               sltiu        s2, t4, -187
sub_3_26:         jal          t1, 15f
0:                jal          t1, 5f
1:                jal          ra, 11f
2:                jal          ra, 27f
3:                jal          a7, 21f
4:                jal          ra, 1b
5:                jal          ra, 2b
6:                jal          s6, 17f
7:                jal          ra, 22f
8:                jal          t1, 19f
9:                jal          ra, 18f
10:               jal          ra, 24f
11:               jal          ra, 9b
12:               jal          ra, 16f
13:               jal          ra, 8b
14:               jal          ra, 23f
15:               jal          s11, 4b
16:               jal          ra, 25f
17:               jal          ra, 14b
18:               jal          s7, 12b
19:               jal          t1, 10b
20:               jal          ra, 7b
21:               jal          t1, 6b
22:               jal          t1, 13b
23:               jal          t1, 0b
24:               jal          t1, 3b
25:               jal          a5, 26f
26:               jal          ra, 20b
27:               srli         s1, s4, 20
sub_3_11:         jal          t1, 8f
0:                jal          s6, 15f
1:                jal          ra, 11f
2:                jal          tp, 10f
3:                jal          ra, 1b
4:                jal          ra, 7f
5:                jal          ra, 3b
6:                jal          tp, 16f
7:                jal          a0, 17f
8:                jal          t0, 9f
9:                jal          ra, 2b
10:               jal          ra, 0b
11:               jal          a2, 18f
12:               jal          t1, 6b
13:               jal          ra, 14f
14:               jal          t1, 19f
15:               jal          t1, 5b
16:               jal          ra, 13b
17:               jal          t1, 12b
18:               jal          ra, 4b
19:               add          s0, s6, s9
sub_3_17:         jal          t1, 22f
0:                jal          t1, 28f
1:                jal          ra, 10f
2:                jal          ra, 16f
3:                jal          ra, 6f
4:                jal          ra, 8f
5:                jal          s5, 26f
6:                jal          ra, 7f
7:                jal          a2, 19f
8:                jal          ra, 18f
9:                jal          t1, 25f
10:               jal          t1, 30f
11:               jal          t1, 13f
12:               jal          s8, 4b
13:               jal          a1, 23f
14:               jal          ra, 21f
15:               jal          ra, 24f
16:               jal          ra, 29f
17:               jal          ra, 27f
18:               jal          t1, 2b
19:               jal          t0, 9b
20:               jal          ra, 11b
21:               jal          ra, 17b
22:               jal          t1, 20b
23:               jal          ra, 15b
24:               jal          ra, 14b
25:               jal          ra, 1b
26:               jal          t1, 3b
27:               jal          ra, 12b
28:               jal          s4, 5b
29:               jal          t1, 0b
30:               sltiu        s1, a1, -815
sub_3_1:          jal          t1, 11f
0:                jal          ra, 7f
1:                jal          ra, 4f
2:                jal          t1, 14f
3:                jal          t5, 5f
4:                jal          ra, 15f
5:                jal          s1, 2b
6:                jal          a5, 1b
7:                jal          t1, 6b
8:                jal          t1, 12f
9:                jal          ra, 3b
10:               jal          t0, 9b
11:               jal          ra, 10b
12:               jal          ra, 16f
13:               jal          ra, 17f
14:               jal          ra, 8b
15:               jal          t1, 13b
16:               jal          ra, 0b
17:               or           gp, s2, a0
sub_3_15:         jal          t1, 9f
0:                jal          s5, 7f
1:                jal          ra, 25f
2:                jal          ra, 21f
3:                jal          t6, 23f
4:                jal          ra, 8f
5:                jal          ra, 19f
6:                jal          t1, 2b
7:                jal          ra, 28f
8:                jal          ra, 30f
9:                jal          t2, 17f
10:               jal          t0, 6b
11:               jal          gp, 16f
12:               jal          ra, 27f
13:               jal          ra, 12b
14:               jal          ra, 26f
15:               jal          t1, 4b
16:               jal          t0, 10b
17:               jal          ra, 20f
18:               jal          t1, 1b
19:               jal          ra, 11b
20:               jal          a0, 3b
21:               jal          ra, 15b
22:               jal          gp, 13b
23:               jal          ra, 0b
24:               jal          ra, 5b
25:               jal          ra, 24b
26:               jal          t0, 29f
27:               jal          ra, 14b
28:               jal          ra, 22b
29:               jal          s11, 18b
30:               auipc        s4, 725241
sub_3_24:         jal          t1, 25f
0:                jal          t1, 2f
1:                jal          a1, 17f
2:                jal          ra, 4f
3:                jal          ra, 6f
4:                jal          tp, 12f
5:                jal          ra, 11f
6:                jal          ra, 7f
7:                jal          s6, 21f
8:                jal          ra, 23f
9:                jal          a3, 3b
10:               jal          ra, 27f
11:               jal          ra, 20f
12:               jal          ra, 5b
13:               jal          t1, 16f
14:               jal          t1, 8b
15:               jal          t5, 24f
16:               jal          ra, 10b
17:               jal          t1, 0b
18:               jal          ra, 22f
19:               jal          ra, 18b
20:               jal          ra, 9b
21:               jal          ra, 13b
22:               jal          t1, 26f
23:               jal          ra, 19b
24:               jal          ra, 1b
25:               jal          t1, 14b
26:               jal          ra, 15b
27:               nop
sub_3_5:          jal          t1, 8f
0:                jal          ra, 17f
1:                jal          s5, 0b
2:                jal          a2, 25f
3:                jal          t2, 15f
4:                jal          ra, 10f
5:                jal          ra, 22f
6:                jal          t0, 2b
7:                jal          ra, 13f
8:                jal          ra, 11f
9:                jal          ra, 21f
10:               jal          t1, 12f
11:               jal          t0, 7b
12:               jal          ra, 18f
13:               jal          ra, 1b
14:               jal          ra, 6b
15:               jal          ra, 23f
16:               jal          ra, 14b
17:               jal          t1, 9b
18:               jal          gp, 19f
19:               jal          ra, 3b
20:               jal          t1, 4b
21:               jal          t1, 20b
22:               jal          t1, 24f
23:               jal          ra, 5b
24:               jal          ra, 16b
25:               srli         s9, sp, 28
sub_3_19:         jal          t1, 14f
0:                jal          ra, 13f
1:                jal          ra, 17f
2:                jal          ra, 19f
3:                jal          a5, 10f
4:                jal          gp, 12f
5:                jal          a0, 8f
6:                jal          ra, 7f
7:                jal          ra, 5b
8:                jal          ra, 18f
9:                jal          ra, 3b
10:               jal          ra, 2b
11:               jal          a6, 15f
12:               jal          s1, 0b
13:               jal          tp, 20f
14:               jal          ra, 9b
15:               jal          ra, 21f
16:               jal          ra, 4b
17:               jal          t2, 16b
18:               jal          gp, 1b
19:               jal          t1, 6b
20:               jal          ra, 11b
21:               slli         t2, s6, 23
sub_3_6:          jal          t1, 6f
0:                jal          ra, 12f
1:                jal          ra, 13f
2:                jal          ra, 9f
3:                jal          s2, 0b
4:                jal          t1, 1b
5:                jal          t0, 10f
6:                jal          t1, 11f
7:                jal          ra, 8f
8:                jal          t1, 5b
9:                jal          ra, 3b
10:               jal          ra, 4b
11:               jal          ra, 2b
12:               jal          t0, 7b
13:               slli         s2, zero, 7
sub_3_2:          jal          t1, 13f
0:                jal          ra, 2f
1:                jal          ra, 8f
2:                jal          tp, 14f
3:                jal          ra, 11f
4:                jal          s8, 3b
5:                jal          t0, 7f
6:                jal          ra, 12f
7:                jal          ra, 9f
8:                jal          t1, 6b
9:                jal          ra, 1b
10:               jal          ra, 0b
11:               jal          ra, 10b
12:               jal          a5, 4b
13:               jal          ra, 5b
14:               sll          s2, s3, t0
                  andi         a2, s11, 1614
                  nop
                  or           t5, s5, s0
                  srli         a2, a1, 27
                  sltu         s5, t4, t1
                  srli         s2, zero, 30
                  beq          a4, s6, 17f
                  xori         t2, a6, 1598
                  lui          t3, 261942
                  srli         t3, a0, 31
                  sltu         s11, s1, gp
                  andi         a6, s7, -134
                  sub          a6, s10, tp
                  bne          a7, s11, 14f
14:               andi         t2, t0, -1416
                  auipc        s1, 166555
                  andi         a0, s8, 709
17:               add          a5, s4, s4
                  nop
                  slt          t3, a3, a7
                  andi         s7, s7, -1797
                  srl          s7, t2, t5
                  blt          s11, gp, 39f
                  add          a0, s4, a4
                  bne          s10, s7, 36f
                  slli         a2, s10, 1
                  xor          t6, t1, a2
                  xori         t1, t5, -1972
                  and          a5, t4, t2
                  sra          a5, t3, t4
                  sltu         s8, t1, s10
                  srl          s3, s5, s11
                  sltu         s7, a7, a1
                  nop
                  bgeu         t4, s0, 40f
                  andi         s9, tp, 153
36:               slti         a7, t2, -272
                  sub          s11, s11, s4
                  xor          s1, zero, ra
39:               xori         a0, s3, 698
40:               beq          s9, t6, 57f
                  slti         s0, s3, 200
                  blt          s9, tp, 57f
                  and          s9, s7, a7
                  ori          s11, ra, 1056
                  ori          s8, s6, -1922
                  blt          s1, t4, 58f
                  blt          s0, s5, 59f
                  bgeu         zero, s9, 59f
                  addi         a5, t0, -219
                  nop
                  sra          a2, gp, t1
                  add          s4, s6, s0
                  srl          t6, s4, s0
                  srai         s1, tp, 3
                  lui          t2, 1046306
                  slti         tp, a7, 439
57:               blt          a3, t2, 65f
58:               srai         a3, t2, 9
59:               srli         s9, s4, 27
                  bltu         t0, a4, 78f
                  sll          tp, a4, a4
                  srl          a7, a1, s0
                  andi         a1, s7, 817
                  srli         ra, t6, 21
65:               sll          t2, t0, s5
                  andi         t3, a1, -1514
                  auipc        ra, 290837
                  blt          t4, a4, 85f
                  or           s2, s1, s2
                  sll          t6, s1, s1
                  xor          s0, s9, s0
                  la           a2, sub_4
                  addi         a2, a2, 736
                  xor          s0, s7, t0
                  addi         s1, t0, -94
                  sltu         s0, gp, s1
                  lui          s3, 313874
                  xori         a7, a5, -1569
sub_3_j5:         jalr         t1, a2, -736 #jump sub_3 -> sub_4
                  srai         s7, a3, 16
                  sltu         s0, s7, a7
                  srli         zero, t5, 0
                  add          s9, sp, s1
                  bne          a1, s0, 92f
                  blt          sp, s2, 84f
                  blt          a2, s1, 78f
                  bltu         s0, t3, 87f
                  bne          a3, t3, 81f
78:               and          s3, t3, gp
                  sltu         zero, t2, sp
                  srli         t1, s2, 3
81:               add          t1, a4, s9
                  bge          t3, s3, 83f
83:               blt          a0, a4, 101f
84:               blt          s6, s7, 103f
85:               blt          a4, a1, 91f
                  bgeu         s10, a5, 91f
87:               srl          gp, gp, zero
                  slt          s7, s10, s0
                  xor          s0, s2, sp
                  bge          s1, a3, 104f
91:               sltiu        s5, a1, 1523
92:               srai         a6, a2, 23
                  slt          s1, a6, t3
sub_3_14:         jal          t1, 0f
0:                jal          ra, 4f
1:                jal          s1, 3f
2:                jal          gp, 12f
3:                jal          ra, 9f
4:                jal          t1, 19f
5:                jal          t0, 15f
6:                jal          ra, 5b
7:                jal          ra, 23f
8:                jal          ra, 1b
9:                jal          t1, 14f
10:               jal          t1, 6b
11:               jal          tp, 13f
12:               jal          ra, 24f
13:               jal          ra, 16f
14:               jal          ra, 22f
15:               jal          ra, 8b
16:               jal          t6, 7b
17:               jal          ra, 10b
18:               jal          a4, 17b
19:               jal          ra, 11b
20:               jal          s6, 21f
21:               jal          ra, 18b
22:               jal          ra, 2b
23:               jal          a3, 20b
24:               srai         s5, t0, 29
                  xor          zero, s6, s7
                  beq          gp, s3, 107f
                  srai         t3, s10, 20
                  slti         s7, sp, 1342
                  or           a0, a4, t6
                  sltu         s5, a3, a2
                  bne          tp, a2, 120f
101:              or           a5, a5, s0
                  sub          s3, t0, a2
103:              nop
104:              xor          t5, a1, t5
                  or           s9, s1, s7
                  xori         a2, t0, 385
107:              sltiu        a4, s6, -1801
                  blt          a2, a4, 111f
                  beq          a2, s6, 118f
                  srai         t2, s11, 28
111:              nop
                  auipc        t6, 242371
                  slt          a7, s6, s0
                  srl          s6, zero, a7
                  bgeu         a0, s7, 131f
                  slli         t6, a3, 4
                  sll          ra, a5, zero
118:              lui          s3, 651227
                  srai         a6, t1, 17
120:              auipc        t5, 261950
                  or           a7, t0, s3
                  bne          s4, a5, 140f
                  slti         t5, t1, -1293
                  srl          gp, t4, s0
                  bge          a4, t0, 130f
                  sra          t1, t0, t2
                  sltiu        a5, s3, -1570
                  xori         tp, a5, -2026
                  xori         a3, s3, -1560
130:              andi         t2, s7, -1854
131:              sltiu        s6, a2, 201
                  sltiu        a0, s2, 1039
                  sltiu        a2, sp, -1824
                  xor          t6, s7, a1
                  xor          t5, t6, s1
                  or           a1, t1, a0
                  slli         ra, s3, 20
                  bge          a5, t5, 147f
                  slti         t3, t6, -1610
140:              and          t0, s8, a4
                  bltu         t4, gp, 153f
                  andi         s5, a1, -1307
                  srai         a6, s10, 20
                  nop
                  ori          t2, s0, 199
                  sltiu        t5, a7, 923
147:              ori          a1, gp, 190
                  bge          t3, s1, 165f
                  lui          s7, 615146
                  sltu         gp, zero, t6
                  addi         t2, tp, 621
                  slli         s8, gp, 4
153:              bltu         s3, a0, 154f
154:              bgeu         a5, s9, 166f
                  ori          zero, a5, 225
                  sra          a7, a4, s8
                  xori         a2, tp, -1274
                  slli         s5, t4, 25
                  sltiu        gp, a1, -1760
                  srai         s0, s3, 31
                  bltu         t4, gp, 180f
                  and          t5, s2, t1
                  slti         tp, a2, 618
                  blt          t2, t2, 182f
165:              beq          a0, t6, 176f
166:              sub          s6, a3, a6
                  blt          tp, sp, 175f
                  sltu         s1, a4, t1
                  beq          s6, t6, 185f
                  bltu         a5, a0, 173f
                  bge          s6, s10, 181f
                  srai         s0, t0, 31
173:              addi         a1, ra, -1368
                  sra          t6, s9, s8
175:              bne          t4, a5, 193f
176:              blt          s2, s3, 180f
                  addi         gp, s8, -1329
                  sra          s7, s10, s8
                  addi         s3, s9, -610
180:              slti         a1, s5, 1576
181:              bne          a4, ra, 187f
182:              sltiu        a7, a7, 1288
                  beq          a4, a5, 194f
                  slli         a6, s1, 7
185:              sltiu        t6, s7, 214
                  beq          s4, a3, 201f
187:              xori         s4, a4, -499
                  sll          a7, s5, a4
                  bge          t6, t0, 207f
                  sltiu        s3, t2, -1441
                  sra          s8, tp, t1
                  srl          s7, a7, a7
193:              lui          t0, 159728
194:              add          t2, a3, tp
                  sll          s9, a5, s11
                  or           s11, t1, s9
                  bgeu         s3, t3, 208f
                  sra          tp, s3, s3
                  slti         t3, t1, -1810
                  and          a0, t3, s3
201:              srli         a1, s8, 9
                  beq          tp, a5, 216f
                  ori          t1, a0, 1038
                  slti         a0, sp, -1748
                  slt          s2, tp, t1
                  addi         s3, s0, 1092
207:              lui          a4, 1006492
208:              auipc        t2, 279983
                  blt          s11, sp, 215f
                  sltiu        s9, s0, 613
                  andi         s9, a3, -1039
                  ori          t3, a6, 526
                  bgeu         t5, a0, 230f
                  blt          s5, zero, 226f
215:              add          s9, s4, s6
216:              auipc        t0, 932647
                  srli         t1, t6, 4
                  sltu         s0, a4, s2
                  add          a3, s3, a2
                  and          a3, s10, s9
                  srl          s1, s4, s8
                  srli         s5, s1, 22
                  addi         s0, a2, -2033
                  add          s9, a1, s10
                  and          a5, gp, tp
226:              srai         a0, sp, 8
                  bltu         t1, s9, 246f
                  slti         s5, t1, 321
                  srl          a1, t0, s8
230:              and          a3, s0, a5
                  ori          gp, t4, -974
                  andi         t5, s10, -847
                  and          s7, s3, s3
                  sll          s7, sp, t2
                  ori          s0, s3, -611
                  auipc        a6, 729803
                  srli         a1, zero, 20
                  srai         s4, t1, 29
                  slli         t5, t5, 14
                  xor          t0, gp, t6
                  bgeu         s8, a5, 244f
                  sub          t2, a7, t4
                  xori         ra, t6, 91
244:              or           t1, t2, t5
                  sub          a1, s1, a4
246:              bgeu         s0, a6, 247f
247:              auipc        zero, 262921
                  andi         a7, t3, -1587
                  sra          a2, zero, a4
                  srli         a4, t0, 19
                  nop
                  blt          t5, s11, 269f
                  and          t0, t0, t2
                  auipc        a6, 546742
                  blt          s7, s10, 275f
                  andi         ra, s3, -1789
                  srl          t1, a0, s0
                  sltu         t1, s4, t2
                  addi         a5, t0, -593
                  sll          s4, t3, s6
                  add          t2, ra, t6
                  blt          tp, s0, 274f
                  sub          s4, a2, s11
                  slt          t6, a0, s4
                  sltu         a6, t4, a1
                  slti         a2, a6, 246
                  nop
                  slti         a7, s10, -957
269:              add          a7, s3, s11
                  add          s5, a6, a5
                  add          t0, s10, gp
                  srl          tp, ra, s3
                  bge          s3, t5, 290f
274:              and          t2, a4, s0
275:              srli         s5, ra, 8
                  slt          tp, s4, t6
                  bne          s0, s6, 289f
                  slli         a3, s1, 4
                  xori         t1, t5, 340
                  sltu         a7, t0, s11
                  srai         s0, a7, 23
                  xor          a2, s10, s8
                  ori          t3, t5, 554
                  bltu         a3, s8, 302f
                  and          gp, s7, gp
                  slti         t3, s7, 1420
                  addi         a1, s3, 490
                  slti         t5, s10, -867
289:              beq          a4, a6, 300f
290:              srai         t1, tp, 6
                  srli         s0, s7, 17
                  bne          s2, s0, 300f
                  or           gp, s0, a2
                  slt          a3, s9, s9
                  andi         a0, sp, 86
                  sll          a7, t0, t4
                  or           a7, zero, s1
                  addi         s5, a6, 220
                  slli         a2, s3, 16
300:              beq          a3, s8, 318f
                  beq          a0, s6, 312f
302:              addi         a6, s3, -1040
                  srli         t1, t2, 9
                  xori         a1, tp, -886
                  srai         s9, t0, 13
                  or           s11, a7, s0
                  sltu         t3, t4, s4
                  slti         s3, sp, 768
                  auipc        t6, 867042
                  or           s6, a5, a0
                  blt          a7, s4, 317f
312:              bge          gp, s3, 327f
                  sll          a3, s2, gp
                  srli         s0, t1, 30
                  sltu         s5, s1, s3
                  bne          a2, s5, 317f
317:              sltu         s0, a5, s1
318:              srai         tp, s5, 30
                  andi         a2, s8, -1471
                  bltu         a2, t3, 332f
                  sltu         s7, t5, s0
                  xor          s1, a4, s3
                  add          ra, a7, s4
                  blt          s11, s4, 343f
                  bltu         s7, zero, 330f
                  xor          s11, ra, t4
327:              or           a3, s0, s9
                  sltiu        t5, s6, -1950
sub_3_3:          jal          t1, 7f
0:                jal          ra, 10f
1:                jal          ra, 5f
2:                jal          t1, 0b
3:                jal          ra, 6f
4:                jal          t5, 3b
5:                jal          a0, 8f
6:                jal          ra, 9f
7:                jal          ra, 4b
8:                jal          ra, 2b
9:                jal          t6, 1b
10:               sra          t2, s8, s1
                  sra          ra, s3, sp
330:              andi         s3, a1, -1512
                  sltu         s0, a1, a7
332:              srl          s2, s10, t5
                  bgeu         a7, a5, 334f
334:              slli         a1, a4, 12
                  bne          s5, t2, 352f
                  srai         s1, a1, 2
                  srai         s11, s11, 24
                  addi         a4, s4, 643
                  sltu         a2, a4, t1
                  or           a0, s1, t1
                  sltiu        a7, a0, 1933
                  sltu         a1, s8, t4
343:              sltu         zero, s0, sp
                  sltu         t6, s8, a2
                  bge          a5, gp, 348f
                  sltiu        a1, s8, 2000
sub_3_9:          jal          t1, 6f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          t1, 5f
4:                jal          a6, 7f
5:                jal          a2, 0b
6:                jal          ra, 10f
7:                jal          ra, 11f
8:                jal          ra, 2b
9:                jal          ra, 1b
10:               jal          ra, 8b
11:               sltu         t2, a3, s9
                  xori         s7, t0, 1924
348:              lui          s8, 862866
                  sra          s9, a4, t3
                  sltiu        t3, a2, 1618
                  sub          a3, a2, t5
352:              sra          a2, a1, s8
                  slt          tp, a1, s2
                  nop
                  blt          s5, s3, 375f
                  addi         a2, a6, 747
                  sll          a3, a3, tp
                  sll          gp, s10, s5
                  lui          a3, 97223
                  bne          a7, a5, 376f
                  sll          t6, ra, s9
                  slli         gp, s6, 7
                  or           zero, a5, s11
                  sub          s0, t5, t5
                  lui          t5, 910105
                  lui          a2, 518973
                  sltiu        ra, s9, -400
                  slti         s11, gp, 1357
                  bgeu         s2, s10, 379f
                  xor          s11, ra, s6
                  xori         t1, a3, 1225
                  bltu         zero, a4, 381f
                  add          t0, t0, t2
                  and          s6, t3, a4
375:              blt          s10, s10, 387f
376:              andi         a0, t5, -1261
                  sltiu        a6, t0, -1695
                  bgeu         gp, s1, 384f
379:              bne          s7, a7, 396f
                  srai         t0, t4, 14
381:              srai         a3, s11, 2
                  or           s9, t4, ra
                  or           s4, t0, s1
384:              ori          t6, s10, 1201
                  xor          a7, s0, a3
                  auipc        gp, 406789
387:              ori          s0, s7, -495
                  blt          t3, a0, 392f
                  bne          t4, s7, 403f
                  srai         gp, t5, 5
                  sll          tp, t0, t5
392:              or           a2, t6, a4
                  andi         s11, s9, 1293
                  sltu         a1, zero, a6
                  srai         a6, s4, 27
396:              sll          a2, t4, s9
                  slli         a3, t2, 8
                  slt          t3, t6, a0
                  srai         t1, sp, 19
                  sltiu        a6, s4, 616
                  or           s1, sp, a0
                  sll          s4, a4, t5
403:              or           a5, zero, s6
                  andi         t6, s0, 592
                  sub          a1, a5, s5
                  slli         a6, a6, 15
                  lui          s2, 284351
                  or           t1, a6, a4
                  xor          t3, gp, s4
                  beq          a0, s11, 422f
                  srl          s11, s5, s4
                  or           t0, sp, s9
                  andi         s0, s0, -1763
                  slt          t0, ra, s2
                  bgeu         a1, s2, 418f
                  sub          t5, a0, a3
                  add          s8, ra, a2
418:              blt          a4, s2, 437f
                  sll          a1, s0, tp
                  andi         a4, t4, 1370
                  xori         s5, a6, 1920
422:              addi         tp, a2, -698
                  bgeu         t3, a2, 441f
                  sra          s6, s10, t3
                  lui          a7, 125440
                  bgeu         s3, a2, 437f
                  bltu         t3, s8, 444f
                  xor          s4, s7, s4
                  add          a1, t0, t1
                  srl          s3, a4, t3
                  auipc        gp, 128728
                  bgeu         a7, s5, 452f
                  lui          t2, 740683
                  sra          a2, s3, s0
                  bgeu         s4, t0, 447f
                  slli         s11, t4, 3
437:              srai         s9, t0, 30
                  srl          a1, a3, zero
                  ori          a0, zero, 459
                  slt          s0, t1, s3
441:              andi         s2, a2, -135
                  or           tp, s8, s8
                  bne          zero, t3, 444f
444:              sra          t5, s5, tp
                  auipc        gp, 183134
                  andi         s3, a5, 1728
447:              sub          t2, s4, tp
                  beq          s9, t3, 454f
                  and          ra, s9, s7
                  nop
                  srl          t1, a6, s6
452:              and          a4, a7, a4
                  sltiu        s3, s0, -1816
454:              beq          sp, a4, 465f
                  or           t3, s3, s10
                  bne          a1, tp, 459f
                  bgeu         t3, a6, 461f
                  xor          t1, t6, gp
459:              srli         zero, s9, 23
                  xori         ra, zero, 286
461:              or           a0, a5, t6
                  bgeu         a5, a3, 473f
                  and          zero, a7, s9
                  sll          s4, s9, ra
465:              srl          t5, ra, a2
                  sltu         a6, a1, t5
                  sub          tp, s0, t3
                  sll          s11, a1, ra
                  bge          a7, a0, 487f
                  beq          a4, sp, 473f
                  sltiu        a3, a4, 1358
                  bgeu         a5, t3, 473f
473:              xori         a3, zero, -2003
                  ori          a4, a3, 1242
                  andi         s6, s1, -829
                  xor          s9, t5, s5
                  nop
                  slli         s8, a6, 20
                  bgeu         s0, a6, 498f
                  bgeu         t4, s7, 498f
                  srai         a1, a4, 29
                  slti         t0, a5, 1029
                  bltu         s9, a7, 491f
                  ori          s4, s2, -658
                  slt          s3, t3, s10
                  srai         s11, t3, 25
487:              xori         s11, s11, 35
                  sltu         s1, ra, s2
                  bge          gp, s10, 506f
                  add          s5, ra, ra
491:              bne          t5, s7, 500f
                  ori          zero, a0, -1296
                  or           t6, a2, t6
                  srai         s8, s6, 2
                  srli         s1, a2, 27
                  sll          a6, s10, t1
                  slli         a5, s1, 1
498:              sltiu        t1, a4, -1675
                  or           a7, s5, s7
500:              srli         s0, zero, 9
                  sra          s0, a1, a3
                  bgeu         s4, a6, 516f
                  sltiu        t6, a1, 407
                  add          s3, s9, s5
                  or           a4, gp, a1
506:              xor          s11, t5, t3
                  sub          s5, s5, zero
                  sub          a3, t0, t1
                  slt          t1, s9, a6
                  nop
                  or           s9, s5, t4
                  bne          t2, a1, 523f
                  sra          s2, s4, s6
                  xor          s1, t3, a5
                  bgeu         a6, t6, 520f
516:              slti         s9, ra, -1351
                  or           s0, t6, a3
                  beq          a2, ra, 530f
                  addi         a5, s10, 1729
520:              bltu         a7, s3, 535f
                  andi         s9, s7, 1449
                  srai         s11, t5, 16
523:              sll          s9, a2, s5
                  andi         s1, t2, 816
                  srli         tp, t2, 19
                  bltu         t4, a6, 538f
                  bne          s11, a0, 546f
                  slti         t1, t3, 142
                  sltu         s6, s4, a2
530:              nop
                  srli         t6, t0, 21
                  bgeu         a0, t2, 538f
                  sltu         a1, a7, t4
                  bge          zero, s0, 544f
535:              xor          t2, a3, s3
                  xori         t5, s7, -823
                  beq          s9, t4, 555f
538:              andi         s9, t0, 1483
                  add          s3, s10, t5
                  slti         s4, t1, -364
                  srl          s7, s9, s5
                  srai         gp, a4, 5
                  sub          s2, s10, gp
544:              bltu         s1, t0, 560f
                  beq          t1, a4, 557f
546:              sub          a2, t0, ra
                  srli         s9, t1, 15
                  srli         s11, s8, 19
                  sltu         s1, s10, s11
                  srli         s6, s10, 24
                  andi         tp, s6, 626
                  sll          a1, a1, s11
                  ori          a3, t1, -111
                  xori         a0, a2, 675
555:              andi         t1, zero, -1174
                  andi         s2, ra, 1307
557:              sll          t2, a5, s2
                  bne          a1, a6, 575f
                  beq          s9, s7, 570f
560:              beq          s10, s5, 574f
                  xori         s11, t3, -1163
                  sltu         a2, a5, a2
                  xori         a0, t0, 1220
                  blt          s11, s4, 582f
                  sltu         s11, t3, s8
                  auipc        t1, 369075
                  nop
                  xor          a1, a4, t6
                  srl          a0, s11, t0
570:              slti         a6, a4, 592
                  addi         s5, sp, -1529
                  xor          a1, t1, s6
                  ori          s2, t5, -1333
574:              srli         a3, t1, 27
575:              slti         s9, s6, 769
                  srl          a4, s1, t5
                  bne          s2, gp, 589f
                  add          a0, t0, s9
                  beq          s0, sp, 589f
                  sll          gp, a3, a3
                  addi         s0, t3, 1815
582:              xori         s6, s4, -1537
                  slli         s2, a7, 17
                  srai         t2, t1, 2
                  sra          s2, s4, s7
                  srai         a2, ra, 30
                  or           t1, s4, s0
                  xor          a0, zero, zero
589:              ori          a1, t6, 282
                  slti         s2, s0, -330
                  srai         ra, tp, 19
                  ori          t5, s9, 2032
                  xor          a1, a4, t2
                  bltu         a6, t1, 613f
                  auipc        t3, 871586
                  blt          s9, t5, 608f
                  slt          zero, a1, a1
                  xor          gp, t3, t3
                  srl          s6, a1, a3
                  lui          a3, 442115
                  bltu         t4, zero, 606f
                  auipc        s11, 925531
                  slti         zero, a0, 32
                  bltu         s4, t6, 610f
                  srl          s5, a2, s3
606:              bgeu         a4, t5, 617f
                  xor          gp, s2, s11
608:              addi         s6, a2, 154
                  xori         t2, s10, -274
610:              slti         a1, t6, 1102
                  sltiu        s3, t3, -1554
                  bltu         s9, s0, 629f
613:              slt          ra, s1, a3
                  bne          a4, s2, 615f
615:              nop
                  bltu         sp, s1, 636f
617:              bgeu         sp, t5, 628f
                  srl          s6, s6, a2
                  sub          a0, t3, zero
                  auipc        a0, 787249
                  bgeu         t1, a7, 624f
                  bltu         a1, a2, 641f
                  lui          t5, 476284
624:              sltu         s4, s5, t1
                  addi         gp, t3, 1248
                  sll          a0, a7, t1
                  andi         a6, s9, -1685
628:              beq          t2, t2, 646f
629:              slt          t0, a6, t1
                  sub          gp, s7, s9
                  ori          s5, s9, 978
                  blt          a7, ra, 647f
                  bltu         s2, gp, 651f
                  and          s5, a1, t5
                  sub          t1, t5, s8
636:              bgeu         a1, s9, 652f
                  slti         s4, t4, -705
                  beq          s10, t2, 655f
                  slt          t6, t1, s1
                  auipc        a2, 549113
641:              bge          t0, a2, 653f
                  blt          s7, s4, 648f
                  beq          s9, a7, 660f
                  sltu         s11, s2, zero
                  srli         s6, t5, 30
646:              sltiu        a7, s3, -1043
647:              bltu         s8, a6, 651f
648:              xori         a5, t0, 1967
                  blt          a5, t3, 652f
                  andi         t6, zero, -428
651:              sra          gp, t6, t6
652:              srli         a4, t3, 29
653:              auipc        s5, 454639
                  sub          tp, tp, t3
655:              lui          tp, 112609
                  srai         zero, s9, 3
                  addi         zero, s5, -547
                  sltiu        s2, s11, 52
                  add          s6, a5, s2
660:              slt          s0, a0, sp
                  ori          s4, a2, -1216
                  sll          a4, t2, a4
                  srli         s5, ra, 3
                  bltu         zero, s6, 672f
                  lui          a3, 634957
                  and          a4, s5, s11
                  slli         a4, gp, 4
                  xor          s8, t3, zero
                  bge          a7, s0, 670f
670:              srai         a3, s1, 1
                  sub          s3, a7, s0
672:              slti         a6, zero, -861
                  slti         s7, a5, -1080
                  lui          t3, 586258
                  bgeu         s7, t4, 684f
                  sra          s6, t3, s4
                  srli         gp, a1, 1
                  blt          s4, s6, 690f
                  lui          s6, 516762
                  and          s8, s2, s3
                  addi         a2, s8, 647
                  sll          a4, s6, a3
                  beq          a3, s5, 689f
684:              addi         s6, t4, 1119
                  or           s9, s11, t4
                  sltiu        a5, a4, 845
                  sub          s9, s3, sp
                  srli         t2, a4, 30
689:              sub          a0, s2, a4
690:              srai         s6, s11, 23
                  ori          s9, zero, 1892
                  beq          s5, t4, 711f
                  srli         a3, s4, 19
                  bgeu         a3, t0, 712f
                  slt          s5, zero, t1
                  bne          a1, s10, 714f
                  addi         t3, s10, -1055
                  sll          s9, s2, s6
                  srl          gp, t5, s8
                  auipc        a5, 746596
                  sll          gp, t0, a4
                  sll          a1, s4, s8
                  addi         gp, t0, 1677
                  xor          t1, s1, s6
                  nop
                  ori          t1, a1, 718
                  srl          a3, a6, a6
                  bne          a6, s9, 720f
                  bne          a2, s1, 725f
                  andi         tp, a6, 1011
711:              sra          s8, a4, s1
712:              auipc        t1, 162595
                  sltiu        a2, gp, -1960
714:              ori          a6, tp, -1833
                  srli         gp, s6, 9
                  srli         a0, a6, 20
                  sltiu        a2, a4, 202
                  lui          ra, 92920
                  bge          t2, a3, 724f
720:              xor          a5, s6, s0
                  sll          ra, s3, ra
                  addi         t2, t3, -453
                  blt          s2, s3, 738f
724:              srai         s5, t5, 23
725:              srl          s3, t0, s7
                  addi         s8, a6, 823
                  srl          a2, t0, s11
                  sub          a0, tp, s4
                  addi         s5, a4, 391
                  and          s1, a4, ra
                  add          s2, t4, s4
                  sub          s4, a2, s1
                  xori         t1, s8, -1852
                  bne          t1, t2, 737f
                  srli         s8, s10, 22
                  or           a0, sp, s3
737:              srai         s0, s9, 4
738:              addi         s5, t3, -1460
                  xor          t1, t4, t5
                  bne          s10, a1, 741f
741:              sub          t2, a7, s8
                  xori         s11, a7, -1450
                  addi         s6, t4, -140
                  and          s5, a1, t6
                  addi         zero, zero, -166
                  slti         s2, ra, -216
                  and          a6, s5, gp
                  blt          s3, s3, 767f
                  bgeu         s11, a4, 757f
                  addi         s4, ra, -93
                  bge          s0, s10, 768f
                  slli         a6, gp, 27
                  blt          s6, t3, 767f
                  addi         s8, t3, -1551
                  or           t5, zero, ra
                  slli         zero, a4, 16
757:              lui          tp, 242262
                  bgeu         s8, a4, 769f
                  sltiu        t3, tp, 516
                  andi         s11, s3, -1893
                  bne          s6, a1, 772f
                  andi         a0, s9, 118
                  or           t0, t0, a7
                  add          s4, gp, s8
                  andi         t0, a4, -643
                  bltu         t6, a1, 769f
767:              slti         a4, s2, 309
768:              and          t5, a3, gp
769:              bge          gp, t5, 775f
                  or           t0, s1, tp
                  sltu         s11, t3, s0
772:              slli         s2, a4, 14
                  sll          t3, s10, t0
                  slti         s4, t4, -1227
775:              sll          s6, t4, s3
                  sltu         s5, t5, a7
                  blt          a7, zero, 786f
                  lui          t0, 646570
                  bgeu         a4, t5, 790f
                  sub          s1, s5, s4
                  sltu         a3, t2, a3
                  bgeu         t3, a2, 792f
                  andi         a1, a2, -1858
                  sltu         t3, a5, s0
                  xori         s0, a4, 1887
786:              slt          t5, t2, s7
                  sltu         a2, a2, a1
                  srl          s8, s4, t1
                  add          s11, a3, t5
790:              slti         ra, s11, 1581
                  lui          s4, 961661
792:              add          t1, s7, a3
                  addi         s11, s11, -437
                  bne          t2, s0, 812f
                  lui          t3, 466008
                  auipc        zero, 948419
                  and          t3, t6, a3
                  blt          s3, zero, 799f
799:              blt          t4, s8, 816f
                  addi         a0, a3, 1334
                  or           ra, t0, s1
                  sltiu        a6, s1, -1373
                  xor          a1, s9, t0
                  sltiu        s7, s4, -347
                  blt          s9, s11, 809f
                  sltu         s1, t2, a0
                  ori          s5, a7, 1064
                  sltu         a0, a5, t0
809:              srl          s2, s1, s4
                  srai         a2, gp, 0
                  bltu         s9, s6, 823f
812:              sll          t2, zero, s10
                  bltu         a4, zero, 825f
                  bge          a5, s1, 831f
                  xor          t6, a3, s5
816:              xori         t2, a4, 1072
                  and          t3, zero, t6
                  xori         a3, sp, 40
                  sra          s3, s7, a1
                  nop
                  beq          s5, ra, 833f
                  srli         gp, s3, 27
823:              sltu         s3, s3, t6
                  slli         s0, tp, 25
825:              add          a7, ra, s3
                  sub          s6, s8, a0
                  srai         s11, s3, 4
                  lui          s1, 178372
                  slli         s8, a3, 24
                  andi         a0, s6, -609
831:              bne          ra, a4, 851f
                  and          t2, sp, gp
833:              bne          s10, s6, 844f
                  bne          a6, ra, 851f
                  blt          s6, a0, 852f
                  xori         t1, a0, 747
                  nop
                  addi         a2, s0, 1372
                  beq          s5, s6, 858f
                  and          a0, s8, s1
                  beq          t0, s2, 857f
                  and          s1, t1, s5
                  xori         zero, a4, 736
844:              srl          a6, a2, a7
                  sub          s9, s1, t1
                  slti         a1, tp, -1179
                  bltu         ra, ra, 850f
                  or           a4, s0, a6
                  bge          a6, t0, 866f
850:              sra          s8, s6, tp
851:              sltu         a1, a0, s4
852:              slli         a4, s0, 26
                  srai         s4, s1, 14
                  addi         s9, s5, -74
                  nop
                  beq          s11, a1, 857f
857:              srl          a5, t4, t4
858:              xor          s4, t3, t4
                  nop
                  ori          ra, t4, -549
                  sltu         s0, t2, a2
                  sub          t5, s3, s7
                  sub          s4, s7, s1
                  slt          s8, ra, a6
                  ori          t1, t5, -263
866:              sra          t1, a2, a6
                  sub          s1, a2, tp
                  sltu         s0, a7, sp
                  xor          s8, gp, s1
                  auipc        t5, 687603
                  andi         t1, t0, -723
                  bgeu         s0, a3, 878f
                  bge          zero, t1, 893f
                  bge          s9, s8, 886f
                  lui          s3, 931824
                  xori         zero, tp, -1789
                  addi         s11, s6, 1858
878:              andi         t1, a0, 1723
                  add          gp, s4, a2
                  and          s4, a4, t2
                  sltiu        s2, a0, 417
                  add          s8, a6, s3
                  srai         a2, s9, 24
                  xor          a7, s3, t2
                  srli         s7, s9, 25
886:              xori         t1, s5, -622
                  bne          zero, t1, 898f
                  bltu         s4, s2, 897f
                  lui          a2, 680073
                  beq          s7, t5, 908f
                  blt          a3, a7, 895f
                  lui          s0, 653676
893:              bgeu         s0, s1, 905f
                  srl          t2, s6, s11
895:              xori         s11, s2, -779
                  addi         t0, a0, -1267
897:              xori         s9, a7, 1755
898:              or           a0, tp, s1
                  slli         a6, t0, 29
                  bltu         ra, s6, 911f
                  sub          a5, s3, a3
                  sltiu        s0, s7, -1894
                  blt          s8, a4, 909f
                  slti         a5, zero, 39
905:              slli         s1, a6, 24
                  sltu         s0, a2, t5
                  sltu         a7, t2, s1
908:              srai         a7, gp, 10
909:              srli         s8, s4, 7
                  and          s9, a7, s8
911:              nop
                  lui          s5, 753487
                  xor          tp, t4, s2
                  bge          a0, a0, 929f
                  bgeu         s8, s11, 933f
                  srli         a7, t1, 15
                  srai         t0, s0, 21
                  nop
                  nop
                  auipc        s9, 765744
                  xori         t6, a4, -1905
                  sub          a2, s5, s4
                  srli         a6, a2, 28
                  auipc        t1, 550715
                  slt          t5, s4, s5
                  srai         s6, a0, 14
                  bge          a0, t6, 939f
                  sltu         tp, s11, a0
929:              bge          a6, s9, 943f
                  lui          s4, 505675
                  xor          a2, a7, gp
                  andi         a0, a3, -1011
933:              auipc        a2, 484513
                  srli         t3, a4, 16
                  add          s5, s6, a5
                  beq          s7, a4, 941f
                  or           s2, a4, s3
                  andi         t5, t4, -1079
939:              sltu         a5, a0, tp
                  sltu         t1, a0, s10
941:              blt          zero, a7, 959f
                  slt          a2, s1, t3
943:              bltu         ra, a2, 962f
                  auipc        t1, 519689
                  sltu         ra, t3, t1
                  andi         t6, t6, -1803
                  addi         s11, a4, 459
                  sub          t3, a1, a4
                  srli         s0, s11, 26
                  slli         s9, a0, 0
                  bge          a6, t0, 952f
952:              bgeu         a4, t1, 964f
                  sltiu        t3, t1, -1452
                  slti         s7, s1, -1214
                  ori          t5, s8, 983
                  sltu         zero, ra, a4
                  bgeu         tp, t2, 960f
                  lui          s5, 776935
959:              ori          a6, t3, 1739
960:              sltu         a7, t5, t4
                  bge          a4, t2, 971f
962:              add          s9, gp, s0
                  xori         a3, s7, -1891
964:              addi         s1, a5, -813
                  and          a1, s7, a5
                  xor          tp, s5, s6
                  beq          a4, a1, 975f
                  bgeu         s9, t3, 985f
                  sll          a6, sp, t0
                  srl          t1, s4, t3
971:              sll          s7, t1, s4
                  slti         a7, s1, -1101
                  and          t3, a7, s8
                  xor          s5, s5, s5
975:              bne          t2, s8, 976f
976:              xori         t0, s1, 82
                  auipc        s3, 316566
                  nop
                  slti         s4, t5, -340
                  srl          a2, s10, a1
                  srli         s0, s4, 13
                  and          s8, t4, a4
                  andi         ra, a1, -1751
                  addi         t5, s0, 331
985:              slti         a0, s11, -967
                  xor          s6, a4, s8
                  slli         a6, a3, 14
                  slt          s1, sp, s9
                  lui          a0, 443544
                  andi         t0, a7, -1738
                  bgeu         s6, t2, 1010f
                  addi         s7, s9, 1985
                  andi         t1, t5, -1671
                  andi         ra, s8, 1660
                  sltu         a5, t0, a3
                  lui          zero, 881251
                  bltu         tp, a1, 1012f
                  auipc        t6, 987646
                  sra          s3, a5, s0
                  addi         t5, sp, 1456
                  sll          gp, s2, a1
                  andi         a1, s11, 47
                  bgeu         tp, a1, 1013f
                  beq          t4, a7, 1010f
                  bgeu         sp, s4, 1016f
                  srl          s7, t4, a7
                  beq          t1, s9, 1018f
                  lui          t6, 113199
                  andi         s7, s11, 1818
1010:             slt          s6, a2, s2
                  or           a2, t4, t0
1012:             or           t2, a7, s6
1013:             slli         a0, t2, 3
                  blt          t0, s7, 1031f
                  bne          tp, gp, 1018f
1016:             bltu         a1, sp, 1035f
                  ori          t3, ra, 1197
1018:             xor          t6, zero, sp
                  or           s4, a7, t1
                  sltu         a4, a7, s3
                  srai         s11, s4, 1
                  auipc        a0, 997586
                  slti         s0, zero, -868
                  slti         s2, t3, 1319
                  slli         t0, s3, 6
                  sltiu        t0, sp, -800
                  xor          s0, a1, s1
                  xor          tp, s9, t4
                  srli         s8, t6, 16
                  beq          s7, t5, 1031f
1031:             lui          zero, 868363
                  bne          s1, gp, 1044f
                  lui          s7, 130968
                  blt          t0, s2, 1051f
1035:             xor          s3, s3, a5
                  or           zero, s6, t5
                  slt          s3, t4, t2
                  srai         gp, s3, 19
                  sub          a0, ra, sp
                  lui          a3, 404418
                  slli         gp, s9, 10
                  sll          a5, s9, a0
                  srli         t0, t3, 28
1044:             bne          a4, t0, 1062f
                  sll          s1, s4, s5
                  xori         s9, s1, 644
                  lui          a3, 108032
                  sll          tp, a2, a7
                  sub          t2, s1, s0
                  xori         t2, a0, 459
1051:             lui          a7, 577286
                  bgeu         t1, t0, 1056f
                  sll          zero, a3, s3
                  srl          s4, t4, t1
                  srai         a6, s0, 10
1056:             blt          s11, a4, 1062f
                  sltu         s2, t3, a0
                  ori          s0, s11, -1883
                  beq          s11, zero, 1075f
                  nop
                  add          s5, s4, a7
1062:             beq          s3, s9, 1074f
                  bgeu         s10, s5, 1072f
                  and          s5, s10, t0
                  blt          a3, t5, 1085f
                  andi         s2, a2, -1677
                  slli         s6, t6, 11
                  and          t1, a4, t1
                  beq          s1, t1, 1081f
                  sll          s7, t5, s6
                  and          s11, s5, s9
1072:             bgeu         t5, t0, 1086f
                  ori          t3, t5, -1884
1074:             andi         a6, t5, -1690
1075:             beq          t1, t1, 1093f
                  addi         a3, t4, 62
                  xor          a5, ra, s2
                  andi         s11, tp, 331
                  sll          t1, a4, t3
                  srl          s1, a5, a0
1081:             lui          a4, 61748
                  beq          t6, t5, 1085f
                  ori          tp, a2, -1110
                  slli         t1, t6, 8
1085:             bne          s1, t5, 1096f
1086:             bge          tp, a6, 1094f
                  addi         a2, tp, 693
                  slt          a3, zero, s3
                  ori          a4, t5, -1646
                  or           a5, zero, s2
                  srli         a5, ra, 0
                  xor          a7, a1, a2
1093:             andi         s6, a3, -1770
1094:             slli         a1, s7, 1
                  sltiu        t2, s3, 447
1096:             sub          t5, t5, zero
                  xori         a6, s3, -1605
                  slt          s3, t3, s7
                  xor          t3, a3, s2
                  blt          s10, s9, 1118f
                  sub          tp, a3, s2
                  xor          s9, s9, s6
                  bge          sp, a3, 1115f
                  addi         t0, s10, 1560
                  srli         a7, tp, 13
                  auipc        a2, 382068
                  srai         s2, tp, 19
                  and          s3, a0, s8
                  beq          a2, s9, 1114f
                  and          s8, a2, t3
                  sll          a6, a3, s5
                  and          a7, t1, a4
                  slt          t2, a0, s7
1114:             slti         t6, s7, -831
1115:             sra          zero, s3, t6
                  bltu         a5, a1, 1117f
1117:             slt          s9, t3, a6
1118:             ori          a1, s6, 1666
                  sll          a2, a2, t6
                  auipc        s1, 549931
                  srai         t0, s7, 19
                  nop
                  sltiu        t1, a4, 1557
                  sltiu        t1, s0, -1223
                  bltu         s9, ra, 1135f
                  and          s1, a7, zero
                  beq          zero, s4, 1130f
                  nop
                  srl          s8, s6, s7
1130:             bgeu         t3, a7, 1147f
                  or           ra, s2, s6
                  bge          ra, tp, 1152f
                  bltu         zero, t0, 1142f
                  sra          a2, tp, s10
1135:             xor          s8, s11, s2
                  sra          a5, s10, s10
                  auipc        a6, 537360
                  xor          s3, s10, sp
                  blt          a1, zero, 1144f
                  slti         a7, a1, 668
                  slli         s3, tp, 24
1142:             or           t5, a7, s6
                  slt          gp, t4, t6
1144:             sub          s0, s9, s4
                  srli         zero, sp, 18
                  srli         a4, s6, 9
1147:             ori          s8, s8, 1290
                  xori         a3, s5, -141
                  addi         a5, tp, 301
                  auipc        a2, 389872
                  slli         t5, s4, 0
1152:             add          gp, s8, a6
                  bltu         s3, s11, 1165f
                  sltiu        s5, s0, -1411
                  xor          t0, s9, s2
                  addi         t2, t1, 1247
                  nop
                  sra          t0, s11, sp
                  lui          s0, 567712
                  sra          s9, a3, s2
                  slt          a4, s7, tp
                  add          zero, s3, a5
                  bne          a5, s5, 1175f
                  lui          a1, 58461
1165:             slti         t5, t1, -906
                  slli         s4, tp, 4
                  nop
                  bltu         t5, s6, 1186f
                  beq          a1, t3, 1181f
                  xori         a6, a0, 1219
                  slti         t6, ra, -1020
                  sra          s5, sp, t6
                  srli         t2, a6, 7
                  xori         a6, a2, -927
1175:             bgeu         t2, t3, 1192f
                  lui          s8, 960940
                  add          t0, s8, ra
                  sll          s2, s5, s4
                  bne          a5, a4, 1190f
                  slli         t2, t1, 6
1181:             bge          s1, t2, 1187f
                  srli         s6, s6, 29
                  srl          s11, a4, gp
                  nop
                  beq          s8, a4, 1203f
1186:             addi         s8, s7, 623
1187:             sltiu        s1, s2, 1997
                  srai         a2, t3, 25
                  beq          a3, a2, 1207f
1190:             srl          t2, a6, s5
                  slt          a5, s4, s4
1192:             beq          t5, a7, 1203f
                  bge          a6, s2, 1201f
                  andi         s9, gp, -1019
                  lui          t3, 468604
                  add          a3, t2, s5
                  bgeu         s7, a2, 1200f
                  nop
                  auipc        t0, 258781
1200:             slt          s7, t5, s0
1201:             addi         t5, s2, -2031
                  srl          s3, s0, a4
1203:             bge          s5, t0, 1215f
                  andi         s1, t3, -436
                  xor          t1, s4, s1
                  xori         s0, s9, -1140
1207:             sltu         t6, a4, t4
                  addi         t3, s6, -1029
                  add          t2, s8, a0
                  nop
                  sra          s1, sp, t3
                  slt          s7, zero, a5
                  auipc        s0, 29784
                  bltu         s11, a5, 1230f
1215:             bne          t4, gp, 1229f
                  srli         a2, t5, 3
                  sltu         t6, a0, a7
                  srl          a6, s1, t2
                  srai         s8, t1, 22
                  slti         s2, s3, -1906
                  bgeu         a5, tp, 1225f
                  nop
                  andi         s8, s9, -1822
                  beq          a0, t4, 1239f
1225:             sll          t1, a7, a4
                  slti         a6, t4, -1023
                  sltu         s4, a6, t6
                  sltiu        t5, s5, 289
1229:             bne          tp, t0, 1235f
1230:             srl          s6, s8, t6
                  srl          s3, s0, s10
                  sltiu        s1, zero, 1738
                  ori          s11, a4, 25
                  slli         a3, t4, 26
1235:             slli         s4, tp, 17
                  srai         s8, a2, 0
                  auipc        s5, 389419
                  bge          s3, s1, 1249f
1239:             sltiu        s11, a7, -1537
                  sra          a7, s10, s3
                  bne          s11, t2, 1260f
                  ori          t5, t6, -1639
                  auipc        zero, 662552
                  slt          ra, s5, s4
                  and          a1, s3, t2
                  bge          s0, s1, 1265f
                  srl          s2, ra, tp
                  slti         t1, s9, -1656
1249:             beq          ra, s8, 1250f
1250:             auipc        a4, 760294
                  beq          s8, t5, 1268f
                  or           a1, s3, zero
                  slti         s2, sp, -1192
                  slti         s0, a2, -434
                  bge          sp, s2, 1266f
                  srli         a1, s6, 13
                  srl          a6, s11, sp
                  sub          s11, t6, a7
                  or           a1, a0, a6
1260:             bltu         t5, a3, 1270f
                  bne          t2, a1, 1279f
                  sll          t2, s8, s5
                  blt          s9, a5, 1266f
                  sll          s3, t1, t4
1265:             bne          t5, a2, 1277f
1266:             sll          s4, a0, t0
                  beq          t6, a1, 1275f
1268:             bltu         s3, t6, 1272f
                  srli         s1, s8, 7
1270:             or           t6, t2, s11
sub_3_12:         jal          t1, 3f
0:                jal          ra, 5f
1:                jal          ra, 7f
2:                jal          t0, 20f
3:                jal          ra, 1b
4:                jal          ra, 19f
5:                jal          ra, 14f
6:                jal          s9, 13f
7:                jal          t0, 17f
8:                jal          ra, 23f
9:                jal          t1, 18f
10:               jal          a0, 11f
11:               jal          t0, 9b
12:               jal          s6, 10b
13:               jal          t1, 16f
14:               jal          s6, 21f
15:               jal          gp, 12b
16:               jal          ra, 0b
17:               jal          ra, 6b
18:               jal          s9, 2b
19:               jal          s6, 22f
20:               jal          ra, 8b
21:               jal          ra, 4b
22:               jal          ra, 15b
23:               auipc        zero, 212275
                  blt          t5, t5, 1287f
1272:             nop
                  nop
                  andi         zero, s7, 1127
1275:             sltu         s0, sp, s1
                  andi         zero, s8, 1507
1277:             blt          s8, s10, 1278f
1278:             auipc        s9, 413042
1279:             bgeu         gp, s0, 1299f
                  nop
                  add          tp, a4, t3
                  srli         a3, s9, 15
                  bltu         t6, s0, 1302f
                  bltu         a3, t1, 1296f
                  bge          t6, t4, 1302f
                  srai         t0, a1, 10
1287:             bgeu         t0, t0, 1305f
                  andi         s2, t6, -1738
                  srli         gp, t5, 8
                  nop
                  srli         s0, a5, 14
                  lui          tp, 240197
                  slt          zero, t6, a6
                  sltiu        a4, a3, -633
                  lui          a3, 560038
1296:             lui          s11, 370596
                  sltiu        s1, ra, -199
                  andi         a3, s5, -1447
1299:             nop
                  add          a6, s0, s10
                  sll          t5, ra, s4
1302:             bltu         a0, tp, 1321f
                  addi         s5, t6, 1655
                  ori          a4, t5, -350
1305:             lui          s2, 203616
                  xori         s7, tp, 2025
                  bgeu         gp, a1, 1324f
                  or           t6, a3, sp
                  srl          a3, a2, s10
                  bltu         t1, t1, 1316f
                  and          t6, t2, t6
                  xori         a7, a2, -1232
                  slt          a0, ra, s7
                  slt          t5, s6, s7
                  nop
1316:             lui          a3, 1019130
                  bne          s0, a7, 1320f
                  bge          t0, s10, 1333f
                  bne          s2, a2, 1330f
1320:             srl          a4, a0, s8
1321:             ori          a0, t6, 604
                  srai         a3, s6, 19
                  addi         a7, t0, 262
1324:             blt          a2, a0, 1325f
1325:             andi         s7, s7, 1988
                  andi         s8, a5, -894
                  lui          s5, 115466
                  sra          gp, s5, s0
                  add          s1, s8, s10
1330:             sub          ra, s1, s0
                  and          t5, s4, s4
                  beq          t3, s0, 1338f
1333:             srli         a5, s3, 2
                  beq          s8, t6, 1343f
                  srai         s4, s2, 20
                  or           a2, t5, a4
                  srli         t0, s1, 21
1338:             sub          s11, s11, a0
                  ori          tp, t3, 1824
                  blt          zero, zero, 1352f
                  sra          s6, a1, sp
                  bgeu         s2, s6, 1353f
1343:             bgeu         s6, a2, 1361f
                  slt          a0, a0, s9
                  srli         ra, s6, 6
                  beq          a2, t6, 1351f
                  add          s2, s8, t3
                  and          tp, s0, a1
                  auipc        s6, 109244
                  addi         s2, a6, -336
1351:             andi         a5, a2, -1335
1352:             slli         zero, gp, 18
1353:             srl          zero, s10, ra
                  auipc        t6, 606824
                  or           s6, a7, sp
                  bltu         gp, t5, 1368f
                  bltu         t2, t2, 1371f
                  bltu         s11, a1, 1375f
                  bge          s5, gp, 1369f
                  add          a5, t5, a2
1361:             and          a3, s9, a0
                  andi         s8, a5, 1845
                  ori          t1, s7, 1441
                  add          tp, gp, zero
                  sltu         s6, a5, t4
                  andi         a7, s0, 1251
                  sll          t0, s10, s11
1368:             nop
1369:             bge          a1, gp, 1370f
1370:             sltiu        a1, s5, -1052
1371:             lui          s0, 283890
                  sltu         s0, a3, gp
                  blt          a0, a5, 1385f
                  slt          a3, s8, a5
1375:             add          a6, s8, s5
                  slli         zero, a6, 3
                  bltu         gp, a0, 1383f
                  sltu         t1, t4, sp
                  srli         a7, s3, 24
                  beq          t6, a0, 1400f
                  sltiu        s11, t1, 1705
                  blt          sp, a3, 1385f
1383:             slt          t1, a4, a4
                  bltu         t2, t5, 1401f
1385:             sub          s9, a4, t3
                  bne          a5, gp, 1395f
                  ori          gp, a7, -1982
                  or           gp, gp, tp
                  and          ra, zero, s0
                  andi         s1, gp, -776
                  add          s1, a4, a3
                  sra          a0, a4, s9
                  addi         t0, a1, -1706
                  xori         s0, ra, -670
1395:             sltiu        a7, tp, -1614
                  bgeu         s8, s11, 1401f
                  sll          a0, zero, sp
                  sub          t3, s11, a6
                  bge          a0, t3, 1410f
1400:             andi         s2, t4, -1035
1401:             addi         a1, s8, 611
                  sltu         zero, s10, s11
                  srai         a4, s9, 21
                  blt          t0, a1, 1416f
                  sub          a1, t3, a4
                  sra          a4, s4, s6
                  bltu         s2, s11, 1418f
                  sub          a2, s11, a5
                  sll          a3, s8, t2
1410:             bne          s6, s0, 1418f
                  slt          s9, tp, ra
                  auipc        s6, 509616
                  sltu         t0, tp, s5
                  srl          a4, t2, gp
                  sll          a3, tp, s0
1416:             add          a7, s4, s10
                  ori          gp, s6, -700
1418:             sll          s11, t4, tp
                  srai         a4, s8, 13
                  addi         a2, s1, 1419
                  lw           t1, 4(s10)
                  and          a4, a0, a2
                  sltiu        s8, s8, -1109
                  slli         s6, s10, 20
                  sub          zero, s4, s0
                  addi         s10, s10, 8
                  lui          ra, 1021292
2109:             addi x23, x6, 0
2109:             jalr x23, x23, 0
sub_5:            ori          a0, a2, 784
                  sltu         s1, zero, s7
                  addi         a0, tp, 745
                  addi         s10, s10, -20
                  sw           t1, 4(s10)
                  or           t0, s10, s3
                  sub          t2, ra, s4
sub_5_1:          jal          t1, 15f
0:                jal          t1, 18f
1:                jal          t1, 24f
2:                jal          ra, 13f
3:                jal          t1, 16f
4:                jal          ra, 9f
5:                jal          ra, 17f
6:                jal          t3, 2b
7:                jal          ra, 6b
8:                jal          a7, 19f
9:                jal          gp, 22f
10:               jal          ra, 11f
11:               jal          ra, 8b
12:               jal          t1, 7b
13:               jal          ra, 4b
14:               jal          ra, 10b
15:               jal          ra, 21f
16:               jal          ra, 14b
17:               jal          s0, 20f
18:               jal          ra, 3b
19:               jal          gp, 1b
20:               jal          t1, 0b
21:               jal          ra, 12b
22:               jal          ra, 23f
23:               jal          t3, 5b
24:               slt          s0, s6, gp
sub_5_0:          jal          t1, 24f
0:                jal          ra, 27f
1:                jal          t1, 18f
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          t1, 20f
5:                jal          ra, 17f
6:                jal          a0, 15f
7:                jal          ra, 21f
8:                jal          gp, 7b
9:                jal          ra, 5b
10:               jal          t6, 2b
11:               jal          ra, 12f
12:               jal          t1, 19f
13:               jal          ra, 26f
14:               jal          ra, 13b
15:               jal          t1, 4b
16:               jal          s1, 8b
17:               jal          ra, 22f
18:               jal          ra, 10b
19:               jal          t1, 0b
20:               jal          ra, 16b
21:               jal          ra, 28f
22:               jal          ra, 25f
23:               jal          tp, 11b
24:               jal          t1, 23b
25:               jal          a6, 14b
26:               jal          ra, 3b
27:               jal          ra, 9b
28:               andi         t2, s3, -58
                  lui          s0, 368601
                  bge          s2, a0, 15f
                  add          s11, s8, s2
                  addi         a4, s6, 1830
                  sll          t6, sp, s5
                  beq          s11, a0, 13f
                  blt          s4, s8, 7f
7:                bge          t1, t6, 25f
                  nop
                  bne          ra, a3, 28f
                  srl          tp, s8, a6
                  ori          s8, ra, -1944
                  xor          s11, a6, t2
13:               sub          s5, tp, s9
                  sub          zero, zero, s5
15:               sltu         t0, sp, a7
                  sra          s4, t2, a4
                  sltiu        t5, s8, -1461
                  andi         a3, a0, -744
                  bne          s6, s10, 25f
                  sltiu        t2, s2, 754
                  beq          a0, t4, 35f
                  bltu         a2, s7, 38f
                  slti         a3, s10, -118
                  srli         s6, a2, 8
25:               sra          tp, t6, s11
                  bltu         s0, a3, 45f
                  addi         a3, s2, 1573
28:               sltiu        a7, tp, 1126
                  blt          s6, tp, 32f
                  lui          s7, 886818
                  auipc        s2, 128216
32:               sltiu        s5, t0, 1812
                  sltu         a4, s1, s11
                  srli         a6, ra, 16
35:               bge          s2, s1, 46f
                  slti         s9, t2, -111
                  sltu         ra, s4, s10
38:               or           s8, s6, zero
                  add          s3, s6, gp
                  or           zero, s7, s2
                  xor          t3, a1, t0
                  sltu         a3, s11, s8
                  xor          zero, s4, t4
                  slti         t2, tp, -294
45:               sll          a5, s7, s6
46:               xor          a2, s5, a2
                  sltiu        s1, s9, 670
                  blt          s7, s7, 59f
                  bge          s8, t6, 52f
                  srli         s5, s1, 4
                  sub          s8, ra, t6
52:               slli         ra, tp, 29
                  slti         s7, s3, 1410
                  slti         s2, s4, 721
                  beq          t5, a0, 73f
                  addi         a6, s7, 1974
                  lui          t6, 184641
                  slli         s4, s8, 3
59:               sltiu        a0, t1, 1110
                  sub          ra, s9, s2
                  bge          a6, t3, 70f
                  slli         t1, a6, 13
                  slt          a2, s2, a1
                  sub          t1, t3, t1
                  sub          gp, zero, a0
                  sub          s3, s9, t1
                  auipc        a4, 974249
                  andi         zero, a0, -1204
                  blt          ra, t2, 85f
70:               blt          tp, s4, 83f
                  bgeu         a7, s0, 88f
                  sltu         s4, t6, t0
73:               and          s8, tp, t3
                  or           a5, a0, gp
                  sra          s7, t3, t4
                  nop
                  sltiu        a0, s4, -755
                  bgeu         t5, s4, 87f
                  sra          s2, s7, a5
                  add          tp, a6, sp
                  srl          a1, gp, s2
                  nop
83:               srai         s7, t6, 26
                  srl          t1, gp, gp
85:               ori          s1, s5, -556
                  beq          s8, s0, 98f
87:               srai         s2, s3, 3
88:               addi         t3, s1, 2033
                  sra          t5, zero, sp
                  andi         s8, t3, 1213
                  sra          zero, t5, s2
                  blt          s5, a1, 105f
                  lui          ra, 298807
                  slli         s7, a4, 26
                  bge          a4, a3, 103f
                  and          a7, gp, a6
                  slt          ra, a1, zero
98:               add          tp, s7, s10
                  srai         ra, a6, 18
                  xor          s0, s5, a5
                  srli         ra, a7, 11
                  srl          zero, s10, s9
103:              add          t1, t3, a6
                  xori         s0, s2, 825
105:              sll          t5, s7, sp
                  lw           t1, 4(s10)
                  sll          zero, s0, t1
                  sra          ra, t4, tp
                  slli         zero, s0, 1
                  auipc        t6, 752333
                  or           s5, zero, sp
                  addi         s10, s10, 20
                  slli         s11, tp, 1
177:              addi x8, x6, 1
177:              jalr x8, x8, 0
sub_1:            slt          t5, a7, s9
                  slti         t3, t0, 554
                  ori          zero, t3, -665
                  nop
                  blt          t5, s7, sub_1_stack_p
                  add          t5, a5, a7
sub_1_stack_p:    addi         s10, s10, -48
                  sw           t1, 4(s10)
                  sll          a4, sp, ra
                  sub          t3, a3, sp
                  sll          s3, a2, a1
                  and          s6, a3, t2
                  addi         s6, a3, -1004
                  sll          a3, tp, s1
                  srai         s1, s4, 20
                  and          s6, s6, a0
                  andi         s6, gp, -1899
                  srai         t0, s10, 24
                  xor          tp, a7, ra
                  bgeu         s1, s3, sub_1_j4 #branch to jump instr
                  srl          s1, a4, tp
                  xor          tp, s6, s1
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
sub_1_2:          jal          t1, 13f
0:                jal          a1, 21f
1:                jal          a4, 2f
2:                jal          ra, 22f
3:                jal          ra, 18f
4:                jal          ra, 7f
5:                jal          t1, 25f
6:                jal          s1, 24f
7:                jal          ra, 1b
8:                jal          t5, 10f
9:                jal          t1, 11f
10:               jal          s8, 6b
11:               jal          ra, 14f
12:               jal          t1, 0b
13:               jal          ra, 3b
14:               jal          ra, 5b
15:               jal          t1, 17f
16:               jal          t1, 23f
17:               jal          ra, 4b
18:               jal          ra, 19f
19:               jal          ra, 8b
20:               jal          a4, 16b
21:               jal          ra, 9b
22:               jal          ra, 20b
23:               jal          ra, 12b
24:               jal          ra, 15b
25:               and          a3, zero, s6
sub_1_3:          jal          t1, 6f
0:                jal          ra, 3f
1:                jal          ra, 9f
2:                jal          ra, 7f
3:                jal          t1, 5f
4:                jal          t0, 0b
5:                jal          s0, 2b
6:                jal          ra, 8f
7:                jal          ra, 10f
8:                jal          t3, 1b
9:                jal          s1, 4b
10:               sltiu        t0, t2, 394
sub_1_5:          jal          t1, 7f
0:                jal          a2, 1f
1:                jal          s5, 12f
2:                jal          s4, 0b
3:                jal          ra, 9f
4:                jal          t1, 2b
5:                jal          gp, 4b
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          t1, 6b
9:                jal          ra, 11f
10:               jal          s9, 3b
11:               jal          s2, 5b
12:               slli         t0, s10, 27
sub_1_0:          jal          t1, 0f
0:                jal          t0, 11f
1:                jal          ra, 7f
2:                jal          ra, 17f
3:                jal          ra, 5f
4:                jal          t1, 6f
5:                jal          ra, 19f
6:                jal          ra, 14f
7:                jal          t1, 4b
8:                jal          ra, 9f
9:                jal          ra, 1b
10:               jal          a0, 24f
11:               jal          a5, 22f
12:               jal          ra, 15f
13:               jal          t1, 18f
14:               jal          a2, 10b
15:               jal          s2, 3b
16:               jal          ra, 20f
17:               jal          a2, 12b
18:               jal          ra, 8b
19:               jal          ra, 21f
20:               jal          t1, 13b
21:               jal          ra, 23f
22:               jal          t1, 2b
23:               jal          s2, 16b
24:               slli         s4, sp, 21
sub_1_4:          jal          t1, 16f
0:                jal          ra, 17f
1:                jal          t1, 15f
2:                jal          tp, 0b
3:                jal          s4, 7f
4:                jal          t0, 3b
5:                jal          a1, 13f
6:                jal          t1, 9f
7:                jal          ra, 10f
8:                jal          ra, 2b
9:                jal          gp, 12f
10:               jal          ra, 11f
11:               jal          ra, 1b
12:               jal          s8, 8b
13:               jal          ra, 14f
14:               jal          ra, 6b
15:               jal          ra, 5b
16:               jal          ra, 4b
17:               sll          a6, gp, t2
                  srai         t6, s8, 26
                  addi         s1, t1, -63
                  slti         gp, s4, -2017
                  or           t1, a4, s8
                  and          a3, s11, t0
                  add          s11, t3, s7
                  or           s9, t6, a3
                  sub          t2, t4, s10
                  andi         a5, s4, -949
                  bne          tp, s0, 11f
                  sltiu        s3, a2, -1672
11:               srl          zero, zero, sp
                  lui          t5, 135067
                  andi         a0, s9, -1032
                  xor          a2, a7, s9
                  sltu         t3, t4, t2
                  srai         t5, sp, 26
                  sub          s0, t5, s1
                  bge          s11, s4, 24f
                  slti         a2, t2, -1341
                  nop
                  ori          a2, gp, -97
                  srai         s2, s11, 16
                  bge          t3, ra, 42f
24:               bltu         a6, a5, 31f
                  sub          gp, sp, t3
                  addi         s7, gp, 243
                  add          a3, s3, t1
                  lui          s0, 210623
                  blt          t6, t5, 34f
                  ori          ra, zero, 690
31:               beq          a3, s6, 35f
                  andi         zero, a1, -1550
                  bgeu         s2, s7, 47f
34:               sra          s2, s7, t1
35:               beq          s4, s5, 41f
                  xor          t6, s2, tp
                  sra          s1, s2, s0
                  nop
                  srl          s8, a3, s0
                  sltu         s6, a2, sp
41:               bge          zero, s9, 49f
42:               bne          a3, a6, 51f
                  bge          a7, t3, 59f
                  add          gp, s8, tp
                  blt          s0, s1, 46f
46:               lui          a4, 1036798
47:               auipc        t0, 230219
                  lui          t3, 44957
49:               andi         a6, a4, 496
                  bltu         s8, s8, 69f
51:               slli         s5, s9, 16
                  addi         s9, gp, -664
                  sltiu        t1, a6, 42
                  sltiu        zero, s9, -1832
                  auipc        t0, 826836
                  bge          s3, zero, 73f
                  auipc        s9, 1007488
                  addi         a6, tp, 1076
59:               sra          s11, s9, t1
                  xori         s2, sp, 121
                  or           a6, ra, gp
                  srai         s3, s10, 1
                  or           s7, s4, s3
                  andi         t3, s1, -1474
                  srai         a2, s2, 1
                  sub          gp, zero, s1
                  or           t2, t2, t5
                  slt          s4, s5, s8
69:               or           gp, a4, t5
                  slt          s7, s10, t3
                  sltu         t0, t2, ra
                  bgeu         a6, s3, 90f
73:               bltu         ra, t4, 81f
                  slt          a1, s7, a1
                  nop
                  beq          a0, t5, 93f
                  slli         a5, sp, 16
                  auipc        s6, 257882
                  bne          s10, a0, 95f
                  bge          t6, s3, 99f
81:               slti         t6, t1, -1906
                  beq          s9, a4, 87f
                  blt          ra, ra, 89f
                  bltu         s4, s8, 92f
                  xori         ra, a5, 619
                  sltu         a6, s11, a1
87:               srai         a0, a4, 0
                  bltu         a5, s0, 105f
89:               ori          ra, zero, 1159
90:               and          s1, sp, s10
                  and          a2, s10, a6
92:               sub          s11, s11, a4
93:               or           s4, a0, s2
                  addi         gp, t4, -639
95:               ori          a2, a1, 1846
                  ori          a6, s11, -1186
                  srai         s9, t6, 9
                  ori          a0, t6, -1751
99:               or           ra, a1, s2
                  sub          s5, s5, t1
                  or           tp, s5, ra
                  sra          s1, t4, ra
                  srli         gp, s2, 14
                  and          a7, t4, tp
105:              nop
                  andi         a3, s7, 433
                  and          s11, a3, t4
                  slt          s6, a5, tp
                  srai         s6, t0, 28
                  sll          a5, a5, s9
                  srli         a7, s9, 13
                  beq          zero, s3, 130f
                  add          s7, a7, ra
                  sltiu        tp, a0, -165
                  or           s5, s6, zero
                  blt          s7, t6, 126f
                  add          gp, s9, s0
                  slt          ra, a2, s8
                  add          t3, t6, s1
                  sltiu        s4, t2, -304
                  add          a7, a4, t0
                  nop
                  sra          s5, s1, zero
                  blt          t6, s1, 134f
                  srai         a2, a1, 24
126:              xor          t5, t6, s6
                  nop
                  bgeu         s4, a7, 131f
                  bgeu         s7, a5, 132f
130:              slli         t6, s5, 23
131:              sub          a6, s5, s0
132:              slt          t1, s10, a7
                  srl          s11, s4, a7
134:              nop
                  slt          a2, s7, s8
                  and          t2, ra, t6
                  sub          s8, t4, t3
                  xor          t0, s2, s11
                  sll          t2, a4, s3
                  or           a2, t2, a5
                  nop
                  auipc        s6, 699386
                  srl          s11, tp, tp
                  sra          gp, gp, t4
                  bne          s9, s0, 164f
                  add          s0, s8, s11
                  bltu         a3, s8, 149f
                  blt          gp, s8, 154f
149:              ori          t3, t4, 1937
                  srli         t6, s4, 8
                  nop
                  slt          a6, a4, s3
                  slti         s5, s11, -545
154:              bge          s7, ra, 157f
                  or           a0, gp, t6
                  bne          a1, a2, 161f
157:              beq          sp, a4, 171f
                  srai         ra, a4, 15
                  bne          a0, a7, 167f
                  sltiu        gp, t6, 1872
161:              blt          s7, a0, 167f
                  srai         t1, s11, 24
                  sll          s5, ra, s9
164:              ori          a3, s2, -165
                  addi         gp, sp, -1564
                  sll          s9, a5, a6
167:              srai         ra, t0, 13
                  srl          gp, s10, ra
                  add          s0, gp, t1
                  bne          gp, ra, 174f
171:              slt          a0, t2, s8
                  auipc        s3, 52058
                  srl          zero, s0, s0
174:              xori         a6, s8, 812
                  sub          a7, t5, a5
                  srli         s6, t2, 13
                  bgeu         zero, a0, 178f
178:              srai         s5, a4, 30
                  add          s8, s6, t5
                  srl          s4, a1, s11
                  bgeu         a5, s3, 189f
                  srl          tp, s10, s10
                  addi         a2, sp, 582
                  srl          ra, a7, tp
                  auipc        ra, 327890
                  srli         s2, a5, 13
                  xori         zero, s1, -611
                  slli         s4, s1, 13
189:              bltu         s0, s0, 208f
                  auipc        a5, 895799
                  sltiu        gp, s0, 313
                  bgeu         t4, t5, 211f
                  srli         a7, s10, 25
                  beq          a3, s6, 203f
                  ori          s8, a6, 471
                  bltu         a7, a2, 212f
                  sra          a7, a1, s11
                  sltu         s5, a7, tp
                  and          s9, t4, s0
                  xori         s6, s11, -1356
                  xori         t5, a4, 1901
                  slt          t1, s10, tp
203:              bge          t5, a4, 210f
                  slt          s1, s5, s10
                  nop
                  auipc        s8, 992341
                  sltu         s5, s5, s0
208:              blt          s11, t2, 210f
                  addi         s5, t5, 136
210:              slli         s4, t1, 17
211:              andi         a4, zero, -1971
212:              srl          a3, a7, tp
                  slt          t2, a1, zero
                  bgeu         zero, t4, 224f
                  bgeu         sp, s11, 234f
                  bge          s11, t4, 233f
                  srl          t0, s11, s7
                  sll          s1, t0, s9
                  slli         s8, zero, 2
                  srai         a6, s11, 23
                  xori         s1, a7, 1408
                  bgeu         a5, t0, 239f
                  add          t0, tp, s7
224:              bge          gp, ra, 229f
                  bgeu         t4, t4, 241f
                  blt          zero, gp, 232f
                  sra          a5, a4, t5
                  ori          s7, s3, 301
229:              xor          t6, ra, s0
                  srai         a5, a0, 13
                  bgeu         s6, s0, 241f
232:              auipc        t1, 1002111
233:              and          ra, s5, s11
234:              addi         s1, t2, -770
                  xori         a4, ra, 430
                  or           gp, t2, s5
                  sra          t5, t2, s3
                  bgeu         tp, s1, 246f
239:              addi         a4, a3, -933
                  sltiu        s4, s2, 867
241:              sltu         ra, a5, s9
                  srl          t6, sp, t5
                  sub          tp, zero, a2
                  ori          s8, t5, -1924
                  andi         s0, ra, -1264
246:              beq          a7, a2, 248f
                  bne          t6, t6, 265f
248:              bge          s5, t3, 266f
                  ori          s5, a0, -517
                  beq          s8, t3, 267f
                  bge          a5, ra, 254f
                  srl          a6, s8, t4
                  srai         t3, t4, 31
254:              addi         a6, t2, 1817
                  srli         a6, s0, 3
                  sltiu        s2, a2, 116
                  or           s7, ra, s8
                  and          t6, t3, t0
                  slti         t5, t5, 986
                  bge          zero, s6, 279f
                  lui          t3, 117298
                  lui          s3, 508464
                  nop
                  auipc        a4, 452072
265:              sltiu        a2, s2, 9
266:              lui          s1, 37338
267:              addi         s1, s0, -1957
sub_1_1:          jal          t1, 26f
0:                jal          ra, 11f
1:                jal          t1, 20f
2:                jal          ra, 1b
3:                jal          ra, 7f
4:                jal          ra, 17f
5:                jal          t1, 10f
6:                jal          t0, 18f
7:                jal          ra, 12f
8:                jal          t1, 0b
9:                jal          s2, 30f
10:               jal          t1, 16f
11:               jal          ra, 27f
12:               jal          ra, 21f
13:               jal          t6, 23f
14:               jal          a0, 4b
15:               jal          ra, 14b
16:               jal          ra, 2b
17:               jal          ra, 24f
18:               jal          t1, 8b
19:               jal          t2, 28f
20:               jal          ra, 15b
21:               jal          ra, 9b
22:               jal          s0, 5b
23:               jal          t2, 6b
24:               jal          s5, 19b
25:               jal          ra, 22b
26:               jal          ra, 25b
27:               jal          tp, 29f
28:               jal          t0, 13b
29:               jal          tp, 3b
30:               add          s2, s0, s10
                  xori         s11, t6, 158
                  bne          s1, tp, 276f
                  ori          s3, s7, 498
                  lui          s9, 250257
                  xori         s7, t0, 1789
                  slli         t0, s8, 24
                  bge          t6, s10, 293f
                  srai         t3, a1, 11
276:              andi         s7, a2, -587
                  slt          a7, t4, t1
                  ori          s7, s0, -1891
279:              sltu         s1, s0, a4
                  nop
                  ori          a7, s5, 1010
                  or           a3, s8, s3
                  slt          s2, sp, t6
                  beq          a1, s11, 294f
                  or           t5, s2, a5
                  nop
                  andi         s5, s0, -1353
                  ori          s7, ra, -559
                  slti         a3, a0, 154
                  sltu         s5, s5, s1
                  blt          t4, t2, 296f
                  and          s2, a6, a4
293:              sltiu        t5, s3, -1843
294:              bge          s2, t0, 304f
                  sub          t0, a2, t2
296:              xori         s6, t6, -423
                  bge          a4, s2, 303f
                  addi         a0, s0, -563
                  bge          t4, t5, 304f
                  blt          s3, s0, 304f
                  lui          s6, 192919
                  bltu         s0, sp, 303f
303:              sltiu        t5, t6, 1033
304:              slt          t6, s5, a4
                  srl          s4, sp, tp
                  sub          s6, tp, zero
                  lw           t1, 4(s10)
                  addi         s10, s10, 48
                  srai         s9, zero, 0
                  slli         s9, a6, 24
                  sll          s11, s1, s8
                  xori         t5, s7, -848
                  xor          t5, t6, s2
467:              addi x8, x6, 0
467:              jalr x8, x8, 0
sub_2:            srli         a3, s0, 15
                  lui          s2, 349691
                  sltu         t2, t0, a2
                  or           s2, s10, a6
                  addi         s10, s10, -52
                  slti         s9, a7, -1436
                  sw           t1, 4(s10)
                  srli         s8, s4, 12
sub_2_2:          jal          t1, 24f
0:                jal          ra, 14f
1:                jal          ra, 22f
2:                jal          t1, 26f
3:                jal          ra, 13f
4:                jal          ra, 8f
5:                jal          t1, 12f
6:                jal          ra, 16f
7:                jal          ra, 1b
8:                jal          t1, 9f
9:                jal          ra, 19f
10:               jal          ra, 23f
11:               jal          ra, 25f
12:               jal          gp, 27f
13:               jal          t1, 4b
14:               jal          ra, 15f
15:               jal          ra, 2b
16:               jal          ra, 7b
17:               jal          ra, 10b
18:               jal          t1, 0b
19:               jal          gp, 18b
20:               jal          ra, 28f
21:               jal          t1, 11b
22:               jal          a5, 20b
23:               jal          ra, 6b
24:               jal          gp, 3b
25:               jal          tp, 5b
26:               jal          ra, 21b
27:               jal          ra, 17b
28:               slti         a6, s6, -1213
sub_2_7:          jal          t1, 4f
0:                jal          ra, 9f
1:                jal          ra, 11f
2:                jal          gp, 5f
3:                jal          s7, 25f
4:                jal          ra, 14f
5:                jal          ra, 6f
6:                jal          s3, 0b
7:                jal          ra, 8f
8:                jal          a0, 26f
9:                jal          gp, 1b
10:               jal          ra, 23f
11:               jal          ra, 16f
12:               jal          ra, 21f
13:               jal          ra, 19f
14:               jal          ra, 20f
15:               jal          ra, 24f
16:               jal          ra, 22f
17:               jal          ra, 10b
18:               jal          t1, 17b
19:               jal          gp, 2b
20:               jal          ra, 27f
21:               jal          ra, 7b
22:               jal          t1, 15b
23:               jal          ra, 3b
24:               jal          ra, 28f
25:               jal          a5, 12b
26:               jal          ra, 13b
27:               jal          ra, 18b
28:               and          t3, t6, a6
sub_2_1:          jal          t1, 19f
0:                jal          s6, 8f
1:                jal          a2, 10f
2:                jal          t1, 17f
3:                jal          ra, 4f
4:                jal          t1, 2b
5:                jal          a1, 7f
6:                jal          t1, 16f
7:                jal          a5, 14f
8:                jal          ra, 11f
9:                jal          ra, 15f
10:               jal          ra, 9b
11:               jal          a4, 6b
12:               jal          ra, 5b
13:               jal          gp, 18f
14:               jal          ra, 3b
15:               jal          s0, 12b
16:               jal          ra, 1b
17:               jal          ra, 13b
18:               jal          ra, 20f
19:               jal          t1, 0b
20:               srl          t6, s10, s6
sub_2_3:          jal          t1, 17f
0:                jal          t1, 13f
1:                jal          t1, 10f
2:                jal          ra, 14f
3:                jal          ra, 7f
4:                jal          ra, 19f
5:                jal          s3, 18f
6:                jal          ra, 2b
7:                jal          ra, 20f
8:                jal          s9, 11f
9:                jal          ra, 16f
10:               jal          a6, 15f
11:               jal          s7, 1b
12:               jal          tp, 3b
13:               jal          ra, 9b
14:               jal          ra, 0b
15:               jal          ra, 4b
16:               jal          ra, 5b
17:               jal          tp, 6b
18:               jal          ra, 8b
19:               jal          a5, 12b
20:               ori          s11, ra, -836
sub_2_6:          jal          t1, 1f
0:                jal          ra, 12f
1:                jal          s0, 10f
2:                jal          s7, 11f
3:                jal          ra, 6f
4:                jal          t1, 13f
5:                jal          t1, 2b
6:                jal          s6, 5b
7:                jal          s5, 8f
8:                jal          ra, 14f
9:                jal          t1, 4b
10:               jal          gp, 3b
11:               jal          ra, 9b
12:               jal          t1, 7b
13:               jal          t1, 0b
14:               slti         s1, a7, 2003
sub_2_12:         jal          t1, 5f
0:                jal          tp, 22f
1:                jal          t1, 12f
2:                jal          ra, 0b
3:                jal          s1, 8f
4:                jal          s0, 19f
5:                jal          ra, 13f
6:                jal          t2, 16f
7:                jal          ra, 25f
8:                jal          t3, 2b
9:                jal          ra, 1b
10:               jal          ra, 15f
11:               jal          ra, 7b
12:               jal          a5, 17f
13:               jal          ra, 6b
14:               jal          t1, 11b
15:               jal          ra, 3b
16:               jal          ra, 23f
17:               jal          t1, 14b
18:               jal          t1, 9b
19:               jal          ra, 20f
20:               jal          ra, 24f
21:               jal          s1, 18b
22:               jal          ra, 4b
23:               jal          ra, 10b
24:               jal          tp, 21b
25:               srli         gp, s4, 3
sub_2_9:          jal          t1, 7f
0:                jal          t5, 4f
1:                jal          t1, 0b
2:                jal          ra, 13f
3:                jal          t1, 5f
4:                jal          ra, 9f
5:                jal          t1, 11f
6:                jal          s4, 12f
7:                jal          ra, 8f
8:                jal          ra, 3b
9:                jal          ra, 6b
10:               jal          s4, 2b
11:               jal          t1, 1b
12:               jal          ra, 10b
13:               srai         a4, tp, 14
sub_2_10:         jal          t1, 5f
0:                jal          ra, 11f
1:                jal          ra, 12f
2:                jal          ra, 0b
3:                jal          t0, 8f
4:                jal          s4, 14f
5:                jal          ra, 6f
6:                jal          t1, 10f
7:                jal          t1, 13f
8:                jal          t1, 1b
9:                jal          t1, 17f
10:               jal          ra, 16f
11:               jal          ra, 7b
12:               jal          t1, 4b
13:               jal          ra, 15f
14:               jal          ra, 2b
15:               jal          t1, 18f
16:               jal          ra, 9b
17:               jal          a0, 3b
18:               sltiu        t0, t5, 92
sub_2_0:          jal          t1, 9f
0:                jal          a0, 6f
1:                jal          ra, 10f
2:                jal          ra, 13f
3:                jal          t1, 0b
4:                jal          gp, 12f
5:                jal          t1, 16f
6:                jal          ra, 5b
7:                jal          a4, 8f
8:                jal          t1, 3b
9:                jal          ra, 15f
10:               jal          tp, 2b
11:               jal          t1, 17f
12:               jal          ra, 11b
13:               jal          t3, 14f
14:               jal          t1, 4b
15:               jal          t1, 7b
16:               jal          ra, 1b
17:               jal          s1, 18f
18:               sll          s6, a1, s10
sub_2_11:         jal          t1, 7f
0:                jal          a5, 12f
1:                jal          tp, 19f
2:                jal          ra, 17f
3:                jal          t1, 10f
4:                jal          t1, 22f
5:                jal          ra, 11f
6:                jal          ra, 25f
7:                jal          t1, 16f
8:                jal          t1, 9f
9:                jal          t2, 0b
10:               jal          s6, 26f
11:               jal          ra, 8b
12:               jal          gp, 3b
13:               jal          ra, 23f
14:               jal          ra, 15f
15:               jal          ra, 6b
16:               jal          t1, 13b
17:               jal          t1, 18f
18:               jal          t1, 4b
19:               jal          ra, 24f
20:               jal          t0, 14b
21:               jal          s3, 1b
22:               jal          gp, 21b
23:               jal          ra, 20b
24:               jal          ra, 5b
25:               jal          ra, 2b
26:               sra          tp, a4, sp
                  bltu         a2, s11, 4f
                  slli         s7, t5, 3
                  bge          ra, t6, 10f
                  auipc        s8, 773337
4:                sltiu        s2, s11, -1495
                  sll          s8, s6, t5
                  auipc        a3, 333574
                  beq          s0, s8, 13f
                  bgeu         t0, ra, 28f
                  bltu         tp, a5, 27f
10:               lui          s8, 683299
                  lui          zero, 456173
                  bltu         zero, a0, 23f
13:               slt          s5, a4, a6
                  sub          t1, s4, a3
                  bltu         s10, a5, 33f
                  bgeu         s7, t5, 28f
                  addi         gp, s8, -722
                  bne          t5, a1, 28f
                  bgeu         t0, a3, 29f
                  bge          ra, t5, 31f
                  srli         t0, a2, 18
                  sra          a1, s7, s1
23:               slli         t6, a6, 18
                  srli         s4, t4, 22
                  and          a1, a6, a5
                  andi         t6, zero, 174
27:               sub          s2, s7, s4
28:               srl          s7, ra, tp
29:               bltu         sp, s10, 36f
                  beq          a2, a3, 34f
31:               bge          ra, s11, 43f
                  blt          s8, a7, 49f
33:               slt          s1, s1, a7
34:               sub          s7, s0, a4
                  sll          s1, s9, s3
36:               xor          t1, a3, s9
                  andi         ra, t6, 498
                  sra          a6, t2, s2
                  bgeu         a7, a1, 53f
                  xor          a0, a3, s9
                  slt          s8, s5, s2
                  nop
43:               sltiu        s0, a3, 497
                  beq          t1, t3, 57f
                  addi         s2, a6, -1585
                  xori         ra, t6, -721
                  sra          t0, s4, a1
                  sltu         a3, s1, t2
49:               lui          gp, 7759
                  xor          s9, s4, s4
                  nop
                  sltu         ra, a7, s4
53:               bne          s1, sp, 69f
                  lui          t1, 521408
                  xori         a7, s11, -391
                  add          a0, a6, t1
57:               addi         t1, t6, -534
                  addi         t3, s0, 1566
                  andi         s2, a2, 1748
                  or           a1, s1, t6
                  srl          a0, s9, a4
                  and          gp, s4, a3
                  andi         s2, t0, -473
                  xor          s11, gp, a2
                  add          s4, s5, a5
                  add          a7, t2, gp
                  or           s0, a3, t4
                  srl          s8, t6, a3
69:               srli         s4, gp, 21
                  xori         s1, a7, -1401
                  srai         a0, t1, 16
                  bne          zero, a6, 74f
                  and          s7, a7, s6
74:               beq          t0, s6, 84f
                  srl          a3, ra, s1
                  srli         t3, t3, 28
                  lui          t3, 277525
                  srai         s4, s6, 16
                  slti         s4, zero, 856
                  or           s11, ra, a3
                  bge          s10, t3, 87f
                  bne          ra, s5, 100f
                  andi         s4, s0, -692
84:               bgeu         a5, a0, 102f
                  addi         ra, s3, -509
                  bne          t1, t6, 101f
87:               lui          a5, 223842
                  srai         s3, t1, 25
                  beq          a2, s8, 99f
                  add          s3, a5, a6
                  and          s0, s11, gp
                  and          s3, s3, s5
                  auipc        s2, 281387
                  auipc        s8, 477477
                  blt          s6, gp, 113f
                  slt          a1, s1, s6
                  srl          s3, a7, s0
                  beq          s11, t4, 102f
99:               bne          ra, a5, 104f
100:              blt          sp, sp, 101f
101:              srai         s2, a4, 0
102:              add          a5, a1, s9
                  bge          a0, s1, 117f
104:              auipc        s11, 792308
                  bge          t1, a2, 123f
                  sra          t6, gp, t0
                  sltiu        a7, t3, -80
                  blt          s2, t2, 120f
                  slli         t6, t6, 21
                  beq          ra, t0, 125f
                  sltiu        s8, a6, -1478
                  addi         tp, s10, 1006
113:              sll          t6, t6, a7
                  slti         s7, a5, -188
                  sltu         a0, s6, tp
                  bltu         a6, s3, 133f
117:              xori         t2, tp, 1537
                  lui          a5, 236993
                  xori         t3, zero, 434
120:              or           s7, s1, t2
                  or           a7, a7, s6
                  sltu         a0, a6, a3
123:              xori         s3, a0, 1521
                  sltu         a1, a4, t4
125:              srai         a3, a3, 5
                  srl          a0, s6, t0
                  bltu         a7, s10, 132f
                  lui          zero, 675047
                  nop
                  xori         s9, t1, -1127
                  srl          a0, a5, tp
132:              bgeu         a6, t2, 143f
133:              auipc        a7, 356280
                  add          ra, t4, a0
                  slti         t5, s2, 1758
                  slti         a0, t1, -267
                  sll          a5, s0, s1
                  xor          t5, s3, zero
                  and          t2, t6, a3
                  srl          a2, t4, s10
                  auipc        zero, 376818
                  bltu         zero, a7, 160f
143:              slli         t3, s7, 27
                  blt          t1, s9, 145f
145:              srl          tp, s3, sp
                  srai         s2, a1, 29
                  sltu         s6, s0, s10
                  blt          t0, t0, 154f
                  srli         t6, s6, 7
                  addi         s11, a2, -1555
                  slt          t0, a0, s10
                  xori         a5, ra, 106
                  xori         tp, sp, 1372
154:              blt          s3, a3, 158f
                  and          s1, a0, a4
                  slt          s8, a7, sp
                  and          s11, t2, t2
158:              nop
                  addi         t3, a2, -250
160:              andi         zero, s3, 659
                  slt          s6, s6, a3
                  or           s1, s5, s2
                  sltu         s9, s1, t0
                  addi         ra, s3, 1989
                  bgeu         ra, a5, 169f
                  bne          t5, t2, 182f
sub_2_4:          jal          t1, 0f
0:                jal          ra, 3f
1:                jal          ra, 5f
2:                jal          t1, 7f
3:                jal          ra, 8f
4:                jal          t1, 9f
5:                jal          t2, 4b
6:                jal          t1, 2b
7:                jal          ra, 1b
8:                jal          ra, 6b
9:                jal          ra, 10f
10:               or           t0, a2, s4
                  sub          s4, a0, gp
                  sub          s11, t5, zero
169:              xor          s4, s9, t1
                  andi         s3, s0, -1821
                  bltu         s11, t2, 173f
                  bge          s6, a2, 182f
173:              xori         t5, s8, 502
                  sra          a1, sp, a0
                  addi         s7, t4, 211
                  ori          ra, s2, 540
                  sub          s6, a5, a5
                  bgeu         a2, t1, 184f
                  sll          a2, tp, t1
                  sll          a7, t2, a6
                  slt          t2, s7, t4
182:              blt          s7, zero, 196f
                  sll          a6, t5, a6
184:              bge          tp, t1, 191f
                  addi         s6, t6, -1530
                  ori          gp, a6, 865
                  bne          tp, a3, 207f
                  nop
                  and          a6, a0, ra
                  blt          s0, s0, 204f
191:              addi         t0, a6, -185
                  addi         s9, t6, -263
                  or           s6, s3, s1
                  sll          a5, a5, a3
                  bgeu         a3, s1, 203f
196:              sltiu        s5, s5, 475
                  auipc        s11, 648728
                  sra          s11, a6, a2
                  sltiu        t1, s1, 1470
                  add          s4, a7, s2
                  andi         a0, a0, 1116
                  sltu         a1, s3, s0
203:              lui          s5, 504777
204:              sub          a4, s2, s6
                  bgeu         s10, t4, 216f
                  sltu         t0, t5, a3
207:              blt          s10, t5, 225f
                  slt          t2, a6, a7
                  xori         s7, t0, -940
                  bge          t3, s11, 222f
                  beq          t4, t5, 224f
                  srl          gp, a3, a7
                  andi         s9, a3, -271
                  sub          s7, a3, a2
                  bltu         s4, s8, 219f
216:              sltu         s11, a6, t6
                  sll          t6, s4, a6
                  or           s0, s4, s0
219:              nop
                  slli         a0, gp, 28
                  sltiu        t0, a4, -1732
222:              slti         a3, t2, 1182
                  bltu         a7, a3, 233f
224:              auipc        zero, 861318
225:              or           a0, s2, t1
                  sub          s4, a5, t3
                  lui          s5, 230493
                  or           s9, s10, s7
                  bltu         s8, t0, 239f
                  addi         s3, tp, -871
                  xori         t2, a7, -1290
                  or           a6, s3, t4
233:              bgeu         zero, s5, 243f
                  addi         s5, t3, 68
                  or           t3, zero, a7
                  srli         s2, zero, 15
                  bne          s9, a2, 255f
                  slt          zero, a1, t6
239:              sll          a5, a2, a7
                  xori         s9, tp, -1328
                  bltu         ra, a4, 259f
                  bltu         t3, a7, 255f
243:              xori         t2, a7, -1809
                  bltu         s11, s10, 255f
                  xor          a0, a1, a2
                  lui          t3, 946897
                  srli         t5, a2, 1
                  blt          sp, a5, 266f
                  blt          s10, s3, 250f
250:              xor          a0, t2, t0
                  sub          a2, s10, a3
                  sltiu        a7, sp, 8
                  sltiu        gp, s5, -811
                  srai         s2, s4, 8
255:              lui          t0, 991833
                  andi         s4, s5, 306
                  sltiu        s11, s0, -1800
                  slli         zero, s2, 13
259:              bltu         ra, s9, 269f
                  add          a6, t5, s10
                  sll          a4, t4, t2
                  blt          a3, a6, 280f
                  beq          s10, a4, 267f
                  srai         gp, s9, 18
                  blt          a2, ra, 277f
266:              andi         tp, s10, -1053
267:              andi         tp, a6, 917
                  bge          a0, s6, 272f
269:              sub          s8, a3, a5
                  slt          t6, s1, s6
                  srl          a1, t5, t3
272:              add          a3, t3, s4
                  add          t3, sp, t2
                  sll          s8, t4, t3
                  lui          s5, 293955
                  addi         a6, zero, 202
277:              or           t6, a4, t5
                  ori          t2, a2, -800
                  and          s11, s4, a2
280:              auipc        s4, 1014329
                  andi         a6, s8, -1003
                  beq          t3, s1, 299f
                  add          s3, s4, gp
                  andi         s2, a5, 716
                  bgeu         a5, a7, 303f
                  or           ra, gp, zero
                  slti         s1, sp, -1065
                  beq          a0, s8, 290f
                  xori         a4, s2, 883
290:              srli         t2, s11, 2
                  sltiu        s7, ra, -763
                  srai         a3, t4, 4
                  bne          a1, s8, 303f
                  bne          s11, sp, 314f
                  and          s8, s4, s2
                  bgeu         a7, t3, 306f
                  andi         a7, a6, -326
                  srli         t3, t1, 12
299:              slt          s1, s4, s0
                  sra          a7, s8, s9
                  nop
                  sra          a4, s6, a3
303:              bne          s8, sp, 311f
                  slt          a7, ra, s7
                  addi         s11, s9, -1772
306:              sra          a3, s5, t6
                  bne          t0, s6, 313f
                  sltiu        t5, tp, 1646
sub_2_5:          jal          t1, 16f
0:                jal          t1, 18f
1:                jal          ra, 11f
2:                jal          t1, 14f
3:                jal          ra, 26f
4:                jal          ra, 20f
5:                jal          ra, 17f
6:                jal          ra, 12f
7:                jal          tp, 10f
8:                jal          t1, 5b
9:                jal          ra, 24f
10:               jal          ra, 1b
11:               jal          ra, 22f
12:               jal          ra, 8b
13:               jal          s4, 0b
14:               jal          ra, 25f
15:               jal          ra, 19f
16:               jal          ra, 2b
17:               jal          ra, 3b
18:               jal          ra, 7b
19:               jal          t1, 6b
20:               jal          s7, 13b
21:               jal          ra, 9b
22:               jal          ra, 23f
23:               jal          t1, 15b
24:               jal          ra, 4b
25:               jal          ra, 21b
26:               sll          t6, s6, s0
                  sra          gp, a2, s10
                  beq          a6, s2, 324f
311:              sltiu        a4, s5, -1810
                  ori          a1, t4, 1170
313:              bne          s6, s9, 323f
314:              sltu         a1, s1, tp
                  and          a4, a6, a3
                  bge          t0, s5, 330f
                  add          a7, t3, a5
                  beq          a7, t3, 336f
                  lui          t0, 962153
                  sltu         a1, t3, a7
                  bltu         s7, ra, 339f
                  bgeu         s8, sp, 338f
323:              srai         tp, t2, 29
324:              srai         t0, s1, 15
                  bne          s9, s4, 337f
                  and          gp, sp, t0
                  addi         zero, s7, -1615
                  slt          s1, s0, s3
                  addi         ra, a5, -561
330:              blt          a0, a7, 335f
                  xori         s9, t1, -1444
                  sub          a1, a4, s9
                  or           s8, a0, s5
                  andi         t1, s4, -237
335:              auipc        s5, 630200
336:              lui          s0, 706803
337:              bltu         s3, a0, 352f
338:              srli         ra, s3, 8
339:              xor          t5, tp, zero
                  srli         a4, a3, 21
                  nop
                  sub          a6, s3, t2
                  srli         s7, gp, 8
                  blt          a6, gp, 351f
                  beq          s8, s10, 349f
                  xori         s1, s9, 337
                  auipc        ra, 964680
                  sll          t6, s7, ra
349:              slli         s3, sp, 30
                  lui          a2, 475697
351:              auipc        s1, 440104
352:              srl          s3, s8, s1
                  slli         t6, zero, 7
                  srai         s7, t4, 17
                  srai         s7, s9, 13
                  bltu         a7, gp, 362f
                  sub          s11, a1, s9
                  andi         a3, a5, -1276
                  blt          s4, t6, 370f
                  srli         s5, s11, 25
                  lui          s5, 771390
362:              srli         s0, s5, 17
                  and          s5, t5, s1
                  slt          s1, zero, s1
                  bgeu         a0, a2, 370f
                  blt          ra, s4, 370f
                  sll          t6, t0, tp
                  lui          t0, 496183
                  blt          a7, a1, 387f
370:              xor          t3, s6, a4
                  srli         s0, s1, 18
                  blt          t5, sp, 380f
                  bltu         zero, s5, 387f
                  or           a6, t4, s9
                  srli         s9, a6, 17
                  beq          s5, a3, 392f
                  srai         t1, t3, 1
                  sll          t2, t4, a0
                  xor          s8, t6, tp
380:              or           t0, s11, a6
                  xori         t0, a2, -1702
                  slt          s3, s7, ra
                  sltiu        a1, gp, -2025
                  auipc        s8, 875442
                  addi         ra, s8, -1228
                  slti         gp, t6, 984
387:              auipc        a6, 202512
                  srli         s3, s6, 4
                  slt          a4, s6, sp
                  bge          tp, s7, 396f
                  and          t6, a4, t0
392:              slti         s6, tp, 1438
                  srl          s9, gp, zero
                  blt          a1, s11, 404f
                  bltu         a6, s4, 412f
396:              or           gp, s6, s6
                  ori          t1, s4, -1602
                  and          s0, gp, ra
                  bgeu         tp, t1, 413f
                  bne          s5, a1, 418f
                  srl          s3, t5, s5
                  auipc        s2, 595089
                  sra          s6, s0, sp
404:              sra          t0, sp, t0
                  xori         a7, s2, 814
                  bltu         tp, s7, 419f
                  xor          s9, s5, t5
                  srai         s4, a1, 30
                  beq          s7, s2, 419f
                  bge          a1, s6, 430f
                  sll          t0, s2, s1
412:              bgeu         t1, s5, 423f
413:              sub          s5, s8, s5
                  and          t5, a5, a0
                  ori          t2, t6, -1076
                  srli         a6, a5, 19
                  addi         t6, t1, -418
418:              xori         s4, s8, -959
419:              andi         a1, a3, 927
                  bgeu         a6, s3, 438f
                  bgeu         t3, s4, 428f
                  andi         s11, s6, -782
423:              xori         a4, a6, -527
                  bltu         s11, s1, 428f
                  nop
                  or           s9, s8, t2
                  bge          s7, s0, 428f
428:              slli         s11, tp, 31
                  auipc        s8, 583634
430:              auipc        a5, 564081
                  andi         s8, t2, -666
                  bge          t2, s0, 444f
                  or           a3, a3, s1
                  srl          t5, sp, t1
                  bgeu         t1, s10, 450f
                  xor          gp, s4, s1
                  sra          ra, sp, s11
438:              add          tp, s5, s0
                  nop
                  and          a2, a5, s11
                  srli         s3, gp, 20
                  srai         a5, a0, 12
                  bltu         s2, gp, 449f
444:              ori          s11, a1, -1858
                  sra          t1, ra, t5
                  slt          a7, sp, a3
                  sltu         t0, a7, a2
                  sra          t5, s10, s5
449:              bge          t5, s5, 460f
450:              beq          s9, zero, 460f
                  beq          s7, t4, 463f
                  addi         s5, a3, 166
                  auipc        t2, 218318
                  auipc        t0, 386747
                  ori          a2, s2, 542
                  xori         tp, a6, -249
                  auipc        t0, 821336
                  add          a5, s9, a4
                  or           t1, a3, s0
460:              beq          a5, s3, 478f
                  xor          ra, a4, tp
                  addi         t5, sp, 1102
463:              beq          a5, s7, 473f
                  sltu         s5, s2, tp
                  sra          t1, gp, s8
                  xori         s4, t6, -1581
                  xor          tp, s1, a4
                  srai         a0, t3, 17
                  add          s8, ra, a3
                  srl          s6, s4, s4
                  andi         s9, s8, 1302
                  sll          s0, a4, gp
473:              slli         ra, a1, 17
                  sltiu        a2, s4, -1246
                  xori         s3, a4, -1887
                  xor          s5, s8, a1
                  xor          a5, t0, t5
478:              bltu         s7, t5, 482f
                  sltiu        s0, t3, 21
                  add          zero, ra, s4
                  ori          gp, a3, 400
482:              srli         t1, t4, 24
                  slli         a4, s1, 22
                  slli         a7, s5, 17
                  auipc        s5, 393712
                  auipc        s3, 776138
                  blt          s1, s0, 505f
                  sll          t6, zero, a3
                  ori          tp, s10, 153
                  slti         s0, t6, -629
                  add          zero, sp, a2
                  srl          s9, s2, s8
                  blt          t5, t2, 495f
                  lui          t5, 414616
495:              slti         a7, a5, -217
                  srli         s2, s1, 17
                  bgeu         a5, s5, 503f
                  bne          s2, a0, 500f
                  andi         zero, s4, 1731
500:              sra          s11, s5, t2
                  sltu         t0, s3, a0
                  add          ra, a0, t5
503:              bge          s1, t4, 515f
                  sll          s5, a1, s2
505:              srli         s7, t5, 6
                  auipc        a4, 218424
                  or           s4, s11, a0
                  auipc        tp, 407493
                  lui          tp, 510064
                  sra          a0, t4, a3
                  srl          tp, sp, t6
                  addi         s7, t0, 452
                  auipc        a1, 518843
                  bgeu         sp, a5, 519f
515:              sltu         s3, a5, t6
                  slli         a2, t5, 15
                  srl          s7, a3, s0
                  bge          a5, a4, 536f
519:              srl          s1, s3, s9
                  sra          s7, t3, t1
                  nop
                  sltiu        t6, s8, -693
                  sltiu        a2, s3, 481
                  bltu         s9, t3, 532f
                  sra          a6, s4, ra
                  xori         zero, t0, -879
                  auipc        s7, 807982
                  slti         s11, t6, -1219
                  nop
                  beq          tp, t3, 544f
                  srai         s3, a5, 18
532:              sll          s9, s7, a3
                  slli         s2, s2, 6
                  bne          s1, s6, 538f
                  beq          a3, t1, 553f
536:              bge          a7, s5, 551f
                  bne          tp, a4, 548f
538:              srai         t3, a3, 8
                  xori         s8, t6, 137
                  ori          t0, s3, -1788
                  beq          gp, t6, 542f
542:              slt          a0, s2, s0
                  beq          t3, t0, 547f
544:              sltu         ra, sp, a3
                  sll          zero, a2, s8
                  slti         a3, s1, -1022
547:              and          ra, s2, a3
548:              bgeu         a0, zero, 559f
                  srli         s11, tp, 12
                  or           a0, a5, s6
551:              lui          s7, 979661
                  srli         t6, s0, 20
553:              slli         a3, t1, 15
                  srl          zero, t3, t2
                  sub          s1, s1, a1
                  sltu         s9, s3, t1
                  sub          s0, t4, zero
                  addi         s9, a5, -557
559:              srli         t2, gp, 19
                  addi         s5, s8, -1422
                  slt          s3, s4, s6
                  addi         t6, s8, -624
                  bge          a4, a4, 581f
                  sltu         t6, s6, s11
                  srl          a2, ra, a3
                  sltu         a0, s4, a2
                  nop
                  sll          t3, zero, s6
                  sra          a4, t1, a5
                  auipc        a7, 366378
                  auipc        t0, 559366
                  lui          s3, 212953
                  xor          s4, s9, s0
                  bltu         t6, gp, 594f
                  bltu         ra, a7, 579f
                  xor          a5, sp, t1
                  andi         ra, a4, -1011
                  sub          s0, gp, s3
579:              xor          s8, s6, a6
                  srai         gp, t6, 5
581:              blt          a3, t4, 595f
                  bge          s11, t0, 599f
                  andi         s11, t2, -1736
                  lui          t0, 731699
                  add          a7, gp, s1
                  beq          a7, tp, 596f
                  bne          a1, s7, 597f
                  blt          a6, a2, 606f
                  bge          a5, t6, 601f
                  auipc        a4, 688555
                  add          s8, gp, a7
                  blt          t4, s10, 599f
                  bge          t3, s9, 603f
594:              and          s3, s1, a0
595:              sll          a3, a5, t5
596:              slt          t2, s11, t2
597:              bne          s9, s1, 603f
                  and          t6, tp, a7
599:              andi         a4, ra, -731
                  bgeu         s7, s11, 613f
601:              lui          a0, 416077
                  bge          s1, a4, 612f
603:              or           a4, s5, t3
                  nop
                  bgeu         s8, s9, 621f
sub_2_8:          jal          t1, 24f
0:                jal          ra, 26f
1:                jal          t1, 19f
2:                jal          t6, 9f
3:                jal          ra, 15f
4:                jal          ra, 22f
5:                jal          ra, 6f
6:                jal          s6, 21f
7:                jal          ra, 13f
8:                jal          t1, 18f
9:                jal          t1, 29f
10:               jal          t0, 0b
11:               jal          s9, 25f
12:               jal          t1, 5b
13:               jal          t1, 27f
14:               jal          ra, 28f
15:               jal          s8, 20f
16:               jal          ra, 7b
17:               jal          a1, 14b
18:               jal          t1, 1b
19:               jal          a1, 17b
20:               jal          ra, 23f
21:               jal          ra, 2b
22:               jal          t1, 16b
23:               jal          tp, 8b
24:               jal          ra, 4b
25:               jal          ra, 12b
26:               jal          ra, 3b
27:               jal          ra, 10b
28:               jal          t1, 11b
29:               lui          a5, 311618
606:              addi         s8, tp, -1464
                  lui          s1, 890592
                  bltu         t4, s7, 626f
                  add          t6, s7, t1
                  slti         tp, t4, -967
                  srai         s6, a4, 13
612:              sra          t3, t3, t2
613:              beq          tp, s6, 631f
                  xor          s7, s7, a6
                  and          t6, a7, s5
                  sra          a3, a5, s1
                  bne          a1, s6, 635f
                  ori          s7, t6, -1647
                  sltiu        s5, s10, -381
                  lui          s9, 79712
621:              lui          t1, 730396
                  or           tp, gp, a2
                  sra          t0, a7, t1
                  srl          t6, a7, a5
                  sub          a5, a6, t4
626:              addi         s6, zero, 1618
                  sll          s0, t1, tp
                  and          t5, a4, s3
                  or           t2, a5, gp
                  blt          ra, t5, 640f
631:              addi         t5, s3, 860
                  bltu         t1, t6, 652f
                  andi         s5, a2, -1049
                  xori         a3, s11, 2013
635:              auipc        a3, 85529
                  srli         tp, s0, 30
                  srli         ra, s9, 5
                  xor          a0, s7, gp
                  add          t0, gp, gp
640:              addi         t6, t5, 692
                  sub          a3, s6, s0
                  srl          s4, t3, s10
                  srli         t5, s6, 6
                  nop
                  andi         a5, a4, 964
                  bne          a0, s6, 660f
                  auipc        t6, 915144
                  auipc        a0, 200492
                  bne          a7, s6, 659f
                  srl          s3, a7, a1
                  ori          s0, s0, 1250
652:              and          s4, s11, t5
                  lui          a2, 971135
                  andi         a1, t2, 1333
                  blt          s1, t1, 659f
                  xori         a1, s11, -1913
                  blt          sp, a4, 667f
                  and          a5, a4, s6
659:              bltu         s11, s6, 670f
660:              blt          a0, tp, 670f
                  lui          tp, 672319
                  and          gp, s3, zero
                  and          s1, s11, s9
                  lui          s11, 529696
                  slt          a7, a2, s10
                  xori         a0, a5, 1357
667:              bge          s5, t5, 670f
                  bltu         a7, t6, 670f
                  nop
670:              auipc        s11, 1007567
                  sll          t5, t2, t0
                  srli         t0, a0, 26
                  auipc        s1, 127765
                  lw           t1, 4(s10)
                  sub          s3, t2, a5
                  lui          t2, 955548
                  or           s11, s0, s6
                  addi         s10, s10, 52
                  slti         s4, t5, -1616
989:              addi x5, x6, 1
989:              jalr x5, x5, 0
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
.word 0x0b3e100c, 0xf08ef508, 0xb0c97843, 0x2378c99e, 0xe9c94a5a, 0x67c88c6e, 0x2fcb779d, 0xbe6a08cb
.word 0x0474b57d, 0x1e5123a6, 0x13d5c08a, 0xa30bc6ae, 0x3c134946, 0x505f2bfc, 0x124d92e0, 0x4a4877e6
.word 0xe0df0cf6, 0x3777a969, 0x1f5cc162, 0x2650d494, 0x2f14b10d, 0x80b7e6fb, 0xe1b3db7f, 0x8e1c6c2f
.word 0x604c7137, 0xe013be9e, 0x6c765e13, 0xd3a88d23, 0x76dd30ba, 0x8068e786, 0x25e85d6c, 0x6a0fdd29
.word 0x2a963e80, 0x506308bd, 0x21659e3e, 0x83cec8fb, 0xc766ed6f, 0xb8380924, 0x4573d8c2, 0x430e8432
.word 0x87f21807, 0xba426e55, 0x86d3fb21, 0x16a7924e, 0x341729ab, 0x26a755cd, 0xba8a2490, 0x5cb1f276
.word 0xd7da8972, 0x4759763c, 0x478963fc, 0x442ee7c7, 0x7f893150, 0x98588c43, 0xc6cfa7f5, 0x2689611b
.word 0x73c8497a, 0x14db4e42, 0x54808adb, 0x70d5d9a7, 0x1bc99edd, 0x475aef22, 0x79d403d4, 0xe846f238
.word 0xc51f3615, 0x49b22e2e, 0xf77acbb2, 0xf5fc6550, 0x012334f4, 0x688fc0b4, 0xd2090756, 0xff211af9
.word 0xfc474a13, 0x48976238, 0x0687dd66, 0x3018708e, 0xa9b7f72c, 0x3398ac59, 0x031244d6, 0x549aab1b
.word 0x33c80f21, 0xd82bb25d, 0xf78cef11, 0x5ff60b61, 0xcf32b2a0, 0xd799416e, 0xf74f60a7, 0x5a92fb37
.word 0x81d82de2, 0x34da74bd, 0x17dd2c6d, 0x1f73d77a, 0x78513d87, 0xeada5294, 0xa87fed62, 0x0c524163
.word 0x971feba8, 0xb7de62cb, 0x78d78afa, 0x11c86bac, 0xfa6ed79b, 0x700a09ea, 0x38b25b43, 0x2252609d
.word 0xdc96af9a, 0x165d3fd8, 0x8dba60a3, 0xe9aa8dd3, 0xf70cf056, 0xf6e276af, 0x3ede7ec2, 0xdd988319
.word 0x46e72f35, 0xe5947057, 0xc60db1d5, 0x04036c34, 0x2eda7f5f, 0x06236af2, 0x42569f65, 0xaf6bf73e
.word 0x788de730, 0x553fcb86, 0x3f2c9d3f, 0x008ada33, 0x2caa4d21, 0xa71a2c40, 0x2e5e6ed3, 0x47c01275
.word 0x83cdafac, 0x9fb43bdf, 0x324c60ac, 0x7ee8fd03, 0x8135022c, 0x1b343adf, 0x8ce05ce1, 0xbef33363
.word 0x1ec59759, 0xf4c4591f, 0x1e1c9eb0, 0x7eba3cc2, 0xa6570c48, 0x816f58ee, 0x29456bf9, 0xe3710228
.word 0x3ac70969, 0xa2fb2b5c, 0x28c2ac7d, 0x0aa015b8, 0xdf2960d0, 0xbbe8cc16, 0x27c6f389, 0xc5dd9ab6
.word 0x730d76f9, 0x4d9e4c13, 0x9234197a, 0xaa08a3c7, 0xb6742209, 0xd7446258, 0x403b494f, 0x9ae7b4c0
.word 0xb02f1554, 0x29137d62, 0x4b0c7746, 0x8cb8d1d2, 0xa28a49a3, 0x58a847c1, 0xaccd9d7d, 0xe5db686f
.word 0x7a30e2a9, 0x6d24e357, 0x20dd12aa, 0x9833a5f5, 0xeba1ad34, 0x81d019b5, 0x65292658, 0x31054cb8
.word 0x4c9859f8, 0x31156832, 0x8cde6dc5, 0x80ae2569, 0x526202c8, 0xc47e849e, 0xd7fb8a0c, 0x3b6aebd0
.word 0xdca82cb1, 0xaf30428b, 0x923b0a75, 0xfe1691d2, 0x8fddee4f, 0x2dc77060, 0x819881c2, 0xbeaaede3
.word 0x581c6b97, 0x2cccf8a5, 0xecf2c391, 0x3bf80b1a, 0x05c5f401, 0x3e8eff2c, 0xbbcf8f35, 0xc43cf14a
.word 0x7bbe6ccc, 0x9d10fa5c, 0x7a8dd1e1, 0x9b525ce6, 0x04a5ce41, 0x5a7927ab, 0xae13e5e8, 0x4b3f9ff7
.word 0xf6205d56, 0xd1946952, 0xaf8aeec3, 0xc187b1ef, 0x6e86ce94, 0x814aab17, 0x2cc95b2e, 0x772e8fd2
.word 0xb9957be9, 0xb38ef5aa, 0x557ee361, 0x8999c8ab, 0x787ca4e0, 0x623128b6, 0xd9db446c, 0xa598fac2
.word 0x0098fb9c, 0xc8c8a752, 0x1f4d4cf7, 0x6cc9ea3e, 0xd9c267be, 0x17279db4, 0x73373ec4, 0x5fa82dc6
.word 0x21f29d17, 0x6c29b590, 0xf559b469, 0xaae41215, 0x26f6b7de, 0x90002b3e, 0xede8dc2b, 0x0e13120f
.word 0x3f67eee3, 0xd8e77f6d, 0x67f3350a, 0x2c4b4c77, 0xd80078b8, 0x610e0f4b, 0xf2c8b296, 0x27e25309
.word 0xe10e323c, 0x75a18b29, 0x131129a6, 0x1df7a21f, 0x4987553c, 0x1509de91, 0x49d7d624, 0xd2ee5e88
.word 0xcd8c6196, 0x58da560c, 0xea4dabee, 0xe0411119, 0x30b40a07, 0xe6e90c38, 0x031e1b62, 0x17bbecc6
.word 0x0e188446, 0xcf1f5948, 0xc73f9726, 0x4c663315, 0x32de9c3a, 0xf5382a23, 0xaf034ba6, 0xf01abe9d
.word 0x3a0e0a98, 0x258a0c3d, 0xf88243fa, 0xf58cb4ab, 0x89d50c0b, 0x7f689272, 0x4fbba445, 0xf2ba214a
.word 0x1aac5791, 0x84b382af, 0x79c1657b, 0x69ef055d, 0x5ec7e5bc, 0xf1490feb, 0xb200c7f0, 0x3e4d89a2
.word 0xbad3a3a1, 0x8bb64a74, 0x58a4ad40, 0x338313a0, 0xdbb676a6, 0x207b3d41, 0x4f31d543, 0x7535fbb3
.word 0xee7c4e5d, 0x1973a181, 0x175da305, 0xa9fc3b4a, 0xf17a2a60, 0x37092f0b, 0x125ad0a4, 0xbc326c6d
.word 0x861206d3, 0xf7d1ecb1, 0x817bdab8, 0x2c3b2045, 0xac620afe, 0x7246c647, 0xeb412afa, 0x25130c17
.word 0xbee3bd8d, 0xab0fcf0a, 0xa06baaac, 0x27ef7745, 0x438d1467, 0xc776f382, 0xc65b6a0e, 0xa4a48673
.word 0x4b8cb0c2, 0xb94ad92c, 0xcbc877af, 0x55bfcfac, 0x94ae1190, 0x921186dc, 0xd172fd29, 0x66c2bb26
.word 0xaa66c965, 0x50efb5c2, 0x60b68119, 0x51e1a2dd, 0x07497dc4, 0xa16807cd, 0x59c43eda, 0x1b8e204a
.word 0x17dc118c, 0x547e99b8, 0x993b8769, 0x3949bdb3, 0x7d244d26, 0xe13ef149, 0xa9d5d26e, 0xe59ddb17
.word 0xd0c0ef66, 0xad16c167, 0xa5aa6e61, 0x44618be8, 0x09bb65c1, 0x214672f1, 0x32b70d0d, 0xe00ee9a3
.word 0xcfa3bfcc, 0xc081622b, 0xf065c958, 0x73a1afa0, 0xea21f638, 0x1d4b3121, 0xffb80af6, 0x3cbe2911
.word 0xb66e9a34, 0x5ddd2b1b, 0x11ed1e8b, 0xaded7c41, 0xba4388e8, 0x971959b6, 0x24404872, 0xca4a2c8b
.word 0xe2b466b8, 0xbf572585, 0x6e326da2, 0xdfe23a52, 0x1f3bace2, 0xc7cc421b, 0xa5cf0379, 0xacb6dc89
.word 0x30782198, 0xd0ac2487, 0x65b9fd70, 0x00cb4d61, 0xdc85d940, 0x455f8a10, 0xff60c498, 0xb074131b
.word 0x30ff1a28, 0xd94dbc36, 0x1bd6d69c, 0x3e2bb471, 0x6379cc64, 0x6b1ce282, 0x8d327dea, 0x0ec1e79f
.word 0x4a4b9436, 0xfbf6158a, 0xf35be921, 0xccf371e0, 0xa2b0a239, 0x372ab58d, 0xe0ca681c, 0xa1f16e92
.word 0xb6369bb9, 0x1321bf77, 0x34f3529b, 0xb28dade1, 0xf2cbe43c, 0xabf43dfb, 0xc262afb6, 0x8844b4ef
.word 0xe1a453f5, 0xa754109e, 0x8bfa9e52, 0xda2848ee, 0xc6bbf4ad, 0x46f0b291, 0x875e6672, 0xb1a76338
.word 0x9b7888be, 0xc12c16e9, 0x42002e73, 0xc4ba7260, 0x6bed4799, 0x9bfee1d2, 0xa36d6e9c, 0xbc625cae
.word 0x01f1b33f, 0x26b2a9fe, 0xfd9e6703, 0x614b58df, 0x22263d11, 0x7fc228fa, 0x2e382e7c, 0x16fe979e
.word 0xd7d931a1, 0x27628c6d, 0x9e4ea9af, 0x75aab39b, 0x84d1f35f, 0x6ba54f28, 0x86d4bcde, 0xe670ecf6
.word 0xdf021545, 0x6d14eff3, 0x2262743a, 0xf345b4a8, 0x294053a5, 0xe10efe40, 0xe070871a, 0x67be55ce
.word 0xe460e7d9, 0xdb041723, 0x4b802161, 0x0d6aa30d, 0x7f3e301d, 0xeb01d110, 0xe247d163, 0xcfe3ef8c
.word 0x770f569a, 0x854c45ce, 0xbd1ece48, 0x65c28870, 0x2450c332, 0x2283ecbf, 0xa544cf75, 0x8b4b285d
.word 0x400c29e7, 0x950aa5b8, 0x5a3f2023, 0xecd296a8, 0x99c6fbf1, 0xbc2f54bd, 0x16df5f28, 0x48e64288
.word 0xc82a2a46, 0x401937da, 0x4ccc90ef, 0x4b964a76, 0x3d854af9, 0xe72505a1, 0x6d926ac5, 0xb5164c33
.word 0x32e815e3, 0x01411833, 0x064ff7ce, 0x35335460, 0x81ab7a2b, 0x28180ea0, 0xc184e7cc, 0x03e7b7da
.word 0xe11d452a, 0x1ecbc9e3, 0x03f54d6d, 0x3f523b02, 0x55b1fe89, 0x43207a79, 0x51c4f0b4, 0xc0b18ae3
.word 0xa1007e62, 0x102408a2, 0x96877e88, 0x9c136ea4
.section .region_1,"aw",@progbits;
region_1:
.word 0x1d69dd4b, 0xd3df2f69, 0x7b108ece, 0x215e8a73, 0x2b3bc0d1, 0x4d69ca4f, 0x27fddbc3, 0x9a0b2c0a
.word 0x4ea2d2ca, 0x290c2776, 0x51572d86, 0xb1d3d39b, 0x111af724, 0x9be5b706, 0xb08471dc, 0x6fa49b98
.word 0x5c639ef0, 0x94a6f0d4, 0xfdea444f, 0xc4691fd8, 0x308a8996, 0x9d5b34c3, 0x9f4f09d2, 0xca0e26f5
.word 0x14a7dce1, 0x1470ca1d, 0x7137d510, 0x361d6c67, 0xa7577b66, 0x435f49e5, 0xd97c7a1b, 0x0e92af70
.word 0x026d3d3d, 0xa67914a2, 0xe128ab48, 0x3c2e7a99, 0x3830750a, 0xd4bd5285, 0x7f77ae93, 0xff2ef72e
.word 0xef621034, 0x890c51c1, 0xf445add1, 0x7c403e33, 0x0b2f8033, 0x8298b093, 0xaf02e158, 0x1ca3101a
.word 0x4b5dea73, 0x6e7db64a, 0xa50c1195, 0x9a884648, 0xdef69238, 0xe703c1d2, 0x0190752e, 0x8f5a8d9a
.word 0xe88af2ac, 0x7797654c, 0x561be5d5, 0xd4cc85ce, 0x33142019, 0x44bb7bf9, 0xf15e1bbf, 0x0a550ddc
.word 0x4725a9cf, 0xf3872964, 0xfe46f9e9, 0x02041567, 0x13050180, 0x1a851d8b, 0x01858975, 0xc24ab5e4
.word 0x311215f8, 0xca4875bb, 0xde48171a, 0xdf3b6e55, 0x16b9f2de, 0xb9c7cbcf, 0x1f09a145, 0xcee522b0
.word 0xeaf2ecdf, 0x744ecf9d, 0xd1af5696, 0xc4555c69, 0xafc323a2, 0x7f752ea7, 0x038d4ff0, 0x5db94e5e
.word 0x460e8399, 0x68be8548, 0xe8ba5bc5, 0xce7b72d8, 0x7e5439d6, 0x312f880f, 0x47f4b53c, 0xd627235b
.word 0x59b45536, 0xfe533d23, 0xfb926f15, 0x527034df, 0x07756e62, 0x4454fca5, 0x44bd590c, 0xf4c65c6e
.word 0x10cdc083, 0x293eb89d, 0xd0a0148f, 0x8c315f03, 0x986c79bc, 0x618f3f14, 0x7ced8fa2, 0x931ea278
.word 0x62e76e76, 0x0a8c0dc2, 0x6e80a2f1, 0x623fb684, 0x235d0dc7, 0x8e95c21a, 0x8b1ba94e, 0xf1b5404f
.word 0xc75bca4c, 0x10fb13d4, 0x5f1ecc74, 0x2e8b38e2, 0x0343495d, 0x6a5242a6, 0x2c3f52a5, 0xdc546581
.word 0x099c0a8b, 0x262ed0b0, 0xf188e439, 0x11ccdc15, 0xe3e11427, 0x02864dd3, 0xedb75044, 0xfd454afe
.word 0xcf902d5f, 0x29fc5814, 0x64808cb4, 0x702b65bf, 0x98282235, 0x032a0e19, 0x58596c35, 0x5b3b836c
.word 0xbd7e4905, 0xd6f5b89a, 0x92ffbdb2, 0x4f4c70c2, 0x3ad082e1, 0x6b2ed890, 0x0798ee5c, 0x02b33b65
.word 0x9b3c7847, 0x51802f15, 0x5ce422f4, 0x52b4eeb4, 0xc2d2e165, 0x820e1d27, 0xe1dd6f82, 0x92b74b97
.word 0x38e4d3f7, 0xb598a15c, 0x828d2e87, 0x8437dc9a, 0xdbbdf88a, 0xcd59e59d, 0x4119da2e, 0x85749ede
.word 0xdf1c990e, 0x91137688, 0x31797513, 0xe29ce8ed, 0x9628b48c, 0xb15fa99b, 0xc0b2abfc, 0x3655c9df
.word 0x9e42b139, 0x4d26c660, 0x8ff6b4ec, 0xf37356f7, 0x78988dfa, 0x3298c3e0, 0x1d6818aa, 0xcc2918e5
.word 0xf7c10bfd, 0x85a4b3b2, 0x002d624f, 0xc1c02a38, 0x0f61cdf5, 0xb6482226, 0x9534f338, 0xba42f4c2
.word 0xd40249ef, 0x78226eb9, 0x56af0035, 0xdfa03c84, 0x1a9b7d88, 0xe07b9bfd, 0x4ab3fe46, 0x70eebfeb
.word 0x259ef7f4, 0x5450eeb6, 0x5c930487, 0xd2bc9e72, 0x250cf6cb, 0x83914981, 0xa080fad0, 0x1822a91b
.word 0xca64a1b1, 0x83d6d0b7, 0xa7eae68e, 0x4d5f0c28, 0xba957314, 0x339082f5, 0x1f39879c, 0xd5cbbff5
.word 0xb0b6d84d, 0x6cd87f31, 0x8b3f0a6f, 0xe740c966, 0x9d0cc0b2, 0xa1ebe379, 0xe12d30ad, 0x76909193
.word 0xe198951d, 0xfc2c31e6, 0x363aa03e, 0x7f79334d, 0x09eceec8, 0xd0ea52fb, 0x451c40d6, 0x26492912
.word 0xe98ba314, 0x583eceaa, 0x2663e1ed, 0x863da5bf, 0x238c59f0, 0x0898bbbc, 0x4da9a6c7, 0xde3791bd
.word 0x1da2a786, 0x7cb45f3b, 0x643f0070, 0x29304118, 0xd6ef943e, 0x367a4caa, 0x2202f834, 0x53a30d0f
.word 0x6a01eb26, 0x5b4752e6, 0x6dc02621, 0xf40e1c43, 0xf3ef0b8e, 0x080c8c0f, 0x09c36d56, 0x67d09db2
.word 0xeff9bd68, 0x68e630c1, 0x9f3933c2, 0xa409eb62, 0x0eb099e6, 0xdad7ed9d, 0xc3d124a2, 0x6c7185dc
.word 0x95ebcadc, 0x2e8a00d0, 0x4b8875bc, 0xc9b1306b, 0xf0f7c329, 0x77603b4c, 0xfc4915c4, 0x390b7491
.word 0xd2a4ac6d, 0x98b90972, 0x99a5ed99, 0xb75c4416, 0x0e0e07d0, 0x5c2e67f3, 0x233a0b83, 0x72dcecdf
.word 0xf480bc5f, 0x42aba979, 0xda72061a, 0x05d4cc46, 0xd896e653, 0x4310a518, 0x49481e8e, 0x1c4d1885
.word 0xb8d661eb, 0x8012f74f, 0xa6977207, 0x92cc8cb9, 0xdc99f1c1, 0xb9777ecf, 0x3c57cb43, 0xda465069
.word 0xda965872, 0xf83d7562, 0x8384107b, 0x15d9319e, 0xcf4b4b1b, 0xfc752bc3, 0xe72adc27, 0x707f13c3
.word 0x4217fc9e, 0x2f329c8b, 0x5ed942db, 0x61e908cb, 0x2c959191, 0xb92574d6, 0x912a79d5, 0xbd95528c
.word 0x106fab99, 0x91d08866, 0xe4bae6a5, 0x08271d9e, 0x5a750b3b, 0x4b144646, 0x3a237151, 0xcb872972
.word 0xbc5ce4c7, 0x9ea69f77, 0x6085914e, 0xc6882b27, 0x9f134015, 0xfb2ce4b6, 0xbf486ae9, 0x931bb088
.word 0x69190fdf, 0xed039383, 0xdf7d8cf8, 0xe09e4978, 0xf2949d9d, 0x1f5afd0b, 0x458ce645, 0xfe96bc74
.word 0x7831efd5, 0x2f3d4a86, 0x7322362e, 0x425e41f5, 0xe0c564de, 0xd9a7bb87, 0x203b6e6b, 0xee082784
.word 0x86913c1a, 0x0a6a6e2d, 0xa999b3a6, 0x97a3da69, 0xfb05b1ec, 0x055184ed, 0x74389596, 0xa7deda43
.word 0x1fd5e740, 0x3e0811d6, 0xa9fdc6b5, 0xa57c458d, 0xa5c6a1b6, 0xbe267df7, 0x38bdcf89, 0x3bd04f57
.word 0x1979cb9b, 0x214d0a3b, 0xca253ed4, 0x0665ffdd, 0x377c6de0, 0x2d8bb947, 0x92c9e6e0, 0x4a7ac751
.word 0xfd730976, 0x6792cefa, 0x0837c456, 0xf1132328, 0xba37099f, 0x2e10bdc3, 0x41ebdf26, 0x51d7718d
.word 0xdb2b141d, 0xda5fc942, 0x376a724b, 0x1850644e, 0x54a755c0, 0x1702210a, 0x7565e316, 0x3afdc7fc
.word 0x25f4fee4, 0xfb1b5cc9, 0xdb7d8976, 0x5aa69318, 0xa669b323, 0x29ff4ae6, 0xc58831c5, 0x7282bf0b
.word 0x11d3639b, 0x405a26e7, 0x9f9f96d0, 0x9d34c7e2, 0x3f2078e6, 0xe78f2ef5, 0x5021b91c, 0x2273f45d
.word 0x8fbf5b44, 0x72036531, 0x63696490, 0x2b320657, 0x298deec3, 0xe81a8bfc, 0xe1462388, 0xa44cb070
.word 0x0a29d935, 0x3148f8c0, 0x4b48f653, 0x4c87914d, 0x868f7d2d, 0x7310202f, 0x025fb19c, 0xd8b695b2
.word 0x481cf810, 0xdd3aca6c, 0xf17dc1ec, 0xbfe0ae2b, 0xb9b70985, 0x623a45ad, 0x57796603, 0xd3eb7b60
.word 0x61a34a59, 0x6ee0fe42, 0x0d71754a, 0xc5651878, 0xcf5bd18f, 0xed05974e, 0x3f668bef, 0x306635c3
.word 0xb32fb3d6, 0xa5b2a2cf, 0x47ce4fe8, 0xbeef8534, 0xa8c862f0, 0x15525d40, 0x38982a2f, 0xbdeaca71
.word 0x30af383a, 0x3f7e2eb7, 0xc9a6d091, 0x0010b754, 0x6d948e40, 0x29b8435e, 0x0d142bd5, 0xca0c9f0f
.word 0x4e14b200, 0x6753ca26, 0xfb8ca3b0, 0x42d14474, 0x03d737d6, 0xeea97b37, 0xdb8bb6a7, 0x5c53e304
.word 0x325e1539, 0x6ea5ec38, 0x6f53b6e3, 0x03b7c78e, 0x7b6281a8, 0xc0fb657c, 0x852f3f08, 0x6e549e0b
.word 0xc4d707c8, 0x3a7bf68b, 0x1850a1e1, 0x3c1506c5, 0x5d9a4cbc, 0x26b339ea, 0xb47ebeea, 0xc48f7e5a
.word 0x8b82ba0d, 0xe746a110, 0x2063a02d, 0x6ddb5be3, 0xdc18e8ad, 0xaded534a, 0xac740b33, 0x82a3b756
.word 0x97ee2c19, 0xf5aab561, 0x83d62298, 0x32233ed4, 0x0fe1dad6, 0xbf38df60, 0xf30396c7, 0x9a65711b
.word 0x94042606, 0xc4e4aead, 0x84271abb, 0x74a6c0d2, 0x017ec597, 0x5ce33909, 0x6fccf2ec, 0x0a250871
.word 0x9829614d, 0x553e29cc, 0x0085ee8e, 0x5b47035b
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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x2, x26, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x20, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x20, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x20, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x20, x30, ecall_handler
                  li x30, 0x1
                  beq x20, x30, instr_fault_handler
                  li x30, 0x5
                  beq x20, x30, load_fault_handler
                  li x30, 0x7
                  beq x20, x30, store_fault_handler
                  li x30, 0xc
                  beq x20, x30, pt_fault_handler
                  li x30, 0xd
                  beq x20, x30, pt_fault_handler
                  li x30, 0xf
                  beq x20, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x26, x2, zero
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
                  add x26, x2, zero
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
                  add x26, x2, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x26, x2, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x26, x2, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x26, x2, zero
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
