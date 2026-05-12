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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0xfd489cd3
                  li x3, 0x80000000
                  li x5, 0xc
                  li x6, 0x80000000
                  li x7, 0xc05cd00a
                  li x8, 0x8d8d415f
                  li x9, 0xffad7341
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x80000000
                  li x16, 0xebe3c9e3
                  li x17, 0x9
                  li x18, 0x9
                  li x19, 0xfff55c22
                  li x20, 0xc
                  li x21, 0x0
                  li x22, 0x648695c9
                  li x23, 0x77ab129d
                  li x24, 0x0
                  li x25, 0x6
                  li x26, 0xf5f552b3
                  li x27, 0xf3200481
                  li x28, 0x7
                  li x29, 0xe
                  li x30, 0x80000000
                  li x31, 0xf6976c4c
                  la x15, user_stack_end
main:             sltu         t6, s8, s4
                  addi         t3, s5, 1594
                  sub          a4, s6, a1
                  ori          t5, s9, 964
                  sub          s7, a1, t6
                  add          s9, sp, t0
                  la           ra, sub_1
                  addi         ra, ra, -864
                  sub          s4, a5, t4
                  addi         s5, gp, -1934
                  lui          a1, 590247
main_j2:          jalr         a4, ra, 864 #jump main -> sub_1
main_8:           jal          a4, 6f
0:                jal          sp, 12f
1:                jal          ra, 10f
2:                jal          t1, 9f
3:                jal          ra, 13f
4:                jal          a3, 1b
5:                jal          s0, 15f
6:                jal          sp, 3b
7:                jal          ra, 5b
8:                jal          t1, 2b
9:                jal          ra, 7b
10:               jal          ra, 0b
11:               jal          s2, 17f
12:               jal          gp, 8b
13:               jal          t0, 11b
14:               jal          a4, 4b
15:               jal          ra, 18f
16:               jal          ra, 14b
17:               jal          ra, 16b
18:               lui          a4, 404694
main_5:           jal          a4, 3f
0:                jal          s6, 8f
1:                jal          gp, 11f
2:                jal          ra, 12f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          s4, 7f
6:                jal          t1, 13f
7:                jal          ra, 10f
8:                jal          ra, 4b
9:                jal          ra, 2b
10:               jal          ra, 9b
11:               jal          ra, 14f
12:               jal          t1, 6b
13:               jal          ra, 1b
14:               slti         t5, t4, -1453
main_3:           jal          a4, 3f
0:                jal          s11, 9f
1:                jal          ra, 12f
2:                jal          ra, 4f
3:                jal          t5, 2b
4:                jal          s4, 5f
5:                jal          t6, 6f
6:                jal          ra, 13f
7:                jal          ra, 0b
8:                jal          ra, 1b
9:                jal          ra, 8b
10:               jal          t1, 14f
11:               jal          ra, 7b
12:               jal          ra, 15f
13:               jal          ra, 10b
14:               jal          ra, 11b
15:               or           sp, a4, a5
main_1:           jal          a4, 3f
0:                jal          ra, 2f
1:                jal          t1, 12f
2:                jal          s5, 10f
3:                jal          t1, 1b
4:                jal          sp, 14f
5:                jal          t1, 0b
6:                jal          ra, 17f
7:                jal          t1, 18f
8:                jal          ra, 9f
9:                jal          ra, 13f
10:               jal          gp, 16f
11:               jal          ra, 15f
12:               jal          t1, 19f
13:               jal          sp, 7b
14:               jal          ra, 21f
15:               jal          ra, 4b
16:               jal          ra, 8b
17:               jal          t1, 5b
18:               jal          ra, 11b
19:               jal          ra, 20f
20:               jal          ra, 6b
21:               andi         a1, gp, -1558
main_0:           jal          a4, 12f
0:                jal          t1, 2f
1:                jal          ra, 8f
2:                jal          ra, 15f
3:                jal          ra, 13f
4:                jal          sp, 0b
5:                jal          ra, 17f
6:                jal          t1, 1b
7:                jal          ra, 4b
8:                jal          ra, 19f
9:                jal          a6, 7b
10:               jal          ra, 18f
11:               jal          a4, 5b
12:               jal          s3, 14f
13:               jal          ra, 11b
14:               jal          t1, 9b
15:               jal          ra, 3b
16:               jal          t4, 20f
17:               jal          ra, 6b
18:               jal          ra, 16b
19:               jal          ra, 10b
20:               slti         t0, t5, 1735
main_4:           jal          a4, 20f
0:                jal          ra, 23f
1:                jal          t0, 7f
2:                jal          ra, 0b
3:                jal          t0, 15f
4:                jal          ra, 17f
5:                jal          gp, 26f
6:                jal          ra, 12f
7:                jal          s1, 2b
8:                jal          ra, 22f
9:                jal          ra, 19f
10:               jal          ra, 21f
11:               jal          t1, 9b
12:               jal          a1, 27f
13:               jal          ra, 24f
14:               jal          ra, 25f
15:               jal          a3, 6b
16:               jal          t1, 8b
17:               jal          t2, 5b
18:               jal          ra, 10b
19:               jal          ra, 13b
20:               jal          ra, 1b
21:               jal          t1, 16b
22:               jal          ra, 3b
23:               jal          gp, 14b
24:               jal          t1, 28f
25:               jal          ra, 4b
26:               jal          ra, 18b
27:               jal          ra, 11b
28:               or           a0, s1, s10
main_2:           jal          a4, 21f
0:                jal          ra, 17f
1:                jal          t1, 20f
2:                jal          t1, 11f
3:                jal          ra, 9f
4:                jal          t1, 19f
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          t1, 5b
8:                jal          s9, 10f
9:                jal          ra, 15f
10:               jal          t1, 2b
11:               jal          ra, 14f
12:               jal          s3, 23f
13:               jal          t1, 6b
14:               jal          t1, 12b
15:               jal          t0, 0b
16:               jal          ra, 18f
17:               jal          t1, 16b
18:               jal          ra, 24f
19:               jal          a7, 1b
20:               jal          gp, 13b
21:               jal          ra, 22f
22:               jal          a6, 4b
23:               jal          ra, 3b
24:               jal          t1, 25f
25:               and          s0, a5, t1
main_6:           jal          a4, 3f
0:                jal          t2, 2f
1:                jal          t1, 19f
2:                jal          ra, 21f
3:                jal          ra, 20f
4:                jal          t1, 15f
5:                jal          ra, 12f
6:                jal          t1, 16f
7:                jal          t1, 14f
8:                jal          t0, 5b
9:                jal          a3, 6b
10:               jal          ra, 17f
11:               jal          ra, 9b
12:               jal          a0, 22f
13:               jal          ra, 7b
14:               jal          sp, 8b
15:               jal          s7, 11b
16:               jal          ra, 23f
17:               jal          ra, 24f
18:               jal          ra, 1b
19:               jal          a7, 4b
20:               jal          gp, 18b
21:               jal          s2, 13b
22:               jal          ra, 10b
23:               jal          gp, 0b
24:               and          a6, s5, t2
main_7:           jal          a4, 9f
0:                jal          ra, 7f
1:                jal          s3, 14f
2:                jal          ra, 19f
3:                jal          t0, 17f
4:                jal          sp, 16f
5:                jal          t1, 4b
6:                jal          t1, 0b
7:                jal          t0, 1b
8:                jal          s7, 13f
9:                jal          a0, 6b
10:               jal          ra, 8b
11:               jal          ra, 12f
12:               jal          ra, 5b
13:               jal          t1, 21f
14:               jal          ra, 20f
15:               jal          t1, 2b
16:               jal          ra, 3b
17:               jal          t0, 15b
18:               jal          ra, 11b
19:               jal          ra, 10b
20:               jal          s2, 18b
21:               nop
                  blt          s6, s11, 6f
                  bgeu         t1, a2, 14f
                  bltu         tp, s10, 15f
                  blt          s11, zero, 4f
4:                beq          a7, s11, 15f
                  slti         ra, t6, 908
6:                srli         a1, s3, 20
                  xor          t0, gp, s9
                  bltu         a6, s9, 12f
                  lui          s0, 18818
                  bltu         ra, zero, 27f
                  ori          a0, a7, -1710
12:               srai         s11, zero, 16
                  slti         s1, s11, 1364
14:               or           s9, ra, s8
15:               bge          a5, t3, 33f
                  and          s7, s7, s7
                  bne          zero, a0, 25f
                  blt          gp, s11, 38f
                  beq          s11, s10, 37f
                  andi         s8, a7, 144
                  addi         s8, s10, 308
                  and          s8, zero, s11
                  andi         t5, a4, -1787
                  slli         ra, sp, 24
25:               slli         s3, gp, 24
                  slli         s2, t0, 26
27:               bgeu         t4, a7, 43f
                  slt          s7, t3, s6
                  bltu         a1, zero, 45f
                  bne          zero, sp, 39f
                  bne          a1, a4, 43f
                  slt          gp, s7, a2
33:               or           a2, s8, s0
                  srai         t2, t1, 3
                  and          s5, t1, a4
                  lui          a2, 561040
37:               srli         s8, ra, 7
38:               nop
39:               bgeu         sp, a2, 43f
                  slli         s6, s5, 15
                  bne          s2, s5, 42f
42:               addi         s0, a2, -249
43:               lui          t1, 146664
                  and          a7, a1, zero
45:               xori         t6, s1, -742
                  nop
                  sltiu        sp, t5, 1241
                  sltiu        s2, zero, 1142
                  beq          s4, zero, 62f
                  beq          s2, tp, 53f
                  bne          s8, s10, 57f
                  slti         a2, a0, -660
53:               bltu         a7, gp, 73f
                  slti         a6, t6, -1447
                  sltu         gp, a5, a3
                  lui          ra, 978378
57:               srl          s6, sp, s1
                  sra          t0, t0, a0
                  slli         s3, s9, 29
                  auipc        a1, 417387
                  slt          zero, t0, a2
62:               auipc        a0, 1014946
                  xori         s9, t0, -2033
                  auipc        s8, 557091
                  xori         t4, s10, 1903
                  slti         s2, s2, 413
                  lui          s0, 996858
                  bne          s7, s2, 72f
                  sub          s9, t4, s5
                  sub          ra, s9, s6
                  sra          a3, s10, gp
72:               srai         s3, s9, 25
73:               or           s9, a0, a5
                  auipc        a4, 225808
                  xor          t1, a3, s2
                  xori         a4, s11, -784
                  slti         s11, a6, 542
                  xor          a0, s8, tp
                  bne          sp, t4, 92f
                  srli         a7, a3, 2
                  srli         t0, s2, 4
                  lui          a6, 234481
                  blt          a7, a3, 88f
                  bgeu         ra, ra, 101f
                  xori         t3, sp, 1954
                  lui          s2, 731933
                  nop
88:               or           t3, s4, a7
                  sub          s5, ra, s0
                  sra          a6, a7, t1
                  sltu         s8, s8, s10
92:               sltiu        a0, s5, 1166
                  auipc        zero, 770850
                  blt          s8, s4, 97f
                  bgeu         t0, s10, 105f
                  auipc        a3, 79786
97:               slt          a3, s1, s10
                  lui          s8, 523056
                  ori          gp, zero, 1683
                  ori          s3, s4, 782
101:              srl          t3, t4, zero
                  srai         a7, t2, 7
                  slt          t1, a0, a0
                  bge          s3, zero, 118f
105:              xor          sp, a3, gp
                  slti         a2, s5, -2001
                  xori         a1, a2, -1132
                  slli         s0, s1, 21
                  srl          s8, t2, s7
                  auipc        sp, 615680
                  add          t4, s9, a1
                  sub          s0, t5, sp
                  addi         s8, gp, 1096
                  sub          ra, zero, a3
                  beq          t3, s1, 123f
                  bgeu         s4, a2, 121f
                  sra          s9, s6, a4
118:              bge          t5, s0, 121f
                  sll          s6, zero, s10
                  slli         s3, s9, 22
121:              and          s2, s9, s8
                  xor          gp, s8, t6
123:              ori          s8, a2, -873
                  beq          ra, s1, 144f
                  bgeu         s8, a2, 126f
126:              and          a6, t5, s6
                  bne          zero, a1, 147f
                  sltu         a3, s2, a7
                  bgeu         t0, a4, 143f
                  lui          t0, 655232
                  addi         s11, t1, 1490
                  addi         s4, s4, 1692
                  lui          s6, 197938
                  sll          a3, t6, s3
                  srl          t1, s0, s7
                  and          t6, sp, s5
                  srai         s2, a3, 19
                  sra          zero, s5, s9
                  srl          t0, a4, s4
                  srli         t0, t1, 31
                  and          a4, s4, a7
                  la           a0, sub_1
                  sltiu        s4, a2, -741
                  srli         s9, s2, 4
                  addi         a0, a0, -158
                  srai         s11, s10, 30
                  slti         a4, s3, -1915
                  slti         s0, s9, 1117
                  or           a7, s9, s11
                  add          sp, t4, a7
                  andi         t6, sp, -1867
                  slt          a1, s10, zero
main_j1:          jalr         a4, a0, 158 #jump main -> sub_1
                  andi         gp, zero, 1203
143:              sra          a3, a2, a1
144:              xori         a0, a4, -1181
                  ori          sp, ra, 511
                  sll          t0, t3, t1
147:              bltu         a7, s0, 152f
                  auipc        a2, 610027
                  sltu         s2, ra, t0
                  sll          a6, t5, gp
                  slt          a4, a7, s1
152:              and          sp, ra, s8
                  slli         s3, t1, 20
                  slti         s8, gp, -57
                  nop
                  blt          zero, sp, 161f
                  sra          s6, a1, s8
                  lui          s6, 30141
                  andi         s9, t3, 1512
                  bgeu         t6, a3, 161f
161:              addi         gp, ra, -2020
                  lui          t5, 275602
                  xor          a6, s4, zero
                  and          s7, s6, s2
                  or           a2, s11, s0
                  add          gp, t2, t3
                  bne          a5, t3, 178f
                  and          s3, t5, a2
                  addi         s5, gp, 1800
                  nop
                  slt          a2, s5, sp
                  beq          zero, s5, 188f
                  nop
                  lui          a7, 406674
                  and          a2, s6, a6
                  srl          t4, t6, s6
                  ori          a3, tp, -1619
178:              and          s6, t4, s2
                  slli         t0, gp, 1
                  slti         s2, t6, 1061
                  and          s1, t2, t4
                  slti         s2, s11, 1251
                  addi         a7, t3, -1648
                  xori         s9, s0, 590
                  sub          s11, s0, s5
                  andi         s4, a3, -1228
                  add          a1, t2, a6
188:              sltu         a2, a7, a7
                  or           s2, zero, t0
                  bne          s5, t6, 206f
                  slti         ra, t3, -701
                  sltu         s3, s4, s7
                  slt          t5, s9, a5
                  slti         t4, gp, -402
                  slt          s3, t1, s9
                  bltu         s0, a3, 208f
                  bge          zero, s9, 203f
                  bne          tp, a5, 215f
                  sra          t3, s8, s9
                  blt          t3, s9, 213f
                  slti         s3, t4, -328
                  srl          a0, a6, t1
203:              slti         a2, t6, -800
                  sltiu        t6, s1, -1642
                  sll          s9, a5, a7
206:              blt          s8, a1, 219f
                  blt          t5, s9, 211f
208:              srai         gp, t6, 21
                  bge          t4, a4, 213f
                  add          t3, t3, s1
211:              sltu         s3, s9, a6
                  nop
213:              srli         a2, ra, 21
                  slt          t6, t5, a5
215:              nop
                  bne          s9, a7, 219f
                  slti         s7, a0, 1589
                  lui          a6, 433527
219:              andi         s7, a3, 1697
                  sll          a6, a4, t5
                  srl          t2, tp, sp
                  lui          s11, 531305
                  or           a1, s6, s6
                  xor          t2, t6, t1
                  slti         t1, s11, -793
                  srl          ra, s6, s0
                  bgeu         a0, t4, 231f
                  blt          a3, a6, 238f
                  slti         zero, zero, 740
                  bltu         t0, t0, 238f
231:              and          t3, a7, t0
                  bge          a7, s3, 245f
                  lui          s8, 642524
                  sub          a6, s4, t6
                  add          t1, a6, t4
                  and          sp, a7, s6
                  sra          t3, s3, s4
238:              sub          s5, s10, s9
                  srl          a4, a6, t3
                  sra          s5, t5, a2
                  slt          a6, sp, s6
                  sra          s4, t6, a6
                  and          s7, t1, s10
                  xori         a3, a5, 180
245:              lui          t1, 295259
                  beq          s1, s10, 254f
                  slli         s6, t2, 18
                  xor          gp, s3, s7
                  blt          s10, a2, 262f
                  andi         t1, s7, 330
                  andi         s7, s5, -344
                  and          t1, a1, s2
                  beq          s4, t2, 271f
254:              bgeu         s1, t1, 271f
                  addi         a1, t5, 1974
                  bgeu         a5, a4, 265f
                  xor          a2, s5, s0
                  sltu         t3, a7, t4
                  addi         s7, t5, -472
                  bge          a1, sp, 266f
                  sub          t5, a2, a6
262:              bge          t0, s5, 280f
                  blt          t6, zero, 271f
                  sltu         a2, s6, t4
265:              sltiu        t5, s7, -124
266:              nop
                  slli         t2, s9, 18
                  bne          s9, s9, 281f
                  addi         a4, a1, 86
                  slti         t3, s1, -500
271:              andi         s11, t3, 26
                  lui          gp, 917239
                  lui          t3, 632421
                  sll          s7, a3, s10
                  lui          t5, 903225
                  add          s1, a1, t5
                  addi         s6, s9, 2022
                  sltu         t6, a7, gp
                  bge          t6, gp, 284f
280:              sltiu        sp, s4, 1303
281:              bltu         s10, t4, 294f
                  srl          s5, s2, s0
                  xori         s11, s10, -90
284:              auipc        a3, 562599
                  sub          gp, t5, a1
                  andi         s1, a3, 879
                  sll          t2, s6, a0
                  sltiu        s6, s8, -1930
                  sra          sp, s8, s6
                  addi         sp, tp, -1678
                  srli         a6, s3, 21
                  bltu         s8, a5, 293f
293:              sll          a7, s4, s7
294:              slli         a0, t6, 11
                  ori          s2, a2, -1671
                  slli         s0, a6, 25
                  sll          s6, t3, a7
                  beq          a3, sp, 308f
                  srai         s2, a7, 2
                  sltiu        t4, a2, 1107
                  bge          a2, tp, 304f
                  blt          t3, s3, 319f
                  sll          s0, gp, t4
304:              beq          a5, s11, 312f
                  sub          a7, s6, a1
                  and          ra, t2, s10
                  auipc        s0, 715570
308:              lui          s9, 835496
                  ori          a7, s4, 805
                  and          s0, s10, sp
                  sll          zero, tp, s10
312:              bgeu         ra, tp, 316f
                  and          a3, t4, t1
                  or           ra, t1, t6
                  bne          t0, t0, 321f
316:              add          t3, s5, ra
                  sub          s2, s1, gp
                  srl          a7, s10, a2
319:              sub          s1, s1, s9
                  lui          t3, 212445
321:              slli         t5, sp, 6
                  nop
                  blt          t3, s1, 340f
                  or           t0, s0, s8
                  srli         zero, gp, 11
                  bne          sp, s11, 330f
                  bgeu         t0, s10, 333f
                  slli         t6, tp, 25
                  srl          s0, s11, t1
330:              xor          s4, t4, s7
                  bge          s9, s9, 340f
                  nop
333:              srai         s8, t5, 25
                  srli         sp, tp, 19
                  add          s5, s9, s0
                  srli         a6, t5, 31
                  ori          t1, t3, -1996
                  bltu         s1, s1, 352f
                  blt          s7, t0, 357f
340:              or           s0, s1, s0
                  nop
                  xor          t2, gp, t2
                  add          t1, gp, t1
                  bgeu         s6, s11, 345f
345:              sra          s9, s2, s11
                  sra          s8, s2, a0
                  and          t2, a4, t4
                  blt          s10, a3, 361f
                  bgeu         tp, s7, 362f
                  srl          t3, t6, s6
                  sltiu        s5, s2, 1843
352:              beq          s10, s2, 372f
                  slt          zero, s3, s4
                  and          a3, sp, a6
                  nop
                  srai         a4, s10, 9
357:              and          t0, s9, zero
                  nop
                  sltu         a0, s6, t4
                  blt          s2, a6, 372f
361:              auipc        s8, 424522
362:              xori         a0, a1, -794
                  addi         t4, a3, 335
                  add          ra, s4, s2
                  sltiu        a4, t1, -475
                  add          a6, s5, t3
                  sltiu        ra, a5, 638
                  xor          s6, sp, t5
                  addi         s4, a1, 1306
                  nop
                  andi         s7, t0, -1971
372:              beq          s11, a1, 388f
                  srl          s4, ra, a5
                  andi         s4, t5, 1380
                  slti         t6, a6, 262
                  or           a1, t5, s6
                  blt          gp, s11, 381f
                  lui          s1, 904396
                  andi         s1, a0, 723
                  andi         s2, s11, 483
381:              sltu         a7, a7, a6
                  slli         s1, s10, 11
                  addi         s0, a0, 1835
                  ori          gp, a5, 468
                  beq          s6, t1, 401f
                  slt          s8, zero, sp
                  sltiu        t6, s4, -1624
388:              andi         s2, t5, -1487
                  blt          s4, s3, 409f
                  sra          s7, t0, s5
                  xor          t6, a3, a1
                  xor          a6, a3, s5
                  sltiu        a7, t0, 636
                  sra          s1, a3, a4
                  slt          s3, a0, sp
                  nop
                  bge          s6, s3, 402f
                  bge          s1, sp, 401f
                  slt          s8, tp, s2
                  addi         t2, s2, 1981
401:              add          s1, s8, a4
402:              sll          a6, t4, t5
                  add          s11, s6, s6
                  srl          gp, tp, t0
                  slti         s4, s11, 244
                  add          zero, a6, a3
                  bltu         t3, t6, 418f
                  andi         s8, s10, 416
409:              srl          zero, t5, gp
                  sltiu        s1, s4, 2020
                  xori         t1, t4, 729
                  slt          gp, ra, a5
                  xor          a2, a7, s9
                  and          a7, t4, t5
                  bltu         s8, t2, 433f
                  srl          t6, t1, t3
                  slli         s7, s1, 0
418:              or           gp, t5, a1
                  sra          t1, s6, t3
                  srai         s7, zero, 30
                  nop
                  bgeu         a2, t4, 435f
                  beq          a4, s11, 424f
424:              addi         s0, s4, 1742
                  bge          ra, a0, 431f
                  addi         s3, s7, 1921
                  srli         s4, s3, 10
                  xor          a7, a4, a0
                  and          s1, s4, t4
                  sra          t3, s3, s1
431:              srai         a7, s8, 31
                  slt          s8, sp, s8
433:              beq          s5, s5, 441f
                  ori          a7, t2, -301
435:              bltu         a3, t4, 440f
                  and          sp, zero, gp
                  lui          zero, 110406
                  and          s5, a1, ra
                  andi         s11, a4, 226
440:              bltu         s4, s3, 452f
441:              nop
                  bne          t3, ra, 458f
                  auipc        t0, 841367
                  bgeu         a3, tp, 464f
                  sub          gp, a6, t3
                  ori          a1, a1, -1478
                  sll          ra, a6, gp
                  sra          a7, a2, s0
                  sll          t2, s0, t1
                  slti         s8, tp, -1793
                  and          s0, s4, t1
452:              slti         t0, t5, -801
                  add          s1, t2, a7
                  or           t3, a4, a6
                  add          zero, s4, s8
                  ori          a6, tp, 1878
                  auipc        s6, 30259
458:              auipc        a1, 403496
                  bne          a4, s10, 465f
                  sub          t3, a5, a6
                  auipc        a6, 243944
                  sub          s7, s5, s0
                  or           gp, s7, s9
464:              lui          sp, 234694
465:              and          t3, sp, t3
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         a5, a5, -8
                  xori         a6, s0, 1172
                  sw           a4, 4(a5)
                  sltiu        s6, sp, 1088
                  andi         t1, s10, -632
sub_4_3:          jal          a4, 3f
0:                jal          ra, 7f
1:                jal          ra, 5f
2:                jal          t1, 10f
3:                jal          t1, 8f
4:                jal          s0, 15f
5:                jal          s4, 16f
6:                jal          s5, 17f
7:                jal          t0, 18f
8:                jal          ra, 4b
9:                jal          ra, 11f
10:               jal          ra, 12f
11:               jal          ra, 6b
12:               jal          t1, 9b
13:               jal          t1, 2b
14:               jal          t0, 0b
15:               jal          ra, 1b
16:               jal          s1, 13b
17:               jal          t3, 14b
18:               ori          s2, t4, 1271
sub_4_2:          jal          a4, 15f
0:                jal          ra, 4f
1:                jal          s7, 2f
2:                jal          t6, 13f
3:                jal          t1, 9f
4:                jal          s4, 14f
5:                jal          ra, 8f
6:                jal          ra, 0b
7:                jal          t1, 6b
8:                jal          ra, 1b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               jal          t1, 10b
12:               jal          t1, 11b
13:               jal          t1, 16f
14:               jal          ra, 12b
15:               jal          ra, 7b
16:               slt          s6, s8, s6
sub_4_1:          jal          a4, 10f
0:                jal          ra, 22f
1:                jal          t1, 12f
2:                jal          ra, 11f
3:                jal          ra, 15f
4:                jal          ra, 18f
5:                jal          ra, 19f
6:                jal          ra, 24f
7:                jal          ra, 13f
8:                jal          t4, 7b
9:                jal          ra, 1b
10:               jal          ra, 14f
11:               jal          t1, 16f
12:               jal          ra, 21f
13:               jal          ra, 9b
14:               jal          ra, 2b
15:               jal          ra, 5b
16:               jal          ra, 4b
17:               jal          sp, 0b
18:               jal          t1, 3b
19:               jal          ra, 8b
20:               jal          ra, 17b
21:               jal          ra, 23f
22:               jal          ra, 6b
23:               jal          ra, 20b
24:               sltu         a4, a0, sp
                  nop
                  or           a6, s7, s1
                  xor          t1, s7, s4
                  bgeu         a1, t1, 6f
                  srl          t6, s0, t6
                  slti         s2, s9, -927
6:                sltu         s3, sp, a1
                  auipc        t0, 939540
                  sub          zero, tp, s2
                  or           s8, s10, s0
                  bltu         a1, s0, 16f
                  blt          s0, tp, 17f
                  slt          s2, ra, a0
                  sub          t2, t0, a6
                  bne          a5, t4, 32f
                  sltu         a7, s11, a4
16:               srl          zero, ra, t1
17:               auipc        s0, 269998
                  lui          t4, 983290
                  srai         s11, a1, 18
                  sltiu        t5, tp, 1442
                  bltu         a2, t6, 27f
                  andi         s0, zero, 350
                  bge          s4, tp, 36f
                  srli         a0, a4, 22
                  sra          a6, a4, t3
                  slti         a3, s8, 1266
27:               nop
                  add          s8, s9, tp
                  bge          a5, ra, 49f
                  slt          t1, a5, s5
                  xori         s11, t0, -1609
32:               ori          zero, s1, -485
                  nop
                  sll          s6, a1, a5
                  addi         s0, s9, -1972
36:               sra          t4, s4, a2
                  slti         t2, a1, -418
                  slti         s8, a6, -996
                  slti         s8, a7, 452
                  add          s6, a6, s8
                  srl          sp, s5, s9
                  nop
                  nop
                  andi         t5, s9, 411
                  sltu         s11, tp, t5
                  bltu         t0, zero, 64f
                  xor          a0, s3, a1
                  andi         s7, s3, 493
49:               bltu         zero, t5, 59f
                  slti         sp, s1, 198
                  slli         t2, s3, 20
                  xori         a2, t5, 1042
                  sll          zero, a2, a6
                  lui          s3, 817792
                  bgeu         s0, a3, 72f
                  ori          zero, t3, 682
                  addi         a2, s9, 363
                  srai         t3, s10, 0
59:               sltiu        t0, s2, -1239
                  blt          a0, a7, 66f
                  sltiu        s2, a6, 1110
                  blt          t1, t0, 68f
                  or           ra, s8, s2
64:               andi         s8, t4, -436
                  sra          s4, s2, a6
66:               slli         t1, a4, 9
                  bne          t6, s6, 72f
68:               sub          s9, gp, a2
                  srl          t0, ra, a3
                  slli         a7, tp, 25
                  or           s6, ra, s1
72:               srai         t1, s1, 23
                  slli         s2, s10, 20
                  add          s4, a3, a3
                  bge          gp, gp, 94f
                  addi         s5, s4, 482
                  addi         t1, a3, -1511
                  srli         s4, ra, 23
                  bge          t4, a5, 93f
                  beq          t5, s1, 93f
                  sub          a0, s0, s4
                  andi         a7, ra, 1547
                  bge          s3, s7, 88f
                  addi         a2, t3, -21
                  slti         t4, t3, 584
                  sltiu        s4, t3, -1283
                  or           s9, t3, s11
88:               blt          a1, t3, 105f
                  srl          t0, gp, t1
                  xori         s0, s4, 1983
                  or           t5, a6, t6
                  slli         s9, a1, 21
93:               andi         a6, s9, -1924
94:               auipc        s6, 888722
                  sub          t3, a0, a7
                  auipc        s0, 481462
                  bgeu         t2, s4, 115f
                  bge          s2, tp, 118f
                  srl          t0, a0, s4
                  lui          zero, 196128
                  sub          s5, t4, a5
                  bltu         t2, s3, 104f
                  lui          ra, 416907
sub_4_0:          jal          a4, 6f
0:                jal          ra, 10f
1:                jal          t1, 5f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          ra, 8f
5:                jal          a6, 13f
6:                jal          ra, 9f
7:                jal          t0, 3b
8:                jal          t1, 1b
9:                jal          t1, 2b
10:               jal          s2, 4b
11:               jal          ra, 0b
12:               jal          t1, 11b
13:               and          t3, a6, t5
104:              sra          s3, t3, t0
105:              lui          t4, 118711
                  bge          s0, a6, 121f
                  slti         s0, a2, -848
                  sll          a6, a7, s11
                  xori         a6, ra, 1399
                  sltiu        s5, s2, 78
                  auipc        s9, 489175
                  addi         t6, t0, -264
                  or           ra, tp, a2
                  srai         t2, t1, 11
115:              srl          t3, a1, s6
                  slti         s8, a3, 1364
                  srli         t5, s1, 2
118:              xori         s5, s6, 11
                  addi         gp, s5, 1588
                  sltu         s8, t4, t5
121:              sra          zero, s10, a0
                  or           gp, s4, t6
                  beq          s5, a5, 131f
                  addi         t1, s7, 1518
                  blt          s7, sp, 128f
                  addi         s1, s0, -607
                  sltiu        s5, s7, -1108
128:              srl          t3, a7, t2
                  auipc        zero, 457900
                  srli         a7, tp, 20
131:              srai         s4, s6, 11
                  slti         s11, s1, 1991
                  sub          t3, s6, a6
                  blt          t0, t3, 146f
                  sra          s8, a2, t5
                  sltu         ra, a4, t4
                  sltiu        s0, t4, 114
                  slli         t5, s6, 28
                  beq          ra, s11, 151f
                  beq          s8, s11, 158f
                  bge          a7, s7, 147f
                  or           ra, s4, ra
                  srai         s1, s9, 3
                  nop
                  srai         zero, tp, 25
146:              nop
147:              slli         t6, s10, 11
                  sra          a6, s2, s2
                  bltu         gp, s2, 164f
                  add          ra, s5, t2
151:              slt          ra, s1, s7
                  bgeu         s7, s8, 156f
                  auipc        s8, 561995
                  auipc        s11, 452044
                  or           a2, gp, a1
156:              sub          s7, a2, tp
                  beq          t5, s2, 177f
158:              andi         a2, sp, 1820
                  blt          s9, a6, 169f
                  and          a7, s2, zero
                  bgeu         a4, t4, 173f
                  slti         s4, zero, -721
                  add          t3, a0, a2
164:              blt          a0, t5, 167f
                  bge          sp, s1, 183f
                  sra          s0, a2, a4
167:              slti         s4, s0, -879
                  or           a2, s9, a4
169:              ori          s0, t6, -1913
                  sll          t0, s6, a6
                  srai         t6, a6, 28
                  auipc        t5, 666507
173:              lui          s5, 344054
                  or           a4, ra, s8
                  sltu         s7, a0, a0
                  xori         s8, a3, -422
177:              auipc        s1, 712061
                  xori         a7, gp, 1807
                  or           s2, s0, s7
                  nop
                  xori         t0, a4, -714
                  srai         zero, a7, 15
183:              srli         zero, t2, 21
                  addi         t6, a0, -1604
                  bge          a1, s3, 193f
                  add          s1, a3, a6
                  bltu         a0, a7, 199f
                  beq          s0, tp, 193f
                  andi         t4, sp, -618
                  sra          s3, t6, ra
                  bgeu         t2, a0, 197f
                  lui          s8, 677300
193:              srl          s5, s0, a0
                  sltiu        t5, t5, 1863
                  add          a1, tp, s4
                  slt          a6, t4, s10
197:              slli         s3, gp, 4
                  nop
199:              and          a4, a6, a5
                  lw           a4, 4(a5)
                  addi         a5, a5, 8
                  add          t2, t2, s8
                  slli         t2, a1, 2
                  sra          s4, a7, s2
                  or           sp, a5, s8
                  slli         s4, a0, 16
                  slt          s9, s2, s2
292:              addi x20, x14, 1
292:              jalr x20, x20, 0
sub_3:            add          s5, gp, s11
                  addi         s6, ra, -375
                  addi         a5, a5, -24
                  sw           a4, 4(a5)
                  and          a1, t4, t5
                  sra          s5, zero, a0
sub_3_9:          jal          a4, 1f
0:                jal          t1, 6f
1:                jal          ra, 7f
2:                jal          ra, 0b
3:                jal          ra, 10f
4:                jal          ra, 5f
5:                jal          t1, 2b
6:                jal          ra, 9f
7:                jal          s7, 8f
8:                jal          ra, 4b
9:                jal          s6, 3b
10:               srai         t1, s3, 24
sub_3_7:          jal          a4, 2f
0:                jal          ra, 12f
1:                jal          ra, 11f
2:                jal          t1, 13f
3:                jal          ra, 21f
4:                jal          t1, 27f
5:                jal          t1, 25f
6:                jal          t1, 1b
7:                jal          ra, 4b
8:                jal          ra, 28f
9:                jal          t1, 7b
10:               jal          ra, 5b
11:               jal          ra, 15f
12:               jal          ra, 24f
13:               jal          t0, 18f
14:               jal          ra, 9b
15:               jal          ra, 8b
16:               jal          ra, 19f
17:               jal          ra, 20f
18:               jal          ra, 10b
19:               jal          sp, 17b
20:               jal          ra, 3b
21:               jal          ra, 0b
22:               jal          t1, 23f
23:               jal          ra, 14b
24:               jal          t1, 22b
25:               jal          s11, 16b
26:               jal          sp, 6b
27:               jal          gp, 26b
28:               slli         s7, a2, 22
sub_3_5:          jal          a4, 4f
0:                jal          ra, 10f
1:                jal          ra, 13f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          ra, 2b
5:                jal          ra, 11f
6:                jal          ra, 1b
7:                jal          s9, 14f
8:                jal          t2, 9f
9:                jal          ra, 3b
10:               jal          ra, 6b
11:               jal          t0, 7b
12:               jal          a0, 15f
13:               jal          a0, 12b
14:               jal          s7, 8b
15:               sll          zero, s6, a7
sub_3_16:         jal          a4, 0f
0:                jal          ra, 1f
1:                jal          t1, 3f
2:                jal          ra, 12f
3:                jal          ra, 7f
4:                jal          ra, 2b
5:                jal          t1, 8f
6:                jal          ra, 4b
7:                jal          t1, 10f
8:                jal          t1, 14f
9:                jal          ra, 5b
10:               jal          ra, 9b
11:               jal          ra, 6b
12:               jal          ra, 13f
13:               jal          t1, 15f
14:               jal          s8, 11b
15:               slti         s5, s2, 861
sub_3_1:          jal          a4, 6f
0:                jal          ra, 9f
1:                jal          ra, 17f
2:                jal          ra, 3f
3:                jal          t0, 12f
4:                jal          ra, 15f
5:                jal          a4, 13f
6:                jal          t1, 21f
7:                jal          ra, 0b
8:                jal          t1, 7b
9:                jal          ra, 19f
10:               jal          ra, 4b
11:               jal          ra, 18f
12:               jal          ra, 16f
13:               jal          ra, 14f
14:               jal          ra, 20f
15:               jal          ra, 11b
16:               jal          t1, 10b
17:               jal          ra, 22f
18:               jal          ra, 1b
19:               jal          ra, 2b
20:               jal          t1, 8b
21:               jal          ra, 5b
22:               slli         a7, s3, 14
sub_3_14:         jal          a4, 2f
0:                jal          ra, 8f
1:                jal          ra, 7f
2:                jal          t6, 5f
3:                jal          ra, 27f
4:                jal          s7, 3b
5:                jal          t1, 24f
6:                jal          ra, 25f
7:                jal          gp, 19f
8:                jal          ra, 9f
9:                jal          a2, 16f
10:               jal          ra, 12f
11:               jal          s11, 23f
12:               jal          ra, 4b
13:               jal          t1, 1b
14:               jal          s3, 20f
15:               jal          ra, 22f
16:               jal          ra, 6b
17:               jal          ra, 14b
18:               jal          ra, 10b
19:               jal          sp, 15b
20:               jal          t1, 26f
21:               jal          a6, 13b
22:               jal          a4, 11b
23:               jal          ra, 0b
24:               jal          s6, 17b
25:               jal          t1, 18b
26:               jal          t1, 21b
27:               add          a3, a1, sp
sub_3_15:         jal          a4, 10f
0:                jal          ra, 1f
1:                jal          ra, 2f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          s4, 3b
5:                jal          ra, 0b
6:                jal          gp, 11f
7:                jal          t4, 9f
8:                jal          ra, 12f
9:                jal          s3, 6b
10:               jal          ra, 5b
11:               jal          t1, 8b
12:               srli         t3, s6, 29
sub_3_3:          jal          a4, 14f
0:                jal          t3, 20f
1:                jal          t1, 2f
2:                jal          ra, 0b
3:                jal          t1, 18f
4:                jal          s8, 6f
5:                jal          ra, 17f
6:                jal          t0, 12f
7:                jal          ra, 1b
8:                jal          t1, 10f
9:                jal          ra, 15f
10:               jal          t1, 5b
11:               jal          t1, 19f
12:               jal          t1, 21f
13:               jal          ra, 11b
14:               jal          ra, 7b
15:               jal          ra, 8b
16:               jal          ra, 4b
17:               jal          ra, 3b
18:               jal          t5, 13b
19:               jal          ra, 16b
20:               jal          t1, 9b
21:               sltu         sp, a4, s9
sub_3_10:         jal          a4, 2f
0:                jal          gp, 13f
1:                jal          s1, 10f
2:                jal          t1, 6f
3:                jal          ra, 12f
4:                jal          ra, 3b
5:                jal          t1, 1b
6:                jal          gp, 7f
7:                jal          ra, 5b
8:                jal          t1, 0b
9:                jal          ra, 4b
10:               jal          s4, 11f
11:               jal          a4, 9b
12:               jal          ra, 8b
13:               xori         a2, a3, 768
sub_3_19:         jal          a4, 18f
0:                jal          ra, 5f
1:                jal          t1, 8f
2:                jal          t1, 19f
3:                jal          t1, 17f
4:                jal          t1, 0b
5:                jal          t0, 14f
6:                jal          t1, 16f
7:                jal          ra, 6b
8:                jal          ra, 13f
9:                jal          sp, 1b
10:               jal          t0, 4b
11:               jal          ra, 20f
12:               jal          ra, 15f
13:               jal          s0, 2b
14:               jal          t1, 12b
15:               jal          a6, 7b
16:               jal          sp, 9b
17:               jal          ra, 11b
18:               jal          ra, 10b
19:               jal          ra, 3b
20:               srl          t5, a6, a6
sub_3_12:         jal          a4, 6f
0:                jal          ra, 20f
1:                jal          a0, 8f
2:                jal          ra, 11f
3:                jal          ra, 16f
4:                jal          ra, 10f
5:                jal          s5, 21f
6:                jal          t1, 15f
7:                jal          ra, 2b
8:                jal          ra, 18f
9:                jal          ra, 4b
10:               jal          ra, 5b
11:               jal          s7, 9b
12:               jal          ra, 22f
13:               jal          s5, 1b
14:               jal          ra, 7b
15:               jal          t1, 19f
16:               jal          ra, 14b
17:               jal          s6, 13b
18:               jal          ra, 0b
19:               jal          gp, 3b
20:               jal          t1, 12b
21:               jal          gp, 17b
22:               lui          t3, 339011
sub_3_6:          jal          a4, 12f
0:                jal          ra, 4f
1:                jal          ra, 0b
2:                jal          ra, 8f
3:                jal          ra, 11f
4:                jal          s2, 2b
5:                jal          gp, 9f
6:                jal          ra, 13f
7:                jal          sp, 10f
8:                jal          ra, 7b
9:                jal          ra, 6b
10:               jal          ra, 5b
11:               jal          ra, 1b
12:               jal          t1, 3b
13:               xor          s1, a5, a2
sub_3_17:         jal          a4, 11f
0:                jal          ra, 10f
1:                jal          s6, 9f
2:                jal          t2, 8f
3:                jal          t0, 2b
4:                jal          s0, 1b
5:                jal          ra, 12f
6:                jal          ra, 7f
7:                jal          sp, 0b
8:                jal          sp, 6b
9:                jal          ra, 5b
10:               jal          ra, 4b
11:               jal          ra, 3b
12:               andi         sp, tp, 931
sub_3_18:         jal          a4, 1f
0:                jal          t1, 5f
1:                jal          s11, 9f
2:                jal          s8, 8f
3:                jal          ra, 11f
4:                jal          t1, 6f
5:                jal          ra, 7f
6:                jal          sp, 3b
7:                jal          t1, 10f
8:                jal          ra, 0b
9:                jal          gp, 2b
10:               jal          ra, 4b
11:               srli         s9, gp, 4
sub_3_2:          jal          a4, 11f
0:                jal          s3, 6f
1:                jal          t1, 14f
2:                jal          ra, 17f
3:                jal          t1, 5f
4:                jal          ra, 16f
5:                jal          gp, 8f
6:                jal          a4, 3b
7:                jal          t6, 15f
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               jal          t1, 18f
11:               jal          t1, 0b
12:               jal          t0, 19f
13:               jal          ra, 2b
14:               jal          t1, 9b
15:               jal          ra, 13b
16:               jal          gp, 7b
17:               jal          ra, 12b
18:               jal          gp, 4b
19:               sltiu        a7, s8, 539
sub_3_11:         jal          a4, 3f
0:                jal          ra, 7f
1:                jal          ra, 13f
2:                jal          a1, 10f
3:                jal          ra, 5f
4:                jal          ra, 14f
5:                jal          t1, 11f
6:                jal          ra, 2b
7:                jal          ra, 1b
8:                jal          ra, 9f
9:                jal          ra, 0b
10:               jal          t1, 4b
11:               jal          ra, 6b
12:               jal          ra, 15f
13:               jal          gp, 12b
14:               jal          t1, 8b
15:               jal          ra, 16f
16:               srai         sp, a2, 29
                  andi         a7, s7, 1411
                  sll          s0, a1, s7
                  srli         t2, s11, 5
                  slt          gp, t1, a4
                  add          s1, a3, s11
                  srl          a2, t0, a1
                  sll          sp, t2, t6
                  and          s7, t3, s3
                  sra          t1, t5, s11
                  andi         s2, t0, -543
                  sltu         gp, a2, s11
                  blt          a4, tp, 30f
                  beq          a3, tp, 13f
13:               or           t6, ra, a4
                  andi         s5, s2, 599
                  slti         t2, t6, -1055
                  slt          t1, s2, a0
                  srli         gp, t6, 30
                  ori          gp, zero, -427
                  sra          a6, t1, s6
                  srli         t3, t6, 22
                  nop
                  or           s11, s2, s7
                  nop
                  slli         gp, a4, 16
                  slti         s0, t6, -962
                  sltiu        t0, t2, -1537
                  lui          t1, 310347
                  xor          t2, s8, a3
                  slti         gp, s2, -1308
30:               ori          s3, s5, -1604
                  auipc        a7, 944831
                  slti         s1, s7, -251
                  addi         s4, s1, -319
                  ori          a3, s8, -1889
                  bge          a1, s10, 47f
                  bgeu         a7, a7, 44f
                  or           s7, a0, zero
                  sll          t3, t5, ra
                  bge          s2, s0, 49f
                  bge          s10, ra, 46f
                  andi         s11, s9, 102
                  and          s11, s11, s6
                  auipc        a0, 929679
44:               beq          zero, s1, 46f
                  blt          a5, t4, 62f
                  andi         s5, s4, -1408
                  sltu         a3, a5, s8
                  bgeu         s6, t1, sub_3_j8 #branch to jump instr
                  xor          s6, t0, s5
                  slti         a0, s6, -1186
                  nop
                  addi         a1, s1, 599
                  srl          t6, a0, a7
                  xori         t6, s1, -276
                  andi         s6, a6, -1350
                  add          a4, t0, s0
sub_3_j8:         jal          a4, sub_5 #jump sub_3 -> sub_5
46:               sltu         s2, t4, ra
47:               slli         a3, ra, 21
                  auipc        t5, 600091
49:               lui          s2, 162417
                  ori          s4, t2, -1722
                  andi         s4, a3, -221
                  addi         gp, s10, 812
                  auipc        s0, 657606
                  lui          s8, 457266
                  bgeu         t1, t3, 75f
                  sltu         s5, t2, s11
                  auipc        s11, 772900
                  sltu         s7, s6, a0
                  slli         a3, a3, 0
                  sra          s5, s6, s7
                  sll          t5, t5, s6
62:               sll          gp, a3, a5
                  ori          sp, a2, 195
                  sra          s0, a7, sp
                  andi         s5, ra, 1258
                  addi         t5, zero, -215
                  sra          a6, s1, t2
                  sll          s4, s9, t0
                  bltu         s0, s8, 73f
                  xori         t2, t5, 166
                  bne          t1, s4, 79f
                  addi         zero, a5, -1907
73:               srai         gp, sp, 21
                  add          t5, s2, t6
75:               or           t3, t1, s6
                  bne          a3, a7, 93f
                  beq          a3, s9, 96f
                  addi         t4, sp, 621
79:               slt          a0, a6, tp
                  lui          a4, 867018
                  sra          t5, s6, t6
                  ori          t3, t2, -636
                  slli         a6, s5, 0
                  slt          t4, s1, gp
                  sra          t5, a1, tp
                  ori          s4, s11, 883
                  srli         a4, a2, 31
                  sltiu        a6, t6, 804
                  lui          s4, 186471
                  or           t4, s5, a2
                  bge          a0, s5, 98f
                  xor          gp, a3, t3
93:               lui          ra, 114643
                  lui          s9, 531290
                  slti         s1, sp, -98
96:               sltiu        t5, t3, 1891
                  bltu         s10, a4, 113f
sub_3_0:          jal          a4, 20f
0:                jal          ra, 23f
1:                jal          ra, 7f
2:                jal          ra, 18f
3:                jal          ra, 10f
4:                jal          t1, 0b
5:                jal          a6, 21f
6:                jal          t2, 3b
7:                jal          ra, 26f
8:                jal          ra, 25f
9:                jal          s8, 12f
10:               jal          s7, 22f
11:               jal          s0, 5b
12:               jal          ra, 6b
13:               jal          ra, 15f
14:               jal          ra, 17f
15:               jal          t1, 28f
16:               jal          t1, 11b
17:               jal          ra, 27f
18:               jal          gp, 30f
19:               jal          t1, 4b
20:               jal          ra, 14b
21:               jal          t1, 8b
22:               jal          t1, 1b
23:               jal          ra, 9b
24:               jal          ra, 13b
25:               jal          t1, 2b
26:               jal          s9, 16b
27:               jal          ra, 29f
28:               jal          ra, 19b
29:               jal          a1, 24b
30:               xor          t5, t3, a3
98:               and          a0, a4, s3
                  slt          a7, s0, a0
                  or           t3, gp, a5
                  lui          gp, 574624
                  srli         t2, s10, 20
                  blt          a7, t1, 107f
                  ori          s3, s7, -78
                  srl          s11, s1, s11
                  slt          sp, s9, sp
107:              srai         ra, s2, 24
                  sra          sp, s7, s9
                  andi         s4, t5, -39
                  addi         s11, t3, 2026
                  sltiu        s11, a3, 1939
                  bge          s3, s9, 126f
113:              bge          ra, a5, 132f
                  beq          t5, tp, 116f
                  srli         s7, s1, 16
116:              bne          s6, gp, 128f
                  sltu         s3, a7, a2
                  xor          s5, t0, s11
                  bltu         a0, t0, 138f
                  sub          s11, zero, t6
                  addi         t0, ra, 73
                  or           s4, s1, s2
                  srli         s11, zero, 3
                  srl          s0, s4, a5
                  sub          t1, tp, s8
126:              bne          s2, a7, 137f
                  or           a0, s9, t5
128:              sll          t5, tp, sp
                  slli         gp, a0, 17
                  xor          t5, s11, s4
                  sltiu        s8, s6, 951
132:              srli         t1, s7, 31
                  bgeu         s9, s7, 138f
                  xor          s2, a3, s7
                  and          s8, s6, s4
                  addi         s2, a6, -1017
137:              addi         ra, t2, 179
138:              ori          t2, a7, 1730
                  bltu         t2, s8, 144f
                  andi         t0, a0, 681
                  xor          s2, s9, a3
                  lui          zero, 927917
                  srli         t5, s8, 28
144:              slli         s3, s1, 29
                  xori         t3, a3, -1643
                  srai         t3, s10, 9
                  slt          s5, s8, s8
                  sll          zero, s3, s10
                  andi         a3, gp, 173
                  slli         s2, t2, 6
                  beq          a2, s8, 171f
                  srai         a4, a3, 5
                  beq          s11, s8, 163f
                  srl          s2, t1, t1
                  xor          t1, s9, t2
                  sltu         t6, s7, a3
                  ori          s2, a0, -581
                  lui          a2, 841102
                  slti         t4, a0, -1999
                  bltu         tp, s9, 164f
                  bltu         ra, s3, 162f
162:              sra          a1, a0, gp
163:              xor          t0, s5, a3
164:              bgeu         s9, s3, 171f
                  slti         a1, a6, -228
                  or           a4, s7, s9
                  sltu         t3, t4, a2
                  xori         t5, a2, 228
                  srli         t1, tp, 26
                  andi         t5, sp, 1012
171:              beq          a6, t2, 191f
                  addi         s0, t4, -780
                  or           s6, t5, ra
                  sltu         a4, sp, a5
                  and          a2, t3, s9
                  andi         s8, t1, 1698
                  auipc        t6, 694225
                  bltu         s3, s10, 198f
                  bltu         a7, t3, 198f
                  ori          a2, a0, 1341
                  beq          tp, ra, 188f
                  sltiu        t4, s0, 567
                  or           sp, a7, t2
                  bgeu         s7, a7, 195f
                  slti         a6, s4, -1594
                  blt          s1, s7, 205f
                  slli         a4, s4, 24
188:              slti         t1, t4, -841
                  srai         sp, t6, 22
                  bne          t4, zero, 198f
191:              srli         a0, s4, 28
                  slt          s8, t1, t3
                  sll          s0, a6, tp
                  ori          s2, s11, 996
195:              bge          tp, s6, 215f
                  sub          a1, a5, t5
                  sltu         t1, ra, a3
198:              beq          s7, a6, 210f
                  addi         t0, a0, 477
                  sltiu        a4, a6, -1263
                  nop
                  slt          gp, ra, s4
                  slli         s4, s0, 3
                  bltu         s8, a3, 218f
205:              ori          s2, t6, 1755
                  sll          s5, s6, a0
                  sub          t6, s4, t5
                  slli         a6, s11, 0
                  ori          ra, a7, 551
210:              srai         s0, t1, 18
                  auipc        a4, 220007
                  andi         t0, s8, 1593
                  xor          sp, s10, a6
                  bge          s4, zero, 221f
215:              xor          a6, s0, s10
                  bge          a6, s7, 220f
                  addi         t4, a2, -1436
218:              addi         t6, a5, -668
                  bgeu         a0, s11, 224f
220:              sub          s6, a7, a7
221:              srai         s8, a7, 24
                  bgeu         a2, t6, 242f
                  slli         s2, s7, 4
224:              bne          t5, s6, 226f
                  lui          t6, 92291
226:              bgeu         s5, t2, 231f
                  srl          t3, a4, s5
                  or           t1, s9, a6
                  xori         t3, s0, 1719
                  and          t6, s9, a5
231:              bne          s5, s9, 235f
                  srai         s3, s2, 24
                  sltu         ra, a3, a7
                  sll          s3, t1, tp
235:              andi         s6, s10, -159
                  auipc        a2, 98495
                  xor          s11, t4, a3
                  bne          t3, t1, 254f
                  sub          a6, s11, t0
                  slt          s11, t6, s0
                  or           a3, t2, t4
242:              srl          s6, a2, t4
                  addi         s7, t4, 652
                  slli         a4, a6, 9
                  bne          s11, a0, 255f
                  slli         a1, a3, 19
                  lui          s7, 622602
                  add          s8, a6, s11
                  srai         t0, s4, 26
                  srli         t6, a0, 6
                  bne          a3, a2, 268f
                  srl          a7, a3, t6
                  xori         ra, s8, -1182
254:              ori          s0, s0, 256
255:              bge          tp, s11, 274f
                  sub          s8, t4, s2
                  slli         s7, a0, 7
                  bgeu         s11, ra, 270f
                  sltiu        t3, t1, 1058
                  sub          s2, a0, s7
                  beq          a3, s2, 262f
262:              bgeu         s4, t1, 268f
                  beq          ra, s11, 267f
                  bltu         t3, a4, 265f
265:              slti         s5, t3, 1506
                  sltu         a2, ra, s6
267:              beq          a6, s0, 284f
268:              bgeu         s3, a1, 287f
                  bltu         s4, a3, 279f
270:              sra          sp, s10, t6
                  nop
                  xori         s11, sp, -427
                  beq          s3, gp, 281f
274:              slt          s6, a5, a5
                  nop
                  beq          t3, a3, 278f
                  add          s11, s9, tp
278:              srai         t5, zero, 11
279:              or           s6, s3, s9
                  sll          s8, s2, s2
281:              slli         zero, s2, 28
                  bge          gp, tp, 302f
                  nop
284:              lui          s2, 561976
                  add          sp, tp, sp
                  sll          a7, a1, t0
287:              srl          zero, zero, a1
                  bne          s9, a3, 299f
                  sltiu        a6, a6, 501
                  addi         a3, tp, 1502
                  lui          t5, 712033
                  bltu         t2, s6, 300f
                  xor          s5, s6, s9
                  srl          s0, zero, s2
                  auipc        s1, 783934
                  xor          s9, a0, a2
                  ori          a1, s5, -1600
                  xor          s9, s0, t5
299:              auipc        s5, 53474
300:              sltu         s0, t3, a3
                  sub          a7, s1, s5
302:              sltiu        s11, sp, 2045
                  sub          s1, t3, a4
                  bge          s11, a0, 309f
                  slt          s4, gp, tp
                  auipc        ra, 700491
                  bne          t2, s3, 312f
                  or           a6, a3, sp
309:              beq          s5, t1, 321f
                  slti         s2, t6, 1588
                  slti         s8, t0, -309
312:              sltiu        s11, s11, 1628
                  srai         ra, t6, 18
                  slti         t2, gp, -1404
                  or           t0, t5, a6
                  nop
                  add          s5, s8, s6
                  bne          a6, s0, 334f
                  bgeu         s10, a4, 336f
                  or           s2, ra, ra
321:              srli         t2, ra, 24
                  xori         a1, tp, -1406
                  slti         s8, a1, 106
                  sub          gp, sp, tp
sub_3_4:          jal          a4, 11f
0:                jal          a4, 14f
1:                jal          t6, 2f
2:                jal          t1, 7f
3:                jal          gp, 13f
4:                jal          ra, 19f
5:                jal          t1, 20f
6:                jal          t1, 10f
7:                jal          ra, 0b
8:                jal          ra, 12f
9:                jal          s9, 6b
10:               jal          ra, 30f
11:               jal          ra, 22f
12:               jal          ra, 23f
13:               jal          t0, 16f
14:               jal          s3, 4b
15:               jal          ra, 24f
16:               jal          ra, 17f
17:               jal          ra, 29f
18:               jal          ra, 27f
19:               jal          ra, 3b
20:               jal          s4, 26f
21:               jal          t1, 25f
22:               jal          ra, 18b
23:               jal          ra, 21b
24:               jal          ra, 9b
25:               jal          t1, 1b
26:               jal          s4, 28f
27:               jal          s9, 5b
28:               jal          ra, 8b
29:               jal          ra, 15b
30:               add          t3, s1, a4
                  slt          s1, s1, t1
                  sub          t1, ra, s7
                  xor          a4, a7, s8
                  and          sp, a1, s1
                  addi         a4, a7, -1976
                  xor          t2, a5, sp
                  ori          s4, tp, 937
                  beq          s8, t3, 351f
                  or           s2, s2, s10
334:              sltiu        a0, s9, -1673
                  srl          zero, s9, zero
336:              bne          s1, s3, 338f
                  xori         ra, t1, 1495
338:              sltu         s3, sp, s7
                  xor          t5, a6, a5
                  auipc        t3, 1041678
                  beq          gp, tp, 355f
                  nop
                  bge          a5, sp, 350f
                  auipc        sp, 932580
                  bgeu         s5, a4, 364f
                  slti         t6, s9, -496
                  srl          s2, s2, a0
                  xor          t3, s4, gp
                  bgeu         t4, t1, 366f
350:              sltu         ra, t3, a3
351:              xor          s5, a6, sp
                  bgeu         a2, s0, 362f
                  lui          s5, 487444
                  bgeu         s4, a2, 361f
355:              sltu         a7, t6, s11
                  srli         a3, s11, 27
                  andi         s2, s5, 625
                  srai         sp, a5, 8
                  xori         a4, tp, -847
                  nop
361:              sll          zero, tp, s3
362:              sra          s1, s3, s2
                  beq          s9, s0, 367f
364:              or           a2, s9, s1
                  sltu         a4, a3, t0
366:              srli         a6, a6, 4
367:              bne          t3, s10, 373f
                  xor          gp, t0, t6
                  ori          s5, a0, -211
                  sub          a6, t0, s9
                  xori         s5, a5, 1753
                  xor          s4, ra, t4
373:              andi         s7, a7, 1838
                  sltiu        t6, a6, -1051
                  srai         s0, s1, 7
                  bltu         t6, a2, 386f
                  and          t2, gp, a0
                  sltu         s8, a3, s3
                  addi         t6, s4, -1000
                  or           s4, gp, a2
                  lui          t1, 22877
                  and          s9, s6, t3
                  and          s7, a5, a6
                  nop
                  sll          t6, t6, t0
386:              slti         s1, a1, -1698
                  beq          s2, a7, 407f
                  sub          a6, s3, a1
                  slli         s11, a0, 0
                  sub          t3, s1, tp
                  andi         s1, s2, 162
                  sltiu        s7, tp, -1574
                  auipc        a3, 166750
                  lui          t1, 746322
                  slti         sp, sp, -1263
                  ori          sp, t2, -12
                  auipc        t6, 950073
                  addi         s11, s9, -781
                  slt          gp, s3, t5
                  bge          t2, s6, 419f
                  andi         s0, s8, 1352
                  srli         a3, s7, 18
                  blt          a0, s1, 415f
                  xori         t2, s5, 1928
                  andi         t1, s8, 818
                  sltiu        s9, s11, 82
407:              bltu         a1, t1, 427f
                  srl          s0, zero, t2
                  and          a4, sp, ra
                  sltiu        a6, a3, -937
                  auipc        t5, 748450
                  or           a7, s6, a1
                  sltiu        t5, t1, 1421
                  slti         t2, t5, -700
415:              sub          t4, t3, t0
                  slti         a3, s7, -1271
                  sll          a3, a7, s1
                  sltiu        a6, s11, 1302
419:              slti         t2, a2, 1995
                  bgeu         s3, s2, 424f
                  blt          t1, s11, 425f
                  blt          t6, a6, 424f
                  blt          a0, a6, 424f
424:              sra          a4, t1, t5
425:              sltiu        s2, a4, 316
                  ori          t6, a6, -493
427:              add          a7, t2, s2
                  and          t6, a0, s5
                  sra          s2, tp, s9
                  andi         a4, s6, -42
                  bltu         t1, zero, 432f
432:              bgeu         tp, s5, 451f
                  bne          sp, s5, 441f
                  sll          t4, t4, ra
                  lui          t5, 45687
                  xori         s7, t1, -933
                  bne          a1, s9, 439f
                  xor          s7, a6, s4
439:              auipc        t5, 341508
                  bgeu         s9, t6, 459f
441:              slt          s11, a1, a3
                  slt          t3, t3, sp
                  slti         ra, s4, -1417
                  bge          ra, s6, 452f
                  lui          a1, 270656
                  sub          t5, s10, a6
                  slti         s7, s5, 1186
                  srli         a0, s2, 31
                  blt          s7, s3, 455f
                  auipc        s6, 429340
451:              xori         t3, a4, 1236
452:              sub          t3, s3, a6
                  ori          t2, t5, -1037
                  sll          a4, a4, s4
455:              ori          t0, s7, 1990
                  sltiu        s5, s1, 1225
                  ori          a6, t2, -1299
                  slt          t3, s4, s9
459:              bgeu         s4, s10, 475f
                  xor          t0, s1, tp
                  sra          a3, t4, t4
                  bge          s0, sp, 482f
                  bgeu         t1, s11, 467f
                  xor          s11, s4, a7
                  beq          s10, t2, 484f
                  xori         s0, s3, -490
467:              addi         s3, s3, -667
                  auipc        zero, 138519
                  blt          t0, s10, 483f
                  bne          s10, t2, 490f
                  blt          s11, t1, 488f
                  addi         s11, t6, -961
                  slli         s6, s8, 29
                  add          a4, tp, s10
475:              sll          a4, s3, s11
                  slli         t2, t6, 0
                  ori          s6, s1, 1039
                  xor          s1, t0, a2
                  sra          s6, t2, s8
                  bgeu         t2, sp, 492f
                  slti         a6, gp, -448
482:              bltu         s5, t4, 490f
483:              srl          a4, s1, zero
484:              andi         t2, a4, -120
                  srai         s1, a5, 22
                  bge          gp, gp, 496f
                  sub          ra, a3, s0
488:              srli         s3, t2, 9
                  bltu         a2, t1, 506f
490:              bgeu         s9, a3, 495f
                  bgeu         a3, s9, 502f
492:              bne          t3, t2, 504f
                  add          s9, a4, ra
                  sll          a3, s11, a0
495:              and          s9, s9, t0
496:              xori         t3, s4, -1350
                  sltu         s2, a1, a1
                  blt          a3, ra, 518f
                  xor          s4, s8, t6
                  blt          zero, s9, 519f
                  beq          a0, s1, 505f
502:              sub          s0, a5, s10
                  bne          s1, a6, 504f
504:              beq          s6, a0, 508f
505:              sub          s1, s7, tp
506:              slli         a6, gp, 31
                  and          sp, sp, t4
508:              bge          s0, a2, 515f
sub_3_8:          jal          a4, 5f
0:                jal          ra, 3f
1:                jal          ra, 2f
2:                jal          s4, 12f
3:                jal          ra, 6f
4:                jal          ra, 8f
5:                jal          t1, 4b
6:                jal          ra, 7f
7:                jal          ra, 11f
8:                jal          ra, 10f
9:                jal          gp, 1b
10:               jal          s9, 0b
11:               jal          ra, 9b
12:               jal          sp, 13f
13:               addi         a7, t1, -955
                  auipc        t4, 254080
                  sltiu        ra, sp, 872
                  auipc        t1, 726589
                  blt          t2, a5, 514f
                  xori         a6, s6, -921
514:              and          s7, s1, s4
515:              slli         s2, s9, 8
                  srl          a6, gp, ra
                  srai         s8, s1, 28
518:              sltiu        s9, a1, -1146
519:              or           ra, ra, s3
                  and          sp, s8, t0
                  beq          s6, s2, 522f
522:              nop
                  slt          s11, a2, t2
                  bge          t6, tp, 531f
                  bltu         t1, s8, 544f
                  srl          s8, s4, tp
                  slli         a4, a4, 4
                  srl          t3, s10, s11
                  auipc        gp, 653640
                  nop
531:              andi         t0, s0, -1068
                  bne          a3, t3, 537f
                  sltu         s11, ra, t5
                  sub          a7, a0, s10
                  ori          t2, s3, 1769
                  bgeu         s3, t6, 546f
537:              sltiu        a2, s9, -456
                  ori          s8, a1, 134
                  sub          t5, zero, s5
                  auipc        s7, 562666
                  srli         s4, s7, 4
                  bltu         t4, s1, 549f
                  or           a3, a5, t1
544:              srli         s1, t6, 29
                  addi         a7, t2, 285
546:              auipc        sp, 284015
                  srai         s1, ra, 12
                  slli         zero, s7, 14
549:              bge          t6, a6, 569f
                  slli         a4, a7, 20
                  andi         ra, t6, -661
                  lui          a1, 206520
                  sll          a1, s2, s3
                  bltu         s4, sp, 556f
                  bltu         sp, a2, 574f
556:              beq          s5, a3, 557f
557:              sltiu        s0, s10, -1312
                  xori         s11, s5, -177
                  sltiu        a2, a4, -1960
                  addi         s9, ra, -407
                  nop
                  auipc        t0, 612518
                  sltu         a0, a3, t0
                  blt          a4, t1, 581f
                  slt          s1, s0, t5
                  lui          a7, 309327
                  or           a4, ra, t1
                  srli         s6, s1, 4
569:              bltu         a4, sp, 573f
                  addi         gp, s2, -1388
                  bltu         a4, s11, 579f
                  slt          a6, t2, a0
573:              slli         s6, a4, 17
574:              slli         s5, t6, 17
                  srl          a2, s3, ra
                  srl          a7, a0, a3
                  slti         a3, gp, -809
                  sll          gp, a5, s1
579:              sra          ra, a1, s0
                  addi         t6, s11, -254
581:              sra          t6, s3, a3
                  srli         t4, ra, 19
                  sll          a0, a3, t1
                  auipc        t2, 563224
                  bne          s3, t2, 604f
                  and          s8, a3, s7
                  srl          s8, a6, a3
                  sub          s2, a4, zero
                  auipc        t5, 175996
                  srli         sp, s4, 4
                  blt          tp, s0, 592f
592:              addi         s11, t0, 1826
                  sra          s6, s8, tp
                  nop
                  and          s7, sp, a2
                  srl          s9, t0, t1
                  bltu         s4, s8, 616f
                  bltu         a2, t5, 606f
                  nop
                  bge          s10, a5, 612f
                  sltu         s9, a1, ra
                  ori          s0, a5, 317
                  sra          s0, t6, t4
604:              andi         s4, s2, 1940
                  slt          t1, a1, tp
606:              sltu         t0, ra, s2
                  beq          s0, s11, 611f
                  beq          t2, t2, 613f
                  nop
                  sltu         t3, a0, t0
611:              sub          a1, t1, s8
612:              xori         gp, s11, -107
613:              and          ra, t3, a6
                  sub          s7, t6, a2
                  add          t2, a1, s6
616:              andi         t1, a5, -394
                  sll          s1, t5, t5
                  addi         s0, a2, 1733
                  slli         s2, t1, 0
                  bgeu         s7, t1, 630f
                  addi         a0, gp, -917
                  beq          a2, s5, 626f
                  sltiu        a4, t3, -701
                  ori          sp, tp, -1179
                  sltu         a1, a4, ra
626:              bne          zero, a2, 632f
                  ori          s2, ra, -595
                  beq          tp, t1, 633f
                  sltiu        s0, s2, 1768
630:              bgeu         t5, sp, 649f
                  blt          t6, sp, 633f
632:              blt          t0, t2, 639f
633:              slt          a0, a2, ra
                  bltu         s2, s6, 645f
                  auipc        t6, 781251
                  lui          t2, 637909
                  slli         t6, s7, 19
                  blt          s5, a5, 650f
639:              lui          t2, 215417
                  sra          s8, s11, s7
                  bgeu         sp, s7, 651f
                  slli         a7, a2, 9
                  or           s8, s9, a0
sub_3_13:         jal          a4, 11f
0:                jal          t1, 13f
1:                jal          t2, 8f
2:                jal          s7, 10f
3:                jal          sp, 5f
4:                jal          ra, 9f
5:                jal          ra, 0b
6:                jal          ra, 19f
7:                jal          ra, 6b
8:                jal          ra, 15f
9:                jal          ra, 25f
10:               jal          t1, 7b
11:               jal          s1, 12f
12:               jal          t1, 14f
13:               jal          t1, 16f
14:               jal          t1, 27f
15:               jal          ra, 28f
16:               jal          ra, 21f
17:               jal          ra, 26f
18:               jal          ra, 4b
19:               jal          t1, 23f
20:               jal          t0, 3b
21:               jal          t1, 24f
22:               jal          ra, 2b
23:               jal          ra, 20b
24:               jal          ra, 18b
25:               jal          t1, 17b
26:               jal          ra, 1b
27:               jal          ra, 22b
28:               xori         zero, a7, -1246
                  and          ra, a0, s11
645:              slli         gp, s3, 18
                  srli         a4, t0, 12
                  add          a7, s9, a1
                  sltu         s7, t5, tp
649:              sub          s3, a0, s4
650:              ori          a3, s3, 1245
651:              andi         a1, t2, -1664
                  sltu         t6, s4, t0
                  slt          t4, t0, ra
                  sra          ra, t5, gp
                  sll          s2, ra, s1
                  sub          s9, a3, s10
                  auipc        sp, 636680
                  sll          gp, a6, a5
                  beq          a1, a6, 679f
                  slli         s8, gp, 12
                  add          a7, t6, s6
                  sltiu        s2, s7, -1999
                  bge          s8, s2, 683f
                  bgeu         s4, a1, 678f
                  xori         t6, t6, 1969
                  slt          a3, s7, t2
                  blt          s3, a5, 683f
                  sra          s8, a4, t1
                  bgeu         a7, sp, 686f
                  slti         t0, s1, 322
                  sltu         s7, a5, t5
                  slli         a3, s5, 27
                  bne          t6, t5, 680f
                  andi         s2, s0, 873
                  andi         a2, s4, 1595
                  srl          s11, s7, a1
                  srli         s1, a2, 31
678:              and          s9, a6, t4
679:              andi         s1, t4, 970
680:              slt          s9, a5, a5
                  or           s3, a3, s3
                  or           s2, t4, zero
683:              or           s4, s5, a2
                  xor          t5, a3, a1
                  bgeu         a6, a5, 696f
686:              ori          s11, t5, 201
                  blt          s8, s4, 693f
                  add          a7, a3, a6
                  bne          t1, t1, 709f
                  srai         t3, a1, 15
                  bltu         gp, s1, 710f
                  sll          a0, a2, ra
693:              auipc        t5, 845333
                  slli         a6, tp, 7
                  and          s9, s6, tp
696:              xor          a2, s11, s10
                  add          a6, ra, t1
                  sll          s7, t2, ra
                  lui          t2, 617620
                  sltu         s11, a5, t2
                  lui          s0, 666481
                  ori          a2, s3, 208
                  bne          a2, a4, 715f
                  bge          s6, t6, 705f
705:              slli         s9, t1, 17
                  beq          s9, a5, 714f
                  bgeu         a4, s8, 715f
                  bge          t2, gp, 718f
709:              slti         t2, t2, 1878
710:              xori         t5, sp, 212
                  ori          zero, t5, -1822
                  sll          a7, s7, a1
                  lui          t3, 554305
714:              ori          s1, s8, -834
715:              slt          s5, a7, t4
                  xor          s3, gp, sp
                  lui          a4, 416317
718:              slt          s1, t1, t6
                  bgeu         tp, s6, 736f
                  lui          zero, 205774
                  beq          a7, t1, 726f
                  and          t2, s8, t5
                  bgeu         ra, s9, 739f
                  or           t6, s8, t0
                  slti         s11, a1, -779
726:              or           t4, t5, s11
                  sra          t1, s3, t1
                  slli         a4, gp, 29
                  srai         s9, s3, 12
                  slli         t0, s2, 0
                  bge          a4, s10, 732f
732:              nop
                  bgeu         t0, s9, 738f
                  srl          a2, s6, s5
                  xor          t3, a6, ra
736:              andi         s3, s9, 1091
                  srl          t6, s5, t3
738:              or           t2, a0, a7
739:              srai         sp, t2, 11
                  srai         t1, s3, 24
                  xor          t3, a5, t3
                  sltu         a1, s6, t6
                  srli         t4, t3, 17
                  beq          t6, a5, 751f
                  blt          a7, a6, 749f
                  andi         t6, gp, -21
                  or           s5, a3, t6
                  and          a7, ra, s3
749:              xor          a7, s10, sp
                  addi         s0, a3, -260
751:              or           s11, ra, a4
                  bne          s4, s3, 754f
                  blt          s7, a0, 763f
754:              andi         s9, a2, 581
                  sltiu        sp, a2, 1716
                  sll          ra, a1, s5
                  addi         gp, a3, 457
                  sltu         t1, t2, s4
                  srai         t6, a2, 31
                  bge          s6, t0, 764f
                  or           gp, s0, tp
                  xor          s3, a0, ra
763:              lui          a6, 607041
764:              blt          s7, a6, 776f
                  auipc        t2, 209703
                  slt          t4, s9, t4
                  slt          a0, s3, ra
                  add          t6, a6, s6
                  srl          a1, t4, s8
                  lui          zero, 194257
                  andi         t1, s1, -313
                  sll          s2, a0, ra
                  bltu         sp, a3, 787f
                  srl          s8, a5, gp
                  slli         s3, s4, 11
776:              nop
                  nop
                  slti         ra, t4, -66
                  srai         s7, a2, 16
                  auipc        a3, 633339
                  bgeu         ra, s6, 801f
                  sltu         s4, t6, sp
                  bgeu         a0, a0, 802f
                  sltu         t2, ra, t5
                  srli         s8, s9, 9
                  srai         s2, s6, 19
787:              sll          s7, s2, s0
                  bltu         a0, s0, 790f
                  slti         t3, a1, 46
790:              bge          s10, a3, 809f
                  sra          a4, s9, a1
                  and          a3, sp, t4
                  add          a6, s3, s8
                  blt          s7, zero, 814f
                  srl          s9, t4, t1
                  slli         a1, t3, 10
                  slli         a7, s9, 29
                  sub          a0, s10, s4
                  addi         a2, ra, -1867
                  slti         s11, t5, -531
801:              or           a3, s0, s0
802:              and          t1, sp, t6
                  sra          s2, a4, t2
                  sub          s6, tp, s6
                  sll          a6, tp, a0
                  beq          sp, s1, 825f
                  auipc        s0, 890605
                  or           a6, sp, s6
809:              andi         a7, a3, -436
                  slti         t0, s3, -619
                  bge          sp, sp, 815f
                  and          a1, ra, tp
                  beq          t6, s2, 830f
814:              ori          a4, gp, 1173
815:              sub          s2, s6, s6
                  bltu         s1, s11, 824f
                  ori          a3, a7, 1899
                  sll          a3, a7, s1
                  srli         s6, s3, 18
                  lui          t3, 538337
                  xori         t0, zero, -782
                  addi         s6, t2, 810
                  srl          s4, a5, s11
824:              blt          a0, s7, 841f
825:              lui          t1, 886242
                  lui          a3, 776173
                  sltiu        s8, s8, 111
                  add          s0, t5, s4
                  slli         t3, s11, 27
830:              sra          t1, t0, a0
                  xor          s8, s6, a3
                  bne          sp, a7, 852f
                  srli         s5, t6, 16
                  sltiu        a3, a3, 987
                  or           s2, s1, s2
                  or           a2, a2, t4
                  add          s7, s2, a4
                  sll          s8, a0, sp
                  xori         ra, s3, 982
                  bge          a7, s3, 860f
841:              xor          s5, sp, s11
                  lui          t1, 639331
                  ori          a7, gp, -1976
                  slli         t1, tp, 17
                  slli         s4, a1, 29
                  xori         a4, a6, -1267
                  auipc        a7, 293198
                  beq          s8, t0, 850f
                  lui          t2, 752393
850:              nop
                  xori         s4, a6, -1879
852:              bgeu         gp, gp, 856f
                  add          a7, sp, t1
                  bgeu         s3, s1, 866f
                  andi         ra, a1, 980
856:              andi         ra, s2, -1082
                  add          t4, s2, s0
                  sltu         sp, s9, t2
                  sub          t6, s4, a2
860:              and          t0, s2, s2
                  slt          t5, t1, s1
                  and          t2, s3, s11
                  lui          a3, 221771
                  bltu         sp, a5, 871f
                  nop
866:              xori         a4, a1, 317
                  sub          zero, a2, s5
                  auipc        zero, 911745
                  srai         a3, ra, 10
                  bne          t1, s2, 878f
871:              xori         a7, a0, 55
                  xori         t3, gp, 1096
                  bgeu         s10, t0, 893f
                  slt          s9, s6, a6
                  auipc        t0, 74691
                  and          ra, t3, sp
                  addi         zero, t1, -760
878:              srai         t6, s5, 6
                  sub          s8, a7, s10
                  addi         a1, a5, -1023
                  or           s4, a4, t6
                  bgeu         gp, t2, 899f
                  sra          zero, t1, s11
                  addi         a0, t6, -522
                  sub          ra, a1, s4
                  sub          ra, s5, s10
                  auipc        a1, 19531
                  add          s4, t4, a6
                  andi         a3, gp, 379
                  srai         s9, a3, 20
                  sltiu        t3, a7, 503
                  srai         t6, t0, 31
893:              sll          s5, a6, t4
                  bgeu         s1, a6, 904f
                  bne          t0, s7, 900f
                  slt          ra, t3, t3
                  beq          s9, a5, 901f
                  and          s11, a0, t2
899:              slli         t1, a6, 6
900:              nop
901:              srl          a1, a3, s11
                  bltu         s2, sp, 913f
                  or           a0, a1, t6
904:              sll          a2, s3, s1
                  srli         s9, s5, 14
                  bne          zero, ra, 925f
                  blt          s2, s11, 926f
                  srai         s9, a6, 9
                  srai         s5, a2, 9
                  slti         s1, s5, 895
                  bne          s11, a1, 930f
                  bne          a4, s11, 931f
913:              add          s1, s11, s9
                  bltu         t6, sp, 916f
                  bltu         ra, t3, 925f
916:              srli         t5, s10, 0
                  srai         s4, t3, 7
                  xor          t5, tp, a1
                  andi         t6, s8, 1348
                  sll          a1, t0, s1
                  bgeu         a6, a6, 925f
                  slli         zero, zero, 15
                  bne          s8, a2, 937f
                  nop
925:              srli         s8, s2, 6
926:              slt          a1, s2, s7
                  nop
                  xori         a7, tp, 258
                  srli         t5, sp, 5
930:              blt          s2, a2, 946f
931:              andi         s6, ra, -145
                  xor          a0, tp, s8
                  sltu         s8, t2, zero
                  addi         s2, a0, 263
                  lui          a7, 1041522
                  srl          s3, s11, a7
937:              sltiu        a3, t5, -519
                  beq          s1, s7, 939f
939:              blt          s2, s1, 940f
940:              or           s3, a6, sp
                  xor          t3, s5, t4
                  bne          t2, s1, 947f
                  nop
                  ori          a2, t4, -885
                  andi         a0, s5, 2041
946:              or           t2, s7, s10
947:              slt          s9, s8, t4
                  slti         s3, s0, 1889
                  xor          s0, s9, t5
                  sll          zero, t0, zero
                  srl          a1, a1, zero
                  blt          s9, t4, 958f
                  bltu         t4, t1, 960f
                  bltu         s6, sp, 966f
                  andi         s3, s5, 1976
                  beq          a2, s2, 961f
                  slti         ra, s4, -1559
958:              auipc        a7, 352841
                  sra          s3, a5, a3
960:              sll          s11, a4, s7
961:              bne          t4, t1, 978f
                  xori         s7, t4, 403
                  sll          a1, sp, s8
                  bltu         s5, a3, 976f
                  or           s11, t5, ra
966:              add          s7, s5, s10
                  andi         s11, sp, 799
                  bge          s7, a0, 980f
                  nop
                  sltu         s6, gp, zero
                  xor          t2, a5, s3
                  or           a6, s9, zero
                  beq          t2, t6, 981f
                  bne          s7, t3, 990f
                  slti         a3, sp, -1441
976:              blt          s7, s10, 977f
977:              xori         t3, s2, -1052
978:              bge          s6, a1, 998f
                  srl          t0, s11, s3
980:              sltiu        a1, a5, -808
981:              slt          s0, s7, s7
                  ori          s0, t4, 1553
                  bltu         a3, a5, 1003f
                  beq          a3, s5, 988f
                  ori          t2, s8, 1863
                  auipc        s4, 530952
                  bltu         s7, zero, 1004f
988:              andi         s8, t0, -954
                  addi         s6, a6, 594
990:              srl          a2, a4, a6
                  sltiu        s7, gp, -92
                  bgeu         t4, zero, 994f
                  auipc        s8, 717180
994:              and          s8, a5, a3
                  sltiu        t0, a1, -1843
                  lui          s11, 823350
                  bltu         a4, a0, 1002f
998:              sra          sp, s11, sp
                  srl          zero, t1, s0
                  slli         s6, t5, 2
                  bne          s6, t0, 1005f
1002:             sltu         zero, a2, a1
1003:             nop
1004:             lui          sp, 311219
1005:             srl          s0, t2, s11
                  srai         s3, t3, 1
                  sra          s7, s7, t1
                  bge          a3, ra, 1014f
                  andi         s11, tp, 1068
                  lui          sp, 434323
                  addi         t1, t6, -1573
                  blt          s0, a7, 1014f
                  slli         s0, t0, 7
1014:             ori          zero, s0, -1209
                  and          a4, ra, ra
                  bgeu         ra, t3, 1018f
                  beq          s5, a0, 1018f
1018:             ori          s5, gp, -1595
                  or           a6, s5, t6
                  lw           a4, 4(a5)
                  addi         a5, a5, 24
                  slti         t0, t1, 1819
                  sltu         s3, zero, s11
1459:             addi x19, x14, 1
1459:             jalr x19, x19, 0
sub_5:            addi         a5, a5, -64
                  or           a6, a1, a1
                  sw           a4, 4(a5)
                  lui          t1, 468418
                  sltiu        s11, a3, -109
                  and          s2, s7, t2
                  or           t5, t2, a0
                  slli         a0, s0, 20
                  xor          a1, t2, a2
                  addi         s6, a1, -1067
                  slt          sp, s9, s2
                  add          ra, s1, s6
                  srli         s8, s11, 19
                  slli         zero, t0, 2
                  bne          s10, zero, 17f
                  srl          a0, t3, s10
                  bgeu         t3, ra, 6f
6:                or           s6, gp, t5
                  srai         s2, t6, 16
                  srli         t5, s5, 26
                  ori          t3, s6, 571
                  sra          t4, a5, ra
                  sll          t4, t2, t4
                  nop
                  andi         t3, ra, 477
                  sub          s11, zero, a6
                  srai         s7, a0, 29
                  bgeu         t6, a3, 17f
17:               and          s9, ra, ra
                  lw           a4, 4(a5)
                  addi         a5, a5, 64
                  add          s6, a7, t2
                  sll          s3, t1, s0
                  srli         sp, s6, 31
                  auipc        s1, 74251
                  sltu         s2, t3, s8
36:               addi x22, x14, 0
36:               jalr x22, x22, 0
sub_2:            or           sp, s4, s5
                  blt          tp, a3, sub_2_stack_p
                  ori          s6, s4, -939
sub_2_stack_p:    addi         a5, a5, -48
                  slli         a0, a2, 20
                  andi         t1, t3, -1740
                  sw           a4, 4(a5)
                  sra          s7, t3, a5
                  add          s9, s3, a2
                  sll          s5, s7, t1
                  sltiu        s5, s5, 871
                  sll          s8, a1, t2
                  srai         s3, t4, 27
                  srli         a6, s1, 14
                  sll          t6, a4, s4
                  lui          zero, 727377
                  add          s5, s8, t6
                  nop
sub_2_j7:         jal          a4, sub_4 #jump sub_2 -> sub_4
sub_2_11:         jal          a4, 6f
0:                jal          gp, 14f
1:                jal          ra, 3f
2:                jal          ra, 11f
3:                jal          s4, 0b
4:                jal          ra, 20f
5:                jal          ra, 4b
6:                jal          t1, 19f
7:                jal          s6, 16f
8:                jal          t1, 2b
9:                jal          a4, 8b
10:               jal          ra, 13f
11:               jal          s11, 7b
12:               jal          a3, 5b
13:               jal          ra, 12b
14:               jal          sp, 15f
15:               jal          t1, 17f
16:               jal          t1, 10b
17:               jal          ra, 9b
18:               jal          ra, 1b
19:               jal          ra, 18b
20:               slli         s0, s2, 23
sub_2_5:          jal          a4, 12f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          a0, 11f
3:                jal          ra, 7f
4:                jal          ra, 16f
5:                jal          s4, 14f
6:                jal          t1, 15f
7:                jal          ra, 17f
8:                jal          t0, 4b
9:                jal          s6, 13f
10:               jal          s4, 5b
11:               jal          ra, 8b
12:               jal          t1, 0b
13:               jal          sp, 1b
14:               jal          ra, 6b
15:               jal          ra, 2b
16:               jal          ra, 9b
17:               ori          t5, a0, -671
sub_2_10:         jal          a4, 20f
0:                jal          ra, 17f
1:                jal          t1, 15f
2:                jal          t0, 19f
3:                jal          ra, 5f
4:                jal          t5, 8f
5:                jal          ra, 10f
6:                jal          a7, 0b
7:                jal          gp, 12f
8:                jal          t1, 1b
9:                jal          ra, 14f
10:               jal          s3, 6b
11:               jal          ra, 16f
12:               jal          t1, 3b
13:               jal          ra, 11b
14:               jal          sp, 7b
15:               jal          gp, 22f
16:               jal          ra, 9b
17:               jal          a3, 4b
18:               jal          t1, 13b
19:               jal          ra, 18b
20:               jal          t0, 21f
21:               jal          t0, 2b
22:               andi         s8, ra, 1940
sub_2_14:         jal          a4, 10f
0:                jal          t0, 11f
1:                jal          ra, 3f
2:                jal          ra, 6f
3:                jal          ra, 4f
4:                jal          s2, 2b
5:                jal          ra, 24f
6:                jal          ra, 9f
7:                jal          t1, 14f
8:                jal          sp, 19f
9:                jal          ra, 21f
10:               jal          t1, 12f
11:               jal          ra, 18f
12:               jal          a0, 15f
13:               jal          ra, 22f
14:               jal          gp, 20f
15:               jal          t1, 16f
16:               jal          ra, 23f
17:               jal          t3, 0b
18:               jal          ra, 5b
19:               jal          ra, 7b
20:               jal          ra, 17b
21:               jal          s4, 13b
22:               jal          t1, 8b
23:               jal          a3, 1b
24:               nop
sub_2_12:         jal          a4, 11f
0:                jal          t1, 5f
1:                jal          ra, 13f
2:                jal          ra, 0b
3:                jal          s5, 8f
4:                jal          t0, 7f
5:                jal          t0, 10f
6:                jal          t1, 12f
7:                jal          t1, 1b
8:                jal          a3, 15f
9:                jal          ra, 4b
10:               jal          t1, 14f
11:               jal          ra, 6b
12:               jal          ra, 2b
13:               jal          t1, 3b
14:               jal          ra, 9b
15:               xor          s8, t3, s0
sub_2_4:          jal          a4, 8f
0:                jal          ra, 1f
1:                jal          ra, 19f
2:                jal          t5, 17f
3:                jal          a1, 6f
4:                jal          t0, 3b
5:                jal          ra, 2b
6:                jal          ra, 16f
7:                jal          s4, 10f
8:                jal          a6, 11f
9:                jal          a3, 14f
10:               jal          t3, 5b
11:               jal          s9, 4b
12:               jal          ra, 18f
13:               jal          ra, 7b
14:               jal          ra, 15f
15:               jal          ra, 0b
16:               jal          gp, 12b
17:               jal          ra, 9b
18:               jal          ra, 13b
19:               lui          a2, 728995
sub_2_20:         jal          a4, 10f
0:                jal          ra, 4f
1:                jal          t1, 14f
2:                jal          ra, 3f
3:                jal          t1, 12f
4:                jal          t1, 13f
5:                jal          ra, 7f
6:                jal          sp, 8f
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          ra, 5b
10:               jal          ra, 2b
11:               jal          ra, 0b
12:               jal          ra, 11b
13:               jal          ra, 9b
14:               xor          s6, s1, a5
sub_2_21:         jal          a4, 24f
0:                jal          ra, 28f
1:                jal          t2, 8f
2:                jal          t1, 20f
3:                jal          ra, 29f
4:                jal          s5, 16f
5:                jal          ra, 2b
6:                jal          ra, 22f
7:                jal          a2, 3b
8:                jal          ra, 15f
9:                jal          t1, 19f
10:               jal          t0, 5b
11:               jal          t1, 10b
12:               jal          s4, 25f
13:               jal          ra, 4b
14:               jal          ra, 1b
15:               jal          ra, 9b
16:               jal          t0, 6b
17:               jal          sp, 14b
18:               jal          ra, 7b
19:               jal          ra, 23f
20:               jal          t1, 17b
21:               jal          ra, 0b
22:               jal          ra, 12b
23:               jal          ra, 18b
24:               jal          t1, 26f
25:               jal          ra, 11b
26:               jal          ra, 27f
27:               jal          t1, 21b
28:               jal          ra, 13b
29:               xor          s11, ra, a2
sub_2_6:          jal          a4, 4f
0:                jal          ra, 7f
1:                jal          ra, 14f
2:                jal          t5, 0b
3:                jal          t1, 2b
4:                jal          ra, 11f
5:                jal          ra, 13f
6:                jal          ra, 1b
7:                jal          t1, 15f
8:                jal          ra, 3b
9:                jal          t1, 10f
10:               jal          ra, 8b
11:               jal          ra, 6b
12:               jal          ra, 5b
13:               jal          ra, 9b
14:               jal          t1, 12b
15:               srl          t4, t2, zero
sub_2_8:          jal          a4, 2f
0:                jal          t0, 12f
1:                jal          t1, 17f
2:                jal          gp, 11f
3:                jal          ra, 15f
4:                jal          t1, 10f
5:                jal          ra, 7f
6:                jal          t1, 8f
7:                jal          s4, 13f
8:                jal          ra, 9f
9:                jal          ra, 1b
10:               jal          s0, 6b
11:               jal          ra, 0b
12:               jal          ra, 14f
13:               jal          s9, 16f
14:               jal          t1, 5b
15:               jal          a4, 4b
16:               jal          ra, 3b
17:               slli         s3, t5, 21
sub_2_15:         jal          a4, 19f
0:                jal          ra, 9f
1:                jal          ra, 3f
2:                jal          ra, 14f
3:                jal          t0, 23f
4:                jal          ra, 29f
5:                jal          gp, 8f
6:                jal          ra, 7f
7:                jal          s3, 15f
8:                jal          ra, 0b
9:                jal          ra, 27f
10:               jal          t1, 18f
11:               jal          ra, 4b
12:               jal          ra, 6b
13:               jal          ra, 1b
14:               jal          gp, 20f
15:               jal          t1, 11b
16:               jal          a4, 2b
17:               jal          t1, 12b
18:               jal          t1, 5b
19:               jal          ra, 24f
20:               jal          t0, 21f
21:               jal          sp, 26f
22:               jal          t1, 28f
23:               jal          a1, 17b
24:               jal          ra, 10b
25:               jal          t1, 16b
26:               jal          ra, 22b
27:               jal          t1, 25b
28:               jal          ra, 13b
29:               sub          t3, zero, a6
sub_2_3:          jal          a4, 7f
0:                jal          ra, 11f
1:                jal          t1, 14f
2:                jal          ra, 3f
3:                jal          ra, 10f
4:                jal          s8, 18f
5:                jal          ra, 15f
6:                jal          t0, 8f
7:                jal          ra, 6b
8:                jal          ra, 9f
9:                jal          t1, 16f
10:               jal          t1, 0b
11:               jal          t0, 20f
12:               jal          ra, 2b
13:               jal          gp, 1b
14:               jal          ra, 4b
15:               jal          t1, 17f
16:               jal          ra, 13b
17:               jal          ra, 12b
18:               jal          t6, 19f
19:               jal          a7, 5b
20:               add          a4, tp, zero
sub_2_16:         jal          a4, 5f
0:                jal          ra, 7f
1:                jal          t1, 10f
2:                jal          t6, 11f
3:                jal          ra, 9f
4:                jal          ra, 1b
5:                jal          ra, 4b
6:                jal          ra, 8f
7:                jal          ra, 3b
8:                jal          gp, 0b
9:                jal          t1, 2b
10:               jal          ra, 6b
11:               jal          t1, 12f
12:               andi         t4, sp, 761
sub_2_17:         jal          a4, 8f
0:                jal          ra, 9f
1:                jal          t0, 3f
2:                jal          a4, 1b
3:                jal          ra, 6f
4:                jal          ra, 7f
5:                jal          t1, 0b
6:                jal          ra, 10f
7:                jal          t1, 2b
8:                jal          ra, 4b
9:                jal          ra, 11f
10:               jal          a6, 5b
11:               sltiu        s1, s9, -1627
sub_2_19:         jal          a4, 7f
0:                jal          ra, 5f
1:                jal          ra, 4f
2:                jal          t1, 3f
3:                jal          sp, 6f
4:                jal          t1, 9f
5:                jal          ra, 11f
6:                jal          t1, 0b
7:                jal          ra, 1b
8:                jal          ra, 2b
9:                jal          ra, 10f
10:               jal          s8, 8b
11:               and          s7, zero, s4
sub_2_2:          jal          a4, 8f
0:                jal          s5, 4f
1:                jal          t1, 3f
2:                jal          s3, 7f
3:                jal          t2, 12f
4:                jal          s6, 9f
5:                jal          ra, 1b
6:                jal          ra, 13f
7:                jal          ra, 0b
8:                jal          t1, 10f
9:                jal          a2, 5b
10:               jal          t4, 11f
11:               jal          ra, 2b
12:               jal          gp, 6b
13:               jal          sp, 14f
14:               xori         t3, s3, 632
sub_2_0:          jal          a4, 22f
0:                jal          ra, 14f
1:                jal          s8, 23f
2:                jal          ra, 11f
3:                jal          t0, 8f
4:                jal          ra, 17f
5:                jal          s1, 27f
6:                jal          s1, 15f
7:                jal          t0, 0b
8:                jal          ra, 16f
9:                jal          t1, 13f
10:               jal          ra, 9b
11:               jal          ra, 30f
12:               jal          t0, 28f
13:               jal          a4, 18f
14:               jal          t0, 12b
15:               jal          ra, 3b
16:               jal          a7, 1b
17:               jal          ra, 7b
18:               jal          ra, 4b
19:               jal          ra, 20f
20:               jal          t1, 25f
21:               jal          ra, 2b
22:               jal          ra, 26f
23:               jal          gp, 19b
24:               jal          ra, 21b
25:               jal          s1, 29f
26:               jal          t1, 5b
27:               jal          s5, 6b
28:               jal          ra, 24b
29:               jal          t2, 10b
30:               or           gp, t0, s10
sub_2_7:          jal          a4, 3f
0:                jal          s0, 6f
1:                jal          ra, 7f
2:                jal          ra, 4f
3:                jal          s6, 0b
4:                jal          ra, 13f
5:                jal          ra, 2b
6:                jal          ra, 12f
7:                jal          ra, 11f
8:                jal          ra, 9f
9:                jal          t5, 1b
10:               jal          sp, 5b
11:               jal          ra, 10b
12:               jal          s8, 8b
13:               sra          zero, s9, ra
sub_2_1:          jal          a4, 15f
0:                jal          ra, 21f
1:                jal          t5, 25f
2:                jal          ra, 3f
3:                jal          ra, 9f
4:                jal          ra, 20f
5:                jal          t1, 23f
6:                jal          ra, 18f
7:                jal          gp, 22f
8:                jal          ra, 16f
9:                jal          ra, 10f
10:               jal          ra, 7b
11:               jal          t1, 27f
12:               jal          ra, 6b
13:               jal          sp, 28f
14:               jal          ra, 13b
15:               jal          t4, 4b
16:               jal          t1, 19f
17:               jal          ra, 2b
18:               jal          ra, 14b
19:               jal          t1, 1b
20:               jal          ra, 24f
21:               jal          ra, 12b
22:               jal          t1, 0b
23:               jal          gp, 26f
24:               jal          ra, 8b
25:               jal          ra, 11b
26:               jal          ra, 17b
27:               jal          ra, 5b
28:               sub          t5, s5, t2
sub_2_13:         jal          a4, 19f
0:                jal          ra, 7f
1:                jal          ra, 0b
2:                jal          t1, 25f
3:                jal          t1, 15f
4:                jal          t1, 8f
5:                jal          ra, 21f
6:                jal          t1, 11f
7:                jal          ra, 14f
8:                jal          ra, 2b
9:                jal          t1, 18f
10:               jal          ra, 4b
11:               jal          t1, 22f
12:               jal          s11, 5b
13:               jal          gp, 6b
14:               jal          ra, 23f
15:               jal          s4, 1b
16:               jal          s1, 24f
17:               jal          ra, 3b
18:               jal          t1, 12b
19:               jal          ra, 17b
20:               jal          ra, 28f
21:               jal          ra, 27f
22:               jal          t1, 16b
23:               jal          t1, 13b
24:               jal          s5, 10b
25:               jal          t1, 26f
26:               jal          ra, 9b
27:               jal          ra, 20b
28:               sltu         gp, t5, a7
                  bne          a2, gp, 19f
                  sltiu        t1, t5, 507
                  beq          s4, s11, 19f
                  bge          a7, a0, 17f
                  slli         t6, t5, 16
                  add          t2, s0, t0
                  sll          a6, s11, t5
                  slti         t6, s10, 643
                  andi         sp, s5, 138
                  or           a1, sp, a7
                  sub          t6, s1, s9
                  srli         t1, sp, 16
                  addi         a0, sp, 1177
                  bltu         s5, a3, 28f
                  auipc        a1, 617245
                  auipc        s1, 233503
                  xor          sp, t2, t2
17:               slli         t1, s6, 30
                  sltu         t0, s4, s11
19:               slti         a3, a5, 145
                  slti         t3, sp, 322
                  blt          a6, t2, 22f
22:               andi         a3, s7, -1198
                  xor          s7, t2, s2
                  bge          a7, ra, 43f
                  sltu         s9, t5, t3
                  sub          s4, t5, sp
                  and          s8, s2, tp
28:               slt          s7, a2, a5
                  sub          a6, a0, s11
                  xor          s6, a3, t0
                  bge          t5, s6, 38f
                  xor          a2, t4, s11
                  andi         t0, s8, 1807
                  and          s6, t2, t4
                  andi         s4, a1, -1643
                  sltu         s5, t0, t6
                  sltu         sp, tp, s7
38:               sltu         t4, a2, a7
                  bgeu         sp, s6, 56f
                  slt          s3, s10, t5
                  srai         s7, a0, 17
                  slti         t2, a6, 38
43:               bge          a2, s4, 55f
                  sltiu        a3, t4, -474
                  or           a4, gp, s10
                  srai         gp, t3, 25
                  bne          s3, s5, 60f
                  sltiu        s5, s10, -1502
                  blt          a5, s5, 64f
                  sll          ra, tp, a3
                  slt          ra, a6, s0
                  add          t3, a7, a0
                  sra          t6, sp, ra
                  blt          ra, s7, 60f
55:               sltiu        a3, zero, 1519
56:               sll          s11, s8, a4
                  bltu         a3, a4, 58f
58:               bltu         s6, sp, 59f
59:               xori         s0, s3, 215
60:               sra          s5, sp, s11
                  sll          a0, s8, s2
                  beq          a4, gp, 65f
                  add          ra, a2, s8
64:               and          gp, t3, t2
65:               bgeu         s2, t0, 76f
                  xori         a4, zero, 1596
                  xor          s1, s6, a6
                  slt          s2, s10, s1
                  sltiu        s7, ra, 1107
                  slt          t2, sp, s11
                  srl          s9, a4, s0
                  xor          a7, a1, ra
                  andi         t2, s8, -1803
                  sra          t5, s9, a0
sub_2_9:          jal          a4, 11f
0:                jal          s4, 9f
1:                jal          t4, 13f
2:                jal          ra, 12f
3:                jal          s6, 8f
4:                jal          t1, 0b
5:                jal          ra, 6f
6:                jal          t3, 1b
7:                jal          ra, 3b
8:                jal          ra, 10f
9:                jal          t1, 2b
10:               jal          t1, 14f
11:               jal          s11, 4b
12:               jal          t1, 5b
13:               jal          ra, 7b
14:               auipc        t6, 826510
                  slli         sp, tp, 15
76:               bne          s9, tp, 85f
                  srai         s6, s9, 8
                  xor          t4, sp, a7
                  andi         a7, s10, 2014
                  nop
                  auipc        t4, 81354
                  beq          s8, gp, 101f
                  nop
                  bltu         s1, s2, 86f
85:               auipc        t2, 1005958
86:               slti         gp, a3, -1799
                  sltiu        t6, t4, 1847
                  addi         t6, s10, -1594
                  xori         gp, sp, -631
                  blt          s9, gp, 104f
                  bgeu         s4, t4, 103f
                  lui          t0, 21801
                  blt          t1, ra, 96f
                  slti         sp, a5, 441
                  srl          t6, s2, a7
96:               sra          a0, a3, s0
                  xori         s2, t4, -213
                  add          a0, s10, a4
                  andi         a1, tp, 1099
                  lui          t6, 652732
101:              xori         s9, s8, 794
                  slti         s9, s10, -354
103:              sub          ra, tp, s0
104:              bne          gp, t5, 121f
                  slli         a1, gp, 17
                  ori          t5, s6, -300
                  add          s0, t2, tp
                  lui          s0, 921730
                  bne          t3, s4, 125f
                  add          t3, s9, t4
                  srl          gp, s0, t6
                  xori         t0, s6, -2048
                  srai         s0, s6, 7
                  xor          t3, s6, s9
                  slli         a0, s2, 6
                  srli         t4, a0, 23
                  sltu         sp, a4, a3
                  or           t0, t6, a2
                  slli         s5, s4, 26
                  andi         s8, a0, -471
121:              bgeu         a3, gp, 122f
122:              or           ra, t0, s2
                  srli         a1, zero, 13
                  srai         s0, s4, 12
125:              sub          t4, a1, s2
                  bne          a6, t0, 132f
                  bne          t0, s1, 145f
                  or           s7, zero, a2
                  sltiu        s5, gp, 554
                  auipc        a0, 519728
                  srai         s0, s5, 10
132:              sll          a7, s6, tp
                  sltiu        a1, a7, -711
                  bgeu         a6, s11, 143f
                  bne          s0, a2, 150f
                  bne          t0, s2, 150f
                  slt          a3, s0, t0
                  srl          s5, ra, ra
                  xor          t0, gp, t4
                  bltu         t3, a7, 149f
                  slli         a4, s7, 31
                  bne          s6, t1, 157f
143:              sub          s4, zero, tp
                  sub          a6, a1, gp
145:              sra          sp, s11, t6
                  srai         s5, a3, 9
                  blt          tp, a3, 163f
                  andi         t0, s3, -660
149:              sltu         s1, sp, t6
150:              bgeu         t1, t3, 163f
                  slti         s3, gp, 1661
                  sll          t5, s0, s7
                  srli         s2, s8, 22
                  ori          t0, s1, -609
sub_2_18:         jal          a4, 14f
0:                jal          s7, 20f
1:                jal          a2, 5f
2:                jal          ra, 9f
3:                jal          ra, 4f
4:                jal          gp, 24f
5:                jal          ra, 6f
6:                jal          a4, 28f
7:                jal          s5, 18f
8:                jal          ra, 15f
9:                jal          ra, 16f
10:               jal          s2, 11f
11:               jal          s7, 1b
12:               jal          a4, 0b
13:               jal          s5, 3b
14:               jal          ra, 17f
15:               jal          t1, 19f
16:               jal          s11, 13b
17:               jal          ra, 12b
18:               jal          ra, 23f
19:               jal          t0, 26f
20:               jal          t1, 25f
21:               jal          t1, 8b
22:               jal          ra, 10b
23:               jal          ra, 21b
24:               jal          ra, 7b
25:               jal          s8, 2b
26:               jal          t1, 27f
27:               jal          ra, 22b
28:               add          s4, a7, zero
                  sra          a1, t0, a3
                  bge          t6, a3, 170f
157:              sltiu        sp, a6, -1953
                  blt          t2, a1, 159f
159:              or           s4, s7, s5
                  sltiu        a6, s11, -1656
                  srl          t0, s2, ra
                  sltu         s7, s6, s3
163:              sub          ra, a1, t5
                  slli         t2, a4, 17
                  sub          s7, s6, a4
                  nop
                  sub          t3, s4, t0
                  and          a1, a5, s7
                  or           t2, s5, s8
170:              srl          s6, s6, s4
                  xori         sp, ra, 1859
                  addi         zero, sp, -496
                  addi         s8, tp, -1616
                  sra          t0, s6, s11
                  bltu         t1, s1, 192f
                  bne          ra, s6, 182f
                  lui          s1, 394961
                  sll          a3, s9, a6
                  xor          s1, a4, s1
                  add          a2, a2, s2
                  ori          s7, tp, 962
182:              xor          a6, t2, gp
                  add          a4, a7, t5
                  add          t6, s1, s8
                  sub          ra, ra, tp
                  sltiu        a2, ra, 1236
                  bltu         t6, a4, 199f
                  and          s11, a5, a4
                  slli         s1, zero, 12
                  and          t6, s7, a1
                  blt          tp, s2, 210f
192:              slti         t6, t2, -832
                  xor          ra, a6, s10
                  slt          t5, s7, t1
                  srai         zero, s3, 14
                  lui          a4, 606194
                  sub          s8, gp, s0
                  bgeu         t4, ra, 217f
199:              and          t2, s8, t0
                  srli         s9, a1, 29
                  sub          t2, sp, sp
                  xor          a2, a0, ra
                  sltiu        gp, t0, 639
                  srli         s7, s9, 20
                  ori          s1, s1, 1151
                  sltiu        t0, s4, -1990
                  addi         t3, a7, -1219
                  beq          s5, gp, 222f
                  sltiu        s8, t6, -532
210:              srl          zero, s6, a3
                  slli         s5, s11, 13
                  addi         s8, zero, -486
                  addi         t3, t4, 137
                  sra          s7, s0, a4
                  beq          a5, zero, 218f
                  bgeu         a5, t0, 228f
217:              lui          a2, 998416
218:              bltu         t0, s2, 224f
                  bgeu         s5, s6, 220f
220:              slli         t4, s8, 25
                  srli         s11, a3, 12
222:              add          t2, a6, t6
                  and          a6, s11, ra
224:              srl          s9, t2, a7
                  srl          t2, a4, t2
                  nop
                  bltu         a3, sp, 229f
228:              sltu         t0, s1, s9
229:              xori         a1, s8, -1557
                  or           a6, s3, s10
                  bne          s10, ra, 240f
                  srai         gp, s5, 31
                  lui          s4, 776597
                  srai         s1, a3, 29
                  nop
                  lui          t6, 447566
                  beq          s0, s9, 238f
238:              beq          t3, s7, 249f
                  sltu         sp, s2, a5
240:              bgeu         tp, s3, 255f
                  blt          a0, s9, 255f
                  blt          t5, a1, 261f
                  beq          a6, a7, 261f
                  srl          t1, a0, t0
                  sltiu        zero, s4, -983
                  bltu         a4, t1, 253f
                  addi         t1, s4, 1921
                  add          zero, t3, s9
249:              slli         zero, s9, 19
                  bge          a1, a5, 267f
                  ori          a6, t5, 343
                  ori          a0, a5, 514
253:              slti         s9, zero, 586
                  blt          ra, ra, 255f
255:              xori         t1, t2, -1153
                  xor          s4, a0, a6
                  sltu         a0, s1, ra
                  nop
                  srl          s8, zero, s5
                  or           a0, ra, tp
261:              sra          s4, s6, a1
                  beq          t4, a7, 265f
                  and          zero, t3, tp
                  add          sp, t3, s3
265:              add          t5, gp, s6
                  xori         a1, a7, -206
267:              bgeu         t1, gp, 282f
                  add          t1, a6, t2
                  sltiu        zero, zero, 1852
                  bne          gp, t3, 287f
                  ori          a6, s6, -1038
                  nop
                  xori         t1, a4, 264
                  lui          a1, 120999
                  srli         s2, zero, 12
                  srl          a7, t5, s4
                  auipc        sp, 255031
                  add          s9, a7, a6
                  bge          t1, a6, 280f
280:              srli         t5, tp, 26
                  add          s9, tp, s5
282:              nop
                  srl          s5, s11, zero
                  slti         s8, a2, 1714
                  sll          a2, s0, s2
                  nop
287:              beq          s7, a5, 296f
                  sll          t4, t0, a0
                  add          gp, t4, t2
                  slti         s7, a5, 1911
                  srli         s7, ra, 14
                  sltu         a7, ra, t4
                  sltu         t3, a0, a3
                  or           s3, a6, t1
                  slt          a4, t1, t0
296:              slt          a7, t3, s4
                  blt          t5, t0, 316f
                  sra          a7, ra, s10
                  bne          s10, a5, 302f
                  bltu         t1, a7, 315f
                  sra          s11, t4, s5
302:              xori         a7, s2, 879
                  slti         t6, t4, -717
                  or           gp, s10, a6
                  sltu         a2, s2, t4
                  addi         s8, t0, -38
                  sltu         gp, a2, a4
                  srai         s6, t2, 2
                  blt          t2, a7, 328f
                  bgeu         s5, t5, 311f
311:              beq          s10, s7, 328f
                  or           t4, t6, s9
                  bltu         t2, ra, 315f
                  bge          a5, t6, 333f
315:              sra          s8, a4, s1
316:              bltu         a0, a2, 328f
                  lui          zero, 1034483
                  bne          s4, a1, 330f
                  auipc        ra, 642971
                  bge          t1, t4, 327f
                  slt          s2, t2, s2
                  xor          a7, zero, zero
                  sub          s11, a0, a3
                  slt          s2, gp, s7
                  auipc        zero, 912937
                  xori         s7, s8, 594
327:              andi         s2, s0, -94
328:              xori         t0, t6, 1276
                  xor          t3, a0, gp
330:              ori          a0, a6, -843
                  nop
                  sra          t0, a7, t0
333:              slli         a1, ra, 29
                  slti         a0, ra, -28
                  bne          a1, a3, 348f
                  srli         t0, t5, 30
                  slti         s8, s11, -889
                  sltiu        a1, a6, -923
                  ori          s5, a1, 1182
                  and          s1, sp, t5
                  sll          s1, s5, s4
                  slli         t1, a0, 25
                  bge          s8, s8, 361f
                  xor          s8, a5, s6
                  srl          s4, t5, a6
                  xori         s3, s9, 457
                  slli         t3, s1, 27
348:              add          s2, t0, s6
                  srl          s9, s6, a7
                  auipc        s8, 421565
                  bltu         s3, s9, 360f
                  bge          a1, s1, 367f
                  and          s0, t6, t0
                  srl          s8, a6, a2
                  sra          s7, s11, t6
                  sra          a4, zero, a0
                  slli         t3, sp, 28
                  or           t0, t6, a1
                  or           s9, t2, t2
360:              sltu         s8, t2, t4
361:              srl          t0, s8, a1
                  nop
                  slt          s5, s4, a0
                  sra          s4, gp, t0
                  sll          a7, s7, s11
                  nop
367:              slti         a3, t5, 1146
                  bltu         s11, s10, 382f
                  xor          ra, s5, s1
                  sltiu        s2, s7, -1535
                  bgeu         a5, s3, 387f
                  srl          a4, ra, s11
                  xori         zero, s8, -1359
                  bge          s7, s0, 388f
                  slli         a3, t6, 1
                  andi         s8, sp, 1794
                  xor          s3, t5, s0
                  sltu         s6, t0, t4
                  lui          zero, 985870
                  sltu         s11, t2, a0
                  or           s5, s9, s0
382:              bgeu         s1, t3, 385f
                  bltu         ra, t3, 400f
                  lui          s0, 328289
385:              srai         t0, s1, 0
                  and          s9, s9, s3
387:              ori          a6, s4, 1605
388:              srli         s3, a7, 7
                  sra          ra, zero, a7
                  bgeu         s6, a0, 401f
                  xori         a0, s0, -563
                  srai         t0, t0, 3
                  or           s4, zero, zero
                  slt          t0, t1, a6
                  sub          s9, s2, t6
                  bltu         a2, s6, 397f
397:              sltu         t5, a2, a4
                  andi         s9, ra, 1172
                  srl          s6, a0, s0
400:              or           s4, ra, a5
401:              srli         a7, t3, 24
                  srli         a3, t0, 23
                  or           zero, s9, s4
                  sub          s0, t2, s0
                  auipc        a3, 952330
                  sra          s0, s2, s4
                  lui          a6, 247567
                  nop
                  sub          zero, t3, t3
                  xor          t2, a7, t2
                  srl          t3, a1, a0
                  auipc        a1, 643194
                  slli         sp, a1, 13
                  sra          t5, t6, a0
                  bltu         t1, a1, 421f
                  beq          s8, t3, 422f
                  srli         gp, a5, 19
                  slt          s5, tp, s7
                  andi         s0, tp, 213
                  bne          t0, s0, 435f
421:              or           a7, sp, t5
422:              auipc        t5, 1017112
                  sra          s9, tp, s3
                  bgeu         s0, s5, 441f
                  lui          s9, 599088
                  blt          a4, a2, 440f
                  auipc        t4, 475329
                  xori         ra, a6, 330
                  and          a3, t2, s0
                  blt          s0, t0, 431f
431:              bltu         a7, a0, 437f
                  sltiu        s4, zero, -1184
                  sltu         s6, ra, t6
                  nop
435:              addi         s5, t6, -1108
                  addi         s6, t6, 414
437:              slt          t3, zero, s1
                  and          a6, a6, a0
                  slli         zero, s2, 21
440:              auipc        a0, 318940
441:              srai         s7, a4, 5
                  slt          s0, a0, t0
                  sub          sp, t4, s5
                  sra          s1, a6, t4
                  xor          a1, a1, a4
                  slli         t4, s8, 17
                  bgeu         a6, s9, 464f
                  slt          t6, s2, s7
                  sltu         zero, s10, s5
                  blt          s5, s6, 465f
                  sub          a4, gp, s11
                  add          s3, t6, a6
                  bne          s10, a3, 464f
                  bge          s8, a6, 457f
                  bne          s0, a7, 470f
                  bltu         a0, s0, 458f
457:              andi         ra, s10, 1963
458:              xor          s4, t4, a4
                  auipc        a7, 233905
                  or           s2, t0, t1
                  srli         s5, t0, 29
                  sltiu        t5, s4, 496
                  blt          s9, a6, 464f
464:              srli         t2, t0, 17
465:              or           t6, a6, t5
                  blt          sp, a1, 467f
467:              srli         s2, s11, 12
                  bgeu         t0, a7, 477f
                  bge          s7, sp, 481f
470:              slli         t1, a5, 0
                  blt          t6, a6, 490f
                  slt          sp, s4, s3
                  slt          a6, a2, a5
                  sll          s6, t6, s3
                  blt          a0, zero, 493f
                  slli         t2, gp, 18
477:              beq          s6, s2, 480f
                  bgeu         a1, s4, 495f
                  bgeu         ra, ra, 488f
480:              addi         sp, ra, -958
481:              beq          s6, t1, 495f
                  bltu         s9, a7, 496f
                  xor          t1, a0, t1
                  bne          a1, a4, 503f
                  slli         s7, t5, 5
                  or           s1, gp, a1
                  ori          t6, a3, 1820
488:              bltu         a4, t3, 489f
489:              addi         a4, s2, -635
490:              xor          t2, s5, s0
                  slt          t4, t3, t0
                  blt          s1, t2, 508f
493:              blt          s2, s6, 507f
                  bltu         s7, a3, 507f
495:              slt          a7, a5, a2
496:              nop
                  xor          s11, s0, t4
                  slt          s3, sp, s5
                  srli         a1, a7, 2
                  add          s11, t6, t3
                  slt          s8, a3, t6
                  bgeu         a6, a4, 503f
503:              sll          s6, a1, s2
                  and          a2, a7, a0
                  beq          a1, t5, 522f
                  bne          a1, s11, 525f
507:              srli         s4, s1, 17
508:              bge          s1, t0, 515f
                  bltu         s3, s2, 521f
                  sltiu        t6, s0, 317
                  nop
                  slli         a1, a7, 25
                  nop
                  bne          t3, s9, 520f
515:              bltu         t1, s9, 530f
                  bne          s0, t4, 531f
                  bgeu         s8, a1, 526f
                  sltiu        t0, a1, 1444
                  bltu         s3, s9, 526f
520:              sll          s3, s5, ra
521:              bltu         t2, a6, 524f
522:              lui          s8, 34875
                  bltu         gp, t4, 524f
524:              srl          t5, a0, t4
525:              srl          a1, a6, s11
526:              bltu         sp, s11, 529f
                  nop
                  nop
529:              srli         a7, s9, 1
530:              addi         a4, a7, -439
531:              slti         t3, t5, -1754
                  sub          zero, s8, ra
                  slti         a1, s11, -991
                  slti         s0, a4, 271
                  or           sp, s1, t3
                  sub          t4, t0, s8
                  nop
                  add          t4, t2, s2
                  and          ra, s4, s6
                  sltu         t2, t5, zero
                  srl          a7, sp, a5
                  srl          a2, s8, a2
                  sra          t6, t2, sp
                  addi         s8, s1, 1084
                  srl          s3, s6, s4
                  sub          t1, s3, zero
                  and          a2, s6, t0
                  blt          s1, s0, 562f
                  bge          a0, s9, 550f
550:              slli         s9, s5, 23
                  xori         a4, s9, -1443
                  bne          s10, gp, 569f
                  bltu         t2, a4, 571f
                  blt          t5, s3, 573f
                  srai         a1, s10, 25
                  or           t1, sp, gp
                  srli         t0, zero, 1
                  srl          t2, a3, t4
                  slti         t2, s1, 267
                  srli         s6, a0, 11
                  slt          s4, s8, s2
562:              blt          a2, s6, 574f
                  bgeu         tp, zero, 579f
                  sra          a2, t5, s3
                  bge          t4, a1, 576f
                  slt          a6, t3, tp
                  slli         a4, sp, 12
                  sub          s4, a6, s6
569:              bne          t4, s3, 575f
                  ori          t5, s9, 626
571:              slti         t4, a5, 826
                  beq          a7, zero, 578f
573:              auipc        s6, 274919
574:              srli         t0, t6, 24
575:              bge          a7, a4, 594f
576:              sub          a6, s11, a6
                  sub          sp, t4, zero
578:              slti         t4, s5, 1479
579:              srai         a0, s11, 9
                  slli         a0, t0, 1
                  auipc        t5, 930153
                  slt          a0, s3, t3
                  srl          s6, a0, s9
                  sll          s5, s11, sp
                  slti         a4, a1, 1413
                  slt          t2, s9, t5
                  beq          a5, a5, 604f
                  nop
                  sra          s3, a7, ra
                  andi         t0, a7, 1755
                  bne          t2, s1, 604f
                  sltu         gp, ra, ra
                  bltu         a6, a7, 608f
594:              nop
                  srl          a2, s10, t6
                  or           t6, a1, s10
                  sll          s5, s0, t3
                  addi         a2, s5, -1894
                  lui          a7, 72343
                  srli         zero, gp, 23
                  ori          a4, s4, -503
                  xori         t3, s1, -473
                  xori         t0, s0, -685
604:              bne          t1, a6, 606f
                  sll          a1, s8, a1
606:              slli         sp, s4, 28
                  srl          a3, s0, a2
608:              andi         a3, s6, -842
                  sra          s0, a3, a2
                  sltiu        a6, s10, 244
                  sltu         t3, gp, a7
                  bltu         t2, t0, 626f
                  ori          a0, a4, -24
                  beq          s3, s5, 631f
                  nop
                  lui          t0, 383233
                  sltiu        a2, s1, -1575
                  blt          tp, a2, 637f
                  bne          t1, a3, 631f
                  xor          a6, t0, t4
                  bgeu         gp, a6, 622f
622:              srl          a6, a4, t4
                  bltu         a5, a7, 624f
624:              sra          s8, s3, s1
                  beq          ra, a5, 639f
626:              slt          s5, a2, zero
                  xori         a4, t0, 837
                  blt          a1, sp, 637f
                  lui          a4, 400277
                  bgeu         t4, ra, 645f
631:              sll          s5, gp, a3
                  nop
                  beq          s1, a3, 635f
                  bge          a3, a4, 651f
635:              sra          s7, a4, s8
                  and          t6, s4, zero
637:              srli         a4, s4, 30
                  bltu         a0, a6, 651f
639:              srai         s6, s2, 16
                  xor          t1, sp, a5
                  sll          t1, a6, s1
                  and          s8, t0, s5
                  sltiu        a0, a4, -1428
                  slli         s11, t0, 21
645:              or           a2, t0, sp
                  sltu         s5, ra, a3
                  ori          s2, a1, 923
                  and          s4, t5, a7
                  bgeu         a7, t6, 665f
                  bgeu         s6, s4, 659f
651:              add          s2, a5, a6
                  slt          zero, t6, s6
                  sra          sp, s6, t1
                  xori         a2, t3, 1509
                  bge          s8, t0, 669f
                  sltiu        t6, s0, -1552
                  sra          zero, a0, a6
                  and          gp, t5, sp
                  slt          s9, t2, t1
                  slli         s9, s6, 20
                  sra          a0, t4, gp
                  slti         t2, t3, 427
                  xor          a7, a2, a3
                  ori          s6, s6, -1719
                  slli         s5, s7, 3
sub_2_j5:         jal          a4, sub_4 #jump sub_2 -> sub_4
                  sra          s8, s11, s4
                  xor          a3, zero, a3
659:              sltu         s8, a4, s4
                  andi         sp, t6, -1051
                  srl          t3, s7, a7
                  and          a2, s0, t6
                  sltiu        t5, a1, 929
                  add          s3, s9, t6
665:              slti         s2, t5, -730
                  sltu         s6, a4, s4
                  bge          s11, s8, 681f
                  sltiu        t2, a1, 1514
669:              sltiu        t4, t0, -543
                  xor          t2, sp, s2
                  srai         a3, a2, 23
                  beq          s7, a5, 673f
673:              addi         ra, a1, 1912
                  or           t1, zero, a4
                  xori         a2, s11, -374
                  or           ra, zero, t2
                  blt          s9, a2, 696f
                  sll          t3, t4, s6
                  auipc        s8, 1004067
                  or           s4, s6, s1
681:              sub          ra, a5, a4
                  blt          s7, s2, 699f
                  sltiu        a6, s7, -521
                  bltu         gp, t5, 702f
                  slli         s5, s5, 6
                  xori         t2, s3, 255
                  and          s2, a3, s9
                  xori         s7, s11, -141
                  sll          s0, s4, t5
                  addi         a3, sp, -1988
                  srli         s0, t4, 31
                  bne          t0, t0, 706f
                  ori          t6, a7, 334
                  xor          s8, s0, t2
                  or           t2, s9, t2
696:              srai         t0, t5, 24
                  sub          t4, a1, t6
                  xor          s3, a1, s0
699:              slli         a0, s1, 25
                  sra          s8, tp, s7
                  xor          a7, a2, t4
702:              sra          ra, s5, a2
                  add          s2, s6, s10
                  sltu         sp, a6, s6
                  auipc        t3, 810880
706:              srai         gp, s11, 0
                  nop
                  lui          t2, 717224
                  beq          tp, a5, 726f
                  add          a3, a3, s9
                  add          s5, s2, t0
                  addi         zero, t5, 1199
                  srl          s8, s8, tp
                  srai         s7, s6, 21
                  andi         s9, t5, -278
                  nop
                  bltu         s9, t4, 736f
                  xori         s6, t4, 1966
                  sltiu        a1, s1, -1725
                  sltu         a0, s6, a1
                  and          a7, t1, s3
                  addi         s5, t4, -1254
                  slli         a1, a2, 4
                  ori          s1, a4, -1931
                  sltiu        s5, zero, 1696
726:              ori          s2, s7, 1149
                  or           s7, zero, s3
                  bgeu         s11, s0, 734f
                  beq          s7, tp, 744f
                  lui          t4, 121842
                  sltu         zero, t6, sp
                  xor          t2, sp, s4
                  addi         t3, t1, -1347
734:              blt          a6, gp, 746f
                  lui          a2, 323222
736:              andi         s6, s2, -1090
                  sll          s2, s7, t1
                  andi         t0, s0, 591
                  sltiu        zero, a7, 1671
                  sll          a7, s11, t5
                  sra          ra, s5, sp
                  bge          gp, s6, 743f
743:              sltiu        t4, s0, -429
744:              ori          s7, a4, -1195
                  slti         s11, s6, 1436
746:              lui          t6, 7929
                  nop
                  or           s2, a0, ra
                  slti         s7, a7, 671
                  la           s1, sub_3
                  or           a7, s6, s3
                  slti         t4, t2, 389
                  addi         s1, s1, -851
                  addi         s8, a0, 1788
                  ori          a7, t4, 251
                  bltu         ra, s9, sub_2_j6 #branch to jump instr
                  xori         a7, s11, 612
sub_2_j6:         jalr         a4, s1, 851 #jump sub_2 -> sub_3
                  slt          a0, gp, s1
                  xor          s7, t4, a6
                  addi         a3, sp, 98
                  andi         s1, t1, 600
                  and          s4, t5, a5
                  bltu         s2, s10, 762f
                  addi         s4, a5, 1101
                  xor          t4, s10, t4
                  bltu         ra, s4, 775f
                  add          s8, t3, a3
                  slti         a7, ra, -1507
                  srli         s11, s10, 26
                  slli         a7, s8, 6
                  slli         t6, s1, 8
762:              bltu         s8, tp, 777f
                  andi         ra, a7, -317
                  xori         a0, s6, -1872
                  and          sp, t2, zero
                  andi         s0, a2, -44
                  srl          s5, s3, t1
                  srli         a6, s9, 3
                  addi         s11, a2, -1921
                  auipc        t3, 318484
                  bltu         s0, s4, 778f
                  auipc        t0, 1003950
                  srl          s7, t1, tp
                  bge          sp, s6, 780f
775:              andi         s7, s8, 1434
                  beq          a2, tp, 777f
777:              lui          zero, 955217
778:              ori          ra, s2, 801
                  beq          a4, a6, 791f
780:              sra          s4, s3, s5
                  and          a7, s7, a6
                  sll          t1, a6, sp
                  beq          t0, s3, 786f
                  andi         gp, a2, 2021
                  blt          sp, t4, 788f
786:              bltu         s1, a3, 797f
                  sra          a0, s0, a3
788:              auipc        gp, 1007815
                  srl          ra, s3, s3
                  blt          ra, tp, 791f
791:              slti         t0, t5, -1873
                  auipc        a0, 15344
                  srli         t3, a0, 15
                  blt          t2, gp, 809f
                  slt          s5, s4, s8
                  srli         a7, s3, 17
797:              andi         zero, s2, 1974
                  srli         t2, s8, 25
                  and          zero, sp, t0
                  srli         a0, ra, 2
                  slli         s2, s1, 19
                  slti         s3, t2, -1544
                  and          t4, gp, s4
                  sub          s2, s3, s8
                  xor          s4, a5, s7
                  bltu         s8, a5, 818f
                  addi         s3, t5, -1010
                  slti         s6, s11, -1685
809:              and          gp, s3, a5
                  xori         s2, s0, -633
                  ori          s11, s4, -1966
                  bgeu         t1, tp, 824f
                  and          t2, t6, ra
                  ori          s3, s5, 521
                  blt          gp, s6, 832f
                  bne          a6, sp, 832f
                  blt          t3, t5, 828f
818:              bltu         t4, s11, 833f
                  addi         s1, s0, -491
                  andi         a3, a6, 1556
                  bgeu         s1, a5, 835f
                  slti         s5, a0, -1326
                  nop
824:              sltu         gp, s3, t6
                  or           a1, t5, t6
                  sra          a3, s5, t1
                  sltu         a6, t1, ra
828:              nop
                  blt          s5, gp, 836f
                  sll          zero, s4, a1
                  slli         s1, s3, 6
832:              srl          s9, a0, t2
833:              srai         t3, a0, 16
                  slli         t2, s5, 5
835:              bge          a5, tp, 838f
836:              srli         s8, a2, 1
                  srl          t0, s8, t2
838:              sltu         s8, t3, t3
                  slti         t1, t3, -287
                  srli         s8, t4, 14
                  bltu         a7, s7, 842f
842:              sll          s3, s1, s7
                  auipc        s7, 1023635
                  bltu         a6, s6, 863f
                  addi         a1, t5, -336
                  sltu         a1, ra, t5
                  sltu         a1, s4, tp
                  beq          a5, t6, 849f
849:              bge          s8, s10, 858f
                  beq          ra, t1, 864f
                  sll          a0, a6, a0
                  sra          s3, t0, s3
                  bgeu         s4, a3, 856f
                  xori         t3, a5, -1553
                  sltu         a0, s1, a3
856:              srai         s5, a7, 14
                  auipc        s9, 995722
858:              srai         a1, a4, 10
                  or           a2, s8, t0
                  srl          a1, a7, a2
                  add          a6, ra, s7
                  sll          a1, a4, t2
863:              lui          t1, 1011884
864:              sub          ra, t4, t4
                  bltu         t2, tp, 884f
                  bge          s1, s10, 872f
                  bltu         s9, s6, 886f
                  slti         s0, a7, 2017
                  bltu         s1, a7, 875f
                  slt          t3, s0, a1
                  slt          ra, t4, s5
872:              xori         ra, a4, 556
                  xori         a6, a3, 1685
                  add          s3, s5, s2
875:              blt          s7, s3, 890f
                  nop
                  ori          a1, gp, 1405
                  srli         zero, t6, 27
                  srai         s7, s1, 4
                  addi         t4, a6, 138
                  sub          a0, s2, a3
                  and          s3, tp, s7
                  slli         a0, a0, 21
884:              auipc        t3, 236935
                  xor          s2, zero, a0
886:              sra          s0, t2, s0
                  beq          t0, zero, 896f
                  lui          t3, 573030
                  beq          t0, a1, 891f
890:              sra          ra, gp, a6
891:              slli         t0, s2, 31
                  beq          t4, gp, 909f
                  srl          gp, t3, t3
                  slt          a3, t0, a5
                  slt          t6, s3, s1
896:              and          s11, t2, s1
                  srl          t3, a3, s1
                  slt          t1, s8, ra
                  srai         s9, s3, 11
                  blt          s9, s7, 913f
                  blt          sp, a3, 919f
                  xor          s8, s10, a1
                  sub          t0, s5, s1
                  slli         t0, s5, 15
                  nop
                  lui          s5, 611629
                  beq          a3, s10, 922f
                  sra          gp, s1, s1
909:              sra          s0, ra, a6
                  bge          t2, t3, 927f
                  bgeu         s3, s9, 912f
912:              xor          a3, tp, gp
913:              slli         t3, a0, 30
                  beq          a4, gp, 915f
915:              slti         s8, t3, 611
                  or           s7, a3, t3
                  lui          t0, 658454
                  sltu         s1, a2, a3
919:              srli         ra, s10, 25
                  sltu         s9, t2, t2
                  add          a7, zero, s1
922:              sltiu        s0, gp, -631
                  add          s8, s4, t6
                  or           t6, s9, s5
                  bgeu         zero, s2, 939f
                  sltu         t1, a0, s9
927:              blt          s8, t5, 946f
                  xor          s4, a7, sp
                  blt          a5, a3, 946f
                  ori          t1, a5, 1493
                  blt          s2, zero, 943f
                  xori         a2, gp, 1710
                  auipc        s11, 735136
                  srli         s9, s2, 0
                  bne          s11, s5, 949f
                  sra          a0, a4, t3
                  sll          a1, s2, a7
                  andi         s3, t3, -1775
939:              sltu         t3, t6, ra
                  andi         s1, s6, -1777
                  beq          a4, s2, 943f
                  bltu         s1, t4, 948f
943:              sra          s0, t3, a6
                  bge          t5, s6, 957f
                  and          s5, a2, s8
946:              sltu         a2, s1, a0
                  slli         s7, a0, 18
948:              sra          a7, s4, t1
949:              lui          s1, 657421
                  beq          a5, t5, 966f
                  sltiu        zero, s6, 228
                  srli         t2, s3, 28
                  slli         a7, a2, 30
                  or           s7, zero, a3
                  ori          a0, ra, -266
                  sltiu        a2, ra, 1536
957:              sltiu        s0, a4, -1983
                  sub          a3, t2, a5
                  sltu         a4, a3, gp
                  bge          t1, a7, 974f
                  add          a1, a5, a4
                  sltiu        gp, sp, 354
                  xor          s11, a1, t4
                  bne          t1, a7, 983f
                  srl          s3, a5, s11
966:              sra          t6, s4, t5
                  auipc        s7, 740623
                  sub          s6, s9, s11
                  bge          s4, a3, 988f
                  sltu         t0, t6, t0
                  xor          a2, gp, zero
                  addi         t2, s11, -1502
                  slti         t1, a4, -351
974:              beq          a1, t4, 975f
975:              slt          t3, s4, s11
                  andi         t3, gp, -415
                  or           s7, tp, t2
                  or           t4, tp, sp
                  auipc        s5, 566773
                  lui          t5, 907534
                  nop
                  bgeu         a1, t0, 997f
983:              sub          a4, t3, a1
                  bltu         a1, t3, 999f
                  blt          s6, s1, 991f
                  auipc        s6, 724634
                  slt          s2, a3, t0
988:              bge          t5, a4, 1000f
                  and          s6, t2, a2
                  and          a7, t0, tp
991:              sra          a6, a2, a0
                  srai         a0, ra, 3
                  sltu         s2, s10, a7
                  slti         t2, t2, -1869
                  srai         t1, a1, 30
                  slt          t0, a3, s0
997:              srli         t1, sp, 4
                  slli         a4, zero, 23
999:              sltu         t0, a5, zero
1000:             sll          t3, ra, s9
                  slti         sp, t1, 1455
                  lui          s0, 691725
                  srai         s2, s5, 24
                  nop
                  beq          t4, s3, 1014f
                  auipc        s11, 903473
                  auipc        zero, 85096
                  srli         s2, a2, 5
                  xor          s6, s6, a0
                  sltiu        a3, t2, 2027
                  sra          t1, a5, a7
                  sltiu        a4, s5, -1528
                  bne          gp, s2, 1014f
1014:             bne          s7, t3, 1021f
                  beq          s4, sp, 1030f
                  slt          a1, t6, a7
                  andi         t4, a5, 246
                  sltu         a3, t1, gp
                  bltu         a6, t1, 1020f
1020:             bne          t3, s2, 1037f
1021:             xori         sp, t2, 653
                  sltiu        gp, ra, 1821
                  bltu         t3, a2, 1024f
1024:             bgeu         s1, a5, 1027f
                  sra          t3, s2, s5
                  add          s2, ra, s9
1027:             slti         s11, s5, -118
                  xori         a0, t4, 311
                  lui          t5, 368353
1030:             bge          s7, s3, 1041f
                  srl          s11, s11, s7
                  sll          zero, a1, t6
                  andi         a0, a0, 1413
                  sltiu        s0, ra, 1507
                  sltiu        a7, t4, -974
                  sltiu        sp, sp, 396
1037:             sub          sp, s8, s11
                  bge          zero, a4, 1056f
                  xor          a4, s7, s7
                  srli         a6, a2, 18
1041:             srl          t3, s6, t5
                  beq          ra, s7, 1045f
                  andi         zero, a3, -58
                  sltiu        sp, s7, 1125
1045:             add          s8, s6, a5
                  beq          tp, a5, 1060f
                  sltiu        s4, a7, 1818
                  bltu         sp, a7, 1065f
                  beq          s6, t1, 1058f
                  slt          s1, a2, a3
                  addi         a7, a1, 1311
                  and          s0, s0, a5
                  xori         a7, tp, -1141
                  bge          a5, t2, 1070f
                  andi         a4, a4, -609
1056:             add          a4, tp, s10
                  srai         s0, s9, 28
1058:             add          t1, a7, s8
                  slt          t4, a0, s5
1060:             slti         a3, gp, -1185
                  sra          s8, zero, s2
                  sltiu        zero, t6, 1355
                  srli         s0, s3, 2
                  or           sp, s3, ra
1065:             andi         s1, s0, 1730
                  sra          t4, s9, a4
                  bltu         s11, gp, 1070f
                  or           a7, a3, s4
                  bne          s1, a7, 1078f
1070:             slti         a1, s7, -1831
                  addi         t5, a3, 944
                  andi         a3, tp, 1201
                  bgeu         a1, s4, 1074f
1074:             slti         a3, s0, 1803
                  bgeu         s10, t1, 1081f
                  srai         s1, t2, 24
                  xori         zero, s9, 1512
1078:             beq          s7, a6, 1092f
                  sra          a3, s1, s0
                  slt          a6, s10, a7
1081:             sltu         t3, t0, s10
                  ori          a0, s6, -391
                  bgeu         a1, a5, 1095f
                  sll          sp, t4, gp
                  xori         sp, t1, -1074
                  bne          t6, t3, 1097f
                  sltiu        s5, sp, -1993
                  slti         t0, a6, 1078
                  lui          zero, 966852
                  sub          s3, s6, a4
                  slti         s4, t0, 1313
1092:             sltu         s11, s9, s11
                  sll          a4, a5, s3
                  and          a6, tp, gp
1095:             nop
                  srli         s3, ra, 13
1097:             add          s8, tp, a2
                  blt          a1, s0, 1116f
                  auipc        t5, 514223
                  sll          t3, gp, zero
                  bgeu         a5, s0, 1116f
                  add          a2, a1, s0
                  srai         s6, a4, 17
                  ori          s4, s6, 896
                  and          a0, s4, a1
                  bgeu         a3, s0, 1109f
                  slt          zero, a4, t5
                  slti         a1, t1, 490
1109:             blt          a3, t1, 1116f
                  blt          t0, s3, 1111f
1111:             sll          a2, s4, s10
                  sra          a2, s4, s6
                  bgeu         a6, t2, 1120f
                  bge          ra, sp, 1120f
                  add          t5, t0, s10
1116:             xori         a3, s8, 556
                  ori          t3, t4, -96
                  slli         a6, s6, 30
                  andi         t1, s9, 334
1120:             sll          s4, t1, s1
                  slli         sp, a0, 9
                  or           a3, t3, a0
                  nop
                  slti         s0, t1, -1247
                  lw           a4, 4(a5)
                  addi         a2, a6, -101
                  addi         a5, a5, 48
                  ori          s7, a5, 1905
                  srai         s11, s2, 26
1644:             addi x11, x14, 1
1644:             jalr x11, x11, 0
sub_1:            srli         gp, tp, 2
                  addi         a5, a5, -12
                  slli         a3, gp, 14
                  sll          ra, a2, s6
                  srli         t2, s9, 7
                  sw           a4, 4(a5)
                  xor          gp, ra, s5
                  or           t4, s7, a1
                  sra          a6, a4, ra
                  slt          t2, t6, s9
                  add          s11, a1, a3
                  la           s3, sub_2
                  addi         s3, s3, -493
                  sltu         a7, a6, s4
                  blt          s2, a1, sub_1_j3 #branch to jump instr
                  andi         a0, s5, 993
                  lui          zero, 358333
                  slt          s7, s10, t0
                  auipc        s6, 613206
sub_1_j3:         jalr         a4, s3, 494 #jump sub_1 -> sub_2
                  srai         t3, s9, 29
                  auipc        t5, 943863
                  bgeu         s3, t5, sub_1_j4 #branch to jump instr
                  srli         s7, s1, 18
                  auipc        a3, 908322
                  slli         s8, a5, 3
sub_1_j4:         jal          a4, sub_2 #jump sub_1 -> sub_2
sub_1_2:          jal          a4, 21f
0:                jal          s1, 11f
1:                jal          ra, 28f
2:                jal          ra, 29f
3:                jal          s1, 9f
4:                jal          t6, 3b
5:                jal          a7, 30f
6:                jal          ra, 20f
7:                jal          ra, 1b
8:                jal          t3, 15f
9:                jal          t4, 25f
10:               jal          t1, 4b
11:               jal          ra, 7b
12:               jal          t1, 26f
13:               jal          ra, 17f
14:               jal          t1, 2b
15:               jal          t0, 16f
16:               jal          ra, 13b
17:               jal          ra, 22f
18:               jal          ra, 24f
19:               jal          ra, 10b
20:               jal          ra, 5b
21:               jal          ra, 0b
22:               jal          t1, 12b
23:               jal          a2, 6b
24:               jal          ra, 8b
25:               jal          ra, 18b
26:               jal          s3, 14b
27:               jal          ra, 19b
28:               jal          s6, 27b
29:               jal          s0, 23b
30:               or           t2, s1, s2
sub_1_1:          jal          a4, 13f
0:                jal          ra, 8f
1:                jal          t0, 3f
2:                jal          ra, 14f
3:                jal          a6, 0b
4:                jal          ra, 9f
5:                jal          s4, 10f
6:                jal          t1, 11f
7:                jal          a0, 6b
8:                jal          ra, 15f
9:                jal          ra, 19f
10:               jal          s11, 1b
11:               jal          t1, 12f
12:               jal          s7, 16f
13:               jal          a3, 17f
14:               jal          ra, 20f
15:               jal          ra, 4b
16:               jal          gp, 18f
17:               jal          t1, 5b
18:               jal          ra, 2b
19:               jal          ra, 7b
20:               sll          t3, s4, s10
                  ori          a3, t0, -1647
                  xori         t5, tp, 541
                  addi         s11, s1, -516
                  sltiu        s4, t4, -1317
                  xor          t2, a3, a6
                  sra          t3, a6, t4
                  srli         a4, s1, 31
                  srli         s8, s6, 19
                  andi         s2, s10, 356
                  sra          s2, t1, a2
                  srli         t5, ra, 6
                  ori          ra, sp, -1571
                  or           a7, t4, s8
                  sltiu        s2, s6, 1358
                  ori          a0, a6, 1021
                  sra          a0, s9, s6
                  bgeu         s8, t6, 19f
                  sltiu        s7, s1, -1480
                  srai         s6, s6, 17
19:               sll          s7, a1, s6
                  bge          s9, s4, 40f
                  sll          a4, t3, t5
                  addi         s2, t0, 411
                  beq          zero, s10, 43f
                  ori          ra, s0, -120
                  auipc        t3, 529115
                  slli         gp, s3, 30
                  beq          s3, s1, 29f
                  sub          t6, t2, s8
29:               ori          a1, a1, -2009
                  or           ra, tp, s7
                  bltu         s0, s8, 50f
                  beq          a3, t6, 41f
                  slti         s2, a3, -1595
                  or           s6, a6, sp
                  add          s6, s3, s1
                  slt          s1, a0, a7
                  srli         s8, s7, 28
                  addi         a3, a2, 1030
                  srai         t0, a5, 18
40:               sub          a0, zero, s9
41:               slli         t4, tp, 9
                  bne          a1, ra, 55f
43:               blt          s4, s0, 60f
                  xor          s1, a5, t5
                  xor          s2, a2, a4
                  sltiu        a0, s7, 619
                  sub          zero, s9, s3
                  xor          a4, t6, sp
                  srai         a3, s4, 22
50:               ori          s9, s4, -953
                  sltu         sp, t1, t3
                  sra          s5, t2, t2
                  sltiu        s9, ra, 677
                  bne          s11, s3, 72f
55:               lui          zero, 154951
                  srli         a1, a0, 22
                  srai         s6, s7, 5
                  sltiu        t5, sp, -1191
                  sll          s1, t0, ra
60:               srai         s4, s10, 17
                  sub          a6, a0, a0
                  sra          t2, zero, t1
                  sll          s7, a7, a1
                  srli         s0, t6, 20
                  bltu         s8, a4, 70f
                  lui          zero, 99187
                  beq          a2, s11, 81f
                  nop
                  sll          a4, s7, s6
70:               sra          sp, s10, a5
                  srli         t6, t2, 22
72:               and          t0, s11, t5
                  beq          a5, zero, 83f
                  sltu         s1, zero, a3
                  ori          a1, tp, 1372
                  sub          t5, tp, s11
                  sra          s11, t2, a4
                  slt          zero, ra, a2
                  addi         t6, s0, 1826
                  srli         a4, s5, 13
81:               sltiu        t5, ra, 1604
                  blt          a5, a0, 102f
83:               sub          s4, s3, s10
                  sltu         a3, zero, tp
                  slti         a1, s0, -1016
                  sll          t5, s1, s1
                  lui          a4, 178267
                  srli         s4, s8, 15
                  auipc        zero, 109940
sub_1_0:          jal          a4, 0f
0:                jal          ra, 1f
1:                jal          t1, 18f
2:                jal          t1, 7f
3:                jal          a4, 17f
4:                jal          t1, 2b
5:                jal          s1, 9f
6:                jal          t1, 16f
7:                jal          ra, 15f
8:                jal          ra, 6b
9:                jal          ra, 12f
10:               jal          ra, 11f
11:               jal          a1, 3b
12:               jal          ra, 14f
13:               jal          ra, 4b
14:               jal          ra, 13b
15:               jal          ra, 20f
16:               jal          ra, 5b
17:               jal          a6, 22f
18:               jal          s2, 21f
19:               jal          t1, 10b
20:               jal          s3, 19b
21:               jal          t1, 8b
22:               sra          t4, gp, zero
                  add          s6, a3, t0
                  or           ra, s4, sp
                  and          a6, t6, a3
                  blt          s7, a1, 96f
                  srli         a1, s6, 19
                  bne          t4, s5, 100f
96:               bltu         t3, gp, 116f
                  sra          t4, s10, tp
                  nop
                  blt          sp, a0, 108f
100:              addi         t6, ra, 1132
                  andi         s1, tp, -313
102:              sltu         t1, s9, t3
                  srai         s4, gp, 11
                  srai         sp, tp, 15
                  lui          s1, 688333
                  bltu         zero, zero, 111f
                  or           s2, s4, sp
108:              bltu         s7, s5, 128f
                  bne          a5, a0, 120f
                  bltu         t0, t5, 112f
111:              add          t2, a7, tp
112:              srli         s4, t4, 7
                  addi         a6, sp, -112
                  auipc        s9, 307841
                  bge          zero, s11, 118f
116:              srl          sp, s2, s5
                  srli         a3, a5, 0
118:              and          a6, s9, a7
                  beq          t0, s9, 120f
120:              ori          s0, sp, 891
                  sltiu        t1, zero, 1716
                  blt          t5, s1, 133f
                  auipc        t6, 406555
                  xor          t0, tp, a4
                  lui          a4, 49422
                  auipc        a4, 839928
                  auipc        a0, 313421
128:              sub          sp, t3, t0
                  addi         a4, zero, -101
                  bge          s7, t3, 133f
                  srl          a1, s4, s4
                  or           ra, t5, a5
133:              or           s1, t1, s11
                  srl          s0, t4, t1
                  bge          t4, s3, 138f
                  andi         s8, t1, -1431
                  sltu         a2, s1, zero
138:              srl          gp, a0, t0
                  andi         a0, a1, 116
                  lui          t0, 1047304
                  bge          s0, t1, 158f
                  lui          s6, 751577
                  beq          t1, t6, 158f
                  beq          s2, s7, 157f
                  bltu         a1, gp, 151f
                  bltu         a5, s2, 156f
                  srli         s3, s9, 16
                  slli         t5, gp, 12
                  and          s9, s11, t2
                  nop
151:              xori         s4, s5, -1721
                  slti         a2, a6, 1814
                  sub          a7, s7, gp
                  bne          s7, t4, 171f
                  addi         s11, t3, -518
156:              bgeu         a2, ra, 171f
157:              xori         a4, s10, 1257
158:              slti         t1, s8, 1568
                  or           s2, a0, t6
                  and          t5, a1, s11
                  sltiu        s4, a6, -14
                  bltu         s1, a6, 164f
                  bgeu         t0, a7, 171f
164:              sltiu        zero, sp, 1336
                  srai         s0, s7, 5
                  srli         gp, s2, 7
                  bltu         tp, a0, 170f
                  sub          a2, zero, s2
                  beq          s1, s1, 171f
170:              sltiu        s11, t3, 928
171:              lui          t3, 897883
                  slli         s7, t1, 30
                  lw           a4, 4(a5)
                  auipc        a7, 846939
                  lui          s0, 844802
                  andi         a6, s5, 826
                  xori         s3, s10, 992
                  xori         s4, t6, 819
                  addi         a5, a5, 12
                  or           t6, s9, s10
286:              addi x9, x14, 0
286:              jalr x9, x9, 0
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x4, x15, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x2, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x2, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x2, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x2, x13, ecall_handler
                  li x13, 0x1
                  beq x2, x13, instr_fault_handler
                  li x13, 0x5
                  beq x2, x13, load_fault_handler
                  li x13, 0x7
                  beq x2, x13, store_fault_handler
                  li x13, 0xc
                  beq x2, x13, pt_fault_handler
                  li x13, 0xd
                  beq x2, x13, pt_fault_handler
                  li x13, 0xf
                  beq x2, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x15, x4, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x4, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x4, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x15, x4, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x15, x4, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x15, x4, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
