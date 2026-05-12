.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0xf6f16a7c
                  li x1, 0x0
                  li x2, 0xf1b37c9f
                  li x3, 0x3df3bd31
                  li x4, 0x6
                  li x5, 0xf8b8dded
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x191c0c42
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xf12c4b4b
                  li x12, 0xe
                  li x13, 0xf7f000bb
                  li x15, 0xf796cd97
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0xf908c2da
                  li x19, 0x80000000
                  li x20, 0xfd1d3284
                  li x21, 0x80000000
                  li x22, 0xfcf93168
                  li x23, 0x9b0cdad5
                  li x24, 0x0
                  li x25, 0xf7720af3
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0x4d4fc039
                  la x28, user_stack_end
main:             sub          t4, gp, s1
                  la           a2, sub_3
                  ori          t1, a7, -1263
                  srai         ra, t1, 26
                  sra          a6, t3, a2
                  addi         a2, a2, -748
                  xori         gp, tp, 541
                  srl          t1, t5, a4
                  add          a0, s11, zero
                  sltu         s4, tp, a6
main_j2:          jalr         t1, a2, 748 #jump main -> sub_3
                  sltu         a1, sp, zero
                  la           t4, sub_4
                  sll          gp, s10, t2
                  add          a1, s0, a5
                  addi         a3, s1, 1174
                  auipc        a7, 268543
                  addi         t4, t4, -897
                  sltiu        sp, ra, -789
                  slt          s7, t4, s11
                  srli         s6, s4, 18
                  sltiu        a0, t3, -1018
                  srl          t1, s0, s8
main_j3:          jalr         t1, t4, 897 #jump main -> sub_4
                  xori         a0, a3, -14
                  ori          a6, t0, -1467
                  la           a2, sub_1
                  sra          a3, a6, a0
                  addi         a2, a2, 9
                  sltiu        s10, s8, -54
                  sll          ra, s11, s3
                  add          t1, s2, s4
main_j4:          jalr         t1, a2, -8 #jump main -> sub_1
                  sub          s2, s2, s1
                  sltu         zero, a1, t3
                  la           t2, sub_2
                  ori          s2, s6, -1235
                  sra          s1, s1, t0
                  slti         s0, s10, -2011
                  addi         t2, t2, -256
                  addi         a5, s5, 768
main_j5:          jalr         t1, t2, 256 #jump main -> sub_2
main_0:           jal          t1, 7f
0:                jal          ra, 9f
1:                jal          ra, 3f
2:                jal          a2, 10f
3:                jal          ra, 13f
4:                jal          ra, 8f
5:                jal          t1, 12f
6:                jal          ra, 4b
7:                jal          ra, 2b
8:                jal          s5, 5b
9:                jal          sp, 6b
10:               jal          ra, 11f
11:               jal          ra, 0b
12:               jal          gp, 1b
13:               xori         s4, t0, 1906
                  slt          t4, t0, a2
                  sub          tp, a1, t6
                  and          s8, t0, s10
                  xori         s2, t5, -483
                  srl          s10, s6, a6
                  la           t0, sub_5
                  andi         a6, s4, 1632
                  sll          a1, a6, s1
                  sltiu        a3, t4, -2045
                  srl          a6, a5, s2
                  addi         t0, t0, -864
                  andi         s9, t1, 1285
                  srl          ra, s2, s5
main_j1:          jalr         t1, t0, 865 #jump main -> sub_5
                  andi         s11, a3, -828
                  bgeu         s3, s2, 7f
                  srl          sp, t5, t0
                  auipc        s2, 964826
7:                or           sp, s11, t4
                  bltu         a4, t5, 22f
                  sll          t6, s3, s8
                  and          s2, gp, s11
                  bltu         a1, tp, 16f
                  xori         s1, gp, -1633
                  sll          s2, a3, sp
                  srli         a2, a1, 23
                  sltu         a5, s5, a1
16:               andi         s9, a3, -1915
                  srli         s10, s11, 0
                  srli         s10, t0, 12
                  sltiu        tp, s7, -1521
                  beq          a2, t0, 22f
                  bltu         t0, s6, 22f
22:               srai         a5, a2, 24
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         t5, t3, -1902
                  sltu         t5, s3, gp
                  addi         t3, t3, -20
                  lui          s5, 758757
                  and          ra, a5, sp
                  sltiu        s1, t5, 769
                  sra          s6, tp, t0
                  sltiu        t4, s3, 1276
                  srl          t6, zero, t5
                  sw           t1, 4(t3)
                  addi         s11, s4, -964
                  srli         t0, s9, 5
sub_4_7:          jal          t1, 9f
0:                jal          a2, 3f
1:                jal          t1, 0b
2:                jal          ra, 11f
3:                jal          ra, 6f
4:                jal          ra, 15f
5:                jal          ra, 4b
6:                jal          s6, 13f
7:                jal          ra, 2b
8:                jal          a5, 7b
9:                jal          gp, 16f
10:               jal          ra, 14f
11:               jal          t4, 5b
12:               jal          t1, 17f
13:               jal          t1, 8b
14:               jal          a5, 1b
15:               jal          ra, 12b
16:               jal          sp, 10b
17:               srli         sp, s11, 20
sub_4_0:          jal          t1, 1f
0:                jal          ra, 3f
1:                jal          a6, 25f
2:                jal          ra, 5f
3:                jal          ra, 26f
4:                jal          t1, 6f
5:                jal          ra, 8f
6:                jal          t1, 17f
7:                jal          ra, 20f
8:                jal          s6, 13f
9:                jal          ra, 22f
10:               jal          ra, 4b
11:               jal          ra, 28f
12:               jal          ra, 27f
13:               jal          gp, 19f
14:               jal          ra, 18f
15:               jal          t1, 16f
16:               jal          ra, 24f
17:               jal          t1, 23f
18:               jal          ra, 30f
19:               jal          sp, 11b
20:               jal          ra, 21f
21:               jal          t1, 15b
22:               jal          gp, 2b
23:               jal          t1, 9b
24:               jal          s6, 29f
25:               jal          t1, 10b
26:               jal          gp, 12b
27:               jal          t1, 14b
28:               jal          ra, 7b
29:               jal          ra, 0b
30:               auipc        gp, 648253
sub_4_1:          jal          t1, 7f
0:                jal          ra, 2f
1:                jal          gp, 3f
2:                jal          ra, 5f
3:                jal          s10, 8f
4:                jal          ra, 0b
5:                jal          t1, 1b
6:                jal          ra, 10f
7:                jal          a7, 9f
8:                jal          s10, 6b
9:                jal          t1, 4b
10:               lui          s7, 712556
sub_4_9:          jal          t1, 15f
0:                jal          ra, 6f
1:                jal          ra, 7f
2:                jal          ra, 17f
3:                jal          s11, 18f
4:                jal          s4, 20f
5:                jal          ra, 16f
6:                jal          t1, 1b
7:                jal          t1, 12f
8:                jal          tp, 10f
9:                jal          tp, 5b
10:               jal          t1, 0b
11:               jal          t1, 3b
12:               jal          s4, 9b
13:               jal          ra, 11b
14:               jal          t1, 2b
15:               jal          t5, 4b
16:               jal          ra, 19f
17:               jal          ra, 21f
18:               jal          s1, 14b
19:               jal          a2, 13b
20:               jal          s9, 8b
21:               sll          s6, sp, a2
sub_4_4:          jal          t1, 0f
0:                jal          a1, 14f
1:                jal          t2, 27f
2:                jal          s5, 21f
3:                jal          ra, 20f
4:                jal          ra, 9f
5:                jal          t1, 11f
6:                jal          a7, 3b
7:                jal          t1, 16f
8:                jal          a1, 1b
9:                jal          ra, 23f
10:               jal          ra, 4b
11:               jal          ra, 28f
12:               jal          ra, 10b
13:               jal          ra, 22f
14:               jal          t6, 6b
15:               jal          ra, 18f
16:               jal          t4, 12b
17:               jal          t5, 29f
18:               jal          ra, 2b
19:               jal          s9, 25f
20:               jal          ra, 8b
21:               jal          ra, 7b
22:               jal          ra, 19b
23:               jal          t1, 17b
24:               jal          t0, 26f
25:               jal          t1, 15b
26:               jal          s0, 13b
27:               jal          sp, 5b
28:               jal          t1, 24b
29:               addi         a2, tp, 1411
sub_4_3:          jal          t1, 0f
0:                jal          ra, 8f
1:                jal          s2, 3f
2:                jal          t1, 9f
3:                jal          ra, 11f
4:                jal          ra, 6f
5:                jal          s6, 7f
6:                jal          t1, 5b
7:                jal          t0, 10f
8:                jal          ra, 4b
9:                jal          t4, 1b
10:               jal          s11, 2b
11:               nop
sub_4_8:          jal          t1, 5f
0:                jal          t6, 13f
1:                jal          tp, 6f
2:                jal          ra, 7f
3:                jal          ra, 4f
4:                jal          t1, 2b
5:                jal          ra, 18f
6:                jal          s6, 3b
7:                jal          t6, 16f
8:                jal          ra, 11f
9:                jal          t4, 15f
10:               jal          ra, 1b
11:               jal          ra, 19f
12:               jal          t1, 9b
13:               jal          ra, 14f
14:               jal          ra, 12b
15:               jal          t1, 8b
16:               jal          t1, 0b
17:               jal          ra, 21f
18:               jal          s6, 10b
19:               jal          s7, 20f
20:               jal          ra, 17b
21:               xori         a5, sp, 1922
                  sub          t5, t2, s3
                  srl          s9, s9, ra
                  bgeu         a5, s8, 8f
                  sltiu        a3, s6, 186
                  add          a5, t6, a2
                  and          s4, a2, s9
                  blt          tp, s1, 25f
                  sub          s4, s0, a1
8:                srli         tp, t6, 3
                  or           t2, a2, a3
                  bgeu         t1, t5, 21f
                  sra          s8, s8, s8
                  or           s8, a6, s3
                  nop
                  sra          t2, s4, t0
                  or           a2, s5, a6
                  slt          t4, t1, a2
                  bgeu         a4, s2, 26f
                  bge          t2, ra, 30f
                  sll          t5, tp, t5
                  ori          ra, a1, -949
21:               xori         a6, sp, -59
                  bgeu         t3, s4, 30f
                  andi         a3, s8, -523
                  beq          t1, a2, 31f
25:               addi         gp, s3, 591
26:               beq          a4, t4, 40f
                  lui          s2, 182145
                  bge          zero, t5, 46f
                  sra          s6, a5, a0
30:               ori          t0, gp, 1463
31:               auipc        t1, 746696
                  sll          a1, a7, a3
                  sra          s1, s6, t0
                  sltiu        s9, a5, 684
                  add          a0, sp, s7
                  bge          s4, a7, 39f
                  xor          ra, t0, s1
                  bgeu         a7, a5, 43f
39:               srli         a5, tp, 21
40:               blt          s10, a6, 50f
                  sub          a2, t3, s11
                  slt          gp, s2, t2
43:               bgeu         a4, s5, 55f
                  slti         s10, s4, 80
                  slt          t1, s2, t1
46:               slti         gp, a1, 1862
                  sub          s9, t4, t4
                  srl          a5, s2, t4
                  srl          a3, t0, t5
50:               xori         t1, s10, -730
                  xori         a1, a0, -1758
                  auipc        t1, 396956
                  sltu         s4, t4, s3
                  and          a7, s0, zero
55:               bgeu         a2, a5, 73f
                  srai         a2, s4, 13
                  beq          a5, t6, 71f
                  bge          a1, a5, 71f
                  bne          tp, ra, 62f
                  xor          s1, t1, a2
                  xor          a3, s1, tp
62:               lui          t4, 563762
                  srli         s9, a2, 14
                  sltiu        tp, t2, -434
                  beq          ra, a2, 75f
                  or           s2, gp, a0
                  sltu         ra, s4, s3
                  andi         t4, t5, -1119
                  addi         s7, zero, -1961
                  auipc        s11, 88634
71:               sub          a5, t3, s3
                  and          a7, a3, s10
73:               sltiu        s2, t6, 429
                  srl          t0, ra, tp
75:               bltu         s4, a1, 88f
                  srli         a1, tp, 28
                  xori         s6, s6, -383
                  slti         a2, t2, 441
                  bge          sp, s5, 93f
                  nop
                  xori         zero, t1, 184
                  srl          s4, a0, s3
                  or           tp, a5, zero
                  slti         t2, a0, 1466
                  nop
                  sub          s5, tp, zero
                  beq          s9, ra, 97f
88:               andi         s5, a2, -701
                  sltu         s2, s8, t0
                  bge          s9, s4, 105f
                  srl          a7, a6, a5
                  srai         s4, s5, 3
93:               srl          s10, t4, t5
                  bge          t6, a1, 104f
                  srai         t6, s0, 7
                  sltu         ra, s7, s6
97:               bgeu         a7, s7, 106f
                  nop
                  xor          zero, t1, s1
                  or           zero, s2, s1
                  bge          a3, s11, 102f
102:              srli         tp, s0, 22
                  nop
104:              xor          t4, t3, t2
105:              bltu         t3, a1, 123f
106:              slti         s8, s7, 1541
                  beq          s5, sp, 119f
                  and          zero, s1, a1
                  bge          a0, a0, 111f
                  sltu         t1, zero, t4
111:              srl          a6, tp, t1
                  or           a3, a6, tp
                  slli         s11, s6, 26
                  xor          t2, s4, s2
                  slli         s1, s6, 17
                  beq          s0, t1, 131f
                  ori          s0, t4, -18
                  andi         s11, a0, -1790
119:              bne          zero, t3, 137f
                  sub          s9, s10, a4
                  bge          ra, a3, 139f
                  slt          a0, s4, s11
123:              slli         s6, a0, 5
                  addi         s11, a7, -487
                  bge          s3, tp, 133f
                  addi         t5, s10, 1116
                  srl          a7, s8, tp
                  sra          a0, t0, t1
                  lui          a0, 798874
                  bgeu         s2, s7, 144f
131:              or           s11, t5, a2
                  add          s1, t0, s3
133:              bne          s10, a1, 147f
                  or           a5, t0, t3
                  ori          s1, s2, 998
                  sra          sp, a3, sp
137:              bgeu         s5, s5, 152f
                  add          a5, tp, s10
139:              bge          a0, s0, 149f
                  nop
                  srl          s6, s1, ra
                  lui          t0, 441873
                  blt          s6, tp, 148f
144:              srli         sp, s8, 13
                  xori         gp, sp, -530
                  nop
147:              slti         a3, s0, -1619
148:              srai         sp, t4, 30
149:              auipc        a2, 484770
                  srai         s9, a2, 2
                  blt          t5, t0, 163f
152:              addi         t1, s1, -1628
                  xor          s2, t5, t1
                  srl          s2, t3, s10
                  lui          s7, 767094
                  add          s7, s4, s6
                  sltiu        a3, s9, 43
                  slli         tp, ra, 13
                  ori          t4, zero, 1542
                  xor          t5, a0, s3
                  slli         sp, t2, 0
                  sll          t4, a0, s11
163:              srli         ra, s8, 23
sub_4_6:          jal          t1, 7f
0:                jal          gp, 1f
1:                jal          ra, 6f
2:                jal          t1, 5f
3:                jal          ra, 4f
4:                jal          t0, 9f
5:                jal          a6, 0b
6:                jal          ra, 8f
7:                jal          ra, 2b
8:                jal          a2, 3b
9:                jal          s4, 10f
10:               sub          t1, tp, a3
                  or           zero, s9, a3
                  andi         a5, a4, 1366
                  lui          t4, 540328
                  blt          s9, t5, 176f
                  add          ra, a4, t4
                  sll          ra, tp, a5
                  andi         s2, s0, 1942
                  and          a1, t2, a2
                  srl          s10, a5, s8
                  sltu         t2, gp, s6
                  bge          sp, a7, 175f
175:              nop
176:              beq          t1, a4, 195f
                  sltu         a0, s10, s1
                  beq          s6, ra, 184f
                  sltu         a1, s5, t1
                  bne          a3, s9, 190f
                  sll          sp, s2, zero
                  beq          s4, t6, 194f
                  and          a1, a0, sp
184:              xor          sp, a4, a7
                  addi         sp, gp, 1467
                  slli         s5, s10, 4
                  or           a3, t3, t4
                  add          t6, s11, s6
                  or           t4, s3, t6
190:              slt          s10, s3, gp
                  slti         a1, zero, 1399
                  bge          s11, a3, 205f
                  add          s7, t1, a5
194:              and          a6, t4, s4
195:              nop
                  xor          s1, zero, s9
                  ori          s8, t4, 1981
                  andi         a5, a3, -2
                  srl          zero, t0, a4
                  slt          s11, t1, t4
                  srli         s1, zero, 29
                  auipc        s8, 20692
                  sub          t1, t4, s2
                  add          sp, s1, s10
205:              addi         a6, s7, 1716
                  blt          t5, t0, 209f
                  sltiu        a3, s5, 1000
                  blt          t1, t2, 222f
209:              sra          ra, t4, zero
                  bge          tp, zero, 228f
                  bge          gp, s8, 220f
                  andi         a6, gp, -2022
                  sltu         a5, s8, t5
                  sltu         t4, t4, a6
                  xor          zero, t0, t5
                  srli         t6, s11, 6
                  sub          t4, sp, t1
                  slli         s0, gp, 12
                  srai         s1, s11, 29
220:              lui          a7, 508906
                  andi         s9, s4, -279
222:              bne          t0, s6, 229f
                  slli         tp, a4, 25
                  nop
                  slli         tp, a2, 2
                  sltu         s10, s9, a3
                  bgeu         gp, t6, 229f
228:              slti         s0, a0, 584
229:              andi         a1, t5, 1532
                  addi         a1, zero, 987
                  ori          t0, s3, -768
                  ori          s9, s2, -1451
                  and          zero, t3, s7
                  and          a1, s2, s1
                  or           a5, t4, a7
                  bltu         zero, t5, 249f
                  lui          a7, 175625
                  lui          s7, 653841
                  blt          t5, a3, 250f
                  xor          t4, t5, s8
                  nop
                  srai         a5, t0, 13
                  sltiu        t5, s7, 1476
                  addi         s1, s0, -869
                  blt          t1, t6, 260f
                  srli         s1, s9, 19
                  sltiu        sp, t5, -1407
                  srli         s11, s1, 18
249:              auipc        s9, 666020
250:              nop
                  addi         s2, ra, -811
                  blt          t0, a1, 270f
                  xor          s6, ra, t3
                  blt          t4, t4, 264f
                  auipc        a3, 609831
                  lui          sp, 508888
                  xor          a0, a7, s10
                  sltu         a2, gp, s6
                  sltu         a2, t2, s9
260:              andi         s11, a0, 1372
                  bne          a1, tp, 273f
                  nop
                  add          t0, a5, sp
264:              nop
                  sll          s5, a7, a7
                  sltu         t1, s10, sp
                  blt          s1, a6, 285f
                  slli         s4, a1, 9
                  bge          sp, zero, 279f
270:              srl          s10, s8, t2
                  srli         ra, s9, 8
                  andi         a1, s4, -734
273:              xori         a7, gp, 245
                  bltu         a7, zero, 277f
                  bne          s5, t4, 293f
                  bgeu         s4, s11, 282f
277:              or           a7, a3, s2
                  beq          s7, ra, 291f
279:              srai         gp, s11, 2
                  slt          s1, a3, t6
                  sll          s10, a2, t0
282:              lui          a1, 317444
                  bltu         s7, s5, 286f
                  srli         zero, s2, 20
285:              nop
286:              sltu         a5, s7, s2
                  and          a7, ra, t0
                  sub          s11, ra, s7
                  slti         gp, s2, -1414
                  srai         s0, a3, 14
291:              beq          t2, tp, 303f
                  bne          s11, a3, 297f
293:              lui          t6, 718630
                  sltiu        zero, a3, -521
                  and          t5, a2, t4
                  add          sp, sp, s6
297:              xor          s9, s5, tp
                  bne          s8, gp, 307f
                  beq          a5, s2, 318f
                  xori         s1, s4, -1582
                  xor          s0, a3, s4
                  sra          a6, zero, s8
303:              xor          t2, a0, s4
                  xor          s7, ra, s3
sub_4_5:          jal          t1, 16f
0:                jal          t1, 2f
1:                jal          s5, 13f
2:                jal          ra, 10f
3:                jal          s2, 1b
4:                jal          t1, 17f
5:                jal          t5, 7f
6:                jal          tp, 4b
7:                jal          ra, 3b
8:                jal          ra, 6b
9:                jal          ra, 5b
10:               jal          a7, 9b
11:               jal          ra, 12f
12:               jal          ra, 0b
13:               jal          ra, 15f
14:               jal          ra, 11b
15:               jal          sp, 8b
16:               jal          ra, 14b
17:               addi         t6, t2, -1955
                  sll          t5, a6, a3
                  beq          a1, t3, 318f
307:              xori         t1, a1, -1164
                  addi         t0, s1, 554
                  slli         s1, s8, 27
                  srli         a5, s4, 29
                  slli         s8, a2, 3
                  sra          s4, s11, a0
                  sll          t4, s1, s9
                  xori         t6, t2, 1688
                  srl          t2, zero, gp
                  xor          s1, t4, a4
                  blt          s6, s9, 320f
318:              sra          s8, sp, t1
                  nop
320:              srai         s6, t4, 20
                  slt          s10, s5, sp
                  bgeu         t0, s7, 331f
                  nop
                  blt          a5, s1, 326f
                  or           a2, a6, s3
326:              beq          a1, s7, 334f
                  add          t1, t3, a4
                  add          a1, s9, zero
                  slt          a7, s5, s2
                  slt          t0, a5, a3
331:              sra          gp, ra, s2
                  auipc        a0, 173863
                  and          s11, tp, s6
334:              blt          tp, s8, 344f
                  sra          ra, a5, s6
                  add          s9, s1, s2
                  sltu         s11, s3, a7
                  addi         zero, t3, -47
                  xor          zero, a1, a6
                  andi         s8, s9, -389
                  andi         s8, a5, 1506
                  bltu         t1, a2, 355f
                  addi         s9, s8, 1256
344:              bgeu         s1, a5, 354f
                  xor          gp, s8, s8
                  or           s9, s9, t6
                  nop
                  ori          s1, a3, -1074
                  nop
                  andi         gp, t1, -195
                  sltiu        a6, a6, -1935
                  slt          a0, s7, a3
                  or           s0, a3, s2
354:              or           a0, s11, t1
355:              bne          s3, a2, 365f
                  blt          t0, ra, 370f
                  srli         a7, t5, 3
                  sra          s2, s2, s7
                  and          t5, a1, a0
                  bge          s0, a0, 375f
                  auipc        zero, 420242
                  bgeu         a7, s2, 376f
                  bltu         s4, t0, 375f
                  andi         ra, s6, 1863
365:              xor          t1, a0, s9
                  sltu         tp, t6, s5
                  srli         t0, a3, 14
                  ori          t4, a6, 494
                  slli         t4, s1, 23
370:              slt          s10, t0, s2
                  bgeu         gp, s2, 389f
                  sub          a0, t2, t4
                  slli         s6, zero, 14
                  xori         a1, t2, -260
375:              addi         s11, s1, -1316
376:              add          s4, gp, s10
                  xori         s4, s3, -547
                  bge          t5, t0, 388f
                  bge          s7, s7, 393f
                  sltiu        a2, a0, 228
                  bgeu         ra, sp, 382f
382:              nop
                  bge          s9, s5, 401f
                  srai         s1, t4, 0
                  bltu         t3, a5, 392f
                  sltiu        a1, t1, -275
                  xor          s2, s1, t1
388:              srli         zero, ra, 29
389:              srai         ra, a5, 6
                  srai         a2, zero, 22
                  and          t0, sp, gp
392:              sll          s8, gp, tp
393:              srai         s5, t6, 9
                  slli         s0, t0, 27
                  xor          s5, t1, s8
                  or           s8, s3, a2
                  bne          zero, s0, 412f
                  add          a3, a2, a7
                  andi         s9, s4, 1709
                  slti         t1, a1, -632
401:              bltu         t4, a1, 412f
                  sub          s2, a2, a7
                  srai         s0, t4, 12
                  sll          sp, t4, s5
                  slti         t2, a5, -1161
                  bgeu         a5, gp, 424f
                  bgeu         t4, a6, 416f
                  srli         a1, a6, 22
                  auipc        a3, 67982
                  bltu         gp, a1, 423f
                  blt          s10, s0, 426f
412:              nop
                  bltu         ra, s6, 416f
                  blt          s0, s4, 420f
                  bge          a3, t2, 429f
416:              xor          t0, a2, t4
                  beq          a7, gp, 427f
                  bge          a7, tp, 427f
                  slt          a2, t2, a3
420:              andi         sp, a6, 419
                  beq          s11, s9, 439f
                  slt          a7, a5, a4
423:              addi         s6, a5, 888
424:              lui          t4, 637253
                  lui          a0, 46906
426:              sltiu        tp, t5, 1675
427:              sltu         tp, a7, a1
                  bgeu         a2, a3, 443f
429:              addi         t2, s9, -254
                  xor          a3, t2, gp
                  xori         s1, a3, 1379
                  addi         s6, a2, -1857
                  blt          t6, a2, 446f
                  auipc        a7, 295360
                  bge          s10, t2, 454f
                  srli         t6, sp, 28
                  nop
sub_4_2:          jal          t1, 6f
0:                jal          t1, 8f
1:                jal          ra, 5f
2:                jal          ra, 3f
3:                jal          t1, 11f
4:                jal          ra, 0b
5:                jal          s8, 10f
6:                jal          ra, 4b
7:                jal          tp, 9f
8:                jal          gp, 1b
9:                jal          t0, 2b
10:               jal          ra, 7b
11:               and          t6, gp, s11
                  and          a6, a2, s6
439:              ori          s1, s7, 499
                  and          s7, s9, s9
                  nop
                  slli         s8, s9, 19
443:              slt          a5, s0, a3
                  srai         a6, a1, 21
                  addi         t5, a0, -487
446:              slti         a0, s10, 2010
                  andi         zero, t2, 1268
                  sub          s10, zero, t1
                  auipc        s5, 899700
                  xor          t2, a6, s2
                  bgeu         s6, ra, 465f
                  bge          s4, s11, 459f
                  xori         s10, s1, -1211
454:              bltu         a5, a4, 464f
                  and          a3, s8, a1
                  add          s1, a4, t5
                  beq          t3, s11, 469f
                  add          s6, tp, a5
459:              lui          s11, 466663
                  bge          tp, t0, 468f
                  srli         a7, a7, 0
                  nop
                  bltu         ra, s7, 475f
464:              lui          s1, 587967
465:              bltu         s3, t4, 467f
                  slt          a6, ra, t5
467:              sll          gp, t1, gp
468:              addi         a5, s9, 392
469:              xor          a0, s6, a1
                  or           gp, s2, a7
                  lui          s1, 545373
                  slli         t1, a6, 23
                  bne          a7, a4, 484f
                  add          t4, s0, s8
475:              bltu         s7, s11, 489f
                  slt          a3, s4, s2
                  xor          s9, t3, s1
                  srl          s10, s4, s10
                  bne          a3, s1, 491f
                  srai         s1, s10, 29
                  sra          s11, a2, s5
                  slt          a3, s4, gp
                  add          t5, s9, a0
484:              slt          s9, s4, t2
                  slt          t4, t3, a7
                  srai         s10, t4, 15
                  slli         s5, t6, 24
                  lui          s7, 367628
489:              auipc        a2, 861941
                  sltiu        t6, t5, -1371
491:              xor          a5, a5, sp
                  ori          s6, sp, -1202
                  bgeu         t1, a3, 511f
                  lui          s6, 111529
                  bne          s5, s2, 496f
496:              sra          a6, s5, t5
                  sub          tp, ra, a4
                  sll          t4, t4, s7
                  sll          s7, a4, tp
                  andi         a0, tp, 872
                  auipc        s9, 102076
                  lui          gp, 475885
                  add          s6, s1, a4
                  lui          s11, 387696
                  sub          s0, a1, s4
                  xor          sp, t0, t4
                  srl          a0, s7, t4
                  srl          gp, ra, t4
                  lui          s11, 635452
                  blt          s3, sp, 511f
511:              srl          a7, t0, a3
                  sub          s0, s0, s11
                  xori         gp, s8, -1563
                  lw           t1, 4(t3)
                  and          s8, t2, a0
                  slli         s7, t6, 24
                  or           s6, t2, s9
                  sltu         t2, gp, s11
                  andi         a2, sp, 758
                  auipc        a2, 675411
                  sra          a1, t2, s1
                  addi         t3, t3, 20
                  slli         tp, s9, 27
733:              addi x11, x6, 1
733:              jalr x11, x11, 0
sub_1:            beq          ra, a3, sub_1_stack_p
                  or           t0, s8, t4
                  xori         t6, gp, 119
                  ori          s0, s1, -738
sub_1_stack_p:    addi         t3, t3, -12
                  xori         t2, zero, -1829
                  addi         gp, s9, 1948
                  sw           t1, 4(t3)
                  sra          s7, t0, a5
                  slt          a6, gp, t6
sub_1_0:          jal          t1, 10f
0:                jal          ra, 1f
1:                jal          ra, 21f
2:                jal          ra, 12f
3:                jal          t4, 20f
4:                jal          t1, 11f
5:                jal          ra, 27f
6:                jal          ra, 18f
7:                jal          t1, 6b
8:                jal          ra, 7b
9:                jal          ra, 23f
10:               jal          gp, 3b
11:               jal          ra, 0b
12:               jal          ra, 26f
13:               jal          ra, 14f
14:               jal          ra, 16f
15:               jal          ra, 9b
16:               jal          t1, 8b
17:               jal          t1, 2b
18:               jal          a5, 19f
19:               jal          ra, 15b
20:               jal          ra, 17b
21:               jal          t1, 25f
22:               jal          ra, 24f
23:               jal          ra, 5b
24:               jal          ra, 4b
25:               jal          ra, 13b
26:               jal          t1, 22b
27:               slt          s2, s1, t0
                  lui          t1, 29670
                  sra          t0, t4, s1
                  addi         a2, a2, -1487
                  slli         a0, a7, 26
                  bltu         a5, a7, 8f
                  slt          gp, t1, t6
                  srl          t2, t2, gp
                  srl          a7, s3, s8
8:                lui          s4, 815332
                  or           t6, gp, s9
                  sll          t1, a3, s10
                  auipc        gp, 1011591
                  bge          t6, s4, 27f
                  or           s0, t0, a0
                  beq          gp, s7, 33f
                  sltiu        t4, s10, 1273
                  ori          s5, s5, 1843
                  sltu         ra, a1, gp
                  or           s6, t5, zero
                  blt          a2, s6, 22f
                  auipc        ra, 605045
                  sll          s9, s4, s8
22:               srai         a5, a7, 20
                  and          a6, a3, a2
                  sub          s9, sp, t0
                  bltu         a4, s9, 29f
                  sub          s2, a7, t4
27:               addi         a5, s0, 1050
                  sra          s6, s6, s9
29:               xori         a1, a2, -374
                  srai         s11, s4, 4
                  bltu         s9, t0, 34f
                  bne          s8, a1, 44f
33:               sltu         a3, s6, tp
34:               sub          t4, t6, a7
                  and          a3, a2, ra
                  auipc        s11, 252197
                  auipc        ra, 769265
                  and          a1, s6, a6
                  sltu         s6, s9, s6
                  sltiu        a0, t1, 348
                  blt          s3, ra, 51f
                  ori          a2, zero, -467
                  and          tp, t3, s0
44:               slti         s8, s6, -1525
                  sltiu        s11, t0, 1873
                  sltiu        t6, s11, 1942
                  bltu         t6, tp, 51f
                  slti         ra, gp, 367
                  sra          t4, t0, s3
                  andi         a2, t2, 1809
51:               sltiu        s9, gp, 1316
                  sub          s9, a7, tp
                  lw           t1, 4(t3)
                  slt          zero, ra, s4
                  nop
                  xori         t0, s10, 1686
                  addi         t3, t3, 12
                  andi         a2, s4, -1654
98:               addi x17, x6, 0
98:               jalr x17, x17, 0
sub_2:            bltu         s3, a7, sub_2_stack_p
                  xori         t2, ra, -141
                  sra          s11, t3, t2
sub_2_stack_p:    addi         t3, t3, -64
                  xori         s1, s11, -825
                  slti         t2, a3, -679
                  sw           t1, 4(t3)
                  slti         a1, s6, -969
sub_2_4:          jal          t1, 3f
0:                jal          s6, 7f
1:                jal          t1, 14f
2:                jal          a5, 8f
3:                jal          t1, 11f
4:                jal          ra, 5f
5:                jal          t1, 2b
6:                jal          ra, 15f
7:                jal          a1, 4b
8:                jal          ra, 9f
9:                jal          ra, 10f
10:               jal          ra, 1b
11:               jal          ra, 12f
12:               jal          ra, 0b
13:               jal          t1, 6b
14:               jal          ra, 13b
15:               sltiu        t6, a4, -280
sub_2_7:          jal          t1, 9f
0:                jal          t1, 10f
1:                jal          ra, 17f
2:                jal          sp, 8f
3:                jal          t1, 14f
4:                jal          sp, 11f
5:                jal          s5, 3b
6:                jal          s10, 4b
7:                jal          t1, 13f
8:                jal          ra, 6b
9:                jal          s7, 2b
10:               jal          s11, 5b
11:               jal          ra, 0b
12:               jal          ra, 7b
13:               jal          ra, 15f
14:               jal          t1, 12b
15:               jal          t1, 16f
16:               jal          s1, 1b
17:               srai         a3, t0, 19
sub_2_0:          jal          t1, 26f
0:                jal          t6, 18f
1:                jal          ra, 16f
2:                jal          ra, 20f
3:                jal          t1, 0b
4:                jal          t1, 10f
5:                jal          t1, 7f
6:                jal          t1, 17f
7:                jal          t1, 24f
8:                jal          t1, 12f
9:                jal          t1, 5b
10:               jal          ra, 9b
11:               jal          ra, 8b
12:               jal          t1, 14f
13:               jal          ra, 2b
14:               jal          gp, 25f
15:               jal          ra, 3b
16:               jal          ra, 13b
17:               jal          ra, 27f
18:               jal          ra, 19f
19:               jal          ra, 4b
20:               jal          ra, 21f
21:               jal          t1, 6b
22:               jal          ra, 11b
23:               jal          ra, 1b
24:               jal          ra, 22b
25:               jal          t1, 23b
26:               jal          ra, 15b
27:               sub          s7, a6, a1
sub_2_1:          jal          t1, 0f
0:                jal          t1, 6f
1:                jal          ra, 3f
2:                jal          t1, 8f
3:                jal          s7, 7f
4:                jal          ra, 2b
5:                jal          t1, 9f
6:                jal          s0, 4b
7:                jal          ra, 5b
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               jal          t0, 11f
11:               srl          sp, a5, s11
sub_2_6:          jal          t1, 24f
0:                jal          a7, 11f
1:                jal          ra, 0b
2:                jal          ra, 23f
3:                jal          ra, 7f
4:                jal          ra, 3b
5:                jal          t6, 2b
6:                jal          t1, 20f
7:                jal          ra, 21f
8:                jal          s4, 14f
9:                jal          ra, 16f
10:               jal          s9, 19f
11:               jal          t1, 18f
12:               jal          ra, 6b
13:               jal          ra, 22f
14:               jal          t1, 12b
15:               jal          t5, 4b
16:               jal          ra, 1b
17:               jal          t0, 9b
18:               jal          ra, 5b
19:               jal          ra, 15b
20:               jal          ra, 25f
21:               jal          s6, 17b
22:               jal          ra, 10b
23:               jal          ra, 8b
24:               jal          ra, 13b
25:               slli         a6, gp, 13
sub_2_2:          jal          t1, 4f
0:                jal          ra, 10f
1:                jal          ra, 12f
2:                jal          t1, 14f
3:                jal          a3, 17f
4:                jal          ra, 8f
5:                jal          t1, 1b
6:                jal          ra, 9f
7:                jal          tp, 3b
8:                jal          gp, 15f
9:                jal          t5, 7b
10:               jal          ra, 13f
11:               jal          ra, 16f
12:               jal          ra, 11b
13:               jal          s0, 6b
14:               jal          t1, 5b
15:               jal          ra, 2b
16:               jal          ra, 0b
17:               jal          sp, 18f
18:               lui          a2, 529016
sub_2_8:          jal          t1, 6f
0:                jal          ra, 3f
1:                jal          a1, 2f
2:                jal          tp, 10f
3:                jal          ra, 17f
4:                jal          t1, 21f
5:                jal          ra, 8f
6:                jal          ra, 4b
7:                jal          ra, 15f
8:                jal          ra, 13f
9:                jal          t1, 19f
10:               jal          sp, 22f
11:               jal          s5, 1b
12:               jal          ra, 11b
13:               jal          t1, 7b
14:               jal          ra, 9b
15:               jal          s10, 23f
16:               jal          t0, 0b
17:               jal          ra, 20f
18:               jal          a0, 24f
19:               jal          ra, 16b
20:               jal          ra, 18b
21:               jal          ra, 12b
22:               jal          ra, 5b
23:               jal          ra, 14b
24:               xori         s2, s0, 1029
sub_2_9:          jal          t1, 17f
0:                jal          ra, 5f
1:                jal          ra, 12f
2:                jal          s11, 8f
3:                jal          ra, 2b
4:                jal          s8, 9f
5:                jal          s7, 10f
6:                jal          ra, 21f
7:                jal          ra, 20f
8:                jal          t1, 7b
9:                jal          t1, 15f
10:               jal          gp, 4b
11:               jal          t1, 19f
12:               jal          t1, 16f
13:               jal          ra, 1b
14:               jal          ra, 3b
15:               jal          gp, 11b
16:               jal          ra, 6b
17:               jal          ra, 14b
18:               jal          ra, 0b
19:               jal          sp, 13b
20:               jal          t1, 18b
21:               srli         s10, zero, 6
                  srl          tp, s3, gp
                  srl          t6, t4, s2
                  sltu         t2, t1, t4
                  sll          s4, sp, s5
                  slti         a5, t1, -791
                  slt          s5, a4, t6
                  lui          a3, 413223
                  and          a7, t2, a0
                  andi         s5, t6, 1720
                  sltu         a5, s10, a6
                  or           sp, s9, s4
                  addi         s1, t0, -1690
                  srai         s6, s11, 21
sub_2_5:          jal          t1, 14f
0:                jal          ra, 2f
1:                jal          a5, 9f
2:                jal          t1, 11f
3:                jal          t1, 4f
4:                jal          t1, 8f
5:                jal          ra, 1b
6:                jal          t1, 15f
7:                jal          ra, 16f
8:                jal          ra, 0b
9:                jal          ra, 10f
10:               jal          gp, 6b
11:               jal          gp, 12f
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          ra, 13b
15:               jal          a0, 7b
16:               sltiu        t5, sp, -660
                  sltiu        t1, t5, 711
                  bltu         t3, s4, 16f
                  beq          t1, tp, 24f
16:               srl          zero, zero, s2
                  auipc        a0, 496043
                  srl          sp, s8, a1
                  xori         t6, a1, -150
                  bgeu         a0, t0, 38f
                  bne          s10, s6, 39f
                  bge          a7, s7, 36f
                  nop
24:               ori          a5, t3, -585
                  sltu         gp, a6, s11
                  andi         a1, t1, -879
                  slli         a7, a4, 17
                  add          s0, t5, s3
                  slli         tp, s5, 11
                  slli         s10, a2, 22
                  srl          t5, a6, a6
                  bge          tp, s0, 43f
                  add          a5, a3, s3
                  sltu         t6, t1, s9
                  bgeu         t5, t2, 42f
36:               and          a3, t1, a5
sub_2_10:         jal          t1, 13f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          a6, 14f
3:                jal          t2, 9f
4:                jal          t1, 5f
5:                jal          ra, 11f
6:                jal          s5, 2b
7:                jal          ra, 6b
8:                jal          a3, 12f
9:                jal          t1, 7b
10:               jal          a5, 3b
11:               jal          t6, 0b
12:               jal          t4, 1b
13:               jal          ra, 4b
14:               slt          s6, ra, t1
                  srai         s11, t2, 25
38:               beq          s11, s3, 53f
39:               and          s8, t2, s0
                  xor          s1, t5, zero
                  auipc        sp, 110778
42:               slli         s5, s9, 6
43:               srl          tp, a1, s4
                  bge          t4, t3, 50f
                  bne          s6, zero, 57f
                  bge          a5, a1, 64f
                  nop
                  beq          s7, t3, 51f
                  bne          a2, s0, 53f
50:               xori         t1, tp, 1478
51:               blt          s1, a0, 65f
                  sub          a1, t6, s2
53:               bltu         tp, s6, 66f
                  sll          s7, s8, gp
                  sltiu        s5, a7, -533
                  srl          t0, s1, a3
57:               auipc        t6, 1033845
                  slli         s5, s2, 9
                  andi         t1, s6, 1246
                  addi         gp, t3, -1560
                  auipc        t0, 790969
                  lui          a7, 792252
                  andi         gp, sp, -117
64:               bgeu         s0, s4, 69f
65:               slt          a2, zero, a0
66:               xori         s0, a1, 298
                  slti         t0, s8, 964
                  sra          a0, a3, a4
69:               beq          s0, t0, 76f
                  sltu         t1, s6, ra
                  sltu         a0, a0, gp
                  sub          s9, t2, s1
                  bgeu         t0, t4, 79f
                  blt          t3, s3, 85f
                  bgeu         a7, a0, 87f
76:               sra          tp, s10, gp
                  xori         s4, s2, 1580
                  srai         t6, a6, 11
79:               sltiu        a0, a2, -1000
                  slt          s6, sp, s10
                  bgeu         s2, a0, 97f
                  slli         t6, s3, 14
                  slli         s11, s5, 5
                  addi         s4, s5, -943
85:               sltiu        t6, a0, -1200
                  bgeu         s5, t5, 106f
87:               srl          s6, a6, a7
                  beq          s0, tp, 89f
89:               and          s2, t0, t0
                  slti         ra, t0, -1146
                  add          a5, a2, s9
                  xori         a2, s11, 1914
                  srli         t5, a2, 10
                  sltiu        a0, a7, -1163
                  bne          ra, a3, 109f
                  sub          s6, s8, gp
97:               slli         a6, gp, 6
                  beq          a6, zero, 112f
                  auipc        t5, 442660
                  ori          t1, a0, -1705
                  slt          zero, s4, t5
                  srai         s5, s5, 10
                  or           a6, a7, a7
                  auipc        ra, 876930
                  ori          a7, a2, -1870
106:              sltiu        a1, s6, -1158
                  xor          tp, a1, sp
                  or           ra, a5, t3
109:              blt          s7, s6, 118f
                  ori          gp, s3, -1414
                  sll          t2, s0, s2
112:              sltiu        gp, s1, 1959
                  sra          s0, s8, s1
                  add          a2, s9, zero
                  slt          a3, s5, t2
                  lui          t1, 143129
                  bne          s11, sp, 118f
118:              auipc        s8, 61350
                  bgeu         t0, s10, 124f
                  add          t5, s6, t6
                  blt          s2, a2, 134f
                  and          a1, a0, a1
                  ori          a1, t6, -629
124:              bgeu         t4, t5, 144f
                  beq          s11, s2, 136f
                  slli         t6, a2, 11
                  nop
                  bltu         ra, s6, 140f
                  andi         gp, s11, 276
                  srl          a7, a0, s0
                  auipc        sp, 310456
                  srli         t4, s3, 26
                  beq          s10, s0, 146f
134:              blt          t0, s1, 139f
                  ori          a5, t1, -1406
136:              srai         s11, s2, 23
                  andi         s5, t6, 1731
                  slti         tp, s0, 235
139:              sll          gp, s0, t2
140:              sltu         s6, s2, s7
                  nop
                  slt          a5, s5, t3
                  andi         s11, s7, -1425
144:              sltu         sp, t0, t1
                  bge          ra, t3, 146f
146:              and          a7, a4, zero
                  nop
                  bne          a4, t2, 152f
                  sltiu        a7, s2, -106
                  beq          s10, t1, 155f
                  sll          s9, ra, s2
152:              srl          a6, a1, t4
                  sub          s9, t0, a4
                  sra          s5, s5, t5
155:              bge          tp, s6, 162f
                  slt          t4, a7, s11
                  sub          t6, t4, t0
                  sltu         ra, s11, t2
                  add          tp, s11, t0
                  sll          a5, t0, s2
                  beq          t3, gp, 179f
162:              bne          s1, s5, 176f
                  sll          s11, tp, t0
                  auipc        a2, 136023
                  slti         a6, a0, 565
                  srl          s11, t0, gp
                  srli         s10, a1, 27
                  xor          ra, t0, a2
                  sll          s0, s4, t4
                  ori          s0, s0, 572
                  sltiu        t2, zero, 863
                  or           tp, t4, s4
                  slli         a7, a6, 30
                  nop
                  srai         a2, s4, 7
176:              srl          s11, s7, s10
                  beq          a7, t2, 189f
                  srai         s4, s11, 13
179:              slt          s1, a0, a2
                  addi         s1, a3, 322
                  and          a6, sp, s6
                  srai         s11, s10, 31
                  slti         s7, zero, -508
                  auipc        s2, 757659
                  sltiu        s7, s0, -263
                  srl          gp, s1, a3
                  bgeu         t0, s5, 201f
                  bge          t5, s9, 206f
189:              srli         s4, a0, 31
                  addi         s7, zero, 502
                  slt          s2, a1, a5
                  srl          a5, t3, s4
                  lui          a7, 571274
                  add          t4, t2, ra
                  xori         t0, a7, -1878
                  bgeu         a4, tp, 203f
                  srl          s10, s0, ra
                  slti         a1, s5, -1751
                  sll          a6, gp, t1
                  sub          s9, s7, a1
201:              sub          tp, t4, s8
                  or           t4, a2, s3
203:              bne          a2, s1, 221f
                  bne          t3, a0, 207f
                  addi         s5, t0, -1469
206:              bgeu         t4, s3, 226f
207:              xori         gp, t4, 630
                  slt          t0, s7, s3
                  ori          s9, s9, 1651
                  slti         t6, t3, -417
                  sltu         a2, a5, s1
                  ori          a7, s11, 415
                  or           a2, a4, tp
                  srli         a3, s5, 23
                  ori          t2, t0, -1213
                  and          s7, s9, s2
                  srai         sp, a1, 31
                  or           zero, t5, a7
                  addi         t4, t3, 1326
                  sltiu        tp, t6, 443
221:              slti         s11, s4, 1989
                  addi         a6, t5, -1760
                  addi         sp, gp, -1419
                  blt          s3, s6, 225f
225:              nop
226:              addi         s8, s8, 1766
                  bgeu         t4, t1, 233f
                  beq          t2, a4, 230f
                  auipc        a6, 593816
230:              bge          s0, s10, 241f
                  add          s10, sp, gp
                  add          s10, a5, s11
sub_2_11:         jal          t1, 6f
0:                jal          ra, 8f
1:                jal          s8, 0b
2:                jal          ra, 3f
3:                jal          ra, 4f
4:                jal          sp, 9f
5:                jal          t1, 7f
6:                jal          tp, 5b
7:                jal          ra, 10f
8:                jal          ra, 2b
9:                jal          t1, 11f
10:               jal          t1, 1b
11:               or           s0, t2, zero
233:              bne          s5, a7, 246f
                  slt          a6, t1, s10
                  slli         s1, t5, 8
                  slt          gp, s8, zero
                  slli         gp, tp, 20
                  auipc        t4, 974881
                  and          a2, s8, a3
                  sltu         a7, t5, a2
241:              srli         s7, s0, 17
                  sltiu        s1, s10, 859
                  beq          t1, t3, 249f
                  or           s6, s4, s11
                  lui          a1, 333900
246:              addi         a7, t3, -595
                  srli         a6, ra, 20
                  blt          s6, t5, 263f
249:              bgeu         zero, t0, 265f
                  and          a2, s4, s9
                  bltu         t1, a7, 265f
                  add          a1, s6, a2
                  sra          s2, t1, a2
                  auipc        t1, 221590
                  xor          a1, a7, sp
                  or           a3, zero, t0
                  slti         s4, s3, 1311
                  andi         s11, t1, 1020
                  ori          t2, t2, -53
                  xori         a0, s8, 2034
                  srli         a6, s1, 7
                  bgeu         a2, t0, 271f
263:              lui          tp, 955037
                  bge          t6, s0, 278f
265:              xori         t2, a7, -421
                  bge          a7, a2, 275f
                  addi         a2, gp, -1843
                  or           s8, s6, s11
                  sll          zero, sp, a4
                  blt          a1, a4, 290f
271:              srl          s5, a7, a6
                  bne          s7, s10, 286f
                  sra          tp, s8, t1
                  sra          a2, t4, s10
275:              bgeu         s1, t6, 284f
                  sltu         zero, s10, s10
                  sra          zero, t5, zero
278:              srai         s1, ra, 13
                  slti         tp, t0, -68
                  nop
                  andi         s11, s11, -654
                  slli         s0, s6, 9
                  sltu         s7, zero, a7
284:              sub          s7, s4, s7
                  andi         a0, t5, 54
286:              srai         s9, gp, 11
                  add          t4, ra, t0
                  and          tp, a4, a5
                  add          a5, a6, s4
290:              sltu         s4, t2, s6
                  sub          zero, t4, s2
                  bne          s9, s8, 308f
                  sra          a3, zero, s4
                  addi         a6, a5, -1028
                  ori          t0, ra, 922
                  bltu         zero, s6, 309f
                  and          t2, s3, sp
                  xori         a7, sp, -151
                  sra          t5, a7, ra
                  blt          s5, t1, 307f
                  beq          ra, t3, 302f
302:              auipc        a0, 211225
                  slti         s8, t3, 516
                  sltiu        s4, s9, 1295
                  bltu         s5, a5, 311f
                  bltu         s11, t4, 309f
307:              sltiu        s6, s5, 1056
308:              bge          s8, a5, 312f
309:              xori         t1, a1, -1834
                  bne          a2, a5, 315f
311:              bltu         a4, t2, 325f
312:              bne          s1, a2, 313f
313:              bgeu         a6, a0, 331f
                  add          s6, t6, tp
315:              sltiu        s8, t4, 1422
                  lui          a0, 986099
                  sra          a7, zero, a2
                  xor          gp, t0, s3
                  or           s11, s3, s1
                  nop
                  andi         s6, a3, 949
                  blt          t3, s6, 331f
                  slli         s6, s0, 7
                  sltiu        s1, t2, 605
325:              sll          a2, s0, t0
                  add          ra, s4, s8
                  blt          s3, t0, 332f
                  xori         a2, s9, 379
                  add          a0, t4, tp
                  auipc        s0, 816024
331:              addi         a3, a5, -138
332:              srai         s1, a6, 24
                  bgeu         s8, gp, 340f
                  sll          s4, s8, t0
                  slt          t2, s2, zero
                  beq          t6, a1, 350f
                  bge          s0, t5, 343f
                  slti         s6, s3, -1275
                  sll          t0, tp, a1
340:              sltu         tp, t0, a6
                  bne          s8, t6, 354f
                  ori          t1, t0, -286
343:              slt          s11, s0, s5
                  srai         s9, t4, 8
                  sll          a2, ra, a5
                  sub          s9, s5, s11
                  bge          gp, s4, 365f
                  xor          zero, s4, sp
                  srl          a7, zero, gp
350:              nop
                  or           a2, s11, a3
                  slt          t2, s5, a0
                  slt          s7, t6, t2
354:              nop
                  sltiu        sp, a4, 287
                  sltu         s2, s3, s11
                  ori          zero, t6, 454
                  sll          s2, s5, t6
                  add          t5, s6, ra
                  bgeu         t2, t6, 375f
                  xori         a5, a6, -354
                  bltu         s4, a5, 380f
                  add          a5, a0, s5
                  srl          a0, s6, a4
365:              srli         t0, gp, 6
                  slt          a3, s2, s1
                  sub          a7, a6, tp
                  ori          a7, t1, -131
                  sra          s4, s4, s8
                  sra          t0, s1, s4
                  slt          t6, zero, s4
                  bne          t1, s10, 384f
                  auipc        s4, 624077
                  sltu         t6, gp, t6
375:              sub          s9, s4, t0
                  slli         zero, s3, 1
                  sra          s8, a2, s0
                  bltu         t1, t2, 398f
                  sltu         s6, a3, s4
380:              addi         a5, t6, -1611
                  auipc        s7, 42619
                  sll          ra, s3, a4
                  srli         t2, a5, 18
384:              bne          s1, gp, 395f
                  xori         t1, sp, -632
                  sltiu        t5, s5, 1917
                  addi         s4, gp, -333
                  lui          s11, 257497
                  add          tp, s9, s4
                  add          zero, s2, t5
                  xori         s5, s1, -861
                  sltu         a3, tp, s1
                  lui          zero, 454547
                  srl          s1, s4, s2
395:              bltu         s1, s5, 397f
                  slt          s10, tp, s4
397:              sra          t2, a1, s1
398:              sra          zero, s6, a3
                  slt          a5, a7, t6
                  add          s4, tp, a2
                  addi         t5, s0, -1362
                  bne          a6, a1, 422f
                  andi         s7, t0, -1673
                  sub          s0, s1, zero
                  slt          t0, tp, sp
                  xor          a3, s0, s1
                  lui          s2, 881988
                  addi         a6, ra, 1904
                  or           t2, t0, tp
                  andi         s2, ra, 1080
                  addi         t0, gp, 823
                  srl          s1, a2, t1
                  lui          s7, 719342
                  srl          s7, ra, a6
                  sll          s4, t0, s1
                  bgeu         a3, s5, 430f
                  nop
                  slt          s11, a7, a1
                  slt          gp, a4, t4
                  xori         s4, t0, 975
                  sub          a3, sp, t2
422:              xor          s5, a3, a2
                  bge          sp, s8, 434f
                  auipc        sp, 594425
                  nop
                  bltu         s0, s1, 438f
                  nop
                  or           s2, tp, gp
                  ori          s8, s7, -372
430:              srai         s9, t3, 28
                  bge          s5, s4, 437f
                  sra          s11, s6, s5
                  sltiu        ra, s3, 1446
434:              sll          a2, t2, t3
                  or           s0, zero, s6
                  sra          s11, t4, ra
437:              bgeu         s1, s5, 446f
438:              blt          s2, a6, 443f
                  xor          t5, gp, t2
                  bgeu         t6, a0, 454f
                  beq          t0, sp, 455f
                  and          s10, a4, s9
443:              beq          a2, s0, 463f
                  bne          zero, s1, 460f
                  srai         s2, s10, 30
446:              slt          gp, ra, s3
                  slli         tp, a6, 4
                  blt          a3, t5, 455f
                  andi         s0, s1, -1521
                  sltu         gp, a5, s10
                  blt          s11, a6, 454f
                  and          a6, s8, a1
                  sub          s0, a4, tp
454:              auipc        s0, 310299
455:              blt          a4, t2, 473f
sub_2_3:          jal          t1, 4f
0:                jal          ra, 13f
1:                jal          ra, 14f
2:                jal          s0, 12f
3:                jal          t1, 1b
4:                jal          ra, 18f
5:                jal          t1, 2b
6:                jal          t1, 15f
7:                jal          ra, 8f
8:                jal          s4, 17f
9:                jal          t0, 0b
10:               jal          t1, 7b
11:               jal          s0, 19f
12:               jal          ra, 11b
13:               jal          ra, 10b
14:               jal          t1, 16f
15:               jal          ra, 9b
16:               jal          ra, 5b
17:               jal          s1, 3b
18:               jal          a2, 6b
19:               sltiu        a3, s10, 1827
                  beq          s10, ra, 457f
457:              add          t0, s4, sp
                  nop
                  addi         s11, t0, -1385
460:              slti         s6, s2, 1210
                  xori         s11, t6, 1957
                  and          s4, s10, t5
463:              srli         t6, t2, 4
                  add          t5, gp, ra
                  ori          s11, a2, -979
                  srli         t5, t5, 3
                  slt          t4, zero, gp
                  srai         a7, t1, 25
                  nop
                  or           s5, a7, a1
                  srli         s11, tp, 0
                  and          s1, gp, a2
473:              sra          a2, s4, s0
                  sltu         t5, t6, t1
                  slti         a7, s6, 1177
                  ori          t0, ra, 308
                  lui          s5, 341008
                  beq          s10, t3, 490f
                  bge          t3, a2, 499f
                  slti         s2, s10, -1274
                  and          t6, zero, sp
                  slt          a3, s5, s1
                  srl          s9, s5, sp
                  ori          a2, gp, -2048
                  slli         sp, a6, 12
                  or           t6, s10, a3
                  or           a7, a6, s3
                  srli         t0, s5, 29
                  xor          a2, tp, t1
490:              or           tp, s10, t5
                  bltu         s7, gp, 504f
                  andi         s6, a1, -1904
                  and          a6, t6, a3
                  bge          s2, s11, 505f
                  beq          s6, s8, 506f
                  bne          a4, s1, 503f
                  or           ra, s5, s7
                  addi         s1, s0, 634
499:              auipc        s9, 519832
                  slli         s9, s4, 2
                  beq          a3, s10, 502f
502:              blt          t2, zero, 515f
503:              sltu         s7, t3, s9
504:              slti         s6, s11, -2036
505:              lui          ra, 647358
506:              sltu         s1, t6, s4
                  andi         t2, a5, 813
                  and          t1, s3, s11
                  auipc        s2, 434610
                  or           s4, t6, t2
                  slt          t6, t3, a5
                  ori          a0, s3, 953
                  bge          gp, s10, 525f
                  bge          gp, a5, 516f
515:              addi         s10, s6, -203
516:              sra          s9, t4, s8
                  ori          a1, t2, -793
                  blt          a2, s11, 524f
                  xor          t2, t0, s5
                  sub          a5, s1, t2
                  sra          a5, t0, s9
                  srl          s11, a1, a5
                  slt          zero, s10, s1
524:              xor          a0, a3, tp
525:              srai         t6, s3, 22
                  bgeu         s7, s8, 530f
                  addi         sp, ra, 1822
                  slti         sp, s1, 1633
                  add          a0, s1, a1
530:              and          s7, gp, s5
                  xori         a1, t5, 1039
                  bge          t3, s3, 546f
                  sltu         gp, s7, s1
                  addi         s7, s10, -1580
                  bgeu         a7, ra, 553f
                  srai         a2, ra, 14
                  srai         zero, t5, 3
                  bne          s11, s11, 552f
                  xor          a7, sp, s7
                  beq          s6, a4, 545f
                  bne          s7, s8, 550f
                  auipc        zero, 583093
                  blt          t5, a2, 558f
                  slli         t6, t2, 10
545:              addi         a3, t4, -1778
546:              srl          t4, a1, a5
                  bgeu         s5, gp, 565f
                  xori         t6, a0, 315
                  ori          s8, s8, 1237
550:              addi         s5, ra, 1565
                  nop
552:              bne          a1, a0, 572f
553:              ori          sp, s5, 369
                  sra          s11, a3, s7
                  sltu         s0, sp, s2
                  bgeu         s5, t3, 571f
                  bltu         a4, a4, 571f
558:              sra          a2, a5, s9
                  xor          s1, a7, t2
                  add          s11, t6, s0
                  bltu         a3, s8, 574f
                  xor          s10, s4, t5
                  sltu         ra, s10, s8
                  xori         s0, a0, 1018
565:              addi         s7, t5, -1709
                  xori         s8, sp, -1493
                  andi         a5, gp, 1691
                  add          a0, s5, s8
                  addi         zero, s7, 1323
                  sltu         s6, s0, a4
571:              sub          a7, s11, sp
572:              bltu         a3, t3, 581f
                  sll          a2, ra, t4
574:              xori         s4, a6, -1824
                  bgeu         a0, s9, 577f
                  xor          a0, t1, a2
577:              srli         s8, zero, 6
                  srai         s8, t3, 1
                  srl          s1, tp, s5
                  srl          s11, s8, t5
581:              andi         t0, s7, -1086
                  blt          gp, a2, 596f
                  sll          t6, t1, zero
                  andi         s0, ra, -24
                  ori          gp, sp, -1059
                  sltu         a6, a2, a3
                  bge          t2, a4, 594f
                  sltu         s5, a1, t6
                  beq          t2, t6, 607f
                  bge          s5, a4, 603f
                  or           t1, s2, s6
                  bltu         sp, a2, 597f
                  lui          t2, 90298
594:              lui          t1, 676871
                  sll          gp, s5, zero
596:              and          t2, s6, tp
597:              sra          s6, t4, s6
                  addi         s1, s10, -1267
                  xori         s1, t5, 1288
                  bne          t3, s5, 614f
                  slti         t1, t2, -1124
                  srai         a0, s1, 21
603:              srli         t5, a2, 5
                  bne          s3, a6, 607f
                  xori         s2, t2, -129
                  srl          s0, s6, s1
607:              or           s8, a0, zero
                  slti         s10, s4, 1739
                  srli         a3, a3, 29
                  addi         ra, gp, 1718
                  bltu         t2, t6, 617f
                  sub          a0, s4, s2
                  sltiu        s7, ra, -1954
614:              and          t5, zero, t2
                  auipc        a6, 706649
                  srai         s9, s6, 20
617:              sra          s4, a1, a6
                  andi         s2, s4, -744
                  or           t6, t4, s4
                  addi         s5, s6, -1206
                  beq          s1, t2, 633f
                  slt          sp, s10, s8
                  sltiu        s9, t3, 1346
                  or           a7, t0, t1
                  nop
                  or           a2, s2, t4
                  nop
                  sll          s5, zero, t4
                  srli         sp, t0, 3
                  xor          a2, t6, s4
                  xori         gp, s5, -891
                  blt          t0, t3, 642f
633:              srl          gp, a7, s11
                  sll          a3, a6, zero
                  sra          t4, s3, a0
                  slli         t2, s4, 0
                  sub          t4, s5, t3
                  xori         s0, a6, -1028
                  bne          s6, s11, 642f
                  sub          zero, t4, a1
                  slt          s1, s11, s10
642:              or           a0, s8, s3
                  lw           t1, 4(t3)
                  sltiu        s9, s2, 217
                  sltiu        t2, s2, -358
                  sra          tp, a1, s0
                  slti         s1, s8, -573
                  xor          a3, s11, s2
                  sub          a0, ra, t5
                  addi         t3, t3, 64
                  sltu         a0, s3, s2
902:              addi x6, x6, 1
902:              jalr x6, x6, 0
sub_3:            addi         t3, t3, -24
                  sltu         s9, s9, t1
                  sw           t1, 4(t3)
                  sra          a7, a5, a6
                  auipc        t6, 368124
                  and          t4, t0, a3
sub_3_26:         jal          t1, 9f
0:                jal          t1, 26f
1:                jal          ra, 10f
2:                jal          ra, 23f
3:                jal          ra, 7f
4:                jal          ra, 20f
5:                jal          t1, 12f
6:                jal          ra, 14f
7:                jal          ra, 11f
8:                jal          ra, 5b
9:                jal          t1, 21f
10:               jal          gp, 17f
11:               jal          ra, 0b
12:               jal          tp, 1b
13:               jal          ra, 25f
14:               jal          s4, 8b
15:               jal          ra, 13b
16:               jal          t1, 22f
17:               jal          ra, 3b
18:               jal          s0, 15b
19:               jal          ra, 18b
20:               jal          ra, 19b
21:               jal          t1, 4b
22:               jal          ra, 6b
23:               jal          t1, 16b
24:               jal          ra, 2b
25:               jal          s1, 24b
26:               add          t4, a1, s9
sub_3_0:          jal          t1, 8f
0:                jal          t1, 17f
1:                jal          ra, 2f
2:                jal          ra, 11f
3:                jal          t1, 16f
4:                jal          t0, 13f
5:                jal          ra, 4b
6:                jal          ra, 15f
7:                jal          ra, 14f
8:                jal          ra, 1b
9:                jal          s10, 3b
10:               jal          sp, 0b
11:               jal          ra, 5b
12:               jal          ra, 9b
13:               jal          s8, 12b
14:               jal          ra, 10b
15:               jal          gp, 7b
16:               jal          a7, 6b
17:               slti         t4, a7, 887
sub_3_1:          jal          t1, 15f
0:                jal          ra, 4f
1:                jal          ra, 7f
2:                jal          ra, 9f
3:                jal          t1, 17f
4:                jal          ra, 8f
5:                jal          t1, 2b
6:                jal          t1, 13f
7:                jal          t1, 16f
8:                jal          ra, 10f
9:                jal          ra, 14f
10:               jal          sp, 18f
11:               jal          a0, 12f
12:               jal          ra, 5b
13:               jal          a1, 0b
14:               jal          s6, 6b
15:               jal          ra, 1b
16:               jal          a5, 3b
17:               jal          t1, 11b
18:               sltu         a6, tp, s0
sub_3_22:         jal          t1, 5f
0:                jal          gp, 10f
1:                jal          ra, 6f
2:                jal          sp, 7f
3:                jal          t0, 12f
4:                jal          ra, 14f
5:                jal          t1, 8f
6:                jal          a1, 9f
7:                jal          s11, 3b
8:                jal          ra, 11f
9:                jal          a6, 2b
10:               jal          t2, 15f
11:               jal          s7, 4b
12:               jal          t1, 13f
13:               jal          ra, 0b
14:               jal          ra, 1b
15:               slti         s1, gp, 1493
sub_3_19:         jal          t1, 8f
0:                jal          s8, 11f
1:                jal          tp, 19f
2:                jal          a1, 6f
3:                jal          ra, 9f
4:                jal          ra, 17f
5:                jal          ra, 3b
6:                jal          tp, 14f
7:                jal          t1, 25f
8:                jal          t1, 23f
9:                jal          ra, 18f
10:               jal          s0, 24f
11:               jal          t1, 5b
12:               jal          ra, 16f
13:               jal          ra, 1b
14:               jal          t1, 22f
15:               jal          gp, 7b
16:               jal          t1, 20f
17:               jal          ra, 2b
18:               jal          t1, 10b
19:               jal          ra, 21f
20:               jal          ra, 13b
21:               jal          ra, 15b
22:               jal          ra, 12b
23:               jal          t1, 0b
24:               jal          t1, 4b
25:               auipc        ra, 859052
sub_3_18:         jal          t1, 18f
0:                jal          s4, 3f
1:                jal          ra, 19f
2:                jal          a5, 10f
3:                jal          tp, 14f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          a0, 13f
7:                jal          ra, 8f
8:                jal          t1, 1b
9:                jal          ra, 16f
10:               jal          ra, 7b
11:               jal          s7, 4b
12:               jal          ra, 20f
13:               jal          ra, 21f
14:               jal          t1, 15f
15:               jal          ra, 9b
16:               jal          ra, 12b
17:               jal          ra, 6b
18:               jal          a7, 5b
19:               jal          ra, 17b
20:               jal          t1, 11b
21:               slti         s8, a1, -1577
sub_3_30:         jal          t1, 19f
0:                jal          ra, 13f
1:                jal          ra, 10f
2:                jal          t1, 1b
3:                jal          ra, 9f
4:                jal          ra, 22f
5:                jal          ra, 20f
6:                jal          ra, 17f
7:                jal          ra, 18f
8:                jal          gp, 15f
9:                jal          ra, 2b
10:               jal          ra, 21f
11:               jal          ra, 0b
12:               jal          ra, 8b
13:               jal          t1, 23f
14:               jal          tp, 4b
15:               jal          s10, 11b
16:               jal          t1, 3b
17:               jal          ra, 14b
18:               jal          t1, 6b
19:               jal          t1, 16b
20:               jal          ra, 24f
21:               jal          t1, 7b
22:               jal          a5, 12b
23:               jal          ra, 5b
24:               slt          a5, s5, s7
sub_3_14:         jal          t1, 7f
0:                jal          ra, 22f
1:                jal          s0, 25f
2:                jal          s8, 13f
3:                jal          ra, 10f
4:                jal          ra, 9f
5:                jal          t4, 16f
6:                jal          ra, 27f
7:                jal          ra, 20f
8:                jal          ra, 14f
9:                jal          ra, 2b
10:               jal          ra, 26f
11:               jal          ra, 21f
12:               jal          a3, 11b
13:               jal          ra, 0b
14:               jal          ra, 28f
15:               jal          t1, 18f
16:               jal          ra, 12b
17:               jal          tp, 1b
18:               jal          ra, 24f
19:               jal          s10, 5b
20:               jal          t1, 19b
21:               jal          ra, 4b
22:               jal          ra, 15b
23:               jal          s10, 17b
24:               jal          ra, 6b
25:               jal          t0, 3b
26:               jal          a2, 8b
27:               jal          t1, 23b
28:               xori         s11, s4, -1218
sub_3_10:         jal          t1, 12f
0:                jal          ra, 20f
1:                jal          ra, 11f
2:                jal          t5, 7f
3:                jal          ra, 6f
4:                jal          ra, 10f
5:                jal          t1, 8f
6:                jal          ra, 15f
7:                jal          tp, 0b
8:                jal          ra, 3b
9:                jal          ra, 17f
10:               jal          ra, 2b
11:               jal          t1, 4b
12:               jal          sp, 9b
13:               jal          ra, 19f
14:               jal          ra, 18f
15:               jal          s8, 1b
16:               jal          ra, 13b
17:               jal          t1, 14b
18:               jal          ra, 16b
19:               jal          ra, 5b
20:               or           t1, zero, t3
sub_3_6:          jal          t1, 14f
0:                jal          t1, 26f
1:                jal          ra, 15f
2:                jal          ra, 20f
3:                jal          s11, 17f
4:                jal          ra, 25f
5:                jal          s4, 6f
6:                jal          tp, 11f
7:                jal          t1, 4b
8:                jal          t1, 23f
9:                jal          t1, 24f
10:               jal          gp, 8b
11:               jal          ra, 0b
12:               jal          ra, 18f
13:               jal          t1, 16f
14:               jal          sp, 12b
15:               jal          s9, 19f
16:               jal          s0, 22f
17:               jal          s11, 9b
18:               jal          ra, 1b
19:               jal          ra, 7b
20:               jal          ra, 5b
21:               jal          ra, 2b
22:               jal          t1, 3b
23:               jal          t1, 21b
24:               jal          ra, 10b
25:               jal          t1, 13b
26:               srli         s1, t5, 16
sub_3_25:         jal          t1, 6f
0:                jal          ra, 14f
1:                jal          t5, 13f
2:                jal          ra, 12f
3:                jal          ra, 8f
4:                jal          ra, 3b
5:                jal          t1, 15f
6:                jal          a0, 10f
7:                jal          t1, 9f
8:                jal          t1, 18f
9:                jal          t1, 5b
10:               jal          t1, 4b
11:               jal          t1, 19f
12:               jal          ra, 1b
13:               jal          t0, 20f
14:               jal          ra, 2b
15:               jal          a7, 11b
16:               jal          ra, 7b
17:               jal          ra, 16b
18:               jal          a2, 17b
19:               jal          s11, 0b
20:               xor          t5, s1, t5
sub_3_32:         jal          t1, 22f
0:                jal          s11, 15f
1:                jal          ra, 28f
2:                jal          ra, 14f
3:                jal          s10, 24f
4:                jal          ra, 7f
5:                jal          t1, 16f
6:                jal          ra, 12f
7:                jal          t1, 11f
8:                jal          s11, 18f
9:                jal          ra, 0b
10:               jal          sp, 21f
11:               jal          t6, 2b
12:               jal          ra, 27f
13:               jal          t1, 5b
14:               jal          t1, 25f
15:               jal          a1, 6b
16:               jal          s7, 1b
17:               jal          ra, 10b
18:               jal          t0, 26f
19:               jal          ra, 13b
20:               jal          ra, 3b
21:               jal          ra, 20b
22:               jal          a6, 23f
23:               jal          ra, 4b
24:               jal          gp, 9b
25:               jal          ra, 17b
26:               jal          s5, 19b
27:               jal          t1, 8b
28:               lui          t2, 516365
sub_3_20:         jal          t1, 15f
0:                jal          ra, 17f
1:                jal          ra, 0b
2:                jal          t1, 14f
3:                jal          s9, 10f
4:                jal          s7, 16f
5:                jal          ra, 6f
6:                jal          ra, 22f
7:                jal          ra, 18f
8:                jal          ra, 23f
9:                jal          ra, 13f
10:               jal          ra, 2b
11:               jal          s5, 12f
12:               jal          t2, 9b
13:               jal          t1, 3b
14:               jal          ra, 21f
15:               jal          ra, 7b
16:               jal          ra, 11b
17:               jal          t1, 19f
18:               jal          t1, 4b
19:               jal          a5, 20f
20:               jal          ra, 5b
21:               jal          t0, 1b
22:               jal          ra, 8b
23:               sub          s2, zero, tp
sub_3_7:          jal          t1, 11f
0:                jal          t1, 15f
1:                jal          s1, 25f
2:                jal          t5, 19f
3:                jal          ra, 6f
4:                jal          ra, 17f
5:                jal          ra, 16f
6:                jal          ra, 21f
7:                jal          t0, 0b
8:                jal          ra, 18f
9:                jal          s9, 14f
10:               jal          t1, 23f
11:               jal          s4, 7b
12:               jal          ra, 24f
13:               jal          ra, 20f
14:               jal          ra, 10b
15:               jal          t0, 2b
16:               jal          ra, 1b
17:               jal          ra, 22f
18:               jal          s4, 5b
19:               jal          t1, 3b
20:               jal          ra, 4b
21:               jal          t1, 12b
22:               jal          t1, 9b
23:               jal          t1, 8b
24:               jal          t1, 13b
25:               andi         s6, s2, -1473
sub_3_9:          jal          t1, 2f
0:                jal          t1, 8f
1:                jal          t1, 14f
2:                jal          ra, 7f
3:                jal          t1, 4f
4:                jal          a6, 0b
5:                jal          ra, 9f
6:                jal          t1, 18f
7:                jal          s4, 3b
8:                jal          ra, 11f
9:                jal          t1, 20f
10:               jal          ra, 17f
11:               jal          ra, 10b
12:               jal          s0, 15f
13:               jal          ra, 12b
14:               jal          ra, 16f
15:               jal          ra, 19f
16:               jal          ra, 5b
17:               jal          t1, 13b
18:               jal          ra, 1b
19:               jal          ra, 6b
20:               or           t5, s4, gp
sub_3_15:         jal          t1, 1f
0:                jal          ra, 7f
1:                jal          t2, 9f
2:                jal          ra, 12f
3:                jal          ra, 11f
4:                jal          t5, 17f
5:                jal          ra, 19f
6:                jal          t1, 5b
7:                jal          t1, 15f
8:                jal          t1, 3b
9:                jal          t1, 2b
10:               jal          ra, 6b
11:               jal          s4, 0b
12:               jal          ra, 13f
13:               jal          a2, 18f
14:               jal          sp, 4b
15:               jal          t1, 16f
16:               jal          ra, 20f
17:               jal          t1, 10b
18:               jal          s5, 14b
19:               jal          ra, 8b
20:               or           s2, t6, a7
sub_3_33:         jal          t1, 25f
0:                jal          ra, 1f
1:                jal          sp, 11f
2:                jal          ra, 16f
3:                jal          t1, 21f
4:                jal          t1, 5f
5:                jal          ra, 18f
6:                jal          ra, 12f
7:                jal          ra, 10f
8:                jal          ra, 7b
9:                jal          gp, 30f
10:               jal          tp, 4b
11:               jal          t4, 13f
12:               jal          t1, 23f
13:               jal          ra, 27f
14:               jal          ra, 2b
15:               jal          ra, 28f
16:               jal          ra, 20f
17:               jal          t1, 22f
18:               jal          a1, 6b
19:               jal          t5, 3b
20:               jal          ra, 0b
21:               jal          t1, 14b
22:               jal          t1, 8b
23:               jal          t1, 19b
24:               jal          ra, 9b
25:               jal          a7, 17b
26:               jal          s5, 15b
27:               jal          sp, 26b
28:               jal          t2, 29f
29:               jal          t1, 24b
30:               andi         s8, t6, -1487
sub_3_13:         jal          t1, 4f
0:                jal          ra, 7f
1:                jal          sp, 14f
2:                jal          ra, 26f
3:                jal          ra, 25f
4:                jal          t1, 18f
5:                jal          s5, 23f
6:                jal          ra, 1b
7:                jal          gp, 3b
8:                jal          ra, 2b
9:                jal          ra, 15f
10:               jal          ra, 22f
11:               jal          ra, 21f
12:               jal          s5, 20f
13:               jal          a1, 27f
14:               jal          ra, 19f
15:               jal          t1, 17f
16:               jal          a5, 13b
17:               jal          sp, 8b
18:               jal          ra, 9b
19:               jal          ra, 24f
20:               jal          t4, 5b
21:               jal          s5, 16b
22:               jal          ra, 11b
23:               jal          sp, 0b
24:               jal          ra, 10b
25:               jal          t0, 6b
26:               jal          t1, 12b
27:               slti         a5, t5, 1583
sub_3_23:         jal          t1, 5f
0:                jal          ra, 13f
1:                jal          s11, 14f
2:                jal          ra, 15f
3:                jal          ra, 16f
4:                jal          t1, 8f
5:                jal          ra, 11f
6:                jal          t1, 9f
7:                jal          ra, 21f
8:                jal          tp, 28f
9:                jal          ra, 27f
10:               jal          t0, 0b
11:               jal          ra, 19f
12:               jal          ra, 20f
13:               jal          ra, 7b
14:               jal          t1, 3b
15:               jal          ra, 10b
16:               jal          t0, 2b
17:               jal          ra, 4b
18:               jal          s8, 25f
19:               jal          ra, 6b
20:               jal          tp, 1b
21:               jal          ra, 24f
22:               jal          t1, 23f
23:               jal          ra, 12b
24:               jal          t1, 17b
25:               jal          t1, 22b
26:               jal          ra, 18b
27:               jal          ra, 26b
28:               jal          ra, 29f
29:               jal          ra, 30f
30:               sra          s1, s2, a1
sub_3_28:         jal          t1, 19f
0:                jal          ra, 4f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          sp, 6f
4:                jal          t1, 17f
5:                jal          sp, 8f
6:                jal          ra, 15f
7:                jal          ra, 9f
8:                jal          gp, 22f
9:                jal          t1, 0b
10:               jal          ra, 16f
11:               jal          ra, 14f
12:               jal          t0, 11b
13:               jal          ra, 21f
14:               jal          ra, 5b
15:               jal          t1, 1b
16:               jal          t1, 18f
17:               jal          sp, 20f
18:               jal          ra, 13b
19:               jal          s5, 7b
20:               jal          t1, 3b
21:               jal          ra, 2b
22:               slti         a7, t0, 184
sub_3_16:         jal          t1, 13f
0:                jal          t1, 22f
1:                jal          a5, 23f
2:                jal          t1, 12f
3:                jal          a7, 8f
4:                jal          ra, 10f
5:                jal          ra, 0b
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          ra, 18f
9:                jal          gp, 3b
10:               jal          t1, 17f
11:               jal          ra, 15f
12:               jal          ra, 19f
13:               jal          t1, 5b
14:               jal          ra, 1b
15:               jal          t1, 6b
16:               jal          t1, 21f
17:               jal          sp, 16b
18:               jal          ra, 20f
19:               jal          t0, 14b
20:               jal          ra, 2b
21:               jal          ra, 11b
22:               jal          ra, 4b
23:               slt          s6, s0, s6
sub_3_12:         jal          t1, 3f
0:                jal          sp, 5f
1:                jal          t1, 4f
2:                jal          sp, 7f
3:                jal          t1, 0b
4:                jal          tp, 6f
5:                jal          ra, 8f
6:                jal          t1, 10f
7:                jal          t2, 9f
8:                jal          ra, 2b
9:                jal          ra, 1b
10:               srai         s1, t6, 19
sub_3_17:         jal          t1, 14f
0:                jal          a5, 16f
1:                jal          ra, 0b
2:                jal          ra, 18f
3:                jal          t1, 20f
4:                jal          ra, 7f
5:                jal          ra, 10f
6:                jal          s11, 11f
7:                jal          ra, 15f
8:                jal          gp, 5b
9:                jal          ra, 6b
10:               jal          ra, 12f
11:               jal          ra, 26f
12:               jal          ra, 13f
13:               jal          a3, 21f
14:               jal          s9, 1b
15:               jal          ra, 2b
16:               jal          t6, 8b
17:               jal          s5, 9b
18:               jal          t1, 22f
19:               jal          t1, 17b
20:               jal          s8, 23f
21:               jal          gp, 3b
22:               jal          a7, 19b
23:               jal          ra, 24f
24:               jal          ra, 25f
25:               jal          ra, 4b
26:               or           t5, a0, a7
sub_3_3:          jal          t1, 3f
0:                jal          ra, 8f
1:                jal          s8, 0b
2:                jal          ra, 4f
3:                jal          s1, 6f
4:                jal          ra, 11f
5:                jal          a7, 9f
6:                jal          s11, 5b
7:                jal          t1, 10f
8:                jal          ra, 7b
9:                jal          gp, 1b
10:               jal          tp, 2b
11:               sll          s0, s5, tp
sub_3_31:         jal          t1, 9f
0:                jal          ra, 4f
1:                jal          t1, 6f
2:                jal          ra, 15f
3:                jal          ra, 11f
4:                jal          t1, 1b
5:                jal          ra, 2b
6:                jal          t1, 20f
7:                jal          s8, 18f
8:                jal          ra, 13f
9:                jal          ra, 14f
10:               jal          tp, 5b
11:               jal          a6, 16f
12:               jal          ra, 7b
13:               jal          ra, 19f
14:               jal          t1, 12b
15:               jal          ra, 0b
16:               jal          ra, 10b
17:               jal          ra, 3b
18:               jal          ra, 8b
19:               jal          ra, 17b
20:               and          a3, a7, s2
                  bne          gp, a2, 10f
                  srl          a5, t5, zero
                  sra          s10, s7, sp
                  xori         a6, t6, 1699
                  sltiu        a2, t6, -1782
                  srl          a7, sp, s8
                  andi         a5, a1, -600
                  xor          s9, a4, t6
                  xor          s8, t0, s10
                  xor          s5, t5, a5
10:               addi         s5, a5, -1588
                  xori         t5, gp, 817
                  and          s10, s3, zero
                  slli         s5, s0, 2
                  bltu         t1, a4, 17f
                  sltu         s4, t6, s4
                  addi         t2, a2, -1241
17:               sltiu        s1, t6, 434
                  xori         a5, a0, -1629
                  nop
                  nop
                  addi         a3, s1, 1778
                  slti         gp, a6, -1811
                  sltu         s7, t5, s2
                  srai         a5, s5, 23
                  slli         s10, a6, 17
                  slti         s2, s9, -1207
                  bne          a4, s7, 47f
                  beq          tp, s0, 45f
                  slli         t5, t2, 0
                  and          ra, a4, t3
                  or           a3, tp, s5
                  and          a2, a3, a5
                  slli         t5, t1, 0
                  slt          a6, s7, s3
                  srl          s11, a4, t6
                  auipc        t1, 828706
                  slt          tp, tp, a0
                  slli         t4, t2, 7
                  beq          s11, t3, 49f
                  blt          s6, s4, 60f
                  sltiu        a5, a5, 1967
                  xori         t5, s1, 1698
                  bge          a2, a6, 57f
                  bge          s6, zero, 59f
45:               auipc        s8, 730264
                  nop
47:               xori         zero, t0, 484
                  bgeu         t6, a1, 51f
49:               sub          a5, ra, s10
                  srl          zero, a6, a4
51:               bgeu         s2, t6, 68f
                  xor          a0, s4, a6
                  or           a6, a0, t5
                  and          s0, ra, t6
                  blt          t2, a7, 59f
                  slli         a3, a3, 13
57:               slli         tp, s10, 12
                  addi         t5, a6, 933
59:               sll          s8, s6, a4
60:               auipc        t5, 823151
                  ori          t5, s8, -160
                  beq          t6, sp, 72f
                  auipc        a0, 721607
                  xori         gp, sp, -940
                  bgeu         s10, sp, 66f
66:               blt          tp, s7, 83f
                  slli         s7, sp, 15
68:               xori         a3, tp, 1971
                  sltu         s7, s4, tp
                  andi         tp, zero, -1811
                  srl          s10, t6, t4
72:               lui          t1, 182045
                  bge          a0, a7, 88f
                  nop
                  bgeu         t1, s9, 95f
                  srl          zero, t6, s7
                  srl          s5, t6, s10
                  srli         a5, a5, 13
                  auipc        t2, 3527
                  auipc        t0, 873023
                  lui          t6, 58133
                  addi         s10, s7, 1406
83:               sltiu        s4, t2, -920
                  sra          t1, a6, s5
                  sltiu        t0, tp, -1761
                  bgeu         a0, s4, 104f
                  bne          t2, s0, 91f
88:               bltu         t1, a1, 91f
                  bne          gp, s10, 98f
                  sltu         s11, s2, s8
91:               and          s5, a0, s6
                  beq          s5, a3, 104f
                  sub          s9, a2, zero
                  bltu         a1, s2, 109f
95:               xor          sp, s2, sp
                  sub          s2, tp, s8
                  bge          s3, s9, 109f
98:               sll          s0, s0, s9
                  or           t1, s7, a1
                  bgeu         s8, tp, 108f
                  slt          t5, tp, s11
                  slli         a6, t3, 6
                  sltiu        gp, s2, 692
104:              xor          a0, s9, s10
                  add          s2, s0, a6
                  andi         sp, t4, -1547
                  bne          t6, t4, 123f
108:              add          t5, t5, a2
109:              nop
                  beq          t3, zero, 125f
                  sll          t0, a5, s11
                  ori          a5, s11, -1597
                  slt          zero, s8, s1
                  sltu         t4, t4, zero
                  nop
                  xor          t0, t0, t0
                  sra          a2, ra, s8
                  bltu         zero, sp, 129f
                  and          tp, sp, t1
                  lui          s10, 739708
                  slti         t6, a6, -272
                  and          s8, s11, gp
123:              ori          t1, s0, -1818
                  blt          t0, ra, 125f
125:              ori          s10, s11, -1770
                  bge          a2, zero, 143f
                  nop
                  slti         s1, s9, 68
129:              bltu         s10, tp, 136f
                  slti         s0, s3, -144
                  srli         ra, a4, 23
                  nop
                  auipc        tp, 235764
                  and          a0, sp, t6
                  or           gp, s10, s10
136:              andi         a1, s4, 1497
                  sll          s5, s10, gp
                  sltiu        a0, ra, -1225
                  slli         t2, t0, 16
                  xori         s2, t1, -807
                  slt          a2, ra, s3
                  srai         tp, a2, 11
143:              srl          s6, s0, s6
                  xor          a7, t3, s7
                  sub          a2, t1, s5
                  bgeu         a4, a2, 150f
                  andi         t5, a5, 526
                  bltu         t1, a4, 158f
                  bltu         s0, t4, 156f
150:              add          zero, s8, a5
                  sra          t2, s11, zero
                  xor          s7, s8, t0
                  bge          a2, a4, 163f
                  srli         s10, s0, 11
                  blt          t2, t2, 164f
156:              srl          s7, a0, a3
                  xori         s5, s2, 1693
158:              auipc        s0, 219358
                  blt          s8, a6, 176f
                  srai         s0, a1, 29
                  sra          s10, a7, s3
                  ori          tp, a1, -1873
163:              bltu         s1, a0, 164f
164:              sltiu        t1, s9, -516
                  bgeu         s5, s3, 185f
                  ori          s8, t6, -321
                  beq          t4, t1, 184f
                  sltiu        s8, s7, -1944
                  bne          tp, s11, 181f
                  xor          t4, sp, s1
                  auipc        s5, 511673
                  sra          s8, t4, t3
                  bge          a2, a5, 174f
174:              add          sp, a0, s5
                  bgeu         a5, t2, 190f
176:              slti         a7, t3, -1493
                  and          s10, s7, s2
                  or           s6, s0, t5
                  slti         ra, s7, -1665
                  slt          a2, a0, t4
181:              sra          sp, a7, s3
                  and          s5, a6, a3
                  or           s1, t6, a6
184:              bgeu         s7, s11, 199f
185:              srli         s4, t3, 26
                  xor          s4, s0, t0
                  add          t5, a3, ra
                  bltu         s3, a0, 198f
                  srai         a0, a7, 11
190:              slti         s10, s7, -1317
                  ori          a7, t2, 1187
                  lui          ra, 811222
                  bgeu         t5, t1, 196f
                  bge          s7, s10, 210f
                  srli         a7, s2, 22
196:              slti         s1, s7, -674
                  srl          t2, s2, a2
sub_3_29:         jal          t1, 2f
0:                jal          s0, 5f
1:                jal          ra, 8f
2:                jal          ra, 1b
3:                jal          t1, 6f
4:                jal          s1, 3b
5:                jal          t0, 7f
6:                jal          t1, 9f
7:                jal          s7, 4b
8:                jal          ra, 0b
9:                jal          tp, 10f
10:               addi         a5, s9, 1957
198:              bltu         sp, a2, 212f
199:              bne          s11, a5, 210f
                  beq          a1, gp, 220f
                  ori          s2, gp, 1256
                  andi         t1, t2, -1746
                  bge          sp, a6, 223f
                  add          a2, a4, zero
                  auipc        a1, 170399
                  sltiu        s4, s3, 755
                  nop
                  srl          s0, tp, sp
                  and          s2, tp, a1
210:              srl          t4, a1, s8
                  slli         t0, s2, 14
212:              bltu         a6, t1, 220f
                  sltiu        tp, t1, -1739
                  srai         t1, t4, 15
                  srli         t5, a5, 22
                  bge          a0, s11, 233f
                  blt          tp, gp, 220f
                  ori          a3, t6, -304
                  nop
220:              sub          s1, t4, s4
                  bgeu         t5, s11, 236f
                  sltiu        ra, s11, 1705
223:              bne          s0, t3, 235f
                  or           a3, s7, s6
                  bne          t5, s9, 240f
                  addi         t0, ra, 1733
                  sra          s6, s5, gp
                  lui          s0, 248797
                  sra          a2, tp, a2
                  bltu         s5, s1, 248f
                  lui          t6, 995810
                  nop
233:              sll          t2, a4, s0
                  srai         sp, s6, 25
235:              nop
236:              sra          a3, s5, s11
                  bltu         a2, s1, 241f
                  bltu         s8, s1, 241f
                  sltu         ra, a4, a7
240:              blt          s8, s0, 257f
241:              slti         t5, t0, -1593
                  xori         s5, t5, -1442
                  sll          s5, sp, gp
                  blt          a6, s0, 252f
                  slti         a7, a4, -920
                  beq          t2, a6, 249f
                  add          s5, a6, s8
248:              slti         s1, sp, 697
249:              sltiu        ra, t3, -481
                  srli         a1, s10, 30
                  and          s8, sp, s9
252:              bne          s11, t4, 261f
                  bltu         s9, s4, 269f
                  bne          tp, tp, 271f
                  bne          t3, s7, 267f
                  sltu         s8, gp, a6
257:              lui          s0, 832953
                  sra          a0, a6, s4
                  auipc        s1, 83897
                  add          a3, sp, s3
261:              srli         s8, t6, 7
                  beq          a3, s9, 272f
                  beq          t0, s8, 278f
                  slt          s0, s4, s1
                  slt          s9, s6, t6
                  sltiu        s9, t6, -678
267:              sra          zero, s0, t5
                  bne          t4, a1, 278f
269:              beq          a2, s8, 279f
                  xor          a6, s3, s5
271:              addi         s4, s3, 1471
272:              lui          zero, 286252
                  auipc        s5, 62369
                  srl          a3, t3, s7
                  sra          ra, t4, ra
                  add          t6, ra, t4
                  slti         ra, tp, -27
278:              bgeu         s10, s9, 285f
279:              slli         s1, s5, 28
                  sub          a5, t6, a1
                  lui          s11, 75382
                  bne          t3, a0, 297f
                  xori         s2, a1, -771
                  auipc        a6, 600251
285:              slti         t2, a3, -1825
                  slli         s6, ra, 19
                  srl          s0, a2, sp
                  bne          t6, s5, 289f
289:              srl          t1, zero, s7
                  andi         s2, zero, -347
                  andi         s11, a7, -1263
                  slli         ra, t1, 23
                  bgeu         t2, s8, 307f
                  lui          t0, 942792
                  xor          s0, zero, a0
                  nop
297:              bgeu         s6, sp, 301f
                  blt          a7, tp, 302f
                  bgeu         tp, s5, 300f
300:              bne          gp, a1, 315f
301:              bge          s9, t6, 318f
302:              srai         zero, a4, 30
                  sra          sp, zero, a1
                  sltu         sp, a5, s0
                  sltiu        s6, t4, -1012
                  srl          s5, s10, s7
307:              nop
                  bgeu         a6, s3, 328f
                  andi         a0, s1, -1345
                  andi         s8, t3, 517
                  sltu         t2, a6, s2
                  add          t2, a4, a1
                  slt          a6, s0, s2
                  or           a2, a2, s10
315:              lui          s6, 493605
                  bge          s1, s2, 328f
                  or           tp, gp, a6
318:              xori         a0, a2, -413
                  bne          s1, s7, 322f
                  xori         s4, a5, 535
                  blt          t3, a3, 332f
322:              beq          s4, zero, 339f
                  andi         t1, t0, -1803
                  srl          a7, t3, t6
                  bne          s0, s2, 345f
                  lui          t5, 57017
sub_3_24:         jal          t1, 3f
0:                jal          a0, 6f
1:                jal          ra, 9f
2:                jal          ra, 0b
3:                jal          s5, 11f
4:                jal          gp, 10f
5:                jal          sp, 12f
6:                jal          ra, 8f
7:                jal          ra, 1b
8:                jal          a7, 4b
9:                jal          t4, 2b
10:               jal          ra, 5b
11:               jal          t1, 7b
12:               srl          a2, a1, ra
                  auipc        tp, 512234
328:              bne          s10, t0, 348f
                  sll          t2, s5, a1
                  slti         a3, t0, 1514
                  sltiu        a3, s11, 1527
332:              nop
                  lui          a1, 702554
                  sub          s4, a1, s10
                  bltu         a6, s1, 338f
                  bgeu         s0, s9, 354f
                  slt          s0, a6, s0
338:              slti         s4, s8, -765
339:              lui          t0, 81894
                  andi         t4, t6, 564
                  sll          a5, s5, t6
                  slli         s11, a2, 16
                  ori          s5, a0, -980
                  andi         t4, ra, 362
345:              srl          zero, s7, s5
                  andi         s8, s11, -334
                  slli         s2, a7, 27
348:              srai         ra, t3, 13
                  beq          s9, s11, 364f
                  srli         sp, t3, 10
                  slt          sp, a1, tp
                  sll          a1, a5, t2
                  bgeu         a2, s5, 370f
354:              andi         t2, s1, -802
                  lui          ra, 832766
                  beq          tp, s6, 366f
                  srai         a7, s11, 22
                  bltu         t0, a4, 378f
                  add          gp, s6, a0
                  bne          a0, a5, 380f
                  auipc        a1, 216797
                  bne          a4, s0, 365f
                  and          t2, sp, a2
364:              lui          a5, 248806
365:              sub          s8, a3, s7
366:              andi         t2, zero, 2027
                  nop
                  bne          a5, t3, 384f
                  blt          s10, t0, 384f
370:              xori         s4, s7, 503
                  srai         tp, s5, 13
                  xori         t5, gp, -39
                  slt          s11, a5, a2
                  slli         t4, t5, 7
                  nop
                  xori         s4, t3, 1626
                  sra          sp, s11, s9
378:              slli         s9, zero, 8
                  slt          t5, s2, s9
380:              sltiu        a3, sp, 1968
                  sll          s8, t3, gp
                  blt          s11, s3, 383f
383:              slt          s2, s7, gp
384:              auipc        s4, 429155
                  srli         s10, s1, 19
                  sll          s6, s8, a6
                  addi         zero, gp, 686
                  ori          a2, zero, 738
                  lui          sp, 608925
                  lui          gp, 274099
                  slt          t4, s9, a4
                  srai         gp, a7, 27
                  slti         sp, s1, -1916
                  auipc        a1, 5900
                  nop
                  sltu         a3, s8, zero
                  blt          tp, t3, 414f
                  beq          s2, t0, 402f
                  bge          s7, t3, 410f
                  andi         ra, s1, -1084
                  blt          s5, s6, 413f
402:              srli         t2, s1, 15
                  lui          a2, 851849
                  srai         s8, s6, 30
                  sltiu        t0, a7, 1629
                  and          s11, a2, a0
                  srl          s1, t1, tp
                  or           a6, t0, t3
                  bgeu         a7, sp, 412f
410:              auipc        a3, 359981
                  nop
412:              auipc        s7, 560911
413:              and          a6, t6, ra
414:              srl          t0, ra, t6
                  sub          t1, t2, s4
                  lui          s2, 608613
                  sub          a7, s1, s1
                  bgeu         s2, s10, 430f
                  srli         t1, s1, 26
                  sltu         s1, s5, t5
                  slti         t5, a4, -413
                  nop
                  slt          s7, zero, ra
                  slli         tp, s11, 20
                  sll          s6, ra, s8
                  xori         t1, gp, 1839
                  blt          t6, s10, 434f
                  sra          s4, gp, s5
                  srl          a6, s10, gp
430:              ori          s9, s8, 1829
                  sltiu        t0, s2, -1164
                  bge          t1, t5, 449f
                  and          s1, s5, s9
434:              srl          a3, zero, t5
                  blt          t6, s9, 449f
                  slti         s10, a0, -489
                  srli         a7, s5, 16
                  add          t0, zero, a0
                  bltu         s1, s2, 449f
                  add          a0, zero, t4
                  slli         s4, s1, 27
                  andi         a5, s4, 264
                  auipc        sp, 326765
                  sra          s9, a5, sp
                  sltu         t2, zero, s2
                  nop
                  srl          sp, a0, s1
                  xori         a7, s4, 332
449:              lui          zero, 688991
                  ori          s0, a2, 2026
                  bgeu         s9, s5, 452f
452:              lui          s9, 1037192
                  addi         t6, t4, -933
                  beq          t0, s3, 469f
                  beq          a2, t3, 458f
                  or           s11, gp, a6
                  slli         t5, t4, 5
458:              slti         s8, t5, -1917
                  andi         t5, s3, 326
                  ori          s7, gp, 1571
                  sra          s10, a1, s6
                  and          s9, s1, sp
                  slti         t0, s9, 1932
                  andi         t4, s2, 18
                  srai         s7, s3, 27
                  add          a5, s7, t4
                  andi         s6, t2, 1780
                  sltu         ra, t6, t1
469:              sll          tp, a7, s9
                  and          s1, s5, tp
                  srli         s9, a2, 15
                  sub          s6, s9, gp
                  sltu         s4, a3, a1
                  lui          t2, 373774
                  sra          t1, t5, s10
                  sll          s4, t6, s5
                  andi         t5, t6, -1306
                  xor          a5, t2, t0
                  sra          s4, a1, s7
                  slli         s4, a4, 28
                  sub          s9, t0, t2
                  addi         t2, a0, -1227
                  beq          a2, ra, 498f
                  nop
                  xori         a5, a3, -2037
                  andi         gp, sp, 1861
                  sltu         t6, s11, tp
                  xor          s8, s5, t1
                  ori          s4, a7, 1780
                  auipc        t5, 556631
                  sltu         s4, ra, s7
                  bgeu         s2, t3, 496f
                  addi         s6, a5, 1847
                  sub          a0, sp, a6
                  sltu         s5, ra, s10
496:              bne          s9, a2, 506f
                  nop
498:              srai         tp, t6, 17
                  lui          s4, 14965
                  bne          s3, t5, 520f
                  sltu         s2, s3, a0
                  xor          zero, t6, a0
                  slti         ra, tp, 1883
                  andi         t5, a2, -448
                  sltiu        a7, s4, -1121
506:              bne          a4, t3, 521f
                  or           ra, t5, sp
                  bltu         s5, s1, 517f
                  srai         sp, s3, 17
                  blt          ra, s5, 518f
                  bgeu         t0, t0, 528f
                  or           sp, s5, s9
                  srli         s0, a4, 10
                  and          a1, s5, t5
                  lui          a0, 834703
                  sra          t6, t5, s4
517:              slti         gp, gp, 1370
518:              slti         a7, a5, 489
                  xori         a0, tp, -1853
520:              bne          a4, a6, 537f
521:              bge          t0, s10, 539f
                  bltu         s4, t6, 542f
                  srl          s2, tp, s1
                  blt          a2, a4, 534f
                  bge          s5, s6, 537f
                  andi         a1, tp, 1833
                  auipc        a7, 115606
528:              beq          t5, a4, 532f
                  sub          s5, a4, a3
                  ori          s7, zero, 1984
                  auipc        a2, 927582
532:              sll          a3, s7, s6
                  srl          s11, tp, a1
534:              sub          a6, sp, s9
                  slt          zero, s3, s5
                  blt          a6, s1, 537f
537:              bne          ra, s7, 554f
                  bgeu         a0, t0, 555f
539:              bne          s0, s8, 543f
                  auipc        tp, 106207
                  andi         zero, s10, 234
542:              srl          s0, s8, t5
543:              bge          t3, a6, 554f
                  add          zero, a5, s2
                  slti         s9, t2, -1426
                  slti         s11, sp, 423
sub_3_8:          jal          t1, 12f
0:                jal          t0, 22f
1:                jal          t1, 25f
2:                jal          ra, 4f
3:                jal          t1, 21f
4:                jal          ra, 18f
5:                jal          t6, 13f
6:                jal          ra, 19f
7:                jal          ra, 0b
8:                jal          t1, 20f
9:                jal          t4, 24f
10:               jal          ra, 11f
11:               jal          ra, 23f
12:               jal          t1, 9b
13:               jal          t1, 2b
14:               jal          ra, 1b
15:               jal          ra, 3b
16:               jal          ra, 17f
17:               jal          ra, 14b
18:               jal          ra, 26f
19:               jal          ra, 15b
20:               jal          a1, 10b
21:               jal          ra, 28f
22:               jal          ra, 16b
23:               jal          ra, 27f
24:               jal          ra, 7b
25:               jal          ra, 8b
26:               jal          ra, 6b
27:               jal          s2, 5b
28:               nop
                  srli         a6, zero, 27
                  blt          a3, a4, 563f
                  slt          s10, s2, a2
                  slli         s10, s3, 22
                  sra          s1, a5, s11
                  srl          s4, a4, sp
                  or           s6, t2, sp
554:              bltu         a5, ra, 557f
555:              auipc        a1, 388813
                  xori         zero, t4, 586
557:              xor          a7, t0, a4
                  sltu         s5, s1, s3
                  and          a6, t3, a2
                  slli         s9, a3, 26
                  srli         ra, a4, 12
                  addi         s9, ra, -459
563:              sub          zero, ra, t6
                  ori          s10, t4, -1675
                  xor          t2, s7, a7
                  bgeu         s8, s3, 574f
                  ori          s1, zero, -791
                  lui          s9, 323824
                  blt          t2, ra, 586f
                  or           gp, s0, t5
                  slti         s1, a6, -1934
                  srai         a7, tp, 12
                  lui          s6, 597952
574:              slt          t6, a3, t0
                  slli         s2, s0, 29
                  sltu         s11, s1, s11
                  add          a2, s5, gp
                  ori          zero, t4, -484
                  bne          t6, s7, 591f
                  srli         s1, ra, 1
                  sub          s9, s9, t3
                  ori          a1, s5, -1616
                  ori          s6, s3, -654
                  beq          s5, a4, 602f
                  bne          s5, ra, 605f
586:              slt          s2, s8, s6
                  sll          t5, ra, s2
                  bge          a5, t0, 591f
                  or           s7, a6, t3
                  sltu         a6, s4, s0
591:              blt          tp, s1, 601f
                  andi         s8, s10, -2018
                  bge          tp, a5, 608f
                  lui          a7, 921881
                  sltiu        a6, s4, 43
                  add          gp, s9, ra
                  bne          a1, t6, 613f
                  blt          t4, s4, 613f
                  and          a1, a5, t1
                  lui          t0, 408203
601:              srai         a7, t6, 23
602:              sll          tp, t5, a7
                  slt          ra, t4, a4
                  beq          t4, t6, 618f
605:              blt          s11, s5, 614f
                  beq          t1, s7, 609f
                  bge          a5, a5, 622f
608:              blt          s6, s11, 628f
609:              auipc        s0, 282569
                  beq          a4, t1, 617f
                  nop
                  add          s5, s1, zero
613:              sltu         ra, tp, s10
614:              slli         a3, s8, 18
                  srai         a7, zero, 7
                  srl          zero, a7, a1
617:              addi         t2, a7, 191
618:              slti         s5, t5, 1507
                  slt          s9, a1, s10
                  sltiu        a6, t6, 1269
                  nop
622:              slt          s2, s8, s4
                  xor          a5, a5, t2
                  beq          t5, t5, 634f
                  bgeu         a2, t6, 642f
                  bltu         s9, s6, 627f
627:              addi         s7, s4, 2015
628:              beq          t2, ra, 629f
629:              bne          t2, a1, 644f
                  sltiu        s1, a0, -698
                  srai         tp, s3, 13
                  ori          s10, t4, -1187
                  or           s7, s11, a3
634:              or           t1, ra, a6
                  lui          s0, 873456
                  nop
                  slli         s11, a1, 13
                  srl          t1, t0, a6
                  auipc        ra, 620061
                  slti         t1, sp, 1623
                  sub          t0, t3, a5
642:              blt          s3, t6, 646f
                  xor          tp, gp, zero
644:              srai         s6, a2, 12
                  lui          a2, 946918
646:              lui          s4, 996505
                  or           a6, t6, s8
                  andi         zero, s3, 1937
                  sltu         a6, s1, a0
                  blt          s7, a5, 670f
                  slli         a7, s1, 0
                  andi         gp, zero, 896
                  bltu         tp, s8, 665f
                  xor          a5, s10, a2
                  slli         s10, sp, 30
                  nop
                  sltiu        gp, ra, -878
                  xori         a0, s11, -1403
                  andi         sp, ra, 1756
                  lui          tp, 1028572
                  bltu         s2, s6, 669f
                  andi         s1, a1, 1440
                  addi         a0, s11, 82
                  sub          s2, t1, tp
665:              auipc        ra, 123258
                  bltu         a2, zero, 678f
                  srli         t2, tp, 17
                  xor          a5, t3, gp
669:              slti         s0, s1, -191
670:              sra          a6, s5, t6
                  or           zero, tp, t1
                  sub          s6, s4, s9
                  xor          a7, a5, a0
                  and          s1, s8, t4
                  slti         sp, s9, -2046
                  sltiu        t6, ra, -727
                  bgeu         t1, a6, 695f
678:              slli         t1, a6, 21
                  sltu         tp, s6, s10
                  sltu         t5, s4, a6
                  srl          a2, a2, t1
                  ori          a2, s0, -1233
                  andi         s9, t4, -450
                  lui          t2, 332855
                  addi         t5, t6, -141
                  srl          a1, tp, s7
                  sub          sp, t3, s0
                  andi         ra, a4, 1042
                  srai         t0, s4, 6
                  xori         tp, a1, -1719
                  sltu         t2, ra, t0
                  srl          tp, t3, ra
                  beq          a2, s10, 704f
                  srl          s2, ra, ra
695:              slti         sp, a7, -591
                  slti         a1, s8, 1647
                  xori         sp, a1, 1668
                  or           t0, a5, t6
                  sub          t2, s4, zero
                  bltu         t6, s0, 717f
                  xor          a0, a5, t5
                  xori         sp, t3, 1142
                  sltiu        t1, s9, 736
704:              bgeu         t3, s3, 714f
                  sltiu        t2, s5, -1149
                  sltiu        a2, s2, -1199
                  nop
                  xori         s11, t3, 567
                  or           t0, ra, s6
                  srl          s2, s2, s9
                  bne          t1, ra, 712f
712:              bgeu         t6, sp, 721f
                  slli         t6, t0, 8
714:              beq          s7, t0, 728f
                  ori          a0, tp, -885
                  srai         s10, s4, 0
sub_3_4:          jal          t1, 3f
0:                jal          t1, 18f
1:                jal          s2, 11f
2:                jal          ra, 14f
3:                jal          ra, 6f
4:                jal          ra, 13f
5:                jal          t0, 8f
6:                jal          ra, 2b
7:                jal          ra, 1b
8:                jal          t1, 16f
9:                jal          ra, 12f
10:               jal          ra, 19f
11:               jal          ra, 5b
12:               jal          ra, 4b
13:               jal          ra, 17f
14:               jal          a6, 7b
15:               jal          ra, 0b
16:               jal          t6, 9b
17:               jal          a5, 15b
18:               jal          ra, 10b
19:               slt          a7, t2, s5
717:              slli         t6, s0, 30
                  blt          s9, t6, 734f
                  slli         s10, s2, 0
                  nop
721:              slli         sp, s1, 28
                  srl          s2, t5, a4
                  bne          s2, t1, 733f
                  slti         t2, a0, -360
                  sra          a6, a6, s8
                  add          a6, s3, gp
                  bgeu         s7, s0, 744f
728:              bgeu         zero, s8, 738f
                  and          ra, a1, s6
                  auipc        zero, 32767
                  sll          tp, tp, s11
                  bltu         s2, t4, 735f
733:              sra          s10, a0, t2
734:              srai         s1, t2, 11
735:              addi         s4, s2, -675
                  slt          s5, a7, a7
                  addi         a2, a2, -2018
738:              add          gp, a6, s3
                  lui          a3, 412772
                  sll          s9, a5, t3
                  bne          a6, gp, 758f
                  xori         s1, a6, -1849
                  addi         s8, t2, 1365
744:              beq          s5, t0, 748f
                  bgeu         ra, a4, 760f
                  auipc        a7, 871284
                  or           a7, s2, t5
748:              blt          a0, s10, 755f
                  srl          a3, s8, t3
                  bge          sp, zero, 767f
                  bne          gp, a2, 754f
                  or           t2, a0, a1
                  sltu         t6, t5, s7
754:              sltiu        s0, gp, 1771
755:              xor          a3, t2, a5
                  sra          s7, gp, t2
                  srli         a6, s3, 19
758:              and          s11, t1, s7
                  slt          a5, a4, t5
760:              sltu         a6, a5, s0
                  lui          s5, 904836
                  xor          t0, t0, s9
                  beq          s4, s2, 778f
                  bltu         a2, a6, 784f
                  andi         s7, s0, -299
                  auipc        a5, 660450
767:              nop
                  sltu         a7, zero, gp
                  sltiu        s7, t1, -897
                  andi         gp, s3, 88
                  auipc        tp, 659558
                  xori         s11, t2, 1663
                  sra          s0, s3, t5
                  slt          s4, a0, a7
                  add          t0, s0, s5
                  lui          a2, 441560
                  beq          t1, s10, 797f
778:              bge          s3, sp, 781f
                  srl          s8, s2, gp
                  sra          s11, s3, t6
781:              sll          sp, t6, a5
                  and          s2, t5, s2
                  slti         sp, s5, 397
784:              srai         gp, a4, 13
                  slt          t0, a7, t5
                  lui          s2, 326782
                  srl          a1, t5, a0
                  slti         zero, a4, -273
sub_3_11:         jal          t1, 2f
0:                jal          ra, 6f
1:                jal          t1, 13f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          s7, 26f
5:                jal          s4, 20f
6:                jal          s2, 8f
7:                jal          a2, 11f
8:                jal          ra, 21f
9:                jal          ra, 16f
10:               jal          ra, 15f
11:               jal          t1, 12f
12:               jal          ra, 1b
13:               jal          ra, 14f
14:               jal          ra, 22f
15:               jal          s5, 23f
16:               jal          ra, 5b
17:               jal          s10, 19f
18:               jal          s8, 10b
19:               jal          ra, 24f
20:               jal          s7, 18b
21:               jal          t1, 9b
22:               jal          ra, 17b
23:               jal          a5, 4b
24:               jal          t0, 25f
25:               jal          ra, 0b
26:               add          a3, s0, a7
                  xor          s5, s8, t2
                  blt          a5, a6, 805f
                  beq          t0, t3, 794f
                  srai         s2, t4, 4
                  addi         ra, s5, 609
794:              lui          s0, 126210
                  slti         t2, a1, 350
                  and          t2, s11, s0
797:              sub          t4, s8, a0
                  sll          sp, ra, a0
                  sll          a2, s1, s7
                  sltu         s0, a3, t0
                  bne          s2, s3, 818f
                  bge          t6, a2, 817f
                  slt          s11, a1, a2
                  and          sp, a0, s5
805:              sltiu        s0, zero, -340
                  sra          t6, a6, a5
                  sub          s11, t5, s6
                  sltu         a3, tp, a1
                  addi         a1, s2, 858
                  xori         a1, s1, 699
                  sll          zero, a4, gp
                  beq          a6, t0, 816f
                  or           a2, s2, a6
                  and          t0, s4, a7
                  srli         t4, t3, 12
816:              sltiu        s0, t4, -942
817:              sub          a0, t6, t4
818:              xor          s0, t6, tp
                  nop
                  slti         s6, s8, 667
                  slli         s6, s10, 26
                  beq          t2, t4, 839f
                  xori         a3, s3, 16
                  xor          t0, t2, s1
                  lui          gp, 1043082
                  ori          s0, t1, 1567
                  slli         s11, t5, 17
                  sltiu        s0, gp, 1114
                  addi         s0, t2, 1209
                  andi         s5, t1, 1762
                  srai         ra, s10, 15
                  xori         ra, s0, 11
                  sll          t2, s2, a4
                  bne          s0, t2, 849f
                  bltu         s10, s2, 849f
                  bge          s8, s0, 837f
837:              bltu         s4, t4, 838f
838:              add          a5, s2, a6
839:              xor          a3, s7, t6
                  blt          t1, a3, 855f
                  add          a5, s5, t2
                  blt          s11, s1, 862f
                  srli         ra, s5, 4
                  bge          t6, s0, 851f
                  bltu         s3, a3, 855f
                  sra          t5, s7, s1
                  bge          t0, a3, 859f
                  bltu         s8, s3, 852f
849:              srli         a6, s11, 30
                  blt          t0, tp, 860f
851:              bgeu         s3, t4, 871f
852:              sltu         s10, t0, sp
                  add          s6, t1, a3
sub_3_21:         jal          t1, 3f
0:                jal          s8, 11f
1:                jal          s10, 5f
2:                jal          ra, 0b
3:                jal          t1, 8f
4:                jal          t1, 7f
5:                jal          t1, 9f
6:                jal          t1, 4b
7:                jal          a5, 1b
8:                jal          t1, 2b
9:                jal          ra, 13f
10:               jal          s10, 12f
11:               jal          t0, 10b
12:               jal          ra, 6b
13:               sra          s9, s8, t3
                  sltiu        a3, a1, -940
855:              sra          t4, t0, ra
                  auipc        s0, 264891
                  srai         a1, a1, 7
                  beq          s10, t0, 867f
859:              blt          t6, s1, 879f
860:              and          a5, t2, s3
                  addi         s2, a2, -442
862:              srl          a6, a2, s2
                  sra          s0, a5, a5
                  and          a1, a5, t2
                  beq          s3, s6, 882f
                  srli         s6, t6, 0
867:              sra          sp, a2, s6
                  sltu         a1, a5, s8
                  sltu         s2, a4, ra
                  lui          sp, 42045
871:              addi         ra, s11, -431
                  auipc        s5, 678055
                  add          tp, sp, t2
                  sltu         s6, s10, s8
                  bne          s9, t3, 878f
                  xori         ra, s2, -888
                  andi         s5, t0, 1919
878:              bge          s9, t6, 890f
879:              srai         s4, s1, 0
                  sll          s7, a3, a2
                  slti         sp, t3, -1285
882:              add          t1, s3, sp
                  add          a2, a2, gp
                  or           t4, t5, sp
                  lui          a7, 830999
                  blt          a5, s9, 901f
                  lui          t5, 375001
                  ori          a6, gp, 426
                  add          s9, a4, a4
890:              auipc        tp, 364860
                  andi         s8, s3, 1806
                  lui          a2, 786097
                  blt          zero, a0, 910f
                  srl          ra, s5, a6
                  srli         a5, a5, 27
                  bgeu         a3, s7, 914f
                  bne          t5, s6, 913f
                  sltiu        a0, s7, 821
                  add          a2, a0, a3
                  srli         a5, s5, 30
901:              ori          ra, ra, 1251
                  or           a5, t5, t5
                  srli         s4, s1, 21
                  ori          a1, t2, 802
                  add          s10, a7, t5
                  auipc        tp, 109660
                  sra          sp, a6, a0
                  xor          t5, s4, a0
                  bltu         s0, t5, 917f
910:              lui          tp, 916936
                  xor          a2, sp, t6
                  and          a7, a1, t3
913:              bltu         a1, a3, 916f
914:              and          s5, t4, ra
                  bltu         a7, s7, 926f
916:              lui          t2, 547127
917:              bge          a6, gp, 927f
                  sltiu        s0, a2, -867
                  lui          gp, 627235
                  sltiu        s2, t6, 1801
                  xori         ra, s4, 961
                  add          t4, s7, gp
                  srai         a5, t1, 18
                  xor          t5, tp, gp
                  beq          gp, tp, 939f
926:              andi         t5, t1, -1898
927:              andi         a0, a4, 1668
                  slli         t5, s9, 10
                  xori         t1, t4, -1633
                  sltiu        s5, s11, 1266
                  addi         s1, gp, -1859
                  lui          t5, 143195
                  slti         s7, a2, -1798
                  beq          s11, zero, 937f
                  nop
                  srli         gp, ra, 12
937:              sltu         t0, s1, s11
                  srai         zero, gp, 11
939:              nop
                  sll          zero, t0, a2
                  and          tp, s5, s4
                  and          s2, s8, a3
                  sltiu        zero, ra, -663
                  and          s2, a2, t1
                  bgeu         tp, t4, 946f
946:              srai         t4, s1, 3
                  slti         zero, s2, -1576
                  sub          s11, gp, sp
                  slti         t5, a7, -1690
                  sub          a6, t1, s1
                  and          a7, s10, a7
                  sll          s4, s9, a2
                  slt          t6, a5, s0
                  auipc        s5, 378220
                  bltu         s5, ra, 967f
                  ori          t0, s2, 124
                  nop
                  xori         a5, a1, -1454
                  slli         s2, s3, 21
                  andi         a3, t3, 1012
                  auipc        s0, 75983
                  slli         t5, a5, 15
                  srli         s9, t5, 11
                  auipc        gp, 644728
                  and          s5, s10, s7
                  and          s2, a2, a5
967:              sub          ra, a5, s4
                  auipc        t0, 410788
                  slt          s4, s7, zero
                  srl          s7, a1, s4
                  lui          s4, 896817
                  add          gp, gp, t3
                  lui          s8, 930647
                  sra          a3, s4, a5
                  slti         t1, t0, -1199
                  lui          a6, 400551
                  slt          gp, t3, t5
                  sra          gp, a5, a7
                  sltu         a6, t2, t3
                  xori         t4, tp, 256
                  nop
                  sub          s1, a6, a0
                  or           s11, s6, ra
                  sll          t1, s4, a0
                  srai         tp, s5, 23
                  slt          a2, s6, a3
                  slli         s6, t4, 30
                  srai         t0, s8, 26
                  blt          t3, s11, 1005f
                  and          s11, t6, t6
                  addi         s1, s0, 842
                  and          s8, s0, s11
                  sltu         s0, a5, t1
                  nop
                  auipc        t5, 122062
                  slti         s11, t3, -1218
                  slti         a5, t3, 75
                  andi         a6, sp, 980
                  auipc        s9, 344056
                  add          sp, s1, zero
                  andi         s4, a3, -271
                  bgeu         a1, t0, 1017f
                  srl          tp, ra, s1
                  xori         t5, a3, -282
1005:             bne          t5, t2, 1022f
                  srl          s8, s9, sp
                  xori         s9, s2, 1273
                  nop
                  sub          t2, a1, t4
                  addi         a7, ra, 1815
                  srl          s9, t4, a0
                  lui          s9, 353601
                  srai         a1, a3, 7
                  sub          s0, sp, t0
                  srl          s9, s1, s6
                  bltu         a4, a0, 1033f
1017:             srai         s9, s8, 13
                  sra          a0, s10, s5
                  xor          gp, t0, a5
                  blt          a4, a3, 1028f
                  slli         s11, s8, 23
1022:             sub          tp, s0, a2
                  sll          s10, a1, a6
                  add          s0, s7, ra
                  slli         tp, t5, 19
                  xor          s2, s7, ra
                  srl          a6, s4, a0
1028:             xori         s2, a1, 1675
                  srai         a5, t3, 27
                  xori         a3, s5, -1889
                  add          a2, t1, ra
                  and          s8, s6, a1
1033:             sltu         s6, a4, s3
                  bge          s6, a3, 1051f
                  bge          s1, s5, 1039f
                  sltu         zero, a0, s8
                  sltu         a5, t0, s7
                  bge          a3, s9, 1042f
1039:             bne          a3, a6, 1046f
                  xor          a6, a3, a3
                  srai         ra, t0, 0
1042:             nop
                  xor          a0, s6, t2
                  sltiu        a7, s10, -547
                  ori          a6, t4, 996
1046:             add          s9, s9, zero
                  bne          s7, tp, 1064f
                  bne          t1, s6, 1063f
                  sll          sp, s11, t5
                  add          a1, t2, a5
1051:             slt          a5, ra, s3
                  srl          a3, t0, a6
                  xor          s6, a4, ra
                  slli         s0, t2, 31
                  andi         a7, a5, -1942
                  addi         s11, s9, -1864
                  nop
                  add          a3, a4, s7
                  addi         a0, s3, 1304
                  bltu         t4, s11, 1070f
                  beq          t1, s7, 1081f
                  bltu         s5, a7, 1072f
1063:             and          a6, s7, t0
1064:             or           a5, a6, s8
                  nop
                  bgeu         a6, s8, 1076f
                  addi         t2, a6, -645
                  add          s6, gp, a7
                  bge          t6, s10, 1081f
1070:             sub          a5, a7, gp
                  bge          s6, s10, 1074f
1072:             bltu         s2, a1, 1075f
                  sltu         s8, t1, t2
1074:             slti         s6, t0, 681
1075:             slli         a2, s2, 13
1076:             bge          t1, t0, 1077f
1077:             and          t2, s2, gp
                  or           a5, s4, a4
                  ori          a5, ra, 554
                  bltu         s10, s0, 1091f
1081:             andi         t0, t6, -987
                  xor          t2, t1, t4
                  slt          tp, t6, a1
                  lui          t6, 963376
                  srli         s9, t3, 10
                  auipc        s8, 461727
                  addi         t6, s6, -1318
                  nop
                  xori         a2, s5, -123
                  or           t5, tp, s10
1091:             xor          s10, t0, a3
                  slli         t2, a0, 26
                  or           s7, s0, t3
                  addi         a0, t1, -1150
                  bltu         a1, a1, 1110f
                  sll          t1, sp, zero
                  bgeu         t5, t2, 1115f
                  add          ra, tp, t1
                  xor          a3, a0, a3
                  bltu         a6, s7, 1115f
                  sub          t1, s1, s7
                  bgeu         s8, a6, 1122f
                  or           t6, zero, s4
                  srl          a3, s3, s8
                  andi         zero, a6, -1100
                  auipc        s7, 100347
                  addi         s8, t0, 440
                  slli         s9, s7, 4
                  and          s1, s11, gp
1110:             and          t6, a1, s10
                  slt          a0, s6, a6
                  srli         s8, s5, 17
                  blt          t1, t5, 1122f
                  slli         t2, sp, 10
1115:             and          t2, zero, t3
                  xori         zero, s9, 1545
                  slti         s7, s4, 1095
                  srli         t6, s10, 14
                  or           zero, a1, t4
                  bne          s8, s4, 1140f
                  sltiu        s1, sp, -833
1122:             slli         t4, s4, 23
                  sltiu        a1, a1, 1028
                  bge          s2, sp, 1135f
                  sub          s2, a0, t2
                  slt          t2, sp, a1
                  bltu         t1, s11, 1131f
                  add          s6, t1, t4
                  auipc        s11, 69620
                  sub          s2, s8, t1
1131:             or           s4, t0, s6
                  blt          t3, t3, 1135f
                  bge          a1, t4, 1149f
                  addi         zero, s6, 339
1135:             andi         a1, t4, -20
                  xor          t4, zero, t2
                  bne          t3, s6, 1157f
                  bltu         s5, s3, 1150f
                  sra          t6, a2, s8
1140:             addi         s7, a4, -757
                  addi         t2, s0, -341
                  srli         a2, a3, 6
                  sltu         s7, a1, s8
                  xor          a6, tp, s3
                  auipc        t0, 593889
                  beq          sp, a1, 1164f
                  bgeu         s5, t0, 1164f
                  or           s0, s5, t6
1149:             sltu         s9, a3, s11
1150:             bgeu         t3, t6, 1167f
                  xor          a3, t1, tp
                  srl          zero, s6, s0
                  sub          tp, s4, t4
                  bgeu         zero, a0, 1157f
                  andi         t0, a6, -147
                  nop
1157:             srai         tp, t2, 16
                  srli         s10, t6, 24
                  bne          tp, s2, 1160f
1160:             lui          t0, 959852
                  sltiu        s5, t6, 1696
                  slli         t1, t3, 15
                  beq          s5, ra, 1173f
1164:             auipc        a0, 505918
                  sll          a2, s2, tp
                  xori         zero, t5, 1920
1167:             sltu         s10, ra, a7
                  bgeu         s0, t3, 1188f
                  srl          s7, s0, a7
                  lui          s6, 526413
                  lui          t2, 682439
                  beq          s9, t2, 1175f
1173:             andi         s0, tp, 905
                  bge          s7, a1, 1182f
1175:             addi         s9, ra, -912
                  blt          a6, s0, 1190f
                  sub          a5, t1, t3
                  nop
                  xori         s0, a0, -595
                  sltiu        tp, zero, 834
                  slt          s1, s3, ra
1182:             sll          a5, a3, t3
                  and          a7, ra, s7
                  addi         s1, s3, -1671
                  bne          a4, a2, 1202f
                  auipc        ra, 591156
                  bne          a7, ra, 1202f
1188:             slt          a2, s11, a4
                  bne          s6, t6, 1209f
1190:             srai         s8, a1, 6
                  sltiu        s10, tp, -957
                  ori          tp, t6, 6
                  sub          ra, a5, sp
                  slt          gp, s10, t1
                  xori         s1, t6, -1806
                  beq          a6, a6, 1206f
                  bge          t1, s0, 1212f
                  slti         s2, zero, 1384
                  xor          a3, gp, sp
                  sll          s0, s2, s1
                  srli         a5, gp, 22
1202:             andi         s2, s0, -1295
                  addi         s6, a6, 1736
                  add          s6, s8, s1
                  auipc        a6, 352351
1206:             slti         s5, s3, -634
                  ori          a5, t0, 1474
                  srl          s8, a2, s6
1209:             srai         s1, t0, 18
                  andi         tp, t2, 1803
                  bge          a3, a5, 1228f
1212:             sub          s6, s0, s4
                  bne          gp, t4, 1214f
1214:             slti         t1, s10, 1513
                  addi         gp, a4, -1525
                  slti         t4, a1, 137
                  add          a2, t0, s2
                  nop
                  srl          tp, s8, a4
                  andi         a5, a5, 445
                  sltu         zero, a5, a6
                  bgeu         s7, a4, 1234f
                  or           s10, t1, a2
                  beq          s8, sp, 1234f
                  srai         ra, t0, 27
sub_3_5:          jal          t1, 4f
0:                jal          sp, 12f
1:                jal          tp, 8f
2:                jal          ra, 11f
3:                jal          ra, 9f
4:                jal          t1, 0b
5:                jal          ra, 1b
6:                jal          t1, 5b
7:                jal          t4, 10f
8:                jal          t1, 2b
9:                jal          ra, 13f
10:               jal          t1, 6b
11:               jal          ra, 3b
12:               jal          ra, 14f
13:               jal          ra, 15f
14:               jal          ra, 7b
15:               slli         s1, a4, 20
                  bltu         sp, a5, 1230f
                  xori         s11, a7, -1401
1228:             bge          t5, t6, 1243f
                  slli         t6, s1, 0
1230:             xor          gp, t5, s7
                  bne          sp, a6, 1246f
                  add          s1, s3, t3
                  slli         a6, gp, 1
1234:             slli         s8, a6, 22
                  blt          a2, a4, 1244f
                  sll          s10, s8, t4
                  and          t6, s7, t0
                  add          ra, s11, a6
                  blt          s7, a6, 1246f
                  andi         s7, s7, -139
                  slti         t2, t3, -710
                  xor          s4, s3, t4
1243:             sltiu        gp, s2, -1311
1244:             srli         t0, s7, 21
                  bge          s2, t2, 1254f
1246:             slli         sp, a3, 29
                  srli         a5, t0, 4
                  sub          t2, a0, s3
                  addi         sp, s6, 997
                  or           a2, s9, s9
                  lui          s6, 342158
                  bne          s5, s6, 1268f
                  ori          a2, s6, -1108
1254:             ori          s2, t1, 2042
                  srai         s11, ra, 29
                  and          t4, s0, t1
                  bltu         a3, a1, 1275f
                  srai         a7, a0, 14
                  sltiu        s4, ra, 591
                  bltu         a5, gp, 1264f
                  slli         t1, s0, 22
                  addi         t1, s2, -943
                  add          a6, gp, s7
1264:             sltu         s11, a3, s6
                  sll          s1, s10, a4
                  blt          a7, s0, 1267f
1267:             xor          a3, s1, s3
1268:             andi         s6, t5, -66
                  slt          t0, s6, s7
                  addi         t5, s2, 1446
                  slt          s9, t0, a4
                  bge          s3, a0, 1287f
                  lui          s0, 129567
                  sltiu        s8, tp, 1756
1275:             sltu         tp, ra, tp
                  add          a2, s8, a2
                  sltiu        s1, t4, -64
                  sra          s4, s5, s0
                  srl          t4, s0, s9
                  beq          s11, sp, 1283f
                  bltu         s1, gp, 1284f
                  slt          gp, s2, a7
1283:             lui          a6, 32533
1284:             sll          a1, s0, s3
                  nop
                  sub          a2, t0, s1
1287:             slti         s9, a0, 1490
                  srli         a3, s8, 4
                  beq          t1, a5, 1296f
                  srai         t0, s9, 7
                  ori          a0, sp, -92
                  bge          t2, s4, 1309f
                  bne          a0, tp, 1296f
                  sltu         t2, a6, a3
                  slli         s2, tp, 23
1296:             sub          s4, a0, gp
                  srai         ra, s1, 7
                  xori         s4, s7, 907
                  bltu         s2, s5, 1311f
                  and          s6, s5, gp
                  sltu         s5, a2, a3
                  srli         zero, s6, 19
                  add          tp, s7, s3
                  ori          s5, gp, -1276
                  srli         t6, ra, 31
                  add          s4, t4, s1
                  xor          s8, sp, t3
                  add          t0, sp, t1
1309:             and          s6, t4, gp
                  slti         s1, s1, -457
1311:             add          t1, s5, gp
                  ori          a7, a4, 1454
                  lui          ra, 944802
                  srl          s6, a7, tp
                  sra          s8, t6, s8
                  srai         t2, a3, 19
                  bne          s1, a6, 1321f
                  xor          zero, sp, a6
                  bgeu         s6, s9, 1327f
                  sltiu        s7, a1, -1645
1321:             xori         t1, s8, -1239
                  srl          s11, t0, a4
                  or           s1, t1, s7
                  xori         t6, t0, 933
                  sub          a5, a2, a6
                  sra          s6, a7, s5
1327:             addi         t2, a1, -691
                  bne          a3, s4, 1343f
                  blt          s4, s6, 1346f
                  nop
                  slt          s0, t3, s10
                  srl          a7, t1, s4
                  sub          t2, gp, t5
                  sll          s5, t5, t4
                  bgeu         sp, a7, 1336f
1336:             sub          a6, ra, tp
                  bgeu         t5, a3, 1357f
                  or           a7, s3, s10
                  sltu         a0, a6, a6
                  sltiu        zero, a2, 1409
                  sub          s7, t1, s11
                  andi         a6, t3, 953
1343:             bgeu         t6, s1, 1353f
                  andi         s8, s2, -493
                  lui          tp, 948712
1346:             xor          t6, s1, gp
                  bge          gp, t3, 1364f
                  slti         s10, gp, -176
                  srai         a5, s8, 31
                  srl          a6, a4, s8
                  lui          a1, 459739
                  addi         t4, a5, 1861
1353:             ori          a7, a1, 510
                  andi         a3, ra, -949
                  sll          s0, s8, a5
                  sll          t6, t1, a2
1357:             sltu         t6, sp, t4
                  beq          s9, ra, 1373f
                  add          s11, a4, a4
                  ori          s6, s4, 1619
                  sra          s1, ra, a6
                  lui          s2, 1025592
                  ori          tp, tp, -1708
1364:             slli         t0, t2, 1
                  bne          a5, ra, 1375f
                  xori         a5, a3, -1834
                  ori          t4, s11, -283
                  ori          gp, t5, 860
                  sra          a1, s3, s8
                  slt          t1, a7, s8
                  beq          t5, tp, 1385f
                  bge          a5, zero, 1392f
1373:             auipc        s7, 388321
                  sll          s0, s3, gp
1375:             slt          sp, a3, a1
                  andi         a5, t1, -216
                  nop
                  andi         t0, a6, 1645
                  nop
                  auipc        tp, 16920
                  sub          tp, s8, tp
                  sra          s11, zero, zero
                  andi         a7, t4, 542
                  sll          a7, t3, s10
1385:             srai         sp, a1, 18
                  blt          t6, a4, 1406f
                  sra          a2, s8, s0
                  bltu         t1, s7, 1399f
                  andi         a3, t5, -509
                  sltu         s7, s6, s8
                  ori          s8, a4, 1308
1392:             blt          a3, s2, 1407f
                  srl          s7, sp, s9
                  srli         a6, s9, 20
                  or           s4, s0, t5
                  srli         s5, a1, 25
sub_3_27:         jal          t1, 21f
0:                jal          a1, 22f
1:                jal          t1, 18f
2:                jal          t1, 12f
3:                jal          s0, 5f
4:                jal          ra, 17f
5:                jal          s2, 19f
6:                jal          ra, 4b
7:                jal          ra, 26f
8:                jal          t1, 20f
9:                jal          ra, 25f
10:               jal          ra, 8b
11:               jal          gp, 6b
12:               jal          ra, 14f
13:               jal          ra, 11b
14:               jal          ra, 10b
15:               jal          ra, 27f
16:               jal          ra, 7b
17:               jal          a2, 9b
18:               jal          s9, 15b
19:               jal          ra, 0b
20:               jal          ra, 3b
21:               jal          ra, 13b
22:               jal          ra, 23f
23:               jal          s8, 1b
24:               jal          t1, 16b
25:               jal          t4, 24b
26:               jal          t1, 2b
27:               xor          a3, ra, t3
                  sub          a1, gp, s3
                  bltu         t4, a4, 1408f
1399:             or           t4, s3, s6
                  addi         s2, t0, -1853
                  slli         t4, s8, 19
                  and          s1, s6, gp
                  srli         t1, t2, 21
                  nop
                  slti         a6, a4, -1565
1406:             bne          s6, a5, 1418f
1407:             ori          s11, t6, 1155
1408:             sub          t0, t1, a1
                  ori          t0, s2, -555
                  nop
                  ori          a0, s1, -1132
                  slti         sp, s5, 1576
                  slli         a3, t4, 11
                  or           a5, s3, s10
                  or           s11, a4, gp
                  bgeu         s7, s2, 1433f
                  andi         gp, t6, -892
1418:             xor          s6, t5, s9
                  addi         s8, tp, 280
                  sra          t4, sp, gp
                  auipc        gp, 644110
                  xor          t4, t4, s11
                  bltu         a4, t6, 1426f
                  bltu         s8, a0, 1441f
                  slt          a2, zero, a1
1426:             bge          s8, zero, 1438f
                  xor          s4, gp, sp
                  sltiu        sp, t5, -1199
                  ori          s0, gp, -1504
                  bge          s4, s9, 1447f
                  sub          a0, s4, gp
                  srai         t1, t3, 19
1433:             sltiu        s5, s5, 1644
                  andi         s4, t6, -1813
                  add          t2, s2, a1
                  slti         a2, s0, 491
                  or           s6, t0, tp
1438:             sll          t5, t4, s1
                  nop
                  or           s4, t2, s3
1441:             blt          a2, s9, 1442f
1442:             srai         sp, ra, 7
                  bltu         s0, a3, 1458f
                  bgeu         a2, gp, 1448f
                  slti         s5, gp, -273
                  beq          t6, s4, 1458f
1447:             xori         a7, t2, -720
1448:             and          t0, a6, a1
                  srl          tp, a3, a6
                  bltu         s0, s11, 1458f
                  slti         s6, sp, -1623
                  and          a7, s7, s4
                  ori          s11, a5, 1667
                  blt          a0, s7, 1464f
                  xori         gp, a4, -1459
                  sll          t6, t6, a3
                  auipc        a5, 995568
1458:             xori         a0, t2, -164
                  nop
                  xor          a5, a6, gp
                  bge          a7, t6, 1464f
                  bgeu         s7, ra, 1476f
                  slti         s8, s4, 617
1464:             sra          a3, gp, a1
                  andi         a6, a7, -629
                  and          tp, a3, s1
                  andi         s2, t3, -777
                  slli         t0, t3, 0
                  sub          s6, a2, a6
                  nop
                  blt          sp, t5, 1486f
                  bne          s2, t2, 1479f
                  xor          sp, ra, s7
                  bne          ra, tp, 1485f
                  sub          s4, s1, t1
1476:             slti         s8, s0, -1424
                  srl          s7, s7, ra
                  xor          sp, a7, a0
1479:             xor          gp, a6, s1
                  bltu         zero, s5, 1500f
                  bge          gp, s3, 1491f
                  lui          s10, 22908
                  addi         a1, a6, -2020
                  slli         s1, t3, 3
1485:             blt          a6, a5, 1502f
1486:             lui          s4, 621113
                  addi         a7, a6, 737
                  sll          t4, a6, s0
                  sll          t4, a2, a6
                  sltiu        t2, s11, 1727
1491:             sll          s6, t2, zero
                  srai         t2, s10, 31
                  bltu         s7, a7, 1511f
                  xor          a3, s0, gp
                  lui          s2, 976917
                  addi         a7, t2, 1333
                  andi         zero, sp, -1024
                  slti         t4, a7, 712
                  add          ra, t2, a3
1500:             xor          a2, t4, t1
                  slli         t6, a0, 22
1502:             blt          tp, sp, 1518f
                  add          s11, s0, gp
                  bge          a0, sp, 1519f
                  beq          s7, t4, 1525f
                  srli         s11, s0, 20
                  sub          tp, a6, gp
                  lui          zero, 102466
                  slt          tp, s9, a3
                  srl          a3, a7, s7
1511:             srl          t5, s0, s9
                  ori          t0, t5, -1093
                  addi         t2, gp, 956
                  slt          a1, t3, s7
                  sltiu        s8, s4, 74
                  xor          a2, a2, s10
                  bge          a6, a3, 1537f
1518:             sll          a7, t3, s5
1519:             xor          s10, ra, s6
                  sll          t6, s1, a2
                  lui          t5, 249916
                  ori          t4, a1, -509
                  beq          t4, ra, 1532f
                  slt          s2, t5, a5
1525:             nop
                  blt          a0, s8, 1530f
                  and          s2, a0, s8
                  sub          gp, a2, t0
                  andi         s6, a4, -688
1530:             slt          t1, s4, a5
                  bltu         s1, s8, 1534f
1532:             sltu         a7, t6, s1
                  sub          s9, s0, s0
1534:             srai         a5, gp, 14
                  add          t5, t4, t1
                  addi         tp, t2, -857
1537:             sub          a2, s2, tp
                  xor          s1, t4, ra
                  blt          t0, a7, 1540f
1540:             xor          s5, sp, a4
                  or           a7, s10, s11
                  bne          s9, s5, 1552f
                  sra          a0, t4, s3
                  sub          t0, s11, t2
                  blt          t5, a6, 1560f
                  srl          s10, tp, s8
                  ori          t2, s5, 934
                  addi         a7, t5, -207
                  srl          a7, s6, s7
                  xor          ra, s10, s2
                  slt          s1, a2, gp
1552:             sra          s10, a2, t6
                  ori          a3, t6, 919
                  auipc        tp, 284621
                  add          t4, s11, s6
                  beq          a0, t4, 1573f
                  lui          a3, 329909
                  bltu         a5, t2, 1572f
                  andi         a0, gp, 1351
1560:             xor          s9, s2, a2
                  lui          s0, 52927
                  lui          a5, 709658
                  slti         a1, s10, -591
                  sll          a7, s9, a3
                  srai         s2, a3, 29
                  slt          s0, s3, t3
                  lui          s5, 493418
                  bgeu         zero, a2, 1588f
                  bgeu         s2, a1, 1572f
                  beq          s6, ra, 1581f
                  bltu         s6, s0, 1586f
1572:             xor          s10, s7, gp
1573:             beq          t6, s7, 1583f
                  and          s11, a3, a6
                  xori         zero, t1, -1683
                  slt          s8, a7, a5
                  bgeu         t2, s5, 1581f
                  nop
                  lui          a7, 598136
                  addi         s10, a1, -1203
1581:             andi         a3, t3, 1387
                  bge          s7, t2, 1583f
1583:             srli         s4, t5, 17
                  xori         a1, s2, 724
                  lui          tp, 780781
1586:             bge          t0, s8, 1593f
                  srl          s11, s1, a0
1588:             bgeu         t3, a0, 1589f
1589:             srli         s9, t0, 0
                  ori          a5, a6, -1443
                  xor          s2, t1, ra
                  and          sp, s3, s8
1593:             ori          a6, s3, -1770
                  sra          ra, a5, s9
                  lui          t1, 562034
                  sub          gp, s3, t1
                  lui          s0, 691881
sub_3_2:          jal          t1, 3f
0:                jal          ra, 11f
1:                jal          ra, 4f
2:                jal          a1, 18f
3:                jal          ra, 0b
4:                jal          s0, 15f
5:                jal          t1, 7f
6:                jal          ra, 10f
7:                jal          ra, 12f
8:                jal          t1, 23f
9:                jal          s7, 19f
10:               jal          a6, 17f
11:               jal          gp, 2b
12:               jal          ra, 16f
13:               jal          s8, 8b
14:               jal          t1, 22f
15:               jal          ra, 13b
16:               jal          t1, 9b
17:               jal          a2, 14b
18:               jal          t1, 6b
19:               jal          ra, 1b
20:               jal          s11, 5b
21:               jal          s10, 20b
22:               jal          a2, 21b
23:               auipc        tp, 715227
                  bne          t2, s5, 1615f
                  addi         s11, s11, 1034
                  bgeu         s3, t0, 1620f
                  bne          t2, tp, 1619f
                  lui          s1, 663886
                  slti         s1, s7, 1383
                  slt          t4, t1, zero
                  and          s10, sp, s2
                  bne          s9, ra, 1618f
                  andi         s9, a6, 576
                  lui          a5, 318567
                  sub          a3, a4, t4
                  beq          gp, a4, 1625f
                  sra          t6, s10, s6
                  sltiu        sp, s7, -541
                  bge          s5, sp, 1623f
                  blt          s9, t5, 1622f
1615:             bne          a4, a2, 1632f
                  sra          t5, gp, a0
                  blt          s0, a3, 1637f
1618:             bltu         t1, a1, 1627f
1619:             or           t0, a2, a4
1620:             blt          s11, t1, 1623f
                  andi         tp, s3, -456
1622:             xor          t0, s11, a2
1623:             beq          t1, s9, 1635f
                  bne          s8, a0, 1641f
1625:             and          s1, a5, t2
                  blt          t6, s10, 1641f
1627:             slli         t5, t3, 5
                  bltu         s10, t1, 1632f
                  srl          s6, s2, t3
                  and          t2, s5, s7
                  blt          a2, ra, 1646f
1632:             sra          s6, a4, a5
                  blt          t4, s10, 1643f
                  slt          t1, s7, s5
1635:             add          s11, s10, t2
                  srl          s10, s3, a0
1637:             bge          a0, t2, 1640f
                  slti         s9, s6, 618
                  auipc        a0, 212589
1640:             sltu         a2, a0, s11
1641:             andi         a6, a0, 1450
                  xori         a0, s10, -1616
1643:             bne          a6, s5, 1659f
                  sub          tp, s6, ra
                  bne          t5, t0, 1662f
1646:             sub          s9, s5, s11
                  sra          s8, tp, s1
                  lui          tp, 447756
                  slti         s11, a5, 934
                  sltiu        sp, t5, 1126
                  sra          sp, a1, ra
                  xor          s7, a3, t4
                  blt          sp, t2, 1668f
                  beq          s0, s7, 1671f
                  slti         s10, tp, -1971
                  bge          tp, s5, 1657f
1657:             slti         a2, ra, 853
                  ori          s7, s7, 1195
1659:             slt          s9, a3, t0
                  nop
                  ori          a6, t2, -1980
1662:             beq          t0, a7, 1682f
                  blt          ra, s3, 1680f
                  sltu         a7, t0, s10
                  nop
                  srl          a2, a1, s6
                  sra          t4, s2, s8
1668:             sra          s0, t5, s10
                  nop
                  slli         t0, s1, 29
1671:             add          s8, t0, s8
                  slt          a5, t2, a6
                  bgeu         ra, sp, 1677f
                  sra          a2, t4, a5
                  or           t5, t6, s11
                  xori         s11, a7, 1816
1677:             sltiu        s9, s10, 638
                  xori         t6, t3, -397
                  xori         s11, s1, -1944
1680:             xor          a7, s8, a1
                  srl          s11, s6, s0
1682:             srl          t2, a3, t0
                  bltu         a4, t1, 1690f
                  nop
                  lui          t5, 799426
                  sltiu        a3, t2, 395
                  or           gp, t1, a0
                  xor          s2, t5, s10
                  sltiu        a1, s9, -537
1690:             slli         s6, a6, 27
                  sltu         s11, tp, t6
                  bne          sp, t5, 1699f
                  xori         s7, t0, -87
                  blt          s7, t1, 1699f
                  srai         t1, s6, 4
                  lui          s5, 566478
                  bltu         t6, a5, 1699f
                  sub          a5, a2, s7
1699:             srai         s5, a5, 9
                  and          a2, s0, t4
                  and          s4, s7, tp
                  slli         t5, s3, 8
                  lw           t1, 4(t3)
                  addi         t3, t3, 24
                  or           s2, s1, s8
                  sll          tp, a0, t0
                  srai         t6, a7, 11
                  ori          a5, s6, 139
2511:             addi x24, x6, 0
2511:             jalr x24, x24, 0
sub_5:            or           s2, t4, t3
                  addi         t3, t3, -40
                  addi         s11, s10, 24
                  slt          a3, a1, t2
                  nop
                  sw           t1, 4(t3)
                  lui          t6, 217904
sub_5_0:          jal          t1, 9f
0:                jal          a1, 10f
1:                jal          ra, 23f
2:                jal          s6, 0b
3:                jal          t1, 12f
4:                jal          s10, 20f
5:                jal          ra, 2b
6:                jal          s11, 3b
7:                jal          s9, 18f
8:                jal          t1, 14f
9:                jal          ra, 17f
10:               jal          t5, 21f
11:               jal          ra, 22f
12:               jal          ra, 19f
13:               jal          t1, 25f
14:               jal          t1, 6b
15:               jal          t0, 16f
16:               jal          s5, 11b
17:               jal          ra, 1b
18:               jal          gp, 4b
19:               jal          ra, 15b
20:               jal          ra, 8b
21:               jal          t1, 13b
22:               jal          t1, 24f
23:               jal          t1, 7b
24:               jal          t1, 5b
25:               srli         ra, tp, 10
                  ori          s11, zero, -836
                  bne          sp, s10, 2f
2:                or           t0, s4, a5
                  srai         a2, s2, 15
                  and          s6, s0, gp
                  lui          s0, 776693
                  sltu         t1, s0, s9
                  srli         a2, s9, 30
                  sltu         t0, s1, s3
                  blt          a6, sp, 24f
                  lui          s1, 120232
                  sra          a7, ra, t6
                  bltu         s10, zero, 27f
                  sub          t5, tp, s3
                  ori          s8, t5, -979
                  add          s9, s10, ra
                  srl          s11, s9, a1
                  nop
                  srli         s7, t5, 21
                  lui          t1, 682733
                  lui          gp, 359887
                  xori         a2, s5, -1668
                  sra          sp, t5, s2
                  bltu         zero, t6, 42f
24:               slti         a3, s11, 1933
                  ori          a3, t4, -664
                  bltu         zero, zero, 46f
27:               srl          t2, s7, s10
                  ori          gp, s7, -1841
                  bne          t4, t1, 43f
                  bltu         s4, s1, 38f
                  sltu         sp, a3, a3
                  bgeu         t4, s0, 39f
                  slli         a6, zero, 13
                  beq          t3, t0, 36f
                  or           gp, s4, s11
36:               bne          a2, s7, 39f
                  andi         zero, s0, -822
38:               xori         s6, zero, 297
39:               slli         gp, t6, 10
                  addi         t5, t5, -322
                  xori         s9, sp, -1840
42:               sltu         s5, s10, s7
43:               lui          gp, 852613
                  auipc        s8, 209284
                  sltiu        t0, s4, 1995
46:               slli         sp, a3, 7
                  sub          s0, s6, a7
                  sra          s11, sp, s4
                  lui          a1, 548034
                  sltu         s7, t0, a4
                  srai         a7, s11, 24
                  bne          s3, s6, 62f
                  bltu         s3, t3, 58f
                  sltu         ra, a0, a3
                  nop
                  srli         t6, a4, 16
                  lui          t1, 211310
58:               sll          s7, a4, a0
                  srai         t4, t6, 26
                  sra          s4, sp, s5
                  lui          s8, 629696
62:               lui          s5, 864157
                  or           s8, s11, t2
                  auipc        s9, 504491
                  bgeu         ra, a4, 67f
                  slli         a1, t5, 17
67:               sltiu        s9, sp, 318
                  slti         t0, t0, 384
                  sll          s6, s4, s10
                  lw           t1, 4(t3)
                  slt          a0, t1, a1
                  sll          s7, a6, s1
                  addi         t3, t3, 40
                  lui          t2, 989195
                  nop
                  nop
                  addi         t5, t3, 1359
                  add          a1, t6, s3
113:              addi x26, x6, 0
113:              jalr x26, x26, 0
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
.word 0x2b386f6d, 0x0f80e601, 0xff4fbdca, 0x3a76cb2a, 0x858ecd98, 0x27260adb, 0x5558e4dc, 0x37e22e38
.word 0x9095fdcf, 0x7794d355, 0xa76f9300, 0x9c14cc34, 0xfc627d6b, 0x09b4f6dc, 0x21d3029c, 0x11263694
.word 0xaf9d3cbb, 0x2017caba, 0xcbae6183, 0xa8aadeaa, 0xe4cafe28, 0xd3032916, 0xbe122392, 0xfce364b6
.word 0xed7d944b, 0xcfcf374e, 0x19ba268e, 0xc5ca105a, 0x5c0c502d, 0xd6dc650c, 0x06a06c2d, 0xb3d127c2
.word 0x1bc857a0, 0xae10fcf7, 0x04871ac7, 0x345eb99d, 0x5136ab55, 0xc4686a09, 0x5d2fbeee, 0xd9d1d504
.word 0x55b6f190, 0xbbf6de52, 0x8ffa7bcc, 0x820cf747, 0x5231346a, 0xfa289ff6, 0xc5e584d5, 0xcf8e09f2
.word 0x145bc66b, 0x26c94231, 0x95afba5a, 0x596345b4, 0x8ac57dd3, 0xcc5b97da, 0xffbfad96, 0xb5800283
.word 0xa4110bdd, 0x6c3fe136, 0x38c117a7, 0x3fbba85b, 0xd23ad326, 0x948d4259, 0x0f6d5cb8, 0xa95f478d
.word 0x4fc81388, 0xffbddab2, 0xb1722440, 0x4f815e74, 0xbcbaf873, 0x9c4aa6bd, 0x704e3d68, 0x34295fc4
.word 0xd455cd73, 0x5f8b8a21, 0x71f2403b, 0x0127bd8b, 0x678c0072, 0x92cb2587, 0x88796b8e, 0x70d330fd
.word 0x3005ec62, 0xd34fe673, 0xa0d96481, 0x86ac5687, 0x3fcb5b00, 0xd26d2417, 0x5a21d7a7, 0xe17b0a93
.word 0x9ce3b2b5, 0xb99d231c, 0x3e194da0, 0x10fc1478, 0xd7764160, 0xbce0f96a, 0x674ab1d4, 0x90f4f6de
.word 0xb470a924, 0x7c80895d, 0xe2029090, 0x6f7409bb, 0x269b5f12, 0x10a62269, 0xf45bea28, 0x41320271
.word 0x84b0163b, 0x15fa3a42, 0x2fd47c04, 0xf61184b7, 0x19469a2f, 0x89c77183, 0x65843644, 0xe0c9c121
.word 0x946ed097, 0xced57451, 0x55044b4b, 0x71732251, 0x295dc047, 0xa21dc573, 0x1dd8c992, 0xb867d032
.word 0x3dd4e967, 0xe46d3941, 0x2cb72ec7, 0x3ace7ef7, 0x364f8d53, 0xe93403fe, 0x4729a4ab, 0x0ca0f72c
.word 0xb160a0bf, 0x558fb3cc, 0xa2616e09, 0x566c9460, 0x2cbd3dca, 0xb58ca2b3, 0x5640f962, 0x6e35ae6f
.word 0x6e3e6633, 0x93003644, 0xb2eb4cdd, 0xb81e3467, 0xfb58cbfb, 0x43bb8900, 0xf603fcdc, 0xa679b1f1
.word 0xbd0bb21f, 0x64b0d710, 0xe931e4ce, 0x5b670ba6, 0x5c8cf3fa, 0xc85e9da6, 0x7d0ddd6f, 0x75363657
.word 0x6a0850a4, 0x63c45834, 0x3b005e69, 0x5bb163a3, 0x0a5641e3, 0xc0e43624, 0xf921100b, 0xded93fdf
.word 0x6b98bd5e, 0x19e59333, 0xd6713a2a, 0x7133f0fe, 0x6f87e32b, 0x47086ac0, 0xbf5cfd33, 0xd576a659
.word 0x934da77d, 0x083e5ecd, 0x0619dd9c, 0x021c1d9c, 0xef53274e, 0xc223936b, 0x18986cae, 0x39db3367
.word 0x443dcbac, 0x034dcb80, 0x359402b7, 0x200f1587, 0xb8139f73, 0x931c4063, 0x0ddd7b40, 0x1f7cf0e7
.word 0x2e02ff7b, 0x61425163, 0xb8144567, 0xa5953dae, 0x62421e35, 0x4711a06a, 0x25146a98, 0x6aba2f5d
.word 0xa8458ec7, 0x2dd9928b, 0x041a6460, 0xcb177d55, 0x9f63c8b9, 0xe1c70cf8, 0xcd486ebe, 0x980ca9c3
.word 0xe3ee6cf2, 0xa210a41b, 0xbb505c46, 0x21698c74, 0x573514e3, 0x02889a76, 0x44e3bbdc, 0x0add0437
.word 0xe61d5e03, 0x9bd470aa, 0x7348fb63, 0xe596fa2f, 0x1f26fa7b, 0x4907de1e, 0x40a674c7, 0x38208a1c
.word 0x757427fa, 0x1c1cf09e, 0x09000079, 0xb9aeb86f, 0xe0983d30, 0x8b362163, 0x11e6b3ce, 0xfc59b887
.word 0x69e0ef85, 0x6f7aac47, 0x3aa5786e, 0xac127cc8, 0x80e6d071, 0x1e84268d, 0xc15dcfd2, 0x3fb01d84
.word 0xc4d905aa, 0x4875ac03, 0xcb04c8d1, 0x7dd1fb51, 0x27fc7e4b, 0x4066f107, 0x73290f5c, 0xe336a0ee
.word 0xfe56b6d1, 0x3df9bbef, 0xa5f39ecd, 0x10f7b6c0, 0x88d320a7, 0xfd546338, 0xe77bf60d, 0xa765c7e1
.word 0xdbd78b43, 0x6e85b3f4, 0x28661856, 0xdab484ce, 0x541bce29, 0x162c1d86, 0xa8b628b3, 0x85d422e8
.word 0x573ca5ab, 0xdac0c976, 0x572d7c3e, 0xaa1a1e0e, 0xa6e42b9c, 0x32c507ea, 0x37b2e32b, 0x7a17a943
.word 0x1061407f, 0x12e9ca40, 0x954819e2, 0xa7658dc6, 0xad3cd9bc, 0x6a509364, 0x76e41976, 0x8b5e35e2
.word 0xffb4f880, 0x27853276, 0x38568b05, 0xfb0652cc, 0xcca08634, 0xdc18ed5a, 0x64b07230, 0xc7f13d57
.word 0x2a2772b9, 0x18edec49, 0x6817fdbb, 0x6cfdf17a, 0xdaf0cd77, 0x5fcb76fb, 0x59b99a26, 0xe54749e2
.word 0x59983d8f, 0x340285d3, 0xed0f592c, 0x43b27e4c, 0xfbba4e8b, 0x7c20f3ed, 0x9f8bffe7, 0x127997e2
.word 0x5a4150a3, 0x51b31d46, 0xe99d4dad, 0x18725ebe, 0x3501cb65, 0x645b8324, 0x5b0393aa, 0x2b5bf1c6
.word 0xf93437ad, 0x144d0958, 0x29d28787, 0xf9de4285, 0x6393be6b, 0x074c2220, 0x06ae2891, 0xa1630dd7
.word 0x0b0b7e46, 0x317ccba0, 0x5e633073, 0x55f4270d, 0x913ae012, 0x99d6d384, 0x56247bb9, 0x88dd39be
.word 0xc188d6c3, 0xb4c9ceae, 0x5828244c, 0x97287529, 0x1d83f7ce, 0x77748879, 0x3e20198e, 0xa9f15cb8
.word 0xc58cc65c, 0x8d41be25, 0x6982fd52, 0x13b811de, 0xf7789443, 0x1d20c9de, 0x6281e041, 0x76a14571
.word 0x0845414e, 0x5f8f18df, 0x60562c07, 0x49d9a5ee, 0xb832ba53, 0xd4f23674, 0x2de56a2a, 0x87403fe6
.word 0x79e86394, 0xa0ddf30c, 0x58e40ce8, 0xb8d295bf, 0x8a224142, 0x92095049, 0x07b14f9d, 0x491eea3b
.word 0xdf8d0e5d, 0x1f5de6c9, 0x0678112d, 0xd23b14a3, 0x640a24fe, 0x15ee36e8, 0xad9df2ef, 0x018d5bcd
.word 0xde937b9b, 0x83ac2171, 0x18e27032, 0x57787a84, 0x0f2787d1, 0x89d696bb, 0x7a1636ef, 0xf61b20bb
.word 0xfe27e53c, 0xe0a4fbdd, 0x91ff5651, 0xa47d93f1, 0x7154a944, 0xa23117d0, 0x16e47fc7, 0x3f488d34
.word 0xc719ef41, 0x1a3b6cd2, 0x804463fe, 0x4962a40f, 0x0c5d2e5d, 0x6d2c47f2, 0xc6713623, 0x0d296052
.word 0x3962fe7e, 0x3bc816bb, 0x227812f4, 0xa1ea1aa4, 0xe8e31a7c, 0x7210fb98, 0x87b9d4cb, 0xabdfd362
.word 0x365d4fa1, 0x79d7f114, 0xfb4b736f, 0x7195f6ba, 0x82e79e68, 0x58ef40f1, 0xb3cd51fa, 0x367a899d
.word 0xae1be810, 0xdf338283, 0x616d5175, 0x86a025a1, 0x5971e625, 0x7d4d291e, 0xd729d96e, 0x43dad440
.word 0x3cc824c1, 0xfcba29e3, 0xf5b44d68, 0x1b90d044, 0x871e85a4, 0xe8f48a51, 0xe18aa461, 0x38e8fd72
.word 0xc04da60a, 0xfd0a16d5, 0x1ac33f93, 0x0f86997a, 0x5d23ef5b, 0x43e693b9, 0x6a2c2cd7, 0x6b2b6fd6
.word 0x871ef69c, 0xff620f00, 0x6115ea80, 0xea6dd462, 0x6d604388, 0xa865aab2, 0xc545bd84, 0x9004f933
.word 0x6435dfbb, 0x431b8c71, 0x6ac7a430, 0xf0a7701d, 0x70aef5ef, 0x31f7a062, 0xf7e0b0e3, 0x1457eaae
.word 0xd1b0c753, 0x7c22a1db, 0xab63b358, 0x0f1a0597, 0xcc6d9305, 0xc4f78c9a, 0xbc3ae156, 0x99fbb589
.word 0x1ec2fa69, 0x8e8eb49a, 0x7899542d, 0x6cd9a600, 0xb1945763, 0xb9bcb826, 0xb1d9843c, 0x33397d25
.word 0xc8d6598d, 0xc69718a6, 0x5e275b0f, 0x5d654d15, 0xa7516dae, 0xf5c70b21, 0x6f7705b0, 0x815a3892
.word 0x0e83aa9b, 0xc64d8a84, 0x7b397e38, 0x15de2d58, 0xc6285900, 0xfa11ab83, 0x086dc63f, 0x884f781d
.word 0x6e28660d, 0xd61b2922, 0xd87f20cd, 0x6f78cacd, 0x324b9e25, 0xd42e6a37, 0xdfc7171e, 0xa7341c1e
.word 0xe2109e0a, 0xca6597ae, 0x942a044e, 0xa7cae697, 0xe32e44ad, 0xa1921394, 0x8c5df1df, 0x0244054c
.word 0x718f26f2, 0x9a536860, 0x553801d7, 0x35907977, 0xd6692e4f, 0x308ba695, 0x2cb09d54, 0x9ea2acff
.word 0x6b069ff5, 0xe6b43066, 0x41260cf9, 0xe20eb9b3
.section .region_1,"aw",@progbits;
region_1:
.word 0xb3ffa4e5, 0x6b6220c1, 0xa2236a02, 0x7dca3e61, 0x8ea0d1cf, 0xa1704712, 0x20767970, 0x8b9e19ff
.word 0xa27416a6, 0x70df6000, 0xc8672c71, 0x2f0bb180, 0x56fde9b5, 0xe4865050, 0x0b872776, 0xe370a006
.word 0x25fad650, 0x3ff8e0c2, 0x138df97c, 0xc01f79a0, 0x1d761c73, 0x57d84ba8, 0xff56e754, 0x3ba57e7c
.word 0x4d5a9ee5, 0xb2cd4e02, 0xe19277b9, 0x56296c4c, 0x6a7ee481, 0xfe927683, 0x5e0fc727, 0xc51c8be6
.word 0x17c9d710, 0x927faaa4, 0x8bc8ed8e, 0xb0f82c6e, 0x54ea20b3, 0xc4b707e4, 0x157042b1, 0x78ee9a26
.word 0x7e6daeec, 0xdf744cb2, 0x0fee71e0, 0x89b8d480, 0x82b2fa45, 0xc6e5ba54, 0xa9ad1a12, 0x02e3e173
.word 0x6f21691e, 0x4d5ed182, 0x903be6ae, 0xdba8f8c0, 0x4c80d965, 0xc11678e1, 0xf3ea99ca, 0xac27f7bf
.word 0x9966e760, 0x1cfc102b, 0x2e89aeda, 0xf1b1cec5, 0x158a09a3, 0x29f27781, 0xdd3de5e9, 0xd62ed47a
.word 0x52c6e059, 0x5647b98d, 0xf7312ccc, 0xa6a1f9e9, 0x97e8f55b, 0x58711343, 0x2534b600, 0xd70b2501
.word 0x9af4d18e, 0xac32e4c1, 0x699eab86, 0x8a796617, 0x36430093, 0x8fc6bcd3, 0x442fb5a1, 0x9da63154
.word 0x44d5f083, 0x98fc0b27, 0x35cf6f4e, 0xee56cd35, 0x03efdf4d, 0xd736fc28, 0xee718fbd, 0x5bffab9d
.word 0xab3047ed, 0x46340106, 0x2b111395, 0x8de13ac0, 0x84bdc1d7, 0xa9fa82db, 0x2155d7f2, 0xa2fa431f
.word 0x4a3b5bf4, 0x326157b3, 0xa392e47d, 0x44377d13, 0x39a3b975, 0x8ffbe7c3, 0x7272ac61, 0x88813c79
.word 0x52e84917, 0xe3d2865c, 0xf37cd961, 0x6f3cb888, 0x5c322bde, 0x97046c20, 0x208d0cfd, 0xf8170194
.word 0x9a956136, 0x50196bde, 0xa243ad04, 0x9f01a566, 0xa569c85c, 0xd9ec4af8, 0xc0d2ae4a, 0x06a77f12
.word 0x2346bee9, 0x51b8e398, 0x74d6e580, 0x801d99ed, 0xcb4e9f46, 0x665c5151, 0x0c07edc3, 0x5257861b
.word 0xb652e621, 0xa4103f3c, 0x7330862a, 0x33b160d0, 0x3612f438, 0xa47e9546, 0x99b919f5, 0xc6f6ead3
.word 0x1e4aafbf, 0xf8c56110, 0xa0920b51, 0x62ab7478, 0xaf57f7f2, 0x2735ca73, 0x7dffcdfb, 0x7875f59e
.word 0xfecbc89b, 0x6d7ae8d9, 0xc62ef51d, 0x7a26dbc1, 0xfd8d9060, 0xaba2010a, 0xbe6f26f9, 0x3a89513c
.word 0x5e28b5a6, 0xe9e1ebcb, 0x17b61bfc, 0x90d46a8b, 0xccacdb9c, 0x558e4ff0, 0xe885017a, 0x80ade8b7
.word 0x0ad8985c, 0xe4b5b190, 0xe10d22f9, 0x8aaef296, 0xe19730c0, 0xed89aa01, 0x8b548ff3, 0x98ac5deb
.word 0xccb8c6a9, 0x52305302, 0xeac3ab8d, 0x503df876, 0x2b28ddf4, 0x5caf9649, 0x4a990612, 0xcd89008f
.word 0x434d7215, 0xead71cd6, 0xd4e13bc8, 0xaa2da43a, 0x683c2b93, 0x8ed3e91b, 0x81726fa3, 0x410ef151
.word 0xf8860e86, 0x9465e125, 0xbb815e90, 0x5222ffdf, 0xd82defa0, 0x9fcee271, 0xfd6655ac, 0x2c2d3543
.word 0xd49fa624, 0x668c9149, 0x7f847d65, 0x3044b2a7, 0xbba29d44, 0xd740904d, 0xd71285c6, 0xda77643e
.word 0x9eb5dc4d, 0xd717a0f8, 0x69a19c13, 0xb676f67d, 0x1eb1f544, 0xcc2cd000, 0x65569c95, 0x82482210
.word 0x1d9357e3, 0xc893014e, 0x23809ec5, 0x073c0116, 0xc4124434, 0x8be3341e, 0xb455f576, 0x75802281
.word 0xd8b4a489, 0xdc585f89, 0x5df525d0, 0xef5b42ba, 0xb86584b4, 0x68a88bd1, 0x57970d77, 0xfb75ed6b
.word 0xc227e702, 0x566301e8, 0x84798750, 0xb6edb70f, 0xce9bb3b2, 0x513963b2, 0xf03c30c3, 0x90614a91
.word 0xad69253a, 0x2de7133b, 0x00946169, 0xcd5611be, 0xd57c3ad5, 0x267ff5af, 0x55f76c45, 0xa3607349
.word 0x937d3f34, 0x6c471c99, 0x322042fc, 0xb467372f, 0xf435d959, 0x83f992c1, 0x26102de5, 0x07da9162
.word 0x0657f790, 0x73ed7ff3, 0x365db80d, 0xfc7ba700, 0x92b35880, 0x35db50f5, 0x1ddb9d36, 0xc9511da0
.word 0x18412ca2, 0xf3ff1862, 0x44d54663, 0xd669984f, 0x1d07ac89, 0x357d6e45, 0xb266c123, 0xebec7d71
.word 0xb4eb3270, 0x73bb7431, 0x9b2b9c28, 0x5aaf9e55, 0x5f6c57c3, 0xfdc0e19b, 0xe57cb714, 0x93ed8211
.word 0xee6c1e90, 0xd9a39ffb, 0x9d595462, 0x754d3c6b, 0x9f00a41b, 0xc03a98c3, 0xf4fb9fad, 0xa11469ed
.word 0x6f93c321, 0xbc098442, 0x683d4ca9, 0xfb0b7d03, 0x5b593b04, 0x92ab8ae3, 0xb7703aee, 0x158ec2de
.word 0x5fdc3240, 0x97278d75, 0x5d4e0777, 0x10945043, 0xe1d1556a, 0x360fcd11, 0xc7de4f2a, 0x92cf2741
.word 0x98e9daf0, 0x743c5024, 0x6fd0ef42, 0x01251a56, 0x9e22c567, 0x2ae31651, 0x0d0cfa36, 0xe4b44e62
.word 0xeab14d75, 0x7e34ff85, 0xbeccfe39, 0x4c436ccc, 0x1a36fae0, 0xdb871e60, 0xb2332e89, 0xbdc85e07
.word 0xf75efecd, 0xf71e203b, 0x2c2e5190, 0x04d331bd, 0x8a2e52d8, 0xe4e36bde, 0xf7b75e59, 0x38fee067
.word 0x77744652, 0x39fa49a8, 0x823b7ce5, 0x40946edb, 0x6911141e, 0x673bd970, 0x1ef18be7, 0xc74e61b0
.word 0xabb3465a, 0xb5811fa5, 0x255f3de0, 0xdbef1a42, 0xc231de00, 0xe51a5b34, 0xa0a77704, 0x3eb3ad3a
.word 0xe4ac4ba8, 0x7a51e366, 0x4b48024b, 0x39413347, 0x3738c1dd, 0xbfec348b, 0x4f0e1b30, 0x08eefa9a
.word 0x9d6e99f3, 0xf7014f57, 0xbb3a4724, 0xc826affc, 0xd41b68e3, 0xa59d9472, 0x8178f00e, 0x929e4ae6
.word 0x59cc3dd5, 0x2735accc, 0xb8e54d39, 0x74ad7270, 0x7950166b, 0x4f839058, 0xe9bd2d2e, 0xf9617d8b
.word 0x1c896405, 0x122d4f0f, 0x763e9ffa, 0x98eef9b3, 0x363276cd, 0xd0867d6b, 0x454e1fe7, 0x36ef6ae2
.word 0x1e624398, 0xdb00863b, 0x0c45c2dc, 0xa764586e, 0xf17bbaf7, 0xb9e62213, 0x9abf3d33, 0x8164cfd2
.word 0x95c2ddfc, 0x31aa358a, 0xfc5a9809, 0xb5e5753f, 0x33bdff0a, 0x2633a2a4, 0x8ab722f6, 0x90878e27
.word 0xfefe2832, 0x8d1f1588, 0x18d68813, 0x3142d73e, 0xc0c64155, 0x950be1cd, 0x12b62ec3, 0xb3962cff
.word 0x9a96955a, 0x544dad9e, 0x3a995119, 0x15d64331, 0x438b9cb7, 0xf8f71bc0, 0x8e023f95, 0xdebc6a4a
.word 0x3bbda57a, 0x0e0c0304, 0xc706a9de, 0x2f1c99ee, 0x9d3e94f2, 0x8636abf3, 0x0ad6ee7b, 0xa91b7a7c
.word 0xf8da1987, 0x47ef22b1, 0xe96abaae, 0x94108d73, 0xe91eb67b, 0x800723de, 0x775172d2, 0x851dcd6f
.word 0xb7e790f5, 0xb6dfd597, 0xac13cc28, 0x0cc7d506, 0xdac5cbaf, 0x71ebffae, 0x67c4a2bd, 0xc3aa5997
.word 0x411d889b, 0x8d314ab1, 0x30cd8213, 0xc5a76c7e, 0x07e770a1, 0xfcdb2b09, 0xe79093a8, 0x89731741
.word 0xb807695e, 0x8bef8457, 0x3f9b4b6e, 0xf305b716, 0xf3adce9d, 0x4d29018c, 0x8bb5ee67, 0xe1d61b98
.word 0x4b825dfc, 0x16163bf4, 0xf4cf0760, 0x33df5997, 0x6ab21a4c, 0x3be0e860, 0x6c43a0d8, 0x2e73274b
.word 0x017a7113, 0xbd65f934, 0x3447acb7, 0x9d151f4d, 0x6c5a812c, 0xdfb345ab, 0xf5800440, 0xbe59a0fc
.word 0x7d27210b, 0x20b014bf, 0x1f188cea, 0xdce97175, 0x46d17ca2, 0xa60ef705, 0xfedf041c, 0x8db2bc2f
.word 0x0678d014, 0xe06c3407, 0x1309e101, 0x16a40c7f, 0xc165871c, 0x7c3378bd, 0xd0824084, 0x83324770
.word 0x9a3766a2, 0xc4e26166, 0x7fbb5a9f, 0x6d2cda02, 0x6894b9e2, 0x3d6da694, 0xa15a16bf, 0x5b611fca
.word 0xfc8f3b47, 0xd0c81a79, 0xecfa2de5, 0xdbdd09db, 0x00c50e39, 0x9bf69fb6, 0x6f0ec946, 0x925a8c32
.word 0x1568ce3d, 0xaef49aee, 0x7266451e, 0xe3f7af80, 0x51912548, 0x1794b883, 0x1e5699b1, 0xe12e1346
.word 0xfca13ba7, 0xb39e2f28, 0xdc9b169b, 0x0523993f
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
                  add x14, x28, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x10, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x10, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x10, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x10, x17, ecall_handler
                  li x17, 0x1
                  beq x10, x17, instr_fault_handler
                  li x17, 0x5
                  beq x10, x17, load_fault_handler
                  li x17, 0x7
                  beq x10, x17, store_fault_handler
                  li x17, 0xc
                  beq x10, x17, pt_fault_handler
                  li x17, 0xd
                  beq x10, x17, pt_fault_handler
                  li x17, 0xf
                  beq x10, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x28, x14, zero
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
                  add x28, x14, zero
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
                  add x28, x14, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x28, x14, zero
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
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x28, x14, zero
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
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x28, x14, zero
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
