.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0xf6d7a868
                  li x1, 0xfdedd497
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x5db10517
                  li x6, 0x0
                  li x7, 0xf17808c6
                  li x8, 0xf461181e
                  li x9, 0x5
                  li x10, 0xf00441df
                  li x11, 0x0
                  li x12, 0xd
                  li x13, 0xf32e133e
                  li x14, 0x626b41b5
                  li x15, 0xf
                  li x17, 0x7
                  li x18, 0x80000000
                  li x19, 0x3
                  li x20, 0x80000000
                  li x21, 0xf8771a20
                  li x22, 0xf
                  li x23, 0x0
                  li x24, 0xc
                  li x25, 0xf5b238ec
                  li x26, 0x8
                  li x27, 0xf038ad42
                  li x28, 0x80000000
                  li x29, 0x99b98a93
                  li x30, 0x0
                  li x31, 0x4
                  la x16, user_stack_end
main:             jal          ra, 13f
0:                jal          s0, 2f
1:                jal          ra, 8f
2:                jal          ra, 9f
3:                jal          ra, 5f
4:                jal          a7, 6f
5:                jal          ra, 14f
6:                jal          ra, 15f
7:                jal          ra, 3b
8:                jal          a2, 0b
9:                jal          t1, 18f
10:               jal          t4, 16f
11:               jal          t1, 4b
12:               jal          t1, 10b
13:               jal          ra, 1b
14:               jal          s0, 17f
15:               jal          tp, 19f
16:               jal          s4, 11b
17:               jal          t1, 12b
18:               jal          ra, 7b
19:               slli         s7, s6, 13
main_10:          jal          ra, 7f
0:                jal          ra, 5f
1:                jal          ra, 0b
2:                jal          tp, 3f
3:                jal          ra, 11f
4:                jal          s0, 12f
5:                jal          s5, 6f
6:                jal          ra, 4b
7:                jal          t1, 8f
8:                jal          ra, 2b
9:                jal          ra, 10f
10:               jal          ra, 1b
11:               jal          ra, 9b
12:               sll          tp, a5, t0
main_7:           jal          ra, 17f
0:                jal          ra, 22f
1:                jal          ra, 19f
2:                jal          gp, 21f
3:                jal          ra, 15f
4:                jal          t1, 26f
5:                jal          t1, 7f
6:                jal          t1, 27f
7:                jal          ra, 11f
8:                jal          a4, 23f
9:                jal          ra, 10f
10:               jal          ra, 25f
11:               jal          ra, 20f
12:               jal          ra, 18f
13:               jal          t1, 6b
14:               jal          tp, 9b
15:               jal          t1, 14b
16:               jal          ra, 5b
17:               jal          t1, 24f
18:               jal          t1, 16b
19:               jal          ra, 13b
20:               jal          t1, 3b
21:               jal          tp, 1b
22:               jal          t1, 4b
23:               jal          t1, 12b
24:               jal          ra, 0b
25:               jal          ra, 2b
26:               jal          ra, 8b
27:               andi         a7, s0, 2047
main_8:           jal          ra, 5f
0:                jal          ra, 3f
1:                jal          ra, 8f
2:                jal          ra, 9f
3:                jal          ra, 1b
4:                jal          ra, 10f
5:                jal          s6, 4b
6:                jal          ra, 7f
7:                jal          t1, 11f
8:                jal          ra, 2b
9:                jal          s1, 12f
10:               jal          ra, 6b
11:               jal          t1, 0b
12:               slli         s6, s6, 8
main_0:           jal          ra, 11f
0:                jal          ra, 1f
1:                jal          sp, 17f
2:                jal          t1, 9f
3:                jal          ra, 8f
4:                jal          ra, 25f
5:                jal          ra, 27f
6:                jal          ra, 7f
7:                jal          ra, 24f
8:                jal          t1, 14f
9:                jal          ra, 10f
10:               jal          ra, 18f
11:               jal          t1, 22f
12:               jal          sp, 3b
13:               jal          ra, 20f
14:               jal          ra, 5b
15:               jal          t1, 2b
16:               jal          sp, 0b
17:               jal          s8, 19f
18:               jal          t1, 21f
19:               jal          a5, 12b
20:               jal          ra, 26f
21:               jal          s9, 6b
22:               jal          ra, 13b
23:               jal          sp, 15b
24:               jal          ra, 4b
25:               jal          a3, 16b
26:               jal          t2, 23b
27:               sub          s0, zero, t2
main_3:           jal          ra, 0f
0:                jal          t1, 10f
1:                jal          ra, 2f
2:                jal          ra, 9f
3:                jal          ra, 1b
4:                jal          ra, 11f
5:                jal          ra, 6f
6:                jal          ra, 7f
7:                jal          ra, 4b
8:                jal          ra, 5b
9:                jal          ra, 8b
10:               jal          t1, 3b
11:               jal          tp, 12f
12:               ori          s8, a5, 660
main_1:           jal          ra, 1f
0:                jal          ra, 7f
1:                jal          tp, 5f
2:                jal          ra, 24f
3:                jal          t1, 4f
4:                jal          sp, 9f
5:                jal          s0, 3b
6:                jal          tp, 20f
7:                jal          ra, 22f
8:                jal          t1, 16f
9:                jal          ra, 19f
10:               jal          a1, 15f
11:               jal          a3, 14f
12:               jal          t1, 2b
13:               jal          ra, 6b
14:               jal          a3, 0b
15:               jal          ra, 23f
16:               jal          t1, 12b
17:               jal          t1, 8b
18:               jal          t1, 11b
19:               jal          ra, 13b
20:               jal          tp, 18b
21:               jal          ra, 10b
22:               jal          ra, 21b
23:               jal          ra, 17b
24:               ori          gp, s2, 377
main_2:           jal          ra, 20f
0:                jal          t1, 12f
1:                jal          t1, 10f
2:                jal          t1, 17f
3:                jal          ra, 1b
4:                jal          ra, 11f
5:                jal          ra, 19f
6:                jal          ra, 2b
7:                jal          t1, 23f
8:                jal          ra, 7b
9:                jal          a3, 3b
10:               jal          sp, 6b
11:               jal          ra, 21f
12:               jal          a0, 5b
13:               jal          ra, 18f
14:               jal          ra, 24f
15:               jal          t1, 16f
16:               jal          ra, 4b
17:               jal          ra, 14b
18:               jal          s9, 9b
19:               jal          ra, 15b
20:               jal          ra, 8b
21:               jal          ra, 22f
22:               jal          t4, 13b
23:               jal          ra, 0b
24:               slt          s6, t0, a4
main_12:          jal          ra, 1f
0:                jal          t1, 9f
1:                jal          ra, 7f
2:                jal          ra, 10f
3:                jal          t1, 8f
4:                jal          ra, 6f
5:                jal          a5, 18f
6:                jal          sp, 12f
7:                jal          ra, 3b
8:                jal          t1, 4b
9:                jal          gp, 14f
10:               jal          t1, 15f
11:               jal          ra, 16f
12:               jal          tp, 17f
13:               jal          t1, 20f
14:               jal          ra, 5b
15:               jal          ra, 0b
16:               jal          ra, 19f
17:               jal          gp, 11b
18:               jal          a5, 13b
19:               jal          gp, 2b
20:               nop
main_4:           jal          ra, 9f
0:                jal          t1, 2f
1:                jal          ra, 10f
2:                jal          ra, 4f
3:                jal          s10, 6f
4:                jal          ra, 1b
5:                jal          t4, 8f
6:                jal          gp, 5b
7:                jal          ra, 3b
8:                jal          ra, 0b
9:                jal          ra, 7b
10:               add          s1, s2, a1
                  slt          s0, tp, a1
                  sltu         zero, t1, t6
                  slli         s1, t4, 19
                  slti         t2, sp, -1715
                  srai         zero, s0, 30
                  bltu         s1, gp, 8f
                  bge          t2, t1, 23f
                  srli         s7, s0, 15
8:                xor          s6, a7, t6
                  slti         a7, zero, -1053
                  or           a5, s3, s10
                  bne          t0, a2, 27f
                  slli         t1, ra, 9
                  or           a5, a7, gp
                  slt          s5, zero, t3
                  bltu         t2, s10, 28f
                  sra          tp, t3, s1
                  srl          a5, t4, t0
                  srli         gp, t6, 21
                  srai         t6, s8, 14
                  xor          s6, t5, s7
                  auipc        s11, 585905
                  bgeu         t1, s10, 27f
23:               blt          s9, s9, 27f
                  sub          t1, s1, a7
                  ori          s3, a5, 1128
                  bge          tp, gp, 36f
27:               and          t4, s6, a7
28:               bltu         t0, t2, 30f
                  xor          t6, s1, a6
30:               add          t2, tp, s6
                  srl          t4, s2, a7
                  sub          t1, s11, t1
                  sltiu        a5, t5, 22
                  nop
                  nop
36:               slt          t5, s10, a7
                  blt          s4, gp, 51f
                  beq          s7, s5, 53f
                  sra          s6, a2, zero
                  lui          a2, 280950
                  xori         t6, a1, -840
                  bgeu         a0, s9, 48f
                  slt          ra, s2, t3
                  bgeu         a4, s3, 50f
                  or           s9, a3, a6
                  xori         a2, t6, 466
                  slli         t4, t0, 28
48:               or           a5, a7, ra
                  slli         t6, s3, 4
50:               andi         t5, t4, -1309
51:               blt          t5, a5, 55f
                  and          s7, t1, t5
53:               beq          t4, a4, 67f
                  and          s4, sp, ra
55:               nop
                  slt          tp, s7, zero
                  sub          t5, tp, s10
                  bge          a2, t4, 72f
                  add          a7, a5, s10
                  blt          sp, t1, 65f
                  beq          s3, t0, 70f
                  xori         ra, t0, -180
                  slli         t1, a2, 7
                  slt          sp, t0, s0
65:               slli         tp, s6, 26
                  slt          a3, s11, t1
67:               andi         s4, s7, -314
                  sltu         s0, s9, s1
                  bltu         s6, a2, 75f
70:               srli         t5, s0, 11
                  sra          s1, a0, t6
72:               sltu         s1, s11, s6
                  addi         t2, a2, 1781
                  or           t1, t3, gp
75:               sltu         s10, a4, sp
                  and          s3, t6, s7
                  srl          s9, s9, a5
                  xori         a1, s3, -878
                  slt          s1, s1, t0
                  slti         s4, a3, 1383
                  ori          gp, s6, 1935
                  xori         sp, s8, 593
                  xor          s0, gp, gp
                  bge          a4, gp, 91f
                  sll          a7, s5, t5
                  slt          t1, t0, a2
                  slli         t1, s5, 22
                  sra          a7, a3, s10
                  lui          a7, 482882
                  sltiu        a1, a2, -847
91:               sub          s0, sp, s6
                  srai         sp, t4, 4
                  bltu         gp, a5, 108f
                  sltiu        s9, s8, -626
                  auipc        a5, 709669
                  sltiu        a5, a3, 832
                  xor          gp, a4, tp
                  bge          t3, s9, 100f
                  or           s6, tp, s9
100:              slt          gp, s11, a3
                  xori         t1, s2, -737
                  bge          s0, zero, 119f
                  andi         s8, s7, 387
                  andi         s7, a6, 570
                  sub          s6, s1, t0
                  ori          gp, s1, 1425
                  sltu         a2, s2, t0
108:              srl          a1, a5, t5
                  add          t1, s2, ra
                  slli         a4, ra, 12
                  and          s0, s5, gp
                  bge          a0, s2, 114f
                  auipc        s10, 458923
114:              bltu         s4, s9, 131f
                  sltu         gp, a5, s9
                  xor          s0, a0, s1
                  xor          a1, t3, s10
                  sltu         s3, tp, a7
119:              add          s9, s11, gp
                  beq          s7, s0, 126f
                  sltu         t4, t3, ra
                  slti         s2, t5, -788
                  auipc        a1, 832801
                  slli         sp, s6, 9
                  bgeu         s0, t2, 129f
126:              nop
                  bgeu         a2, s9, 146f
                  and          s3, a5, tp
129:              slti         t5, t1, -2042
                  slli         t6, t6, 27
131:              or           sp, s0, s5
                  bne          t0, s9, 142f
                  bgeu         s10, s1, 147f
                  bne          s10, s10, 143f
                  nop
                  sub          a3, t1, a1
                  andi         s9, gp, -1468
                  andi         gp, s2, -1003
                  ori          a1, s4, -1523
                  blt          s4, t1, 144f
                  auipc        t2, 18468
142:              sltu         t1, t1, tp
143:              srl          t5, s6, zero
144:              slt          sp, t6, a4
                  or           s11, s6, t5
146:              bgeu         gp, a0, 152f
147:              and          s4, s3, t4
                  addi         s10, s1, 1063
                  sub          zero, t5, gp
                  bne          a4, a5, 159f
                  ori          s3, s8, 1900
152:              sll          a1, a1, s9
                  ori          t4, s1, 2014
                  ori          ra, ra, -286
                  xor          s5, s3, a0
                  sll          ra, a5, t6
                  sltu         gp, a4, s11
                  srl          t4, t3, s6
159:              sub          s1, t2, s1
                  lui          s3, 883756
                  bgeu         s4, a4, 163f
                  srai         s1, a3, 14
163:              srai         s5, a6, 14
                  bne          t2, t2, 178f
                  xor          t4, a4, s9
                  and          sp, a4, s10
                  bne          t2, a4, 183f
                  slli         t2, s7, 8
                  add          sp, t4, zero
                  sll          t1, s8, a0
                  sub          s1, a2, a1
                  srl          t1, t5, a4
                  nop
                  bne          a0, ra, 191f
                  nop
                  sra          sp, t6, a6
                  addi         a1, sp, -717
178:              addi         a7, gp, 1720
                  xor          sp, a6, s7
                  xor          s7, a5, s9
                  slti         s6, ra, 524
                  xori         sp, s11, 130
main_5:           jal          ra, 18f
0:                jal          sp, 19f
1:                jal          s4, 11f
2:                jal          ra, 16f
3:                jal          ra, 12f
4:                jal          t1, 2b
5:                jal          t1, 14f
6:                jal          ra, 10f
7:                jal          ra, 5b
8:                jal          ra, 13f
9:                jal          ra, 3b
10:               jal          t1, 1b
11:               jal          tp, 0b
12:               jal          s0, 15f
13:               jal          ra, 9b
14:               jal          t1, 6b
15:               jal          ra, 4b
16:               jal          ra, 17f
17:               jal          sp, 7b
18:               jal          ra, 8b
19:               srli         s4, a6, 22
183:              slti         gp, a2, 1071
                  sll          t4, s7, s1
                  addi         sp, t6, 138
                  sll          a7, t3, zero
                  xori         s8, ra, 1417
                  xori         sp, s1, -772
                  sltu         s2, s10, ra
                  srli         tp, s10, 21
191:              and          zero, a7, t2
                  auipc        a7, 835032
                  sub          t6, a4, a7
                  ori          ra, sp, 806
                  add          a5, s2, t0
                  sltiu        a7, s9, 1744
                  and          a4, a6, s4
                  bltu         a0, zero, 208f
                  srai         s11, s10, 29
                  or           a0, tp, s9
                  srl          t2, s11, s6
                  sub          a0, gp, t4
                  sltu         s8, s11, t0
                  srli         t2, a4, 8
                  srai         s6, a5, 2
                  bltu         t3, t0, 215f
                  xori         s4, s0, 1572
208:              sltiu        ra, a0, 1925
                  beq          t3, s7, 213f
                  bne          zero, a5, 215f
                  xori         t2, s7, 1185
                  sub          a7, s3, s4
213:              srli         s11, ra, 5
                  sll          s4, sp, t2
215:              slti         sp, zero, 856
                  slt          tp, a7, s2
                  blt          a2, s6, 231f
                  slt          s2, a4, tp
                  add          a1, t6, a1
                  slt          a5, s7, a7
                  addi         tp, t4, -845
                  or           s10, s9, s9
                  lui          t1, 192889
                  bge          s2, s0, 237f
                  xor          a4, s4, s3
                  sra          t5, s3, a7
                  addi         tp, s8, 234
                  bgeu         a0, t6, 247f
                  slli         a0, s3, 14
                  slti         a1, tp, -207
231:              lui          t4, 347017
                  beq          s3, a7, 238f
                  sltiu        ra, a5, 971
                  or           gp, a3, a5
                  bge          a0, s0, 250f
                  bltu         t6, t5, 238f
237:              slt          a5, a2, t5
238:              bgeu         a3, s1, 255f
                  xori         t2, t4, -1638
                  srai         s9, s3, 30
                  addi         t1, ra, -510
                  ori          s9, zero, -272
                  xori         t5, s11, -1561
                  sll          s10, s6, t6
                  sll          s2, a6, ra
                  auipc        tp, 530900
247:              ori          s6, s1, 1696
                  slli         s10, s9, 15
                  srl          t1, s1, a1
250:              and          a3, t2, t1
                  slli         a0, s5, 17
                  nop
                  slt          s5, a1, s1
                  ori          s4, a5, -1102
255:              sll          s9, t4, t0
                  slli         zero, t2, 28
                  sltiu        zero, s11, -68
                  bltu         a6, t1, 264f
                  sub          s10, s9, t3
                  bge          a2, t1, 270f
                  slli         s1, a2, 5
                  andi         s5, t4, 279
                  srli         s5, t0, 3
264:              srli         gp, s9, 9
                  srl          s11, s8, s0
                  auipc        t5, 184342
                  beq          gp, s8, 270f
                  bne          s10, zero, 270f
                  slt          a0, tp, s3
270:              addi         a4, s2, -1037
                  beq          s4, ra, 286f
                  sltiu        tp, s4, 1151
                  slli         tp, t3, 10
                  srli         s8, ra, 19
                  bgeu         a5, tp, 279f
                  slli         gp, gp, 18
                  srli         s2, sp, 9
                  nop
279:              xor          a5, s5, t1
                  sltu         a5, s1, s6
                  andi         gp, s9, -731
                  bgeu         s6, s5, 288f
                  slt          s3, t0, s3
                  ori          t1, zero, 1883
                  beq          a7, s10, 299f
286:              slli         s10, s2, 14
                  bge          t1, s11, 292f
288:              bgeu         a0, a1, 295f
                  add          s3, s0, t4
                  bge          s2, t0, 307f
                  addi         t2, s3, -961
292:              blt          a7, a7, 306f
                  sltiu        tp, s7, -561
                  or           a7, t2, a7
295:              sltu         s5, s10, t0
                  xor          t1, s1, t0
                  slli         tp, a1, 23
                  blt          t5, t4, 304f
299:              nop
                  bne          tp, t0, 319f
                  sub          s0, a3, a5
                  and          a7, s8, tp
                  blt          a7, a2, 305f
304:              addi         tp, a4, 1629
305:              slti         a1, a1, -1632
306:              auipc        s9, 371044
307:              lui          t5, 292819
                  addi         s5, s3, -731
                  srl          sp, a2, a4
                  ori          zero, t2, -1465
                  sltiu        s2, t6, 1414
                  sll          t4, a5, a2
                  la           s1, sub_1
                  sltu         ra, s6, sp
                  nop
                  sltu         a4, t6, t2
                  xor          zero, s3, t1
                  or           s2, s0, t5
                  addi         s1, s1, -860
                  bgeu         a1, s7, main_j1 #branch to jump instr
                  sltu         a3, s9, zero
main_j1:          jalr         ra, s1, 861 #jump main -> sub_1
                  bgeu         t0, a5, 327f
                  addi         tp, t1, 343
main_13:          jal          ra, 3f
0:                jal          s0, 13f
1:                jal          t1, 16f
2:                jal          t1, 1b
3:                jal          ra, 14f
4:                jal          ra, 2b
5:                jal          ra, 17f
6:                jal          tp, 8f
7:                jal          t1, 9f
8:                jal          s4, 18f
9:                jal          ra, 5b
10:               jal          ra, 6b
11:               jal          ra, 15f
12:               jal          gp, 4b
13:               jal          ra, 10b
14:               jal          ra, 12b
15:               jal          ra, 7b
16:               jal          ra, 11b
17:               jal          ra, 0b
18:               jal          ra, 19f
19:               sltiu        a2, sp, -494
                  xori         s5, t6, 665
                  xori         a0, tp, -1529
                  slli         s3, a7, 20
                  add          s6, t1, s9
                  bge          ra, s3, 333f
319:              nop
                  sub          t1, a0, s9
                  addi         a2, t4, 1057
                  or           s10, tp, s11
                  lui          s6, 339982
                  sltu         s0, s7, s0
                  srai         a5, t6, 23
                  xori         s5, s4, 588
327:              lui          s10, 287343
                  bne          a3, gp, 344f
                  bge          t3, tp, 331f
                  srli         s9, s9, 17
331:              sra          a5, s0, a5
                  blt          s11, t2, 341f
333:              beq          ra, a3, 339f
                  auipc        s10, 332133
                  bgeu         t6, a2, 352f
                  srl          t5, s8, s1
                  addi         t6, s1, 969
                  blt          a6, tp, 355f
339:              srai         gp, a0, 4
                  slli         s3, s6, 0
341:              sltiu        t1, t2, -1796
                  sll          s5, a7, t4
                  bge          ra, a3, 352f
344:              xori         a3, zero, 1155
                  lui          t4, 378985
                  nop
                  and          s0, s0, s5
                  slli         sp, s9, 5
                  auipc        t6, 544194
                  sltu         a7, gp, s8
                  sltu         s4, t3, a0
352:              slli         a1, s11, 27
                  bgeu         a3, tp, 367f
                  bltu         a7, a5, 358f
355:              srl          s11, a1, a6
                  slti         s5, gp, 1555
                  andi         tp, t2, 1133
358:              bge          t4, tp, 364f
                  beq          t2, a4, 376f
                  auipc        s6, 153600
                  lui          s3, 493681
                  bne          s3, a7, 375f
                  sltu         s8, a7, a7
364:              srl          zero, zero, t3
                  slli         a3, s8, 7
                  bne          s1, s3, 380f
367:              sra          s2, t2, ra
                  nop
                  srli         s7, t0, 11
                  srai         s4, sp, 11
                  blt          s2, s5, 385f
                  or           a7, s8, t3
                  sltiu        s9, a6, 60
                  andi         s2, s0, -745
375:              srai         s1, a4, 5
376:              auipc        a2, 761457
                  srli         a7, s8, 24
                  nop
                  bltu         s2, sp, 393f
380:              add          a7, s4, a5
                  slti         t1, a4, 816
                  or           a2, t2, zero
                  and          s5, a6, a4
                  sltu         t2, a7, t3
385:              srli         t6, t1, 19
                  srli         s3, s4, 31
                  sub          s9, t5, tp
                  slti         a5, a3, -208
                  srl          s6, t6, t1
                  srai         a2, s6, 19
                  add          s10, s1, a5
                  srai         ra, t0, 5
393:              lui          s8, 31417
                  ori          a3, t5, 1046
                  sll          a0, a0, t1
                  add          t5, t6, a1
                  srli         s8, t4, 9
                  nop
                  sltiu        t1, a1, 1732
                  bne          a0, a2, 410f
                  blt          s3, t5, 407f
                  bltu         gp, t2, 407f
                  srai         a4, t5, 27
                  bge          s8, s6, 411f
                  andi         s1, t4, -1644
                  bgeu         t3, s4, 410f
407:              andi         s6, t5, -1330
                  auipc        ra, 668649
                  and          t1, s9, t4
410:              bgeu         s2, ra, 420f
411:              sra          s3, s11, a6
                  srli         s8, t5, 1
                  srai         zero, s3, 31
                  lui          a3, 954919
                  bne          a5, t3, 417f
                  sll          t6, s7, gp
417:              sra          s7, gp, t6
                  slti         s8, a4, 123
                  blt          a5, s11, 423f
420:              slt          s9, sp, s10
                  bne          a5, t6, 426f
                  bltu         t5, zero, 425f
423:              sub          a7, s2, s9
                  beq          t5, t3, 428f
425:              blt          a6, t3, 444f
426:              slli         s2, t1, 14
                  bne          t1, a0, 441f
428:              auipc        t1, 952063
                  slt          t4, a5, a0
                  sra          s11, s4, tp
                  sra          tp, tp, ra
                  or           s9, s4, tp
                  xor          a4, a1, tp
                  blt          a0, t0, 439f
                  bltu         t2, gp, 437f
                  auipc        s2, 1046799
437:              xor          a5, t6, a7
                  sll          s8, s0, s5
439:              blt          gp, s0, 446f
                  srl          zero, t0, s2
441:              and          s5, s4, ra
                  ori          a7, s5, -1358
                  auipc        s2, 19875
444:              and          s5, s2, a0
                  srai         s11, s7, 24
446:              bge          s8, s7, 448f
                  add          s2, s5, s2
448:              and          ra, s7, s7
                  ori          a0, a3, -1372
                  nop
                  sra          a4, t6, a5
                  srli         a3, s10, 28
                  ori          s6, s2, -1682
                  addi         gp, t0, 1307
                  sra          s4, s7, s2
                  srli         a2, s2, 6
                  beq          s2, s8, 473f
                  ori          t5, s2, -100
                  xori         gp, t0, -1694
                  xori         t6, a6, -627
                  blt          t1, t4, 467f
                  lui          sp, 999740
                  srai         s5, a7, 24
                  srli         s2, s11, 25
                  bgeu         a5, a5, 482f
                  lui          a5, 271566
467:              andi         s5, s9, -1953
                  slti         t6, s0, 1908
                  xor          t4, t0, s1
                  sll          s2, s4, s7
                  slli         s1, a5, 0
                  bltu         zero, s9, 478f
473:              slti         s4, t0, -1431
                  blt          s5, a0, 488f
                  sll          t4, s9, s11
                  sll          s1, tp, s11
                  auipc        s6, 526847
478:              bge          a6, t4, 482f
                  or           a0, s4, zero
                  bge          a3, a5, 497f
                  addi         t1, a4, -540
482:              beq          t1, s4, 496f
                  sra          a5, t0, a6
                  nop
                  and          a3, ra, s3
                  xori         t1, s0, 1330
                  add          ra, a4, a5
488:              slli         s1, s1, 15
                  beq          a1, s2, 491f
                  srai         a4, ra, 19
491:              bgeu         tp, a6, 506f
                  srli         gp, zero, 12
                  sub          s0, s2, t6
                  slti         s11, s5, 1066
                  slti         a4, tp, -612
496:              xor          s5, t5, t2
497:              srl          s1, a1, s9
                  sra          t4, s10, t3
                  slt          t5, s9, t6
                  xor          a3, s6, s4
                  sltiu        tp, s6, -1136
                  add          s11, t4, t6
                  slti         s7, s4, 1951
                  srai         zero, sp, 20
                  slt          a0, t4, s8
506:              slti         s4, a5, 1570
                  slt          a2, a6, t5
                  slti         s7, a2, -263
                  bne          s10, t6, 512f
                  beq          s10, s9, 514f
                  srl          a1, t3, t2
512:              bne          s0, a5, 522f
                  auipc        s7, 813245
514:              srli         zero, s0, 24
                  srli         s10, s7, 5
                  bge          a1, a4, 525f
                  or           a2, t2, s9
                  nop
                  xor          s0, s0, t3
                  auipc        a0, 595950
                  sra          s2, s1, a6
522:              bgeu         s6, s7, 532f
                  beq          s5, a2, 538f
                  sra          a3, a1, gp
525:              srl          t4, t1, t3
                  slt          s8, a7, t2
                  and          t2, tp, a1
                  and          s8, t2, a1
                  srai         a2, s7, 11
                  blt          s10, s0, 535f
                  auipc        t5, 538042
532:              bge          t3, t0, 541f
                  srl          sp, a6, t2
                  lui          s7, 700523
535:              sltu         sp, a1, a1
                  sub          t6, s1, t3
                  and          s8, s11, a2
538:              bgeu         s8, t4, 544f
                  srl          s0, s11, s3
                  bne          s9, t1, 546f
541:              bltu         zero, t2, 555f
                  bge          s1, t5, 559f
                  bltu         s1, a0, 556f
544:              srl          t1, t2, t3
                  and          s9, s9, s6
546:              bne          t0, s7, 562f
                  srli         ra, s0, 11
                  bgeu         a1, t6, 565f
                  bne          a0, s2, 553f
                  bne          ra, s11, 552f
                  sll          a0, t5, s8
552:              sub          t6, s4, s7
553:              bge          s2, t2, 555f
                  slli         a1, s7, 3
555:              blt          t1, s0, 572f
556:              sltu         t2, a1, s10
                  add          s6, ra, t0
                  add          a4, a6, a4
559:              add          t2, s11, ra
                  andi         s11, t0, 2036
                  add          s6, t1, s3
562:              bltu         gp, t5, 576f
                  sub          a4, a3, sp
                  blt          a3, t4, 579f
main_9:           jal          ra, 9f
0:                jal          ra, 11f
1:                jal          ra, 2f
2:                jal          sp, 7f
3:                jal          ra, 13f
4:                jal          tp, 8f
5:                jal          ra, 10f
6:                jal          ra, 0b
7:                jal          gp, 14f
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               jal          t1, 12f
11:               jal          ra, 1b
12:               jal          ra, 6b
13:               jal          ra, 4b
14:               sra          a7, t5, a2
565:              srli         zero, s2, 6
                  slti         s8, s5, -1852
                  beq          s5, s1, 581f
                  sltiu        s5, s4, 1406
                  nop
                  add          s4, a7, s2
                  lui          ra, 94154
572:              sltu         s3, a6, s11
                  lui          s8, 257744
                  xor          a2, s6, ra
                  sltiu        a7, a7, -400
576:              beq          ra, s1, 578f
                  sltiu        t5, t5, -246
578:              srli         s7, s8, 14
579:              slli         zero, s5, 29
                  andi         t2, s5, -288
581:              slti         t6, s7, -1636
                  slti         gp, s6, -492
                  sltiu        tp, a3, -545
                  bltu         a7, t6, 597f
                  bne          t5, t6, 599f
                  sub          tp, t2, t2
                  sltu         t5, gp, s5
                  srl          tp, a5, s0
                  slti         s4, t3, 457
                  srli         t5, t2, 1
main_11:          jal          ra, 0f
0:                jal          a7, 7f
1:                jal          ra, 6f
2:                jal          ra, 10f
3:                jal          ra, 2b
4:                jal          t1, 8f
5:                jal          ra, 4b
6:                jal          ra, 9f
7:                jal          ra, 5b
8:                jal          ra, 1b
9:                jal          ra, 3b
10:               slti         t2, a6, -1659
                  bgeu         t5, s9, 596f
                  andi         a7, a0, -1648
                  sra          s2, s4, a2
                  xor          s11, t1, s9
                  ori          s1, t2, -1427
596:              srai         t4, ra, 7
597:              slti         s5, s0, 54
                  addi         a4, s10, 1110
599:              slt          s6, s4, t4
                  srli         a5, s3, 31
                  bltu         s0, a4, 620f
                  srl          t2, a5, s11
                  sra          s6, a0, s7
                  nop
                  sub          s4, a2, t3
                  srl          s7, a5, s10
                  srli         t5, sp, 14
                  slti         a5, s4, -477
                  srl          s0, t0, s5
                  beq          zero, a5, 624f
                  bne          sp, a0, 618f
                  or           a3, a6, t1
                  srai         t4, t3, 30
                  lui          a0, 472925
                  sltu         s0, t5, a2
                  xori         t1, a1, -259
                  srai         t5, t4, 7
                  la           a3, sub_1
                  addi         a3, a3, -105
                  lui          sp, 421112
                  andi         zero, s1, 289
                  sltu         t2, s10, a3
                  or           s2, sp, gp
                  or           a2, ra, s6
                  nop
                  sub          a5, t0, tp
                  xor          s1, t1, ra
main_j2:          jalr         ra, a3, 105 #jump main -> sub_1
                  blt          s4, s11, 626f
                  srli         s6, a0, 14
618:              xor          a0, s6, t0
                  slti         s5, t1, 1658
620:              or           tp, s0, a1
                  add          s0, a2, s8
                  bge          t6, s0, 628f
                  xori         s5, gp, 445
624:              srli         s9, s6, 28
                  bgeu         s6, s5, 642f
626:              andi         t6, a2, 1930
                  slli         a7, a3, 13
628:              srli         s8, t2, 13
                  blt          a2, zero, 638f
                  bge          t5, tp, 636f
                  srli         s6, a1, 31
                  sll          s4, a4, t4
                  auipc        s9, 7363
                  blt          t1, sp, 637f
                  beq          s9, s2, 644f
636:              xori         s8, a0, 1725
637:              sltiu        s1, a7, -1411
638:              addi         gp, a7, -160
                  andi         s3, t3, -59
                  sltu         s1, ra, a6
                  slti         gp, s0, -1066
642:              sra          a2, a6, t2
                  bgeu         a1, s1, 648f
644:              sltiu        s0, a4, -382
                  bgeu         a6, a3, 649f
                  andi         zero, s11, 436
                  bne          s1, sp, 653f
648:              srai         s11, s7, 10
649:              slli         s1, a0, 29
                  bne          ra, s5, 654f
                  sra          t1, t3, ra
                  ori          t6, t1, 2025
653:              or           t4, s4, s1
654:              ori          s7, a2, -338
                  beq          t5, t5, 661f
                  sra          gp, s2, s8
                  sub          t5, a3, a4
                  xor          a3, a1, s4
                  srai         t5, sp, 30
                  slt          a0, s5, s5
661:              and          s2, ra, t6
                  blt          s5, sp, 677f
                  sltu         s7, t5, a5
                  sll          a2, a5, a1
                  sub          a7, s8, ra
                  lui          a3, 43441
                  add          s8, s0, s9
                  nop
                  slli         s8, s9, 31
                  beq          s8, gp, 680f
                  srli         a5, s11, 31
                  slt          s6, t2, t2
                  andi         s5, a1, 1068
                  slli         s1, s1, 9
                  bge          s0, s6, 677f
                  bltu         s6, a5, 690f
677:              slti         s9, s4, -940
                  sra          s1, s1, s8
                  ori          s8, a5, -1413
680:              xori         ra, s2, 1833
                  addi         s1, t6, 29
                  sltiu        s10, gp, -196
                  slt          t2, s2, a6
                  bltu         tp, s4, 700f
                  nop
                  srli         s7, t4, 11
                  auipc        t6, 753493
                  bne          ra, t4, 690f
                  slti         a0, t1, 886
690:              bne          a6, s11, 694f
                  bltu         s4, s4, 697f
                  add          s9, s5, tp
                  sra          t4, a7, sp
694:              auipc        a2, 826267
                  blt          s10, s1, 702f
                  xor          s2, s1, t6
697:              andi         a5, s10, 852
                  or           ra, t0, t6
                  srl          a4, a7, a4
700:              and          s5, s0, a4
                  slti         a7, a4, -1076
702:              sub          a4, s6, s1
                  bgeu         sp, t5, 704f
704:              or           s10, s2, a6
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a6, a6, -60
                  ori          t4, s9, -1666
                  sw           ra, 4(a6)
                  nop
                  auipc        s3, 171634
                  sltiu        zero, t1, 364
                  addi         t2, ra, 725
                  srli         s2, s2, 25
                  or           a0, s1, a6
                  or           s7, t4, s5
                  lui          t1, 920655
                  ori          tp, t6, -576
                  sra          s7, a1, gp
                  auipc        a3, 170703
sub_2_j5:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  sub          t2, a4, s5
                  lui          t5, 569500
                  sub          t1, tp, a0
                  lui          t5, 841493
                  slt          zero, t0, s5
                  sltu         a3, t6, s1
                  and          s9, a2, t4
                  sra          s1, ra, s2
                  andi         t4, a7, 1838
                  sub          t5, a1, zero
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  beq          a6, s4, sub_2_j7 #branch to jump instr
                  slt          gp, a2, a1
                  srl          s8, gp, t1
                  srl          s4, tp, a0
                  sltu         a2, s7, gp
                  xori         a1, a1, 653
sub_2_j7:         jal          ra, sub_3 #jump sub_2 -> sub_3
sub_2_0:          jal          ra, 13f
0:                jal          ra, 8f
1:                jal          t1, 9f
2:                jal          t1, 0b
3:                jal          t1, 2b
4:                jal          s5, 14f
5:                jal          tp, 10f
6:                jal          a2, 1b
7:                jal          ra, 16f
8:                jal          gp, 5b
9:                jal          s6, 11f
10:               jal          t1, 7b
11:               jal          t1, 3b
12:               jal          ra, 4b
13:               jal          ra, 12b
14:               jal          a5, 15f
15:               jal          tp, 6b
16:               xor          a4, tp, a6
                  srai         s6, s11, 15
                  bgeu         tp, s9, 3f
                  or           a4, sp, s9
3:                bgeu         s3, s7, 22f
                  sra          a5, t6, sp
                  or           s6, s3, t4
                  sll          t2, s8, s4
                  slti         t4, a4, 830
                  slti         s7, a0, 1761
                  sltu         a7, s3, s7
                  blt          gp, s5, 11f
11:               slli         t1, s7, 1
                  bge          a7, s5, 23f
                  slt          t2, tp, t4
                  bne          s5, s7, 32f
                  add          zero, a0, s4
                  slti         ra, gp, -1506
                  or           a4, s6, t0
                  sltiu        s8, tp, -676
                  beq          a3, s3, 23f
                  bltu         s5, ra, 23f
                  bne          s2, t5, 39f
22:               xori         s3, tp, 677
23:               and          t2, a7, t5
                  sra          s10, a7, a1
                  srai         a2, s8, 11
                  slti         gp, gp, -1259
                  bgeu         s0, t1, 34f
                  lui          s4, 806456
                  srli         s10, t0, 27
                  sra          a5, gp, t2
                  slli         s6, s11, 9
32:               sra          a3, ra, a5
                  add          t1, t0, a4
34:               bge          s7, s9, 43f
                  and          s7, t2, a6
                  sltu         a0, a1, a5
                  srl          s7, s9, s8
                  lui          t6, 807131
39:               and          s10, t4, t6
                  srli         a1, a6, 15
                  addi         s5, sp, -2020
                  bltu         a5, a5, 52f
43:               xori         a5, ra, 1495
                  srli         gp, tp, 28
                  nop
                  and          t5, s5, s9
                  bne          s11, s0, 65f
                  slti         zero, s0, 1374
                  xor          a1, t5, s10
                  ori          t5, t3, 1724
                  srai         t4, t0, 22
52:               slti         s11, t1, 1945
                  slli         s0, s7, 21
                  bgeu         a2, a7, 64f
                  and          s8, s1, t5
                  or           sp, a6, t0
                  andi         s10, gp, 1155
                  slli         s8, t4, 17
                  and          t1, t3, tp
                  addi         a1, t3, -1352
                  beq          a0, t3, 74f
                  xori         s1, s10, 1359
                  sra          zero, t0, s7
64:               bltu         t4, t4, 76f
65:               srai         s6, s5, 22
                  sub          t6, a7, a5
                  sra          t1, s4, a0
                  and          zero, t6, s1
                  xori         a1, t6, -639
                  srai         s2, s2, 15
                  srl          s5, s11, s9
                  srli         a4, s2, 9
                  auipc        a5, 387590
74:               auipc        s11, 100610
                  or           a4, a3, a4
76:               srai         s3, s6, 12
                  nop
                  xor          a7, s10, tp
                  xori         a5, ra, -1507
                  andi         s3, zero, 569
                  add          s7, a0, s6
                  lw           ra, 4(a6)
                  add          a7, t3, s8
                  srl          s2, ra, a0
                  slli         t2, s5, 15
                  andi         s8, a2, 701
                  addi         a6, a6, 60
                  sltiu        s3, tp, 2008
                  andi         a7, a5, -2039
141:              addi x9, x1, 1
141:              jalr x9, x9, 0
sub_1:            add          t2, t2, tp
                  addi         a6, a6, -16
                  auipc        a0, 220918
                  srl          a4, t4, s8
                  sll          s1, s0, t4
                  addi         s5, tp, -403
                  sw           ra, 4(a6)
                  andi         s9, t5, -74
                  xor          sp, s1, s8
                  sra          a2, s11, s10
                  andi         zero, t4, -1143
                  beq          t3, t0, sub_1_j4 #branch to jump instr
                  lui          a0, 33141
                  sll          s3, sp, zero
                  ori          s11, t3, -587
                  lui          s8, 489763
                  add          a2, t3, a3
sub_1_j4:         jal          ra, sub_2 #jump sub_1 -> sub_2
sub_1_0:          jal          ra, 4f
0:                jal          ra, 10f
1:                jal          ra, 11f
2:                jal          ra, 12f
3:                jal          ra, 0b
4:                jal          ra, 6f
5:                jal          s8, 8f
6:                jal          ra, 5b
7:                jal          ra, 1b
8:                jal          gp, 7b
9:                jal          ra, 2b
10:               jal          t1, 9b
11:               jal          a2, 3b
12:               sub          t5, s5, s9
sub_1_1:          jal          ra, 20f
0:                jal          s7, 2f
1:                jal          ra, 4f
2:                jal          t1, 9f
3:                jal          t1, 11f
4:                jal          ra, 3b
5:                jal          sp, 10f
6:                jal          ra, 12f
7:                jal          t1, 21f
8:                jal          ra, 18f
9:                jal          ra, 5b
10:               jal          ra, 15f
11:               jal          tp, 19f
12:               jal          ra, 17f
13:               jal          t1, 0b
14:               jal          ra, 13b
15:               jal          ra, 7b
16:               jal          sp, 14b
17:               jal          ra, 16b
18:               jal          ra, 1b
19:               jal          gp, 6b
20:               jal          t1, 8b
21:               sub          t1, s8, s2
sub_1_2:          jal          ra, 9f
0:                jal          t1, 17f
1:                jal          ra, 5f
2:                jal          ra, 15f
3:                jal          ra, 8f
4:                jal          t6, 1b
5:                jal          ra, 0b
6:                jal          ra, 18f
7:                jal          ra, 14f
8:                jal          t1, 7b
9:                jal          ra, 3b
10:               jal          s8, 19f
11:               jal          ra, 4b
12:               jal          t1, 13f
13:               jal          ra, 16f
14:               jal          sp, 11b
15:               jal          ra, 10b
16:               jal          t1, 2b
17:               jal          ra, 6b
18:               jal          t6, 12b
19:               xor          s11, t1, s7
                  srl          s3, s9, t5
                  beq          a5, ra, 7f
                  add          t2, t0, a3
                  bne          s5, a4, 9f
                  or           zero, t1, a3
                  slt          s3, a6, s1
                  ori          t2, s5, -1738
7:                ori          a1, a0, 939
                  add          a4, a5, t3
9:                add          s7, s3, s11
                  add          s2, gp, s3
                  andi         a5, t6, -1216
                  sltiu        s4, zero, 1950
                  xor          s0, s9, s6
                  addi         gp, t6, 532
                  ori          tp, t5, -53
                  sra          s1, gp, a0
sub_1_3:          jal          ra, 6f
0:                jal          tp, 20f
1:                jal          ra, 15f
2:                jal          s10, 25f
3:                jal          ra, 17f
4:                jal          ra, 5f
5:                jal          ra, 24f
6:                jal          tp, 26f
7:                jal          ra, 9f
8:                jal          ra, 7b
9:                jal          s10, 29f
10:               jal          ra, 1b
11:               jal          ra, 19f
12:               jal          ra, 18f
13:               jal          ra, 12b
14:               jal          ra, 0b
15:               jal          sp, 28f
16:               jal          ra, 8b
17:               jal          gp, 22f
18:               jal          ra, 11b
19:               jal          ra, 3b
20:               jal          ra, 16b
21:               jal          s9, 13b
22:               jal          ra, 4b
23:               jal          ra, 14b
24:               jal          ra, 27f
25:               jal          t2, 10b
26:               jal          ra, 2b
27:               jal          ra, 23b
28:               jal          t1, 21b
29:               srl          s0, a3, ra
                  slt          s7, a4, s10
                  sra          s0, s10, a0
                  sll          s2, s0, s10
                  bne          s2, sp, 32f
                  bge          s3, a6, 34f
                  srai         zero, s0, 24
                  srai         a1, t5, 13
                  sltiu        a4, a7, 813
                  sltiu        a1, s1, 1839
                  slti         s10, s11, 183
                  slti         t5, s2, 1931
                  add          a7, a7, gp
                  bne          a1, s1, 38f
                  bgeu         s3, s2, 34f
                  xori         zero, s0, -1024
                  slt          a1, s10, t2
                  sll          t6, s6, t4
                  sll          a7, t0, s8
                  slli         s10, sp, 17
                  addi         gp, s9, 233
                  nop
                  sra          s3, gp, t2
                  srl          a0, t3, s6
                  bne          t2, t1, sub_1_j3 #branch to jump instr
                  sll          s9, s5, s11
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  bgeu         t3, t5, 45f
32:               beq          t2, t3, 46f
                  beq          s6, t0, 38f
34:               bltu         s11, s3, 54f
                  andi         t5, t0, 581
                  bne          s0, s7, 50f
                  xor          t5, a0, t2
38:               slti         t1, s5, 228
                  sltu         a3, a0, t5
                  add          s11, sp, a0
                  sltiu        s1, s6, -1010
                  bne          s7, t1, 61f
                  and          s5, tp, s9
                  slt          s7, t5, s10
45:               ori          s11, t5, 1006
46:               xor          sp, a2, a0
                  sra          s9, s9, gp
                  auipc        s7, 705668
                  srli         tp, a3, 31
50:               and          s5, a0, s9
                  or           s2, s5, s2
                  xori         tp, a3, -670
                  addi         t5, s5, 593
54:               xor          s4, s8, s3
                  sltu         s9, s3, s7
                  srai         s11, t0, 25
                  srai         s7, s11, 19
                  beq          sp, s10, 67f
                  srai         s3, a4, 16
                  bge          t2, s11, 69f
61:               and          s6, a6, s6
                  andi         s8, tp, 1110
                  and          tp, gp, s4
                  ori          s2, s2, 1819
                  sll          s4, a3, s11
                  srli         a0, s10, 28
67:               or           a0, s6, s1
                  srli         sp, s9, 29
69:               and          a4, s3, s10
                  sltu         gp, s4, gp
                  sub          s10, a6, a5
                  srli         s9, a2, 1
                  sltu         s4, a0, a7
                  nop
                  xori         a1, s3, -1463
                  blt          t2, sp, 94f
                  and          s2, s3, a3
                  sltu         s3, zero, t2
                  slti         a4, t6, 902
                  bgeu         s8, s8, 94f
                  slli         s4, a0, 28
                  sub          s3, tp, t2
                  bne          a0, s7, 103f
                  sra          s11, s2, a0
                  srai         s8, s11, 0
                  beq          t3, s6, 95f
                  addi         s1, s4, 323
                  xori         zero, s9, -776
                  bgeu         s6, s3, 91f
                  srl          s11, t0, ra
91:               bltu         t2, t6, 98f
                  sra          a3, sp, t6
                  blt          s1, s3, 101f
94:               bltu         t1, s11, 98f
95:               add          ra, s2, a6
                  sra          a1, s6, zero
                  slt          t5, a7, t2
98:               auipc        s3, 833138
                  srli         sp, s9, 30
                  slti         t1, t5, 1971
101:              and          zero, s7, zero
                  andi         s6, t1, -733
103:              slt          t5, s8, ra
                  bgeu         gp, t4, 118f
                  sub          a0, s7, s8
                  ori          s4, a4, 2034
                  and          t6, s4, s4
                  bgeu         a7, s6, 127f
                  nop
                  sub          t6, a2, s3
                  lui          s1, 853670
                  bgeu         zero, t1, 118f
                  slli         ra, s6, 9
                  blt          a5, a1, 115f
115:              andi         a2, s3, -441
                  sra          s2, tp, s7
                  slti         s8, a1, -731
118:              sra          s9, s10, t5
                  sll          s7, a3, sp
                  xor          s5, a0, zero
                  bltu         t5, s3, 138f
                  xori         a5, t6, -420
                  sra          ra, s8, a3
                  sra          t1, s10, a2
                  and          tp, s6, zero
                  bltu         s10, a7, 146f
127:              bltu         s5, ra, 147f
                  slli         s1, a7, 5
                  sltiu        s9, a1, 857
                  sub          s5, a7, t6
                  bgeu         s7, t1, 137f
                  srai         s2, a5, 9
                  srai         a5, tp, 7
                  beq          a1, a2, 153f
                  andi         a2, zero, 1553
                  srli         s10, t4, 13
137:              srl          a1, s2, ra
138:              ori          s2, s10, -534
                  slt          t6, s7, a7
                  beq          s7, s8, 157f
                  slli         s5, a6, 15
                  sub          t1, a5, a2
                  bgeu         s9, a7, 145f
                  sll          ra, s7, gp
145:              slli         s6, t2, 22
146:              and          s3, a1, s2
147:              beq          t4, s7, 167f
                  ori          sp, t0, -1332
                  lui          a4, 1048102
                  sltiu        t2, sp, 479
                  and          s3, a6, sp
                  xori         a2, a5, -863
153:              sltiu        s11, a5, 734
                  sra          zero, a3, a5
                  addi         a4, tp, 1151
                  or           s4, t3, s3
157:              bgeu         s5, s11, 165f
                  srai         s2, t6, 2
                  auipc        t6, 591
                  bge          s11, s8, 166f
                  blt          zero, s3, 181f
                  sltu         s4, t1, s1
                  sll          a1, s7, tp
                  srai         s3, a1, 19
165:              andi         gp, t2, -1043
166:              lui          zero, 677811
167:              xori         s7, sp, 1927
                  bge          s3, ra, 174f
                  andi         t1, a6, -634
                  bge          s11, a5, 176f
                  lui          ra, 932829
                  sltu         s1, a1, ra
                  sltu         a0, s4, a4
174:              slt          s4, s11, a0
                  sra          gp, t5, t5
176:              sltiu        s4, s7, 493
                  sub          s6, s9, sp
                  or           s5, t2, a1
                  sub          tp, s11, tp
                  or           sp, ra, s9
181:              blt          s8, t1, 188f
                  nop
                  bge          tp, s5, 192f
                  blt          s11, tp, 198f
                  slti         a1, s7, 1811
                  lui          s4, 598360
                  ori          a1, s5, 182
188:              add          gp, sp, s7
                  addi         gp, a6, -1824
                  sra          zero, t5, s3
                  bltu         s10, a0, 200f
192:              slt          s1, s1, s11
                  xor          a2, a1, a5
                  srai         t5, s10, 5
                  srai         a4, s6, 16
                  slli         a2, t5, 2
                  bge          a4, zero, 202f
198:              srli         s11, t2, 8
                  addi         tp, t6, -1698
200:              bne          s4, s8, 214f
                  xori         a3, s11, 212
202:              auipc        s1, 530519
                  srli         s1, t5, 24
                  sra          a5, a0, a3
                  slti         t5, t3, -503
                  nop
                  sltiu        a0, a0, -1194
                  sltu         s9, a6, sp
                  lui          s4, 715153
                  ori          s0, s1, -232
                  ori          a4, t2, 484
                  addi         tp, s4, -773
                  sll          s4, t5, a0
214:              andi         s8, s2, 1284
                  sub          s11, t2, zero
                  or           s4, s0, s3
                  sll          t4, s7, a5
                  xori         a2, a1, -597
                  slli         s7, ra, 4
                  ori          s8, a7, 713
                  beq          s10, t3, 240f
                  slt          t4, s7, s8
                  bne          a0, s8, 243f
                  ori          ra, s5, -915
                  or           s2, t1, sp
                  blt          s5, t0, 232f
                  nop
                  nop
                  sra          a7, s1, a1
                  bgeu         s3, a1, 244f
                  srli         s6, t6, 17
232:              sltu         s7, s6, tp
                  or           a1, s4, t6
                  bge          a4, tp, 238f
                  andi         s10, s3, 941
                  and          t2, s9, a0
                  addi         a7, s7, 1873
238:              bge          t1, t0, 245f
                  bge          tp, t2, 245f
240:              ori          s3, a7, -1512
                  srai         s4, t4, 17
                  sltu         zero, s8, t0
243:              slt          s10, s2, t4
244:              srl          s9, s2, a7
245:              xor          t4, a6, zero
                  ori          s2, t1, -896
                  addi         s8, t4, 881
                  auipc        a5, 317583
                  lw           ra, 4(a6)
                  sra          sp, a5, s0
                  addi         a6, a6, 16
                  sub          s10, gp, t3
372:              addi x20, x1, 1
372:              jalr x20, x20, 0
sub_5:            addi         a6, a6, -20
                  andi         t5, s0, -1643
                  slti         s8, t1, -1695
                  slli         s5, a4, 27
                  sw           ra, 4(a6)
                  add          s10, a4, a2
sub_5_20:         jal          ra, 18f
0:                jal          t1, 20f
1:                jal          sp, 12f
2:                jal          t1, 17f
3:                jal          ra, 23f
4:                jal          ra, 14f
5:                jal          s8, 21f
6:                jal          ra, 16f
7:                jal          tp, 3b
8:                jal          t1, 11f
9:                jal          ra, 4b
10:               jal          ra, 8b
11:               jal          s1, 19f
12:               jal          t1, 22f
13:               jal          ra, 25f
14:               jal          ra, 1b
15:               jal          ra, 5b
16:               jal          ra, 13b
17:               jal          ra, 6b
18:               jal          ra, 10b
19:               jal          ra, 15b
20:               jal          a3, 9b
21:               jal          ra, 24f
22:               jal          ra, 2b
23:               jal          ra, 0b
24:               jal          t1, 7b
25:               add          s3, s3, a6
sub_5_17:         jal          ra, 22f
0:                jal          a2, 10f
1:                jal          t1, 21f
2:                jal          t1, 6f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          a5, 11f
7:                jal          t1, 15f
8:                jal          ra, 20f
9:                jal          t1, 17f
10:               jal          a7, 19f
11:               jal          ra, 0b
12:               jal          t1, 7b
13:               jal          ra, 2b
14:               jal          ra, 23f
15:               jal          ra, 4b
16:               jal          ra, 3b
17:               jal          t1, 1b
18:               jal          ra, 24f
19:               jal          ra, 14b
20:               jal          ra, 18b
21:               jal          t1, 16b
22:               jal          s2, 13b
23:               jal          ra, 12b
24:               sll          s1, t2, a1
sub_5_1:          jal          ra, 1f
0:                jal          tp, 12f
1:                jal          t1, 4f
2:                jal          ra, 19f
3:                jal          sp, 11f
4:                jal          ra, 8f
5:                jal          s10, 20f
6:                jal          ra, 23f
7:                jal          ra, 15f
8:                jal          s8, 10f
9:                jal          ra, 0b
10:               jal          ra, 7b
11:               jal          ra, 14f
12:               jal          s9, 6b
13:               jal          sp, 9b
14:               jal          ra, 16f
15:               jal          s6, 3b
16:               jal          gp, 17f
17:               jal          ra, 21f
18:               jal          sp, 22f
19:               jal          ra, 18b
20:               jal          t1, 13b
21:               jal          ra, 5b
22:               jal          ra, 24f
23:               jal          ra, 2b
24:               slt          s7, sp, tp
sub_5_15:         jal          ra, 2f
0:                jal          t1, 6f
1:                jal          sp, 4f
2:                jal          ra, 5f
3:                jal          ra, 10f
4:                jal          ra, 8f
5:                jal          t1, 9f
6:                jal          ra, 7f
7:                jal          ra, 3b
8:                jal          a7, 11f
9:                jal          a4, 0b
10:               jal          t4, 1b
11:               srl          s7, gp, s2
sub_5_0:          jal          ra, 3f
0:                jal          ra, 13f
1:                jal          ra, 0b
2:                jal          t1, 10f
3:                jal          ra, 9f
4:                jal          sp, 6f
5:                jal          ra, 11f
6:                jal          ra, 8f
7:                jal          t1, 5b
8:                jal          t5, 12f
9:                jal          ra, 7b
10:               jal          ra, 4b
11:               jal          ra, 1b
12:               jal          ra, 14f
13:               jal          t1, 2b
14:               sltu         s5, t2, s11
sub_5_9:          jal          ra, 16f
0:                jal          s3, 9f
1:                jal          ra, 8f
2:                jal          a7, 15f
3:                jal          t1, 0b
4:                jal          ra, 11f
5:                jal          t6, 3b
6:                jal          t1, 7f
7:                jal          s1, 4b
8:                jal          t1, 13f
9:                jal          ra, 14f
10:               jal          s11, 5b
11:               jal          ra, 2b
12:               jal          t1, 10b
13:               jal          t1, 6b
14:               jal          tp, 1b
15:               jal          t1, 17f
16:               jal          ra, 12b
17:               sltiu        s11, t5, -191
sub_5_6:          jal          ra, 20f
0:                jal          ra, 15f
1:                jal          t1, 6f
2:                jal          sp, 23f
3:                jal          ra, 1b
4:                jal          s4, 5f
5:                jal          s10, 9f
6:                jal          ra, 26f
7:                jal          ra, 4b
8:                jal          ra, 13f
9:                jal          gp, 18f
10:               jal          s1, 12f
11:               jal          ra, 22f
12:               jal          t1, 25f
13:               jal          sp, 3b
14:               jal          ra, 24f
15:               jal          t2, 14b
16:               jal          t1, 8b
17:               jal          ra, 16b
18:               jal          t1, 0b
19:               jal          ra, 17b
20:               jal          ra, 7b
21:               jal          t4, 19b
22:               jal          ra, 10b
23:               jal          t1, 11b
24:               jal          s8, 2b
25:               jal          ra, 21b
26:               or           a3, a2, s2
sub_5_14:         jal          ra, 22f
0:                jal          gp, 16f
1:                jal          a0, 11f
2:                jal          ra, 12f
3:                jal          ra, 7f
4:                jal          ra, 0b
5:                jal          ra, 18f
6:                jal          tp, 19f
7:                jal          s9, 1b
8:                jal          s1, 23f
9:                jal          t1, 15f
10:               jal          ra, 13f
11:               jal          ra, 10b
12:               jal          ra, 14f
13:               jal          t1, 21f
14:               jal          ra, 8b
15:               jal          ra, 17f
16:               jal          ra, 3b
17:               jal          ra, 5b
18:               jal          s10, 6b
19:               jal          ra, 4b
20:               jal          ra, 9b
21:               jal          a0, 2b
22:               jal          ra, 20b
23:               slti         s11, a2, -427
sub_5_8:          jal          ra, 8f
0:                jal          t1, 22f
1:                jal          ra, 16f
2:                jal          ra, 27f
3:                jal          t1, 10f
4:                jal          ra, 17f
5:                jal          ra, 3b
6:                jal          ra, 14f
7:                jal          ra, 21f
8:                jal          ra, 11f
9:                jal          ra, 0b
10:               jal          tp, 20f
11:               jal          ra, 28f
12:               jal          gp, 15f
13:               jal          t1, 25f
14:               jal          ra, 13b
15:               jal          t1, 29f
16:               jal          t5, 26f
17:               jal          s1, 12b
18:               jal          a4, 4b
19:               jal          ra, 23f
20:               jal          ra, 9b
21:               jal          ra, 6b
22:               jal          t1, 7b
23:               jal          ra, 1b
24:               jal          ra, 5b
25:               jal          ra, 18b
26:               jal          t4, 2b
27:               jal          gp, 24b
28:               jal          t1, 19b
29:               slti         gp, s6, 622
sub_5_7:          jal          ra, 1f
0:                jal          ra, 14f
1:                jal          t1, 2f
2:                jal          ra, 12f
3:                jal          gp, 8f
4:                jal          ra, 5f
5:                jal          ra, 13f
6:                jal          ra, 15f
7:                jal          s9, 16f
8:                jal          t1, 10f
9:                jal          ra, 3b
10:               jal          t1, 4b
11:               jal          t1, 6b
12:               jal          ra, 11b
13:               jal          a3, 0b
14:               jal          ra, 7b
15:               jal          gp, 9b
16:               or           s10, t4, s0
sub_5_11:         jal          ra, 6f
0:                jal          a3, 13f
1:                jal          t1, 11f
2:                jal          s10, 0b
3:                jal          ra, 8f
4:                jal          gp, 9f
5:                jal          s11, 14f
6:                jal          s7, 3b
7:                jal          ra, 1b
8:                jal          ra, 5b
9:                jal          t1, 17f
10:               jal          t1, 18f
11:               jal          t1, 10b
12:               jal          ra, 2b
13:               jal          t1, 15f
14:               jal          t1, 12b
15:               jal          t1, 16f
16:               jal          gp, 4b
17:               jal          t1, 7b
18:               sltiu        s2, t6, -1801
sub_5_18:         jal          ra, 1f
0:                jal          s11, 2f
1:                jal          s10, 3f
2:                jal          ra, 8f
3:                jal          a0, 15f
4:                jal          tp, 12f
5:                jal          ra, 11f
6:                jal          ra, 4b
7:                jal          sp, 5b
8:                jal          ra, 9f
9:                jal          ra, 18f
10:               jal          ra, 0b
11:               jal          t1, 16f
12:               jal          a3, 7b
13:               jal          t1, 10b
14:               jal          a3, 13b
15:               jal          ra, 17f
16:               jal          ra, 14b
17:               jal          t1, 6b
18:               jal          ra, 19f
19:               slli         tp, zero, 31
sub_5_5:          jal          ra, 18f
0:                jal          ra, 9f
1:                jal          t4, 5f
2:                jal          s7, 6f
3:                jal          s0, 8f
4:                jal          ra, 24f
5:                jal          ra, 22f
6:                jal          s2, 1b
7:                jal          ra, 0b
8:                jal          ra, 23f
9:                jal          ra, 13f
10:               jal          t1, 20f
11:               jal          ra, 10b
12:               jal          ra, 7b
13:               jal          tp, 4b
14:               jal          ra, 12b
15:               jal          t1, 16f
16:               jal          ra, 11b
17:               jal          ra, 19f
18:               jal          ra, 17b
19:               jal          ra, 2b
20:               jal          t1, 3b
21:               jal          s11, 15b
22:               jal          t1, 21b
23:               jal          a2, 14b
24:               sltu         s9, s4, a0
sub_5_12:         jal          ra, 16f
0:                jal          ra, 3f
1:                jal          ra, 24f
2:                jal          s5, 22f
3:                jal          t2, 14f
4:                jal          ra, 1b
5:                jal          a5, 19f
6:                jal          t2, 4b
7:                jal          a0, 23f
8:                jal          ra, 11f
9:                jal          t5, 18f
10:               jal          s0, 6b
11:               jal          t1, 10b
12:               jal          s2, 25f
13:               jal          ra, 17f
14:               jal          ra, 7b
15:               jal          gp, 5b
16:               jal          ra, 12b
17:               jal          ra, 21f
18:               jal          t1, 2b
19:               jal          ra, 9b
20:               jal          ra, 13b
21:               jal          ra, 15b
22:               jal          ra, 0b
23:               jal          gp, 8b
24:               jal          sp, 26f
25:               jal          t1, 20b
26:               lui          t1, 478755
sub_5_10:         jal          ra, 9f
0:                jal          ra, 7f
1:                jal          t1, 2f
2:                jal          ra, 3f
3:                jal          gp, 8f
4:                jal          ra, 6f
5:                jal          sp, 10f
6:                jal          gp, 0b
7:                jal          ra, 11f
8:                jal          ra, 4b
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               lui          s8, 565636
                  addi         t4, s5, -541
                  bltu         sp, s8, 21f
                  lui          zero, 867521
                  srl          s1, t0, t1
                  auipc        a0, 661842
                  bge          ra, t2, 6f
6:                srl          t1, t4, s8
                  nop
                  addi         s8, a1, 2047
                  xor          s11, a2, sp
                  bne          tp, t0, 27f
                  srli         s9, t1, 16
                  xori         a5, a3, -1539
                  srai         t2, a5, 26
                  sub          sp, s5, s3
                  xor          s6, t1, a7
                  add          a5, s3, t3
                  addi         s4, s6, -1176
                  beq          a5, s1, 31f
                  addi         a0, ra, 228
                  blt          s5, zero, 34f
21:               andi         a5, s6, -1765
                  bge          s6, ra, 33f
                  slti         tp, a4, -1895
                  auipc        t1, 614279
                  slli         t4, s3, 30
                  and          t5, ra, t1
27:               or           s2, s4, a4
                  bne          s8, s0, 41f
                  auipc        sp, 954570
sub_5_4:          jal          ra, 6f
0:                jal          s3, 11f
1:                jal          a0, 4f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          t1, 8f
5:                jal          s7, 7f
6:                jal          t1, 10f
7:                jal          a4, 0b
8:                jal          ra, 9f
9:                jal          ra, 2b
10:               jal          gp, 5b
11:               jal          t1, 1b
12:               srai         tp, a4, 19
                  lui          a5, 956038
31:               slti         s11, s6, -1300
                  sltiu        gp, a0, -816
33:               sll          s1, a3, t2
34:               andi         s7, s3, 965
                  slti         s5, t0, -695
                  add          a3, s11, s9
                  xori         s3, zero, 90
                  sltiu        s5, s2, -1115
                  srai         s7, t0, 19
                  bge          s2, zero, 49f
41:               sltiu        t2, s0, 314
                  sub          s1, s11, a6
                  slli         a3, t4, 20
                  nop
                  xori         t1, s0, -1380
                  sltiu        t2, s7, -554
                  slt          a0, t0, zero
                  and          zero, a5, s8
49:               xor          a5, a7, t2
                  sltiu        tp, t0, -34
                  slti         sp, t2, 728
                  auipc        a4, 49791
                  beq          a2, s7, 57f
                  bne          t6, tp, 58f
                  lui          s6, 338761
                  nop
57:               beq          s10, a7, 72f
58:               srl          a7, s4, a6
                  sub          t5, s0, s11
                  srl          gp, a5, a6
                  nop
                  sll          s1, ra, s11
                  slti         a0, tp, 718
                  sll          s11, s7, ra
                  slli         t5, t1, 12
                  nop
                  bgeu         s6, t1, 85f
                  andi         t1, s9, 950
                  sra          gp, a1, a4
                  xori         a3, sp, 13
                  andi         s1, a4, -1540
72:               bltu         a4, s2, 86f
                  add          s6, a6, s7
                  blt          a2, s7, 94f
                  sll          t5, s1, s4
                  add          s8, s10, s7
                  sltu         s2, t2, t2
                  sub          s9, t1, s6
                  sltiu        s5, tp, -320
                  srai         t5, ra, 11
                  addi         s5, s6, 590
                  andi         a2, sp, -1823
                  or           a5, t5, a6
                  add          s4, t0, s6
85:               sll          a4, t4, t4
86:               sltiu        tp, a3, 551
                  slti         s8, s3, -888
                  sll          tp, a2, a3
                  slt          s4, sp, a4
                  bge          zero, a5, 91f
91:               ori          s7, t2, 354
                  xori         a2, s1, -1440
                  addi         t1, a1, -34
94:               slti         s0, s9, 755
                  slli         t4, t6, 8
                  auipc        t5, 284330
                  sub          a5, ra, a7
                  sltiu        s5, ra, 1647
                  xori         tp, s10, -1557
                  sltiu        s5, t6, 752
                  blt          a5, a7, 106f
                  lui          a3, 26782
                  sll          s7, a1, s8
                  beq          t0, s6, 122f
                  andi         s10, s3, -1856
106:              srai         ra, t1, 24
                  slt          ra, a6, a1
                  or           gp, t5, a6
                  slt          s7, a3, t0
                  sub          a0, a2, a7
                  bltu         s3, s8, 112f
112:              slt          s5, a1, s10
                  sub          t1, a2, t2
                  srai         s5, s9, 9
                  addi         s2, t5, -557
                  sltu         s0, gp, s2
                  slti         s6, s9, -1534
                  bltu         s8, a7, 121f
                  slt          s1, gp, t0
                  lui          s2, 620224
121:              srai         s3, a7, 20
122:              slti         s8, tp, 240
                  or           sp, s1, s5
                  sra          a0, a6, s5
                  beq          t4, s8, 141f
                  blt          t5, s0, 129f
                  srli         t5, s3, 8
                  xori         s2, a0, -950
129:              bltu         a3, s11, 143f
                  add          t5, s5, t0
                  slli         a5, t6, 9
                  bne          zero, zero, 141f
                  add          s11, t1, tp
                  lui          s3, 695265
                  or           s8, s6, a1
                  nop
                  ori          a2, s9, -1865
                  sltu         s1, zero, ra
                  bltu         a1, s9, 151f
                  beq          a2, a6, 159f
141:              bgeu         ra, s3, 153f
                  bne          s0, tp, 158f
143:              bne          a5, a3, 148f
sub_5_3:          jal          ra, 3f
0:                jal          ra, 2f
1:                jal          t1, 0b
2:                jal          ra, 12f
3:                jal          ra, 9f
4:                jal          ra, 10f
5:                jal          ra, 8f
6:                jal          t1, 13f
7:                jal          ra, 5b
8:                jal          ra, 11f
9:                jal          t4, 7b
10:               jal          sp, 1b
11:               jal          ra, 4b
12:               jal          ra, 6b
13:               andi         s3, t1, -1205
                  slti         a5, s5, -1382
                  andi         a7, a6, -689
                  or           a7, s8, s9
                  slt          s9, tp, a3
148:              sll          s4, s10, a0
                  add          s8, t6, a3
                  xori         s4, t5, -1304
151:              srl          s7, a4, t1
                  auipc        t5, 550914
153:              nop
                  or           s10, a3, a4
                  or           s8, t5, s1
                  bgeu         s9, t3, 162f
                  beq          a4, gp, 172f
158:              sll          a2, s2, s0
159:              srli         gp, tp, 22
                  xori         t5, t4, 1290
                  sra          t6, a7, a6
162:              sltu         ra, zero, a1
                  add          a4, s9, s4
                  add          s8, s2, sp
                  sub          s0, t5, s10
                  bltu         t1, s6, 169f
                  nop
                  addi         sp, s9, 453
169:              blt          a6, gp, 170f
170:              nop
                  beq          t4, a5, 183f
172:              or           t2, a1, a4
                  sub          a2, ra, t0
                  srl          ra, s4, a4
                  or           t6, sp, a6
                  sra          s4, s5, a5
                  sll          a1, s4, t2
                  nop
                  xor          s2, s2, a7
                  sll          a5, t2, a7
                  srli         s10, t4, 19
                  xor          s9, s5, s0
183:              auipc        t5, 1018328
                  lui          s4, 255826
                  auipc        s5, 436518
                  srai         s9, a6, 10
                  bltu         s7, t0, 199f
                  add          sp, s10, s1
                  blt          t3, s4, 203f
                  lui          a5, 449673
                  andi         s9, s6, 600
                  addi         tp, a1, 669
                  sll          a2, a2, s11
                  andi         t4, t4, -180
                  bge          s4, a6, 199f
                  bgeu         t4, t0, 210f
                  bge          t6, a1, 213f
                  andi         s8, s3, -961
199:              srai         sp, a7, 11
                  nop
                  sub          s0, s9, t5
                  slli         s1, s1, 1
203:              srli         t6, a2, 11
                  blt          s0, t6, 219f
                  slt          ra, s5, s5
                  xori         a7, s5, -171
                  slli         sp, s3, 19
                  add          s5, a7, s4
                  ori          a2, s0, -41
210:              ori          s6, a0, -303
                  slt          s6, s3, s3
                  bgeu         s4, a7, 231f
213:              and          s9, a5, a0
                  add          s0, a1, t5
                  srai         a4, s3, 0
                  slli         s1, a5, 15
                  srai         t4, a1, 2
                  sub          ra, s0, zero
219:              srli         s6, t4, 11
                  bge          a4, s8, 240f
                  slti         a4, zero, 1737
                  srai         s6, t5, 10
                  andi         a3, s0, -500
                  sll          s11, s8, s2
                  beq          s10, t1, 238f
                  addi         s6, s4, 1591
                  slli         a5, s1, 30
                  andi         s3, gp, 834
                  andi         s2, s1, -243
                  sltiu        t5, tp, 1961
231:              slli         a3, a5, 16
                  slli         a7, t1, 1
                  sltu         s10, a2, t3
                  blt          t5, s11, 252f
                  blt          s6, s4, 250f
                  bgeu         t4, t3, 256f
                  sra          a0, s10, s0
238:              add          t1, a7, s5
                  sra          t4, s8, a6
240:              slt          gp, s2, a2
                  andi         s4, t6, -313
                  slti         s3, sp, -640
                  blt          s5, t4, 261f
                  add          sp, t3, s10
                  andi         s5, s10, 2039
                  slli         s1, tp, 5
                  xor          t4, s7, a4
                  ori          t2, a5, 1150
                  xor          s4, s7, s9
250:              srli         s0, a3, 3
                  srl          s2, s0, t4
252:              and          a0, s10, t3
                  srai         s2, t0, 2
                  xori         s9, t2, 661
                  xor          s1, s0, s6
256:              or           a1, a5, t0
                  lui          t4, 929084
                  lui          a4, 782284
                  auipc        s6, 43075
                  srai         s9, tp, 2
261:              or           s6, s6, t2
                  beq          s10, a2, 268f
                  blt          a2, a1, 276f
                  slti         zero, s8, 1101
                  or           a7, s2, zero
                  or           s3, s9, tp
                  sltiu        ra, sp, -299
268:              bge          s8, s4, 279f
                  slli         s11, s1, 9
                  ori          t2, a7, -332
                  xor          t1, s11, s8
                  bne          t0, t0, 288f
                  bge          t6, gp, 277f
                  sltiu        s9, s10, 1781
                  bne          s5, s8, 289f
276:              bge          a4, s9, 285f
277:              ori          a0, ra, -1857
                  sll          s4, t1, s10
279:              andi         s6, a2, -1501
                  bgeu         t2, s4, 297f
                  bltu         s3, t2, 286f
                  andi         s10, a2, -557
                  add          t4, s0, zero
                  auipc        t6, 712645
285:              lui          tp, 167296
286:              slli         s4, tp, 21
                  addi         s2, t0, 1362
288:              xori         a7, t1, 593
289:              beq          s8, s2, 292f
                  sra          gp, tp, a2
                  andi         t4, s10, 672
292:              bgeu         s0, s4, 293f
293:              sra          gp, a7, a5
                  beq          t0, zero, 303f
                  slti         a0, t6, 546
                  sll          s5, s3, s4
297:              addi         gp, s7, 1397
                  blt          a6, a4, 299f
299:              auipc        t6, 178182
                  srli         ra, a2, 29
                  srai         s6, ra, 10
                  srl          zero, zero, t2
303:              sltu         a7, zero, t1
                  or           a2, s4, sp
                  xor          s4, a4, s8
                  and          a7, sp, zero
                  sub          a7, s0, s5
                  beq          a2, a3, 313f
                  sltu         tp, s6, tp
                  srai         s7, t4, 24
                  bne          t6, ra, 325f
                  bge          gp, a3, 332f
313:              lui          s6, 520101
                  sra          a0, t0, s7
                  lui          t5, 135842
                  bltu         s3, gp, 320f
                  ori          tp, t3, 1420
                  slt          a7, s6, a0
                  slli         t1, sp, 2
320:              blt          t0, t1, 333f
                  blt          a4, s8, 327f
                  auipc        a0, 743639
                  bgeu         zero, a4, 338f
                  auipc        ra, 242092
325:              nop
                  sll          a5, s7, s4
327:              or           a5, s0, s7
                  bge          tp, t4, 341f
                  sra          a5, t5, s11
                  and          a3, s5, a5
                  xori         s2, s9, -687
332:              andi         a3, a6, -481
333:              sub          s0, a5, gp
                  slt          a5, t4, t2
                  sltiu        a2, tp, 1587
                  and          s3, t3, t4
                  srli         a2, sp, 5
338:              srli         s6, s0, 26
                  nop
                  nop
341:              blt          t4, a0, 342f
342:              lui          s6, 634569
                  andi         s7, t3, -419
                  bge          s1, s4, 349f
                  bltu         s7, gp, 360f
                  add          s7, sp, s0
                  auipc        t5, 31094
                  andi         s9, sp, -852
349:              srli         t2, t3, 30
                  bne          t2, a1, 359f
                  xor          s0, s0, t2
                  bge          t4, t3, 368f
                  bltu         s0, tp, 362f
                  lui          s4, 321685
                  slti         s3, sp, 1965
                  ori          t4, a2, 2001
                  bltu         s7, t0, 375f
                  sltu         s4, a6, s7
359:              sll          t4, s0, s3
360:              srai         t5, a2, 21
                  nop
362:              xor          a1, t5, s1
                  addi         a2, s7, 1675
                  sub          ra, tp, s7
                  bge          t2, a4, 370f
                  or           s11, a6, a3
                  ori          s9, t0, 1529
368:              ori          ra, a5, -89
                  add          s6, a3, a5
370:              xori         gp, s4, -157
                  addi         t6, t0, -1688
                  beq          s6, a1, 383f
                  bge          s10, a4, 393f
                  srl          s9, t6, t0
375:              sll          s6, t3, ra
                  or           s2, zero, a1
                  sra          s3, s9, s1
                  addi         zero, a0, -1674
                  bltu         t2, s7, 391f
                  andi         s1, s0, -1302
                  auipc        t4, 649496
                  and          a5, s0, a7
383:              sll          s10, s5, s7
                  ori          s8, s11, 1300
                  sltu         s8, a3, tp
                  auipc        s1, 76339
                  srli         s4, t0, 12
                  slti         s9, a0, 584
                  ori          a1, s11, 965
                  nop
391:              slt          tp, s3, t5
                  srli         a5, a5, 2
393:              addi         a7, a7, -833
                  beq          a1, t0, 413f
                  ori          a7, s10, 1255
                  xori         sp, sp, -299
                  sltu         s9, s1, a2
                  sltiu        a1, s8, 1971
                  sub          t2, a3, s1
                  sll          t2, s9, ra
                  nop
                  bgeu         s9, t3, 403f
403:              bge          s6, a3, 406f
                  slt          t5, s9, a6
                  sub          s3, s0, a0
406:              bge          gp, s6, 424f
                  lui          tp, 728096
                  andi         a3, t3, 1567
                  srl          s11, t5, s7
                  lui          a0, 858870
                  ori          ra, s7, 1080
                  or           sp, s5, a4
413:              bge          s10, gp, 427f
                  beq          s4, s2, 428f
                  andi         zero, s7, 1198
                  bgeu         tp, ra, 433f
                  addi         s9, s11, -138
                  bne          s3, s10, 434f
                  bltu         ra, ra, 431f
                  addi         a2, t5, -1540
                  nop
                  srli         t1, s9, 9
                  addi         s3, s10, -683
424:              srai         t6, gp, 31
                  ori          t5, s0, -560
                  slli         s9, a2, 14
427:              slti         s7, ra, 928
428:              srli         tp, gp, 5
                  or           tp, a0, a3
                  addi         t4, s5, -1003
431:              sub          s7, a4, t6
                  slli         t1, t2, 12
433:              sra          a5, zero, a1
434:              auipc        gp, 571175
                  xor          s3, tp, s9
                  bgeu         t6, a3, 440f
                  bgeu         a0, t4, 440f
                  sra          zero, s6, t2
                  blt          t6, s10, 440f
440:              srl          t2, s4, ra
                  auipc        a1, 996865
                  bgeu         t0, a7, 451f
                  and          s4, a2, s9
                  xori         t6, gp, -1239
                  xor          a4, s1, s7
                  ori          s5, s1, 155
                  ori          a2, s5, 928
                  sltiu        a7, s1, -741
                  bgeu         s3, s3, 458f
                  bne          s11, s8, 464f
451:              xor          s3, s7, s9
                  andi         s6, sp, -187
                  bgeu         zero, ra, 454f
454:              bge          sp, ra, 458f
                  xori         t2, s0, -635
                  sll          t1, ra, t6
                  sub          s0, s3, s10
458:              sra          s10, t4, a3
                  slt          s7, s5, s4
                  bne          s6, a6, 463f
                  add          a1, a4, zero
                  slti         zero, s1, 1747
463:              add          s2, s1, a6
464:              bgeu         ra, a1, 480f
                  slli         a5, a3, 19
                  lui          sp, 734447
                  auipc        t2, 804297
                  blt          a3, s0, 471f
sub_5_16:         jal          ra, 13f
0:                jal          sp, 5f
1:                jal          sp, 9f
2:                jal          ra, 14f
3:                jal          a7, 11f
4:                jal          ra, 20f
5:                jal          ra, 16f
6:                jal          s11, 10f
7:                jal          tp, 6b
8:                jal          ra, 0b
9:                jal          a1, 18f
10:               jal          t1, 8b
11:               jal          ra, 1b
12:               jal          ra, 19f
13:               jal          sp, 12b
14:               jal          s6, 21f
15:               jal          t1, 3b
16:               jal          ra, 2b
17:               jal          ra, 4b
18:               jal          ra, 7b
19:               jal          a2, 17b
20:               jal          t1, 15b
21:               auipc        s4, 76451
                  andi         s2, s1, 878
                  or           s3, a5, tp
471:              sltiu        a1, t1, -1080
                  auipc        a0, 396328
                  addi         s6, sp, 951
                  srl          s10, s11, tp
                  blt          zero, s5, 481f
                  sltiu        a3, tp, -1100
                  and          a1, s9, ra
                  blt          gp, s8, 479f
479:              auipc        s2, 667293
480:              addi         s7, s10, 1520
481:              and          tp, ra, a0
                  slt          t1, t5, a6
                  sra          t1, a6, a5
                  lui          s5, 799327
                  srli         s2, a4, 5
                  srai         s9, s6, 16
                  lui          t5, 1011174
                  beq          tp, t3, 501f
                  srli         a2, t6, 9
                  beq          s0, gp, 502f
                  sltu         a7, a3, tp
                  auipc        sp, 167640
                  ori          s1, ra, 1033
                  slt          a1, t3, t3
                  bne          a0, a4, 496f
496:              sra          sp, t0, gp
                  slli         t6, a2, 24
                  auipc        t2, 739276
                  srai         s10, s0, 7
                  and          a1, t1, s10
501:              bne          s7, s4, 521f
502:              srli         s8, zero, 17
                  lui          s5, 340720
                  slli         s4, s6, 18
                  addi         ra, s9, -915
                  lui          s6, 330126
                  andi         s1, s0, 402
                  blt          ra, gp, 521f
                  sltu         a3, zero, t1
                  sltiu        tp, s5, -1277
                  sltiu        t5, t3, -1588
                  bge          a7, t2, 517f
                  xor          a5, a6, a4
                  auipc        ra, 972716
                  sra          t2, a2, t3
                  nop
517:              addi         t2, t3, -718
                  slt          gp, s1, s0
                  slt          t2, s1, s11
                  lui          t1, 176576
521:              ori          s7, s0, -1975
                  auipc        s5, 715699
                  sltu         s3, a5, s10
                  sub          tp, s9, s4
                  ori          a0, s0, 2012
                  xori         t1, s7, 41
                  bne          s8, a0, 532f
                  andi         s7, a5, -528
                  or           a4, a1, s3
                  blt          a5, a2, 549f
                  sltiu        tp, tp, -1812
532:              beq          t4, sp, 544f
                  auipc        gp, 281793
                  and          t6, t6, a0
                  srli         t4, s5, 25
                  bgeu         a7, t3, 556f
                  srai         s3, a6, 25
                  xor          s8, s11, a0
                  srai         s10, ra, 18
                  bltu         s10, s4, 557f
                  sltu         t2, s11, t6
                  beq          t3, t3, 560f
                  add          a0, s10, s11
544:              sltiu        t6, tp, -2044
                  bltu         a0, a5, 559f
                  slli         s6, s1, 26
                  slt          s9, s10, s9
                  sub          a0, a4, s0
549:              andi         s9, s10, 226
                  beq          t5, t2, 566f
                  sra          s5, s4, s6
                  xori         sp, t3, -1423
                  and          a5, a6, s3
                  sltu         t2, tp, sp
                  auipc        t2, 347784
556:              sltu         t4, s9, s7
557:              lui          s4, 1040140
                  srli         a0, s4, 1
559:              nop
560:              ori          s5, tp, 1
                  sltiu        s6, s5, -2041
                  sll          a1, t0, s0
                  sub          zero, sp, s5
                  bne          t2, zero, 578f
                  sltu         zero, s5, s10
566:              addi         a1, s10, -1536
                  srl          s5, s2, s5
                  xor          s3, t4, ra
                  addi         a7, a6, -1830
                  slt          s2, tp, ra
                  andi         a3, a0, 861
                  lui          s8, 565678
                  srl          t5, s9, t5
                  bltu         s3, tp, 589f
                  slli         t4, t6, 4
                  slt          t2, s2, s5
                  add          a2, a2, t4
578:              bgeu         a0, a2, 596f
                  xori         t5, a6, -1595
                  sub          s5, s11, a4
                  ori          s5, s5, 894
                  sltu         s2, gp, s7
                  beq          a7, t6, 594f
                  xori         t5, s2, 183
sub_5_19:         jal          ra, 1f
0:                jal          ra, 4f
1:                jal          a1, 6f
2:                jal          ra, 10f
3:                jal          t1, 5f
4:                jal          a3, 7f
5:                jal          a7, 9f
6:                jal          t1, 2b
7:                jal          t1, 8f
8:                jal          sp, 11f
9:                jal          ra, 0b
10:               jal          sp, 3b
11:               sub          t4, t0, s8
                  blt          s6, gp, 589f
                  andi         s5, s8, 104
                  sltu         s2, t0, a5
                  add          s4, s1, t0
589:              srai         s5, a1, 22
                  ori          s4, a5, 545
                  xori         gp, s4, -787
                  lui          s1, 539680
                  slt          gp, s7, s8
594:              ori          s6, s4, -631
                  nop
596:              nop
                  beq          s7, t5, 612f
sub_5_2:          jal          ra, 5f
0:                jal          ra, 8f
1:                jal          ra, 2f
2:                jal          ra, 4f
3:                jal          ra, 9f
4:                jal          a0, 3b
5:                jal          ra, 0b
6:                jal          s2, 17f
7:                jal          ra, 13f
8:                jal          ra, 1b
9:                jal          t1, 12f
10:               jal          t1, 11f
11:               jal          ra, 15f
12:               jal          ra, 14f
13:               jal          ra, 16f
14:               jal          ra, 7b
15:               jal          ra, 6b
16:               jal          ra, 10b
17:               srli         a2, s4, 19
                  sltiu        s8, a0, 1014
                  blt          tp, t5, 605f
                  slti         s0, s5, -1828
                  bgeu         s3, t6, 615f
                  blt          a2, s0, 616f
                  xori         a4, ra, -643
                  andi         a4, ra, 1358
605:              ori          a4, s0, -212
                  lui          t5, 16928
                  blt          a4, s0, 620f
                  slti         sp, t2, 1745
                  bltu         a2, s9, 620f
                  sra          a5, s6, t4
                  andi         s9, a0, -774
612:              and          s10, s2, a4
                  slti         a5, a5, 754
                  sltiu        s10, gp, 83
615:              srai         a4, s1, 16
616:              srai         t5, t3, 1
                  xor          s0, t2, t3
                  sub          s2, t2, a1
                  and          tp, sp, sp
620:              bne          a2, gp, 635f
                  slt          s3, s7, s0
                  bgeu         s1, a1, 637f
                  add          s2, gp, s8
                  sra          s3, a4, a5
                  and          a1, s4, s7
                  add          s4, s9, a2
                  bge          s6, a5, 630f
                  bgeu         s9, s5, 629f
629:              xori         t5, a2, 2008
630:              xori         gp, s9, 1111
                  ori          t4, s2, -21
                  srl          s9, s1, t5
                  addi         s11, a1, -1873
                  nop
635:              or           s5, s5, s5
                  or           s3, a6, s8
637:              auipc        sp, 641962
                  auipc        a7, 863966
                  or           s6, s5, a1
                  slt          ra, a6, t1
                  srai         t1, s3, 14
                  nop
                  or           a1, a3, s3
                  bne          s8, a4, 653f
                  slli         a3, s6, 3
                  beq          gp, a6, 650f
                  sltu         s9, t1, zero
                  sltiu        s2, tp, -1552
                  bgeu         a6, t2, 666f
650:              slli         s3, t2, 23
                  add          gp, a7, t5
                  bne          a4, t0, 665f
653:              srl          s1, t2, t3
                  srli         s11, s2, 18
                  srai         t4, s6, 27
                  sltiu        s9, a6, -749
                  ori          t6, s3, 986
                  sub          a7, a4, s8
                  addi         a2, s11, -1506
                  xor          s1, a2, gp
                  slt          t4, s1, a5
                  sub          a0, s3, s7
                  auipc        s7, 732962
                  bne          t4, s10, 678f
665:              lui          t4, 150581
666:              and          t6, t5, t0
                  srai         t6, a4, 26
                  add          a4, t1, s11
                  add          t6, zero, s4
                  bgeu         s5, t3, 689f
                  add          a1, ra, s6
                  andi         s9, zero, -1462
                  slli         t5, a1, 0
                  bltu         s10, s10, 675f
675:              bgeu         s5, s4, 676f
676:              bge          s11, t2, 696f
                  auipc        t4, 354118
678:              srai         a2, s3, 29
                  xor          s11, t1, t6
                  srai         s9, t4, 11
                  sub          s10, a1, s4
                  auipc        s8, 932967
                  sll          s10, a2, t1
                  bgeu         s4, s1, 696f
                  andi         sp, t2, -165
                  bltu         a2, s7, 695f
                  addi         s1, a0, -1498
                  srai         s2, t1, 21
689:              lui          t1, 205364
                  bne          s0, gp, 702f
                  sra          s4, t6, s9
                  sll          a4, s6, a1
                  sltiu        s3, s7, 1756
                  bltu         a7, s8, 710f
695:              slli         sp, tp, 14
696:              add          a7, a3, ra
                  beq          s2, a4, 701f
                  bne          a3, s5, 703f
                  sltiu        a3, s7, 1760
                  bge          a0, s2, 718f
701:              slti         a3, t6, -1813
702:              srai         a1, gp, 9
703:              srli         gp, s3, 3
                  sll          s6, s8, a1
                  bne          s4, s6, 723f
                  nop
                  sra          zero, sp, t1
                  srai         s0, gp, 21
                  xor          s8, a5, s1
710:              bge          t3, s11, 730f
                  bge          a5, ra, 727f
                  slli         t5, a5, 13
                  slti         t4, t5, -113
                  lui          a7, 778622
                  bne          s1, s5, 718f
                  sltiu        t2, tp, 1027
                  sra          a7, a4, s3
718:              andi         s5, a2, 1735
                  sltiu        s2, a2, -325
                  srli         a0, s3, 28
                  bgeu         a4, a0, 726f
                  slti         s0, t5, 1607
723:              blt          a3, a5, 741f
                  bltu         t0, s6, 733f
                  ori          ra, t0, -1772
726:              add          a4, s5, s3
727:              bge          ra, a2, 742f
                  slti         s10, zero, -385
                  addi         s3, s11, 912
730:              andi         gp, t3, 589
                  bne          a7, ra, 747f
                  sub          ra, a7, zero
733:              xori         s1, s4, -231
                  sltu         s2, a5, t2
sub_5_13:         jal          ra, 10f
0:                jal          ra, 13f
1:                jal          ra, 3f
2:                jal          t1, 7f
3:                jal          ra, 15f
4:                jal          t1, 2b
5:                jal          a2, 11f
6:                jal          tp, 0b
7:                jal          s1, 1b
8:                jal          ra, 4b
9:                jal          ra, 5b
10:               jal          ra, 9b
11:               jal          s2, 12f
12:               jal          s8, 6b
13:               jal          t1, 14f
14:               jal          t1, 8b
15:               sub          s3, s7, ra
                  bgeu         t0, s7, 747f
                  slt          a7, a1, a3
                  slt          s0, tp, s2
                  xor          s10, a4, s3
                  bgeu         a7, s11, 743f
                  andi         a4, t0, 66
741:              or           s6, a7, s0
742:              addi         a4, tp, -1634
743:              sub          s9, a3, s6
                  bge          t3, a2, 749f
                  or           s9, a2, zero
                  or           s1, s6, a3
747:              nop
                  xor          s4, t6, tp
749:              nop
                  bne          a2, zero, 763f
                  sll          a3, a0, t3
                  srai         s1, t1, 30
                  sltiu        a4, s7, 879
                  sra          t6, t1, s3
                  bne          a3, s8, 775f
                  slti         a3, s5, 964
                  sll          a2, ra, s1
                  blt          t5, t6, 773f
                  sltiu        a2, a2, -923
                  nop
                  or           t2, gp, t1
                  srli         t4, t1, 11
763:              sub          a2, a1, t4
                  sltu         a3, a6, s10
                  xori         t5, s11, -258
                  addi         a3, a6, 2028
                  or           ra, sp, zero
                  xori         s2, a2, -1141
                  lui          t1, 856904
                  srl          s9, a3, sp
                  sub          a0, t1, t3
                  bgeu         t3, s2, 789f
773:              beq          s4, s6, 787f
                  bgeu         a7, a1, 790f
775:              srli         ra, s8, 12
                  beq          s8, s10, 789f
                  xori         a0, t3, 782
                  addi         sp, s8, 1775
                  sra          a7, t5, s7
                  lui          t5, 953849
                  nop
                  beq          t6, s11, 786f
                  bgeu         a7, s3, 801f
                  sub          a2, s2, s5
                  beq          ra, s10, 788f
786:              add          s3, a0, t2
787:              sltiu        s5, ra, -1953
788:              sltiu        s0, ra, -1735
789:              slti         a5, s9, 1456
790:              sll          s4, a7, a3
                  ori          tp, s11, -1043
                  slti         a2, s0, -85
                  blt          s4, a1, 807f
                  sltiu        a4, s3, -1157
                  slli         s8, t4, 16
                  add          t4, s6, a7
                  bge          t1, s11, 798f
798:              slli         s6, s9, 19
                  bltu         s6, ra, 800f
800:              andi         a4, s10, 968
801:              andi         a0, sp, 1260
                  addi         a5, tp, 880
                  ori          a0, s1, -1671
                  sltu         t6, t3, a1
                  nop
                  sll          s4, s5, ra
807:              xori         a5, a2, -792
                  xor          t6, s7, tp
                  sll          a1, t4, sp
                  sltu         tp, s6, s10
                  auipc        s8, 358258
                  srl          s8, s7, a7
                  sll          gp, ra, s3
                  slti         sp, a4, 1009
                  nop
                  beq          s10, a1, 827f
                  sub          gp, s2, a6
                  bltu         t4, s11, 837f
                  ori          t5, t4, -1098
                  sra          a5, s10, sp
                  nop
                  xor          sp, a7, s6
                  ori          tp, s7, 196
                  sub          s2, t5, t4
                  beq          t2, t0, 828f
                  and          a0, a1, a6
827:              blt          a2, tp, 839f
828:              sll          t2, s6, tp
                  beq          a0, s0, 830f
830:              sra          gp, a6, t4
                  sltu         t5, a7, a4
                  srli         s1, a5, 15
                  sll          a0, gp, t0
                  slti         a0, s11, -870
                  xor          a1, a7, s4
                  sra          t2, a2, sp
837:              addi         a1, sp, -1753
                  srl          t4, t5, a2
839:              sltiu        t5, ra, -1752
                  sltu         ra, s3, t1
                  andi         s0, a1, 310
                  srli         a7, t0, 27
                  or           s9, t0, t0
                  andi         s4, sp, -796
                  addi         s1, a5, 1946
                  slli         a0, t5, 23
                  blt          a4, s2, 861f
                  slli         zero, s0, 11
                  slli         t5, s3, 19
                  xor          s8, t0, gp
                  bne          s0, a0, 871f
                  andi         tp, a4, 1584
                  nop
                  add          zero, s5, s5
                  slli         t2, a7, 18
                  bge          tp, s0, 865f
                  bge          s2, s7, 863f
                  add          t6, t5, s2
                  bne          s9, s7, 864f
                  nop
861:              and          s4, zero, t1
                  add          gp, a5, a2
863:              xori         a5, s1, 240
864:              nop
865:              sub          s8, s5, zero
                  sra          s0, t3, a7
                  xori         s7, t5, 108
                  and          s8, t6, s5
                  xor          s7, a0, zero
                  and          t1, t0, t5
871:              sltu         a3, t1, t2
                  lui          a4, 1010763
                  srai         s0, s10, 3
                  lui          t5, 569731
                  ori          t5, a3, -18
                  blt          s6, a1, 894f
                  and          s9, a7, a4
                  beq          s4, t4, 895f
                  xori         a3, a3, -1214
                  sltu         a2, s7, a6
                  xori         s5, s11, -1113
                  bltu         s6, a3, 891f
                  sll          s8, tp, a1
                  sltu         t5, s8, s10
                  bgeu         s0, t3, 890f
                  xor          a5, s5, s0
                  bltu         s3, tp, 888f
888:              bltu         t6, t6, 901f
                  sltiu        t5, s0, 167
890:              sra          s1, ra, zero
891:              and          a5, s1, s8
                  sll          a4, a2, a2
                  blt          s10, t5, 913f
894:              slt          s6, s9, s9
895:              blt          zero, s11, 909f
                  and          zero, a0, s8
                  sub          s11, s5, s5
                  and          t6, s9, t1
                  blt          tp, s2, 919f
                  bge          s6, s7, 901f
901:              addi         s0, s11, 1556
                  and          a4, s0, s11
                  bge          s6, t1, 916f
                  srl          a1, sp, s11
                  addi         ra, a0, -1936
                  addi         a2, s1, -1961
                  beq          s10, zero, 910f
                  slt          s5, t1, tp
909:              addi         a3, a7, 975
910:              bne          t5, s9, 919f
                  sub          a4, a6, t2
                  and          tp, zero, s6
913:              sub          s11, s7, s1
                  sltu         sp, s8, tp
                  slli         t6, t5, 21
916:              and          s3, a3, a4
                  slt          a2, s1, t0
                  bne          a6, s3, 934f
919:              sltiu        s5, a1, -935
                  and          s6, t2, a4
                  or           tp, s8, s4
                  xori         gp, t0, -2020
                  sltu         a7, t5, s10
                  beq          s3, sp, 930f
                  or           a4, s4, s5
                  bltu         a2, s7, 927f
927:              sltiu        t1, s1, -418
                  sltiu        tp, t0, 1237
                  sll          s9, sp, a4
930:              sll          gp, a4, a0
                  sltiu        a2, ra, -1888
                  sltu         s2, s3, s5
                  nop
934:              andi         s1, t3, -1503
                  ori          sp, gp, -1642
                  lui          s6, 487252
                  slli         tp, zero, 3
                  slli         a4, a0, 1
                  sra          a0, a2, s8
                  or           t5, a0, s5
                  blt          s8, s2, 945f
                  auipc        s7, 331130
                  sltiu        t6, s7, -1501
                  beq          s1, t5, 960f
945:              slli         a5, t3, 16
                  srli         a7, s10, 29
                  bgeu         a2, s5, 962f
                  nop
                  sra          ra, s6, a5
                  xori         sp, s4, -871
                  slli         s1, ra, 29
                  sll          a2, t6, a2
                  add          t4, a4, a6
                  srl          s6, gp, a3
                  bge          s4, a2, 966f
                  srai         s3, a6, 10
                  sra          a4, s4, a4
                  andi         s7, s4, -1726
                  sll          s6, s7, s1
960:              srli         s9, gp, 7
                  srai         gp, s10, 26
962:              auipc        a3, 795926
                  addi         s7, a5, -1799
                  ori          s5, ra, 886
                  or           t6, s9, tp
966:              or           a2, a4, a4
                  xor          ra, s10, s1
                  ori          a4, a2, -386
                  bltu         a5, t5, 972f
                  slli         t6, s11, 25
                  srl          s11, a0, a2
972:              sub          a2, s5, t1
                  ori          s2, t0, 1745
                  bltu         a1, zero, 988f
                  bltu         s6, s6, 987f
                  bltu         t1, t3, 991f
                  nop
                  bge          s0, a5, 996f
                  bge          s7, s9, 991f
                  andi         s1, a6, 567
                  sra          s3, gp, gp
                  and          s5, t4, a7
                  slt          t4, s5, t1
                  bge          s10, a0, 989f
                  sltiu        a7, s4, -1233
                  beq          t1, s9, 1005f
987:              xor          a0, a6, a2
988:              auipc        t6, 861651
989:              slti         a2, a5, 60
                  slli         a1, a5, 27
991:              sub          s4, a1, t2
                  addi         s4, a4, -1044
                  slt          s7, t2, t2
                  or           zero, s3, a2
                  srai         s5, s10, 7
996:              andi         gp, s1, 944
                  xor          tp, t4, s0
                  sub          s11, s8, a3
                  srl          a1, tp, s8
                  auipc        tp, 40533
                  bltu         s4, s1, 1015f
                  lui          a7, 790445
                  sll          s6, s4, t5
                  sltu         ra, a4, s4
1005:             auipc        s4, 2451
                  srl          s7, s7, t1
                  lui          s10, 847127
                  nop
                  sra          a7, s8, a6
                  add          t1, zero, s10
                  beq          t4, a0, 1015f
                  slt          s8, s7, s11
                  bne          gp, a5, 1016f
                  bge          s5, t6, 1032f
1015:             xor          t2, gp, t1
1016:             bne          a5, s10, 1017f
1017:             sltiu        s9, t1, 1286
                  sra          a7, a1, a0
                  sll          zero, s2, t3
                  sub          zero, zero, a7
                  add          a3, t2, s5
                  and          a0, a2, ra
                  bne          t3, sp, 1036f
                  sltu         ra, a1, s11
                  bgeu         a1, a5, 1034f
                  sltu         zero, a3, a0
                  slti         s8, sp, 2020
                  or           t1, s1, s9
                  bge          s7, a2, 1033f
                  lui          t2, 872084
                  xor          a1, a6, t5
1032:             sll          a4, a5, a7
1033:             srl          s6, zero, t1
1034:             andi         tp, s8, 1434
                  srli         a7, a4, 9
1036:             beq          gp, t1, 1053f
                  lui          s3, 541996
                  xori         zero, s8, 1115
                  add          s4, s9, s8
                  slti         s3, s11, -1719
                  auipc        s6, 399654
                  srl          s10, s9, s4
                  blt          zero, gp, 1044f
1044:             slli         s1, a2, 26
                  srl          gp, s8, ra
                  addi         gp, sp, 61
                  srl          s10, s9, s2
                  srl          a3, s9, sp
                  bltu         t6, t0, 1054f
                  xor          a0, a7, s9
                  beq          s1, s1, 1066f
                  sra          sp, s9, t5
1053:             bltu         s7, s4, 1065f
1054:             ori          tp, t4, 989
                  bne          s2, a7, 1056f
1056:             blt          t4, s0, 1059f
                  lui          s11, 951689
                  srl          s4, t6, tp
1059:             addi         s5, s7, 1431
                  slti         sp, s3, 370
                  bne          t4, t2, 1075f
                  and          t4, t2, a5
                  sra          a7, a0, s9
                  auipc        t1, 307480
1065:             bgeu         s8, s1, 1082f
1066:             or           a4, s4, s10
                  sltiu        s1, s4, -1389
                  slli         s7, zero, 31
                  add          s8, ra, s2
                  srli         a5, s0, 25
                  xori         s3, zero, 1919
                  add          zero, t4, a5
                  lui          a4, 107484
                  bne          t2, s7, 1082f
1075:             and          gp, zero, s8
                  bne          a6, a0, 1082f
                  srli         a0, a0, 7
                  and          zero, t4, a7
                  sltu         gp, s7, t2
                  ori          t4, ra, 1531
                  add          s3, t6, t1
1082:             lui          gp, 34774
                  lui          s8, 175275
                  srl          sp, s9, s11
                  lw           ra, 4(a6)
                  xor          s11, t2, t6
                  nop
                  addi         a6, a6, 20
                  srli         s10, a0, 11
                  srl          a1, a3, sp
                  add          s10, s6, s1
                  sltiu        s6, s0, 1122
                  nop
1538:             addi x7, x1, 0
1538:             jalr x7, x7, 0
sub_4:            sra          s0, s6, gp
                  bne          t5, a4, sub_4_stack_p
                  slli         t5, a4, 9
                  xor          t2, a4, t5
                  slli         t1, a0, 5
sub_4_stack_p:    addi         a6, a6, -28
                  slti         sp, s9, 1817
                  sltiu        a5, t4, 384
                  sw           ra, 4(a6)
                  srli         t6, t3, 8
                  srl          s11, zero, a4
sub_4_3:          jal          ra, 4f
0:                jal          ra, 24f
1:                jal          ra, 9f
2:                jal          ra, 26f
3:                jal          t1, 12f
4:                jal          ra, 14f
5:                jal          ra, 15f
6:                jal          ra, 10f
7:                jal          t1, 25f
8:                jal          t1, 11f
9:                jal          ra, 21f
10:               jal          ra, 23f
11:               jal          s6, 1b
12:               jal          s11, 2b
13:               jal          ra, 22f
14:               jal          ra, 20f
15:               jal          a7, 17f
16:               jal          ra, 5b
17:               jal          s9, 7b
18:               jal          ra, 19f
19:               jal          ra, 3b
20:               jal          ra, 16b
21:               jal          ra, 6b
22:               jal          ra, 8b
23:               jal          s2, 18b
24:               jal          t1, 13b
25:               jal          ra, 0b
26:               slt          s5, s10, s9
sub_4_9:          jal          ra, 11f
0:                jal          t1, 4f
1:                jal          ra, 20f
2:                jal          ra, 8f
3:                jal          ra, 16f
4:                jal          ra, 22f
5:                jal          ra, 18f
6:                jal          ra, 14f
7:                jal          ra, 10f
8:                jal          a7, 25f
9:                jal          t1, 1b
10:               jal          s7, 13f
11:               jal          gp, 26f
12:               jal          a2, 3b
13:               jal          t1, 0b
14:               jal          s10, 9b
15:               jal          ra, 7b
16:               jal          s9, 15b
17:               jal          ra, 2b
18:               jal          t1, 6b
19:               jal          t5, 23f
20:               jal          ra, 19b
21:               jal          ra, 24f
22:               jal          ra, 17b
23:               jal          t1, 21b
24:               jal          ra, 12b
25:               jal          t1, 27f
26:               jal          ra, 5b
27:               jal          ra, 28f
28:               nop
sub_4_11:         jal          ra, 15f
0:                jal          a5, 19f
1:                jal          t1, 13f
2:                jal          ra, 4f
3:                jal          sp, 14f
4:                jal          ra, 21f
5:                jal          t1, 28f
6:                jal          ra, 23f
7:                jal          a0, 24f
8:                jal          t1, 6b
9:                jal          ra, 8b
10:               jal          sp, 7b
11:               jal          a5, 17f
12:               jal          ra, 0b
13:               jal          s5, 22f
14:               jal          t1, 18f
15:               jal          t1, 1b
16:               jal          ra, 26f
17:               jal          ra, 25f
18:               jal          t1, 20f
19:               jal          ra, 3b
20:               jal          ra, 2b
21:               jal          ra, 9b
22:               jal          ra, 12b
23:               jal          sp, 10b
24:               jal          ra, 11b
25:               jal          gp, 27f
26:               jal          a2, 5b
27:               jal          gp, 16b
28:               andi         s8, s0, 1844
sub_4_6:          jal          ra, 8f
0:                jal          ra, 4f
1:                jal          t1, 6f
2:                jal          ra, 1b
3:                jal          s2, 0b
4:                jal          t1, 10f
5:                jal          ra, 14f
6:                jal          ra, 11f
7:                jal          a2, 3b
8:                jal          t1, 7b
9:                jal          ra, 15f
10:               jal          ra, 2b
11:               jal          ra, 9b
12:               jal          t1, 13f
13:               jal          ra, 5b
14:               jal          ra, 16f
15:               jal          ra, 12b
16:               slli         gp, t6, 31
sub_4_5:          jal          ra, 9f
0:                jal          sp, 2f
1:                jal          gp, 12f
2:                jal          ra, 11f
3:                jal          ra, 10f
4:                jal          t1, 13f
5:                jal          ra, 4b
6:                jal          ra, 7f
7:                jal          a7, 0b
8:                jal          a0, 14f
9:                jal          t1, 6b
10:               jal          s8, 8b
11:               jal          ra, 5b
12:               jal          s1, 3b
13:               jal          ra, 1b
14:               sltiu        s3, t6, -1318
sub_4_2:          jal          ra, 7f
0:                jal          ra, 15f
1:                jal          ra, 13f
2:                jal          ra, 8f
3:                jal          s9, 4f
4:                jal          t1, 18f
5:                jal          s5, 19f
6:                jal          ra, 5b
7:                jal          ra, 3b
8:                jal          s3, 0b
9:                jal          a5, 14f
10:               jal          ra, 6b
11:               jal          t1, 9b
12:               jal          ra, 17f
13:               jal          t1, 12b
14:               jal          ra, 10b
15:               jal          t1, 11b
16:               jal          ra, 2b
17:               jal          t1, 16b
18:               jal          sp, 1b
19:               srl          a2, tp, a6
sub_4_4:          jal          ra, 0f
0:                jal          a7, 1f
1:                jal          ra, 12f
2:                jal          s5, 8f
3:                jal          t1, 4f
4:                jal          ra, 7f
5:                jal          t4, 13f
6:                jal          t1, 2b
7:                jal          ra, 6b
8:                jal          t1, 5b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               jal          t1, 9b
12:               jal          ra, 10b
13:               sll          a1, s8, s8
sub_4_7:          jal          ra, 17f
0:                jal          t1, 19f
1:                jal          s1, 24f
2:                jal          ra, 6f
3:                jal          gp, 22f
4:                jal          ra, 27f
5:                jal          t1, 2b
6:                jal          a0, 14f
7:                jal          ra, 16f
8:                jal          t1, 5b
9:                jal          ra, 7b
10:               jal          t1, 11f
11:               jal          t1, 0b
12:               jal          t1, 21f
13:               jal          s8, 1b
14:               jal          t1, 23f
15:               jal          ra, 4b
16:               jal          ra, 10b
17:               jal          ra, 3b
18:               jal          ra, 12b
19:               jal          s10, 18b
20:               jal          ra, 15b
21:               jal          t1, 28f
22:               jal          t5, 25f
23:               jal          ra, 20b
24:               jal          ra, 8b
25:               jal          ra, 26f
26:               jal          t1, 13b
27:               jal          ra, 9b
28:               ori          a7, s3, -2024
sub_4_10:         jal          ra, 0f
0:                jal          t1, 7f
1:                jal          ra, 4f
2:                jal          ra, 14f
3:                jal          tp, 23f
4:                jal          ra, 17f
5:                jal          t1, 16f
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          t1, 11f
9:                jal          t1, 25f
10:               jal          s0, 6b
11:               jal          t1, 15f
12:               jal          ra, 19f
13:               jal          tp, 24f
14:               jal          a1, 12b
15:               jal          ra, 1b
16:               jal          ra, 26f
17:               jal          t1, 22f
18:               jal          ra, 13b
19:               jal          ra, 21f
20:               jal          ra, 18b
21:               jal          ra, 3b
22:               jal          ra, 20b
23:               jal          ra, 10b
24:               jal          t1, 9b
25:               jal          sp, 2b
26:               srai         a3, t6, 25
sub_4_0:          jal          ra, 9f
0:                jal          t1, 5f
1:                jal          ra, 10f
2:                jal          ra, 8f
3:                jal          ra, 6f
4:                jal          gp, 7f
5:                jal          gp, 4b
6:                jal          ra, 0b
7:                jal          s6, 1b
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               ori          s11, a0, 1747
sub_4_1:          jal          ra, 9f
0:                jal          ra, 5f
1:                jal          gp, 4f
2:                jal          ra, 10f
3:                jal          ra, 8f
4:                jal          ra, 3b
5:                jal          t1, 12f
6:                jal          gp, 0b
7:                jal          ra, 2b
8:                jal          ra, 6b
9:                jal          t1, 7b
10:               jal          s6, 11f
11:               jal          ra, 1b
12:               lui          ra, 649707
sub_4_8:          jal          ra, 3f
0:                jal          gp, 14f
1:                jal          ra, 7f
2:                jal          ra, 8f
3:                jal          ra, 1b
4:                jal          t1, 0b
5:                jal          ra, 10f
6:                jal          ra, 16f
7:                jal          ra, 5b
8:                jal          gp, 11f
9:                jal          ra, 6b
10:               jal          ra, 15f
11:               jal          ra, 9b
12:               jal          t1, 2b
13:               jal          ra, 12b
14:               jal          t1, 13b
15:               jal          ra, 4b
16:               srli         a2, t1, 3
                  beq          t4, s3, 4f
                  sltiu        s7, a4, 578
                  and          t5, a3, s11
                  sltiu        a3, t1, 8
4:                slt          zero, a1, s9
                  slt          a7, a1, s5
                  srai         a1, sp, 9
                  srai         t5, t0, 7
                  sub          a7, t2, t1
                  slt          s3, t5, t5
                  and          gp, s11, t3
                  srli         a7, gp, 29
                  sll          ra, t4, a5
                  auipc        s1, 1026167
                  andi         t2, t0, 52
                  or           s8, t3, a5
                  slti         t1, a6, -1408
                  or           zero, zero, a0
                  sltiu        s9, t6, -878
                  beq          gp, t6, 26f
                  lui          a5, 753997
                  srl          s6, t1, a2
                  or           a7, a6, s6
                  add          s7, a6, s4
                  sll          s8, t1, ra
                  beq          s8, a0, 27f
26:               sll          s0, t2, a2
27:               sltiu        ra, zero, -549
                  nop
                  and          s3, sp, t0
                  addi         a7, t3, -690
                  xor          s0, a7, a0
                  lui          s3, 515076
                  beq          t2, t2, 42f
                  sll          s8, tp, t3
                  srli         t1, ra, 3
                  slti         t5, zero, 263
                  sra          a3, t2, s3
                  sltu         s0, t5, a6
                  and          s0, a3, sp
                  slli         a3, s1, 13
                  andi         a4, t5, -182
42:               addi         a4, a4, -1804
                  slli         t2, a5, 10
                  sra          s2, s0, ra
                  auipc        a0, 784697
                  sltu         tp, t3, a4
                  and          t1, s10, ra
                  sub          a2, s1, a3
                  srai         zero, s5, 0
                  srl          a1, t3, s8
                  addi         a4, a4, 297
                  slti         s7, a6, -278
                  srli         t2, t5, 7
                  andi         zero, t2, 2047
                  nop
                  slt          t5, t1, sp
                  srli         a2, s1, 15
                  xori         s6, a7, -1936
                  sltiu        a3, s5, 1653
                  add          s9, t5, gp
                  srai         tp, s8, 30
                  srai         zero, t6, 21
                  xor          t5, a4, a1
                  addi         s1, s1, -943
                  bge          s11, t5, 74f
                  slti         a3, s6, -138
                  add          zero, t0, s0
                  sltiu        t4, a6, 835
                  ori          s6, s6, 223
                  sltiu        t4, t1, -1369
                  lui          t6, 120881
                  srl          a5, sp, s3
                  ori          s4, s9, -591
74:               sltiu        a3, tp, -193
                  ori          s0, t3, -1746
                  lui          s5, 320894
                  sltiu        t1, gp, -567
                  slti         zero, s1, 737
                  bge          s5, t5, 83f
                  slti         s7, t2, 531
                  lui          s2, 554468
                  xori         s0, ra, -280
83:               add          t6, sp, t0
                  bge          t5, a2, 89f
                  blt          a3, a0, 97f
                  bgeu         t0, a5, 101f
                  bge          a2, a2, 95f
                  lui          t4, 843310
89:               bge          s10, a5, 102f
                  sub          ra, t5, s11
                  blt          sp, s6, 97f
                  slt          a2, a6, gp
                  or           a2, sp, ra
                  blt          tp, t2, 99f
95:               blt          t2, s10, 108f
                  bne          t2, a2, 105f
97:               or           s5, s11, gp
                  add          s9, s8, zero
99:               ori          s3, a6, 1913
                  slt          s6, s4, t4
101:              andi         s1, s5, 1107
102:              srai         a2, t6, 23
                  addi         s1, s6, 1819
                  bge          s5, t5, 110f
105:              ori          t1, t5, -1035
                  srli         a2, s10, 29
                  blt          t2, a1, 127f
108:              srai         s0, s5, 31
                  add          s3, s4, a0
110:              slt          a7, t3, ra
                  sltu         s6, t5, s3
                  bge          a6, ra, 120f
                  andi         a7, t1, 1843
                  sltiu        ra, gp, -1981
                  blt          zero, a7, 116f
116:              srl          s10, s2, t4
                  andi         a0, gp, 905
                  sll          s10, s11, s10
                  andi         tp, s3, 582
120:              auipc        s9, 557499
                  andi         sp, s10, 242
                  slti         t5, s1, -1350
                  srai         ra, s2, 14
                  sra          s8, s5, gp
                  srai         s0, t3, 13
                  srai         zero, s5, 7
127:              auipc        s7, 500379
                  nop
                  sltu         s4, s1, tp
                  lui          s3, 408687
                  sltu         s5, tp, t1
                  srli         sp, t2, 21
                  beq          t2, a7, 149f
                  bgeu         a4, a4, 135f
135:              sub          a1, s10, sp
                  slti         t4, t6, -1554
                  srl          s7, t5, t0
                  sub          s0, a3, a7
                  xor          zero, s11, t4
                  sltiu        a4, zero, 1193
                  xor          t2, s7, s6
                  auipc        a1, 259139
                  or           s5, a4, t2
                  ori          s10, s6, 1005
                  nop
                  slli         a3, s7, 29
                  auipc        t4, 311976
                  xor          t2, a5, a5
149:              slt          gp, a4, s2
                  slti         a0, t6, 707
                  bne          sp, t1, 169f
                  beq          t2, ra, 169f
                  sltiu        a1, a6, 1078
                  xori         t4, gp, 293
                  bltu         s1, s6, 174f
                  slli         a0, t5, 25
                  and          t1, a3, zero
                  and          s7, t3, s8
                  sra          s6, t1, a2
                  bge          zero, a7, 164f
                  and          s6, s3, t4
                  sra          a3, a4, a1
                  xor          s7, a2, a7
164:              ori          s7, t4, -412
                  sll          s8, t2, sp
                  sltu         s5, t5, t1
                  ori          ra, a3, 626
                  bgeu         t4, s7, 169f
169:              and          t1, t5, t4
                  bltu         zero, sp, 180f
                  add          t5, s1, t1
                  blt          t5, s0, 184f
                  beq          t2, a4, 181f
174:              xori         zero, a0, -609
                  ori          t5, a6, 707
                  bgeu         a2, a1, 192f
                  sltu         t4, s0, s4
                  xor          a1, s10, t6
                  xor          gp, a0, a6
180:              andi         a5, t6, 212
181:              and          t6, a0, s7
                  auipc        gp, 573766
                  add          s5, s11, t6
184:              nop
                  slli         s0, a0, 27
                  bgeu         t1, t5, 190f
                  add          s4, a6, t6
                  auipc        a5, 531045
                  nop
190:              blt          a3, a5, 199f
                  blt          s3, a0, 203f
192:              slti         sp, s4, 1168
                  sltiu        t1, t4, -790
                  xori         a2, t5, 1303
                  sltiu        a5, gp, -54
                  auipc        s6, 743587
                  bne          ra, s3, 198f
198:              blt          ra, s10, 204f
199:              xor          s11, s1, t6
                  bgeu         a1, s0, 204f
                  bge          t3, a5, 213f
                  srai         t1, s10, 6
203:              sltu         s2, gp, a1
204:              sra          t2, s3, tp
                  auipc        a1, 814441
                  sra          a0, s1, s4
                  beq          s11, s9, 226f
                  bne          s3, s8, 209f
209:              slt          a7, s9, t0
                  auipc        a0, 427974
                  sra          s2, s2, zero
                  addi         s10, a7, 1134
213:              sltiu        a1, a3, 891
                  and          t1, s3, s3
                  bge          a3, t6, 220f
                  bge          ra, s2, 220f
                  add          a2, s9, s1
                  or           t4, a6, t1
                  bgeu         t2, t6, 226f
220:              andi         s5, zero, 531
                  beq          zero, t5, 241f
                  or           gp, s6, a7
                  add          tp, sp, t1
                  auipc        t2, 103297
                  blt          a7, t5, 233f
226:              sltu         tp, t0, s3
                  blt          t0, s9, 243f
                  add          a5, s4, t5
                  sub          s2, zero, a7
                  bgeu         tp, s6, 243f
                  slt          a1, s2, t2
                  lui          tp, 1047578
233:              sub          a2, s6, tp
                  addi         s2, s8, 979
                  sub          s4, s6, s5
                  xori         s11, s4, 1519
                  add          s10, t6, s2
                  addi         s11, s0, -488
                  sra          a7, s2, t5
                  add          a1, s8, s2
241:              ori          ra, t3, 1398
                  xor          s9, s4, ra
243:              nop
                  blt          gp, s1, 261f
                  sltu         a5, a3, s4
                  slt          t6, a2, a7
                  sra          s5, a0, s5
                  slli         t4, a1, 9
                  xor          a0, t3, t3
                  blt          t5, s7, 256f
                  srli         a3, a3, 24
                  bne          t2, a3, 260f
                  and          t6, s8, a0
                  andi         a3, t3, 1277
                  addi         s11, zero, 1661
256:              srli         s2, t0, 29
                  slli         a4, t0, 3
                  slli         gp, s4, 29
                  sltu         ra, s0, s7
260:              slt          s10, s0, s3
261:              srli         s2, a6, 31
                  lui          zero, 484190
                  srli         a7, a3, 21
                  slti         s5, a0, -2005
                  bltu         a2, sp, 281f
                  slti         s4, a6, -1655
                  add          t5, a3, s7
                  sltiu        s10, ra, -1395
                  sltiu        a5, s1, 59
                  or           s0, s2, t0
                  or           s6, s4, s8
                  xor          a5, sp, s3
                  bge          t6, sp, 282f
                  xor          gp, a7, s7
                  srli         ra, s10, 30
                  slti         s8, t5, -776
                  xori         t1, s7, -366
                  srai         s11, tp, 8
                  slti         s1, a5, -1991
                  slt          s10, t1, t3
281:              sltu         t6, tp, t6
282:              slti         a0, a7, -932
                  slt          s0, a0, s3
                  slli         t5, t3, 7
                  bge          t6, t2, 300f
                  or           s11, s2, a5
                  srl          a3, a7, s7
                  slli         s0, sp, 27
                  sll          s0, s11, t5
                  slti         s11, s5, -1236
                  sub          a4, s8, s8
                  nop
                  xor          s2, sp, s9
                  bge          t4, zero, 303f
                  sra          s0, s7, t5
                  xor          s11, s11, a7
                  beq          a4, a2, 298f
298:              xor          a1, s4, s11
                  auipc        t4, 281697
300:              auipc        tp, 355812
                  bltu         t4, a6, 319f
                  slli         a2, s3, 2
303:              bne          ra, t3, 313f
                  blt          t1, zero, 309f
                  sra          t6, gp, t4
                  slli         zero, a0, 11
                  slti         t1, s7, 167
                  srl          t2, sp, s4
309:              xori         s9, t2, 1500
                  sra          s6, ra, a4
                  nop
                  blt          s8, s3, 325f
313:              bne          s2, a0, 321f
                  sub          t4, a3, a0
                  addi         s4, s7, 946
                  sltu         s10, s4, a6
                  or           t1, a0, ra
                  xori         a5, t6, 443
319:              bge          s7, s4, 321f
                  blt          a7, s5, 325f
321:              bge          a3, s10, 325f
                  xor          s5, a1, zero
                  srl          zero, s9, t6
                  bge          t2, a5, 330f
325:              lui          t1, 948939
                  addi         a0, a5, -1132
                  srli         a7, a2, 12
                  sra          t1, ra, t5
                  lui          zero, 668963
330:              xor          s0, t0, s2
                  srl          t6, sp, s10
                  xori         s4, s7, 1256
                  ori          a2, a3, -1096
                  srl          a7, s7, t0
                  lui          zero, 536230
                  ori          a7, t5, -1321
                  xor          s10, s11, a2
                  bge          s8, s10, 342f
                  lui          s8, 98859
                  srai         s7, s6, 27
                  auipc        tp, 331675
342:              blt          a1, s9, 351f
                  xor          gp, s0, t5
                  beq          a3, a4, 352f
                  blt          gp, ra, 364f
                  sltiu        s6, t5, 1153
                  srai         s8, a1, 23
                  bne          a6, s2, 364f
                  sra          a1, t2, a6
                  bgeu         s9, t3, 358f
351:              sltiu        s1, s10, 612
352:              addi         s8, t6, -1430
                  bne          s2, tp, 369f
                  slli         tp, s6, 26
                  add          t4, t0, s8
                  lui          zero, 974569
                  bge          t2, gp, 364f
358:              andi         s2, tp, -569
                  srai         ra, zero, 5
                  and          sp, a1, s11
                  and          t4, s11, gp
                  sll          s8, a7, a3
                  sra          t1, s8, gp
364:              add          s5, s8, s1
                  sll          zero, s0, gp
                  nop
                  ori          t4, t4, 517
                  slti         s11, s4, 152
369:              sub          s9, a2, s1
                  blt          s1, sp, 382f
                  or           s9, s3, a2
                  or           a2, ra, a2
                  sub          s2, s10, a3
                  sll          t1, s8, s10
                  sra          s7, t6, s2
                  and          sp, s8, ra
                  bne          a1, tp, 397f
                  and          s0, s1, s7
                  or           ra, a6, s11
                  slti         s9, a5, -616
                  sltiu        gp, s2, 359
382:              sltiu        ra, t2, -796
                  sll          t1, s4, s2
                  blt          gp, s9, 385f
385:              andi         s2, gp, -1204
                  slti         a4, s7, 1483
                  ori          s4, s9, 519
                  and          t5, t6, s0
                  srl          t4, a0, t0
                  srl          a4, s10, s1
                  xor          a0, ra, s5
                  srli         a4, s6, 2
                  xor          zero, a2, zero
                  sltiu        s2, s0, 1829
                  bne          t2, a7, 404f
                  xori         s0, s3, -1253
397:              blt          s7, s2, 405f
                  blt          a3, t4, 399f
399:              addi         a1, s1, -1611
                  bltu         a2, s10, 413f
                  slli         zero, s11, 12
                  ori          a5, a3, 860
                  nop
404:              ori          s5, s5, 1038
405:              beq          s1, t4, 409f
                  andi         s10, t1, -1001
                  srai         a4, s11, 3
                  add          s0, a0, t4
409:              beq          a5, tp, 411f
                  auipc        t1, 1006769
411:              sltiu        a3, t2, 1793
                  sra          a3, a6, t4
413:              bne          a5, a4, 414f
414:              lui          t6, 666495
                  slli         ra, a6, 11
                  andi         a0, s11, -1997
                  sltu         a0, ra, s2
                  auipc        tp, 671619
                  bge          s7, t2, 428f
                  bge          a4, a3, 433f
                  slti         s11, s9, -1447
                  slt          a7, a0, s4
                  blt          a5, s0, 435f
                  sltu         t2, a3, a4
                  xori         zero, s7, -1018
                  addi         gp, t4, 123
                  srai         a2, a1, 14
428:              or           t1, sp, a6
                  or           s3, s6, tp
                  lui          s1, 307125
                  xori         t5, t0, -552
                  sub          s1, a7, a0
433:              beq          a1, a0, 439f
                  sra          zero, s11, a5
435:              bgeu         gp, a4, 453f
                  srai         a7, s7, 19
                  ori          t1, a5, 1617
                  srai         a0, t1, 25
439:              or           t4, s11, s11
                  srl          zero, t6, t4
                  andi         t4, a4, 1912
                  beq          s3, gp, 459f
                  or           s2, gp, tp
                  add          s6, a0, t1
                  slti         s1, s10, 68
                  xor          zero, tp, s0
                  sub          s10, s0, a4
                  slt          s11, a5, a5
                  addi         s3, t1, 302
                  xori         s1, a0, 1799
                  nop
                  bgeu         a5, t4, 462f
453:              sra          a4, ra, s4
                  srai         a2, a4, 29
                  slt          s5, a7, zero
                  bgeu         sp, t2, 471f
                  add          s5, s10, a0
                  or           gp, a7, s4
459:              add          t1, s1, s10
                  bgeu         ra, s3, 465f
                  bgeu         s10, s10, 474f
462:              nop
                  or           t1, s3, s7
                  slti         s4, s6, -1201
465:              sra          s2, s1, t0
                  bltu         a6, s8, 483f
                  bltu         t6, a7, 477f
                  andi         t4, t3, -2042
                  srli         t4, s3, 22
                  sll          a5, t1, gp
471:              bltu         tp, s8, 487f
                  xor          a5, s5, s4
                  sltu         t4, t1, gp
474:              auipc        a4, 684018
                  sltu         t5, s10, t0
                  sll          s2, s6, s1
477:              blt          s1, tp, 485f
                  srai         sp, s3, 21
                  ori          a5, gp, -1813
                  sra          s5, t4, s5
                  sub          t1, s0, zero
                  xori         zero, a1, 1430
483:              sra          s3, t0, t3
                  slli         s11, a2, 12
485:              slti         a4, s5, -997
                  bltu         t3, ra, 492f
487:              sltiu        tp, a2, -524
                  auipc        tp, 413711
                  slti         t4, s6, 1231
                  srli         s6, s6, 4
                  slt          t4, s8, t1
492:              slti         s5, s3, 326
                  add          s5, s0, s9
                  ori          s9, zero, 645
                  slt          a5, a4, ra
                  and          s0, a6, a4
                  ori          a4, t0, -1377
                  ori          a7, t0, 1038
                  auipc        zero, 927860
                  xori         t2, t1, -1408
                  beq          s11, a4, 521f
                  and          gp, s7, zero
                  addi         a5, sp, -1955
                  nop
                  sll          s2, s1, t3
                  bge          s6, a3, 514f
                  lui          t5, 196768
                  nop
                  xor          s0, a1, a2
                  or           a7, a0, s8
                  xori         t2, gp, -1949
                  add          a0, ra, t0
                  xor          a5, s9, a1
514:              auipc        s8, 325474
                  bltu         a2, t1, 519f
                  or           sp, t4, s11
                  sltu         t1, ra, s7
                  xori         sp, t6, -728
519:              xor          s0, a7, a1
                  bgeu         zero, t6, 521f
521:              beq          tp, s9, 523f
                  sub          s6, a7, t4
523:              or           s0, s11, t3
                  bne          s3, s11, 536f
                  xor          s5, s0, s0
                  add          tp, s6, a2
                  beq          s3, a6, 532f
                  ori          zero, s5, -1310
                  lui          a4, 450729
                  sll          a5, s4, s10
                  addi         tp, s9, 1366
532:              andi         sp, a6, 619
                  and          s1, a1, sp
                  blt          s1, s1, 547f
                  add          s6, a1, a4
536:              srai         a4, s9, 12
                  and          s10, s3, zero
                  srli         a5, s2, 12
                  and          t4, s11, a7
                  bgeu         s7, s8, 541f
541:              bge          s10, a5, 550f
                  srli         s7, s11, 0
                  ori          a3, s5, 1838
                  sltu         t1, s6, zero
                  slti         t2, a6, -768
                  sra          s9, s11, t0
547:              sra          s7, a7, s1
                  auipc        a5, 986741
                  nop
550:              xori         gp, tp, -1412
                  xori         s0, t1, 362
                  or           s11, a0, s2
                  sll          s11, tp, a3
                  xor          t5, s4, zero
                  srli         tp, t3, 25
                  srl          a4, a7, t5
                  lui          sp, 863050
                  srl          t6, sp, s10
                  or           s10, a4, t0
                  sll          s3, a4, s0
                  bltu         t5, s8, 567f
                  srli         s0, s5, 9
                  srli         a2, s0, 0
                  bge          tp, a0, 583f
                  sltiu        a5, s10, 1796
                  sltiu        a1, s5, 1815
567:              bltu         a7, a4, 572f
                  srl          s5, a4, s11
                  ori          t1, tp, 705
                  add          tp, t6, t5
                  sll          ra, a7, s3
572:              and          a1, t4, a6
                  nop
                  xor          t6, s5, s10
                  addi         tp, t4, -767
                  addi         s4, t4, -414
                  sltu         t6, s5, s7
                  bge          s5, t3, 594f
                  bltu         zero, a1, 587f
                  blt          a2, s4, 595f
                  ori          a5, s2, 1837
                  slt          s4, ra, t0
583:              slti         s0, s3, 1350
                  slt          s3, s10, s9
                  sra          s8, t6, a1
                  addi         s9, s11, -1099
587:              xori         s9, tp, 1606
                  xor          s0, s11, t6
                  sltiu        s2, t5, -322
                  srl          t4, gp, t0
                  sltu         zero, s8, s11
                  sltu         t6, s11, s7
                  srli         zero, t4, 17
594:              xori         t4, s2, 2013
595:              sltiu        t1, zero, -407
                  auipc        t5, 171612
                  slt          t1, a1, a7
                  beq          a1, a6, 616f
                  or           a5, gp, gp
                  slti         s4, s8, -8
                  slt          s0, s2, t3
                  srai         s11, s0, 19
                  blt          a7, a7, 612f
                  ori          s6, t3, 791
                  ori          t4, s11, 1734
                  sltu         a7, t6, a0
                  slti         t2, a4, 1759
                  add          a4, s7, a7
                  and          s5, t3, t2
                  bgeu         t1, zero, 617f
                  srl          s11, t2, t0
612:              lui          ra, 482872
                  beq          s7, a5, 617f
                  bne          s1, s6, 626f
                  beq          a1, t3, 619f
616:              nop
617:              slli         a7, t2, 3
                  and          tp, a3, s11
619:              slt          a1, a6, s8
                  srl          a4, s11, s3
                  beq          s6, ra, 622f
622:              slti         s2, s5, 43
                  slti         s10, t5, 140
                  andi         s1, a4, 856
                  slt          s9, s10, t6
626:              sll          s9, zero, s5
                  slt          a2, s4, s8
                  blt          t0, gp, 637f
                  add          s4, s8, a4
                  slti         s11, a4, -1171
                  xori         s10, a6, -1770
                  blt          tp, a5, 633f
633:              sra          zero, a3, s6
                  bge          s4, a1, 639f
                  srl          s8, s3, s4
                  sll          s8, a7, s2
637:              auipc        t4, 640006
                  xor          s2, s9, s9
639:              sra          a3, t2, ra
                  xori         s4, s6, 237
                  lw           ra, 4(a6)
                  ori          a4, s0, 1068
                  slt          t4, t6, s8
                  nop
                  slli         s9, t0, 29
                  addi         a6, a6, 28
                  lui          a4, 771879
                  slti         a3, t1, 1744
920:              addi x27, x1, 1
920:              jalr x27, x27, 0
sub_3:            lui          a5, 723568
                  nop
                  addi         a6, a6, -32
                  srl          s11, a5, a7
                  and          t5, a5, s1
                  sw           ra, 4(a6)
                  srli         t1, s3, 7
                  and          a3, s2, s11
                  andi         s5, ra, -1912
                  and          s0, ra, ra
                  srai         s10, s9, 0
                  or           s3, s3, s3
                  nop
                  and          s4, s1, s10
                  beq          s7, a0, sub_3_j8 #branch to jump instr
                  srli         a7, a4, 18
                  sub          s6, s4, sp
                  addi         tp, a7, 78
sub_3_j8:         jal          ra, sub_5 #jump sub_3 -> sub_5
sub_3_2:          jal          ra, 0f
0:                jal          ra, 13f
1:                jal          gp, 8f
2:                jal          ra, 16f
3:                jal          ra, 10f
4:                jal          ra, 6f
5:                jal          gp, 12f
6:                jal          sp, 15f
7:                jal          s11, 11f
8:                jal          a4, 4b
9:                jal          ra, 1b
10:               jal          t1, 9b
11:               jal          ra, 3b
12:               jal          t1, 2b
13:               jal          tp, 14f
14:               jal          t1, 7b
15:               jal          t1, 5b
16:               slti         t1, a3, 1673
sub_3_3:          jal          ra, 0f
0:                jal          t1, 8f
1:                jal          t1, 13f
2:                jal          ra, 5f
3:                jal          ra, 7f
4:                jal          ra, 1b
5:                jal          t2, 6f
6:                jal          s0, 10f
7:                jal          t1, 14f
8:                jal          t1, 3b
9:                jal          a2, 4b
10:               jal          s3, 16f
11:               jal          t1, 9b
12:               jal          s11, 11b
13:               jal          s7, 2b
14:               jal          t1, 15f
15:               jal          ra, 12b
16:               slli         gp, a4, 10
sub_3_0:          jal          ra, 0f
0:                jal          tp, 9f
1:                jal          a7, 21f
2:                jal          a1, 8f
3:                jal          tp, 20f
4:                jal          ra, 10f
5:                jal          a3, 3b
6:                jal          ra, 13f
7:                jal          s9, 2b
8:                jal          s10, 11f
9:                jal          t1, 4b
10:               jal          s8, 16f
11:               jal          ra, 6b
12:               jal          ra, 1b
13:               jal          sp, 12b
14:               jal          t1, 17f
15:               jal          s7, 5b
16:               jal          ra, 14b
17:               jal          gp, 15b
18:               jal          ra, 19f
19:               jal          ra, 7b
20:               jal          s3, 18b
21:               nop
sub_3_1:          jal          ra, 22f
0:                jal          ra, 2f
1:                jal          ra, 17f
2:                jal          t1, 25f
3:                jal          ra, 13f
4:                jal          t1, 11f
5:                jal          ra, 1b
6:                jal          ra, 14f
7:                jal          t1, 5b
8:                jal          ra, 10f
9:                jal          ra, 20f
10:               jal          tp, 16f
11:               jal          ra, 15f
12:               jal          ra, 24f
13:               jal          sp, 6b
14:               jal          t1, 0b
15:               jal          s7, 19f
16:               jal          t1, 9b
17:               jal          t1, 3b
18:               jal          ra, 8b
19:               jal          ra, 23f
20:               jal          ra, 4b
21:               jal          t1, 18b
22:               jal          ra, 12b
23:               jal          ra, 7b
24:               jal          ra, 21b
25:               slli         s11, a6, 6
                  addi         a5, t1, -1279
                  sltu         t5, gp, s11
                  bne          s4, s9, 14f
                  or           s8, s5, s0
                  slli         s2, tp, 3
                  or           t4, t3, s6
                  or           t5, s7, s7
                  addi         tp, t4, 1497
                  lui          a4, 202820
                  add          t2, t1, t4
                  andi         sp, ra, -1721
                  auipc        tp, 539582
                  or           s2, s11, s10
                  nop
14:               bltu         s7, s11, 31f
                  beq          t1, s5, 33f
                  auipc        s5, 867156
                  andi         s6, s1, 1616
                  and          a7, s10, ra
                  addi         s5, s10, 998
                  xor          a2, a1, t3
                  bge          s8, tp, 39f
                  bltu         sp, s10, 30f
                  nop
                  srl          a1, zero, s7
                  slli         s8, s5, 29
                  blt          s6, zero, 39f
                  slli         s8, a4, 2
                  srl          s2, s4, s2
                  lui          a1, 959047
30:               srai         ra, gp, 26
31:               beq          sp, s11, 41f
                  auipc        ra, 773961
33:               bne          ra, t1, 36f
                  srl          s10, a5, a7
                  add          a5, t5, s9
36:               sll          s10, s4, s0
                  slli         s8, s7, 17
                  auipc        s3, 244507
39:               slti         a5, s7, -1067
                  lui          s3, 225070
41:               sub          a3, s6, s3
                  nop
                  blt          s11, s0, 55f
                  blt          s2, tp, 57f
                  andi         t6, ra, 1258
                  ori          s11, s6, 1981
                  or           s10, gp, tp
                  xor          a5, t1, t6
                  bltu         ra, s7, 68f
                  or           zero, s2, s1
                  or           s8, a1, s0
                  slt          s1, a0, gp
                  nop
                  and          a1, sp, a7
55:               lui          s11, 117754
                  bne          s9, s0, 59f
57:               auipc        t6, 146224
                  addi         t4, t2, -982
59:               add          a4, tp, a2
                  sltu         tp, t6, s10
                  nop
                  srai         s6, s10, 9
                  nop
                  bne          s5, a1, 81f
                  slti         s3, a0, -419
                  ori          s2, t1, 645
                  slli         a1, s0, 6
68:               bne          a7, zero, 77f
                  andi         s5, s9, -618
                  beq          s1, a1, 83f
                  srl          s6, s1, s7
                  bne          gp, t1, 74f
                  bltu         t2, s7, 89f
74:               srl          s0, s3, t0
                  bltu         t3, s1, 87f
                  and          s7, ra, t1
77:               srai         s0, s3, 26
                  sltu         s2, t4, a4
                  srl          t6, a6, t5
                  slti         sp, a5, 1197
81:               add          a2, a7, s4
                  ori          a0, sp, -841
83:               xori         a4, t5, 1046
                  lui          a1, 632398
                  srai         s2, gp, 16
                  ori          a4, s11, 897
87:               srl          t2, s11, s2
                  add          t1, s1, s2
89:               sub          t1, s6, s5
                  or           ra, s7, s2
                  sll          s2, s3, s9
                  and          a3, s5, s7
                  srli         a1, s3, 7
                  addi         t4, t0, -1112
                  srai         s8, tp, 4
                  auipc        t2, 1047470
                  xori         gp, a1, -1838
                  bne          a1, a2, 103f
                  slt          gp, gp, t2
                  srai         a1, a4, 12
                  blt          s0, t3, 102f
102:              auipc        s4, 669142
103:              srl          s2, a4, t4
                  sll          t5, zero, t1
                  sub          s11, s7, gp
                  sltu         t6, t2, t5
                  slli         s5, s3, 23
                  andi         zero, a4, -712
                  nop
                  xor          s7, zero, t3
                  bge          s4, a0, 122f
                  bge          t6, s0, 119f
                  add          s10, t2, a7
                  andi         a0, a6, 1911
                  ori          s5, sp, 691
                  slt          tp, s11, t1
                  sub          sp, t4, a2
                  lui          a0, 538357
119:              auipc        s1, 18546
                  sltu         s2, s3, s4
                  slt          s6, s4, t1
122:              bltu         gp, gp, 137f
                  srli         a1, t1, 9
                  slt          a0, gp, a5
                  slt          s6, a5, a0
                  auipc        sp, 893686
                  slti         s11, t0, 237
                  slt          t1, s4, s11
                  bge          s8, a2, 145f
                  bge          t5, s7, 150f
                  blt          s11, a7, 136f
                  bne          t2, s9, 142f
                  andi         s8, s2, -473
                  bgeu         s6, s9, 144f
                  addi         s9, ra, -878
136:              and          s5, t3, s3
137:              or           s3, t4, a1
                  slt          t6, s2, t6
                  slli         s6, s7, 19
                  sltu         s4, t2, t0
                  ori          a7, a3, -1452
142:              slt          ra, s7, s11
                  beq          t5, t2, 154f
144:              add          s6, t0, zero
145:              sra          s6, t3, a6
                  bltu         a4, s11, 153f
                  sub          a2, a7, t2
                  bne          s9, s8, 151f
                  blt          t5, s10, 156f
150:              bge          tp, gp, 167f
151:              sll          t5, s11, t0
                  ori          s7, a0, 1450
153:              srai         sp, a7, 1
154:              or           s9, s4, t5
                  or           s3, s10, t6
156:              slli         ra, s10, 6
                  sub          tp, s5, s8
                  slli         tp, t1, 3
                  auipc        s3, 450636
                  sltiu        s6, gp, -323
                  addi         s8, t0, -1670
                  bne          a0, t4, 170f
                  nop
                  or           t4, a6, a0
                  blt          tp, s5, 183f
                  auipc        t2, 280248
167:              or           ra, a6, a2
                  auipc        t1, 967797
                  andi         s1, a1, -1067
170:              sra          s10, t1, s6
                  srli         a3, t5, 8
                  sll          t6, gp, a2
                  xori         s8, gp, -1129
                  blt          ra, s3, 184f
                  xor          ra, tp, a0
                  sll          s2, s2, s10
                  ori          s5, s11, 147
                  ori          gp, s6, -366
                  sra          s2, s3, a2
                  srl          t5, a1, s8
                  add          s10, a6, s3
                  sltiu        s0, t5, 845
183:              sltu         a1, s0, t5
184:              add          a5, t1, a7
                  xor          a3, s6, tp
                  sll          s3, t2, a5
                  sll          t5, s9, s3
                  blt          a5, ra, 208f
                  slt          s8, s1, s0
                  slt          a4, a6, s9
                  bgeu         s5, s5, 202f
                  sltiu        t2, s5, -1540
                  xori         a2, t5, -140
                  slt          s3, a1, s8
                  lui          s2, 193085
                  srl          a4, a5, t2
                  add          zero, a1, a2
                  sltiu        gp, s8, 1610
                  add          t6, s6, tp
                  bne          sp, gp, 212f
                  sub          s1, a2, a4
202:              srli         s7, tp, 4
                  blt          s5, a2, 214f
                  bltu         t6, a6, 217f
                  sub          t5, a3, t6
                  sll          t4, s5, s1
                  nop
208:              blt          s9, s5, 211f
                  nop
                  bge          a4, a3, 215f
211:              bge          s2, s0, 221f
212:              auipc        sp, 937787
                  bltu         t0, t2, 220f
214:              xori         a2, a2, -1943
215:              srli         s9, s8, 16
                  addi         s3, s3, 1892
217:              bltu         a7, s1, 230f
                  xor          s0, s5, s5
                  bgeu         tp, s9, 221f
220:              srli         sp, a2, 6
221:              add          tp, zero, a5
                  auipc        a5, 70524
                  xor          s9, zero, s0
                  blt          tp, sp, 237f
                  bge          t0, t4, 237f
                  and          tp, a6, a2
                  add          a4, a7, ra
                  slti         s4, s1, 1111
                  srli         s2, sp, 20
230:              sltu         s0, tp, a3
                  andi         zero, t5, 1762
                  andi         tp, s11, 487
                  sll          s4, a3, t1
                  srl          s4, s1, s3
                  auipc        s0, 736047
                  srai         t2, s0, 29
237:              srai         a7, a5, 6
                  slli         t2, s6, 6
                  slti         s9, a2, -306
                  bltu         t4, s3, 241f
241:              and          s0, s10, s6
                  and          s8, a4, s3
                  ori          sp, s2, -665
                  bge          s5, s2, 245f
245:              slt          a0, s11, a2
                  srl          s6, a7, sp
                  slt          s0, a2, a7
                  srli         s1, t0, 17
                  nop
                  srl          a1, t2, ra
                  sltiu        s0, gp, 570
                  lui          a1, 525699
                  lw           ra, 4(a6)
                  add          s11, s9, ra
                  slti         a4, a2, 1808
                  addi         a6, a6, 32
                  srai         a3, gp, 0
363:              addi x18, x1, 1
363:              jalr x18, x18, 0
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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x5, x16, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x27, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x27, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x27, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x27, x9, ecall_handler
                  li x9, 0x1
                  beq x27, x9, instr_fault_handler
                  li x9, 0x5
                  beq x27, x9, load_fault_handler
                  li x9, 0x7
                  beq x27, x9, store_fault_handler
                  li x9, 0xc
                  beq x27, x9, pt_fault_handler
                  li x9, 0xd
                  beq x27, x9, pt_fault_handler
                  li x9, 0xf
                  beq x27, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x16, x5, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
