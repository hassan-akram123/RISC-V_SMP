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
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 0
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0x5
                  li x1, 0x6f59800c
                  li x2, 0xbd232e47
                  li x3, 0xfb4595dc
                  li x4, 0x0
                  li x5, 0xe
                  li x6, 0x4cec6642
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0xf9b62108
                  li x11, 0x24b75cc
                  li x12, 0xfe68eedd
                  li x13, 0xf894051b
                  li x14, 0x80000000
                  li x16, 0xfc3b176b
                  li x17, 0xfe72b2e7
                  li x18, 0x80000000
                  li x19, 0x27575e3
                  li x20, 0xf0dba27c
                  li x21, 0xc
                  li x22, 0xa0f09b88
                  li x23, 0x0
                  li x24, 0x253a7ca6
                  li x25, 0x9711a1e8
                  li x26, 0x2
                  li x27, 0xfc04f31f
                  li x28, 0x1
                  li x29, 0x0
                  li x30, 0xfc75b752
                  la x31, user_stack_end
main:             la           s2, sub_2
                  slt          s1, t3, t4
                  srli         zero, t2, 29
                  addi         s2, s2, -654
                  slt          a0, s1, a7
                  xor          t1, a2, a4
                  sltu         a7, s10, a1
                  srai         a6, s9, 16
                  sra          a7, s0, a7
                  sra          t1, t1, s11
                  slti         a4, a7, -1999
main_j2:          jalr         a7, s2, 655 #jump main -> sub_2
main_0:           jal          a7, 16f
0:                jal          t1, 13f
1:                jal          ra, 10f
2:                jal          s8, 11f
3:                jal          ra, 14f
4:                jal          ra, 7f
5:                jal          ra, 17f
6:                jal          ra, 1b
7:                jal          a6, 15f
8:                jal          ra, 18f
9:                jal          tp, 0b
10:               jal          tp, 4b
11:               jal          ra, 5b
12:               jal          t1, 3b
13:               jal          ra, 25f
14:               jal          t1, 26f
15:               jal          ra, 21f
16:               jal          t5, 24f
17:               jal          ra, 9b
18:               jal          t1, 19f
19:               jal          ra, 2b
20:               jal          ra, 6b
21:               jal          s3, 8b
22:               jal          t1, 23f
23:               jal          ra, 20b
24:               jal          ra, 22b
25:               jal          t0, 12b
26:               add          t0, ra, s0
                  add          t2, a0, ra
                  ori          a6, a6, -1472
                  and          s6, tp, s9
                  or           s4, s4, s8
                  sltiu        s3, t5, 1379
                  and          gp, sp, a7
                  slli         s10, s2, 31
                  or           s8, a4, a4
                  la           t1, sub_1
                  addi         t1, t1, 686
                  add          zero, s9, t2
                  and          a6, s10, s1
                  bltu         a5, tp, main_j1 #branch to jump instr
                  auipc        gp, 500558
                  srli         a7, a3, 12
                  lui          t2, 824019
main_j1:          jalr         a7, t1, -686 #jump main -> sub_1
                  sll          s2, t6, t5
                  ori          s7, ra, -2000
                  bgeu         a2, sp, 10f
                  sll          a0, a0, ra
                  slti         s8, tp, -1441
                  nop
10:               nop
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            auipc        t4, 390229
                  nop
                  slti         a2, t5, 1418
                  addi         t6, t6, -32
                  auipc        t3, 941142
                  sw           a7, 4(t6)
                  addi         t5, t3, 58
                  and          a4, a5, a4
                  srl          t5, a3, s1
                  nop
                  addi         t0, s1, -19
                  or           s4, ra, sp
                  auipc        a6, 364210
                  and          a2, s7, a7
                  add          s0, gp, s6
                  and          t3, zero, s7
                  andi         a1, a5, 281
sub_3_j4:         jal          a7, sub_4 #jump sub_3 -> sub_4
                  sltiu        s0, t1, -1979
                  nop
                  sltiu        zero, t2, -57
                  nop
                  slti         t3, t1, 1237
                  nop
                  addi         s8, t6, 884
                  xor          a6, a2, s3
                  srli         s8, a2, 30
sub_3_j5:         jal          a7, sub_4 #jump sub_3 -> sub_4
                  srli         s7, s8, 17
                  addi         t1, s11, 1310
                  sll          a6, t6, t4
                  sub          a7, t6, s8
                  xori         s9, s3, -1554
                  slt          a0, tp, t2
                  addi         s2, s4, -1219
                  sll          t0, t3, tp
                  beq          s5, s3, 15f
                  sltiu        t5, s10, -829
                  blt          a0, a1, 15f
                  beq          t0, s2, 15f
                  xor          t5, a5, s5
                  bne          s4, a6, 15f
                  and          tp, s3, s2
15:               srl          s3, a6, s11
                  lw           a7, 4(t6)
                  or           s1, t5, t4
                  sltu         a2, a5, t5
                  sub          t5, t5, s5
                  addi         t6, t6, 32
                  sra          t2, zero, s10
                  or           t3, ra, a4
                  lui          s9, 412282
                  addi         t0, s8, -863
                  srli         s10, s4, 13
54:               addi x28, x17, 1
54:               jalr x28, x28, 0
sub_1:            andi         a2, s5, -98
                  addi         t6, t6, -64
                  auipc        s7, 682570
                  xor          s9, s7, a4
                  sw           a7, 4(t6)
                  slti         a2, a0, 1976
                  nop
                  slli         a1, s4, 9
                  slli         zero, s11, 11
                  or           s9, s9, s9
                  xor          s3, t2, s6
sub_1_0:          jal          a7, 15f
0:                jal          s8, 13f
1:                jal          ra, 21f
2:                jal          ra, 23f
3:                jal          ra, 19f
4:                jal          t1, 9f
5:                jal          ra, 12f
6:                jal          t5, 20f
7:                jal          gp, 0b
8:                jal          ra, 22f
9:                jal          tp, 11f
10:               jal          ra, 6b
11:               jal          ra, 18f
12:               jal          t3, 26f
13:               jal          t3, 5b
14:               jal          t1, 16f
15:               jal          ra, 25f
16:               jal          t1, 10b
17:               jal          s3, 14b
18:               jal          ra, 24f
19:               jal          t1, 17b
20:               jal          ra, 2b
21:               jal          gp, 8b
22:               jal          ra, 7b
23:               jal          t1, 1b
24:               jal          ra, 3b
25:               jal          ra, 4b
26:               andi         s9, a1, 516
sub_1_1:          jal          a7, 2f
0:                jal          s7, 3f
1:                jal          t1, 7f
2:                jal          tp, 1b
3:                jal          s11, 13f
4:                jal          ra, 18f
5:                jal          ra, 9f
6:                jal          a4, 15f
7:                jal          s5, 10f
8:                jal          t1, 5b
9:                jal          ra, 0b
10:               jal          gp, 12f
11:               jal          ra, 4b
12:               jal          t1, 6b
13:               jal          t0, 11b
14:               jal          ra, 17f
15:               jal          t1, 14b
16:               jal          ra, 8b
17:               jal          ra, 16b
18:               sub          a4, s11, sp
sub_1_3:          jal          a7, 20f
0:                jal          ra, 5f
1:                jal          ra, 14f
2:                jal          ra, 18f
3:                jal          ra, 12f
4:                jal          ra, 22f
5:                jal          t1, 3b
6:                jal          ra, 17f
7:                jal          gp, 16f
8:                jal          a3, 1b
9:                jal          t1, 10f
10:               jal          t1, 23f
11:               jal          t1, 21f
12:               jal          t1, 11b
13:               jal          s11, 7b
14:               jal          s6, 6b
15:               jal          t1, 13b
16:               jal          ra, 8b
17:               jal          t1, 24f
18:               jal          a7, 26f
19:               jal          ra, 0b
20:               jal          ra, 25f
21:               jal          t1, 2b
22:               jal          ra, 19b
23:               jal          a7, 15b
24:               jal          t1, 4b
25:               jal          ra, 9b
26:               addi         t4, s9, -1243
sub_1_6:          jal          a7, 4f
0:                jal          ra, 8f
1:                jal          ra, 3f
2:                jal          ra, 12f
3:                jal          ra, 16f
4:                jal          ra, 5f
5:                jal          t1, 9f
6:                jal          ra, 2b
7:                jal          tp, 1b
8:                jal          t1, 10f
9:                jal          gp, 11f
10:               jal          a2, 14f
11:               jal          t1, 15f
12:               jal          ra, 0b
13:               jal          t1, 6b
14:               jal          s5, 7b
15:               jal          ra, 13b
16:               sltiu        s10, s2, 136
sub_1_2:          jal          a7, 7f
0:                jal          ra, 9f
1:                jal          ra, 4f
2:                jal          a6, 0b
3:                jal          t1, 8f
4:                jal          s5, 3b
5:                jal          a0, 2b
6:                jal          ra, 10f
7:                jal          gp, 1b
8:                jal          t1, 5b
9:                jal          ra, 6b
10:               slti         a4, a1, -403
                  ori          s5, s4, 105
                  addi         a0, tp, 1387
                  bltu         s9, s6, 15f
                  sub          a1, ra, a0
                  xori         s6, s0, 1943
                  add          s3, a7, s4
                  srli         a3, s11, 30
                  add          zero, s7, s0
                  srli         s11, a3, 29
                  sltiu        t2, s4, 437
                  srai         s10, t6, 19
                  xori         s10, t2, -28
                  bltu         t4, s1, 26f
                  sub          a2, s5, a3
                  bne          s4, tp, 26f
15:               auipc        ra, 896815
                  bltu         a6, s3, 24f
                  slt          a7, zero, t4
                  blt          a0, s2, 29f
                  andi         t1, s8, 201
                  beq          t4, a6, 30f
                  slti         t3, a4, -1770
                  bgeu         s8, gp, 36f
                  srli         s0, a3, 13
24:               blt          t3, t4, 27f
                  beq          s6, t3, 44f
26:               sltu         gp, t0, a4
27:               blt          a0, t6, 43f
                  srai         s8, t5, 4
29:               andi         tp, s5, -1773
30:               and          s1, s10, a5
                  srl          s10, s2, s5
                  andi         a3, s9, 182
                  la           s1, sub_3
                  srl          s3, s2, ra
                  auipc        s5, 612578
                  addi         s1, s1, 934
                  srli         zero, s4, 14
                  sub          s6, a7, sp
                  andi         s8, t2, -559
                  ori          a4, gp, -900
sub_1_j3:         jalr         a7, s1, -933 #jump sub_1 -> sub_3
                  xor          a7, gp, s6
                  bltu         s4, s11, 34f
                  slti         s3, t4, 611
34:               srai         tp, a3, 19
                  andi         zero, a4, 17
36:               beq          zero, a5, 54f
                  bne          s9, a3, 43f
                  beq          a5, gp, 55f
                  sll          s0, s1, s3
                  xor          t5, a5, a2
                  slli         s0, ra, 20
                  sltiu        s3, t0, -636
43:               xori         zero, s7, 804
44:               add          zero, a7, s2
                  slt          a1, a5, a1
sub_1_5:          jal          a7, 11f
0:                jal          ra, 7f
1:                jal          t1, 4f
2:                jal          ra, 0b
3:                jal          ra, 5f
4:                jal          ra, 3b
5:                jal          t1, 9f
6:                jal          ra, 1b
7:                jal          ra, 6b
8:                jal          t0, 2b
9:                jal          ra, 10f
10:               jal          ra, 12f
11:               jal          tp, 8b
12:               srai         t0, a6, 11
                  auipc        a1, 624226
                  bne          a7, t5, 59f
                  srl          a0, a3, s5
                  addi         a3, s7, 1285
                  lui          s2, 600022
                  xori         tp, a0, 1492
                  bne          a2, s3, 61f
                  or           t2, s7, s10
54:               srl          s5, a6, a7
55:               slt          s3, t4, s1
                  slti         t5, s3, -542
                  sub          s6, tp, zero
                  addi         s5, a0, 1228
59:               auipc        a3, 86771
                  lui          a3, 65832
61:               sub          t4, s9, t1
                  addi         s0, gp, -1483
                  bgeu         s7, s5, 71f
                  slti         s2, a2, -1214
                  and          a3, gp, s10
                  srl          s3, ra, a1
                  srl          t1, t1, s9
                  sltiu        s6, s8, 66
                  ori          a3, a2, 441
                  or           gp, t3, t4
71:               or           a7, t5, a3
                  slli         tp, s9, 6
                  bne          t6, a2, 85f
                  or           t5, t4, s8
                  bne          a2, t3, 94f
                  ori          t4, t0, -1731
                  sltu         t4, s9, s11
                  bge          s2, s7, 90f
                  blt          a7, zero, 91f
                  slt          a1, a4, s5
                  bltu         t3, s1, 96f
                  srai         s1, t3, 25
                  ori          t1, s10, 73
                  sll          s6, s2, s11
85:               sltu         a3, a3, gp
                  sll          a2, s3, t6
                  slti         gp, s11, -1273
                  sltiu        t3, s10, -543
                  xor          a2, t0, t2
90:               srli         s5, s5, 26
91:               sltu         t1, a5, s5
                  xor          zero, a6, a1
                  blt          a2, sp, 105f
94:               sub          s10, a7, t0
                  add          a7, sp, a6
96:               blt          s10, a4, 101f
                  bgeu         t5, s7, 115f
                  sub          a2, s10, sp
                  lui          t5, 306734
                  bge          gp, s5, 101f
101:              auipc        a3, 100280
                  srai         s5, t5, 22
                  srli         tp, t4, 25
                  ori          s6, s6, -1502
105:              or           s11, a7, s1
                  blt          t2, t3, 122f
                  beq          s9, a2, 112f
                  and          t4, ra, s5
                  sltiu        a1, a6, 1369
                  xor          s4, s0, a3
                  slt          s4, t6, s7
112:              nop
                  lui          s6, 174083
                  ori          zero, t4, -278
115:              add          s7, t5, sp
                  bge          t3, s6, 135f
                  sll          a0, a5, t0
                  xori         a7, s5, -451
                  beq          t5, s8, 126f
                  srl          s8, t6, a3
                  slti         s8, a7, 49
122:              slti         tp, a0, 1288
                  slti         s3, gp, 1608
                  sub          a7, s4, s5
                  andi         a2, s4, 125
126:              add          a3, a4, s8
                  xor          s8, s8, tp
                  srli         s0, s5, 30
                  slti         s0, t0, -270
                  bne          s9, a3, 149f
                  or           tp, a2, t4
                  lui          a2, 984675
                  xori         s2, zero, 1185
                  slli         s6, t1, 12
135:              slli         s2, a3, 15
                  bne          s2, gp, 155f
                  beq          a5, t3, 148f
                  sltiu        t5, a7, 1882
                  sra          t1, s4, ra
                  add          a2, a7, s5
                  sll          s1, s5, t3
                  auipc        s2, 970972
                  lui          t1, 318246
                  auipc        a0, 872018
                  slti         s6, ra, 602
                  andi         s3, s2, 1830
                  addi         s2, s6, 567
148:              and          a6, s0, s8
149:              and          a1, s11, zero
                  sra          s3, t5, a1
                  blt          t2, a7, 163f
                  bgeu         s7, zero, 162f
                  or           a1, s4, tp
                  bne          t0, s3, 162f
155:              sltu         s8, s10, sp
                  addi         t1, a0, 1776
                  sltiu        s8, s6, 1680
                  lui          a0, 652843
                  ori          a1, sp, 221
                  bgeu         a6, s4, 179f
                  sltu         a0, s2, t1
162:              nop
163:              nop
                  nop
                  nop
                  sub          t0, s6, a4
                  xori         gp, s8, -1387
                  add          t1, s2, t3
                  slt          s8, sp, s7
                  slt          a2, s6, a2
                  auipc        s5, 60466
                  srl          t3, t6, a7
                  sltiu        s2, s4, -1865
                  srli         s10, s3, 30
                  slt          a2, a3, s9
                  auipc        s7, 948374
                  add          s5, a5, t0
                  and          a3, gp, t1
179:              sll          t4, s2, s11
                  auipc        t2, 357043
                  slt          t1, a1, t4
                  sub          s1, t1, t4
                  srai         t1, s11, 11
                  slli         a2, a1, 23
                  bge          t1, ra, 197f
                  bgeu         s5, tp, 203f
                  srli         s0, t0, 9
                  slli         t4, ra, 27
                  sra          s11, s2, s10
                  add          a3, t4, a1
                  auipc        a1, 111997
                  andi         t2, a0, -1949
                  slli         t1, a0, 6
                  auipc        a1, 989950
                  blt          t3, t3, 204f
                  xor          a0, ra, s1
197:              slli         t4, s1, 22
                  add          s8, ra, s4
                  blt          a4, t3, 206f
                  bge          s11, zero, 213f
                  slt          tp, a3, t6
                  xori         t3, a7, 1449
203:              nop
204:              or           a6, t6, t0
                  or           s6, s10, t5
206:              slti         s1, s7, -1670
sub_1_4:          jal          a7, 5f
0:                jal          ra, 15f
1:                jal          ra, 7f
2:                jal          ra, 13f
3:                jal          ra, 2b
4:                jal          ra, 11f
5:                jal          t4, 1b
6:                jal          ra, 8f
7:                jal          a3, 9f
8:                jal          ra, 0b
9:                jal          s2, 6b
10:               jal          ra, 14f
11:               jal          t1, 10b
12:               jal          t1, 16f
13:               jal          t5, 4b
14:               jal          ra, 12b
15:               jal          s1, 3b
16:               sra          s1, s6, t2
                  lui          t4, 641658
                  beq          s8, s6, 214f
                  sra          a3, t1, tp
                  andi         s4, t3, -567
                  bge          a0, a2, 225f
                  or           a7, s9, zero
213:              sub          t3, s6, a7
214:              bgeu         a4, s1, 219f
                  ori          t4, s3, -1935
                  ori          s8, s4, -479
                  or           a7, t5, t4
                  bltu         a7, s0, 230f
219:              lui          s10, 467240
                  sub          s11, s9, t0
                  add          s2, ra, a6
                  sltu         s7, zero, a2
                  lui          s11, 1005086
                  slt          ra, t5, s3
225:              bltu         s10, s9, 226f
226:              sltiu        a1, s7, 97
                  slti         zero, s4, 806
                  add          a2, s8, a5
                  sltiu        a4, a0, -544
230:              and          a4, a3, a4
                  nop
                  bne          t2, t5, 240f
                  andi         tp, tp, 1206
                  slt          a4, a2, ra
                  sub          s8, a1, zero
                  add          a0, s5, s8
                  bgeu         s5, a3, 240f
                  slli         s9, t0, 27
                  slli         s11, s4, 24
240:              sltu         s8, s2, s9
                  sra          a3, t2, s6
                  srai         s11, t2, 18
                  auipc        t2, 515679
                  srli         s7, a4, 20
                  beq          s3, a3, 261f
                  blt          t0, a2, 264f
                  bge          s11, a3, 263f
                  andi         s7, t0, 1439
                  sll          s5, t3, s11
                  nop
                  sra          s7, a4, s11
                  auipc        t0, 198206
                  sub          t0, t4, s1
                  bge          s3, s3, 266f
                  blt          s6, s5, 269f
                  auipc        a6, 691484
                  addi         tp, gp, -1228
                  or           s9, s9, t4
                  slti         a3, a5, -549
                  slti         t0, a3, -461
261:              sltiu        t0, s2, 810
                  add          s2, ra, s4
263:              blt          t2, t3, 265f
264:              andi         s10, s0, 1088
265:              xor          s7, a6, a2
266:              sub          s5, s5, t5
                  sltu         s5, s2, s10
                  add          tp, a4, s4
269:              slti         ra, t2, -1445
                  andi         t2, t1, 569
                  bge          a7, a7, 283f
                  bne          s10, s8, 277f
                  auipc        a7, 761423
                  xor          a2, a6, t0
                  and          t3, t0, gp
                  bgeu         a4, t3, 291f
277:              sll          s3, ra, t2
                  blt          t1, s5, 296f
                  ori          t5, t3, -788
                  andi         ra, s9, 464
                  sltiu        s9, t1, -1626
                  and          gp, s8, s7
283:              bne          s0, s6, 295f
                  and          s0, t2, s3
                  addi         s4, s7, -159
                  ori          a3, t5, 1945
                  andi         s9, tp, 635
                  sltu         a0, t2, s1
                  ori          s5, a3, 742
                  blt          a1, s2, 309f
291:              auipc        s11, 588808
                  bgeu         t1, t3, 311f
                  slt          t3, s8, t3
                  sub          a3, a7, t2
295:              bne          s9, a7, 298f
296:              bltu         t2, t4, 298f
                  addi         a7, a3, -650
298:              bge          s11, s5, 316f
                  xori         t5, s3, 889
                  bltu         a4, s10, 314f
                  slt          a6, t1, a7
                  sra          s2, s7, t6
                  sll          a2, a5, t6
                  bltu         a0, a3, 312f
                  sub          a1, a0, s6
                  sub          t1, a3, t0
                  xori         s1, s11, 1936
                  slli         a4, sp, 17
309:              srl          s6, t0, s7
                  sltiu        t0, s2, 749
311:              sll          a4, s9, s4
312:              sll          ra, t2, s10
                  sltiu        a2, a3, -85
314:              sra          ra, sp, s2
                  blt          tp, a3, 328f
316:              or           t0, t1, a6
                  slti         zero, s0, 2029
                  lui          t4, 941296
                  lui          a1, 2420
                  ori          s2, s0, -1716
                  sll          t3, s5, t1
                  bltu         a4, s2, 328f
                  beq          t6, t3, 339f
                  bge          ra, s0, 341f
                  slti         gp, a5, -568
                  sub          a0, s4, a4
                  srl          a7, gp, t4
328:              beq          t0, t0, 340f
                  auipc        a1, 927497
                  addi         a1, a1, -187
                  bgeu         s4, sp, 339f
                  srli         s3, a3, 16
                  blt          t2, s8, 352f
                  addi         a6, t5, -523
                  xori         s1, a6, -115
                  blt          t5, s0, 350f
                  nop
                  bgeu         s6, a7, 347f
339:              sub          t1, t1, s5
340:              xor          s0, s9, t5
341:              and          t3, sp, s6
                  xori         a2, t5, 692
                  bne          s0, a7, 344f
344:              nop
                  sltiu        a0, a6, -10
                  sltu         s7, t5, s9
347:              xor          gp, a7, s9
                  sll          t5, a2, a4
                  blt          s2, tp, 361f
350:              nop
                  sll          s3, s3, a2
352:              andi         a0, s8, -1453
                  sra          a3, s3, a7
                  blt          a3, t2, 366f
                  or           t3, s5, a1
                  or           s6, s6, s3
                  slt          s9, t4, s5
                  add          gp, a0, s8
                  sll          s10, a7, a2
                  srl          zero, a4, a4
361:              and          s2, a0, a6
                  srai         s9, a0, 4
                  auipc        s8, 718482
                  bltu         tp, a5, 376f
                  srli         s5, t0, 23
366:              sub          s5, a3, t0
                  add          s2, s1, s4
                  bgeu         s11, s9, 375f
                  or           t1, s4, zero
                  slti         s1, s4, -1241
                  bge          a5, a5, 376f
                  slli         a2, a4, 9
                  andi         t1, s6, -1069
                  ori          a1, s11, -364
375:              sltu         s9, t1, a2
376:              or           t1, t5, a6
                  slti         t5, ra, -94
                  sll          zero, t6, s6
                  bne          a7, ra, 383f
                  xor          a6, a5, a5
                  add          t5, s2, s1
                  andi         a2, sp, -881
383:              and          s5, s9, a7
                  lw           a7, 4(t6)
                  auipc        t5, 443987
                  xor          s10, a7, s5
                  addi         t6, t6, 64
                  addi         t4, t1, 1874
                  slt          a6, s10, s0
                  sub          s0, t0, s8
                  slt          s4, s5, a2
552:              addi x23, x17, 0
552:              jalr x23, x23, 0
sub_4:            sll          t2, s2, tp
                  and          s6, gp, s2
                  srai         s9, s0, 21
                  bgeu         ra, t5, sub_4_stack_p
                  addi         s8, t3, 764
                  nop
sub_4_stack_p:    addi         t6, t6, -48
                  sw           a7, 4(t6)
                  addi         s1, a4, 952
                  srai         s2, a2, 13
                  srai         zero, tp, 21
                  ori          a2, s3, -34
                  ori          s2, t3, 1911
                  andi         a3, t3, 514
                  ori          s4, t6, 1129
                  slti         s10, t4, 783
                  slt          s6, t4, s10
sub_4_j6:         jal          a7, sub_5 #jump sub_4 -> sub_5
sub_4_0:          jal          a7, 8f
0:                jal          ra, 9f
1:                jal          t2, 6f
2:                jal          t1, 12f
3:                jal          t1, 1b
4:                jal          ra, 17f
5:                jal          ra, 7f
6:                jal          t5, 13f
7:                jal          gp, 11f
8:                jal          ra, 5b
9:                jal          t1, 14f
10:               jal          ra, 16f
11:               jal          t4, 2b
12:               jal          ra, 0b
13:               jal          gp, 4b
14:               jal          ra, 15f
15:               jal          t0, 10b
16:               jal          s5, 3b
17:               auipc        s1, 304917
sub_4_1:          jal          a7, 17f
0:                jal          ra, 22f
1:                jal          ra, 28f
2:                jal          t1, 13f
3:                jal          ra, 4f
4:                jal          a0, 8f
5:                jal          t1, 10f
6:                jal          t1, 7f
7:                jal          ra, 0b
8:                jal          ra, 12f
9:                jal          t1, 6b
10:               jal          ra, 27f
11:               jal          s2, 16f
12:               jal          gp, 29f
13:               jal          t5, 15f
14:               jal          t1, 3b
15:               jal          ra, 21f
16:               jal          t1, 26f
17:               jal          ra, 5b
18:               jal          t4, 2b
19:               jal          ra, 25f
20:               jal          gp, 23f
21:               jal          a2, 19b
22:               jal          ra, 14b
23:               jal          a1, 1b
24:               jal          t1, 9b
25:               jal          ra, 11b
26:               jal          ra, 24b
27:               jal          t1, 20b
28:               jal          ra, 18b
29:               slti         s2, s1, 909
                  xor          tp, a4, s9
                  sll          tp, a3, s5
                  addi         t3, gp, 278
                  sll          a2, t0, a2
                  auipc        s8, 362156
                  srai         s5, gp, 18
                  andi         s6, t4, 1218
                  addi         a3, a1, 495
                  lui          a0, 138859
                  slli         t3, a3, 28
                  andi         s9, t4, 1995
                  bgeu         a1, s0, 25f
                  auipc        zero, 730236
                  ori          s11, s11, -2036
                  sub          t3, t3, t2
                  srli         s1, t5, 8
                  or           s6, zero, t1
                  srli         s9, t0, 7
                  sub          t2, s0, a0
                  bge          s1, s7, 35f
                  and          ra, zero, t1
                  sra          gp, s5, t2
                  and          s7, t2, s6
                  add          s10, ra, s1
                  xor          a6, gp, t1
25:               andi         a0, s7, -1809
                  lui          s10, 690160
                  beq          t6, a7, 47f
                  bgeu         s11, a6, 42f
                  bltu         s10, a4, 47f
                  lui          s10, 153779
                  bgeu         s1, s7, 32f
32:               auipc        s3, 25932
                  slti         zero, a1, 498
                  bgeu         t6, a4, 51f
35:               sub          t2, s9, a0
                  sub          s6, a3, s7
                  ori          ra, a2, -312
                  or           ra, s9, t0
                  srai         t0, a2, 22
                  lui          a0, 708730
                  or           s6, tp, a0
42:               sltiu        s1, a0, -883
                  srl          a0, s6, s5
                  blt          s6, t6, 45f
sub_4_2:          jal          a7, 14f
0:                jal          s3, 1f
1:                jal          ra, 26f
2:                jal          ra, 5f
3:                jal          ra, 24f
4:                jal          s3, 13f
5:                jal          ra, 22f
6:                jal          tp, 0b
7:                jal          ra, 19f
8:                jal          ra, 23f
9:                jal          ra, 29f
10:               jal          ra, 18f
11:               jal          t0, 15f
12:               jal          s9, 16f
13:               jal          ra, 7b
14:               jal          a6, 10b
15:               jal          s11, 3b
16:               jal          t1, 11b
17:               jal          ra, 28f
18:               jal          t4, 6b
19:               jal          a0, 12b
20:               jal          ra, 17b
21:               jal          ra, 2b
22:               jal          ra, 20b
23:               jal          t3, 27f
24:               jal          s7, 9b
25:               jal          ra, 8b
26:               jal          ra, 21b
27:               jal          a7, 4b
28:               jal          ra, 25b
29:               or           s7, a3, a0
45:               add          s11, a5, a3
                  bgeu         s10, t4, 53f
47:               sra          t0, s11, s3
                  sltu         a0, a6, a1
                  and          s11, zero, a0
                  slti         t3, s2, 219
51:               nop
                  xor          s2, tp, s5
53:               lui          zero, 976460
                  slti         a4, t6, -1296
                  srai         t2, a1, 25
                  or           tp, ra, a6
                  sll          a7, gp, s0
                  slt          t1, s10, t6
                  bgeu         t1, t3, 72f
                  sltu         t5, sp, tp
                  beq          s3, t5, 62f
62:               ori          s3, s9, -175
                  xor          s6, a7, s8
                  bltu         s8, sp, 69f
                  bne          a6, a5, 80f
                  bge          t4, a5, 74f
                  slli         s10, a7, 0
                  sll          t3, a7, a5
69:               beq          s8, s9, 77f
                  slt          ra, s3, a6
                  slt          t3, s7, a5
72:               beq          a4, ra, 80f
                  or           ra, zero, a7
74:               blt          s3, a3, 76f
                  andi         s0, s2, 1078
76:               slti         a0, s4, -1354
77:               sltu         zero, t6, s3
                  xor          s11, a6, s6
                  auipc        s10, 635899
80:               xori         s1, t4, -110
                  srai         a2, t0, 23
                  slt          ra, s3, ra
                  bge          t4, t0, 91f
                  blt          a0, gp, 88f
                  slti         ra, a4, 968
                  xor          t0, a2, a5
                  xori         s9, t3, -1162
88:               ori          s1, t3, 1383
                  add          t2, a5, gp
                  lui          s10, 599824
91:               srli         t5, s4, 22
                  ori          tp, s11, -1786
                  addi         s1, a6, -387
                  blt          s6, zero, 114f
                  sltiu        s4, a6, 644
                  addi         ra, tp, -1892
                  sub          s4, zero, a5
                  lui          s1, 182157
                  bltu         a5, tp, 104f
                  sub          t5, a3, a4
                  srli         ra, zero, 4
                  slt          s9, ra, t0
                  srai         t5, s2, 1
104:              bge          s6, gp, 122f
                  xori         t1, s4, -832
                  slt          t1, s5, s10
                  srli         a1, s2, 23
                  xori         s1, a6, -1758
                  srli         a2, s1, 25
                  ori          t4, s8, 1978
                  sll          s7, gp, s3
                  srai         tp, t2, 1
                  auipc        a4, 972583
114:              bgeu         s7, s5, 128f
                  beq          gp, t6, 132f
                  lui          s6, 422798
                  slt          a6, s8, s2
                  xor          a1, s5, a4
                  andi         s0, zero, -1806
                  sra          zero, a1, tp
                  xori         a7, a3, 1518
122:              add          t0, t1, a4
                  sub          s0, a3, s2
                  addi         a6, s2, 1160
                  bne          tp, t2, 130f
                  sltiu        t2, s4, -1028
                  or           s1, a0, t3
128:              sltiu        s7, t3, -444
                  sra          a0, t4, s5
130:              srl          tp, sp, s0
                  and          s10, a5, s11
132:              andi         a3, s6, -1887
                  addi         s1, t2, -1897
                  and          s4, ra, t4
                  srli         t5, t2, 13
                  bge          a1, t1, 150f
                  blt          a2, s7, 142f
                  sltu         t3, s3, a3
                  bne          s3, ra, 157f
                  lui          gp, 61058
                  sra          t3, t4, s9
142:              sll          a1, s1, t5
                  blt          t4, t5, 159f
                  bge          a2, t5, 156f
                  srl          t5, t5, t5
                  bge          a6, a3, 160f
                  srli         a7, a2, 7
                  srl          a1, a5, a5
                  bltu         a4, t2, 164f
150:              sra          zero, s11, s7
                  srli         s2, t3, 23
                  auipc        s1, 1033586
                  sltu         t3, tp, s7
                  or           a7, s0, s4
                  xori         s10, zero, 383
156:              bge          s6, s10, 170f
157:              lui          ra, 309074
                  auipc        a3, 479497
159:              srai         a3, s0, 8
160:              auipc        a3, 62128
                  addi         s3, tp, -441
                  beq          t3, s10, 180f
                  bge          t6, s11, 171f
164:              xor          s3, zero, t5
                  and          s0, s5, t6
                  nop
                  addi         s8, a3, -1972
                  auipc        zero, 369633
                  ori          a4, t6, -27
170:              slti         s0, s10, 301
171:              xor          s0, s8, t1
                  sltu         s4, a2, t5
                  and          s11, a3, a3
                  sltu         s7, s11, s2
                  beq          s6, s1, 194f
                  sll          a6, a6, s0
                  auipc        ra, 589401
                  sll          tp, t2, a7
                  lui          s0, 22063
180:              and          a3, a5, s11
                  and          a6, a4, a1
                  bgeu         s2, t2, 194f
                  sltu         s7, s0, s8
                  nop
                  add          t3, a2, zero
                  slti         s9, t0, 1025
                  beq          s8, t4, 194f
                  sub          t2, s7, s4
                  bgeu         s4, a0, 194f
                  bgeu         s11, s8, 194f
                  slli         s0, a0, 0
                  beq          gp, gp, 194f
                  srai         s9, a2, 31
194:              add          s10, t4, t2
                  ori          s8, a1, 364
                  lw           a7, 4(t6)
                  andi         s4, t2, 471
                  xori         a6, s2, -1322
                  addi         t6, t6, 48
                  auipc        zero, 198885
                  srai         tp, a4, 23
                  xor          zero, a5, t3
                  slti         a3, sp, -858
                  sub          t5, a1, t1
304:              addi x5, x17, 1
304:              jalr x5, x5, 0
sub_5:            add          s1, s1, a1
                  sll          a1, a2, zero
                  addi         t6, t6, -8
                  sw           a7, 4(t6)
                  srl          t3, zero, a4
                  srl          a6, s0, a0
                  sll          tp, zero, s4
                  nop
sub_5_6:          jal          a7, 4f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          ra, 0b
3:                jal          s8, 6f
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          t2, 1b
7:                jal          ra, 5b
8:                jal          ra, 3b
9:                jal          ra, 7b
10:               add          s2, s2, a3
sub_5_2:          jal          a7, 12f
0:                jal          t1, 9f
1:                jal          a6, 14f
2:                jal          s1, 4f
3:                jal          t1, 10f
4:                jal          ra, 13f
5:                jal          t4, 8f
6:                jal          t1, 11f
7:                jal          ra, 0b
8:                jal          ra, 1b
9:                jal          ra, 3b
10:               jal          ra, 2b
11:               jal          ra, 7b
12:               jal          gp, 6b
13:               jal          ra, 5b
14:               addi         s11, s3, 1095
sub_5_3:          jal          a7, 18f
0:                jal          t1, 16f
1:                jal          a6, 3f
2:                jal          ra, 0b
3:                jal          ra, 13f
4:                jal          ra, 7f
5:                jal          s11, 9f
6:                jal          t0, 25f
7:                jal          a2, 5b
8:                jal          ra, 26f
9:                jal          a6, 24f
10:               jal          ra, 23f
11:               jal          ra, 27f
12:               jal          s11, 22f
13:               jal          ra, 8b
14:               jal          s10, 21f
15:               jal          ra, 6b
16:               jal          a6, 11b
17:               jal          t1, 1b
18:               jal          gp, 10b
19:               jal          ra, 2b
20:               jal          t1, 4b
21:               jal          ra, 15b
22:               jal          ra, 14b
23:               jal          ra, 20b
24:               jal          t1, 17b
25:               jal          ra, 19b
26:               jal          a6, 12b
27:               srl          s1, zero, s10
sub_5_0:          jal          a7, 0f
0:                jal          ra, 10f
1:                jal          gp, 3f
2:                jal          t1, 5f
3:                jal          t1, 7f
4:                jal          ra, 6f
5:                jal          a4, 8f
6:                jal          ra, 11f
7:                jal          ra, 9f
8:                jal          t1, 1b
9:                jal          s6, 4b
10:               jal          t2, 2b
11:               addi         a0, a2, -1637
sub_5_5:          jal          a7, 5f
0:                jal          ra, 19f
1:                jal          ra, 6f
2:                jal          ra, 7f
3:                jal          s11, 18f
4:                jal          ra, 10f
5:                jal          ra, 17f
6:                jal          ra, 0b
7:                jal          t4, 16f
8:                jal          s2, 20f
9:                jal          ra, 4b
10:               jal          a4, 26f
11:               jal          t1, 13f
12:               jal          ra, 14f
13:               jal          ra, 21f
14:               jal          t1, 24f
15:               jal          ra, 2b
16:               jal          gp, 25f
17:               jal          ra, 3b
18:               jal          t0, 12b
19:               jal          ra, 23f
20:               jal          ra, 22f
21:               jal          ra, 9b
22:               jal          ra, 15b
23:               jal          ra, 8b
24:               jal          t1, 1b
25:               jal          ra, 11b
26:               nop
sub_5_7:          jal          a7, 7f
0:                jal          ra, 9f
1:                jal          t1, 11f
2:                jal          s0, 13f
3:                jal          s4, 5f
4:                jal          a2, 3b
5:                jal          ra, 16f
6:                jal          t1, 4b
7:                jal          ra, 12f
8:                jal          a2, 10f
9:                jal          a7, 15f
10:               jal          t1, 0b
11:               jal          ra, 14f
12:               jal          ra, 6b
13:               jal          a4, 17f
14:               jal          a7, 2b
15:               jal          t0, 1b
16:               jal          ra, 8b
17:               sub          a6, a0, s5
sub_5_1:          jal          a7, 3f
0:                jal          ra, 22f
1:                jal          ra, 2f
2:                jal          ra, 7f
3:                jal          a3, 11f
4:                jal          ra, 18f
5:                jal          s8, 25f
6:                jal          ra, 17f
7:                jal          ra, 0b
8:                jal          ra, 21f
9:                jal          t0, 24f
10:               jal          ra, 16f
11:               jal          ra, 15f
12:               jal          t1, 4b
13:               jal          t0, 10b
14:               jal          s10, 5b
15:               jal          ra, 13b
16:               jal          s5, 1b
17:               jal          t1, 19f
18:               jal          ra, 8b
19:               jal          s5, 12b
20:               jal          tp, 9b
21:               jal          ra, 20b
22:               jal          ra, 6b
23:               jal          ra, 14b
24:               jal          s9, 23b
25:               sltiu        s11, ra, 1047
                  and          s10, t3, a3
                  ori          t1, t3, -1299
                  and          a3, t3, gp
                  add          a1, s5, s9
                  auipc        s4, 855259
                  or           a0, t4, a6
                  bge          s11, a2, 15f
                  srl          s3, sp, s2
                  or           ra, s10, a1
                  sltu         t1, t1, t3
                  srl          t4, s11, s9
                  bgeu         a2, s11, 14f
                  sra          t4, s3, t2
                  slt          a2, s11, t0
14:               sll          a0, s1, a7
15:               xori         t5, t2, 1570
                  addi         a0, ra, 540
                  sltiu        s3, a5, 1901
                  bne          t5, s7, 34f
                  sltiu        t1, t4, -181
                  sra          s3, s6, t4
                  sub          a6, s3, s0
                  srl          t5, a1, a5
                  beq          t4, s5, 31f
                  slli         a7, s11, 5
                  slli         s7, s9, 27
                  slti         s10, s1, 580
                  ori          a2, t3, -740
                  srai         s10, zero, 6
                  auipc        ra, 666565
                  slt          s1, gp, s8
31:               srli         a6, s8, 26
                  bltu         sp, t0, 35f
                  sra          a6, s10, s0
34:               or           t3, s3, s8
35:               bltu         a5, s3, 52f
                  andi         gp, ra, -1545
                  bne          s5, zero, 42f
sub_5_8:          jal          a7, 6f
0:                jal          ra, 9f
1:                jal          t1, 7f
2:                jal          tp, 5f
3:                jal          s11, 10f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          t1, 1b
7:                jal          ra, 8f
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               and          s7, s11, sp
                  and          s10, a5, a6
                  sll          s7, s4, a5
                  ori          s8, s0, 273
                  and          s10, a7, t1
42:               bgeu         s5, s9, 46f
                  xori         zero, s10, -486
                  andi         a3, a3, 268
                  slti         a1, a7, -1863
46:               beq          s10, s8, 65f
                  sltiu        a2, zero, -1775
                  srl          a1, ra, s5
                  bne          t6, s7, 63f
                  nop
                  bgeu         sp, s11, 63f
52:               blt          gp, t5, 66f
                  sltiu        a4, t6, 1654
                  andi         zero, s0, 1384
                  sltiu        a4, s2, -1508
                  beq          t3, tp, 62f
                  bne          t4, tp, 62f
                  beq          t3, s9, 65f
                  xor          s3, s4, s8
                  slt          gp, t0, t1
                  slt          s10, s8, a2
62:               sltu         s2, a0, a3
63:               nop
                  slli         s8, a4, 0
65:               srl          a0, s10, a3
66:               srli         t2, t1, 1
                  add          a1, s6, gp
                  srai         s3, s5, 12
                  bgeu         t5, s8, 84f
                  sltiu        a3, a6, 440
                  bne          t3, s8, 74f
                  sra          gp, sp, t6
                  sub          ra, a6, t6
74:               bge          t6, t3, 94f
                  slt          s1, a0, s6
                  add          t0, a3, s8
                  auipc        s9, 762661
                  sll          s5, zero, s8
                  andi         t5, t0, 1995
                  sll          a3, t1, zero
                  xor          s8, sp, a1
                  sll          zero, sp, a5
                  xor          s9, s11, s5
84:               bne          s6, s10, 93f
                  srl          t4, a2, sp
                  or           a3, s1, s7
                  sltiu        a0, a0, 1944
                  slt          s3, s6, t5
                  srli         s7, t0, 11
                  lui          s10, 609989
                  bgeu         a2, a6, 104f
                  bge          s1, s5, 103f
93:               srl          s9, a7, s10
94:               blt          a4, sp, 114f
                  slti         gp, t5, -1673
                  slli         a0, s9, 18
                  add          s4, t6, t6
                  srli         s8, gp, 22
                  auipc        a7, 516250
                  nop
                  slti         s9, gp, -1165
                  beq          a3, sp, 117f
103:              sra          t5, s4, a7
104:              sub          s9, a5, s3
                  slt          t0, s4, gp
                  beq          s11, t1, 116f
                  sltiu        a4, s1, -1554
                  blt          t0, a7, 112f
                  slt          t4, s6, s6
                  sltiu        zero, a7, 1084
                  blt          a3, s8, 117f
112:              srl          a6, sp, t1
                  srai         t5, ra, 9
114:              beq          zero, s3, 125f
                  sub          t0, sp, t0
116:              sra          a0, t4, a1
117:              bne          a2, s2, 129f
                  sra          t5, t3, t4
                  srl          t3, sp, a4
                  nop
                  sll          a7, sp, zero
                  addi         s8, s8, 1407
                  srai         t0, s4, 31
                  and          gp, s6, s11
125:              sll          s5, a6, s3
                  sra          t5, zero, s3
                  sra          t2, s7, s11
                  and          s3, s3, s2
129:              and          s11, a7, s5
                  bne          a4, s5, 133f
                  beq          s1, s3, 135f
                  srl          s8, s4, ra
133:              sub          t5, s3, s11
                  bge          a2, a0, 147f
135:              xor          s3, a1, s7
                  slli         s10, a2, 1
                  sra          t0, a3, s8
                  xori         s4, s5, 355
                  slti         s6, tp, -856
                  sra          s0, a1, a5
                  andi         s7, a4, 1980
                  addi         s0, s3, -1018
                  slti         tp, s5, 1352
                  sub          tp, s1, tp
                  slti         a3, s9, -353
                  slt          s4, a2, gp
147:              nop
                  xori         a2, s11, -843
                  sra          s5, a6, s8
                  sltiu        t5, s5, -439
                  beq          s2, sp, 157f
                  bltu         t6, a4, 167f
                  sub          s1, sp, t3
                  slt          s10, t2, s0
                  xori         s1, s2, -583
                  bgeu         s2, a3, 168f
157:              sra          s1, a7, a1
                  auipc        s11, 819115
                  bne          s3, s8, 163f
                  auipc        a0, 681821
                  beq          s0, t4, 176f
                  sub          s10, a4, a7
163:              bge          s4, a3, 167f
                  andi         t5, s6, 1341
                  andi         a1, t1, 1103
                  xor          a4, s4, t3
167:              slt          s4, s9, s6
168:              slli         t4, t5, 20
                  ori          a4, t0, 1972
                  or           tp, a6, a6
                  srli         s10, s0, 24
                  xor          s6, t2, a1
                  or           a3, tp, s3
                  slli         gp, sp, 22
                  xor          s3, s5, t4
176:              sll          s6, zero, sp
                  beq          s4, a4, 180f
                  blt          a5, a1, 187f
                  addi         a6, s7, -143
180:              bltu         t3, a4, 185f
                  auipc        t1, 187366
                  bltu         s0, gp, 188f
                  bne          s1, s6, 194f
                  srai         t3, a2, 31
185:              sll          a6, gp, t1
                  sra          a0, a0, a2
187:              beq          sp, a6, 191f
188:              slt          s7, ra, gp
                  slli         zero, t0, 28
                  sltu         a7, s3, a1
191:              sub          s10, s11, a5
                  sub          t3, zero, ra
                  add          s5, t0, t1
194:              sra          a1, s10, a5
                  blt          t1, t2, 215f
                  or           s9, s0, s8
                  srl          ra, s1, ra
                  bgeu         gp, a0, 201f
                  slli         s10, a1, 22
                  andi         s11, a5, -334
201:              bne          a4, gp, 206f
                  srli         a6, t6, 6
                  bltu         s7, t4, 222f
                  bne          ra, s2, 221f
                  xor          a7, sp, s11
206:              bne          a7, a7, 214f
                  blt          s3, s4, 221f
                  ori          gp, t1, 417
                  add          s7, ra, s1
                  sll          s7, a7, a3
                  sub          a2, t2, s10
                  blt          tp, a5, 221f
                  bltu         ra, s1, 220f
214:              xor          s8, s8, s3
215:              srl          t0, s6, t0
                  sub          s5, a0, s3
                  slti         a7, s3, 1800
                  beq          a1, gp, 221f
                  xor          s0, t0, sp
220:              xori         tp, t5, 501
221:              auipc        t5, 699723
222:              lui          t4, 304889
                  add          a0, s4, s4
                  xor          s3, s4, ra
                  slti         s11, t5, 410
                  addi         s1, a7, 165
                  or           s2, s6, t2
                  nop
                  bne          s6, s3, 249f
                  sltu         s11, a7, t4
                  ori          s4, gp, 1811
                  nop
                  nop
                  addi         tp, a7, -1085
                  and          s4, a4, s11
                  xor          a0, a0, s0
                  lui          a7, 275922
                  bne          sp, gp, 250f
                  srai         a6, s0, 9
                  bge          a0, s2, 256f
                  add          t3, s1, t0
                  sub          t2, s10, t5
                  auipc        s3, 375993
                  ori          a2, s6, 142
                  sub          s2, s5, a5
                  sra          s10, a1, s2
                  srl          s11, a0, ra
                  add          s11, s4, s2
249:              add          a0, a3, s8
250:              andi         t4, t0, 431
                  sll          t0, tp, s3
                  sra          gp, t6, s7
                  beq          sp, a5, 264f
                  add          t0, s8, sp
                  and          t5, s6, s8
256:              sltu         s2, a3, ra
                  or           t5, s4, s0
                  nop
                  add          t2, t4, ra
                  sll          t5, a3, a6
                  nop
                  and          s8, t1, zero
                  sll          t1, s5, t4
264:              srai         s2, a2, 5
                  srl          s9, s3, t4
                  blt          t5, s0, 276f
                  beq          a4, t5, 270f
                  xori         zero, a7, -833
                  add          t5, s3, gp
270:              xor          tp, t6, t0
                  slt          s7, a6, zero
                  sub          a7, s8, s2
                  sra          a6, t2, a7
                  bltu         gp, s3, 288f
                  or           a6, s9, gp
276:              sltiu        s3, s8, -911
                  auipc        a7, 471953
                  bge          gp, s8, 298f
                  srli         s7, t1, 31
                  blt          s5, a4, 300f
                  lui          s11, 708977
                  srai         t1, a4, 5
                  bge          a3, t5, 295f
                  lui          s5, 674714
                  sltu         gp, a7, s6
                  srl          t1, s9, s2
                  sub          ra, s6, s3
288:              ori          ra, s10, 112
                  bne          t0, a6, 297f
                  lui          s11, 1014043
                  lui          s6, 486542
                  xor          a4, s1, a1
                  xor          s3, a7, t6
                  bge          s5, tp, 308f
295:              beq          zero, s6, 299f
                  auipc        s4, 971435
sub_5_4:          jal          a7, 11f
0:                jal          ra, 7f
1:                jal          ra, 4f
2:                jal          t5, 0b
3:                jal          t1, 6f
4:                jal          ra, 12f
5:                jal          s7, 3b
6:                jal          ra, 10f
7:                jal          t3, 14f
8:                jal          ra, 15f
9:                jal          s11, 13f
10:               jal          ra, 16f
11:               jal          t1, 8b
12:               jal          ra, 9b
13:               jal          ra, 2b
14:               jal          ra, 5b
15:               jal          tp, 1b
16:               sll          a3, a5, s10
297:              bge          s0, a2, 314f
298:              srli         t1, sp, 29
299:              or           t2, s8, s8
300:              sll          s2, t0, s2
                  add          s7, s11, t1
                  andi         t3, a2, -1485
                  and          zero, t5, s8
                  srai         s0, a7, 0
                  sub          s0, t2, t4
                  bne          s7, zero, 311f
                  ori          s6, ra, -112
308:              ori          s8, a2, -1630
                  srl          ra, a1, s6
                  and          t2, a6, s6
311:              addi         a3, a2, -1432
                  sra          t2, a0, s8
                  ori          s6, a6, -2008
314:              add          tp, s6, t4
                  and          s9, t1, tp
                  bne          a2, a4, 335f
                  srli         t1, s6, 19
                  bge          s0, t3, 321f
                  slli         s10, t2, 21
                  sra          a2, s4, t5
321:              sll          s6, s11, t5
                  srai         t1, a2, 2
                  sltu         t0, s0, a7
                  or           s2, t3, s2
                  sll          t2, a4, s8
                  sll          s0, a7, t4
                  beq          s1, s0, 331f
                  sub          t2, gp, a2
                  xor          t4, a6, t6
                  beq          a5, a1, 339f
331:              lui          a0, 169775
                  slt          s11, s1, s11
                  bge          t6, t2, 345f
                  lui          a6, 133663
335:              ori          t5, s3, 1089
                  or           s10, s1, t0
                  srai         s8, t2, 13
                  slti         s1, tp, 500
339:              bne          s1, t5, 350f
                  srl          t3, a4, a4
                  ori          t3, sp, 2014
                  lui          s1, 302083
                  bltu         t2, a0, 352f
                  and          s1, s6, s1
345:              bne          t6, a6, 355f
                  beq          a6, s9, 349f
                  bne          s3, zero, 362f
                  add          s0, t1, t0
349:              bltu         t6, ra, 360f
350:              and          ra, t3, t2
                  ori          t0, t0, 237
352:              auipc        s7, 829235
                  auipc        t1, 691580
                  sltiu        s10, s0, -1406
355:              sra          s5, s5, sp
                  bltu         s5, t6, 359f
                  bgeu         gp, a2, 364f
                  srl          t5, t0, t1
359:              sra          s7, t6, s3
360:              sltiu        s1, s3, -1867
                  sltiu        a4, s9, -391
362:              auipc        s11, 236246
                  bge          s11, t0, 378f
364:              and          s7, t2, s2
                  srai         a6, tp, 8
                  bgeu         tp, t2, 380f
                  slli         t5, s3, 17
                  xori         a7, t2, -1459
                  srl          s0, t6, s7
                  or           t0, s7, s2
                  blt          a4, t2, 387f
                  auipc        s9, 199264
                  srl          s3, s9, t3
                  add          s0, s10, s11
                  lui          a0, 850163
                  sll          s8, s10, a6
                  auipc        s10, 481720
378:              add          a2, s7, tp
                  nop
380:              blt          t5, sp, 393f
                  srai         a2, t1, 11
                  lui          t5, 457347
                  lui          s8, 729163
                  sub          a3, a5, s1
                  xori         t4, s4, -1334
                  and          t0, a7, a3
387:              xor          s1, s6, t4
                  sra          s1, a5, s0
                  xor          a1, t6, a0
                  addi         t2, t2, 387
                  srai         t1, zero, 15
                  andi         s10, a4, -641
393:              and          zero, sp, s10
                  bne          t0, t3, 399f
                  or           zero, a6, gp
                  xori         s5, ra, -1783
                  sll          ra, a7, t6
                  bne          a0, s10, 401f
399:              slli         s7, t1, 12
                  lui          a4, 131284
401:              sra          tp, s6, sp
                  bgeu         a1, s0, 408f
                  sltiu        a7, s5, -1188
                  sltiu        t5, s8, -559
                  srl          a2, t6, t1
                  srl          a1, a7, a4
                  sub          s2, s0, s11
408:              slt          s5, t5, a3
                  slti         a6, zero, -254
                  bgeu         t2, s3, 414f
                  sra          a2, s2, a6
                  sra          s9, a6, s7
                  srli         t4, a7, 21
414:              sll          a3, s10, s10
                  slt          s5, tp, a1
                  lui          s8, 250391
                  xori         s5, s5, -1609
                  beq          a4, s10, 424f
                  bltu         a2, a7, 423f
                  andi         a7, s2, -1005
                  andi         ra, s3, -457
                  slt          ra, tp, t2
423:              sltu         a1, s11, a5
424:              slt          s0, a1, tp
                  auipc        s6, 917352
                  bne          a2, s3, 440f
                  bge          t6, s2, 439f
                  srai         s2, a7, 6
                  andi         a2, a0, -183
                  andi         a7, a6, -1100
                  andi         t4, sp, 302
                  sub          t4, t6, a5
                  sub          s9, t4, sp
                  addi         s2, s9, -859
                  add          ra, t2, tp
                  srai         t4, t4, 10
                  slli         t2, sp, 18
                  sltu         a1, a1, s7
439:              andi         s10, s6, -529
440:              slli         a2, zero, 26
                  beq          sp, sp, 444f
                  and          s8, gp, t1
                  blt          t2, t4, 459f
444:              add          t0, s11, gp
                  lui          a1, 332807
                  ori          gp, s4, 896
                  srai         s10, a1, 6
                  beq          tp, a3, 451f
                  bne          a7, s11, 453f
                  nop
451:              addi         ra, t4, 508
                  lui          a7, 339782
453:              srai         s11, a4, 14
                  bltu         s3, s10, 457f
                  sra          a7, s7, t3
                  slt          s6, s10, s10
457:              add          a3, a4, a1
                  srli         s7, tp, 30
459:              sll          s8, s6, tp
                  beq          s8, s2, 472f
                  bne          s3, gp, 472f
                  ori          s8, s4, 506
                  blt          s9, ra, 466f
                  sltu         a6, t0, t0
                  add          a0, t1, a5
466:              srl          s2, a5, s3
                  sltiu        s6, t3, -377
                  auipc        t3, 91825
                  lui          s11, 253048
                  xor          t5, t0, s5
                  slti         a1, t0, 897
472:              auipc        tp, 935826
                  xori         s5, sp, -1599
                  lw           a7, 4(t6)
                  auipc        s8, 152244
                  sltiu        zero, sp, -244
                  nop
                  addi         t6, t6, 8
                  slti         a6, a6, 1271
662:              addi x18, x17, 1
662:              jalr x18, x18, 0
sub_2:            addi         t6, t6, -32
                  add          s6, s4, a0
                  srl          t0, s6, ra
                  addi         s8, a4, -414
                  nop
                  sw           a7, 4(t6)
                  xori         t0, s3, 1559
sub_2_33:         jal          a7, 22f
0:                jal          ra, 2f
1:                jal          t0, 24f
2:                jal          t1, 1b
3:                jal          ra, 20f
4:                jal          s7, 5f
5:                jal          t0, 8f
6:                jal          ra, 13f
7:                jal          ra, 18f
8:                jal          gp, 7b
9:                jal          ra, 25f
10:               jal          ra, 21f
11:               jal          gp, 16f
12:               jal          ra, 0b
13:               jal          t0, 15f
14:               jal          ra, 4b
15:               jal          ra, 19f
16:               jal          a0, 6b
17:               jal          ra, 12b
18:               jal          ra, 3b
19:               jal          tp, 10b
20:               jal          t1, 23f
21:               jal          ra, 26f
22:               jal          t1, 14b
23:               jal          ra, 9b
24:               jal          t1, 11b
25:               jal          ra, 17b
26:               xori         t2, t0, -254
sub_2_11:         jal          a7, 13f
0:                jal          t1, 18f
1:                jal          t1, 6f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          t0, 1b
5:                jal          ra, 12f
6:                jal          t1, 17f
7:                jal          t1, 4b
8:                jal          ra, 7b
9:                jal          t1, 15f
10:               jal          ra, 8b
11:               jal          a6, 16f
12:               jal          ra, 14f
13:               jal          ra, 11b
14:               jal          ra, 3b
15:               jal          a0, 0b
16:               jal          ra, 2b
17:               jal          ra, 5b
18:               slt          s1, a7, a6
sub_2_34:         jal          a7, 10f
0:                jal          t1, 17f
1:                jal          ra, 4f
2:                jal          ra, 6f
3:                jal          ra, 15f
4:                jal          ra, 9f
5:                jal          t1, 14f
6:                jal          ra, 16f
7:                jal          s2, 8f
8:                jal          ra, 13f
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          ra, 18f
12:               jal          ra, 1b
13:               jal          ra, 0b
14:               jal          a7, 19f
15:               jal          ra, 11b
16:               jal          ra, 5b
17:               jal          ra, 12b
18:               jal          ra, 2b
19:               srli         s4, gp, 8
sub_2_15:         jal          a7, 6f
0:                jal          ra, 2f
1:                jal          ra, 0b
2:                jal          ra, 11f
3:                jal          ra, 10f
4:                jal          ra, 8f
5:                jal          s0, 4b
6:                jal          ra, 5b
7:                jal          ra, 9f
8:                jal          a3, 7b
9:                jal          t0, 1b
10:               jal          t3, 12f
11:               jal          ra, 3b
12:               slli         a1, a1, 31
sub_2_26:         jal          a7, 4f
0:                jal          t1, 20f
1:                jal          s1, 5f
2:                jal          gp, 18f
3:                jal          ra, 7f
4:                jal          t0, 2b
5:                jal          ra, 9f
6:                jal          t4, 0b
7:                jal          ra, 14f
8:                jal          t1, 19f
9:                jal          s7, 3b
10:               jal          ra, 6b
11:               jal          ra, 15f
12:               jal          ra, 11b
13:               jal          ra, 12b
14:               jal          t1, 13b
15:               jal          ra, 10b
16:               jal          tp, 17f
17:               jal          t1, 8b
18:               jal          s7, 16b
19:               jal          ra, 1b
20:               sltiu        a6, t6, -379
sub_2_4:          jal          a7, 10f
0:                jal          t1, 9f
1:                jal          t1, 3f
2:                jal          ra, 8f
3:                jal          t1, 21f
4:                jal          s4, 19f
5:                jal          t2, 12f
6:                jal          t0, 7f
7:                jal          ra, 14f
8:                jal          t1, 17f
9:                jal          ra, 13f
10:               jal          ra, 18f
11:               jal          t1, 0b
12:               jal          ra, 16f
13:               jal          t1, 20f
14:               jal          a3, 4b
15:               jal          t0, 6b
16:               jal          ra, 2b
17:               jal          ra, 1b
18:               jal          ra, 15b
19:               jal          ra, 11b
20:               jal          ra, 5b
21:               auipc        s0, 1002151
sub_2_19:         jal          a7, 12f
0:                jal          ra, 10f
1:                jal          a4, 14f
2:                jal          ra, 9f
3:                jal          ra, 2b
4:                jal          ra, 3b
5:                jal          ra, 17f
6:                jal          ra, 4b
7:                jal          ra, 18f
8:                jal          ra, 6b
9:                jal          ra, 16f
10:               jal          t1, 7b
11:               jal          t1, 19f
12:               jal          ra, 5b
13:               jal          a7, 0b
14:               jal          s8, 8b
15:               jal          ra, 11b
16:               jal          s5, 13b
17:               jal          a3, 1b
18:               jal          ra, 15b
19:               ori          t3, s1, -478
sub_2_22:         jal          a7, 9f
0:                jal          ra, 12f
1:                jal          ra, 6f
2:                jal          t1, 5f
3:                jal          ra, 8f
4:                jal          a4, 13f
5:                jal          t1, 4b
6:                jal          a4, 2b
7:                jal          s3, 11f
8:                jal          t1, 1b
9:                jal          ra, 7b
10:               jal          ra, 3b
11:               jal          ra, 0b
12:               jal          t1, 10b
13:               add          t5, s0, a4
sub_2_36:         jal          a7, 15f
0:                jal          t1, 16f
1:                jal          ra, 18f
2:                jal          ra, 20f
3:                jal          t1, 11f
4:                jal          ra, 7f
5:                jal          gp, 14f
6:                jal          ra, 19f
7:                jal          a0, 2b
8:                jal          s7, 9f
9:                jal          gp, 6b
10:               jal          gp, 12f
11:               jal          ra, 4b
12:               jal          tp, 8b
13:               jal          ra, 10b
14:               jal          ra, 3b
15:               jal          ra, 17f
16:               jal          ra, 13b
17:               jal          ra, 0b
18:               jal          s5, 5b
19:               jal          t0, 1b
20:               ori          s3, a4, -883
sub_2_7:          jal          a7, 14f
0:                jal          a3, 5f
1:                jal          ra, 18f
2:                jal          a3, 12f
3:                jal          t1, 7f
4:                jal          t1, 3b
5:                jal          t5, 16f
6:                jal          t3, 15f
7:                jal          s5, 8f
8:                jal          ra, 9f
9:                jal          ra, 17f
10:               jal          s9, 0b
11:               jal          t1, 10b
12:               jal          tp, 11b
13:               jal          s6, 6b
14:               jal          a4, 4b
15:               jal          ra, 1b
16:               jal          ra, 13b
17:               jal          t1, 2b
18:               srl          t2, a2, s11
sub_2_6:          jal          a7, 15f
0:                jal          ra, 3f
1:                jal          t1, 2f
2:                jal          s4, 18f
3:                jal          ra, 1b
4:                jal          ra, 7f
5:                jal          ra, 4b
6:                jal          ra, 10f
7:                jal          ra, 13f
8:                jal          t1, 0b
9:                jal          gp, 11f
10:               jal          ra, 5b
11:               jal          a6, 16f
12:               jal          ra, 9b
13:               jal          t1, 14f
14:               jal          ra, 12b
15:               jal          t1, 6b
16:               jal          ra, 17f
17:               jal          s5, 8b
18:               xor          s9, t0, sp
sub_2_25:         jal          a7, 4f
0:                jal          s4, 9f
1:                jal          ra, 11f
2:                jal          ra, 13f
3:                jal          ra, 5f
4:                jal          ra, 8f
5:                jal          t0, 7f
6:                jal          ra, 10f
7:                jal          ra, 0b
8:                jal          ra, 3b
9:                jal          ra, 12f
10:               jal          ra, 15f
11:               jal          ra, 2b
12:               jal          ra, 1b
13:               jal          gp, 14f
14:               jal          ra, 6b
15:               sub          a1, s7, s9
sub_2_30:         jal          a7, 3f
0:                jal          ra, 7f
1:                jal          ra, 2f
2:                jal          ra, 15f
3:                jal          t1, 16f
4:                jal          t1, 14f
5:                jal          s7, 12f
6:                jal          s8, 5b
7:                jal          t0, 1b
8:                jal          ra, 17f
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          t0, 4b
12:               jal          t1, 18f
13:               jal          ra, 9b
14:               jal          ra, 0b
15:               jal          ra, 6b
16:               jal          ra, 13b
17:               jal          ra, 11b
18:               ori          a6, a3, 1303
sub_2_24:         jal          a7, 12f
0:                jal          ra, 10f
1:                jal          a3, 5f
2:                jal          ra, 8f
3:                jal          t5, 14f
4:                jal          ra, 1b
5:                jal          ra, 9f
6:                jal          ra, 2b
7:                jal          t1, 4b
8:                jal          ra, 7b
9:                jal          ra, 0b
10:               jal          s2, 11f
11:               jal          a6, 13f
12:               jal          ra, 6b
13:               jal          t1, 3b
14:               andi         a1, s4, 281
sub_2_21:         jal          a7, 4f
0:                jal          a0, 27f
1:                jal          ra, 13f
2:                jal          ra, 15f
3:                jal          a1, 16f
4:                jal          t0, 17f
5:                jal          t1, 12f
6:                jal          ra, 14f
7:                jal          gp, 11f
8:                jal          s3, 6b
9:                jal          a0, 26f
10:               jal          tp, 20f
11:               jal          ra, 22f
12:               jal          t1, 1b
13:               jal          ra, 2b
14:               jal          a1, 30f
15:               jal          ra, 24f
16:               jal          s8, 29f
17:               jal          a2, 21f
18:               jal          ra, 0b
19:               jal          t5, 25f
20:               jal          t1, 19b
21:               jal          a3, 18b
22:               jal          t1, 28f
23:               jal          ra, 9b
24:               jal          t1, 23b
25:               jal          ra, 5b
26:               jal          gp, 7b
27:               jal          a7, 3b
28:               jal          a3, 8b
29:               jal          t1, 10b
30:               sub          s7, s10, t3
sub_2_35:         jal          a7, 14f
0:                jal          tp, 7f
1:                jal          ra, 11f
2:                jal          t1, 15f
3:                jal          ra, 4f
4:                jal          ra, 5f
5:                jal          t1, 12f
6:                jal          gp, 0b
7:                jal          ra, 8f
8:                jal          ra, 3b
9:                jal          ra, 13f
10:               jal          t1, 1b
11:               jal          t2, 9b
12:               jal          ra, 2b
13:               jal          ra, 6b
14:               jal          t1, 10b
15:               sltiu        s9, s9, 2028
sub_2_29:         jal          a7, 2f
0:                jal          t1, 7f
1:                jal          ra, 13f
2:                jal          ra, 5f
3:                jal          t1, 8f
4:                jal          t1, 6f
5:                jal          s3, 1b
6:                jal          s9, 9f
7:                jal          s11, 4b
8:                jal          ra, 11f
9:                jal          t1, 3b
10:               jal          ra, 14f
11:               jal          ra, 10b
12:               jal          tp, 0b
13:               jal          t0, 12b
14:               jal          ra, 15f
15:               slt          t3, t0, a1
sub_2_23:         jal          a7, 17f
0:                jal          a7, 20f
1:                jal          ra, 6f
2:                jal          a2, 14f
3:                jal          t1, 25f
4:                jal          a7, 26f
5:                jal          ra, 15f
6:                jal          ra, 5b
7:                jal          tp, 28f
8:                jal          ra, 23f
9:                jal          ra, 10f
10:               jal          s6, 18f
11:               jal          s0, 22f
12:               jal          ra, 24f
13:               jal          ra, 19f
14:               jal          t1, 13b
15:               jal          ra, 21f
16:               jal          ra, 3b
17:               jal          ra, 2b
18:               jal          s1, 12b
19:               jal          a4, 27f
20:               jal          tp, 9b
21:               jal          a4, 11b
22:               jal          gp, 8b
23:               jal          ra, 7b
24:               jal          gp, 4b
25:               jal          t0, 1b
26:               jal          s8, 16b
27:               jal          ra, 0b
28:               slt          a7, s2, t2
sub_2_0:          jal          a7, 8f
0:                jal          t1, 7f
1:                jal          ra, 20f
2:                jal          s5, 18f
3:                jal          ra, 14f
4:                jal          ra, 1b
5:                jal          ra, 16f
6:                jal          ra, 3b
7:                jal          ra, 4b
8:                jal          ra, 11f
9:                jal          tp, 5b
10:               jal          ra, 19f
11:               jal          ra, 6b
12:               jal          ra, 9b
13:               jal          ra, 10b
14:               jal          ra, 15f
15:               jal          a2, 2b
16:               jal          ra, 0b
17:               jal          ra, 13b
18:               jal          ra, 17b
19:               jal          ra, 12b
20:               ori          t0, ra, 1035
sub_2_27:         jal          a7, 7f
0:                jal          s1, 6f
1:                jal          t1, 17f
2:                jal          ra, 14f
3:                jal          t1, 16f
4:                jal          ra, 0b
5:                jal          s8, 18f
6:                jal          t1, 9f
7:                jal          t1, 13f
8:                jal          s11, 5b
9:                jal          a3, 12f
10:               jal          ra, 2b
11:               jal          t1, 19f
12:               jal          ra, 8b
13:               jal          ra, 3b
14:               jal          t2, 4b
15:               jal          ra, 10b
16:               jal          ra, 1b
17:               jal          tp, 15b
18:               jal          ra, 11b
19:               and          s4, s2, a4
sub_2_10:         jal          a7, 4f
0:                jal          a7, 2f
1:                jal          ra, 0b
2:                jal          tp, 3f
3:                jal          ra, 7f
4:                jal          t1, 1b
5:                jal          ra, 6f
6:                jal          t1, 8f
7:                jal          ra, 5b
8:                jal          s1, 11f
9:                jal          gp, 12f
10:               jal          ra, 9b
11:               jal          s2, 10b
12:               lui          a7, 364944
sub_2_1:          jal          a7, 15f
0:                jal          t1, 11f
1:                jal          t0, 0b
2:                jal          s1, 3f
3:                jal          ra, 14f
4:                jal          ra, 17f
5:                jal          t1, 10f
6:                jal          t1, 2b
7:                jal          t1, 4b
8:                jal          ra, 18f
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          ra, 13f
12:               jal          ra, 7b
13:               jal          t1, 6b
14:               jal          ra, 9b
15:               jal          t1, 16f
16:               jal          ra, 1b
17:               jal          ra, 8b
18:               auipc        a4, 479270
sub_2_17:         jal          a7, 9f
0:                jal          t1, 14f
1:                jal          t1, 5f
2:                jal          s8, 13f
3:                jal          ra, 1b
4:                jal          a0, 7f
5:                jal          s9, 0b
6:                jal          ra, 8f
7:                jal          t5, 3b
8:                jal          t2, 2b
9:                jal          gp, 15f
10:               jal          t1, 17f
11:               jal          t0, 6b
12:               jal          s1, 4b
13:               jal          ra, 10b
14:               jal          ra, 16f
15:               jal          ra, 12b
16:               jal          ra, 11b
17:               jal          t1, 18f
18:               addi         a0, s3, 952
sub_2_20:         jal          a7, 21f
0:                jal          t1, 11f
1:                jal          ra, 27f
2:                jal          t1, 23f
3:                jal          ra, 12f
4:                jal          t1, 15f
5:                jal          s0, 18f
6:                jal          ra, 20f
7:                jal          a4, 24f
8:                jal          t0, 22f
9:                jal          t5, 4b
10:               jal          s5, 7b
11:               jal          ra, 19f
12:               jal          t4, 1b
13:               jal          ra, 6b
14:               jal          t2, 5b
15:               jal          t1, 0b
16:               jal          s5, 9b
17:               jal          a6, 16b
18:               jal          s1, 17b
19:               jal          ra, 28f
20:               jal          gp, 25f
21:               jal          a0, 2b
22:               jal          t1, 3b
23:               jal          t1, 8b
24:               jal          ra, 26f
25:               jal          s5, 14b
26:               jal          ra, 13b
27:               jal          ra, 10b
28:               xori         s0, a0, -583
sub_2_14:         jal          a7, 23f
0:                jal          t1, 8f
1:                jal          ra, 10f
2:                jal          s3, 25f
3:                jal          t1, 15f
4:                jal          ra, 16f
5:                jal          ra, 6f
6:                jal          t1, 12f
7:                jal          ra, 1b
8:                jal          ra, 28f
9:                jal          ra, 0b
10:               jal          gp, 4b
11:               jal          a2, 27f
12:               jal          t1, 11b
13:               jal          gp, 3b
14:               jal          ra, 22f
15:               jal          a1, 5b
16:               jal          ra, 20f
17:               jal          ra, 2b
18:               jal          s3, 21f
19:               jal          ra, 24f
20:               jal          ra, 17b
21:               jal          ra, 19b
22:               jal          ra, 13b
23:               jal          s9, 18b
24:               jal          ra, 7b
25:               jal          t1, 26f
26:               jal          ra, 14b
27:               jal          a7, 9b
28:               sra          a1, t6, s4
sub_2_9:          jal          a7, 13f
0:                jal          ra, 16f
1:                jal          ra, 21f
2:                jal          ra, 4f
3:                jal          s10, 25f
4:                jal          s0, 5f
5:                jal          gp, 23f
6:                jal          a0, 14f
7:                jal          ra, 15f
8:                jal          a0, 2b
9:                jal          ra, 1b
10:               jal          t1, 8b
11:               jal          t1, 10b
12:               jal          ra, 22f
13:               jal          tp, 0b
14:               jal          ra, 27f
15:               jal          ra, 24f
16:               jal          ra, 18f
17:               jal          t1, 12b
18:               jal          t3, 9b
19:               jal          ra, 11b
20:               jal          t1, 26f
21:               jal          t5, 19b
22:               jal          ra, 3b
23:               jal          ra, 20b
24:               jal          ra, 17b
25:               jal          ra, 6b
26:               jal          ra, 7b
27:               slt          s1, a6, t2
sub_2_18:         jal          a7, 5f
0:                jal          gp, 11f
1:                jal          ra, 10f
2:                jal          t0, 21f
3:                jal          ra, 7f
4:                jal          ra, 18f
5:                jal          ra, 8f
6:                jal          s6, 4b
7:                jal          t3, 6b
8:                jal          ra, 0b
9:                jal          gp, 1b
10:               jal          ra, 17f
11:               jal          t0, 2b
12:               jal          t1, 15f
13:               jal          t1, 3b
14:               jal          ra, 22f
15:               jal          ra, 9b
16:               jal          ra, 12b
17:               jal          ra, 20f
18:               jal          tp, 19f
19:               jal          t2, 16b
20:               jal          t1, 14b
21:               jal          s2, 13b
22:               srai         t0, a5, 23
sub_2_12:         jal          a7, 11f
0:                jal          t4, 3f
1:                jal          t0, 2f
2:                jal          t0, 5f
3:                jal          ra, 6f
4:                jal          s0, 0b
5:                jal          t1, 10f
6:                jal          ra, 1b
7:                jal          t3, 8f
8:                jal          ra, 12f
9:                jal          a7, 4b
10:               jal          ra, 13f
11:               jal          ra, 7b
12:               jal          ra, 9b
13:               or           s2, s3, s9
sub_2_3:          jal          a7, 12f
0:                jal          s6, 6f
1:                jal          ra, 0b
2:                jal          ra, 3f
3:                jal          t1, 10f
4:                jal          s6, 2b
5:                jal          a6, 4b
6:                jal          t1, 13f
7:                jal          t1, 5b
8:                jal          t1, 1b
9:                jal          ra, 8b
10:               jal          s11, 15f
11:               jal          ra, 16f
12:               jal          ra, 9b
13:               jal          t1, 7b
14:               jal          t5, 11b
15:               jal          t1, 14b
16:               srai         zero, zero, 8
                  sub          a6, s1, a1
                  andi         s1, a5, -325
                  sltu         s2, s2, a0
                  auipc        a0, 387775
                  bgeu         t3, gp, 13f
                  slt          s1, a3, s3
                  bltu         s2, a1, 9f
                  addi         t4, tp, -1743
                  add          t0, s4, t0
9:                srl          s11, s11, t1
                  xori         s10, tp, -1590
                  andi         gp, s11, 858
                  srl          a0, t0, s10
13:               blt          t6, s9, 27f
                  sub          s9, ra, s1
                  ori          tp, s10, -103
                  auipc        s7, 835370
                  addi         s0, a2, -597
                  bltu         s11, t6, 33f
                  nop
                  addi         tp, a1, 101
                  sltiu        gp, s7, 1360
                  xori         a6, ra, 400
                  srl          s10, a1, ra
                  add          ra, s0, s7
                  blt          t3, s0, 27f
sub_2_37:         jal          a7, 7f
0:                jal          s2, 10f
1:                jal          ra, 9f
2:                jal          tp, 4f
3:                jal          t0, 1b
4:                jal          ra, 3b
5:                jal          ra, 2b
6:                jal          t2, 8f
7:                jal          t1, 5b
8:                jal          ra, 0b
9:                jal          ra, 6b
10:               srli         ra, a4, 20
                  slt          s7, a3, s7
27:               srli         s5, t4, 20
                  addi         s9, s1, -1819
                  srli         s10, s11, 11
                  add          s4, s1, s1
                  srl          s7, a5, t6
                  slt          a6, t5, s3
33:               blt          s5, tp, 35f
                  beq          a0, s8, 40f
35:               addi         gp, t0, 1143
                  blt          s8, a1, 41f
                  sub          s0, s1, ra
                  bltu         a4, s5, 49f
                  srli         s9, a5, 5
40:               xor          s10, s6, ra
41:               slti         s5, s1, -130
                  slt          zero, s7, t5
                  add          t2, zero, zero
                  bne          t0, a3, 57f
                  bgeu         a3, s1, 59f
                  and          s4, a0, a5
                  slt          a7, s1, a4
                  and          s0, a3, s1
49:               sltu         a1, s1, a1
                  ori          s8, zero, -790
                  sra          s4, t1, t5
                  andi         s10, a3, -1934
                  slt          a0, a1, t6
                  sub          t4, t3, t5
                  nop
                  bgeu         sp, a4, 68f
57:               slli         t5, s7, 9
                  srl          s11, tp, s1
59:               xor          t4, t1, t2
                  ori          s4, a5, 101
                  or           t4, s6, a4
                  bge          s1, gp, 69f
                  slli         t3, s9, 27
                  sub          s2, s8, a4
                  xori         s9, a1, -1468
                  lui          s11, 848739
                  addi         t4, a7, -1217
68:               addi         t1, s10, 928
69:               or           s4, t6, s6
                  or           s11, tp, s5
                  slli         s3, a2, 25
                  sltu         s7, s2, s10
                  addi         a1, a4, -1335
                  add          a4, a3, s9
                  slli         zero, s9, 20
                  beq          t4, s7, 82f
                  lui          a2, 765348
                  slli         s2, tp, 21
                  sub          a1, a2, a0
                  xor          t4, t1, a5
                  or           s10, sp, s4
82:               sra          a1, ra, s2
                  ori          s8, a5, 807
                  nop
                  and          s9, a7, sp
                  or           s1, s0, zero
                  and          zero, t2, sp
                  srl          ra, s2, s11
                  sll          a7, ra, t5
                  lui          ra, 541218
                  ori          zero, s11, 1951
                  beq          a6, t3, 105f
                  addi         zero, a3, 1257
                  bltu         a0, a1, 106f
                  addi         s0, ra, -1254
                  ori          t5, a5, -729
                  sub          a6, t5, s3
                  sra          a2, a1, t4
                  blt          s1, s4, 109f
                  auipc        s0, 899636
                  sub          t4, s1, s11
                  srl          a1, t1, s11
                  sll          a2, s4, a4
                  nop
105:              srli         a1, t4, 16
106:              blt          s4, zero, 121f
                  lui          a4, 891740
                  sub          t2, a4, s10
109:              blt          zero, t5, 112f
                  add          s6, t4, s9
                  sll          t0, zero, s10
112:              sub          t0, s1, s0
                  bne          a2, s5, 128f
                  xor          a4, t3, a7
                  beq          s5, s7, 117f
                  addi         a2, s2, -1475
117:              sltiu        ra, s7, 1758
                  andi         ra, t3, 1068
                  and          t5, t3, gp
                  slt          s2, s11, t3
121:              add          a7, s7, zero
                  sra          gp, tp, s4
                  srli         s8, s7, 13
                  srl          a7, t2, s9
                  srl          s1, t0, t1
                  sltu         a3, a6, zero
                  and          a3, t3, t5
128:              and          a6, s3, a3
                  xori         t3, s11, 399
                  srli         s5, t5, 30
                  sltu         a3, s10, a2
                  slt          zero, a3, sp
                  bgeu         s9, t2, 148f
                  auipc        a4, 576863
                  ori          s2, gp, -1326
                  bge          zero, t2, 146f
                  srli         s6, s10, 1
                  srli         a4, t6, 0
                  and          s10, t2, s3
                  sltu         a2, s9, t5
                  nop
                  slli         t1, s8, 8
                  sltu         s1, tp, t6
                  nop
                  add          ra, s7, a7
146:              xori         s1, t1, 1097
                  bgeu         a4, s0, 149f
148:              add          t5, a4, a2
149:              lui          a7, 376621
                  beq          a6, a7, 170f
                  or           a2, a4, a1
                  xor          gp, s11, a5
                  sll          t0, s7, gp
                  srl          a2, sp, s9
                  bge          s9, a4, 162f
                  nop
                  slti         s1, a3, -977
                  bge          a2, t4, 163f
                  slli         s0, s6, 18
                  addi         s1, s1, -1706
                  or           a4, s3, t0
162:              bge          a6, s3, 170f
163:              xori         s7, tp, 1902
                  andi         s11, sp, 1752
                  bltu         s9, sp, 172f
                  andi         s5, t1, -1943
                  slli         t1, t3, 28
                  sltu         s0, a6, s9
                  beq          a6, a2, 170f
170:              sltiu        t4, a4, -997
                  or           a0, s0, ra
172:              srl          s10, s3, a7
                  ori          s5, t2, -1520
                  or           s8, s7, s3
                  add          a4, a2, t1
                  sub          ra, a5, s7
                  slti         a0, zero, -650
                  beq          a5, tp, 190f
                  bltu         a0, t4, 188f
                  slti         t5, t4, -914
                  bgeu         t1, sp, 183f
                  sll          zero, s0, a4
183:              sub          a4, s6, t0
                  addi         s3, a0, -618
                  blt          t2, a0, 191f
                  add          a7, a5, a6
                  auipc        t4, 972433
188:              slli         a4, t2, 18
                  andi         s2, t2, -1482
190:              sra          a2, s11, s9
191:              sub          a4, a3, s8
                  srai         t1, a2, 26
sub_2_32:         jal          a7, 11f
0:                jal          t1, 21f
1:                jal          t1, 6f
2:                jal          ra, 12f
3:                jal          t1, 7f
4:                jal          ra, 17f
5:                jal          ra, 20f
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          ra, 14f
9:                jal          a1, 16f
10:               jal          t1, 2b
11:               jal          s2, 15f
12:               jal          ra, 8b
13:               jal          t5, 3b
14:               jal          ra, 13b
15:               jal          ra, 1b
16:               jal          gp, 4b
17:               jal          ra, 5b
18:               jal          ra, 0b
19:               jal          t0, 18b
20:               jal          s9, 19b
21:               srli         t0, t4, 8
                  auipc        s1, 780016
                  sub          gp, s8, t3
                  ori          t0, a5, -1365
                  sra          a4, s10, ra
                  bge          a5, s5, 211f
                  sub          t5, s4, a2
                  sub          a2, t0, s4
                  beq          zero, a5, 207f
                  ori          s10, t4, -1772
                  slti         s5, s3, 1160
                  bge          s10, gp, 208f
                  bgeu         s6, t0, 215f
                  sub          s4, a1, a2
                  slti         s3, s9, -1996
207:              addi         a3, ra, 980
208:              add          t2, tp, a0
                  srli         s3, a4, 3
                  ori          s2, s2, -554
211:              slli         s6, sp, 11
                  bge          a0, s2, 213f
213:              xori         s3, a5, 1663
                  andi         t0, s1, -175
215:              sub          zero, t0, a7
                  lui          t5, 1033732
                  nop
                  srl          s6, a5, s8
                  sltu         s4, s8, s9
                  xori         gp, sp, -867
                  sltu         s4, t0, s4
                  slli         s4, s2, 29
                  lui          ra, 986251
                  addi         s5, t6, -472
                  sltiu        s5, a4, 424
                  bltu         a5, s2, 229f
                  sll          gp, s10, s4
                  ori          t2, s4, 323
229:              blt          t2, a3, 249f
                  or           a7, zero, a3
                  or           t0, t1, a1
                  xor          s4, s10, a0
                  srai         t5, a6, 10
                  xori         gp, a0, 1340
                  srai         a4, a7, 15
                  and          s8, tp, s8
                  srli         a1, a6, 13
                  lui          s11, 876874
                  addi         s7, a7, -1081
                  sltiu        zero, s5, 95
                  sll          s2, t5, t5
                  sll          s6, t5, t2
                  bgeu         s5, a5, 258f
                  bne          s0, a7, 252f
                  lui          gp, 871471
                  sltu         s6, a7, a5
                  addi         s7, s7, -663
                  slli         t3, t0, 6
249:              slli         s0, tp, 23
                  ori          a6, s9, -289
                  sra          s7, a4, a6
252:              bgeu         t5, tp, 259f
                  beq          s4, a4, 268f
                  sub          a4, a1, s10
                  sltu         t4, t6, a2
                  sll          zero, tp, s11
                  sltiu        t3, a0, -1434
258:              nop
259:              sra          a1, a2, a3
                  slt          s7, t0, t0
                  srli         t1, a0, 12
                  slt          s0, a1, s5
                  lui          t4, 211526
                  sub          t5, s3, s9
                  ori          t5, s0, 738
                  beq          t0, a3, 280f
                  xor          s1, a5, s5
268:              and          a2, sp, s0
                  sltu         a4, a2, a4
                  xor          ra, a0, s11
                  blt          s10, tp, 281f
                  slli         s5, a7, 17
                  sltiu        a4, a1, -191
                  and          s0, zero, a3
                  sra          zero, a6, t4
                  ori          t4, s0, -217
                  sra          s8, s1, t5
                  sub          zero, s10, a6
                  add          a1, s5, zero
280:              blt          a7, a7, 282f
281:              bgeu         t4, t0, 291f
282:              bne          s4, s6, 288f
                  sub          a0, gp, s1
                  ori          s2, t5, 1445
sub_2_16:         jal          a7, 11f
0:                jal          ra, 1f
1:                jal          ra, 4f
2:                jal          ra, 16f
3:                jal          t5, 17f
4:                jal          ra, 8f
5:                jal          t1, 15f
6:                jal          t1, 7f
7:                jal          t1, 2b
8:                jal          s2, 18f
9:                jal          ra, 14f
10:               jal          ra, 3b
11:               jal          t1, 10b
12:               jal          t0, 0b
13:               jal          s5, 5b
14:               jal          ra, 13b
15:               jal          s9, 19f
16:               jal          t1, 9b
17:               jal          t1, 12b
18:               jal          ra, 6b
19:               sra          t5, s2, t1
                  lui          s11, 928238
                  slt          s1, ra, s10
                  or           s7, s8, s2
288:              bltu         a5, t0, 290f
                  bne          s11, zero, 301f
290:              sub          a2, sp, t3
291:              sltiu        a4, t6, 1680
                  sra          s10, t6, a3
                  addi         a1, a3, -906
                  ori          s1, a2, 1304
                  sll          s7, ra, s1
                  or           a0, t2, t4
                  addi         a4, a6, -864
                  srai         s9, s10, 20
                  beq          s3, zero, 302f
                  sub          t3, s0, s1
301:              slti         zero, s0, 306
302:              beq          gp, tp, 317f
                  srl          s4, ra, a6
                  lui          a3, 105952
                  addi         a0, s0, -941
                  slti         s5, gp, 1441
                  sll          s0, ra, s10
                  ori          tp, a4, 1243
                  sll          s7, s7, s6
                  sll          t0, a2, s10
                  bne          s8, gp, 326f
                  bge          a4, t0, 325f
                  bge          t1, t3, 320f
                  blt          gp, t1, 319f
                  srl          t1, t5, s6
                  sra          a4, s8, t6
317:              add          s4, s6, a7
                  bne          t4, t4, 331f
319:              slt          s6, s6, a3
320:              srl          zero, a0, s2
                  blt          zero, sp, 323f
                  beq          s8, zero, 329f
323:              sra          t0, s0, a6
                  srli         a6, a5, 15
325:              bgeu         s3, s9, 337f
326:              sub          t0, s4, zero
                  xori         s9, s1, 210
                  sub          t4, s2, s2
329:              bltu         s0, s6, 337f
                  bltu         t0, t4, 340f
331:              sltu         gp, t5, a2
                  addi         s4, t5, -1887
                  srli         ra, tp, 9
                  bltu         t6, s6, 336f
                  lui          t0, 1033557
336:              lui          gp, 1009864
337:              beq          ra, s1, 346f
                  lui          s11, 145630
                  and          s11, s6, s7
340:              xori         t0, sp, 991
                  srli         a0, t4, 26
                  srli         s3, ra, 14
                  lui          s7, 418950
                  bne          s8, s3, 346f
                  lui          t5, 394975
346:              blt          s8, gp, 352f
                  xor          t1, a4, t6
                  bgeu         tp, t5, 363f
                  or           a2, s5, s8
                  xori         s4, s6, 49
                  sltu         t3, a2, a6
352:              bge          a0, a6, 372f
                  beq          a7, t4, 354f
354:              ori          a2, s9, 615
                  blt          ra, s10, 368f
                  xor          a0, s4, s1
                  or           s8, t4, s8
                  xor          s5, s0, t6
                  xori         a6, s2, -759
                  srli         s10, t6, 21
                  lui          t2, 899149
                  slt          zero, s8, a0
363:              add          s4, zero, s0
                  or           t5, tp, s3
sub_2_2:          jal          a7, 11f
0:                jal          ra, 6f
1:                jal          a7, 7f
2:                jal          t1, 3f
3:                jal          ra, 14f
4:                jal          a7, 9f
5:                jal          t1, 8f
6:                jal          s7, 13f
7:                jal          s10, 4b
8:                jal          gp, 2b
9:                jal          ra, 12f
10:               jal          t1, 5b
11:               jal          tp, 0b
12:               jal          ra, 10b
13:               jal          ra, 1b
14:               xori         t0, ra, 789
                  bne          t3, s11, 370f
                  srai         zero, s9, 25
                  xor          t2, t6, s7
368:              add          a0, s2, s10
                  sltiu        s10, t3, -991
370:              add          a7, s10, t0
                  addi         a1, a0, 1132
372:              slli         a0, t4, 27
                  xor          s2, s3, a2
                  sll          s9, t1, a2
                  addi         s7, s6, 1655
                  sra          a1, t5, s11
                  and          a3, a3, s5
                  srl          a0, ra, s8
                  andi         s3, s8, -1814
                  sltiu        s3, t3, 1159
                  andi         a7, t3, 796
                  xori         s11, t1, -340
                  lui          a3, 353322
                  beq          a6, gp, 396f
                  bne          a3, s6, 396f
                  ori          s4, t0, 1092
                  add          a6, a5, t6
                  sub          a2, tp, ra
                  srl          s2, a6, s6
                  slt          s1, s2, a0
                  addi         tp, s7, 1334
                  srl          s5, t2, a7
                  xori         s3, t5, 1409
                  bltu         t4, ra, 400f
                  blt          s7, t1, 408f
396:              blt          zero, t3, 411f
                  beq          s11, t2, 412f
                  bltu         gp, a5, 401f
                  xor          s9, a7, ra
400:              bne          s2, a2, 403f
401:              bltu         a2, a3, 415f
                  sltu         t4, tp, s11
403:              and          s10, a5, s6
                  ori          s6, s10, -1626
                  sltu         a7, t4, s10
                  slli         s2, sp, 20
                  or           s1, sp, s6
408:              sub          s10, a4, a6
                  bltu         t4, s10, 424f
                  bltu         s1, a7, 424f
411:              sra          a0, sp, a2
412:              lui          t3, 417534
                  addi         tp, a4, 1961
                  lui          t5, 102773
415:              bne          s4, zero, 422f
                  nop
                  bgeu         s5, s8, 422f
                  andi         s10, a6, -1162
                  srl          t1, s9, t2
                  xori         s5, s8, -1730
                  slli         s8, t1, 20
422:              ori          s3, s3, -299
                  nop
424:              sltu         s1, t0, a0
                  bne          t3, s1, 435f
                  nop
                  or           a3, s11, s5
                  add          a3, zero, t1
                  blt          a7, a4, 431f
                  slti         s8, s2, 1420
431:              xor          s1, zero, t6
                  srai         t2, a3, 1
sub_2_31:         jal          a7, 2f
0:                jal          s9, 1f
1:                jal          ra, 5f
2:                jal          ra, 15f
3:                jal          ra, 4f
4:                jal          ra, 11f
5:                jal          t1, 14f
6:                jal          ra, 17f
7:                jal          gp, 9f
8:                jal          t1, 7b
9:                jal          tp, 13f
10:               jal          t1, 6b
11:               jal          t1, 8b
12:               jal          ra, 16f
13:               jal          ra, 12b
14:               jal          t1, 3b
15:               jal          gp, 0b
16:               jal          s2, 10b
17:               sltiu        s7, s1, -1359
                  sltu         a1, s6, s2
                  sltu         a1, a3, t4
435:              slli         s2, s10, 13
                  bne          a3, a6, 438f
                  sub          t3, t6, a2
438:              beq          a5, a0, 445f
                  srai         gp, t6, 19
                  nop
                  blt          a7, s1, 456f
                  sltu         t5, tp, s1
                  or           s6, s4, t6
                  slli         s10, t2, 9
445:              andi         a6, t0, -1682
                  xor          s7, t3, zero
                  bge          t1, s6, 454f
                  srai         tp, a4, 8
                  slt          t2, t0, t0
                  or           s6, s9, t0
                  sub          gp, t0, a6
                  xor          s4, gp, tp
                  xori         t0, s5, 55
454:              auipc        tp, 518955
                  sltiu        ra, t4, 604
456:              xor          s11, s10, t4
                  addi         t4, gp, -214
                  sll          a4, s2, tp
                  bgeu         s8, s8, 471f
                  addi         s5, t3, -1038
                  bge          s4, t6, 475f
                  srl          s5, s10, a6
                  srai         zero, s8, 4
                  srai         s8, tp, 21
                  sltu         s5, t4, t2
                  slti         s9, a3, 1016
                  add          s2, s11, s8
                  sltiu        s6, a0, -1976
                  lui          t0, 260837
                  or           a2, s10, a2
471:              sub          a7, t4, zero
                  sll          s11, s9, t4
                  sltiu        ra, a4, 870
                  beq          s5, a0, 481f
475:              blt          a2, a6, 477f
                  and          t5, t0, tp
477:              ori          s1, a5, 1421
                  add          t3, s10, s8
                  blt          s0, t6, 489f
                  bne          a4, tp, 481f
481:              lui          s2, 376855
                  auipc        t1, 147488
                  sltu         s3, t0, s7
                  sltu         s3, sp, a5
                  slt          s10, a4, a7
                  auipc        s5, 375983
                  slt          t1, s2, tp
                  bltu         tp, t2, 490f
489:              addi         s1, s8, -1781
490:              xor          a2, t6, s0
                  andi         a1, s1, 938
                  add          a6, zero, s9
                  sub          s3, t6, a3
                  sll          s4, a4, a0
                  add          a7, a1, gp
                  blt          s2, t6, 516f
                  bge          s1, t6, 499f
                  bltu         s2, t6, 500f
499:              bgeu         a4, s7, 507f
500:              sll          a3, ra, t5
                  srl          s3, s2, s5
                  slt          s8, a7, s1
                  sll          s6, t5, t6
                  beq          a1, t0, 517f
                  bltu         s4, s4, 520f
                  andi         s11, s0, 433
507:              slli         s7, s1, 10
                  bge          t1, s5, 514f
                  andi         zero, s4, 1808
                  sra          a6, gp, tp
                  sltu         gp, s11, a5
                  or           a7, a5, s8
                  slt          s6, s2, t6
514:              lui          s6, 863028
                  sub          a6, s6, zero
516:              slti         s10, s11, 1094
517:              or           s6, tp, a3
                  ori          s5, s1, 808
                  slti         s10, s11, -253
520:              sub          t5, s7, s11
                  sub          s4, s7, a3
                  nop
                  auipc        a0, 955518
                  sll          s2, s6, s11
                  sub          a4, a5, s3
                  blt          s5, s7, 529f
                  srli         s11, sp, 25
                  sra          a2, sp, s2
529:              blt          a0, s2, 534f
                  add          s2, a0, t2
                  andi         s9, s5, 545
                  srai         s5, a5, 21
                  blt          sp, t6, 547f
534:              bgeu         gp, s1, 539f
                  bge          s4, tp, 547f
                  sub          s5, s8, t1
                  bge          s1, s2, 547f
                  nop
539:              slt          t1, a4, s4
                  lui          s8, 969176
                  bge          sp, a4, 550f
                  sltiu        s3, a6, 343
                  ori          s7, s5, 1864
                  lui          a4, 177199
                  nop
                  bgeu         a0, ra, 552f
547:              sltu         t1, tp, t5
                  slti         tp, a3, -34
                  andi         s11, s7, -944
550:              add          s10, s2, a2
                  andi         a4, s3, 1935
552:              sll          zero, s5, gp
                  addi         s6, s7, 1990
                  srai         t1, a7, 16
                  nop
                  bltu         t1, t4, 571f
                  add          s8, s0, zero
                  xori         tp, s11, 1456
                  slt          s3, s1, s5
                  ori          t0, tp, -627
                  xori         s11, sp, 1137
                  andi         gp, a2, -626
                  slti         s7, a4, -607
                  xori         s7, a4, 391
                  ori          s2, ra, -417
                  bgeu         t3, s0, 581f
                  sub          zero, ra, s0
                  slti         a1, s0, 1587
                  sltiu        zero, a6, 346
                  bne          s1, a4, 581f
571:              auipc        t3, 220062
                  and          a1, s10, t5
                  bne          sp, t2, 576f
                  beq          s6, tp, 587f
                  bgeu         s8, zero, 582f
576:              auipc        s2, 272323
                  nop
                  sltu         t5, t5, s4
                  and          a3, sp, s2
                  and          s3, s5, t3
581:              or           t5, t3, s8
582:              blt          t5, s7, 589f
                  srli         s1, s2, 22
                  xori         a6, s8, 790
                  sra          a3, s1, s10
                  srl          s5, s9, t1
587:              bgeu         t2, ra, 594f
                  sub          a4, s7, s10
589:              sltu         s1, t3, a4
                  bge          s2, gp, 598f
                  sub          s3, tp, s1
                  or           s7, t2, t4
                  srai         a4, zero, 29
594:              sub          ra, t4, a0
                  xori         s8, s6, -1495
                  lui          gp, 61880
                  lui          t3, 929956
598:              srai         t1, a3, 1
                  add          a6, tp, a6
                  sltu         a0, a0, t5
                  or           gp, a1, s8
                  addi         s6, t6, 26
                  slli         s6, s7, 21
                  slli         gp, tp, 22
                  auipc        t4, 29196
                  ori          s8, t1, -1377
                  addi         s7, s2, -1062
                  sll          t5, sp, t2
                  beq          a1, s11, 621f
                  beq          s9, a5, 612f
                  bgeu         t2, ra, 613f
612:              add          a0, s2, tp
613:              srli         a7, a7, 29
                  andi         t3, t4, -1428
                  blt          ra, s9, 618f
                  auipc        a0, 855307
                  xori         gp, s5, -938
618:              bgeu         s10, tp, 630f
                  srli         a0, t3, 7
                  lui          tp, 504922
621:              beq          s1, t5, 628f
                  slt          s1, a2, s5
                  blt          a6, a7, 626f
                  bne          s9, a5, 639f
                  nop
626:              bge          a7, s5, 641f
                  addi         a4, t4, -760
628:              bgeu         t3, s7, 641f
                  sra          t1, a1, s3
630:              add          a0, a0, zero
                  or           t0, s5, s6
                  blt          s9, a1, 642f
                  srai         a1, s7, 27
                  xori         t4, s9, 479
                  bne          a7, a0, 637f
                  srl          s0, t4, s1
637:              srai         a4, gp, 25
                  sra          s4, a0, s1
639:              sltiu        t5, a2, 1721
                  sltiu        t5, s1, -699
641:              beq          t6, ra, 661f
642:              sltiu        a4, t2, -136
                  sltu         t4, t4, a2
                  addi         t2, s7, -1857
                  srl          zero, a5, s5
                  blt          t2, a6, 661f
                  bgeu         a5, tp, 657f
                  sub          a6, s3, t5
                  sltiu        s7, zero, 1942
                  andi         s2, s10, 1922
                  xor          t4, s1, s7
                  sll          s10, s10, s6
                  xori         s11, t0, 292
                  blt          zero, t3, 660f
                  xori         t5, s8, 992
                  blt          t1, a7, 661f
657:              sltu         s9, t6, a2
                  slt          t4, t2, sp
                  bltu         s6, s5, 665f
660:              beq          a7, t6, 669f
661:              addi         a1, s5, 512
                  sltu         a6, gp, a0
                  sltu         s5, t1, s6
                  beq          s11, a2, 677f
665:              bne          s11, s3, 679f
                  bgeu         t0, zero, 668f
                  slli         s4, s5, 27
668:              addi         zero, t0, 59
669:              blt          a4, t0, 674f
                  bltu         a0, sp, 685f
                  or           a6, a7, t6
                  blt          t1, a1, 686f
                  srai         a3, a0, 22
674:              or           a6, zero, sp
                  or           s4, s6, a5
                  nop
677:              xor          s1, t2, a7
                  slti         a0, a5, -1292
679:              auipc        t3, 206782
                  srli         t5, s3, 8
                  auipc        t3, 605559
                  bge          s3, a1, 693f
                  sltiu        s8, t3, 815
                  slti         t0, t2, 169
685:              slt          gp, s8, t0
686:              sltiu        zero, a2, -1807
                  sub          a3, a7, t4
                  or           t5, a6, s2
                  add          s5, a6, ra
                  lui          s1, 568337
                  slti         t5, s11, 1437
                  ori          t3, a1, 1678
693:              xori         s6, t0, -744
                  add          t3, tp, s3
                  sll          t3, s9, t1
                  sll          t5, a1, t4
                  add          a4, ra, t3
                  nop
                  xor          zero, t6, t6
                  slti         s7, t1, 1759
                  sll          s9, t0, ra
                  sll          s9, a1, s0
                  lui          a7, 776325
                  nop
                  srli         t1, a2, 20
                  bge          s9, s2, 707f
707:              slti         t1, a7, -1748
                  slt          s7, a7, a4
                  and          s0, t1, t5
                  beq          a7, s10, 718f
                  andi         a0, s9, 169
                  auipc        a1, 390250
                  xori         t5, a7, -1515
                  ori          s6, s7, 1541
                  andi         t1, t1, -1707
                  srli         ra, t4, 27
                  sra          a1, s1, a6
718:              auipc        a1, 140118
                  srl          t1, zero, t1
                  bgeu         a1, t1, 734f
                  xori         s5, s6, 264
                  xor          a1, a1, t0
                  and          s2, sp, ra
                  bltu         s4, s3, 726f
                  xori         t3, tp, -887
726:              blt          a3, s10, 741f
                  bgeu         t0, s9, 733f
                  slt          a7, t2, s5
                  sub          ra, sp, tp
                  sll          a2, t2, a7
                  xor          a7, zero, a7
                  sub          s0, s8, s11
733:              add          t1, s9, s11
734:              slti         t0, a1, 1035
                  sll          s11, t5, tp
                  slli         a1, a0, 1
                  slt          s2, ra, sp
                  xori         t5, s10, -1053
                  add          a7, t4, a7
                  blt          t4, t6, 755f
741:              bgeu         tp, t0, 753f
                  xor          s2, s4, t1
                  nop
                  srai         a6, s11, 1
                  ori          a2, gp, -774
                  sltu         s7, s0, t1
                  xor          ra, s0, a7
                  sub          s3, a2, t0
                  and          t4, a2, a1
                  add          ra, s8, a3
                  srli         a4, s7, 1
                  srl          s0, t3, tp
753:              xor          s1, tp, s6
                  slt          s8, t5, s4
755:              slt          s2, sp, s1
                  andi         t3, a6, -977
                  blt          a7, t4, 768f
                  sltu         ra, s5, gp
                  addi         tp, t3, 1852
                  auipc        t4, 920756
                  add          s0, s11, t4
                  ori          s7, a3, -1887
                  beq          s4, t1, 765f
                  sltu         t0, t4, s1
765:              bge          t6, gp, 771f
                  srl          s3, a5, a2
                  bge          s0, ra, 769f
768:              slti         t2, a0, 1400
769:              and          a7, a1, t4
                  sub          s4, t0, s7
771:              slli         s1, s5, 7
                  and          s11, s1, sp
                  nop
                  sra          t1, t2, t6
                  sltiu        a7, t1, 1851
                  srl          t2, a3, a4
                  srl          ra, s11, s10
                  andi         t4, s11, -466
                  srl          s0, s6, s8
                  bltu         a0, gp, 783f
                  auipc        ra, 218113
                  andi         s0, s1, -1216
783:              sra          a1, a3, tp
                  bne          s3, s11, 785f
785:              blt          a7, s0, 795f
                  or           s8, a5, s9
                  bge          s8, s4, 794f
                  add          s5, s9, t4
                  or           s7, gp, zero
                  sltu         s10, s10, t0
                  slt          t2, t0, a4
                  auipc        s0, 218968
                  slti         s0, a1, -1294
794:              or           t1, t6, a2
795:              bne          a0, sp, 800f
                  blt          a1, s10, 808f
                  andi         s6, a5, 1081
                  bge          ra, ra, 807f
                  bne          a3, s9, 809f
800:              srai         s8, zero, 0
                  slt          s3, s5, ra
                  slli         a3, s1, 27
                  bltu         t2, s0, 816f
                  bne          a7, t4, 817f
                  slti         gp, a4, -1728
                  sra          a0, t3, ra
807:              xor          s1, s1, a6
808:              bne          sp, gp, 811f
809:              slli         s7, s0, 29
                  xori         gp, a2, -1092
811:              srli         s7, t4, 9
                  auipc        t4, 431967
                  bne          s6, t0, 828f
                  addi         t3, a0, 1902
                  sll          s3, s2, t4
816:              or           a6, s9, s8
817:              auipc        tp, 610298
                  srli         s9, t1, 23
                  sll          s7, t0, t6
                  srli         s11, s1, 1
                  srl          tp, s5, a5
                  auipc        s2, 18379
                  auipc        a2, 170071
                  blt          s1, s2, 838f
                  ori          a7, a0, 830
                  and          t0, a3, zero
                  slti         a0, a2, -797
828:              lui          a6, 773737
                  srai         s8, s7, 10
                  addi         zero, t4, 1871
                  or           tp, t5, a7
                  bne          t0, s4, 837f
                  beq          a4, s5, 840f
                  or           tp, s7, s0
                  srl          a1, s4, t3
                  or           s7, t1, s0
837:              srli         a4, s8, 30
838:              sra          t1, a5, zero
                  slt          a7, s8, t2
840:              addi         t0, s10, -1125
                  xor          t5, s9, zero
                  bne          s11, a1, 862f
                  nop
                  slt          t4, a3, s0
                  or           t4, a7, tp
                  bgeu         s8, t0, 861f
                  xor          a0, t1, s8
                  andi         tp, t2, 1829
                  nop
                  slti         t2, s8, 1305
                  sra          s8, s0, s2
                  sltiu        t5, s9, 1584
                  auipc        s10, 505132
                  xor          gp, ra, s5
                  add          gp, sp, t1
                  bltu         t0, gp, 858f
                  slli         gp, a5, 25
858:              bltu         s1, s0, 865f
                  bgeu         a1, ra, 861f
                  slli         t1, s6, 23
861:              srli         a6, s3, 1
862:              auipc        s11, 925645
                  and          s7, s5, s9
                  srli         ra, t2, 31
865:              ori          s2, s11, -1349
                  bgeu         zero, s3, 886f
                  bne          s8, sp, 880f
                  sra          s1, s9, t2
                  srai         s8, s8, 23
                  addi         t1, t6, 740
                  slt          t4, s10, t6
                  xor          s2, s10, s3
                  lui          gp, 666253
                  nop
                  nop
                  slt          s11, a0, t0
                  addi         a0, a2, -1705
                  or           a3, t2, s5
                  add          s1, a2, t1
880:              xori         a1, a1, 1269
                  sltiu        s4, a2, -2002
                  bgeu         a2, sp, 889f
                  add          s11, t2, t6
                  nop
                  or           a1, s7, sp
886:              bltu         s10, gp, 900f
                  andi         s10, tp, -637
                  sltu         s8, t1, s9
889:              add          t3, a3, t5
                  slti         s10, zero, 655
                  auipc        a6, 141429
                  add          s5, a6, t0
                  andi         s1, a5, 341
                  xori         s11, s4, 2016
                  slt          s10, t1, t4
                  beq          sp, a0, 911f
                  sltiu        a3, tp, 816
                  bltu         a2, ra, 906f
                  ori          a6, sp, 1316
900:              or           ra, s4, a0
                  ori          t5, s0, -157
                  andi         tp, s3, -1380
                  slt          a4, t3, s3
                  slli         t1, t4, 23
                  bgeu         a6, gp, 908f
906:              ori          a1, t4, -1138
                  slli         a7, a0, 15
908:              bge          sp, gp, 923f
                  slt          s9, t4, a6
                  blt          s6, t2, 913f
911:              and          s5, s11, tp
                  slli         s2, a5, 17
913:              srai         s6, a6, 9
                  ori          gp, a6, 1697
                  xori         t5, gp, -13
                  xor          gp, a0, a6
                  bltu         t1, s6, 932f
                  add          gp, t5, s1
                  sltu         a1, a2, t4
                  nop
                  blt          ra, a4, 923f
                  blt          t1, t6, 936f
923:              and          s9, s10, a4
                  and          s8, gp, a6
                  srl          a4, a1, s4
                  srl          t0, s11, s4
sub_2_5:          jal          a7, 2f
0:                jal          ra, 8f
1:                jal          t1, 3f
2:                jal          t1, 9f
3:                jal          gp, 5f
4:                jal          ra, 6f
5:                jal          gp, 10f
6:                jal          ra, 1b
7:                jal          ra, 4b
8:                jal          t1, 7b
9:                jal          t1, 0b
10:               srl          t3, t4, s4
                  andi         a4, t1, -70
                  srl          a7, ra, s2
                  bne          a3, t1, 936f
                  or           a3, sp, ra
                  addi         s5, a0, 1301
932:              sub          s11, t1, sp
                  xori         s5, gp, 1991
                  ori          s6, a7, 219
                  nop
936:              srl          a0, s0, s11
                  andi         a7, t1, -704
                  and          tp, a3, a2
                  beq          s11, a7, 952f
                  xori         a4, a7, -1646
                  bne          a2, zero, 951f
                  addi         tp, zero, -663
                  xor          s4, s2, tp
                  xor          s3, t6, a4
                  beq          s11, s5, 950f
                  sltiu        t4, a6, -2046
                  bltu         zero, s9, 953f
                  bgeu         t1, s6, 960f
                  sub          a4, a0, t5
950:              srai         a1, a7, 10
951:              bne          zero, s8, 960f
952:              slti         s5, s9, -2034
953:              slt          t0, a4, s8
                  sltu         t5, s11, tp
                  ori          s3, s2, -487
                  srl          zero, t0, a4
                  ori          a1, s4, -1236
                  ori          s7, a3, -513
                  lui          s8, 946924
960:              bne          s10, t2, 962f
                  slli         a1, a3, 3
962:              bge          s1, s11, 968f
                  slt          t1, a6, a4
                  srli         a1, t2, 13
                  beq          t1, ra, 975f
                  auipc        s8, 202645
                  beq          a7, s8, 982f
968:              add          s5, s2, t6
                  srli         t4, a4, 28
                  bne          sp, s11, 972f
                  xori         a4, sp, -1627
972:              bltu         t4, s11, 973f
973:              srai         s7, a7, 18
                  xor          gp, a3, a7
975:              slti         a6, s8, -1855
                  blt          s6, s11, 981f
                  slt          s8, s10, a0
                  bne          gp, a3, 985f
                  srl          a1, s7, s4
                  sltiu        a1, s3, -1422
981:              and          s5, gp, s1
982:              sub          a7, s2, s7
                  ori          a7, s8, 22
                  nop
985:              xor          s10, s11, a7
                  addi         s2, a6, 312
                  bne          a7, s7, 999f
                  addi         s8, a0, -1240
                  andi         t1, s6, -92
                  ori          tp, t4, -1076
                  auipc        s0, 1016839
                  sltiu        a7, s8, 753
                  xor          a7, gp, zero
                  sra          a6, s7, t2
                  slti         s3, tp, -137
                  ori          s9, s5, -246
                  xori         s8, t1, 1618
                  slli         s9, s1, 15
999:              beq          s6, zero, 1010f
                  add          a1, a7, zero
                  xori         a0, s5, -1317
                  sub          s8, s5, s11
                  bge          a7, s8, 1010f
                  xori         a4, t1, -81
                  xori         s10, t6, -1957
                  and          t2, s10, ra
                  addi         s3, s11, -1880
                  sll          s9, a5, s0
                  slli         s1, s4, 29
1010:             slt          s7, t1, s11
                  slti         a3, a5, 1273
                  sub          a7, a3, t0
                  sltiu        s0, s2, 253
                  or           a4, s8, a3
                  slli         s10, s7, 9
                  sltiu        a7, a6, -528
                  bltu         s11, a2, 1032f
                  srl          t0, s3, s11
                  bge          s4, t2, 1029f
                  bgeu         ra, tp, 1040f
                  add          t4, tp, s10
                  bgeu         t1, a3, 1023f
1023:             auipc        zero, 658496
                  add          s11, s8, t6
                  ori          gp, s8, 414
                  and          a1, a0, a1
                  srai         tp, s10, 22
                  andi         s7, t2, -1592
1029:             addi         s1, t6, 773
                  beq          zero, s0, 1042f
                  add          t2, sp, t0
1032:             sltiu        s8, a6, -36
                  bge          a7, tp, 1048f
                  sltiu        s8, s9, 1400
                  xori         s3, s7, 640
                  sll          a0, s10, a5
                  lui          s0, 928195
                  or           a4, a6, a0
                  sltu         t0, zero, s9
1040:             nop
                  srl          a0, a1, t5
1042:             sltiu        s9, s2, 1544
                  sltiu        s7, tp, -751
                  beq          gp, zero, 1046f
                  beq          a5, s7, 1060f
1046:             andi         t5, s6, -301
                  srl          t2, a7, t4
1048:             add          a1, s2, a2
                  or           s7, s6, gp
                  beq          t3, s11, 1052f
                  srl          a0, zero, s4
1052:             sub          a4, gp, s4
                  lui          s5, 552032
                  sub          t5, t4, a2
                  srai         a3, s5, 7
                  blt          a6, gp, 1064f
                  sltiu        s3, s11, 727
                  addi         s11, s4, -562
                  xori         s3, a6, -1064
1060:             slti         t0, t4, -1868
                  addi         s8, s3, -609
                  and          s5, a0, zero
                  andi         a7, t5, -537
1064:             srli         s11, gp, 29
                  blt          s6, tp, 1070f
                  andi         a2, t0, 484
                  srai         a0, s6, 21
                  sltiu        a4, t4, 635
                  ori          s6, t5, -329
1070:             ori          s9, sp, -566
                  sltiu        ra, t3, 156
                  sub          a4, gp, s5
                  sltu         a2, t1, s3
                  or           s8, s1, t0
                  bltu         s10, s5, 1081f
                  sltiu        s3, a6, 68
                  bltu         s5, s7, 1084f
                  xori         s6, s11, -1690
                  addi         s9, tp, 1761
                  ori          t4, t3, -741
1081:             sltu         s8, a7, s0
                  nop
                  bltu         t5, s10, 1096f
1084:             srai         s8, a0, 30
                  andi         s0, a5, -1537
                  bne          s1, a2, 1089f
                  sll          t0, t6, t3
                  auipc        t1, 91556
1089:             bge          gp, s5, 1096f
                  and          s11, a4, t6
                  sra          a6, s11, t0
                  srai         t1, a4, 16
                  sll          s1, a3, t1
                  ori          s10, a0, 1335
                  bgeu         sp, ra, 1106f
1096:             sltu         gp, a0, s8
                  or           a4, t4, a4
                  auipc        t4, 989563
                  nop
                  and          a4, s3, a4
                  bne          t0, t2, 1103f
                  sltiu        a2, a1, -1923
1103:             and          gp, t3, s5
                  slli         s4, a1, 22
                  xor          t4, s0, s0
1106:             lui          a0, 257593
                  nop
                  slt          s10, a7, a7
                  srai         a7, s0, 2
                  lui          a2, 213650
                  lui          s10, 414352
                  slt          a1, tp, ra
                  and          a7, a4, ra
                  lui          ra, 997411
                  sltiu        t2, s3, -1946
                  srli         s1, a1, 27
                  srli         a1, t4, 17
                  or           s4, s11, sp
                  sll          s3, a1, a6
                  beq          tp, t3, 1122f
                  bne          s9, s2, 1131f
1122:             auipc        s10, 728714
                  slt          t5, s5, s6
                  auipc        s7, 874167
                  lui          zero, 878977
                  auipc        tp, 710248
                  sltiu        t5, t0, 1334
                  beq          a1, s0, 1131f
                  xori         a0, t4, 359
                  srli         s0, sp, 18
1131:             sub          s3, gp, s1
                  xori         s4, a0, 1036
                  sltu         t0, s9, zero
                  bne          a0, s9, 1148f
                  sltu         a6, t4, s9
                  srli         t3, sp, 13
                  sra          s4, t3, zero
                  beq          s0, s2, 1150f
                  bne          a3, t3, 1144f
                  blt          a5, a6, 1155f
                  sltu         a6, a1, a5
                  bgeu         s0, a6, 1156f
                  sltiu        t2, ra, 208
1144:             and          s5, a0, t0
                  slti         s9, a3, 1159
                  srai         s10, s10, 22
                  ori          ra, a0, -1030
1148:             sltiu        s4, t2, 1775
                  blt          a6, s9, 1155f
1150:             ori          t4, a2, 188
                  lui          s0, 660385
                  andi         s11, a5, -1840
                  and          s9, s5, t0
                  addi         tp, a2, -596
1155:             bne          s7, s7, 1168f
1156:             slti         s5, s2, -16
                  slti         s10, ra, -1501
                  andi         zero, sp, 560
                  or           s2, t5, t1
                  add          t5, s3, s6
                  bge          s3, a6, 1170f
                  and          gp, a2, s3
                  sltiu        zero, s10, -1634
                  andi         a6, s9, 1726
                  sltiu        a1, a2, 1072
                  sra          s5, s0, a6
                  bge          a7, s1, 1187f
1168:             blt          t6, a7, 1177f
                  add          s2, t6, t4
1170:             andi         a7, s4, -135
                  bne          tp, t4, 1181f
                  bgeu         a4, s3, 1177f
                  bgeu         t2, s4, 1175f
                  bge          t5, a6, 1175f
1175:             addi         ra, zero, -264
                  sub          s11, s2, t3
1177:             addi         ra, a0, -298
                  bltu         sp, s9, 1180f
                  slli         a2, zero, 28
1180:             or           s10, sp, s3
1181:             addi         a6, tp, -1125
                  srli         a1, t0, 17
                  srl          t4, t2, s7
                  sltiu        s9, s3, 750
                  add          t5, t1, s9
                  bgeu         t0, a4, 1191f
1187:             slli         s0, a6, 28
                  beq          gp, s2, 1191f
                  or           s10, t3, s9
                  xori         s3, t1, 182
1191:             srai         s4, a1, 9
                  nop
                  lui          s5, 491695
                  slli         s5, s9, 18
                  add          ra, a2, s2
                  lui          t0, 848057
                  slti         a0, s2, 1570
                  auipc        a2, 870175
                  lui          s3, 192783
                  or           s7, t0, t0
                  auipc        a2, 710185
                  sltiu        s0, a1, -738
                  xori         t1, s10, -131
                  nop
                  auipc        t3, 487218
                  nop
                  slli         a7, a6, 11
                  sltiu        a6, a7, -619
                  slt          t4, zero, s3
                  add          s5, s2, t6
                  nop
                  addi         t2, t1, 1737
                  bge          ra, a1, 1228f
                  xor          s6, t4, t5
                  andi         s3, zero, 1004
                  bgeu         a7, s5, 1222f
                  sltiu        t0, sp, 1811
                  sll          a1, a5, s7
                  slli         t2, s8, 30
                  and          t1, s7, s2
                  slt          ra, t5, a4
1222:             xor          s11, s7, t4
                  xor          a3, t6, t0
                  and          s8, t0, s9
                  auipc        s1, 730549
                  ori          s6, t3, -1708
                  sub          t0, a4, t5
1228:             bne          s5, a4, 1231f
                  sltiu        t5, a0, 1869
                  add          a2, gp, s5
1231:             blt          s1, s0, 1233f
                  bne          a1, a7, 1239f
1233:             xori         t5, t5, -478
                  bne          ra, t1, 1247f
                  sltiu        a3, t6, 1211
                  andi         t4, s8, -850
                  ori          t2, ra, -623
                  and          s8, ra, t5
1239:             slt          zero, a3, s4
                  sub          s7, t5, t3
                  addi         s11, s8, 152
                  and          t4, a2, sp
                  srai         s0, a3, 17
                  addi         s5, s10, 1513
                  auipc        s2, 969142
                  sub          s0, s5, s10
1247:             nop
                  or           s3, a4, s2
                  bge          a4, a5, 1264f
                  auipc        t3, 302695
                  add          t1, t3, s1
                  srai         zero, t5, 23
                  lui          a4, 981776
                  nop
                  srai         s10, s8, 30
                  slt          s11, s4, t2
                  bge          s11, sp, 1263f
                  beq          t4, a2, 1270f
                  and          zero, a1, a5
                  add          t2, t3, s7
                  slti         s5, ra, 376
                  andi         s1, s6, 1334
1263:             sltu         s4, a7, a6
1264:             bltu         a0, s7, 1278f
                  slti         a6, a4, -281
                  srl          t4, s6, s5
                  ori          tp, sp, -1643
                  bne          s3, t6, 1275f
                  beq          a3, t1, 1281f
sub_2_13:         jal          a7, 2f
0:                jal          gp, 5f
1:                jal          s2, 18f
2:                jal          s9, 4f
3:                jal          t1, 17f
4:                jal          ra, 19f
5:                jal          t4, 8f
6:                jal          ra, 11f
7:                jal          s5, 15f
8:                jal          a1, 7b
9:                jal          t1, 13f
10:               jal          t1, 3b
11:               jal          s4, 9b
12:               jal          ra, 0b
13:               jal          a7, 16f
14:               jal          ra, 20f
15:               jal          s1, 1b
16:               jal          ra, 12b
17:               jal          t0, 14b
18:               jal          ra, 10b
19:               jal          ra, 6b
20:               jal          t1, 21f
21:               xori         s10, t6, 942
1270:             bltu         t5, t0, 1272f
                  xori         a3, sp, -2005
1272:             srli         t1, t1, 2
                  sub          zero, s8, a7
                  xor          t2, s1, s1
1275:             blt          s3, gp, 1285f
                  sltiu        a7, zero, 242
                  slli         t4, a3, 26
1278:             slt          a4, a6, t5
                  sra          zero, t4, t5
                  slt          t3, s5, a6
1281:             slti         t5, a6, -519
                  or           s0, t4, s4
                  sub          ra, gp, a2
                  sra          a2, zero, a4
1285:             andi         a7, s5, -1049
                  bge          a2, a5, 1293f
                  beq          t6, s10, 1300f
                  sltiu        zero, a1, -535
                  blt          s7, a4, 1297f
                  srai         s5, s8, 15
                  add          s9, s11, gp
                  bne          t4, a0, 1306f
1293:             sltu         t3, a3, ra
                  addi         t3, t6, -373
                  lui          s4, 1009807
                  srai         t4, t5, 4
1297:             slt          tp, a1, s8
                  auipc        s7, 479001
                  ori          a6, s11, -811
1300:             and          tp, ra, s11
                  addi         s9, sp, 731
                  sltiu        s2, ra, -1538
                  bne          t1, t4, 1318f
                  srai         s0, t2, 28
                  nop
1306:             add          s10, t0, ra
                  nop
                  andi         t0, s7, -1199
                  sll          s6, s3, s1
                  nop
                  bltu         t0, t3, 1326f
                  andi         a0, s4, 1407
                  srai         ra, s2, 26
                  srai         s4, t1, 28
                  lui          s11, 664907
                  srai         s8, a5, 4
                  slt          a6, t2, s0
1318:             slt          s9, a3, sp
                  slt          s5, t1, a1
                  xori         t4, tp, -1392
                  srli         gp, a6, 30
                  addi         t4, a4, -229
                  xori         s11, s4, 1550
                  beq          gp, a1, 1335f
                  blt          ra, t3, 1335f
1326:             slti         s6, tp, 2020
                  srli         s9, s11, 17
                  and          a6, ra, zero
                  beq          gp, t0, 1344f
                  slli         s3, a3, 17
                  slti         t4, a4, 1172
                  and          s4, t5, s9
                  sub          gp, s0, a6
                  or           s6, a3, a3
1335:             slti         t5, a7, 229
                  slt          s2, sp, s0
                  or           s4, s9, a4
                  nop
                  bge          s7, a4, 1359f
                  andi         a6, a4, 2020
                  auipc        s5, 539890
                  and          a4, s6, a6
                  or           s2, s7, s10
1344:             sltiu        a3, tp, 993
                  sltiu        ra, a4, 972
                  nop
                  nop
                  sll          tp, t6, s9
                  bltu         a5, t3, 1359f
                  srai         s8, t2, 3
                  slli         s3, s9, 2
                  srai         s11, tp, 25
                  bltu         t0, s8, 1354f
1354:             slti         t2, t1, -780
                  bge          a4, t2, 1370f
                  ori          s0, s6, 138
                  lui          s3, 87682
sub_2_28:         jal          a7, 16f
0:                jal          ra, 17f
1:                jal          ra, 3f
2:                jal          t2, 13f
3:                jal          ra, 15f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          gp, 9f
7:                jal          t2, 5b
8:                jal          ra, 6b
9:                jal          ra, 4b
10:               jal          ra, 8b
11:               jal          ra, 1b
12:               jal          t1, 14f
13:               jal          t0, 11b
14:               jal          ra, 7b
15:               jal          ra, 12b
16:               jal          s4, 10b
17:               srli         ra, t6, 28
                  addi         a7, t1, -1013
1359:             add          s3, a6, a2
                  xor          s8, a6, s6
                  andi         a7, t3, 1185
                  srli         a3, t4, 11
                  andi         s7, s10, -995
                  lui          s6, 191585
                  addi         s11, t0, -538
                  beq          t0, s9, 1372f
                  nop
                  or           t1, s0, s8
                  sll          t2, s8, t1
1370:             bltu         t4, s9, 1376f
                  srli         t0, a4, 23
1372:             srl          s2, t4, sp
                  srl          t5, s11, t0
                  andi         s11, sp, -98
                  beq          a0, s1, 1378f
1376:             sll          s5, s11, s7
                  sltiu        a4, t5, 1983
1378:             bgeu         s0, s7, 1386f
                  sll          a3, t0, sp
                  lui          s7, 938241
                  blt          t4, s10, 1383f
                  andi         s1, gp, 1087
1383:             bge          a0, a4, 1398f
                  srli         a4, s7, 15
                  xor          s11, s8, s11
1386:             lui          s3, 201707
                  auipc        a4, 34295
                  or           gp, t1, t2
                  bne          s10, s9, 1402f
                  srl          s0, t1, t4
                  sra          s0, t3, s2
                  sll          ra, s7, s6
                  srl          ra, a5, a2
                  beq          s3, tp, 1399f
                  bgeu         a6, tp, 1409f
                  slti         s5, zero, -260
                  slti         s11, gp, -1040
1398:             bltu         s2, s4, 1400f
1399:             add          s0, t4, s5
1400:             and          s7, a0, s9
                  beq          sp, a0, 1416f
1402:             and          s6, s6, s5
                  beq          t6, zero, 1412f
                  and          s6, s10, s7
                  srli         zero, s6, 9
                  sltiu        s2, s8, -452
                  nop
                  sra          zero, gp, a4
1409:             srai         s1, a2, 14
                  sll          s11, s4, a2
                  srli         s4, a4, 22
1412:             lui          s0, 694625
                  ori          s8, s1, -664
                  ori          a1, a3, 1149
                  add          t0, s9, a5
1416:             bne          t2, s9, 1428f
                  xori         s0, gp, -105
                  blt          t1, a1, 1425f
                  add          a4, a4, t3
                  xor          t2, a5, a4
                  add          t5, a6, s8
                  ori          t2, t6, -823
                  add          a6, ra, ra
                  beq          t4, a1, 1437f
1425:             bge          a3, zero, 1430f
                  sub          a1, s8, a2
                  sll          a3, a6, s6
1428:             srli         s1, s5, 20
                  addi         s1, a6, 1816
1430:             or           zero, t5, t2
                  auipc        t3, 908486
                  add          s0, s10, s3
                  addi         s2, s3, 1708
                  nop
                  bgeu         t3, ra, 1437f
                  slli         a1, a5, 14
1437:             andi         t5, a6, -1813
                  sltiu        zero, s4, -943
                  xor          a0, s7, gp
                  slt          s11, t6, s9
                  auipc        s7, 559400
                  slli         s5, s6, 15
                  sll          t0, s5, a4
                  and          t2, s11, t1
                  sll          s0, zero, a7
                  bne          a6, tp, 1457f
                  nop
                  srai         t2, tp, 27
                  xori         a4, s6, 759
                  sltu         gp, s2, a1
                  andi         ra, s0, 1508
                  andi         s11, tp, 536
                  addi         s8, a0, -396
                  slt          t0, a2, s1
                  blt          s10, s0, 1457f
                  bgeu         a0, a5, 1463f
1457:             bltu         s10, ra, 1471f
                  slli         a1, t2, 23
                  srai         s10, s7, 22
                  bge          s7, t1, 1472f
                  slt          ra, a7, s5
                  beq          zero, s6, 1469f
1463:             bltu         s6, t1, 1466f
                  lui          a3, 245361
                  ori          s7, a1, -692
1466:             or           a1, zero, s11
                  sra          s3, t4, t5
                  add          s7, s8, s6
1469:             bge          a2, a4, 1476f
                  sll          ra, s0, zero
1471:             srl          tp, s6, a0
1472:             sltu         s9, t2, s9
                  sub          t3, s4, s9
                  slt          s4, a3, t2
                  beq          s7, t5, 1488f
1476:             xori         s6, s9, -894
                  srai         s2, a2, 20
                  auipc        t1, 1033522
                  sub          s5, t5, gp
                  sltu         a2, a7, zero
                  sll          tp, s8, s5
                  sltiu        s0, a0, -1606
                  lui          s6, 67948
                  sltiu        a4, s6, -737
                  sltiu        s8, ra, -1443
                  srai         s5, s10, 12
                  sltu         a0, t0, t5
1488:             andi         t5, s10, 1995
                  slli         t2, t6, 6
                  bne          s5, s3, 1495f
                  andi         a4, t1, -743
                  bne          t4, s7, 1498f
                  srai         s4, zero, 22
                  add          a6, a3, s3
1495:             and          a1, s0, s7
                  srai         t3, zero, 8
                  sll          s11, a2, a0
1498:             lui          t4, 826859
                  srli         t4, s1, 14
                  auipc        s11, 531973
                  slti         t0, s10, 1146
                  slli         s1, s4, 19
                  srl          ra, t0, zero
                  auipc        a3, 939395
                  ori          t0, s1, 1432
                  bgeu         t5, t3, 1516f
                  bltu         s7, tp, 1516f
                  sub          a2, s3, zero
                  srai         s3, ra, 14
                  add          t4, s10, a7
                  sll          zero, s8, tp
                  bne          zero, s3, 1527f
                  andi         s11, s11, 2022
                  sltiu        a3, s7, -1475
                  bne          t6, s11, 1518f
1516:             slt          t5, t5, s7
                  bgeu         a3, a6, 1523f
1518:             add          t3, t4, t6
                  beq          t4, a1, 1529f
                  ori          a1, s11, -1204
                  sra          s11, s10, a6
                  bgeu         a6, a6, 1529f
1523:             slt          a3, s6, a4
                  beq          a7, sp, 1525f
1525:             lui          a7, 103569
                  add          t4, s4, s11
1527:             bne          t3, s0, 1529f
                  xori         s0, a4, -534
1529:             auipc        a4, 93919
                  xor          t1, a3, gp
                  srl          s4, t5, a3
                  sltu         a1, s10, s2
                  sll          gp, s10, a3
                  bgeu         s4, t2, 1554f
                  auipc        s0, 891225
                  andi         s0, ra, -66
                  xori         t0, a2, 1588
                  bltu         t1, a1, 1541f
                  beq          a3, s4, 1551f
                  add          a4, a4, a1
1541:             sltiu        s7, zero, 407
                  bge          s3, s10, 1557f
                  nop
                  nop
                  blt          s11, s11, 1552f
                  sltu         tp, s8, s4
                  blt          t4, t0, 1561f
                  or           s4, a1, a1
                  auipc        s3, 981914
                  bltu         s8, t4, 1563f
1551:             sub          s4, tp, a4
1552:             xori         ra, ra, 837
                  srai         t5, s2, 27
1554:             xori         a2, ra, -1790
                  sra          s0, s11, gp
                  xor          zero, t6, a6
1557:             srli         t2, s2, 18
                  bne          a5, gp, 1560f
                  and          s10, t5, s10
1560:             srli         t4, s1, 31
1561:             andi         t2, s7, 1689
                  nop
1563:             beq          a7, s8, 1568f
                  addi         a2, s4, -19
                  srli         a6, a2, 4
                  srl          t5, ra, a3
                  sltu         zero, a3, s5
1568:             sub          zero, gp, s4
                  slt          t1, t6, s8
                  srli         a3, s2, 24
                  auipc        a6, 332290
                  or           s7, s2, a5
                  sltiu        s4, a4, -1530
                  slli         zero, s3, 9
                  xor          s9, a1, t0
                  xori         a2, s1, 1864
                  sra          t3, a0, a1
                  addi         s8, s7, -1782
                  xor          s5, s9, s10
                  sltu         a7, s2, a2
                  sltu         s10, a4, s10
                  sub          s7, t5, s10
                  sra          t5, s4, t6
                  blt          a2, s10, 1599f
                  sub          a4, s6, a5
                  sll          s6, s2, s10
                  beq          a7, s0, 1601f
                  blt          a2, a0, 1599f
                  or           ra, s7, tp
                  or           gp, a6, gp
                  srl          t4, s2, s2
                  srai         t0, zero, 4
                  bltu         t1, s8, 1595f
                  or           t0, s11, a3
1595:             bge          sp, zero, 1597f
                  bgeu         a1, t1, 1608f
1597:             slt          t5, a0, gp
                  xor          t0, a7, t4
1599:             slti         s9, t5, 1967
                  bgeu         ra, s11, 1615f
1601:             ori          s5, t2, 95
                  addi         s4, t1, -687
                  beq          s11, s1, 1611f
                  sub          s7, s10, sp
                  or           a0, t6, a6
                  ori          t4, t2, 1789
                  auipc        a0, 568413
1608:             blt          gp, s7, 1618f
                  blt          t0, s5, 1623f
                  slli         gp, sp, 28
1611:             addi         a1, a0, 496
                  bltu         s11, s1, 1614f
                  ori          s11, gp, 971
1614:             slti         s5, tp, 147
1615:             addi         s8, gp, -1170
                  or           a3, s8, a7
                  andi         t2, a7, 961
1618:             slti         a0, t6, 1984
                  and          a4, s8, s2
                  srli         s11, t6, 17
                  addi         a0, s1, 104
                  addi         s0, s10, 1357
1623:             slt          s5, t5, t6
                  xori         a7, s1, -1567
                  bgeu         a2, s5, 1626f
1626:             blt          tp, s4, 1631f
                  sra          t0, t0, t5
                  sub          t4, t4, a2
                  bge          s3, a6, 1636f
                  bgeu         t3, a3, 1645f
1631:             slt          s8, a7, s6
                  sub          t5, t2, t2
                  srai         s7, gp, 29
                  sra          s5, s4, t1
                  bne          s11, a5, 1650f
1636:             blt          a6, s9, 1650f
                  or           a3, s2, ra
                  auipc        s11, 960244
                  srl          a0, a2, s7
                  bne          t1, t3, 1652f
                  addi         zero, s2, 727
                  srli         a4, ra, 1
                  sltu         s11, a6, s6
                  xori         t3, t0, -262
1645:             bge          ra, t0, 1652f
                  lui          a0, 908766
                  ori          s10, a3, -219
                  beq          a3, a5, 1668f
                  xor          tp, t4, s11
1650:             lui          s5, 1041002
                  srli         s11, s2, 31
1652:             sltiu        a6, a5, 291
                  srli         a1, s11, 19
                  sub          a4, s8, s8
                  srli         s3, s0, 27
                  xori         s0, tp, -1705
                  xori         a0, t0, 1434
                  sra          s8, gp, s1
                  addi         a4, gp, -257
                  bge          s0, s1, 1667f
                  bltu         t0, sp, 1674f
                  addi         tp, t4, 513
                  auipc        s5, 261280
                  bne          a0, t1, 1674f
                  or           s6, ra, gp
                  beq          t3, a6, 1668f
1667:             bgeu         s3, zero, 1670f
1668:             sub          s0, a7, gp
                  lui          s5, 508512
1670:             xor          t0, tp, s3
                  slti         s6, t4, -308
                  sra          a6, t0, t1
                  sra          s2, s10, t3
1674:             xori         s2, t2, -504
                  or           a0, s7, s1
                  srai         a4, t1, 31
                  nop
                  slt          gp, s0, s4
                  beq          zero, a3, 1694f
                  bge          t3, s1, 1683f
                  xor          t2, a7, s10
                  sub          s11, s4, t6
1683:             bne          s5, s3, 1685f
                  bltu         t5, s5, 1697f
1685:             or           s10, s3, tp
                  sll          a4, s7, sp
                  beq          a4, sp, 1692f
                  xori         s10, s2, 1965
                  sra          s7, t2, t0
                  bltu         zero, t4, 1705f
                  sltiu        a7, t4, -644
1692:             and          s10, s5, s5
                  blt          tp, a7, 1695f
1694:             xor          t5, a3, a5
1695:             nop
                  slli         s6, gp, 31
1697:             auipc        t0, 125356
                  sltu         s0, s2, s4
                  bge          a5, t5, 1705f
                  andi         t0, t6, -689
                  beq          t2, s8, 1710f
                  slti         tp, gp, 1918
                  blt          a6, t0, 1711f
                  bltu         s9, t1, 1710f
1705:             beq          a5, t2, 1717f
                  slli         s0, a3, 27
                  sub          a7, s1, s6
                  ori          s2, gp, 1827
                  blt          a6, a1, 1720f
1710:             xori         s8, a5, -113
1711:             slti         s3, s7, 1917
                  beq          s0, t3, 1714f
                  srli         ra, s8, 17
1714:             srai         t3, tp, 22
                  srl          s2, s2, zero
                  andi         s11, s5, -1712
1717:             srli         t3, ra, 0
                  lui          s9, 594074
                  slti         s3, zero, 487
1720:             sra          a1, s1, t5
                  sra          a6, s8, s11
                  ori          s3, a4, 1841
                  bgeu         gp, a0, 1738f
                  bltu         s3, t3, 1726f
                  bltu         tp, s3, 1736f
1726:             xori         t5, s6, -1670
                  slli         tp, t2, 22
                  sra          s9, t2, gp
                  sltu         a1, t6, s1
                  lui          ra, 157426
                  sra          zero, a5, s11
                  slt          t1, gp, s7
                  xor          a1, s8, sp
                  bltu         a1, s5, 1749f
                  sll          t4, gp, s0
1736:             nop
                  sll          s0, t6, a0
1738:             bne          s5, s1, 1752f
                  addi         s11, t2, -413
                  auipc        a6, 356874
                  lui          gp, 935352
                  sltu         tp, a1, s1
                  andi         s3, gp, -1441
                  slli         s10, gp, 15
                  srl          tp, ra, a2
                  bltu         s11, sp, 1756f
                  nop
                  addi         ra, a4, 680
1749:             slt          a3, s5, a6
                  srli         t1, t3, 11
                  beq          a7, t0, 1766f
1752:             srli         s1, s7, 28
                  nop
                  andi         a7, a5, -139
                  xor          s4, s6, s10
1756:             add          s4, s3, t4
                  srai         s7, s0, 18
                  slt          a2, t0, s11
                  slt          t1, a2, t2
                  beq          s1, t5, 1769f
                  ori          a3, a6, -496
                  beq          t6, s5, 1769f
                  ori          t2, s10, 1120
                  sra          gp, tp, s0
                  srai         s1, t4, 8
1766:             ori          s1, a2, -984
                  blt          s1, s5, 1780f
                  sltiu        t4, s0, -32
1769:             bne          a2, s0, 1781f
                  bne          a6, a5, 1776f
                  bgeu         s6, a6, 1776f
                  beq          s10, a2, 1774f
                  srli         a2, a4, 15
1774:             sltiu        a3, s5, -1920
                  sub          s8, a4, t4
1776:             add          tp, s3, t3
                  slli         s8, t5, 9
                  addi         s0, s9, 1918
                  slt          a2, t5, ra
1780:             beq          a4, t2, 1783f
1781:             srli         a0, s3, 2
                  xori         s0, t2, 441
1783:             sltiu        ra, s4, 1415
sub_2_8:          jal          a7, 10f
0:                jal          ra, 7f
1:                jal          t1, 13f
2:                jal          ra, 4f
3:                jal          ra, 8f
4:                jal          t0, 17f
5:                jal          t0, 3b
6:                jal          ra, 2b
7:                jal          t3, 11f
8:                jal          ra, 0b
9:                jal          t1, 1b
10:               jal          ra, 9b
11:               jal          ra, 12f
12:               jal          ra, 16f
13:               jal          ra, 14f
14:               jal          t1, 5b
15:               jal          ra, 6b
16:               jal          ra, 15b
17:               sltu         a1, s3, t1
                  sltu         gp, t3, a7
                  beq          a3, a7, 1792f
                  slt          s4, s0, tp
                  sltiu        a7, a0, -841
                  lui          a0, 1021706
                  andi         s10, tp, 1379
                  bne          s6, s10, 1796f
                  srl          t0, t3, s6
1792:             srai         tp, s7, 3
                  sub          a7, a7, t2
                  auipc        s2, 364613
                  add          s8, gp, s0
1796:             sltu         zero, s5, s6
                  bne          t5, a0, 1799f
                  nop
1799:             bge          a7, zero, 1813f
                  sra          ra, t6, zero
                  sub          t0, s2, s11
                  or           s11, s6, a1
                  sltiu        s2, t4, 595
                  bgeu         sp, s8, 1824f
                  beq          t1, t6, 1810f
                  auipc        t4, 480988
                  sra          a6, t4, s11
                  bne          t6, t0, 1815f
                  bgeu         ra, t1, 1817f
1810:             addi         t1, s2, 306
                  slt          ra, t6, s8
                  blt          t4, a2, 1813f
1813:             andi         a2, s0, -1127
                  slti         a1, t1, 1454
1815:             lui          tp, 205242
                  lui          zero, 799514
1817:             sra          gp, s9, t6
                  xori         a0, s1, 901
                  auipc        tp, 820860
                  slti         t0, a0, -1399
                  srai         s3, gp, 4
                  andi         a4, s4, 946
                  sll          s2, a3, s6
1824:             nop
                  srli         s0, a7, 27
                  xori         t5, s11, 1304
                  sltu         t0, s7, zero
                  xor          a7, s3, t3
                  bltu         s0, a5, 1844f
                  auipc        t2, 299331
                  xor          a4, s4, ra
                  srai         t4, s3, 2
                  bgeu         tp, s10, 1846f
                  bne          s8, s1, 1837f
                  srli         s2, t0, 24
                  bne          s2, a4, 1848f
1837:             or           a2, t1, ra
                  add          t5, t5, a6
                  sltu         t0, a2, s1
                  sltiu        s4, a0, 378
                  xor          tp, sp, ra
                  xor          t5, a1, gp
                  sll          s3, s6, s1
1844:             xor          t0, sp, a3
                  bge          t5, s9, 1855f
1846:             sra          t5, s5, s9
                  nop
1848:             bge          zero, t2, 1861f
                  sltu         t1, s1, a2
                  auipc        a1, 927587
                  addi         s0, s11, -485
                  sltiu        a6, s6, 725
                  auipc        s1, 705723
                  beq          t3, sp, 1865f
1855:             lui          s10, 824574
                  bne          zero, tp, 1866f
                  bge          s0, a4, 1869f
                  bgeu         t0, s3, 1866f
                  xori         t2, gp, 64
                  slt          s0, a1, t4
1861:             srai         zero, a0, 15
                  sltiu        s11, s7, 616
                  beq          s10, a2, 1865f
                  slt          s11, a1, a6
1865:             bge          s6, s11, 1871f
1866:             srai         s5, ra, 4
                  slt          s0, a1, a5
                  or           a1, t5, t6
1869:             slt          a2, a5, s9
                  sltiu        a2, s3, -1735
1871:             and          s10, s5, s0
                  lui          gp, 47143
                  add          gp, s4, sp
                  and          a1, s1, s4
                  andi         tp, a7, 1660
                  slt          s3, t0, sp
                  xor          a1, s2, t1
                  auipc        a2, 942027
                  auipc        s5, 496763
                  srai         a2, a0, 14
                  slti         s8, a5, 745
                  sltu         a1, a5, s3
                  srl          a6, t4, a1
                  slti         gp, a7, -1922
                  sltu         s3, a5, a4
                  sltu         a4, a7, zero
                  ori          s4, t6, 611
                  bne          tp, t3, 1898f
                  sll          s0, a3, t2
                  auipc        zero, 849449
                  sll          s0, a4, s0
                  lui          ra, 496148
                  beq          a1, s9, 1895f
                  or           tp, t4, zero
1895:             slli         a0, a3, 21
                  addi         zero, t1, -1500
                  bltu         s10, s1, 1912f
1898:             sub          a6, s6, a2
                  srl          t4, a3, s9
                  andi         tp, gp, 1644
                  bge          s10, t4, 1916f
                  xor          a3, s11, tp
                  auipc        a4, 427926
                  blt          s11, sp, 1918f
                  sll          s0, s9, t6
                  add          t3, zero, s3
                  srai         t2, a5, 1
                  andi         t3, s3, -947
                  bltu         t6, s4, 1911f
                  xor          s7, s1, a7
1911:             sub          t4, a7, a3
1912:             andi         s11, s11, -1141
                  sll          t5, a7, t4
                  andi         s7, t5, -200
                  srli         s3, a1, 7
1916:             sll          s3, s4, a3
                  sll          t2, t5, s5
1918:             xori         s9, tp, 868
                  auipc        s8, 287454
                  auipc        s2, 513134
                  and          s9, s5, a3
                  srai         s2, s7, 2
                  andi         gp, gp, -843
                  slti         t4, s7, -1435
                  lw           a7, 4(t6)
                  addi         a2, s1, -961
                  addi         t6, t6, 32
                  or           s2, a2, a3
                  srl          s5, a6, tp
                  sll          s10, sp, ra
2720:             addi x16, x17, 0
2720:             jalr x16, x16, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x15, x31, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x28, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x28, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x28, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x28, x21, ecall_handler
                  li x21, 0x1
                  beq x28, x21, instr_fault_handler
                  li x21, 0x5
                  beq x28, x21, load_fault_handler
                  li x21, 0x7
                  beq x28, x21, store_fault_handler
                  li x21, 0xc
                  beq x28, x21, pt_fault_handler
                  li x21, 0xd
                  beq x28, x21, pt_fault_handler
                  li x21, 0xf
                  beq x28, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x31, x15, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x15, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x15, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x31, x15, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x31, x15, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x31, x15, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
