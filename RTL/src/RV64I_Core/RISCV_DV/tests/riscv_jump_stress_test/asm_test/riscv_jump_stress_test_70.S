.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x17, kernel_stack_end

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
                  li x0, 0xf6324907
                  li x1, 0x4
                  li x2, 0xfe551e54
                  li x3, 0x3
                  li x4, 0x0
                  li x5, 0xf8b04654
                  li x6, 0xcafff538
                  li x7, 0x0
                  li x8, 0x2
                  li x9, 0x0
                  li x10, 0x60649b09
                  li x11, 0x8
                  li x12, 0xfd715934
                  li x13, 0x80000000
                  li x14, 0xf771e9f8
                  li x15, 0x0
                  li x16, 0x6
                  li x18, 0x5
                  li x19, 0xf7a6f944
                  li x20, 0x80000000
                  li x21, 0xf8cc7270
                  li x22, 0xec172dda
                  li x23, 0x841a543a
                  li x25, 0xf1a3c65b
                  li x26, 0x5
                  li x27, 0x0
                  li x28, 0xc
                  li x29, 0x80000000
                  li x30, 0x1
                  li x31, 0x80000000
                  la x24, user_stack_end
main:             jal          s9, 21f
0:                jal          ra, 22f
1:                jal          ra, 19f
2:                jal          t1, 6f
3:                jal          ra, 18f
4:                jal          sp, 7f
5:                jal          ra, 12f
6:                jal          ra, 5b
7:                jal          t1, 8f
8:                jal          ra, 17f
9:                jal          ra, 1b
10:               jal          ra, 11f
11:               jal          ra, 15f
12:               jal          t0, 10b
13:               jal          gp, 14f
14:               jal          t0, 3b
15:               jal          s1, 0b
16:               jal          t1, 20f
17:               jal          a2, 13b
18:               jal          t1, 9b
19:               jal          t1, 16b
20:               jal          ra, 2b
21:               jal          ra, 4b
22:               and          tp, t6, sp
main_11:          jal          s9, 3f
0:                jal          ra, 19f
1:                jal          t1, 21f
2:                jal          s1, 4f
3:                jal          ra, 20f
4:                jal          a3, 12f
5:                jal          ra, 11f
6:                jal          ra, 8f
7:                jal          ra, 14f
8:                jal          ra, 5b
9:                jal          sp, 1b
10:               jal          t1, 2b
11:               jal          s1, 22f
12:               jal          t0, 7b
13:               jal          ra, 17f
14:               jal          ra, 6b
15:               jal          t1, 18f
16:               jal          ra, 9b
17:               jal          t1, 15b
18:               jal          t1, 0b
19:               jal          ra, 16b
20:               jal          ra, 13b
21:               jal          s7, 10b
22:               sub          a2, a4, t4
main_2:           jal          s9, 8f
0:                jal          ra, 14f
1:                jal          a3, 2f
2:                jal          ra, 16f
3:                jal          ra, 6f
4:                jal          t1, 3b
5:                jal          t1, 15f
6:                jal          a5, 12f
7:                jal          ra, 10f
8:                jal          t1, 4b
9:                jal          ra, 7b
10:               jal          t6, 13f
11:               jal          ra, 9b
12:               jal          t1, 5b
13:               jal          s0, 0b
14:               jal          t1, 1b
15:               jal          s2, 11b
16:               xor          zero, s9, a3
main_12:          jal          s9, 19f
0:                jal          s0, 26f
1:                jal          s10, 5f
2:                jal          t6, 1b
3:                jal          ra, 0b
4:                jal          t1, 11f
5:                jal          ra, 24f
6:                jal          t1, 25f
7:                jal          a4, 13f
8:                jal          a2, 20f
9:                jal          ra, 4b
10:               jal          s1, 12f
11:               jal          sp, 17f
12:               jal          ra, 3b
13:               jal          ra, 15f
14:               jal          ra, 23f
15:               jal          ra, 28f
16:               jal          t1, 8b
17:               jal          ra, 22f
18:               jal          s7, 16b
19:               jal          s4, 2b
20:               jal          t1, 21f
21:               jal          ra, 10b
22:               jal          ra, 27f
23:               jal          a1, 6b
24:               jal          s7, 14b
25:               jal          t1, 9b
26:               jal          ra, 7b
27:               jal          t1, 18b
28:               srai         s9, s9, 15
main_9:           jal          s9, 1f
0:                jal          ra, 5f
1:                jal          ra, 9f
2:                jal          t3, 10f
3:                jal          tp, 6f
4:                jal          ra, 3b
5:                jal          t1, 2b
6:                jal          ra, 7f
7:                jal          t1, 8f
8:                jal          ra, 0b
9:                jal          ra, 4b
10:               srl          a5, t6, a0
main_4:           jal          s9, 17f
0:                jal          ra, 2f
1:                jal          gp, 10f
2:                jal          ra, 15f
3:                jal          ra, 1b
4:                jal          ra, 16f
5:                jal          ra, 0b
6:                jal          s1, 7f
7:                jal          s7, 5b
8:                jal          a0, 9f
9:                jal          ra, 11f
10:               jal          gp, 20f
11:               jal          ra, 13f
12:               jal          ra, 19f
13:               jal          ra, 12b
14:               jal          tp, 6b
15:               jal          ra, 8b
16:               jal          t1, 18f
17:               jal          t4, 3b
18:               jal          a0, 21f
19:               jal          t3, 4b
20:               jal          ra, 14b
21:               srl          tp, zero, a5
main_7:           jal          s9, 24f
0:                jal          ra, 25f
1:                jal          ra, 22f
2:                jal          ra, 16f
3:                jal          t4, 4f
4:                jal          t1, 11f
5:                jal          ra, 13f
6:                jal          ra, 9f
7:                jal          t1, 20f
8:                jal          t1, 2b
9:                jal          ra, 1b
10:               jal          t1, 12f
11:               jal          gp, 17f
12:               jal          ra, 8b
13:               jal          ra, 19f
14:               jal          a0, 5b
15:               jal          ra, 7b
16:               jal          t1, 15b
17:               jal          ra, 6b
18:               jal          ra, 14b
19:               jal          t1, 10b
20:               jal          t0, 0b
21:               jal          ra, 18b
22:               jal          t0, 21b
23:               jal          ra, 3b
24:               jal          t1, 23b
25:               nop
main_8:           jal          s9, 19f
0:                jal          ra, 20f
1:                jal          a3, 8f
2:                jal          s1, 16f
3:                jal          ra, 25f
4:                jal          ra, 18f
5:                jal          ra, 10f
6:                jal          s7, 9f
7:                jal          t1, 21f
8:                jal          t2, 15f
9:                jal          t1, 17f
10:               jal          a6, 24f
11:               jal          ra, 1b
12:               jal          t1, 5b
13:               jal          ra, 7b
14:               jal          ra, 0b
15:               jal          t1, 4b
16:               jal          ra, 6b
17:               jal          t1, 11b
18:               jal          sp, 3b
19:               jal          ra, 22f
20:               jal          t1, 2b
21:               jal          t0, 14b
22:               jal          tp, 23f
23:               jal          sp, 12b
24:               jal          ra, 13b
25:               sltu         t5, gp, s2
main_5:           jal          s9, 11f
0:                jal          ra, 4f
1:                jal          s5, 20f
2:                jal          t0, 12f
3:                jal          t1, 1b
4:                jal          a1, 8f
5:                jal          t1, 18f
6:                jal          t1, 7f
7:                jal          ra, 15f
8:                jal          s7, 10f
9:                jal          ra, 17f
10:               jal          t1, 3b
11:               jal          ra, 2b
12:               jal          t1, 19f
13:               jal          ra, 9b
14:               jal          s0, 6b
15:               jal          ra, 13b
16:               jal          ra, 14b
17:               jal          ra, 5b
18:               jal          ra, 0b
19:               jal          t1, 16b
20:               or           s1, s7, s2
main_14:          jal          s9, 8f
0:                jal          t1, 2f
1:                jal          ra, 21f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          ra, 6f
5:                jal          ra, 17f
6:                jal          s1, 14f
7:                jal          ra, 10f
8:                jal          tp, 19f
9:                jal          t1, 0b
10:               jal          ra, 22f
11:               jal          ra, 4b
12:               jal          s0, 7b
13:               jal          a1, 20f
14:               jal          a6, 1b
15:               jal          t1, 5b
16:               jal          ra, 18f
17:               jal          ra, 13b
18:               jal          a2, 9b
19:               jal          ra, 15b
20:               jal          tp, 11b
21:               jal          t0, 16b
22:               slti         t5, sp, -449
main_10:          jal          s9, 1f
0:                jal          ra, 8f
1:                jal          t1, 0b
2:                jal          ra, 7f
3:                jal          t3, 9f
4:                jal          s5, 2b
5:                jal          ra, 4b
6:                jal          sp, 3b
7:                jal          ra, 10f
8:                jal          s7, 6b
9:                jal          ra, 5b
10:               add          ra, zero, s7
main_13:          jal          s9, 2f
0:                jal          t0, 20f
1:                jal          ra, 14f
2:                jal          s11, 8f
3:                jal          ra, 15f
4:                jal          ra, 7f
5:                jal          t6, 22f
6:                jal          ra, 11f
7:                jal          ra, 16f
8:                jal          t1, 3b
9:                jal          t4, 18f
10:               jal          a1, 5b
11:               jal          t4, 4b
12:               jal          t1, 9b
13:               jal          s3, 10b
14:               jal          ra, 12b
15:               jal          t1, 1b
16:               jal          ra, 21f
17:               jal          gp, 13b
18:               jal          t1, 0b
19:               jal          t1, 6b
20:               jal          a6, 17b
21:               jal          ra, 23f
22:               jal          ra, 19b
23:               or           sp, s1, s0
main_3:           jal          s9, 8f
0:                jal          t6, 9f
1:                jal          ra, 6f
2:                jal          ra, 1b
3:                jal          ra, 4f
4:                jal          ra, 7f
5:                jal          gp, 0b
6:                jal          t1, 3b
7:                jal          ra, 10f
8:                jal          ra, 5b
9:                jal          t1, 2b
10:               xori         t6, t1, 166
                  blt          gp, s11, 20f
                  blt          s1, tp, 4f
                  slt          s4, a7, a1
                  bgeu         s9, a4, 7f
4:                add          a4, s8, s11
                  srai         s2, t3, 12
                  bne          a1, a0, 7f
7:                auipc        s4, 865841
                  sltu         t6, a3, t3
                  xori         s2, zero, -716
                  slli         a2, s0, 28
                  sra          a0, t0, s11
                  slti         s3, zero, 1306
                  sltu         a2, s10, gp
                  lui          t1, 29650
                  bne          sp, a0, 31f
                  lui          a0, 245803
                  sra          ra, s6, sp
                  bltu         a6, a4, 27f
                  sltu         t0, zero, s4
20:               xor          s5, a7, a7
                  auipc        a3, 545290
                  srli         t6, a5, 29
                  lui          a1, 362622
                  sra          zero, gp, t3
                  beq          a7, s11, 34f
                  sltu         a0, s11, sp
27:               lui          s1, 993770
                  sll          t0, s5, a5
                  bgeu         a0, s3, 48f
                  addi         s1, ra, 623
31:               slt          s0, t6, s4
                  sltu         t0, a2, s5
                  or           a5, s7, sp
34:               bne          a4, s4, 37f
                  bgeu         s8, t6, 38f
                  slti         a3, a5, 1257
37:               sltiu        ra, s11, 1685
38:               sltiu        s10, a4, -1000
                  bgeu         ra, s5, 40f
40:               blt          gp, s0, 54f
                  srl          t3, a7, tp
                  slt          s7, s2, sp
                  sltu         t1, a1, a6
                  sra          t6, s1, s2
                  bge          s5, s3, 65f
                  sltu         s2, a4, a4
                  andi         s10, t5, -165
48:               sra          zero, sp, a6
                  sra          t2, tp, s5
                  beq          s8, t0, 68f
                  bltu         zero, t1, 59f
                  slt          ra, s8, s0
                  slt          ra, s8, s8
54:               sra          a3, a2, t3
                  addi         a3, s8, -1041
                  auipc        t1, 299789
                  slt          t3, s5, s5
                  or           tp, ra, a4
59:               bge          s10, gp, 69f
                  bge          a3, s5, 80f
                  sub          a5, s8, s10
                  sltu         t3, s5, a6
                  or           s2, t2, s0
                  add          a1, t4, t0
65:               bne          a3, t2, 82f
                  add          s2, a3, s6
                  slt          s3, a7, s10
68:               slli         t1, zero, 20
69:               sll          s7, s11, t5
                  bne          t3, tp, 79f
                  xor          a6, zero, t3
                  sltiu        t6, s1, -395
                  blt          s1, s9, 93f
                  auipc        t3, 811522
                  ori          t2, a7, 668
                  srl          a2, a5, s10
                  bge          t3, s2, 80f
                  and          a5, s10, a3
79:               auipc        ra, 690460
80:               sll          s5, a5, s4
                  slti         sp, a0, -789
82:               sll          s5, a5, s11
                  ori          t6, s0, -1023
                  blt          a1, s0, 95f
                  srli         s1, t1, 15
                  ori          a3, s8, -1703
                  or           a6, s11, gp
                  xor          t4, a0, a0
                  auipc        zero, 170667
                  ori          a2, s5, -44
                  bge          s11, a4, 100f
                  bne          s10, s6, 104f
93:               bltu         s3, s10, 107f
                  srli         t0, a0, 10
95:               addi         t4, s4, 958
                  and          sp, t5, a4
                  or           ra, s9, t1
                  nop
                  ori          a1, s1, 1718
100:              bne          t3, a1, 118f
                  bgeu         gp, a4, 120f
                  sra          a0, s8, t4
                  slt          s1, s6, a3
104:              bge          s0, t2, 110f
                  bltu         s7, t1, 124f
                  sll          s10, t2, s9
107:              bltu         sp, a1, 112f
                  bne          s6, s4, 128f
                  beq          t5, s7, 115f
110:              srai         s9, s3, 3
                  srai         t0, tp, 10
112:              and          ra, t2, t1
                  xori         sp, s1, 690
                  bge          t4, a1, 128f
115:              sll          a3, t0, s3
                  sll          s9, tp, a4
                  add          zero, a7, a2
118:              bltu         t1, a1, 136f
                  andi         a4, t0, -73
                  sltiu        s9, s9, -161
                  la           gp, sub_1
                  add          s5, a3, t6
                  slli         s0, a1, 25
                  addi         gp, gp, -522
                  andi         ra, s2, -924
                  lui          t5, 20933
                  or           sp, a4, t5
                  addi         sp, s3, 1886
main_j1:          jalr         s9, gp, 522 #jump main -> sub_1
120:              sll          a6, s6, ra
                  and          s1, s7, s0
                  blt          t1, t6, 131f
                  auipc        t6, 586907
124:              sub          s2, s9, t2
                  slli         s11, a1, 27
                  sra          s4, a3, a4
                  slt          t1, a1, s10
128:              andi         s1, t0, -984
                  srli         t5, a1, 5
                  sltiu        t6, t6, -433
131:              bltu         zero, s1, 134f
                  beq          a5, a2, 141f
                  bne          zero, t6, 134f
134:              blt          s11, s3, 137f
                  sll          tp, ra, t0
136:              sltu         gp, s11, a2
137:              andi         t1, sp, -1607
                  and          a2, t6, sp
                  and          t4, s5, s11
                  auipc        s4, 416341
141:              ori          s4, t0, 1680
                  bge          t0, sp, 145f
                  bne          s11, s3, 154f
                  bgeu         s10, a0, 164f
145:              bne          s3, s11, 153f
                  bne          s1, a2, 165f
                  sltu         t0, t3, s5
                  auipc        s2, 654036
                  beq          t5, a6, 158f
                  addi         s2, tp, -744
                  sra          s5, t4, t6
                  ori          t4, t4, -848
153:              blt          tp, ra, 173f
154:              xori         t0, s5, -1030
                  bgeu         s6, t3, 158f
                  and          s9, s10, t5
                  xor          t5, sp, a7
158:              slti         s11, a4, -1267
                  sll          s4, s3, s11
                  blt          s5, s6, 179f
                  auipc        t1, 516005
                  lui          s4, 597254
                  slli         a5, a3, 11
164:              addi         a0, s6, 13
165:              lui          sp, 110263
                  blt          a2, s3, 170f
                  srl          a3, s2, a6
                  nop
                  auipc        t2, 257976
170:              lui          s10, 691557
                  sra          sp, a3, tp
                  andi         s1, s1, 1903
173:              lui          s10, 387911
                  auipc        a3, 279856
                  beq          s2, a4, 185f
                  sltu         a0, a2, s2
                  xori         t3, zero, -939
                  beq          s11, sp, 192f
179:              slt          t2, t0, a7
                  slti         s7, tp, -923
                  slli         s9, s3, 28
                  nop
                  srli         ra, a1, 14
                  xori         ra, s6, -1402
185:              lui          gp, 854818
                  xor          s4, t2, a5
                  sltu         s5, a7, s1
                  add          gp, a7, s2
                  andi         zero, t1, -1274
                  bge          sp, s7, 207f
                  srli         a2, ra, 6
192:              auipc        s3, 465251
                  sll          t5, t2, s6
                  add          t2, zero, s2
                  slli         s10, s8, 31
                  sub          a1, s8, s10
                  or           s0, s5, a5
                  srli         s5, a6, 26
                  addi         t0, s9, -1263
                  srl          a3, s5, tp
                  auipc        a0, 858292
                  slt          a1, s2, a3
                  add          a5, t4, s2
                  beq          a2, s6, 222f
                  sra          a0, a1, a1
                  bltu         s7, s3, 211f
207:              sub          s4, sp, s3
                  sra          tp, a0, sp
                  bltu         t6, tp, 229f
                  bne          t0, s10, 222f
211:              bne          a3, s7, 227f
                  sll          ra, a7, s5
                  andi         s1, s0, 1363
                  addi         a2, t2, -1413
                  lui          a3, 490555
                  slli         s10, ra, 7
                  srli         s0, s1, 20
                  bne          ra, t5, 237f
                  xor          s2, s4, s5
                  bge          a6, a0, 221f
221:              sltiu        s7, t2, 546
222:              add          sp, a4, s10
                  srai         t1, a0, 2
                  sltiu        t3, sp, -1939
                  sra          t3, a6, t1
                  lui          s7, 677191
227:              xor          t2, t6, s10
                  nop
229:              slli         tp, t1, 24
                  and          s5, gp, s7
                  bge          t5, a5, 240f
                  slli         t5, s4, 4
                  slli         s5, a5, 9
                  sltu         tp, sp, s1
                  slli         s1, a6, 30
                  blt          zero, tp, 256f
237:              sub          a5, a4, t4
                  bge          s3, t6, 247f
                  srl          a4, tp, s8
240:              ori          s3, s3, -1813
                  nop
                  sltu         a2, a6, a4
                  slti         s11, a3, 826
                  lui          s1, 205783
                  slti         sp, sp, -588
                  beq          s6, t0, 263f
247:              and          s0, s11, s7
                  andi         s11, s2, -1095
                  srai         gp, t6, 12
                  andi         t1, s0, -722
                  bge          a2, a2, 254f
                  slti         s1, t4, 1800
                  srai         t5, a1, 21
254:              xori         a1, t5, -995
                  srl          t6, s8, sp
256:              addi         s7, s8, -618
                  xor          a5, s2, zero
                  slli         a5, a4, 20
                  bltu         a0, s4, 263f
                  slt          s3, a3, s9
                  or           t6, s5, s9
                  slli         a4, a6, 26
263:              bge          s5, a7, 281f
                  srl          s5, tp, sp
                  slti         a6, t6, -1709
                  sra          s5, tp, s6
                  sll          tp, a6, s1
                  nop
                  or           s11, a4, s10
                  andi         a3, a0, 249
                  bgeu         tp, t0, 285f
                  xor          s4, t6, t3
                  sll          s1, t0, t2
                  sltu         s5, s4, t2
                  andi         a1, tp, -526
                  sltiu        t6, a6, -1687
                  lui          a3, 715548
                  xor          t2, t6, s11
                  sltu         s2, t1, t5
                  sll          gp, tp, zero
281:              and          s2, s2, a7
                  xori         t6, sp, 790
                  ori          s4, s7, 1841
                  sra          s1, t2, a2
285:              lui          a3, 717216
                  srl          tp, a5, s4
                  blt          gp, sp, 306f
                  bge          t6, zero, 302f
                  and          s1, ra, s5
                  addi         zero, t3, 1969
                  slt          s0, t0, ra
                  or           t1, a6, s11
                  sll          a6, s3, s9
                  bne          s7, s1, 300f
                  blt          s7, a6, 314f
                  srai         t6, tp, 25
                  xor          ra, ra, t4
                  or           s3, s3, s2
                  bgeu         s6, s10, 319f
300:              sll          a6, s9, s6
                  sltiu        s10, a3, 823
302:              sltiu        a0, s11, -1227
                  ori          a0, a2, -1585
                  sra          a4, s5, gp
                  srai         s7, s10, 4
306:              sub          a5, tp, a5
                  srl          s11, s0, t4
                  nop
                  addi         t3, t3, -719
                  bne          t1, s9, 319f
                  xor          s7, s10, s10
                  beq          t3, t0, 323f
                  addi         a1, s9, 1829
314:              add          tp, t1, s9
                  addi         s1, s8, -1499
                  or           t5, gp, s9
                  sltu         s0, s1, zero
                  slti         a0, a7, 1452
319:              srli         t5, a1, 23
                  lui          t6, 180604
                  slti         t5, t0, -1182
                  bge          a1, s2, 332f
323:              auipc        a6, 158815
                  sub          s1, gp, t1
                  and          s9, a3, a1
                  bgeu         s5, ra, 345f
                  slt          s7, a1, s9
                  srl          a3, zero, a1
                  sub          t6, a5, ra
                  bge          t2, a1, 335f
                  sub          t1, s11, s3
332:              srl          s10, t6, s9
                  srli         t6, s6, 7
                  bne          s5, s7, 337f
335:              sltu         ra, a1, sp
                  srl          ra, s2, s10
337:              lui          ra, 22511
                  beq          t0, s0, 341f
                  bltu         a1, t1, 348f
                  bne          s5, s4, 352f
341:              sll          t3, t2, a0
                  bgeu         s2, a6, 343f
343:              bgeu         t1, s11, 361f
                  beq          gp, a2, 352f
345:              and          a6, ra, t1
                  bltu         t1, a0, 366f
                  auipc        s0, 514091
348:              bgeu         t4, gp, 364f
                  lui          t3, 669775
                  andi         s7, sp, 1996
                  srli         a5, s11, 18
352:              bgeu         s3, s8, 353f
353:              sltiu        s9, t5, -123
                  addi         a3, a6, 1535
                  sra          s7, s6, s7
                  sltu         zero, tp, t0
                  bltu         gp, t4, 377f
                  bge          s11, a3, 367f
                  bge          a5, t6, 362f
                  addi         t2, gp, 211
361:              slti         s5, a0, -1065
362:              nop
                  sltiu        s10, s7, 626
364:              ori          s2, s6, 1280
                  bne          gp, s7, 381f
366:              sltu         s10, gp, a2
367:              bgeu         t1, s0, 387f
                  ori          s2, s7, -236
                  or           ra, t2, zero
                  srl          t5, a7, s10
                  bgeu         a5, a0, 380f
                  slt          t5, s7, s4
                  sub          zero, a5, s2
                  ori          a4, s3, -1162
                  slli         s10, s3, 23
                  andi         s1, s1, -794
377:              bgeu         a2, t0, 380f
                  srl          s11, a5, a6
                  addi         s2, s2, 817
380:              slti         s2, s7, 1232
381:              or           a5, s11, s6
                  bltu         s9, gp, 402f
                  nop
                  auipc        gp, 22299
                  beq          s5, a4, 403f
                  lui          s5, 764925
387:              sltu         t5, s10, s0
                  and          ra, s6, a5
                  sll          s1, a7, s8
                  srli         t3, s6, 23
                  add          s3, s10, t5
                  srli         a3, a3, 29
                  srli         s3, t2, 18
                  srl          s1, s2, s3
                  and          a5, s8, a1
                  srl          t2, s4, s9
                  and          a1, a2, s0
                  bne          a4, zero, 399f
399:              sltiu        ra, a1, 1616
                  slti         gp, s11, -513
                  bne          a5, t1, 415f
402:              auipc        a1, 964729
403:              xor          s5, t6, s2
                  sltiu        a0, t5, -242
                  xori         sp, a7, 1909
                  srli         a2, a7, 2
                  auipc        tp, 1031947
                  sub          a3, a4, s8
                  bgeu         a2, t2, 419f
                  sltu         zero, gp, s1
                  add          s2, t1, s9
                  nop
                  sll          a2, s0, zero
                  beq          zero, t2, 423f
415:              slti         s7, s11, 491
                  lui          tp, 796719
                  slt          t6, tp, s7
                  sltiu        tp, s3, 1230
419:              ori          s5, a1, -1197
                  srai         a1, t0, 21
                  nop
                  slt          t3, a7, a3
423:              slli         s7, a2, 12
                  slti         s10, s3, -403
                  bge          s10, t4, 445f
                  srai         s10, a0, 13
                  nop
                  blt          a5, ra, 447f
                  beq          s11, s11, 433f
                  nop
                  or           s9, s10, t5
                  sll          s1, s5, a5
433:              sltiu        t6, a3, -783
                  nop
                  nop
                  sltu         s5, tp, s0
                  bge          a2, s7, 440f
                  sltu         a4, s10, s5
                  srli         s1, s5, 19
440:              sll          s7, t4, a2
                  srli         t6, s8, 4
                  sra          a0, a3, zero
                  addi         a3, t4, 65
                  slti         a5, t2, 1260
                  la           a4, sub_2
                  sltu         t5, zero, a2
                  addi         a4, a4, 737
                  bge          s6, s8, main_j2 #branch to jump instr
                  slti         t3, t4, -730
                  ori          tp, s9, 1710
                  slti         t5, s11, 1383
                  slt          t3, zero, a3
                  srli         tp, s11, 22
                  srl          s11, a2, s0
main_j2:          jalr         s9, a4, -737 #jump main -> sub_2
                  slli         s4, t2, 29
                  bltu         s3, s4, 457f
                  bltu         sp, a0, 461f
445:              slti         s1, a7, 1207
                  bltu         a2, s2, 465f
447:              and          t4, sp, s2
                  bltu         zero, a0, 454f
                  addi         a1, t1, 1507
                  bgeu         sp, t0, 462f
                  auipc        a4, 942215
                  andi         a6, a1, 1139
                  blt          s4, tp, 456f
454:              srai         t1, s7, 25
                  or           s0, t5, s11
456:              addi         s10, a0, -1637
457:              slt          t1, t4, s7
                  bgeu         s5, t4, 476f
                  bne          s7, a3, 468f
                  xori         a0, s6, 234
461:              lui          s0, 830467
462:              nop
                  add          a6, a0, s3
                  xor          s2, t0, a6
465:              srai         a4, s10, 2
                  srai         t6, t1, 21
                  lui          gp, 513321
468:              ori          ra, s7, 1382
                  auipc        s11, 872687
                  nop
                  bge          s8, s11, 479f
                  slli         tp, zero, 4
                  sltu         s9, gp, tp
                  sub          s5, s10, gp
                  bltu         s11, s2, 494f
476:              bgeu         t5, tp, 481f
                  bltu         a6, t3, 497f
                  srai         zero, a6, 8
479:              sra          a5, a6, s9
                  srli         s10, s9, 11
481:              andi         gp, t6, 1497
                  sltu         gp, s9, s9
                  beq          s3, t4, 486f
                  xori         s9, a1, 1452
                  xor          s11, s2, s0
486:              bne          zero, tp, 497f
                  slti         s4, s4, 1234
                  sub          s2, t5, s8
                  addi         s10, s2, 1730
                  add          s0, sp, ra
                  andi         s0, s8, 207
                  blt          s11, s9, 501f
                  sub          s5, a6, s8
494:              slti         t6, a4, -1993
                  and          s11, s3, s7
                  srai         a2, a7, 10
497:              sltiu        s9, gp, 886
                  auipc        ra, 295425
                  nop
                  sub          t4, t6, t4
501:              nop
                  sra          s11, a4, t1
                  sltiu        s10, a1, -1902
                  xori         s9, sp, -35
                  srl          a3, s1, a7
                  add          sp, s8, gp
                  sub          sp, a5, a5
                  sltu         t0, a5, s6
                  and          tp, t4, t1
                  andi         a1, t4, -1968
                  slt          t0, s1, s5
                  nop
                  addi         zero, a0, -1347
                  slli         a5, a5, 11
                  and          t0, a7, a5
                  xor          t5, s7, gp
                  sll          s5, a1, s5
                  srai         s1, s0, 13
                  ori          a4, a2, 331
                  sra          s4, a6, a3
                  bgeu         a7, a7, 522f
522:              ori          t5, a7, 785
                  sltiu        a3, t0, -1701
                  srai         t6, tp, 0
                  bgeu         s7, a3, 545f
                  sra          s11, s8, ra
                  auipc        sp, 729074
                  sub          t3, s1, a0
                  sub          t0, s9, s10
                  auipc        tp, 851972
                  blt          tp, s11, 550f
                  sub          s2, a2, t0
                  nop
                  auipc        s10, 461162
                  srli         s10, tp, 24
                  xori         a3, s7, -1469
                  lui          s2, 1036107
                  xor          a4, s9, s6
                  sltiu        a1, s3, -89
                  nop
                  slt          t0, s10, a6
                  bgeu         a6, zero, 551f
                  srai         t6, a4, 29
                  slti         a4, s0, -1352
545:              sub          s7, s9, s10
                  bgeu         gp, a1, 549f
                  sltiu        s4, s0, -570
                  srai         a2, s8, 11
549:              srli         gp, s0, 5
550:              add          t0, s5, a7
551:              and          s2, s11, t5
                  slli         t0, s5, 29
                  bltu         a7, s2, 556f
                  xori         sp, t0, 940
                  blt          a7, s7, 573f
556:              bltu         s11, a7, 565f
                  lui          ra, 288946
                  add          t4, zero, a5
                  and          t3, a4, a1
                  bne          a7, s9, 574f
                  sub          s5, s10, zero
                  bge          s9, a7, 566f
                  add          zero, t6, s2
                  slt          s11, t3, a7
565:              slt          s7, a6, gp
566:              beq          s8, a6, 576f
                  ori          s11, s8, 685
                  lui          t1, 88356
                  bne          a5, t4, 575f
                  blt          s5, t3, 579f
                  ori          s7, sp, 1598
                  blt          s6, t3, 592f
573:              or           t3, s6, s11
574:              nop
575:              slti         sp, a4, -1018
576:              xor          t3, s6, t4
                  add          ra, s10, a0
                  srli         a2, s11, 25
579:              or           s11, t1, s7
                  bgeu         a6, a0, 596f
                  andi         zero, a7, 1877
                  slli         s2, s7, 2
                  srli         s3, s5, 1
                  addi         a3, s8, 1392
                  srl          t0, a5, s9
                  ori          t1, s2, -78
                  sltu         sp, t2, t5
main_0:           jal          s9, 2f
0:                jal          s3, 5f
1:                jal          s7, 6f
2:                jal          ra, 1b
3:                jal          t1, 12f
4:                jal          gp, 16f
5:                jal          t1, 10f
6:                jal          t1, 7f
7:                jal          a2, 0b
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               jal          s11, 9b
11:               jal          ra, 8b
12:               jal          t1, 13f
13:               jal          ra, 15f
14:               jal          t1, 11b
15:               jal          ra, 14b
16:               auipc        t2, 225815
                  slti         s5, tp, 1149
                  addi         s1, t6, -494
                  slti         gp, s9, -105
                  ori          s10, s10, -1446
592:              nop
                  andi         a2, s7, -1291
                  bge          a4, s5, 614f
                  srl          ra, gp, s11
596:              sra          a4, a7, s1
                  nop
                  or           s2, s11, s8
                  bne          t0, s8, 616f
                  add          s5, a6, zero
                  bgeu         a7, s6, 609f
                  srai         t4, t2, 26
                  sra          zero, s3, s10
                  slt          t5, t4, s4
                  or           s1, sp, s3
                  slti         t1, s6, -1867
                  add          s9, a1, a1
                  beq          a2, a5, 620f
609:              slli         s11, a1, 10
                  or           tp, tp, s1
                  sltu         t2, s6, t2
                  xori         gp, tp, -688
                  srl          t1, gp, t1
614:              bgeu         gp, s4, 632f
                  slti         a1, s5, -1867
616:              sub          a1, s4, a2
                  beq          s8, a7, 618f
618:              slti         t1, s7, 1370
                  nop
620:              xor          a6, t5, s8
                  lui          t4, 403973
                  sra          gp, s4, a4
                  blt          s5, s4, 626f
                  and          a2, s4, s6
                  sltu         s9, zero, a4
626:              andi         t4, s2, 1587
                  or           s5, a2, t1
                  srl          s0, t0, t2
                  beq          a7, s4, 648f
                  slti         t2, s1, -806
                  auipc        s1, 906657
632:              sltiu        a4, s5, 893
                  and          zero, sp, a3
                  or           t5, s2, s8
                  or           t6, a0, a5
                  xori         a6, a5, 132
                  addi         s10, s10, -908
                  bge          s7, s4, 647f
                  sltiu        s5, a2, 1465
                  slti         t6, t2, -1730
                  lui          gp, 565769
                  srai         gp, s2, 15
                  slti         gp, s0, 1358
                  and          t2, s1, t4
                  sra          sp, s9, s10
                  lui          a0, 866906
647:              slt          t2, a5, s0
648:              and          t0, s5, a2
                  beq          t5, a1, 650f
650:              xori         t5, a5, -1556
                  sub          t0, a3, a6
                  auipc        tp, 444346
                  addi         a3, a5, 597
                  andi         s11, t1, -1055
                  and          s9, t4, t4
                  blt          s4, sp, 676f
                  beq          a6, a6, 676f
                  nop
                  srai         s0, a1, 26
                  add          ra, a1, s10
                  ori          s11, t2, -1897
                  auipc        tp, 33692
                  nop
                  sra          t2, a5, t2
                  sltiu        s4, sp, 1291
                  addi         tp, s3, 594
                  blt          s3, a1, 670f
                  sltu         zero, s1, a6
                  xor          s11, a2, s6
670:              lui          a4, 884207
                  xori         ra, ra, 1461
                  sub          a6, t1, sp
                  bne          sp, t4, 684f
                  srai         sp, a5, 31
                  beq          a1, a0, 689f
676:              ori          t6, a7, 1047
                  sltu         t3, ra, t2
                  sltiu        tp, tp, 1306
                  slli         s4, a5, 24
                  beq          sp, t0, 685f
                  sub          t1, s9, s0
                  blt          s4, s11, 691f
                  add          a0, s0, ra
684:              srl          s0, a5, sp
685:              andi         gp, sp, -1121
                  srl          s10, s3, tp
                  sltu         ra, a3, s9
                  sub          s5, s10, t3
689:              sra          zero, s4, zero
                  sltu         sp, zero, a0
691:              ori          s1, t0, -1601
                  beq          s6, a6, 701f
                  lui          gp, 741054
                  srl          t0, t1, a5
                  slt          s5, s6, ra
                  sra          s9, s1, s4
                  or           a2, t1, a6
main_1:           jal          s9, 4f
0:                jal          ra, 6f
1:                jal          ra, 2f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          gp, 0b
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          t1, 9f
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               sltu         s11, t3, a7
                  lui          s10, 157829
                  lui          s7, 862234
                  auipc        a3, 705490
701:              auipc        a5, 341138
                  srli         s10, t1, 27
                  beq          gp, t1, 709f
                  sltiu        s0, t4, -826
                  lui          a4, 74659
                  srli         s1, a5, 16
                  add          s11, gp, t3
                  addi         gp, t6, 433
709:              xori         t3, s5, 124
                  sra          t5, t6, a3
                  bne          a0, s10, 720f
                  or           a1, s6, a3
                  srl          s0, sp, s6
                  srl          sp, s0, tp
                  sra          zero, ra, zero
                  add          t5, zero, tp
                  xori         a1, a0, -738
                  beq          a7, a5, 721f
                  bgeu         t5, t3, 737f
720:              addi         a3, a4, -249
721:              slt          s0, s10, a6
                  add          gp, s3, t5
                  sub          tp, s9, s10
                  sltiu        s9, s0, -384
                  auipc        a2, 454901
                  slli         t5, s2, 6
                  slli         sp, t6, 8
                  sltiu        tp, a0, 1753
                  beq          tp, zero, 732f
                  bne          s4, s4, 742f
                  beq          ra, t6, 750f
732:              auipc        a5, 257984
                  nop
                  add          a1, a1, s11
                  bne          s8, a6, 736f
736:              srli         a3, s11, 30
737:              bne          s9, s10, 757f
                  xori         s9, ra, 1643
                  sltu         s10, a2, t1
                  slti         a0, t0, -156
                  add          s2, gp, s5
742:              ori          a5, s7, 2014
                  ori          t1, sp, -2015
                  bge          t2, gp, 754f
                  srai         t4, s5, 27
                  lui          t3, 454684
                  slli         s9, s7, 12
                  slti         a4, s0, -871
                  beq          s2, s9, 757f
750:              or           a0, s3, tp
                  sub          ra, a3, t1
                  sltiu        t1, s8, -736
                  ori          s1, a6, -1970
754:              bgeu         zero, zero, 757f
                  srli         t2, a6, 14
                  srli         s0, s4, 8
757:              blt          t3, t3, 771f
                  addi         a2, s11, -160
                  addi         a3, zero, 1627
                  addi         a2, s1, -1216
                  slt          a6, t4, t4
                  srli         t3, tp, 2
                  ori          t1, s11, 2010
                  beq          a7, s9, 767f
                  slti         a2, t6, -96
                  bltu         s6, tp, 786f
767:              auipc        t3, 864988
                  xori         tp, s11, -1123
                  lui          s9, 829738
                  sltu         s7, a3, a3
771:              addi         a1, s5, 1442
                  bne          a5, s11, 789f
                  sll          a4, a1, sp
                  auipc        a5, 434371
                  or           a4, gp, s10
                  blt          t6, a7, 789f
                  add          a2, s3, s2
                  sltu         t2, ra, a1
                  xor          ra, tp, a5
                  beq          s9, s10, 789f
                  bne          s5, zero, 789f
                  addi         sp, a5, 1905
                  srai         gp, tp, 13
                  xor          t2, a2, s2
                  slti         s7, a7, -910
786:              slti         t0, a3, 1750
                  blt          gp, s2, 789f
                  or           gp, t5, s2
789:              srai         s0, s1, 16
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         s8, s8, -32
                  slti         s5, s9, -1560
                  sltiu        t5, tp, -747
                  sw           s9, 4(s8)
                  addi         t5, sp, -1669
                  srl          s3, s10, a7
                  or           a1, a1, gp
                  add          s11, gp, zero
                  ori          s2, t4, -1489
                  andi         s7, s3, 1864
sub_5_0:          jal          s9, 13f
0:                jal          tp, 25f
1:                jal          ra, 16f
2:                jal          a0, 8f
3:                jal          ra, 1b
4:                jal          t3, 24f
5:                jal          ra, 21f
6:                jal          ra, 3b
7:                jal          s4, 10f
8:                jal          t1, 12f
9:                jal          t0, 7b
10:               jal          s9, 20f
11:               jal          tp, 4b
12:               jal          t1, 15f
13:               jal          t0, 6b
14:               jal          t1, 26f
15:               jal          a3, 18f
16:               jal          a2, 19f
17:               jal          t1, 23f
18:               jal          t2, 5b
19:               jal          ra, 22f
20:               jal          a5, 2b
21:               jal          t1, 11b
22:               jal          ra, 9b
23:               jal          t1, 0b
24:               jal          s1, 17b
25:               jal          t0, 14b
26:               sub          t2, gp, t1
sub_5_1:          jal          s9, 8f
0:                jal          ra, 9f
1:                jal          t1, 4f
2:                jal          t4, 3f
3:                jal          ra, 15f
4:                jal          ra, 16f
5:                jal          ra, 11f
6:                jal          t1, 14f
7:                jal          ra, 18f
8:                jal          ra, 22f
9:                jal          ra, 19f
10:               jal          ra, 5b
11:               jal          t1, 6b
12:               jal          t1, 2b
13:               jal          ra, 10b
14:               jal          t1, 24f
15:               jal          sp, 7b
16:               jal          t1, 23f
17:               jal          t1, 20f
18:               jal          ra, 0b
19:               jal          a6, 17b
20:               jal          ra, 1b
21:               jal          ra, 13b
22:               jal          t1, 21b
23:               jal          ra, 25f
24:               jal          t1, 12b
25:               sltiu        tp, s9, -1767
sub_5_4:          jal          s9, 12f
0:                jal          s11, 11f
1:                jal          ra, 5f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          s2, 15f
5:                jal          ra, 18f
6:                jal          ra, 8f
7:                jal          ra, 2b
8:                jal          t0, 14f
9:                jal          ra, 19f
10:               jal          ra, 3b
11:               jal          gp, 13f
12:               jal          ra, 4b
13:               jal          ra, 9b
14:               jal          t0, 17f
15:               jal          ra, 6b
16:               jal          ra, 1b
17:               jal          ra, 16b
18:               jal          ra, 10b
19:               and          a1, gp, a2
sub_5_2:          jal          s9, 0f
0:                jal          ra, 11f
1:                jal          t0, 13f
2:                jal          gp, 4f
3:                jal          s5, 7f
4:                jal          ra, 14f
5:                jal          ra, 10f
6:                jal          t1, 8f
7:                jal          sp, 2b
8:                jal          s0, 9f
9:                jal          sp, 5b
10:               jal          ra, 15f
11:               jal          t1, 1b
12:               jal          ra, 6b
13:               jal          t1, 3b
14:               jal          a0, 12b
15:               slti         zero, zero, 1812
sub_5_3:          jal          s9, 12f
0:                jal          ra, 9f
1:                jal          ra, 19f
2:                jal          ra, 20f
3:                jal          t1, 8f
4:                jal          s7, 5f
5:                jal          t1, 1b
6:                jal          ra, 22f
7:                jal          ra, 6b
8:                jal          ra, 18f
9:                jal          ra, 10f
10:               jal          ra, 3b
11:               jal          ra, 23f
12:               jal          a6, 24f
13:               jal          ra, 15f
14:               jal          s5, 13b
15:               jal          t2, 4b
16:               jal          ra, 26f
17:               jal          ra, 16b
18:               jal          s3, 7b
19:               jal          t1, 2b
20:               jal          t1, 11b
21:               jal          ra, 14b
22:               jal          ra, 25f
23:               jal          ra, 0b
24:               jal          a0, 21b
25:               jal          ra, 17b
26:               slti         s0, s5, -599
                  bge          t1, a7, 4f
                  slli         gp, s9, 21
                  srl          sp, s5, s9
                  slti         s7, t6, -355
4:                nop
                  xori         a6, gp, -1692
                  xori         a0, s6, -1241
                  auipc        tp, 784420
                  srl          s4, s7, s5
                  beq          a7, t1, 10f
10:               blt          t6, sp, 13f
                  sltiu        tp, a6, -846
                  sub          s3, a6, s7
13:               auipc        t3, 1014186
                  or           a6, s9, s4
                  sra          s4, s0, a2
                  srli         a2, t5, 17
                  addi         gp, s6, -761
                  andi         s3, t1, 129
                  add          t5, a0, a6
                  xori         a2, sp, 117
                  xor          s2, t6, t0
                  srai         s1, a7, 27
                  and          s5, t0, t5
                  srl          s10, a4, s10
                  bge          a0, s6, 32f
                  sltu         a0, s8, t3
                  and          s3, t6, t2
                  sltiu        a2, s11, -563
                  ori          t6, s1, -655
                  add          s3, t2, s10
                  slli         a6, s11, 31
32:               blt          s3, s9, 39f
                  slli         t0, s2, 21
                  add          s11, s0, a4
                  srl          zero, a0, a6
                  srl          a1, t5, ra
                  lui          a6, 341673
                  andi         s10, a3, -1544
39:               xor          a0, t6, t4
                  bne          t1, a1, 60f
                  addi         gp, s1, -2007
                  bge          s10, t1, 59f
                  blt          t0, gp, 46f
                  bltu         s7, s1, 64f
                  or           s0, a4, s2
46:               srai         t1, t0, 10
                  sub          a3, s1, s4
                  xor          a6, a0, a2
                  sltu         s3, s7, zero
                  srl          s10, t6, s8
                  andi         t4, s9, -947
                  sltiu        zero, a5, -991
                  andi         a2, ra, 754
                  andi         a3, ra, 1849
                  srl          a6, s7, t0
                  beq          s8, a6, 73f
                  slti         s7, t4, 30
                  slli         s9, t3, 6
59:               auipc        gp, 283082
60:               add          t5, ra, s3
                  add          a4, t3, a4
                  srai         a2, t1, 11
                  slti         s5, tp, -1522
64:               auipc        a4, 19744
                  sub          t3, a2, a6
                  sltiu        t0, s4, -144
                  ori          t4, s2, -57
                  and          s3, t4, zero
                  srl          a2, a1, t6
                  bge          s8, s5, 80f
                  slt          t0, zero, s5
                  sll          sp, s9, s3
73:               srl          a4, s3, a5
                  add          a2, t4, t1
                  andi         t3, s8, -1115
                  slli         a5, a3, 5
                  blt          t3, t3, 89f
                  and          a4, s8, a4
                  srli         t5, s5, 4
80:               srai         t6, a3, 7
                  nop
                  addi         s5, t4, -1994
                  bgeu         tp, sp, 103f
                  srli         a5, s9, 19
                  add          s9, s10, s0
                  sub          sp, s4, a6
                  auipc        a5, 433949
                  auipc        t4, 899404
89:               nop
                  bgeu         t6, t3, 105f
                  srai         t5, zero, 16
                  sll          s11, s11, s7
                  srl          a0, t1, t0
                  slt          s1, s2, ra
                  bltu         s3, t1, 109f
                  bltu         gp, s3, 104f
                  add          t6, s3, t5
                  sltu         a3, gp, s9
                  xori         ra, s5, 1786
                  sub          tp, s8, a4
                  slti         s5, s4, 415
                  slt          zero, s4, s6
103:              bge          s11, ra, 123f
104:              bgeu         a4, t1, 107f
105:              sub          zero, gp, t3
                  bne          s2, tp, 117f
107:              blt          s6, t2, 115f
                  sltu         s5, s11, s0
109:              andi         s5, a5, 1517
                  sltiu        s1, a7, -182
                  andi         a3, s10, 403
                  and          t4, t4, s3
                  addi         s2, t5, -187
                  and          s9, t1, a2
115:              andi         t2, s11, -68
                  sll          t0, t6, t3
117:              or           s1, s10, s2
                  srai         s1, a3, 10
                  bltu         a1, s8, 120f
120:              bltu         a7, s7, 127f
                  srli         a1, zero, 16
                  add          a5, sp, s9
123:              slti         s4, a1, -1381
                  nop
                  slti         t1, a2, -1611
                  sltiu        s2, s11, -252
127:              ori          gp, t6, 364
                  sltiu        t2, sp, 1970
                  bgeu         t6, s4, 143f
                  or           s4, tp, t5
                  srli         a6, s9, 2
                  lui          s11, 835300
                  blt          sp, tp, 139f
                  blt          s3, a2, 139f
                  slti         t1, s3, -654
                  srli         s2, s11, 12
                  slti         t0, t0, -1834
                  slli         s7, s1, 11
139:              srli         tp, t2, 25
                  sltiu        s1, s2, 1064
                  blt          s7, a2, 150f
                  auipc        a5, 341672
143:              sll          s5, t6, s6
                  beq          a1, s0, 145f
145:              sltiu        s3, gp, 1867
                  bge          s10, s1, 161f
                  sra          t4, s2, a2
                  bltu         t4, a3, 167f
                  beq          gp, s7, 169f
150:              sra          a2, s1, ra
                  sll          t0, s2, s6
                  sltiu        t0, a7, 1528
                  sub          a5, s11, s10
                  srli         ra, t3, 29
                  xori         t5, a0, 693
                  lui          sp, 27590
                  or           a5, ra, t1
                  beq          gp, t6, 165f
                  addi         s1, s7, 1442
                  add          s5, s1, a0
161:              bge          a2, a4, 178f
                  bltu         a5, a6, 163f
163:              slt          zero, a4, t6
                  slt          s11, a6, a7
165:              and          s4, t5, a3
                  lui          s10, 613388
167:              slti         a1, s8, -164
                  sltiu        t3, a7, 777
169:              or           s0, t3, a3
                  and          s0, a7, a7
                  srai         s11, ra, 30
                  lui          gp, 195492
                  srl          t4, s9, t2
                  bne          a5, s4, 194f
                  sltu         s0, a0, t5
                  bgeu         zero, s0, 181f
                  bne          t2, t4, 178f
178:              auipc        s0, 421113
                  srai         a3, zero, 14
                  and          s1, zero, t0
181:              xor          t0, gp, a0
                  slli         ra, t6, 3
                  auipc        s5, 554365
                  bgeu         t5, s6, 194f
                  ori          s9, s5, -787
                  bge          s5, s10, 189f
                  bltu         t1, t2, 201f
                  bne          s11, s6, 208f
189:              srl          s0, s6, sp
                  addi         s11, s9, 927
                  and          s7, s11, a3
                  blt          s10, a2, 204f
                  lui          a2, 905273
194:              sltiu        t0, t0, 1712
                  andi         s3, ra, 360
                  xor          zero, tp, t4
                  srai         a6, a1, 29
                  sra          gp, t3, s5
                  or           s0, a4, s8
                  bne          s3, s8, 215f
201:              or           a4, a3, sp
                  slli         a2, t3, 20
                  addi         ra, s11, 652
204:              srai         t4, a3, 14
                  auipc        s9, 78596
                  srai         a5, a3, 2
                  ori          zero, a6, -1410
208:              xor          s5, s0, t2
                  sltu         s7, a3, s0
                  slt          a4, s6, a1
                  xori         t0, s6, 945
                  bltu         s1, s10, 220f
                  sub          s7, s2, a3
                  beq          s10, ra, 229f
215:              and          t4, a1, a5
                  sltu         zero, t4, t0
                  andi         sp, ra, 1674
                  ori          a6, ra, 1550
                  and          t4, s7, a7
220:              lui          a5, 539192
                  ori          s10, s4, 314
                  nop
                  blt          a7, s5, 226f
                  slti         gp, a0, -1945
                  slli         s10, gp, 15
226:              srl          s4, t2, s11
                  srli         t4, s10, 4
                  bltu         tp, gp, 245f
229:              sub          a0, s2, s5
                  beq          a2, t0, 249f
                  slt          t2, a6, s1
                  xori         s2, s7, -1207
                  bne          a4, s4, 234f
234:              andi         zero, tp, -1519
                  sra          t2, s1, a2
                  slti         a5, s2, -1843
                  add          a1, s9, s3
                  srai         s1, s5, 16
                  xori         sp, a3, 981
                  xori         tp, a1, 1652
                  nop
                  slti         a2, s1, -237
                  or           s4, gp, s8
                  bltu         s8, a1, 258f
245:              and          s2, zero, t5
                  addi         s3, a6, 380
                  sll          t3, a1, a7
                  bge          t3, tp, 252f
249:              bltu         tp, a4, 257f
                  ori          t1, s7, 150
                  slt          tp, s11, ra
252:              sub          a1, a1, t2
                  bne          sp, t2, 260f
                  srai         a5, s2, 24
                  add          s1, s4, t3
                  beq          t2, s2, 267f
257:              addi         a5, t6, 506
258:              slt          t0, s10, a6
                  sltiu        zero, s9, 664
260:              sub          a1, t3, s2
                  and          t3, s1, ra
                  andi         zero, a5, 357
                  sll          s0, t0, zero
                  sra          sp, s6, gp
                  addi         tp, t3, 234
                  bne          t5, zero, 275f
267:              bgeu         s11, s10, 287f
                  blt          t2, s10, 271f
                  lui          a4, 660809
                  bltu         s0, a7, 290f
271:              sltiu        t6, a2, 1390
                  srai         s0, a2, 6
                  nop
                  addi         s0, s4, -166
275:              sltu         a2, a7, gp
                  addi         s3, a2, 780
                  bltu         t6, sp, 283f
                  srli         a4, t1, 23
                  blt          ra, s8, 286f
                  lui          sp, 616632
                  bgeu         a7, a1, 301f
                  add          t6, t0, s8
283:              srli         zero, t3, 9
                  srli         sp, s2, 14
                  add          t1, t3, t1
286:              andi         t3, ra, 867
287:              lui          s10, 767532
                  sltiu        s2, t3, -273
                  slti         tp, ra, -1410
290:              sub          s3, sp, s10
                  sltu         t4, gp, s3
                  or           t2, a5, s9
                  and          s7, s4, gp
sub_5_5:          jal          s9, 10f
0:                jal          ra, 8f
1:                jal          ra, 5f
2:                jal          ra, 7f
3:                jal          ra, 17f
4:                jal          ra, 11f
5:                jal          ra, 19f
6:                jal          ra, 18f
7:                jal          t6, 0b
8:                jal          ra, 9f
9:                jal          ra, 20f
10:               jal          ra, 2b
11:               jal          ra, 13f
12:               jal          ra, 21f
13:               jal          t1, 15f
14:               jal          tp, 4b
15:               jal          ra, 3b
16:               jal          t1, 12b
17:               jal          ra, 1b
18:               jal          t5, 16b
19:               jal          ra, 6b
20:               jal          ra, 14b
21:               xori         tp, tp, -1293
                  slt          sp, gp, a6
                  blt          a1, a3, 310f
                  andi         t0, a3, 1533
                  beq          t5, t3, 315f
                  slli         s4, tp, 2
                  srai         a6, t0, 1
                  addi         s11, a7, -414
301:              or           tp, a2, ra
                  andi         a1, a6, 1948
                  xor          s9, t4, a5
                  sra          a6, s3, s0
                  andi         a2, a3, 1664
                  srai         a0, sp, 18
                  or           s7, s7, s10
                  add          s0, s11, a2
                  andi         t1, s10, 824
310:              or           s0, s1, ra
                  andi         a3, s6, -40
                  beq          a1, t2, 313f
313:              ori          zero, sp, -801
                  sltiu        t4, zero, 1538
315:              sub          s10, ra, a0
                  slli         s2, t5, 22
                  ori          s11, a3, -1133
                  lui          t5, 472024
                  lw           s9, 4(s8)
                  add          s2, s5, t4
                  addi         s8, s8, 32
                  lui          t0, 238485
477:              addi x27, x25, 1
477:              jalr x27, x27, 0
sub_4:            add          t1, ra, a4
                  srli         t5, s2, 30
                  bge          s11, zero, sub_4_stack_p
                  xori         s10, s3, 914
                  andi         t2, s0, -1252
sub_4_stack_p:    addi         s8, s8, -60
                  srl          s3, s5, a3
                  sw           s9, 4(s8)
                  nop
                  sltiu        a3, ra, -1095
sub_4_1:          jal          s9, 14f
0:                jal          t1, 12f
1:                jal          ra, 20f
2:                jal          t1, 23f
3:                jal          ra, 8f
4:                jal          ra, 15f
5:                jal          t1, 7f
6:                jal          t1, 1b
7:                jal          ra, 22f
8:                jal          a1, 21f
9:                jal          ra, 0b
10:               jal          a6, 13f
11:               jal          ra, 9b
12:               jal          ra, 25f
13:               jal          a2, 3b
14:               jal          ra, 16f
15:               jal          ra, 2b
16:               jal          s4, 6b
17:               jal          ra, 24f
18:               jal          t1, 17b
19:               jal          ra, 4b
20:               jal          ra, 19b
21:               jal          ra, 18b
22:               jal          ra, 11b
23:               jal          t1, 10b
24:               jal          sp, 5b
25:               sub          t5, t2, ra
sub_4_3:          jal          s9, 8f
0:                jal          t1, 1f
1:                jal          ra, 10f
2:                jal          t1, 9f
3:                jal          ra, 6f
4:                jal          tp, 2b
5:                jal          s5, 7f
6:                jal          ra, 4b
7:                jal          s0, 3b
8:                jal          ra, 5b
9:                jal          t0, 0b
10:               addi         a6, s9, -1977
sub_4_0:          jal          s9, 0f
0:                jal          a3, 3f
1:                jal          ra, 11f
2:                jal          ra, 15f
3:                jal          ra, 22f
4:                jal          s4, 20f
5:                jal          t3, 9f
6:                jal          ra, 18f
7:                jal          ra, 23f
8:                jal          tp, 17f
9:                jal          ra, 4b
10:               jal          gp, 12f
11:               jal          a5, 21f
12:               jal          t1, 5b
13:               jal          ra, 14f
14:               jal          ra, 19f
15:               jal          ra, 13b
16:               jal          t1, 10b
17:               jal          ra, 7b
18:               jal          t1, 8b
19:               jal          ra, 1b
20:               jal          ra, 6b
21:               jal          a5, 16b
22:               jal          ra, 2b
23:               lui          s2, 817504
                  blt          s2, a4, 9f
                  blt          s7, s10, 21f
                  nop
                  srli         s1, a0, 13
                  bltu         s1, s6, 19f
                  add          a4, a2, t4
                  xor          t1, s9, t2
                  blt          s10, t4, 25f
                  bne          a2, s0, 19f
9:                bgeu         t3, s0, 21f
                  andi         gp, a1, 304
                  srli         a5, gp, 16
                  or           a4, ra, a2
                  bne          t5, a6, 17f
                  sra          t6, s10, t5
                  sltiu        a4, t3, 1037
                  lui          s11, 365198
sub_4_2:          jal          s9, 5f
0:                jal          ra, 11f
1:                jal          t2, 0b
2:                jal          ra, 8f
3:                jal          t1, 14f
4:                jal          ra, 3b
5:                jal          ra, 10f
6:                jal          ra, 13f
7:                jal          t2, 9f
8:                jal          ra, 7b
9:                jal          t1, 15f
10:               jal          t4, 6b
11:               jal          a4, 16f
12:               jal          t1, 1b
13:               jal          ra, 2b
14:               jal          sp, 12b
15:               jal          s1, 4b
16:               srli         t1, a2, 16
17:               and          a4, a6, s3
                  nop
19:               bgeu         a1, s9, 26f
                  srl          t3, s11, t5
21:               bltu         s3, s3, 37f
                  andi         t0, sp, 352
                  srl          s11, t3, t2
                  ori          a1, a1, 1509
25:               auipc        s4, 224175
26:               sltiu        t4, t6, -1526
                  ori          zero, s11, -605
                  lui          t2, 622760
                  sltu         s7, s7, ra
                  srl          a5, s8, t6
                  srl          a5, a2, gp
                  blt          t6, s2, 52f
                  sub          s7, t6, t5
                  add          t5, t5, tp
                  slt          a3, s2, gp
                  sub          zero, t2, s7
37:               beq          s8, a3, 45f
                  bne          gp, s3, 47f
                  srl          s5, s0, a4
                  beq          s7, sp, 45f
                  srli         s9, t2, 2
                  or           s2, s8, t3
                  add          a4, t0, s7
                  or           s5, s1, t0
45:               srli         s11, s3, 17
                  add          s0, s11, s10
47:               lui          s9, 905735
                  bge          t1, s1, 59f
                  auipc        t0, 864129
                  auipc        s7, 711927
                  slti         tp, t0, -1517
52:               sltu         sp, t3, a3
                  lui          a3, 855390
                  sltiu        zero, a7, -146
                  ori          s5, s3, -313
                  nop
                  beq          zero, t0, 62f
                  xor          a3, a5, s1
59:               auipc        t5, 705177
                  auipc        s9, 222164
                  bge          t1, a2, 79f
62:               or           s9, s5, s4
                  beq          a5, a1, 74f
                  srli         s9, s11, 22
                  ori          a0, t1, -47
                  srai         t2, s9, 14
                  sra          gp, gp, s0
                  bge          t1, a6, 71f
                  sltu         s2, t1, a5
                  slli         zero, t3, 23
71:               sltiu        t1, a1, 1567
                  xori         s4, gp, -965
                  bge          s1, s1, 84f
74:               sltu         a3, sp, t2
                  nop
                  andi         t3, a3, 60
                  andi         s5, a5, 1790
                  auipc        zero, 544956
79:               srl          a2, s9, a3
                  sra          a6, s2, a4
                  bge          t1, a3, 90f
                  xori         tp, s6, -1671
                  ori          zero, s8, 591
84:               beq          s10, s5, 100f
                  slti         gp, gp, 207
                  bne          a5, s10, 97f
                  bltu         t2, a2, 89f
                  srl          s1, zero, t6
89:               slti         s0, t3, 1644
90:               slli         s5, a1, 15
                  srl          a0, a4, zero
                  addi         t3, s0, 896
                  slt          t3, s1, s0
                  sub          s0, t1, a5
                  addi         a1, t2, -1317
                  lui          a3, 137682
97:               sll          a6, t5, gp
                  bne          s2, a6, 105f
                  bgeu         s3, s2, 104f
100:              nop
                  slti         a2, s9, -1708
                  srl          t6, a0, s11
                  sub          t4, s5, s6
104:              sltiu        t4, s8, -1539
105:              bgeu         s8, t0, 109f
                  blt          a0, a7, 121f
                  sra          s1, a6, s11
                  slli         s11, t3, 1
109:              sra          s4, zero, a2
                  srl          gp, s8, s6
                  bltu         s4, tp, 117f
                  sub          t0, sp, s9
                  sub          s11, t4, s7
                  srl          a5, t1, s1
                  beq          t4, s8, 123f
                  bgeu         a3, s8, 123f
117:              sra          s7, s6, s11
                  slli         s2, a3, 19
                  blt          s11, a7, 123f
                  sll          s5, s6, s4
121:              sub          a6, t3, a7
                  sltiu        a0, a3, 1272
123:              and          t2, s3, t0
                  add          t0, ra, s10
                  or           s3, s5, a3
                  bne          s1, s3, 144f
                  bge          t0, s0, 139f
                  and          a4, zero, tp
                  bne          sp, a2, 140f
                  srai         t3, a5, 17
                  sra          ra, s11, a1
                  addi         t4, a0, -47
                  andi         a0, a3, -32
                  sltu         gp, t1, ra
                  bge          a4, a5, 140f
                  bge          s3, t1, 156f
                  sltiu        t6, ra, 1391
                  srl          t4, a2, s0
139:              andi         a6, zero, -367
140:              bgeu         a2, s6, 143f
                  xori         a3, zero, 1539
                  bgeu         tp, a2, 157f
143:              bge          s10, s3, 150f
144:              slt          t1, a1, t2
                  sltiu        s3, s11, -113
                  srl          a1, t0, t5
                  slti         a3, s5, 321
                  lui          ra, 35993
                  sltiu        sp, s8, 1536
150:              bgeu         s1, t5, 159f
                  lui          a1, 575898
                  bltu         a2, s1, 161f
                  andi         a0, s0, -2044
                  add          t4, sp, s9
                  bne          s1, t6, 171f
156:              ori          s10, zero, -1569
157:              blt          t4, a0, 162f
                  bltu         t3, t3, 163f
159:              sltu         s7, a5, a7
                  ori          gp, s3, 1739
161:              beq          a6, t2, 172f
162:              sltiu        tp, t2, -1812
163:              slli         s9, t4, 25
                  or           s5, s11, t2
                  sra          a4, s10, t5
                  bltu         t2, s3, 181f
                  sltu         t3, s10, s11
                  addi         ra, s1, -603
                  xori         t6, t4, -395
                  add          t2, t0, a0
171:              slli         t6, a0, 18
172:              slt          t2, gp, s11
                  lui          t3, 470342
                  bgeu         a2, t3, 190f
                  slti         a1, t5, 2017
                  xor          s2, s6, tp
                  or           a3, t3, a6
                  and          t1, tp, s9
                  xori         a2, ra, -2
                  addi         s4, a2, 1253
181:              bge          s7, t2, 192f
                  andi         ra, t2, -715
                  srli         t5, s8, 4
                  slli         s9, a5, 12
                  sll          gp, t0, a0
                  bltu         a5, sp, 194f
                  sll          s11, s8, zero
                  sltiu        tp, a4, 945
                  auipc        s3, 351285
190:              sra          t2, a3, s11
                  srai         sp, a5, 18
192:              or           s0, a0, gp
                  xori         tp, s6, 113
194:              sltu         a3, s2, t3
                  blt          s1, s7, 206f
                  lui          s7, 864746
                  or           a1, a3, a4
                  slli         zero, s9, 30
                  bgeu         a1, s7, 207f
                  sub          t2, t0, a2
                  lui          t3, 562744
                  sub          ra, t3, s7
                  sltu         s10, t1, s11
                  lui          s5, 722918
                  slli         t3, sp, 10
206:              srli         s0, a6, 13
207:              lui          t3, 856582
                  srai         s10, t6, 25
                  bne          s6, a7, 220f
                  addi         a4, a0, 432
                  bge          a0, t1, 217f
                  slli         s1, t2, 29
                  sub          a3, a1, gp
                  and          s10, s4, s0
                  sltu         a0, zero, s10
                  bgeu         s7, t4, 234f
217:              bltu         s1, zero, 226f
                  andi         s4, t6, 2022
                  beq          sp, ra, 221f
220:              sra          sp, t5, a1
221:              xor          s10, a7, t3
                  sltiu        a3, ra, -1277
                  sltu         s11, s3, tp
                  xor          t2, s1, a0
                  beq          s11, a5, 232f
226:              or           a6, tp, s0
                  slti         t0, a1, 901
                  xori         t6, t4, -67
                  sub          s0, s1, a4
                  sltu         a6, s7, a1
                  slli         ra, s4, 13
232:              bltu         s2, sp, 234f
                  ori          a3, t2, -914
234:              nop
                  lw           s9, 4(s8)
                  slt          s11, s11, s10
                  srl          sp, t5, zero
                  and          a1, s1, s5
                  addi         s8, s8, 60
                  addi         s4, ra, -40
                  slt          t2, s6, s0
                  sll          a1, s6, a6
                  slti         s0, tp, -348
336:              addi x1, x25, 0
336:              jalr x1, x1, 0
sub_2:            andi         a4, a2, 682
                  beq          a0, ra, sub_2_stack_p
                  sra          s10, tp, s8
                  xori         a2, a0, 637
sub_2_stack_p:    addi         s8, s8, -40
                  sw           s9, 4(s8)
                  sub          t0, s10, a3
sub_2_11:         jal          s9, 2f
0:                jal          s11, 20f
1:                jal          s4, 21f
2:                jal          s11, 18f
3:                jal          sp, 7f
4:                jal          t1, 6f
5:                jal          ra, 11f
6:                jal          t1, 10f
7:                jal          ra, 0b
8:                jal          tp, 12f
9:                jal          s0, 16f
10:               jal          s2, 8b
11:               jal          ra, 1b
12:               jal          ra, 24f
13:               jal          t1, 9b
14:               jal          ra, 15f
15:               jal          s0, 3b
16:               jal          gp, 14b
17:               jal          t1, 19f
18:               jal          ra, 23f
19:               jal          ra, 22f
20:               jal          ra, 5b
21:               jal          a6, 17b
22:               jal          ra, 4b
23:               jal          ra, 13b
24:               sll          gp, a0, ra
sub_2_0:          jal          s9, 18f
0:                jal          ra, 17f
1:                jal          gp, 4f
2:                jal          s9, 7f
3:                jal          ra, 14f
4:                jal          t0, 12f
5:                jal          t1, 9f
6:                jal          ra, 19f
7:                jal          ra, 21f
8:                jal          ra, 15f
9:                jal          ra, 0b
10:               jal          ra, 16f
11:               jal          ra, 8b
12:               jal          ra, 10b
13:               jal          ra, 20f
14:               jal          ra, 22f
15:               jal          ra, 5b
16:               jal          ra, 23f
17:               jal          ra, 13b
18:               jal          sp, 11b
19:               jal          t1, 3b
20:               jal          t1, 1b
21:               jal          s11, 24f
22:               jal          ra, 2b
23:               jal          t3, 6b
24:               auipc        a2, 755947
sub_2_1:          jal          s9, 6f
0:                jal          t1, 11f
1:                jal          ra, 9f
2:                jal          a3, 3f
3:                jal          t1, 12f
4:                jal          ra, 13f
5:                jal          t1, 2b
6:                jal          sp, 1b
7:                jal          ra, 5b
8:                jal          ra, 4b
9:                jal          ra, 0b
10:               jal          t0, 7b
11:               jal          t6, 10b
12:               jal          t1, 8b
13:               sra          s4, gp, zero
sub_2_2:          jal          s9, 2f
0:                jal          ra, 6f
1:                jal          t1, 5f
2:                jal          a6, 3f
3:                jal          ra, 12f
4:                jal          a0, 9f
5:                jal          s4, 10f
6:                jal          s7, 14f
7:                jal          s4, 4b
8:                jal          t1, 13f
9:                jal          ra, 11f
10:               jal          ra, 0b
11:               jal          ra, 8b
12:               jal          t1, 7b
13:               jal          s11, 1b
14:               srai         s3, t3, 21
sub_2_3:          jal          s9, 6f
0:                jal          ra, 11f
1:                jal          t1, 9f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          a6, 0b
5:                jal          a4, 1b
6:                jal          sp, 2b
7:                jal          t1, 8f
8:                jal          t1, 10f
9:                jal          ra, 4b
10:               jal          ra, 5b
11:               lui          s11, 854118
sub_2_5:          jal          s9, 19f
0:                jal          s1, 5f
1:                jal          ra, 21f
2:                jal          a4, 20f
3:                jal          ra, 23f
4:                jal          ra, 12f
5:                jal          ra, 6f
6:                jal          ra, 14f
7:                jal          ra, 4b
8:                jal          ra, 10f
9:                jal          ra, 18f
10:               jal          ra, 17f
11:               jal          s5, 8b
12:               jal          ra, 0b
13:               jal          ra, 22f
14:               jal          a4, 16f
15:               jal          ra, 3b
16:               jal          sp, 13b
17:               jal          tp, 9b
18:               jal          s0, 2b
19:               jal          a1, 1b
20:               jal          t1, 15b
21:               jal          t0, 7b
22:               jal          t0, 11b
23:               sll          s5, gp, a0
sub_2_6:          jal          s9, 8f
0:                jal          ra, 10f
1:                jal          t1, 18f
2:                jal          t1, 0b
3:                jal          ra, 7f
4:                jal          ra, 11f
5:                jal          s9, 2b
6:                jal          ra, 15f
7:                jal          ra, 12f
8:                jal          ra, 1b
9:                jal          t1, 6b
10:               jal          t1, 16f
11:               jal          gp, 14f
12:               jal          ra, 17f
13:               jal          ra, 9b
14:               jal          ra, 3b
15:               jal          ra, 4b
16:               jal          t0, 13b
17:               jal          ra, 19f
18:               jal          ra, 5b
19:               sra          t5, s9, s6
sub_2_7:          jal          s9, 0f
0:                jal          sp, 6f
1:                jal          ra, 15f
2:                jal          ra, 4f
3:                jal          ra, 10f
4:                jal          t1, 11f
5:                jal          t1, 2b
6:                jal          tp, 12f
7:                jal          ra, 16f
8:                jal          a4, 13f
9:                jal          ra, 7b
10:               jal          s7, 9b
11:               jal          a5, 14f
12:               jal          ra, 1b
13:               jal          ra, 3b
14:               jal          t1, 8b
15:               jal          ra, 5b
16:               sltu         tp, ra, s5
sub_2_4:          jal          s9, 18f
0:                jal          ra, 9f
1:                jal          ra, 11f
2:                jal          a6, 17f
3:                jal          ra, 20f
4:                jal          a0, 7f
5:                jal          t1, 8f
6:                jal          ra, 21f
7:                jal          a4, 5b
8:                jal          t1, 6b
9:                jal          s3, 1b
10:               jal          ra, 3b
11:               jal          ra, 16f
12:               jal          ra, 0b
13:               jal          sp, 19f
14:               jal          ra, 2b
15:               jal          ra, 10b
16:               jal          ra, 22f
17:               jal          t1, 4b
18:               jal          ra, 14b
19:               jal          t1, 15b
20:               jal          a1, 12b
21:               jal          sp, 13b
22:               sub          a3, s1, gp
sub_2_8:          jal          s9, 0f
0:                jal          ra, 18f
1:                jal          tp, 6f
2:                jal          ra, 17f
3:                jal          ra, 15f
4:                jal          t0, 14f
5:                jal          ra, 16f
6:                jal          gp, 13f
7:                jal          ra, 20f
8:                jal          a2, 5b
9:                jal          ra, 4b
10:               jal          s7, 19f
11:               jal          t3, 10b
12:               jal          ra, 1b
13:               jal          s1, 11b
14:               jal          t1, 7b
15:               jal          s3, 2b
16:               jal          s4, 9b
17:               jal          t1, 8b
18:               jal          t1, 12b
19:               jal          t5, 3b
20:               sll          a4, a5, s0
sub_2_10:         jal          s9, 5f
0:                jal          ra, 3f
1:                jal          ra, 2f
2:                jal          ra, 7f
3:                jal          ra, 8f
4:                jal          ra, 11f
5:                jal          ra, 9f
6:                jal          ra, 12f
7:                jal          t1, 6b
8:                jal          ra, 4b
9:                jal          ra, 14f
10:               jal          ra, 1b
11:               jal          ra, 10b
12:               jal          t1, 15f
13:               jal          ra, 16f
14:               jal          ra, 0b
15:               jal          t4, 13b
16:               lui          t4, 64525
sub_2_12:         jal          s9, 7f
0:                jal          t1, 8f
1:                jal          s11, 9f
2:                jal          s2, 0b
3:                jal          ra, 6f
4:                jal          s1, 1b
5:                jal          t1, 10f
6:                jal          ra, 2b
7:                jal          t1, 4b
8:                jal          t1, 5b
9:                jal          s5, 3b
10:               sltiu        ra, a0, -855
                  xor          t2, sp, a2
                  auipc        a2, 497702
                  bge          a3, a3, 5f
                  andi         gp, t5, -1127
                  sub          a4, t1, t3
5:                sll          a2, a6, s0
                  xori         zero, s10, -1540
                  srai         t6, a5, 14
                  bge          s3, t1, 25f
                  addi         t4, zero, -57
                  xori         t3, a0, 1718
                  blt          t4, t1, 25f
                  bge          a6, gp, 30f
                  xori         a3, s10, 462
                  srli         tp, a1, 15
                  bltu         s3, a2, 17f
                  blt          a7, a2, 28f
17:               blt          t4, a2, 26f
                  slt          t0, zero, a4
                  sltu         s7, a5, sp
                  auipc        t1, 44026
                  sltiu        ra, tp, -1875
                  sltu         zero, a4, s1
                  xor          t2, s9, s8
                  slti         a3, s10, 1485
25:               srli         t1, a4, 11
sub_2_9:          jal          s9, 2f
0:                jal          t1, 8f
1:                jal          a3, 16f
2:                jal          tp, 5f
3:                jal          ra, 7f
4:                jal          s4, 6f
5:                jal          ra, 15f
6:                jal          ra, 12f
7:                jal          s5, 10f
8:                jal          t0, 3b
9:                jal          ra, 0b
10:               jal          ra, 1b
11:               jal          ra, 18f
12:               jal          tp, 11b
13:               jal          ra, 14f
14:               jal          s11, 4b
15:               jal          ra, 17f
16:               jal          ra, 13b
17:               jal          a1, 9b
18:               sll          s9, a3, a4
26:               and          t1, t1, t6
                  sll          ra, a4, s6
28:               slt          t3, zero, zero
                  or           s10, a5, t5
30:               bne          t6, a6, 50f
                  slt          a5, ra, sp
                  srli         a5, a2, 19
                  beq          s8, a6, 49f
                  addi         s10, zero, -2010
                  xor          s5, ra, a5
                  sltu         a1, a7, t0
                  slli         a3, a5, 17
                  lui          a6, 217395
                  ori          a5, a4, -1248
                  xori         s0, ra, 252
                  slt          t0, s9, s3
                  nop
                  xori         s1, t1, 1586
                  slti         t5, a7, 144
                  blt          a6, ra, 63f
                  beq          t2, t3, 63f
                  and          s1, s7, s3
                  sub          t2, s0, s5
49:               or           a5, s11, a3
50:               slti         a0, tp, -1704
                  slli         t5, t2, 11
                  sub          tp, s1, s11
                  sltiu        t4, s7, 1105
                  sltu         ra, ra, a6
                  slti         a6, t3, -952
                  srl          ra, s11, s0
                  add          a0, t2, a5
                  bltu         a6, s10, 64f
                  sltiu        sp, s4, 373
                  or           s0, s1, t3
                  addi         zero, s11, -1562
                  ori          a5, a3, 421
63:               andi         a5, s6, 637
64:               addi         a2, s4, -94
                  xori         t6, a2, 770
                  sltiu        t6, t0, 1377
                  slli         s5, a6, 5
                  srl          t5, tp, sp
                  sub          s2, a2, s10
                  srli         s3, s11, 13
                  srli         a2, s5, 3
                  blt          t6, a7, 90f
                  sll          t5, s3, s9
                  nop
                  bgeu         a3, t4, 89f
                  lui          t5, 1005024
                  nop
                  sll          zero, a0, tp
                  bgeu         ra, a0, 95f
                  sub          s9, s4, s0
                  auipc        a1, 497809
                  slt          ra, a6, gp
                  slli         a3, a6, 22
                  and          s0, ra, s4
                  and          a4, t6, sp
                  xori         t3, s4, -168
                  auipc        sp, 705310
                  xor          gp, s2, a4
89:               sll          a1, a6, a3
90:               sll          s11, ra, a6
                  xor          a5, sp, s7
                  xori         s2, s2, 39
                  sltu         a3, a0, a4
                  addi         s0, a5, -1679
95:               sltiu        gp, a6, 2037
                  sra          s0, t4, tp
                  srl          s10, a2, tp
                  lui          s4, 646624
                  blt          s8, s10, 108f
                  blt          s0, s5, 112f
                  xor          s4, s8, ra
                  lui          a0, 520135
                  beq          t2, a1, 105f
                  nop
105:              srai         zero, a0, 1
                  sll          t6, a6, zero
                  xori         t5, zero, 1058
108:              srai         a5, ra, 7
                  bne          s3, s6, 121f
                  add          a1, a4, a7
                  blt          t6, a3, 115f
112:              beq          t1, gp, 114f
                  bne          ra, gp, 122f
114:              srl          s4, t3, t3
115:              add          a5, s7, a0
                  sltiu        s11, s0, -1
                  or           t5, a4, a7
                  sll          a5, s11, t4
                  sll          zero, a4, s4
                  addi         a2, t2, -432
121:              or           s9, a5, a2
122:              bge          s11, s11, 137f
                  sll          t0, t1, t3
                  srai         s11, t5, 4
                  sltu         t0, ra, s6
                  srl          t6, t2, zero
                  slli         s4, s10, 21
                  sltu         s7, t1, s7
                  andi         s4, a6, -1678
                  and          t6, t6, zero
                  blt          t6, a4, 148f
                  lui          s2, 559013
                  beq          t5, a7, 138f
                  beq          s8, t2, 148f
                  and          a6, a3, zero
                  sll          a4, a4, tp
137:              or           t1, a6, s4
138:              xori         t6, s7, 601
                  or           tp, t5, t1
                  srai         t6, s8, 19
                  bge          t2, zero, 144f
                  slli         a2, a5, 10
                  ori          t6, sp, 1169
144:              srai         a5, s0, 18
                  bgeu         t2, t5, 165f
                  srai         s10, ra, 14
                  sltiu        s9, tp, 169
148:              sltiu        s9, s5, -1788
                  srai         t3, gp, 6
                  ori          zero, s0, 229
                  sra          s11, t0, s6
                  slli         t2, s3, 7
                  sra          t1, s4, a7
                  sltiu        t4, s11, -1607
                  sll          a4, t2, a3
                  slt          t5, t4, s3
                  auipc        t5, 129931
                  sub          a1, t3, t5
                  add          a0, s3, s8
                  lui          s7, 672013
                  auipc        a3, 18793
                  srai         s5, s4, 23
                  slt          ra, a7, s1
                  slli         a1, s3, 5
165:              srai         s9, a7, 17
                  xor          a6, a3, ra
                  sub          zero, t2, a7
                  ori          sp, a1, 1865
                  sll          s2, gp, s5
                  ori          t3, t6, -1144
                  addi         a2, s3, -1979
                  auipc        a0, 723761
                  nop
                  bltu         t5, a3, 186f
                  sra          a2, t4, t3
                  sll          t4, a2, a3
                  blt          s10, s5, 196f
                  srai         ra, a2, 28
                  ori          s4, a4, 326
                  bge          s4, a6, 192f
                  slt          a1, s3, s5
                  slti         t2, s3, 1939
                  bge          sp, a6, 185f
                  auipc        a1, 105120
185:              or           a4, t0, a3
186:              auipc        a6, 187170
                  srl          s2, t2, s6
                  beq          a5, a5, 190f
                  ori          ra, t6, 388
190:              sltiu        s4, t0, -1543
                  nop
192:              andi         a1, t5, -1928
                  slt          s9, t5, s3
                  bgeu         t6, s11, 206f
                  slti         a4, s0, 428
196:              addi         t3, a7, 1180
                  srli         ra, ra, 13
                  srli         s5, a4, 12
                  srl          a6, tp, s7
                  bge          s3, s9, 203f
                  nop
                  srai         t6, t0, 11
203:              sltu         tp, t6, t4
                  lui          tp, 217132
                  xor          s4, a5, s8
206:              or           a0, zero, a7
                  auipc        zero, 625649
                  srl          a0, gp, s11
                  sltu         s9, a7, a2
                  bltu         zero, a3, 229f
                  bge          a6, s4, 226f
                  sltu         s1, a4, s0
                  bltu         t0, s3, 216f
                  or           a2, t3, t0
                  xori         t1, s0, 657
216:              ori          sp, gp, 515
                  sltu         t3, s2, s0
                  add          t6, s9, t4
                  sra          a4, t4, t2
                  addi         t4, t3, -1002
                  sltiu        a5, s0, 378
                  lui          sp, 412371
                  srl          zero, s0, a1
                  sltiu        s10, t6, -576
                  addi         t6, t3, -76
226:              srl          a6, s9, a0
                  beq          s2, t1, 244f
                  or           t1, s5, s6
229:              lui          a5, 124032
                  slt          s2, t4, sp
                  slti         s4, s4, -1866
                  addi         s10, s9, 1016
                  srli         a6, t0, 28
                  srli         t3, zero, 19
                  bne          t4, s11, 244f
                  bltu         a3, t5, 254f
                  xori         t1, s6, -968
                  slli         a5, gp, 11
                  or           sp, s11, s0
                  bgeu         a2, s11, 249f
                  sltiu        t1, sp, 1944
                  srl          a3, a1, s3
                  sub          t0, s2, t6
244:              bge          a7, s5, 256f
                  blt          a4, s10, 265f
                  and          t3, t0, a2
                  blt          s9, a3, 261f
                  slti         s1, s10, 1082
249:              srli         a0, a5, 4
                  nop
                  beq          t4, t5, 267f
                  slt          s9, t1, s7
                  srl          s10, s5, t1
254:              slli         s4, s4, 12
                  sub          s7, zero, s0
256:              auipc        t0, 125843
                  blt          a0, a1, 263f
                  sll          s10, t6, tp
                  addi         ra, a6, -98
                  beq          gp, s2, 278f
261:              add          a0, s10, a0
                  bne          a3, s4, 266f
263:              bge          s3, s4, 279f
                  bge          s4, s8, 273f
265:              srl          gp, t2, s4
266:              auipc        s11, 414515
267:              nop
                  bne          sp, a2, 286f
                  srai         t1, a6, 22
                  xori         a5, s3, -1180
                  srai         s0, t4, 3
                  auipc        tp, 625723
273:              srl          t1, sp, t3
                  lui          zero, 302403
                  andi         gp, s11, -247
                  nop
                  sltiu        zero, s9, -627
278:              slt          tp, s10, t0
279:              beq          a6, s5, 281f
                  slt          s5, t4, s10
281:              bgeu         a2, gp, 286f
                  ori          a0, s8, 598
                  nop
                  bltu         s7, a1, 296f
                  ori          s4, t0, -415
286:              and          s5, a5, s5
                  sll          t0, zero, a5
                  auipc        s0, 298193
                  sra          a4, s11, t1
                  ori          s0, s1, -12
                  or           a2, a0, s3
                  srai         t4, t5, 1
                  slti         a0, s0, -104
                  slt          s1, t2, s7
                  or           ra, s7, a6
296:              sltu         t2, t6, s4
                  sll          t2, t1, t3
                  andi         t5, t5, 1280
                  beq          t3, s6, 313f
                  slt          sp, ra, t4
                  srli         s1, a3, 14
                  xor          a3, a4, t2
                  andi         s9, s11, 1275
                  bne          s8, t5, 321f
                  beq          a6, a3, 325f
                  ori          s10, a1, -1349
                  nop
                  lui          a3, 732423
                  bge          s6, s6, 326f
                  nop
                  srl          t5, t5, t3
                  andi         t3, s11, -1057
313:              lui          a3, 727584
                  add          s1, s2, s9
                  srli         a5, s1, 10
                  beq          a2, a0, 330f
                  bltu         ra, t6, 334f
                  bgeu         t0, t3, 323f
                  srli         zero, s4, 15
                  blt          s1, zero, 338f
321:              ori          t3, s10, 383
                  bgeu         t5, t6, 338f
323:              or           t2, s0, s1
                  bltu         a3, t0, 336f
325:              ori          t2, s2, 95
326:              ori          s4, s10, 1092
                  xor          t5, a5, t2
                  sltu         t6, gp, s7
                  srai         t2, gp, 4
330:              srli         t3, s1, 5
                  or           a2, a5, s3
                  blt          s7, t3, 341f
                  and          a0, s8, a3
334:              sltiu        s11, zero, 1187
                  xor          a2, s0, a2
336:              slli         t4, t4, 8
                  nop
338:              slti         a5, a5, -1070
                  srl          s10, s1, a0
                  bgeu         s4, sp, 358f
341:              slli         a6, s2, 18
                  add          sp, a0, s1
                  xor          s7, s4, ra
                  add          sp, s2, s11
                  slti         t2, t6, -859
                  beq          zero, s3, 363f
                  add          a1, sp, a4
                  bltu         s10, zero, 368f
                  addi         s7, gp, -1127
                  bltu         t2, t5, 352f
                  ori          s11, tp, -353
352:              sltu         t5, t4, t6
                  slti         gp, s5, 399
                  slti         t1, t2, -1681
                  slti         a2, s0, -1927
                  ori          t4, t5, 1679
                  nop
358:              sll          s11, t2, a3
                  slt          ra, s7, zero
                  bne          a0, s4, 372f
                  bge          ra, a0, 378f
                  xori         s3, a5, 2029
363:              slli         t4, zero, 28
                  sltiu        s2, a1, -1333
                  sltu         s1, a2, s11
                  sll          gp, a5, a2
                  srl          a1, t4, s5
368:              or           a2, s0, tp
                  bge          a0, a5, 388f
                  and          s5, gp, tp
                  or           s7, t1, s5
372:              srli         s11, t5, 1
                  bltu         gp, a6, 387f
                  ori          a4, ra, -1565
                  and          gp, a6, a4
                  andi         a6, a3, -1474
                  blt          a0, a1, 391f
378:              srli         s1, a0, 13
                  or           s1, tp, t5
                  srli         t1, a5, 4
                  bge          s6, a1, 401f
                  sll          t4, s0, s5
                  bge          s10, t2, 395f
                  addi         s11, s8, -354
                  beq          s7, a5, 401f
                  ori          t3, ra, -574
387:              srai         t1, s1, 19
388:              andi         a0, tp, 1942
                  add          a3, s6, tp
                  sltiu        s11, t0, 690
391:              sra          a0, t6, s4
                  lui          a3, 790098
                  sra          t2, a6, s1
                  ori          a6, t3, -149
395:              sra          a4, t6, a3
                  add          s2, t6, s8
                  bltu         a6, a5, 406f
                  slt          a1, t4, t0
                  sub          a3, a4, a2
                  slli         s7, a4, 26
401:              auipc        s5, 328139
                  nop
                  auipc        t6, 348222
                  bgeu         s6, s10, 406f
                  ori          a2, s1, -1862
406:              sub          s3, ra, sp
                  auipc        a1, 330601
                  slt          s2, zero, a6
                  xori         t5, t0, -987
                  andi         s7, s6, 531
                  srl          s5, ra, t3
                  or           a5, zero, t3
                  sra          sp, s8, a2
                  blt          a1, ra, 418f
                  or           s3, a1, s5
                  xori         a6, t1, 1877
                  addi         sp, s3, -673
418:              lui          t1, 392788
                  sll          t0, a5, s6
                  sra          s9, tp, t5
                  lui          a0, 166373
                  nop
                  lui          s7, 404433
                  slti         t4, zero, 942
                  srai         s3, tp, 19
                  bge          s2, ra, 441f
                  sll          t4, t2, s11
                  lui          t1, 129587
                  nop
                  lui          sp, 368932
                  srl          s9, s0, a1
                  xor          t1, s1, s3
                  sltu         s2, tp, sp
                  add          s1, a3, a0
                  sra          s2, s11, s1
                  sub          a1, s1, s6
                  auipc        t2, 832333
                  nop
                  xori         s9, s2, -1556
                  sra          t1, a3, s5
441:              xor          a3, ra, t1
                  sltiu        a5, s2, 795
                  sll          a6, a0, a2
                  bltu         s9, s6, 458f
                  srai         zero, ra, 12
                  bne          s6, s10, 452f
                  ori          ra, s3, 471
                  sub          t3, t4, a5
                  slt          s1, t5, t4
                  sub          t6, a5, a0
                  sra          t5, t0, s11
452:              bltu         s7, s10, 461f
                  sll          t3, a3, a0
                  or           t6, s9, s9
                  slti         s10, s10, 1229
                  bltu         zero, a4, 459f
                  sltu         ra, s4, t4
458:              slt          t6, s11, zero
459:              sll          s0, s5, a4
                  nop
461:              bge          a2, s3, 479f
                  sub          a5, s1, s6
                  slt          tp, a6, ra
                  sll          a2, s7, a7
                  beq          s7, sp, 467f
                  and          t1, s9, a5
467:              ori          s4, s8, 1007
                  add          s1, zero, t1
                  slt          t2, a7, ra
                  srli         a4, s3, 12
                  nop
                  sra          s1, s11, s3
                  xori         a4, ra, -1280
                  blt          a2, s3, 486f
                  andi         a0, t1, 483
                  beq          t5, t1, 479f
                  andi         a6, t5, 403
                  xor          a6, s8, gp
479:              sll          a2, s3, s4
                  slli         s1, a6, 13
                  lui          s10, 181404
                  sltu         s2, s4, sp
                  add          tp, gp, s0
                  srai         t4, a4, 8
                  bne          s4, s5, 502f
486:              srai         a5, s8, 15
                  or           ra, s3, a4
                  nop
                  sra          s5, ra, t6
                  bne          tp, a3, 502f
                  xor          a4, zero, a1
                  srli         t1, s5, 5
                  slli         sp, t3, 26
                  or           gp, s8, s7
                  ori          s10, s8, -1671
                  xor          t2, a0, s10
                  bge          t2, a7, 509f
                  slt          t2, t2, a4
                  andi         a5, s8, -1629
                  beq          t3, s1, 502f
                  slti         s10, s4, -1434
                  slli         s5, t4, 6
                  la           t3, sub_4
                  slti         a1, t4, 1367
                  add          sp, sp, gp
                  addi         t3, t3, 550
                  srai         t0, s6, 9
                  lui          t1, 994742
                  slli         sp, a2, 23
                  addi         t2, gp, 499
                  blt          s3, s3, sub_2_j4 #branch to jump instr
                  andi         s10, s3, 1616
sub_2_j4:         jalr         s9, t3, -550 #jump sub_2 -> sub_4
502:              bne          s9, a6, 504f
                  ori          a2, a5, -1734
504:              sltiu        s1, sp, -461
                  sltiu        s11, a5, 1717
                  auipc        s0, 548144
                  slti         s10, a4, -370
                  bltu         t0, s8, 524f
509:              bgeu         t2, t5, 527f
                  srli         ra, a6, 20
                  or           a2, a6, t0
                  slli         gp, s4, 2
                  xor          s3, a7, a4
                  srai         a6, t0, 13
                  slti         t0, t3, -1966
                  or           tp, t3, s3
                  and          s10, t6, a0
                  add          s4, a4, a2
                  xori         t2, a5, 1318
                  beq          a7, t6, 523f
                  srl          t2, a0, t1
                  beq          s7, t5, 539f
523:              sll          t1, a1, tp
524:              srl          t6, a0, s3
                  srl          a0, s2, a7
                  xor          s0, s3, s6
527:              slt          t0, a5, zero
                  sltu         s1, a2, s0
                  sra          s10, ra, s2
                  sra          t3, a7, a7
                  slli         s11, a3, 25
                  and          t1, a0, a7
                  blt          s10, a5, 550f
                  sra          a2, s2, t5
                  sra          a0, t3, tp
                  xor          a0, t5, t2
                  beq          t4, a7, 549f
                  sra          s1, a7, s5
539:              addi         a3, s7, 1431
                  nop
                  addi         a4, a3, 812
                  srl          s0, a0, a6
                  sll          t3, s1, s2
                  xor          s7, a1, t1
                  sll          s2, t5, s11
                  bge          a4, t0, 551f
                  bgeu         s9, sp, 561f
                  lui          a1, 437357
549:              sll          zero, a1, s7
550:              sltiu        s0, tp, -1127
551:              bltu         s3, s4, 569f
                  srl          s7, s10, s1
                  nop
                  sub          a0, t0, a3
                  slli         s10, t3, 24
                  bge          s0, tp, 559f
                  srl          gp, t2, s9
                  sub          ra, s1, s11
559:              slli         t5, a1, 19
                  sra          t0, s5, a7
561:              auipc        a1, 340460
                  sll          s0, sp, s9
                  slt          a0, a7, zero
                  xori         a0, gp, 1549
                  sll          s10, t6, s6
                  srli         s3, t2, 29
                  bge          s11, s6, 581f
                  or           t4, s7, sp
569:              lui          sp, 87976
                  slt          t4, t1, s0
                  blt          s1, s5, 589f
                  xori         a4, t2, 1004
                  srai         a2, a2, 4
                  auipc        s5, 829575
                  and          s0, s1, t3
                  bltu         t1, a4, 585f
                  sll          a1, t0, t5
                  add          t0, t6, t5
                  bne          s3, s1, 581f
                  nop
581:              lui          t0, 126831
                  auipc        t5, 927882
                  nop
                  sll          s10, s11, t6
585:              sll          a1, gp, s2
                  bltu         s5, s2, 601f
                  sra          t5, t1, a1
                  bne          tp, a5, 608f
589:              ori          tp, s8, 39
                  beq          s3, a4, 599f
                  xori         s1, t6, -1155
                  or           t1, a3, s2
                  sltiu        t3, t1, -801
                  xori         a4, s10, 1427
                  slli         t6, sp, 27
                  ori          s11, s0, -922
                  sub          s0, tp, s0
                  blt          a4, a7, 612f
599:              sub          s11, t5, t6
                  addi         a5, ra, 1041
601:              slti         gp, t0, -752
                  slt          t4, a7, s0
                  or           a2, t6, s0
                  or           a4, s9, s4
                  sub          s3, gp, t6
                  srli         t4, a6, 3
                  bgeu         s9, gp, 623f
608:              slti         t2, s1, -1497
                  sll          t2, t5, s11
                  bgeu         t6, s8, 630f
                  andi         zero, sp, 1558
612:              bgeu         s0, s9, 616f
                  slli         s7, s5, 10
                  bgeu         a2, zero, 633f
                  slli         t6, t2, 13
616:              auipc        a0, 428251
                  srl          a3, a5, gp
                  add          t1, a6, t6
                  andi         t0, zero, 324
                  auipc        s10, 575053
                  srl          ra, s11, t5
                  blt          s2, s4, 628f
623:              bgeu         a0, zero, 632f
                  sll          t0, s8, s4
                  beq          a3, t1, 637f
                  slli         t1, gp, 10
                  srli         a2, t1, 13
628:              bltu         ra, t2, 632f
                  slti         tp, s2, 1151
630:              bge          a2, gp, 639f
                  xor          s3, t3, tp
632:              andi         s9, s8, 965
633:              blt          s2, zero, 645f
                  srl          a5, a6, t4
                  and          t3, t3, s9
                  addi         sp, s4, 247
637:              sltiu        t6, a5, 560
                  sltu         a1, s10, a6
639:              xor          s5, a5, s0
                  slt          t6, t3, t5
                  or           t4, s3, t6
                  bne          zero, t4, 656f
                  ori          s5, s3, 781
                  bgeu         s6, gp, 656f
645:              andi         s1, tp, -1265
                  auipc        a1, 862653
                  and          t6, s9, s5
                  xor          a5, a6, a1
                  slti         a5, s1, -873
                  andi         t6, s3, -1295
                  slt          t5, gp, tp
                  ori          zero, t3, -1998
                  add          zero, zero, a6
                  slti         t5, tp, 804
                  bne          t5, s1, 664f
656:              sltu         s5, a1, s6
                  xor          tp, sp, s3
                  bgeu         t0, a5, 660f
                  auipc        s3, 818310
660:              sltiu        a6, sp, 1998
                  srl          t4, s1, t0
                  xor          s3, s5, s11
                  nop
664:              auipc        a3, 1007151
                  andi         s10, s5, 12
                  slt          s10, s9, s4
                  add          a5, a7, a1
                  addi         t6, a3, -1942
                  lw           s9, 4(s8)
                  nop
                  srli         s2, a7, 15
                  lui          gp, 549953
                  addi         s8, s8, 40
                  auipc        sp, 280394
                  sll          s11, t2, t6
951:              addi x30, x25, 1
951:              jalr x30, x30, 0
sub_3:            andi         t5, s5, -1088
                  nop
                  sub          s11, s2, s6
                  bne          s0, ra, sub_3_stack_p
                  sub          t0, a0, a0
                  andi         t1, s6, 1994
sub_3_stack_p:    addi         s8, s8, -24
                  sll          s2, a5, s1
                  sltiu        tp, s7, -390
                  slti         t2, tp, -909
                  and          a2, s0, s4
                  sw           s9, 4(s8)
                  and          t1, a4, s7
                  sltu         gp, t3, sp
                  sub          t3, a5, t2
                  xori         ra, tp, -314
                  andi         s2, s6, 379
                  srli         a6, s6, 20
sub_3_j5:         jal          s9, sub_5 #jump sub_3 -> sub_5
sub_3_2:          jal          s9, 0f
0:                jal          a3, 12f
1:                jal          a3, 13f
2:                jal          t1, 11f
3:                jal          gp, 5f
4:                jal          ra, 6f
5:                jal          ra, 7f
6:                jal          ra, 2b
7:                jal          gp, 1b
8:                jal          s1, 3b
9:                jal          s11, 10f
10:               jal          s7, 4b
11:               jal          ra, 8b
12:               jal          ra, 9b
13:               addi         s2, a2, -606
sub_3_0:          jal          s9, 7f
0:                jal          t1, 24f
1:                jal          ra, 25f
2:                jal          t1, 17f
3:                jal          gp, 9f
4:                jal          ra, 13f
5:                jal          s3, 10f
6:                jal          sp, 21f
7:                jal          t1, 0b
8:                jal          t2, 1b
9:                jal          ra, 14f
10:               jal          ra, 11f
11:               jal          ra, 4b
12:               jal          a1, 20f
13:               jal          ra, 12b
14:               jal          s2, 23f
15:               jal          ra, 18f
16:               jal          a1, 3b
17:               jal          ra, 16b
18:               jal          t1, 19f
19:               jal          ra, 22f
20:               jal          t1, 15b
21:               jal          t1, 5b
22:               jal          t1, 8b
23:               jal          s0, 6b
24:               jal          ra, 2b
25:               srl          sp, s6, a4
sub_3_1:          jal          s9, 11f
0:                jal          t1, 9f
1:                jal          tp, 20f
2:                jal          sp, 4f
3:                jal          ra, 13f
4:                jal          ra, 6f
5:                jal          t1, 19f
6:                jal          tp, 14f
7:                jal          ra, 12f
8:                jal          sp, 3b
9:                jal          a1, 15f
10:               jal          t1, 1b
11:               jal          t1, 5b
12:               jal          s10, 16f
13:               jal          ra, 10b
14:               jal          ra, 7b
15:               jal          ra, 8b
16:               jal          ra, 17f
17:               jal          ra, 18f
18:               jal          ra, 0b
19:               jal          ra, 2b
20:               slli         s0, a0, 19
                  xor          t4, t1, a3
                  srli         s4, a2, 18
                  beq          s1, s3, 12f
                  blt          a5, s11, 8f
                  slt          t4, t5, t0
                  sltu         t6, a7, a2
                  nop
                  or           s7, s2, a7
8:                ori          sp, s10, -718
                  sra          s11, a7, t4
                  and          a1, s11, s10
                  sra          a3, a5, s6
12:               bne          s4, s6, 13f
13:               blt          s11, a0, 23f
                  sll          s4, s0, tp
                  bge          s11, a7, 26f
                  add          zero, a0, s2
                  addi         a2, t4, -1048
                  ori          t4, t5, 1455
                  blt          tp, a1, 28f
                  add          a0, s5, t0
                  ori          t6, s5, -1726
                  bne          zero, a7, 30f
23:               srai         zero, a0, 13
                  sll          t1, s8, s11
                  xor          t0, s2, a3
26:               or           t5, s0, a5
                  slli         t6, a2, 20
28:               xor          t0, zero, s9
                  sltu         t1, ra, a2
30:               srai         a5, a1, 4
                  sra          t2, s10, t5
                  xori         t4, zero, 609
                  blt          t0, s8, 44f
                  andi         t1, a4, 1643
                  lui          t3, 891130
                  sll          t4, zero, a1
                  sll          s4, ra, s2
                  lui          tp, 720623
                  bltu         a7, gp, 47f
                  nop
                  xori         s1, s2, -294
                  slt          a3, a7, s11
                  sltiu        t1, s5, 289
44:               xori         s0, s11, -1548
                  xori         s7, t3, 1119
                  slti         a4, s1, -1382
47:               srl          s3, a5, t4
                  ori          s1, sp, -328
                  and          t0, t5, sp
                  sll          t4, t3, a5
                  andi         a2, a0, -1549
                  sltu         t2, s11, t3
                  ori          s9, s0, -483
                  andi         t1, a7, 897
                  bge          gp, a3, 69f
                  sll          gp, gp, s8
                  bge          gp, gp, 74f
                  srl          s10, t1, s11
                  sltu         gp, s4, s10
                  sra          zero, a0, s6
                  lui          a0, 149920
                  xori         s2, a4, -977
                  nop
                  bne          a3, t5, 73f
                  addi         t3, s8, -1869
                  addi         a5, s2, -691
                  and          s2, t3, a0
                  sub          t0, zero, a1
69:               xori         t2, a3, -775
                  sltiu        t0, sp, -1402
                  sltu         t2, a4, sp
                  addi         a2, a3, -520
73:               sll          s11, a4, s3
74:               ori          sp, a1, 1466
                  sra          a0, t5, zero
                  ori          zero, sp, 287
                  lui          t6, 224543
                  slti         a1, s7, 982
                  srl          tp, s0, t5
                  sltu         s10, a2, t0
                  addi         s0, a4, 1806
                  auipc        tp, 142889
                  sra          s11, t1, zero
                  slli         t4, s3, 23
                  xor          s5, t6, t0
                  or           a4, s6, s6
                  srli         t2, s7, 9
                  bge          a5, s7, 92f
                  lui          tp, 94347
                  slt          t5, a4, s6
                  bgeu         zero, t2, 111f
92:               and          a5, a3, t6
                  lui          t5, 817166
                  sltiu        t4, s0, 1065
                  bne          a3, s1, 99f
                  sltiu        s9, s11, 336
                  xor          tp, tp, s2
                  slti         t2, t6, -1212
99:               add          s7, a5, a0
                  lui          t6, 592179
                  beq          a6, s3, 120f
                  auipc        sp, 615458
                  bgeu         zero, a1, 109f
                  andi         a6, s9, -1595
                  bltu         a3, s8, 124f
                  slti         t4, t3, -1786
                  sltiu        t6, t3, -901
                  bgeu         a1, ra, 110f
109:              slli         s11, s7, 16
110:              nop
111:              srl          s7, gp, t2
                  sltu         zero, t1, a7
                  auipc        zero, 652766
                  sub          s1, gp, a6
                  auipc        a2, 432610
                  nop
                  sltiu        s3, s3, 1042
                  bltu         a0, t6, 128f
                  or           t4, a2, sp
120:              or           tp, t2, t1
                  srl          gp, t4, s5
                  sll          a6, s11, a7
                  addi         s2, s4, 547
124:              or           s5, s6, s2
                  sra          s3, s2, a6
                  andi         a5, a7, 1015
                  xor          s5, s0, s9
128:              beq          a3, a4, 131f
                  bgeu         s11, a5, 139f
                  xori         t0, t3, -1210
131:              sra          a6, ra, a1
                  addi         sp, s6, -921
                  auipc        s4, 557369
                  slli         a0, a0, 6
                  addi         a3, a5, -2045
                  sltiu        a5, a5, -1110
                  sra          a5, s11, a5
                  sltiu        t1, a4, -1714
139:              auipc        a3, 1040131
                  srl          t6, s0, s10
                  bgeu         a3, s7, 145f
                  srai         a1, s8, 29
                  and          a3, t6, zero
                  nop
145:              srli         a5, s10, 10
                  sra          a0, gp, s11
                  andi         s9, s9, -539
                  sub          a6, s2, t5
                  xori         t5, s0, 1815
                  ori          a6, s8, -1713
                  slli         a5, a0, 18
                  lw           s9, 4(s8)
                  xori         s10, t0, -1604
                  xor          tp, ra, s11
                  add          t5, tp, t5
                  addi         s8, s8, 24
                  sub          ra, t6, t6
                  addi         tp, s7, -1490
                  sll          t3, a1, s10
                  srai         t4, s8, 15
244:              addi x2, x25, 1
244:              jalr x2, x2, 0
sub_1:            bge          s6, a6, sub_1_stack_p
                  slli         a3, t3, 8
sub_1_stack_p:    addi         s8, s8, -20
                  or           t4, t0, t3
                  sw           s9, 4(s8)
                  andi         s1, s2, 1319
                  ori          s7, t1, 1538
                  and          a0, s3, ra
                  nop
                  sltiu        s2, a4, -932
                  sltu         s2, ra, t1
                  slli         s7, t3, 16
                  add          s11, s6, s4
                  slt          t0, s7, a3
                  add          a3, tp, s1
                  nop
                  auipc        t5, 28951
                  bltu         t6, a0, sub_1_j3 #branch to jump instr
                  slti         t5, s10, -1166
                  ori          t0, t1, -1351
                  or           tp, a1, t0
sub_1_j3:         jal          s9, sub_3 #jump sub_1 -> sub_3
sub_1_15:         jal          s9, 23f
0:                jal          ra, 20f
1:                jal          ra, 2f
2:                jal          ra, 3f
3:                jal          t1, 28f
4:                jal          a1, 26f
5:                jal          t1, 18f
6:                jal          a2, 11f
7:                jal          s2, 9f
8:                jal          sp, 22f
9:                jal          t1, 17f
10:               jal          s0, 16f
11:               jal          ra, 21f
12:               jal          ra, 14f
13:               jal          ra, 12b
14:               jal          t1, 10b
15:               jal          t1, 25f
16:               jal          t2, 0b
17:               jal          ra, 5b
18:               jal          ra, 6b
19:               jal          s4, 4b
20:               jal          t0, 7b
21:               jal          t1, 1b
22:               jal          ra, 24f
23:               jal          t0, 15b
24:               jal          ra, 27f
25:               jal          t5, 19b
26:               jal          ra, 8b
27:               jal          t5, 13b
28:               srli         gp, s2, 29
sub_1_8:          jal          s9, 8f
0:                jal          s7, 17f
1:                jal          t1, 9f
2:                jal          ra, 10f
3:                jal          ra, 19f
4:                jal          t0, 16f
5:                jal          ra, 1b
6:                jal          t2, 14f
7:                jal          ra, 5b
8:                jal          sp, 20f
9:                jal          sp, 6b
10:               jal          ra, 11f
11:               jal          sp, 13f
12:               jal          ra, 4b
13:               jal          t1, 21f
14:               jal          ra, 2b
15:               jal          t1, 18f
16:               jal          ra, 0b
17:               jal          a2, 15b
18:               jal          ra, 7b
19:               jal          ra, 12b
20:               jal          t4, 3b
21:               sra          sp, s11, ra
sub_1_0:          jal          s9, 10f
0:                jal          t1, 23f
1:                jal          t6, 2f
2:                jal          ra, 16f
3:                jal          tp, 13f
4:                jal          ra, 3b
5:                jal          ra, 17f
6:                jal          ra, 4b
7:                jal          sp, 20f
8:                jal          ra, 24f
9:                jal          t1, 14f
10:               jal          ra, 5b
11:               jal          ra, 21f
12:               jal          t1, 11b
13:               jal          ra, 19f
14:               jal          t1, 7b
15:               jal          t1, 1b
16:               jal          ra, 18f
17:               jal          t3, 6b
18:               jal          ra, 0b
19:               jal          t6, 9b
20:               jal          s10, 15b
21:               jal          ra, 8b
22:               jal          tp, 12b
23:               jal          s4, 22b
24:               slt          s10, tp, t6
sub_1_7:          jal          s9, 2f
0:                jal          t4, 14f
1:                jal          ra, 17f
2:                jal          t1, 12f
3:                jal          ra, 22f
4:                jal          gp, 1b
5:                jal          ra, 19f
6:                jal          s11, 0b
7:                jal          ra, 4b
8:                jal          s3, 9f
9:                jal          t0, 6b
10:               jal          ra, 23f
11:               jal          t1, 20f
12:               jal          t1, 5b
13:               jal          ra, 21f
14:               jal          ra, 18f
15:               jal          ra, 11b
16:               jal          t1, 3b
17:               jal          t1, 8b
18:               jal          t1, 13b
19:               jal          sp, 15b
20:               jal          ra, 7b
21:               jal          ra, 16b
22:               jal          ra, 10b
23:               sll          a5, s2, t2
sub_1_2:          jal          s9, 19f
0:                jal          ra, 8f
1:                jal          ra, 0b
2:                jal          ra, 10f
3:                jal          ra, 15f
4:                jal          sp, 14f
5:                jal          sp, 4b
6:                jal          ra, 7f
7:                jal          ra, 16f
8:                jal          a3, 2b
9:                jal          tp, 13f
10:               jal          t1, 3b
11:               jal          ra, 20f
12:               jal          ra, 6b
13:               jal          ra, 11b
14:               jal          gp, 17f
15:               jal          a4, 18f
16:               jal          ra, 5b
17:               jal          ra, 22f
18:               jal          tp, 21f
19:               jal          a5, 9b
20:               jal          ra, 1b
21:               jal          ra, 12b
22:               ori          t1, sp, -1272
sub_1_4:          jal          s9, 19f
0:                jal          ra, 4f
1:                jal          ra, 26f
2:                jal          t1, 11f
3:                jal          s3, 13f
4:                jal          ra, 22f
5:                jal          ra, 18f
6:                jal          ra, 10f
7:                jal          t1, 2b
8:                jal          ra, 17f
9:                jal          tp, 1b
10:               jal          ra, 27f
11:               jal          ra, 12f
12:               jal          ra, 16f
13:               jal          ra, 6b
14:               jal          ra, 9b
15:               jal          ra, 20f
16:               jal          ra, 21f
17:               jal          t2, 0b
18:               jal          t1, 30f
19:               jal          t1, 29f
20:               jal          sp, 25f
21:               jal          ra, 24f
22:               jal          t1, 5b
23:               jal          t4, 7b
24:               jal          t1, 3b
25:               jal          a5, 14b
26:               jal          ra, 23b
27:               jal          ra, 28f
28:               jal          ra, 8b
29:               jal          ra, 15b
30:               srli         s10, s2, 11
sub_1_5:          jal          s9, 13f
0:                jal          s9, 24f
1:                jal          ra, 5f
2:                jal          ra, 4f
3:                jal          ra, 20f
4:                jal          t3, 8f
5:                jal          s3, 14f
6:                jal          ra, 2b
7:                jal          t0, 3b
8:                jal          gp, 25f
9:                jal          ra, 18f
10:               jal          ra, 17f
11:               jal          ra, 21f
12:               jal          a4, 22f
13:               jal          t1, 11b
14:               jal          ra, 0b
15:               jal          gp, 9b
16:               jal          ra, 23f
17:               jal          tp, 16b
18:               jal          ra, 26f
19:               jal          ra, 10b
20:               jal          ra, 6b
21:               jal          sp, 7b
22:               jal          s3, 1b
23:               jal          ra, 12b
24:               jal          t1, 15b
25:               jal          ra, 19b
26:               nop
sub_1_13:         jal          s9, 2f
0:                jal          ra, 8f
1:                jal          s9, 4f
2:                jal          ra, 7f
3:                jal          a2, 1b
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          ra, 12f
7:                jal          t4, 11f
8:                jal          gp, 10f
9:                jal          t1, 3b
10:               jal          sp, 9b
11:               jal          ra, 0b
12:               sltiu        a3, t3, 1335
sub_1_11:         jal          s9, 18f
0:                jal          ra, 5f
1:                jal          ra, 16f
2:                jal          ra, 3f
3:                jal          t1, 20f
4:                jal          s7, 22f
5:                jal          ra, 24f
6:                jal          ra, 2b
7:                jal          ra, 6b
8:                jal          ra, 4b
9:                jal          ra, 11f
10:               jal          ra, 1b
11:               jal          ra, 0b
12:               jal          sp, 17f
13:               jal          ra, 14f
14:               jal          ra, 7b
15:               jal          ra, 19f
16:               jal          t1, 21f
17:               jal          gp, 23f
18:               jal          t1, 8b
19:               jal          s5, 10b
20:               jal          ra, 15b
21:               jal          ra, 12b
22:               jal          ra, 13b
23:               jal          t1, 26f
24:               jal          ra, 25f
25:               jal          t1, 27f
26:               jal          ra, 9b
27:               and          tp, s5, a2
sub_1_9:          jal          s9, 6f
0:                jal          s2, 4f
1:                jal          s5, 5f
2:                jal          ra, 1b
3:                jal          t6, 8f
4:                jal          ra, 10f
5:                jal          ra, 3b
6:                jal          ra, 9f
7:                jal          sp, 0b
8:                jal          ra, 7b
9:                jal          t1, 2b
10:               or           s11, t6, t2
sub_1_14:         jal          s9, 6f
0:                jal          s2, 21f
1:                jal          tp, 26f
2:                jal          t1, 10f
3:                jal          ra, 15f
4:                jal          s9, 8f
5:                jal          s11, 2b
6:                jal          tp, 1b
7:                jal          ra, 3b
8:                jal          sp, 25f
9:                jal          s11, 5b
10:               jal          t1, 14f
11:               jal          s10, 7b
12:               jal          sp, 0b
13:               jal          ra, 11b
14:               jal          ra, 24f
15:               jal          ra, 18f
16:               jal          t1, 23f
17:               jal          ra, 4b
18:               jal          ra, 20f
19:               jal          s2, 9b
20:               jal          ra, 12b
21:               jal          ra, 22f
22:               jal          t1, 17b
23:               jal          ra, 13b
24:               jal          ra, 27f
25:               jal          a1, 19b
26:               jal          ra, 16b
27:               sll          t3, s7, a2
sub_1_12:         jal          s9, 13f
0:                jal          ra, 10f
1:                jal          t1, 24f
2:                jal          sp, 20f
3:                jal          ra, 9f
4:                jal          gp, 0b
5:                jal          ra, 19f
6:                jal          ra, 7f
7:                jal          a5, 4b
8:                jal          ra, 23f
9:                jal          ra, 11f
10:               jal          a6, 17f
11:               jal          ra, 18f
12:               jal          tp, 25f
13:               jal          a0, 2b
14:               jal          ra, 12b
15:               jal          t0, 22f
16:               jal          ra, 5b
17:               jal          ra, 15b
18:               jal          sp, 16b
19:               jal          t1, 26f
20:               jal          t1, 14b
21:               jal          sp, 1b
22:               jal          t1, 21b
23:               jal          ra, 6b
24:               jal          ra, 3b
25:               jal          ra, 8b
26:               srl          a0, a1, ra
                  auipc        t4, 140422
                  bge          zero, s10, 15f
                  bltu         s5, t6, 6f
                  sub          t4, tp, s4
                  andi         a3, tp, -1224
                  bge          sp, t3, 10f
6:                bge          s6, s2, 11f
                  sub          t4, ra, a2
                  andi         a0, ra, -1901
                  auipc        a2, 814512
10:               and          t3, t2, t1
11:               sll          a3, zero, s8
                  andi         s0, s10, -537
                  slt          s10, ra, tp
                  add          ra, s11, t5
15:               and          s5, t4, t1
                  or           s0, s2, a0
                  xor          t5, s7, sp
                  bge          a0, s11, 34f
                  sltiu        s10, ra, -791
                  add          tp, ra, s11
                  sltu         s10, ra, t6
                  xor          t5, a4, s9
                  slli         s4, a6, 4
                  sltu         t1, tp, a5
                  slli         gp, a0, 25
                  addi         a2, s6, -254
                  srl          s10, a2, t4
                  xori         sp, s11, 516
                  bgeu         t4, a2, 47f
                  and          s3, s4, a2
                  auipc        ra, 76383
                  sltiu        s2, s8, 797
                  beq          gp, a7, 41f
34:               xori         a0, sp, -951
                  addi         s7, t2, 75
                  xori         a1, t6, 839
                  slt          s0, t1, a3
                  slti         s7, a3, 2042
                  xori         a2, t4, -1839
                  andi         s0, t1, 484
41:               bge          s0, gp, 43f
                  srl          s5, s7, sp
43:               ori          gp, a2, 1948
                  auipc        s4, 96626
                  nop
                  xor          t0, a5, zero
47:               sltu         s5, a7, ra
                  srai         sp, s9, 26
                  auipc        t5, 439724
                  bltu         t6, t0, 51f
sub_1_10:         jal          s9, 9f
0:                jal          t1, 3f
1:                jal          t1, 2f
2:                jal          ra, 0b
3:                jal          t1, 7f
4:                jal          ra, 11f
5:                jal          ra, 8f
6:                jal          t1, 10f
7:                jal          tp, 5b
8:                jal          s5, 4b
9:                jal          ra, 6b
10:               jal          t1, 1b
11:               nop
51:               add          a4, a3, a6
                  slt          t0, sp, sp
                  andi         t2, t3, -62
                  bge          a6, s0, 63f
                  bgeu         t0, s2, 69f
                  bne          s11, a6, 62f
                  ori          gp, a0, -1223
                  xori         s0, a0, 1596
                  nop
                  sra          a4, a7, a5
                  or           a4, s10, s0
62:               sub          t1, t2, ra
63:               nop
                  or           s3, s0, a5
                  slli         t6, s5, 21
                  bge          a1, a4, 77f
                  add          sp, t0, t0
                  srli         a2, a3, 29
69:               sra          a2, a4, s1
                  sltu         s9, s1, t0
                  sll          t5, a1, s6
                  blt          t0, s11, 79f
                  slti         gp, s11, -1922
                  sra          s4, a1, s0
                  bgeu         t1, a2, 90f
                  slli         a4, t1, 30
77:               bltu         a3, s3, 81f
                  bne          t3, sp, 98f
79:               xor          t1, ra, t6
                  andi         s1, s5, 483
81:               xor          s2, a0, a5
                  sra          s4, a4, t6
                  blt          tp, a4, 89f
                  sll          tp, s1, s7
                  sll          t2, s9, ra
                  bge          s3, t2, 99f
                  bne          zero, a0, 89f
                  slt          s10, t6, a4
89:               and          zero, a6, a6
90:               and          s1, ra, s5
                  srli         s10, t3, 24
                  or           t0, s0, s8
                  srli         s11, t4, 27
                  bltu         s11, s10, 106f
                  sub          a1, tp, a1
                  sll          tp, s5, gp
                  bgeu         a2, s7, 100f
98:               xori         a3, a7, 767
99:               sll          s11, a4, s4
100:              andi         ra, t0, 1579
                  sra          a5, a6, s5
                  andi         a4, a7, -681
                  slli         t6, a4, 23
                  andi         s7, zero, 287
                  srl          gp, s8, a2
106:              sra          s9, a0, s8
                  addi         s2, ra, -1227
                  addi         tp, ra, 1264
                  sub          s5, s2, s5
                  bgeu         a3, a0, 114f
                  or           t4, sp, a3
                  xori         t3, a7, -981
                  bgeu         t5, a5, 115f
114:              or           a6, s1, zero
115:              sub          zero, t5, s9
                  srli         s9, a3, 28
                  slti         zero, s11, 424
                  sra          a0, s2, a7
                  srl          a6, t6, t2
                  addi         t1, ra, 231
                  sltu         a6, t6, s2
                  addi         s9, s6, 1429
                  add          gp, s9, t5
                  bgeu         s1, s7, 141f
                  lui          a0, 531633
                  or           t4, s7, zero
                  addi         a4, a6, 299
                  sltiu        s5, sp, 1227
                  ori          tp, a4, 289
                  sltu         s0, a7, s7
                  srli         t4, s1, 24
                  and          a4, s4, s5
                  bne          ra, s9, 143f
                  xor          s9, t5, a1
                  srai         sp, s10, 18
                  blt          s4, a4, 145f
                  bgeu         t5, tp, 144f
                  blt          s1, t2, 149f
                  sll          s3, t5, s7
                  auipc        t1, 653575
141:              sltu         a0, s11, s0
                  srli         s11, s1, 7
143:              slti         t1, a7, -1603
144:              sll          t5, s2, a2
145:              bne          s11, t2, 157f
                  nop
                  xor          s2, ra, s9
                  sub          s10, s2, a7
149:              bgeu         t2, s6, 159f
                  bltu         t6, s3, 168f
                  xor          t5, t1, t6
                  bgeu         a1, t3, 164f
                  xor          t1, zero, a6
                  srl          s1, s0, a5
                  beq          s10, gp, 160f
                  slti         zero, s10, -792
157:              sltu         s2, t3, s8
                  slt          a6, a0, a7
159:              srl          s7, s11, s2
160:              bgeu         gp, a3, 169f
                  bgeu         a5, s9, 162f
162:              nop
                  addi         s3, a3, 1100
164:              xori         t3, t4, -46
                  blt          a3, s8, 176f
                  sra          t2, a1, a1
                  srai         s5, t6, 22
168:              and          a2, s8, s10
169:              slli         t0, s0, 20
                  sra          ra, sp, s4
                  xor          tp, t0, tp
                  sltu         s0, t5, s1
                  xori         t5, zero, -1928
                  srl          a5, a6, s5
                  and          ra, t5, s6
176:              bge          s5, s4, 193f
                  sltu         s10, zero, s11
                  sub          sp, s4, s1
                  blt          a5, ra, 194f
                  slt          a4, a6, t2
                  ori          s7, s5, 107
                  slt          tp, s10, s6
                  beq          s6, sp, 185f
                  sub          a5, zero, a4
185:              bltu         t4, s1, 194f
                  blt          s0, t6, 190f
                  sub          t0, a1, s0
                  sll          sp, a7, a6
                  blt          a4, t5, 203f
190:              and          t0, a3, a1
                  sub          a3, zero, s3
                  sll          a1, gp, a1
193:              bltu         s10, s8, 201f
194:              beq          s10, gp, 201f
                  srli         a1, s2, 17
                  slt          t3, s8, t1
                  addi         s0, s9, 377
                  srai         tp, t0, 11
                  ori          s11, t1, -515
                  auipc        a5, 714783
201:              andi         gp, t0, 897
                  bne          a4, t3, 206f
203:              slti         s3, s3, -1069
                  andi         s10, s7, -1835
                  xori         s11, s11, 621
206:              xor          s2, s11, a1
                  add          s11, s9, s7
                  nop
                  sub          t2, t5, ra
                  blt          a6, s7, 214f
                  sll          s9, tp, s6
                  and          t6, t2, t5
                  sltiu        ra, t5, -1280
214:              beq          s11, a1, 219f
                  lui          t4, 6131
                  slt          a0, t4, t0
                  sltiu        s10, s8, 115
                  srai         s7, a4, 10
219:              sltiu        a5, a3, -820
                  ori          gp, t1, -1918
                  sltu         a0, s11, a5
                  srli         t5, s6, 15
                  auipc        sp, 926513
                  srai         tp, s6, 13
                  slli         a6, s6, 31
                  bgeu         t6, t2, 246f
                  lui          t2, 571025
                  bge          t3, s2, 240f
                  addi         gp, gp, -1148
                  sra          a0, t5, s3
                  srli         s4, t0, 26
                  sub          t5, s11, s7
                  srli         a1, s0, 10
                  or           zero, s8, sp
                  sra          s2, t4, a1
                  bge          t5, a5, 252f
                  addi         a4, s6, -406
                  sra          sp, ra, t4
                  sra          a3, s11, t0
240:              and          a4, t6, zero
                  slti         a6, s0, 1390
                  nop
                  bge          a7, s4, 256f
                  sra          s0, t0, t0
                  bge          a7, gp, 247f
246:              bne          s1, a2, 253f
247:              sra          s11, s9, s11
                  srl          s10, t2, s11
                  ori          s3, s3, -1840
                  sltiu        s1, gp, -82
                  lui          s9, 320218
252:              sltu         sp, t1, sp
253:              addi         s10, s3, -687
                  or           t5, s6, s9
                  beq          s9, t4, 257f
256:              srli         a3, a2, 2
257:              bgeu         s8, a0, 260f
                  srl          gp, s9, gp
                  nop
260:              beq          s2, t6, 274f
                  slli         zero, s2, 18
                  ori          s10, a1, -2043
                  ori          t2, s9, -1099
                  xori         tp, s5, 1831
                  blt          a3, tp, 276f
                  sltiu        s11, s8, 701
                  sltu         t4, gp, t3
                  srl          t1, t4, a1
                  sll          t2, a6, s8
                  bltu         t6, s4, 276f
                  sub          t2, s5, ra
                  sra          a4, ra, s9
                  xori         s5, s11, 1570
274:              andi         gp, s5, 1187
                  sra          s9, sp, a7
276:              sll          t4, sp, a1
                  sub          a1, t0, tp
                  sra          a1, tp, t5
                  sltu         s4, t4, a4
                  xor          a5, s8, t4
                  nop
                  sll          zero, a0, s5
                  bgeu         s2, s2, 289f
                  lui          s5, 22086
                  lui          s5, 235957
                  xori         zero, zero, -1882
                  nop
                  srli         t4, s10, 4
289:              xori         sp, tp, 437
                  slti         s9, t3, -769
                  bge          tp, s3, 298f
                  sub          s10, a0, s1
                  andi         s1, a6, -1652
                  xor          s3, s3, s10
                  bne          s9, s8, 310f
                  andi         a5, t6, 407
                  srl          a2, a5, s10
298:              slti         t6, t0, 133
                  lui          a6, 130113
                  addi         s10, a6, 1548
                  xor          s3, a7, a6
                  sra          a4, a0, a0
                  addi         t2, ra, -608
                  slti         ra, tp, -600
                  xor          gp, s4, s5
                  xor          t5, a3, a3
                  sra          gp, a2, sp
                  or           a6, a6, s7
                  addi         a2, a2, -1114
310:              auipc        a2, 328864
                  sll          s9, a5, gp
                  nop
                  srl          s5, a2, s5
                  ori          a0, gp, 206
                  slti         s1, t5, 1556
                  beq          tp, a3, 322f
                  or           gp, a1, a6
                  addi         a6, t2, 586
                  and          zero, tp, t1
                  bgeu         a5, s2, 330f
                  sub          sp, s5, s8
322:              slli         a1, a5, 29
                  or           a5, s5, ra
                  beq          t5, a1, 338f
                  sra          a1, t6, a6
                  bgeu         t0, s3, 330f
                  srai         t1, t3, 17
                  sub          zero, gp, s4
                  nop
330:              or           t2, s6, a1
                  andi         ra, s10, -1699
                  sra          zero, ra, a4
                  bge          t5, s1, 345f
                  sltu         t3, a4, ra
                  andi         sp, s8, -103
                  bge          a5, a2, 354f
                  sub          s4, s9, s7
338:              srai         s10, s5, 13
                  ori          t3, t2, 148
                  bne          a3, a2, 352f
                  beq          s11, tp, 350f
                  beq          a7, a7, 344f
                  bge          gp, t4, 347f
344:              xor          zero, t1, tp
345:              auipc        a1, 67192
                  srl          t0, a4, t1
347:              sltiu        s11, t3, -429
                  ori          s9, s4, 398
                  slli         t0, s10, 3
350:              nop
                  sltu         t0, sp, a3
352:              add          ra, t0, a5
                  sltu         s1, a0, a5
354:              ori          s3, a6, -820
                  srai         tp, s9, 5
                  ori          s5, t4, -1141
                  slti         a3, s2, 1974
sub_1_1:          jal          s9, 11f
0:                jal          t3, 13f
1:                jal          ra, 12f
2:                jal          s7, 0b
3:                jal          s1, 4f
4:                jal          ra, 8f
5:                jal          t1, 6f
6:                jal          s2, 7f
7:                jal          t5, 9f
8:                jal          s10, 1b
9:                jal          a1, 2b
10:               jal          ra, 3b
11:               jal          ra, 10b
12:               jal          sp, 5b
13:               slt          a1, s8, s2
                  andi         s4, s5, 1136
                  ori          s3, t2, -764
                  sltiu        ra, s11, -881
                  auipc        t6, 436140
                  bltu         sp, s10, 371f
                  srai         zero, s4, 19
                  slti         a4, t2, 1883
                  bltu         s11, a4, 379f
                  srl          tp, a7, s0
                  slli         t3, t1, 7
                  and          t4, t3, a3
                  bge          s11, a1, 374f
                  andi         t6, t2, -1954
371:              sltiu        tp, t6, 802
                  slti         s4, s1, -1966
                  ori          a6, s2, 29
374:              lui          t2, 678821
                  lui          gp, 648280
                  addi         s0, s5, -1192
                  beq          sp, zero, 388f
                  xor          zero, gp, s6
379:              andi         s4, t5, 1801
                  xor          tp, s1, t4
                  or           t5, gp, a2
                  add          t1, t4, a7
                  sub          a0, a1, t5
                  lui          s0, 283379
                  sltu         s2, t0, t3
                  sll          a6, s8, tp
                  add          a6, a1, s6
388:              ori          t5, a0, 1906
                  bge          s5, ra, 405f
                  srli         t1, s9, 4
                  or           a0, t0, s7
                  sltiu        a0, s8, -769
                  bgeu         zero, s2, 396f
                  lui          a3, 1005966
                  sltu         s10, s1, a4
396:              beq          s7, t6, 398f
                  beq          s7, a7, 417f
398:              slt          a1, s5, s2
                  add          t2, s3, sp
                  sra          sp, a1, t2
                  auipc        s9, 561981
                  bge          s7, a4, 410f
                  addi         s7, t3, 1330
                  xori         s4, t2, -1483
405:              add          zero, ra, s8
                  xori         s9, sp, -730
                  srai         t3, s5, 6
                  addi         sp, s6, -230
                  and          a2, s10, s2
410:              andi         s11, s9, 537
                  or           a6, s5, tp
                  bne          t5, a7, 413f
413:              bge          a3, s2, 430f
                  sltiu        t6, sp, -1126
                  srai         t6, t6, 29
                  bgeu         a7, a2, 422f
417:              sltiu        a0, s4, 1790
                  or           a3, s2, a3
                  andi         gp, t5, -93
                  and          a2, s0, s9
                  bgeu         a1, a7, 428f
422:              srli         a6, s7, 16
                  sub          t4, sp, s5
                  bge          s8, s9, 428f
                  bge          s9, s3, 427f
                  sll          zero, a0, s3
427:              and          a0, a5, s2
428:              blt          a4, a6, 433f
                  slti         s10, s0, -925
430:              ori          s5, a2, -1974
                  ori          t5, s3, -1874
                  slli         t6, s1, 12
433:              bltu         s6, s6, 446f
                  or           zero, s8, t1
                  auipc        t1, 413604
                  xori         t2, s11, -73
                  xori         tp, t6, 1058
                  beq          s5, t4, 449f
                  srl          ra, t3, a0
                  sra          ra, a1, gp
                  slt          s1, s7, s2
                  slti         sp, a5, -1061
                  addi         ra, s9, 1056
                  sltu         ra, s10, s9
                  bltu         s9, zero, 446f
446:              lui          a5, 543817
                  blt          a7, tp, 461f
                  and          s3, t3, a5
449:              addi         a2, ra, 1977
                  sltu         t5, a5, ra
                  sll          t2, t1, t5
                  slt          a6, s4, s4
                  sltu         a1, a2, t5
                  bltu         t3, t6, 468f
                  sra          s2, a1, a0
                  sub          t5, t5, sp
                  sll          s0, t6, a3
                  srai         s9, s1, 0
                  ori          a5, s3, -1919
                  bltu         a2, a2, 477f
461:              srl          s5, s1, s6
                  bgeu         s7, s0, 464f
                  ori          sp, s7, -1750
464:              and          t5, t1, sp
                  slli         s5, s5, 5
                  or           t1, a1, s2
                  sltiu        a0, s3, 1620
468:              sll          s5, s3, s5
                  or           a3, a4, t2
                  slt          a1, gp, ra
                  bgeu         s7, s3, 483f
                  beq          s5, ra, 477f
                  slti         a2, t1, 1181
                  auipc        tp, 564761
                  addi         s9, a4, 1255
                  sra          t4, a1, gp
477:              srli         s4, s7, 16
                  add          a1, sp, s8
                  ori          t6, a2, 1905
                  bge          t0, t1, 489f
                  andi         a1, s9, 1326
                  slli         s7, a4, 4
483:              bltu         s4, s3, 495f
                  addi         a1, s2, -1476
                  lui          s2, 472898
                  andi         zero, tp, -1368
                  srli         a6, a7, 14
                  srai         s2, s0, 19
489:              or           s2, s6, t0
                  sra          s9, a3, t0
                  blt          zero, gp, 507f
                  srli         ra, a2, 6
                  xor          s7, s3, s8
                  or           a4, t4, a4
495:              sra          t2, s7, t5
                  nop
                  xor          s7, a7, s11
                  slti         s10, s9, -756
                  srai         a0, a7, 23
                  andi         s4, s7, -679
                  sll          t6, s11, a6
                  sltiu        tp, s11, 388
                  and          s10, s9, a4
                  srai         sp, s3, 1
                  srai         t6, t1, 10
                  bne          a2, a7, 517f
507:              andi         a4, t4, 1366
                  sltiu        t2, s2, -1621
                  srai         s2, a0, 0
                  ori          a0, s10, -1547
                  xor          t5, a7, gp
                  xor          a2, a1, s8
                  bne          a5, s5, 531f
                  srl          s10, t3, s4
                  or           t2, gp, s6
                  sltiu        s5, s6, 985
517:              bge          s7, zero, 524f
                  srai         s10, t1, 10
                  bne          t4, ra, 532f
                  bne          s10, s2, 523f
                  bgeu         s4, s11, 529f
                  bltu         t4, a2, 528f
523:              slt          s0, t5, a1
524:              bne          s2, t3, 526f
                  or           t2, s5, s9
526:              xori         a3, s3, -342
                  andi         a4, a2, -139
528:              slti         a4, a6, -406
529:              nop
                  bltu         a1, zero, 535f
531:              bne          a0, s6, 542f
532:              sra          t4, s9, a6
                  slt          s7, s10, s0
                  slti         gp, s9, 981
535:              slti         a6, a1, -1126
                  bgeu         s1, sp, 551f
                  auipc        a5, 1006772
                  xori         t6, s8, 991
                  srli         gp, s2, 1
                  bltu         s0, s4, 549f
                  slli         a2, t5, 11
542:              auipc        t2, 534254
                  sra          tp, ra, a3
                  slti         t5, a3, -1825
                  srl          a5, t0, s0
                  sltu         s10, a5, s1
                  blt          t1, s0, 553f
                  beq          s4, tp, 552f
549:              andi         t5, a3, 565
                  sub          sp, sp, s0
551:              blt          s5, ra, 555f
552:              bne          ra, s0, 559f
553:              sll          s5, sp, a5
                  and          ra, t3, s11
555:              sub          t5, s3, s7
                  addi         s9, a1, 158
                  srl          zero, a5, t4
                  srai         t0, s3, 22
559:              lui          s5, 328940
                  sltiu        zero, t6, -63
                  xori         a1, s1, 2004
                  add          s11, t0, t3
                  bge          s0, s6, 583f
                  slt          s5, a4, t1
                  andi         s5, a0, -1387
                  slt          ra, s1, t6
                  srli         a5, sp, 18
                  addi         zero, a0, 1578
                  bgeu         a5, t4, 573f
                  blt          s5, t1, 572f
                  srli         s9, t6, 17
572:              xori         s11, s3, 11
573:              andi         t5, a2, 1552
                  blt          s6, a3, 584f
                  sll          tp, s5, s7
                  addi         gp, a6, 1270
                  lui          s5, 223648
                  add          a6, a6, t1
                  bge          tp, gp, 592f
                  or           sp, sp, a5
                  nop
                  lui          s3, 297677
583:              and          s9, a3, t2
584:              beq          s11, a5, 598f
                  auipc        a1, 7702
                  nop
                  auipc        s11, 590099
                  sltu         s4, s3, a6
                  blt          a3, tp, 590f
590:              and          t2, s6, t1
                  srli         tp, t0, 29
592:              sltiu        zero, a6, 1715
                  bge          s7, t6, 599f
                  sra          s1, s4, t5
                  srai         s7, a1, 20
                  nop
                  sub          t6, t0, s2
598:              slti         t0, s6, 409
599:              add          t4, s5, a1
                  sltiu        tp, a1, 163
                  bltu         s9, t5, 604f
                  or           t5, s8, zero
                  xor          a3, s0, a3
604:              sll          s4, t5, ra
                  sra          a0, s4, zero
                  xor          a2, a2, t2
                  or           a3, s9, ra
                  bltu         s0, s8, 612f
                  or           a0, t0, t1
                  sub          s10, a4, t5
                  srai         t4, s11, 15
612:              and          sp, s10, s2
                  bge          t3, t2, 628f
                  slt          s0, t5, s6
                  bgeu         s9, t4, 626f
                  nop
                  add          s5, t0, gp
                  nop
                  slt          t3, a7, s0
                  xori         s2, t5, 1510
                  xori         s1, t2, -158
                  slti         s7, t4, -277
                  bge          a2, s9, 632f
                  addi         t3, a7, 1769
                  xori         t0, s8, 874
626:              xori         a5, ra, 1020
                  bltu         s11, t4, 644f
628:              srli         a4, a0, 22
                  or           s4, ra, s9
                  addi         a1, tp, 371
                  bgeu         a7, s1, 635f
632:              sll          s9, a7, ra
                  nop
                  auipc        t4, 554180
635:              bltu         t3, a0, 643f
                  sub          s3, t4, s2
                  slti         t2, s7, -918
                  ori          t2, s10, -1911
                  lui          a0, 379166
                  srli         a6, zero, 28
                  auipc        s0, 753109
                  sub          a1, t3, s1
643:              or           s1, t3, a6
644:              beq          a0, s1, 651f
                  bgeu         s6, a4, 651f
                  andi         t6, a6, 1313
                  beq          sp, s4, 663f
                  or           a5, a3, a7
                  bne          s1, a7, 661f
                  or           s0, s7, sp
651:              sll          t4, s6, a3
                  slli         a2, a2, 14
                  srli         s9, s4, 21
                  sra          s10, ra, a6
                  sll          t4, s8, s5
                  lui          s3, 818580
                  srli         s10, s2, 28
                  or           s7, t0, t2
                  sltiu        a3, a0, -296
                  slti         a4, zero, -991
661:              and          s10, ra, gp
                  blt          t1, a6, 664f
663:              sltiu        t1, s4, -482
664:              bgeu         a6, s8, 684f
                  bne          t1, t0, 672f
                  nop
                  andi         t1, a2, 154
                  nop
                  srai         t0, ra, 0
                  sll          t2, s0, a2
                  andi         a2, zero, -229
672:              bgeu         t4, t3, 683f
                  auipc        s5, 543207
                  bge          a5, t2, 684f
                  ori          t4, s6, 1986
                  andi         a1, s8, 1213
                  sltu         t6, gp, t0
                  srli         s4, sp, 28
                  nop
                  sub          s4, t6, s9
                  xori         a6, t0, -1922
                  bgeu         a3, s3, 684f
683:              srli         t5, s0, 0
684:              or           s0, s4, zero
                  andi         t4, a1, -480
                  xor          gp, s7, zero
                  auipc        a4, 848173
                  srli         s9, a7, 18
                  addi         a6, s8, -1299
                  bge          s11, t1, 695f
                  bgeu         s4, s9, 705f
                  and          t0, t5, a3
                  or           s4, t1, tp
                  sll          s9, tp, gp
695:              xor          a2, s11, gp
                  bgeu         t0, s6, 701f
                  bltu         a7, a5, 715f
                  add          t0, s10, t5
                  add          t2, t3, a1
                  bge          ra, t5, 709f
701:              addi         a6, t3, 1988
                  srli         s5, s11, 26
                  srli         s4, t0, 6
                  xori         t5, s6, 542
705:              bgeu         t3, s9, 717f
                  slti         t1, s3, 89
                  addi         s5, a1, 176
                  srai         s3, a5, 26
709:              blt          s5, s7, 711f
                  sub          s1, s2, s11
711:              ori          tp, t5, -26
                  bge          s1, s3, 716f
sub_1_3:          jal          s9, 11f
0:                jal          ra, 5f
1:                jal          ra, 22f
2:                jal          sp, 17f
3:                jal          ra, 14f
4:                jal          ra, 20f
5:                jal          ra, 2b
6:                jal          a3, 7f
7:                jal          t4, 23f
8:                jal          ra, 1b
9:                jal          t1, 16f
10:               jal          t6, 0b
11:               jal          t6, 24f
12:               jal          ra, 25f
13:               jal          ra, 18f
14:               jal          t0, 10b
15:               jal          ra, 13b
16:               jal          tp, 3b
17:               jal          ra, 12b
18:               jal          t1, 4b
19:               jal          gp, 15b
20:               jal          gp, 6b
21:               jal          ra, 19b
22:               jal          ra, 9b
23:               jal          ra, 8b
24:               jal          t1, 21b
25:               srli         sp, a4, 4
                  add          t6, a4, s11
                  add          a0, zero, s7
715:              srl          a1, s10, s5
716:              bne          s5, s6, 717f
717:              srl          a6, a4, a2
                  andi         s5, a5, 627
                  xor          s11, s3, gp
                  lui          s9, 109875
                  srli         s0, s8, 5
                  and          t0, a7, ra
                  slli         ra, a1, 28
                  auipc        s7, 993461
                  srli         a2, s2, 20
                  addi         t4, s9, 1433
                  srli         s2, s0, 19
                  andi         s10, t4, 794
                  add          a4, s8, t4
                  bltu         tp, s8, 737f
                  sub          s2, a5, ra
                  bgeu         t6, t5, 746f
                  sub          s5, sp, a3
                  sll          t1, t5, t1
                  sltu         sp, a1, ra
                  nop
737:              srai         t2, a0, 0
                  sltu         a0, t4, t5
                  srli         t6, s0, 18
                  ori          s10, s2, 1702
                  bgeu         t3, s0, 745f
                  andi         s9, s1, 194
                  slli         s4, s5, 5
                  or           t3, s11, a7
745:              sub          a1, a6, s4
746:              lui          t1, 244594
                  sltu         s5, a6, tp
                  srli         t2, s0, 30
                  xor          a5, ra, t3
                  bge          t6, t6, 763f
                  srli         s9, sp, 22
                  beq          s9, a7, 764f
                  xori         sp, s9, 1646
                  and          a1, t4, sp
                  xor          a3, a7, s7
                  sub          t2, a1, a0
                  nop
                  sub          t3, a5, s3
sub_1_6:          jal          s9, 2f
0:                jal          ra, 10f
1:                jal          ra, 8f
2:                jal          ra, 7f
3:                jal          ra, 9f
4:                jal          t3, 16f
5:                jal          t0, 18f
6:                jal          t1, 13f
7:                jal          ra, 4b
8:                jal          ra, 5b
9:                jal          s9, 11f
10:               jal          ra, 3b
11:               jal          t2, 14f
12:               jal          t1, 15f
13:               jal          ra, 0b
14:               jal          t0, 1b
15:               jal          s1, 17f
16:               jal          t0, 12b
17:               jal          s11, 6b
18:               xori         t0, a3, 1833
                  srl          gp, s2, s2
                  srai         s0, a6, 23
                  srli         s7, a4, 10
                  sltu         a4, a6, s1
763:              xor          t5, s5, a7
764:              bltu         s0, s7, 774f
                  bne          sp, tp, 782f
                  addi         a3, a1, 1297
                  sll          t6, t3, sp
                  add          a3, a6, sp
                  bne          a6, a2, 781f
                  ori          sp, s7, 472
                  add          a6, s7, s2
                  ori          t0, s9, 1046
                  auipc        t2, 493995
774:              andi         zero, a3, 1031
                  lui          a3, 1004090
                  srl          s3, s8, a6
                  slti         a2, s1, -1216
                  sltiu        t2, a4, 692
                  bne          s2, a4, 781f
                  slti         s2, t3, -910
781:              sra          a1, t4, t2
782:              bne          s4, s9, 786f
                  sub          a5, s4, s1
                  sltiu        t4, s10, -1325
                  bltu         a2, s6, 801f
786:              blt          t5, s0, 792f
                  or           s1, a4, ra
                  sub          a3, s6, a7
                  bne          t0, gp, 804f
                  or           t0, gp, t4
                  andi         a2, t3, -906
792:              add          tp, s7, s2
                  blt          zero, s0, 802f
                  sub          s0, t4, s10
                  bltu         s9, t5, 806f
                  slti         s10, a2, 410
                  srli         t5, a3, 20
                  sltiu        tp, s0, -293
                  slti         a4, s5, -658
                  sub          s2, t1, s8
801:              sltu         tp, a6, s2
802:              srai         t2, gp, 0
                  srai         s4, s4, 29
804:              blt          tp, gp, 815f
                  srl          a1, s11, s0
806:              sub          a4, t4, t4
                  slli         ra, s5, 28
                  or           t4, s11, a3
                  xor          a3, s4, t5
                  srai         s5, a3, 10
                  xor          a1, s0, ra
                  srl          s9, a1, s10
                  beq          sp, s4, 833f
                  srli         a3, s6, 8
815:              slli         ra, s10, 23
                  sra          s5, a4, zero
                  sltu         a2, s2, s5
                  bgeu         a6, a4, 822f
                  bge          zero, a0, 837f
                  bltu         s3, zero, 823f
                  sra          s5, a5, t6
822:              blt          gp, zero, 830f
823:              srai         a2, a1, 11
                  sltu         s4, s0, t3
                  auipc        s2, 110355
                  add          s1, s4, s10
                  addi         t4, tp, -1927
                  bne          s11, s0, 830f
                  srl          tp, t2, s3
830:              sra          t5, gp, t4
                  xori         s3, s6, 794
                  bne          gp, a2, 841f
833:              and          s7, s3, a1
                  xori         s10, tp, -876
                  sra          gp, t3, t0
                  sub          s2, t5, tp
837:              slli         s7, s0, 19
                  bge          a2, s10, 842f
                  and          s9, a2, t6
                  sll          zero, a4, s4
841:              sra          t6, a7, a1
842:              xor          sp, s6, s5
                  lw           s9, 4(s8)
                  sltiu        s1, a6, 1979
                  andi         t1, a2, 318
                  slti         a0, s6, 1571
                  xor          s5, s10, t0
                  srai         ra, s2, 30
                  slt          s3, s4, s7
                  slti         s1, t3, 921
                  or           a5, zero, t0
                  addi         s8, s8, 20
                  sra          a2, a5, tp
1251:             addi x4, x25, 0
1251:             jalr x4, x4, 0
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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x17, x24, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x8, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x8, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x8, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x8, x29, ecall_handler
                  li x29, 0x1
                  beq x8, x29, instr_fault_handler
                  li x29, 0x5
                  beq x8, x29, load_fault_handler
                  li x29, 0x7
                  beq x8, x29, store_fault_handler
                  li x29, 0xc
                  beq x8, x29, pt_fault_handler
                  li x29, 0xd
                  beq x8, x29, pt_fault_handler
                  li x29, 0xf
                  beq x8, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

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
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

load_fault_handler:
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

store_fault_handler:
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x24, x17, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
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
