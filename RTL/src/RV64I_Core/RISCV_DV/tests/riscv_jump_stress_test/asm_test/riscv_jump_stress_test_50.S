.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x9
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0xb823ecec
                  li x8, 0xfd366a7e
                  li x9, 0xc
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0xf3445705
                  li x13, 0x7b737858
                  li x14, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x50ac5f1
                  li x20, 0x3cbfd14f
                  li x21, 0x80000000
                  li x22, 0x5
                  li x23, 0x7a1a0f03
                  li x24, 0x44b2f699
                  li x25, 0x0
                  li x26, 0xfb7977b4
                  li x27, 0x4
                  li x28, 0x9
                  li x29, 0xf7909889
                  li x30, 0xf
                  li x31, 0x7
                  la x15, user_stack_end
main:             jal          t1, 2f
0:                jal          t1, 4f
1:                jal          tp, 13f
2:                jal          s10, 3f
3:                jal          ra, 1b
4:                jal          tp, 16f
5:                jal          ra, 18f
6:                jal          gp, 11f
7:                jal          a2, 8f
8:                jal          a2, 10f
9:                jal          ra, 19f
10:               jal          a0, 17f
11:               jal          ra, 9b
12:               jal          s6, 15f
13:               jal          t1, 7b
14:               jal          a4, 12b
15:               jal          t1, 5b
16:               jal          t1, 6b
17:               jal          t1, 14b
18:               jal          ra, 0b
19:               jal          ra, 20f
20:               sub          s1, s3, s9
main_17:          jal          t1, 11f
0:                jal          t1, 6f
1:                jal          t1, 14f
2:                jal          ra, 5f
3:                jal          s9, 4f
4:                jal          tp, 0b
5:                jal          gp, 3b
6:                jal          a4, 9f
7:                jal          ra, 8f
8:                jal          s9, 10f
9:                jal          ra, 12f
10:               jal          ra, 13f
11:               jal          t1, 7b
12:               jal          ra, 1b
13:               jal          t6, 2b
14:               sltu         s3, s1, a4
main_11:          jal          t1, 18f
0:                jal          ra, 22f
1:                jal          ra, 20f
2:                jal          t1, 8f
3:                jal          s10, 15f
4:                jal          a0, 5f
5:                jal          s8, 13f
6:                jal          s9, 10f
7:                jal          ra, 19f
8:                jal          t2, 1b
9:                jal          ra, 7b
10:               jal          ra, 14f
11:               jal          t1, 17f
12:               jal          ra, 0b
13:               jal          s0, 6b
14:               jal          ra, 16f
15:               jal          a4, 4b
16:               jal          ra, 21f
17:               jal          ra, 2b
18:               jal          ra, 3b
19:               jal          s8, 11b
20:               jal          ra, 12b
21:               jal          s4, 9b
22:               srai         s1, s10, 8
main_9:           jal          t1, 11f
0:                jal          t0, 21f
1:                jal          ra, 8f
2:                jal          ra, 28f
3:                jal          s9, 5f
4:                jal          ra, 17f
5:                jal          ra, 22f
6:                jal          s2, 15f
7:                jal          ra, 6b
8:                jal          ra, 26f
9:                jal          ra, 7b
10:               jal          ra, 25f
11:               jal          s7, 3b
12:               jal          t1, 9b
13:               jal          ra, 4b
14:               jal          t1, 29f
15:               jal          s0, 16f
16:               jal          ra, 14b
17:               jal          a4, 1b
18:               jal          gp, 2b
19:               jal          ra, 0b
20:               jal          ra, 10b
21:               jal          ra, 24f
22:               jal          t1, 19b
23:               jal          t1, 27f
24:               jal          ra, 12b
25:               jal          t1, 18b
26:               jal          ra, 23b
27:               jal          ra, 20b
28:               jal          ra, 30f
29:               jal          ra, 13b
30:               sltiu        s8, t0, -1312
main_6:           jal          t1, 4f
0:                jal          s9, 2f
1:                jal          t1, 14f
2:                jal          ra, 12f
3:                jal          t0, 15f
4:                jal          ra, 1b
5:                jal          t1, 24f
6:                jal          ra, 3b
7:                jal          ra, 0b
8:                jal          ra, 17f
9:                jal          t5, 10f
10:               jal          s8, 11f
11:               jal          t1, 19f
12:               jal          t6, 8b
13:               jal          a0, 23f
14:               jal          tp, 13b
15:               jal          ra, 16f
16:               jal          ra, 7b
17:               jal          s0, 26f
18:               jal          ra, 6b
19:               jal          ra, 25f
20:               jal          t1, 9b
21:               jal          t1, 5b
22:               jal          gp, 20b
23:               jal          t1, 22b
24:               jal          ra, 18b
25:               jal          s7, 21b
26:               slt          a2, a4, sp
main_10:          jal          t1, 8f
0:                jal          ra, 9f
1:                jal          ra, 6f
2:                jal          ra, 3f
3:                jal          ra, 25f
4:                jal          ra, 23f
5:                jal          ra, 21f
6:                jal          t1, 18f
7:                jal          t1, 12f
8:                jal          t6, 7b
9:                jal          ra, 1b
10:               jal          ra, 24f
11:               jal          tp, 17f
12:               jal          t1, 11b
13:               jal          ra, 5b
14:               jal          s0, 15f
15:               jal          t0, 22f
16:               jal          ra, 13b
17:               jal          ra, 19f
18:               jal          ra, 14b
19:               jal          ra, 16b
20:               jal          s1, 0b
21:               jal          t1, 20b
22:               jal          t1, 10b
23:               jal          ra, 2b
24:               jal          t0, 4b
25:               auipc        gp, 654041
main_8:           jal          t1, 6f
0:                jal          t1, 11f
1:                jal          ra, 0b
2:                jal          a0, 21f
3:                jal          t1, 13f
4:                jal          ra, 8f
5:                jal          t1, 2b
6:                jal          ra, 10f
7:                jal          ra, 20f
8:                jal          t1, 16f
9:                jal          ra, 23f
10:               jal          ra, 18f
11:               jal          ra, 15f
12:               jal          t1, 4b
13:               jal          s5, 1b
14:               jal          s1, 22f
15:               jal          s10, 9b
16:               jal          t1, 5b
17:               jal          ra, 12b
18:               jal          t1, 7b
19:               jal          a4, 17b
20:               jal          t1, 19b
21:               jal          ra, 14b
22:               jal          ra, 3b
23:               add          s0, a3, s5
main_4:           jal          t1, 14f
0:                jal          ra, 19f
1:                jal          ra, 5f
2:                jal          ra, 18f
3:                jal          ra, 2b
4:                jal          ra, 10f
5:                jal          t1, 16f
6:                jal          gp, 17f
7:                jal          ra, 25f
8:                jal          ra, 29f
9:                jal          ra, 7b
10:               jal          ra, 3b
11:               jal          ra, 6b
12:               jal          ra, 0b
13:               jal          ra, 11b
14:               jal          t1, 12b
15:               jal          ra, 23f
16:               jal          t0, 28f
17:               jal          t1, 22f
18:               jal          t1, 9b
19:               jal          tp, 26f
20:               jal          ra, 24f
21:               jal          ra, 4b
22:               jal          ra, 27f
23:               jal          tp, 20b
24:               jal          a0, 21b
25:               jal          t1, 1b
26:               jal          ra, 13b
27:               jal          sp, 15b
28:               jal          ra, 8b
29:               sltu         a1, ra, t1
main_2:           jal          t1, 12f
0:                jal          t0, 14f
1:                jal          ra, 2f
2:                jal          ra, 9f
3:                jal          t0, 7f
4:                jal          s6, 8f
5:                jal          t1, 11f
6:                jal          ra, 3b
7:                jal          ra, 4b
8:                jal          ra, 13f
9:                jal          ra, 18f
10:               jal          ra, 16f
11:               jal          t1, 20f
12:               jal          s5, 19f
13:               jal          ra, 10b
14:               jal          ra, 15f
15:               jal          ra, 17f
16:               jal          ra, 1b
17:               jal          a3, 5b
18:               jal          sp, 0b
19:               jal          ra, 6b
20:               srli         t6, t2, 16
main_16:          jal          t1, 10f
0:                jal          t1, 8f
1:                jal          ra, 6f
2:                jal          s2, 4f
3:                jal          ra, 7f
4:                jal          tp, 11f
5:                jal          sp, 2b
6:                jal          t0, 5b
7:                jal          s3, 1b
8:                jal          tp, 3b
9:                jal          ra, 0b
10:               jal          ra, 9b
11:               sub          t3, tp, a5
main_14:          jal          t1, 3f
0:                jal          s2, 8f
1:                jal          s11, 22f
2:                jal          ra, 6f
3:                jal          t4, 9f
4:                jal          ra, 20f
5:                jal          t5, 23f
6:                jal          ra, 14f
7:                jal          ra, 16f
8:                jal          ra, 12f
9:                jal          ra, 21f
10:               jal          ra, 24f
11:               jal          t2, 13f
12:               jal          ra, 7b
13:               jal          s8, 18f
14:               jal          t1, 11b
15:               jal          ra, 19f
16:               jal          ra, 5b
17:               jal          t1, 0b
18:               jal          ra, 4b
19:               jal          t0, 10b
20:               jal          s1, 1b
21:               jal          ra, 17b
22:               jal          ra, 15b
23:               jal          ra, 2b
24:               and          s4, s5, s2
main_1:           jal          t1, 5f
0:                jal          ra, 12f
1:                jal          ra, 16f
2:                jal          ra, 9f
3:                jal          t1, 7f
4:                jal          ra, 0b
5:                jal          ra, 14f
6:                jal          s0, 2b
7:                jal          ra, 8f
8:                jal          ra, 11f
9:                jal          ra, 10f
10:               jal          ra, 3b
11:               jal          t5, 15f
12:               jal          ra, 1b
13:               jal          ra, 4b
14:               jal          t1, 6b
15:               jal          tp, 13b
16:               sltiu        a0, a5, 833
main_15:          jal          t1, 14f
0:                jal          s11, 17f
1:                jal          ra, 18f
2:                jal          ra, 8f
3:                jal          ra, 22f
4:                jal          s1, 9f
5:                jal          t5, 4b
6:                jal          sp, 20f
7:                jal          t1, 11f
8:                jal          t1, 3b
9:                jal          t1, 7b
10:               jal          ra, 16f
11:               jal          ra, 1b
12:               jal          ra, 0b
13:               jal          s11, 12b
14:               jal          t0, 6b
15:               jal          ra, 2b
16:               jal          ra, 13b
17:               jal          a4, 15b
18:               jal          t0, 19f
19:               jal          ra, 21f
20:               jal          ra, 5b
21:               jal          sp, 10b
22:               lui          t5, 876213
main_5:           jal          t1, 6f
0:                jal          t1, 23f
1:                jal          t4, 11f
2:                jal          tp, 5f
3:                jal          ra, 4f
4:                jal          ra, 18f
5:                jal          ra, 16f
6:                jal          ra, 13f
7:                jal          s9, 15f
8:                jal          ra, 10f
9:                jal          ra, 2b
10:               jal          t1, 9b
11:               jal          ra, 12f
12:               jal          ra, 8b
13:               jal          s3, 17f
14:               jal          s10, 20f
15:               jal          ra, 0b
16:               jal          ra, 21f
17:               jal          sp, 1b
18:               jal          ra, 22f
19:               jal          tp, 7b
20:               jal          ra, 24f
21:               jal          t2, 3b
22:               jal          s0, 19b
23:               jal          ra, 14b
24:               lui          s1, 932305
main_13:          jal          t1, 3f
0:                jal          ra, 13f
1:                jal          s0, 2f
2:                jal          ra, 22f
3:                jal          t2, 19f
4:                jal          t2, 23f
5:                jal          a2, 18f
6:                jal          t1, 11f
7:                jal          a3, 4b
8:                jal          s9, 21f
9:                jal          t6, 8b
10:               jal          sp, 9b
11:               jal          s0, 16f
12:               jal          ra, 20f
13:               jal          ra, 12b
14:               jal          t1, 10b
15:               jal          ra, 14b
16:               jal          t4, 0b
17:               jal          sp, 15b
18:               jal          t1, 7b
19:               jal          s1, 6b
20:               jal          ra, 1b
21:               jal          a0, 5b
22:               jal          ra, 17b
23:               nop
                  addi         s5, t6, -42
                  slli         t1, s8, 30
                  xor          s5, t3, a2
                  srl          s5, a0, gp
                  beq          t1, s0, 5f
5:                sub          t5, gp, tp
                  xori         s5, a7, -1658
                  sra          s2, s3, a6
                  sra          tp, tp, s9
                  blt          a7, s7, 18f
                  slli         sp, s7, 26
                  bltu         s0, t5, 19f
                  add          s2, t0, t6
                  slt          a0, s0, t1
                  auipc        s10, 442899
                  slt          s6, s5, s5
                  sltu         zero, s7, a6
                  add          t0, s11, t4
18:               slti         sp, a4, -959
19:               bgeu         t1, ra, 21f
                  auipc        s0, 556027
21:               srli         t3, a5, 8
                  ori          s2, s0, 1600
                  sll          s4, a1, sp
                  sra          s11, t6, t0
                  slti         s1, zero, -1437
                  andi         t1, s4, 494
                  srli         t5, tp, 10
                  sub          s10, t1, s2
                  bne          a1, s1, 42f
                  sub          s3, s9, s10
                  sltiu        a4, t5, -969
                  bne          a3, s9, 48f
                  beq          s3, a5, 51f
                  ori          t1, a4, -1910
                  bge          a5, t1, 50f
                  bltu         s2, t0, 48f
                  andi         s11, s5, 851
                  addi         zero, s3, -213
                  addi         s8, s3, -1270
                  sltiu        s10, t3, -1976
                  slti         t6, tp, 2044
42:               sra          t5, t1, s3
                  xori         t3, t1, 983
                  nop
                  blt          t4, s10, 65f
                  srli         gp, a5, 12
                  and          t1, a0, a7
48:               srli         t6, s8, 10
                  sll          s2, s1, gp
50:               blt          a6, t5, 68f
51:               srl          sp, t2, a5
                  auipc        t6, 276195
                  bge          ra, tp, 70f
                  bge          a6, s3, 63f
                  bge          s4, t4, 67f
                  slli         t4, a5, 9
                  andi         s6, t1, -709
                  xori         s1, a0, 1636
                  beq          tp, t3, 70f
                  nop
                  slli         s3, s4, 23
                  srli         gp, sp, 0
63:               blt          sp, ra, 71f
                  and          ra, zero, a6
65:               blt          s11, a7, 69f
                  srl          s0, s5, a2
67:               slti         a4, s8, 162
68:               ori          s6, s5, 150
69:               slli         s1, s10, 30
70:               bltu         s8, s3, 72f
71:               srli         s4, s0, 7
72:               beq          s6, s5, 86f
                  add          ra, a0, t0
                  add          t4, s8, sp
                  sub          t5, s11, a2
                  sub          ra, zero, t0
                  ori          s7, zero, 675
                  srli         t3, a5, 31
                  xor          s4, s10, s11
                  bgeu         a3, t4, 94f
                  slli         a2, s2, 21
                  sltu         s11, gp, s2
                  andi         t5, s3, -1350
                  slti         s5, t4, -23
                  slt          s6, s7, s6
86:               slli         s0, t0, 31
                  ori          t1, s5, 169
                  sltiu        t0, t4, 180
                  bltu         a0, a6, 98f
                  ori          s1, tp, 73
                  srai         t2, t3, 25
                  bltu         gp, a3, 110f
                  srl          zero, s10, t4
94:               and          t1, s4, t0
                  auipc        s2, 171756
                  bne          ra, t1, 100f
                  or           a2, a7, s1
98:               blt          t3, t3, 114f
                  ori          t5, tp, -1006
100:              sltu         s8, a5, a1
                  xori         s10, s2, 702
                  and          t4, tp, a4
                  xori         ra, zero, -972
                  bne          ra, tp, 108f
                  srl          ra, s5, s5
                  or           s4, s7, a1
                  and          tp, sp, s9
108:              slli         a1, s4, 25
                  or           t5, s1, s1
110:              ori          a2, t1, 478
                  sltiu        s4, tp, 1475
                  ori          sp, t5, -1383
                  and          s1, s9, s0
114:              addi         t0, s6, -620
                  xori         zero, sp, -92
                  slt          ra, s7, s3
                  sltiu        sp, a7, 1727
                  slti         s1, a0, 1261
                  blt          s0, a4, 123f
                  andi         t1, a0, -120
                  slt          t2, s0, s6
                  or           t2, a3, a4
123:              beq          ra, a3, 128f
                  srli         s5, t5, 23
                  sltiu        t5, t0, -1374
                  sltu         s1, s9, a2
                  bne          t5, t4, 138f
128:              slli         t0, s10, 15
                  srl          a2, tp, a4
                  ori          a1, s6, 1631
                  bltu         s1, a7, 133f
                  slli         gp, a4, 8
133:              add          t5, zero, a3
                  auipc        s3, 539830
                  auipc        s1, 653613
                  xori         a3, a4, -938
                  sub          sp, tp, sp
138:              ori          t2, s9, -538
                  srai         s7, t3, 1
                  slti         t0, a6, -1267
                  sltu         a2, a0, s7
                  or           t4, t6, gp
                  sub          t6, t4, s10
                  bltu         a2, s1, 146f
main_18:          jal          t1, 8f
0:                jal          s6, 9f
1:                jal          ra, 2f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          s10, 1b
5:                jal          ra, 0b
6:                jal          ra, 10f
7:                jal          ra, 14f
8:                jal          ra, 3b
9:                jal          ra, 6b
10:               jal          t1, 11f
11:               jal          s2, 4b
12:               jal          t1, 13f
13:               jal          ra, 5b
14:               slt          s7, s4, s7
                  nop
146:              xori         t3, s5, -108
                  bltu         s1, s0, 155f
                  blt          ra, s6, 157f
                  sra          ra, s5, s5
                  slli         s10, s1, 15
                  beq          s9, t1, 155f
                  sltu         t2, s6, a2
                  blt          s8, t2, 166f
                  addi         a2, a1, 1417
155:              auipc        sp, 334714
                  sub          s9, a1, s4
157:              ori          s10, zero, 1335
                  srli         a2, ra, 4
                  sub          a3, t2, t2
                  or           sp, s9, s11
                  lui          t2, 314876
                  sll          s5, s10, s11
                  lui          t1, 631780
                  srli         tp, tp, 31
                  lui          s3, 71472
166:              nop
                  bne          s7, s1, 169f
                  andi         s1, s9, 435
169:              addi         t5, s4, -145
                  sub          s5, a2, s7
                  addi         t5, a7, -1910
                  andi         a4, gp, 938
                  auipc        gp, 80880
                  bgeu         a3, s10, 176f
                  lui          a0, 414370
176:              srl          s0, gp, a3
                  andi         s10, t0, -879
                  srli         t4, t4, 2
                  sra          t3, gp, s4
                  sltiu        s0, a5, -1884
                  sub          a0, a6, a1
                  add          gp, tp, sp
                  slt          a3, t4, zero
                  auipc        t4, 705979
                  xori         zero, tp, -254
                  srai         a4, s9, 3
                  auipc        s5, 751236
                  andi         a2, t5, -487
                  blt          s11, s7, 203f
                  sub          s10, tp, s6
                  beq          sp, a0, 203f
                  bne          ra, a7, 210f
                  xor          a2, s1, a3
                  lui          a3, 45285
                  addi         sp, s2, -1599
                  beq          s1, a6, 207f
                  bgeu         t5, t1, 201f
                  xor          a4, s0, sp
                  or           sp, sp, sp
                  sltiu        s3, a2, 1007
201:              sra          a0, a2, t2
                  addi         a4, s8, -1511
203:              slti         a0, gp, 354
                  add          gp, a4, t5
                  srl          ra, t5, sp
                  slt          s8, t0, t5
207:              lui          t3, 134712
                  srli         s7, s6, 10
                  bne          gp, a7, 229f
210:              or           t0, s1, t2
                  blt          s1, s5, 213f
                  auipc        zero, 207398
213:              or           s3, a2, t4
                  beq          s5, t2, 231f
                  and          s11, t4, a1
                  srl          s0, s2, tp
                  bge          t4, t4, 226f
                  srl          a4, s1, zero
                  andi         t3, s5, 425
                  srli         t5, t0, 8
                  lui          a3, 500927
                  sub          t3, a2, s9
                  nop
                  and          s2, s0, a4
                  and          s3, tp, s0
226:              blt          t4, a6, 231f
                  sltiu        s11, sp, 1843
                  bgeu         sp, s7, 240f
229:              sra          a3, t2, s3
                  sra          a0, s7, zero
231:              slti         t1, s10, -1830
                  or           a1, s7, s1
                  bne          s7, t5, 241f
                  sltiu        s7, s1, -1701
                  nop
                  bne          t3, t6, 238f
                  bltu         s5, ra, 248f
238:              xor          s1, t6, s8
                  add          s10, s10, t4
240:              sltu         s5, s2, s4
241:              sltiu        s11, s6, 1472
                  sra          a2, t0, t0
                  and          s2, t0, a7
                  srl          s6, s9, zero
                  bltu         a1, s3, 249f
                  blt          t5, s10, 262f
                  and          t6, sp, a0
248:              andi         s0, a6, -464
249:              bne          s3, t3, 265f
                  bge          a7, a1, 264f
                  bne          s7, t3, 260f
                  nop
                  sltu         t0, a3, t6
                  andi         s9, a5, -1968
                  bltu         a6, s9, 256f
main_19:          jal          t1, 4f
0:                jal          t1, 20f
1:                jal          t1, 8f
2:                jal          ra, 14f
3:                jal          ra, 23f
4:                jal          ra, 17f
5:                jal          s7, 10f
6:                jal          ra, 15f
7:                jal          ra, 18f
8:                jal          gp, 21f
9:                jal          ra, 24f
10:               jal          t4, 9b
11:               jal          t6, 25f
12:               jal          ra, 11b
13:               jal          t1, 12b
14:               jal          ra, 16f
15:               jal          t6, 19f
16:               jal          ra, 6b
17:               jal          t1, 1b
18:               jal          ra, 3b
19:               jal          ra, 13b
20:               jal          ra, 22f
21:               jal          ra, 0b
22:               jal          t4, 5b
23:               jal          ra, 2b
24:               jal          ra, 7b
25:               xori         s9, t4, 22
256:              sltiu        ra, s7, -1664
                  bne          s3, s6, 272f
                  auipc        t6, 842221
                  bne          t1, s3, 263f
260:              add          s2, gp, s4
                  beq          a7, t0, 279f
262:              auipc        s5, 58133
263:              xor          s3, t1, a6
264:              bne          s4, s4, 282f
265:              sra          a2, t3, s7
                  slt          s5, t3, s1
                  slti         t0, a6, -1433
                  bgeu         a7, s5, 288f
                  xor          s4, a5, s4
                  srl          a2, s8, s10
                  beq          a3, s10, 282f
272:              addi         a3, s3, 1043
                  addi         t1, s10, 1673
                  slt          t1, s2, s7
                  sltu         sp, s0, gp
                  bge          t3, t1, 281f
                  sub          a0, gp, a3
                  sra          s7, a2, tp
279:              andi         s1, s4, -168
                  srli         a4, t5, 31
281:              slt          t3, s6, tp
282:              sub          s6, t3, zero
                  bgeu         t1, t2, 299f
                  slti         sp, a2, 758
                  srl          t4, tp, s6
                  sll          s5, gp, t4
                  slt          t2, s11, t2
288:              addi         s11, ra, -222
                  lui          s0, 510456
                  lui          t5, 660697
                  nop
                  lui          gp, 505102
                  and          s5, a4, s9
                  slt          s3, a2, s3
                  sll          t4, a7, sp
                  auipc        s8, 515968
                  add          a1, s0, a0
                  add          s10, a1, t2
299:              ori          t5, zero, 599
                  sltiu        a0, s2, 501
                  srai         s8, t4, 26
                  beq          s0, a6, 318f
                  sltu         s10, a1, a5
                  srli         s2, a1, 4
                  xori         a4, s4, -1167
                  sra          a0, gp, ra
                  sll          sp, s6, a7
                  addi         s11, a5, 1858
                  sra          s3, gp, gp
                  slti         s7, t3, -270
                  and          s10, tp, t1
                  xori         s9, s2, -1869
                  xor          s8, a7, sp
                  or           s8, t6, t5
                  sltiu        t5, s4, 1036
                  sll          s1, t6, ra
                  bge          sp, s11, 321f
318:              bltu         zero, t5, 326f
                  or           t4, a2, s2
                  addi         zero, s6, 1932
321:              add          t1, t5, s0
                  and          s4, s9, t2
                  ori          a2, s0, 486
                  add          t6, s0, a3
                  slli         t1, a7, 18
326:              bltu         s5, t1, 338f
                  and          s0, s9, a4
                  xori         t5, s3, -326
                  slli         s5, s11, 28
                  srl          a0, t4, t1
                  xori         a4, a6, 780
                  bgeu         t4, t2, 345f
                  sra          t2, s8, s5
                  sra          s11, t6, a0
                  slti         a4, s10, -2002
                  srli         s10, a1, 2
                  srli         s9, gp, 26
338:              ori          s3, a0, 1560
                  slli         s7, s3, 25
                  sub          a0, ra, t1
                  sll          t1, ra, s10
                  nop
                  auipc        a2, 225694
                  bltu         a4, t1, 362f
345:              sll          t4, s11, gp
                  ori          s4, s7, -486
                  beq          t4, a3, 351f
                  or           t3, a0, t5
                  srai         s4, a6, 22
                  bne          s2, sp, 367f
351:              bne          s5, a4, 360f
                  lui          ra, 284438
main_3:           jal          t1, 11f
0:                jal          ra, 4f
1:                jal          ra, 5f
2:                jal          t1, 20f
3:                jal          ra, 17f
4:                jal          ra, 6f
5:                jal          ra, 18f
6:                jal          sp, 13f
7:                jal          ra, 9f
8:                jal          s6, 2b
9:                jal          tp, 14f
10:               jal          sp, 3b
11:               jal          ra, 0b
12:               jal          t1, 15f
13:               jal          t1, 19f
14:               jal          ra, 12b
15:               jal          t1, 16f
16:               jal          s7, 10b
17:               jal          tp, 1b
18:               jal          ra, 8b
19:               jal          a4, 7b
20:               jal          s7, 21f
21:               andi         s8, t0, 307
                  sltiu        t4, s8, -1662
                  slti         t0, s11, 1125
                  xor          s2, t6, a1
                  addi         t1, a4, -1898
                  add          t1, zero, ra
                  bge          s2, t2, 360f
                  bge          a5, a1, 377f
360:              beq          s7, s7, 364f
                  sltiu        s11, t4, -1680
362:              beq          s10, s4, 371f
                  srai         a1, s3, 15
364:              xori         s6, t4, -115
                  slt          a3, s5, tp
                  lui          zero, 684656
367:              sll          s9, a6, a2
                  slti         gp, a3, 106
                  sll          t4, s5, a4
                  sub          s10, s7, s4
371:              xori         zero, a3, -702
                  xori         t6, zero, -914
                  lui          s7, 159831
                  bne          tp, s11, 376f
                  lui          a1, 1014806
376:              lui          s6, 552373
377:              andi         a4, s3, 325
                  and          s0, a4, s9
                  lui          a3, 484434
                  slli         t6, a0, 10
                  beq          a3, zero, 382f
382:              slt          s11, s1, gp
                  blt          s3, a3, 391f
                  add          s4, t2, a7
                  sub          s8, s11, s4
                  bne          s5, s9, 388f
                  auipc        a0, 235538
388:              slti         tp, sp, 742
                  sltu         t6, t2, t1
                  bne          gp, t0, 404f
391:              sltu         s0, a0, s8
                  srl          a2, s4, a6
                  auipc        s8, 623162
                  add          s9, tp, s5
                  slti         sp, gp, -390
                  slt          s10, s0, t5
                  addi         a1, t3, -25
                  slti         gp, a7, 375
                  sra          s6, s2, a6
                  lui          a4, 284065
                  auipc        a1, 508631
                  auipc        t6, 122696
                  sub          a3, t5, t5
                  la           s4, sub_1
                  xor          t2, sp, s10
                  addi         s4, s4, -733
                  auipc        tp, 421859
                  sltiu        t0, a5, -1891
                  sub          s10, t3, a1
                  andi         t2, t2, 1588
                  sub          t6, a5, a0
                  and          a4, gp, t4
main_j2:          jalr         t1, s4, 733 #jump main -> sub_1
                  sub          a2, t3, t0
                  sub          s8, s8, a2
404:              ori          a2, s11, 962
                  slt          t5, t6, s10
                  srli         s4, s3, 24
                  xor          s3, t3, a3
                  sra          ra, s6, s10
                  sra          t2, s2, s9
                  blt          s8, s7, 421f
                  auipc        s11, 935989
                  slt          s9, a0, a5
                  auipc        t5, 153638
                  bltu         s5, sp, 432f
                  slt          tp, tp, a4
                  ori          sp, s8, 1779
                  nop
                  bgeu         s3, a5, 420f
                  slti         ra, s2, -913
420:              bgeu         s4, s5, 429f
421:              sra          s2, t4, a2
                  beq          s4, s2, 437f
                  sra          s1, s11, a1
                  xor          a0, t3, a4
                  xori         t0, s2, 568
                  sltu         tp, ra, s2
                  srai         s0, ra, 9
                  sll          a4, t6, s3
429:              bgeu         s11, s1, 443f
                  addi         s4, s2, 1024
                  sltu         a4, a7, t4
432:              slt          s4, s9, t6
                  andi         t0, s6, 1289
                  sltiu        t6, t2, -615
                  bltu         t2, t2, 447f
                  sltu         s2, a0, t2
437:              srl          a3, s1, a7
                  lui          s11, 345143
                  sll          s7, t2, s1
                  srai         ra, tp, 21
                  xori         t3, tp, 602
                  srl          t2, s10, s8
443:              slt          t4, s11, t3
                  blt          t6, ra, 448f
                  bge          a6, s3, 463f
                  srli         s0, gp, 10
447:              xor          a4, t0, zero
main_12:          jal          t1, 5f
0:                jal          s8, 8f
1:                jal          ra, 26f
2:                jal          t1, 13f
3:                jal          a0, 11f
4:                jal          t1, 18f
5:                jal          s0, 1b
6:                jal          sp, 17f
7:                jal          t1, 27f
8:                jal          sp, 10f
9:                jal          s10, 19f
10:               jal          ra, 23f
11:               jal          t1, 9b
12:               jal          gp, 21f
13:               jal          ra, 22f
14:               jal          s7, 15f
15:               jal          s4, 24f
16:               jal          ra, 7b
17:               jal          ra, 20f
18:               jal          t1, 25f
19:               jal          ra, 16b
20:               jal          ra, 14b
21:               jal          t2, 3b
22:               jal          t1, 6b
23:               jal          t1, 2b
24:               jal          t0, 4b
25:               jal          t1, 12b
26:               jal          ra, 0b
27:               sltiu        t1, a6, -1323
448:              sll          sp, sp, s2
                  nop
                  bgeu         gp, s8, 461f
main_7:           jal          t1, 12f
0:                jal          ra, 2f
1:                jal          ra, 3f
2:                jal          a0, 4f
3:                jal          ra, 8f
4:                jal          t1, 10f
5:                jal          s3, 6f
6:                jal          s2, 7f
7:                jal          tp, 9f
8:                jal          t1, 5b
9:                jal          ra, 0b
10:               jal          s9, 16f
11:               jal          t1, 13f
12:               jal          ra, 11b
13:               jal          a2, 14f
14:               jal          s0, 15f
15:               jal          a0, 1b
16:               ori          s3, t3, 338
                  sltiu        s8, s4, 868
                  nop
                  blt          a3, s0, 457f
                  sltiu        zero, s4, 178
                  bgeu         sp, a1, 464f
                  ori          a1, a1, 2025
457:              andi         s0, s0, 459
                  slti         sp, s1, 1890
                  sltu         t1, t5, zero
                  lui          s5, 331842
461:              srai         t0, s10, 13
                  add          s1, t6, sp
463:              bltu         s7, s1, 474f
464:              srli         gp, t5, 12
                  ori          gp, t0, -1027
                  sub          s1, a0, a1
                  bne          sp, s11, 476f
                  lui          a4, 967848
                  andi         a0, a0, -898
                  slli         a0, s11, 24
                  xori         t4, s8, 276
                  slli         s7, a0, 18
                  sll          s5, s6, s5
474:              xor          s1, s0, s0
                  bgeu         gp, a1, 489f
476:              slt          t3, t4, zero
                  bltu         s9, t2, 479f
                  srai         s7, s8, 24
479:              lui          gp, 340817
                  beq          tp, a4, 484f
                  sra          sp, a6, s0
                  xor          s1, t1, a2
                  ori          s5, a4, 1862
484:              slt          t3, t3, a2
                  sltu         t3, t2, t4
                  srl          s10, a3, s10
                  bne          a3, s3, 500f
                  lui          a4, 158587
                  la           a2, sub_1
                  slt          s11, a4, t3
                  lui          s7, 501987
                  addi         a2, a2, -346
                  bne          gp, s3, main_j1 #branch to jump instr
                  addi         s0, tp, -1967
                  slti         s1, gp, -102
                  auipc        s0, 777257
main_j1:          jalr         t1, a2, 347 #jump main -> sub_1
489:              slli         s11, a1, 26
                  sltu         a1, a3, gp
                  lui          t4, 551531
                  sltiu        a2, t5, -1980
                  sra          s9, tp, gp
                  add          zero, a7, s8
                  slti         s5, t5, -216
                  andi         t5, s7, -933
                  slt          a1, s3, t3
                  slti         s4, t4, 1515
                  and          t3, s11, a3
500:              sll          zero, sp, sp
                  auipc        s1, 157594
                  xori         a1, t2, 1160
                  bne          s7, ra, 504f
504:              srai         s1, t5, 26
                  auipc        t5, 478990
                  sltu         a1, t0, a2
                  xor          s7, s3, s11
                  bltu         s5, a3, 510f
                  andi         a3, s0, 375
510:              slli         a0, t2, 31
                  slt          s6, a7, s4
                  bne          a4, a5, 528f
                  bne          t1, a7, 528f
                  srai         sp, s7, 9
                  nop
                  xor          tp, zero, a7
                  or           t3, s8, a5
                  and          s3, zero, t0
                  add          tp, a1, t2
                  sll          s7, s3, ra
                  andi         tp, a0, 487
                  add          s8, s10, s8
                  bne          s3, s2, 525f
                  sltu         a3, s2, t6
525:              andi         tp, sp, -1704
                  xori         zero, s11, 1214
                  beq          a7, t5, 543f
528:              bne          zero, s0, 532f
                  sll          tp, a3, s10
                  or           s0, s8, s3
                  and          t3, zero, a7
532:              sll          t6, s4, s11
                  beq          s1, a3, 550f
                  blt          gp, t1, 552f
                  srli         t0, tp, 18
                  beq          t2, a3, 540f
                  slli         s0, a2, 26
                  sltiu        s3, s9, 1764
                  lui          s4, 793854
540:              sra          t1, a6, a1
                  auipc        t6, 537337
                  or           s7, t4, s7
543:              xor          t5, s6, sp
                  auipc        t1, 421309
                  sub          s9, a1, a6
                  srli         a1, t2, 8
                  bne          s11, a6, 561f
                  bltu         sp, ra, 560f
                  auipc        a4, 3738
550:              bge          sp, s4, 559f
                  bne          sp, a4, 556f
552:              slti         tp, t6, 1706
                  srli         s11, s10, 18
                  xori         sp, a3, -1282
                  bltu         ra, t3, 573f
556:              xor          a4, s4, s4
                  or           s2, sp, s4
                  slt          s8, sp, t5
559:              sltiu        s11, t3, -1086
560:              ori          s1, t3, 1599
561:              sll          t4, zero, s0
                  ori          t0, t6, -848
                  nop
                  bgeu         t2, s2, 576f
                  srl          s3, sp, s6
                  xori         s3, tp, 1349
                  srli         s8, s9, 6
                  beq          t3, a2, 576f
                  bgeu         a1, a2, 589f
                  sub          s0, tp, s11
                  srli         s9, t5, 7
                  sltu         t1, s8, s1
573:              add          t4, s9, s7
                  andi         s7, s6, -1900
                  bgeu         s2, s7, 583f
576:              bge          a5, t3, 578f
                  lui          a3, 204834
578:              bltu         s10, s5, 587f
                  slt          a0, s3, s11
                  and          s10, t6, tp
                  bne          a4, zero, 599f
                  add          a4, t6, s11
583:              sll          gp, s10, tp
                  srli         s1, t4, 7
                  slli         t3, s10, 7
                  xori         s4, t3, -1745
587:              sll          a3, s4, ra
                  bne          a3, a6, 599f
589:              slti         sp, a6, -473
                  and          s4, zero, sp
                  andi         t0, a6, 1932
                  lui          t3, 156025
                  and          a3, a6, t5
                  slti         s8, t2, -1141
                  srl          t4, s11, t4
                  addi         ra, s2, 1198
                  slti         a1, t0, -1214
                  addi         t0, t6, 801
599:              sltiu        t4, s10, 1976
                  srai         s10, t1, 27
                  sll          t1, sp, a7
                  ori          s7, t3, -1773
                  sra          s7, a4, a2
                  slli         s10, a6, 26
                  sra          t0, a6, a6
                  bgeu         s4, s5, 626f
                  addi         tp, s0, 306
                  xor          t0, tp, a0
                  add          ra, a4, s6
                  sltu         t6, s6, t4
                  or           gp, sp, ra
                  bltu         s11, s3, 626f
                  nop
                  or           s1, a0, a0
                  slti         s9, sp, 1349
                  andi         s4, s5, -1933
                  beq          gp, s6, 635f
                  slt          s6, s11, a4
                  ori          s7, a5, 288
                  and          s0, s1, t2
                  addi         a3, s3, -53
                  beq          sp, ra, 638f
                  sll          t6, s2, t3
                  lui          s1, 919829
                  add          sp, t5, a7
626:              sub          s5, s4, t5
                  bne          a4, t0, 636f
                  lui          sp, 512862
                  srl          s10, a7, t2
                  slti         t2, s0, -559
                  and          t5, t1, s11
                  beq          t0, zero, 644f
                  xori         s9, s3, -494
                  beq          s4, t1, 638f
635:              xori         a0, t1, -836
636:              bne          t4, tp, 641f
                  slli         t2, s8, 25
638:              xori         tp, s10, 1700
                  auipc        t6, 887430
                  ori          t3, a4, 519
641:              sltiu        t2, gp, -863
                  bne          s6, t5, 646f
                  srai         s8, t2, 24
644:              or           s0, t4, t6
                  addi         s11, s7, -1021
646:              sub          a0, t0, s9
                  xori         s4, t3, -704
                  bgeu         s11, s6, 662f
                  lui          t2, 883139
                  xori         sp, a0, 889
                  slt          tp, s10, t5
                  sltiu        s10, a0, -738
                  bgeu         t4, s11, 657f
                  sll          s11, s11, a3
                  addi         t2, s1, 126
                  or           s1, t4, t1
657:              blt          s8, t4, 658f
658:              beq          a5, s10, 666f
                  slt          s7, s0, s9
                  beq          zero, a3, 664f
                  xor          s1, a6, t0
662:              xori         s3, s1, 48
                  sltiu        s9, a6, -85
664:              srl          s9, s10, a1
                  blt          sp, s2, 674f
666:              sll          sp, a6, s10
                  bgeu         s6, a5, 680f
                  sltiu        t1, a0, -678
                  ori          s7, s3, -829
                  bne          gp, t2, 672f
                  bge          s8, a3, 687f
672:              sltu         t3, s5, s5
                  ori          t2, a4, 958
674:              sltu         s1, t2, s3
                  addi         gp, a0, 1679
                  lui          s1, 792285
                  sltu         a2, s9, a6
                  ori          t6, t2, 128
                  xori         t0, s4, -1304
680:              bltu         s3, s4, 698f
                  slti         sp, a3, -1694
                  bne          s2, s2, 694f
                  srai         s5, s10, 1
                  andi         a3, s4, -388
                  slti         s9, t1, 1518
                  bgeu         zero, s5, 688f
687:              bltu         s6, t5, 695f
688:              auipc        a3, 894610
                  sra          t4, s9, tp
                  sltu         t0, sp, a1
                  ori          a1, gp, -959
                  bge          sp, a3, 707f
                  bltu         t2, s2, 704f
694:              andi         s9, a3, 1085
695:              sltiu        t2, s8, 1799
                  bltu         s8, s10, 698f
                  lui          s1, 710477
698:              slt          a3, s6, t3
                  bgeu         s4, s3, 701f
                  sltu         a1, t3, ra
701:              sltiu        s9, t5, 1304
                  or           gp, t4, a2
                  sltiu        a4, ra, 867
704:              andi         zero, a4, 1113
                  bgeu         a0, a0, 722f
                  sra          a3, s4, a4
707:              srl          t2, t4, t6
                  xori         t0, zero, 309
                  sltiu        s5, a1, 1403
                  sltu         a3, s11, t0
                  blt          t3, a1, 729f
                  and          t0, t0, a0
                  srli         s0, a1, 18
                  bgeu         a0, t0, 718f
                  srli         a0, s4, 23
                  addi         t1, gp, -1768
                  addi         t6, t4, 603
718:              bltu         a7, s6, 732f
                  auipc        zero, 1005998
                  bltu         s8, s3, 724f
                  sub          a2, gp, s4
722:              bltu         s8, gp, 738f
                  srai         s3, a1, 10
724:              blt          sp, zero, 733f
                  addi         t5, t3, 482
                  xor          s2, a7, a6
                  sra          s3, t0, t5
                  auipc        gp, 803504
729:              beq          s1, t4, 731f
                  bne          a1, s4, 743f
731:              srl          s1, zero, ra
732:              andi         s10, a3, -498
733:              blt          s11, a1, 741f
                  sub          s2, s10, t3
                  nop
                  xor          gp, a2, t5
                  add          s0, a7, s5
738:              sub          s9, gp, a3
                  ori          a1, s1, 1040
                  sub          a0, tp, s4
741:              slt          t0, a5, s7
                  add          s2, t0, t1
743:              sltiu        t6, a5, -1266
                  lui          s8, 1040370
                  ori          s2, a5, 338
                  beq          zero, tp, 750f
                  bgeu         a7, t1, 765f
                  bltu         s5, a5, 763f
                  slt          t0, t2, s9
750:              auipc        s8, 501187
                  slti         s3, t4, -1929
                  bltu         a7, t5, 761f
                  bltu         s1, s1, 771f
                  slli         t3, a6, 24
                  and          s0, s6, gp
                  auipc        a0, 316004
                  andi         t5, gp, -64
                  andi         a4, a3, 1516
                  sltu         s6, s5, zero
                  bne          s8, s9, 772f
761:              xor          s3, t1, t3
                  sltiu        s5, zero, 552
763:              sra          ra, s6, t3
                  srl          s0, s1, t4
765:              bltu         t2, t6, 767f
                  beq          t1, t2, 778f
767:              nop
                  sra          s8, t2, s0
                  srai         sp, t4, 2
                  xor          zero, tp, s3
771:              bltu         a3, gp, 779f
772:              xori         t3, s10, 428
                  nop
                  xor          s6, s4, a6
                  auipc        s2, 654583
                  or           a4, s5, s0
                  bge          s9, s3, 782f
778:              andi         a4, t3, -636
779:              bne          zero, s4, 788f
                  bge          a4, a2, 791f
                  srli         zero, s8, 16
782:              slli         t5, a3, 26
                  lui          s0, 982257
                  bne          a1, s5, 801f
                  ori          t1, t0, -1399
                  srai         s3, t6, 6
                  sra          t6, s7, sp
788:              bltu         ra, s7, 799f
                  add          sp, a7, tp
                  srai         t3, a7, 28
791:              blt          s5, s0, 811f
                  srl          s7, s6, s8
                  srl          s4, s3, s8
                  sltu         a4, s1, s6
                  slti         t2, t6, -1024
                  beq          s0, a6, 798f
                  ori          s8, a2, -1904
798:              srli         s7, a7, 27
799:              and          t2, s7, a4
                  sub          s7, s7, tp
801:              srl          t6, a3, s6
                  add          s9, a7, a4
                  sll          s2, a4, s7
                  xori         t2, s3, -1748
                  add          t0, a6, t6
                  andi         s7, a5, -1172
                  beq          s6, t1, 811f
                  bgeu         t0, ra, 809f
809:              bge          a6, zero, 811f
                  sll          t6, a7, s3
811:              add          sp, t0, sp
                  srai         t0, s0, 4
                  auipc        t5, 180510
                  lui          s9, 830619
                  beq          s4, tp, 829f
                  bltu         t1, a3, 832f
                  beq          t2, a4, 834f
                  blt          ra, t1, 836f
                  srai         t5, ra, 27
                  srai         s4, t1, 18
                  sltiu        s1, s1, -1442
                  addi         s10, s7, 460
                  slti         t0, a0, -1799
                  sltiu        zero, tp, 1659
                  add          s3, gp, t2
                  slt          t0, t1, t3
                  sub          t4, t6, t0
                  bge          a3, a4, 832f
829:              bne          t4, sp, 840f
                  blt          gp, ra, 846f
                  auipc        t4, 826997
832:              bge          s2, s8, 845f
                  and          t5, a5, a4
834:              srl          s6, sp, zero
                  srai         s0, t2, 28
836:              srai         a4, sp, 30
                  ori          zero, s3, 1113
                  srai         t3, s3, 26
                  srl          a4, s0, t2
840:              srai         a0, t3, 28
                  sltiu        s7, t2, 517
                  add          s8, t2, a7
                  bge          s10, a5, 845f
                  blt          t6, s8, 856f
845:              sub          s9, t0, t3
846:              srai         a3, t3, 5
                  bge          t3, s9, 855f
                  beq          t2, s1, 857f
                  bltu         t3, a0, 865f
                  and          ra, t3, t1
                  sll          t3, a6, t6
                  andi         s2, sp, 1611
                  auipc        ra, 222938
                  bltu         s0, gp, 863f
855:              slt          zero, t5, s5
856:              sub          s10, s9, a4
857:              slli         a4, ra, 5
                  andi         s11, sp, -1903
                  ori          a1, ra, -1274
                  sra          s9, s3, tp
                  bltu         a5, t2, 866f
                  srl          s0, gp, s8
863:              slli         t2, t5, 26
                  xori         t0, ra, 1593
865:              sltiu        a0, a0, 1023
866:              sltu         t0, s4, zero
                  ori          s2, t5, -188
                  srli         s8, s1, 22
                  bltu         t5, gp, 871f
                  slli         t4, s3, 2
871:              srl          t3, tp, t3
                  blt          s5, tp, 876f
                  ori          a4, a6, 1042
                  sltu         s0, t4, sp
                  bge          s4, s4, 886f
876:              ori          s9, s4, -1749
                  bne          a2, t3, 886f
                  xor          t2, gp, s3
                  xori         a1, t6, -108
                  addi         s9, s10, -1194
                  xor          s0, s1, s1
                  bgeu         a0, s9, 896f
                  srli         s9, s3, 14
                  bne          s0, a3, 902f
                  srli         a0, a6, 18
886:              slt          ra, s7, tp
                  nop
                  slti         a1, a0, 970
                  srli         s2, s2, 2
                  srli         s1, s11, 3
                  beq          ra, s6, 911f
                  sub          tp, ra, s7
                  sltu         sp, t6, s2
                  bgeu         ra, s4, 908f
                  srai         t3, a6, 2
896:              bgeu         t3, a7, 897f
897:              srli         zero, tp, 3
                  nop
                  bltu         a5, t0, 901f
                  addi         t4, s7, 753
901:              and          s5, a6, t2
902:              auipc        t4, 475794
                  sub          s7, zero, s5
                  sll          s0, s4, s8
                  lui          t6, 183877
                  bgeu         t4, s11, 924f
                  bltu         t4, s8, 922f
908:              xor          s7, s4, s5
                  ori          t3, a3, -1807
                  xor          sp, ra, s6
911:              xori         s4, s2, -290
                  or           zero, s10, zero
                  blt          s5, a5, 921f
                  srli         s10, s10, 4
                  srai         zero, s2, 8
                  addi         s0, s2, 72
                  xor          s3, s9, s5
                  bgeu         sp, s5, 920f
                  bne          t1, a6, 931f
920:              bne          ra, a3, 924f
921:              auipc        s8, 666988
922:              sltiu        t3, zero, 1072
                  add          s6, s7, s5
924:              sub          ra, ra, s2
                  auipc        t6, 986526
                  addi         s7, s10, 1085
                  add          s0, a1, zero
                  blt          s3, gp, 932f
                  sltiu        a0, s3, 1822
                  auipc        a0, 142048
931:              lui          sp, 232558
932:              andi         s7, t3, -1161
                  bltu         a7, sp, 949f
                  xor          sp, s4, a0
                  beq          a2, s3, 939f
                  sra          t4, s11, s5
                  nop
                  ori          a3, s8, -1404
939:              sltu         sp, s10, a7
                  xor          t2, s9, t3
                  srl          s8, a5, t5
                  slti         a2, a3, -558
                  beq          t0, s7, 951f
                  srli         s1, s9, 29
                  sltu         t2, s11, s0
                  nop
                  srl          t0, s7, ra
                  nop
949:              srli         gp, sp, 30
                  andi         t5, s8, 1832
951:              slti         s0, a1, -993
                  bgeu         s2, s7, 956f
                  bltu         s10, a4, 967f
                  or           t3, t0, a0
                  nop
956:              sub          t3, sp, t0
                  sltiu        a2, ra, 932
                  srli         a1, s10, 2
                  sltiu        zero, a6, -1723
                  bge          t6, a4, 962f
                  andi         t0, a4, -1473
962:              srli         s4, t2, 4
                  sra          t3, ra, s11
                  or           s3, a3, s10
                  xor          s5, s1, t4
                  and          a1, s0, s10
967:              bgeu         sp, sp, 975f
                  sltu         s0, a2, t6
                  bge          s0, a6, 971f
                  ori          ra, s9, -715
971:              sll          zero, tp, s3
                  bne          t4, a7, 981f
                  or           t6, s7, s5
                  beq          s8, s0, 983f
975:              bgeu         s3, a6, 976f
976:              srai         s8, t4, 16
                  srl          s6, s3, s10
                  bne          s9, a7, 992f
                  bltu         t0, s8, 981f
                  srai         t0, s1, 26
981:              bltu         s1, s7, 999f
                  slti         s11, a1, -249
983:              slt          a1, t3, gp
                  slt          zero, s5, a2
                  addi         tp, a1, 465
                  blt          a7, sp, 1001f
                  sra          a4, t3, t2
                  slti         s0, a7, 328
                  xori         a2, gp, 1870
                  srl          s9, tp, tp
                  or           s0, s2, s7
992:              andi         s1, gp, -1318
                  slt          t5, t5, a2
                  blt          a6, sp, 998f
                  add          a3, sp, s7
                  bgeu         s6, a3, 1000f
                  or           a3, s5, s3
998:              sra          t3, s9, s2
999:              beq          t1, t6, 1016f
1000:             bltu         t1, s4, 1018f
1001:             sltiu        zero, s9, 1510
                  blt          s7, a4, 1013f
                  srl          s8, a2, s1
                  srai         s5, a2, 8
                  srli         a4, a5, 5
                  or           t5, s10, s6
                  beq          a7, a4, 1016f
                  beq          a3, s3, 1019f
                  auipc        s9, 614066
                  sltiu        a4, t6, 696
                  xor          gp, gp, a2
                  or           a4, a6, a7
1013:             srl          s9, s8, a0
                  andi         gp, tp, -721
                  bne          a2, t5, 1019f
1016:             slt          zero, s4, t2
                  auipc        sp, 760121
1018:             xori         t5, t6, -978
1019:             slli         s1, t6, 24
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            beq          sp, a4, sub_3_stack_p
                  sub          s0, sp, s11
                  srai         zero, t0, 0
sub_3_stack_p:    addi         a5, a5, -48
                  and          s11, ra, s10
                  sw           t1, 4(a5)
                  srai         t6, a3, 25
sub_3_0:          jal          t1, 13f
0:                jal          ra, 20f
1:                jal          ra, 15f
2:                jal          ra, 4f
3:                jal          ra, 2b
4:                jal          s0, 8f
5:                jal          s1, 17f
6:                jal          t3, 12f
7:                jal          ra, 14f
8:                jal          ra, 7b
9:                jal          s1, 5b
10:               jal          t1, 3b
11:               jal          t1, 1b
12:               jal          ra, 10b
13:               jal          ra, 18f
14:               jal          ra, 19f
15:               jal          ra, 16f
16:               jal          ra, 9b
17:               jal          ra, 0b
18:               jal          a2, 6b
19:               jal          ra, 11b
20:               auipc        s10, 280236
                  and          t5, s1, s8
                  xor          a4, a0, t4
                  beq          ra, ra, 22f
                  sltiu        t2, t4, -429
                  andi         s1, s10, -399
                  add          t4, a6, t5
                  lui          s9, 345273
                  slli         gp, t4, 28
                  addi         t1, s5, -1437
                  sll          ra, t4, gp
                  add          s1, a2, s2
                  slti         s11, t5, 2005
                  slt          s6, t4, s5
                  and          t2, s3, a7
                  slti         t3, zero, 1434
                  blt          ra, t4, 32f
                  nop
                  nop
                  bge          s1, s2, 19f
19:               ori          s10, a1, 1347
                  sll          t3, s3, a1
                  sltu         t5, s7, s7
22:               bltu         s10, t4, 30f
                  blt          a3, s11, 27f
                  sub          t1, s7, a6
                  sra          tp, a2, t2
                  srai         s4, s4, 3
27:               srl          gp, a2, s4
                  auipc        s4, 749144
                  addi         tp, s7, 674
30:               bgeu         t0, a2, 43f
                  srl          s5, a1, zero
32:               sra          tp, t4, s11
                  and          s0, t6, t2
                  beq          s5, t1, 38f
                  sltiu        t2, a6, -335
                  xor          s7, a0, a6
                  bge          t1, zero, 53f
38:               sub          tp, a7, s9
                  beq          s8, a0, 53f
                  bgeu         a3, a2, 53f
                  slt          a1, tp, a6
                  sra          a4, a0, s11
43:               slli         s1, t5, 21
                  sltu         s3, a2, a3
                  and          a0, s11, s0
                  bne          t4, a1, 53f
                  xor          ra, sp, gp
                  bge          s3, a7, 53f
                  slt          gp, t6, s7
                  nop
                  sltiu        s4, a1, 19
                  sltu         s8, a1, tp
53:               nop
                  sub          sp, gp, s10
                  srl          s6, t2, s0
                  sra          s9, gp, ra
                  lw           t1, 4(a5)
                  addi         a5, a5, 48
                  addi         t5, t0, -1411
                  sltiu        s5, s1, 993
                  auipc        s0, 406269
                  nop
                  sltu         s5, s2, s8
                  andi         t4, zero, -285
                  sub          sp, s5, s7
95:               addi x8, x6, 0
95:               jalr x8, x8, 0
sub_4:            sltu         t2, s6, a0
                  sltiu        a1, a4, 2015
                  or           s4, s11, s3
                  bne          s0, t1, sub_4_stack_p
sub_4_stack_p:    addi         a5, a5, -20
                  addi         s10, a3, -248
                  andi         s11, s7, -502
                  sw           t1, 4(a5)
                  slti         a0, t4, 1546
                  lui          s3, 82044
                  sltu         t0, s10, s6
                  srai         s7, s11, 30
                  sll          gp, s7, a1
                  la           s0, sub_5
                  andi         a2, s8, 393
                  srai         s1, a3, 21
                  addi         s0, s0, -501
                  or           s11, t0, t3
                  lui          t5, 827566
                  ori          t0, t5, -807
                  auipc        s1, 835354
                  srai         s9, a7, 16
sub_4_j8:         jalr         t1, s0, 502 #jump sub_4 -> sub_5
                  slli         t0, s10, 11
                  sub          s4, t6, s2
                  auipc        s0, 340649
                  sll          s9, t5, gp
                  slti         s7, a5, -1625
sub_4_j9:         jal          t1, sub_5 #jump sub_4 -> sub_5
sub_4_0:          jal          t1, 19f
0:                jal          ra, 20f
1:                jal          ra, 21f
2:                jal          ra, 14f
3:                jal          t1, 6f
4:                jal          t1, 9f
5:                jal          ra, 23f
6:                jal          ra, 1b
7:                jal          ra, 0b
8:                jal          ra, 26f
9:                jal          t1, 16f
10:               jal          ra, 8b
11:               jal          tp, 3b
12:               jal          ra, 15f
13:               jal          ra, 2b
14:               jal          gp, 25f
15:               jal          ra, 10b
16:               jal          t4, 27f
17:               jal          ra, 22f
18:               jal          ra, 7b
19:               jal          ra, 18b
20:               jal          ra, 11b
21:               jal          ra, 24f
22:               jal          t1, 5b
23:               jal          ra, 13b
24:               jal          s3, 17b
25:               jal          t3, 12b
26:               jal          s3, 4b
27:               xori         a4, s1, -1383
                  sub          t1, s0, a2
                  sll          t0, t1, s3
                  sltu         t2, t1, s3
                  ori          sp, t5, -1500
                  beq          s4, s6, 22f
                  addi         s10, a5, -981
                  srl          s9, s3, s9
                  nop
                  bltu         t6, ra, 25f
                  sub          a2, a5, a0
                  and          s11, s7, s10
                  add          sp, a0, s4
                  slli         a0, t3, 16
                  srl          sp, s7, a5
                  slt          t0, a2, a0
                  sra          t2, s7, t6
                  bge          a1, t5, 20f
                  slt          s4, gp, gp
                  beq          s10, s3, 22f
                  add          gp, a7, s5
20:               addi         s2, zero, 1761
                  sll          ra, a1, s8
22:               auipc        gp, 44713
                  and          t6, s5, t1
                  bltu         s8, s3, 25f
25:               and          s2, a6, s4
                  andi         tp, t2, 878
                  blt          t3, tp, 30f
                  xori         tp, a0, 1805
                  andi         t0, s11, 1178
30:               sub          s3, s0, t6
                  srl          a4, t6, t3
                  xor          zero, s2, s11
                  srl          s2, a2, t2
                  ori          a0, t6, -2040
                  srli         s7, sp, 15
                  lui          s7, 509260
                  xori         t2, a6, 714
                  sltiu        tp, a0, 1986
                  xor          zero, s4, s9
                  bltu         t4, t4, 49f
                  and          a2, t4, s4
                  blt          t0, t2, 43f
43:               beq          s1, s7, 58f
                  and          a3, s5, zero
                  bltu         s1, ra, 64f
                  sltu         t3, s11, t2
                  slt          t5, a4, s3
                  blt          s2, s4, 49f
49:               bgeu         s11, s11, 68f
                  nop
                  auipc        a1, 630454
                  addi         ra, t1, -908
                  bge          s5, s6, 67f
                  sltu         tp, a2, s7
                  or           a1, s5, s8
                  andi         s7, a7, -589
                  sub          s8, a7, gp
58:               xori         s7, s7, 1243
                  sltu         s7, s3, a1
                  blt          s6, s6, 69f
                  bne          t0, tp, 80f
                  xor          t4, s7, s0
                  slti         s1, t5, -1692
64:               slli         t0, t1, 26
                  sub          a2, s11, s9
                  sltu         t2, t1, t3
67:               sra          t6, a3, t3
68:               sltu         s7, a4, a6
69:               nop
                  xor          s4, t5, t2
                  sll          s7, sp, a2
                  nop
                  sra          s4, t1, s10
                  slt          t2, s11, sp
                  bge          t2, a4, 88f
                  srai         s4, s6, 10
                  addi         sp, gp, -1426
                  slti         s10, t5, -1825
                  and          s10, a7, zero
80:               bgeu         t1, tp, 81f
81:               slti         t1, t4, -666
                  lui          a4, 193179
                  bgeu         s8, t3, 93f
                  bne          a1, s7, 94f
                  xori         t6, s6, 1440
                  auipc        s4, 219079
                  beq          s0, sp, 92f
88:               slti         tp, s1, 102
                  sub          s2, t1, a4
                  and          t3, s3, t0
                  xori         s1, gp, -1378
92:               ori          a2, s7, 1122
93:               srl          sp, t0, sp
94:               addi         s8, gp, 1366
                  sltu         tp, s4, a6
                  and          t3, s1, s5
                  sra          a3, s6, t4
                  and          zero, t0, s1
                  lw           t1, 4(a5)
                  or           tp, s1, s10
                  srl          t3, s10, t1
                  nop
                  addi         a5, a5, 20
                  xor          s7, t3, ra
                  nop
164:              addi x24, x6, 1
164:              jalr x24, x24, 0
sub_2:            addi         s1, ra, 771
                  sll          ra, sp, s2
                  and          t6, a4, t5
                  add          s8, zero, s7
                  srai         a3, s0, 1
                  addi         a5, a5, -28
                  ori          a1, zero, 521
                  sw           t1, 4(a5)
                  addi         s7, a2, -521
                  or           a0, t6, t6
                  or           a2, a3, t2
                  bne          zero, t4, sub_2_j6 #branch to jump instr
                  sltu         s8, s8, s0
                  sub          s3, s3, s9
                  srl          s6, a5, a7
                  ori          s10, s9, -1963
sub_2_j6:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  la           a0, sub_3
                  or           s9, a0, s3
                  or           t0, a3, s1
                  srli         t6, a0, 31
                  addi         a0, a0, 399
                  blt          s7, s2, sub_2_j7 #branch to jump instr
                  srli         a2, s1, 18
                  sltiu        a3, ra, 166
sub_2_j7:         jalr         t1, a0, -398 #jump sub_2 -> sub_3
                  slt          t2, s6, a4
                  xor          tp, ra, tp
                  xori         t2, t4, -1470
                  and          a1, a2, s4
                  xor          t0, s10, t4
                  ori          t0, a4, -1233
                  bltu         s3, zero, 7f
7:                beq          sp, sp, 8f
8:                srl          s0, t6, ra
                  addi         ra, s0, -1113
                  bne          s5, t6, 14f
                  ori          s8, t0, 404
                  xor          a3, a5, s1
                  slti         t6, a0, 919
14:               auipc        a3, 1002715
                  sltiu        sp, s9, 1364
                  auipc        s0, 814552
                  blt          tp, s9, 30f
                  ori          t1, s7, -2034
                  nop
                  slli         a3, t0, 1
                  slti         s2, s0, -65
                  bltu         t5, tp, sub_2_j5 #branch to jump instr
                  srl          t6, s3, s0
                  sra          s5, a2, a4
                  srai         a1, zero, 14
sub_2_j5:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  sltiu        a2, t4, 98
                  slt          t4, s7, a6
                  nop
                  addi         s4, s9, -1359
                  slti         s2, s11, -1404
                  bltu         sp, a0, 34f
                  sub          ra, t1, s7
                  auipc        a4, 298689
                  lui          t5, 89518
                  bltu         ra, t4, 34f
30:               xor          ra, s1, a0
                  or           s7, gp, s6
                  bgeu         a4, t4, 34f
                  or           s4, t0, s3
34:               or           t2, s1, zero
                  lw           t1, 4(a5)
                  sll          a0, t3, s9
                  slti         t6, s9, -1492
                  addi         a5, a5, 28
                  lui          t4, 319098
73:               addi x11, x6, 1
73:               jalr x11, x11, 0
sub_1:            ori          a0, s5, -582
                  sll          s9, a5, sp
                  addi         s3, t1, 2
                  andi         s7, a1, 1183
                  sub          sp, s11, s4
                  addi         a5, a5, -48
                  sw           t1, 4(a5)
                  sub          s3, gp, s2
                  auipc        s6, 578840
                  srli         s2, t6, 21
sub_1_4:          jal          t1, 23f
0:                jal          ra, 19f
1:                jal          ra, 3f
2:                jal          ra, 17f
3:                jal          a2, 8f
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          sp, 13f
7:                jal          t0, 0b
8:                jal          a1, 22f
9:                jal          ra, 10f
10:               jal          ra, 14f
11:               jal          s2, 20f
12:               jal          t1, 21f
13:               jal          t1, 12b
14:               jal          t1, 4b
15:               jal          s8, 11b
16:               jal          t1, 7b
17:               jal          ra, 18f
18:               jal          ra, 1b
19:               jal          t0, 2b
20:               jal          t1, 24f
21:               jal          ra, 16b
22:               jal          ra, 15b
23:               jal          t1, 9b
24:               sltu         s6, s9, t5
sub_1_10:         jal          t1, 18f
0:                jal          ra, 13f
1:                jal          ra, 15f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          a3, 3b
5:                jal          ra, 14f
6:                jal          ra, 28f
7:                jal          ra, 11f
8:                jal          ra, 22f
9:                jal          ra, 17f
10:               jal          ra, 9b
11:               jal          ra, 1b
12:               jal          ra, 2b
13:               jal          gp, 30f
14:               jal          t1, 23f
15:               jal          ra, 20f
16:               jal          t1, 29f
17:               jal          sp, 26f
18:               jal          ra, 7b
19:               jal          t1, 10b
20:               jal          ra, 19b
21:               jal          t1, 8b
22:               jal          ra, 27f
23:               jal          ra, 4b
24:               jal          ra, 21b
25:               jal          ra, 12b
26:               jal          s7, 16b
27:               jal          ra, 6b
28:               jal          ra, 25b
29:               jal          s10, 24b
30:               sltiu        s4, s5, 1685
sub_1_1:          jal          t1, 7f
0:                jal          s9, 1f
1:                jal          ra, 3f
2:                jal          ra, 13f
3:                jal          t0, 14f
4:                jal          ra, 2b
5:                jal          gp, 11f
6:                jal          t1, 0b
7:                jal          ra, 4b
8:                jal          t1, 10f
9:                jal          t1, 6b
10:               jal          t1, 12f
11:               jal          tp, 9b
12:               jal          s2, 5b
13:               jal          t1, 8b
14:               and          s4, tp, a7
sub_1_12:         jal          t1, 7f
0:                jal          s9, 5f
1:                jal          t1, 3f
2:                jal          t1, 6f
3:                jal          s9, 8f
4:                jal          ra, 9f
5:                jal          ra, 10f
6:                jal          s7, 1b
7:                jal          t6, 2b
8:                jal          a4, 4b
9:                jal          ra, 0b
10:               sra          s10, a5, s6
sub_1_6:          jal          t1, 17f
0:                jal          t1, 3f
1:                jal          ra, 19f
2:                jal          ra, 12f
3:                jal          ra, 8f
4:                jal          t1, 14f
5:                jal          ra, 1b
6:                jal          s11, 18f
7:                jal          ra, 15f
8:                jal          t1, 16f
9:                jal          t1, 11f
10:               jal          t1, 7b
11:               jal          ra, 13f
12:               jal          s11, 10b
13:               jal          ra, 2b
14:               jal          t1, 6b
15:               jal          t1, 4b
16:               jal          t1, 5b
17:               jal          t1, 9b
18:               jal          ra, 0b
19:               slti         t0, sp, -878
sub_1_7:          jal          t1, 12f
0:                jal          tp, 5f
1:                jal          s9, 6f
2:                jal          ra, 9f
3:                jal          ra, 8f
4:                jal          t1, 17f
5:                jal          ra, 14f
6:                jal          ra, 7f
7:                jal          t1, 0b
8:                jal          ra, 11f
9:                jal          s5, 16f
10:               jal          t1, 1b
11:               jal          t1, 13f
12:               jal          t2, 3b
13:               jal          t1, 15f
14:               jal          t1, 4b
15:               jal          t2, 2b
16:               jal          ra, 10b
17:               addi         sp, t3, -1919
sub_1_3:          jal          t1, 2f
0:                jal          t3, 19f
1:                jal          t1, 21f
2:                jal          ra, 5f
3:                jal          s7, 15f
4:                jal          t1, 17f
5:                jal          tp, 18f
6:                jal          ra, 13f
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          ra, 12f
10:               jal          gp, 4b
11:               jal          t1, 8b
12:               jal          s4, 7b
13:               jal          ra, 16f
14:               jal          t3, 1b
15:               jal          gp, 14b
16:               jal          ra, 9b
17:               jal          ra, 3b
18:               jal          sp, 0b
19:               jal          tp, 20f
20:               jal          t2, 11b
21:               sub          a1, s7, s7
sub_1_5:          jal          t1, 0f
0:                jal          ra, 2f
1:                jal          ra, 7f
2:                jal          ra, 1b
3:                jal          sp, 10f
4:                jal          s10, 11f
5:                jal          a2, 18f
6:                jal          s1, 8f
7:                jal          t1, 5b
8:                jal          t0, 21f
9:                jal          ra, 6b
10:               jal          ra, 16f
11:               jal          tp, 17f
12:               jal          ra, 13f
13:               jal          tp, 15f
14:               jal          t1, 9b
15:               jal          gp, 19f
16:               jal          t3, 12b
17:               jal          t1, 3b
18:               jal          ra, 20f
19:               jal          ra, 14b
20:               jal          ra, 4b
21:               ori          t5, a7, -509
sub_1_9:          jal          t1, 5f
0:                jal          sp, 11f
1:                jal          ra, 4f
2:                jal          s6, 1b
3:                jal          ra, 10f
4:                jal          t0, 3b
5:                jal          ra, 9f
6:                jal          t1, 8f
7:                jal          ra, 0b
8:                jal          t0, 2b
9:                jal          t5, 6b
10:               jal          s11, 7b
11:               or           s4, ra, s11
sub_1_8:          jal          t1, 1f
0:                jal          s2, 11f
1:                jal          sp, 4f
2:                jal          ra, 10f
3:                jal          t0, 6f
4:                jal          t1, 3b
5:                jal          ra, 8f
6:                jal          ra, 16f
7:                jal          t1, 5b
8:                jal          t3, 0b
9:                jal          ra, 12f
10:               jal          ra, 17f
11:               jal          ra, 14f
12:               jal          ra, 15f
13:               jal          t1, 2b
14:               jal          ra, 13b
15:               jal          ra, 7b
16:               jal          t1, 9b
17:               add          s7, s9, s9
sub_1_13:         jal          t1, 1f
0:                jal          t0, 9f
1:                jal          t1, 12f
2:                jal          ra, 16f
3:                jal          ra, 0b
4:                jal          ra, 17f
5:                jal          a1, 8f
6:                jal          s0, 11f
7:                jal          t1, 2b
8:                jal          ra, 6b
9:                jal          ra, 14f
10:               jal          t2, 15f
11:               jal          ra, 13f
12:               jal          s10, 4b
13:               jal          ra, 10b
14:               jal          t5, 18f
15:               jal          ra, 7b
16:               jal          s3, 3b
17:               jal          s4, 5b
18:               and          sp, t4, t3
sub_1_2:          jal          t1, 13f
0:                jal          ra, 20f
1:                jal          ra, 5f
2:                jal          ra, 22f
3:                jal          ra, 10f
4:                jal          t1, 9f
5:                jal          ra, 8f
6:                jal          ra, 19f
7:                jal          ra, 1b
8:                jal          ra, 2b
9:                jal          tp, 6b
10:               jal          ra, 16f
11:               jal          ra, 3b
12:               jal          a1, 4b
13:               jal          ra, 14f
14:               jal          ra, 12b
15:               jal          t1, 18f
16:               jal          ra, 17f
17:               jal          a2, 0b
18:               jal          a3, 11b
19:               jal          t1, 15b
20:               jal          ra, 21f
21:               jal          ra, 7b
22:               sll          s5, s8, t6
                  slt          s9, a4, a6
                  beq          ra, t0, 4f
                  xor          sp, sp, a3
                  beq          gp, t4, 7f
4:                lui          a0, 816286
                  bge          s10, s9, 13f
                  lui          s0, 32802
7:                bne          s1, t4, 13f
                  xor          t5, a1, a2
                  and          t2, s4, a7
                  andi         s7, t2, -392
                  add          s10, t0, s5
                  bge          t1, s0, 30f
13:               slti         t3, a5, -613
                  or           s7, t6, s5
                  ori          a4, a3, 459
                  bgeu         s1, s6, 21f
                  slli         s5, s5, 23
                  xori         s6, a0, -346
                  srli         s1, s6, 14
                  slli         t2, a7, 12
21:               slti         s11, t1, 1763
                  nop
                  sub          gp, s11, s2
                  xori         t3, s4, 530
                  sra          s10, s9, t6
                  sll          s5, a2, a3
                  srli         a2, s9, 7
                  sltu         s3, t3, a3
                  beq          a5, s7, 37f
30:               sub          t3, t0, s3
                  srli         s7, ra, 0
                  ori          ra, s0, -916
                  addi         tp, t6, -41
                  srli         s9, s9, 25
                  add          s6, tp, ra
                  sltu         a4, s9, tp
37:               auipc        s10, 210248
                  or           t1, a0, sp
                  nop
                  slt          t4, a3, a6
                  bgeu         ra, s9, 52f
                  sltiu        s9, t2, 464
                  sub          a0, a5, t0
                  bne          s2, tp, 60f
                  bltu         a7, sp, 64f
                  sltu         a4, s11, t4
                  or           s2, s9, a1
sub_1_11:         jal          t1, 2f
0:                jal          a0, 4f
1:                jal          t1, 10f
2:                jal          t1, 12f
3:                jal          t0, 5f
4:                jal          s5, 1b
5:                jal          ra, 8f
6:                jal          ra, 3b
7:                jal          a3, 14f
8:                jal          ra, 11f
9:                jal          t0, 15f
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          t1, 6b
13:               jal          t1, 9b
14:               jal          ra, 13b
15:               add          t5, a3, t2
                  sltu         t2, s5, s11
                  srl          t1, a1, tp
                  lui          s1, 605919
                  blt          s8, a6, 62f
52:               xor          t5, sp, a3
                  andi         sp, t2, 1841
                  bne          ra, s8, 60f
                  sltiu        s7, a3, 706
                  beq          t5, s7, 67f
                  srl          a1, s2, t2
                  sltu         gp, s11, a7
                  slt          a1, t4, s6
60:               bltu         s8, zero, 69f
                  sra          s4, a5, s2
62:               lui          s1, 857021
                  nop
64:               beq          s5, a3, 73f
                  nop
                  slti         t2, s5, 134
67:               srai         zero, a6, 24
                  sltiu        t6, a5, 481
69:               addi         s9, t4, 404
                  slt          s6, a3, t1
                  bne          tp, s4, 89f
                  addi         tp, s11, 111
73:               sra          t6, a0, t2
                  beq          t0, s9, 84f
                  lui          a2, 488698
                  bne          s8, a4, 79f
                  blt          a3, t4, 84f
                  slli         s0, sp, 26
79:               sltiu        t1, s10, 535
                  add          s11, s2, s2
                  sltiu        s6, t5, -1405
                  bltu         sp, s3, 100f
                  bne          t4, a3, 96f
84:               auipc        gp, 812743
                  srl          t5, ra, a7
                  auipc        a4, 435958
                  slli         s9, s2, 18
                  sll          s1, t3, s9
89:               addi         a3, a5, -1495
                  srli         t0, a0, 3
                  blt          s4, s10, 99f
                  ori          a3, t0, 805
                  bgeu         s5, s6, 111f
                  slli         ra, s3, 23
                  andi         s5, a6, 1377
96:               nop
                  srai         t2, zero, 24
                  or           t2, s0, t2
99:               ori          t4, s11, -884
100:              addi         ra, s10, -1583
                  add          t5, s2, sp
                  andi         s8, s8, 250
                  addi         a2, a0, -1483
                  bge          s4, tp, 113f
                  auipc        t1, 172179
                  sltiu        s2, a2, -283
                  slli         s4, a2, 12
                  ori          ra, s5, 1531
                  bne          ra, sp, 117f
                  srli         tp, a1, 15
111:              bltu         a3, t2, 130f
                  auipc        t4, 627300
113:              bltu         s3, a5, 130f
                  srl          zero, s1, s9
                  andi         s7, t0, -2039
                  sll          s3, a7, a4
117:              slti         s9, t5, 1859
                  ori          t5, s6, -1760
                  or           gp, t1, ra
                  sltu         t4, t4, s0
                  srl          s10, sp, t2
                  addi         tp, s6, 1549
                  lui          zero, 237540
                  xori         a2, zero, 1354
                  sub          s6, s4, ra
                  ori          s10, t2, 606
                  la           s9, sub_2
                  srai         s0, t0, 21
                  nop
                  sll          t0, t2, s11
                  srl          s1, s3, s3
                  addi         s9, s9, -526
                  xori         s7, s2, 1960
sub_1_j3:         jalr         t1, s9, 526 #jump sub_1 -> sub_2
                  blt          t6, t4, 139f
                  slti         tp, sp, 710
                  xor          a3, a6, t6
                  or           gp, s8, a2
                  sltu         t0, t5, a7
130:              sub          t0, sp, t0
                  sll          s7, a6, a3
                  sub          a1, ra, a4
                  sra          a2, a4, s11
                  xori         a3, t3, 1343
                  bge          s0, a1, 139f
                  srl          s2, ra, a3
                  srl          sp, a1, s2
                  and          a4, s4, a1
139:              bgeu         a0, s3, 157f
                  sltiu        tp, t6, 572
                  add          a2, gp, s5
                  xor          sp, s7, sp
                  ori          s11, s5, 1605
                  nop
                  or           s3, t6, s11
                  blt          t2, t0, 165f
                  auipc        s2, 517049
                  slli         sp, s1, 16
                  nop
                  blt          a1, tp, 153f
                  xor          a4, a4, s8
                  bltu         t4, a4, 170f
153:              srai         tp, s9, 21
                  xor          t1, a1, s7
                  sub          s4, t3, a3
                  sra          t3, s11, s1
157:              sub          t5, s10, sp
                  slli         t4, t1, 2
                  srai         s10, t4, 8
                  slt          t5, tp, t3
                  addi         s4, a6, 1575
                  sltu         s1, s3, a4
                  la           s8, sub_2
                  srl          t4, tp, gp
                  addi         s8, s8, 981
                  srai         s1, a0, 11
                  and          t6, tp, s7
                  sltiu        sp, a4, 1989
                  or           s2, t4, s7
                  bge          s2, ra, sub_1_j4 #branch to jump instr
                  nop
                  xor          s5, s5, s1
                  lui          s9, 945588
                  ori          t2, t3, 692
sub_1_j4:         jalr         t1, s8, -980 #jump sub_1 -> sub_2
                  auipc        t3, 560958
                  sltu         t5, t1, a4
                  auipc        t3, 298859
165:              or           t2, a3, s9
                  bltu         ra, t2, 177f
                  addi         gp, s5, 929
                  srai         s11, s7, 14
                  blt          a2, tp, 178f
170:              or           sp, a7, sp
                  sll          t1, s3, t6
                  sltu         t6, s3, a1
                  bge          ra, sp, 182f
                  srai         t1, zero, 21
                  sltiu        s11, s6, 1580
                  slti         t6, t4, 1159
177:              sltu         a3, a2, ra
178:              bne          sp, ra, 196f
                  xori         tp, t2, 1884
                  bltu         s1, tp, 186f
                  sll          t3, t1, s0
182:              bge          t2, a7, 188f
                  add          tp, ra, a0
                  beq          a0, s3, 202f
                  srli         s0, a1, 22
186:              and          zero, s7, a2
                  addi         t4, t3, -1700
188:              slt          t1, a7, t2
                  xor          s4, a0, t2
                  bgeu         s7, gp, 206f
                  bge          zero, a1, 210f
                  blt          t5, s7, 203f
                  addi         a4, zero, 1311
                  ori          a3, zero, 1680
                  add          t3, s0, ra
196:              beq          s3, t5, 205f
                  sltiu        a0, a1, 1445
                  auipc        gp, 122180
                  srli         s9, a6, 16
                  addi         s4, s9, -1640
                  add          t6, a5, gp
202:              xor          t6, s1, s10
203:              bge          s5, a6, 207f
                  bgeu         a1, s6, 208f
205:              beq          t3, tp, 213f
206:              srli         s11, s4, 10
207:              sltu         a3, a3, a4
208:              add          s9, t1, a7
                  bgeu         t3, s6, 217f
210:              sltu         sp, tp, s4
                  slti         s0, s2, -487
                  lui          a0, 157125
213:              bge          a6, a7, 221f
                  slt          sp, s0, s4
                  srai         s7, s6, 14
                  srli         s9, s0, 13
217:              srli         s6, zero, 19
                  blt          tp, a0, 221f
                  beq          t2, s1, 227f
                  bge          tp, sp, 234f
221:              srli         s0, zero, 2
                  bgeu         a4, s1, 233f
                  bne          t4, a3, 236f
                  slti         a4, a3, 1828
                  bgeu         s1, s8, 230f
                  addi         t0, s11, -1780
227:              ori          gp, s1, 120
                  xor          s1, t1, s10
                  bgeu         t2, t4, 247f
230:              nop
                  beq          s4, ra, 238f
                  sub          sp, s8, a2
233:              auipc        a4, 1033497
234:              sra          a0, ra, s7
                  sub          s8, a2, s10
236:              addi         s4, t5, -148
                  srai         s0, a0, 16
238:              srai         a2, s5, 5
                  lui          t5, 867468
                  and          t1, s5, a5
                  sub          a4, s5, a5
                  bge          a0, s3, 260f
sub_1_0:          jal          t1, 6f
0:                jal          s4, 9f
1:                jal          gp, 12f
2:                jal          ra, 15f
3:                jal          a0, 1b
4:                jal          ra, 8f
5:                jal          ra, 19f
6:                jal          ra, 14f
7:                jal          t1, 5b
8:                jal          s11, 17f
9:                jal          ra, 11f
10:               jal          t1, 20f
11:               jal          t1, 3b
12:               jal          a0, 18f
13:               jal          ra, 7b
14:               jal          ra, 2b
15:               jal          t1, 0b
16:               jal          ra, 4b
17:               jal          ra, 10b
18:               jal          ra, 13b
19:               jal          ra, 16b
20:               sra          s8, s9, tp
                  addi         a1, tp, -1593
                  bltu         t3, s9, 261f
                  slli         zero, s4, 25
                  slt          s0, t1, zero
247:              sub          a1, s9, s6
                  bgeu         t2, s0, 258f
                  andi         s0, t6, 76
                  and          s8, s1, t5
                  srl          t3, gp, tp
                  bltu         a0, a2, 260f
                  sll          a0, s4, s0
                  srai         t4, a0, 25
                  bne          a6, s0, 273f
                  beq          s2, zero, 272f
                  and          s7, gp, s7
258:              bge          s6, t0, 276f
                  add          s3, a2, s6
260:              slli         t2, s2, 14
261:              and          a0, a6, s6
                  ori          s10, s0, 354
                  slt          s1, a6, a0
                  srl          sp, s4, t3
                  slt          s9, s3, t0
                  beq          a4, s0, 269f
                  sll          a4, s8, a4
                  sltu         s9, t5, s0
269:              bgeu         s8, tp, 280f
                  and          s8, a4, t5
                  add          s2, t2, t0
272:              sltu         s9, a3, t0
273:              sub          t5, s6, s8
                  bltu         s8, t3, 278f
                  ori          a0, s4, 1238
276:              slt          s2, s5, s2
                  slli         s9, a0, 10
278:              lui          t5, 673412
                  or           s1, sp, a0
280:              bne          t6, tp, 294f
                  xor          s7, s10, a0
                  slti         a0, t1, 787
                  addi         t5, a2, -766
                  add          s0, s8, a4
                  srli         ra, a6, 14
                  lui          s0, 846554
                  lui          zero, 231293
                  sltiu        a3, t3, 709
                  sra          a3, s5, s8
                  auipc        s11, 474237
                  beq          s2, t2, 310f
                  addi         s1, s6, -166
                  srli         gp, a4, 19
294:              srai         s8, t2, 30
                  sltiu        tp, t6, 1060
                  ori          t6, s11, 577
                  or           s11, t4, s10
                  srli         s6, s10, 4
                  blt          s10, s2, 305f
                  ori          a4, t4, -514
                  blt          t6, s4, 305f
                  srl          s8, s10, a3
                  beq          s3, a4, 313f
                  sra          s11, a4, s3
305:              sra          t1, s4, s0
                  bgeu         s5, a5, 311f
                  or           a4, s7, t2
                  bne          s0, zero, 326f
                  xor          s10, s4, s11
310:              sub          t6, a3, s5
311:              and          s2, t4, t3
                  slti         a3, s0, -1868
313:              blt          s8, t5, 321f
                  slt          s9, gp, s10
                  add          s3, s4, s10
                  srai         s5, a5, 8
                  slti         tp, s9, 1657
                  blt          t1, t6, 325f
                  addi         t5, a6, -870
                  add          s2, s7, s9
321:              bltu         s3, a3, 330f
                  srai         s6, s4, 16
                  slli         t6, t3, 15
                  beq          s0, t1, 335f
325:              add          t2, a1, ra
326:              add          sp, t6, gp
                  xori         t3, s7, -1886
                  add          s7, tp, a3
                  ori          s5, s2, 1307
330:              slti         a2, a6, -711
                  add          sp, a4, ra
                  bne          t3, tp, 338f
                  add          s3, t6, s6
                  bne          sp, a0, 345f
335:              bne          a6, s4, 352f
                  lui          s6, 611392
                  nop
338:              bne          sp, zero, 347f
                  slti         s0, s3, 665
                  bge          t0, s5, 358f
                  slti         s9, t3, -1156
                  andi         t1, t1, -1671
                  sra          t5, s0, t5
                  slt          s2, t4, gp
345:              addi         tp, s3, -1368
                  blt          gp, s3, 355f
347:              sltu         s11, t2, a2
                  andi         s7, s2, 32
                  srai         ra, t6, 25
                  add          zero, s1, t1
                  bgeu         t2, sp, 354f
352:              bgeu         t1, s2, 365f
                  bltu         s6, tp, 372f
354:              addi         zero, t4, 108
355:              blt          s5, s9, 363f
                  bltu         s0, t3, 364f
                  xor          ra, sp, gp
358:              slti         s5, a0, -802
                  add          tp, a3, ra
                  xori         s3, s11, 1984
                  lui          a1, 972807
                  sub          t5, tp, s4
363:              xor          a4, s9, t3
364:              lui          s6, 589954
365:              sra          s4, tp, s0
                  and          gp, s6, a7
                  sll          t6, s2, s11
                  and          s0, t4, a6
                  beq          gp, s11, 387f
                  slti         tp, s4, 1435
                  bgeu         t0, a3, 376f
372:              beq          s0, t2, 390f
                  nop
                  sll          a3, tp, gp
                  bgeu         t6, a1, 393f
376:              ori          a3, a4, -1847
                  slli         s7, t6, 0
                  srl          ra, a4, a4
                  xori         t3, a1, -1756
                  xor          a2, a3, a6
                  sra          s9, zero, sp
                  bltu         s0, a6, 392f
                  xori         t4, t0, -1049
                  bltu         t4, sp, 397f
                  add          a1, gp, t1
                  sra          t5, t6, s7
387:              srai         s0, a3, 18
                  andi         tp, s3, 989
                  slt          t2, s2, ra
390:              sra          t5, s7, s9
                  xori         t4, sp, 1444
392:              addi         s11, a2, 572
393:              beq          a0, a7, 411f
                  add          s3, t3, sp
                  nop
                  srli         gp, t4, 18
397:              beq          a7, t3, 416f
                  nop
                  sub          s0, a5, s0
                  lui          t2, 212096
                  beq          s5, t5, 405f
                  srai         a0, t6, 15
                  auipc        a0, 729184
                  lui          t6, 274119
405:              slt          a3, s7, a6
                  slti         ra, a7, -468
                  andi         t6, a4, 106
                  sra          s1, zero, a0
                  auipc        t0, 379705
                  addi         zero, t0, -1387
411:              sra          s5, a4, a3
                  sltiu        s10, s3, -619
                  and          gp, s1, s7
                  xor          s7, s7, s9
                  bltu         s8, s10, 423f
416:              sltu         a1, tp, sp
                  slt          s4, t1, t6
                  bne          zero, sp, 436f
                  bgeu         t0, s11, 430f
                  srl          s7, tp, s2
                  sltu         s0, a4, t5
                  bgeu         a1, s2, 436f
423:              bge          s1, a5, 429f
                  srai         s0, t5, 18
                  bne          a4, s10, 441f
                  sub          s4, s1, s5
                  bgeu         ra, s6, 435f
                  slti         s6, t6, -1698
429:              blt          a2, s11, 440f
430:              sltiu        a4, s3, -114
                  or           s8, s2, t4
                  slt          a4, t2, a2
                  slli         tp, a6, 20
                  nop
435:              lui          a0, 19369
436:              sltiu        t0, a4, -1125
                  sra          s5, s5, s11
                  bgeu         a7, gp, 456f
                  and          gp, a5, a4
440:              sra          t3, s10, gp
441:              srai         s4, a6, 0
                  auipc        s4, 941643
                  xori         s1, tp, -1313
                  xori         a3, t0, -798
                  sub          s3, t5, s0
                  sltu         a2, s3, s2
                  blt          s4, gp, 458f
                  xori         t2, t2, -100
                  sll          tp, s3, s3
                  addi         t5, a7, 1597
                  andi         gp, a0, 1364
                  blt          a3, gp, 471f
                  lui          t6, 59148
                  bne          s11, a1, 460f
                  blt          t1, s3, 462f
456:              sra          t2, tp, t5
                  beq          a5, s1, 466f
458:              sra          s6, s0, t4
                  bgeu         t1, a0, 467f
460:              srl          s2, s7, gp
                  bgeu         s6, gp, 470f
462:              bge          zero, tp, 471f
                  srl          s6, s4, gp
                  srli         t4, a7, 25
                  nop
466:              beq          s7, s0, 470f
467:              blt          a5, a1, 470f
                  srl          t2, t2, s2
                  beq          a1, s0, 477f
470:              nop
471:              sub          a4, s10, s7
                  and          tp, a0, s11
                  lui          t4, 799925
                  nop
                  beq          a4, s7, 492f
                  ori          zero, a2, 1242
477:              ori          a0, a1, 1661
                  slti         zero, sp, 1293
                  srl          a1, a7, a0
                  bne          s3, s5, 483f
                  bne          s3, t1, 499f
                  bge          a5, a0, 488f
483:              or           t6, s5, t3
                  srai         t1, s9, 31
                  xori         tp, s9, -54
                  srl          s7, t6, t0
                  or           s0, t6, s7
488:              andi         s7, tp, -1846
                  slli         gp, s7, 23
                  auipc        ra, 76489
                  sll          zero, s10, sp
492:              sltu         t2, s2, t0
                  sll          s7, s2, s5
                  xor          s2, s1, s2
                  or           zero, s5, sp
                  bltu         gp, a0, 502f
                  sub          s8, t1, a1
                  xor          s1, s11, sp
499:              lui          t2, 913870
                  slt          s3, t2, t4
                  and          s2, s1, ra
502:              or           a1, a0, t3
                  beq          gp, a4, 521f
                  or           t1, a2, s11
                  andi         s0, t1, 147
                  sub          s1, s3, a6
                  slli         s1, s8, 24
                  andi         a2, t0, -98
                  sltiu        s9, s4, -1520
                  bgeu         s6, a1, 528f
                  srai         tp, t6, 18
                  addi         s5, t4, 14
                  slli         gp, s3, 23
                  slti         s3, s8, 1015
                  andi         s2, zero, -1160
                  srl          s1, s0, gp
                  and          a3, a2, s4
                  sub          s4, a3, t4
                  ori          sp, t4, 1326
                  lui          tp, 723137
521:              bltu         a4, zero, 539f
                  auipc        s3, 421939
                  bltu         a0, s6, 537f
                  lui          s1, 630126
                  andi         s11, s9, -1660
                  slli         t4, a5, 16
                  sltu         s8, s11, a3
528:              sll          a4, a2, s10
                  addi         t1, a1, -1727
                  srl          s9, s6, s2
                  andi         a3, gp, 1667
                  slli         s8, a1, 17
                  sll          s6, zero, t5
                  srl          zero, zero, t0
                  slt          s3, s11, s10
                  beq          s11, a7, 544f
537:              ori          s6, a5, 282
                  auipc        ra, 3920
539:              sub          t5, ra, a3
                  lui          sp, 123588
                  srl          a3, s4, s8
                  sltu         t4, t4, sp
                  addi         zero, gp, -1995
544:              sltu         t4, s2, s1
                  xor          zero, s4, a5
                  sra          s4, s6, s3
                  srli         s6, s11, 13
                  blt          a0, s4, 557f
                  add          a3, s2, s1
                  nop
                  xor          t2, t0, a0
                  blt          s11, a1, 557f
                  sltu         t0, s11, s9
                  srl          tp, tp, s0
                  andi         t1, t3, 639
                  srl          s4, t4, a3
557:              sll          a4, sp, s9
                  and          a2, s5, s11
                  slt          t6, sp, a5
                  ori          s11, zero, -1227
                  srl          sp, a1, a4
                  srli         t0, t2, 2
                  bne          a4, ra, 581f
                  nop
                  auipc        t6, 733986
                  add          tp, t1, s5
                  sll          s7, t2, s6
                  srl          t6, ra, s11
                  beq          a7, s5, 588f
                  srl          t1, t1, a1
                  andi         a1, t6, 176
                  ori          s1, s7, 1876
                  slt          a1, t5, t3
                  bgeu         a2, s11, 583f
                  addi         s9, a2, 1244
                  addi         a0, a4, 1180
                  auipc        t0, 352036
                  srai         a0, s7, 3
                  or           a4, s9, tp
                  sll          s7, t5, s4
581:              and          tp, s11, a2
                  srl          s3, s4, a7
583:              srl          tp, tp, s4
                  add          s9, t5, s9
                  sltu         s4, gp, tp
                  lui          s7, 622972
                  sra          s2, a3, t2
588:              slli         s10, s11, 29
                  sub          a2, a1, a0
                  bge          sp, s7, 601f
                  sltu         t2, tp, s7
                  xor          s8, ra, t4
                  xor          s6, s11, s3
                  srai         t1, t5, 21
                  blt          zero, t0, 604f
                  slli         a0, ra, 26
                  bgeu         s11, s7, 613f
                  blt          s6, s1, 608f
                  addi         s9, gp, 1621
                  slti         ra, t5, 30
601:              sra          t0, a1, s7
                  slli         s10, a2, 20
                  bge          s6, t5, 611f
604:              or           tp, a2, a1
                  nop
                  slt          s3, a2, t5
                  lui          s3, 862639
608:              bge          s2, t0, 621f
                  blt          t1, t4, 617f
                  sub          s11, s4, a5
611:              srl          s0, s5, s1
                  sltiu        t6, t0, 1675
613:              blt          a7, s2, 620f
                  sltu         a4, s2, t0
                  ori          zero, a4, -743
                  sll          s2, a3, t4
617:              ori          s11, t2, 199
                  add          s10, a4, t2
                  add          s9, sp, a3
620:              sra          a1, a5, s1
621:              or           a2, a2, s3
                  blt          s11, s11, 630f
                  nop
                  nop
                  bne          t0, a7, 629f
                  xor          s1, s9, s7
                  sltiu        gp, s6, 641
                  andi         s2, t1, -355
629:              bne          s6, tp, 633f
630:              addi         ra, gp, -1564
                  slli         t2, a2, 21
                  bltu         a7, s4, 635f
633:              slli         s1, s9, 7
                  bltu         tp, a0, 645f
635:              srl          a4, t0, a0
                  or           a0, s6, a7
                  andi         a1, a5, -1601
                  sltu         ra, t1, a2
                  sub          s6, t4, t4
                  lui          s0, 798926
                  srai         s11, t3, 17
                  and          sp, a3, s10
                  bne          a3, a1, 654f
                  ori          a0, a7, -1359
645:              sltiu        s0, s11, 1164
                  bgeu         zero, t1, 665f
                  sltiu        t0, t1, -575
                  srl          s1, a7, t5
                  bltu         a2, a7, 652f
                  lui          a3, 47841
                  xor          s9, t6, zero
652:              bne          tp, s11, 669f
                  bge          s7, a5, 657f
654:              add          s6, s11, s0
                  slt          sp, a0, a1
                  slt          a0, t0, s1
657:              slt          s4, tp, s2
                  slli         s0, s10, 17
                  sra          s7, s5, tp
                  andi         a0, a7, 139
                  addi         zero, gp, 107
                  sll          ra, s6, a3
                  sltu         a4, t6, s5
                  addi         t6, s1, 879
665:              sll          t6, a5, s6
                  or           s2, s5, a7
                  nop
                  bne          s1, s0, 677f
669:              slli         s0, ra, 21
                  srl          t0, t5, s8
                  slti         s0, t0, -1164
                  sltu         a3, t0, s4
                  bne          s3, s10, 681f
                  slt          s7, s4, s7
                  add          t0, tp, s1
                  nop
677:              srl          t6, s10, s5
                  sltu         a1, t0, zero
                  nop
                  blt          a0, sp, 698f
681:              bge          s11, s1, 699f
                  or           t0, gp, s1
                  bltu         s3, zero, 700f
                  sltu         t4, zero, s1
                  xor          sp, s9, s7
                  nop
                  xor          t1, sp, gp
                  sll          a3, t5, s6
                  add          s8, s7, t0
                  lui          zero, 312402
                  addi         a2, s5, -1781
                  sra          s3, a0, gp
                  andi         s11, gp, 2038
                  blt          sp, a4, 700f
                  beq          a6, s9, 706f
                  srai         a0, t2, 18
                  andi         s6, gp, -1832
698:              bgeu         s0, ra, 705f
699:              srli         s4, sp, 16
700:              srli         s11, s5, 1
                  ori          t6, t6, 41
                  bne          a6, s2, 720f
                  or           tp, t1, s8
                  add          gp, s10, s3
705:              srli         ra, t1, 7
706:              ori          zero, a6, -1078
                  slli         s7, s3, 28
                  slt          t3, tp, ra
                  sltiu        s11, s3, -1291
                  add          a3, s8, t6
                  addi         tp, zero, 1029
                  and          s4, gp, t6
                  add          s10, t4, t6
                  bgeu         a3, s3, 724f
                  sub          s3, t6, s9
                  srl          t6, gp, a4
                  lui          s9, 472611
                  and          s5, gp, ra
                  sub          s3, a4, a2
720:              bge          tp, s6, 738f
                  srai         gp, s8, 16
                  xori         t0, t4, 73
                  srli         s7, a3, 26
724:              srl          t5, ra, gp
                  bltu         s5, s6, 733f
                  addi         zero, s8, -217
                  or           s4, t2, t0
                  slti         s3, a7, -937
                  sra          t4, tp, s3
                  beq          ra, s0, 742f
                  add          s6, s7, a6
                  sra          s7, tp, s0
733:              sltiu        s0, a4, -1004
                  and          s3, t3, s1
                  slti         t6, s6, 281
                  bge          tp, ra, 742f
                  bgeu         zero, t0, 742f
738:              srl          t0, tp, s0
                  nop
                  sra          s10, t2, s2
                  andi         zero, s2, -1455
742:              nop
                  lw           t1, 4(a5)
                  addi         s9, s5, -1973
                  addi         a5, a5, 48
                  sra          zero, s10, a0
                  xor          a1, s5, s0
1069:             addi x20, x6, 0
1069:             jalr x20, x20, 0
sub_5:            sra          s9, ra, tp
                  xor          gp, s10, tp
                  addi         s2, t1, 1494
                  slli         sp, s2, 7
                  or           t2, s9, s3
                  andi         tp, s3, -1563
                  addi         a5, a5, -24
                  sw           t1, 4(a5)
                  or           ra, t4, s4
                  ori          s10, sp, -2023
sub_5_10:         jal          t1, 6f
0:                jal          t1, 12f
1:                jal          ra, 16f
2:                jal          ra, 14f
3:                jal          ra, 4f
4:                jal          t1, 10f
5:                jal          ra, 15f
6:                jal          ra, 21f
7:                jal          ra, 17f
8:                jal          ra, 22f
9:                jal          t1, 2b
10:               jal          ra, 5b
11:               jal          ra, 20f
12:               jal          ra, 9b
13:               jal          s0, 1b
14:               jal          t1, 13b
15:               jal          t3, 0b
16:               jal          t1, 19f
17:               jal          s0, 18f
18:               jal          t1, 11b
19:               jal          t1, 8b
20:               jal          t3, 3b
21:               jal          a1, 7b
22:               sub          s9, t3, a4
sub_5_15:         jal          t1, 7f
0:                jal          ra, 5f
1:                jal          ra, 3f
2:                jal          ra, 6f
3:                jal          t1, 8f
4:                jal          a1, 2b
5:                jal          t1, 18f
6:                jal          ra, 28f
7:                jal          ra, 12f
8:                jal          s7, 16f
9:                jal          s4, 24f
10:               jal          ra, 25f
11:               jal          ra, 27f
12:               jal          sp, 9b
13:               jal          tp, 4b
14:               jal          a4, 17f
15:               jal          tp, 19f
16:               jal          ra, 11b
17:               jal          gp, 23f
18:               jal          ra, 20f
19:               jal          s11, 21f
20:               jal          sp, 13b
21:               jal          ra, 22f
22:               jal          t1, 0b
23:               jal          t1, 26f
24:               jal          t0, 10b
25:               jal          ra, 15b
26:               jal          ra, 1b
27:               jal          t1, 29f
28:               jal          sp, 14b
29:               lui          sp, 393321
sub_5_5:          jal          t1, 5f
0:                jal          ra, 8f
1:                jal          tp, 23f
2:                jal          s2, 17f
3:                jal          ra, 0b
4:                jal          s9, 20f
5:                jal          t4, 11f
6:                jal          t5, 1b
7:                jal          ra, 15f
8:                jal          t3, 21f
9:                jal          s0, 3b
10:               jal          s2, 26f
11:               jal          t4, 24f
12:               jal          s10, 13f
13:               jal          ra, 18f
14:               jal          t1, 2b
15:               jal          t1, 12b
16:               jal          t0, 9b
17:               jal          t3, 4b
18:               jal          ra, 27f
19:               jal          ra, 14b
20:               jal          a2, 10b
21:               jal          ra, 22f
22:               jal          t0, 25f
23:               jal          ra, 7b
24:               jal          s5, 19b
25:               jal          s6, 6b
26:               jal          tp, 16b
27:               nop
sub_5_12:         jal          t1, 2f
0:                jal          ra, 11f
1:                jal          s8, 12f
2:                jal          t1, 7f
3:                jal          t1, 0b
4:                jal          ra, 19f
5:                jal          ra, 9f
6:                jal          ra, 16f
7:                jal          t1, 1b
8:                jal          ra, 6b
9:                jal          tp, 3b
10:               jal          ra, 14f
11:               jal          t1, 4b
12:               jal          ra, 18f
13:               jal          t1, 5b
14:               jal          ra, 20f
15:               jal          ra, 22f
16:               jal          ra, 15b
17:               jal          t1, 21f
18:               jal          t1, 13b
19:               jal          t2, 10b
20:               jal          t1, 17b
21:               jal          ra, 8b
22:               addi         s9, s11, 2044
sub_5_0:          jal          t1, 8f
0:                jal          t3, 6f
1:                jal          ra, 5f
2:                jal          ra, 14f
3:                jal          ra, 1b
4:                jal          t1, 9f
5:                jal          a2, 12f
6:                jal          ra, 7f
7:                jal          ra, 3b
8:                jal          ra, 4b
9:                jal          a3, 10f
10:               jal          t2, 0b
11:               jal          ra, 2b
12:               jal          ra, 13f
13:               jal          ra, 11b
14:               addi         s1, a0, -1422
sub_5_1:          jal          t1, 14f
0:                jal          gp, 25f
1:                jal          t1, 12f
2:                jal          ra, 4f
3:                jal          ra, 5f
4:                jal          ra, 27f
5:                jal          gp, 26f
6:                jal          ra, 28f
7:                jal          t1, 2b
8:                jal          sp, 3b
9:                jal          s3, 16f
10:               jal          ra, 7b
11:               jal          t1, 19f
12:               jal          ra, 20f
13:               jal          ra, 29f
14:               jal          t1, 22f
15:               jal          ra, 23f
16:               jal          s4, 6b
17:               jal          t1, 30f
18:               jal          gp, 1b
19:               jal          t1, 21f
20:               jal          t1, 8b
21:               jal          ra, 18b
22:               jal          ra, 24f
23:               jal          s3, 9b
24:               jal          t1, 13b
25:               jal          ra, 10b
26:               jal          ra, 17b
27:               jal          t1, 11b
28:               jal          ra, 0b
29:               jal          s7, 15b
30:               nop
sub_5_3:          jal          t1, 5f
0:                jal          ra, 14f
1:                jal          ra, 0b
2:                jal          ra, 10f
3:                jal          ra, 17f
4:                jal          ra, 12f
5:                jal          t1, 6f
6:                jal          t0, 9f
7:                jal          ra, 18f
8:                jal          gp, 7b
9:                jal          ra, 8b
10:               jal          tp, 15f
11:               jal          ra, 1b
12:               jal          t3, 2b
13:               jal          s1, 19f
14:               jal          ra, 13b
15:               jal          ra, 11b
16:               jal          a1, 3b
17:               jal          ra, 20f
18:               jal          s6, 4b
19:               jal          s0, 16b
20:               sub          t3, s0, zero
sub_5_18:         jal          t1, 9f
0:                jal          t0, 6f
1:                jal          ra, 18f
2:                jal          ra, 5f
3:                jal          ra, 13f
4:                jal          t1, 3b
5:                jal          t2, 12f
6:                jal          tp, 14f
7:                jal          ra, 11f
8:                jal          ra, 4b
9:                jal          ra, 10f
10:               jal          a1, 2b
11:               jal          a0, 16f
12:               jal          a1, 7b
13:               jal          ra, 15f
14:               jal          ra, 1b
15:               jal          t1, 0b
16:               jal          ra, 17f
17:               jal          s6, 8b
18:               sra          s2, s11, t1
sub_5_19:         jal          t1, 3f
0:                jal          ra, 7f
1:                jal          ra, 5f
2:                jal          t1, 0b
3:                jal          ra, 1b
4:                jal          ra, 9f
5:                jal          t1, 6f
6:                jal          ra, 2b
7:                jal          gp, 10f
8:                jal          t5, 4b
9:                jal          t1, 11f
10:               jal          t6, 8b
11:               slli         t3, s4, 15
sub_5_16:         jal          t1, 16f
0:                jal          a2, 19f
1:                jal          ra, 5f
2:                jal          ra, 20f
3:                jal          ra, 1b
4:                jal          t1, 0b
5:                jal          ra, 12f
6:                jal          ra, 4b
7:                jal          ra, 9f
8:                jal          t1, 10f
9:                jal          t1, 8b
10:               jal          t1, 13f
11:               jal          ra, 21f
12:               jal          t1, 7b
13:               jal          s2, 17f
14:               jal          ra, 15f
15:               jal          ra, 3b
16:               jal          t1, 14b
17:               jal          ra, 2b
18:               jal          ra, 11b
19:               jal          gp, 18b
20:               jal          ra, 6b
21:               srli         ra, gp, 1
sub_5_4:          jal          t1, 4f
0:                jal          ra, 13f
1:                jal          t1, 8f
2:                jal          ra, 6f
3:                jal          t6, 5f
4:                jal          ra, 9f
5:                jal          ra, 17f
6:                jal          sp, 16f
7:                jal          t1, 18f
8:                jal          t1, 12f
9:                jal          t0, 15f
10:               jal          ra, 1b
11:               jal          ra, 0b
12:               jal          s2, 11b
13:               jal          ra, 3b
14:               jal          ra, 7b
15:               jal          s8, 10b
16:               jal          t1, 14b
17:               jal          t4, 2b
18:               slt          s10, a1, s2
sub_5_7:          jal          t1, 2f
0:                jal          s8, 10f
1:                jal          t2, 3f
2:                jal          t1, 0b
3:                jal          ra, 4f
4:                jal          ra, 8f
5:                jal          ra, 7f
6:                jal          t1, 5b
7:                jal          ra, 11f
8:                jal          t1, 6b
9:                jal          ra, 1b
10:               jal          ra, 9b
11:               ori          s4, t5, 304
sub_5_17:         jal          t1, 3f
0:                jal          ra, 8f
1:                jal          s5, 10f
2:                jal          ra, 7f
3:                jal          gp, 4f
4:                jal          a1, 1b
5:                jal          ra, 2b
6:                jal          ra, 0b
7:                jal          ra, 11f
8:                jal          ra, 5b
9:                jal          ra, 6b
10:               jal          t1, 9b
11:               srl          s6, a3, a7
sub_5_13:         jal          t1, 4f
0:                jal          ra, 5f
1:                jal          ra, 3f
2:                jal          s0, 7f
3:                jal          s10, 10f
4:                jal          ra, 0b
5:                jal          ra, 1b
6:                jal          t1, 9f
7:                jal          t1, 6b
8:                jal          ra, 2b
9:                jal          t0, 11f
10:               jal          ra, 8b
11:               jal          ra, 12f
12:               sub          s7, a4, s10
                  add          s2, t5, s5
                  auipc        zero, 513904
                  xor          s2, a5, t1
                  and          a2, a3, s5
                  add          t6, a3, a3
                  bgeu         gp, t2, 9f
                  or           s8, a2, s6
                  slli         a2, t5, 22
                  srai         s8, s2, 14
9:                srl          t0, s9, s6
                  xori         zero, s4, -50
                  slt          t6, a5, s1
                  slti         sp, t2, -1632
                  bne          a6, t3, 29f
                  bne          ra, s1, 16f
                  blt          s1, s9, 21f
16:               slt          t3, t4, s7
                  addi         s10, a3, 345
                  or           a0, ra, a2
                  xor          t6, ra, s2
                  bltu         s2, a0, 36f
21:               and          t2, s7, s7
                  and          tp, sp, t4
                  srl          s1, t2, zero
                  xor          tp, sp, t4
                  sll          s7, a6, s6
                  sra          t4, s5, s2
                  bltu         s3, sp, 33f
                  and          t5, a6, s11
29:               beq          sp, s3, 31f
                  sra          s6, s5, zero
31:               slti         s1, s0, -2040
                  xori         a2, tp, 1324
33:               xor          tp, s11, a2
                  srai         s2, a2, 31
                  sra          a3, a4, sp
36:               beq          a2, zero, 53f
                  bltu         t3, tp, 40f
                  sra          s2, a5, s7
                  xor          t2, s9, a3
40:               ori          tp, s6, 1617
                  bge          a1, s1, 44f
                  srl          s9, t4, t4
                  sll          t6, tp, s9
44:               addi         t5, s1, -1897
                  bge          s0, gp, 47f
                  bgeu         s3, s1, 56f
47:               and          t6, tp, a0
                  slli         s1, s8, 14
                  xor          ra, zero, t2
                  beq          a5, s3, 53f
                  andi         s6, s1, -2016
                  add          s1, a0, ra
53:               srli         tp, ra, 21
                  xor          t3, s7, sp
                  bge          s8, s5, 63f
56:               xor          s11, t0, s11
                  auipc        t6, 557722
                  srli         s8, s9, 17
                  sra          s2, s9, s5
                  xor          s2, s2, a1
                  auipc        a2, 262109
                  nop
63:               lui          tp, 183623
                  slti         t4, s7, -561
                  srli         t2, zero, 27
                  slli         t1, a6, 8
                  slti         t2, s4, -899
                  xori         t0, ra, -625
                  srl          s9, a7, a5
                  srli         t4, a7, 5
                  bne          a6, a6, 91f
                  bltu         a3, s6, 81f
                  and          t0, gp, zero
                  slti         s7, a3, 201
                  slli         s5, t4, 13
                  xori         t1, zero, 847
                  andi         s1, a7, -1034
                  sltu         zero, ra, a7
                  addi         a0, t5, 1630
                  slti         t4, s8, 1238
81:               xor          t5, a5, s3
                  srai         t1, a1, 12
                  auipc        s6, 449608
                  nop
                  bge          s0, tp, 91f
                  xori         sp, s7, -468
                  slt          s11, a4, t5
                  andi         t6, s10, 485
                  addi         a1, a1, 1847
                  nop
91:               addi         t4, t5, -1631
                  auipc        a0, 740274
                  add          s4, a7, ra
                  srai         s6, a6, 14
                  beq          t6, s3, 113f
                  andi         s6, ra, 935
                  sll          t1, s2, sp
                  add          zero, a4, a1
                  beq          t1, tp, 116f
                  blt          a6, a2, 115f
                  ori          t0, a1, 864
                  sltiu        sp, s6, -1126
                  or           a3, s11, sp
                  auipc        t1, 104829
                  beq          a7, t3, 110f
                  bgeu         gp, s9, 125f
                  xori         s1, s3, 1702
                  sra          a1, s1, a2
                  sltu         a4, s9, a0
110:              and          s2, zero, ra
                  sll          sp, s8, a2
                  xori         a0, ra, -430
113:              bge          s8, a6, 122f
                  blt          s8, t0, 124f
115:              sub          s8, s3, t0
116:              lui          t1, 463682
                  addi         a1, zero, 1823
                  slli         s5, ra, 23
                  sll          t5, s1, a7
                  srai         s0, t0, 5
                  blt          s1, t2, 127f
122:              ori          s5, a7, -1626
                  srli         s1, s11, 31
124:              add          s1, t5, a0
125:              add          a1, a3, s2
                  ori          s11, t3, 56
127:              slt          t6, t0, t1
                  addi         s3, s2, 130
                  bgeu         a0, a4, 132f
                  srli         zero, s2, 23
                  xor          t6, zero, t1
132:              slli         s8, sp, 7
                  srai         ra, sp, 31
                  srai         s10, a4, 6
                  slt          t6, t4, gp
                  xor          tp, s5, zero
                  sra          s6, a7, s7
                  add          t5, s9, zero
                  xor          gp, zero, t6
                  or           t6, a1, t2
                  add          ra, s3, s8
                  and          s2, s4, s10
                  sub          s3, s7, zero
                  xori         t1, s10, -1471
                  ori          a0, a3, -1193
                  beq          a0, s1, 164f
                  sltu         tp, t0, sp
                  sub          a0, sp, s4
                  bge          a6, a5, 155f
                  bgeu         s5, gp, 167f
                  sll          s0, s0, a7
                  or           s6, s9, zero
                  srai         t3, t4, 28
                  sra          t6, s8, a3
155:              and          s0, s2, s2
                  srl          a0, s11, a0
                  or           t3, a2, s5
                  andi         s10, t5, -855
                  andi         a0, a5, -368
                  sll          a2, sp, t5
                  sub          s11, t1, s7
                  or           t4, s8, s0
                  srai         s6, t6, 31
164:              blt          t0, tp, 165f
165:              andi         a3, t3, -645
                  slti         t4, sp, 1124
167:              bne          s9, a3, 184f
                  addi         s11, t2, 966
                  srli         t4, sp, 8
                  add          tp, t3, s7
                  xori         t4, t6, 832
                  auipc        s0, 75523
                  srl          s7, gp, a6
                  sll          t4, s7, t5
                  xori         t6, s0, 1796
                  sltiu        s7, t1, -1910
                  sra          s2, sp, t3
                  lui          t2, 809105
                  beq          s4, a0, 182f
                  srli         t1, t0, 13
                  add          a1, s6, a0
182:              beq          t0, gp, 186f
                  slt          s1, zero, ra
184:              andi         s9, a2, -770
                  sra          s5, a5, t6
186:              srli         a2, a0, 31
                  bltu         sp, s9, 190f
                  xor          t6, t3, s2
                  andi         s6, s10, -1970
190:              add          t3, s0, a0
                  sll          s3, s5, s9
                  srli         t1, t2, 3
                  bne          s1, t2, 195f
                  sra          a3, gp, s1
195:              srl          zero, s2, a1
                  lui          s2, 492741
                  bltu         s1, t0, 214f
                  sub          s9, t5, gp
                  add          s3, t5, t6
                  addi         t6, zero, 891
                  add          s11, s8, a2
                  auipc        t5, 26613
                  srl          s11, a4, s2
                  or           t2, s6, s6
                  srl          t1, s11, a3
                  xor          t1, a6, s3
                  bne          t3, a0, 225f
                  nop
                  srli         t0, t2, 24
                  bge          zero, a5, 215f
                  srli         t4, tp, 0
                  srl          t3, a0, t0
                  nop
214:              srl          ra, tp, tp
215:              add          s8, zero, sp
                  sll          a3, s0, tp
                  beq          zero, t5, 233f
                  bne          t6, a6, 226f
                  sra          a2, a2, a7
                  xor          s4, a0, t4
                  slli         gp, a7, 9
                  andi         s8, t4, 1932
                  or           s3, s2, a5
                  or           s1, s1, s2
225:              sub          s9, a6, s11
226:              bltu         sp, zero, 245f
                  bgeu         t4, s6, 237f
                  bgeu         s0, s2, 238f
                  srli         t3, s9, 9
                  beq          t0, a7, 236f
                  sra          s4, t2, s8
                  srai         a4, t2, 18
233:              nop
                  sltiu        s11, s2, 1438
                  blt          s11, t5, 241f
236:              sub          s5, a5, s8
237:              and          a0, t0, a0
238:              sltu         tp, t1, t0
                  ori          t0, s1, -473
                  and          a4, zero, t3
241:              or           t2, a4, t6
                  xori         tp, s6, -145
                  and          t1, a2, s9
                  sll          t0, sp, a0
245:              slli         a1, s2, 12
                  bne          s1, t0, 255f
                  or           t0, s4, t5
                  ori          s9, s10, 51
                  auipc        s11, 571463
                  bne          a1, s3, 253f
                  ori          gp, s4, -479
                  beq          t0, a0, 268f
sub_5_2:          jal          t1, 6f
0:                jal          ra, 11f
1:                jal          t2, 15f
2:                jal          a3, 16f
3:                jal          s3, 9f
4:                jal          ra, 2b
5:                jal          ra, 20f
6:                jal          t1, 5b
7:                jal          ra, 17f
8:                jal          t1, 24f
9:                jal          ra, 19f
10:               jal          ra, 12f
11:               jal          s9, 18f
12:               jal          ra, 3b
13:               jal          ra, 21f
14:               jal          t1, 10b
15:               jal          ra, 14b
16:               jal          tp, 13b
17:               jal          gp, 1b
18:               jal          t1, 22f
19:               jal          ra, 0b
20:               jal          t3, 23f
21:               jal          sp, 8b
22:               jal          ra, 25f
23:               jal          s2, 4b
24:               jal          ra, 7b
25:               auipc        tp, 164649
253:              srl          a4, s4, s4
                  add          t1, s9, s3
255:              lui          s10, 948718
                  xor          s9, gp, s5
                  beq          a7, a0, 259f
                  and          s0, a3, a6
259:              blt          a4, a3, 279f
                  blt          s10, s6, 269f
                  xori         s10, a0, 1085
                  xor          a4, s2, a2
                  addi         s0, gp, -1487
                  sub          a3, s11, s6
                  xor          t1, s1, s5
                  beq          s10, a0, 269f
                  addi         s8, s5, 1568
268:              and          gp, t6, t0
269:              sll          a1, t6, s6
                  sub          s0, gp, s2
                  slti         s1, zero, 600
                  slti         a3, a6, -1393
                  srl          tp, zero, s0
                  srl          a2, a6, gp
                  and          s6, s9, s9
                  add          a4, t0, s8
                  auipc        gp, 564129
                  auipc        zero, 548907
279:              slti         ra, s0, -1808
                  andi         s1, zero, 1651
                  sltu         zero, s3, s3
                  xori         s2, s3, 1173
                  xori         a1, tp, 1728
                  andi         gp, s7, 1118
                  xor          s8, t5, sp
                  bltu         t6, ra, 292f
                  sltu         s6, t4, gp
                  add          s9, a4, t5
                  srl          s7, t6, t0
                  sra          s1, a3, s3
                  sub          s6, s0, a4
292:              slli         t2, t0, 24
                  sltiu        s2, a0, -1012
                  sltu         s8, t3, t4
                  addi         s1, s4, -1897
                  lui          tp, 648066
                  bge          ra, a7, 303f
                  add          t6, t2, sp
                  sltiu        a0, t3, 1962
                  beq          s9, ra, 302f
                  sub          t1, s6, s0
302:              bltu         t0, t3, 308f
303:              sub          s3, a6, gp
                  blt          tp, s7, 321f
                  srli         gp, t4, 14
                  sra          ra, a0, sp
                  blt          a4, a1, 308f
308:              bgeu         t1, a1, 323f
                  bgeu         s5, ra, 327f
                  slt          s9, s6, s9
                  bgeu         s10, s8, 317f
                  sra          s9, s2, s6
                  or           t2, a7, s0
                  sltiu        a2, t2, 430
                  slt          t5, a2, ra
                  sub          zero, s4, s6
317:              bltu         s7, s0, 322f
                  slli         s3, t4, 26
                  nop
                  sltiu        zero, t2, 287
321:              sltu         s5, s3, t5
322:              and          s4, t5, s7
323:              xor          a4, sp, t0
                  bgeu         a4, t4, 334f
                  nop
                  ori          t6, s0, -791
327:              lui          t4, 122915
                  xor          s1, t2, a7
                  nop
                  andi         s11, s2, -1209
                  sll          t5, s1, a5
                  sub          tp, a6, s3
                  bge          s10, s6, 335f
334:              slt          s5, zero, a4
335:              bne          zero, s3, 338f
                  bgeu         a2, s6, 338f
                  slt          s3, s3, a4
338:              srli         t2, s10, 7
                  nop
                  add          t2, sp, t3
                  srai         s0, s0, 11
                  lui          s10, 70129
                  ori          ra, s0, 1521
                  slt          s4, s8, t4
                  slti         t6, t5, 1028
                  lui          t1, 713698
                  xori         t1, s8, -1211
                  or           gp, t6, gp
                  lui          s3, 832785
                  slti         ra, t5, -511
                  xor          s11, s3, a2
                  andi         zero, s4, 220
                  srl          s1, t2, t6
                  xor          s6, s11, t5
                  blt          a2, a0, 359f
                  auipc        t2, 836253
                  lui          t4, 794457
                  beq          gp, s2, 376f
359:              andi         a0, t5, 1587
                  and          a2, t2, sp
                  add          zero, s7, a1
                  sltiu        t1, a5, -128
                  nop
                  srl          t1, t0, s1
                  sub          t4, t4, t0
                  xor          t1, a6, a7
                  auipc        a2, 684192
                  srl          s9, s3, t3
                  srai         gp, sp, 5
                  and          s9, s2, s10
                  nop
                  sll          t3, t5, a3
                  srai         s1, a1, 1
                  or           s10, s7, s11
                  bgeu         t6, s5, 391f
376:              add          s10, s10, a0
                  xori         s10, zero, -1413
                  blt          t5, s1, 380f
                  nop
380:              and          sp, s11, zero
                  xori         s0, s10, 504
                  xori         t1, t0, 1821
                  slti         a3, s10, 107
                  bge          s10, a7, 393f
                  sltiu        s9, s11, 1946
                  or           s0, t6, s7
                  sltiu        a4, t4, -1382
                  nop
                  bge          zero, s9, 395f
                  beq          s4, s0, 409f
391:              sub          t2, ra, s0
                  bltu         tp, a4, 407f
393:              beq          s3, s8, 394f
394:              blt          s0, s4, 411f
395:              andi         s7, s7, -1759
                  auipc        a1, 518624
                  slt          t6, t0, t2
                  sub          t1, s2, a3
                  lui          t4, 435393
                  nop
                  srl          t2, gp, s2
                  addi         a3, a7, 1170
                  sub          t1, a2, tp
                  add          a2, s4, t1
                  sltiu        ra, sp, 487
                  sltiu        sp, gp, -730
sub_5_14:         jal          t1, 0f
0:                jal          ra, 5f
1:                jal          s7, 4f
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          t2, 11f
5:                jal          sp, 9f
6:                jal          s6, 12f
7:                jal          ra, 10f
8:                jal          ra, 2b
9:                jal          ra, 3b
10:               jal          ra, 8b
11:               jal          s10, 7b
12:               xori         tp, zero, -1549
407:              bgeu         s2, s3, 425f
                  xori         t6, s0, -339
409:              slti         s9, tp, 517
                  xor          s5, tp, gp
411:              sub          t1, zero, s4
                  blt          s6, t4, 415f
                  xor          t1, s1, s1
                  lui          t6, 572200
415:              sub          a1, a0, s7
                  beq          a4, s7, 419f
                  sltu         a1, s10, t4
                  bltu         s0, a6, 421f
419:              beq          s5, s5, 436f
                  nop
421:              xor          t5, sp, s0
                  addi         s3, zero, -558
                  auipc        s11, 81900
                  xor          s2, s4, s8
425:              slli         t0, s5, 14
                  sltiu        s11, t3, -22
                  srli         sp, sp, 20
                  bge          s1, t0, 448f
                  sll          s11, t6, t5
                  slt          s11, s11, t0
                  sll          t5, s8, t6
                  and          t6, s2, t0
                  sltiu        t0, s9, 1563
                  blt          s3, sp, 450f
                  xor          gp, a1, a5
436:              lui          zero, 168805
                  ori          s9, a3, -1974
                  slli         gp, ra, 12
                  sll          t4, s1, s7
                  sra          zero, a5, gp
                  or           a3, a7, s8
                  xori         t2, t5, -582
                  andi         gp, tp, -1840
                  sub          t0, t6, gp
                  or           s11, t2, s9
                  ori          s8, s9, 1645
                  sra          s7, s7, t1
448:              srai         s6, s4, 26
                  bge          a3, a4, 458f
450:              blt          a5, a4, 458f
                  bge          t4, gp, 468f
                  andi         s6, a0, 885
                  add          s2, zero, t3
                  xor          s4, s8, s10
                  slli         a3, a0, 22
                  slli         s1, t5, 25
                  addi         s9, s11, 1470
458:              slli         t5, t5, 29
                  addi         s0, s11, -179
                  srl          s4, a2, t0
                  bne          a7, gp, 467f
                  add          t3, t3, s0
                  lui          s11, 794407
                  addi         s9, t0, -496
                  srli         gp, t3, 6
                  ori          s3, s3, -989
467:              srai         t5, s1, 4
468:              sltiu        s8, s1, -302
                  lui          s5, 883565
                  lui          t1, 530716
                  add          t0, s6, s2
                  sra          s10, a0, zero
                  bltu         s10, s5, 479f
                  slt          t5, s8, a7
                  bne          gp, a5, 481f
                  addi         a2, tp, -1990
                  and          t2, ra, zero
                  sra          s3, s8, s7
479:              bge          s5, s1, 489f
                  sll          sp, s9, t6
481:              srai         t4, t0, 28
                  srli         tp, s2, 7
                  bgeu         a3, sp, 485f
                  bltu         a4, a1, 493f
485:              xor          s1, a7, a7
                  addi         t0, s11, 9
                  and          a0, s4, s4
                  nop
489:              slli         ra, t6, 19
                  lui          sp, 1026865
                  srli         t5, a4, 26
                  beq          t1, gp, 508f
493:              sub          t6, s9, t3
                  srl          a1, a0, s5
                  beq          a5, s0, 512f
                  sltu         s6, zero, t0
                  andi         ra, s5, -997
                  nop
                  srai         tp, t6, 2
                  slti         s6, s1, -1238
                  bltu         t2, t0, 504f
                  xor          s10, a0, ra
                  ori          s3, s11, 1276
504:              xori         sp, t2, -705
                  nop
                  srli         t0, t1, 20
                  ori          a0, s6, 744
508:              srli         s10, t5, 19
                  sltu         s9, s11, a1
                  add          s9, s1, a4
                  lui          zero, 292908
512:              slli         s5, s6, 29
                  bne          a6, a1, 523f
                  slt          t3, s2, t1
                  or           a1, ra, t3
                  bgeu         tp, zero, 522f
                  bltu         t4, a2, 534f
                  bge          a1, s7, 538f
                  xor          s11, a1, t2
                  and          a2, s0, a6
                  sra          t3, s0, s6
522:              sra          t5, s11, s7
523:              xori         s9, t3, 1949
                  srl          s3, tp, t5
                  sub          s2, s2, t1
                  auipc        t1, 814886
                  sra          a4, ra, a4
                  bltu         t3, s7, 531f
                  srl          gp, a2, zero
                  bltu         t0, t4, 536f
531:              srli         t3, s8, 13
                  srai         s7, t2, 12
                  auipc        a2, 321784
534:              xori         sp, t4, 1930
                  slti         t3, s4, -511
536:              slti         a4, s5, -2024
                  bge          zero, s4, 555f
538:              or           t0, s5, a2
                  sra          t2, s3, sp
                  sra          a1, a1, a4
                  or           t6, s11, s8
                  or           s4, tp, s10
                  sra          s7, t3, t0
                  srli         t0, s1, 13
                  bge          s7, a7, 554f
                  sltu         a3, t2, ra
                  srli         gp, s9, 1
                  sra          a3, s8, a2
                  bne          t3, t6, 555f
                  sra          s2, s9, s6
                  ori          s5, a1, 1480
                  xori         t6, t1, 1775
                  blt          t2, s7, 555f
554:              or           gp, sp, a4
555:              blt          s11, a5, 572f
                  auipc        t1, 542474
                  slti         t1, s3, -738
                  sra          tp, t3, t2
                  slt          s4, t5, a4
                  xori         sp, t0, 1246
                  xor          s10, s5, t5
                  or           s2, s10, a4
                  ori          zero, tp, -499
                  and          a1, s5, s8
                  bltu         a0, a7, 570f
                  bge          s3, s11, 584f
                  ori          sp, s10, 1322
                  lui          s7, 445460
                  and          a3, a6, a5
570:              slli         t1, s4, 15
                  slli         t3, t3, 21
572:              srl          t6, s11, s1
                  srai         t2, a5, 5
                  or           t5, t1, a4
                  sltu         gp, a4, t1
                  nop
                  or           tp, s9, s6
                  blt          a4, a1, 586f
                  xori         s4, t3, -1065
                  bgeu         a7, s1, 590f
                  srai         s1, s6, 18
                  srli         s0, t3, 26
                  lui          s8, 556524
584:              and          s2, s10, a3
                  xori         t2, s7, -513
586:              or           s1, t2, a4
                  bgeu         s4, s9, 589f
                  xor          s7, s2, a2
589:              add          a0, s6, a7
590:              sub          s4, t3, s5
                  andi         t5, s1, 1976
                  slli         sp, a0, 15
                  lui          s3, 712539
                  xor          s6, a5, a1
                  and          s4, s2, a5
                  andi         a1, s10, 984
                  nop
                  blt          s5, gp, 614f
                  ori          s9, t5, -497
                  sll          t1, t1, s8
                  sll          gp, sp, s6
                  andi         gp, t0, 1336
                  bne          a4, a3, 622f
                  blt          s7, sp, 610f
                  sub          t1, t0, t3
                  and          a0, t1, s1
                  add          a0, t5, gp
                  srl          s11, s7, s8
                  srli         t1, s3, 23
610:              sra          s8, a1, a4
                  sub          s0, s8, t1
                  blt          t4, s0, 627f
                  bgeu         s5, s7, 619f
614:              srai         tp, s2, 17
                  blt          s6, s9, 619f
                  sra          s10, s8, t3
                  bge          s7, a0, 620f
                  ori          s2, t5, 360
619:              xor          s7, s8, t2
620:              bgeu         sp, s9, 621f
621:              slli         zero, s5, 10
622:              bge          a6, a3, 625f
                  and          t1, s5, t5
                  or           t1, t2, t6
625:              add          a0, sp, t0
                  srai         s11, a4, 17
627:              xor          a1, s8, a2
                  xori         tp, a0, -787
                  sub          sp, s1, s7
sub_5_8:          jal          t1, 4f
0:                jal          t1, 1f
1:                jal          ra, 5f
2:                jal          s6, 3f
3:                jal          t1, 10f
4:                jal          t2, 8f
5:                jal          ra, 9f
6:                jal          s0, 11f
7:                jal          ra, 2b
8:                jal          ra, 7b
9:                jal          t1, 13f
10:               jal          t1, 6b
11:               jal          t1, 12f
12:               jal          s1, 0b
13:               xori         a2, t6, 1507
                  sra          tp, a7, a6
                  add          s4, s1, s1
                  beq          s0, sp, 638f
                  and          s9, a7, t3
                  bltu         a7, tp, 650f
                  add          s4, zero, t1
                  blt          t5, t0, 654f
                  srl          zero, a5, s4
638:              sltu         gp, t4, s8
                  bne          a3, a7, 654f
                  sll          a0, s0, a0
                  bgeu         s4, s0, 658f
                  bge          a6, a3, 652f
                  sll          tp, t3, s2
                  sll          zero, t4, t4
                  xori         s11, s5, -50
                  add          t1, s9, a0
sub_5_6:          jal          t1, 0f
0:                jal          ra, 5f
1:                jal          s1, 4f
2:                jal          tp, 10f
3:                jal          t1, 8f
4:                jal          ra, 7f
5:                jal          t1, 6f
6:                jal          t3, 1b
7:                jal          a4, 9f
8:                jal          ra, 11f
9:                jal          t2, 2b
10:               jal          t0, 3b
11:               or           tp, t2, tp
                  addi         s5, t5, -1441
                  slti         sp, t0, 528
                  auipc        s7, 760145
650:              lui          gp, 250695
                  andi         s2, t0, -1746
652:              slti         t4, s9, 1240
                  sra          tp, a2, t1
654:              sltu         sp, a5, s3
                  or           s3, a2, a3
                  sll          s3, s4, t5
                  bne          s5, s1, 663f
658:              xori         t3, t3, 1872
                  or           s6, a4, a1
                  bltu         s10, tp, 665f
                  nop
                  bgeu         a4, s2, 668f
663:              bne          s4, t5, 673f
                  slti         a0, s2, -2004
665:              sll          t3, sp, a6
                  andi         s10, a5, -1848
                  bge          a0, ra, 673f
668:              ori          t5, s3, 3
                  nop
                  and          zero, a6, zero
                  lui          s8, 682401
                  bne          a0, s2, 674f
673:              sra          a3, t2, sp
674:              slti         a2, gp, 773
                  andi         gp, ra, -905
                  bltu         s8, s1, 679f
                  auipc        t4, 414580
                  or           tp, t6, s9
679:              andi         t6, s3, -911
                  blt          zero, t2, 682f
                  bge          s1, t2, 698f
682:              slli         s9, t1, 17
                  addi         s3, t2, -1504
                  sll          s9, t6, t5
                  srai         ra, s6, 19
                  srli         t5, t2, 0
                  ori          a4, s1, 1856
                  ori          s10, a7, 521
                  add          s11, s7, s4
                  bgeu         t6, t6, 692f
                  nop
692:              bge          a6, s10, 709f
                  andi         zero, s6, -479
                  add          s11, t1, sp
sub_5_9:          jal          t1, 10f
0:                jal          t1, 2f
1:                jal          ra, 16f
2:                jal          t1, 6f
3:                jal          ra, 11f
4:                jal          ra, 15f
5:                jal          ra, 12f
6:                jal          t1, 13f
7:                jal          ra, 9f
8:                jal          ra, 17f
9:                jal          ra, 14f
10:               jal          s10, 5b
11:               jal          sp, 8b
12:               jal          t1, 4b
13:               jal          ra, 3b
14:               jal          s10, 0b
15:               jal          a2, 1b
16:               jal          s8, 7b
17:               sltiu        a3, s7, -894
                  slli         s2, a5, 21
                  srli         ra, tp, 27
                  add          s6, s0, s8
698:              sub          s5, s0, s9
                  srl          a4, s1, s2
                  srl          a2, t4, s8
                  bgeu         s9, t0, 705f
                  lui          gp, 433027
                  beq          a6, a0, 709f
                  auipc        tp, 988064
705:              srl          s7, a3, t3
                  bgeu         a2, t2, 709f
                  xori         s5, t6, 1742
                  andi         s6, s2, -93
709:              blt          t5, s5, 718f
                  beq          t3, s8, 719f
                  sltiu        s4, a0, 490
                  add          a1, sp, a4
                  nop
                  sub          s11, t6, a7
                  beq          a4, t0, 734f
                  slli         s7, s9, 27
                  srli         s2, gp, 16
718:              blt          s10, a0, 726f
719:              slti         s11, a2, -571
                  slt          tp, s9, t5
                  ori          t6, a2, 1511
                  slt          s9, t0, a1
                  xor          tp, s3, a5
                  andi         t6, ra, 1318
                  lui          t0, 898748
726:              slli         sp, a6, 6
                  bltu         a0, a6, 730f
                  add          s6, s4, s10
                  bgeu         tp, a5, 745f
730:              xori         t1, s4, -1356
                  bne          a5, s8, 751f
                  blt          s4, s5, 735f
                  srli         a3, gp, 23
734:              lui          a3, 247158
735:              sll          ra, t1, a2
                  sub          sp, a5, t3
                  srl          s5, t2, s11
                  xori         zero, s9, -730
                  and          tp, ra, s1
                  ori          s7, a2, 118
                  bne          s11, tp, 759f
                  and          s6, s5, s3
                  or           t0, s7, a2
                  andi         s11, sp, 171
745:              slli         a4, s9, 7
                  andi         s9, s10, 164
                  ori          tp, sp, 42
                  slt          s7, s1, t1
                  slti         t0, a7, 829
                  xori         t0, s10, 173
751:              srl          tp, t1, s7
                  srl          s9, t0, a0
                  sltu         sp, s1, a4
                  bgeu         s4, a0, 755f
755:              sra          s9, a1, s3
                  sra          a0, s6, sp
                  bge          t1, s3, 767f
                  ori          a0, s11, -174
759:              bne          s7, a6, 776f
                  or           s3, s7, a5
                  xor          a4, t0, a1
                  bgeu         t5, s1, 782f
                  and          s8, sp, t6
                  andi         a3, a7, -707
                  sub          zero, s7, a3
                  nop
767:              srai         s8, s9, 13
                  sltu         a1, a3, ra
                  bge          a3, s1, 771f
                  ori          tp, t0, 1524
771:              and          s1, s8, t5
                  beq          t6, a2, 778f
sub_5_11:         jal          t1, 14f
0:                jal          ra, 6f
1:                jal          ra, 21f
2:                jal          ra, 24f
3:                jal          ra, 20f
4:                jal          s6, 19f
5:                jal          s2, 0b
6:                jal          ra, 18f
7:                jal          t5, 3b
8:                jal          ra, 7b
9:                jal          ra, 22f
10:               jal          s10, 12f
11:               jal          a3, 17f
12:               jal          ra, 8b
13:               jal          ra, 4b
14:               jal          ra, 9b
15:               jal          ra, 25f
16:               jal          ra, 27f
17:               jal          ra, 23f
18:               jal          ra, 1b
19:               jal          t1, 2b
20:               jal          ra, 11b
21:               jal          t3, 10b
22:               jal          t1, 13b
23:               jal          ra, 15b
24:               jal          s8, 16b
25:               jal          ra, 28f
26:               jal          tp, 5b
27:               jal          ra, 26b
28:               slt          t3, a2, s6
                  xori         s6, t5, 1090
                  sra          a4, s8, t3
                  auipc        s9, 802940
776:              add          t3, a6, t0
                  sra          a2, s4, s7
778:              sltu         ra, sp, ra
                  xori         s3, s10, -724
                  bge          zero, s6, 786f
                  lui          s4, 39057
782:              slli         tp, a5, 14
                  srli         s11, t0, 6
                  srli         s7, s9, 20
                  bne          s7, a0, 788f
786:              addi         a2, a5, -1661
                  sltu         s6, zero, s4
788:              sra          tp, gp, gp
                  sltiu        t6, zero, 1072
                  blt          s4, a2, 796f
                  srl          sp, t3, s7
                  sub          t2, s1, t5
                  addi         s0, s8, 1550
                  blt          s5, a2, 796f
                  bne          t3, s8, 796f
796:              andi         zero, s11, 811
                  bgeu         t1, a2, 816f
                  ori          zero, gp, 812
                  xor          a4, t0, sp
                  bgeu         s8, s4, 817f
                  xor          a3, t4, s9
                  andi         a2, a7, 684
                  beq          t6, t2, 807f
                  sra          a2, s7, a3
                  or           tp, a2, s11
                  blt          a1, s2, 812f
807:              xor          a2, a2, a5
                  srli         tp, t5, 7
                  xor          a1, s1, t2
                  slti         s5, s3, 1432
                  xori         s4, sp, -328
812:              addi         s3, a4, 512
                  blt          a7, a7, 819f
                  slli         a1, t5, 11
                  srai         s4, tp, 5
816:              ori          s6, s2, -656
817:              bltu         a2, a2, 820f
                  lui          s0, 183329
819:              sltu         t3, s6, t1
820:              bgeu         t4, s7, 836f
                  srl          t5, a7, a7
                  srai         s0, s4, 0
                  xori         t5, t3, -31
                  xori         s11, t2, -648
                  blt          gp, a2, 835f
                  nop
                  xor          t4, zero, s11
                  slti         s7, a3, -1932
                  or           s9, t3, a2
                  xori         t3, t2, -1847
                  sltiu        tp, tp, 205
                  blt          gp, s5, 850f
                  sltu         t5, a5, sp
                  addi         t3, t0, 949
835:              blt          s8, a5, 844f
836:              xori         t0, s10, 1452
                  bne          s3, sp, 840f
                  sub          t5, a7, t2
                  xori         t6, s1, 163
840:              addi         sp, a6, -895
                  sltiu        s3, s7, 872
                  sra          s11, s7, t6
                  auipc        s8, 277832
844:              auipc        s11, 609189
                  sub          s11, t5, t6
                  bltu         t4, a6, 848f
                  blt          s2, gp, 856f
848:              blt          s9, gp, 851f
                  bge          t4, a3, 854f
850:              lui          s3, 294947
851:              sra          a1, s9, t0
                  beq          a0, s1, 870f
                  slt          t1, sp, s11
854:              slti         a4, gp, -950
                  xori         t6, s3, 1166
856:              slt          s5, s4, t6
                  bgeu         a1, s1, 872f
                  beq          a5, s10, 875f
                  sll          s5, s7, s4
                  sltu         zero, s3, sp
                  auipc        s5, 770943
                  lui          t1, 872297
                  or           a1, t2, s10
                  andi         a3, s0, 790
                  blt          t4, s5, 881f
                  add          zero, a0, s1
                  srl          t2, a6, gp
                  srl          s0, s9, t6
                  xor          s2, s10, a4
870:              blt          ra, s4, 878f
                  sra          s10, tp, a5
872:              slti         t5, t0, -2032
                  addi         t4, sp, -1624
                  ori          gp, a2, -987
875:              slt          s9, s7, s5
                  sra          s3, a6, a6
                  beq          t2, a3, 892f
878:              srli         gp, s5, 3
                  or           s10, a1, s6
                  slli         gp, a2, 12
881:              slt          t2, s8, t1
                  add          t6, a2, t3
                  xori         gp, a0, 1229
                  xor          s6, t1, s10
                  sra          s1, s9, a4
                  andi         s11, t4, -386
                  addi         s10, s9, 528
                  sra          s1, gp, s3
                  addi         gp, s7, 1955
                  bge          sp, t0, 894f
                  blt          s0, t6, 893f
892:              xori         s5, s6, 729
893:              and          s3, s7, s7
894:              bgeu         s6, s2, 897f
                  nop
                  sub          s10, a7, a6
897:              bltu         gp, gp, 899f
                  slt          s5, gp, a3
899:              srl          a4, sp, s9
                  sll          s9, a4, s6
                  slt          zero, a3, s10
                  sltiu        t2, s0, -1054
                  and          s1, a7, zero
                  bgeu         ra, s3, 910f
                  bge          gp, s9, 911f
                  bge          zero, s6, 923f
                  bge          t5, s3, 917f
                  srl          s4, a0, a1
                  beq          zero, t1, 915f
910:              bne          a6, s3, 926f
911:              addi         s6, s0, -277
                  ori          tp, t3, 235
                  sub          ra, s0, a0
                  slt          s11, s4, t3
915:              bltu         s5, s1, 932f
                  xori         t6, t0, -1790
917:              sltu         t1, s6, s4
                  sll          t2, s5, s11
                  or           a2, t5, a0
                  bgeu         sp, s5, 923f
                  ori          s7, t3, 1687
                  bne          t6, t5, 931f
923:              xor          t2, s4, s4
                  andi         t5, s1, 1200
                  slti         s2, a2, 1720
926:              auipc        s6, 986953
                  srai         s2, s0, 17
                  sra          a0, a3, a4
                  and          zero, s2, s0
                  bltu         s5, s7, 931f
931:              srl          s7, a7, t0
932:              blt          a6, s5, 935f
                  sub          s7, t3, a5
                  andi         t3, a6, -418
935:              andi         t6, gp, 1964
                  andi         a2, zero, -1458
                  add          s3, a3, tp
                  xor          t2, s1, t4
                  blt          a4, s8, 945f
                  bge          t5, a3, 960f
                  slti         sp, ra, -1004
                  beq          s9, t4, 952f
                  add          s9, s4, s8
                  xori         s7, t5, 546
945:              sra          gp, s0, s1
                  or           s11, s8, a4
                  slt          s4, s4, s10
                  blt          gp, s3, 956f
                  sltu         s5, t6, a2
                  auipc        a0, 745026
                  slli         a2, a1, 3
952:              lui          a2, 960850
                  nop
                  lui          s8, 459344
                  blt          t3, a2, 973f
956:              xor          a0, s11, a7
                  sltu         a0, zero, s5
                  and          s9, s3, a0
                  bltu         a4, a6, 965f
960:              xori         t3, t3, 548
                  slli         t0, s2, 5
                  sra          s6, s1, gp
                  slti         a3, s7, 300
                  nop
965:              blt          a7, t2, 981f
                  bge          s6, tp, 975f
                  sub          s5, t6, sp
                  auipc        t5, 638337
                  auipc        s4, 476643
                  auipc        s3, 782728
                  slti         a4, s3, -1985
                  bltu         s1, a4, 990f
973:              srl          t1, a3, t0
                  andi         a0, a4, 1971
975:              sltiu        a0, a2, 547
                  srai         t6, a6, 13
                  addi         t2, zero, -1895
                  sltu         s10, a3, t4
                  bge          a2, a1, 984f
                  andi         sp, s8, -1186
981:              sll          a0, s1, t1
                  slli         a2, tp, 28
                  and          s8, t5, a2
984:              bge          tp, t3, 1003f
                  srli         tp, s11, 29
                  sltiu        gp, a6, 292
                  xor          s1, s6, sp
                  bge          zero, zero, 991f
                  beq          t1, t4, 1006f
990:              bge          t1, tp, 992f
991:              auipc        a0, 984653
992:              addi         s2, a6, -1696
                  and          t6, s5, sp
                  srli         s5, t2, 30
                  lui          s2, 623093
                  and          s8, ra, t6
                  blt          a0, s11, 1007f
                  and          s4, s4, t1
                  sltiu        a4, sp, 1596
                  ori          t4, s5, 933
                  srl          a4, a3, s8
                  auipc        s0, 759865
1003:             slt          s0, s7, s4
                  sltiu        a0, a7, 44
                  bge          s11, t2, 1024f
1006:             andi         s9, sp, 1789
1007:             or           s4, s2, t1
                  andi         t3, a1, 1976
                  lui          s7, 832645
                  xor          t2, s7, t4
                  andi         s2, s9, 896
                  srai         s2, s0, 10
                  srli         a4, s3, 13
                  nop
                  sltu         sp, s8, s3
                  bne          s6, a0, 1021f
                  and          a4, a2, ra
                  slli         zero, s6, 25
                  srli         a0, tp, 20
                  auipc        a4, 854439
1021:             sltiu        t3, a0, -655
                  sub          a0, a3, tp
                  beq          a3, t6, 1029f
1024:             or           s11, a5, s6
                  srl          s3, tp, s4
                  bne          a5, ra, 1043f
                  sll          zero, t6, s5
                  srl          s3, s0, t3
1029:             sltiu        a0, s10, 1859
                  add          ra, s0, sp
                  lui          s11, 527893
                  slt          s10, s8, t5
                  and          s7, t4, ra
                  or           t1, s7, s1
                  xori         ra, t4, -796
                  and          s0, s11, ra
                  lui          s9, 271408
                  andi         s3, s4, 1683
                  slli         s5, t1, 27
                  bne          a3, a6, 1047f
                  sub          t2, ra, sp
                  bgeu         a5, t2, 1047f
1043:             srl          t3, t0, s11
                  auipc        t1, 254194
                  nop
                  bne          t5, s4, 1047f
1047:             slli         s10, a7, 9
                  addi         s10, t2, 907
                  lw           t1, 4(a5)
                  sltu         s10, s0, a4
                  addi         a5, a5, 24
                  add          s11, s9, a4
1475:             addi x13, x6, 0
1475:             jalr x13, x13, 0
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
                  add x16, x15, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x29, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x29, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x29, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x29, x14, ecall_handler
                  li x14, 0x1
                  beq x29, x14, instr_fault_handler
                  li x14, 0x5
                  beq x29, x14, load_fault_handler
                  li x14, 0x7
                  beq x29, x14, store_fault_handler
                  li x14, 0xc
                  beq x29, x14, pt_fault_handler
                  li x14, 0xd
                  beq x29, x14, pt_fault_handler
                  li x14, 0xf
                  beq x29, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x15, x16, zero
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
                  add x15, x16, zero
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
                  add x15, x16, zero
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
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x15, x16, zero
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
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x15, x16, zero
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
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x15, x16, zero
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
