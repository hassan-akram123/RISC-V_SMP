.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 1
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x2d45025f
                  li x2, 0xe
                  li x3, 0xff398986
                  li x4, 0x0
                  li x5, 0x5962c6f8
                  li x6, 0x572263d6
                  li x7, 0x0
                  li x8, 0xa
                  li x9, 0x0
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x95082f05
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xe780e7a6
                  li x18, 0xfc6be1ca
                  li x19, 0x0
                  li x20, 0x3
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x2afa8ce4
                  li x24, 0xbb50766e
                  li x26, 0xf2e87dba
                  li x27, 0xfa6d174a
                  li x28, 0xf349b285
                  li x29, 0x80000000
                  li x30, 0xfa89eab2
                  li x31, 0x0
                  la x10, user_stack_end
main:             jal          t1, 9f
0:                jal          a7, 10f
1:                jal          sp, 5f
2:                jal          t1, 23f
3:                jal          s1, 19f
4:                jal          t1, 12f
5:                jal          s5, 14f
6:                jal          s11, 22f
7:                jal          s4, 13f
8:                jal          sp, 18f
9:                jal          t1, 4b
10:               jal          a3, 8b
11:               jal          a5, 21f
12:               jal          t0, 16f
13:               jal          s3, 20f
14:               jal          t6, 6b
15:               jal          t1, 11b
16:               jal          tp, 1b
17:               jal          t1, 7b
18:               jal          s11, 17b
19:               jal          t1, 15b
20:               jal          t1, 2b
21:               jal          s3, 0b
22:               jal          gp, 3b
23:               nop
main_0:           jal          t1, 21f
0:                jal          a7, 1f
1:                jal          a1, 25f
2:                jal          a6, 28f
3:                jal          s7, 9f
4:                jal          s0, 8f
5:                jal          t1, 11f
6:                jal          s5, 2b
7:                jal          gp, 14f
8:                jal          tp, 16f
9:                jal          t1, 29f
10:               jal          s1, 6b
11:               jal          tp, 13f
12:               jal          sp, 23f
13:               jal          s6, 7b
14:               jal          s7, 22f
15:               jal          t1, 26f
16:               jal          t1, 3b
17:               jal          s7, 27f
18:               jal          s4, 4b
19:               jal          t1, 12b
20:               jal          t1, 10b
21:               jal          t1, 15b
22:               jal          t3, 0b
23:               jal          t1, 17b
24:               jal          t1, 20b
25:               jal          a2, 19b
26:               jal          a7, 5b
27:               jal          s10, 24b
28:               jal          gp, 18b
29:               nop
main_4:           jal          t1, 9f
0:                jal          t4, 17f
1:                jal          t0, 19f
2:                jal          t1, 5f
3:                jal          t1, 18f
4:                jal          t0, 6f
5:                jal          s0, 20f
6:                jal          a4, 0b
7:                jal          s1, 12f
8:                jal          t1, 7b
9:                jal          s10, 8b
10:               jal          sp, 13f
11:               jal          tp, 10b
12:               jal          t1, 3b
13:               jal          t1, 2b
14:               jal          tp, 11b
15:               jal          t6, 14b
16:               jal          t6, 1b
17:               jal          tp, 16b
18:               jal          t1, 4b
19:               jal          a4, 15b
20:               nop
main_5:           jal          t1, 3f
0:                jal          gp, 1f
1:                jal          t1, 6f
2:                jal          t1, 8f
3:                jal          a3, 4f
4:                jal          s3, 10f
5:                jal          t1, 9f
6:                jal          t1, 2b
7:                jal          a5, 5b
8:                jal          t1, 11f
9:                jal          t1, 0b
10:               jal          t1, 7b
11:               srl          t5, tp, t5
main_12:          jal          t1, 3f
0:                jal          t1, 2f
1:                jal          tp, 10f
2:                jal          tp, 11f
3:                jal          t1, 7f
4:                jal          t6, 12f
5:                jal          t1, 0b
6:                jal          t1, 8f
7:                jal          t1, 9f
8:                jal          s7, 1b
9:                jal          tp, 5b
10:               jal          tp, 4b
11:               jal          gp, 6b
12:               slt          s5, s10, s3
main_9:           jal          t1, 2f
0:                jal          t1, 6f
1:                jal          tp, 0b
2:                jal          t1, 8f
3:                jal          a7, 9f
4:                jal          t3, 1b
5:                jal          t5, 3b
6:                jal          a5, 7f
7:                jal          t1, 10f
8:                jal          a5, 5b
9:                jal          t6, 4b
10:               addi         t3, s4, -296
main_8:           jal          t1, 4f
0:                jal          t1, 25f
1:                jal          tp, 14f
2:                jal          sp, 19f
3:                jal          s7, 22f
4:                jal          t3, 2b
5:                jal          gp, 15f
6:                jal          t0, 26f
7:                jal          sp, 29f
8:                jal          s3, 11f
9:                jal          t1, 7b
10:               jal          t1, 6b
11:               jal          t1, 12f
12:               jal          s11, 21f
13:               jal          t1, 20f
14:               jal          s0, 24f
15:               jal          sp, 16f
16:               jal          t1, 0b
17:               jal          t1, 13b
18:               jal          t1, 8b
19:               jal          a4, 17b
20:               jal          tp, 3b
21:               jal          t1, 1b
22:               jal          s7, 28f
23:               jal          t1, 30f
24:               jal          t1, 9b
25:               jal          gp, 10b
26:               jal          t1, 23b
27:               jal          t1, 5b
28:               jal          a5, 18b
29:               jal          s4, 27b
30:               xor          s5, s1, a0
main_11:          jal          t1, 24f
0:                jal          t1, 14f
1:                jal          a6, 25f
2:                jal          t1, 1b
3:                jal          t1, 17f
4:                jal          t1, 6f
5:                jal          tp, 9f
6:                jal          t1, 8f
7:                jal          t1, 20f
8:                jal          s0, 0b
9:                jal          a2, 16f
10:               jal          t1, 15f
11:               jal          t1, 21f
12:               jal          t1, 10b
13:               jal          t1, 19f
14:               jal          t1, 22f
15:               jal          s10, 3b
16:               jal          t1, 11b
17:               jal          t0, 7b
18:               jal          t1, 13b
19:               jal          a3, 4b
20:               jal          s10, 5b
21:               jal          a4, 2b
22:               jal          tp, 12b
23:               jal          t1, 26f
24:               jal          t1, 18b
25:               jal          t0, 23b
26:               slti         s8, s1, -81
main_3:           jal          t1, 3f
0:                jal          t1, 7f
1:                jal          s6, 4f
2:                jal          t1, 8f
3:                jal          gp, 2b
4:                jal          sp, 6f
5:                jal          a5, 10f
6:                jal          s5, 9f
7:                jal          s6, 5b
8:                jal          s2, 1b
9:                jal          s8, 0b
10:               or           t4, t1, a0
main_6:           jal          t1, 3f
0:                jal          t2, 6f
1:                jal          t1, 11f
2:                jal          t3, 8f
3:                jal          s6, 13f
4:                jal          a4, 12f
5:                jal          t1, 10f
6:                jal          t1, 5b
7:                jal          t1, 14f
8:                jal          t6, 1b
9:                jal          a2, 7b
10:               jal          t1, 9b
11:               jal          tp, 4b
12:               jal          t1, 0b
13:               jal          t6, 2b
14:               slli         t3, t4, 12
                  auipc        zero, 980308
                  blt          gp, s5, 20f
                  srai         gp, s7, 1
                  sltiu        a4, t0, -1463
                  lui          a1, 37790
                  ori          t4, a7, 839
                  auipc        s11, 895225
                  slli         zero, a4, 3
                  blt          t2, a2, 10f
                  srli         s8, s7, 26
10:               srai         s10, t6, 22
                  addi         tp, a7, -266
                  sll          t3, t6, a2
                  or           s4, a7, s4
                  add          a2, a0, s11
                  bge          s9, a5, 29f
                  srl          s4, s5, s4
                  bge          ra, a4, 28f
                  bne          s11, a4, 34f
main_10:          jal          t1, 20f
0:                jal          t1, 6f
1:                jal          t1, 2f
2:                jal          a7, 5f
3:                jal          t6, 18f
4:                jal          t1, 16f
5:                jal          t1, 13f
6:                jal          a5, 23f
7:                jal          t1, 22f
8:                jal          t1, 19f
9:                jal          t1, 21f
10:               jal          a2, 1b
11:               jal          t1, 3b
12:               jal          t6, 7b
13:               jal          t1, 11b
14:               jal          t1, 4b
15:               jal          t1, 26f
16:               jal          t1, 27f
17:               jal          s1, 9b
18:               jal          t1, 17b
19:               jal          s6, 15b
20:               jal          a1, 0b
21:               jal          s6, 24f
22:               jal          tp, 10b
23:               jal          s11, 12b
24:               jal          tp, 25f
25:               jal          s4, 8b
26:               jal          a7, 14b
27:               slli         t3, zero, 27
                  srl          t3, s10, t4
20:               slti         t2, zero, 172
                  andi         s6, s1, 1006
                  bgeu         s1, s4, 41f
                  ori          s3, a1, 1446
                  srai         a4, a2, 5
                  srai         a1, s2, 1
                  andi         s7, s9, 1195
                  sra          s3, t0, a2
28:               slli         a2, s11, 21
29:               add          s7, s4, a7
                  auipc        s1, 449534
                  beq          s10, s2, 44f
                  slt          a4, s8, t3
                  srai         s11, s6, 15
34:               srai         s2, t3, 27
                  ori          s0, a2, 837
                  bgeu         s1, s8, 39f
                  bltu         a1, ra, 47f
                  slt          s1, s4, s8
39:               sub          t2, s6, a0
                  bltu         s4, a1, 44f
41:               slt          s4, a4, s10
                  lui          a4, 224096
                  lui          t0, 880600
44:               slti         a4, t3, 685
                  bne          a4, s6, 57f
                  slti         t6, a3, -713
47:               sltiu        t2, t3, -1604
                  andi         a5, s3, 1138
                  slti         a7, a1, -55
                  sltiu        s5, sp, 436
                  bltu         s5, zero, 65f
                  ori          gp, gp, 333
                  slt          t5, ra, s10
                  srli         sp, s4, 20
                  sltiu        a3, t5, -454
                  slt          a5, s7, a2
57:               sra          t0, a1, a3
                  nop
                  sll          a5, s7, a3
                  sltu         t2, a5, t2
                  beq          s10, a6, 66f
                  slli         t4, t2, 4
                  slli         tp, t6, 31
                  blt          s0, a6, 70f
65:               srai         s7, s8, 9
66:               add          t3, a6, a4
                  srli         t3, t2, 2
                  and          a6, s4, s2
                  slti         s4, zero, 1511
70:               sltiu        t4, a6, 265
                  addi         s10, s3, 1071
                  sll          zero, t3, s1
                  sub          t0, s5, s5
                  bge          s11, tp, 83f
                  sltu         a1, t1, s8
                  andi         s1, t0, 435
                  nop
                  beq          a6, s0, 80f
                  bltu         s0, s6, 87f
80:               srl          s2, t2, a4
                  addi         t1, a2, -206
                  nop
83:               sltiu        zero, s10, -1037
                  andi         a5, a7, 1700
                  bne          s7, t1, 92f
                  andi         gp, a0, -1588
87:               bne          a0, tp, 101f
                  slli         t3, zero, 5
                  slli         s8, s1, 15
                  bge          t6, s8, 92f
                  and          s3, t5, t0
92:               andi         zero, s2, -910
                  sll          s7, zero, s7
                  slti         tp, tp, 404
                  srl          t4, s5, s2
                  sra          gp, a4, s10
                  sub          s11, s11, s10
                  srl          s5, t6, t5
                  sll          a1, s10, t0
                  bgeu         s2, s7, 105f
101:              sltiu        s6, s11, -1346
                  srai         s5, sp, 5
                  nop
                  lui          s6, 1022263
105:              lui          a2, 1074
                  beq          s11, s11, 119f
                  add          s4, t1, s6
                  andi         t3, a6, -290
                  srai         s5, s3, 19
                  bne          t5, t3, 123f
                  srli         s4, gp, 2
                  bgeu         a7, s7, 114f
                  bge          a7, s2, 116f
114:              bltu         gp, a1, 128f
                  add          zero, a1, t3
116:              slt          s4, a4, s9
                  xori         t0, a6, -1824
                  slli         a4, sp, 21
119:              slt          t2, s1, t3
                  sll          a4, s1, a6
                  xori         s6, a7, -513
                  srai         gp, a1, 21
123:              xori         s11, t4, -1601
                  xori         s5, t0, 1705
                  slli         s3, s5, 22
                  slti         s2, s5, 837
                  and          s5, gp, s10
128:              addi         a6, a4, 479
                  sll          s8, sp, s3
                  bltu         a2, t1, 147f
                  sltu         s6, s6, t4
                  andi         zero, s3, -1838
                  bne          a3, t0, 135f
                  bne          a4, a4, 140f
135:              ori          a1, t6, 1649
                  slli         a7, s10, 30
                  bltu         s10, t6, 157f
                  xor          a2, t2, zero
                  lui          s4, 351393
140:              srl          t3, zero, s11
                  sra          a7, zero, s8
                  sltu         a7, a0, s3
                  addi         a4, s1, 92
                  sltiu        s4, s7, -1395
                  ori          s11, a0, -100
                  lui          s8, 466454
147:              bne          s9, t6, 153f
                  sra          s7, s6, tp
                  xor          t4, s7, s3
                  and          a4, s1, s4
                  sll          gp, s2, s5
                  bgeu         a5, zero, 154f
153:              srl          a7, t3, s6
154:              and          a3, t4, ra
                  sub          s2, s9, s0
                  srai         gp, a7, 0
157:              slli         s6, s8, 8
                  andi         t3, a2, -1844
                  add          t2, s10, s8
                  srai         t0, a4, 14
                  bltu         s4, a7, 178f
                  sltiu        s6, s5, -1463
                  blt          a6, zero, 176f
                  addi         t6, s5, 1195
                  add          a2, s11, s11
                  srli         a4, t4, 26
                  beq          t3, t1, 169f
                  bne          t1, a7, 181f
169:              bgeu         t3, s8, 174f
                  andi         s1, s6, -386
                  sltiu        t4, s6, 1735
                  add          tp, ra, t5
                  bne          a6, s9, 192f
174:              lui          s0, 462487
                  addi         a3, a1, 1311
176:              ori          t3, tp, 247
                  nop
178:              add          s8, tp, s6
                  blt          a0, gp, 181f
                  and          a4, s6, a0
181:              andi         s10, a0, 895
                  auipc        s10, 409715
                  andi         t1, t4, -855
                  auipc        t4, 835146
                  slli         zero, t1, 22
                  add          s4, s1, a7
                  srl          t0, s2, ra
                  bne          t5, sp, 204f
                  beq          zero, s6, 194f
                  sltu         s3, t4, a6
                  slti         a7, s6, -351
192:              sll          t5, a0, s11
                  sll          a3, s10, zero
194:              sltu         a1, s9, t2
                  lui          t2, 483177
                  nop
                  bge          s6, t5, 211f
                  and          t3, a4, s0
                  srai         a7, a7, 11
                  slli         a7, t0, 8
                  xori         a3, t4, -1774
                  srli         a6, a0, 1
                  sra          s3, zero, s5
204:              sltu         a1, a2, s11
                  blt          s3, gp, 216f
                  andi         a4, s7, -198
                  bne          t6, a3, 219f
                  nop
                  addi         s2, s5, 936
                  bge          s8, s11, 213f
211:              andi         t5, s1, 123
                  blt          s11, gp, 225f
213:              xori         s1, t3, -1601
                  srli         s4, s1, 27
                  bltu         a1, a6, 224f
216:              srli         s1, sp, 15
                  slli         s10, s0, 11
                  srli         s7, s11, 30
219:              xor          s10, s11, t6
                  srai         a7, s2, 21
                  bltu         s1, a7, 224f
                  lui          t3, 997532
                  bgeu         a5, zero, 229f
224:              sra          s2, zero, sp
225:              xori         a7, t5, 835
                  slti         s8, s9, -361
                  sub          s6, a3, t0
                  xor          a4, ra, a1
229:              xor          s6, s10, s3
                  auipc        a5, 825471
                  slt          s2, a1, s11
                  or           a4, a5, tp
                  slti         a3, a6, 1647
                  add          tp, ra, t3
                  beq          s0, a3, 242f
                  sltu         s7, tp, t3
                  blt          a0, a0, 251f
                  slli         t1, s1, 29
                  bge          s10, zero, 249f
                  srli         t4, a4, 2
                  slt          s7, t0, t5
242:              slt          gp, s4, s6
                  add          a6, t1, a2
                  sll          s10, t6, s7
                  srl          s3, sp, t6
                  lui          zero, 510050
                  blt          s5, a3, 255f
                  sltu         s11, t6, s6
249:              lui          s2, 857333
                  blt          t3, a5, 269f
251:              nop
                  auipc        a3, 666813
                  ori          sp, s6, -490
                  sltu         a3, s6, a2
255:              xor          s0, s3, tp
                  add          t3, s8, a3
                  xori         a6, zero, -9
                  or           t5, s11, s9
                  srli         s4, t1, 6
                  bne          s7, s3, 280f
                  bne          a6, s9, 275f
                  or           gp, s1, s2
                  slt          a6, sp, s6
                  sll          a1, s11, a5
                  sll          s11, t3, s8
                  bltu         zero, a0, 268f
                  sltiu        s5, a0, -427
268:              bltu         s6, a6, 270f
269:              sll          s6, a6, a6
270:              srl          a7, a2, zero
                  nop
                  srai         gp, s2, 1
                  bge          t2, t3, 277f
                  slli         t0, a4, 15
275:              auipc        s5, 351391
                  ori          t6, s11, 905
277:              xori         sp, t1, 744
                  lui          a4, 878104
                  bltu         t5, s8, 293f
280:              sltu         a6, s3, s8
                  sub          a6, t2, s8
                  bgeu         s6, t3, 289f
                  add          a4, t5, s3
                  auipc        s2, 691062
                  xor          gp, t0, t3
                  xor          a6, s10, a4
                  nop
                  ori          a6, a6, 1679
289:              sub          t0, s11, ra
                  sltu         gp, a2, s7
                  srl          a7, sp, s0
                  bne          ra, s4, 308f
293:              bne          tp, gp, 312f
                  bgeu         t0, a0, 313f
                  sub          a7, s1, a2
                  srl          a7, gp, s3
                  slli         s11, zero, 10
                  or           a4, s9, t4
                  lui          zero, 600323
                  srai         t0, a6, 12
                  la           s10, sub_1
                  addi         s6, t4, -1831
                  srl          a5, t1, s11
                  and          t3, s7, s7
                  sub          a5, a3, s10
                  addi         s10, s10, 880
                  sub          zero, s5, a0
                  slti         a3, s7, -1885
main_j2:          jalr         t1, s10, -880 #jump main -> sub_1
                  sll          s4, t3, s3
                  sll          t6, sp, s6
                  add          t4, t2, t6
                  bltu         zero, s6, 314f
                  blt          t0, a1, 322f
                  auipc        s6, 247047
                  bge          tp, s10, 309f
                  ori          t1, a6, 1258
                  sltu         gp, s11, zero
                  srai         gp, t6, 15
308:              srl          s4, t4, t4
309:              andi         s11, tp, -1471
                  nop
                  beq          a1, t4, 319f
312:              and          s1, t5, t5
313:              sub          tp, a7, s4
314:              and          a6, s9, zero
                  lui          tp, 537302
                  bne          a1, a6, 327f
                  xor          s10, a5, s10
                  bne          s2, s1, 332f
319:              xori         a5, a3, 1272
                  bne          s1, t2, 322f
                  or           a1, s6, t1
322:              add          sp, t2, t5
                  bgeu         t6, s4, 328f
                  sub          a5, a7, t4
                  la           t5, sub_1
                  slli         a4, s8, 9
                  lui          t2, 741332
                  addi         t5, t5, -828
                  sll          a2, a7, s3
                  ori          t1, s1, 1865
                  lui          t4, 453816
main_j1:          jalr         t1, t5, 828 #jump main -> sub_1
                  slli         s7, zero, 9
                  bge          a2, a7, 340f
327:              srli         t3, a3, 11
328:              srli         a1, zero, 17
                  add          t0, a0, gp
                  sll          s7, s7, t5
                  and          s1, a2, s10
332:              addi         s7, t4, -822
                  slti         t5, s8, 1922
                  sra          a4, s2, s3
                  addi         s3, tp, -62
                  bge          tp, t6, 338f
                  and          zero, s1, s0
338:              slti         a1, t1, -206
                  sra          gp, s4, s0
340:              slli         s6, a0, 0
                  sltu         t4, a6, s5
                  slti         s6, a4, -148
                  add          s3, zero, s11
                  sra          s10, s6, zero
                  srl          a2, t5, a2
                  bge          t6, a0, 352f
                  sra          s4, a7, s11
                  lui          zero, 770020
                  addi         t3, ra, 1024
                  bgeu         a5, sp, 362f
                  beq          ra, s6, 361f
352:              andi         t4, a2, 1392
                  and          s8, a5, s9
                  blt          a6, s2, 356f
                  bgeu         gp, gp, 369f
356:              or           s3, s6, t0
                  nop
                  sll          t5, t5, t5
                  lui          a7, 546561
                  slt          s4, s6, a6
361:              andi         s7, s6, 58
362:              sltiu        s2, sp, 1697
                  srli         s8, s0, 15
                  srai         s3, t0, 3
                  sltu         t4, sp, s4
                  andi         t1, s10, 1174
                  auipc        s10, 329349
                  bgeu         a3, sp, 382f
369:              auipc        s1, 214442
                  srai         s1, s11, 16
                  srli         a2, t2, 15
                  andi         s4, t5, 340
                  and          tp, s10, a1
                  addi         s0, a1, 1010
                  addi         t1, a7, -1926
                  srli         s1, a3, 19
                  blt          t5, s3, 386f
                  blt          t3, t4, 382f
                  andi         s5, s2, 790
                  srai         tp, t0, 14
                  and          s8, s11, gp
382:              lui          s3, 329219
                  and          s7, s6, tp
                  sra          s1, s7, ra
                  or           a5, s6, a2
386:              xori         sp, ra, -1912
                  addi         t1, a5, 1177
                  lui          t2, 51994
                  add          t3, a3, ra
                  beq          a4, s0, 403f
                  addi         zero, t4, 912
                  srli         a7, gp, 16
                  sltiu        t4, s4, 907
                  srl          a2, a5, t1
                  bge          sp, s5, 398f
                  srl          s8, a4, s4
                  and          s4, a7, s6
398:              addi         s7, a7, -1035
                  nop
                  slti         a2, s0, 1661
                  or           sp, t3, a7
                  sub          a3, t1, t3
403:              andi         t2, s8, -1169
                  or           s4, a1, t4
                  srai         t5, gp, 11
                  addi         t5, s5, 1225
                  and          s0, sp, t6
                  sltu         s2, s7, t0
                  bge          sp, a7, 426f
                  xori         t3, s5, -1595
                  andi         t2, a7, 1946
                  blt          s2, a5, 425f
                  srli         s4, gp, 28
                  slt          t2, t3, t6
                  xor          a1, t0, s0
                  and          s5, s3, a5
                  xori         a4, s10, 1305
                  bge          s8, zero, 421f
                  and          a3, ra, s0
                  sltu         tp, a0, a4
421:              bgeu         s5, t1, 427f
                  bltu         a5, t1, 424f
                  sltu         a2, t3, s0
424:              auipc        s4, 14203
425:              or           zero, a7, s9
426:              ori          s0, t5, 685
427:              beq          t0, s9, 429f
                  sltiu        t1, gp, 1369
429:              sub          s7, s8, s0
                  blt          t2, s5, 435f
                  slt          s1, t3, s8
                  sltiu        a1, a7, -121
                  sltu         s6, s11, s5
                  sltiu        a2, a3, -1850
435:              or           s8, s5, s0
                  srli         t1, s3, 1
                  andi         s3, tp, 1372
                  bltu         a6, a4, 452f
                  nop
                  sltiu        t0, s7, -434
                  srl          tp, s10, s5
                  bne          a7, t4, 444f
                  sub          s2, s9, a2
444:              xor          s5, t4, zero
                  bltu         s3, tp, 458f
                  andi         s2, t4, -108
                  xori         gp, s10, -1123
                  bgeu         t6, s8, 450f
                  sub          tp, s1, t5
450:              lui          t6, 117176
                  sltu         s0, t2, t3
452:              srli         a6, a0, 6
                  lui          a3, 209434
                  auipc        t6, 128487
                  bltu         s9, t4, 466f
                  bgeu         a7, a2, 463f
                  bgeu         a4, s8, 461f
458:              sltu         s6, s8, s8
                  and          s3, t0, s6
                  and          s6, sp, a2
461:              auipc        sp, 789365
                  bge          tp, t3, 474f
463:              andi         a5, a0, -1437
                  srli         t6, t4, 6
                  sra          t0, t4, s9
466:              srl          s6, zero, a2
                  lui          s6, 80928
                  sltu         s3, t3, t2
                  and          s5, t3, s11
                  ori          a1, s4, -442
                  sltu         s0, s10, sp
                  ori          s1, gp, 1520
                  addi         s3, tp, -101
474:              auipc        a5, 47120
                  addi         s7, s2, 538
                  lui          a2, 87375
                  auipc        t3, 521379
                  beq          s6, s4, 480f
                  lui          s1, 601811
480:              bne          s4, gp, 485f
                  sltiu        s4, s8, 1149
                  ori          gp, s10, 1482
                  slli         a2, s2, 15
                  or           tp, a7, s6
485:              and          zero, s1, t0
                  sra          s8, s7, s11
                  sltu         t6, gp, s6
                  slti         s0, a3, -1398
                  auipc        s3, 148794
                  sub          gp, t2, a7
                  addi         s0, s5, 429
                  beq          a7, t1, 494f
                  addi         t2, s4, 436
494:              sra          tp, s9, s9
                  beq          sp, a7, 515f
                  srl          s4, a0, s9
                  slli         s8, s11, 6
                  sub          t1, a3, a6
                  andi         a3, t0, -464
                  slti         s8, a3, 1413
                  srai         s0, t0, 24
                  srl          s5, a2, s4
                  sltu         s4, s3, gp
                  slt          s5, s8, t6
                  sll          tp, a0, a1
                  bne          s3, t3, 520f
                  slt          s7, s0, s4
                  slti         s3, zero, 890
                  xor          t6, s2, t6
                  srli         a3, t1, 18
                  blt          a6, s4, 528f
                  bgeu         s10, s6, 531f
                  xor          s10, a1, s1
                  bltu         a2, gp, 524f
515:              srl          s3, a0, a3
                  blt          a1, s1, 532f
                  beq          s5, s7, 530f
                  sll          s2, s3, a0
                  xor          s2, s7, a1
520:              nop
                  addi         a3, a2, -574
                  addi         s8, s8, -721
                  sltiu        s11, a0, 761
524:              slti         a1, t4, -1860
                  addi         s10, s8, 340
                  bltu         tp, a2, 529f
                  srai         s4, a5, 11
528:              srai         s7, sp, 5
529:              bne          t3, t1, 531f
530:              sll          s10, a0, t2
531:              auipc        gp, 619176
main_2:           jal          t1, 1f
0:                jal          t1, 11f
1:                jal          s3, 12f
2:                jal          t1, 3f
3:                jal          t1, 8f
4:                jal          t1, 9f
5:                jal          gp, 18f
6:                jal          t1, 4b
7:                jal          a2, 17f
8:                jal          t1, 0b
9:                jal          t2, 16f
10:               jal          t1, 15f
11:               jal          sp, 6b
12:               jal          t5, 7b
13:               jal          a6, 2b
14:               jal          t4, 13b
15:               jal          t1, 5b
16:               jal          t1, 19f
17:               jal          t1, 10b
18:               jal          t5, 14b
19:               andi         s7, t4, -2039
532:              andi         zero, a2, 446
                  srai         a1, s8, 21
                  ori          tp, s4, 1005
                  slli         t5, t6, 10
                  slli         s11, ra, 1
                  ori          a1, a6, -943
                  srai         s10, a3, 4
                  bge          s3, s4, 553f
                  bne          a6, a5, 546f
                  bgeu         a0, s1, 560f
                  beq          s2, t1, 548f
                  slt          s1, t2, s11
                  beq          s9, s5, 547f
                  auipc        t5, 536921
546:              srl          t0, t0, t1
547:              sub          s6, a6, t3
548:              addi         s3, a3, -290
                  sll          s2, a2, sp
                  slt          s10, a1, s5
                  sltiu        a3, s5, -2009
                  srai         s6, t6, 9
553:              slli         t5, t1, 27
                  blt          t0, t6, 568f
                  sltu         s0, t1, s0
                  bltu         s7, a1, 565f
                  beq          t4, a0, 570f
                  blt          a7, a1, 566f
                  sll          t0, t2, a4
560:              sltiu        a6, a5, 756
                  addi         s4, s3, 1694
                  bgeu         sp, t3, 565f
                  blt          t1, s8, 572f
                  addi         a7, a0, -1892
565:              sltiu        s8, s4, 898
566:              bne          s0, ra, 580f
                  blt          a0, s1, 578f
568:              srli         s1, a5, 14
                  sra          s4, zero, t3
570:              sltu         t5, s10, s10
                  sltiu        t3, s7, -1408
572:              slti         gp, s3, -1600
                  sll          s10, a6, t0
                  beq          s0, t0, 591f
                  nop
                  auipc        a5, 981910
                  nop
578:              slli         s3, a0, 7
                  sra          a1, s8, s4
580:              and          s4, sp, a3
                  or           s7, a0, t6
                  xori         t1, s2, -1489
                  sub          a1, s11, s10
main_1:           jal          t1, 9f
0:                jal          s7, 6f
1:                jal          sp, 10f
2:                jal          s4, 8f
3:                jal          s7, 12f
4:                jal          t1, 5f
5:                jal          t6, 11f
6:                jal          t1, 4b
7:                jal          s1, 0b
8:                jal          gp, 3b
9:                jal          s2, 2b
10:               jal          tp, 13f
11:               jal          t1, 1b
12:               jal          s11, 7b
13:               slt          t1, t4, s5
                  ori          tp, a3, -141
                  bgeu         s6, t6, 587f
                  bne          s5, a4, 592f
587:              and          gp, a2, t5
                  auipc        s3, 619415
                  bne          zero, a7, 603f
                  sub          s11, t2, t1
591:              slti         t5, s7, 199
592:              xor          s0, a1, sp
                  sra          s1, zero, t3
                  or           t2, a6, s8
                  ori          a7, tp, -173
                  xor          t2, t4, a6
                  bgeu         gp, a7, 603f
                  slt          s6, s5, sp
                  blt          a5, s7, 618f
                  bne          t0, t4, 614f
                  nop
                  sub          s1, s3, t6
603:              nop
                  bgeu         s10, a1, 606f
                  bgeu         s4, ra, 617f
606:              slli         a4, a5, 8
                  bgeu         t2, t3, 620f
                  auipc        s1, 139306
                  auipc        a2, 364506
                  nop
                  and          tp, s0, a1
                  sra          s3, sp, zero
                  ori          s7, a2, -765
614:              andi         gp, a3, -942
                  srai         t1, t1, 21
                  xor          a6, s2, zero
617:              nop
618:              andi         a1, s4, 1596
                  add          t5, t1, t4
620:              srli         zero, s6, 2
                  slli         sp, a6, 6
                  srli         a6, t3, 1
                  bne          t3, gp, 631f
                  sltu         s11, s11, ra
                  srl          s5, s5, t3
                  srai         t1, t4, 6
                  bltu         s5, zero, 647f
                  xor          sp, s11, t1
                  auipc        t4, 820808
                  auipc        a7, 747539
631:              xor          t3, sp, s6
                  sub          s3, zero, s11
                  bgeu         s5, s7, 652f
                  beq          a3, a0, 636f
                  slt          s0, s8, t4
636:              sra          a5, s4, a2
                  sltiu        s7, a4, -1649
                  slli         t6, t6, 6
                  auipc        s11, 430126
                  slt          a5, t6, s6
                  addi         a2, zero, -792
                  sll          a5, a1, s7
                  xor          gp, a2, a3
                  sltiu        gp, a2, 1854
                  nop
                  addi         s10, zero, 1424
647:              slti         tp, a4, 533
                  srai         t2, s6, 29
                  bltu         t5, gp, 654f
                  sra          sp, t0, s5
                  srli         sp, ra, 30
652:              xori         t4, tp, 950
                  and          s8, a3, a1
654:              sltiu        s0, t1, -1927
                  sub          s7, a4, s1
                  slti         t1, s4, 798
                  lui          a2, 633531
                  bge          s7, t1, 668f
                  or           s5, s6, t0
                  slti         t1, s2, -921
                  sub          s10, t5, a7
                  srli         gp, zero, 23
                  sll          sp, a0, t2
                  sll          t3, t3, ra
                  slti         a2, s11, -1536
                  bgeu         a6, t4, 670f
                  add          t2, a5, a3
668:              slti         a7, t0, -1563
                  lui          a6, 885256
670:              andi         s11, t5, -1818
                  xori         a7, s3, 600
                  slli         a5, s11, 24
                  bltu         tp, s7, 675f
                  addi         s4, t5, 101
675:              auipc        s10, 50568
                  srl          s0, s2, t1
                  lui          t4, 191567
                  bge          t6, a0, 681f
                  sra          tp, s4, t5
                  add          s6, t2, t3
681:              xori         a2, s1, -493
                  srl          s3, tp, s11
                  slli         s11, ra, 18
                  auipc        t0, 558754
                  lui          s7, 70222
                  or           t6, s6, t4
                  bgeu         s6, ra, 689f
                  andi         tp, s3, 764
689:              sltu         t4, sp, zero
                  slti         t2, t4, 31
                  sltu         sp, t3, a5
                  bne          a2, t3, 693f
693:              sll          t6, t2, t6
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            sub          t4, gp, a2
                  bgeu         t4, s7, sub_3_stack_p
                  xori         s10, a4, 253
                  slt          s2, t3, a2
sub_3_stack_p:    addi         a0, a0, -64
                  sw           t1, 4(a0)
                  srai         s11, sp, 24
                  andi         a3, zero, -1506
                  add          s11, s5, a1
                  auipc        s7, 613589
                  auipc        gp, 591242
                  srai         t4, ra, 7
                  srli         sp, s9, 6
                  slt          s5, a4, s8
                  xori         s11, s0, 1509
                  la           a4, sub_4
                  and          s0, t1, s10
                  srl          t3, a7, a5
                  addi         a4, a4, 385
                  slt          a2, s6, a2
sub_3_j7:         jalr         t1, a4, -384 #jump sub_3 -> sub_4
sub_3_1:          jal          t1, 12f
0:                jal          t0, 19f
1:                jal          a1, 7f
2:                jal          a6, 16f
3:                jal          t1, 11f
4:                jal          t1, 3b
5:                jal          t1, 0b
6:                jal          t1, 23f
7:                jal          s4, 2b
8:                jal          s2, 18f
9:                jal          a7, 8b
10:               jal          t1, 4b
11:               jal          t1, 9b
12:               jal          t1, 5b
13:               jal          tp, 21f
14:               jal          sp, 17f
15:               jal          t1, 24f
16:               jal          t6, 20f
17:               jal          s5, 10b
18:               jal          t1, 13b
19:               jal          t5, 1b
20:               jal          s8, 6b
21:               jal          s3, 15b
22:               jal          a3, 14b
23:               jal          a7, 22b
24:               sub          s1, t3, a1
sub_3_0:          jal          t1, 19f
0:                jal          t0, 17f
1:                jal          t1, 7f
2:                jal          s8, 18f
3:                jal          t0, 20f
4:                jal          t1, 11f
5:                jal          t1, 9f
6:                jal          s11, 22f
7:                jal          t1, 8f
8:                jal          t1, 5b
9:                jal          t1, 15f
10:               jal          t1, 16f
11:               jal          sp, 23f
12:               jal          gp, 1b
13:               jal          a6, 25f
14:               jal          tp, 13b
15:               jal          t1, 14b
16:               jal          s1, 12b
17:               jal          t5, 2b
18:               jal          t3, 24f
19:               jal          t1, 21f
20:               jal          t1, 4b
21:               jal          sp, 6b
22:               jal          s6, 10b
23:               jal          sp, 26f
24:               jal          tp, 3b
25:               jal          t1, 0b
26:               sltu         s8, a6, s1
                  bltu         ra, zero, 7f
                  auipc        s2, 552522
                  andi         s4, sp, -1192
                  xori         a3, zero, 1739
                  slli         s10, s10, 18
                  xor          s10, t5, a4
                  sltu         s4, t2, s11
7:                beq          a3, s4, 15f
                  and          s6, s0, s10
                  sll          t5, s8, s3
                  bltu         s10, a3, 25f
                  xori         t3, t0, -1082
                  ori          s7, s3, -570
                  addi         t6, a4, -99
                  nop
15:               xori         s10, s8, 1632
                  andi         s0, t4, -538
                  xor          a7, s3, a2
                  sra          zero, t2, a1
                  ori          t2, s4, 286
                  lui          s4, 577549
                  bltu         s1, s1, 40f
                  bge          s8, s3, 39f
                  srai         s11, s0, 22
                  nop
25:               nop
                  xor          zero, a5, s6
                  sltiu        sp, s1, 978
                  sra          a3, t5, sp
                  srai         t6, t3, 18
                  or           s2, s9, a1
                  slti         s7, t2, 1622
                  blt          zero, t4, 47f
                  beq          t6, s5, 40f
                  nop
                  bne          s3, a6, 40f
                  add          a5, gp, s3
                  slti         t2, s3, 440
                  or           s4, t3, s9
39:               sll          s11, sp, t6
40:               sll          s10, tp, s1
                  and          a7, s0, t2
                  and          gp, tp, s6
                  sltiu        t6, t3, -1484
                  ori          s2, a7, -1514
                  and          tp, gp, a1
                  bne          t1, a4, 59f
47:               lui          s1, 667615
                  slti         t2, a3, -1681
                  or           t6, ra, a3
                  slti         t5, t0, 1816
                  and          a4, sp, s5
                  addi         s8, s7, -868
                  slt          s6, t3, ra
                  lui          t4, 349613
                  add          s1, s8, t1
                  sub          s6, a5, t3
                  sltiu        a3, s1, -1516
                  xori         t0, s0, 254
59:               lui          sp, 146128
                  add          a7, s6, t1
                  sltu         a6, s3, a1
                  blt          s10, s5, 77f
                  bne          s10, t1, 75f
                  auipc        s11, 662532
                  blt          s1, a2, 68f
                  slt          a7, s11, s0
                  xor          t6, s6, a5
68:               sub          t5, s5, s0
                  bne          zero, a6, 76f
                  nop
                  bgeu         s9, t6, 90f
                  addi         s4, s4, -1448
                  bgeu         a6, s10, 86f
                  slt          a3, zero, ra
75:               beq          s0, s11, 84f
76:               addi         s2, sp, 1639
77:               srai         a2, t2, 18
                  blt          s11, s5, 98f
                  lui          s8, 746986
                  bgeu         a4, s9, 97f
                  slti         t3, tp, -1021
                  sltu         a2, a6, a2
                  blt          tp, a2, 86f
84:               or           t6, zero, a1
                  lui          t5, 874666
86:               sltiu        a4, a7, 1530
                  bne          zero, sp, 92f
                  or           a2, s6, tp
                  xori         s3, t1, -40
90:               xori         zero, t0, -1317
                  sub          s3, s4, s5
92:               slti         s4, zero, -329
                  bge          s8, a3, 108f
                  sll          t0, tp, s4
                  bge          a2, t3, 105f
                  addi         zero, s11, 1491
97:               xori         t0, a6, -1339
98:               srli         t3, a3, 22
                  xor          s5, a3, sp
                  bgeu         sp, a4, 112f
                  bltu         a6, s0, 107f
                  sra          gp, s9, tp
                  sltiu        t0, a1, 349
                  xor          s0, sp, s2
105:              xor          sp, zero, a7
                  slli         sp, a2, 28
107:              sltiu        a6, a3, -867
108:              slti         s4, a5, 989
                  sll          t4, t3, s8
                  sub          t5, s3, s11
                  xori         s6, s9, 50
112:              nop
                  and          a2, s0, s4
                  bge          a1, a4, 116f
                  bgeu         s4, t4, 130f
116:              xori         a1, s3, 1585
                  andi         a6, s11, 191
                  sltu         s8, tp, s6
                  xori         t3, s8, -1725
                  andi         t2, a2, 1813
                  xor          s8, s2, sp
                  sll          a6, a3, zero
                  auipc        t6, 797436
                  ori          zero, a4, 1528
                  sltiu        s6, t5, -1964
                  srli         s4, s3, 30
                  srl          s2, gp, t1
                  sra          t5, sp, s4
                  slt          a2, s0, s4
130:              sra          s10, t1, s9
                  sub          a7, s6, s7
                  sll          a3, t6, a1
                  or           a7, a6, a2
                  xor          t5, s1, s1
                  bltu         t1, t2, 136f
136:              srl          t0, t4, t1
                  slt          s1, a3, zero
                  ori          zero, t4, -701
                  beq          a3, a6, 140f
140:              slli         s11, s1, 19
                  lw           t1, 4(a0)
                  nop
                  andi         s5, t6, 1729
                  sltu         s3, ra, s5
                  srai         s3, s5, 18
                  addi         t0, s7, -1994
                  lui          s11, 558036
                  addi         a0, a0, 64
                  sll          t4, a4, t3
                  sra          a4, a0, t5
226:              addi x13, x6, 1
226:              jalr x13, x13, 0
sub_1:            bltu         s11, sp, sub_1_stack_p
                  addi         s2, tp, -1802
sub_1_stack_p:    addi         a0, a0, -16
                  nop
                  srai         gp, t6, 27
                  sw           t1, 4(a0)
                  slti         zero, s7, 1278
                  or           t3, a4, t1
                  and          s8, tp, a5
                  auipc        s8, 122590
                  xori         a7, a7, 1351
                  sra          a3, s10, s9
                  slt          a3, s5, t1
                  bne          s9, s1, sub_1_j4 #branch to jump instr
                  sltiu        s10, s5, -1846
sub_1_j4:         jal          t1, sub_2 #jump sub_1 -> sub_2
sub_1_3:          jal          t1, 1f
0:                jal          t1, 5f
1:                jal          gp, 10f
2:                jal          t1, 9f
3:                jal          t1, 11f
4:                jal          t4, 7f
5:                jal          sp, 6f
6:                jal          tp, 12f
7:                jal          t1, 13f
8:                jal          t5, 2b
9:                jal          t0, 4b
10:               jal          t1, 0b
11:               jal          s3, 8b
12:               jal          t1, 3b
13:               sra          s2, t1, s11
sub_1_15:         jal          t1, 15f
0:                jal          sp, 19f
1:                jal          tp, 26f
2:                jal          s3, 25f
3:                jal          s0, 27f
4:                jal          tp, 21f
5:                jal          t1, 22f
6:                jal          t1, 20f
7:                jal          t1, 8f
8:                jal          a6, 18f
9:                jal          a7, 29f
10:               jal          t1, 4b
11:               jal          s6, 16f
12:               jal          s1, 3b
13:               jal          gp, 24f
14:               jal          t1, 2b
15:               jal          t2, 28f
16:               jal          t1, 14b
17:               jal          a1, 5b
18:               jal          t1, 9b
19:               jal          s3, 30f
20:               jal          t1, 17b
21:               jal          a3, 23f
22:               jal          tp, 13b
23:               jal          a3, 12b
24:               jal          s5, 10b
25:               jal          s7, 1b
26:               jal          t1, 0b
27:               jal          t1, 7b
28:               jal          tp, 6b
29:               jal          t6, 11b
30:               auipc        a3, 507085
sub_1_1:          jal          t1, 7f
0:                jal          t2, 1f
1:                jal          t1, 6f
2:                jal          t1, 9f
3:                jal          s6, 14f
4:                jal          s11, 0b
5:                jal          a7, 10f
6:                jal          t1, 3b
7:                jal          s6, 4b
8:                jal          gp, 15f
9:                jal          t1, 13f
10:               jal          a3, 11f
11:               jal          s0, 8b
12:               jal          t1, 2b
13:               jal          t1, 5b
14:               jal          t1, 12b
15:               slt          s11, t0, a6
sub_1_0:          jal          t1, 0f
0:                jal          t1, 7f
1:                jal          t1, 3f
2:                jal          t1, 5f
3:                jal          tp, 9f
4:                jal          s0, 1b
5:                jal          s6, 10f
6:                jal          t1, 8f
7:                jal          t5, 2b
8:                jal          t1, 4b
9:                jal          a5, 12f
10:               jal          t2, 11f
11:               jal          gp, 6b
12:               andi         t1, a7, 206
sub_1_9:          jal          t1, 3f
0:                jal          a7, 13f
1:                jal          t1, 2f
2:                jal          gp, 6f
3:                jal          t1, 14f
4:                jal          sp, 5f
5:                jal          gp, 10f
6:                jal          t5, 0b
7:                jal          tp, 1b
8:                jal          t1, 9f
9:                jal          t5, 11f
10:               jal          t2, 8b
11:               jal          a5, 7b
12:               jal          a2, 15f
13:               jal          t1, 12b
14:               jal          sp, 4b
15:               nop
sub_1_10:         jal          t1, 10f
0:                jal          sp, 2f
1:                jal          t2, 3f
2:                jal          s8, 4f
3:                jal          t1, 9f
4:                jal          a1, 1b
5:                jal          s6, 0b
6:                jal          t0, 5b
7:                jal          gp, 6b
8:                jal          a4, 7b
9:                jal          tp, 11f
10:               jal          sp, 8b
11:               jal          t1, 12f
12:               srai         s0, t3, 9
sub_1_4:          jal          t1, 3f
0:                jal          t1, 10f
1:                jal          t1, 18f
2:                jal          t3, 21f
3:                jal          t2, 0b
4:                jal          t1, 13f
5:                jal          t1, 8f
6:                jal          t0, 12f
7:                jal          s3, 1b
8:                jal          s1, 20f
9:                jal          t3, 14f
10:               jal          s11, 17f
11:               jal          s5, 2b
12:               jal          s2, 11b
13:               jal          t0, 16f
14:               jal          a7, 4b
15:               jal          a1, 7b
16:               jal          t1, 6b
17:               jal          t0, 15b
18:               jal          t1, 19f
19:               jal          t4, 5b
20:               jal          t1, 9b
21:               sltu         s2, t3, s2
sub_1_12:         jal          t1, 14f
0:                jal          s7, 11f
1:                jal          t1, 0b
2:                jal          t1, 16f
3:                jal          a2, 2b
4:                jal          t1, 8f
5:                jal          tp, 17f
6:                jal          t1, 4b
7:                jal          t1, 13f
8:                jal          gp, 15f
9:                jal          t1, 6b
10:               jal          t1, 12f
11:               jal          s10, 10b
12:               jal          t1, 7b
13:               jal          t1, 9b
14:               jal          t1, 1b
15:               jal          gp, 3b
16:               jal          t1, 5b
17:               auipc        s10, 926250
sub_1_5:          jal          t1, 0f
0:                jal          s1, 2f
1:                jal          t3, 5f
2:                jal          a5, 4f
3:                jal          s11, 1b
4:                jal          s1, 9f
5:                jal          a7, 6f
6:                jal          a1, 11f
7:                jal          s11, 3b
8:                jal          sp, 10f
9:                jal          a4, 8b
10:               jal          t1, 7b
11:               srl          s10, s8, t4
sub_1_2:          jal          t1, 1f
0:                jal          t1, 2f
1:                jal          t1, 8f
2:                jal          t2, 3f
3:                jal          t1, 7f
4:                jal          t3, 15f
5:                jal          a6, 0b
6:                jal          t1, 18f
7:                jal          t0, 6b
8:                jal          t1, 12f
9:                jal          gp, 14f
10:               jal          s3, 11f
11:               jal          s11, 17f
12:               jal          a7, 16f
13:               jal          s4, 5b
14:               jal          sp, 13b
15:               jal          a6, 9b
16:               jal          t1, 4b
17:               jal          t1, 19f
18:               jal          a3, 10b
19:               sltu         t1, a5, s9
sub_1_6:          jal          t1, 0f
0:                jal          s11, 10f
1:                jal          s2, 2f
2:                jal          s3, 5f
3:                jal          a6, 6f
4:                jal          t1, 3b
5:                jal          t0, 8f
6:                jal          t1, 11f
7:                jal          a6, 1b
8:                jal          t6, 4b
9:                jal          t2, 7b
10:               jal          t1, 9b
11:               lui          t5, 30468
sub_1_11:         jal          t1, 1f
0:                jal          t3, 18f
1:                jal          t1, 20f
2:                jal          a4, 7f
3:                jal          t0, 15f
4:                jal          t1, 21f
5:                jal          t1, 14f
6:                jal          t4, 2b
7:                jal          s8, 3b
8:                jal          t1, 13f
9:                jal          t1, 16f
10:               jal          t1, 17f
11:               jal          t1, 6b
12:               jal          s5, 4b
13:               jal          t4, 5b
14:               jal          t0, 12b
15:               jal          t1, 0b
16:               jal          s8, 11b
17:               jal          a6, 9b
18:               jal          t1, 19f
19:               jal          t1, 8b
20:               jal          t0, 10b
21:               xori         t2, s3, 1580
sub_1_13:         jal          t1, 4f
0:                jal          t1, 10f
1:                jal          a4, 3f
2:                jal          t1, 9f
3:                jal          s6, 7f
4:                jal          t1, 8f
5:                jal          s11, 0b
6:                jal          gp, 15f
7:                jal          a7, 12f
8:                jal          t1, 11f
9:                jal          a6, 16f
10:               jal          t1, 14f
11:               jal          t1, 5b
12:               jal          t1, 13f
13:               jal          t1, 2b
14:               jal          s10, 6b
15:               jal          s11, 1b
16:               auipc        t6, 1006108
sub_1_7:          jal          t1, 18f
0:                jal          t1, 15f
1:                jal          s11, 24f
2:                jal          s2, 11f
3:                jal          tp, 17f
4:                jal          t1, 8f
5:                jal          s0, 4b
6:                jal          t1, 2b
7:                jal          sp, 13f
8:                jal          s10, 6b
9:                jal          tp, 12f
10:               jal          a5, 14f
11:               jal          s6, 25f
12:               jal          t1, 3b
13:               jal          s0, 0b
14:               jal          t1, 26f
15:               jal          t1, 20f
16:               jal          t1, 7b
17:               jal          t1, 1b
18:               jal          t1, 5b
19:               jal          s10, 21f
20:               jal          sp, 23f
21:               jal          tp, 16b
22:               jal          t1, 10b
23:               jal          t6, 9b
24:               jal          t1, 22b
25:               jal          s3, 19b
26:               sltiu        t4, a0, -125
                  bltu         a5, gp, 6f
                  beq          a0, a7, 7f
                  add          s5, s10, sp
                  slli         s6, a1, 9
                  bge          s6, s7, 23f
                  srl          t0, t3, t4
6:                xor          t0, s2, t6
7:                lui          zero, 423541
                  sltu         a3, t4, t5
                  srl          s2, s11, t2
                  srai         sp, a2, 0
                  auipc        sp, 114069
                  bne          s11, t0, 13f
13:               sub          zero, s11, t1
                  sltu         a7, a0, gp
                  beq          s2, s3, 28f
                  add          zero, a1, gp
                  nop
                  bne          s7, tp, 35f
                  bge          s1, s3, 36f
                  xori         t2, a3, -1120
                  sll          a3, a4, t6
                  nop
23:               sltu         t2, a5, t6
                  blt          t4, t4, 38f
                  sub          s7, t2, a6
                  bne          a5, t4, 27f
27:               bne          gp, s8, 34f
28:               srai         t3, t0, 5
                  slt          s5, a5, s10
                  sub          a1, s8, t0
                  or           sp, t0, s11
                  sub          s3, t2, a6
                  lui          s1, 645159
34:               add          a2, s4, a7
35:               add          a4, ra, s7
36:               addi         s8, s7, 1213
                  xori         tp, a5, -1991
38:               ori          s6, t5, 1412
                  addi         a2, t4, -1739
                  nop
                  slt          tp, s0, t6
                  bgeu         a4, t2, 48f
                  slti         zero, gp, 1874
                  slt          a2, s4, s0
                  lui          a2, 716138
                  ori          s7, a2, -263
                  srl          s7, t0, a2
48:               sll          t5, s7, s9
                  srai         s11, s0, 20
                  addi         t0, t5, -1017
                  srli         t1, a4, 28
                  nop
                  bge          t5, a4, 58f
                  bltu         s11, s8, 68f
                  bge          a5, s8, 64f
                  bgeu         s7, s6, 65f
                  sll          a6, s5, a5
58:               blt          s2, t4, 60f
                  bgeu         s7, a7, 68f
60:               sltu         tp, s5, t0
                  add          s8, s8, t1
                  slti         a1, t5, 42
                  add          s5, tp, a4
64:               bne          t1, a4, 67f
65:               lui          t6, 229967
                  auipc        a5, 39482
67:               bne          s7, a1, 81f
68:               sll          s6, s0, s9
                  nop
                  and          a1, a6, s6
                  ori          s11, a6, 428
                  xor          s7, s6, a7
                  lui          t3, 533184
                  srl          t2, s4, s5
                  and          t1, s5, ra
                  sll          s8, sp, s1
                  bltu         s5, s10, 82f
                  sub          a5, s6, s4
                  srli         zero, s5, 16
                  andi         gp, s8, 819
81:               sra          t5, s6, s10
82:               srli         s4, s10, 21
                  slt          s8, a0, s1
                  xor          sp, t5, a5
                  srai         t1, s1, 31
                  xori         a6, tp, -587
                  addi         s2, tp, -1425
                  andi         s1, t0, -47
                  srai         s11, a2, 5
                  ori          a5, s2, 855
                  srl          t1, s1, t6
                  nop
                  blt          ra, t0, 113f
                  blt          t6, a5, 96f
                  sub          s6, s9, s0
96:               andi         s1, s11, -1931
                  sltiu        a6, a0, 1539
                  auipc        s10, 72349
                  sltiu        t5, a0, 544
                  xori         t1, t3, -298
                  slti         s7, a1, 1936
                  bltu         t5, sp, 111f
                  slt          t6, t6, s8
                  sltiu        a5, s10, 754
                  blt          t1, s7, 112f
                  srai         a2, t2, 23
                  xor          zero, zero, ra
                  sub          t1, sp, t2
                  bge          s2, s3, 120f
                  srl          t5, t0, s6
111:              bgeu         t5, t6, 128f
112:              sll          s4, s0, a5
113:              bge          a2, t5, 130f
                  andi         s3, sp, 1673
                  addi         a7, tp, -427
                  srli         s2, s3, 19
                  xori         s11, a4, -1869
                  bne          s1, s1, 135f
                  and          a4, a4, s9
120:              or           a3, s5, s9
                  xori         t2, ra, -1958
                  andi         a2, a3, -1760
                  sltu         s0, gp, gp
                  sltiu        s7, s1, 863
                  slli         a2, a7, 22
                  sll          s5, s10, zero
                  andi         a7, s4, 1799
128:              bltu         t6, t0, 138f
                  and          a6, s7, ra
130:              sub          sp, t2, a3
                  add          s6, t6, s5
                  srl          t1, a4, a4
                  blt          ra, s9, 149f
                  slti         s7, s10, 807
135:              xor          t3, a6, t4
                  sra          s7, t0, a7
                  srl          s11, tp, a3
138:              blt          a4, t4, 147f
                  srli         s3, t3, 1
                  sll          t6, s7, gp
                  bgeu         s1, t2, 158f
                  srl          s1, a7, s7
                  auipc        s1, 930251
                  sub          s3, s2, s1
                  bltu         a0, s2, 162f
                  srai         s5, a0, 19
147:              xor          s1, a1, t0
                  nop
149:              lui          s0, 1007966
                  blt          sp, t0, 152f
                  slti         s10, a7, 1184
152:              bge          s2, t1, 161f
                  srli         a6, gp, 22
                  bltu         a6, a5, 167f
                  slti         s0, s6, 680
                  slti         a5, tp, -1294
                  bne          t0, s7, 177f
158:              bltu         tp, s5, 175f
                  ori          a1, gp, -1100
                  or           t0, tp, t5
161:              or           s1, t3, a0
162:              blt          t2, a3, 178f
                  bne          a2, s10, 172f
                  bgeu         s8, sp, 166f
                  or           s11, t6, a6
166:              srai         t2, t1, 16
167:              ori          s11, t4, 486
                  blt          a0, t3, 169f
169:              srai         t3, t2, 22
                  srai         a7, s10, 22
                  or           t0, sp, s0
172:              slt          s2, s11, s4
                  and          s8, gp, t3
                  ori          a6, t6, 374
175:              sub          t5, s5, t0
                  or           t3, a5, a3
                  slti         s4, s8, 864
                  ori          s10, s7, 1593
                  auipc        a2, 570847
                  sra          t2, a0, s7
                  or           a5, s3, t6
                  beq          a6, s0, sub_1_j5 #branch to jump instr
                  sll          s2, t1, zero
                  or           s6, sp, a3
                  ori          t4, a5, -998
sub_1_j5:         jal          t1, sub_3 #jump sub_1 -> sub_3
177:              bne          a1, s1, 180f
178:              srl          s4, t6, t4
                  nop
180:              srli         a1, t4, 13
                  srli         a4, s0, 5
                  add          t0, s11, t4
                  slt          sp, t5, sp
                  sltiu        gp, t3, 9
                  beq          a7, s4, 192f
                  or           t1, t4, s10
                  sltiu        t1, s5, 719
                  auipc        t4, 821725
                  blt          a0, t3, 203f
                  srli         a5, tp, 13
                  addi         s10, t3, -1041
192:              auipc        a5, 337661
                  slli         s1, zero, 26
                  slti         s2, s1, -2021
                  add          t6, t4, s7
                  xori         sp, s4, 1735
                  andi         gp, t5, -1801
                  bge          t2, zero, 215f
sub_1_14:         jal          t1, 10f
0:                jal          a4, 5f
1:                jal          t1, 11f
2:                jal          s10, 4f
3:                jal          tp, 1b
4:                jal          s10, 24f
5:                jal          t1, 13f
6:                jal          a6, 23f
7:                jal          s8, 8f
8:                jal          gp, 12f
9:                jal          s3, 26f
10:               jal          t1, 18f
11:               jal          t2, 15f
12:               jal          t1, 27f
13:               jal          s10, 20f
14:               jal          t1, 3b
15:               jal          t1, 2b
16:               jal          t2, 21f
17:               jal          t2, 14b
18:               jal          t1, 16b
19:               jal          s10, 17b
20:               jal          s8, 7b
21:               jal          s6, 19b
22:               jal          sp, 25f
23:               jal          t1, 22b
24:               jal          tp, 6b
25:               jal          t1, 9b
26:               jal          t1, 0b
27:               auipc        t3, 465449
                  or           t6, s7, t2
                  bgeu         a7, tp, 214f
                  sll          a7, a1, a2
                  auipc        a2, 401051
203:              slti         a6, a6, 1255
                  xor          a5, t4, ra
                  andi         a6, s7, 1377
                  add          tp, s6, t6
                  sltu         t2, t4, a1
                  bgeu         t3, s7, 227f
                  bgeu         s10, s5, 226f
                  ori          zero, t6, 1338
                  bltu         s11, a5, 217f
                  andi         s10, sp, 441
                  srli         s1, t2, 25
                  lui          s3, 283537
                  slti         a2, s4, 467
                  auipc        zero, 195098
                  add          s2, s0, s6
                  sub          s0, a5, a2
                  or           s11, a5, a6
                  slt          s1, a3, zero
                  andi         t6, a3, -1235
                  slti         s5, s4, 1588
sub_1_j3:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  slt          a6, s6, s8
214:              beq          a5, s2, 215f
215:              sll          t0, t4, s9
                  and          a6, s3, t5
217:              nop
                  and          tp, gp, a7
                  nop
                  srli         tp, a7, 12
                  addi         s7, t4, -972
                  addi         a1, s11, 1911
                  or           tp, a4, s7
                  sub          t1, s6, t5
                  auipc        a5, 93806
226:              auipc        s11, 702574
227:              bne          s1, s11, 238f
                  nop
                  slli         zero, a7, 14
                  xori         s7, a3, 320
                  sltu         a3, s7, zero
                  srl          tp, zero, s6
                  andi         s5, s11, 651
                  bne          s3, s3, 239f
                  auipc        s4, 497763
                  sra          t5, s8, t3
                  add          t4, t6, a1
238:              sra          s5, s0, a1
239:              ori          zero, zero, 1941
                  sltiu        t5, s2, -602
                  sub          s1, t0, s5
                  sltiu        t0, s1, 1851
                  nop
                  srai         s11, gp, 27
                  sub          s5, s4, a4
                  and          s0, a1, s9
                  and          a6, a6, t6
                  and          s3, s0, ra
                  xori         a6, s9, 1
                  slti         a2, s1, -741
                  or           s6, s11, s3
                  andi         sp, a1, -29
                  sra          t3, a4, t3
                  nop
                  bgeu         s4, t5, 262f
                  slli         a1, t6, 0
                  addi         t1, t6, 81
                  addi         s1, s8, -878
                  and          sp, a7, a5
                  srli         a4, t1, 7
                  auipc        sp, 276353
262:              srai         sp, s11, 14
                  bne          s6, a0, 269f
                  sll          t1, ra, s8
                  sra          sp, s6, a0
                  srai         a6, t5, 19
                  beq          a2, s4, 281f
                  sltu         a4, s11, s7
269:              ori          t2, zero, -403
                  sltiu        zero, sp, 696
                  addi         a5, a7, 1724
                  andi         s6, zero, -372
                  beq          t1, s7, 278f
                  sltiu        s4, s9, -409
                  addi         s3, gp, 847
                  sltu         s7, gp, a6
                  xor          a4, s11, s8
278:              auipc        a7, 1000359
                  beq          s2, zero, 288f
                  ori          s4, t4, 1552
281:              bge          a6, t1, 291f
                  bltu         s4, t3, 288f
                  addi         s5, a4, -1418
                  ori          a6, a7, -648
                  andi         a2, t2, 614
                  bge          s5, a5, 295f
                  slli         s8, s6, 10
288:              srai         t3, s1, 6
                  bge          s3, s1, 309f
                  sra          t5, a3, s6
291:              bltu         s1, t2, 310f
                  add          s4, s2, a1
                  srl          tp, t6, a1
                  or           a3, s0, a4
295:              or           a6, s2, s6
                  slt          t3, a2, a1
                  addi         a3, s2, 1952
                  nop
                  sll          s3, a5, s8
                  sltiu        t0, t3, 740
                  add          s10, s9, t4
                  bne          tp, t5, 308f
                  bge          a7, t5, 306f
                  sll          s8, t3, s9
                  bne          t4, t2, 306f
306:              andi         t6, s2, 186
                  sll          s1, a4, gp
308:              srl          t5, s11, a4
309:              srli         s2, s3, 25
310:              or           s0, a1, t5
                  srl          s2, ra, tp
                  andi         s7, t1, 370
                  sub          s2, s10, s11
                  slt          sp, a7, s3
                  bne          s8, t2, 326f
                  addi         s0, t3, 70
                  sltiu        sp, s11, -1208
                  sltiu        t6, s2, 1730
                  sub          t3, t6, s6
                  add          t2, zero, t3
                  sll          s1, a4, t4
                  and          t2, a4, t0
                  slli         t3, s10, 16
                  srl          t5, s0, s9
                  xor          t4, s6, s5
326:              sltu         zero, a2, s7
                  or           sp, t3, s0
                  beq          t1, s9, 342f
                  bge          a3, a6, 335f
                  sll          s2, a0, s0
                  sll          a5, s6, t6
                  slli         t5, t3, 29
                  or           t1, s3, gp
                  sra          s1, gp, tp
335:              sra          t3, s5, a4
                  slli         a7, s10, 24
                  auipc        s3, 970361
                  slli         s8, s0, 17
                  xori         s5, s11, 840
                  slli         t2, a0, 29
                  sltiu        tp, a0, 237
342:              or           s5, t2, s11
                  slt          a1, a1, ra
                  lui          a6, 188684
                  bne          a5, t0, 359f
                  slti         t6, s10, -556
                  bltu         s6, a5, 363f
                  xori         t1, t3, 1037
                  sll          s0, s9, t4
                  add          tp, a5, s5
                  bne          s7, s9, 368f
                  srl          t1, s5, s4
                  lui          s11, 351818
                  nop
                  srl          t1, a2, t6
                  sub          s7, s5, t6
                  blt          t3, s0, 371f
                  beq          t2, s10, 360f
359:              slt          s11, s7, s0
360:              addi         s6, s2, 730
                  and          s3, tp, a0
                  srai         tp, s2, 19
363:              ori          a4, a1, 325
                  xori         s10, a3, -975
                  bge          a7, a2, 370f
                  auipc        s5, 229770
                  sltu         zero, a6, s9
368:              add          t2, a6, s10
                  sll          s8, sp, s3
370:              andi         s10, t0, 2035
371:              blt          s4, s9, 372f
372:              beq          a5, tp, 389f
                  slti         s6, t1, 913
                  addi         s11, a1, -265
                  slt          a2, a3, s9
                  lui          s1, 10694
                  sra          t4, t2, t2
                  or           s8, sp, s1
                  bne          s3, t0, 388f
                  addi         t1, s5, -526
                  sll          gp, a2, s0
                  sltiu        s10, t5, 1662
                  srai         s1, a6, 17
                  bne          tp, t0, 389f
                  bgeu         s10, s9, 402f
                  lui          s1, 572132
                  sltu         gp, t2, t4
388:              srli         s4, s4, 14
389:              xori         s8, s5, 657
                  sra          s8, s4, s5
                  bge          s4, s4, 398f
                  slti         s0, s9, 633
                  bltu         s10, t3, 400f
                  or           s7, tp, a0
                  lui          t2, 260936
                  srl          t6, t3, a0
                  srl          a2, zero, t6
398:              srli         s4, s6, 22
                  bltu         a5, gp, 409f
400:              beq          t0, s4, 417f
                  slli         t1, s5, 10
402:              slt          sp, s10, a6
                  addi         s6, a6, 1637
                  xori         s5, s4, -1056
                  auipc        s7, 117192
                  srli         zero, a5, 16
                  sltiu        t2, s7, 125
                  slt          s8, s5, a7
409:              auipc        a2, 77974
                  bge          a6, a0, 423f
                  srli         a4, s2, 27
                  sll          s4, s10, sp
                  sltiu        t3, a7, 1016
                  xori         s6, t3, 1239
                  and          t4, a2, s1
                  addi         t1, a6, 116
417:              or           s11, a2, s6
                  add          t0, ra, a1
                  lui          a6, 777386
                  bltu         tp, s1, 422f
                  bgeu         s2, t1, 438f
422:              xori         gp, a2, 634
423:              sll          a4, t6, t2
                  srai         a5, s10, 10
                  sltu         sp, s3, t0
                  sra          t3, a3, s4
                  bltu         s11, s3, 436f
                  bltu         s2, a5, 434f
                  bne          ra, zero, 438f
                  sll          sp, s11, tp
                  xori         t0, gp, 1769
                  or           t5, t6, t6
                  slti         sp, s9, 1759
434:              slt          s10, a6, a2
                  slti         a6, s2, -91
436:              or           a7, t4, s4
                  andi         a4, tp, -1158
438:              bgeu         s11, a1, 447f
                  and          s10, s1, a2
                  sltu         s8, t1, a1
                  beq          tp, s3, 458f
                  slti         s5, gp, 702
                  sub          a7, s0, t1
                  addi         a6, sp, -99
                  lui          t2, 624818
                  slti         s8, sp, -1110
447:              sll          t3, a1, a5
                  ori          s0, s4, 1833
                  auipc        t1, 15223
                  xor          t6, t1, s9
                  bge          a5, a6, 468f
                  bgeu         t0, s5, 458f
                  xor          tp, gp, t3
                  bgeu         t3, a2, 455f
455:              bltu         t1, t3, 475f
                  ori          t6, gp, 448
                  bltu         a3, a4, 474f
458:              sub          s1, t3, s7
                  bgeu         a4, zero, 460f
460:              auipc        t5, 352298
                  andi         gp, a7, 1004
                  blt          gp, a3, 476f
                  auipc        t3, 775062
                  bgeu         s10, s3, 480f
                  sltiu        s1, a3, 1020
                  xori         t2, s8, 1491
                  slli         t0, a1, 16
468:              srai         tp, s1, 24
                  srai         t5, s6, 21
                  add          tp, s0, s3
                  bge          a2, s1, 485f
                  sltu         gp, s8, a2
                  addi         zero, t4, 1717
474:              srl          s0, a1, t1
475:              sub          s11, a6, a3
476:              and          s10, a0, zero
                  sll          s1, s11, a7
                  sra          t4, a6, s1
                  auipc        s5, 675094
480:              sra          zero, t2, gp
                  addi         s1, a7, 832
                  bltu         t6, a5, 489f
                  bgeu         a5, t0, 497f
                  slli         s6, s1, 12
485:              slli         sp, a4, 29
                  bne          t6, sp, 496f
                  and          a2, gp, t2
                  srai         s10, ra, 13
489:              slti         t6, t3, 1326
                  add          a2, s10, t6
                  auipc        s4, 739609
                  nop
                  sub          tp, t2, s7
                  sll          t3, s8, a5
                  sltu         s3, t4, zero
496:              sra          a5, s4, a3
497:              auipc        t4, 1001399
                  bgeu         sp, a1, 504f
                  beq          a1, s2, 516f
                  beq          a1, t2, 502f
                  bne          a3, sp, 520f
502:              or           s4, t2, s3
                  srli         t2, s1, 11
504:              bgeu         a6, s5, 513f
                  slti         a5, a3, -1280
                  bgeu         a4, a2, 513f
                  srai         s8, a6, 30
                  srai         s10, s7, 14
                  sub          s1, t1, a0
                  slt          t1, s8, s4
                  bge          a0, ra, 516f
                  beq          a2, s4, 521f
513:              nop
                  sll          t5, a6, t0
                  bne          t1, a1, 528f
516:              slt          tp, s2, sp
                  srai         s3, s3, 9
                  srl          a7, t4, tp
                  srli         s5, s9, 0
520:              sra          s8, a1, a1
521:              sltiu        s1, t5, 232
                  slt          s4, s1, s9
                  addi         s4, t2, -1870
                  xori         a5, t2, 1393
                  andi         s8, tp, 1315
                  slli         s5, t4, 28
                  sub          a2, s5, t5
528:              srl          t1, t2, s8
                  lui          s0, 619777
                  ori          t1, a4, -287
                  blt          sp, t1, 536f
                  bge          s11, a5, 549f
                  and          s1, s7, t2
                  slli         a3, s8, 10
                  or           s10, a5, a3
536:              slt          s7, s3, a1
                  bgeu         a5, a6, 548f
                  bltu         s1, a4, 541f
                  blt          a4, a2, 548f
                  andi         s7, gp, 2015
541:              addi         s6, s2, 374
                  beq          s5, s1, 548f
                  bgeu         a5, sp, 545f
                  xori         s1, t0, -411
545:              sll          a2, s2, s2
                  and          a3, t0, a2
                  sltu         s11, sp, s3
548:              addi         sp, t2, 1991
549:              srli         s7, s3, 11
                  srai         sp, s9, 4
                  xor          s11, a4, a1
                  or           s8, a0, a4
                  xor          a2, gp, s2
                  auipc        a4, 454303
                  sra          sp, sp, zero
                  bne          s5, a0, 573f
                  or           s4, t5, a0
                  slt          t2, s4, a6
                  slli         s11, s1, 28
                  sltiu        s11, gp, -1935
                  or           a3, a5, s0
                  addi         t6, tp, -1960
                  xor          t0, s2, s1
                  blt          t2, s7, 565f
565:              slti         a5, s3, -351
                  srai         s10, a7, 29
                  bgeu         a1, t1, 581f
                  addi         s2, s2, 1854
                  nop
                  bgeu         tp, sp, 579f
                  or           a2, t3, s7
                  add          t1, sp, zero
573:              bge          sp, t1, 578f
                  bge          s4, a5, 580f
                  and          s11, a2, t4
                  sltiu        t4, s10, 397
                  sra          t5, t2, s10
578:              bne          t0, s1, 584f
579:              ori          s10, s3, -941
580:              xor          s6, t3, s8
581:              srai         s2, a5, 4
                  slti         s0, sp, -883
                  srai         s7, s3, 30
584:              sltu         a7, zero, s6
                  nop
                  beq          s9, a1, 605f
                  xori         s6, a3, 1090
                  slt          s10, a3, a5
                  blt          s2, sp, 598f
                  auipc        gp, 463662
                  beq          zero, s11, 605f
                  blt          s1, a0, 599f
                  andi         t0, zero, 102
                  slli         t4, s8, 17
                  slti         sp, ra, -1064
                  bge          t1, a7, 605f
                  sra          t0, t6, a3
598:              bne          s5, t2, 615f
599:              bgeu         t4, t4, 615f
                  and          s2, a7, a5
                  nop
                  srli         a6, s4, 7
                  auipc        a1, 262147
                  auipc        s10, 596948
605:              xori         s10, s4, 555
                  xor          a7, s7, t3
                  xori         a7, s11, -920
                  srl          a2, t2, t2
                  srai         a6, s2, 2
                  or           s7, s5, t2
                  beq          tp, a1, 628f
                  sra          a4, t5, s4
                  sra          t6, a0, a5
                  slt          t2, t2, s8
615:              bgeu         s8, t2, 616f
616:              andi         s4, s5, -464
                  slti         s7, s2, 1389
                  srl          s4, t6, s3
                  slli         s3, a7, 22
                  beq          gp, gp, 627f
                  slli         s4, ra, 23
                  auipc        t2, 193658
                  xor          t4, a0, a4
                  ori          s3, s0, -957
                  lui          t1, 510328
                  xori         a4, s11, 745
627:              add          s6, s0, s9
628:              slt          s2, ra, gp
                  sll          gp, tp, s1
                  bne          a6, a4, 640f
                  addi         gp, s9, 283
                  nop
                  xori         t0, s0, -162
                  auipc        s0, 394195
                  srl          t1, a0, s7
                  addi         a5, s11, 944
                  srai         t6, t5, 8
                  bgeu         t1, t3, 651f
                  xori         s3, s6, -1663
640:              xori         t2, s0, -80
                  beq          t3, a3, 647f
                  lui          a4, 620413
                  or           t4, t1, s11
                  bgeu         a6, t4, 649f
                  xor          s3, a3, s4
                  sltu         s4, s1, t4
647:              lui          s3, 805277
                  slt          s5, t1, tp
649:              sll          a6, gp, s8
                  bge          s9, a6, 661f
651:              addi         a4, gp, 12
                  lui          t1, 572637
                  sltu         s0, tp, a7
                  sll          t0, s0, s1
                  sltu         gp, s1, t0
                  addi         zero, a7, -116
                  sltiu        s11, a6, -1296
                  or           s10, s7, tp
                  bgeu         a7, sp, 676f
                  slti         s7, a4, 432
661:              nop
                  slti         sp, t3, -999
                  slti         t6, a7, 671
                  slt          a3, a2, t1
                  srl          tp, s9, t2
                  srai         s0, a4, 30
                  sltiu        s3, a7, -846
                  srli         s4, ra, 30
                  srai         tp, a4, 21
                  auipc        a4, 571996
                  nop
                  nop
                  lui          a3, 69859
                  add          s10, s11, s8
                  slt          s0, s3, t0
676:              blt          a1, t1, 678f
                  slt          s1, a2, t5
678:              sll          s8, s4, gp
                  sub          a5, a1, a6
                  srli         s6, s9, 28
                  sub          a2, s8, a6
                  slti         a2, t4, 467
                  andi         a4, s7, 1560
                  slti         t3, a4, -1448
                  or           a1, a0, gp
                  auipc        s4, 969823
                  ori          s8, s5, -550
                  or           a5, s2, s9
                  and          tp, a2, s1
                  bne          s5, t6, 710f
                  addi         s3, s7, 512
                  bltu         sp, t6, 709f
                  srli         s0, t2, 20
                  or           s11, a5, a0
                  bge          s6, a7, 697f
                  nop
697:              sub          t3, a3, gp
                  srai         s10, s2, 11
                  bge          s1, ra, 702f
                  or           gp, s6, s0
                  sub          s6, s10, s9
702:              bne          a1, a6, 716f
                  bgeu         t6, s10, 712f
                  bne          t1, gp, 721f
                  addi         s7, a5, 633
                  sra          s10, zero, s8
                  beq          t3, t3, 709f
                  slli         t2, s8, 30
709:              sra          s7, s4, a7
710:              sltu         s1, t1, gp
                  addi         s10, a0, -759
712:              srl          zero, s1, gp
                  and          a7, s11, tp
                  andi         s5, t4, -204
                  bltu         t6, s4, 724f
716:              andi         a3, a6, 167
                  or           sp, a3, t5
                  srai         a5, a0, 23
                  bge          s6, s4, 728f
                  addi         t4, s11, -2030
721:              srai         a5, t6, 23
                  sltiu        a5, s2, -792
                  ori          s7, s6, 2004
724:              auipc        s0, 39561
                  slt          s5, a1, t2
                  or           t3, s10, t0
                  slli         s11, s9, 14
728:              sll          s2, s0, t1
                  bne          a6, s1, 730f
730:              lui          a2, 167364
                  bne          zero, t5, 740f
                  auipc        s5, 523423
                  beq          s5, s4, 749f
                  nop
                  sub          gp, s10, s3
                  sll          a6, ra, sp
                  or           a6, gp, s8
                  and          tp, t4, a6
                  bltu         tp, s0, 756f
740:              beq          a7, t3, 760f
                  or           s7, t2, s1
                  xori         a5, t2, -873
                  xor          s3, t5, s4
                  xori         s4, s2, -909
                  sll          gp, s1, s11
                  sltu         gp, t3, a0
                  addi         a3, s6, -771
                  ori          s2, s6, 635
749:              sltiu        t2, zero, 969
                  and          a2, a3, t2
                  bgeu         t6, t1, 758f
sub_1_8:          jal          t1, 15f
0:                jal          a5, 27f
1:                jal          t1, 21f
2:                jal          sp, 4f
3:                jal          a5, 2b
4:                jal          t1, 20f
5:                jal          s5, 25f
6:                jal          t0, 16f
7:                jal          t1, 12f
8:                jal          t0, 10f
9:                jal          s5, 18f
10:               jal          s8, 1b
11:               jal          s4, 17f
12:               jal          t1, 8b
13:               jal          t1, 0b
14:               jal          tp, 19f
15:               jal          a4, 9b
16:               jal          t1, 7b
17:               jal          t3, 5b
18:               jal          a4, 6b
19:               jal          s11, 24f
20:               jal          a5, 14b
21:               jal          t2, 23f
22:               jal          t6, 11b
23:               jal          gp, 3b
24:               jal          t1, 22b
25:               jal          t1, 26f
26:               jal          a7, 13b
27:               sll          s4, ra, sp
                  beq          s7, t1, 769f
                  andi         s0, gp, -2038
                  sltu         a1, a3, s10
                  sltiu        a2, s0, 141
756:              or           a3, t6, a5
                  andi         sp, a3, -369
758:              slt          zero, a2, t2
                  bgeu         s10, sp, 773f
760:              or           zero, a2, a5
                  sll          s5, s0, a2
                  srai         t3, s1, 13
                  addi         s7, s6, -25
                  xor          s3, s6, a0
                  srai         t5, tp, 2
                  slli         a3, s0, 29
                  beq          a2, a3, 781f
                  addi         s0, s4, 803
769:              srli         s11, a4, 13
                  add          zero, a7, sp
                  srai         t3, t0, 13
                  bltu         t1, s11, 773f
773:              xori         a6, s3, 1407
                  slt          t0, t4, s7
                  srl          t1, a1, gp
                  srli         s6, a4, 18
                  sltu         t5, a2, s8
                  bge          a4, s9, 783f
                  xor          s0, t6, a2
                  blt          s5, s8, 786f
781:              slti         gp, tp, 1342
                  slti         a6, t3, 1044
783:              xor          a5, a7, s8
                  sltiu        s4, t2, -878
                  andi         s3, s9, -2000
786:              srl          t3, s2, t3
                  nop
                  andi         a2, s7, 1161
                  nop
                  beq          zero, gp, 793f
                  add          s0, s4, t0
                  slti         s6, a6, 938
793:              srl          tp, t0, a4
                  slti         s7, t6, -1289
                  bltu         t1, t2, 812f
                  beq          ra, s0, 803f
                  blt          gp, t4, 799f
                  slti         s0, s4, 943
799:              ori          s7, t4, -137
                  andi         s6, s3, -1179
                  lui          s11, 777755
                  add          s10, s1, s4
803:              bge          t0, a3, 809f
                  srli         s8, s0, 2
                  sltu         t5, a5, s2
                  sltu         t6, s0, s2
                  srli         a5, a3, 1
                  sub          tp, a7, s10
809:              add          gp, a3, s4
                  sra          s2, t5, s6
                  bltu         s6, a4, 815f
812:              srl          a7, t0, t6
                  andi         s5, s5, 1439
                  bltu         a0, s1, 815f
815:              sltiu        s4, a6, -1946
                  slli         s6, s7, 1
                  sub          zero, t1, t0
                  srai         sp, t2, 16
                  ori          s8, t6, 487
                  addi         a2, a5, 871
                  lw           t1, 4(a0)
                  sltu         s2, t5, a2
                  addi         a0, a0, 16
                  sll          gp, s1, a7
                  auipc        s5, 203728
                  nop
                  auipc        t6, 973428
1190:             addi x6, x6, 1
1190:             jalr x6, x6, 0
sub_2:            addi         a6, t5, -1026
                  beq          a4, s5, sub_2_stack_p
                  srai         t5, a1, 3
                  auipc        s3, 37709
sub_2_stack_p:    addi         a0, a0, -60
                  sw           t1, 4(a0)
                  sltu         a4, a5, a6
                  la           a3, sub_4
                  slti         s4, s11, -1217
                  addi         t2, s10, -1103
                  addi         a3, a3, 835
                  lui          t3, 2875
                  bge          s10, t5, sub_2_j6 #branch to jump instr
                  add          tp, gp, t1
                  auipc        t5, 19263
sub_2_j6:         jalr         t1, a3, -834 #jump sub_2 -> sub_4
sub_2_5:          jal          t1, 18f
0:                jal          sp, 10f
1:                jal          sp, 21f
2:                jal          t1, 20f
3:                jal          t1, 17f
4:                jal          tp, 2b
5:                jal          t2, 24f
6:                jal          tp, 22f
7:                jal          t6, 12f
8:                jal          t1, 9f
9:                jal          t1, 19f
10:               jal          t1, 6b
11:               jal          t1, 23f
12:               jal          t1, 25f
13:               jal          s8, 16f
14:               jal          t1, 8b
15:               jal          a2, 26f
16:               jal          t1, 1b
17:               jal          t1, 0b
18:               jal          t1, 11b
19:               jal          a4, 13b
20:               jal          t6, 15b
21:               jal          gp, 5b
22:               jal          sp, 4b
23:               jal          s4, 14b
24:               jal          a1, 7b
25:               jal          s7, 3b
26:               srli         gp, ra, 9
sub_2_4:          jal          t1, 7f
0:                jal          gp, 17f
1:                jal          sp, 6f
2:                jal          a1, 9f
3:                jal          s8, 10f
4:                jal          t0, 16f
5:                jal          tp, 2b
6:                jal          t1, 3b
7:                jal          t1, 0b
8:                jal          s1, 4b
9:                jal          t1, 21f
10:               jal          t6, 8b
11:               jal          a3, 12f
12:               jal          a6, 15f
13:               jal          s10, 14f
14:               jal          s6, 18f
15:               jal          t1, 13b
16:               jal          a3, 5b
17:               jal          a5, 20f
18:               jal          t1, 22f
19:               jal          t1, 11b
20:               jal          t0, 1b
21:               jal          t1, 19b
22:               srl          s8, a4, s10
sub_2_3:          jal          t1, 12f
0:                jal          tp, 1f
1:                jal          sp, 8f
2:                jal          sp, 5f
3:                jal          gp, 19f
4:                jal          gp, 17f
5:                jal          s10, 0b
6:                jal          s5, 21f
7:                jal          t6, 6b
8:                jal          s10, 4b
9:                jal          s5, 2b
10:               jal          t1, 15f
11:               jal          gp, 16f
12:               jal          sp, 9b
13:               jal          s2, 14f
14:               jal          t1, 20f
15:               jal          s0, 18f
16:               jal          s8, 3b
17:               jal          s0, 10b
18:               jal          a3, 13b
19:               jal          sp, 7b
20:               jal          s10, 11b
21:               srl          s4, s7, s11
sub_2_0:          jal          t1, 13f
0:                jal          s8, 5f
1:                jal          t1, 9f
2:                jal          tp, 4f
3:                jal          s8, 7f
4:                jal          sp, 3b
5:                jal          t1, 11f
6:                jal          t1, 10f
7:                jal          t1, 8f
8:                jal          t1, 1b
9:                jal          tp, 0b
10:               jal          s0, 15f
11:               jal          t0, 14f
12:               jal          a3, 2b
13:               jal          t1, 12b
14:               jal          s5, 6b
15:               and          t6, s5, zero
sub_2_1:          jal          t1, 10f
0:                jal          t1, 14f
1:                jal          t1, 9f
2:                jal          t2, 11f
3:                jal          t6, 5f
4:                jal          a2, 13f
5:                jal          t1, 2b
6:                jal          t1, 7f
7:                jal          a1, 12f
8:                jal          t1, 4b
9:                jal          t5, 17f
10:               jal          t1, 8b
11:               jal          t1, 6b
12:               jal          t1, 16f
13:               jal          tp, 15f
14:               jal          gp, 1b
15:               jal          t4, 3b
16:               jal          a4, 0b
17:               andi         t6, t1, -1024
sub_2_2:          jal          t1, 3f
0:                jal          sp, 5f
1:                jal          t1, 6f
2:                jal          t0, 7f
3:                jal          t1, 4f
4:                jal          t1, 11f
5:                jal          t1, 10f
6:                jal          t0, 13f
7:                jal          t2, 1b
8:                jal          t1, 0b
9:                jal          t1, 8b
10:               jal          t6, 2b
11:               jal          a2, 12f
12:               jal          a7, 9b
13:               jal          t2, 14f
14:               ori          s10, ra, 1040
                  srli         s4, t4, 5
                  sra          a3, a0, s0
                  sltu         t2, t6, gp
                  srl          a1, s5, t5
                  ori          t1, t4, -786
                  or           t3, s0, t6
                  lui          t2, 563532
                  nop
                  srai         s5, sp, 3
                  addi         gp, s8, -1459
                  lui          a2, 885749
                  xori         s11, a0, 612
                  sll          t6, s3, a7
                  bne          s10, t6, 30f
                  blt          a1, t1, 27f
                  sll          s11, s5, a3
                  bgeu         tp, tp, 33f
                  slli         a2, t0, 7
                  nop
                  xor          a3, a0, t2
                  bge          s3, s11, 30f
                  sltu         s11, a5, s3
                  ori          t0, ra, 1313
                  xori         s6, s2, -1705
                  bgeu         s8, t2, 28f
                  sra          a1, s11, t4
                  addi         a4, s6, -1243
27:               blt          a5, sp, 44f
28:               bgeu         t5, a0, 34f
                  bltu         gp, s7, 39f
30:               auipc        s5, 237231
                  ori          t4, a3, 561
                  srl          t4, s4, a3
33:               bltu         t3, gp, 49f
34:               srl          a4, ra, s6
                  sra          a4, s1, s2
                  bne          a4, a3, 43f
                  slti         s1, ra, -367
                  slt          s11, a1, s11
39:               srli         t4, ra, 31
                  sub          t2, a6, s0
                  sub          a4, s11, zero
                  sltu         a7, a3, a7
43:               bge          t0, zero, 48f
44:               bltu         s5, s6, 58f
                  bge          s3, a4, 50f
                  sltu         t4, a5, s10
                  sra          zero, a6, s9
48:               addi         a3, t1, -18
49:               sra          s4, gp, a1
50:               slli         s10, tp, 31
                  addi         s6, s8, -1019
                  sra          t2, zero, t5
                  or           s6, ra, s11
                  auipc        a5, 853003
                  bne          s9, a1, 66f
                  blt          s0, t4, 60f
                  slti         a1, t0, -498
58:               beq          t4, s6, 62f
                  add          sp, a4, t1
60:               addi         t2, s0, 831
                  sll          tp, a6, s10
62:               sll          tp, zero, a4
                  lui          s0, 887689
                  sll          s5, t0, s0
                  add          t0, a3, a7
66:               sll          s10, s4, gp
                  nop
                  blt          s9, s2, 81f
                  sra          s10, s11, s3
                  xor          s3, a2, a4
                  addi         t4, s4, 1830
                  andi         a7, a3, -1507
                  lui          gp, 152869
                  xor          zero, a4, a3
                  andi         a4, t4, -499
                  sll          zero, s8, a6
                  slli         a1, s9, 7
                  ori          s5, s3, -249
                  srl          a6, t1, a6
                  slti         t2, s4, -1914
81:               andi         s10, a0, 487
                  slti         s7, s3, 1620
                  addi         s3, zero, -319
                  bgeu         t1, t2, 86f
                  blt          ra, t1, 103f
86:               slti         t0, s1, 859
                  slli         a5, t6, 31
                  slt          a6, s6, s5
                  slti         tp, s9, 964
                  srli         s11, s9, 27
                  slt          a5, t2, t2
                  srli         t5, s1, 16
                  sra          t3, s5, tp
                  nop
                  nop
                  srl          tp, s2, s7
                  ori          a5, s0, -195
                  addi         a6, s5, -1854
                  bge          s11, tp, 116f
                  bge          s7, s4, 117f
                  lui          s1, 1025238
                  blt          a1, s7, 107f
103:              ori          s11, s6, 47
                  addi         a7, s3, 653
                  addi         t3, s8, -388
                  srli         t1, zero, 8
107:              add          tp, a1, t5
                  nop
                  xor          s11, tp, s7
                  sltiu        a2, s7, -1374
                  sltu         tp, t3, s11
                  lui          tp, 1036794
                  srli         t4, t6, 8
                  srai         t1, gp, 10
                  beq          t2, t0, 131f
116:              blt          s7, t2, 121f
117:              slli         sp, a1, 29
                  xor          s3, s5, s1
                  lui          s7, 16221
                  or           t2, s9, t2
121:              addi         t4, t5, -1024
                  nop
                  sltu         t1, s4, s11
                  or           s11, t4, zero
                  andi         s0, s7, -1503
                  xor          t6, a4, tp
                  sltu         a1, a3, t5
                  andi         a2, s3, -2003
                  xori         t3, tp, -1976
                  xor          t2, ra, s6
131:              slt          t5, a6, a0
                  sll          t3, a7, a1
                  blt          t4, s0, 152f
                  addi         s1, ra, -294
                  sub          a4, a5, s6
                  srai         s10, sp, 24
                  sltiu        a1, s3, -22
                  slti         a6, a5, -776
                  nop
                  bgeu         gp, a7, 152f
                  add          s10, a4, s10
                  bltu         s11, s3, 156f
                  sll          s5, t2, ra
                  andi         s0, s9, 1837
                  xori         a3, a5, 775
                  slli         s0, s0, 19
                  sltu         tp, a4, s0
                  slli         s5, s11, 31
                  srl          t0, t5, gp
                  sub          s2, sp, t6
                  nop
152:              srl          s4, t2, s0
                  blt          a4, s9, 156f
                  srai         s11, zero, 18
                  add          gp, a7, s8
156:              sltiu        t2, s7, 359
                  xori         sp, tp, -466
                  auipc        zero, 875557
                  srai         t0, t0, 1
                  blt          t0, s11, 165f
                  bge          s7, a5, 170f
                  sub          a2, ra, s1
                  sra          s3, tp, s4
                  blt          s10, t3, 177f
165:              sltu         a5, s4, s7
                  ori          s0, s7, 59
                  blt          a4, a6, 172f
                  srli         t1, a3, 23
                  xor          t4, s3, s3
170:              andi         a4, a7, 243
                  slt          sp, a4, ra
172:              srli         s4, t5, 2
                  slti         a2, ra, 627
                  slt          s2, s9, s5
                  addi         a3, a4, -929
                  srli         s8, t4, 3
177:              slti         t3, s7, -1592
                  beq          s2, s4, 194f
                  addi         a2, a5, 2005
                  xor          s8, sp, s4
                  srl          gp, s9, s2
                  srl          s7, gp, s9
                  slli         gp, sp, 24
                  bgeu         gp, a7, 203f
                  srli         tp, s8, 25
                  beq          s3, s8, 198f
                  blt          a0, s0, 190f
                  bge          tp, a6, 193f
                  sub          s5, sp, t2
190:              nop
                  slt          t0, a4, sp
                  sltu         sp, s3, s4
193:              auipc        s1, 1010611
194:              xori         s2, s2, 125
                  sra          a1, gp, a5
                  nop
                  bne          a4, a0, 202f
198:              srli         a6, t4, 23
                  andi         a1, tp, 485
                  bltu         s8, t3, 206f
                  beq          a1, tp, 206f
202:              slt          s0, sp, gp
203:              and          t1, t0, t1
                  slti         a4, a5, -1782
                  and          t6, s0, a3
206:              bne          s6, a2, 223f
                  nop
                  add          gp, ra, a0
                  bgeu         gp, s1, 227f
                  sltiu        t0, a3, -1264
                  blt          a0, zero, 228f
                  sltu         s0, s7, t0
                  addi         t2, sp, 1052
                  bgeu         t5, gp, 224f
                  bgeu         s11, t5, 219f
                  srl          a4, t3, s0
                  srai         t0, s9, 3
                  xori         s5, s3, 1724
219:              slt          gp, a7, tp
                  blt          s2, sp, 234f
                  bge          t3, s11, 232f
                  sll          s10, a2, s10
223:              or           s6, tp, tp
224:              srl          t1, a6, t5
                  srai         t6, a4, 22
                  slli         s11, s1, 11
227:              addi         a6, s11, -1504
228:              blt          s1, s5, 235f
                  nop
                  srl          a3, s6, t5
                  bltu         s0, s8, 247f
232:              xori         s8, s10, 1535
                  slli         s2, gp, 16
234:              slli         s0, a3, 25
235:              addi         a2, s0, -2028
                  bge          t4, s10, 253f
                  auipc        t2, 561858
                  sltiu        a1, gp, -1457
                  bltu         ra, s7, 243f
                  slti         s4, s10, 431
                  bne          a5, a2, 255f
                  bgeu         a1, t5, 246f
243:              xor          zero, t6, a3
                  lui          t2, 783668
                  slt          s10, s3, ra
246:              srai         a7, a3, 14
247:              xor          a4, gp, sp
                  nop
                  sub          s1, a2, sp
                  ori          sp, s2, 1138
                  bne          tp, s11, 260f
                  srli         a3, s6, 12
253:              srl          t2, a3, t3
                  and          s10, t2, s6
255:              beq          s2, s8, 257f
                  slti         tp, zero, -1662
257:              beq          s5, s0, 274f
                  lui          s4, 220221
                  sltu         a5, s2, s10
260:              slt          t4, ra, ra
                  srl          t5, a0, t6
                  andi         a2, s10, 1113
                  lui          t3, 649301
                  and          a4, s1, t4
                  srai         s2, t2, 26
                  andi         a4, tp, 706
                  nop
                  add          s4, ra, a2
                  slli         s6, t6, 22
                  sltu         tp, t5, a1
                  bgeu         zero, s1, 281f
                  addi         s10, s6, -1313
                  xori         tp, sp, -1295
274:              bltu         s2, t1, 287f
                  bge          a2, a5, 280f
                  ori          sp, s10, -290
                  sub          t3, zero, ra
                  auipc        s10, 583967
                  addi         t0, t5, -876
280:              sra          zero, s2, s7
281:              bltu         gp, s6, 298f
                  sltiu        a3, s4, 1792
                  sra          t3, s10, a0
                  bltu         t3, zero, 295f
                  or           t2, s6, t5
                  or           t0, s8, a6
287:              srai         t0, s5, 22
                  sra          t0, gp, t6
                  add          s1, a7, a2
                  srai         s7, ra, 15
                  bgeu         a6, s6, 296f
                  nop
                  srli         a4, t4, 3
                  add          t1, t5, ra
295:              blt          s9, t6, 301f
296:              andi         t2, tp, 100
                  and          a3, t4, a5
298:              xor          s0, s10, s4
                  sltiu        t0, t5, -1473
                  xor          s8, s9, tp
301:              slti         t4, a1, 1702
                  srai         s5, s9, 26
                  slti         t5, a7, 828
                  lw           t1, 4(a0)
                  srli         s1, t5, 5
                  slli         s10, a0, 18
                  addi         a0, a0, 60
                  slti         s2, s9, 614
                  andi         s6, s3, -1305
                  xor          t0, t3, s6
                  lui          s3, 64968
                  and          a6, s8, t2
                  sltu         s11, sp, s4
457:              addi x12, x6, 0
457:              jalr x12, x12, 0
sub_5:            srli         t6, t5, 6
                  bge          a1, t0, sub_5_stack_p
                  or           a6, a7, a2
sub_5_stack_p:    addi         a0, a0, -52
                  lui          a4, 595962
                  lui          s1, 892670
                  sw           t1, 4(a0)
                  srli         a5, t3, 11
                  srai         gp, s11, 3
sub_5_19:         jal          t1, 14f
0:                jal          t1, 9f
1:                jal          t6, 3f
2:                jal          t1, 22f
3:                jal          t1, 21f
4:                jal          t1, 25f
5:                jal          sp, 1b
6:                jal          a2, 18f
7:                jal          a4, 16f
8:                jal          s5, 4b
9:                jal          t1, 12f
10:               jal          a4, 19f
11:               jal          t1, 13f
12:               jal          a3, 15f
13:               jal          sp, 17f
14:               jal          t0, 23f
15:               jal          gp, 7b
16:               jal          t1, 10b
17:               jal          t0, 0b
18:               jal          s7, 5b
19:               jal          t1, 20f
20:               jal          sp, 8b
21:               jal          t1, 24f
22:               jal          s2, 6b
23:               jal          t1, 11b
24:               jal          t1, 26f
25:               jal          s6, 2b
26:               lui          a5, 584479
sub_5_4:          jal          t1, 5f
0:                jal          t0, 9f
1:                jal          t1, 19f
2:                jal          a6, 4f
3:                jal          s1, 11f
4:                jal          t1, 14f
5:                jal          t1, 0b
6:                jal          s1, 16f
7:                jal          gp, 6b
8:                jal          a5, 12f
9:                jal          t1, 13f
10:               jal          gp, 17f
11:               jal          s3, 8b
12:               jal          a4, 18f
13:               jal          t0, 3b
14:               jal          t1, 10b
15:               jal          s7, 1b
16:               jal          t1, 2b
17:               jal          t1, 15b
18:               jal          a4, 7b
19:               sll          s8, zero, gp
sub_5_18:         jal          t1, 4f
0:                jal          s6, 5f
1:                jal          t1, 3f
2:                jal          t1, 19f
3:                jal          t4, 15f
4:                jal          a2, 7f
5:                jal          t1, 20f
6:                jal          tp, 21f
7:                jal          t1, 10f
8:                jal          t1, 11f
9:                jal          t1, 0b
10:               jal          a4, 14f
11:               jal          t2, 1b
12:               jal          t1, 18f
13:               jal          t1, 6b
14:               jal          s3, 8b
15:               jal          t1, 9b
16:               jal          s8, 13b
17:               jal          a5, 2b
18:               jal          s10, 16b
19:               jal          t1, 12b
20:               jal          gp, 17b
21:               sra          s3, s0, a5
sub_5_1:          jal          t1, 5f
0:                jal          t0, 4f
1:                jal          s8, 3f
2:                jal          t1, 8f
3:                jal          t1, 0b
4:                jal          t1, 2b
5:                jal          tp, 9f
6:                jal          t1, 1b
7:                jal          gp, 10f
8:                jal          t1, 7b
9:                jal          t1, 6b
10:               and          gp, a1, gp
sub_5_15:         jal          t1, 0f
0:                jal          t1, 28f
1:                jal          t1, 30f
2:                jal          t1, 4f
3:                jal          tp, 2b
4:                jal          t4, 13f
5:                jal          t1, 15f
6:                jal          t1, 24f
7:                jal          t1, 5b
8:                jal          t1, 11f
9:                jal          gp, 18f
10:               jal          s3, 16f
11:               jal          tp, 19f
12:               jal          s7, 9b
13:               jal          a4, 23f
14:               jal          t1, 27f
15:               jal          s3, 12b
16:               jal          a3, 1b
17:               jal          t0, 7b
18:               jal          t1, 29f
19:               jal          s7, 14b
20:               jal          s1, 22f
21:               jal          t1, 17b
22:               jal          a7, 3b
23:               jal          t0, 21b
24:               jal          sp, 20b
25:               jal          t1, 10b
26:               jal          s1, 25b
27:               jal          a4, 6b
28:               jal          a5, 8b
29:               jal          tp, 26b
30:               srl          s10, s8, t0
sub_5_7:          jal          t1, 0f
0:                jal          t1, 4f
1:                jal          t1, 2f
2:                jal          t1, 10f
3:                jal          t1, 5f
4:                jal          s7, 9f
5:                jal          t5, 7f
6:                jal          t1, 8f
7:                jal          t0, 6b
8:                jal          s10, 1b
9:                jal          t1, 3b
10:               add          s5, t6, s1
sub_5_12:         jal          t1, 2f
0:                jal          a6, 8f
1:                jal          t1, 10f
2:                jal          t1, 6f
3:                jal          s1, 14f
4:                jal          sp, 15f
5:                jal          t6, 16f
6:                jal          t1, 1b
7:                jal          s0, 17f
8:                jal          s0, 4b
9:                jal          t1, 12f
10:               jal          t5, 5b
11:               jal          s7, 7b
12:               jal          t1, 11b
13:               jal          t1, 0b
14:               jal          t1, 13b
15:               jal          t1, 9b
16:               jal          t1, 3b
17:               add          a2, a7, t2
sub_5_6:          jal          t1, 16f
0:                jal          t1, 24f
1:                jal          t1, 23f
2:                jal          gp, 9f
3:                jal          t1, 2b
4:                jal          tp, 19f
5:                jal          a1, 1b
6:                jal          t1, 14f
7:                jal          a5, 21f
8:                jal          t1, 10f
9:                jal          gp, 17f
10:               jal          t1, 3b
11:               jal          t1, 8b
12:               jal          gp, 13f
13:               jal          gp, 7b
14:               jal          s11, 15f
15:               jal          a6, 4b
16:               jal          t1, 11b
17:               jal          tp, 22f
18:               jal          t1, 12b
19:               jal          tp, 0b
20:               jal          t1, 6b
21:               jal          t1, 5b
22:               jal          t1, 18b
23:               jal          sp, 20b
24:               xori         a5, gp, -1462
sub_5_3:          jal          t1, 9f
0:                jal          gp, 17f
1:                jal          gp, 0b
2:                jal          t1, 10f
3:                jal          s3, 11f
4:                jal          t1, 12f
5:                jal          t0, 14f
6:                jal          t6, 15f
7:                jal          t1, 3b
8:                jal          t1, 1b
9:                jal          sp, 6b
10:               jal          t3, 4b
11:               jal          t1, 13f
12:               jal          a4, 16f
13:               jal          gp, 2b
14:               jal          t1, 8b
15:               jal          t2, 7b
16:               jal          t1, 5b
17:               jal          t1, 18f
18:               sub          a3, zero, s8
sub_5_5:          jal          t1, 8f
0:                jal          t1, 15f
1:                jal          t1, 20f
2:                jal          t1, 11f
3:                jal          s4, 1b
4:                jal          a2, 6f
5:                jal          t0, 25f
6:                jal          t1, 16f
7:                jal          t3, 21f
8:                jal          t4, 2b
9:                jal          sp, 18f
10:               jal          t1, 13f
11:               jal          s8, 9b
12:               jal          s11, 19f
13:               jal          t1, 7b
14:               jal          t1, 5b
15:               jal          a3, 3b
16:               jal          s7, 23f
17:               jal          t1, 12b
18:               jal          t1, 24f
19:               jal          t1, 14b
20:               jal          a6, 4b
21:               jal          a6, 0b
22:               jal          t1, 17b
23:               jal          t1, 22b
24:               jal          t6, 10b
25:               ori          gp, s1, 34
sub_5_17:         jal          t1, 0f
0:                jal          a1, 6f
1:                jal          s2, 7f
2:                jal          t1, 12f
3:                jal          s6, 9f
4:                jal          s4, 3b
5:                jal          t1, 8f
6:                jal          a1, 5b
7:                jal          s8, 10f
8:                jal          t1, 4b
9:                jal          t1, 1b
10:               jal          t1, 11f
11:               jal          t3, 2b
12:               xor          t5, a6, a2
sub_5_0:          jal          t1, 3f
0:                jal          t2, 16f
1:                jal          t1, 18f
2:                jal          t1, 27f
3:                jal          t1, 6f
4:                jal          t6, 23f
5:                jal          sp, 25f
6:                jal          s3, 28f
7:                jal          t1, 21f
8:                jal          t1, 10f
9:                jal          s10, 22f
10:               jal          t5, 11f
11:               jal          t1, 30f
12:               jal          t3, 2b
13:               jal          t1, 29f
14:               jal          s0, 20f
15:               jal          t5, 1b
16:               jal          t1, 24f
17:               jal          s5, 9b
18:               jal          a6, 26f
19:               jal          t1, 15b
20:               jal          t1, 12b
21:               jal          t2, 13b
22:               jal          t1, 19b
23:               jal          s10, 7b
24:               jal          t0, 5b
25:               jal          s2, 14b
26:               jal          s4, 0b
27:               jal          t1, 4b
28:               jal          s0, 17b
29:               jal          t1, 8b
30:               addi         s7, a7, 1578
sub_5_8:          jal          t1, 2f
0:                jal          t1, 4f
1:                jal          t1, 14f
2:                jal          s4, 1b
3:                jal          t1, 22f
4:                jal          t1, 5f
5:                jal          s6, 7f
6:                jal          s5, 18f
7:                jal          t2, 20f
8:                jal          t5, 21f
9:                jal          a7, 13f
10:               jal          t0, 3b
11:               jal          s6, 19f
12:               jal          a6, 16f
13:               jal          t1, 12b
14:               jal          t5, 17f
15:               jal          a6, 0b
16:               jal          t1, 8b
17:               jal          a4, 11b
18:               jal          s7, 9b
19:               jal          s3, 15b
20:               jal          t1, 6b
21:               jal          gp, 10b
22:               slli         sp, a7, 28
sub_5_13:         jal          t1, 5f
0:                jal          t1, 3f
1:                jal          t1, 10f
2:                jal          t1, 1b
3:                jal          t1, 15f
4:                jal          t1, 11f
5:                jal          a7, 12f
6:                jal          t3, 14f
7:                jal          t1, 9f
8:                jal          t4, 6b
9:                jal          t1, 2b
10:               jal          a5, 0b
11:               jal          t1, 13f
12:               jal          s4, 4b
13:               jal          t1, 8b
14:               jal          t1, 7b
15:               srai         a2, s3, 6
sub_5_10:         jal          t1, 7f
0:                jal          s8, 13f
1:                jal          s1, 16f
2:                jal          t1, 6f
3:                jal          t1, 11f
4:                jal          t1, 8f
5:                jal          t1, 12f
6:                jal          gp, 0b
7:                jal          s2, 14f
8:                jal          t1, 9f
9:                jal          t1, 2b
10:               jal          tp, 4b
11:               jal          gp, 5b
12:               jal          t1, 10b
13:               jal          a1, 1b
14:               jal          t2, 15f
15:               jal          t1, 3b
16:               or           s5, s7, s4
                  andi         s4, a7, -1041
                  slli         s6, a0, 23
                  bgeu         t0, a3, 4f
                  addi         s6, a3, -162
4:                xori         t1, ra, 1330
                  srl          a4, s9, t4
                  bgeu         t6, s11, 15f
                  bne          a2, tp, 11f
                  auipc        a4, 1047592
                  sub          a7, t2, s9
                  sra          s1, a6, sp
11:               auipc        a1, 692285
                  and          t4, s6, ra
                  add          gp, a7, t4
                  slt          a6, t1, t6
15:               and          s8, s4, s5
                  srl          gp, a2, t5
                  bltu         s6, zero, 34f
                  sltu         s8, s10, t0
                  sra          s5, a6, s11
                  xor          s0, s7, s11
                  srl          s1, t2, t2
                  bltu         t6, a4, 24f
                  ori          a6, a5, -1868
24:               bgeu         a6, a7, 36f
                  bltu         sp, s6, 41f
                  sll          s1, s8, s4
                  bge          a4, s9, 30f
                  sra          s8, s8, t1
                  slt          t2, tp, a5
30:               xori         s5, a1, -710
                  sltu         a2, s9, t0
                  blt          t4, ra, 42f
                  addi         t6, s7, -168
34:               bgeu         t5, a0, 40f
                  slt          a3, s8, gp
36:               xori         s3, ra, 1479
                  andi         a1, s9, 1300
                  and          s3, t1, a0
                  slt          gp, t5, s11
40:               srli         s4, t2, 2
41:               bge          a6, a3, 58f
42:               bne          a2, s11, 50f
                  andi         gp, gp, -308
                  slt          s6, s1, a1
                  sub          zero, tp, s10
                  sltu         a5, sp, t1
                  bne          t3, t4, 59f
                  slti         a7, s0, 2000
                  lui          s1, 1045952
50:               and          t6, s1, zero
                  beq          s11, s6, 63f
                  addi         a3, t5, 1659
                  sltu         s1, a6, s5
                  slt          sp, a2, a4
                  slli         gp, a3, 0
                  bge          sp, ra, 74f
                  blt          t1, s0, 61f
58:               or           a4, s0, sp
59:               xor          a7, s8, s2
                  and          tp, a1, s9
61:               slti         s2, tp, -1574
                  sra          a7, t0, t3
63:               add          a6, a0, a7
                  srl          t0, sp, a3
                  beq          a7, a5, 69f
                  xori         t0, a5, 1370
                  or           s4, tp, gp
                  andi         a5, a1, 1117
69:               bltu         gp, s1, 89f
                  andi         s10, t0, 636
                  sll          s7, s6, s9
                  srai         s8, s3, 12
                  xor          tp, s1, s9
74:               sltu         tp, s3, s2
                  add          s5, a1, t1
                  slli         s5, t1, 0
                  or           s3, sp, t0
                  sltiu        s4, a0, -1285
                  xor          t0, s0, a3
                  nop
                  bne          sp, a6, 88f
                  slt          s3, a1, sp
                  lui          a4, 835810
                  srli         t0, a4, 30
                  bgeu         s10, s2, 99f
                  blt          s4, a3, 89f
                  bgeu         s5, t6, 90f
88:               slti         s8, gp, -126
89:               srli         zero, gp, 7
90:               addi         t0, t6, 24
                  sltiu        sp, a5, -489
                  sltiu        t1, s0, 1839
                  sltiu        t4, s8, -1188
                  andi         t0, a2, -787
                  bgeu         sp, s6, 101f
                  sra          s1, a7, a4
                  sltiu        t6, t3, 998
                  and          s11, t6, sp
99:               lui          s6, 488411
                  beq          a1, s9, 113f
101:              bltu         t0, ra, 105f
                  and          a5, s9, s6
                  blt          a6, t1, 115f
                  srli         s8, s2, 24
105:              bne          t3, t3, 106f
106:              blt          s9, s1, 113f
                  sltiu        gp, t2, -1156
                  and          a2, s6, t1
                  and          a5, s4, a3
                  xor          s7, a7, s0
                  bne          s8, a1, 131f
                  srl          s10, s7, a7
113:              xor          t0, s9, zero
                  or           a5, s7, a4
115:              sra          a3, t3, ra
                  bne          s9, s2, 125f
                  slti         sp, t3, 1747
                  auipc        a5, 485842
                  sltu         tp, s0, a7
                  sub          t4, t2, a1
                  sra          t3, ra, t6
                  srli         a1, t6, 18
                  andi         t2, a7, -2013
                  andi         a7, s10, -198
125:              or           s7, s3, t6
                  andi         s11, a5, -624
                  add          zero, zero, a6
                  bne          s6, a0, 144f
                  bge          sp, t5, 142f
                  add          tp, zero, s5
131:              sub          s2, a3, t1
                  slti         t1, s4, 39
                  addi         t2, s4, -1013
                  nop
                  addi         a3, t5, 1286
                  srli         a5, a2, 10
                  beq          a7, s10, 139f
                  blt          t1, zero, 142f
139:              slt          a5, s0, s11
                  slti         a6, t3, -2013
                  sra          a6, s6, s10
142:              bgeu         s7, a1, 146f
                  bge          s3, s8, 157f
144:              bltu         a2, s7, 150f
                  nop
146:              srli         zero, s10, 19
                  bge          s6, sp, 154f
                  srli         a4, s3, 13
                  auipc        s1, 455739
150:              slti         a2, t2, 1910
                  sub          t6, t2, t6
                  ori          a4, ra, 1988
                  bge          s2, a3, 159f
154:              srl          s4, tp, t2
                  beq          a5, s4, 165f
                  andi         t0, a7, -1351
sub_5_16:         jal          t1, 16f
0:                jal          a7, 1f
1:                jal          t1, 3f
2:                jal          t0, 21f
3:                jal          t6, 6f
4:                jal          t0, 0b
5:                jal          t1, 17f
6:                jal          t0, 8f
7:                jal          t1, 23f
8:                jal          t1, 15f
9:                jal          t6, 12f
10:               jal          t1, 19f
11:               jal          s0, 5b
12:               jal          t1, 10b
13:               jal          t1, 24f
14:               jal          a4, 13b
15:               jal          tp, 2b
16:               jal          a2, 11b
17:               jal          t1, 22f
18:               jal          s6, 9b
19:               jal          t1, 7b
20:               jal          t1, 25f
21:               jal          t1, 20b
22:               jal          tp, 14b
23:               jal          t1, 4b
24:               jal          t1, 18b
25:               auipc        s6, 58438
157:              sltiu        a5, s11, -1883
                  addi         s10, a7, 1196
159:              andi         s0, s10, -849
                  bne          a0, s5, 168f
                  blt          zero, s2, 168f
                  or           s3, t4, t1
                  slli         a3, s2, 3
                  and          t6, s2, t4
165:              or           s0, s7, t6
                  slli         t4, a4, 8
                  add          a2, t2, ra
168:              auipc        s6, 935799
                  bgeu         s8, a2, 181f
                  bne          s0, s7, 171f
171:              srai         s6, s11, 21
                  add          zero, t5, a3
                  or           a6, t4, t1
                  bgeu         s0, s11, 183f
                  srai         t1, s1, 6
                  srl          s11, t6, a7
                  sll          t0, ra, t5
                  slli         t3, s7, 27
                  bltu         s10, s5, 191f
                  beq          zero, sp, 197f
181:              sltu         t4, gp, a2
                  sll          s11, a2, tp
183:              xori         s0, tp, 612
                  bne          s7, a0, 196f
                  slti         a5, a0, 1569
                  lui          t5, 379913
                  srl          s6, t3, s6
                  bgeu         a3, s6, 191f
                  sltu         t1, a0, a6
                  srli         t6, a6, 7
191:              sltiu        a5, s7, 939
                  xor          t5, t6, t2
                  srli         a4, a7, 8
                  auipc        s0, 257060
                  auipc        t1, 5345
196:              bgeu         s7, a6, 205f
197:              xori         s10, s3, -151
                  slti         a5, t2, 876
                  beq          gp, s5, 202f
                  xori         a5, a4, 1854
                  blt          a0, a3, 221f
202:              bltu         a3, s3, 204f
                  ori          t5, t0, 1548
204:              sra          a4, s2, a4
205:              lui          s10, 503097
                  nop
                  and          s1, t3, s7
                  blt          t0, s3, 212f
                  nop
                  and          a5, s6, tp
                  slt          t5, t6, a5
212:              slli         a7, a0, 2
                  slli         a4, t1, 26
                  slli         tp, s8, 2
                  slti         a5, s8, 48
                  srai         s5, s7, 28
                  bne          s5, sp, 237f
                  or           a5, a5, t1
                  bne          gp, t1, 237f
                  srli         s11, t4, 28
221:              beq          gp, sp, 224f
                  blt          a5, s5, 239f
                  sltu         gp, sp, s4
224:              ori          tp, a0, -1464
                  auipc        a2, 446593
                  bge          s3, sp, 238f
                  bne          s6, a2, 231f
                  xor          a2, t5, t2
                  srai         a7, sp, 13
                  srli         t0, s4, 0
231:              sub          s5, t4, sp
                  add          gp, a4, a2
                  bge          sp, s3, 243f
                  lui          s1, 117768
                  bltu         s7, s3, 238f
                  sra          a5, t2, zero
237:              sltu         s6, t2, a1
238:              slt          s8, s5, sp
239:              addi         a2, zero, 2042
                  andi         a5, a3, -1503
                  xori         s11, s1, 111
                  or           gp, s7, tp
243:              ori          a2, s7, 800
                  slli         a6, ra, 24
                  sltu         s10, s9, t1
sub_5_14:         jal          t1, 7f
0:                jal          t1, 2f
1:                jal          s11, 9f
2:                jal          tp, 5f
3:                jal          t1, 4f
4:                jal          t0, 1b
5:                jal          gp, 3b
6:                jal          t1, 10f
7:                jal          t1, 0b
8:                jal          sp, 6b
9:                jal          t1, 8b
10:               xori         s5, s6, -131
                  blt          a5, a2, 252f
                  or           t4, a6, zero
                  sll          tp, tp, t2
                  xor          sp, a0, s2
                  slti         t4, s11, 995
                  bne          t5, s5, 263f
252:              slt          s0, zero, a3
                  sra          s6, s5, gp
                  auipc        t3, 11604
                  blt          tp, a5, 272f
                  and          gp, a7, s7
                  xor          a3, t5, s7
                  slti         t3, s0, -386
                  bne          s11, a3, 261f
                  or           a2, s1, ra
261:              andi         zero, a2, -992
                  add          a1, a7, s5
263:              sub          a2, s1, s2
                  bge          s10, t0, 276f
                  add          s6, s6, a2
                  sub          t1, tp, ra
                  andi         a1, s5, 513
                  xori         s7, a3, -574
                  sub          t5, s2, a3
                  andi         tp, s2, 24
                  or           a6, s11, a3
272:              sra          t5, s9, a2
                  and          s10, s6, zero
                  xori         a1, t6, 1209
                  slt          t0, a1, gp
276:              slli         s5, a4, 23
                  sub          a2, a4, tp
                  srl          s11, a7, s2
                  add          s2, a2, s7
                  auipc        t2, 1004315
                  xor          a2, ra, s1
                  nop
                  sltu         s8, t6, s3
                  and          s8, s1, s11
                  lui          t6, 97993
                  sll          a3, t2, tp
                  bltu         s10, s6, 294f
                  and          s2, s8, gp
                  beq          t1, s5, 309f
                  sll          t1, t0, t5
                  andi         a7, a0, -1393
                  lui          s1, 814980
                  blt          gp, zero, 305f
294:              sltu         t6, a7, zero
                  bltu         a2, a5, 298f
                  nop
                  bltu         sp, t3, 300f
298:              slti         s6, gp, -1964
                  andi         s0, t1, 1371
300:              auipc        s10, 260542
                  bgeu         zero, s8, 305f
                  or           s5, t5, s4
                  bge          t6, t2, 307f
                  and          s8, ra, sp
305:              addi         a6, s2, -640
                  add          t1, s5, s8
307:              bgeu         s4, s2, 309f
sub_5_2:          jal          t1, 8f
0:                jal          t1, 10f
1:                jal          s0, 5f
2:                jal          t0, 7f
3:                jal          t1, 4f
4:                jal          t2, 2b
5:                jal          gp, 3b
6:                jal          t6, 9f
7:                jal          s6, 0b
8:                jal          tp, 6b
9:                jal          s11, 1b
10:               slt          t4, t0, s6
                  lui          a3, 195315
309:              and          s8, t5, t0
                  addi         tp, t5, -973
                  nop
                  sltiu        s6, s0, 1513
                  slli         s5, t2, 18
                  beq          tp, s5, 318f
                  andi         t6, t2, 1552
                  srli         t5, t3, 0
                  ori          a3, tp, -1439
318:              ori          sp, a3, 383
                  ori          a1, sp, -871
                  xori         s7, ra, 471
                  nop
                  bgeu         sp, t0, 331f
                  addi         t0, s3, -1414
                  bne          a3, s2, 341f
                  bne          s10, a1, 333f
                  sub          s11, a2, s0
                  bge          s1, s4, 340f
                  sra          t1, s8, a4
                  xor          a4, s11, t6
                  andi         t1, tp, -1381
331:              sub          s1, tp, s8
                  blt          s9, s0, 350f
333:              slli         s8, tp, 15
                  addi         sp, t4, 1249
                  bltu         a4, s6, 344f
                  addi         s3, ra, 881
                  andi         t3, s3, -774
                  xor          t5, s6, s0
                  blt          s5, t3, 345f
340:              srai         a1, a5, 17
341:              addi         s2, t1, -159
                  sltu         t3, t5, s2
                  xori         s8, s1, -1619
344:              add          t3, a6, s9
345:              sltiu        t4, t1, -1868
                  beq          s2, gp, 350f
                  addi         t2, gp, -799
                  srai         a2, a7, 13
                  bltu         gp, ra, 356f
350:              srl          t2, s3, a7
                  bgeu         a7, a6, 363f
                  addi         a5, a7, -167
                  beq          t6, s2, 373f
                  slli         t0, a7, 4
                  xori         s0, s4, 927
356:              slti         a5, gp, 730
                  bltu         t6, ra, 373f
                  andi         t0, s7, 1675
                  sltiu        s11, s3, 1961
                  and          s0, s3, s0
                  slti         gp, t3, 1141
                  sltiu        a7, s2, -475
363:              sra          a5, sp, a5
                  beq          s2, s8, 378f
                  auipc        a3, 58648
                  bge          t5, t3, 367f
367:              bge          s2, a5, 385f
                  blt          s2, s3, 371f
                  sltiu        s8, s9, -1596
                  sub          s8, t0, s11
371:              beq          sp, a2, 378f
                  sub          t4, sp, gp
373:              xor          s11, s3, gp
                  slt          sp, s11, ra
                  or           a5, a2, s4
                  ori          tp, s11, 183
                  slt          s8, t4, s8
378:              blt          s8, t5, 382f
                  blt          s4, s8, 393f
                  nop
                  ori          gp, s5, -938
382:              lui          s6, 471428
                  sltiu        s0, t6, -2023
                  xori         s11, ra, -1453
385:              bge          ra, s6, 391f
                  slli         t1, a2, 0
                  sra          zero, s11, sp
                  slti         s11, a6, -449
                  beq          t1, s11, 399f
                  bge          s6, t3, 402f
391:              and          a3, tp, zero
                  srl          s7, t4, t2
393:              and          t3, s11, s8
                  auipc        zero, 114925
                  sll          gp, s6, gp
                  and          a4, s6, s1
                  nop
                  bne          s1, t5, 411f
399:              beq          t1, s6, 419f
                  srl          t0, a4, t5
                  bltu         sp, s1, 413f
402:              or           gp, sp, ra
                  ori          a4, t1, -1214
                  xor          s3, s7, sp
                  sltiu        s8, s6, 572
                  and          s1, t6, gp
                  sll          s10, a6, gp
                  nop
                  bge          s5, ra, 421f
                  bltu         t0, s7, 417f
411:              addi         a5, t0, 533
                  beq          t6, s10, 424f
413:              xor          a7, s8, a0
                  slli         t6, s7, 23
                  or           s11, s5, s2
                  sll          sp, t1, tp
417:              srai         s1, gp, 14
                  nop
419:              beq          t1, sp, 420f
420:              blt          s9, t4, 436f
421:              ori          s6, tp, 213
                  andi         a3, s3, 1231
                  slt          a7, s2, s5
424:              bgeu         t0, s10, 441f
                  xor          t6, s5, a6
                  srai         t0, a2, 31
                  srai         a1, ra, 11
                  blt          s4, t5, 431f
                  bge          t6, s3, 433f
                  blt          t0, s8, 436f
431:              lui          zero, 21361
                  blt          s3, t6, 436f
433:              sltu         t6, t4, a2
                  sll          a4, s5, t0
                  beq          a5, t4, 443f
436:              ori          s7, s0, -1684
                  srli         tp, a1, 31
                  sltiu        sp, s0, 691
                  andi         t3, s9, 276
                  slti         t1, t1, 1862
441:              sra          s8, t2, zero
                  slli         a6, a1, 25
443:              addi         s8, t5, -420
                  bltu         s3, t2, 461f
                  blt          s10, t6, 447f
                  lui          sp, 925155
447:              srl          s5, t6, t3
                  slli         s6, s10, 17
                  slli         a5, a0, 25
                  nop
                  srai         s3, sp, 26
                  lui          s1, 461006
                  andi         t0, t1, -760
                  bgeu         tp, s3, 456f
                  bge          t4, s3, 464f
456:              slti         sp, a7, -1556
                  lui          sp, 533107
                  srl          t6, s7, s0
                  xori         s1, s4, 2037
                  srli         a2, a3, 5
461:              bne          a3, t6, 464f
                  bltu         s6, s11, 471f
                  slli         s3, gp, 0
464:              slti         s5, t5, -622
                  bne          a2, a0, 485f
                  sub          s2, s0, a0
                  andi         tp, t1, 90
                  bne          t3, s7, 472f
                  lui          s10, 633740
                  sub          a4, s10, sp
471:              ori          t0, s0, 252
472:              blt          gp, t5, 479f
                  or           s4, s8, s2
                  bge          s5, s6, 477f
                  andi         s0, s6, -1264
                  bltu         s3, s3, 490f
477:              slti         zero, s8, -1883
                  slt          s0, a5, a2
479:              blt          tp, t1, 499f
                  or           t4, a0, a5
                  xor          s11, s0, s9
                  lui          s5, 3871
                  bgeu         ra, a3, 501f
                  srai         s11, s2, 14
485:              auipc        a7, 751897
                  srai         s10, a7, 0
                  xor          s1, s2, zero
                  srai         s4, s8, 30
                  slli         a6, t0, 25
490:              sltu         s2, s8, a6
                  bgeu         sp, t0, 508f
                  slt          gp, a0, gp
                  add          a4, ra, s7
                  srai         a1, s8, 14
                  ori          s6, s1, -444
                  slli         gp, a5, 4
                  and          s7, s5, a4
                  and          t2, a0, a7
499:              sltu         s6, t3, a2
                  beq          t4, a5, 509f
501:              bltu         t1, s2, 513f
                  xori         s5, s10, -2021
                  ori          s6, a5, -157
                  ori          t5, tp, -73
                  ori          a5, s9, 638
                  blt          a5, a3, 509f
                  nop
508:              or           sp, s3, t2
509:              srl          sp, s8, t4
                  bgeu         ra, s5, 519f
                  srai         s1, a6, 31
                  sll          s11, t2, gp
513:              xori         s7, t2, -86
                  bgeu         s4, s3, 518f
                  srai         sp, s4, 10
                  sltiu        a6, t3, -1662
                  slt          t1, t1, tp
518:              sub          a5, s4, s1
519:              bltu         t6, t5, 523f
                  slt          a4, s10, s6
                  lui          a2, 400260
                  sltiu        s5, s8, 1094
523:              addi         a5, s5, 1340
                  and          t5, t1, s0
                  sra          sp, a1, t6
                  slli         s3, s8, 23
                  sra          a6, s4, a0
                  blt          s11, t3, 540f
                  nop
                  sltu         t4, t0, s6
                  blt          a7, t5, 535f
                  nop
                  xor          s0, s11, t3
                  slti         a1, tp, 1478
535:              sltiu        zero, s8, -659
                  beq          s8, s8, 552f
                  andi         a5, s0, 1065
                  bgeu         t1, t1, 551f
                  auipc        t1, 988177
540:              blt          zero, sp, 542f
                  and          s10, t1, a7
542:              blt          zero, t2, 546f
                  andi         s11, a7, 357
                  ori          a7, t6, -497
                  sltiu        s2, s0, 1537
546:              bgeu         s0, t0, 552f
                  nop
                  nop
                  sltiu        s7, zero, -1070
                  xori         t0, t0, 1600
551:              slt          s1, gp, s5
sub_5_11:         jal          t1, 3f
0:                jal          sp, 8f
1:                jal          a5, 9f
2:                jal          gp, 0b
3:                jal          a4, 7f
4:                jal          t1, 10f
5:                jal          t1, 4b
6:                jal          gp, 1b
7:                jal          t1, 6b
8:                jal          t1, 5b
9:                jal          s1, 2b
10:               xori         s4, t3, -1146
552:              add          t3, a1, s7
                  auipc        s7, 499270
                  auipc        t0, 433194
                  andi         s3, t3, -788
                  sub          s2, t4, a7
                  sub          sp, a7, a2
                  slti         s4, zero, 47
                  addi         t1, t1, 469
                  andi         s2, ra, 1889
                  srai         t5, t5, 14
                  xori         a7, ra, -1238
                  andi         s7, s1, 261
                  and          gp, a0, s0
                  xori         s3, t5, 1928
                  slt          t3, s4, s8
                  auipc        s4, 26169
                  auipc        tp, 262661
                  bgeu         a6, a7, 586f
                  xori         t0, ra, -522
                  srl          s5, a5, t4
                  nop
                  nop
                  nop
                  sll          s1, sp, s6
                  ori          s2, tp, 2011
                  xor          s1, s11, s4
                  andi         gp, a0, 2029
                  add          a6, s7, a1
                  addi         a3, s11, -1338
                  beq          s9, ra, 589f
                  sra          s7, s0, s5
                  and          s0, s4, s7
                  lui          t6, 270273
                  xori         sp, a4, -983
586:              and          gp, a0, t3
                  blt          t2, t6, 599f
                  sra          a6, s2, s4
589:              bne          s2, zero, 590f
590:              srli         tp, t3, 3
                  slli         s3, a3, 18
                  nop
                  sll          s0, t6, s10
                  blt          a2, t1, 604f
                  ori          a1, a6, 1774
                  bltu         t2, t2, 608f
                  bgeu         gp, t1, 599f
                  lui          s2, 386234
599:              bne          a6, a5, 602f
                  or           s1, s9, s3
                  sltu         tp, s4, zero
602:              or           t3, ra, t4
                  slt          a5, s10, tp
sub_5_9:          jal          t1, 10f
0:                jal          t0, 5f
1:                jal          t1, 11f
2:                jal          t1, 12f
3:                jal          t1, 9f
4:                jal          t1, 1b
5:                jal          s8, 2b
6:                jal          t3, 8f
7:                jal          t1, 0b
8:                jal          t1, 7b
9:                jal          t1, 4b
10:               jal          t1, 6b
11:               jal          gp, 13f
12:               jal          t5, 3b
13:               sll          t0, a7, ra
604:              sll          t5, gp, a3
                  lui          s3, 367411
                  bgeu         s0, s8, 626f
                  ori          s4, a1, -1778
608:              auipc        s5, 75282
                  add          t3, s9, a4
                  sltu         s11, t0, gp
                  add          s7, a0, a1
                  slt          gp, ra, sp
                  blt          a2, t3, 620f
                  sra          zero, a3, zero
                  slti         a3, t6, -1264
                  slli         s11, t2, 26
                  srai         s11, t4, 10
                  and          t2, a2, s6
                  add          s8, t5, a4
620:              andi         s4, tp, 856
                  ori          s4, s9, 98
                  bge          s9, a3, 628f
                  andi         sp, s1, -968
                  slti         s7, zero, 886
                  lui          a6, 336962
626:              slti         a1, t0, 1146
                  add          s2, t1, a1
628:              slt          zero, ra, s3
                  sltu         s1, s9, s6
                  blt          t3, s0, 636f
                  sll          a2, s4, t5
                  srli         s10, t4, 17
                  sra          s3, a6, a4
                  and          zero, gp, a6
                  andi         a6, t6, -1570
636:              xor          s11, s7, s0
                  sra          s7, s4, s7
                  or           s11, s9, t6
                  slt          a7, s5, a1
                  slti         s10, s5, 609
                  add          t0, t3, a6
                  slti         s3, t4, 127
                  bge          a2, a3, 659f
                  srl          t6, t3, t3
                  sll          a2, a3, s11
                  andi         t1, s2, 134
                  bgeu         ra, a4, 661f
                  sll          gp, s3, tp
                  xor          s10, s9, a6
                  lui          a1, 260350
                  auipc        t2, 261264
                  bgeu         a1, s2, 656f
                  xor          t5, s0, a5
                  bgeu         s10, a7, 656f
                  bge          s6, t6, 667f
656:              ori          s1, s4, 1790
                  lui          s8, 900445
                  or           a6, s8, t0
659:              and          a7, a3, s5
                  bge          gp, sp, 663f
661:              add          t0, zero, t4
                  srli         s0, a1, 1
663:              lui          t4, 404816
                  blt          s8, ra, 672f
                  nop
                  srli         s6, s2, 7
667:              blt          s2, s1, 684f
                  bgeu         t4, sp, 680f
                  add          t6, t4, s1
                  andi         sp, s7, -1197
                  lui          s6, 972933
672:              bgeu         s1, t1, 674f
                  bgeu         zero, a4, 680f
674:              sra          s8, s1, a7
                  sltu         a3, s0, a0
                  ori          s0, sp, 878
                  bge          a7, tp, 681f
                  sub          s5, s4, t3
                  add          t0, s9, s7
680:              andi         t2, s2, 1109
681:              andi         tp, a3, 103
                  slti         a3, s9, 1112
                  nop
684:              lui          t4, 743499
                  sltiu        s0, s3, -661
                  sltu         a4, a7, a0
                  sltu         s8, a3, s1
                  and          s7, s4, s8
                  sra          t3, s10, s2
                  sltiu        a2, s6, -260
                  or           sp, t6, s10
                  srai         a7, gp, 18
                  ori          t2, t1, 337
                  lui          tp, 146637
                  ori          sp, a6, -1080
                  sra          s3, s8, t3
                  addi         gp, sp, -1887
                  beq          sp, t5, 718f
                  srli         a4, t4, 11
                  or           t2, a7, s4
                  xor          a2, t5, zero
                  bne          a3, s4, 708f
                  bltu         s1, t0, 710f
                  sra          t2, t2, s5
                  slli         s5, s2, 29
                  auipc        t3, 343060
                  slt          s10, a1, s8
708:              xor          s1, t5, s6
                  sra          sp, a6, t1
710:              auipc        zero, 72894
                  addi         s5, t0, -772
                  addi         t1, t1, -462
                  bne          s8, s11, 725f
                  sll          a3, sp, s2
                  sltu         t0, s0, t4
                  xor          a6, t0, t0
                  slli         a3, s8, 2
718:              addi         a6, tp, 1039
                  ori          s4, a6, -1237
                  addi         s10, a6, -1618
                  add          t0, s2, t0
                  sll          t1, s5, t1
                  blt          a5, s10, 735f
                  sll          sp, s5, a0
725:              slt          s0, a1, s2
                  slt          t5, ra, s10
                  sltu         s7, s8, s2
                  slti         s2, ra, -1165
                  srli         zero, a2, 25
                  blt          a5, a6, 743f
                  bne          s2, a1, 734f
                  xori         t3, tp, 1244
                  slt          a3, a7, s3
734:              srai         t5, a3, 27
735:              ori          zero, a5, -442
                  andi         s10, s6, 264
                  nop
                  xori         t2, sp, 559
                  slti         t1, t5, -738
                  sll          s1, t3, a6
                  srl          s5, t2, s9
                  slti         s11, zero, 122
743:              sub          a3, sp, tp
                  bne          s1, a4, 753f
                  sub          a2, s4, t6
                  slli         t1, t5, 21
                  nop
                  bgeu         ra, s4, 752f
                  slli         a3, ra, 19
                  bne          s1, t0, 751f
751:              auipc        sp, 87203
752:              xor          gp, t3, a3
753:              slti         zero, a6, 1359
                  sll          s0, s6, t1
                  addi         a6, t3, 1845
                  slli         t5, s10, 0
                  xori         tp, s6, 43
                  bne          s0, a0, 775f
                  xor          s8, zero, s11
                  addi         gp, t5, 67
                  beq          zero, t0, 781f
                  add          s0, s3, s2
                  slti         t6, zero, -1582
                  xori         tp, a2, -1700
                  xor          s1, tp, sp
                  sub          s0, s8, gp
                  xori         a4, s5, 1052
                  bge          a6, a0, 772f
                  sltiu        tp, t1, -1909
                  add          a6, t2, s1
                  nop
772:              srli         s11, a0, 10
                  and          t6, a5, s6
                  addi         s3, t2, -517
775:              sll          t0, s10, tp
                  slli         s8, s2, 5
                  sltiu        s8, s9, -1693
                  ori          t2, t3, -1782
                  sub          zero, sp, t4
                  sltiu        a1, a6, 1967
781:              sltiu        t2, s2, -1651
                  ori          t6, a3, 961
                  slli         s0, s2, 11
                  sub          s6, zero, a1
                  sll          s1, a1, t3
                  xor          s5, t1, s2
                  xor          a5, s10, s3
                  bge          t4, a7, 806f
                  andi         t6, a6, 1502
                  auipc        s1, 681702
                  slti         zero, t3, 1848
                  auipc        t1, 286426
                  nop
                  add          t1, s8, a6
                  bne          s9, t0, 798f
                  slt          a2, s8, a2
                  sltiu        s2, ra, -897
798:              nop
                  lui          s8, 636245
                  bltu         s8, t0, 810f
                  lui          a2, 952160
                  xori         a4, a6, 1567
                  bne          t4, t1, 812f
                  sub          t1, zero, s5
                  nop
806:              sra          t2, t0, s10
                  srai         s10, s11, 31
                  bge          s10, a4, 812f
                  sub          s11, a7, s10
810:              addi         tp, gp, 754
                  slt          s11, t4, s4
812:              slti         tp, tp, -584
                  sltu         a4, s10, s10
                  auipc        a6, 187676
                  beq          zero, s10, 816f
816:              bltu         s9, zero, 818f
                  addi         t1, t1, 1099
818:              bne          s9, s1, 826f
                  srli         s0, s8, 7
                  xor          a4, a2, s5
                  bltu         s4, t0, 833f
                  beq          s1, s2, 838f
                  bne          a6, a7, 826f
                  xor          a6, a3, zero
                  slt          s5, s0, a4
826:              slli         t4, a6, 23
                  slli         a2, a6, 29
                  sltiu        s7, a6, -1638
                  sra          s7, sp, ra
                  auipc        a2, 395684
                  xori         sp, t0, 1129
                  add          a2, s7, a7
833:              bgeu         t3, a5, 840f
                  addi         zero, gp, -1832
                  auipc        s1, 671093
                  and          a4, t2, gp
                  lui          a4, 30744
838:              srai         s10, sp, 2
                  xori         a3, sp, 1946
840:              lui          sp, 133415
                  bgeu         tp, s8, 845f
                  and          s7, s4, t1
                  xori         s4, s1, 532
                  sltu         a7, t1, t5
845:              xori         s6, a5, -1653
                  slti         a7, s9, -1908
                  slli         s3, a0, 28
                  bne          a5, s10, 854f
                  sltiu        t5, s0, 228
                  bltu         t4, a1, 868f
                  bgeu         s4, zero, 853f
                  bgeu         s11, sp, 856f
853:              bgeu         zero, s8, 863f
854:              sll          s11, t3, t5
                  srl          t5, s1, a3
856:              add          s8, t0, t4
                  sub          s7, s6, t1
                  sll          s4, a2, a5
                  bge          s0, s0, 863f
                  ori          tp, t3, -119
                  blt          t5, t5, 870f
                  srli         s2, ra, 15
863:              auipc        s11, 319706
                  xor          a4, a3, t3
                  sltu         zero, s5, s2
                  auipc        s2, 1013865
                  andi         s10, s6, -978
868:              xori         gp, gp, -794
                  ori          a2, s11, -1865
870:              bgeu         a2, t0, 884f
                  sra          s11, a7, t6
                  xor          s6, t1, s10
                  ori          sp, t4, 827
                  addi         t3, sp, -1556
                  sub          t4, t1, t0
                  bltu         a2, s5, 879f
                  ori          s8, zero, 1527
                  sub          s10, t2, gp
879:              addi         s1, a0, -724
                  bgeu         a2, t1, 897f
                  sra          a4, t3, t0
                  sltu         t4, s3, a3
                  sltiu        t5, a1, 795
884:              add          a6, t6, a3
                  bne          t5, a6, 892f
                  slt          a7, s9, tp
                  srli         a4, s2, 26
                  sltu         t0, a6, s5
                  sltu         sp, a5, t5
                  sll          t3, a2, a0
                  bge          tp, a5, 911f
892:              bltu         a0, s11, 905f
                  auipc        a6, 811150
                  sub          tp, a6, s7
                  bgeu         s10, s0, 907f
                  or           zero, t3, a1
897:              bgeu         a1, a3, 906f
                  ori          zero, t0, 1056
                  blt          gp, t0, 902f
                  bgeu         a5, ra, 906f
                  lui          s11, 552782
902:              sra          s0, a0, a6
                  beq          zero, t4, 915f
                  slli         t2, zero, 24
905:              slt          a4, tp, s4
906:              bge          t2, sp, 926f
907:              sra          a2, s5, s2
                  srli         a5, s9, 8
                  bltu         a3, s1, 926f
                  sltiu        s7, a4, 1003
911:              bne          t4, s2, 923f
                  addi         t1, zero, 1589
                  or           a2, a6, sp
                  srli         t5, a3, 7
915:              sll          t0, sp, t3
                  lui          tp, 175195
                  xori         a3, t5, -149
                  sltu         s10, t0, t5
                  slli         sp, t2, 10
                  slti         s4, s5, -1425
                  slli         t4, s10, 4
                  or           s3, s10, s5
923:              bgeu         s7, s10, 937f
                  ori          t6, t6, 321
                  andi         sp, s2, 955
926:              bgeu         s5, s8, 938f
                  blt          a3, a6, 933f
                  slli         a4, s5, 21
                  sltiu        zero, a5, 784
                  sll          s5, s11, s3
                  addi         a2, t4, 1599
                  sra          t4, a6, t3
933:              sra          a6, t0, s10
                  bne          a5, s0, 951f
                  blt          s0, t2, 936f
936:              xor          s11, s11, a0
937:              sra          t6, s4, zero
938:              or           t6, s11, gp
                  srai         a1, zero, 29
                  slti         sp, t3, 780
                  sra          s8, sp, a1
                  sll          t5, s11, a5
                  addi         s7, a3, 1951
                  beq          s3, t6, 947f
                  bne          t4, s3, 949f
                  srli         zero, s2, 23
947:              srli         tp, t4, 21
                  blt          s7, a3, 961f
949:              sra          s2, tp, s11
                  srli         sp, s11, 3
951:              ori          s7, t5, -1954
                  srli         s11, s4, 26
                  sub          s4, s2, gp
                  addi         a1, a5, 1547
                  srai         t4, a5, 8
                  bltu         s0, t5, 960f
                  ori          a6, s4, 1122
                  add          t2, t0, s3
                  srli         zero, s8, 22
960:              srl          s10, t4, a4
961:              slti         t3, t1, 1845
                  slt          tp, sp, s1
                  sub          s10, gp, t0
                  nop
                  or           a4, s11, gp
                  bgeu         s4, a3, 978f
                  nop
                  add          t4, s5, zero
                  sltiu        a3, a1, -948
                  bltu         s0, s11, 977f
                  sltu         s5, a6, a6
                  addi         a6, s2, -664
                  xori         a6, s3, 1501
                  srl          a4, s1, tp
                  sltu         t4, t0, zero
                  srl          a5, s3, a4
977:              srli         a3, t1, 22
978:              lui          a1, 380462
                  add          t2, a0, tp
                  blt          s9, t5, 989f
                  auipc        s7, 461150
                  sltiu        t2, s6, -1646
                  slti         s3, t5, -1409
                  srli         s7, s6, 24
                  slli         sp, s3, 6
                  add          t1, s6, tp
                  srai         a2, a2, 17
                  lui          s6, 848927
989:              xori         s3, a1, 1305
                  sub          gp, s0, ra
                  andi         t4, a0, 154
                  slti         s0, s4, -984
                  bltu         s9, gp, 996f
                  sub          s0, s10, t2
                  slti         s5, s8, 174
996:              auipc        s5, 632660
                  sltu         tp, sp, s9
                  slli         a1, s7, 10
                  ori          a7, s0, 979
                  and          s2, s4, t4
                  srli         tp, t6, 4
                  xori         sp, s2, 597
                  bltu         s3, gp, 1007f
                  sub          a7, t2, t1
                  sltiu        s0, s10, -812
                  srai         a1, s6, 14
1007:             blt          s7, a2, 1010f
                  beq          s0, t3, 1010f
                  ori          s8, gp, 168
1010:             sra          t2, s11, ra
                  auipc        a5, 928969
                  lw           t1, 4(a0)
                  nop
                  lui          t0, 451611
                  addi         a0, a0, 52
                  sltiu        t0, s0, 1909
                  slt          a3, a3, a1
1430:             addi x27, x6, 0
1430:             jalr x27, x27, 0
sub_4:            addi         a0, a0, -32
                  srli         s0, ra, 11
                  auipc        s3, 207568
                  sw           t1, 4(a0)
                  srli         s2, s3, 8
                  addi         t5, a6, 2044
                  slli         s11, a2, 16
                  sra          gp, zero, t0
                  sub          s2, a7, a5
                  srli         s1, gp, 25
                  slli         t4, s6, 1
                  sub          s7, t0, s10
                  ori          a1, zero, 1916
                  addi         s11, s5, -508
                  bgeu         t2, s4, sub_4_j8 #branch to jump instr
                  and          s1, s0, s11
                  sra          a5, t4, s5
sub_4_j8:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  sltiu        a7, s10, -486
                  slli         s7, s2, 8
                  xor          s7, sp, t2
                  xor          s3, s5, sp
                  sltiu        s2, s3, 576
                  xori         sp, s3, 1347
                  ori          zero, a3, -1583
                  bgeu         ra, sp, 13f
                  sub          gp, s7, t6
                  sltiu        a1, t5, 1585
                  bne          s8, s9, 27f
                  ori          a3, s1, -1856
                  bne          s11, s9, 19f
13:               beq          s3, zero, 17f
                  xori         s4, s9, 126
                  slli         sp, t1, 10
                  nop
17:               sltiu        a6, t3, 1737
                  xor          sp, a2, a5
19:               add          s4, zero, s2
                  sll          s2, s2, gp
                  srl          s3, s10, t6
                  slli         a6, s7, 26
                  bne          tp, s7, 34f
                  blt          gp, s4, 27f
                  add          tp, t4, a6
                  blt          a6, s10, 34f
27:               slli         a4, t0, 21
                  sra          a2, s10, s9
                  sltu         s3, s6, s6
                  srl          s1, s6, a2
                  srai         t5, s7, 20
                  sll          a6, s5, s3
                  auipc        a3, 1022231
34:               addi         sp, s7, -1060
                  lw           t1, 4(a0)
                  addi         a0, a0, 32
                  xori         a2, ra, 13
                  sra          t6, s10, a5
                  slt          s7, s1, s10
58:               addi x26, x6, 0
58:               jalr x26, x26, 0
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_2:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_3:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_4:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_5:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_6:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_7:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_8:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_9:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_10:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_11:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_12:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_13:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_14:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_15:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x25, x10, zero
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x18, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x18, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x18, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x18, x23, ecall_handler
                  li x23, 0x1
                  beq x18, x23, instr_fault_handler
                  li x23, 0x5
                  beq x18, x23, load_fault_handler
                  li x23, 0x7
                  beq x18, x23, store_fault_handler
                  li x23, 0xc
                  beq x18, x23, pt_fault_handler
                  li x23, 0xd
                  beq x18, x23, pt_fault_handler
                  li x23, 0xf
                  beq x18, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x10, x25, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x25, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x25, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x10, x25, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x10, x25, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x10, x25, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
