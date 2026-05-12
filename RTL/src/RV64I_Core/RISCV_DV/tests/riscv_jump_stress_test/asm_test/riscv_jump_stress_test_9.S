.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 1
                  csrw 0x305, x4 # MTVEC

mepc_setup:       
                  la x4, init
                  csrw 0x341, x4

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x4, 0x1800
                  csrw 0x300, x4 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf3067afc
                  li x2, 0x9
                  li x3, 0x3
                  li x4, 0x1
                  li x5, 0x5c8b5b24
                  li x6, 0x3cad6d30
                  li x7, 0x9c21e6eb
                  li x8, 0x760c6e69
                  li x9, 0xf38e4eda
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0xf7334516
                  li x13, 0xf852a509
                  li x14, 0xfd6e7505
                  li x15, 0xff15640d
                  li x16, 0x7ee4d16c
                  li x18, 0x7
                  li x19, 0x80000000
                  li x20, 0xf1c9054d
                  li x21, 0x0
                  li x22, 0xfd8ffda9
                  li x23, 0x1c87e65e
                  li x24, 0x80000000
                  li x26, 0xfa80f777
                  li x27, 0xfbf87912
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0xf831907b
                  li x31, 0x80000000
                  la x25, user_stack_end
main:             jal          t1, 12f
0:                jal          t1, 4f
1:                jal          gp, 9f
2:                jal          ra, 5f
3:                jal          a5, 0b
4:                jal          t1, 10f
5:                jal          ra, 13f
6:                jal          ra, 2b
7:                jal          t1, 3b
8:                jal          t1, 6b
9:                jal          ra, 8b
10:               jal          ra, 1b
11:               jal          ra, 7b
12:               jal          sp, 11b
13:               auipc        t0, 1000319
main_24:          jal          t1, 5f
0:                jal          ra, 4f
1:                jal          ra, 0b
2:                jal          ra, 8f
3:                jal          t1, 7f
4:                jal          t6, 9f
5:                jal          tp, 2b
6:                jal          t2, 10f
7:                jal          ra, 6b
8:                jal          t1, 1b
9:                jal          ra, 3b
10:               slti         t6, a5, -755
main_17:          jal          t1, 20f
0:                jal          ra, 19f
1:                jal          ra, 16f
2:                jal          ra, 0b
3:                jal          ra, 6f
4:                jal          t1, 1b
5:                jal          t3, 13f
6:                jal          a0, 2b
7:                jal          s5, 10f
8:                jal          ra, 23f
9:                jal          t1, 22f
10:               jal          ra, 9b
11:               jal          a0, 18f
12:               jal          ra, 17f
13:               jal          ra, 12b
14:               jal          ra, 26f
15:               jal          t4, 7b
16:               jal          ra, 3b
17:               jal          ra, 15b
18:               jal          ra, 8b
19:               jal          ra, 5b
20:               jal          s6, 11b
21:               jal          ra, 4b
22:               jal          t1, 25f
23:               jal          t1, 21b
24:               jal          ra, 14b
25:               jal          ra, 24b
26:               xor          a2, s1, s4
main_15:          jal          t1, 1f
0:                jal          t1, 16f
1:                jal          ra, 13f
2:                jal          ra, 3f
3:                jal          a3, 10f
4:                jal          ra, 14f
5:                jal          a2, 9f
6:                jal          ra, 5b
7:                jal          s2, 21f
8:                jal          ra, 6b
9:                jal          a6, 17f
10:               jal          tp, 18f
11:               jal          ra, 19f
12:               jal          ra, 22f
13:               jal          ra, 11b
14:               jal          ra, 23f
15:               jal          t0, 12b
16:               jal          gp, 7b
17:               jal          a3, 4b
18:               jal          ra, 20f
19:               jal          ra, 8b
20:               jal          ra, 24f
21:               jal          t1, 15b
22:               jal          t1, 2b
23:               jal          ra, 0b
24:               srli         a2, t5, 6
main_11:          jal          t1, 12f
0:                jal          s5, 6f
1:                jal          ra, 8f
2:                jal          s2, 10f
3:                jal          sp, 16f
4:                jal          s5, 11f
5:                jal          ra, 3b
6:                jal          ra, 13f
7:                jal          a4, 5b
8:                jal          ra, 9f
9:                jal          t1, 2b
10:               jal          ra, 15f
11:               jal          ra, 0b
12:               jal          s11, 14f
13:               jal          t0, 1b
14:               jal          ra, 4b
15:               jal          ra, 7b
16:               srai         sp, sp, 4
main_12:          jal          t1, 7f
0:                jal          ra, 2f
1:                jal          ra, 3f
2:                jal          ra, 8f
3:                jal          ra, 10f
4:                jal          s11, 0b
5:                jal          ra, 12f
6:                jal          sp, 4b
7:                jal          ra, 11f
8:                jal          a3, 9f
9:                jal          ra, 5b
10:               jal          sp, 6b
11:               jal          ra, 1b
12:               srl          t6, s8, s8
main_22:          jal          t1, 8f
0:                jal          a2, 22f
1:                jal          ra, 19f
2:                jal          t1, 10f
3:                jal          t1, 1b
4:                jal          ra, 26f
5:                jal          t1, 0b
6:                jal          ra, 5b
7:                jal          a1, 20f
8:                jal          t3, 13f
9:                jal          ra, 11f
10:               jal          ra, 25f
11:               jal          ra, 6b
12:               jal          t4, 17f
13:               jal          ra, 27f
14:               jal          ra, 24f
15:               jal          t1, 2b
16:               jal          s0, 4b
17:               jal          a3, 23f
18:               jal          ra, 9b
19:               jal          ra, 12b
20:               jal          ra, 16b
21:               jal          ra, 14b
22:               jal          ra, 3b
23:               jal          ra, 21b
24:               jal          ra, 29f
25:               jal          tp, 7b
26:               jal          s0, 18b
27:               jal          ra, 28f
28:               jal          ra, 15b
29:               sll          s7, a3, gp
main_3:           jal          t1, 1f
0:                jal          t1, 10f
1:                jal          gp, 9f
2:                jal          s1, 8f
3:                jal          t1, 0b
4:                jal          a3, 6f
5:                jal          ra, 3b
6:                jal          ra, 2b
7:                jal          ra, 5b
8:                jal          s2, 7b
9:                jal          t1, 4b
10:               sll          a0, a0, s1
main_7:           jal          t1, 12f
0:                jal          t5, 19f
1:                jal          sp, 5f
2:                jal          t1, 7f
3:                jal          t1, 11f
4:                jal          a0, 15f
5:                jal          ra, 6f
6:                jal          s0, 18f
7:                jal          t1, 14f
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               jal          ra, 1b
11:               jal          ra, 13f
12:               jal          ra, 4b
13:               jal          t0, 16f
14:               jal          ra, 8b
15:               jal          ra, 9b
16:               jal          t1, 10b
17:               jal          t1, 2b
18:               jal          ra, 17b
19:               slt          s4, a0, t3
main_13:          jal          t1, 14f
0:                jal          t3, 5f
1:                jal          t1, 0b
2:                jal          ra, 12f
3:                jal          ra, 9f
4:                jal          ra, 7f
5:                jal          ra, 11f
6:                jal          sp, 15f
7:                jal          ra, 3b
8:                jal          t1, 6b
9:                jal          t1, 10f
10:               jal          a6, 1b
11:               jal          a3, 8b
12:               jal          s5, 13f
13:               jal          t1, 4b
14:               jal          t1, 2b
15:               xor          t2, s9, ra
main_19:          jal          t1, 24f
0:                jal          a2, 12f
1:                jal          ra, 16f
2:                jal          ra, 23f
3:                jal          ra, 22f
4:                jal          s7, 14f
5:                jal          sp, 10f
6:                jal          ra, 26f
7:                jal          ra, 5b
8:                jal          ra, 4b
9:                jal          t1, 19f
10:               jal          ra, 30f
11:               jal          t2, 2b
12:               jal          ra, 25f
13:               jal          t1, 7b
14:               jal          t1, 20f
15:               jal          s11, 29f
16:               jal          t1, 21f
17:               jal          ra, 1b
18:               jal          t0, 6b
19:               jal          ra, 27f
20:               jal          tp, 3b
21:               jal          t0, 15b
22:               jal          ra, 13b
23:               jal          ra, 28f
24:               jal          ra, 11b
25:               jal          t1, 18b
26:               jal          ra, 8b
27:               jal          ra, 17b
28:               jal          ra, 9b
29:               jal          ra, 0b
30:               sub          a6, a2, a7
main_0:           jal          t1, 10f
0:                jal          sp, 5f
1:                jal          gp, 6f
2:                jal          t1, 19f
3:                jal          ra, 12f
4:                jal          ra, 13f
5:                jal          t1, 20f
6:                jal          t1, 17f
7:                jal          ra, 18f
8:                jal          ra, 9f
9:                jal          ra, 15f
10:               jal          ra, 11f
11:               jal          ra, 3b
12:               jal          ra, 21f
13:               jal          ra, 24f
14:               jal          ra, 25f
15:               jal          ra, 1b
16:               jal          t1, 4b
17:               jal          gp, 22f
18:               jal          ra, 0b
19:               jal          ra, 26f
20:               jal          t1, 8b
21:               jal          t1, 14b
22:               jal          t1, 2b
23:               jal          t1, 16b
24:               jal          ra, 7b
25:               jal          ra, 23b
26:               addi         s0, s11, 1362
main_23:          jal          t1, 5f
0:                jal          s6, 8f
1:                jal          a0, 14f
2:                jal          sp, 1b
3:                jal          ra, 7f
4:                jal          ra, 0b
5:                jal          ra, 13f
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          ra, 6b
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               jal          ra, 4b
12:               jal          t1, 11b
13:               jal          t1, 12b
14:               or           s5, t1, a3
main_8:           jal          t1, 2f
0:                jal          ra, 18f
1:                jal          ra, 10f
2:                jal          ra, 0b
3:                jal          ra, 12f
4:                jal          ra, 21f
5:                jal          ra, 1b
6:                jal          ra, 3b
7:                jal          t1, 15f
8:                jal          t1, 5b
9:                jal          t1, 4b
10:               jal          ra, 20f
11:               jal          ra, 9b
12:               jal          ra, 7b
13:               jal          ra, 22f
14:               jal          t1, 17f
15:               jal          tp, 13b
16:               jal          ra, 23f
17:               jal          t1, 6b
18:               jal          s10, 11b
19:               jal          ra, 8b
20:               jal          ra, 16b
21:               jal          t1, 14b
22:               jal          t1, 19b
23:               srli         a5, a3, 24
main_20:          jal          t1, 19f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          ra, 20f
3:                jal          tp, 18f
4:                jal          s11, 6f
5:                jal          t1, 3b
6:                jal          t0, 17f
7:                jal          ra, 12f
8:                jal          t5, 5b
9:                jal          ra, 4b
10:               jal          ra, 13f
11:               jal          t6, 16f
12:               jal          ra, 21f
13:               jal          t4, 9b
14:               jal          ra, 2b
15:               jal          t1, 10b
16:               jal          ra, 15b
17:               jal          ra, 7b
18:               jal          ra, 14b
19:               jal          a1, 0b
20:               jal          a2, 11b
21:               auipc        t5, 144008
main_18:          jal          t1, 12f
0:                jal          t1, 9f
1:                jal          ra, 13f
2:                jal          ra, 15f
3:                jal          gp, 20f
4:                jal          ra, 10f
5:                jal          ra, 8f
6:                jal          t1, 3b
7:                jal          ra, 14f
8:                jal          ra, 0b
9:                jal          ra, 11f
10:               jal          t1, 18f
11:               jal          t1, 16f
12:               jal          s1, 17f
13:               jal          t2, 6b
14:               jal          t1, 1b
15:               jal          ra, 21f
16:               jal          ra, 19f
17:               jal          t1, 4b
18:               jal          ra, 7b
19:               jal          ra, 2b
20:               jal          ra, 5b
21:               sub          a5, s6, t0
main_16:          jal          t1, 7f
0:                jal          ra, 5f
1:                jal          ra, 2f
2:                jal          t0, 11f
3:                jal          t0, 10f
4:                jal          gp, 6f
5:                jal          gp, 8f
6:                jal          sp, 0b
7:                jal          ra, 3b
8:                jal          sp, 9f
9:                jal          ra, 1b
10:               jal          t1, 4b
11:               slli         a0, s5, 11
main_5:           jal          t1, 19f
0:                jal          t1, 12f
1:                jal          ra, 5f
2:                jal          t1, 22f
3:                jal          s1, 15f
4:                jal          t1, 2b
5:                jal          tp, 14f
6:                jal          ra, 21f
7:                jal          t1, 16f
8:                jal          t5, 4b
9:                jal          ra, 7b
10:               jal          t1, 1b
11:               jal          a2, 17f
12:               jal          a3, 9b
13:               jal          ra, 0b
14:               jal          ra, 18f
15:               jal          s4, 6b
16:               jal          s2, 8b
17:               jal          ra, 3b
18:               jal          ra, 13b
19:               jal          a4, 20f
20:               jal          t1, 11b
21:               jal          ra, 10b
22:               srl          s2, s5, s0
main_14:          jal          t1, 9f
0:                jal          a0, 12f
1:                jal          ra, 8f
2:                jal          t6, 15f
3:                jal          ra, 1b
4:                jal          t0, 10f
5:                jal          s11, 4b
6:                jal          ra, 13f
7:                jal          s5, 18f
8:                jal          ra, 2b
9:                jal          t1, 5b
10:               jal          a1, 17f
11:               jal          ra, 6b
12:               jal          t1, 11b
13:               jal          t1, 7b
14:               jal          t0, 3b
15:               jal          t1, 16f
16:               jal          s6, 0b
17:               jal          s3, 14b
18:               slli         s4, sp, 30
main_4:           jal          t1, 2f
0:                jal          ra, 23f
1:                jal          s3, 18f
2:                jal          t1, 19f
3:                jal          ra, 16f
4:                jal          t6, 9f
5:                jal          ra, 21f
6:                jal          ra, 11f
7:                jal          ra, 10f
8:                jal          ra, 12f
9:                jal          t4, 14f
10:               jal          t1, 17f
11:               jal          ra, 3b
12:               jal          t5, 24f
13:               jal          ra, 22f
14:               jal          ra, 7b
15:               jal          t4, 8b
16:               jal          a6, 15b
17:               jal          ra, 1b
18:               jal          ra, 0b
19:               jal          t1, 4b
20:               jal          ra, 6b
21:               jal          gp, 20b
22:               jal          t1, 5b
23:               jal          ra, 13b
24:               nop
                  sub          a3, t5, s5
                  sltu         ra, s3, a7
                  slti         a5, s9, 1526
                  andi         sp, s6, 1521
                  slt          a2, t4, zero
                  slli         s3, s1, 24
                  sltiu        s0, s7, -1146
                  bge          s11, s5, 20f
                  andi         t1, s9, -844
                  bltu         s2, s9, 16f
                  srli         s3, s9, 11
                  sll          sp, t5, t6
                  addi         s3, s1, -1511
                  slt          s11, a3, a4
                  bltu         t6, t3, 31f
                  sub          s1, s2, t0
16:               lui          ra, 290037
                  slti         s11, a5, -2016
                  xori         a6, s6, 1203
                  xori         a4, s0, -559
20:               beq          t6, a7, 30f
                  beq          ra, t6, 25f
                  sltiu        a4, s11, 935
                  bne          s7, a4, 35f
                  bgeu         t4, a6, 41f
25:               xor          sp, a6, a2
                  sub          sp, ra, sp
                  bltu         t1, s9, 33f
                  blt          a0, s5, 39f
                  srli         zero, t4, 21
30:               sltu         s2, t5, tp
31:               slli         t1, a6, 24
                  sll          t1, t3, a0
33:               auipc        a2, 77197
                  sltu         a3, s5, tp
35:               srl          a6, a3, s11
                  sra          s1, a6, t0
                  and          zero, s4, a5
                  srli         a1, s8, 10
39:               addi         s6, s6, 1624
                  sltu         a6, ra, a7
41:               xori         s0, zero, 690
                  sltiu        a6, s1, -865
                  xori         s10, s6, 517
                  slli         s6, t2, 18
                  and          tp, tp, a5
                  addi         s0, sp, -1480
                  or           s6, a0, t2
                  sra          s11, s1, s0
                  andi         t4, t0, -1010
                  blt          t6, gp, 57f
                  bgeu         s1, s6, 54f
                  bge          a6, t3, 71f
                  slti         s7, gp, 1581
54:               slli         s3, s7, 15
                  slli         s7, t4, 11
                  sltu         tp, s9, s11
57:               lui          s10, 783685
                  bge          zero, zero, 64f
                  beq          a7, gp, 60f
60:               and          s10, a6, sp
                  slti         s3, s7, 147
                  sltiu        s4, s1, -1196
                  xor          a5, s4, a6
64:               srai         t5, ra, 11
                  blt          s7, s11, 76f
                  sub          t0, s0, a3
                  sub          s10, sp, t4
                  bgeu         s3, a5, 82f
                  xori         s3, s5, 1096
                  sltiu        ra, t5, -398
71:               bne          t2, gp, 77f
                  beq          s4, t2, 89f
                  bltu         zero, a6, 80f
                  sub          s6, zero, a5
                  lui          s11, 1034001
76:               bge          a1, zero, 95f
77:               and          a1, a2, s2
                  xor          gp, t3, a5
                  sltiu        a5, t5, -351
80:               sltiu        s3, s4, -1245
                  srai         a5, sp, 23
82:               auipc        t5, 881172
                  andi         s4, t6, 1355
                  and          sp, a6, s3
                  bge          s3, s3, 100f
                  srl          s1, s2, a7
                  srli         a1, s11, 23
                  andi         a2, t1, -1561
89:               blt          sp, s8, 97f
                  xor          t6, gp, s9
                  addi         sp, a2, -407
                  slt          s7, t2, a1
                  bge          a2, zero, 103f
                  and          a0, t5, t4
95:               ori          tp, a0, -1164
                  sll          s3, s2, t5
97:               bltu         gp, a0, 110f
                  srli         s4, a4, 13
                  xor          t3, a1, a2
100:              addi         s2, zero, -241
                  bge          s8, s4, 104f
                  addi         s7, t4, 1658
103:              auipc        a4, 257101
104:              andi         t1, s11, -871
                  bltu         s6, t2, 112f
                  bge          s5, t2, 120f
                  slt          a5, a1, t2
                  nop
                  beq          t4, t4, 115f
110:              nop
                  slli         a1, t1, 5
112:              lui          s1, 542385
                  bgeu         a4, s7, 124f
                  srai         s3, a2, 27
115:              blt          t4, s2, 119f
                  bne          t0, t6, 119f
                  sltiu        a5, t4, 254
                  bne          a4, s0, 119f
119:              slli         s7, zero, 23
120:              andi         a5, t4, -553
                  bgeu         s6, t1, 127f
                  nop
                  bne          s9, s6, 133f
124:              slti         t3, a3, -695
                  add          a4, s2, t1
                  srli         t4, t4, 27
127:              sltu         t5, s8, a1
                  slli         a1, s4, 8
                  nop
                  beq          t2, sp, 138f
                  bltu         a0, t1, 142f
                  blt          t6, s8, 144f
133:              sltiu        a5, t0, -476
                  blt          s6, s2, 151f
                  ori          s5, a3, 1181
                  or           a3, a1, a5
                  sll          a5, a7, s2
138:              slt          s3, a4, a0
                  addi         ra, a0, 663
                  sltu         a2, a5, s10
                  slli         t3, t6, 31
142:              bltu         t2, a4, 157f
                  lui          gp, 899643
144:              lui          a2, 705718
                  sll          s4, gp, gp
                  andi         t3, sp, 379
                  sll          s5, s4, s0
                  slti         t2, a6, -1923
                  srai         s5, s10, 7
                  nop
151:              bgeu         a2, s2, 162f
                  sra          a4, sp, a1
                  bgeu         s8, gp, 157f
                  xor          t3, a1, t1
                  slli         s5, s5, 5
                  lui          a3, 234309
157:              sub          a1, a5, s6
                  bltu         s1, a5, 164f
                  ori          s0, t5, 1490
                  addi         a5, ra, -1372
                  srai         a0, t1, 26
162:              sltiu        s6, sp, 660
                  sub          t6, s6, s10
164:              add          s2, a4, a6
                  slli         a6, t0, 7
                  bne          a2, a3, 183f
                  srl          tp, sp, a2
                  bgeu         a6, a6, 175f
                  nop
                  slt          a1, s5, a2
                  bge          s4, s5, 184f
                  lui          a3, 254266
                  xor          t1, s6, s11
                  sra          zero, t3, s1
175:              slti         ra, t4, -6
                  slli         t1, a6, 23
                  srli         t1, s2, 13
                  add          s1, a0, gp
                  bgeu         ra, s4, 192f
                  slti         a5, s11, -523
                  ori          tp, a6, -551
                  bne          s6, t5, 189f
183:              bltu         t6, s1, 193f
184:              slt          a3, a6, a2
                  sub          s3, s9, t3
                  sra          a6, s4, t0
                  srli         s11, s9, 17
                  andi         t0, s10, -467
189:              blt          a2, s11, 195f
                  xori         a5, s5, 1153
                  addi         s7, t0, 1299
192:              sltu         sp, a7, a2
193:              sltiu        s6, t5, -990
                  xori         s1, t5, 705
195:              ori          s11, t2, -1548
                  beq          t0, s10, 210f
                  slt          a6, a7, s11
                  srli         s2, a0, 9
                  slt          t6, s3, t3
                  lui          s7, 978733
                  xori         a1, tp, -236
                  or           s6, s7, t5
                  srli         tp, t3, 26
                  blt          s8, s8, 207f
                  sll          t0, t4, a7
                  sub          a2, a5, a5
207:              and          s10, t4, s3
                  bltu         a7, s9, 219f
                  beq          s0, gp, 223f
210:              blt          a0, gp, 216f
                  sll          a1, a4, ra
                  xor          t3, a0, s8
                  lui          s1, 369129
                  sltiu        s4, t3, 1151
                  srli         s5, t5, 26
216:              sra          zero, t6, t1
                  slti         s1, sp, 605
                  sra          t1, ra, gp
219:              ori          a3, s6, -1294
                  addi         t5, t3, 702
                  srai         a1, zero, 3
                  andi         tp, s5, -1119
223:              sltiu        sp, a0, -210
                  srl          ra, s3, zero
                  and          t3, s6, t0
                  ori          s7, a4, -1960
                  add          s2, sp, t6
                  and          s2, a7, a1
                  lui          sp, 609934
                  sltu         a0, a3, gp
                  srai         a1, s1, 5
                  auipc        tp, 663534
                  sll          s11, gp, s10
                  bltu         t1, a6, 253f
                  bge          s4, a0, 242f
                  xor          a4, s0, s1
                  srl          s6, tp, s4
                  slti         ra, a4, 2027
                  bne          a4, t1, 246f
                  bgeu         tp, s9, 259f
                  slti         sp, a0, -561
main_6:           jal          t1, 19f
0:                jal          t1, 16f
1:                jal          ra, 23f
2:                jal          gp, 24f
3:                jal          t2, 9f
4:                jal          ra, 12f
5:                jal          a2, 21f
6:                jal          ra, 5b
7:                jal          ra, 6b
8:                jal          ra, 15f
9:                jal          ra, 20f
10:               jal          ra, 11f
11:               jal          t6, 13f
12:               jal          t1, 10b
13:               jal          ra, 3b
14:               jal          ra, 2b
15:               jal          ra, 22f
16:               jal          t1, 26f
17:               jal          ra, 8b
18:               jal          ra, 14b
19:               jal          s4, 17b
20:               jal          s10, 7b
21:               jal          ra, 0b
22:               jal          ra, 18b
23:               jal          s3, 4b
24:               jal          a2, 25f
25:               jal          ra, 1b
26:               srai         t4, gp, 1
242:              xor          a5, s0, s3
                  sra          a2, s7, t2
                  slti         s6, t2, 1046
                  sltu         s4, t4, s8
246:              sra          s0, a1, t2
                  sltu         zero, t6, a0
                  bne          a1, s2, 265f
                  lui          zero, 337930
                  nop
                  auipc        a6, 498229
                  srai         s1, s8, 8
253:              and          t3, t3, s8
                  bltu         s8, t1, 258f
                  or           t4, a6, a3
                  slti         s4, t4, -1472
                  add          s1, t0, s10
258:              bge          s5, t6, 265f
259:              bge          t2, s2, 270f
                  srli         s1, gp, 7
                  xori         s3, s5, -755
                  and          t3, s4, a5
                  slt          s10, ra, s6
                  xori         s3, sp, 1828
265:              sub          s10, a2, a7
                  bge          s1, a3, 272f
                  nop
                  andi         gp, s10, 635
                  sll          t6, s0, a5
270:              xori         s7, s4, -1261
                  auipc        s11, 898489
272:              bltu         a1, sp, 287f
                  ori          ra, t4, 1783
                  addi         t1, s1, 1667
                  lui          s5, 251271
                  blt          s1, a0, 283f
                  slli         s3, a7, 26
                  sltiu        a6, s1, 1474
                  bgeu         gp, t4, 280f
280:              or           a0, s7, s1
                  sll          s7, t1, s3
                  blt          a2, a2, 293f
283:              and          t1, s0, s4
                  slti         a1, a4, -1639
                  slt          t4, a7, a3
                  nop
287:              slli         t2, s7, 10
                  andi         gp, a6, -261
                  or           s7, s2, s11
                  ori          s4, a2, -536
                  sltiu        s5, ra, 628
                  bltu         a4, a0, 303f
293:              nop
                  add          s11, gp, t6
                  and          s11, s4, tp
                  nop
                  auipc        s0, 148943
                  andi         t6, gp, -190
                  blt          s9, s5, 306f
                  beq          a0, s0, 314f
                  ori          s0, s3, 1363
                  add          s4, s4, s6
303:              bne          sp, tp, 320f
                  nop
                  bgeu         a5, a5, 318f
306:              ori          t1, a6, -1475
                  addi         t1, a4, 1109
                  lui          s4, 833707
                  slli         a0, s1, 27
                  addi         a4, s11, 1810
                  addi         gp, sp, 1377
                  add          sp, s0, a4
                  srai         t5, a4, 8
314:              nop
                  slti         t4, s2, 1643
                  slt          a1, s9, t1
                  addi         a6, a5, 759
318:              addi         t0, a0, 1455
                  auipc        a4, 564146
320:              andi         t5, s6, -407
                  auipc        t3, 118149
                  slti         s10, a6, 242
                  slli         s4, s0, 17
                  bltu         tp, t3, 343f
                  andi         s4, s5, -643
                  sltiu        gp, ra, -1458
                  bltu         a5, sp, 335f
                  bgeu         a3, s4, 338f
                  bge          a4, a4, 335f
                  beq          a7, t2, 334f
                  sra          s6, s0, s6
                  slli         s2, t3, 15
                  bgeu         zero, t1, 337f
334:              srli         a6, a4, 10
335:              andi         s2, s6, -1160
                  or           s6, tp, s3
337:              srai         s3, zero, 18
338:              srai         s10, s9, 1
                  ori          t4, ra, 549
                  slti         s2, s0, -1016
                  srl          s10, a1, t6
                  sra          s7, s5, a3
343:              beq          t3, t4, 355f
                  sub          t3, a7, s10
                  beq          ra, s5, 359f
                  xori         a0, s10, -728
                  srl          t6, t6, a3
                  srli         ra, a6, 27
                  sltu         ra, s7, a0
                  add          a3, a6, s10
                  ori          t5, gp, 2030
                  addi         a2, ra, -128
                  sub          s10, a6, s1
                  andi         s3, s2, -1437
355:              beq          ra, t1, 368f
                  nop
                  slt          tp, s3, a4
                  slli         s6, t5, 30
359:              add          s4, t2, t1
                  sltiu        s1, a2, -1659
                  sra          s6, a0, t4
                  bge          tp, a3, 368f
                  ori          ra, s5, 961
                  lui          a3, 701628
                  auipc        s4, 310792
                  sub          a3, a4, t4
                  slti         s3, s1, -375
368:              sll          s10, sp, a7
                  srai         s11, s1, 18
                  or           zero, t6, s2
                  slt          a2, t1, zero
                  or           s7, s1, t2
                  and          a2, t6, zero
                  sltiu        t4, s10, -1185
                  bne          a4, t4, 385f
                  srli         s0, t1, 15
                  sra          s10, a1, s8
                  bltu         t5, a4, 384f
                  xor          s3, s8, a0
                  beq          t4, s9, 399f
                  bltu         s11, t6, 398f
                  or           ra, s0, s6
                  slt          s5, a7, zero
384:              bge          t2, a5, 387f
385:              xori         s4, a1, 2013
                  blt          sp, t2, 389f
387:              bne          t6, ra, 394f
                  bltu         s11, t2, 405f
389:              add          s0, s1, a5
                  blt          a0, a4, 402f
                  andi         s0, a5, -1722
                  bge          a4, t2, 399f
                  sltiu        s5, s9, -790
394:              sltiu        s5, t0, 1726
                  beq          a0, a7, 403f
                  sltiu        t5, s6, 1031
                  addi         s1, t2, 656
398:              xor          s1, s9, s11
399:              bne          s3, s10, 400f
400:              or           a2, a4, s8
                  ori          a1, gp, 2000
402:              sra          s6, zero, ra
403:              sltu         s0, s5, a0
                  xor          t5, s11, a3
405:              bltu         t2, t0, 418f
                  addi         s3, t5, 409
                  bge          s5, t6, 418f
                  sll          zero, s7, t1
                  bge          a5, t3, 419f
                  sra          a4, t3, t5
                  bgeu         a1, a7, 417f
                  nop
                  slt          s11, ra, s1
                  slti         s1, t5, -874
                  blt          s2, s11, 419f
                  bltu         tp, a5, 431f
417:              addi         s2, t5, 26
418:              bltu         s11, t3, 437f
419:              bge          zero, s3, 436f
                  nop
                  sltiu        ra, a2, 1236
                  bge          s0, s2, 433f
                  add          a5, zero, t1
                  slt          sp, s7, gp
                  auipc        t3, 520425
                  lui          t3, 669928
                  srl          t2, zero, s2
                  andi         t1, a0, -639
                  andi         a3, t3, 1718
                  bne          s0, s4, 436f
431:              slt          ra, sp, t3
                  blt          t4, a7, 435f
433:              bne          t0, t1, 437f
                  srli         s10, s3, 2
435:              or           s11, s7, gp
436:              xor          t5, s6, s1
437:              sra          s7, gp, a0
                  bge          tp, t3, 452f
                  blt          s5, s5, 446f
                  slt          t2, s4, zero
                  addi         ra, tp, -1540
                  addi         s10, a5, 11
                  sltu         s7, a0, a3
                  sra          s0, gp, s9
                  ori          t6, t0, -510
446:              srli         t4, s8, 20
                  auipc        zero, 69053
                  beq          t6, s10, 455f
                  sltu         s3, a0, t1
                  andi         zero, sp, -1975
                  sra          s2, t2, a5
452:              slli         a5, tp, 26
                  nop
                  bltu         s7, sp, 465f
455:              ori          tp, t0, -1927
                  bgeu         a2, t4, 462f
                  bltu         t6, s4, 474f
                  srl          s0, s7, s0
                  add          a0, t0, s7
                  sltiu        t2, s11, -234
                  bge          a3, s11, 478f
462:              bgeu         s5, s3, 468f
                  bge          tp, zero, 482f
                  beq          s4, s8, 478f
465:              bgeu         s5, s1, 472f
                  and          a5, tp, s1
                  bge          a4, t5, 480f
468:              sra          s2, t4, s6
                  bge          s8, s9, 472f
                  sltu         t5, s3, s2
                  ori          gp, tp, -1947
472:              and          t0, s6, t0
                  sltu         t2, a0, s10
474:              lui          a6, 923271
                  addi         tp, s5, -2022
                  bltu         a4, s10, 486f
                  lui          t2, 390764
478:              srai         a2, s3, 5
                  bge          t4, t3, 489f
480:              xor          t6, t5, a7
                  ori          t5, s6, 1647
482:              ori          s0, s5, 775
                  blt          a5, t4, 493f
                  bne          s6, sp, 496f
                  or           s0, s4, ra
486:              beq          t0, a5, 493f
                  sra          s11, s10, s9
                  sltu         s0, ra, s10
489:              srai         t3, t0, 26
                  ori          sp, a5, 1346
                  srai         a2, zero, 3
                  bltu         a3, a6, 511f
493:              srai         t4, s7, 16
                  bne          s11, t5, 502f
                  bgeu         t0, s10, 501f
496:              xor          a5, s11, a6
                  sll          s11, ra, s6
                  sub          t2, a3, a0
                  bne          a1, t0, 513f
                  sll          t0, t2, a1
501:              nop
502:              addi         sp, s10, -1213
                  sltiu        s3, s9, 1558
                  nop
                  nop
                  sub          s0, t3, t4
                  xori         s3, s8, 1540
                  ori          s3, t1, 699
                  sltu         s1, s6, s0
                  or           gp, a6, gp
511:              srai         s6, t4, 12
                  bgeu         s0, s10, 513f
513:              bge          a2, s0, 532f
                  andi         s11, a0, 718
                  sltiu        s11, zero, -37
                  add          s10, s3, t1
                  bge          sp, a0, 528f
                  add          zero, a5, tp
                  slti         a6, s7, -1760
                  nop
                  bltu         s9, zero, 528f
                  addi         a3, t0, -1995
                  ori          zero, t2, -668
                  auipc        s10, 274820
                  bne          a3, t5, 529f
                  xori         s10, s8, 1295
                  andi         a5, t5, 1123
528:              slt          t6, a4, a3
529:              slt          s7, s7, s2
                  sra          s6, s7, s6
                  sltiu        s6, gp, -47
532:              lui          s5, 607836
                  nop
                  andi         s0, a6, 1711
                  slt          sp, s9, t1
                  sltiu        t2, ra, -1249
                  andi         s10, a5, -1361
                  auipc        a3, 956134
                  andi         a3, s11, 1184
                  sub          t1, gp, zero
                  sub          gp, t0, a1
                  sltu         s1, s7, a1
                  sltu         s3, s5, s2
                  or           s2, a0, a6
                  slti         s5, s4, 1353
                  lui          a4, 267222
                  and          s6, ra, t2
                  sltiu        s11, t4, 1829
                  sll          s10, t6, a1
                  xor          sp, t1, tp
                  or           t4, sp, s4
                  blt          s3, tp, 569f
                  auipc        s4, 951471
main_2:           jal          t1, 18f
0:                jal          ra, 14f
1:                jal          ra, 27f
2:                jal          ra, 13f
3:                jal          t1, 6f
4:                jal          ra, 1b
5:                jal          t1, 26f
6:                jal          ra, 9f
7:                jal          gp, 3b
8:                jal          ra, 15f
9:                jal          s0, 2b
10:               jal          ra, 23f
11:               jal          ra, 7b
12:               jal          ra, 17f
13:               jal          s6, 22f
14:               jal          s3, 10b
15:               jal          ra, 11b
16:               jal          ra, 20f
17:               jal          ra, 28f
18:               jal          ra, 8b
19:               jal          t2, 12b
20:               jal          ra, 4b
21:               jal          t0, 5b
22:               jal          t1, 16b
23:               jal          ra, 21b
24:               jal          t1, 0b
25:               jal          ra, 24b
26:               jal          ra, 19b
27:               jal          t1, 25b
28:               addi         s6, s4, 1000
                  lui          s3, 192440
                  or           t3, gp, a3
                  bltu         t3, s3, 573f
                  bltu         t2, s11, 571f
                  sll          t0, t6, t2
                  add          t5, zero, a5
                  andi         t5, a5, -426
                  srai         s7, s7, 19
                  beq          a3, a7, 566f
                  srai         s11, a6, 24
                  addi         a6, s0, 875
                  xor          s2, t5, s1
566:              and          a6, a1, s8
                  bgeu         ra, s11, 573f
                  xori         s2, s2, -289
569:              bgeu         a1, s11, 572f
                  sub          s1, tp, a5
571:              sltiu        s5, s1, 1164
572:              srai         s0, a4, 3
573:              srli         a3, s10, 14
                  srai         s2, gp, 15
                  bge          s7, gp, 588f
                  slti         t0, a2, -221
                  srai         a2, a1, 3
                  sltu         a6, a6, t4
                  slt          t5, gp, s11
                  addi         s3, a6, 1244
                  blt          a4, t5, 592f
                  addi         sp, ra, 1153
                  bne          s6, s11, 586f
                  srl          t0, a6, s8
                  bgeu         a3, s2, 596f
586:              or           s7, a4, s8
                  auipc        t2, 183448
588:              sra          s4, s1, t5
                  bgeu         t6, t5, 595f
                  bltu         t2, t3, 603f
                  lui          a3, 1036903
592:              ori          t4, gp, 225
                  bgeu         s3, t2, 610f
                  blt          t4, s1, 601f
595:              slti         s6, s5, -1942
596:              srli         tp, s2, 31
                  lui          s6, 940279
                  bge          s2, t5, 604f
                  slt          t2, s6, a2
                  ori          t0, a1, 157
601:              bge          a7, s11, 616f
                  or           zero, s3, s6
603:              slt          s2, a0, s0
604:              sra          s3, gp, s9
                  ori          t4, sp, 1305
                  sltu         a5, gp, ra
                  sll          a1, s3, s6
                  srai         a0, t3, 7
                  addi         s10, s3, 401
610:              beq          s1, gp, 617f
                  bltu         s7, t4, 615f
                  lui          t2, 68453
                  andi         t0, sp, 783
                  sub          a3, a5, s6
615:              xor          s7, a5, sp
616:              slt          s0, s1, tp
617:              xori         t2, sp, 1751
                  addi         t6, t5, -342
                  beq          a5, t1, 636f
                  slt          ra, ra, t2
                  andi         s11, t1, -30
                  sll          s4, s11, t2
                  sra          t5, t6, a7
                  sub          s10, t1, s9
                  auipc        s11, 997602
                  nop
                  addi         s0, a4, -1029
                  sra          t1, t2, t0
                  sll          t6, s10, t6
                  and          ra, sp, a3
                  add          s0, s11, ra
                  bge          a4, sp, 638f
                  slli         s2, t0, 24
                  sltu         s2, s8, gp
                  auipc        s11, 117222
636:              auipc        s6, 879512
                  blt          s4, t3, 647f
638:              beq          t5, a6, 653f
                  srli         t4, a7, 5
                  slti         a1, t6, -770
                  lui          s10, 147995
                  srli         a2, a1, 14
                  blt          zero, t2, 644f
644:              srl          s10, gp, t4
                  bgeu         tp, s1, 656f
                  sra          s5, s5, s3
647:              srai         a3, s10, 18
                  auipc        a6, 1013570
                  auipc        zero, 731825
                  slti         a1, a3, -1337
                  bltu         s11, s4, 661f
                  sub          s10, zero, t1
653:              sra          a1, s3, zero
                  slti         t2, a2, -1497
                  and          s3, t1, t1
main_21:          jal          t1, 9f
0:                jal          ra, 19f
1:                jal          t2, 8f
2:                jal          ra, 18f
3:                jal          ra, 13f
4:                jal          t1, 5f
5:                jal          t1, 1b
6:                jal          ra, 20f
7:                jal          s1, 0b
8:                jal          t1, 14f
9:                jal          t0, 17f
10:               jal          ra, 21f
11:               jal          ra, 12f
12:               jal          s11, 15f
13:               jal          t1, 11b
14:               jal          ra, 3b
15:               jal          ra, 16f
16:               jal          t6, 2b
17:               jal          ra, 6b
18:               jal          ra, 7b
19:               jal          tp, 10b
20:               jal          ra, 4b
21:               slli         a6, s5, 19
656:              bge          a7, t2, 670f
                  srli         tp, s2, 14
                  xor          a5, t0, a7
                  xori         s4, a7, 1659
                  sltiu        s3, a2, -1692
661:              bgeu         s6, s7, 668f
                  slli         ra, a4, 9
                  beq          ra, t5, 666f
                  sltiu        s3, s5, 140
                  sltiu        s3, s9, 1637
666:              and          a6, t2, a2
                  nop
668:              andi         t6, t3, 1135
                  slt          zero, t4, t3
670:              addi         a4, gp, -1056
                  andi         s1, t0, -148
main_10:          jal          t1, 23f
0:                jal          ra, 1f
1:                jal          ra, 14f
2:                jal          s6, 29f
3:                jal          ra, 12f
4:                jal          s11, 20f
5:                jal          t1, 17f
6:                jal          t1, 22f
7:                jal          ra, 0b
8:                jal          ra, 18f
9:                jal          t1, 21f
10:               jal          tp, 16f
11:               jal          ra, 25f
12:               jal          s3, 13f
13:               jal          t1, 2b
14:               jal          ra, 8b
15:               jal          a6, 3b
16:               jal          ra, 19f
17:               jal          a2, 30f
18:               jal          t1, 5b
19:               jal          ra, 11b
20:               jal          ra, 28f
21:               jal          ra, 15b
22:               jal          s11, 10b
23:               jal          ra, 9b
24:               jal          t1, 27f
25:               jal          ra, 26f
26:               jal          ra, 4b
27:               jal          s0, 7b
28:               jal          ra, 24b
29:               jal          ra, 6b
30:               addi         a4, s0, -1418
                  slti         t3, s0, -1001
                  slli         a1, gp, 19
                  bltu         a5, s10, 693f
                  sll          a6, a1, s7
                  sra          s0, t2, a0
                  and          t6, a4, a5
                  slli         s2, t3, 12
                  beq          s0, a5, 685f
                  blt          s0, a1, 693f
                  nop
                  sltu         s7, t1, t5
                  srai         s6, t5, 0
                  bge          s8, s9, 690f
685:              nop
                  or           a6, t3, ra
                  add          t5, a0, t2
                  sra          a1, s4, gp
                  nop
690:              sra          s1, s2, t3
                  slli         a4, a3, 22
                  sltu         a0, a6, s1
693:              sltiu        s3, a4, 610
                  sltiu        t5, t5, 1124
                  blt          s10, t4, 703f
                  srai         a1, t1, 4
                  sub          t5, a6, t2
                  or           a2, s8, s5
                  srl          a2, s5, s11
                  slti         s2, a6, 1066
                  sra          a2, sp, tp
                  sra          t3, a4, s10
703:              and          ra, a5, t5
                  auipc        t1, 757500
                  auipc        s3, 349899
                  sltiu        t1, ra, 1183
                  sltu         s5, s10, t1
                  addi         s3, a5, 226
                  srai         sp, s10, 19
                  beq          a6, s6, 713f
                  bltu         s9, s10, 723f
                  xori         s5, s7, -2036
713:              bge          t2, t1, 720f
                  xor          s11, ra, t6
                  bltu         s0, s8, 719f
                  xor          s7, a1, s2
                  beq          t2, t6, 734f
                  bltu         s9, t1, 732f
719:              add          sp, t0, s4
720:              xor          sp, t0, s2
                  slt          s6, s5, a1
                  sltu         a2, a0, s0
723:              sltu         t4, s4, a0
                  bne          s9, s2, 741f
                  sltiu        zero, a2, 866
                  sltu         a4, a5, s7
                  srai         t5, t5, 23
                  add          ra, s6, t0
                  bltu         a5, a7, 736f
                  bne          gp, a7, 741f
                  addi         zero, zero, 872
732:              or           a5, t5, s6
                  sub          a0, a5, s8
734:              sll          gp, t0, a1
                  andi         s11, s11, -1669
736:              beq          ra, s5, 749f
                  srai         a2, a3, 17
                  sltu         a5, s11, s1
                  srai         s6, s9, 19
                  andi         t2, s4, -861
741:              bge          a1, t2, 748f
                  bne          t2, s5, 761f
                  lui          tp, 571493
                  xori         t0, zero, 820
                  sub          s2, s1, zero
                  sltiu        sp, a3, -1076
                  auipc        t3, 538892
748:              xor          a1, a1, a0
749:              xori         t1, t5, 1269
                  srl          a1, t5, t2
                  addi         s3, s8, -1666
                  xor          s5, a0, t2
                  sltu         t2, a1, t5
                  ori          t6, zero, -922
                  slli         a4, a7, 25
                  xor          s0, s6, gp
                  sll          a3, a2, t2
                  srli         t6, s7, 29
                  srai         a3, gp, 29
                  lui          s10, 226284
761:              add          s10, s3, a1
                  bne          s5, s2, 768f
                  ori          a6, t4, -1449
                  slt          s2, a7, t4
                  sltiu        a6, a3, -1270
                  sub          t2, a0, a3
                  lui          a1, 504905
768:              bltu         t1, t2, 779f
                  srai         t1, s6, 13
                  sra          s6, sp, s9
                  sll          t0, s1, a0
                  sll          tp, s6, s7
                  sltu         t2, a4, t4
                  auipc        zero, 810875
                  beq          ra, t3, 792f
                  addi         s4, a3, -1187
                  nop
                  lui          a2, 772783
779:              bne          s8, t0, 786f
                  addi         gp, a3, -1937
                  beq          a7, s5, 791f
                  slli         s11, ra, 23
                  srl          t1, a3, a7
                  srl          t2, t1, s1
                  lui          a5, 549932
786:              sub          a4, s2, s2
                  xori         s7, t5, 733
                  xor          t3, t1, a1
                  sltiu        a5, s7, 1766
                  addi         a2, s10, -924
791:              sll          t2, s0, t1
792:              or           a3, t0, t6
                  xori         s1, a3, 741
                  srli         a1, sp, 19
                  bge          t2, s0, 806f
                  bne          a4, a3, 803f
                  blt          s8, a0, 801f
                  and          t3, a5, a1
                  xor          t6, a3, a7
                  add          t6, a4, s7
801:              bge          s1, a4, 811f
                  auipc        s10, 275360
803:              srli         s5, t1, 26
                  and          a4, ra, t2
                  bne          tp, a0, 824f
806:              bge          ra, s2, 821f
                  nop
                  sll          ra, s6, a4
                  slti         t2, s10, 41
                  sra          t4, s11, t0
811:              sltu         tp, a0, a0
                  bgeu         a7, s5, 825f
                  slli         s11, s0, 16
                  auipc        a0, 725731
                  bltu         s2, t3, 818f
                  sub          s0, s3, a4
                  beq          a2, s1, 821f
818:              srai         a1, s8, 7
                  add          a3, s3, s3
                  auipc        a0, 788615
821:              bge          t0, s11, 835f
                  add          a4, t1, t5
                  sra          s4, t5, a0
824:              or           s5, a2, a1
825:              xori         s4, s8, -26
                  auipc        s3, 872895
                  ori          t5, s11, -1505
                  srai         t5, s11, 3
                  sra          tp, a6, s3
                  sub          s3, t6, a3
                  bne          a2, a6, 850f
                  andi         s5, s1, -1359
                  bgeu         t4, s6, 846f
                  sltu         s0, s8, s8
835:              nop
                  slt          a4, ra, zero
                  nop
                  slti         ra, t5, -117
                  sub          s10, s0, a2
                  addi         t5, s2, 1164
                  sub          s0, s6, s2
                  slt          t0, s4, zero
                  slt          a2, t1, tp
                  slti         s10, s10, -563
                  lui          t5, 902321
846:              sltiu        s4, s2, 1739
                  and          a4, s0, gp
                  andi         s11, s5, 1047
                  xori         ra, a2, -749
850:              srai         zero, a4, 1
                  xori         s11, ra, 200
                  or           t2, s2, t5
                  nop
                  srai         s0, s3, 29
                  addi         t4, t6, -174
                  slli         a0, a0, 29
                  slli         zero, sp, 10
                  bge          zero, a4, 870f
                  ori          s5, sp, -1387
                  auipc        s1, 651075
                  beq          s3, s10, 864f
                  bge          s4, gp, 873f
                  sltu         a0, s3, gp
864:              bne          s8, s8, 872f
                  lui          s7, 63591
                  ori          a2, a6, 1009
                  srl          tp, s11, a7
                  beq          s10, t0, 874f
                  or           zero, sp, s6
870:              xori         s11, a7, 509
                  bge          s11, t2, 885f
872:              sltiu        sp, t1, 1677
873:              addi         s2, s11, 589
874:              srli         s5, s10, 19
                  lui          s3, 46277
                  lui          s11, 156713
                  slti         s4, s7, 839
                  sltu         a3, a2, s10
                  slti         zero, s11, 944
                  sub          a5, s0, t6
                  add          s10, zero, s8
                  srai         t6, s11, 28
                  xori         tp, s3, 210
                  slti         t0, gp, 1016
885:              srl          tp, a5, s5
                  bne          tp, s8, 892f
                  slt          s3, t1, s5
                  sub          a5, s0, t0
                  lui          s2, 377967
                  sltiu        t6, s6, 1872
                  nop
892:              slt          t1, s4, s7
                  srl          a5, s2, ra
                  nop
                  sltu         t3, a1, t3
                  and          s7, t4, a6
                  slti         s10, zero, -1366
                  xori         a4, t1, -1850
                  bltu         s11, t1, 905f
                  xor          ra, s8, s11
                  slli         s4, s5, 3
                  beq          a1, zero, 913f
                  sltu         s5, a3, s7
                  auipc        t1, 731813
905:              and          t0, s1, gp
                  and          t6, s8, zero
                  beq          a5, tp, 924f
                  slti         t5, a5, -1273
                  lui          a0, 872040
                  sll          s7, a3, s1
                  xori         ra, t6, -977
                  sltu         t0, s6, s7
913:              and          a1, s11, a4
                  bltu         s7, zero, 915f
915:              sltu         a6, tp, a2
                  slti         a1, gp, 1451
                  addi         t6, zero, -363
                  bltu         t0, a3, 924f
                  sltu         t0, sp, t6
                  and          a2, s5, zero
                  nop
                  blt          t4, s1, 929f
                  andi         s11, tp, -1242
924:              bge          s1, s8, 931f
                  xori         t4, gp, -1902
                  add          t5, t6, s11
                  sltiu        a4, t2, 817
                  or           tp, zero, s7
929:              and          a6, s8, a7
                  and          a6, s9, s5
931:              sltu         s2, s9, sp
                  srl          sp, s9, a5
                  andi         s3, s6, 531
                  slti         gp, a4, 49
                  xori         a4, s9, -1284
                  ori          t0, a6, -1501
                  bge          a6, t5, 954f
                  sltiu        s0, t0, 199
                  sltu         s11, t2, a1
                  bgeu         a5, a1, 947f
                  sub          a0, a2, s8
                  bge          sp, a2, 959f
                  or           s11, a7, s3
                  xori         a6, zero, -1051
                  slti         a1, a7, 276
                  auipc        s10, 480598
947:              sub          a1, t0, zero
                  srli         s3, t0, 9
                  slt          zero, a0, s8
                  blt          a6, a5, 965f
                  addi         s6, a2, -445
                  bltu         ra, tp, 956f
                  sub          t6, a5, s0
954:              add          a1, ra, a7
                  bltu         t2, t6, 958f
956:              srl          s2, tp, a2
                  add          s3, s9, t4
958:              or           s10, t3, s10
959:              blt          s8, a3, 966f
                  sll          s5, s1, s11
                  and          s11, t3, s4
                  bne          s2, s0, 970f
                  slt          a6, gp, t5
                  sltiu        a6, t5, 1475
965:              andi         t3, t3, -1742
966:              add          sp, t1, s4
                  bltu         a3, tp, 978f
                  sltu         s0, t2, a6
                  sll          s2, a4, a1
970:              sltu         s5, t3, t3
                  sra          t1, s3, s6
                  bgeu         s9, s2, 989f
                  xor          a0, t0, zero
                  xor          t5, s10, s1
                  srai         s7, a0, 5
                  bltu         t2, a6, 986f
                  sra          t0, s1, s10
978:              andi         ra, a2, 1733
                  srai         s11, a5, 27
                  bge          s4, a1, 991f
                  beq          a2, a2, 988f
                  beq          tp, a4, 996f
                  sra          sp, a6, gp
                  sra          t4, tp, t3
                  addi         s3, a2, -1149
986:              srai         s0, s9, 8
                  and          s1, t1, tp
988:              addi         s6, gp, -467
989:              xori         s10, a2, 1184
                  ori          t4, s11, 168
991:              slti         a1, a3, -1249
                  bgeu         s7, a3, 996f
                  add          s6, a2, s2
                  bgeu         s11, a4, 1013f
                  slti         s2, s0, 1146
996:              auipc        tp, 465594
                  beq          tp, a3, 1003f
                  beq          sp, a3, 1004f
                  bne          a3, ra, 1016f
                  lui          s5, 909869
                  srli         t1, a3, 19
                  srl          s2, a5, s7
1003:             sltiu        a3, s3, -148
1004:             slt          ra, a6, s1
                  blt          t6, s3, 1017f
                  blt          s1, a6, 1025f
                  srl          t3, s8, a5
                  nop
                  and          s3, a0, a4
                  srai         s6, a2, 14
                  andi         zero, s9, 403
                  nop
1013:             lui          zero, 288898
                  blt          s10, s0, 1021f
                  sll          s4, s6, a4
1016:             bge          s5, tp, 1026f
1017:             bltu         t4, t1, 1018f
1018:             bgeu         s7, s3, 1031f
                  bne          s8, s11, 1025f
                  bltu         ra, s5, 1026f
1021:             lui          a1, 837155
                  beq          t6, a1, 1035f
                  xor          s1, a7, t3
                  bgeu         t2, a3, 1038f
1025:             sltu         t6, t4, sp
1026:             sra          s7, s7, t0
                  sltu         ra, tp, s4
                  bne          a1, a2, 1031f
                  sltiu        s0, t1, 1340
                  sll          s4, t2, gp
1031:             sltu         a1, tp, s5
                  addi         a0, s7, 1378
                  slti         s5, t1, 801
                  auipc        zero, 356635
1035:             sll          s3, s7, s6
                  or           t2, s4, t0
                  auipc        s10, 147751
1038:             auipc        s6, 558170
                  addi         sp, a0, -321
                  lui          t0, 431544
                  beq          tp, a0, 1052f
                  beq          t0, t6, 1054f
                  sltiu        s6, s10, -720
                  beq          sp, a2, 1059f
                  sltiu        s10, t2, -1650
                  andi         a5, tp, 136
                  srai         t4, zero, 11
                  sltiu        t6, s7, -716
                  xori         t4, t2, -395
                  slli         t5, t6, 27
                  ori          s0, t4, -21
1052:             slti         s4, s10, -880
                  slli         sp, t6, 9
1054:             bltu         s0, sp, 1065f
                  ori          s11, sp, 1089
                  addi         zero, sp, 435
                  sll          t5, s11, s4
                  sra          t0, a4, ra
1059:             xori         a4, s3, -382
                  or           s5, s10, s1
                  xori         s3, s2, -213
                  srai         t5, s7, 2
                  ori          a5, tp, 587
                  xor          t6, a0, s5
1065:             lui          s0, 157451
                  sra          a3, t3, s3
                  xori         zero, t6, 1832
                  andi         a3, a2, 710
                  bgeu         a1, a6, 1086f
                  sub          s11, s0, s9
                  slt          s5, a1, a0
                  srli         s0, a4, 10
                  or           a4, t6, a6
                  bltu         s7, a5, 1082f
                  bne          s9, t4, 1081f
                  srl          t3, a4, a2
                  sra          t1, a7, t5
                  slli         a0, s5, 24
                  slli         s10, tp, 3
                  and          a3, t0, t0
1081:             and          a0, s4, t2
1082:             xor          a6, s1, a5
                  bgeu         t4, s6, 1090f
                  bne          a2, s2, 1097f
                  slt          a2, t1, a1
1086:             bgeu         ra, s5, 1097f
                  addi         s3, a7, -872
                  and          t5, a0, a6
                  sltiu        t6, a5, -1922
1090:             bne          t2, sp, 1093f
                  sltu         s7, a1, t0
                  andi         s0, s3, 262
1093:             ori          s7, s9, 1563
                  slti         ra, s2, -1205
                  slti         a5, s1, -876
                  sltu         zero, t5, a1
1097:             sltiu        s3, s4, 1962
                  andi         a4, t1, -2006
                  srli         a5, s10, 29
                  slli         a2, a5, 3
                  blt          a3, s10, 1120f
                  sltiu        t3, t0, 50
                  beq          tp, s2, 1109f
                  blt          s5, s10, 1121f
                  blt          a5, t0, 1109f
                  bne          t5, s10, 1112f
                  bne          a2, s7, 1114f
                  srai         t4, a1, 31
1109:             bgeu         t2, zero, 1128f
                  sltu         s4, t6, s10
                  blt          s6, a0, 1125f
1112:             beq          s2, s11, 1122f
                  bgeu         s4, a2, 1119f
1114:             add          a3, a6, a4
                  srli         gp, tp, 14
                  sub          gp, s9, a0
                  bgeu         tp, gp, 1134f
                  sltu         tp, a4, a2
1119:             nop
1120:             addi         s3, a4, -625
1121:             ori          s2, a3, -957
1122:             andi         a1, a0, 1219
                  bltu         s4, s4, 1134f
                  auipc        s1, 642333
1125:             xori         a6, s7, 1150
                  srl          s5, a0, zero
                  slti         tp, a2, 1511
1128:             xor          s3, s0, s8
                  sub          s6, s4, t4
                  srl          t6, t0, s9
                  sltu         ra, a7, a4
                  sltu         a0, t6, s7
                  beq          s7, t1, 1146f
1134:             or           ra, gp, s3
                  srai         a4, s6, 29
                  srl          s3, s2, s6
                  add          t6, a3, s0
                  srai         t3, gp, 17
                  slli         t5, s8, 13
                  slli         t2, t1, 21
                  xor          t6, a7, s1
                  ori          a1, t4, -529
                  blt          s7, s7, 1144f
1144:             andi         zero, t6, -254
                  blt          gp, s10, 1152f
1146:             sltu         a1, s2, zero
                  auipc        s3, 719504
                  xor          a6, t6, tp
                  bge          s2, a5, 1152f
                  ori          s7, a7, -1645
                  slli         a2, tp, 12
1152:             sltiu        s6, t3, -2021
                  srai         a6, s11, 25
                  sll          a6, a5, gp
                  beq          s3, a0, 1169f
                  sra          s10, a4, t2
                  and          zero, s2, t1
                  nop
                  slti         s4, a6, 375
                  addi         t3, gp, 1806
                  and          zero, a6, s9
                  auipc        a3, 443919
                  sltiu        zero, t0, 65
                  addi         a3, s5, 81
                  srai         a5, tp, 0
                  slti         s10, zero, -570
                  srl          s3, t2, tp
                  and          s2, s9, s0
1169:             blt          a6, t3, 1176f
                  beq          zero, zero, 1180f
                  sltu         t1, a5, s11
                  lui          s6, 18860
                  sll          t6, s10, s10
                  slti         ra, s0, -1791
                  sltu         a5, a4, s2
1176:             sub          tp, a6, tp
                  lui          t0, 579654
                  or           a2, t0, a0
                  bne          a1, t2, 1183f
1180:             bge          s11, a0, 1181f
1181:             auipc        s5, 21205
                  bge          s3, t3, 1201f
1183:             bne          a5, a5, 1189f
                  sltiu        s6, s3, 603
                  bltu         a1, a3, 1202f
                  sub          t3, s5, zero
                  add          a6, a1, s6
                  blt          s4, t1, 1194f
1189:             sub          t4, a3, s1
                  slli         t6, a0, 11
                  andi         t2, s11, 976
                  sra          t5, a1, s0
                  auipc        s11, 552062
1194:             sub          a3, s7, a3
                  sll          a1, gp, s6
                  add          t3, a2, a2
                  bge          t2, s11, 1208f
                  ori          s10, s9, 306
                  srl          s6, zero, s11
                  nop
1201:             bgeu         a7, s2, 1218f
1202:             xori         a2, gp, 1118
                  bge          s11, s1, 1207f
                  slti         s10, zero, 414
                  srai         s10, t0, 18
main_25:          jal          t1, 25f
0:                jal          ra, 7f
1:                jal          ra, 4f
2:                jal          tp, 13f
3:                jal          ra, 18f
4:                jal          ra, 11f
5:                jal          ra, 6f
6:                jal          t1, 3b
7:                jal          t6, 22f
8:                jal          ra, 16f
9:                jal          ra, 26f
10:               jal          t0, 9b
11:               jal          t1, 2b
12:               jal          t1, 0b
13:               jal          s1, 20f
14:               jal          t1, 23f
15:               jal          ra, 19f
16:               jal          s3, 12b
17:               jal          gp, 8b
18:               jal          ra, 17b
19:               jal          t1, 14b
20:               jal          ra, 10b
21:               jal          ra, 1b
22:               jal          gp, 15b
23:               jal          t1, 21b
24:               jal          ra, 5b
25:               jal          ra, 24b
26:               srl          s3, t6, t6
                  xor          t6, zero, t0
1207:             srl          t3, s7, a2
1208:             bne          a5, s0, 1227f
                  srli         s10, ra, 8
                  srai         s4, s3, 21
                  nop
                  and          t4, s10, s7
                  srai         t6, a1, 29
                  slt          s7, a2, s1
                  nop
                  or           t0, t4, a0
                  sub          s7, a2, zero
1218:             nop
                  add          a0, zero, s11
                  srai         a6, a3, 4
                  bne          ra, gp, 1227f
                  addi         t4, a2, -848
                  sub          t0, a3, s9
                  sub          a6, s9, t1
                  andi         s11, s8, -487
                  sra          a3, s2, a2
1227:             slli         t1, a5, 11
                  sltiu        a4, a5, 415
                  sltu         s10, t2, a3
                  srli         s7, s5, 10
                  bltu         s4, s7, 1248f
                  sll          s6, s4, sp
                  sub          t4, gp, tp
                  andi         t0, a0, -212
                  nop
                  sltiu        t2, a6, 717
                  bge          t1, a5, 1251f
                  srli         s2, s9, 0
                  and          s3, s8, s0
                  ori          s3, a7, 1189
                  xori         a5, t2, 180
                  nop
                  sll          s1, s2, sp
                  andi         gp, gp, 1891
                  sra          s4, sp, s8
                  ori          a1, s4, 1143
                  xor          s5, t2, tp
1248:             slt          s2, t1, s8
                  slti         t6, sp, -47
                  sltiu        t6, a6, -676
1251:             bne          s6, a3, 1264f
                  sub          s2, a3, zero
                  slli         sp, t2, 18
                  slli         a3, a0, 18
                  andi         t1, gp, -440
                  auipc        a6, 883750
                  xori         a3, s4, -1339
                  slt          a4, tp, a0
                  nop
                  srli         a5, t1, 6
                  sub          t5, zero, a1
                  beq          s9, a6, 1273f
                  blt          s6, a5, 1271f
1264:             sra          s7, a6, zero
                  blt          s5, s6, 1276f
                  slti         s5, s3, 1155
                  slli         s6, s11, 12
                  slli         t2, a6, 17
                  srl          gp, s6, sp
                  bltu         a1, a4, 1280f
1271:             beq          a0, s9, 1275f
                  slti         s2, t5, -1697
1273:             beq          s9, a6, 1276f
                  srai         s5, s11, 5
1275:             sltiu        s0, s7, -826
1276:             ori          s7, a3, 313
                  bne          a6, sp, 1284f
                  beq          a3, a2, 1290f
                  bge          t6, s6, 1294f
1280:             bne          t4, t5, 1293f
                  sra          a3, s9, t0
                  bgeu         s9, s10, 1289f
                  srai         s4, s9, 15
1284:             bge          s0, a0, 1287f
                  lui          s5, 435212
                  andi         a2, a5, 311
1287:             srli         s11, a1, 5
                  bge          tp, s10, 1295f
1289:             xor          t4, s7, a7
1290:             andi         s1, t6, 1757
                  add          t2, tp, a0
                  srl          t2, sp, s9
1293:             slti         t3, t3, -1498
1294:             lui          ra, 786480
1295:             srai         t4, t3, 28
                  bltu         a1, a3, 1306f
                  or           s1, gp, s6
                  add          a0, s0, s3
                  slti         s5, s2, -499
                  and          s1, s6, t2
                  slt          t4, s2, a3
                  bgeu         s5, s8, 1308f
                  sra          s11, gp, s2
                  andi         s2, a4, 2009
                  sltiu        s6, s8, -723
1306:             srai         s1, s9, 15
                  or           zero, s5, s10
1308:             nop
                  sub          zero, s7, a4
                  sra          zero, a1, s8
                  ori          t3, s7, -1567
                  add          t5, zero, a7
                  sub          s0, ra, s9
                  slli         s3, gp, 23
                  sll          ra, s6, s11
                  ori          t3, zero, -1485
                  sll          s6, a1, t3
                  sll          s4, gp, tp
                  beq          a0, s9, 1333f
                  sll          sp, a0, a1
                  slt          s11, zero, s9
                  bne          a0, s6, 1329f
                  la           s1, sub_1
                  xori         s11, s9, 1512
                  xor          a1, a7, s6
                  and          t0, t0, a1
                  add          s7, a5, t5
                  addi         s1, s1, -442
                  sub          tp, a2, s11
                  bgeu         s2, ra, main_j1 #branch to jump instr
                  slli         a0, s2, 6
                  srai         s11, t2, 30
                  and          t4, t2, gp
main_j1:          jalr         t1, s1, 442 #jump main -> sub_1
                  addi         zero, s1, -736
                  sltu         s0, s9, t6
                  blt          a3, tp, 1339f
                  lui          zero, 926973
                  beq          s10, t1, 1334f
                  andi         t1, a4, -1095
1329:             bne          zero, s1, 1335f
                  srai         s4, t0, 7
                  slli         s11, s6, 25
                  auipc        t6, 109992
1333:             xori         t0, a5, 1647
main_9:           jal          t1, 5f
0:                jal          ra, 2f
1:                jal          t1, 9f
2:                jal          ra, 12f
3:                jal          ra, 20f
4:                jal          ra, 7f
5:                jal          a2, 19f
6:                jal          ra, 13f
7:                jal          ra, 6b
8:                jal          a1, 17f
9:                jal          ra, 10f
10:               jal          t1, 15f
11:               jal          ra, 8b
12:               jal          s3, 16f
13:               jal          t0, 14f
14:               jal          ra, 0b
15:               jal          ra, 3b
16:               jal          ra, 1b
17:               jal          s3, 4b
18:               jal          ra, 11b
19:               jal          tp, 18b
20:               jal          ra, 21f
21:               add          s1, a6, s5
1334:             srl          a0, s4, t2
1335:             beq          a1, a1, 1339f
                  ori          s2, t2, 432
                  bge          t0, s8, 1339f
                  nop
1339:             nop
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         s9, s9, -28
                  xori         s4, s10, -827
                  xor          s4, s5, s4
                  slt          s10, s11, s5
                  sw           t1, 4(s9)
                  srl          s2, gp, t5
                  lui          t6, 201742
                  sltu         zero, s4, t6
                  ori          t5, sp, -511
                  auipc        s5, 703219
sub_1_0:          jal          t1, 14f
0:                jal          ra, 1f
1:                jal          t1, 18f
2:                jal          ra, 16f
3:                jal          t1, 10f
4:                jal          ra, 20f
5:                jal          t1, 8f
6:                jal          a2, 9f
7:                jal          t1, 17f
8:                jal          s4, 4b
9:                jal          ra, 12f
10:               jal          sp, 15f
11:               jal          ra, 6b
12:               jal          s2, 0b
13:               jal          sp, 19f
14:               jal          t0, 2b
15:               jal          s5, 11b
16:               jal          t1, 3b
17:               jal          t1, 13b
18:               jal          ra, 7b
19:               jal          t1, 5b
20:               lui          s2, 877093
sub_1_5:          jal          t1, 5f
0:                jal          s10, 3f
1:                jal          ra, 2f
2:                jal          ra, 14f
3:                jal          s0, 12f
4:                jal          ra, 15f
5:                jal          a0, 4b
6:                jal          tp, 10f
7:                jal          t1, 6b
8:                jal          t0, 9f
9:                jal          s1, 11f
10:               jal          ra, 1b
11:               jal          ra, 16f
12:               jal          t1, 8b
13:               jal          t1, 7b
14:               jal          gp, 0b
15:               jal          t1, 13b
16:               sub          t6, s4, sp
sub_1_3:          jal          t1, 5f
0:                jal          a3, 15f
1:                jal          ra, 2f
2:                jal          t1, 25f
3:                jal          ra, 0b
4:                jal          a1, 9f
5:                jal          t4, 11f
6:                jal          ra, 20f
7:                jal          ra, 24f
8:                jal          ra, 6b
9:                jal          a1, 18f
10:               jal          ra, 4b
11:               jal          ra, 8b
12:               jal          ra, 23f
13:               jal          ra, 3b
14:               jal          ra, 21f
15:               jal          t1, 19f
16:               jal          t1, 14b
17:               jal          t1, 22f
18:               jal          s3, 12b
19:               jal          t1, 17b
20:               jal          t1, 7b
21:               jal          t1, 1b
22:               jal          ra, 16b
23:               jal          sp, 13b
24:               jal          sp, 10b
25:               xor          a1, ra, t2
sub_1_4:          jal          t1, 8f
0:                jal          gp, 10f
1:                jal          ra, 21f
2:                jal          ra, 26f
3:                jal          ra, 9f
4:                jal          ra, 23f
5:                jal          ra, 28f
6:                jal          ra, 14f
7:                jal          t1, 1b
8:                jal          ra, 12f
9:                jal          ra, 6b
10:               jal          ra, 4b
11:               jal          ra, 27f
12:               jal          gp, 0b
13:               jal          tp, 19f
14:               jal          t1, 5b
15:               jal          t1, 16f
16:               jal          ra, 20f
17:               jal          ra, 11b
18:               jal          a4, 3b
19:               jal          t1, 18b
20:               jal          ra, 7b
21:               jal          ra, 17b
22:               jal          ra, 13b
23:               jal          ra, 24f
24:               jal          t0, 2b
25:               jal          a6, 22b
26:               jal          t1, 15b
27:               jal          tp, 25b
28:               sltiu        t1, ra, -1345
sub_1_1:          jal          t1, 4f
0:                jal          sp, 17f
1:                jal          ra, 16f
2:                jal          s1, 7f
3:                jal          t1, 5f
4:                jal          t1, 14f
5:                jal          t1, 0b
6:                jal          sp, 11f
7:                jal          t6, 18f
8:                jal          ra, 6b
9:                jal          ra, 12f
10:               jal          ra, 1b
11:               jal          ra, 9b
12:               jal          ra, 2b
13:               jal          a5, 15f
14:               jal          a4, 3b
15:               jal          t1, 8b
16:               jal          ra, 13b
17:               jal          ra, 10b
18:               jal          t1, 19f
19:               add          a3, t0, s8
sub_1_2:          jal          t1, 18f
0:                jal          t1, 8f
1:                jal          t1, 7f
2:                jal          ra, 19f
3:                jal          t1, 13f
4:                jal          ra, 24f
5:                jal          ra, 9f
6:                jal          t1, 5b
7:                jal          t1, 23f
8:                jal          s0, 15f
9:                jal          ra, 17f
10:               jal          s0, 22f
11:               jal          t1, 21f
12:               jal          s5, 20f
13:               jal          a0, 12b
14:               jal          ra, 4b
15:               jal          t1, 2b
16:               jal          ra, 1b
17:               jal          s4, 11b
18:               jal          gp, 16b
19:               jal          ra, 3b
20:               jal          ra, 10b
21:               jal          t1, 14b
22:               jal          ra, 6b
23:               jal          ra, 0b
24:               addi         a1, a0, 253
                  sltu         s6, s8, s0
                  slt          a0, t4, s9
                  slt          s1, t3, t6
                  slti         t4, gp, -285
                  slti         t0, zero, 1671
                  sltu         t2, s0, s7
                  beq          zero, ra, 25f
                  srl          s0, s9, s0
                  sltu         t2, a6, s2
                  and          sp, zero, t3
                  sltu         s4, t5, s6
                  sub          s7, t5, s7
                  auipc        gp, 428909
                  slt          t4, t6, t6
                  srli         t0, a4, 4
                  lui          s4, 727306
                  addi         t3, tp, -138
                  srai         t1, a1, 1
                  bgeu         ra, t6, 35f
                  slli         zero, t0, 5
                  xori         s7, t4, 1461
                  add          sp, s10, zero
                  ori          t1, sp, -524
                  auipc        s5, 591016
                  lui          s1, 255722
25:               slt          t5, s9, tp
                  bltu         s1, t6, 27f
27:               beq          t0, t1, 40f
                  bne          ra, s9, 44f
                  blt          s2, s9, 47f
                  sub          a5, a3, s3
                  bltu         a1, t0, 44f
                  add          a5, s9, a3
                  sltu         s3, a4, t3
                  bge          s6, s10, 36f
35:               bne          t2, s6, 54f
36:               sra          zero, ra, tp
                  bltu         t5, a4, 49f
                  add          t3, s0, t6
                  lui          a3, 219539
40:               or           a1, a6, a5
                  auipc        a1, 710826
                  bge          zero, a0, 47f
                  sra          s10, s11, tp
44:               srli         a0, a3, 20
                  add          s1, gp, a7
                  slti         t1, ra, -1064
47:               srl          a5, s11, a4
                  bgeu         t5, t0, 52f
49:               blt          t6, s5, 67f
                  nop
                  xor          zero, sp, s0
52:               bltu         s3, a7, 69f
                  xori         s0, a1, -303
54:               bne          s6, s10, 55f
55:               addi         s10, zero, 798
                  sltu         ra, s4, s4
                  ori          t3, s7, -642
                  bltu         tp, a2, 78f
                  slli         a3, t5, 21
                  or           s10, s11, t1
                  auipc        s11, 79407
                  sra          a2, s8, a3
                  nop
                  sub          sp, a6, s9
                  xor          s5, a0, s9
                  slti         a5, a5, 1380
67:               srl          zero, t3, t4
                  slt          t6, s2, a0
69:               beq          a4, a0, 70f
70:               sll          t0, t3, a2
                  slt          zero, zero, s11
                  bgeu         a3, a5, 91f
                  blt          s1, s1, 88f
                  auipc        sp, 308000
                  srli         s6, a5, 14
                  xori         a4, a2, 886
                  andi         t6, t2, -234
78:               lui          s1, 413985
                  sub          zero, a0, s5
                  sltiu        t4, a7, -1085
                  blt          t5, s0, 86f
                  sltiu        a0, a1, 1076
                  xor          t0, t2, gp
                  sltiu        gp, s5, -1552
                  or           t5, s3, a6
86:               srl          a4, a0, a4
                  sra          s0, a6, a4
88:               bltu         a3, s2, 96f
                  xori         s1, zero, 773
                  bge          tp, s4, 105f
91:               slt          t5, t1, a5
                  bltu         t0, t6, 100f
                  bne          a5, t0, 102f
                  blt          tp, t4, 102f
                  and          a1, a2, ra
96:               sll          s6, a5, s2
                  sll          t0, s11, zero
                  addi         s3, s11, -704
                  andi         gp, t0, 2036
100:              slli         t3, sp, 13
                  srai         sp, s2, 21
102:              lui          t5, 443470
                  sub          s10, a1, s6
                  blt          s1, s1, 113f
105:              srai         s7, s6, 18
                  bne          s2, a2, 114f
                  sltiu        s6, s11, 404
                  sub          a2, a6, s5
                  bgeu         a6, s1, 113f
                  add          t4, t5, zero
                  nop
                  ori          s0, tp, -1373
113:              bltu         s8, s11, 130f
114:              srl          t1, a0, t3
                  srai         sp, a2, 27
                  ori          t3, ra, -1783
                  srli         zero, t5, 31
                  xori         t6, a5, 947
                  bne          a1, gp, 136f
                  xor          t1, t5, t1
                  ori          sp, sp, -361
                  auipc        s2, 831684
                  slli         a3, s4, 7
                  ori          a6, t4, 1466
                  bgeu         t1, s8, 144f
                  srai         a0, a1, 1
                  andi         a0, gp, 1550
                  xor          s11, t5, s8
                  addi         s10, t2, -1627
130:              auipc        ra, 875351
                  auipc        a4, 43405
                  andi         a5, t5, -1079
                  ori          s0, s9, 1641
                  add          a3, t1, sp
                  sra          s6, a1, gp
136:              lui          a3, 752049
                  srl          a1, t1, zero
                  srli         s2, a7, 24
                  bge          s0, sp, 159f
                  sltu         a1, a0, a1
                  srli         s10, a7, 2
                  sra          s2, t6, a3
                  or           s11, s4, s3
144:              sub          a1, s2, s6
                  slli         a1, s11, 24
                  or           tp, s7, ra
                  nop
                  slli         s7, s8, 5
                  auipc        s5, 841956
                  sra          t6, a7, a3
                  nop
                  and          s6, s11, t6
                  bne          s6, gp, sub_1_j2 #branch to jump instr
                  and          s3, t4, a6
                  add          a0, s11, s3
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sub          t3, a4, t0
                  slt          t4, t4, s2
                  xor          t5, a7, gp
                  slt          a0, t2, s0
                  bltu         s5, a5, 153f
153:              xori         t4, a0, 97
                  and          t2, t1, ra
                  add          t3, sp, s5
                  sll          a0, a0, a5
                  xori         t2, s1, -1183
                  sltiu        s10, a1, -578
159:              xor          ra, t2, zero
                  sltiu        a4, s9, -1548
                  andi         t1, sp, 1835
                  xor          t5, t0, t0
                  nop
                  or           s6, s2, s8
                  blt          s3, a7, 183f
                  slt          s3, a4, a4
                  srai         s7, a5, 29
                  or           sp, a4, s10
                  bgeu         t2, s5, 188f
                  bne          s2, a0, 175f
                  slti         a1, t4, 933
                  bne          tp, s8, 180f
                  lui          t4, 947778
                  sltiu        t5, t4, -1299
175:              bltu         a6, a1, 179f
                  xori         a0, a6, -1419
                  slli         a6, s5, 12
                  sll          a3, s9, s6
179:              andi         s7, s11, 635
180:              bge          t3, s1, 188f
                  andi         sp, s4, 1657
                  slti         a4, a4, -133
183:              nop
                  blt          s9, a7, 201f
                  add          t5, t5, s0
                  beq          s4, t6, 203f
                  bltu         t3, a5, 199f
188:              srai         t4, a0, 6
                  lui          s6, 126012
                  sll          a5, a6, t1
                  bltu         s0, gp, 200f
                  xori         s10, s3, -1247
                  add          ra, t5, s1
                  nop
                  bltu         s6, a7, 197f
                  xori         t4, t6, 1586
197:              and          ra, s1, s7
                  sltiu        a1, s5, -1195
199:              bne          sp, a1, 207f
200:              sra          a2, t2, ra
201:              nop
                  nop
203:              srai         s7, ra, 28
                  xori         t1, t1, 147
                  beq          s1, a3, 214f
                  bge          s4, t1, 222f
207:              xor          a2, s5, t5
                  slli         s6, s1, 21
                  nop
                  sltu         t5, s7, s7
                  add          t0, a4, t3
                  slli         t5, t4, 30
                  auipc        s5, 40182
214:              xor          s10, t2, a5
                  beq          gp, s7, 223f
                  beq          a7, s11, 231f
                  and          s4, a6, s2
                  or           a5, a3, a5
                  bne          t2, t0, 236f
                  bge          s9, sp, 233f
                  xori         t3, a3, 463
222:              add          s2, s7, s3
223:              sub          ra, s4, ra
                  blt          t5, sp, 225f
225:              ori          s11, s6, -1960
                  nop
                  ori          a2, s11, 115
                  srli         s11, s8, 25
                  beq          t0, a6, 246f
                  auipc        s11, 453649
231:              and          t5, a1, a5
                  srai         a3, t5, 9
233:              nop
                  sltiu        t6, a4, -1845
                  ori          t5, a7, 1789
236:              bge          t0, sp, 241f
                  bgeu         a0, s7, 238f
238:              slli         a0, t4, 9
                  xor          a0, s8, s11
                  bltu         a7, sp, 255f
241:              beq          a1, t3, 245f
                  sltu         s4, t3, a2
                  srai         a1, s11, 12
                  slt          a6, a7, t4
245:              addi         s10, a7, 51
246:              ori          s4, a4, -1212
                  ori          ra, t1, -1309
                  auipc        s7, 256133
                  bne          s4, t1, 262f
                  slti         a3, t6, -546
                  slli         zero, s7, 31
                  add          t0, a1, tp
                  bge          s6, ra, 271f
                  bne          a6, a3, 273f
255:              blt          s3, a6, 263f
                  srai         a2, s4, 26
                  srli         s3, t6, 28
                  srai         a6, t2, 25
                  sltu         a3, ra, t2
                  bge          a4, a4, 275f
                  xor          t3, a6, a4
262:              sub          s5, a4, t3
263:              add          a1, a4, t5
                  ori          t2, a5, -1675
                  slt          t0, s9, s5
                  sub          s10, s6, s9
                  srl          a2, a6, a2
                  or           sp, t6, t3
                  auipc        s3, 591381
                  nop
271:              slt          t3, s5, t2
                  lui          a6, 380526
273:              srli         ra, a6, 13
                  sltiu        t0, a4, -1771
275:              srl          a4, s6, t2
                  slt          s4, a4, a1
                  xor          s2, s5, t2
                  addi         s0, s0, 1386
                  slt          a0, ra, s5
                  xor          t1, tp, s6
                  blt          s7, s10, 298f
                  sub          a0, s2, s5
                  bltu         s4, a3, 300f
                  srai         a0, s11, 8
                  and          s5, s7, s3
                  sltiu        gp, s11, -1722
                  andi         ra, t1, 1618
                  lui          t0, 87328
                  auipc        t4, 111836
                  andi         s6, s6, -647
                  srli         sp, t1, 23
                  addi         t1, s7, 1769
                  addi         s4, s4, -345
                  blt          a6, zero, 307f
                  sltu         s7, t1, s7
                  addi         s6, s8, -1635
                  blt          zero, s0, 305f
298:              slli         s2, a6, 10
                  slti         t0, a4, -118
300:              srli         s0, tp, 30
                  sltu         zero, a1, t3
                  nop
                  bgeu         t6, a0, 312f
                  beq          gp, s5, 309f
305:              srl          a3, sp, sp
                  sltu         s4, a4, a3
307:              add          s7, a4, s4
                  xori         a3, zero, -217
309:              srl          a5, s0, gp
                  slt          s6, s7, s3
                  slt          a4, ra, a1
312:              xori         s2, t5, 990
                  sll          sp, a1, t4
                  nop
                  and          t4, sp, a5
                  bge          t2, a5, 317f
317:              lui          t5, 734964
                  sub          t0, gp, s6
                  andi         s6, t5, -27
                  xori         a4, t6, 627
                  slt          s0, t5, ra
                  xor          s1, tp, t6
                  and          gp, t5, t1
                  beq          t2, ra, 325f
325:              auipc        t1, 901376
                  lw           t1, 4(s9)
                  lui          zero, 538808
                  auipc        s11, 567002
                  xori         a6, a5, 1962
                  sltiu        sp, a3, -1707
                  srai         s5, t5, 2
                  addi         s9, s9, 28
                  sltu         s1, s7, s10
497:              addi x10, x6, 0
497:              jalr x10, x10, 0
sub_5:            bgeu         t5, a2, sub_5_stack_p
                  auipc        a5, 946002
                  sra          s4, s11, ra
                  sra          a2, s11, sp
                  or           sp, s10, s4
sub_5_stack_p:    addi         s9, s9, -28
                  slt          s3, t0, a2
                  add          s3, a2, s0
                  sw           t1, 4(s9)
                  andi         a0, ra, 1333
                  slli         zero, t3, 21
sub_5_0:          jal          t1, 11f
0:                jal          ra, 29f
1:                jal          ra, 13f
2:                jal          t6, 6f
3:                jal          ra, 7f
4:                jal          a4, 10f
5:                jal          s6, 16f
6:                jal          t1, 30f
7:                jal          ra, 21f
8:                jal          s5, 25f
9:                jal          t0, 0b
10:               jal          ra, 28f
11:               jal          ra, 18f
12:               jal          ra, 4b
13:               jal          t1, 20f
14:               jal          ra, 22f
15:               jal          ra, 23f
16:               jal          s7, 2b
17:               jal          ra, 5b
18:               jal          ra, 19f
19:               jal          s10, 8b
20:               jal          ra, 26f
21:               jal          ra, 12b
22:               jal          ra, 17b
23:               jal          t1, 9b
24:               jal          ra, 27f
25:               jal          t1, 1b
26:               jal          ra, 24b
27:               jal          t1, 3b
28:               jal          t1, 15b
29:               jal          ra, 14b
30:               xor          t2, t1, a2
sub_5_1:          jal          t1, 6f
0:                jal          a0, 8f
1:                jal          t1, 15f
2:                jal          ra, 1b
3:                jal          ra, 11f
4:                jal          ra, 14f
5:                jal          ra, 16f
6:                jal          ra, 0b
7:                jal          ra, 13f
8:                jal          ra, 2b
9:                jal          t1, 19f
10:               jal          gp, 9b
11:               jal          t1, 18f
12:               jal          ra, 5b
13:               jal          tp, 20f
14:               jal          s6, 10b
15:               jal          ra, 12b
16:               jal          ra, 3b
17:               jal          ra, 7b
18:               jal          ra, 4b
19:               jal          a2, 17b
20:               xor          a2, s3, t4
                  xor          s1, s2, t3
                  slti         s6, s11, -597
                  sra          s4, t4, s6
                  addi         gp, t6, -1300
                  sltiu        a0, s8, 452
                  nop
                  slt          a3, tp, a7
                  slt          s2, s8, s6
                  addi         s6, s10, 1658
                  sltu         ra, s6, s4
                  and          s5, gp, s8
                  andi         a4, s0, 1222
                  beq          s1, s0, 24f
                  slli         t4, gp, 22
                  beq          s2, t5, 27f
                  bgeu         a4, t5, 28f
                  bge          s10, a0, 24f
                  bne          a1, gp, 34f
                  bltu         t3, a2, 28f
                  and          s1, s9, a0
                  sltu         a1, t0, t5
                  slt          a0, t4, a0
                  sltiu        t1, ra, -1521
                  xor          t1, t2, a3
24:               ori          a0, s9, 1641
                  and          s10, s2, a3
                  slli         t0, a4, 19
27:               ori          t5, t2, -459
28:               sll          t0, s7, a6
                  beq          s10, a4, 49f
                  and          sp, a4, t2
                  srl          a3, zero, s2
                  slt          s4, s5, s8
                  or           t4, a6, a1
34:               bne          a7, t4, 49f
                  beq          sp, t5, 37f
                  add          s7, t5, t0
37:               addi         a2, a7, -372
                  slt          s2, t5, a1
                  or           s10, t6, s7
                  add          s5, a2, a4
                  and          s7, zero, t0
                  nop
                  bltu         s3, a3, 59f
                  beq          tp, s10, 51f
                  sub          t1, t3, t5
                  auipc        t5, 229005
                  bne          s10, s8, 53f
                  blt          s11, t0, 54f
49:               bltu         s8, a4, 59f
                  xori         zero, t2, -1751
51:               xori         s0, a0, 219
                  lui          s7, 141115
53:               srl          a4, a4, a0
54:               srl          a6, a3, s11
                  add          s11, s2, s10
                  andi         s3, s0, 316
                  slti         t2, s3, -1520
                  bgeu         a1, s6, 76f
59:               lui          t1, 938718
                  and          sp, a0, t6
                  andi         t3, t0, -1273
                  or           a6, s10, s7
                  or           t2, tp, t0
                  nop
                  srli         a0, a0, 8
                  srl          s11, a2, s3
                  sltiu        a3, t1, -1666
                  andi         ra, a7, 1647
                  bgeu         a7, s11, 73f
                  sub          zero, a3, s8
                  nop
                  bgeu         t2, a2, 84f
73:               sll          s10, a0, t0
                  beq          s9, t4, 92f
                  nop
76:               and          t0, t6, t2
                  slli         a1, s8, 12
                  or           ra, s1, zero
                  slt          gp, a6, a5
                  xori         s4, a7, -1701
                  lui          t6, 13529
                  beq          a1, zero, 85f
                  sltiu        t4, s11, -657
84:               sra          s10, a2, a5
85:               lui          s0, 779579
                  sra          s1, t3, s5
                  slt          t2, a1, s9
                  xor          s4, tp, t5
                  lui          a1, 577158
                  and          t5, a4, s1
                  ori          a6, s11, 364
92:               lui          s7, 15232
                  sra          s2, t6, t6
                  sltiu        a5, gp, 1059
                  sltiu        t6, a7, 320
                  bltu         s6, s9, 101f
                  slti         a2, a2, -1823
                  sub          tp, s7, s5
                  srli         a0, s10, 0
                  srai         a2, a2, 17
101:              slti         gp, t0, 480
                  lw           t1, 4(s9)
                  addi         sp, s3, -1642
                  addi         s9, s9, 28
                  sltiu        sp, a7, 1951
                  add          t6, zero, a2
172:              addi x13, x6, 1
172:              jalr x13, x13, 0
sub_3:            add          a0, t6, t6
                  blt          s5, s10, sub_3_stack_p
                  sll          a6, s3, s3
sub_3_stack_p:    addi         s9, s9, -8
                  andi         a4, s10, 331
                  sw           t1, 4(s9)
                  andi         t6, s11, -337
                  xor          s11, a6, tp
                  or           a4, s6, s1
sub_3_0:          jal          t1, 11f
0:                jal          s3, 6f
1:                jal          s1, 15f
2:                jal          t1, 13f
3:                jal          ra, 2b
4:                jal          ra, 17f
5:                jal          ra, 12f
6:                jal          s7, 8f
7:                jal          s0, 4b
8:                jal          ra, 3b
9:                jal          ra, 0b
10:               jal          tp, 9b
11:               jal          ra, 1b
12:               jal          ra, 7b
13:               jal          t4, 14f
14:               jal          t1, 16f
15:               jal          ra, 10b
16:               jal          ra, 5b
17:               jal          t1, 18f
18:               or           s4, a1, zero
sub_3_1:          jal          t1, 15f
0:                jal          a1, 2f
1:                jal          ra, 4f
2:                jal          ra, 22f
3:                jal          t1, 16f
4:                jal          ra, 20f
5:                jal          ra, 19f
6:                jal          t1, 13f
7:                jal          ra, 1b
8:                jal          t1, 3b
9:                jal          ra, 21f
10:               jal          t1, 9b
11:               jal          ra, 12f
12:               jal          s5, 14f
13:               jal          ra, 8b
14:               jal          s7, 17f
15:               jal          ra, 18f
16:               jal          t1, 0b
17:               jal          ra, 7b
18:               jal          ra, 11b
19:               jal          ra, 10b
20:               jal          t5, 5b
21:               jal          ra, 6b
22:               and          t3, sp, a2
                  lui          s10, 654302
                  sll          s6, a1, sp
                  slli         s4, a0, 31
                  srai         s3, a1, 20
                  beq          sp, s0, 7f
                  sub          s5, s9, s10
                  srai         s6, s5, 3
7:                ori          a3, s11, 1319
                  auipc        t4, 217797
                  sra          s3, a4, t1
                  bge          t2, s4, 19f
                  sltiu        t5, tp, 2034
                  srl          sp, tp, s1
                  xor          zero, s11, ra
                  blt          s6, s4, 20f
                  or           t4, a3, ra
                  bltu         a1, s11, 24f
                  sub          t6, a6, gp
                  ori          t3, a6, 1371
19:               blt          t5, s2, 29f
20:               xor          s11, a0, gp
                  add          s6, a5, t3
                  slli         a5, tp, 1
                  sltiu        t1, t1, 874
24:               and          t0, s6, t3
                  srai         t1, t0, 10
                  xor          zero, a2, s9
                  srli         t4, s8, 6
                  blt          t0, ra, 30f
29:               srl          a6, t0, s2
30:               slli         s4, t1, 6
                  bne          a0, a5, 44f
                  lui          t1, 947298
                  xor          s11, a7, a7
                  and          gp, s1, s11
                  bge          s2, t1, 37f
                  andi         s4, a1, 1366
37:               sltiu        s3, a4, 1821
                  sltu         t1, gp, s5
                  or           t3, s10, s11
                  bltu         t2, a0, 58f
                  xori         t5, a0, 475
                  addi         zero, zero, -1376
                  bltu         a6, s11, 50f
44:               and          s7, t0, s6
                  blt          zero, s10, 63f
                  lui          t5, 398254
                  bne          s0, s1, 56f
                  xor          s4, a5, s8
                  nop
50:               addi         ra, s4, 688
                  nop
                  and          t1, t0, a4
                  bgeu         a6, s10, 66f
                  xori         zero, t4, 1516
                  addi         s0, tp, -429
56:               bge          a2, s5, 57f
57:               lui          tp, 575261
58:               bne          s10, sp, 62f
                  srai         s0, s4, 20
                  beq          s6, ra, 61f
61:               bge          t6, s8, 77f
62:               nop
63:               add          a5, a6, a2
                  srli         a5, a2, 15
                  sltiu        s0, t0, 531
66:               auipc        s2, 600819
                  slt          t4, gp, t5
                  xor          zero, s11, t0
                  srai         t2, s9, 2
                  add          s7, s9, a7
                  xori         t1, a4, -1773
                  sll          t2, a0, a0
                  xori         a6, a3, 33
                  slti         s5, a2, -13
                  beq          s4, t6, 82f
                  nop
77:               slli         s5, gp, 2
                  sra          s3, a6, a4
                  sll          s10, s8, a5
                  bltu         t1, a4, 87f
                  srai         s2, a5, 1
82:               sltu         s11, zero, tp
                  and          a3, t0, a7
                  addi         s4, a2, 870
                  slli         t4, tp, 13
                  srl          a3, s6, t1
87:               sub          s5, s9, s3
                  ori          s6, a2, 1322
                  srl          s10, t4, ra
                  addi         t3, ra, 189
                  sltiu        s3, t2, -1779
                  lui          tp, 390758
                  addi         s7, s3, 760
                  slt          t2, t4, a3
                  slti         s6, s8, -268
                  ori          s7, s0, 1787
                  slli         t0, a5, 8
                  sub          t1, s10, a4
                  sltu         s4, t4, s1
                  addi         a0, a1, 29
                  beq          a5, a0, 114f
                  srai         zero, t6, 8
                  andi         t1, s3, -248
                  sltiu        s4, s7, -1433
                  bltu         t0, t2, 111f
                  srai         s0, t1, 22
                  srai         t6, sp, 9
                  bltu         a1, t4, 114f
                  srai         a6, sp, 22
                  lui          t2, 996050
111:              add          a1, a0, sp
                  and          sp, t0, a0
                  slti         s11, t1, 390
114:              lui          a6, 726083
                  slt          s7, t2, t2
                  or           a0, s7, t3
                  lw           t1, 4(s9)
                  addi         s9, s9, 8
                  xor          a0, a1, a4
                  sltu         t2, s11, a0
                  auipc        s1, 646605
                  addi         s5, s0, -729
176:              addi x28, x6, 0
176:              jalr x28, x28, 0
sub_2:            sltiu        s4, a4, -599
                  andi         t2, s3, 1269
                  slli         s2, s3, 2
                  addi         s9, s9, -8
                  sra          s2, s6, t3
                  srai         s5, a0, 4
                  sub          s1, a6, a6
                  xor          a6, s11, s5
                  sll          a6, a4, gp
                  sw           t1, 4(s9)
                  sltiu        s11, ra, -1017
                  sll          a3, s0, a0
                  xori         t5, a3, -1285
                  sub          gp, t6, t2
                  auipc        t0, 233796
                  srai         sp, s3, 25
                  ori          s1, s9, 1746
                  bltu         a6, s9, sub_2_j4 #branch to jump instr
                  xori         t3, t2, 133
sub_2_j4:         jal          t1, sub_3 #jump sub_2 -> sub_3
sub_2_6:          jal          t1, 4f
0:                jal          t3, 12f
1:                jal          ra, 13f
2:                jal          t1, 15f
3:                jal          t5, 9f
4:                jal          a2, 1b
5:                jal          t3, 10f
6:                jal          t4, 0b
7:                jal          t1, 6b
8:                jal          ra, 11f
9:                jal          a2, 7b
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          a1, 2b
13:               jal          t1, 14f
14:               jal          ra, 8b
15:               sltu         t4, a4, zero
sub_2_12:         jal          t1, 8f
0:                jal          ra, 23f
1:                jal          ra, 4f
2:                jal          t1, 12f
3:                jal          sp, 11f
4:                jal          t1, 10f
5:                jal          gp, 16f
6:                jal          ra, 19f
7:                jal          ra, 20f
8:                jal          ra, 14f
9:                jal          ra, 22f
10:               jal          ra, 13f
11:               jal          t1, 2b
12:               jal          s3, 21f
13:               jal          t1, 7b
14:               jal          ra, 15f
15:               jal          a2, 5b
16:               jal          ra, 3b
17:               jal          ra, 9b
18:               jal          ra, 1b
19:               jal          ra, 0b
20:               jal          ra, 6b
21:               jal          ra, 17b
22:               jal          s5, 18b
23:               sll          a0, a6, s0
sub_2_3:          jal          t1, 18f
0:                jal          ra, 10f
1:                jal          ra, 11f
2:                jal          ra, 6f
3:                jal          gp, 1b
4:                jal          t0, 12f
5:                jal          tp, 15f
6:                jal          ra, 19f
7:                jal          a5, 16f
8:                jal          t0, 7b
9:                jal          ra, 4b
10:               jal          ra, 9b
11:               jal          ra, 8b
12:               jal          t1, 2b
13:               jal          t1, 5b
14:               jal          ra, 3b
15:               jal          t1, 14b
16:               jal          t1, 0b
17:               jal          t6, 13b
18:               jal          ra, 17b
19:               auipc        s10, 793636
sub_2_13:         jal          t1, 0f
0:                jal          t1, 13f
1:                jal          s2, 6f
2:                jal          t1, 1b
3:                jal          a5, 4f
4:                jal          ra, 18f
5:                jal          t1, 12f
6:                jal          a2, 8f
7:                jal          tp, 5b
8:                jal          a0, 7b
9:                jal          a1, 15f
10:               jal          ra, 21f
11:               jal          ra, 20f
12:               jal          t3, 11b
13:               jal          ra, 19f
14:               jal          t1, 17f
15:               jal          ra, 3b
16:               jal          ra, 2b
17:               jal          ra, 10b
18:               jal          ra, 16b
19:               jal          t1, 9b
20:               jal          ra, 14b
21:               auipc        s10, 638235
sub_2_1:          jal          t1, 14f
0:                jal          ra, 4f
1:                jal          ra, 13f
2:                jal          ra, 10f
3:                jal          sp, 2b
4:                jal          t1, 9f
5:                jal          t1, 7f
6:                jal          ra, 15f
7:                jal          ra, 3b
8:                jal          ra, 5b
9:                jal          t1, 11f
10:               jal          s5, 1b
11:               jal          t1, 6b
12:               jal          ra, 0b
13:               jal          s11, 16f
14:               jal          ra, 8b
15:               jal          a1, 17f
16:               jal          ra, 12b
17:               andi         s1, s9, 714
sub_2_10:         jal          t1, 1f
0:                jal          ra, 26f
1:                jal          ra, 16f
2:                jal          t1, 0b
3:                jal          ra, 8f
4:                jal          s5, 20f
5:                jal          s7, 3b
6:                jal          t0, 19f
7:                jal          ra, 17f
8:                jal          ra, 14f
9:                jal          t1, 15f
10:               jal          ra, 18f
11:               jal          t1, 9b
12:               jal          ra, 25f
13:               jal          t1, 12b
14:               jal          ra, 10b
15:               jal          ra, 22f
16:               jal          t1, 4b
17:               jal          ra, 24f
18:               jal          ra, 6b
19:               jal          ra, 13b
20:               jal          ra, 21f
21:               jal          ra, 7b
22:               jal          ra, 2b
23:               jal          ra, 5b
24:               jal          ra, 23b
25:               jal          t6, 11b
26:               xor          a6, sp, gp
sub_2_11:         jal          t1, 11f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          ra, 12f
3:                jal          ra, 0b
4:                jal          t1, 10f
5:                jal          ra, 7f
6:                jal          ra, 5b
7:                jal          ra, 3b
8:                jal          t0, 4b
9:                jal          t0, 2b
10:               jal          t0, 13f
11:               jal          tp, 6b
12:               jal          t0, 14f
13:               jal          ra, 9b
14:               slt          s3, s2, a7
sub_2_15:         jal          t1, 17f
0:                jal          t1, 1f
1:                jal          ra, 27f
2:                jal          ra, 21f
3:                jal          s0, 16f
4:                jal          ra, 26f
5:                jal          ra, 9f
6:                jal          t1, 22f
7:                jal          a0, 25f
8:                jal          ra, 12f
9:                jal          ra, 11f
10:               jal          tp, 5b
11:               jal          t0, 29f
12:               jal          ra, 13f
13:               jal          s2, 10b
14:               jal          a1, 18f
15:               jal          s1, 8b
16:               jal          ra, 14b
17:               jal          s3, 23f
18:               jal          t1, 2b
19:               jal          s10, 3b
20:               jal          ra, 19b
21:               jal          ra, 15b
22:               jal          ra, 7b
23:               jal          ra, 4b
24:               jal          ra, 0b
25:               jal          a3, 20b
26:               jal          ra, 24b
27:               jal          ra, 28f
28:               jal          gp, 6b
29:               addi         a3, t3, -1223
sub_2_14:         jal          t1, 12f
0:                jal          ra, 17f
1:                jal          ra, 13f
2:                jal          t5, 0b
3:                jal          ra, 7f
4:                jal          t1, 9f
5:                jal          ra, 4b
6:                jal          ra, 8f
7:                jal          ra, 11f
8:                jal          ra, 1b
9:                jal          s0, 2b
10:               jal          t1, 6b
11:               jal          ra, 14f
12:               jal          tp, 15f
13:               jal          a3, 5b
14:               jal          t1, 10b
15:               jal          ra, 16f
16:               jal          ra, 3b
17:               xor          s1, a3, t3
sub_2_2:          jal          t1, 7f
0:                jal          gp, 8f
1:                jal          ra, 12f
2:                jal          ra, 13f
3:                jal          t1, 15f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          t1, 1b
7:                jal          ra, 4b
8:                jal          t1, 3b
9:                jal          ra, 5b
10:               jal          ra, 9b
11:               jal          ra, 6b
12:               jal          t1, 14f
13:               jal          s7, 11b
14:               jal          ra, 10b
15:               jal          ra, 16f
16:               ori          a6, s11, -315
sub_2_18:         jal          t1, 8f
0:                jal          t1, 11f
1:                jal          ra, 6f
2:                jal          a6, 9f
3:                jal          ra, 2b
4:                jal          t1, 0b
5:                jal          s2, 4b
6:                jal          ra, 12f
7:                jal          ra, 10f
8:                jal          ra, 7b
9:                jal          t1, 5b
10:               jal          ra, 3b
11:               jal          t2, 1b
12:               slli         a0, t4, 11
sub_2_5:          jal          t1, 18f
0:                jal          ra, 27f
1:                jal          s10, 22f
2:                jal          tp, 9f
3:                jal          ra, 13f
4:                jal          gp, 24f
5:                jal          s2, 23f
6:                jal          s11, 17f
7:                jal          s11, 10f
8:                jal          ra, 16f
9:                jal          a6, 0b
10:               jal          ra, 5b
11:               jal          ra, 14f
12:               jal          ra, 20f
13:               jal          ra, 25f
14:               jal          ra, 7b
15:               jal          ra, 8b
16:               jal          t4, 26f
17:               jal          ra, 2b
18:               jal          tp, 29f
19:               jal          s1, 3b
20:               jal          t1, 15b
21:               jal          ra, 19b
22:               jal          t1, 12b
23:               jal          t5, 28f
24:               jal          gp, 21b
25:               jal          ra, 1b
26:               jal          ra, 11b
27:               jal          t0, 4b
28:               jal          t1, 30f
29:               jal          sp, 6b
30:               xori         t3, s7, 405
sub_2_8:          jal          t1, 7f
0:                jal          ra, 9f
1:                jal          t1, 11f
2:                jal          ra, 30f
3:                jal          t1, 1b
4:                jal          ra, 0b
5:                jal          ra, 25f
6:                jal          tp, 27f
7:                jal          ra, 10f
8:                jal          ra, 19f
9:                jal          s7, 5b
10:               jal          t0, 23f
11:               jal          ra, 22f
12:               jal          gp, 29f
13:               jal          ra, 15f
14:               jal          ra, 24f
15:               jal          ra, 28f
16:               jal          t1, 2b
17:               jal          t1, 6b
18:               jal          ra, 13b
19:               jal          s3, 16b
20:               jal          ra, 12b
21:               jal          a0, 3b
22:               jal          ra, 14b
23:               jal          sp, 21b
24:               jal          ra, 4b
25:               jal          t1, 18b
26:               jal          ra, 17b
27:               jal          t1, 8b
28:               jal          ra, 20b
29:               jal          ra, 26b
30:               sltiu        s2, zero, -1864
                  srai         s3, s1, 19
                  beq          s4, a3, 2f
2:                nop
                  add          t6, a2, s1
                  srl          t6, a5, a6
                  blt          ra, t2, 7f
                  sll          s10, s4, t0
7:                and          gp, s9, a2
                  nop
                  add          s6, a0, s3
                  beq          a0, s6, 12f
                  srai         s4, t3, 8
12:               bne          t6, s3, 22f
                  sra          ra, s6, a2
                  ori          zero, a0, -1051
                  bne          t1, s11, 16f
16:               xori         t2, a4, 179
                  bgeu         gp, a2, 32f
                  xor          s10, zero, t6
                  slt          s0, t0, a6
                  xor          t1, s4, a0
                  add          gp, zero, s10
22:               sra          a3, s8, t4
                  nop
                  auipc        s2, 1012676
                  sltiu        t0, t6, 1546
                  sltu         tp, t1, sp
                  or           a1, s5, s1
                  bgeu         s8, t2, 30f
                  auipc        s10, 116422
30:               sltu         t3, sp, s0
                  xor          a4, a4, tp
32:               srl          t5, s2, a5
                  xori         tp, a1, 634
                  or           ra, zero, t4
                  add          s10, s4, ra
                  bltu         tp, a6, 38f
                  slti         s6, t0, -2036
38:               slli         t3, a3, 11
                  lui          gp, 938630
                  sub          a0, a6, t3
                  srli         t2, s2, 3
                  sll          t3, s10, s6
                  and          t0, t3, zero
                  sltiu        s1, t5, 1100
                  lui          s3, 296586
                  blt          s8, ra, 50f
                  nop
                  slt          t2, a1, s10
                  sra          a5, s2, t0
50:               sra          s11, a7, t5
                  blt          t0, s3, 52f
52:               bge          s11, a0, 59f
                  and          s11, tp, a0
                  addi         s7, t3, 2047
                  srli         zero, s5, 15
                  nop
                  bge          s4, a7, 63f
                  and          s3, s11, a1
59:               sltu         s2, t4, t2
                  bgeu         gp, t3, 80f
                  sll          a2, s11, a7
                  xor          s5, a3, s10
63:               slli         s6, a7, 19
                  sltu         t0, zero, s7
                  bgeu         s9, s1, 82f
                  bltu         s9, s3, 72f
                  sub          a2, sp, a6
                  or           s6, s3, a4
                  bgeu         s7, a3, 79f
                  sltu         s4, sp, ra
                  sltu         gp, s3, zero
72:               slti         t2, gp, 502
                  bgeu         s10, ra, 86f
                  slt          a6, s5, s5
                  nop
                  andi         t6, t6, -918
                  sll          tp, a6, s4
                  bgeu         t2, s6, 87f
79:               bltu         tp, s5, 88f
80:               sra          a3, s2, t5
                  bne          s11, t4, 101f
82:               sltiu        s2, a1, 1811
                  srli         a1, a7, 26
                  blt          s2, t3, 96f
                  xori         zero, a0, 1752
86:               sltiu        s6, sp, -535
87:               sll          t6, sp, a5
88:               blt          s0, t2, 98f
                  and          s0, zero, s9
                  add          gp, s10, s7
                  srl          s6, s10, ra
                  sltiu        t6, s1, -1366
                  auipc        t1, 728415
                  slt          s3, gp, a6
                  addi         t0, s3, -1003
96:               ori          s10, ra, -249
                  slti         s7, sp, -439
98:               sll          tp, s7, s7
                  nop
                  and          sp, s8, s10
101:              srli         t5, a1, 4
                  sltu         t5, gp, a2
                  sltiu        gp, sp, -127
                  andi         s4, t4, -952
                  andi         gp, a5, 1040
                  srl          t6, a1, t2
                  srli         a2, a1, 22
                  add          a2, a3, t6
                  sll          s3, a0, s3
                  sub          s11, t6, gp
                  andi         sp, a7, 1038
                  sra          t6, s0, s6
                  slt          t5, s0, s8
                  auipc        a6, 1038049
                  bne          tp, t2, 126f
                  slli         s7, t5, 27
                  xori         a2, zero, -90
                  sltiu        s10, t6, -762
                  bne          s10, t2, 139f
                  bgeu         a6, a2, 135f
                  sra          s7, t4, t0
                  nop
                  bge          s8, s1, 125f
                  sltu         t2, t6, s5
125:              sltu         a6, s9, s6
126:              sltiu        s7, s7, 1484
                  srli         s4, t5, 4
                  bgeu         gp, ra, 147f
                  bltu         t2, s1, 135f
                  sub          s11, a0, s3
                  add          t2, s7, s11
                  srl          t0, s7, a5
                  blt          s3, gp, 148f
                  sltiu        a0, a7, -613
135:              ori          sp, a5, 486
                  slli         t2, s9, 2
                  ori          s4, a2, -1061
                  srl          s7, a0, s7
139:              andi         s10, s10, 49
                  xor          s3, gp, s11
                  srl          s7, t3, t2
                  slti         s7, a2, 1180
                  andi         a6, s6, -120
                  bge          t5, t1, 147f
                  slti         a4, s10, -1528
                  slti         t3, a1, 1210
147:              bne          a6, s9, 164f
148:              srl          s4, t2, a4
                  addi         a1, t5, 786
                  sltiu        ra, gp, 135
                  addi         s5, t6, -1812
                  ori          zero, s5, -661
                  srai         t5, tp, 29
                  ori          s5, s2, -482
                  slt          a2, zero, s6
                  addi         a4, s6, 1546
                  sll          s10, t4, t5
                  blt          s5, ra, 170f
                  srl          a4, sp, tp
                  srl          a5, zero, s8
                  slti         a4, t0, -770
                  blt          s9, s9, 177f
                  sub          s4, s2, a2
164:              xor          s3, t4, a3
                  sra          ra, t3, a6
                  and          s1, sp, s8
                  slli         s7, t1, 18
                  lui          gp, 985763
                  bge          a7, a6, 173f
170:              beq          s2, gp, 171f
171:              xori         t3, s5, -615
                  xori         s1, a0, -1648
173:              lui          zero, 153091
                  sub          s11, ra, a3
                  bge          a0, zero, 185f
                  beq          a7, t0, 196f
177:              sltu         s1, zero, tp
                  bgeu         a3, s0, 198f
                  auipc        t3, 312327
                  beq          a1, s2, 187f
                  or           t6, t3, s5
                  or           a0, s6, s11
                  sltiu        s4, a1, 527
                  add          t6, s9, t0
185:              srai         gp, s9, 31
                  lui          s1, 391768
187:              xori         a2, a1, 2001
                  xor          a3, a4, a3
                  nop
                  and          a6, zero, s4
                  or           t2, s10, s7
                  slt          tp, s5, a4
                  bgeu         t6, a5, 195f
                  auipc        t2, 721783
195:              sltu         t6, t1, a3
196:              sub          s5, s4, s10
                  slt          t0, s10, s11
198:              sll          s7, s5, t6
                  srai         s4, zero, 4
                  bgeu         s6, a7, 220f
                  srl          s2, s11, t4
                  la           a3, sub_4
                  lui          a2, 968904
                  addi         a3, a3, -680
                  sra          a0, s9, a3
                  slli         s0, s2, 16
                  lui          t5, 948312
                  bgeu         a2, sp, sub_2_j3 #branch to jump instr
                  xori         a4, s7, -1309
sub_2_j3:         jalr         t1, a3, 681 #jump sub_2 -> sub_4
                  xori         zero, s7, -343
                  sub          s1, t2, gp
                  bge          s1, s8, 205f
                  bgeu         t3, zero, 210f
205:              andi         s2, t0, -1349
                  bgeu         sp, t4, 216f
                  bne          s3, s2, 213f
sub_2_4:          jal          t1, 3f
0:                jal          s0, 10f
1:                jal          ra, 0b
2:                jal          t1, 14f
3:                jal          s11, 4f
4:                jal          t1, 5f
5:                jal          t1, 9f
6:                jal          ra, 12f
7:                jal          ra, 2b
8:                jal          t4, 13f
9:                jal          gp, 1b
10:               jal          t2, 11f
11:               jal          a0, 8b
12:               jal          ra, 7b
13:               jal          ra, 6b
14:               ori          a1, s0, -1492
                  xori         s7, s4, -1583
                  nop
210:              sll          t6, s6, t5
                  sltiu        s0, s9, -425
                  add          a2, a4, s8
213:              sltu         a2, a5, a1
                  sub          s1, s4, t6
                  bgeu         s8, s5, 217f
216:              add          s5, tp, a3
217:              sub          a6, s8, s8
                  and          s5, t5, a3
                  srai         s7, t2, 19
220:              addi         zero, a4, 520
                  bge          s2, s9, 232f
                  and          s10, s8, s1
                  slti         t1, s6, 482
                  xor          t0, a1, s1
                  nop
                  addi         a6, a3, -1654
                  srli         t1, s2, 27
                  andi         s0, a4, -1375
                  slt          a2, s9, s11
                  bge          s11, t0, 249f
                  sltu         zero, sp, t3
232:              andi         tp, s1, 1300
                  slli         s6, a7, 30
                  bgeu         sp, t5, 236f
                  bltu         t6, ra, 244f
236:              andi         s7, s4, -1958
                  slt          s7, a6, sp
                  srl          s10, s6, a1
                  sll          a1, s8, zero
                  nop
                  and          s2, s5, ra
                  addi         s10, s1, 637
                  beq          s0, t4, 258f
244:              xori         t6, s7, -683
                  srli         t5, gp, 9
                  beq          s5, s8, 247f
247:              add          s0, t5, s8
                  nop
249:              beq          t2, a3, 259f
                  beq          s2, a1, 252f
                  andi         t4, s1, -1171
252:              nop
                  ori          t1, t1, 446
                  bge          ra, s10, 267f
                  or           s5, t3, a4
                  srli         ra, s0, 1
                  srli         zero, a3, 5
258:              srli         t5, s0, 8
259:              slt          tp, t0, a3
                  nop
                  lui          s2, 674866
                  ori          a2, s0, -1296
                  add          s6, s6, tp
                  bne          ra, tp, 267f
                  srli         t4, a3, 18
                  beq          s9, a0, 281f
267:              sll          gp, a0, t0
                  sra          tp, s9, a0
                  bne          gp, s7, 270f
270:              sra          t5, zero, s8
                  and          a5, a4, a2
                  srai         s0, t6, 16
                  beq          zero, zero, 282f
                  bgeu         t5, t4, 280f
                  beq          s9, a5, 285f
                  bltu         s4, zero, 277f
277:              bgeu         t4, t5, 292f
                  and          s6, s10, a4
                  sll          t3, a6, a0
280:              srl          t6, gp, s10
281:              bge          s11, t2, 283f
282:              and          a5, s8, a4
283:              ori          t6, s4, -1297
                  srl          ra, s9, a4
285:              xori         s7, zero, -856
                  or           zero, zero, t1
                  bge          zero, t0, 289f
                  add          t3, t3, s8
289:              srli         sp, tp, 29
                  nop
                  beq          tp, a0, 295f
292:              nop
                  lui          a3, 63964
                  srai         s4, s0, 20
295:              slti         s7, gp, -1364
                  sltiu        a0, t5, 1610
                  add          a4, s4, ra
                  slli         a3, s4, 29
                  blt          zero, s6, 306f
                  sub          a0, t5, a0
                  sll          s6, s0, t4
                  or           s10, s8, a6
                  lui          a4, 559730
                  srli         sp, t0, 18
                  bgeu         a3, ra, 325f
306:              sra          tp, s4, t0
                  nop
                  sub          a6, a3, t3
                  slt          s2, t4, s1
                  auipc        t1, 151152
                  slt          s7, zero, s2
                  srl          a6, s6, s4
                  or           a0, t4, s2
                  bge          t3, t1, 316f
                  add          s10, a6, t0
316:              or           s1, s9, s6
                  nop
                  andi         t4, a2, -812
                  beq          t2, a7, 334f
                  xor          gp, s1, s5
                  bne          s6, s1, 332f
                  srl          t4, a1, a4
                  slt          t5, s11, tp
                  bne          s7, sp, 344f
325:              and          t0, s2, s9
                  add          t6, s2, s1
                  sll          s2, s2, t2
                  beq          s2, sp, 337f
                  lui          ra, 519514
                  srli         sp, zero, 25
                  slt          s2, s7, s4
332:              beq          a0, s1, 342f
                  xori         s5, t1, -331
334:              andi         a4, a7, -704
                  lui          a1, 225365
                  sra          a1, s7, t6
337:              xor          ra, a3, zero
                  addi         a2, s9, -787
                  sra          s2, s7, a6
                  srai         t4, tp, 26
                  sra          s5, gp, a4
342:              bge          a6, tp, 351f
                  and          a1, s2, tp
344:              sra          a3, gp, s10
                  or           t4, s6, s7
                  beq          s4, t6, 349f
                  beq          s2, a0, 360f
                  xori         a3, s8, 1821
349:              and          a3, s5, t2
                  auipc        t1, 635188
351:              sll          t0, a3, t5
                  addi         tp, a1, 1154
                  lui          s4, 520209
                  sra          s0, zero, t4
                  bltu         s8, s3, 375f
                  add          a3, s7, a2
                  lui          zero, 446778
                  add          s10, gp, t3
                  and          s4, s2, t6
360:              srli         gp, s4, 10
                  bne          sp, s8, 378f
                  xori         t4, zero, -1634
                  sll          a2, t3, s1
                  ori          s6, tp, 1424
                  sltiu        a6, s6, 468
                  add          sp, s5, s1
                  sub          tp, a2, s9
                  nop
                  xori         a2, s3, 662
                  ori          s7, gp, 372
                  sub          s2, s7, t5
                  auipc        a5, 939067
                  srl          s11, a4, a0
                  sll          a5, t6, a0
375:              addi         s3, a7, 1732
                  slli         t4, s9, 17
                  bne          a7, s9, 379f
378:              lui          t5, 810491
379:              or           t0, a5, t3
                  and          s0, t5, a5
                  bne          a7, s4, 382f
382:              srai         s11, t4, 25
                  addi         s5, t0, -341
                  sltu         t1, zero, s8
                  sll          s11, s4, tp
                  slt          s3, a0, t1
                  srl          t0, a3, t5
                  srl          t4, t4, sp
                  ori          t5, t0, -772
                  bge          s5, a7, 391f
391:              sra          a1, s9, s3
                  bltu         a3, s0, 394f
                  auipc        t3, 665031
394:              addi         s7, ra, 813
                  sltiu        s6, sp, -2038
                  sltiu        t6, a5, 105
                  slti         s10, t3, 857
                  sltiu        a0, s8, 269
                  addi         a6, s5, 1756
                  auipc        ra, 228000
                  andi         tp, s6, 1141
                  sra          s10, a7, a3
                  ori          s6, t0, -855
                  addi         s6, t6, 1564
                  bne          s1, s10, 417f
                  ori          s10, s11, 33
                  beq          a4, s6, 422f
                  sll          a2, a3, s10
                  sub          a0, s0, t4
                  add          t1, s11, t3
                  sltiu        t0, s7, 496
                  auipc        s7, 643912
                  sll          t3, s0, sp
                  sltu         a5, a1, s2
                  andi         s7, s5, 585
                  sub          s7, s2, t5
417:              xor          a4, a5, a0
                  andi         gp, s2, -494
                  andi         t6, t0, -1788
                  and          zero, t2, gp
                  srai         s5, t4, 14
422:              srai         a6, t1, 3
                  addi         tp, a6, -1394
                  bne          gp, s10, 430f
                  nop
                  andi         s10, t1, -1575
                  nop
                  slt          a5, s9, t0
                  nop
430:              sll          s5, s4, s2
                  blt          sp, t6, 441f
                  sra          zero, sp, a3
                  ori          t1, s0, 1667
                  lui          s6, 554994
                  auipc        t1, 176719
                  bge          s9, s3, 442f
                  andi         s5, gp, -882
                  bgeu         a2, t4, 444f
                  slt          s11, gp, a4
                  and          s7, s6, s0
441:              srai         t3, s0, 24
442:              lui          t0, 683033
                  bltu         ra, sp, 462f
444:              bne          t3, a3, 451f
                  bltu         s6, t5, 465f
                  and          ra, zero, a0
                  srai         s1, a3, 8
                  beq          a0, s3, 467f
                  bne          s4, tp, 466f
                  and          s0, t3, a2
451:              sltu         t3, t6, s11
                  bltu         t2, a1, 453f
453:              sltiu        s6, s0, 884
                  slt          ra, s2, a7
                  add          t1, s7, a4
                  srai         s10, s0, 3
sub_2_16:         jal          t1, 7f
0:                jal          ra, 5f
1:                jal          ra, 11f
2:                jal          t4, 10f
3:                jal          ra, 15f
4:                jal          tp, 9f
5:                jal          s0, 6f
6:                jal          ra, 14f
7:                jal          ra, 21f
8:                jal          ra, 4b
9:                jal          ra, 16f
10:               jal          ra, 23f
11:               jal          t1, 13f
12:               jal          ra, 8b
13:               jal          t1, 18f
14:               jal          t1, 22f
15:               jal          ra, 0b
16:               jal          ra, 20f
17:               jal          ra, 19f
18:               jal          t3, 12b
19:               jal          ra, 1b
20:               jal          ra, 2b
21:               jal          ra, 3b
22:               jal          ra, 17b
23:               srli         sp, s7, 25
                  or           t5, t3, t1
                  blt          a4, a7, 478f
                  slt          t6, s0, s2
                  and          tp, tp, t3
                  sra          tp, t0, s6
462:              or           sp, gp, a0
                  or           ra, s0, a1
                  blt          s3, sp, 470f
465:              addi         s1, s8, -449
466:              xori         t2, a1, -675
467:              slli         t4, a3, 13
                  beq          a1, s11, 471f
                  srli         a6, a4, 22
470:              blt          a1, zero, 479f
471:              addi         a4, sp, 930
                  bgeu         gp, t4, 474f
                  sltiu        a2, s2, 956
474:              bgeu         gp, s8, 484f
                  nop
                  and          zero, s5, zero
                  beq          a2, a6, 490f
478:              xori         sp, ra, 256
479:              slli         s10, ra, 4
                  xor          a1, s10, s4
                  sltiu        s1, zero, -1407
                  bge          t0, s1, 491f
                  slli         a3, s1, 0
484:              sltiu        a6, a1, -740
                  bltu         s11, gp, 487f
                  slli         s3, ra, 27
487:              sltiu        ra, s9, 1107
                  srl          s0, a0, a4
                  slt          t1, a1, s10
490:              beq          a6, s11, 501f
491:              nop
                  and          t0, a6, a1
                  auipc        t1, 138494
                  slli         s10, s2, 2
                  nop
                  andi         a3, a7, 40
                  xori         zero, s0, -410
                  sra          s10, t1, a0
                  sltiu        t6, s11, -635
                  sub          t6, t0, s8
501:              slt          t6, t3, a7
                  srli         zero, t0, 26
                  bgeu         s11, t4, 518f
                  srli         t0, s10, 21
                  bgeu         s3, a3, 507f
                  sra          a5, gp, a7
507:              auipc        s11, 293442
                  srli         a3, t2, 17
                  lui          a3, 156936
                  sub          a5, t3, t1
                  sra          s10, a4, gp
                  sub          s7, a5, s4
                  sll          ra, s3, a3
                  sltu         t1, sp, a4
                  xor          s0, a5, t4
                  xori         gp, s1, -701
                  slli         a3, s6, 8
518:              sltiu        t4, a5, 1732
                  addi         a4, sp, -688
                  sltu         s3, t0, s4
                  bne          ra, s9, 522f
522:              blt          a2, gp, 537f
                  srl          a6, s6, ra
                  and          sp, t6, gp
                  srli         t0, s0, 16
                  add          zero, t1, s8
                  auipc        a0, 566038
                  or           t1, s9, a5
                  sltiu        s0, t4, 1698
                  xori         gp, s3, -1054
                  andi         s0, t6, -281
                  slli         s2, s5, 12
                  nop
                  and          s7, sp, s0
                  nop
                  add          a6, s5, tp
537:              or           tp, s10, a5
                  bgeu         s4, a4, 544f
                  beq          t6, s1, 541f
                  add          s2, sp, t4
541:              sub          a4, t6, gp
                  andi         a2, s8, 1272
                  bne          a3, a1, 549f
544:              bltu         tp, s7, 556f
                  bltu         a1, ra, 549f
                  slli         gp, s8, 23
                  sra          s7, s9, s7
                  andi         t2, a1, 294
549:              lui          t0, 452396
                  or           t4, a6, s2
                  xor          sp, s0, s1
                  ori          t2, t6, -605
                  bltu         s4, a0, 555f
                  bgeu         s2, a2, 564f
555:              srl          a5, a7, s10
556:              or           a0, tp, s3
                  slt          s4, s1, a0
                  nop
                  sltu         s0, a0, s9
                  sltu         s5, t2, a6
                  beq          a7, zero, 581f
                  lui          a0, 657711
                  slt          a2, t6, s10
564:              srl          gp, a6, a1
                  nop
                  bltu         s4, s1, 567f
567:              lui          s5, 99955
                  sra          s4, a4, s6
                  slt          ra, a1, a1
                  sub          t0, s0, a6
                  slli         s1, t5, 2
                  beq          a1, t5, 587f
                  slti         s10, t2, 1878
                  and          s4, s4, a1
                  xori         ra, s7, 1112
                  auipc        s11, 810858
                  or           a2, s8, s7
                  sltu         s10, t5, t1
                  slli         a1, sp, 9
                  blt          gp, a1, 590f
581:              nop
                  nop
                  bne          a6, t6, 602f
                  bltu         s8, a5, 595f
                  srli         a4, s8, 12
                  beq          s3, zero, 588f
587:              xor          a6, t0, s0
588:              srl          tp, a6, a4
                  beq          s1, s5, 590f
590:              slli         s0, a2, 18
                  xori         gp, a5, 461
                  slt          s0, s4, s8
                  andi         s2, s3, 603
                  slli         ra, t6, 9
595:              ori          s7, zero, 2018
                  lui          gp, 719765
                  blt          s0, s6, 607f
                  or           s7, s3, a5
                  add          s11, a3, s7
                  slli         s10, a6, 19
                  auipc        gp, 595392
602:              or           t0, t4, s6
                  xori         t1, s0, 1280
                  slli         a6, s1, 30
                  slti         gp, a3, -903
                  slt          a6, t6, s8
607:              ori          t5, t5, 1750
                  or           tp, a6, s6
                  ori          a1, s1, -1152
                  bgeu         t0, s1, 616f
                  xori         s3, s9, -1883
                  ori          a4, s2, -59
                  lui          s10, 137835
                  bltu         t5, a0, 623f
                  xor          t1, t4, a0
616:              xor          a4, s10, a1
                  beq          sp, t5, 620f
                  nop
                  nop
620:              bne          t6, s7, 627f
                  bgeu         a1, a4, 623f
                  bgeu         a0, a0, 624f
623:              addi         t6, t2, 551
624:              xor          t0, gp, s11
                  xori         s3, ra, -699
sub_2_0:          jal          t1, 7f
0:                jal          ra, 1f
1:                jal          ra, 6f
2:                jal          ra, 9f
3:                jal          ra, 4f
4:                jal          gp, 0b
5:                jal          a1, 2b
6:                jal          t1, 5b
7:                jal          ra, 11f
8:                jal          ra, 10f
9:                jal          a6, 12f
10:               jal          s6, 3b
11:               jal          ra, 8b
12:               slt          t6, gp, a6
                  bne          t6, ra, 639f
627:              lui          s3, 181287
                  bltu         a3, tp, 648f
                  sub          sp, a6, s6
                  bge          a6, zero, 640f
                  slt          s11, a5, s3
                  slli         s6, a5, 18
                  and          sp, t1, t5
                  xor          s5, a5, a1
                  srl          gp, s6, t3
                  andi         s10, t1, -80
                  sra          s5, t6, s6
                  slli         s0, t3, 4
639:              srai         a3, sp, 10
640:              lui          t3, 99139
                  andi         s1, t6, -1645
                  and          gp, zero, t6
                  srai         t6, t3, 29
                  sltiu        s11, s8, 2009
                  xor          a0, a3, s9
                  addi         t4, sp, 877
                  sub          s4, s7, zero
648:              bge          a4, a3, 649f
649:              srl          s3, s1, a7
                  srli         s5, s10, 1
                  xori         s11, s11, 1198
                  blt          a2, s9, 672f
                  sub          ra, s10, a6
                  slli         s7, s0, 17
                  bltu         s1, a6, 675f
                  slli         s7, s6, 29
                  beq          t2, s11, 659f
                  andi         t3, a6, 1812
659:              addi         tp, t0, 666
                  slt          a5, s9, s6
                  and          t2, s10, a4
                  srl          a4, t6, s4
                  auipc        a4, 477827
                  srl          s10, a6, zero
                  addi         a3, s8, 694
                  beq          t0, s8, 672f
                  xori         a0, a1, -1393
                  xori         gp, t5, 104
                  sub          t1, s3, t4
                  beq          s10, ra, 682f
                  addi         t3, a1, 1781
672:              sra          s6, s5, t0
                  xor          a6, zero, a3
                  slt          s4, s9, t6
675:              srl          ra, a0, a0
                  srai         t2, tp, 28
                  sub          t5, a4, t0
                  nop
                  blt          s8, t6, 694f
                  slt          s5, sp, t4
                  add          a0, a7, s11
682:              srli         t5, t5, 29
                  and          a1, s2, s4
                  sll          t4, gp, s2
                  slli         zero, s0, 17
                  srli         a5, t2, 9
                  or           sp, s11, s11
                  xor          tp, t6, a3
                  sll          a5, t0, t5
sub_2_7:          jal          t1, 20f
0:                jal          s11, 5f
1:                jal          ra, 7f
2:                jal          t1, 17f
3:                jal          ra, 8f
4:                jal          ra, 21f
5:                jal          ra, 9f
6:                jal          a5, 15f
7:                jal          s3, 4b
8:                jal          t1, 18f
9:                jal          ra, 3b
10:               jal          tp, 2b
11:               jal          s11, 19f
12:               jal          ra, 16f
13:               jal          t1, 1b
14:               jal          ra, 0b
15:               jal          ra, 22f
16:               jal          ra, 10b
17:               jal          s3, 14b
18:               jal          ra, 6b
19:               jal          ra, 13b
20:               jal          ra, 11b
21:               jal          s11, 12b
22:               jal          t6, 23f
23:               nop
                  ori          s0, ra, 1429
                  sra          tp, t2, t3
                  slt          s11, zero, a4
                  nop
694:              andi         s1, s6, 1262
                  add          t1, s6, s3
                  auipc        t2, 117060
                  bgeu         a7, s8, 706f
                  sltu         t3, a0, a1
                  blt          s4, tp, 714f
                  bgeu         tp, s7, 710f
                  srl          t6, t6, s8
                  nop
                  slli         s4, a7, 28
                  srai         t3, ra, 22
                  srai         a0, s3, 11
706:              or           sp, t2, s3
                  or           a1, zero, t3
                  slti         a1, t5, -1092
                  bltu         gp, t3, 715f
710:              bne          a6, s7, 712f
                  beq          t2, ra, 728f
712:              add          s4, t2, t0
                  xor          ra, s9, a4
714:              nop
715:              add          a2, t3, s3
                  slli         s2, a5, 27
                  add          t3, a4, a0
                  srli         gp, zero, 22
                  srl          gp, gp, s9
                  sub          s5, t3, s9
                  lui          s4, 375068
                  ori          s1, zero, 1779
                  andi         zero, a0, -110
                  bltu         gp, a2, 728f
                  sub          s7, s9, a3
                  or           ra, a5, a0
                  bge          s5, tp, 728f
728:              xori         a3, gp, -991
                  lui          t2, 939229
                  ori          s7, s7, -346
                  and          zero, t4, t1
                  srai         s2, t1, 4
                  sltiu        a0, a7, 1491
                  sub          s2, t5, s3
                  srli         a1, t4, 4
                  sra          zero, tp, a6
                  blt          s4, ra, 752f
                  slti         sp, s6, 1654
                  auipc        s10, 307737
                  sub          t4, s0, s0
                  and          t1, sp, t3
                  lui          s6, 1047201
                  sll          s5, t5, tp
                  slt          a4, s10, t1
                  add          s1, a1, t6
                  addi         a5, s11, -1404
                  bgeu         a6, zero, 753f
                  addi         t5, s1, 526
                  sltu         s1, s11, a4
                  sltiu        sp, s4, -185
                  sra          a4, ra, a7
752:              srl          ra, s8, a3
753:              slt          a3, t5, t1
                  andi         s4, s4, -1430
                  ori          s1, a4, -663
                  sra          a3, s7, ra
                  beq          s2, zero, 767f
                  bgeu         a2, gp, 760f
                  bgeu         a7, t6, 765f
760:              sub          s1, s6, a6
                  xori         s2, t2, -1735
                  and          a5, t6, tp
                  xori         zero, a1, -578
                  bne          t0, a3, 779f
765:              beq          a3, s10, 775f
                  sltiu        s2, a0, 37
767:              ori          tp, s0, 1368
                  or           a1, s4, s3
                  xor          s3, a2, a7
                  andi         s5, a3, -1146
                  srli         a6, s2, 4
                  slti         sp, t4, 2017
                  sltiu        tp, s0, 967
                  srli         s4, gp, 20
775:              blt          t5, s4, 787f
                  sltiu        gp, t0, 1899
                  or           a0, zero, t4
                  xori         tp, a3, 1658
779:              blt          s3, a4, 780f
780:              blt          s11, s4, 795f
                  andi         ra, t5, -1388
                  xor          a0, a3, t6
                  slti         t1, a2, 288
                  sltiu        a6, sp, 1367
                  nop
                  sltu         s4, s11, a5
787:              andi         t1, s11, 279
                  srli         t4, s11, 20
                  or           s4, t0, s0
                  slli         tp, a7, 14
                  slli         s4, t5, 12
                  slli         t3, s6, 18
                  bne          s7, ra, 795f
                  xori         t4, sp, -264
795:              beq          s5, a3, 797f
                  sltu         t1, a4, ra
797:              add          a3, t6, t1
                  sra          s6, a6, t1
                  andi         s0, t5, 991
                  sltiu        s4, s9, 1349
                  andi         s6, sp, -531
                  add          s7, s8, s6
                  sub          s0, t4, s6
                  slti         s5, t2, -1560
                  add          s11, t2, zero
                  xori         a5, t2, -1317
                  or           gp, t0, s8
                  bltu         s2, s3, 814f
                  slli         s0, t1, 20
                  bne          a7, a1, 812f
                  srli         s6, gp, 19
812:              srli         s2, t4, 13
                  bgeu         a6, a4, 826f
814:              bne          a3, ra, 817f
                  sub          tp, a1, s3
sub_2_17:         jal          t1, 6f
0:                jal          ra, 22f
1:                jal          ra, 5f
2:                jal          t1, 9f
3:                jal          ra, 7f
4:                jal          gp, 16f
5:                jal          ra, 8f
6:                jal          t1, 17f
7:                jal          ra, 1b
8:                jal          s10, 4b
9:                jal          s2, 10f
10:               jal          a4, 15f
11:               jal          a1, 2b
12:               jal          t1, 13f
13:               jal          t0, 14f
14:               jal          t1, 23f
15:               jal          tp, 3b
16:               jal          sp, 20f
17:               jal          ra, 18f
18:               jal          ra, 11b
19:               jal          t1, 12b
20:               jal          s4, 0b
21:               jal          a4, 19b
22:               jal          ra, 21b
23:               nop
                  sra          a5, a1, tp
817:              sra          a5, a6, s0
                  and          a0, s10, s11
                  auipc        t0, 159713
                  sltiu        s0, a4, -422
                  and          a4, s11, s9
                  slti         a2, t0, -276
                  slti         s11, s10, -182
                  bltu         s6, a6, 841f
                  sra          a6, sp, s1
826:              blt          t2, s2, 827f
827:              srli         a0, s11, 10
                  srai         s4, t6, 29
                  xori         s1, zero, 1455
                  nop
                  addi         s10, s9, -1209
                  sltiu        a4, sp, -1979
                  add          tp, a5, t2
sub_2_9:          jal          t1, 14f
0:                jal          ra, 2f
1:                jal          t4, 10f
2:                jal          ra, 13f
3:                jal          t5, 1b
4:                jal          t5, 0b
5:                jal          ra, 4b
6:                jal          ra, 8f
7:                jal          t1, 15f
8:                jal          ra, 7b
9:                jal          ra, 16f
10:               jal          ra, 11f
11:               jal          ra, 12f
12:               jal          ra, 9b
13:               jal          ra, 6b
14:               jal          t1, 3b
15:               jal          ra, 17f
16:               jal          s6, 5b
17:               auipc        tp, 293785
                  sltiu        s2, a1, 1508
                  xori         s4, a3, 1514
                  slli         s11, a4, 20
                  sra          a1, t6, a6
                  slt          a0, s1, a4
                  sll          s11, ra, t5
                  slti         t6, a1, 1648
841:              xor          s3, sp, s8
                  sub          t6, s11, s9
                  add          s0, t2, zero
                  slli         s3, s11, 30
                  auipc        s2, 995783
                  blt          ra, t3, 850f
                  srai         sp, s9, 30
                  sra          a0, t2, t6
                  sll          s6, s2, zero
850:              addi         gp, a0, 2040
                  nop
                  slt          zero, s9, t1
                  srl          s0, gp, t4
                  sll          a2, t1, ra
                  blt          t5, s5, 870f
                  beq          s2, s4, 858f
                  nop
858:              sub          a0, s7, s4
                  slli         a3, t0, 13
                  blt          a3, s7, 880f
                  sll          s2, gp, gp
                  bltu         t5, a2, 869f
                  sub          a2, s3, t4
sub_2_19:         jal          t1, 9f
0:                jal          ra, 11f
1:                jal          ra, 3f
2:                jal          gp, 7f
3:                jal          t1, 6f
4:                jal          ra, 8f
5:                jal          ra, 16f
6:                jal          t1, 12f
7:                jal          ra, 15f
8:                jal          t1, 10f
9:                jal          ra, 13f
10:               jal          t1, 0b
11:               jal          t1, 5b
12:               jal          ra, 14f
13:               jal          ra, 2b
14:               jal          ra, 4b
15:               jal          ra, 1b
16:               srl          t3, a0, s8
                  xori         s1, t6, -724
                  bne          a5, a2, 875f
                  bge          s3, s10, 875f
                  addi         t5, tp, -1939
                  nop
869:              lui          a2, 464567
870:              xori         t1, t1, 301
                  slt          t1, s8, s2
                  bgeu         t3, a0, 892f
                  sltiu        tp, ra, -1833
                  auipc        a4, 721044
875:              srl          a2, s9, zero
                  srli         a5, s10, 14
                  xor          s5, s9, t1
                  auipc        a2, 912251
                  add          a3, s6, s11
880:              sra          a1, t6, a0
                  and          t4, t6, a1
                  add          s2, gp, s2
                  bgeu         t3, t5, 884f
884:              sub          s1, s2, s4
                  sltu         a1, a7, a4
                  and          s5, t3, a0
                  ori          sp, t5, 1351
                  sll          s4, s2, a0
                  and          a6, s6, a6
                  slt          t6, t1, t4
                  bne          s5, s10, 910f
892:              blt          t2, gp, 901f
                  and          s0, t1, t0
                  slt          s11, s1, s6
                  bne          t1, a1, 906f
                  srli         s10, s2, 26
                  sltiu        zero, a0, 323
                  addi         t0, s0, -39
                  and          a5, t5, a3
                  xor          a6, t2, s0
901:              and          t3, a5, s7
                  slt          a2, s4, t3
                  sra          t0, s4, s6
                  sub          t2, sp, a6
                  and          s4, s5, gp
906:              xori         s5, a6, 221
                  auipc        a4, 53729
                  srai         s10, t3, 30
                  beq          a4, a2, 929f
910:              addi         s6, s7, 1645
                  slt          a0, s6, sp
                  ori          t1, t3, -1472
                  addi         s1, t3, 1220
                  auipc        s2, 490009
                  sub          t1, a0, s4
                  bltu         t0, a1, 918f
                  srai         t1, a0, 18
918:              auipc        s6, 555873
                  sra          s0, a2, t3
                  ori          a6, ra, 1572
                  add          s4, t3, ra
                  sll          a1, s1, a0
                  srl          s10, t4, t3
                  sltiu        a5, a6, -1379
                  lui          s10, 232727
                  sll          s11, a7, zero
                  sll          t3, a3, s5
                  auipc        s7, 63486
929:              add          t5, s1, s4
                  srli         s5, s7, 6
                  ori          gp, s9, 2040
                  and          t3, s1, s1
                  auipc        a5, 265723
                  sub          t3, s11, s4
                  bgeu         s1, tp, 936f
936:              auipc        t0, 286417
                  nop
                  andi         s6, a6, 1786
                  srli         t2, s0, 30
                  srl          a0, s8, a2
                  and          a3, a2, a4
                  andi         t1, ra, -770
                  auipc        s2, 967111
                  xori         s3, s0, -596
                  bne          gp, s9, 947f
                  beq          a6, t3, 952f
947:              add          s7, s9, t1
                  bltu         s9, s10, 949f
949:              srai         s11, s10, 25
                  xori         gp, a7, -259
                  add          t2, gp, s2
952:              nop
                  srli         a5, s1, 31
                  bne          s4, s10, 956f
                  sub          s2, s6, a1
956:              andi         a1, s1, -711
                  ori          s11, t5, 1299
                  beq          s1, a3, 968f
                  andi         ra, zero, 560
                  slt          a3, s10, a1
                  sll          gp, ra, s2
                  nop
                  sub          s3, a1, s8
                  beq          a4, t2, 984f
                  blt          s7, s3, 980f
                  bge          t1, a4, 973f
                  beq          s3, s9, 976f
968:              or           t4, s1, t0
                  auipc        a1, 1035760
                  bltu         t2, t6, 980f
                  and          t5, s10, s8
                  sra          sp, a6, s0
973:              srai         s7, t4, 24
                  srli         s4, a2, 18
                  blt          a0, a1, 988f
976:              sll          a0, s11, t0
                  slti         zero, t0, -1330
                  lui          s5, 120904
                  addi         s3, s9, 960
980:              andi         s4, s1, 307
                  xor          t6, s0, s6
                  bltu         a3, ra, 993f
                  sra          s1, gp, s2
984:              andi         a1, s0, -1116
                  sll          s6, s7, a4
                  nop
                  xor          t5, a7, s1
988:              blt          a2, a6, 1008f
                  bgeu         sp, s4, 999f
                  add          gp, a6, a5
                  blt          zero, t5, 994f
                  sltiu        s11, s5, -1094
993:              xor          a5, t5, t4
994:              xori         t1, s10, 248
                  auipc        s3, 72933
                  sra          a1, s4, t4
                  sltiu        a2, t1, -207
                  bne          gp, tp, 1013f
999:              bltu         a3, sp, 1003f
                  bne          t1, a2, 1006f
                  srli         s3, t2, 3
                  bgeu         a7, a7, 1003f
1003:             lui          s2, 531060
                  addi         t4, t3, 1619
                  slli         s3, zero, 9
1006:             sll          t3, s3, a2
                  and          s0, gp, s5
1008:             sltu         s6, t6, a3
                  and          a6, s4, a3
                  or           a6, t3, tp
                  sltu         a4, a2, sp
                  la           s5, sub_4
                  addi         s5, s5, -215
                  sub          t1, a2, s9
                  addi         s1, t1, -1606
                  ori          s1, s10, 939
                  sra          t6, t2, s1
                  sra          t2, s6, a6
sub_2_j5:         jalr         t1, s5, 216 #jump sub_2 -> sub_4
                  xori         a1, s10, -1306
                  slti         zero, t4, -1883
                  and          t4, gp, a0
1013:             srli         s3, s4, 0
                  or           a1, a0, s9
                  slti         t5, s6, -1704
                  addi         s5, t1, 47
                  ori          tp, t1, 872
                  slli         s0, t1, 29
                  lui          a0, 87239
                  lui          t6, 281091
                  bge          t4, s2, 1040f
                  slt          s2, s10, tp
                  slli         s7, tp, 5
                  bgeu         tp, s6, 1041f
                  slli         a3, t3, 23
                  srai         t1, t3, 24
                  sub          s10, a4, s4
                  blt          sp, s0, 1037f
                  sltiu        t3, s7, 598
                  bne          s5, s2, 1036f
                  sll          t1, s2, zero
                  bgeu         t0, s9, 1043f
                  ori          s5, a5, 1789
                  andi         a5, t5, -887
                  sll          t4, t3, s2
1036:             xori         t3, s5, -1648
1037:             slt          s4, t1, a7
                  andi         gp, s8, 391
                  bge          t0, t1, 1043f
1040:             slt          s11, t5, s0
1041:             xor          tp, a2, zero
                  blt          a7, a0, 1043f
1043:             ori          s10, s8, -219
                  xori         s0, t4, 247
                  ori          s5, a4, -1827
                  addi         s6, t2, -1972
                  lw           t1, 4(s9)
                  add          t2, a2, s10
                  slli         s10, t3, 6
                  sll          s0, a5, t4
                  addi         t0, s9, -129
                  lui          tp, 570066
                  addi         s9, s9, 8
                  lui          s0, 876770
1532:             addi x9, x6, 0
1532:             jalr x9, x9, 0
sub_4:            addi         s9, s9, -36
                  addi         ra, t1, 927
                  srl          t5, s4, s5
                  andi         sp, t5, -1464
                  sltiu        a0, s7, -670
                  sra          gp, t1, s10
                  sw           t1, 4(s9)
                  sltiu        ra, t5, -589
                  addi         t3, t4, -1146
                  sra          a0, sp, t0
                  slli         t6, a0, 8
sub_4_0:          jal          t1, 11f
0:                jal          t1, 15f
1:                jal          ra, 8f
2:                jal          ra, 18f
3:                jal          t1, 16f
4:                jal          ra, 23f
5:                jal          ra, 21f
6:                jal          ra, 25f
7:                jal          t3, 19f
8:                jal          t0, 7b
9:                jal          s6, 13f
10:               jal          t1, 14f
11:               jal          t1, 2b
12:               jal          ra, 6b
13:               jal          ra, 1b
14:               jal          ra, 24f
15:               jal          t4, 12b
16:               jal          s3, 4b
17:               jal          ra, 5b
18:               jal          t1, 22f
19:               jal          t1, 3b
20:               jal          ra, 0b
21:               jal          ra, 10b
22:               jal          ra, 17b
23:               jal          tp, 20b
24:               jal          s4, 9b
25:               andi         t1, s7, -990
                  srai         s5, s7, 20
                  or           s6, s2, a6
                  bltu         a3, sp, 16f
                  sltu         a5, zero, sp
                  andi         s11, t6, -1558
                  nop
                  or           a2, s2, a5
                  sltu         s0, s4, s5
                  xori         sp, s2, 1440
                  xor          ra, a7, s10
                  sub          s2, a3, s8
                  xor          ra, s1, t2
                  slli         s1, a4, 6
                  beq          a4, sp, 28f
                  sub          t3, s1, s0
                  or           ra, ra, gp
                  lui          s7, 237864
                  or           s7, s8, a6
                  slli         a6, a3, 25
                  nop
                  sra          a1, s2, s1
sub_4_j6:         jal          t1, sub_5 #jump sub_4 -> sub_5
16:               sra          gp, a6, a4
                  bgeu         ra, s0, 26f
                  andi         s0, gp, -755
                  beq          a2, s4, 21f
                  bne          s3, s5, 23f
21:               sll          t5, a3, s11
                  beq          a5, s10, 30f
23:               ori          s3, s5, -1561
                  srai         gp, t0, 8
                  slt          s5, s10, s9
26:               and          s3, t3, t2
                  slt          t1, s0, s10
28:               bne          a2, t2, 33f
                  lui          t3, 310094
30:               bne          a5, s9, 39f
                  blt          a2, s3, 42f
                  ori          tp, s9, -798
33:               add          s4, t5, sp
                  xor          t6, sp, t6
                  nop
                  xori         a5, t6, 689
                  sltiu        a1, t2, 1952
                  sra          zero, a7, gp
39:               beq          s6, a1, 41f
                  blt          a6, t2, 54f
41:               lui          s11, 1008543
42:               slti         ra, ra, -1654
                  beq          t4, a6, 47f
                  xori         a0, tp, -720
                  beq          s6, s4, 56f
                  blt          gp, ra, 64f
47:               bge          t2, tp, 51f
                  slti         a4, s2, -667
                  xor          a6, a1, a5
                  slt          t6, s10, s3
51:               slti         t0, a6, -1701
                  bne          s8, a7, 64f
                  auipc        t2, 960530
54:               ori          s4, s10, -1297
                  add          s1, a1, t4
56:               bgeu         s6, a4, 68f
                  auipc        a3, 431061
                  slti         t4, a4, -1281
                  bne          s4, sp, 69f
                  srli         t1, zero, 28
                  sll          a5, sp, a4
                  add          t0, s6, s1
                  sll          t2, t0, t4
64:               beq          s7, a2, 70f
                  add          a5, s3, a2
                  andi         a1, ra, 447
                  srl          s6, s6, t3
                  la           tp, sub_5
                  lui          s11, 468024
                  xori         t3, a7, -1938
                  addi         tp, tp, 297
                  bge          a5, a4, sub_4_j7 #branch to jump instr
                  sltu         s7, t0, a3
                  xori         a2, gp, -36
                  andi         t3, s10, -1540
                  sra          s3, s8, s8
                  slti         s2, a6, -1975
                  sra          s6, s2, t4
                  srli         a3, tp, 27
sub_4_j7:         jalr         t1, tp, -297 #jump sub_4 -> sub_5
68:               auipc        s6, 673233
69:               add          a3, t5, a6
70:               ori          a4, s5, 664
                  slti         zero, a4, 181
                  xori         s11, s4, -1267
                  sra          sp, a6, s7
                  xori         s10, s10, -1713
                  lw           t1, 4(s9)
                  addi         s0, sp, 599
                  or           t6, a6, t6
                  srl          t4, s8, t2
                  addi         s9, s9, 36
                  srai         a5, s9, 2
                  and          a1, s0, t1
139:              addi x8, x6, 0
139:              jalr x8, x8, 0
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_2:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_3:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_4:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_5:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_6:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_7:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_8:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_9:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_10:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_11:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_12:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_13:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_14:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_15:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x17, x25, zero
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x4, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x4, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x4, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x4, x14, ecall_handler
                  li x14, 0x1
                  beq x4, x14, instr_fault_handler
                  li x14, 0x5
                  beq x4, x14, load_fault_handler
                  li x14, 0x7
                  beq x4, x14, store_fault_handler
                  li x14, 0xc
                  beq x4, x14, pt_fault_handler
                  li x14, 0xd
                  beq x4, x14, pt_fault_handler
                  li x14, 0xf
                  beq x4, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x4, _start
                  sw x0, 0(x4)
                  sw x1, 4(x4)
                  sw x2, 8(x4)
                  sw x3, 12(x4)
                  sw x4, 16(x4)
                  sw x5, 20(x4)
                  sw x6, 24(x4)
                  sw x7, 28(x4)
                  sw x8, 32(x4)
                  sw x9, 36(x4)
                  sw x10, 40(x4)
                  sw x11, 44(x4)
                  sw x12, 48(x4)
                  sw x13, 52(x4)
                  sw x14, 56(x4)
                  sw x15, 60(x4)
                  sw x16, 64(x4)
                  sw x17, 68(x4)
                  sw x18, 72(x4)
                  sw x19, 76(x4)
                  sw x20, 80(x4)
                  sw x21, 84(x4)
                  sw x22, 88(x4)
                  sw x23, 92(x4)
                  sw x24, 96(x4)
                  sw x25, 100(x4)
                  sw x26, 104(x4)
                  sw x27, 108(x4)
                  sw x28, 112(x4)
                  sw x29, 116(x4)
                  sw x30, 120(x4)
                  sw x31, 124(x4)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x25, x17, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x17, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x17, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x25, x17, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x25, x17, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x25, x17, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
