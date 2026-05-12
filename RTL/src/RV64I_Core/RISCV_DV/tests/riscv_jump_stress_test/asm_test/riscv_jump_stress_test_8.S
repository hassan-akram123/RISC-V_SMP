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
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x19, kernel_stack_end

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
                  li x0, 0x505c6f0d
                  li x1, 0x80000000
                  li x2, 0xf8ec4e77
                  li x3, 0xf4a83b7a
                  li x4, 0x0
                  li x5, 0x5cb77328
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x6
                  li x9, 0xf62b0776
                  li x10, 0xfa30f591
                  li x11, 0xe
                  li x12, 0x80000000
                  li x13, 0xfce9454c
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x8fa011d7
                  li x17, 0x80000000
                  li x18, 0x3
                  li x20, 0x2
                  li x21, 0xf3b861bf
                  li x23, 0x59a1632b
                  li x24, 0xf2358a7f
                  li x25, 0x5773726e
                  li x26, 0xfb7092cc
                  li x27, 0x0
                  li x28, 0xa
                  li x29, 0xf81e11a7
                  li x30, 0xfc2bdcaf
                  li x31, 0x80000000
                  la x22, user_stack_end
main:             lui          sp, 652686
                  la           t0, sub_4
                  sltu         a2, zero, ra
                  xor          s0, s0, s3
                  addi         t0, t0, 594
                  or           a0, s9, s11
                  and          t6, s6, t0
main_j2:          jalr         ra, t0, -594 #jump main -> sub_4
                  add          a7, s0, a1
                  la           s7, sub_2
                  addi         s7, s7, 908
                  sltiu        s9, a6, -1343
                  bgeu         s2, ra, main_j3 #branch to jump instr
                  lui          s1, 948350
                  and          t6, tp, a5
                  andi         s5, sp, -1302
                  srli         a6, a6, 13
main_j3:          jalr         ra, s7, -907 #jump main -> sub_2
                  la           s11, sub_3
                  or           tp, a1, gp
                  addi         s11, s11, 765
                  slti         t6, a1, -2002
                  nop
                  srl          t3, t6, s2
                  bltu         a2, sp, main_j5 #branch to jump instr
                  slt          t3, s2, t6
                  and          s7, t4, s9
                  lui          s5, 927313
                  slt          s2, a1, tp
                  sll          a6, t0, s2
main_j5:          jalr         ra, s11, -765 #jump main -> sub_3
main_3:           jal          ra, 6f
0:                jal          ra, 4f
1:                jal          ra, 13f
2:                jal          ra, 15f
3:                jal          gp, 14f
4:                jal          t0, 12f
5:                jal          t1, 9f
6:                jal          ra, 18f
7:                jal          t1, 2b
8:                jal          sp, 19f
9:                jal          t1, 16f
10:               jal          ra, 1b
11:               jal          t1, 0b
12:               jal          s0, 8b
13:               jal          s8, 3b
14:               jal          s4, 17f
15:               jal          t1, 11b
16:               jal          a0, 10b
17:               jal          t1, 7b
18:               jal          t1, 5b
19:               xor          a7, t5, s9
main_1:           jal          ra, 3f
0:                jal          ra, 4f
1:                jal          ra, 9f
2:                jal          ra, 8f
3:                jal          t1, 0b
4:                jal          ra, 12f
5:                jal          t1, 1b
6:                jal          a1, 13f
7:                jal          s4, 11f
8:                jal          sp, 10f
9:                jal          t1, 6b
10:               jal          a6, 7b
11:               jal          t1, 5b
12:               jal          t1, 2b
13:               andi         s11, s2, 1425
main_0:           jal          ra, 0f
0:                jal          sp, 18f
1:                jal          s2, 8f
2:                jal          ra, 7f
3:                jal          ra, 11f
4:                jal          t1, 14f
5:                jal          a6, 20f
6:                jal          ra, 9f
7:                jal          a2, 4b
8:                jal          s8, 16f
9:                jal          ra, 1b
10:               jal          ra, 3b
11:               jal          ra, 17f
12:               jal          ra, 5b
13:               jal          t1, 2b
14:               jal          s8, 15f
15:               jal          gp, 19f
16:               jal          ra, 10b
17:               jal          ra, 13b
18:               jal          s1, 6b
19:               jal          ra, 12b
20:               srai         t2, t1, 7
main_2:           jal          ra, 2f
0:                jal          ra, 10f
1:                jal          s11, 4f
2:                jal          ra, 1b
3:                jal          s7, 7f
4:                jal          a3, 0b
5:                jal          s11, 11f
6:                jal          t1, 9f
7:                jal          ra, 5b
8:                jal          ra, 3b
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          ra, 14f
12:               jal          t1, 13f
13:               jal          t1, 6b
14:               sub          tp, s3, s1
                  andi         s8, t4, 1689
                  srai         a2, t5, 12
                  sra          s9, t1, zero
                  ori          a4, s2, 1348
                  andi         t0, a1, -945
                  beq          a6, s5, 17f
                  srai         s4, a2, 5
                  or           s2, t1, t3
                  srli         s4, s10, 14
                  blt          a2, ra, 10f
10:               bge          a5, gp, 12f
                  and          s9, s11, s3
12:               slli         tp, t3, 2
                  auipc        gp, 843670
                  sltiu        t2, t1, -464
                  blt          t4, a1, 33f
                  srl          t0, s3, gp
17:               and          ra, a6, s1
                  ori          t2, tp, -323
                  bgeu         s10, a4, 20f
20:               slli         zero, s9, 31
                  slli         a7, a6, 9
                  addi         a4, s3, 1303
                  beq          s4, t1, 30f
                  sra          t3, t3, s7
                  and          t5, a6, ra
                  slt          zero, s7, t0
                  sub          t6, s2, s2
                  blt          s5, t6, 34f
                  bgeu         s1, ra, 36f
30:               sltu         s4, zero, a5
                  ori          a2, t4, 1567
                  bne          s11, t4, 51f
33:               bgeu         t3, s8, 34f
34:               sra          s7, t0, t4
                  bgeu         a7, a4, 36f
36:               nop
                  slti         t6, tp, 271
                  nop
                  xor          a6, s7, s10
                  xor          gp, s8, s7
                  srl          t2, a6, s2
                  bgeu         t5, a4, 46f
                  and          a4, s1, t1
                  sll          s11, t4, s2
                  xor          s7, a4, s10
46:               srai         a3, s3, 19
                  bne          zero, s4, 58f
                  srli         gp, a3, 17
                  and          a6, ra, a6
                  add          t0, a5, a3
51:               bgeu         t0, a0, 60f
                  sltu         s7, t1, s8
                  add          t3, ra, s2
                  andi         gp, t0, 905
                  and          gp, a5, a6
                  lui          a0, 900938
                  bgeu         t1, s4, 72f
58:               nop
                  srai         t1, a3, 27
60:               xor          s9, t6, s9
                  andi         a2, a0, 1558
                  srl          s9, s7, s0
                  slti         s7, s0, -1050
                  xori         a3, s11, -776
                  slt          t2, t2, a0
                  sll          t1, a5, tp
                  and          a3, gp, t4
                  ori          t5, a6, -470
                  addi         a0, a5, -704
                  sll          a7, t0, s8
                  slli         s9, a4, 19
72:               lui          t3, 834792
                  xori         t6, s0, 247
                  beq          s2, a3, 91f
                  bltu         t4, s1, 85f
                  ori          a2, a3, 1226
                  and          a4, a3, a2
                  srl          gp, tp, sp
                  and          a3, zero, a2
                  add          t0, a3, a2
                  nop
                  la           a6, sub_1
                  or           s9, s9, t2
                  lui          t0, 211287
                  slli         t5, a1, 30
                  addi         a6, a6, 10
                  xor          s4, s4, s5
                  srl          t4, a2, t6
                  nop
                  andi         a1, a7, -1429
main_j1:          jalr         ra, a6, -10 #jump main -> sub_1
                  sltu         s2, s1, s11
                  sltu         t1, t3, s5
                  bltu         s11, t1, 92f
                  srli         zero, a1, 28
                  and          t3, a0, t6
                  sll          a1, s0, s7
85:               nop
                  srai         a2, sp, 18
                  auipc        a6, 410929
                  bgeu         s7, t6, 95f
                  srl          gp, s8, gp
                  sll          t3, a3, t1
91:               sltu         s7, t3, s4
92:               andi         t1, s3, 1423
                  auipc        s2, 291673
                  auipc        t2, 451380
95:               ori          s5, t2, -1075
                  addi         a0, s8, -874
                  auipc        t0, 17709
                  bltu         s4, ra, 101f
                  srai         t4, s6, 12
                  ori          a0, t0, 31
101:              lui          a7, 834356
                  bltu         s5, t2, 121f
                  slti         s0, ra, 70
                  beq          t1, s9, 122f
                  and          s5, s2, s2
                  or           t2, s2, a4
                  slti         s8, s8, 263
                  sltu         t5, s7, s1
                  bltu         t2, a6, 128f
                  ori          s4, s6, 1225
                  sltiu        t3, t1, 1092
                  bltu         s3, gp, 127f
                  srli         ra, tp, 19
                  auipc        gp, 72034
                  sltu         a0, zero, t6
                  slt          t3, s2, t1
                  or           a4, t3, s3
                  sll          s0, s9, s9
                  sltu         s4, ra, a0
                  slti         gp, t4, -892
121:              bge          s11, s5, 136f
122:              sltiu        t2, s0, -1995
                  add          sp, s3, a2
                  slti         a6, zero, -728
                  srai         t3, t3, 19
                  ori          s7, s3, 520
                  la           a0, sub_1
                  sra          s0, a2, s9
                  addi         s2, s4, 111
                  ori          a4, s3, -1776
                  srai         t6, t0, 13
                  addi         a0, a0, 870
                  bge          s1, s7, main_j4 #branch to jump instr
                  slli         s11, a0, 12
                  ori          a2, s0, -1967
                  addi         s2, a7, 268
                  slt          zero, s1, s3
                  lui          t3, 511551
main_j4:          jalr         ra, a0, -870 #jump main -> sub_1
127:              sltiu        s0, s4, 1723
128:              srli         t5, t3, 23
                  addi         zero, sp, 2039
                  ori          s9, t3, 1991
                  ori          t6, s9, 33
                  blt          tp, a7, 147f
                  and          a0, a0, s11
                  srl          t3, t0, s1
                  blt          s2, s8, 147f
136:              xor          a6, a4, s5
                  srai         sp, a5, 9
                  beq          t5, s9, 155f
                  beq          a2, s6, 154f
                  slti         a0, a4, -242
                  blt          t6, a7, 157f
                  andi         s0, a7, 1973
                  slli         t0, t2, 12
                  sltiu        s7, s9, 1877
                  srl          a5, a4, s3
                  slti         a3, a1, -602
147:              lui          s7, 224113
                  srli         a7, s5, 9
                  xor          a4, t0, t5
                  nop
                  bltu         s3, t3, 170f
                  slti         s7, s8, -513
                  slt          zero, zero, tp
154:              slt          zero, s8, tp
155:              blt          s6, s2, 172f
                  srai         zero, t4, 31
157:              srai         s9, s8, 16
                  bltu         zero, s0, 159f
159:              beq          t1, s1, 162f
                  slt          a5, sp, s4
                  sltiu        s4, t5, -829
162:              slti         a6, a6, 377
                  sltu         t6, a6, s8
                  sll          tp, s7, t5
                  ori          a7, ra, 926
                  beq          t6, a5, 177f
                  bne          s7, s2, 168f
168:              srai         s7, s10, 27
                  bgeu         s4, ra, 175f
170:              addi         a5, s7, -98
                  ori          t5, sp, 880
172:              nop
                  srai         sp, a4, 6
                  ori          s4, s1, -1429
175:              or           s5, s7, zero
                  sub          gp, a0, t3
177:              bltu         a1, ra, 179f
                  slti         a6, s1, 1067
179:              bge          t3, zero, 194f
                  slli         t1, sp, 20
                  lui          tp, 986423
                  slti         t5, t6, -1647
                  slli         gp, a4, 8
                  addi         a6, t6, -817
                  sll          t4, s4, tp
                  add          gp, s4, a6
                  bne          s0, s5, 202f
                  xor          t1, s2, a4
                  srai         s5, s6, 1
                  sll          t0, s2, gp
                  sra          a3, s9, a0
                  andi         t1, a5, -1461
                  or           a2, a6, s5
194:              sll          s0, s0, a0
                  srai         ra, zero, 20
                  bne          s10, t2, 207f
                  nop
                  nop
                  slt          zero, t1, a2
                  bgeu         zero, tp, 209f
                  slti         tp, s1, -1506
202:              slli         a0, s4, 16
                  sltiu        s5, t4, 357
                  or           t0, t4, s4
                  sll          t3, a1, a4
                  xori         s7, sp, 181
207:              slli         s9, zero, 19
                  add          a1, a1, a0
209:              auipc        s11, 42631
                  bltu         t2, gp, 222f
                  sub          s2, t0, t6
                  srl          t1, s3, t3
                  andi         a4, s7, -789
                  add          a6, a4, a6
                  sll          t2, a4, s0
                  srai         tp, t0, 29
                  sltu         s1, s11, a7
                  add          zero, s3, t3
                  srai         a2, s7, 27
                  slti         a2, a4, -1172
                  sub          a2, s10, a7
222:              slt          a1, s0, s7
                  srli         a0, a5, 30
                  sltu         sp, s7, s7
                  bltu         sp, t2, 240f
                  auipc        s11, 1030697
                  sra          sp, a5, s11
                  sub          t4, a7, a5
                  sub          a2, s9, gp
                  blt          s7, zero, 240f
                  nop
                  nop
                  bge          a7, a0, 240f
                  addi         s11, a6, 1956
                  addi         s8, s0, -1922
                  bge          a0, s2, 240f
                  ori          s9, s8, -919
                  sll          t5, t0, s0
                  lui          s7, 404710
240:              andi         a3, zero, 1362
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            auipc        s2, 380079
                  srl          zero, t2, s9
                  auipc        tp, 489005
                  auipc        sp, 600336
                  addi         s6, s6, -12
                  srl          s9, a7, a1
                  sw           ra, 4(s6)
                  srai         a7, s4, 14
                  slti         sp, a7, -1990
                  andi         s5, gp, -1519
                  slt          s1, a4, s3
                  srli         t6, tp, 12
                  la           a0, sub_5
                  add          s8, a5, t2
                  sub          gp, t0, s5
                  srli         s7, tp, 14
                  nop
                  srli         s11, sp, 12
                  addi         a0, a0, 136
                  slti         s7, gp, -360
                  or           s2, a1, s11
                  sltu         a1, t0, t4
                  beq          s8, s6, sub_4_j6 #branch to jump instr
                  xor          a2, s4, s2
sub_4_j6:         jalr         ra, a0, -136 #jump sub_4 -> sub_5
sub_4_5:          jal          ra, 10f
0:                jal          a7, 12f
1:                jal          t0, 2f
2:                jal          sp, 14f
3:                jal          ra, 16f
4:                jal          ra, 18f
5:                jal          ra, 11f
6:                jal          ra, 3b
7:                jal          s0, 0b
8:                jal          t1, 17f
9:                jal          ra, 6b
10:               jal          t1, 1b
11:               jal          a3, 4b
12:               jal          ra, 15f
13:               jal          t0, 7b
14:               jal          t1, 13b
15:               jal          t0, 9b
16:               jal          t4, 8b
17:               jal          a7, 5b
18:               and          s2, s10, s8
sub_4_17:         jal          ra, 3f
0:                jal          t1, 7f
1:                jal          ra, 13f
2:                jal          ra, 15f
3:                jal          t0, 19f
4:                jal          ra, 16f
5:                jal          t2, 12f
6:                jal          ra, 0b
7:                jal          ra, 11f
8:                jal          t2, 2b
9:                jal          s8, 10f
10:               jal          ra, 21f
11:               jal          t1, 17f
12:               jal          a6, 14f
13:               jal          ra, 20f
14:               jal          s4, 4b
15:               jal          ra, 18f
16:               jal          ra, 8b
17:               jal          a5, 9b
18:               jal          ra, 6b
19:               jal          ra, 1b
20:               jal          ra, 5b
21:               ori          ra, s10, -2022
sub_4_0:          jal          ra, 13f
0:                jal          ra, 9f
1:                jal          ra, 0b
2:                jal          ra, 4f
3:                jal          a3, 10f
4:                jal          t1, 11f
5:                jal          tp, 14f
6:                jal          t1, 3b
7:                jal          ra, 12f
8:                jal          t1, 1b
9:                jal          t1, 6b
10:               jal          t1, 5b
11:               jal          ra, 15f
12:               jal          ra, 2b
13:               jal          t1, 8b
14:               jal          ra, 7b
15:               xor          t2, a6, s5
sub_4_14:         jal          ra, 7f
0:                jal          t6, 14f
1:                jal          ra, 0b
2:                jal          ra, 16f
3:                jal          ra, 6f
4:                jal          tp, 20f
5:                jal          ra, 17f
6:                jal          gp, 21f
7:                jal          s2, 22f
8:                jal          t1, 10f
9:                jal          ra, 8b
10:               jal          ra, 19f
11:               jal          t2, 3b
12:               jal          ra, 11b
13:               jal          ra, 23f
14:               jal          a4, 12b
15:               jal          ra, 18f
16:               jal          ra, 13b
17:               jal          ra, 1b
18:               jal          ra, 4b
19:               jal          ra, 5b
20:               jal          ra, 9b
21:               jal          ra, 2b
22:               jal          a4, 15b
23:               jal          ra, 24f
24:               sub          a2, s6, s9
sub_4_3:          jal          ra, 7f
0:                jal          t1, 13f
1:                jal          ra, 6f
2:                jal          t1, 4f
3:                jal          ra, 11f
4:                jal          ra, 3b
5:                jal          t1, 1b
6:                jal          ra, 10f
7:                jal          s11, 9f
8:                jal          t1, 12f
9:                jal          a1, 8b
10:               jal          s5, 2b
11:               jal          ra, 0b
12:               jal          ra, 5b
13:               and          a5, t2, s6
sub_4_16:         jal          ra, 5f
0:                jal          ra, 10f
1:                jal          ra, 8f
2:                jal          t6, 1b
3:                jal          ra, 2b
4:                jal          ra, 13f
5:                jal          ra, 12f
6:                jal          t5, 0b
7:                jal          ra, 3b
8:                jal          ra, 4b
9:                jal          ra, 7b
10:               jal          t2, 14f
11:               jal          ra, 6b
12:               jal          s9, 9b
13:               jal          ra, 11b
14:               srl          t2, a7, zero
sub_4_12:         jal          ra, 2f
0:                jal          t0, 9f
1:                jal          ra, 0b
2:                jal          t0, 6f
3:                jal          t1, 5f
4:                jal          t1, 10f
5:                jal          ra, 8f
6:                jal          t1, 7f
7:                jal          t4, 1b
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               slti         s0, t3, -531
sub_4_15:         jal          ra, 21f
0:                jal          ra, 5f
1:                jal          sp, 17f
2:                jal          ra, 22f
3:                jal          a7, 16f
4:                jal          ra, 6f
5:                jal          ra, 4b
6:                jal          gp, 11f
7:                jal          ra, 1b
8:                jal          tp, 7b
9:                jal          t1, 20f
10:               jal          ra, 19f
11:               jal          ra, 18f
12:               jal          ra, 10b
13:               jal          ra, 14f
14:               jal          t1, 15f
15:               jal          ra, 3b
16:               jal          ra, 8b
17:               jal          s2, 12b
18:               jal          t1, 9b
19:               jal          t1, 2b
20:               jal          tp, 13b
21:               jal          ra, 0b
22:               auipc        t6, 838010
sub_4_11:         jal          ra, 14f
0:                jal          s4, 13f
1:                jal          ra, 24f
2:                jal          s7, 29f
3:                jal          s8, 5f
4:                jal          a6, 7f
5:                jal          ra, 10f
6:                jal          ra, 25f
7:                jal          ra, 28f
8:                jal          ra, 18f
9:                jal          s8, 22f
10:               jal          t2, 6b
11:               jal          ra, 2b
12:               jal          ra, 8b
13:               jal          ra, 3b
14:               jal          ra, 1b
15:               jal          ra, 21f
16:               jal          ra, 0b
17:               jal          ra, 12b
18:               jal          ra, 27f
19:               jal          ra, 9b
20:               jal          s4, 19b
21:               jal          ra, 26f
22:               jal          a2, 11b
23:               jal          t5, 20b
24:               jal          a6, 17b
25:               jal          ra, 15b
26:               jal          ra, 4b
27:               jal          s8, 16b
28:               jal          a0, 23b
29:               sll          a6, a1, s4
sub_4_4:          jal          ra, 1f
0:                jal          t1, 12f
1:                jal          ra, 5f
2:                jal          t1, 3f
3:                jal          t1, 0b
4:                jal          ra, 13f
5:                jal          ra, 2b
6:                jal          ra, 9f
7:                jal          ra, 14f
8:                jal          ra, 4b
9:                jal          ra, 8b
10:               jal          ra, 11f
11:               jal          t1, 6b
12:               jal          s11, 10b
13:               jal          s8, 7b
14:               andi         t5, s9, -591
sub_4_2:          jal          ra, 1f
0:                jal          a6, 6f
1:                jal          ra, 3f
2:                jal          ra, 4f
3:                jal          gp, 0b
4:                jal          ra, 5f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          s0, 14f
8:                jal          ra, 11f
9:                jal          ra, 13f
10:               jal          ra, 12f
11:               jal          ra, 10b
12:               jal          t1, 2b
13:               jal          ra, 8b
14:               add          t3, s11, s3
sub_4_7:          jal          ra, 1f
0:                jal          ra, 5f
1:                jal          t0, 16f
2:                jal          ra, 21f
3:                jal          gp, 12f
4:                jal          ra, 11f
5:                jal          t1, 18f
6:                jal          ra, 0b
7:                jal          tp, 17f
8:                jal          ra, 15f
9:                jal          ra, 4b
10:               jal          ra, 14f
11:               jal          t1, 2b
12:               jal          t6, 8b
13:               jal          ra, 19f
14:               jal          ra, 6b
15:               jal          ra, 13b
16:               jal          sp, 7b
17:               jal          ra, 20f
18:               jal          s7, 9b
19:               jal          t1, 10b
20:               jal          t1, 3b
21:               and          a3, s4, s8
sub_4_6:          jal          ra, 17f
0:                jal          a6, 26f
1:                jal          ra, 7f
2:                jal          ra, 15f
3:                jal          ra, 20f
4:                jal          t2, 25f
5:                jal          t1, 3b
6:                jal          ra, 22f
7:                jal          ra, 6b
8:                jal          t3, 21f
9:                jal          ra, 4b
10:               jal          t0, 11f
11:               jal          ra, 1b
12:               jal          ra, 5b
13:               jal          t1, 9b
14:               jal          ra, 10b
15:               jal          t1, 18f
16:               jal          s9, 14b
17:               jal          a1, 16b
18:               jal          t1, 19f
19:               jal          s0, 0b
20:               jal          ra, 2b
21:               jal          ra, 23f
22:               jal          ra, 24f
23:               jal          t1, 12b
24:               jal          a6, 13b
25:               jal          ra, 8b
26:               slti         a1, s5, -1267
sub_4_10:         jal          ra, 9f
0:                jal          a6, 21f
1:                jal          t1, 25f
2:                jal          gp, 30f
3:                jal          ra, 17f
4:                jal          t1, 13f
5:                jal          ra, 23f
6:                jal          ra, 28f
7:                jal          s5, 16f
8:                jal          ra, 11f
9:                jal          t1, 26f
10:               jal          ra, 29f
11:               jal          t1, 12f
12:               jal          ra, 7b
13:               jal          ra, 0b
14:               jal          ra, 19f
15:               jal          ra, 24f
16:               jal          ra, 22f
17:               jal          t1, 4b
18:               jal          s4, 2b
19:               jal          ra, 6b
20:               jal          s2, 18b
21:               jal          gp, 15b
22:               jal          ra, 3b
23:               jal          ra, 20b
24:               jal          ra, 27f
25:               jal          ra, 8b
26:               jal          ra, 10b
27:               jal          a1, 5b
28:               jal          t1, 1b
29:               jal          a0, 14b
30:               sll          a4, gp, s6
sub_4_9:          jal          ra, 1f
0:                jal          t1, 7f
1:                jal          ra, 3f
2:                jal          ra, 10f
3:                jal          t3, 14f
4:                jal          t1, 6f
5:                jal          ra, 2b
6:                jal          ra, 15f
7:                jal          t2, 16f
8:                jal          ra, 0b
9:                jal          t1, 18f
10:               jal          ra, 9b
11:               jal          t1, 8b
12:               jal          t0, 4b
13:               jal          t0, 12b
14:               jal          ra, 17f
15:               jal          ra, 5b
16:               jal          ra, 13b
17:               jal          ra, 11b
18:               ori          t5, s9, -701
                  sub          ra, t0, s11
                  bne          a4, a6, 10f
                  or           a2, s4, gp
                  add          a2, zero, sp
                  slti         t2, s7, 902
                  bltu         s2, sp, 11f
                  lui          s0, 201282
                  slt          s11, s9, a4
                  srai         s8, t2, 3
                  sub          s1, tp, a4
10:               or           s5, s10, a5
11:               lui          a2, 840322
                  sll          s1, s3, a7
                  sll          s2, ra, s3
                  slt          ra, t6, s3
                  slli         s4, s0, 21
                  andi         a6, sp, -1491
                  lui          t6, 1044576
                  xori         s2, t5, -499
                  sll          a2, s1, s1
                  add          s7, s8, s9
                  sltu         s0, s4, a7
                  xori         sp, s3, -196
                  xor          sp, s8, s6
                  sltu         a3, a5, a3
                  bne          t2, zero, 37f
                  nop
                  beq          a0, s4, 46f
                  nop
                  ori          t1, a5, 1620
                  bge          a5, s7, 47f
                  srli         s5, s6, 30
                  beq          t0, s2, 52f
                  or           a5, ra, a2
                  lui          a3, 800383
                  nop
                  sll          s11, a7, s6
37:               bge          gp, a6, 39f
                  sra          a3, a4, s10
39:               beq          ra, a7, 40f
40:               lui          t5, 1005284
                  sra          a2, t3, t3
                  bltu         zero, a5, 48f
                  srai         s1, t2, 31
                  bge          s1, s4, 58f
                  lui          a3, 270673
46:               sll          t2, s0, s2
47:               slti         s0, s6, -1022
48:               or           t5, s7, gp
                  xor          a7, gp, s9
                  lui          s2, 655801
                  slti         a0, ra, 1769
52:               xor          a0, t3, s3
                  or           ra, a2, t6
                  and          ra, s4, a5
                  slti         s4, s2, 775
                  and          t4, a4, s10
                  lui          t1, 149820
58:               xor          s8, s7, s1
                  blt          s6, a3, 74f
                  nop
                  sltu         a7, s9, a7
                  sltu         sp, a7, s0
                  lui          a1, 470556
                  sltiu        s7, t3, 482
                  sll          s5, t1, t3
                  andi         s5, a6, -1647
                  xori         t5, s3, 531
                  add          t0, s9, s11
                  xor          t3, a4, sp
                  srli         zero, a7, 10
                  or           a2, t5, s5
                  slti         s11, t3, 1798
                  or           s8, a3, a2
74:               or           s5, a2, t0
                  add          t2, a7, s8
                  nop
                  auipc        a1, 968203
                  auipc        s1, 367916
                  sub          s1, t1, t2
                  srli         a2, s9, 18
                  sltiu        t4, s7, -1118
                  beq          s8, s0, 102f
                  xori         t2, a3, 171
                  slti         s0, s10, 1058
                  nop
                  or           zero, t3, gp
                  ori          s2, s10, -1967
                  xori         t3, s5, -1058
                  sltiu        s11, s5, -1043
                  addi         t0, a1, 929
                  andi         a0, t2, 286
                  sra          a2, a5, t1
                  nop
                  bne          s9, s7, 101f
                  lui          a7, 248444
                  addi         s9, s5, -335
                  auipc        s5, 40574
                  addi         tp, t5, -978
                  and          s2, a6, tp
                  and          s11, s10, zero
101:              beq          s7, a0, 104f
102:              andi         t2, zero, -935
                  sub          tp, s3, t0
104:              and          a4, a1, a3
                  sltu         t3, t2, a0
                  bgeu         t1, s5, 121f
                  bgeu         t6, a7, 114f
                  and          s7, zero, s10
                  nop
                  ori          t1, s11, 1056
                  srai         zero, t1, 20
                  srli         a7, t4, 31
                  blt          s11, t4, 127f
114:              srl          t2, a1, a4
                  add          s5, s10, a5
                  auipc        t5, 609237
                  srli         s9, a6, 19
                  slt          t6, s1, a0
                  srai         a2, s6, 25
                  bge          s0, zero, 134f
121:              beq          a6, a5, 133f
                  add          a2, s8, t5
                  add          t4, a7, t0
                  and          ra, s3, s4
                  sltiu        sp, a2, -1075
                  lui          s1, 552231
127:              slli         t5, s9, 5
                  or           t3, a1, a5
                  sub          t0, s6, t5
                  sra          t1, a5, a6
                  slti         s4, t2, -1489
                  xor          s11, gp, zero
133:              beq          ra, a5, 150f
134:              sltu         t4, a5, s2
                  sra          t0, s4, s6
                  ori          t6, zero, -1802
                  slt          s1, s10, t5
                  bltu         t4, s0, 153f
                  addi         t2, s9, -1132
                  slti         t4, s3, -861
                  andi         tp, tp, 189
                  slt          t6, s10, t2
                  bgeu         a0, s11, 151f
                  auipc        a2, 802949
                  beq          s1, sp, 150f
                  bltu         t3, a6, 147f
147:              and          t1, t6, t1
                  xor          zero, a1, a4
                  xor          t1, s1, s5
150:              srai         s8, t3, 14
151:              slt          a7, t1, t2
                  nop
153:              srli         t5, s1, 13
                  blt          a0, s9, 165f
                  srl          a3, s5, a5
                  bge          t1, t1, 167f
                  and          t1, s6, t1
                  and          a0, s11, t3
                  slti         s4, a0, -67
                  auipc        t0, 386050
                  addi         a3, s6, -267
                  bltu         t6, a3, 170f
                  bltu         s4, sp, 172f
                  srai         a7, s1, 7
165:              xori         s7, s7, 1332
                  blt          s2, a5, 181f
167:              bgeu         s1, s1, 174f
                  slti         a4, s5, -1920
                  sltiu        s0, t6, 772
170:              slt          t4, s3, t0
                  nop
172:              bne          tp, s11, 189f
                  andi         s2, a5, 1166
174:              slt          s8, a4, ra
                  blt          t6, a5, 192f
                  srai         s0, s6, 17
                  or           s9, a2, a6
                  slt          s5, t2, gp
                  sll          s4, sp, s7
                  srli         s8, s4, 0
181:              bgeu         s3, s8, 195f
                  srl          s0, s5, s1
                  slli         s11, s11, 11
                  sra          a7, t4, s0
                  sra          t0, sp, a7
                  sra          gp, tp, s7
                  bgeu         sp, zero, 202f
                  or           s9, s1, t2
189:              lui          a5, 512978
                  sll          t5, a6, s6
                  sll          t4, t2, zero
192:              xor          t1, t3, ra
                  slti         t0, t4, 1618
                  sltiu        a1, a5, -741
195:              addi         tp, zero, -1715
                  bltu         t0, s9, 208f
                  sub          t3, s7, s7
                  ori          zero, s6, -1819
                  beq          s6, s9, 213f
                  bne          s9, gp, 219f
                  sra          s8, s1, ra
202:              blt          s2, s8, 208f
                  sub          s7, s4, s8
                  bge          ra, a7, 209f
                  blt          tp, s9, 225f
                  addi         tp, zero, -1645
                  srl          ra, s10, t4
208:              ori          a0, s6, 1389
209:              sll          t2, t0, s2
                  auipc        s1, 961077
                  addi         a5, s10, 1035
                  blt          s11, t6, 223f
213:              nop
                  srai         t3, a5, 7
                  add          zero, t2, gp
                  sra          a2, a7, a2
                  sub          a0, a4, a0
                  add          t6, a2, s0
219:              sra          s11, s10, ra
                  beq          a7, gp, 240f
                  sra          a4, t3, t6
                  bge          s5, s11, 237f
223:              slt          t3, s8, s8
                  beq          t0, s6, 232f
225:              auipc        a3, 277566
                  auipc        gp, 993919
                  sub          ra, s7, t6
                  slt          s8, s10, a2
                  sll          t3, a5, s3
                  srai         t4, s1, 13
                  blt          s0, zero, 232f
232:              slli         sp, a6, 12
                  slli         a6, t1, 6
                  nop
                  ori          s0, s11, 746
                  bge          gp, a4, 251f
237:              add          t5, s7, sp
                  srl          a3, s1, s3
                  srai         t2, tp, 29
240:              addi         s0, s6, 1608
                  bne          zero, a3, 256f
                  bltu         s1, zero, 250f
                  sltu         s4, a5, s0
                  and          t5, a3, t2
                  slli         a4, t6, 21
                  add          t0, s8, s9
                  sltiu        t2, a3, -746
                  bge          s9, a0, 262f
                  srai         s9, a6, 3
250:              bne          s4, t4, 262f
251:              addi         s7, t2, -904
                  nop
                  slti         t6, s8, 1893
                  addi         zero, s3, 591
                  sltu         s5, s2, a4
256:              add          gp, a5, t2
                  bltu         s3, t6, 263f
                  bltu         t3, a0, 269f
                  bge          s6, a5, 266f
                  srl          s11, t5, sp
                  blt          t5, s7, 262f
262:              sll          tp, s0, a7
263:              sub          a6, a4, s9
                  bne          a2, a7, 271f
                  nop
266:              sll          a4, a6, t1
                  sltu         s7, s0, t1
                  sltiu        t0, t2, 1979
269:              lui          t6, 145222
                  addi         t5, tp, -1911
271:              add          a5, s2, s11
                  sra          s7, s1, a3
                  andi         tp, s0, -822
                  and          a7, a7, a6
                  srl          a3, a1, s2
                  lui          s9, 1003294
                  bge          a3, s10, 284f
                  ori          s9, a1, 517
                  ori          a1, s3, 151
                  slt          t3, a0, t1
                  lui          t0, 554348
                  bgeu         t6, t2, 285f
                  slti         t3, s0, 560
284:              beq          s9, s11, 286f
285:              lui          zero, 839659
286:              beq          a0, t3, 295f
                  or           a6, s6, t5
                  auipc        t4, 49278
                  andi         ra, a2, -826
                  xori         t4, t4, 1520
                  sltiu        a4, t2, -646
                  bgeu         sp, s8, 301f
                  beq          t5, a5, 302f
                  slli         a6, t0, 25
295:              ori          a2, a2, 41
                  or           a7, zero, a5
                  bltu         s8, t6, 312f
                  ori          a2, a3, 567
                  xor          gp, a2, s3
                  auipc        s5, 234068
301:              srai         ra, t2, 9
302:              add          a0, s1, sp
                  srai         a2, zero, 0
                  sll          t1, s4, a6
                  bge          s2, t1, 312f
                  add          sp, s7, s10
                  bltu         a0, t6, 321f
                  or           a3, t1, a7
                  slli         t0, s2, 9
                  srai         t4, s6, 21
                  xori         tp, a4, 932
312:              srli         s8, s9, 15
                  srl          gp, a7, a3
                  srl          a5, a0, t6
                  srli         s9, s0, 11
                  auipc        s2, 350866
                  slli         ra, s2, 29
                  srli         tp, a3, 10
                  sub          a6, t6, gp
                  ori          a6, a7, 1737
321:              bge          s3, a4, 335f
                  bltu         t5, s0, 329f
                  or           zero, ra, a1
                  addi         a4, t1, -1131
                  sra          a4, s9, gp
                  sub          tp, zero, a7
                  slli         a6, t1, 20
                  slti         a3, s7, -11
329:              bltu         a4, a7, 334f
                  blt          a2, a6, 345f
                  bne          s4, s8, 339f
                  xor          t0, a2, a1
                  sra          s8, s4, s11
334:              slli         a4, t2, 4
335:              bltu         s6, t1, 344f
                  sll          t2, zero, s1
                  slt          s8, s1, s7
                  sll          tp, t3, a6
339:              andi         s4, s11, -1620
                  slli         a5, s0, 0
                  auipc        gp, 822648
                  xor          t1, s3, t6
                  beq          a3, t0, 355f
344:              sra          s9, ra, s1
345:              lui          t2, 815986
                  and          a3, s3, s7
                  bge          s2, t2, 350f
                  srai         s5, s11, 26
                  sra          s11, gp, t0
350:              xor          sp, a7, ra
                  sltu         s9, t2, s9
                  srli         a7, gp, 19
                  sub          a5, s9, sp
                  bge          t3, a2, 355f
355:              sll          t2, s4, t5
                  and          gp, a6, sp
                  srli         zero, a3, 31
                  andi         sp, sp, -1201
                  srl          a1, a7, gp
                  bgeu         sp, a3, 372f
                  slli         s5, sp, 9
                  sll          s5, tp, ra
                  or           zero, zero, gp
                  blt          s9, s10, 372f
                  bge          s1, s2, 379f
                  or           s11, t5, s2
                  sltiu        a4, s0, 707
                  and          a4, s1, s1
                  ori          s7, sp, -63
                  nop
                  sll          s7, t4, s0
372:              slti         t4, t1, 1981
                  bgeu         s9, s4, 393f
                  nop
                  nop
                  xor          s8, s5, s6
                  bne          gp, t0, 396f
                  beq          s1, s8, 393f
379:              srl          a7, s11, s3
                  or           s4, s6, s9
                  sll          sp, s5, a4
                  srl          a2, a6, s9
                  sltiu        t4, a7, -75
                  lui          gp, 843747
                  srl          t2, a7, s3
                  ori          s2, t1, -1550
                  and          sp, s9, a6
sub_4_13:         jal          ra, 10f
0:                jal          a6, 20f
1:                jal          sp, 5f
2:                jal          ra, 19f
3:                jal          ra, 17f
4:                jal          t1, 18f
5:                jal          ra, 4b
6:                jal          a2, 15f
7:                jal          ra, 8f
8:                jal          ra, 11f
9:                jal          ra, 13f
10:               jal          ra, 7b
11:               jal          s5, 14f
12:               jal          t1, 9b
13:               jal          a6, 16f
14:               jal          t1, 3b
15:               jal          ra, 1b
16:               jal          ra, 6b
17:               jal          ra, 12b
18:               jal          t1, 2b
19:               jal          ra, 0b
20:               sub          s8, a6, s7
                  lui          a0, 336714
                  sra          a0, s8, tp
                  bgeu         t6, t2, 407f
                  sll          a3, s9, t0
                  slli         t5, gp, 13
393:              slli         a5, t0, 3
                  add          a3, s0, s11
                  srl          a5, s11, a2
396:              srli         t1, s10, 19
                  bge          a6, tp, 408f
                  bgeu         s6, a1, 415f
                  add          t5, zero, t3
                  add          a3, s10, s1
                  bge          a1, a7, 408f
                  blt          ra, s10, 408f
                  bgeu         s1, gp, 409f
                  or           a1, t5, a7
                  srl          s1, s9, a1
                  xor          ra, s6, s0
407:              sltiu        s8, a2, 763
408:              slli         ra, s2, 18
409:              bne          t1, t1, 429f
                  add          s0, a4, s4
                  bne          t6, s1, 413f
                  add          s1, a5, a2
413:              bltu         a4, a1, 428f
                  bltu         t1, s2, 415f
415:              sltu         tp, sp, s1
                  slt          s11, sp, a5
                  nop
                  sra          sp, a6, s5
                  sub          t5, gp, tp
                  lui          gp, 947111
                  or           t4, a4, a4
                  blt          t3, sp, 433f
                  xor          s5, t6, a5
                  or           s9, a6, s9
                  auipc        zero, 108057
                  srl          s0, sp, t2
                  srli         s7, sp, 4
428:              andi         t1, s2, -961
429:              bge          t0, a7, 435f
                  beq          zero, t6, 435f
                  xori         a0, s3, -1331
                  srl          a5, t3, s0
433:              slti         t1, t0, -611
                  bge          ra, s0, 440f
435:              ori          s11, a0, -1921
                  ori          a3, s11, -1338
                  bltu         gp, s11, 457f
                  lui          t6, 331174
                  srli         t0, t4, 25
440:              slt          t0, s4, a4
                  sll          a4, s7, t6
                  auipc        t0, 1012003
                  slt          gp, s8, s8
                  sra          t1, t6, a2
                  or           gp, a6, t0
                  sll          s1, zero, tp
                  and          s11, t6, s0
                  bge          t4, a3, 463f
                  srli         t4, s6, 28
                  bge          t5, t2, 458f
                  srli         a1, s10, 14
                  xori         t2, a6, 1581
                  xori         t3, t0, -1133
                  andi         s4, t3, 1838
                  add          zero, s7, a0
                  bgeu         t1, a0, 471f
457:              add          a7, s3, s4
458:              sltu         ra, t3, a4
                  nop
                  srl          a6, s9, zero
                  srli         s2, a4, 7
                  beq          t5, a5, 465f
463:              andi         a4, ra, 1430
                  bne          s9, s3, 481f
465:              xori         t6, a7, 1326
                  xori         t1, s11, -176
                  nop
                  add          s4, a4, s7
                  sltiu        ra, t5, 784
                  lui          tp, 969682
471:              blt          a4, t3, 478f
                  or           t5, a5, gp
                  bge          s10, t3, 485f
                  auipc        s4, 380811
                  srai         a4, a0, 21
                  bne          s3, t3, 496f
                  slt          a3, zero, ra
478:              xori         t3, s9, -508
                  srai         sp, a7, 24
                  add          t2, s6, t5
481:              bne          t1, a2, 492f
                  addi         s9, t4, -1984
                  addi         s8, t1, -1399
                  xori         a7, s9, -959
485:              srl          s4, s4, s3
                  bgeu         s7, s7, 495f
                  blt          a2, s3, 494f
                  lui          t3, 12275
                  beq          a5, s11, 496f
                  slli         s4, s4, 8
                  or           tp, gp, t5
492:              xori         t2, a6, 543
                  nop
494:              bgeu         s6, s9, 505f
495:              add          zero, s8, t4
496:              nop
                  xori         a4, a2, -605
                  bltu         s1, t1, 512f
                  xori         t5, s4, -1911
                  blt          a4, s9, 512f
                  srai         gp, s9, 22
                  andi         s1, s0, 518
                  srl          gp, t0, s0
                  and          t5, a4, t6
505:              slt          a4, t0, a0
                  bne          s11, s1, 521f
                  beq          t2, a5, 522f
                  xori         t0, s8, 840
                  xor          a1, a6, s9
                  add          a6, t4, t3
                  sltiu        s7, gp, 29
512:              srl          t2, t3, a7
                  bne          t4, a0, 522f
                  sltu         a0, s6, s9
                  lui          sp, 986789
                  bge          s8, a3, 517f
517:              srl          a0, sp, s4
                  sltu         a3, s9, t4
                  bltu         t4, t5, 520f
520:              ori          zero, t3, 76
521:              xor          t6, s4, a1
522:              sra          s0, a6, ra
                  sub          a3, s7, t4
                  sub          a0, s5, t1
                  sltiu        t5, s5, 286
                  srai         t3, s8, 11
                  sltu         a4, zero, zero
                  sub          s9, a1, s4
                  slli         t3, a7, 7
                  add          a0, s1, s6
                  bltu         gp, gp, 548f
                  bge          t1, s3, 546f
                  beq          a3, t3, 552f
                  ori          t3, s0, 1938
                  sltu         s2, a0, a5
sub_4_8:          jal          ra, 17f
0:                jal          ra, 10f
1:                jal          ra, 14f
2:                jal          t1, 29f
3:                jal          ra, 23f
4:                jal          gp, 15f
5:                jal          ra, 7f
6:                jal          s2, 18f
7:                jal          ra, 4b
8:                jal          t1, 27f
9:                jal          t1, 16f
10:               jal          sp, 8b
11:               jal          t1, 5b
12:               jal          ra, 1b
13:               jal          ra, 24f
14:               jal          ra, 2b
15:               jal          ra, 9b
16:               jal          ra, 6b
17:               jal          s7, 28f
18:               jal          ra, 0b
19:               jal          ra, 12b
20:               jal          a7, 19b
21:               jal          s1, 26f
22:               jal          a6, 21b
23:               jal          t1, 20b
24:               jal          t0, 22b
25:               jal          ra, 11b
26:               jal          ra, 3b
27:               jal          t0, 13b
28:               jal          ra, 25b
29:               srli         s11, a7, 22
                  sll          t3, s6, a6
                  srl          a2, s7, a0
                  add          a7, s4, s4
                  sub          s2, t6, sp
                  add          s7, a5, a3
                  sub          t1, s6, s4
                  xori         a3, s9, -1783
                  sra          s7, a5, s0
                  ori          a6, a0, -619
                  slli         zero, t0, 19
546:              sltiu        a5, sp, -1447
                  bgeu         a0, a1, 549f
548:              addi         t5, s9, -1099
549:              srl          a6, s9, a4
                  add          s5, t3, t4
                  slti         t1, t5, 235
552:              and          a2, t0, s2
                  nop
                  sra          s11, s11, s1
                  bltu         s1, t1, 563f
                  or           zero, a6, t6
                  andi         s8, t2, -1083
                  sra          a6, sp, t2
                  and          a0, tp, t6
                  slti         s1, s8, 1143
                  sll          s7, t6, ra
                  slti         gp, t0, -1688
563:              srli         sp, gp, 28
                  blt          s10, a1, 578f
                  sub          s2, t5, a5
                  nop
                  addi         ra, a5, 239
                  slti         t5, t0, -1840
                  bne          s8, zero, 586f
                  andi         ra, t2, -792
                  srli         gp, a5, 14
                  sltu         a1, s9, a6
                  or           t1, t4, zero
                  blt          a0, sp, 583f
                  sra          s2, t2, s0
                  andi         a4, sp, -1339
                  or           s2, s0, t0
578:              and          t1, s0, t6
                  bne          a6, a7, 588f
                  bltu         gp, a7, 597f
                  and          tp, a2, t5
                  sll          tp, s3, a2
583:              lui          s8, 277716
                  bgeu         a0, a6, 599f
                  nop
586:              and          a2, s3, a2
                  sltiu        t3, t0, 165
588:              slti         gp, t4, 384
                  srli         t6, s0, 9
                  addi         t0, a2, 1794
                  or           a6, s6, t3
                  bltu         t2, s6, 595f
                  sub          t4, s8, s10
                  sll          s9, s10, a5
595:              sltu         s9, t6, a6
                  addi         t2, t6, 255
597:              bne          s5, s1, 612f
                  lui          t5, 149858
599:              sra          t6, s5, s5
                  slt          t4, s0, s8
                  slti         zero, tp, 484
                  add          s5, a4, s11
                  bltu         a7, sp, 609f
                  slt          a6, a7, a6
                  or           a1, a5, a6
                  lui          t4, 417368
                  sll          a4, tp, t6
                  bgeu         t3, t2, 616f
609:              sll          t3, t3, t2
                  beq          a7, s10, 624f
                  srai         a7, t6, 11
612:              srl          s9, zero, tp
                  sll          t4, s9, s4
                  ori          zero, tp, 1494
                  srli         t6, a4, 7
616:              srli         t6, sp, 4
                  or           a5, sp, t1
                  sra          t4, s3, gp
                  blt          a0, a7, 626f
                  xori         a0, sp, -1202
                  sub          zero, a0, s2
                  bltu         t3, t1, 630f
                  beq          s11, gp, 642f
624:              slti         s7, s3, 643
                  ori          s5, s8, -1233
626:              beq          a3, t3, 640f
                  bgeu         t4, s10, 632f
                  blt          s1, s4, 640f
                  sub          tp, s6, gp
630:              xori         t6, s11, 1272
                  ori          s4, a0, 144
632:              beq          s1, t0, 646f
                  xori         s1, a2, 1348
                  sltiu        s0, s7, 305
                  and          s11, tp, gp
                  sll          s1, s6, s4
                  add          a7, s1, t6
                  srl          t6, s10, tp
                  srai         t4, ra, 23
640:              sltiu        ra, a7, -1019
                  srl          t0, a0, a3
642:              sub          gp, sp, t5
                  bltu         s5, t1, 649f
                  sltu         a1, t6, a2
                  bge          a6, zero, 660f
646:              bge          a0, s5, 666f
                  or           a7, t0, s9
                  slti         a2, a1, 524
649:              sub          gp, s10, s0
                  nop
                  bge          s2, s0, 662f
                  slt          s9, t3, zero
                  ori          gp, s8, 546
                  srai         a6, s2, 9
                  sltu         tp, a3, a7
                  srl          t6, t2, gp
                  srl          s2, t6, s10
                  xori         a1, a5, -252
                  sll          s5, a6, s1
660:              sub          a6, s11, s8
                  blt          gp, s2, 668f
662:              sub          t0, a5, s0
                  lui          a7, 6683
                  sll          t4, t4, a1
                  slli         a4, a0, 8
666:              bne          s2, a5, 678f
                  sltu         a6, s7, s3
668:              srl          t5, a2, s8
                  sltiu        tp, s11, -1800
                  slti         a4, a7, -1249
                  beq          sp, s2, 672f
672:              blt          s11, a4, 692f
                  beq          s2, t3, 684f
                  sltu         a1, s8, tp
                  bne          a2, a0, 677f
                  sra          a6, tp, s10
677:              blt          s3, s4, 684f
678:              srl          a1, a3, sp
                  sltiu        zero, t0, 60
                  sra          a7, a1, t1
                  srl          t3, s4, s8
                  add          a3, s6, s8
                  sltiu        s11, s3, 640
684:              srli         s0, a2, 2
                  bne          sp, s0, 686f
686:              nop
                  ori          s9, s1, 1608
                  xori         tp, a2, -101
                  auipc        t6, 663871
                  and          t6, tp, t0
                  srl          a4, s5, sp
692:              bltu         s8, s5, 707f
                  srli         sp, a1, 0
                  slti         a2, s3, 458
                  sltiu        s9, s7, -1938
                  sra          s0, zero, s4
                  slli         a1, zero, 12
                  or           a3, s10, ra
                  sra          zero, s2, ra
                  andi         s11, s3, 594
                  slli         zero, t2, 1
                  nop
                  sub          sp, gp, gp
                  ori          t0, a4, 489
                  srli         t4, a6, 16
                  add          s11, s7, a1
707:              srl          t1, a4, ra
                  srai         a2, t3, 30
                  srli         sp, s1, 6
                  add          t2, t5, gp
                  nop
                  auipc        t0, 393381
                  bne          t0, s2, 727f
                  or           a4, s4, a7
                  beq          s2, t5, 720f
                  slti         t1, a0, -1590
                  and          s8, t1, a0
                  sltu         gp, a1, s5
                  sltu         t4, a4, s1
720:              add          s11, s9, s4
                  sll          zero, s3, a7
                  or           a3, a0, t0
                  slt          s9, t2, t5
                  sra          a0, s3, a4
                  lui          a6, 660252
                  add          s11, a4, s3
727:              lui          ra, 341840
                  ori          t5, s10, -929
                  add          t6, s11, a5
                  bne          s2, a0, 744f
                  srl          a4, s6, s6
                  bge          t4, s0, 747f
                  beq          a1, a6, 736f
                  slli         s1, zero, 7
                  or           t1, a7, s7
736:              addi         a5, a3, 289
                  srai         t6, t6, 15
                  bge          a6, t5, 747f
                  auipc        a0, 217352
                  nop
                  bge          a2, t3, 747f
                  or           s1, s4, s7
                  bltu         t1, t5, 763f
744:              nop
                  srl          sp, a0, s4
                  bgeu         tp, s0, 758f
747:              bltu         t4, t0, 755f
                  bne          s0, a1, 765f
                  sll          s2, ra, a4
                  nop
                  bltu         t0, s3, 770f
                  and          a6, s8, s4
                  slti         ra, a0, 1362
                  bltu         t2, zero, 774f
755:              bne          a5, s10, 769f
                  auipc        a2, 485570
                  xori         t5, t1, 195
758:              sll          a2, a3, t3
                  addi         a6, gp, -1245
                  ori          a1, t0, -1096
                  ori          a0, ra, 29
                  xor          a1, a1, s2
763:              bltu         a1, a0, 774f
                  srli         a6, zero, 22
765:              sltiu        sp, t6, 1920
                  srli         t5, s4, 6
                  nop
                  andi         a7, t1, 215
769:              xori         s4, a4, 1907
770:              slli         s7, a6, 27
                  srl          s0, s7, a7
                  bne          a1, s1, 787f
                  srai         s7, a1, 29
774:              lui          s11, 207921
                  xor          t4, s8, s1
                  bne          t1, s1, 783f
                  sltiu        t4, t1, -683
                  sub          zero, a0, t3
                  addi         a1, a1, -1497
                  andi         s11, a0, -287
                  or           s8, a3, t4
                  srli         gp, s7, 11
783:              andi         t0, a4, 137
                  sltu         a5, t6, s1
                  lui          a4, 630496
                  slt          t1, t4, s11
787:              add          t6, sp, s5
                  beq          s0, a0, 799f
                  blt          t6, s2, 806f
                  slt          s8, a7, s2
                  andi         t3, s1, -1307
                  xori         a3, tp, -1301
                  sub          t3, a7, a4
                  blt          s9, tp, 801f
                  or           a0, s6, t0
                  blt          a3, a0, 803f
                  sub          s9, s7, t3
                  bge          s8, t6, 813f
799:              and          a3, t5, s9
                  add          ra, s8, t4
801:              bltu         tp, ra, 803f
                  or           s9, t6, s9
803:              xor          a5, gp, t6
                  sra          a4, s4, a4
                  ori          sp, s1, -716
806:              sltiu        t3, a3, 754
                  srli         zero, zero, 24
                  sub          s7, s3, s10
                  sltu         s5, a4, ra
                  slti         gp, t2, -104
                  sltiu        a6, tp, -216
                  lui          s2, 64224
813:              andi         s2, s4, 1434
                  lui          s9, 299361
                  andi         a2, tp, 706
                  xori         s5, t0, -1205
                  or           a6, s1, s4
                  xor          a1, a3, a5
                  sub          a7, s8, s3
                  lui          s8, 797221
                  sub          tp, t1, tp
                  slti         t0, a0, -1975
                  bne          a0, a6, 838f
                  add          t1, t4, tp
                  bge          tp, a4, 837f
                  bne          s1, t6, 834f
                  sltiu        a2, s1, 995
                  srli         gp, a2, 4
                  addi         t1, gp, -74
                  nop
                  andi         t1, sp, 1518
                  srl          s5, s7, t4
                  sltiu        t5, s11, 1305
834:              bltu         s5, t6, 835f
835:              slli         t4, s9, 10
                  addi         s4, a2, 538
837:              srl          a4, s9, sp
838:              sll          sp, s8, s5
                  or           t6, s0, a1
                  srli         a1, s11, 3
                  andi         a5, s2, -1466
                  beq          a1, a3, 851f
                  and          a1, s5, ra
                  srl          a6, tp, s4
                  auipc        s9, 1008055
                  bne          tp, t6, 852f
                  lui          a1, 151058
                  slti         t1, gp, -1415
                  srai         t2, a1, 10
                  bne          a7, a5, 851f
851:              addi         a4, t3, -681
852:              ori          s11, s1, 1277
                  or           tp, a7, s4
                  srl          t6, s3, s6
                  and          t6, a3, t3
                  srai         s2, ra, 30
                  sra          tp, s11, s5
                  andi         t4, a2, 1267
                  srli         s8, ra, 1
                  xori         s5, s5, 964
                  slt          s4, s6, zero
                  bltu         s11, t4, 870f
                  ori          t3, a1, -763
                  bne          s8, a4, 871f
                  slti         tp, s0, 1914
                  beq          t5, a3, 872f
                  sub          s7, s8, t6
                  lui          s9, 831330
                  xor          a7, t1, s7
870:              add          t0, s3, t0
871:              srai         t6, s0, 12
872:              srai         gp, t0, 10
                  nop
                  add          a0, a1, s6
                  andi         s2, a6, -28
                  slti         a5, s2, 1496
                  or           t1, s5, t6
                  addi         s7, t1, 752
                  ori          t1, s6, -41
                  bgeu         a4, s11, 900f
                  sltu         tp, s6, t5
                  srai         zero, t0, 18
                  add          t6, zero, s5
                  lui          t2, 188572
                  and          s5, s11, ra
                  bltu         s9, s0, 895f
                  slti         t3, a7, 1234
                  addi         gp, a1, 1145
                  or           s4, t4, a4
                  auipc        t6, 934099
                  and          a1, s2, zero
                  sltu         a3, s8, a1
                  srli         tp, gp, 16
                  xor          s11, a3, t6
895:              bge          s9, sp, 907f
                  srl          gp, s0, a4
                  andi         a5, a4, -1328
                  bge          t4, sp, 915f
                  addi         a0, a2, -1907
900:              bge          a0, s3, 906f
                  sltiu        s0, s8, -1261
                  lui          t3, 565844
                  blt          a7, a0, 917f
                  beq          s2, s0, 905f
905:              addi         s0, s6, 1096
906:              or           t5, s10, ra
907:              ori          a3, t2, 1514
                  addi         t0, t0, -243
                  lui          t3, 555751
                  bltu         s7, t1, 924f
                  sub          a0, zero, s0
                  blt          s1, a2, 921f
                  srli         gp, sp, 29
                  beq          s10, a4, 931f
915:              sub          gp, a7, s10
                  and          a6, a3, t2
917:              blt          s11, s1, 929f
sub_4_1:          jal          ra, 9f
0:                jal          t1, 10f
1:                jal          t3, 3f
2:                jal          a1, 15f
3:                jal          ra, 7f
4:                jal          t1, 1b
5:                jal          ra, 4b
6:                jal          ra, 16f
7:                jal          ra, 13f
8:                jal          a2, 6b
9:                jal          ra, 12f
10:               jal          tp, 17f
11:               jal          tp, 14f
12:               jal          ra, 0b
13:               jal          ra, 18f
14:               jal          ra, 8b
15:               jal          t1, 5b
16:               jal          ra, 2b
17:               jal          ra, 11b
18:               slt          gp, s1, a4
                  add          s11, a6, s5
                  srl          gp, sp, s0
                  sub          s7, a2, a4
921:              beq          a3, a3, 940f
                  sra          t3, s11, t1
                  slt          a0, tp, ra
924:              slt          sp, s11, s3
                  andi         a4, a2, -476
                  sra          a0, a4, s3
                  andi         t2, sp, -1916
                  slt          s0, s8, s7
929:              slli         a7, s10, 21
                  xor          s4, a3, s9
931:              sll          t2, s9, t2
                  xori         a0, s5, 1177
                  nop
                  bltu         s10, t5, 944f
                  srl          zero, t0, t1
                  andi         t4, s5, -50
                  slti         a4, a2, 686
                  bge          t1, gp, 944f
                  sll          s2, s1, s3
940:              sll          a1, ra, s0
                  srai         a0, tp, 25
                  xor          a3, a7, s3
                  sltu         a6, s11, a1
944:              sltu         s4, a3, s6
                  sll          a2, ra, sp
                  lw           ra, 4(s6)
                  slt          t1, ra, s8
                  and          t3, s5, a6
                  nop
                  srli         a7, a5, 28
                  or           a4, s11, s10
                  addi         s6, s6, 12
                  sltu         a2, s2, tp
                  slli         s0, ra, 1
                  sll          a3, s3, a7
                  lui          a5, 572663
1374:             addi x12, x1, 1
1374:             jalr x12, x12, 0
sub_3:            addi         s6, s6, -64
                  sll          a1, zero, t2
                  slli         a1, gp, 1
                  sw           ra, 4(s6)
                  xor          s4, sp, tp
                  and          gp, t4, a1
sub_3_5:          jal          ra, 1f
0:                jal          ra, 2f
1:                jal          t1, 9f
2:                jal          ra, 10f
3:                jal          t1, 0b
4:                jal          t1, 12f
5:                jal          t4, 13f
6:                jal          s2, 3b
7:                jal          t1, 14f
8:                jal          t5, 11f
9:                jal          t1, 6b
10:               jal          ra, 8b
11:               jal          gp, 7b
12:               jal          ra, 5b
13:               jal          ra, 15f
14:               jal          ra, 4b
15:               slt          t3, s8, sp
sub_3_7:          jal          ra, 8f
0:                jal          ra, 16f
1:                jal          ra, 0b
2:                jal          sp, 12f
3:                jal          ra, 6f
4:                jal          ra, 5f
5:                jal          ra, 7f
6:                jal          tp, 2b
7:                jal          s8, 13f
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          t1, 14f
11:               jal          ra, 1b
12:               jal          ra, 10b
13:               jal          t1, 9b
14:               jal          t1, 4b
15:               jal          ra, 11b
16:               xor          a7, tp, s0
sub_3_1:          jal          ra, 2f
0:                jal          s11, 21f
1:                jal          ra, 12f
2:                jal          ra, 10f
3:                jal          ra, 11f
4:                jal          sp, 15f
5:                jal          ra, 18f
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          ra, 16f
9:                jal          ra, 0b
10:               jal          t1, 1b
11:               jal          tp, 24f
12:               jal          ra, 8b
13:               jal          s2, 22f
14:               jal          t1, 6b
15:               jal          sp, 20f
16:               jal          tp, 5b
17:               jal          ra, 13b
18:               jal          ra, 17b
19:               jal          t1, 14b
20:               jal          ra, 19b
21:               jal          ra, 4b
22:               jal          ra, 23f
23:               jal          s7, 7b
24:               sltiu        s9, t0, 650
sub_3_4:          jal          ra, 20f
0:                jal          t4, 1f
1:                jal          a1, 14f
2:                jal          ra, 6f
3:                jal          t1, 10f
4:                jal          ra, 17f
5:                jal          t5, 22f
6:                jal          ra, 8f
7:                jal          t1, 0b
8:                jal          t1, 4b
9:                jal          s2, 11f
10:               jal          ra, 12f
11:               jal          ra, 18f
12:               jal          ra, 21f
13:               jal          s2, 7b
14:               jal          ra, 15f
15:               jal          ra, 5b
16:               jal          a7, 13b
17:               jal          t0, 19f
18:               jal          t5, 16b
19:               jal          t1, 3b
20:               jal          s4, 2b
21:               jal          t1, 9b
22:               xori         s0, t5, -1950
sub_3_0:          jal          ra, 3f
0:                jal          gp, 4f
1:                jal          t1, 6f
2:                jal          ra, 24f
3:                jal          a1, 19f
4:                jal          ra, 11f
5:                jal          ra, 13f
6:                jal          sp, 17f
7:                jal          ra, 22f
8:                jal          ra, 0b
9:                jal          ra, 12f
10:               jal          t6, 23f
11:               jal          ra, 16f
12:               jal          ra, 15f
13:               jal          a0, 21f
14:               jal          sp, 5b
15:               jal          ra, 7b
16:               jal          ra, 18f
17:               jal          ra, 8b
18:               jal          t1, 20f
19:               jal          t0, 9b
20:               jal          ra, 2b
21:               jal          t1, 10b
22:               jal          ra, 14b
23:               jal          ra, 1b
24:               lui          s1, 785630
sub_3_3:          jal          ra, 27f
0:                jal          gp, 23f
1:                jal          ra, 13f
2:                jal          ra, 11f
3:                jal          gp, 9f
4:                jal          a1, 29f
5:                jal          ra, 15f
6:                jal          t1, 20f
7:                jal          t1, 4b
8:                jal          ra, 19f
9:                jal          t1, 0b
10:               jal          ra, 30f
11:               jal          ra, 12f
12:               jal          ra, 24f
13:               jal          a4, 16f
14:               jal          ra, 22f
15:               jal          t1, 17f
16:               jal          t1, 7b
17:               jal          ra, 10b
18:               jal          ra, 21f
19:               jal          ra, 5b
20:               jal          t1, 2b
21:               jal          ra, 25f
22:               jal          ra, 18b
23:               jal          ra, 26f
24:               jal          ra, 28f
25:               jal          t1, 8b
26:               jal          t2, 6b
27:               jal          s9, 1b
28:               jal          ra, 14b
29:               jal          ra, 3b
30:               xor          gp, s11, s3
sub_3_6:          jal          ra, 11f
0:                jal          t6, 19f
1:                jal          s5, 8f
2:                jal          t1, 7f
3:                jal          tp, 14f
4:                jal          ra, 9f
5:                jal          t1, 18f
6:                jal          ra, 16f
7:                jal          ra, 10f
8:                jal          ra, 22f
9:                jal          t1, 15f
10:               jal          s2, 3b
11:               jal          ra, 21f
12:               jal          ra, 4b
13:               jal          ra, 1b
14:               jal          a0, 5b
15:               jal          ra, 2b
16:               jal          a5, 17f
17:               jal          a6, 0b
18:               jal          ra, 20f
19:               jal          ra, 12b
20:               jal          a6, 13b
21:               jal          ra, 6b
22:               xor          t2, sp, s9
                  nop
                  xori         t2, a2, 1342
                  bge          a3, s6, 10f
                  sltiu        sp, a6, 1298
                  add          a2, tp, s8
                  srai         ra, t0, 1
                  srl          s1, tp, t6
                  sub          gp, gp, s6
                  slti         s4, ra, 393
                  nop
10:               auipc        t5, 121476
                  xori         a1, s3, -610
                  xori         a3, s4, 1669
                  add          s4, s6, s5
                  sra          t2, t1, sp
                  sll          s5, a5, s9
                  slli         ra, s10, 3
                  beq          s7, s11, 37f
                  bne          a2, sp, 24f
                  bltu         t4, a0, 20f
20:               auipc        zero, 731309
                  sltu         a5, a0, tp
                  slti         a6, t1, 1081
                  srl          t1, s7, t2
24:               srli         a2, s1, 30
                  slt          t2, a6, a4
                  xori         t3, s11, -1713
                  srl          t6, s7, s11
                  lui          s7, 570902
                  sltu         a1, t3, s6
                  bne          t6, s4, 34f
                  lui          a6, 578333
                  add          sp, s11, s10
                  andi         a2, s9, -945
34:               sll          ra, s10, a3
                  slli         tp, a6, 25
                  bltu         s11, gp, 44f
37:               slti         s1, s6, -1668
                  andi         a6, a7, -595
                  bne          a1, a3, 48f
                  xori         s9, s6, -48
                  bgeu         gp, a3, 52f
                  bge          a6, s10, 47f
                  sll          t4, gp, a0
44:               ori          s1, t6, 399
                  sra          s7, t4, t0
                  or           s9, s8, a0
47:               sub          s9, tp, s7
48:               nop
                  addi         zero, s9, -133
                  lui          s9, 439991
                  slti         gp, gp, 858
52:               andi         gp, t6, -1542
                  and          s2, s5, a1
                  bge          t2, t4, 57f
                  beq          a7, t1, 62f
                  srl          t0, s5, a6
57:               sub          t1, zero, s7
                  or           s0, s0, t2
                  slli         t2, t0, 6
                  ori          a4, t1, -1854
                  bne          s4, s3, 69f
62:               srli         sp, t5, 8
                  bne          a7, s6, 64f
64:               sltiu        s0, a6, 1304
                  bne          zero, a4, 75f
                  sra          t4, t6, t5
                  or           a3, t0, a6
                  blt          gp, s2, 85f
69:               addi         a2, s9, -1684
                  xori         gp, t6, -1566
                  srai         a6, a7, 30
                  ori          a3, s1, 316
                  andi         s11, t6, -960
                  slt          s0, s8, t1
75:               bge          s5, t0, 88f
                  sub          t3, a4, t3
                  ori          a2, sp, -1840
                  sra          a7, a3, ra
                  bltu         s1, t5, 85f
                  blt          s8, sp, 90f
                  sltu         a4, s8, t6
                  slti         s0, s4, 228
                  sll          gp, s4, t0
                  slti         s5, a2, 1056
85:               sra          t4, t5, a4
                  bne          tp, t3, 93f
                  sll          a5, a5, t4
88:               ori          a0, s3, -884
                  srai         s2, s6, 29
90:               srai         sp, zero, 25
                  slli         a1, t2, 5
                  slli         a4, s4, 14
93:               sra          s8, a1, s6
                  sltu         gp, a3, a7
                  bgeu         t3, t3, 98f
                  slli         a5, t0, 24
                  bge          a2, s4, 106f
98:               bltu         zero, s7, 107f
                  xori         a3, a1, 1299
                  slti         a2, a2, 1137
                  xor          s0, t4, s2
                  add          s4, tp, s5
                  nop
                  add          s1, a1, gp
                  auipc        a0, 424430
106:              add          sp, gp, s11
107:              sra          s9, tp, s3
                  xor          s7, a2, gp
                  sll          t3, t4, t0
                  bne          s3, a3, 120f
                  bgeu         t4, a1, 123f
                  xori         t2, a0, -1951
                  slt          a1, s3, s8
                  sra          zero, s8, s11
                  bgeu         ra, s4, 134f
                  bne          s3, t4, 130f
                  andi         a1, s7, -599
                  sltu         t2, a7, s4
                  bge          zero, a3, 125f
120:              sub          a0, s4, s11
                  ori          a4, s7, 1175
                  srai         a2, sp, 9
123:              srl          a4, s4, s2
                  sub          t4, s4, a1
125:              slti         gp, a5, 580
                  slti         a4, s1, -1508
                  andi         s1, a1, -860
                  bge          t4, s6, 131f
                  bne          s11, s9, 133f
130:              sltu         s2, t0, a5
131:              sub          a4, zero, zero
                  add          s1, a5, a5
133:              or           ra, s6, s9
134:              blt          s3, a7, 142f
                  blt          t0, a0, 142f
                  srli         t5, a5, 0
                  srai         a6, s10, 19
                  xor          t3, t5, ra
                  ori          t2, s1, 1773
                  ori          s4, s2, 1148
                  slti         t4, ra, -629
142:              addi         sp, a4, -557
                  andi         a0, t2, 345
                  andi         s1, s5, -2002
                  slti         t2, s8, 1699
                  sll          t3, t5, s0
                  andi         t0, t2, -1029
                  ori          s9, s9, 553
                  bgeu         zero, s4, 150f
150:              sltiu        a7, s11, 50
                  beq          s6, a3, 163f
                  slli         s11, s0, 7
                  sltu         t1, a0, t1
                  sltiu        zero, a6, 1619
                  or           a4, s6, s0
                  beq          zero, t1, 166f
                  srl          a7, s2, t2
                  srl          s11, gp, s3
                  sltiu        t2, a5, -1309
                  srai         t2, a0, 26
                  beq          s1, a6, 171f
                  ori          tp, a3, -1026
163:              ori          t0, s0, -197
                  auipc        a6, 855390
                  ori          s7, a5, 189
166:              add          t4, ra, s5
                  xor          s9, s1, a5
                  lui          a0, 25840
                  beq          a5, s5, 177f
                  srai         t5, t2, 21
171:              srli         s2, a0, 29
                  or           t4, a5, s2
                  blt          a2, a5, 174f
174:              sra          a5, a6, ra
                  sltiu        a3, a4, -2031
                  srli         s8, sp, 3
177:              xor          s2, s5, t5
                  or           s11, t6, tp
                  bltu         s2, t1, 199f
                  bgeu         s1, t6, 184f
                  nop
                  nop
                  slti         a4, t3, -1739
184:              sltiu        a3, t5, -832
                  slli         s9, s11, 20
                  ori          tp, a6, -1058
                  or           t3, s1, gp
                  slti         gp, s3, -1630
                  bne          t5, ra, 198f
                  auipc        s1, 303349
                  ori          a6, t3, 1077
                  slti         zero, zero, 1947
                  add          gp, s5, t0
                  slli         a5, s7, 28
                  sltiu        s2, sp, -304
                  andi         ra, s5, 850
                  sltiu        a5, s6, 1182
198:              slti         t1, sp, 1717
199:              slti         ra, a4, 2026
                  bne          t5, s1, 208f
                  sltiu        gp, s1, 851
                  sltu         t4, s9, s11
sub_3_2:          jal          ra, 3f
0:                jal          t1, 20f
1:                jal          ra, 6f
2:                jal          gp, 26f
3:                jal          gp, 25f
4:                jal          ra, 24f
5:                jal          t2, 27f
6:                jal          t1, 18f
7:                jal          t1, 17f
8:                jal          t1, 4b
9:                jal          t0, 13f
10:               jal          a4, 15f
11:               jal          tp, 7b
12:               jal          tp, 16f
13:               jal          ra, 10b
14:               jal          ra, 8b
15:               jal          ra, 21f
16:               jal          t1, 11b
17:               jal          sp, 22f
18:               jal          t1, 12b
19:               jal          t1, 28f
20:               jal          gp, 23f
21:               jal          s9, 1b
22:               jal          ra, 2b
23:               jal          t5, 14b
24:               jal          t1, 9b
25:               jal          t1, 5b
26:               jal          t0, 19b
27:               jal          ra, 0b
28:               sll          s11, s0, a1
                  sltiu        a1, s6, -1015
                  sub          t2, s9, s10
                  beq          a0, a5, 214f
                  slti         sp, s5, 324
                  xori         a0, a5, -1160
208:              andi         a3, s0, -1795
                  add          t1, s11, a1
                  blt          s8, zero, 216f
                  bne          a7, s0, 220f
                  srai         gp, s6, 26
                  bltu         s7, zero, 216f
214:              srai         t6, a4, 6
                  add          s8, t2, a5
216:              srl          sp, s2, tp
                  bne          s2, s0, 224f
                  andi         s7, s1, -1124
                  ori          t6, s2, -1888
220:              sltu         s0, s3, s6
                  sub          t0, s10, t3
                  sub          a4, t3, t1
                  add          s5, zero, a0
224:              srai         s11, t5, 5
                  ori          a7, a3, -562
                  bltu         a2, gp, 232f
                  addi         t5, t0, 1152
                  slli         a4, a5, 3
                  sra          s0, sp, t5
                  slt          a1, zero, t4
                  sra          s8, t0, s1
232:              slti         a5, a6, 108
                  blt          s2, ra, 243f
                  sra          a7, s3, a4
                  slti         tp, t1, 1492
                  sltiu        t0, t3, 1005
                  andi         a1, a4, 582
                  srli         a1, s9, 4
                  lui          t0, 266621
                  bltu         s9, zero, 254f
                  bge          a6, t6, 254f
                  srl          a2, zero, a6
243:              xor          t0, a2, t6
                  sltu         s1, a6, t4
                  nop
                  sltu         tp, s5, ra
                  bge          a6, s6, 251f
                  bne          s8, a4, 251f
                  xor          s0, a0, s0
                  slt          t1, t2, gp
251:              slli         s1, a7, 3
                  ori          a0, gp, 988
                  nop
254:              or           tp, a4, a0
                  sltiu        a0, s10, -1891
                  lui          t3, 204548
                  add          t3, a3, a1
                  sra          a1, t1, gp
                  srl          a0, s4, t6
                  beq          t4, s2, 279f
                  srai         a5, a5, 26
                  auipc        t1, 805143
                  auipc        a1, 195535
                  auipc        s7, 429588
                  auipc        sp, 256618
                  bgeu         a0, a2, 271f
                  nop
                  slti         a7, a0, 1149
                  bltu         t6, a2, 277f
                  bgeu         sp, zero, 281f
271:              slt          ra, zero, zero
                  sub          t6, zero, s5
                  bgeu         s2, s2, 281f
                  and          s7, sp, s9
                  srli         t0, t0, 11
                  slli         s5, sp, 24
277:              and          a4, tp, gp
                  or           t2, sp, s7
279:              and          zero, a7, t5
                  add          a3, a2, t2
281:              or           s7, s2, a4
                  lui          s5, 959961
                  srl          a4, a5, t0
                  and          s8, s6, s7
                  srl          a6, t6, t0
                  bge          s3, ra, 303f
                  addi         zero, zero, -1238
                  lui          s7, 663105
                  blt          s8, t0, 292f
                  auipc        a0, 65312
                  srl          s11, s3, a5
292:              and          t0, a1, tp
                  slli         t3, a2, 4
                  auipc        s2, 658444
                  sub          a7, s7, s6
                  srai         a7, s8, 21
                  bne          s7, s10, 303f
                  beq          sp, s11, 308f
                  ori          s7, s11, 1338
                  slt          s0, s8, tp
                  bltu         s7, s3, 313f
                  lui          a5, 602622
303:              andi         a6, t6, -1826
                  beq          s10, t6, 321f
                  or           s2, s7, a1
                  srl          t2, a2, s7
                  sra          a2, a0, s11
308:              nop
                  slti         s11, s8, -1564
                  beq          t3, s9, 314f
                  nop
                  sll          a2, s5, t5
313:              slt          t1, a2, t3
314:              lui          a5, 265385
                  nop
                  sub          zero, t1, sp
                  srai         s0, s2, 8
                  srl          t5, t0, a7
                  bgeu         t5, a0, 322f
                  bgeu         a7, s1, 334f
321:              lui          s0, 1042250
322:              auipc        s9, 477685
                  sra          s0, t0, a5
                  bgeu         a3, s10, 332f
                  andi         tp, s4, -240
                  andi         gp, t4, 1002
                  slt          a5, t3, t0
                  sll          a6, a6, s10
                  srai         s5, t3, 31
                  sub          s9, s7, a1
                  sub          a1, a3, tp
332:              andi         a7, s4, 1501
                  and          a7, t2, a7
334:              sltu         s7, t3, sp
                  xori         sp, s9, -1204
                  srli         a2, a5, 18
                  andi         s9, s1, -1575
                  ori          t2, t0, 1764
                  slti         s7, s8, -1341
                  srai         s5, s8, 17
                  blt          s7, a2, 347f
                  sltu         s9, t3, t3
                  addi         s9, s10, 699
                  add          zero, s10, a0
                  sltiu        s0, s0, 1286
                  bltu         a1, a2, 350f
347:              srai         s8, a2, 8
                  blt          s8, s4, 355f
                  slli         gp, s6, 15
350:              ori          s11, tp, -735
                  addi         t0, a3, 1993
                  auipc        s8, 272451
                  srli         sp, s7, 30
                  xori         a5, s5, -1245
355:              ori          s0, gp, 537
                  bne          a0, t1, 365f
                  beq          s2, a6, 370f
                  or           t5, sp, a7
                  xori         s9, s8, -2033
                  sra          a3, s1, a5
                  ori          s8, t3, -647
                  addi         s11, s9, 838
                  slti         zero, a3, 1908
                  addi         s1, s9, -1691
365:              nop
                  beq          t5, s5, 369f
                  add          t0, sp, t1
                  xor          zero, t2, a0
369:              auipc        a6, 907678
370:              sltiu        tp, s5, 1829
                  sltu         s8, t5, s1
                  bgeu         s1, s2, 380f
                  auipc        s5, 280056
                  beq          t6, s3, 380f
                  add          tp, s3, a7
                  blt          t0, s8, 385f
                  srai         t1, a6, 0
                  srli         gp, t3, 8
                  bne          ra, s6, 398f
380:              beq          sp, a2, 381f
381:              sltiu        ra, sp, -1561
                  add          s11, s4, a1
                  bne          s10, t4, 393f
                  srai         s11, s5, 17
385:              ori          gp, s4, 1598
                  addi         t5, s6, -1897
                  slt          a1, a4, s6
                  bgeu         a2, t6, 397f
                  sub          s7, gp, a7
                  add          t4, t0, gp
                  andi         zero, t5, 1992
                  xor          a3, a0, s10
393:              blt          s1, a2, 401f
                  xori         s0, a6, -461
                  bge          gp, zero, 401f
                  srli         s7, a3, 21
397:              srl          zero, t6, s9
398:              sll          a6, t0, a5
                  slt          s1, a0, tp
                  nop
401:              auipc        s9, 572882
                  slli         a4, s1, 4
                  sltiu        a5, a1, 163
                  sltu         s11, a0, gp
                  slt          s1, t1, s6
                  auipc        s5, 152223
                  addi         t3, s5, 1302
                  ori          tp, a0, -85
                  bne          a3, t5, 410f
410:              xor          s2, s4, a5
                  ori          t1, a7, -550
                  bgeu         t4, t3, 417f
                  bltu         s1, a0, 421f
                  blt          s2, zero, 427f
                  srli         a2, a7, 4
                  add          t0, s2, ra
417:              sltu         t2, zero, a2
                  bgeu         a0, s11, 427f
                  add          s1, a5, s10
                  add          a6, t2, a5
421:              bltu         a0, s7, 424f
                  bltu         s11, sp, 427f
                  bgeu         s7, a1, 427f
424:              addi         tp, a5, -1148
                  addi         s5, ra, 0
                  sltiu        a3, s8, 830
427:              srl          a5, s0, a2
                  lw           ra, 4(s6)
                  srl          a2, a6, s6
                  addi         s6, s6, 64
                  sll          a3, s8, s10
                  sll          a6, a3, s5
                  slli         s7, tp, 4
                  or           gp, s6, a4
                  srli         a6, ra, 11
                  nop
                  lui          s0, 642473
                  xor          t2, a2, t5
642:              addi x30, x1, 0
642:              jalr x30, x30, 0
sub_2:            bge          a7, a5, sub_2_stack_p
                  addi         a4, s4, -1068
                  xori         s2, t2, 505
sub_2_stack_p:    addi         s6, s6, -32
                  sw           ra, 4(s6)
                  slti         a5, a6, 1428
sub_2_8:          jal          ra, 16f
0:                jal          t1, 5f
1:                jal          ra, 18f
2:                jal          ra, 20f
3:                jal          ra, 10f
4:                jal          ra, 2b
5:                jal          s0, 21f
6:                jal          ra, 3b
7:                jal          ra, 13f
8:                jal          sp, 6b
9:                jal          t1, 12f
10:               jal          t1, 7b
11:               jal          ra, 23f
12:               jal          t1, 14f
13:               jal          ra, 1b
14:               jal          t1, 15f
15:               jal          ra, 11b
16:               jal          t1, 0b
17:               jal          tp, 4b
18:               jal          t1, 22f
19:               jal          ra, 17b
20:               jal          ra, 8b
21:               jal          a0, 19b
22:               jal          ra, 9b
23:               addi         a5, a7, 1751
sub_2_7:          jal          ra, 9f
0:                jal          t1, 1f
1:                jal          a6, 7f
2:                jal          t5, 10f
3:                jal          t6, 6f
4:                jal          t1, 11f
5:                jal          t5, 8f
6:                jal          s9, 5b
7:                jal          ra, 2b
8:                jal          ra, 0b
9:                jal          t0, 3b
10:               jal          t1, 4b
11:               xori         s4, s2, -1545
sub_2_9:          jal          ra, 4f
0:                jal          t1, 19f
1:                jal          t1, 2f
2:                jal          t1, 13f
3:                jal          t1, 6f
4:                jal          ra, 8f
5:                jal          ra, 16f
6:                jal          ra, 15f
7:                jal          ra, 11f
8:                jal          ra, 20f
9:                jal          t1, 10f
10:               jal          ra, 1b
11:               jal          t1, 9b
12:               jal          t1, 14f
13:               jal          t1, 18f
14:               jal          ra, 5b
15:               jal          ra, 17f
16:               jal          a2, 0b
17:               jal          ra, 7b
18:               jal          ra, 21f
19:               jal          a5, 3b
20:               jal          s2, 12b
21:               xor          s0, t4, t6
sub_2_11:         jal          ra, 6f
0:                jal          t4, 12f
1:                jal          ra, 14f
2:                jal          gp, 4f
3:                jal          ra, 9f
4:                jal          t1, 8f
5:                jal          t0, 1b
6:                jal          ra, 13f
7:                jal          t1, 3b
8:                jal          ra, 0b
9:                jal          tp, 15f
10:               jal          ra, 5b
11:               jal          t1, 2b
12:               jal          sp, 10b
13:               jal          ra, 11b
14:               jal          ra, 7b
15:               xori         s5, t1, 462
sub_2_3:          jal          ra, 16f
0:                jal          t1, 3f
1:                jal          ra, 10f
2:                jal          t1, 11f
3:                jal          s2, 13f
4:                jal          t1, 2b
5:                jal          ra, 6f
6:                jal          t6, 12f
7:                jal          ra, 21f
8:                jal          t0, 22f
9:                jal          sp, 1b
10:               jal          t1, 18f
11:               jal          ra, 23f
12:               jal          ra, 8b
13:               jal          s9, 7b
14:               jal          ra, 4b
15:               jal          ra, 19f
16:               jal          ra, 20f
17:               jal          ra, 14b
18:               jal          ra, 0b
19:               jal          a5, 5b
20:               jal          ra, 15b
21:               jal          ra, 17b
22:               jal          t1, 9b
23:               srai         a4, a0, 17
sub_2_6:          jal          ra, 8f
0:                jal          ra, 19f
1:                jal          ra, 24f
2:                jal          a4, 21f
3:                jal          ra, 18f
4:                jal          t1, 12f
5:                jal          ra, 27f
6:                jal          ra, 15f
7:                jal          t4, 4b
8:                jal          s9, 3b
9:                jal          ra, 11f
10:               jal          t2, 25f
11:               jal          gp, 6b
12:               jal          s1, 0b
13:               jal          ra, 1b
14:               jal          tp, 23f
15:               jal          t1, 2b
16:               jal          ra, 7b
17:               jal          ra, 14b
18:               jal          a0, 16b
19:               jal          ra, 5b
20:               jal          t1, 17b
21:               jal          ra, 26f
22:               jal          ra, 28f
23:               jal          ra, 10b
24:               jal          ra, 9b
25:               jal          ra, 29f
26:               jal          t0, 20b
27:               jal          ra, 22b
28:               jal          ra, 13b
29:               slti         gp, s11, 812
sub_2_18:         jal          ra, 16f
0:                jal          a4, 4f
1:                jal          s2, 3f
2:                jal          ra, 17f
3:                jal          t1, 9f
4:                jal          t1, 12f
5:                jal          ra, 18f
6:                jal          t1, 0b
7:                jal          t4, 14f
8:                jal          ra, 5b
9:                jal          ra, 15f
10:               jal          a3, 13f
11:               jal          t1, 2b
12:               jal          a2, 8b
13:               jal          ra, 7b
14:               jal          t4, 19f
15:               jal          t1, 6b
16:               jal          t1, 1b
17:               jal          ra, 10b
18:               jal          gp, 11b
19:               sltiu        tp, t3, 1972
sub_2_16:         jal          ra, 21f
0:                jal          tp, 8f
1:                jal          ra, 0b
2:                jal          t1, 4f
3:                jal          ra, 19f
4:                jal          a6, 6f
5:                jal          ra, 17f
6:                jal          t0, 14f
7:                jal          a6, 18f
8:                jal          gp, 13f
9:                jal          t1, 11f
10:               jal          t1, 3b
11:               jal          t1, 10b
12:               jal          gp, 1b
13:               jal          ra, 5b
14:               jal          ra, 12b
15:               jal          t2, 7b
16:               jal          ra, 2b
17:               jal          ra, 15b
18:               jal          ra, 22f
19:               jal          a5, 16b
20:               jal          ra, 9b
21:               jal          ra, 20b
22:               srli         t0, t5, 18
sub_2_5:          jal          ra, 8f
0:                jal          ra, 10f
1:                jal          t1, 16f
2:                jal          t1, 29f
3:                jal          s9, 5f
4:                jal          ra, 13f
5:                jal          ra, 27f
6:                jal          a4, 19f
7:                jal          ra, 20f
8:                jal          t1, 26f
9:                jal          a7, 3b
10:               jal          a0, 2b
11:               jal          ra, 23f
12:               jal          ra, 24f
13:               jal          sp, 11b
14:               jal          t1, 28f
15:               jal          ra, 22f
16:               jal          ra, 17f
17:               jal          s11, 12b
18:               jal          ra, 14b
19:               jal          ra, 18b
20:               jal          t1, 0b
21:               jal          a6, 1b
22:               jal          t1, 4b
23:               jal          ra, 9b
24:               jal          ra, 25f
25:               jal          ra, 15b
26:               jal          t1, 21b
27:               jal          s2, 6b
28:               jal          s1, 7b
29:               andi         s5, ra, 547
sub_2_1:          jal          ra, 11f
0:                jal          ra, 12f
1:                jal          tp, 16f
2:                jal          s9, 6f
3:                jal          t1, 2b
4:                jal          ra, 8f
5:                jal          ra, 13f
6:                jal          t1, 15f
7:                jal          ra, 9f
8:                jal          t1, 14f
9:                jal          s0, 5b
10:               jal          a2, 3b
11:               jal          ra, 0b
12:               jal          ra, 4b
13:               jal          a2, 1b
14:               jal          t1, 10b
15:               jal          a0, 7b
16:               slli         tp, s11, 17
sub_2_15:         jal          ra, 3f
0:                jal          ra, 7f
1:                jal          sp, 6f
2:                jal          ra, 11f
3:                jal          t0, 9f
4:                jal          ra, 21f
5:                jal          ra, 8f
6:                jal          ra, 17f
7:                jal          t1, 20f
8:                jal          t1, 16f
9:                jal          ra, 18f
10:               jal          ra, 2b
11:               jal          t1, 15f
12:               jal          t0, 10b
13:               jal          t3, 0b
14:               jal          ra, 13b
15:               jal          t6, 22f
16:               jal          s5, 4b
17:               jal          t2, 5b
18:               jal          ra, 1b
19:               jal          t5, 14b
20:               jal          a7, 12b
21:               jal          t1, 19b
22:               jal          a5, 23f
23:               andi         s5, t1, 467
sub_2_12:         jal          ra, 8f
0:                jal          ra, 22f
1:                jal          a3, 6f
2:                jal          t1, 27f
3:                jal          t1, 14f
4:                jal          ra, 9f
5:                jal          t1, 25f
6:                jal          s2, 17f
7:                jal          ra, 0b
8:                jal          ra, 3b
9:                jal          ra, 19f
10:               jal          t1, 13f
11:               jal          t1, 20f
12:               jal          t1, 21f
13:               jal          t1, 18f
14:               jal          ra, 15f
15:               jal          t1, 1b
16:               jal          s11, 11b
17:               jal          a1, 26f
18:               jal          t5, 12b
19:               jal          t5, 2b
20:               jal          ra, 28f
21:               jal          ra, 4b
22:               jal          ra, 10b
23:               jal          ra, 16b
24:               jal          ra, 7b
25:               jal          t1, 24b
26:               jal          ra, 5b
27:               jal          ra, 23b
28:               srl          a4, s4, a0
sub_2_10:         jal          ra, 11f
0:                jal          s11, 2f
1:                jal          ra, 9f
2:                jal          gp, 12f
3:                jal          ra, 4f
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          ra, 1b
7:                jal          ra, 10f
8:                jal          t0, 3b
9:                jal          ra, 7b
10:               jal          ra, 13f
11:               jal          a1, 0b
12:               jal          ra, 8b
13:               xor          t0, t3, s5
sub_2_0:          jal          ra, 18f
0:                jal          s1, 13f
1:                jal          a4, 12f
2:                jal          t4, 4f
3:                jal          ra, 11f
4:                jal          sp, 5f
5:                jal          t0, 19f
6:                jal          t1, 9f
7:                jal          ra, 14f
8:                jal          ra, 15f
9:                jal          tp, 8b
10:               jal          t2, 0b
11:               jal          ra, 7b
12:               jal          t1, 16f
13:               jal          t0, 1b
14:               jal          t3, 17f
15:               jal          t4, 3b
16:               jal          t1, 6b
17:               jal          ra, 2b
18:               jal          t1, 10b
19:               slt          a1, a6, s7
sub_2_4:          jal          ra, 6f
0:                jal          ra, 13f
1:                jal          t1, 5f
2:                jal          gp, 3f
3:                jal          ra, 14f
4:                jal          t1, 20f
5:                jal          a6, 17f
6:                jal          t4, 19f
7:                jal          sp, 23f
8:                jal          t1, 24f
9:                jal          ra, 2b
10:               jal          ra, 26f
11:               jal          ra, 7b
12:               jal          ra, 15f
13:               jal          s0, 10b
14:               jal          t1, 11b
15:               jal          t1, 22f
16:               jal          ra, 1b
17:               jal          t0, 4b
18:               jal          ra, 21f
19:               jal          t0, 12b
20:               jal          t1, 18b
21:               jal          ra, 0b
22:               jal          a4, 25f
23:               jal          t1, 16b
24:               jal          gp, 9b
25:               jal          ra, 8b
26:               add          a4, t5, s3
sub_2_14:         jal          ra, 7f
0:                jal          s0, 16f
1:                jal          ra, 17f
2:                jal          ra, 21f
3:                jal          s9, 13f
4:                jal          gp, 26f
5:                jal          t1, 0b
6:                jal          ra, 14f
7:                jal          ra, 10f
8:                jal          t1, 22f
9:                jal          t1, 4b
10:               jal          ra, 3b
11:               jal          t1, 20f
12:               jal          t1, 8b
13:               jal          ra, 25f
14:               jal          ra, 23f
15:               jal          a7, 9b
16:               jal          ra, 24f
17:               jal          ra, 5b
18:               jal          ra, 2b
19:               jal          ra, 12b
20:               jal          ra, 1b
21:               jal          t1, 6b
22:               jal          t1, 11b
23:               jal          a4, 15b
24:               jal          ra, 18b
25:               jal          t0, 19b
26:               ori          tp, s0, -1643
                  beq          t6, s9, 17f
                  sra          t2, ra, a1
                  sub          a2, a2, a3
                  addi         t4, s4, 1218
                  slli         t0, t6, 27
                  beq          t0, a1, 18f
                  xor          s9, s4, a0
                  addi         a7, s7, 693
                  xor          a5, sp, a7
                  sra          a1, s9, gp
                  or           a1, a3, s5
                  auipc        sp, 361646
                  nop
                  bgeu         a7, s9, 30f
                  lui          t5, 869261
                  slti         t5, s2, 1689
                  slt          s2, a5, s3
17:               srli         tp, t2, 26
18:               and          t6, t4, a2
                  srai         a1, a2, 16
                  slli         a5, s11, 30
                  sltiu        a2, a6, 86
                  andi         t2, s5, 1951
                  srai         ra, a0, 20
                  sltiu        t6, zero, -1643
                  slli         s5, a3, 11
                  slt          t6, a7, a5
                  srai         s0, a5, 18
                  xori         sp, s0, -287
                  addi         t1, s10, -1745
30:               or           s4, a2, t2
                  sltiu        a6, a3, 1220
                  bge          a2, t4, 40f
                  add          a2, s11, s5
                  add          s11, t4, a6
                  slli         t5, ra, 17
                  bne          s3, t3, 42f
                  sltu         s7, s6, a2
                  xor          t5, a2, ra
                  bge          t2, a7, 56f
40:               sltu         s8, t1, s7
                  xor          t0, s2, t4
42:               ori          sp, sp, -68
                  or           s5, s9, s5
                  blt          s1, a7, 55f
                  beq          a4, a6, 49f
                  bge          sp, t2, 54f
                  blt          t5, a6, 57f
                  srl          t5, a3, t4
49:               bltu         t1, s6, 61f
                  addi         a0, a7, 2043
                  andi         zero, a6, 550
                  lui          gp, 246583
                  nop
54:               bge          t0, s3, 67f
55:               lui          s4, 654082
56:               bgeu         s4, sp, 71f
57:               slt          a3, t4, t1
                  srli         s7, s10, 26
                  bne          a2, t0, 66f
                  blt          tp, s6, 71f
61:               sub          s7, sp, s3
                  srli         s0, t6, 30
                  blt          a4, a7, 80f
                  srai         a4, a2, 27
                  sltiu        a4, t2, 482
66:               beq          a0, a4, 71f
67:               bltu         a2, a7, 71f
                  and          a0, tp, s0
                  sltu         t3, s11, s2
                  srai         t0, t0, 9
71:               bne          s10, s7, 74f
                  blt          a3, ra, 77f
                  add          sp, a2, tp
74:               bltu         s6, t4, 75f
75:               sra          t3, s5, t6
                  beq          gp, t6, 85f
77:               addi         s4, s5, -797
                  addi         s11, s10, -1342
                  sub          a2, t6, gp
80:               xor          ra, s8, s0
                  slli         a4, t5, 4
                  and          a1, t6, sp
                  sll          a1, sp, s11
                  srli         s1, a0, 12
85:               andi         t4, t6, 1260
                  srl          a5, s4, sp
                  addi         a3, s3, -1243
                  and          t4, t5, t6
                  srai         s5, t5, 1
                  blt          t3, gp, 94f
                  nop
                  ori          t3, a3, -1691
                  nop
94:               sltiu        a2, a5, -602
                  addi         s11, t1, 1552
                  lui          t6, 435310
                  blt          a5, t2, 105f
                  sltu         s8, a0, a0
                  beq          s7, a3, 115f
                  bltu         s5, t0, 110f
                  nop
                  nop
                  add          s5, t0, s3
                  slli         s8, a6, 23
105:              bne          a7, s5, 121f
                  sll          t6, a5, t0
                  bne          zero, t4, 117f
                  slti         s0, a1, -61
                  andi         a5, zero, 1023
110:              slt          ra, a0, s3
                  sub          ra, t1, s11
                  sub          s9, t0, t0
                  sub          s8, a2, t5
                  slti         s2, s9, 386
115:              slli         s4, s11, 21
                  sltiu        t6, t1, 499
117:              addi         a2, gp, 806
                  bne          t3, s9, 128f
                  blt          s10, t2, 133f
                  bgeu         s0, a4, 121f
121:              srai         s4, t0, 28
                  sll          zero, a0, s8
                  xor          s9, s3, s10
                  sll          a5, ra, s11
                  srai         ra, t2, 1
                  xor          a3, a1, s9
                  sub          s9, s0, s5
128:              srl          zero, a0, ra
                  slli         t2, s3, 9
                  srai         t5, t4, 4
                  beq          s10, a1, 147f
                  xor          ra, s9, t6
133:              or           tp, s10, s0
                  slti         a6, a7, -226
                  slli         t6, a5, 5
                  or           a4, t1, ra
                  xor          t3, zero, s2
                  slti         s2, s0, -1640
                  xori         zero, s1, 1794
                  sltu         t0, zero, t4
                  srli         t0, s8, 22
                  srai         s9, s3, 2
                  bgeu         ra, s2, 153f
                  and          t6, s3, gp
                  slti         s0, t6, -1767
                  slt          s1, a1, s11
147:              xor          s2, a4, s3
                  xori         t1, a0, -238
                  sltu         tp, s11, t6
                  auipc        sp, 837387
                  beq          s3, s4, 168f
                  sltiu        t6, a7, 1857
153:              and          zero, a3, t1
                  andi         a0, a2, -1323
                  slt          ra, s0, t3
                  srli         s11, s2, 20
                  ori          t0, t2, -966
                  auipc        s8, 294042
                  bgeu         s1, s10, 170f
                  sltu         t6, zero, s10
                  slli         t0, s5, 24
                  bge          a3, zero, 179f
                  bne          t0, s0, 166f
                  slti         a3, s3, 1485
                  sltu         a1, s9, a4
166:              srl          a1, a5, s8
                  ori          ra, tp, 1569
168:              sub          sp, s11, a0
                  andi         sp, t4, -1778
170:              beq          t6, s10, 187f
                  sltu         a3, a3, ra
                  lui          s7, 781395
                  srli         a6, s5, 6
                  sltiu        s11, a6, -1344
                  sltiu        s5, s10, 785
                  xor          s5, a0, a4
                  lui          s7, 563968
                  srai         a6, s4, 22
179:              blt          s6, s9, 191f
                  srli         a7, s3, 19
                  slti         a0, s2, 875
                  srl          s11, s5, a7
                  bge          t5, t6, 193f
                  slti         a0, s8, -128
                  add          t5, s11, s3
                  sub          a5, s10, a0
187:              slt          a0, a6, a4
                  bltu         tp, gp, 199f
                  sltu         s11, s10, a6
                  bgeu         s1, a5, 194f
191:              beq          s3, t1, 197f
                  and          s8, t1, s4
193:              sltiu        t2, s0, -743
194:              srai         s4, s4, 28
                  xori         a0, tp, -1495
                  or           s0, s9, t1
197:              slt          t6, t5, t6
                  lui          t1, 817305
199:              srl          s0, gp, s8
                  sltu         s11, a6, t1
                  slli         s2, a7, 15
                  sub          s9, a6, s7
                  ori          t2, s4, -1800
                  bge          a4, s11, 212f
                  beq          gp, t5, 222f
                  addi         s9, s9, -122
                  addi         t6, a4, -333
                  srl          gp, s0, t3
                  beq          s11, t4, 219f
                  blt          tp, tp, 215f
                  addi         a1, s10, 1100
212:              nop
                  slti         a0, s0, 1378
                  sll          s9, s6, t0
215:              nop
                  bltu         a0, gp, 226f
                  and          s1, a5, s1
                  andi         t0, s5, -1079
219:              bge          a4, s10, 232f
                  sltu         s11, ra, t4
                  slli         s0, t6, 13
222:              blt          a1, s9, 237f
                  sra          a1, s5, s3
                  xori         t3, gp, 29
                  slt          t1, t1, t6
226:              addi         s11, s6, -1918
                  slti         t5, a6, 1772
                  or           t3, s5, s8
                  sll          s7, gp, s4
                  sltu         a0, sp, s8
                  sltu         t3, s10, a4
232:              blt          a0, s8, 236f
                  blt          s3, s4, 240f
                  srl          t4, t2, s11
                  bne          tp, t5, 239f
236:              xor          a5, a4, s6
237:              slt          tp, s0, a4
                  sra          t6, t3, a1
239:              bltu         a0, s10, 255f
240:              sub          gp, a3, ra
                  slti         s11, gp, 161
                  or           s4, a6, zero
                  nop
                  xor          s2, t2, s4
                  sra          t0, s3, s9
                  srai         t1, a5, 25
                  andi         s11, a6, 1133
                  beq          a1, a5, 262f
                  srli         tp, gp, 30
                  and          s7, tp, s1
                  xor          a7, a7, s6
                  and          s8, s9, s11
                  addi         s1, tp, 1907
                  slti         s4, s7, -1288
255:              lui          t3, 566320
                  addi         tp, t5, 1287
                  sltu         s4, zero, a3
                  bltu         s10, s11, 271f
                  sll          s9, t4, s9
                  ori          s4, s5, -1081
                  xori         s0, sp, -835
262:              ori          a4, t5, -156
                  andi         t3, a7, 43
                  slt          sp, tp, a4
                  xori         s9, s0, 1567
                  lui          a7, 712506
                  slti         s5, zero, -1311
                  add          gp, s9, s8
                  ori          a7, a5, 953
                  slti         ra, s9, -1464
271:              slli         s1, a0, 15
                  addi         t3, t5, -1663
                  ori          t1, a5, -1628
                  sltiu        gp, s10, 1275
                  sltiu        t4, a1, -1668
                  nop
                  and          t2, s1, t5
                  bgeu         t3, sp, 286f
                  nop
                  nop
                  lui          t2, 146333
                  andi         t0, a2, -1883
                  auipc        a0, 689874
                  beq          a4, a4, 293f
                  nop
286:              xor          s7, a3, t4
                  slt          s0, t0, s8
                  ori          sp, s8, 358
                  sltu         a0, s7, sp
                  bge          s10, a2, 295f
                  slti         s11, a1, 1526
                  xor          t2, s0, a1
293:              sltiu        tp, a3, 118
                  ori          ra, s3, 512
295:              ori          a2, s8, -120
                  beq          s9, gp, 304f
                  sll          a6, s9, t3
                  srl          a4, ra, t3
                  slti         t1, t3, 1994
                  and          t3, s2, a6
                  blt          a2, sp, 315f
                  bne          t1, zero, 310f
                  and          ra, t2, s5
304:              addi         t6, s5, -383
                  srai         s11, s10, 19
                  slti         gp, s0, 406
                  slli         s8, t3, 0
                  bne          s10, t2, 325f
                  srai         s0, s5, 1
310:              srai         t5, t6, 3
                  blt          s2, s2, 312f
312:              sll          a3, zero, t0
                  bne          t0, a5, 318f
                  and          sp, gp, a6
315:              auipc        s1, 33743
                  srai         tp, s8, 16
                  blt          t0, s5, 333f
318:              xori         t0, tp, 213
                  beq          tp, ra, 330f
sub_2_2:          jal          ra, 3f
0:                jal          t1, 5f
1:                jal          ra, 12f
2:                jal          t1, 10f
3:                jal          s9, 9f
4:                jal          ra, 13f
5:                jal          ra, 6f
6:                jal          ra, 1b
7:                jal          ra, 0b
8:                jal          ra, 11f
9:                jal          sp, 8b
10:               jal          ra, 14f
11:               jal          ra, 7b
12:               jal          t1, 4b
13:               jal          t1, 2b
14:               slli         s2, s10, 5
                  xori         sp, gp, 1986
                  addi         s0, gp, 1647
                  bgeu         s10, s4, 327f
                  bltu         s8, s5, 327f
                  addi         s7, t1, 1843
325:              ori          a0, s0, 158
                  srl          a2, a0, a0
327:              sra          s0, ra, gp
                  sltiu        a7, a4, -1048
                  bge          a7, sp, 336f
330:              and          a1, t5, sp
                  slt          t6, t0, zero
                  sll          s4, t6, s4
333:              slli         zero, t6, 27
                  blt          s4, s2, 338f
                  lui          a4, 705401
336:              or           a3, s8, s10
                  bne          s6, a7, 341f
338:              ori          t1, s1, 159
                  sll          gp, s4, t5
                  auipc        a0, 324760
341:              ori          s4, tp, 736
                  sltiu        ra, zero, -52
                  xor          a7, s1, s10
                  sub          sp, a0, sp
                  lui          a4, 57201
                  sub          s2, a6, a3
                  andi         a7, a1, 944
                  sra          s9, t4, a7
                  lui          t2, 47531
                  sll          s1, t3, t1
                  srai         a3, s0, 26
                  bge          a6, s0, 362f
                  sub          t2, s6, sp
                  srl          t3, gp, t6
                  slt          sp, zero, t1
                  sub          s5, a3, t6
                  slti         s7, a4, 910
                  auipc        tp, 228832
                  lui          t4, 87094
                  xori         a1, s4, -9
                  and          s0, s6, tp
362:              slti         a1, t0, 677
                  beq          a2, t3, 366f
                  nop
                  addi         tp, a0, -1850
366:              and          gp, s4, a3
                  slti         s5, sp, -278
                  bgeu         s4, t5, 381f
                  sub          a3, t3, a7
                  beq          t1, t5, 387f
                  sltiu        s4, zero, -296
                  nop
                  slli         a0, s5, 26
                  xori         t1, a3, 1081
                  bne          s4, tp, 391f
                  blt          gp, a2, 386f
                  sltu         t4, t6, s10
                  auipc        t3, 312237
                  lui          s11, 264391
                  bne          s1, a5, 397f
381:              addi         t4, s9, 262
                  srl          s4, t1, a3
                  slt          a4, ra, s3
                  lui          zero, 538837
                  slli         t5, t0, 5
386:              sra          a4, a0, s9
387:              add          s4, t1, a1
                  and          t5, a5, t2
                  slti         s7, s5, -1564
                  bge          s0, t0, 398f
391:              add          a4, ra, a4
                  xor          ra, a7, t3
                  addi         s7, s11, -116
                  lui          s5, 716816
                  or           s1, zero, gp
                  slti         s9, s5, 41
397:              slli         s7, sp, 15
398:              slli         ra, s10, 17
                  lui          s11, 907886
                  xor          t2, s4, t4
                  bne          s8, t1, 413f
                  bltu         a6, t2, 417f
                  blt          a4, s2, 413f
                  blt          a2, t5, 412f
                  or           t1, t3, a0
                  bgeu         s7, a3, 419f
                  srl          a4, a4, t1
                  bltu         s0, t4, 414f
                  sltiu        a6, t0, -870
                  xor          t3, s7, a6
                  and          a1, s9, s6
412:              slli         t1, t2, 6
413:              nop
414:              addi         s0, t1, 40
                  srai         s7, a4, 9
                  or           t4, s4, t6
417:              lui          zero, 806048
                  bltu         a3, ra, 428f
419:              beq          s3, s3, 430f
                  xori         gp, tp, 1885
                  slli         s4, s7, 15
                  bltu         a2, s0, 439f
                  bge          s0, a1, 432f
                  slt          a0, t2, a4
                  sltu         a1, s7, s4
                  beq          s7, a4, 431f
                  sltu         a1, a6, s3
428:              xor          ra, t4, s1
                  ori          s0, a5, -1424
430:              add          tp, t4, s2
431:              srli         a5, s0, 30
432:              auipc        t5, 906211
                  blt          a6, s11, 438f
                  bltu         a2, s0, 442f
                  addi         s2, s5, 1550
                  xor          s0, sp, s10
                  and          a5, a3, s2
438:              slti         a7, a0, 1356
439:              nop
                  sltiu        t2, sp, -1718
                  blt          t1, s0, 457f
442:              srai         a1, a1, 31
                  addi         a3, s6, -101
                  sltu         t3, s0, ra
                  slti         gp, s9, -1420
                  sra          t2, t6, s3
                  slti         s0, a0, -1784
                  xori         t2, s7, 895
                  lui          t5, 359876
                  sub          s2, zero, a3
                  sub          a5, t6, t2
                  xor          t6, t0, s0
                  bne          s4, a0, 461f
                  lui          s9, 1020022
                  bltu         s10, s7, 459f
                  sra          a5, s9, sp
457:              sra          s11, t2, s11
                  slti         s8, a3, -370
459:              srai         t2, s11, 9
                  lui          s7, 268400
461:              bgeu         t3, ra, 468f
                  andi         sp, a6, 633
                  auipc        t5, 307250
                  bne          s8, gp, 474f
                  add          t5, a3, a2
                  sll          s2, sp, s1
                  bltu         s1, t0, 480f
468:              sub          gp, s6, t2
                  sub          t5, a5, a2
                  add          t0, s8, s1
                  or           t2, s6, a7
                  srli         t6, s4, 24
                  blt          a5, s9, 490f
474:              and          a6, s6, a0
                  lui          a6, 163561
                  bge          s0, s8, 493f
                  xor          t0, a0, t1
                  add          sp, a7, a7
                  addi         t5, a5, 409
480:              srl          t0, zero, a5
                  or           a0, gp, a7
                  nop
                  bne          s1, a5, 493f
                  slti         a1, t2, 1054
                  bgeu         s3, zero, 493f
                  sll          zero, s1, s3
                  xori         s4, t1, -1647
                  addi         a3, a2, -2002
                  lui          s9, 78249
490:              slli         s4, a2, 1
                  sra          t0, t2, t0
                  sub          s9, zero, s3
493:              auipc        a1, 223676
                  srli         a4, s5, 7
                  add          s7, s6, t1
                  beq          t6, s3, 512f
                  bltu         s1, s11, 510f
                  ori          gp, sp, -149
                  slt          t5, s3, s11
                  bltu         s7, s7, 517f
                  slli         tp, gp, 8
                  srli         a2, s11, 15
                  lui          t4, 50708
                  andi         s8, t0, 842
                  bne          s3, s4, 508f
                  sub          s1, s4, s4
                  nop
508:              slt          a1, t6, t3
                  bltu         a5, s10, 526f
510:              slti         s11, gp, 1044
                  slli         a6, s7, 9
512:              addi         a2, sp, -403
                  srli         s0, a2, 31
                  xori         a3, s8, 2008
                  xor          s5, a3, s7
                  sltu         s8, t5, s1
517:              sltu         s2, s2, s9
                  bne          s7, t2, 522f
                  xor          gp, s0, s10
                  srli         s8, t6, 17
                  bne          s7, sp, 531f
522:              add          s11, sp, a0
                  sra          t1, t5, s4
                  lui          a1, 398119
                  sra          t0, zero, gp
526:              blt          s4, zero, 540f
                  andi         t4, t3, 1088
                  andi         t1, t1, -1161
                  srl          t6, a0, s9
                  bgeu         s1, a6, 540f
531:              nop
                  auipc        t3, 304044
                  add          a1, a3, zero
                  xor          t0, s9, t6
                  nop
                  nop
                  ori          s8, s11, 1472
                  auipc        s0, 968841
                  slt          ra, t2, t1
540:              sll          s9, t1, t2
                  bge          t5, a6, 547f
                  slli         t6, s6, 25
                  xori         s4, zero, -182
                  or           a5, a1, a6
                  srai         s5, s7, 25
                  ori          t6, a0, -845
547:              srai         ra, sp, 9
                  sra          a0, t1, s8
                  srl          a4, tp, a5
                  add          s0, t2, s5
                  slti         s8, a0, -644
                  addi         s4, t5, -1064
                  srai         s2, a7, 1
                  srai         a2, a2, 31
                  ori          t6, t5, -293
                  bge          t4, a7, 557f
557:              ori          ra, a4, 909
                  bgeu         t1, s8, 573f
                  ori          gp, a4, -1997
                  addi         a6, s1, -133
                  add          s7, s0, s4
                  srli         a6, s0, 23
                  lui          a7, 921804
                  srl          s1, s2, s3
                  ori          s8, t5, 793
                  xor          t5, a2, t4
                  sll          s2, s3, t0
                  sra          gp, s11, t2
                  add          s1, a4, tp
                  slli         a1, s9, 30
                  addi         s4, s6, -1228
                  srli         t6, s3, 15
573:              sra          s1, t3, t5
                  srli         a5, s7, 6
                  and          t4, t3, a7
                  and          t0, sp, a5
                  ori          s0, gp, 1290
                  srli         ra, a1, 27
                  bge          t4, a1, 590f
                  srai         s5, t5, 8
                  bgeu         tp, zero, 585f
                  lui          ra, 238864
                  sra          s2, ra, tp
                  sltiu        zero, a3, -117
585:              srli         t3, zero, 1
                  bne          a6, s6, 597f
                  or           t2, a6, t2
                  andi         a1, s10, -1824
                  slli         a5, t0, 21
590:              beq          a5, s2, 602f
                  or           sp, a5, s11
                  xor          s8, t3, t6
                  bne          gp, a1, 602f
                  lui          a6, 779712
                  sll          t4, t4, a0
                  or           a0, zero, s11
597:              sll          a2, t3, t2
                  nop
                  andi         a4, t6, -1276
                  or           a1, a3, sp
                  srli         a2, s7, 7
602:              bge          s1, a5, 603f
603:              or           a1, s6, s5
                  blt          a4, a1, 617f
                  ori          t1, s3, -929
                  sub          a7, t2, t4
                  slti         a1, s2, 1899
                  sra          t4, t3, a3
                  xori         s4, sp, -1772
                  and          a2, a1, a6
                  lui          ra, 478077
                  nop
                  xor          s7, s11, s3
                  bge          gp, t3, 618f
                  and          t3, s9, s6
                  slti         s8, s10, 505
617:              blt          t1, a3, 624f
618:              addi         s8, a3, -1167
                  nop
                  nop
                  sra          a5, a0, tp
                  nop
                  nop
624:              lui          ra, 637409
                  bne          s4, gp, 629f
                  blt          sp, s8, 643f
                  andi         a6, s4, 1035
                  or           t3, s4, a3
629:              sltu         s7, s9, a1
                  lui          a6, 216745
                  lui          s9, 483151
                  sra          s8, sp, t1
                  blt          s5, s11, 639f
                  slti         t0, t1, -258
                  lui          zero, 329466
                  bge          tp, s2, 650f
                  xori         a5, a7, 1184
                  sra          ra, t6, a3
639:              slti         a7, s5, -1334
                  beq          gp, s10, 657f
                  ori          t4, gp, -510
                  lui          s8, 131525
643:              xori         a0, t3, -1710
                  ori          ra, a3, 1474
                  sll          t1, s7, a4
                  bltu         t5, a7, 658f
sub_2_17:         jal          ra, 0f
0:                jal          tp, 6f
1:                jal          t1, 12f
2:                jal          t1, 7f
3:                jal          t5, 4f
4:                jal          t1, 8f
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          t1, 10f
8:                jal          ra, 9f
9:                jal          t1, 2b
10:               jal          t1, 11f
11:               jal          t3, 1b
12:               ori          s5, s7, -1211
                  bge          s0, s4, 660f
                  slt          s0, s6, a1
                  sltiu        sp, ra, -887
650:              xor          s4, a4, s8
                  srl          a1, t0, a5
                  bge          a5, a4, 660f
                  slli         s1, a0, 7
                  xor          a2, s1, a4
                  ori          s7, a0, -1991
                  sll          t3, s1, t4
657:              sll          a5, tp, s1
658:              slt          s5, a4, t3
                  or           t2, gp, s4
660:              addi         s4, t2, -1878
                  auipc        s8, 803624
                  or           t6, t5, a7
                  slli         s4, t4, 16
                  slti         sp, a0, -1144
                  xori         sp, t3, -1091
                  and          a5, t1, a5
                  sltiu        t5, ra, -269
                  slli         zero, s9, 19
                  sll          s4, s4, a4
                  srl          s9, s3, a3
                  srli         s2, s3, 6
                  ori          s8, t4, 1199
                  bltu         t4, t5, 683f
                  bne          s8, ra, 685f
                  andi         s11, zero, -568
                  auipc        a0, 640926
                  srli         t2, s2, 22
                  add          s2, t3, s4
                  and          gp, t1, ra
                  nop
                  sll          s8, tp, s4
                  addi         a2, a1, 1963
683:              bge          s9, gp, 688f
                  srai         a0, a2, 30
685:              beq          s2, t3, 694f
                  srl          t2, a5, s5
                  xori         s8, t2, -843
688:              bne          a1, a3, 691f
                  xor          s8, t5, s7
                  sltiu        a0, s7, 1438
691:              auipc        a4, 537512
                  bge          zero, s4, 702f
                  sll          ra, s9, t6
694:              srai         a4, s4, 26
                  srl          gp, t0, zero
                  sub          tp, a1, a7
                  andi         t5, t5, 1060
                  slti         a7, a3, 1445
                  lui          s5, 173194
                  srl          t0, tp, s5
                  slli         t3, t6, 9
702:              slli         gp, s3, 18
                  blt          a7, s4, 711f
                  xori         a2, s5, -1554
                  bltu         a4, s6, 713f
                  slli         s0, a4, 25
                  slt          a0, s11, s2
                  or           sp, zero, t4
                  xori         s7, t2, 688
                  slt          a4, s3, s9
711:              auipc        sp, 42907
                  slli         a5, a6, 0
713:              addi         a0, a2, 1117
                  auipc        a6, 652967
                  add          sp, tp, a7
                  andi         t5, a6, -1083
                  xori         sp, t1, -32
                  nop
                  addi         t4, a3, 1161
                  slti         a1, s6, 732
                  srl          a2, s3, gp
                  xor          a7, zero, ra
                  bne          s6, tp, 740f
sub_2_13:         jal          ra, 7f
0:                jal          s4, 1f
1:                jal          t1, 14f
2:                jal          a0, 10f
3:                jal          ra, 2b
4:                jal          ra, 6f
5:                jal          ra, 16f
6:                jal          s7, 22f
7:                jal          ra, 21f
8:                jal          t1, 18f
9:                jal          t1, 17f
10:               jal          tp, 0b
11:               jal          ra, 20f
12:               jal          a7, 15f
13:               jal          ra, 11b
14:               jal          t1, 23f
15:               jal          ra, 9b
16:               jal          ra, 12b
17:               jal          t1, 13b
18:               jal          t1, 4b
19:               jal          t1, 8b
20:               jal          a5, 3b
21:               jal          ra, 19b
22:               jal          t1, 5b
23:               slti         t4, zero, 1694
                  slt          t1, s4, s2
                  sub          t2, zero, s11
                  bne          t2, s7, 741f
                  ori          a6, s2, 2016
                  slt          a1, a2, tp
                  slli         s7, t6, 8
                  beq          s7, zero, 741f
                  and          tp, t4, s1
                  bgeu         s1, s0, 742f
                  srai         t3, s5, 24
                  bltu         zero, s8, 751f
                  bge          s1, t1, 739f
                  srli         s2, a2, 26
                  nop
                  auipc        sp, 764083
739:              xor          zero, ra, t1
740:              andi         s7, t4, 1052
741:              auipc        s7, 502404
742:              sltiu        ra, s0, -1413
                  sll          s8, s7, a3
                  addi         a2, s5, -674
                  bgeu         s1, t2, 761f
                  srl          s2, a3, sp
                  srai         s0, t4, 17
                  bge          a4, t4, 753f
                  bltu         t4, s5, 765f
                  lui          zero, 114435
751:              sltu         zero, t4, t4
                  sll          a6, a1, a6
753:              slti         t4, s3, -1027
                  add          a0, s10, a3
                  bge          a3, s11, 765f
                  sltu         t1, s1, a4
                  sltu         s5, s7, a1
                  sltu         a1, s0, a1
                  andi         tp, ra, -40
                  sll          t1, t1, s3
761:              bltu         s4, t2, 774f
                  blt          s9, t3, 773f
                  sra          a4, tp, s11
                  slli         s1, a1, 7
765:              sra          s8, t6, s9
                  bne          s5, t5, 783f
                  nop
                  sub          zero, s4, s4
                  add          a1, s9, a7
                  sll          a6, s6, zero
                  beq          t3, t0, 783f
                  sll          gp, s7, t2
773:              bne          a3, t2, 780f
774:              srli         a3, t5, 12
                  blt          t2, t3, 780f
                  bne          gp, t6, 786f
                  xori         s0, a5, -983
                  xor          s0, s7, t3
                  slti         a5, s3, -772
780:              bge          s0, zero, 797f
                  bge          s9, a5, 797f
                  bltu         s5, ra, 792f
783:              bne          s8, a3, 787f
                  sra          a2, s10, t5
                  ori          a0, a6, 2010
786:              sub          t5, s7, a1
787:              srai         s9, s5, 20
                  sltiu        s9, t4, 1388
                  sra          t0, s8, t3
                  slti         zero, a1, 446
                  sltu         t5, zero, gp
792:              addi         a1, s2, -1561
                  bgeu         sp, s6, 798f
                  andi         a4, s9, 1297
                  add          s5, a6, a5
                  or           s0, s1, s7
797:              beq          s5, s9, 807f
798:              andi         a3, s8, 726
                  xori         t3, a4, 781
                  addi         t5, a5, -106
                  andi         t5, a3, -1305
                  bgeu         s4, s11, 819f
                  sra          s5, t0, s9
                  xor          a6, a3, a4
                  slti         s5, a4, -672
                  or           s2, s9, t4
807:              xor          a7, s0, t0
                  bne          s0, t5, 819f
                  nop
                  andi         a1, a6, 1035
                  bne          t2, a1, 828f
                  addi         a3, s2, 1537
                  add          s5, a0, sp
                  and          a6, t6, s3
                  sltu         s0, s0, a2
                  auipc        tp, 354896
                  bge          t3, s8, 827f
                  sltu         a1, t0, a4
819:              srli         a3, ra, 27
                  auipc        t2, 334070
                  and          s4, s4, s2
                  add          t6, s6, ra
                  auipc        t4, 978890
                  auipc        s5, 519082
                  andi         gp, tp, -1114
                  addi         s4, sp, 1876
827:              blt          t6, s5, 842f
828:              or           a7, t2, t6
                  blt          s0, a7, 832f
                  bltu         a1, a6, 844f
sub_2_19:         jal          ra, 12f
0:                jal          ra, 13f
1:                jal          ra, 11f
2:                jal          ra, 8f
3:                jal          ra, 9f
4:                jal          ra, 5f
5:                jal          sp, 1b
6:                jal          t1, 15f
7:                jal          ra, 0b
8:                jal          t1, 6b
9:                jal          ra, 2b
10:               jal          ra, 14f
11:               jal          a0, 10b
12:               jal          ra, 4b
13:               jal          t1, 3b
14:               jal          ra, 7b
15:               sltiu        s9, s0, -664
                  nop
832:              srl          t6, a3, t6
                  addi         s5, s7, 1815
                  blt          a3, a5, 838f
                  beq          zero, s3, 843f
                  xori         t1, s11, -1896
                  addi         t1, t6, -455
838:              lui          s8, 49296
                  slti         a6, a2, -1916
                  slt          a1, s11, zero
                  slt          t2, zero, s9
842:              blt          zero, s2, 855f
843:              andi         gp, s0, -701
844:              slli         s1, t3, 1
                  xor          a1, s7, s2
                  bne          a6, s6, 862f
                  xor          a5, s5, a3
                  slt          t0, t2, a0
                  sltu         t5, a3, s2
                  bne          s4, a0, 856f
                  srai         t3, a1, 7
                  slli         s9, s7, 29
                  sra          a2, zero, tp
                  xor          a3, tp, zero
855:              xor          t0, a2, s5
856:              or           s4, s8, t3
                  auipc        a0, 580061
                  bne          a2, a1, 862f
                  bge          ra, s1, 868f
                  xor          t5, s1, t4
                  sll          t1, t3, a5
862:              slti         sp, s8, 1338
                  beq          s2, a2, 864f
864:              add          t6, ra, a2
                  bgeu         s5, a4, 873f
                  srai         a3, a3, 19
                  bne          a5, zero, 875f
868:              srl          s1, a5, a5
                  srl          s2, t6, a2
                  andi         a1, s8, -811
                  or           s7, a5, s7
                  auipc        t2, 645873
873:              auipc        s8, 4876
                  auipc        s5, 156327
875:              sll          t5, t1, a0
                  srl          t1, t4, gp
                  add          t6, s8, ra
                  sll          t1, a7, a6
                  bltu         s3, t1, 896f
                  xor          tp, s6, t0
                  lui          a4, 939579
                  or           s5, t6, s11
                  sltiu        s4, s5, 1293
                  or           a4, a4, s11
                  srli         ra, t6, 31
                  xor          a5, t2, t2
                  bge          a2, a5, 901f
                  sll          t3, a0, t1
                  sltiu        s8, s3, -1047
                  sub          sp, a4, s5
                  auipc        a6, 419342
                  xori         tp, s9, 93
                  bgeu         s8, ra, 904f
                  ori          gp, ra, -2005
                  srai         s2, t1, 24
896:              srl          a7, zero, t1
                  sltiu        s11, s10, -70
                  and          a3, t1, t4
                  bge          s7, s0, 910f
                  beq          a4, s7, 910f
901:              sll          a6, s0, a0
                  xor          s11, a4, s4
                  slt          tp, a7, s7
904:              sltiu        zero, a6, 42
                  bltu         s0, s10, 918f
                  blt          a2, s3, 914f
                  and          s11, s0, s0
                  slli         s8, a0, 18
                  addi         t3, a5, 1276
910:              xori         t2, ra, 963
                  auipc        zero, 129444
                  beq          a6, t2, 921f
                  srl          s11, s9, a0
914:              beq          sp, t0, 918f
                  blt          t2, s0, 928f
                  srli         a5, t3, 3
                  sltiu        t6, a6, -40
918:              nop
                  slti         t0, a0, 413
                  srl          a3, s6, sp
921:              sub          a7, s10, ra
                  srl          s11, zero, s3
                  slti         s11, a4, 1259
                  xor          ra, t3, t3
                  add          t6, s5, a4
                  srl          a3, s7, tp
                  slt          a5, t4, s5
928:              and          s8, gp, s4
                  bltu         s6, zero, 937f
                  slt          a3, s4, t5
                  beq          s0, s7, 936f
                  blt          s3, s2, 942f
                  addi         s7, a3, -1332
                  xori         a7, t6, -959
                  bgeu         a6, a0, 945f
936:              xor          t6, s9, a2
937:              lui          a4, 430190
                  bltu         a0, s5, 941f
                  xori         tp, zero, -142
                  andi         t2, s4, 1937
941:              blt          s11, s8, 958f
942:              sub          t4, s10, s9
                  bltu         s2, ra, 947f
                  xor          t3, a0, s6
945:              nop
                  sll          s8, gp, t0
947:              srli         t6, a3, 0
                  srai         a3, t5, 21
                  slli         tp, t5, 6
                  srl          zero, s4, s10
                  xor          s4, s6, t1
                  nop
                  slti         a5, a1, -1308
                  bne          t1, zero, 959f
                  lui          t6, 397325
                  blt          a1, t0, 968f
                  slti         tp, s7, -1064
958:              auipc        s1, 219293
959:              sll          sp, s3, zero
                  srai         s4, a6, 31
                  sltiu        a6, t0, -1145
                  slti         gp, t3, 1966
                  blt          s10, s3, 967f
                  and          a5, s4, s2
                  slli         t4, s8, 20
                  srl          a7, tp, s11
967:              bne          s0, s2, 984f
968:              lui          s9, 733533
                  slt          sp, s4, a2
                  srli         tp, s0, 14
                  srl          gp, ra, ra
                  nop
                  slti         s2, s0, 1495
                  bgeu         sp, s9, 981f
                  xori         t0, a3, -258
                  addi         t2, t4, -1106
                  sll          s1, s6, s3
                  slli         s1, t0, 19
                  and          a6, s4, t0
                  or           sp, ra, t2
981:              ori          s2, s10, 1659
                  beq          s3, t4, 997f
                  xori         a5, s9, -1307
984:              xori         a6, s10, 1999
                  xor          s5, a1, a7
                  sltiu        t6, a0, -4
                  srl          tp, s11, gp
                  slt          a4, s1, gp
                  bgeu         s0, sp, 1005f
                  or           a7, a2, t1
                  sll          s5, t3, t4
                  sll          a1, zero, t0
                  andi         t0, s8, 1660
                  slti         a6, s3, 1163
                  xor          ra, a0, s11
                  blt          t5, a4, 1006f
997:              beq          s10, s0, 1013f
                  srai         a6, a5, 18
                  slli         s1, tp, 18
                  slti         s0, s11, -1486
                  addi         s11, gp, -12
                  xor          a1, s10, gp
                  xori         a0, a2, 837
                  sra          s1, gp, s9
1005:             addi         zero, a1, -32
1006:             slli         s5, a7, 25
                  bltu         s11, t2, 1015f
                  and          a0, a6, s8
                  xor          a7, a6, ra
                  bltu         sp, a4, 1011f
1011:             slt          s11, s7, a3
                  lui          sp, 183409
1013:             nop
                  sll          a5, s1, s5
1015:             bltu         t4, s2, 1032f
                  andi         s2, a5, -1518
                  slli         a1, a3, 31
                  bne          s11, a4, 1024f
                  sra          zero, a2, a6
                  bgeu         s2, s10, 1033f
                  sltiu        ra, s8, 803
                  xori         t3, s0, 1625
                  srli         s1, a6, 18
1024:             and          zero, t4, s10
                  bltu         s6, sp, 1033f
                  bne          t0, s6, 1033f
                  bltu         s1, t0, 1033f
                  ori          a7, s8, 1334
                  slti         s11, tp, -1479
                  or           s8, s2, a0
                  bne          s0, s3, 1033f
1032:             and          a5, a4, s5
1033:             xor          t0, ra, t2
                  lw           ra, 4(s6)
                  sltiu        a6, s11, -560
                  sltiu        a4, ra, 1187
                  auipc        t1, 816467
                  auipc        a6, 789820
                  addi         s6, s6, 32
                  and          t2, t6, s9
                  srli         a4, tp, 30
                  add          t2, a5, tp
                  sub          zero, t5, a1
                  ori          s2, s11, -574
                  nop
1499:             addi x5, x1, 0
1499:             jalr x5, x5, 0
sub_5:            bne          a1, t4, sub_5_stack_p
sub_5_stack_p:    addi         s6, s6, -56
                  srai         s4, s4, 21
                  srli         s1, gp, 23
                  sll          t0, a6, t3
                  addi         a4, zero, 960
                  sw           ra, 4(s6)
                  xor          tp, s3, s6
                  slti         s4, tp, -1095
                  srli         t3, s8, 23
sub_5_0:          jal          ra, 4f
0:                jal          ra, 5f
1:                jal          gp, 2f
2:                jal          ra, 7f
3:                jal          ra, 8f
4:                jal          ra, 14f
5:                jal          s2, 16f
6:                jal          ra, 1b
7:                jal          a7, 11f
8:                jal          ra, 17f
9:                jal          ra, 12f
10:               jal          ra, 3b
11:               jal          t1, 13f
12:               jal          ra, 10b
13:               jal          ra, 15f
14:               jal          ra, 6b
15:               jal          ra, 0b
16:               jal          ra, 9b
17:               xori         s9, s5, 668
sub_5_2:          jal          ra, 14f
0:                jal          s11, 17f
1:                jal          ra, 4f
2:                jal          a6, 7f
3:                jal          a7, 16f
4:                jal          t0, 3b
5:                jal          s2, 8f
6:                jal          ra, 9f
7:                jal          a4, 15f
8:                jal          ra, 2b
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          t1, 1b
12:               jal          tp, 11b
13:               jal          t1, 18f
14:               jal          ra, 12b
15:               jal          t1, 6b
16:               jal          ra, 10b
17:               jal          ra, 13b
18:               sub          a0, a3, a6
sub_5_5:          jal          ra, 6f
0:                jal          ra, 17f
1:                jal          a4, 5f
2:                jal          ra, 8f
3:                jal          ra, 14f
4:                jal          s9, 15f
5:                jal          gp, 0b
6:                jal          t1, 11f
7:                jal          t1, 2b
8:                jal          tp, 3b
9:                jal          ra, 16f
10:               jal          ra, 4b
11:               jal          a3, 13f
12:               jal          ra, 18f
13:               jal          t1, 9b
14:               jal          t1, 1b
15:               jal          ra, 12b
16:               jal          t1, 7b
17:               jal          ra, 10b
18:               nop
sub_5_1:          jal          ra, 12f
0:                jal          ra, 10f
1:                jal          ra, 5f
2:                jal          t3, 1b
3:                jal          t1, 9f
4:                jal          ra, 13f
5:                jal          ra, 16f
6:                jal          t3, 3b
7:                jal          a3, 2b
8:                jal          s0, 6b
9:                jal          sp, 11f
10:               jal          sp, 14f
11:               jal          ra, 4b
12:               jal          t0, 8b
13:               jal          ra, 15f
14:               jal          ra, 7b
15:               jal          ra, 0b
16:               sll          a5, s7, t3
sub_5_3:          jal          ra, 2f
0:                jal          ra, 3f
1:                jal          sp, 5f
2:                jal          ra, 8f
3:                jal          s0, 6f
4:                jal          t1, 14f
5:                jal          ra, 10f
6:                jal          ra, 19f
7:                jal          t1, 4b
8:                jal          ra, 12f
9:                jal          ra, 20f
10:               jal          ra, 17f
11:               jal          ra, 18f
12:               jal          ra, 15f
13:               jal          t1, 7b
14:               jal          ra, 16f
15:               jal          ra, 11b
16:               jal          t1, 1b
17:               jal          ra, 0b
18:               jal          ra, 13b
19:               jal          t2, 9b
20:               srai         tp, a0, 31
sub_5_4:          jal          ra, 8f
0:                jal          t4, 18f
1:                jal          ra, 14f
2:                jal          gp, 3f
3:                jal          t1, 15f
4:                jal          ra, 11f
5:                jal          s2, 13f
6:                jal          ra, 10f
7:                jal          t1, 1b
8:                jal          a7, 17f
9:                jal          t1, 7b
10:               jal          ra, 12f
11:               jal          s7, 9b
12:               jal          ra, 0b
13:               jal          s2, 4b
14:               jal          t0, 16f
15:               jal          t1, 5b
16:               jal          tp, 6b
17:               jal          ra, 2b
18:               srl          sp, t5, s2
                  auipc        s1, 706564
                  slli         a1, a3, 24
                  blt          a4, a5, 21f
                  or           zero, a2, s9
                  sll          s1, a7, t5
                  bltu         a1, s11, 20f
                  xor          t4, t2, a1
                  lui          t0, 458905
                  beq          s1, a2, 14f
                  and          s11, t1, t6
                  add          t1, gp, a4
                  bltu         gp, t4, 15f
                  auipc        s5, 941147
                  bne          a5, t4, 28f
14:               lui          s2, 361266
15:               slt          t0, a5, t1
                  slli         s2, gp, 23
                  xori         gp, t5, -944
                  srli         t2, t2, 19
                  addi         s1, s8, 1245
20:               addi         a1, s3, -1249
21:               slt          s4, a7, s9
                  addi         s9, s8, -502
                  sub          a0, s7, a7
                  ori          a7, s9, -1273
                  addi         s11, t3, 1134
                  ori          a2, t3, -1145
                  blt          t2, a3, 38f
28:               addi         zero, gp, -1485
                  srli         s5, t2, 22
                  bgeu         s9, t6, 47f
                  sub          a3, s4, s6
                  nop
                  ori          s2, s3, 705
                  ori          s5, t4, -169
                  slti         t0, t3, -796
                  add          tp, sp, s8
                  bltu         s5, a5, 48f
38:               add          a4, t1, s7
                  sub          t4, s4, s3
                  xori         a7, a6, -975
                  auipc        s4, 487864
                  slli         sp, s2, 18
                  xor          zero, ra, t0
                  auipc        s7, 536633
                  srli         t4, a6, 29
                  andi         t4, s4, 211
47:               nop
48:               xor          s11, s9, a4
                  sra          s9, a7, t2
                  xor          s2, a0, a7
                  addi         s0, s4, -508
                  lui          a3, 601026
                  lui          tp, 360231
                  and          t0, t0, s11
                  bltu         a6, gp, 71f
                  andi         a4, a6, -224
                  slli         t3, s11, 13
                  and          s11, s9, a4
                  sltu         s2, t2, a3
                  blt          gp, ra, 69f
                  sltiu        a7, s5, -1388
                  sll          t1, sp, a5
                  xor          tp, a3, s9
                  bne          s0, a0, 79f
                  or           t4, a1, s3
                  sra          a4, a5, t6
                  bgeu         t3, a0, 83f
                  sub          a6, t5, t6
69:               and          a0, s10, a6
                  nop
71:               sra          a2, t2, s11
                  bne          s5, a7, 88f
                  addi         t2, a5, 853
                  xori         t3, s11, -643
                  ori          s0, a1, 1662
                  or           a6, a7, a4
                  ori          t1, zero, -656
                  addi         s7, s7, 1567
79:               ori          s5, s4, -1471
                  bge          t6, s10, 97f
                  sltiu        a5, s4, 616
                  beq          t6, t0, 93f
83:               slti         s5, t3, 834
                  auipc        ra, 615712
                  sltiu        s8, s3, -584
                  srl          a0, s5, t1
                  xori         a2, t0, 1352
88:               blt          a1, s7, 89f
89:               or           a0, a7, sp
                  blt          s2, t0, 108f
                  sltiu        sp, s2, -1033
                  sra          t3, s0, s8
93:               beq          s8, a4, 109f
                  slli         gp, t4, 11
                  sltu         s9, a7, s6
                  slli         a6, s3, 4
97:               beq          a0, a3, 100f
                  xor          s9, a4, gp
                  bltu         tp, a2, 113f
100:              slti         s11, a2, 1308
                  bltu         a3, zero, 116f
                  ori          t0, t3, 2033
                  bne          t0, a2, 106f
                  nop
                  srli         s1, a4, 13
106:              slli         a4, t1, 29
                  srl          t1, zero, a2
108:              srai         ra, s1, 11
109:              bltu         a4, t3, 125f
                  or           a4, s3, s11
                  andi         gp, t5, -1311
                  slti         s11, zero, -1760
113:              add          a7, s4, s1
                  srl          s5, gp, ra
                  add          t5, a6, gp
116:              slt          gp, s0, t1
                  sra          s1, t4, s6
                  auipc        a7, 243308
                  srai         a5, a4, 22
                  bge          s8, zero, 130f
                  bltu         s3, a2, 134f
                  andi         zero, t2, -1982
                  and          t6, s10, s2
                  slt          a7, t3, a6
125:              bgeu         s8, a5, 134f
                  srli         a1, s3, 0
                  slli         s11, gp, 8
                  srai         a4, s0, 27
                  srli         a4, a1, 23
130:              bne          t5, a0, 147f
                  or           zero, a5, a5
                  andi         sp, s1, -185
                  slti         a2, tp, 228
134:              lui          t1, 37633
                  beq          s0, t3, 149f
                  bne          s1, a7, 139f
                  xor          s2, s8, gp
                  slti         t4, a4, 1550
139:              sra          zero, a4, s5
                  bgeu         s5, s7, 150f
                  sll          s7, t2, zero
                  beq          s5, s2, 158f
                  xor          ra, s8, s4
                  ori          s2, a4, 781
                  and          t0, a1, gp
                  or           a1, t1, s10
147:              auipc        s0, 676138
                  add          a3, t2, t0
149:              bge          ra, s8, 162f
150:              srli         s11, t5, 26
                  bne          gp, a4, 166f
                  srai         s7, ra, 17
                  xor          a7, a3, a6
                  bne          a2, a1, 171f
                  beq          s11, s11, 171f
                  sll          s2, s3, a2
                  bltu         s6, a7, 161f
158:              slli         s11, a5, 26
                  sll          a0, ra, zero
                  addi         a2, s0, 291
161:              bne          t5, s6, 177f
162:              srl          a0, t3, s7
                  srli         s9, s3, 10
                  sll          tp, t4, s7
                  xori         s0, t0, -1989
166:              bne          s1, s10, 172f
                  bge          a0, s0, 182f
                  xor          zero, a0, t2
                  sra          gp, t4, gp
                  or           s11, a1, t1
171:              slti         s1, tp, -282
172:              bne          t5, t4, 187f
                  bltu         a0, t4, 191f
                  slli         t0, sp, 18
                  or           a5, s7, a1
                  nop
177:              srai         sp, a4, 17
                  sltu         tp, a1, s11
                  srai         t0, s5, 22
                  srai         a3, a0, 28
                  bge          t4, ra, 192f
182:              blt          t2, s1, 193f
                  andi         zero, sp, -1515
                  srai         a7, s7, 11
                  lui          s0, 116327
                  andi         s2, a7, 703
187:              sub          t3, s10, s1
                  sra          a5, s7, t2
                  sub          s4, t0, a2
                  srai         a7, t6, 20
191:              blt          s10, t2, 194f
192:              andi         s5, a1, 1453
193:              sltu         s0, t1, zero
194:              srli         a0, s1, 23
                  srai         a2, a3, 14
                  or           s8, s8, a4
                  sll          gp, s1, tp
                  lui          a0, 513824
                  nop
                  blt          s4, t5, 203f
                  slti         a6, s8, -82
                  andi         s2, tp, -231
203:              slli         ra, s2, 2
                  lui          t2, 488544
                  or           a1, a3, t1
                  xor          ra, s11, zero
                  blt          s6, t2, 223f
                  lui          s9, 200834
                  ori          t5, a4, -893
                  and          s0, tp, t5
                  nop
                  blt          t2, t0, 222f
                  xori         a7, s9, 1872
                  sll          a2, t6, a5
                  beq          sp, a5, 229f
                  andi         tp, tp, -766
                  srai         t4, s10, 24
                  srl          s9, a6, gp
                  andi         s9, s8, 1491
                  bltu         t3, s11, 229f
                  and          a0, t2, s9
222:              srl          t6, a5, zero
223:              sra          a0, gp, t6
                  beq          s9, s3, 225f
225:              xor          s1, s7, s1
                  srli         a2, t1, 15
                  slli         s2, a0, 19
                  addi         ra, a3, 364
229:              srli         t5, t1, 3
                  andi         s2, a1, -1241
                  slti         a3, s10, 792
                  slli         t6, s7, 15
                  slli         a4, s10, 17
                  sub          s0, s0, ra
                  slt          s1, t6, s1
                  slt          s1, a1, a1
                  bne          a4, a7, 256f
                  sll          t6, a1, s2
                  sll          s1, gp, s5
                  andi         gp, t1, -1838
                  srai         t0, s3, 28
                  auipc        zero, 980746
                  or           s0, t1, s8
                  sub          gp, ra, t3
                  sltiu        t5, s10, 261
                  or           zero, a6, t4
                  srl          s7, t2, t6
                  or           a7, t2, s5
                  add          s4, ra, s11
                  srli         s5, t1, 27
                  srai         a5, s3, 26
                  srli         t1, s7, 6
                  slti         s0, a7, 415
                  slli         zero, t0, 12
                  blt          t2, s7, 265f
256:              sll          a7, t3, a3
                  bge          t1, t0, 274f
                  slt          a2, s10, s0
                  sll          a3, s7, t5
                  slt          a3, s6, t5
                  slli         tp, s7, 14
                  and          zero, a3, s3
                  bge          a7, s11, 266f
                  srai         s0, tp, 4
265:              sll          tp, s8, s4
266:              and          a3, s6, t4
                  bltu         s9, s11, 283f
                  and          t5, t3, s1
                  sltu         a5, t6, t0
                  xori         s8, a7, 1964
                  sltu         a5, s7, s5
                  sub          s7, zero, s6
                  lui          s2, 893634
274:              srli         s4, a6, 14
                  lui          t0, 56509
                  xor          s11, tp, s0
                  auipc        s1, 313818
                  bne          t1, s7, 289f
                  andi         tp, a6, -895
                  sltu         t4, t2, s11
                  addi         s5, s6, 1864
                  sub          a1, a3, s0
283:              srl          s9, a2, ra
                  slt          t6, tp, t2
                  slti         t5, a1, 749
                  beq          tp, t5, 303f
                  lui          t0, 78854
                  sltiu        s0, ra, 1122
289:              andi         a1, s10, -545
                  andi         t6, a0, -626
                  srli         t6, t1, 15
                  ori          s4, s1, 1427
                  beq          sp, s1, 302f
                  sub          a2, a3, gp
                  slli         s0, s11, 9
                  ori          t0, s1, 1110
                  or           t6, t2, tp
                  lui          gp, 108246
                  srli         t6, a2, 13
                  xori         s9, s3, 913
                  lui          sp, 647874
302:              sub          s11, s9, s2
303:              slti         s1, a3, -1969
                  add          a6, t3, a0
                  bge          t3, t4, 319f
                  auipc        s1, 732073
                  sra          s0, t6, gp
                  lui          s5, 17678
                  slli         a5, gp, 19
                  xor          t6, t0, t6
                  bltu         a2, t3, 319f
                  ori          t0, a6, 1054
                  or           sp, t0, s4
                  beq          s0, t1, 317f
                  sra          s2, tp, a3
                  or           t1, s8, s3
317:              sra          ra, t2, a2
                  andi         gp, s10, -1803
319:              slli         a2, a0, 29
                  add          s2, a5, tp
                  lw           ra, 4(s6)
                  srai         a4, ra, 25
                  or           t0, s3, t1
                  nop
                  addi         s6, s6, 56
                  or           a2, a0, a4
456:              addi x28, x1, 1
456:              jalr x28, x28, 0
sub_1:            beq          t5, a6, sub_1_stack_p
sub_1_stack_p:    addi         s6, s6, -28
                  sra          a6, t6, tp
                  sltu         s1, a5, t6
                  sw           ra, 4(s6)
                  sra          t0, a3, s6
                  sra          s8, s1, t3
                  slti         ra, s6, 1007
                  xor          a0, a3, ra
                  srl          s0, t1, s1
                  auipc        a1, 676191
                  slli         a4, t0, 8
                  addi         s11, s3, -1270
                  addi         a6, s9, -1409
                  nop
                  srl          s7, t0, t0
                  and          s7, s3, s2
                  xori         t5, ra, 1365
                  sra          a3, t2, a1
                  or           s11, t3, ra
                  srai         t2, s5, 23
                  sll          a1, t2, a4
                  slt          s2, t0, s3
                  srli         a3, s7, 15
                  sltu         s7, t5, s2
                  bne          t5, t3, 27f
                  add          gp, s3, a1
                  sll          s4, a3, a1
                  xori         a4, s11, 1428
                  beq          s4, gp, 27f
                  bltu         s11, gp, 27f
                  xor          a1, ra, a5
                  or           s11, t3, a5
27:               xori         t4, t5, -1373
                  srli         t4, a4, 16
                  sltu         t1, a1, a1
                  srai         s5, tp, 18
                  xori         a5, s10, -101
                  lw           ra, 4(s6)
                  srai         a7, a4, 14
                  sra          t1, s7, s2
                  addi         s6, s6, 28
                  or           a3, a1, gp
43:               addi x27, x1, 1
43:               jalr x27, x27, 0
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x19, x22, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x28, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x28, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x28, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x28, x23, ecall_handler
                  li x23, 0x1
                  beq x28, x23, instr_fault_handler
                  li x23, 0x5
                  beq x28, x23, load_fault_handler
                  li x23, 0x7
                  beq x28, x23, store_fault_handler
                  li x23, 0xc
                  beq x28, x23, pt_fault_handler
                  li x23, 0xd
                  beq x28, x23, pt_fault_handler
                  li x23, 0xf
                  beq x28, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

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
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x22, x19, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x19, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x19, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x22, x19, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x22, x19, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x22, x19, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
