.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0xf85b010a
                  li x3, 0xc
                  li x4, 0xf7e3abe3
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xfc41d791
                  li x9, 0x5
                  li x10, 0x4
                  li x11, 0x80000000
                  li x12, 0xfbecd0df
                  li x13, 0x67243692
                  li x14, 0x0
                  li x15, 0x27cd1191
                  li x16, 0x6481787a
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x20, 0xf
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x1
                  li x24, 0x0
                  li x25, 0xcee485a1
                  li x26, 0x0
                  li x27, 0xf8fcf397
                  li x28, 0x0
                  li x29, 0xb
                  li x30, 0x80000000
                  li x31, 0xa
                  la x19, user_stack_end
main:             jal          s8, 20f
0:                jal          ra, 9f
1:                jal          t2, 18f
2:                jal          ra, 13f
3:                jal          sp, 7f
4:                jal          ra, 10f
5:                jal          ra, 0b
6:                jal          ra, 8f
7:                jal          ra, 21f
8:                jal          t1, 25f
9:                jal          ra, 12f
10:               jal          ra, 3b
11:               jal          ra, 23f
12:               jal          ra, 4b
13:               jal          ra, 1b
14:               jal          ra, 2b
15:               jal          gp, 19f
16:               jal          t1, 15b
17:               jal          ra, 14b
18:               jal          t1, 5b
19:               jal          gp, 6b
20:               jal          ra, 24f
21:               jal          t1, 26f
22:               jal          ra, 11b
23:               jal          t1, 17b
24:               jal          ra, 16b
25:               jal          ra, 22b
26:               xor          a3, s1, t5
                  and          a3, s0, tp
                  bge          t2, t5, 12f
                  lui          s1, 301680
                  srli         s4, a7, 4
                  bge          s9, s0, 11f
                  bge          s4, zero, 10f
                  xori         t4, a2, 2033
                  blt          t4, a7, 18f
                  slti         a5, t0, -1506
                  bltu         tp, a0, 19f
10:               sra          a3, s6, a4
                  sltu         a6, s0, s1
                  or           a4, a3, t4
                  nop
                  srli         s11, ra, 13
                  la           gp, sub_1
                  and          t1, a1, a5
                  sltu         a7, gp, s6
                  sub          t6, t0, t2
                  addi         gp, gp, 808
                  slti         a1, sp, -506
main_j1:          jalr         s8, gp, -807 #jump main -> sub_1
11:               beq          s11, a5, 28f
12:               bgeu         s2, s10, 14f
                  add          t3, s7, a1
14:               xori         t4, zero, -1755
                  sub          s5, gp, ra
                  srai         s1, t0, 31
                  ori          s6, a0, 351
18:               xor          t3, s4, gp
19:               add          a4, s9, a1
                  nop
                  srai         sp, sp, 12
                  and          s11, s7, zero
                  andi         s2, t1, 1614
                  addi         a6, s5, -1308
                  ori          s11, s8, 1445
                  bltu         a0, s5, 28f
                  slli         a1, a3, 15
28:               srai         a3, s3, 0
                  blt          t1, s11, 30f
30:               bgeu         ra, t4, 40f
                  sltu         tp, tp, s8
                  nop
                  and          a4, gp, s0
                  slt          t5, zero, s11
                  sltiu        s6, s0, 1795
                  sub          a5, ra, a2
                  bge          a1, zero, 57f
                  sltiu        a3, s6, -1491
                  sll          s8, a2, s3
40:               bge          a6, a0, 47f
                  andi         t4, s11, 595
                  sra          ra, t2, sp
                  slli         t3, s7, 23
                  nop
                  add          t3, s5, t5
                  bge          a6, t4, 47f
47:               bltu         s4, a4, 51f
                  srli         s6, a4, 11
                  and          zero, t4, s3
                  addi         zero, zero, 1436
                  or           s7, t2, a4
                  la           t4, sub_1
                  addi         t4, t4, -123
                  slli         s2, ra, 6
                  srli         a3, gp, 26
                  bgeu         s0, t0, main_j2 #branch to jump instr
                  srl          t0, ra, a5
                  auipc        a3, 497510
                  slt          a6, ra, a5
                  sltiu        t1, t1, -416
                  xor          zero, a2, a7
main_j2:          jalr         s8, t4, 124 #jump main -> sub_1
                  bgeu         s2, a4, 61f
51:               srli         t0, sp, 29
                  ori          s7, a3, 1338
                  slti         s2, s6, 1428
                  sltu         s5, s9, s3
                  srli         tp, s3, 1
                  srli         t5, tp, 4
57:               bgeu         s7, tp, 61f
                  sub          a7, s0, a1
                  slt          t1, s8, s0
                  nop
61:               srli         t4, t2, 20
                  sltu         s4, s2, a1
                  sll          t3, s1, s4
                  sltu         a3, s2, sp
                  or           a4, t2, t3
                  bltu         t5, s1, 75f
                  slti         a4, t5, 1568
                  xori         s6, gp, -1067
                  nop
                  andi         a7, ra, -1118
                  or           zero, t6, s4
                  addi         ra, a7, -1833
                  srli         t1, t0, 17
                  sll          t0, a6, s4
75:               slli         a3, a6, 6
                  sll          a5, t3, sp
                  slt          t3, a6, a5
                  srl          a2, a4, a4
                  sltiu        ra, s0, -1452
                  srli         a1, s7, 15
                  xor          t4, s7, s1
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         s3, s3, -64
                  add          sp, a2, t0
                  sw           s8, 4(s3)
                  sra          a4, s0, s9
                  sll          a5, s7, a0
sub_2_12:         jal          s8, 14f
0:                jal          ra, 12f
1:                jal          t1, 0b
2:                jal          ra, 11f
3:                jal          t1, 2b
4:                jal          ra, 1b
5:                jal          t1, 9f
6:                jal          ra, 8f
7:                jal          t0, 13f
8:                jal          t0, 7b
9:                jal          ra, 10f
10:               jal          ra, 15f
11:               jal          t1, 6b
12:               jal          ra, 3b
13:               jal          ra, 5b
14:               jal          ra, 17f
15:               jal          t1, 18f
16:               jal          ra, 4b
17:               jal          ra, 16b
18:               xori         s10, s8, -1435
sub_2_10:         jal          s8, 21f
0:                jal          t1, 3f
1:                jal          t1, 12f
2:                jal          ra, 1b
3:                jal          ra, 5f
4:                jal          ra, 6f
5:                jal          t1, 7f
6:                jal          t1, 22f
7:                jal          t2, 16f
8:                jal          a3, 15f
9:                jal          ra, 20f
10:               jal          t1, 9b
11:               jal          ra, 0b
12:               jal          ra, 4b
13:               jal          ra, 26f
14:               jal          t1, 24f
15:               jal          tp, 23f
16:               jal          ra, 18f
17:               jal          t1, 13b
18:               jal          a7, 2b
19:               jal          ra, 11b
20:               jal          ra, 25f
21:               jal          t1, 10b
22:               jal          ra, 14b
23:               jal          ra, 17b
24:               jal          ra, 8b
25:               jal          ra, 19b
26:               xori         t2, s6, -1064
sub_2_9:          jal          s8, 11f
0:                jal          t1, 3f
1:                jal          t2, 12f
2:                jal          t1, 1b
3:                jal          s7, 10f
4:                jal          t1, 0b
5:                jal          t1, 2b
6:                jal          t0, 13f
7:                jal          ra, 14f
8:                jal          t1, 5b
9:                jal          ra, 8b
10:               jal          ra, 9b
11:               jal          ra, 4b
12:               jal          ra, 6b
13:               jal          ra, 7b
14:               slli         t6, sp, 3
sub_2_8:          jal          s8, 17f
0:                jal          t1, 11f
1:                jal          t1, 10f
2:                jal          t1, 20f
3:                jal          t0, 1b
4:                jal          t3, 12f
5:                jal          t1, 13f
6:                jal          tp, 15f
7:                jal          t1, 3b
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          t5, 6b
11:               jal          t1, 16f
12:               jal          ra, 2b
13:               jal          a2, 18f
14:               jal          tp, 8b
15:               jal          ra, 14b
16:               jal          ra, 19f
17:               jal          t1, 9b
18:               jal          ra, 7b
19:               jal          ra, 4b
20:               sltu         a1, gp, a6
sub_2_5:          jal          s8, 17f
0:                jal          ra, 6f
1:                jal          ra, 27f
2:                jal          tp, 4f
3:                jal          a7, 2b
4:                jal          ra, 14f
5:                jal          a2, 24f
6:                jal          ra, 11f
7:                jal          t1, 26f
8:                jal          ra, 0b
9:                jal          ra, 15f
10:               jal          ra, 25f
11:               jal          gp, 23f
12:               jal          ra, 16f
13:               jal          ra, 5b
14:               jal          t1, 9b
15:               jal          ra, 10b
16:               jal          ra, 1b
17:               jal          s10, 8b
18:               jal          ra, 12b
19:               jal          t1, 18b
20:               jal          s2, 13b
21:               jal          ra, 22f
22:               jal          ra, 19b
23:               jal          t0, 20b
24:               jal          ra, 3b
25:               jal          ra, 7b
26:               jal          ra, 21b
27:               xori         ra, a1, -1046
sub_2_14:         jal          s8, 6f
0:                jal          ra, 26f
1:                jal          t0, 0b
2:                jal          s10, 15f
3:                jal          t1, 11f
4:                jal          t1, 14f
5:                jal          ra, 18f
6:                jal          t6, 17f
7:                jal          ra, 9f
8:                jal          t1, 7b
9:                jal          t1, 19f
10:               jal          ra, 22f
11:               jal          t1, 24f
12:               jal          ra, 16f
13:               jal          ra, 12b
14:               jal          s10, 21f
15:               jal          ra, 4b
16:               jal          t4, 20f
17:               jal          s2, 8b
18:               jal          ra, 10b
19:               jal          s10, 2b
20:               jal          t1, 27f
21:               jal          ra, 1b
22:               jal          t3, 3b
23:               jal          t1, 25f
24:               jal          ra, 13b
25:               jal          t1, 5b
26:               jal          ra, 23b
27:               addi         a3, a3, 950
sub_2_0:          jal          s8, 17f
0:                jal          ra, 11f
1:                jal          s1, 29f
2:                jal          ra, 28f
3:                jal          t5, 23f
4:                jal          t1, 9f
5:                jal          t5, 19f
6:                jal          ra, 15f
7:                jal          ra, 2b
8:                jal          tp, 20f
9:                jal          s5, 1b
10:               jal          ra, 18f
11:               jal          tp, 10b
12:               jal          t1, 7b
13:               jal          ra, 24f
14:               jal          ra, 21f
15:               jal          t1, 4b
16:               jal          ra, 27f
17:               jal          ra, 14b
18:               jal          t2, 6b
19:               jal          t1, 16b
20:               jal          ra, 3b
21:               jal          t1, 0b
22:               jal          ra, 13b
23:               jal          t1, 25f
24:               jal          t1, 5b
25:               jal          s5, 22b
26:               jal          ra, 30f
27:               jal          ra, 26b
28:               jal          gp, 8b
29:               jal          a3, 12b
30:               or           t2, t0, s5
sub_2_3:          jal          s8, 17f
0:                jal          s11, 13f
1:                jal          ra, 11f
2:                jal          t1, 19f
3:                jal          ra, 14f
4:                jal          a1, 21f
5:                jal          s10, 9f
6:                jal          t1, 8f
7:                jal          ra, 12f
8:                jal          a5, 18f
9:                jal          gp, 26f
10:               jal          ra, 23f
11:               jal          ra, 24f
12:               jal          t1, 4b
13:               jal          a4, 20f
14:               jal          t3, 22f
15:               jal          ra, 6b
16:               jal          s5, 1b
17:               jal          t0, 10b
18:               jal          a6, 2b
19:               jal          ra, 16b
20:               jal          ra, 15b
21:               jal          s1, 3b
22:               jal          a3, 25f
23:               jal          ra, 0b
24:               jal          ra, 7b
25:               jal          ra, 5b
26:               xori         ra, s2, 1187
sub_2_7:          jal          s8, 8f
0:                jal          ra, 12f
1:                jal          t1, 11f
2:                jal          ra, 16f
3:                jal          s4, 2b
4:                jal          ra, 13f
5:                jal          t1, 3b
6:                jal          t3, 4b
7:                jal          ra, 6b
8:                jal          a7, 0b
9:                jal          ra, 15f
10:               jal          ra, 5b
11:               jal          t3, 10b
12:               jal          ra, 9b
13:               jal          ra, 1b
14:               jal          ra, 17f
15:               jal          t4, 7b
16:               jal          t3, 14b
17:               ori          s8, ra, 640
sub_2_4:          jal          s8, 8f
0:                jal          s6, 4f
1:                jal          s8, 6f
2:                jal          ra, 9f
3:                jal          ra, 5f
4:                jal          t1, 13f
5:                jal          ra, 12f
6:                jal          t1, 11f
7:                jal          sp, 2b
8:                jal          t1, 10f
9:                jal          t0, 14f
10:               jal          t0, 3b
11:               jal          ra, 7b
12:               jal          s10, 0b
13:               jal          s8, 1b
14:               lui          a3, 576578
                  bge          a3, a3, 10f
                  beq          t0, a1, 20f
                  sll          t3, tp, a1
                  srl          t4, t4, s11
                  sub          s5, a5, s2
                  slti         gp, t6, -1606
                  nop
                  slt          s1, s2, tp
                  add          a6, t2, s8
                  slti         s2, s4, -1138
10:               beq          t4, t2, 17f
                  slt          s2, s7, sp
                  xori         s5, zero, 384
                  srai         s1, gp, 9
                  sltiu        t4, s4, 1663
                  andi         a0, s7, 253
                  sll          s4, a1, zero
17:               slti         ra, t2, -1021
                  bltu         gp, a4, 37f
                  sra          zero, a5, sp
20:               andi         s8, s4, -1301
                  bltu         s11, s6, 25f
                  nop
                  auipc        zero, 54416
                  sltiu        s4, s8, 1177
25:               bgeu         sp, zero, 42f
                  addi         a7, s10, 561
                  bltu         s8, s1, 34f
                  add          sp, s3, a4
                  ori          t5, t4, 215
                  lui          s8, 754926
                  slti         ra, s6, -527
                  ori          a2, gp, -1535
                  slti         s8, a5, -1952
34:               slti         a2, s1, 515
                  bne          s2, a4, 43f
                  slli         s6, t1, 14
37:               slti         t1, a6, 911
                  nop
                  slli         t1, s9, 3
                  slti         a6, s0, 1898
                  addi         gp, t2, 1024
42:               srai         s4, t2, 28
43:               lui          a2, 553428
                  bgeu         sp, a3, 63f
                  slt          t5, a3, t4
                  slti         a6, s9, -1855
                  lui          sp, 506562
                  sltu         s6, t1, a5
                  blt          s11, a3, 56f
                  blt          s4, t1, 62f
                  or           ra, gp, s11
                  andi         s11, a7, -1602
                  srai         s2, t6, 1
                  srli         a4, a7, 15
                  bne          a4, s4, 70f
56:               sltu         t4, a4, s5
                  beq          s0, a3, 69f
                  bgeu         s7, a0, 61f
                  addi         s10, s11, 1627
                  ori          zero, a6, -1870
61:               add          s11, s1, s11
62:               blt          s7, t4, 82f
63:               beq          s7, gp, 75f
                  beq          s11, ra, 83f
                  sll          a2, s3, tp
                  bltu         s6, t3, 68f
                  slli         s10, gp, 26
68:               sltu         a3, tp, gp
69:               bgeu         t4, tp, 79f
70:               ori          a4, t2, -1468
                  lui          t2, 564687
                  blt          a6, s0, 78f
                  sltiu        a7, s5, -1888
                  beq          sp, t2, 75f
75:               xori         a6, t6, 865
                  srl          t1, t5, a0
                  beq          a4, s0, 90f
78:               auipc        a3, 333415
79:               andi         a1, s9, -1499
                  bge          tp, gp, 100f
sub_2_11:         jal          s8, 0f
0:                jal          ra, 5f
1:                jal          ra, 6f
2:                jal          ra, 12f
3:                jal          gp, 10f
4:                jal          tp, 15f
5:                jal          t1, 4b
6:                jal          t1, 19f
7:                jal          ra, 20f
8:                jal          a0, 17f
9:                jal          ra, 16f
10:               jal          ra, 13f
11:               jal          s10, 8b
12:               jal          tp, 1b
13:               jal          ra, 21f
14:               jal          t3, 18f
15:               jal          t0, 2b
16:               jal          t1, 22f
17:               jal          s6, 3b
18:               jal          ra, 7b
19:               jal          ra, 11b
20:               jal          ra, 9b
21:               jal          t1, 14b
22:               ori          tp, s3, 1987
                  blt          a6, t3, 99f
82:               beq          t0, t6, 86f
83:               xori         a1, t1, -654
                  srl          ra, tp, s2
                  bge          s4, s8, 86f
86:               andi         s4, a7, 1763
                  addi         ra, t1, 72
                  blt          s5, t2, 99f
                  srai         a1, t4, 19
90:               slt          t0, t3, s9
                  or           s4, tp, s3
                  slli         a6, sp, 17
                  andi         s8, t5, -1313
                  bne          t2, s6, 104f
                  srai         t2, s4, 18
                  srai         s2, s8, 20
                  add          a2, s4, s10
                  andi         a0, sp, -1717
99:               add          s1, tp, a3
100:              bgeu         a4, s7, 109f
                  blt          a0, gp, 118f
                  sltu         a3, ra, a4
                  addi         tp, s7, -1289
104:              addi         a4, s3, 1825
                  sra          s2, s5, t5
                  slti         t0, s9, -1217
                  sltiu        t2, t2, 592
                  xori         t0, a4, 22
109:              sub          a1, a1, a4
                  xor          a0, zero, s6
                  addi         a2, a7, 575
                  and          s10, gp, s5
                  sra          ra, a3, t6
                  blt          t5, ra, 133f
                  andi         s8, s4, 607
                  lui          zero, 189045
                  addi         t1, s6, -109
118:              addi         a6, s11, 728
                  sra          s7, t1, s3
                  ori          t2, s5, 1167
                  sltiu        s2, a2, 920
                  lui          zero, 973024
                  xor          a5, a4, s6
                  sll          t6, ra, t2
                  nop
                  sltiu        a0, sp, -674
                  bltu         sp, s7, 131f
                  beq          s10, zero, 146f
                  lui          t0, 727353
                  sub          tp, s5, s0
131:              bne          tp, a2, 139f
                  bge          s9, s7, 142f
133:              sll          sp, s0, zero
                  slt          a0, t2, zero
                  lui          ra, 907332
                  addi         a5, a7, 297
                  slt          a1, s6, a0
                  add          t5, s6, a2
139:              xori         a3, s3, -1780
                  auipc        a3, 82739
                  bgeu         s7, a0, 153f
142:              beq          s3, tp, 161f
                  sltu         zero, sp, s10
sub_2_1:          jal          s8, 0f
0:                jal          ra, 3f
1:                jal          ra, 29f
2:                jal          ra, 28f
3:                jal          ra, 4f
4:                jal          t1, 9f
5:                jal          ra, 14f
6:                jal          ra, 17f
7:                jal          ra, 21f
8:                jal          s6, 7b
9:                jal          a4, 8b
10:               jal          ra, 13f
11:               jal          ra, 20f
12:               jal          ra, 15f
13:               jal          t1, 19f
14:               jal          t1, 11b
15:               jal          t0, 10b
16:               jal          ra, 27f
17:               jal          ra, 25f
18:               jal          ra, 26f
19:               jal          ra, 18b
20:               jal          gp, 6b
21:               jal          gp, 12b
22:               jal          a6, 30f
23:               jal          a5, 5b
24:               jal          a1, 2b
25:               jal          ra, 16b
26:               jal          t1, 1b
27:               jal          t1, 24b
28:               jal          t1, 22b
29:               jal          ra, 23b
30:               andi         a5, s11, -1618
                  bltu         a3, a4, 148f
                  sll          a4, tp, a1
146:              xor          s6, tp, sp
                  sra          t4, t0, s11
148:              beq          sp, s7, 155f
                  ori          t1, a5, -1500
                  sltu         t4, s10, s9
                  xori         a6, a2, 985
                  srl          t6, ra, t5
153:              slti         a7, t6, -683
                  nop
155:              addi         t0, s11, -1039
                  xor          a6, s1, s4
                  slti         s4, t0, -418
                  srai         t3, s8, 8
                  andi         t0, ra, 787
                  nop
161:              xori         s11, t5, 388
                  and          s11, s6, s9
                  bne          s11, s11, 170f
                  bge          s4, s8, 166f
                  slli         t5, gp, 3
166:              sll          t1, a4, s0
                  slt          s8, a2, t3
                  auipc        a2, 493206
                  bgeu         sp, ra, 181f
170:              srli         s11, zero, 8
                  or           a3, ra, a6
                  sra          a1, s7, a5
                  slti         s5, tp, -1031
                  sra          s11, s7, a1
                  srli         t5, t5, 7
                  auipc        s1, 170423
                  or           tp, t4, s11
                  bne          s9, tp, 188f
                  bge          t5, s2, 185f
                  sub          ra, t4, a2
181:              blt          a7, s9, 188f
                  lui          a3, 327665
                  bltu         s3, a6, sub_2_j6 #branch to jump instr
                  sltu         zero, gp, a3
                  xor          ra, t2, s3
                  sltu         s10, s4, a3
                  nop
                  auipc        a2, 383250
sub_2_j6:         jal          s8, sub_3 #jump sub_2 -> sub_3
                  auipc        t6, 566702
                  slt          s2, t3, zero
                  xor          a0, s6, t0
185:              beq          s3, t2, 188f
                  and          s4, s9, t6
                  slt          sp, s3, s10
188:              sra          tp, t3, a1
                  xor          s2, t5, a5
                  sltu         s6, s8, t1
                  sub          sp, a4, gp
                  bgeu         tp, s11, 205f
                  srl          zero, zero, s8
                  bgeu         sp, s3, 211f
                  srl          sp, s2, tp
                  srl          s10, t6, s0
                  auipc        s6, 332970
                  blt          s4, s3, 199f
199:              add          s1, a1, a1
                  auipc        a7, 447418
                  srai         a4, s1, 9
                  addi         t2, t3, -742
                  xori         tp, t3, -246
                  srl          t5, gp, s2
205:              ori          a7, ra, 945
                  blt          t3, a5, 223f
                  bltu         s2, t4, 208f
208:              sll          t0, s7, a4
                  bge          a7, s8, 229f
                  ori          s7, tp, 1658
211:              sll          t4, s5, t0
                  sra          ra, sp, gp
                  blt          s8, ra, 225f
                  auipc        t4, 210510
                  bne          a6, s1, 226f
                  lui          t5, 161314
                  srai         a1, a0, 1
                  sub          s7, t3, s7
                  ori          s1, s9, -1859
                  sub          t6, s8, t2
                  lui          s8, 137287
                  slt          s7, s5, s9
223:              lui          gp, 631464
                  bgeu         s8, s11, 243f
225:              sub          tp, t3, t5
226:              auipc        a4, 294622
                  sltiu        s2, zero, -431
                  bgeu         t5, t5, 237f
229:              bltu         s3, s11, 249f
                  srai         t4, s5, 7
                  bge          s9, s3, 246f
                  sll          s5, a4, a1
                  auipc        a6, 328048
                  and          a0, t0, s0
                  xor          s6, t2, a7
                  beq          a2, s1, 255f
237:              addi         a7, s9, 1791
                  sll          sp, s7, sp
                  or           s5, s5, s8
                  srli         t4, t2, 17
                  auipc        a7, 39243
                  sra          s10, a4, a4
243:              bge          sp, t2, 253f
                  bltu         s4, a1, 254f
                  bge          s1, sp, 254f
246:              bltu         s4, ra, 266f
                  andi         tp, t1, -125
                  srli         a5, s6, 4
249:              andi         a4, s0, -1941
                  sra          s1, a6, a5
                  nop
                  ori          s6, t5, 1839
253:              or           s10, s11, a6
254:              lui          zero, 592757
255:              addi         s7, a2, 1115
                  srli         s6, t3, 29
                  lui          a7, 243396
                  beq          s2, t5, 269f
                  ori          s1, a5, -1015
                  lui          a6, 657145
                  bge          a0, t1, 269f
                  srl          a1, sp, ra
                  bltu         a2, tp, 282f
                  srli         t4, s8, 0
                  xori         t2, s5, -1271
266:              beq          a7, s4, 285f
                  bge          a7, t4, 271f
                  addi         t1, s0, 1269
269:              bgeu         a0, t1, 281f
                  srai         tp, t4, 22
271:              andi         s5, s3, 1538
                  sub          t4, gp, s10
                  slli         a7, a3, 14
                  bge          t1, t5, 291f
                  slt          s5, a6, s11
                  xori         s10, s5, 1643
                  nop
                  nop
                  bge          a2, zero, 299f
                  srai         ra, a1, 4
281:              srli         s10, s8, 19
282:              ori          t1, a3, -834
                  slli         t5, s0, 6
                  slli         gp, s4, 13
285:              add          s2, s8, t5
                  addi         s8, t2, 690
                  bgeu         t2, t5, 294f
                  bgeu         s5, s5, 290f
                  srli         s1, a3, 11
290:              lui          s8, 236062
291:              xori         gp, s6, -608
                  srl          t0, a6, a0
                  sltu         a1, t5, a4
294:              bge          a2, t6, 301f
                  slli         a6, t6, 11
                  slli         a7, zero, 30
                  beq          s11, t4, 315f
                  nop
299:              or           a0, s2, a3
                  slti         s2, sp, -955
301:              sltu         a2, a4, a3
                  blt          a3, a7, 315f
                  sll          a2, s9, a0
                  addi         t6, a5, 1150
                  sra          a4, t1, t2
                  andi         a5, t5, 535
                  blt          s1, s3, 326f
                  add          t4, gp, s11
                  blt          s10, gp, 312f
                  xor          a4, s1, s0
                  srai         a3, sp, 28
312:              beq          a4, ra, 324f
                  bgeu         s6, s0, 323f
                  sub          t4, t0, s11
315:              bge          sp, s5, 334f
                  srli         a7, t4, 2
                  bge          t6, a5, 327f
                  and          t6, s4, s5
                  sra          t4, t6, a7
                  sra          s7, a2, t3
                  ori          tp, tp, -1368
                  sltu         t6, a3, s6
323:              slt          s8, t6, a1
324:              or           tp, sp, s2
                  sra          tp, a6, a4
326:              or           s5, s0, s1
327:              sll          s10, t3, s6
                  bge          a1, t5, 340f
                  sra          s10, t5, s1
                  srai         a7, sp, 16
                  addi         t2, t3, -1384
                  blt          ra, s5, 333f
333:              sltu         t1, s8, a7
334:              nop
                  sub          t1, t2, s2
                  bgeu         tp, a1, 343f
                  addi         t6, s2, 259
                  addi         gp, t0, -714
                  sra          t0, a3, ra
340:              bgeu         a1, a4, 355f
                  sltu         a2, ra, sp
                  xor          s2, s8, s6
343:              lui          ra, 291811
                  srl          gp, s4, s7
                  xori         t5, tp, -833
                  blt          s1, a6, 347f
347:              lui          a5, 267620
                  srai         a3, s6, 21
                  or           s4, t1, ra
                  srli         s8, t1, 27
                  bge          s5, t4, 355f
                  andi         a7, s11, -573
                  sub          s11, t3, a4
                  bltu         zero, s3, 360f
355:              auipc        a6, 960477
                  bge          s2, s6, 373f
                  bge          a6, t4, 361f
                  slti         zero, s10, -1793
                  nop
360:              lui          tp, 483725
361:              andi         s1, s1, 1980
                  ori          s1, s4, 846
                  blt          t6, a5, 374f
                  xori         a6, s11, 1056
                  ori          t3, s1, 1341
                  bgeu         a4, t5, 376f
                  srl          t2, a6, a3
                  bgeu         sp, s1, 387f
                  andi         t0, s0, -973
                  sltiu        gp, a4, 777
                  or           t6, a2, s8
                  bgeu         s5, s0, 374f
373:              srli         s6, s10, 31
374:              bne          a2, gp, 389f
                  sub          t3, a3, s6
376:              slt          s5, tp, t5
                  slli         a7, s7, 26
                  sll          ra, s10, zero
                  lui          s11, 347282
                  srai         s6, a3, 1
                  sltu         s8, s2, s1
                  bgeu         a0, t6, 399f
                  bgeu         a3, tp, 402f
                  ori          t3, a4, -1543
                  srl          a3, tp, a6
                  srl          t5, a4, zero
387:              bge          ra, a5, 399f
                  bltu         a6, gp, 389f
389:              bltu         a5, s8, 406f
                  bgeu         s1, t4, 396f
                  xor          zero, a1, s0
                  addi         a0, s1, -1712
                  slli         sp, ra, 13
                  andi         t6, a1, -768
                  and          t6, t6, zero
396:              addi         s8, s5, 1523
                  bgeu         s5, t2, 416f
                  sra          a5, s6, a0
399:              srl          t3, s9, t4
                  ori          zero, s7, -1767
                  sltu         a6, s5, a4
402:              lui          ra, 89333
                  lui          s5, 128309
                  bgeu         s10, zero, 416f
                  or           s5, a7, a3
406:              blt          s11, s5, 409f
                  sll          s2, s3, t6
                  nop
409:              addi         s6, a4, -670
                  sltu         a6, tp, a6
                  srai         a1, t6, 28
                  andi         zero, a0, 1708
                  slt          a6, s3, t3
                  srl          a5, a4, t5
                  and          s1, zero, a4
                  addi         ra, t6, -211
                  sltu         t1, a1, a2
                  slti         s4, a7, 716
                  auipc        s7, 284231
                  sll          a1, tp, t3
                  sltiu        a6, t0, -706
                  sll          s7, gp, t5
sub_2_j5:         jal          s8, sub_3 #jump sub_2 -> sub_3
                  xor          a5, s0, a0
                  ori          t6, zero, -855
416:              nop
                  or           s1, s9, s0
                  lui          s10, 311162
                  bne          t4, ra, 432f
                  bge          t4, s11, 424f
                  bgeu         a1, a1, 441f
                  xor          a0, ra, s2
                  bne          s1, s0, 430f
424:              blt          t3, zero, 442f
                  sltu         a7, a3, a7
                  beq          s6, a1, 436f
                  sll          t0, t1, s3
                  lui          s4, 709571
                  srl          t4, a2, a3
430:              bne          ra, a1, 437f
                  bge          s9, gp, 432f
432:              srli         s5, s5, 6
                  srai         s6, s1, 20
                  add          s11, t5, t4
                  addi         zero, t1, -168
436:              slli         ra, s11, 9
437:              add          s2, s3, s10
                  sra          ra, sp, s6
                  nop
                  xor          s1, t0, s8
441:              sub          a4, s6, a2
442:              srai         a5, t3, 29
                  sub          s11, ra, gp
                  blt          a4, s11, 463f
                  addi         t6, zero, -1715
                  sll          t2, t6, sp
                  sub          s10, s7, a6
                  andi         s5, s9, -424
                  or           ra, s11, a1
sub_2_13:         jal          s8, 0f
0:                jal          ra, 10f
1:                jal          t1, 2f
2:                jal          s10, 3f
3:                jal          ra, 12f
4:                jal          t1, 11f
5:                jal          ra, 14f
6:                jal          t1, 8f
7:                jal          ra, 4b
8:                jal          tp, 13f
9:                jal          ra, 5b
10:               jal          ra, 7b
11:               jal          s10, 6b
12:               jal          ra, 9b
13:               jal          ra, 1b
14:               sra          s8, gp, ra
                  xor          gp, s3, s5
                  beq          s4, s3, 459f
                  sltiu        ra, a2, -24
                  slti         t6, a4, 841
                  beq          s11, a0, 461f
                  sltiu        a5, s2, -1707
                  andi         ra, t0, -32
                  sltu         sp, s4, a4
                  bge          t6, a3, 478f
459:              nop
                  bgeu         a3, s5, 472f
461:              auipc        tp, 1022698
                  and          s6, s7, s0
463:              add          t4, t1, s3
                  and          gp, s5, a3
                  srl          t2, t0, a1
                  lui          t3, 632127
                  slti         t6, s2, 426
                  srl          a6, a0, s6
                  bne          sp, s6, 478f
                  srai         s7, a6, 8
                  bgeu         a4, tp, 481f
472:              bne          sp, t3, 481f
                  xor          s2, s7, s9
                  blt          a0, sp, 481f
                  srli         t5, a3, 4
                  slti         ra, s9, -1625
                  slt          a7, a2, s5
478:              slli         a3, gp, 26
                  srai         s4, a6, 5
                  bltu         a6, a1, 495f
481:              blt          t5, t1, 482f
482:              sra          a3, s1, s9
                  add          a0, a6, s1
                  bne          t6, t3, 503f
                  srai         t3, s11, 0
                  lui          t5, 738764
                  and          s7, a3, a1
                  bge          a2, a3, 492f
                  or           t1, t5, ra
                  blt          t0, s10, 494f
                  or           ra, t1, ra
492:              xori         s11, t6, -1166
                  bge          a4, s3, 504f
494:              lui          s8, 1041460
495:              beq          s9, s1, 503f
                  bgeu         s1, s5, 508f
                  or           a5, t2, a4
                  auipc        s6, 90288
                  or           s4, tp, s6
                  and          a6, t0, s3
                  xor          gp, s2, s6
                  bgeu         s5, ra, 519f
503:              or           s11, a0, s5
504:              lui          t4, 523581
                  beq          a1, t2, 523f
                  bge          s6, s4, 525f
                  bgeu         t2, s6, 513f
508:              slli         t5, ra, 6
                  xori         s11, s2, -1870
                  sra          a1, s0, s4
                  or           s8, gp, s3
                  srl          a7, a1, t2
513:              andi         a5, zero, 94
                  lui          a4, 297021
                  nop
                  ori          gp, s7, 1969
                  slti         a7, s6, -142
                  bltu         a7, a7, 531f
519:              addi         t0, s10, -462
                  srl          a4, s8, a0
                  sll          a1, a6, ra
                  bge          sp, s9, 541f
523:              bgeu         s2, s6, 535f
                  srli         a6, s9, 15
525:              sub          s10, s1, t2
                  andi         ra, s3, -1680
                  bge          t1, s10, 529f
                  sra          t0, s8, zero
529:              lui          t0, 253257
                  sra          a4, s5, t6
531:              bgeu         sp, s10, 551f
                  blt          s3, s8, 549f
                  add          t5, t6, t6
                  sub          gp, s9, a6
535:              andi         t3, s0, -1464
                  lui          a2, 148417
                  blt          gp, s3, 547f
                  slti         a2, t4, -1396
                  andi         a6, zero, -383
                  sltu         a0, s5, a7
541:              slt          s1, s0, s0
                  srai         t5, a6, 22
                  srli         a7, a3, 29
                  add          a5, s2, t1
                  slt          s10, s10, s10
                  blt          t3, a3, 553f
547:              bltu         a1, t5, 550f
                  add          t3, s10, s5
549:              bne          a2, s4, 569f
550:              xori         gp, s2, -869
551:              slli         a5, s11, 15
                  or           t6, s10, s10
553:              and          a7, zero, tp
                  srai         a0, t3, 2
                  xori         t5, s10, -175
                  srl          s11, a5, a7
                  blt          a0, t1, 564f
                  sltiu        s1, sp, 1544
                  bge          s4, tp, 569f
                  andi         s1, t3, -892
                  bgeu         a3, s0, 562f
562:              bltu         a3, t0, 574f
                  sub          s7, a3, a3
564:              lui          s8, 962349
                  beq          s0, a3, 584f
                  andi         s2, a1, -690
                  sra          t1, t6, s7
                  sub          ra, a3, t2
569:              sra          a6, s2, tp
                  beq          s2, a2, 580f
                  and          a2, s9, s6
                  slt          s6, s10, t0
                  sll          t3, s3, ra
574:              auipc        t2, 895351
                  and          a1, t6, s8
                  addi         s2, t0, -338
                  blt          s6, a1, 587f
                  blt          a6, s2, 598f
                  or           t0, a4, a3
580:              srai         gp, tp, 12
                  sub          zero, a2, t6
                  blt          a4, t5, 601f
                  sltiu        a4, a5, 849
584:              slli         t2, sp, 21
                  slti         zero, s9, -768
                  auipc        t5, 528575
587:              sll          s1, t0, s3
                  ori          a5, t1, -17
                  bltu         a4, s3, 608f
                  andi         zero, t3, 1978
                  srl          t5, s0, a1
                  ori          a0, s5, 1687
                  bgeu         t5, a5, 594f
594:              xor          s7, tp, t6
                  slti         gp, s4, -67
                  andi         zero, a0, 271
                  xori         t2, sp, 1472
598:              bge          s3, t1, 616f
                  bne          a3, a7, 600f
600:              sub          s6, t5, s11
sub_2_2:          jal          s8, 10f
0:                jal          ra, 5f
1:                jal          t1, 11f
2:                jal          t1, 7f
3:                jal          ra, 1b
4:                jal          a7, 6f
5:                jal          ra, 9f
6:                jal          ra, 8f
7:                jal          ra, 12f
8:                jal          t1, 3b
9:                jal          ra, 15f
10:               jal          ra, 13f
11:               jal          ra, 2b
12:               jal          t1, 0b
13:               jal          tp, 14f
14:               jal          t1, 4b
15:               xor          ra, a0, s3
601:              slli         ra, s10, 17
                  xori         s10, a2, 1880
                  sub          s6, s3, a1
                  blt          a3, s2, 614f
                  sltiu        s4, s3, -167
                  and          t6, s8, s5
                  or           tp, s2, t4
608:              xori         a6, a6, 1463
                  lui          ra, 540144
                  sll          t4, a2, t2
                  slt          t5, t4, t2
                  srl          s2, s5, a0
                  srli         s10, s6, 12
614:              ori          a6, s0, -2037
                  addi         ra, t0, -108
616:              sltu         tp, s9, a1
                  add          zero, s4, t3
                  and          a7, a3, a6
                  xori         a3, tp, 1775
                  beq          gp, a5, 624f
                  slli         s8, s1, 4
                  xor          ra, t0, s4
                  xori         a3, t3, -229
624:              xor          t1, s6, t2
                  blt          t6, ra, 629f
                  srl          s4, zero, a7
                  slli         t2, a6, 15
                  slli         s7, s10, 15
629:              beq          a4, a1, 646f
                  and          s8, t2, s7
                  beq          s2, s9, 641f
                  sltiu        tp, sp, -1223
                  blt          s2, s10, 642f
                  bne          a6, s1, 636f
                  slti         a5, s0, -1804
636:              bgeu         t0, s3, 644f
                  slli         a6, a6, 21
                  srl          zero, t0, a5
                  slt          t0, a2, tp
                  sll          sp, sp, s10
641:              beq          t6, t5, 654f
642:              srl          a4, t1, t2
                  sll          t4, ra, s6
644:              xor          s11, a6, a5
                  auipc        s5, 974352
646:              ori          t5, s0, -1631
                  sub          t0, t5, tp
                  and          a7, ra, s8
                  sltiu        s11, a5, -687
                  nop
                  slt          ra, s7, a5
                  srli         sp, s8, 3
                  add          a5, t2, s3
654:              beq          s10, s0, 674f
                  nop
                  sltiu        s5, t0, -1655
                  auipc        t0, 452975
                  bltu         s6, t5, 665f
                  nop
                  lui          s10, 194607
                  and          t6, s6, tp
sub_2_6:          jal          s8, 17f
0:                jal          s8, 2f
1:                jal          ra, 16f
2:                jal          ra, 7f
3:                jal          ra, 14f
4:                jal          ra, 12f
5:                jal          ra, 6f
6:                jal          t5, 8f
7:                jal          tp, 5b
8:                jal          t5, 9f
9:                jal          s8, 13f
10:               jal          t1, 18f
11:               jal          ra, 19f
12:               jal          ra, 1b
13:               jal          ra, 11b
14:               jal          t1, 4b
15:               jal          ra, 10b
16:               jal          ra, 15b
17:               jal          s6, 3b
18:               jal          ra, 0b
19:               ori          t3, t6, 3
                  bge          s3, s10, 674f
                  bltu         gp, s8, 666f
                  bltu         t5, gp, 676f
665:              xori         zero, a3, 1437
666:              sll          s4, s1, s7
                  lui          s1, 315936
                  bgeu         tp, a3, 674f
                  ori          s8, a7, -1631
                  xori         s7, s10, 791
                  bgeu         s5, t5, 678f
                  or           sp, s7, s4
                  bltu         s0, t6, 680f
674:              add          tp, a7, t5
                  srl          s1, s10, s3
676:              sltiu        a6, ra, 1269
                  srai         s10, s0, 27
678:              add          tp, a1, ra
                  xori         ra, t0, -412
680:              sltiu        sp, a0, 1342
                  sll          s2, tp, gp
                  auipc        sp, 934421
                  lui          a6, 29052
                  or           s5, t3, s8
                  srl          a3, s0, zero
                  bge          s0, a0, 698f
                  xor          a2, zero, s11
                  bne          a6, s2, 707f
                  auipc        a4, 390806
                  ori          a7, s6, -1358
                  bge          s0, t0, 710f
                  and          a5, s8, a6
                  srai         s5, t0, 7
                  or           t5, t1, tp
                  lui          a3, 279351
                  and          s4, t0, a5
                  and          a6, s2, s9
698:              sll          ra, t0, a2
                  sra          s1, sp, s6
                  sra          s2, t5, s5
                  andi         s1, s2, -1624
                  or           s2, t0, a2
                  srl          sp, s10, t5
                  addi         s2, a7, 508
                  xor          tp, tp, s7
                  srl          s4, s4, s7
707:              sltu         a4, t0, s11
                  sltu         s4, a6, s2
                  ori          a2, a4, -522
710:              and          tp, s8, s4
                  lui          t1, 522334
                  bgeu         s1, a3, 727f
                  blt          sp, s3, 730f
                  nop
                  lui          s5, 144312
                  andi         s11, a4, -1323
                  beq          sp, s2, 728f
                  srli         t0, t1, 28
                  slli         t3, s10, 10
                  srai         s5, s0, 3
                  sll          zero, t2, t3
                  sll          s4, s0, t1
                  srai         a4, ra, 17
                  sra          ra, s10, sp
                  sra          t1, s3, s2
                  addi         zero, a7, 1573
727:              sra          t2, tp, s5
728:              sll          a3, t1, a2
                  srli         zero, t0, 6
730:              beq          zero, s1, 738f
                  or           a5, tp, a5
                  ori          s5, t0, -1311
                  sltiu        ra, ra, 1325
                  or           a3, s5, s11
                  xori         t2, t4, -258
                  add          s6, zero, t0
                  xor          t2, s5, t1
738:              sltu         s4, a7, s1
                  ori          zero, t4, 756
                  slti         s11, s11, -1281
                  xor          s6, s7, s2
                  srl          t1, t0, a4
                  lui          t5, 320652
                  addi         a4, t6, -877
                  bgeu         s11, tp, 749f
                  add          t3, t0, ra
                  auipc        s4, 1011431
                  add          t3, a2, s4
749:              bne          s2, a1, 768f
                  sra          a7, t6, s9
                  xori         gp, t2, 568
                  bltu         t4, t6, 771f
                  bge          s4, s7, 754f
754:              lui          t5, 105822
                  bge          a4, t4, 765f
                  bne          s10, s7, 759f
                  sltiu        a6, a1, -81
                  bltu         s1, t6, 771f
759:              srl          gp, a3, a6
                  slli         tp, s4, 21
                  bge          a1, t4, 771f
                  slli         s7, t6, 17
                  bne          s10, ra, 771f
                  xori         s4, s9, -986
765:              bltu         s4, s11, 771f
                  nop
                  bltu         s8, gp, 771f
768:              bgeu         ra, gp, 771f
                  slti         a1, sp, -2044
                  srai         a3, s8, 19
771:              andi         gp, s11, 452
                  slt          a6, a0, t6
                  lw           s8, 4(s3)
                  xor          a7, zero, t4
                  andi         a2, a3, 952
                  addi         ra, tp, 1391
                  srl          t6, t5, s4
                  sra          a0, s9, s7
                  addi         s3, s3, 64
                  and          t3, a4, s6
1153:             addi x28, x24, 0
1153:             jalr x28, x28, 0
sub_4:            srai         s10, s6, 20
                  addi         s3, s3, -40
                  andi         gp, s7, 152
                  sw           s8, 4(s3)
                  or           sp, t5, s8
                  xor          s2, s0, a4
                  srai         t6, s10, 9
                  srli         t4, a2, 19
                  auipc        t6, 707459
sub_4_8:          jal          s8, 5f
0:                jal          t1, 10f
1:                jal          t1, 7f
2:                jal          t1, 6f
3:                jal          gp, 18f
4:                jal          t1, 1b
5:                jal          ra, 4b
6:                jal          t4, 0b
7:                jal          ra, 15f
8:                jal          t4, 17f
9:                jal          ra, 16f
10:               jal          t5, 11f
11:               jal          ra, 9b
12:               jal          t1, 2b
13:               jal          ra, 3b
14:               jal          ra, 12b
15:               jal          ra, 13b
16:               jal          ra, 19f
17:               jal          ra, 14b
18:               jal          t0, 8b
19:               jal          t0, 20f
20:               sll          a7, s10, s10
sub_4_21:         jal          s8, 16f
0:                jal          t1, 15f
1:                jal          s10, 6f
2:                jal          a3, 1b
3:                jal          t1, 14f
4:                jal          t1, 3b
5:                jal          ra, 0b
6:                jal          ra, 5b
7:                jal          ra, 12f
8:                jal          t2, 22f
9:                jal          ra, 2b
10:               jal          t3, 19f
11:               jal          t1, 18f
12:               jal          ra, 13f
13:               jal          ra, 17f
14:               jal          ra, 8b
15:               jal          t1, 4b
16:               jal          t1, 7b
17:               jal          t1, 10b
18:               jal          a2, 9b
19:               jal          ra, 21f
20:               jal          s7, 11b
21:               jal          ra, 20b
22:               lui          a3, 439722
sub_4_13:         jal          s8, 6f
0:                jal          t1, 2f
1:                jal          sp, 9f
2:                jal          ra, 7f
3:                jal          ra, 10f
4:                jal          s6, 5f
5:                jal          t1, 0b
6:                jal          ra, 8f
7:                jal          t5, 1b
8:                jal          ra, 4b
9:                jal          t1, 3b
10:               srl          zero, t0, t6
sub_4_7:          jal          s8, 14f
0:                jal          ra, 10f
1:                jal          a0, 18f
2:                jal          ra, 23f
3:                jal          t1, 15f
4:                jal          a7, 6f
5:                jal          ra, 12f
6:                jal          t1, 8f
7:                jal          t1, 9f
8:                jal          s1, 3b
9:                jal          t1, 21f
10:               jal          ra, 2b
11:               jal          ra, 19f
12:               jal          tp, 11b
13:               jal          ra, 5b
14:               jal          t1, 4b
15:               jal          ra, 13b
16:               jal          ra, 20f
17:               jal          ra, 22f
18:               jal          ra, 0b
19:               jal          ra, 17b
20:               jal          a1, 7b
21:               jal          ra, 1b
22:               jal          t1, 16b
23:               nop
sub_4_0:          jal          s8, 7f
0:                jal          a1, 22f
1:                jal          a0, 6f
2:                jal          ra, 12f
3:                jal          t1, 8f
4:                jal          t1, 3b
5:                jal          ra, 15f
6:                jal          ra, 21f
7:                jal          s8, 4b
8:                jal          gp, 18f
9:                jal          t1, 2b
10:               jal          t1, 0b
11:               jal          sp, 24f
12:               jal          ra, 17f
13:               jal          ra, 23f
14:               jal          ra, 13b
15:               jal          ra, 14b
16:               jal          ra, 11b
17:               jal          ra, 19f
18:               jal          t0, 9b
19:               jal          t1, 10b
20:               jal          t3, 16b
21:               jal          a4, 5b
22:               jal          ra, 1b
23:               jal          ra, 20b
24:               jal          t0, 25f
25:               add          t1, t6, a5
sub_4_4:          jal          s8, 20f
0:                jal          sp, 1f
1:                jal          ra, 22f
2:                jal          s10, 17f
3:                jal          t4, 16f
4:                jal          ra, 9f
5:                jal          ra, 8f
6:                jal          ra, 12f
7:                jal          s2, 6b
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               jal          ra, 14f
12:               jal          t2, 23f
13:               jal          tp, 10b
14:               jal          tp, 19f
15:               jal          s11, 4b
16:               jal          t1, 13b
17:               jal          t1, 7b
18:               jal          ra, 21f
19:               jal          t2, 18b
20:               jal          ra, 15b
21:               jal          ra, 5b
22:               jal          a7, 2b
23:               slti         s1, a0, -1565
sub_4_15:         jal          s8, 9f
0:                jal          ra, 3f
1:                jal          gp, 2f
2:                jal          ra, 4f
3:                jal          sp, 6f
4:                jal          ra, 0b
5:                jal          sp, 1b
6:                jal          ra, 10f
7:                jal          a3, 5b
8:                jal          ra, 7b
9:                jal          ra, 8b
10:               addi         s4, a7, 683
sub_4_6:          jal          s8, 19f
0:                jal          ra, 12f
1:                jal          ra, 23f
2:                jal          t1, 1b
3:                jal          t1, 17f
4:                jal          gp, 8f
5:                jal          ra, 16f
6:                jal          ra, 11f
7:                jal          ra, 18f
8:                jal          ra, 2b
9:                jal          ra, 7b
10:               jal          gp, 13f
11:               jal          ra, 3b
12:               jal          ra, 14f
13:               jal          ra, 6b
14:               jal          t1, 21f
15:               jal          t1, 20f
16:               jal          ra, 4b
17:               jal          a5, 22f
18:               jal          t1, 0b
19:               jal          ra, 15b
20:               jal          t4, 9b
21:               jal          a7, 10b
22:               jal          ra, 5b
23:               xor          s1, s8, gp
sub_4_3:          jal          s8, 9f
0:                jal          t1, 4f
1:                jal          s4, 6f
2:                jal          ra, 7f
3:                jal          s1, 1b
4:                jal          t1, 10f
5:                jal          ra, 8f
6:                jal          ra, 2b
7:                jal          ra, 11f
8:                jal          s6, 0b
9:                jal          s4, 5b
10:               jal          ra, 3b
11:               add          s5, t5, t4
sub_4_11:         jal          s8, 9f
0:                jal          a3, 22f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          s10, 25f
4:                jal          s5, 19f
5:                jal          ra, 11f
6:                jal          s10, 5b
7:                jal          ra, 8f
8:                jal          ra, 1b
9:                jal          ra, 13f
10:               jal          a1, 15f
11:               jal          t1, 23f
12:               jal          t1, 27f
13:               jal          ra, 0b
14:               jal          ra, 2b
15:               jal          ra, 21f
16:               jal          t1, 18f
17:               jal          ra, 6b
18:               jal          ra, 4b
19:               jal          t1, 14b
20:               jal          ra, 10b
21:               jal          t1, 17b
22:               jal          ra, 16b
23:               jal          t1, 12b
24:               jal          s1, 20b
25:               jal          t1, 26f
26:               jal          a1, 24b
27:               slli         ra, s7, 6
sub_4_2:          jal          s8, 0f
0:                jal          ra, 15f
1:                jal          sp, 3f
2:                jal          t1, 19f
3:                jal          t1, 20f
4:                jal          ra, 12f
5:                jal          gp, 16f
6:                jal          ra, 9f
7:                jal          ra, 5b
8:                jal          ra, 10f
9:                jal          s11, 11f
10:               jal          ra, 14f
11:               jal          ra, 13f
12:               jal          a7, 1b
13:               jal          ra, 2b
14:               jal          ra, 7b
15:               jal          t1, 6b
16:               jal          gp, 4b
17:               jal          ra, 18f
18:               jal          t1, 8b
19:               jal          ra, 17b
20:               slli         t5, t6, 17
sub_4_5:          jal          s8, 11f
0:                jal          a6, 8f
1:                jal          ra, 14f
2:                jal          ra, 1b
3:                jal          a4, 13f
4:                jal          ra, 16f
5:                jal          ra, 17f
6:                jal          s7, 12f
7:                jal          t1, 3b
8:                jal          t5, 10f
9:                jal          s7, 0b
10:               jal          ra, 4b
11:               jal          t4, 7b
12:               jal          ra, 9b
13:               jal          sp, 6b
14:               jal          t1, 15f
15:               jal          s4, 5b
16:               jal          ra, 2b
17:               auipc        a2, 131902
sub_4_22:         jal          s8, 11f
0:                jal          ra, 7f
1:                jal          ra, 5f
2:                jal          s1, 3f
3:                jal          t1, 0b
4:                jal          gp, 16f
5:                jal          t2, 10f
6:                jal          t1, 14f
7:                jal          t1, 9f
8:                jal          t1, 13f
9:                jal          t0, 1b
10:               jal          ra, 8b
11:               jal          ra, 12f
12:               jal          t1, 6b
13:               jal          s11, 4b
14:               jal          t1, 15f
15:               jal          ra, 2b
16:               srai         a3, s6, 1
sub_4_16:         jal          s8, 7f
0:                jal          ra, 13f
1:                jal          sp, 0b
2:                jal          ra, 5f
3:                jal          ra, 6f
4:                jal          s7, 14f
5:                jal          t1, 12f
6:                jal          a5, 1b
7:                jal          t0, 2b
8:                jal          ra, 4b
9:                jal          ra, 15f
10:               jal          ra, 9b
11:               jal          ra, 3b
12:               jal          tp, 11b
13:               jal          t4, 10b
14:               jal          ra, 17f
15:               jal          t0, 16f
16:               jal          ra, 8b
17:               sra          ra, a5, ra
sub_4_18:         jal          s8, 5f
0:                jal          t1, 1f
1:                jal          s1, 12f
2:                jal          sp, 4f
3:                jal          t1, 10f
4:                jal          ra, 11f
5:                jal          ra, 0b
6:                jal          ra, 3b
7:                jal          ra, 2b
8:                jal          ra, 9f
9:                jal          t1, 7b
10:               jal          ra, 8b
11:               jal          ra, 13f
12:               jal          t1, 6b
13:               and          a3, s3, s7
sub_4_23:         jal          s8, 17f
0:                jal          ra, 14f
1:                jal          ra, 12f
2:                jal          ra, 5f
3:                jal          ra, 19f
4:                jal          ra, 10f
5:                jal          ra, 20f
6:                jal          ra, 3b
7:                jal          a1, 2b
8:                jal          t1, 18f
9:                jal          ra, 6b
10:               jal          t1, 7b
11:               jal          ra, 16f
12:               jal          ra, 9b
13:               jal          t1, 4b
14:               jal          ra, 21f
15:               jal          ra, 1b
16:               jal          ra, 13b
17:               jal          t1, 11b
18:               jal          ra, 0b
19:               jal          t1, 8b
20:               jal          t0, 15b
21:               nop
sub_4_12:         jal          s8, 13f
0:                jal          a0, 3f
1:                jal          ra, 4f
2:                jal          ra, 16f
3:                jal          t1, 2b
4:                jal          s5, 6f
5:                jal          a7, 11f
6:                jal          s7, 15f
7:                jal          s6, 9f
8:                jal          ra, 1b
9:                jal          t2, 14f
10:               jal          t1, 8b
11:               jal          t5, 0b
12:               jal          s1, 7b
13:               jal          ra, 12b
14:               jal          ra, 10b
15:               jal          t4, 5b
16:               and          t0, s9, s7
sub_4_17:         jal          s8, 3f
0:                jal          t1, 20f
1:                jal          t2, 14f
2:                jal          ra, 22f
3:                jal          t1, 15f
4:                jal          t4, 19f
5:                jal          s10, 27f
6:                jal          t2, 4b
7:                jal          s11, 23f
8:                jal          ra, 25f
9:                jal          ra, 24f
10:               jal          ra, 1b
11:               jal          ra, 8b
12:               jal          tp, 7b
13:               jal          ra, 18f
14:               jal          t1, 12b
15:               jal          gp, 16f
16:               jal          ra, 13b
17:               jal          t0, 10b
18:               jal          t1, 11b
19:               jal          ra, 26f
20:               jal          t1, 5b
21:               jal          ra, 6b
22:               jal          s1, 9b
23:               jal          s5, 0b
24:               jal          ra, 17b
25:               jal          sp, 2b
26:               jal          ra, 28f
27:               jal          t1, 21b
28:               auipc        a5, 348327
                  or           t6, a0, s5
                  or           ra, s4, tp
                  xori         zero, a4, 1945
                  addi         a3, s7, -38
                  lui          tp, 89569
                  sll          s8, s6, s10
                  slli         tp, a2, 28
                  sra          a3, s1, s5
                  auipc        a1, 505724
                  srai         a7, s2, 8
                  sll          s10, s0, t1
                  bgeu         a6, a1, 26f
                  srl          a3, a5, t2
                  andi         a4, gp, 66
                  or           a6, a2, t6
                  xori         s11, a7, -615
                  slli         gp, sp, 11
                  sra          s10, t0, s11
                  bltu         s7, s0, 28f
                  srli         t6, a4, 8
                  sltu         t4, s7, a7
                  blt          s10, t6, 24f
                  sll          s2, s7, a1
                  add          s4, s5, a1
24:               srl          t2, a6, tp
                  add          zero, t1, s4
26:               sltu         s8, zero, s2
                  beq          t4, t5, 37f
28:               sub          t4, a2, t6
                  srai         s8, t3, 27
                  add          a4, a2, t5
                  bge          a7, a3, 36f
                  nop
                  sltiu        zero, s6, 1857
                  sll          a2, tp, s11
                  bne          a0, s10, 48f
36:               nop
37:               nop
                  auipc        t6, 130312
                  xori         a7, a5, 1645
                  xori         t6, s6, 820
                  sub          a7, a0, ra
                  bltu         s6, s9, 55f
                  auipc        s10, 452843
                  bgeu         zero, t4, 47f
                  nop
                  beq          s8, t4, 58f
47:               xor          zero, a6, s6
48:               nop
                  and          s5, t6, a1
sub_4_19:         jal          s8, 6f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          ra, 7f
3:                jal          ra, 0b
4:                jal          ra, 3b
5:                jal          ra, 8f
6:                jal          ra, 1b
7:                jal          s4, 9f
8:                jal          ra, 10f
9:                jal          ra, 5b
10:               sltu         t0, s1, a4
                  srl          ra, a1, t0
                  and          a4, s2, s7
                  slli         t1, a6, 2
                  slt          t1, s11, tp
                  bge          a1, s11, 65f
55:               sub          zero, t3, t0
                  auipc        zero, 535645
                  srli         sp, t5, 0
58:               blt          t1, s6, 62f
                  sub          zero, a5, a0
                  sltiu        tp, s1, 159
                  xor          t2, s0, s3
62:               sll          a4, s11, s3
                  bne          a7, t0, 82f
                  bge          s8, zero, 71f
65:               bltu         s6, a4, 83f
                  nop
                  bge          s2, t0, 77f
                  slti         s6, t3, -740
                  sra          s5, s2, s1
                  addi         ra, tp, -94
71:               sll          zero, t2, t0
                  sltu         ra, s8, s9
                  and          s6, t3, t5
                  slt          t5, zero, t6
                  sra          sp, t3, s7
                  bne          t5, a6, 88f
77:               bge          t1, s7, 78f
78:               slli         a7, s0, 20
                  slli         ra, s1, 4
                  xori         t3, tp, -384
                  bge          s6, s7, 87f
82:               addi         s11, a5, 453
83:               srl          s7, zero, s9
                  slti         sp, s0, -408
                  sltu         t1, a5, a3
                  srai         s1, t0, 23
87:               ori          s8, t0, 569
88:               srai         a6, t6, 6
                  srl          ra, s2, s1
                  auipc        s6, 901193
                  andi         a7, s5, -657
                  or           a5, t4, a3
                  srli         a0, s4, 14
                  sra          s6, s4, a0
                  addi         s10, a1, -1049
                  add          a3, t1, s9
                  srai         s7, s8, 15
                  andi         t1, t1, 1546
                  sll          s11, s4, s9
                  slli         sp, s1, 24
                  srli         s4, s8, 26
                  ori          zero, s5, 412
                  sll          t5, s9, gp
                  and          s8, s1, sp
                  bltu         zero, s0, 114f
                  slt          sp, ra, s7
                  bne          a2, a6, 126f
                  sll          t4, s8, t2
                  ori          sp, t0, -1394
                  add          t0, gp, t5
                  slti         zero, a2, -506
                  beq          a3, s11, 114f
                  xor          s10, s6, s4
114:              sll          t3, s0, s2
                  xor          a5, s5, a0
                  srli         gp, s7, 10
                  addi         t2, s3, 159
                  srl          ra, a4, s11
                  add          a1, s6, s1
                  xori         tp, sp, 1626
                  slti         s2, ra, 844
                  lui          a1, 566422
                  add          s5, ra, s0
                  xor          s11, s6, s9
                  beq          s0, a3, 132f
126:              slli         t4, a1, 20
                  or           sp, s9, s5
                  sll          ra, s9, s1
                  bgeu         gp, s2, 145f
                  srai         a5, a6, 10
                  bltu         a7, t2, 132f
132:              addi         s7, s9, -2033
                  srli         gp, gp, 1
                  ori          a4, s8, -955
                  xori         s1, a6, 2036
                  srai         t2, t1, 18
                  blt          gp, a2, 154f
                  nop
                  slti         a6, s4, -1756
                  bltu         t0, zero, 160f
                  auipc        s5, 225185
                  beq          s9, s6, 148f
                  bne          a1, a1, 148f
                  bge          t4, t0, 155f
145:              slti         a4, a7, 1625
                  blt          sp, t2, 147f
147:              ori          tp, tp, 1918
148:              sltu         a5, s10, a3
                  sra          t4, sp, s6
                  sll          a5, ra, t3
                  bge          gp, t5, 158f
                  nop
                  nop
154:              ori          s11, s7, -493
155:              auipc        t5, 832609
                  addi         sp, ra, 1773
                  beq          s4, a6, 158f
158:              xor          tp, s11, ra
                  srli         t2, s9, 27
160:              slli         s6, s2, 21
                  sub          a4, s1, s3
                  xor          ra, a0, t4
                  bne          a0, s11, 174f
                  xor          t3, t4, a4
                  bge          s9, a7, 185f
                  sll          s7, t0, t6
                  sra          s2, a4, t5
                  sll          sp, s3, t1
sub_4_20:         jal          s8, 2f
0:                jal          t0, 20f
1:                jal          t1, 13f
2:                jal          a4, 17f
3:                jal          ra, 11f
4:                jal          ra, 21f
5:                jal          t1, 15f
6:                jal          s2, 23f
7:                jal          t3, 1b
8:                jal          a1, 22f
9:                jal          ra, 0b
10:               jal          ra, 4b
11:               jal          ra, 19f
12:               jal          ra, 10b
13:               jal          ra, 12b
14:               jal          tp, 3b
15:               jal          tp, 18f
16:               jal          t1, 8b
17:               jal          ra, 9b
18:               jal          t1, 14b
19:               jal          t1, 6b
20:               jal          ra, 16b
21:               jal          t1, 5b
22:               jal          ra, 7b
23:               slt          s4, a3, t5
                  srl          a6, ra, t2
                  sra          t4, s5, tp
                  ori          gp, s3, -1
                  sll          a4, s10, a4
                  nop
174:              bne          a2, s10, 190f
                  add          a2, s10, t3
                  add          s11, a5, s11
                  xor          t1, t1, sp
                  and          ra, a1, t6
                  beq          t4, s2, 194f
                  sltu         t0, a0, s5
                  sra          a5, sp, t0
                  sra          s1, gp, gp
                  xori         sp, zero, 1912
                  add          tp, a0, t3
185:              auipc        t6, 308875
                  ori          s8, t6, -223
                  bne          tp, s8, 188f
188:              nop
                  sltiu        a4, sp, 1971
190:              ori          sp, s7, -1367
                  bltu         ra, s5, 197f
                  auipc        a4, 593994
                  sra          tp, a3, tp
194:              bgeu         t3, s8, 195f
195:              addi         zero, s9, -535
                  ori          t1, t2, 1298
197:              or           t2, a3, sp
                  bgeu         zero, s9, 203f
                  sub          t1, s8, a6
                  sltu         a2, t4, t3
                  andi         s8, tp, -557
                  beq          a5, ra, 205f
203:              slt          a2, t6, s6
                  ori          s6, a3, -529
205:              slti         s5, s1, -1635
                  beq          t2, tp, 211f
                  srl          sp, t4, a1
                  bge          a5, s9, 227f
                  bne          s9, tp, 212f
                  slt          s1, s11, a2
211:              xor          gp, sp, s9
212:              auipc        t5, 1017938
                  bgeu         a3, s4, 220f
                  bge          a2, s6, 227f
                  auipc        s5, 855730
                  srai         gp, a3, 19
                  or           s1, s8, tp
                  bltu         t1, s6, 222f
                  nop
220:              sll          t2, a1, t2
                  bltu         a4, a6, 240f
222:              blt          s4, t3, 232f
                  sub          s11, a4, s4
                  slti         sp, t0, -1410
                  sub          sp, a6, t4
                  addi         s7, a5, -297
227:              andi         t6, s5, -405
                  addi         a0, a6, -660
                  blt          zero, a3, 247f
                  bltu         a2, a4, 239f
                  ori          a7, a3, -1618
232:              lui          t5, 170319
                  add          a2, s7, a0
                  addi         gp, tp, -1414
                  bge          s3, t0, 246f
                  ori          zero, a2, 1351
                  andi         s8, s8, 553
                  ori          t1, a3, 499
239:              auipc        s11, 956754
240:              nop
                  addi         t6, ra, 2041
                  srl          t0, s2, s3
                  andi         s10, s2, -1922
                  andi         t1, t2, 1703
                  slt          a1, s2, s3
246:              blt          sp, s3, 256f
247:              sra          a1, s11, s4
                  srai         s4, s3, 9
                  srli         s2, a1, 29
                  beq          s4, s10, 263f
                  or           a5, t3, s8
                  addi         t6, ra, -1162
                  slli         ra, tp, 27
                  srli         s2, a0, 28
                  blt          zero, t3, 265f
256:              srl          s10, t6, gp
                  auipc        s10, 816243
                  sra          t2, ra, s5
                  sltiu        s10, s3, 1335
                  xor          a7, s4, sp
                  bne          s9, t0, 267f
                  bltu         t5, t6, 274f
263:              slt          ra, zero, s6
                  auipc        a1, 757442
265:              blt          s1, t4, 277f
                  sub          a5, s0, s6
267:              lui          t4, 845631
                  slti         s2, s1, -128
                  slt          a4, s0, a4
                  or           ra, a1, t5
                  and          t4, t0, s1
                  slti         t3, a0, 1525
                  sub          a5, s8, a5
274:              nop
                  ori          s10, tp, 446
                  lui          a0, 60346
277:              bltu         s6, a0, 294f
                  and          a6, s11, a6
                  slti         a2, a3, 1000
                  blt          t1, s5, 282f
                  sll          tp, t0, s2
282:              slt          t0, a6, t3
                  add          a5, a7, s1
                  ori          t6, t2, 711
                  andi         a1, t6, 1242
                  xor          a3, t5, s10
                  bne          a4, sp, 296f
                  slt          t0, s9, s0
                  andi         t4, s1, -634
                  slli         t2, s3, 16
                  addi         s11, s11, 567
                  andi         t3, t4, 630
                  xor          a4, a7, ra
294:              srl          t5, tp, a3
                  auipc        s11, 971189
296:              addi         t6, t4, -364
                  slli         s10, a2, 20
                  slti         s6, a3, 1853
                  xor          t4, t0, t5
                  bltu         t6, s5, 313f
                  bge          t5, s0, 316f
                  bgeu         a2, gp, 312f
                  sltiu        a0, sp, -428
                  beq          a0, t0, 310f
                  sltiu        t5, a2, 791
                  and          s6, t5, t4
                  bltu         s6, t2, 318f
                  or           a0, gp, a0
                  sltiu        s11, t3, -922
310:              andi         t3, a6, 1272
                  sltu         tp, t3, t1
312:              sll          a5, zero, a3
313:              srl          sp, sp, t4
                  blt          s11, t4, 326f
                  srai         s6, a5, 10
316:              andi         s7, a3, -363
                  blt          s2, s10, 330f
318:              bgeu         t6, gp, 321f
                  sltu         s6, t0, t1
                  sltiu        t1, a0, -1663
321:              sra          s8, a4, t6
                  andi         a6, t5, 1312
sub_4_9:          jal          s8, 3f
0:                jal          ra, 5f
1:                jal          s10, 18f
2:                jal          t1, 1b
3:                jal          s11, 2b
4:                jal          t1, 9f
5:                jal          t1, 12f
6:                jal          sp, 14f
7:                jal          ra, 8f
8:                jal          ra, 23f
9:                jal          t1, 7b
10:               jal          ra, 6b
11:               jal          sp, 17f
12:               jal          a7, 13f
13:               jal          s4, 4b
14:               jal          ra, 22f
15:               jal          ra, 20f
16:               jal          ra, 15b
17:               jal          ra, 10b
18:               jal          a4, 11b
19:               jal          t3, 16b
20:               jal          ra, 21f
21:               jal          t1, 0b
22:               jal          a2, 19b
23:               and          zero, zero, t2
                  ori          t5, t0, -407
                  bge          s6, t5, 335f
                  bne          sp, t5, 332f
326:              and          t2, t1, a4
                  slti         s11, a6, -892
                  sub          t4, t0, a6
                  sltiu        a4, a4, 1484
330:              and          a7, s7, s8
                  add          s2, gp, s11
332:              bne          a0, t0, 351f
                  ori          t3, a4, 1111
                  sltiu        s5, s3, 1166
335:              slli         a5, s7, 30
                  sltu         ra, s11, tp
                  srl          s7, gp, t2
                  xor          t0, a1, s9
                  bge          zero, a1, 343f
                  bge          a2, t0, 347f
                  beq          t5, s2, 353f
                  bge          a5, zero, 359f
343:              slti         s10, s5, 229
                  xori         t0, t2, -595
                  slli         a6, s4, 1
sub_4_14:         jal          s8, 9f
0:                jal          ra, 17f
1:                jal          t0, 19f
2:                jal          ra, 8f
3:                jal          s8, 7f
4:                jal          s10, 6f
5:                jal          a5, 20f
6:                jal          t0, 11f
7:                jal          t0, 13f
8:                jal          t1, 1b
9:                jal          t1, 0b
10:               jal          t1, 5b
11:               jal          ra, 12f
12:               jal          a3, 10b
13:               jal          ra, 2b
14:               jal          ra, 4b
15:               jal          ra, 18f
16:               jal          gp, 3b
17:               jal          ra, 16b
18:               jal          ra, 14b
19:               jal          ra, 15b
20:               slti         a1, a4, -1768
                  bltu         a0, t1, 348f
347:              bge          a1, s10, 357f
348:              bge          a3, s8, 349f
349:              bge          sp, s11, 354f
                  slli         s11, tp, 13
351:              auipc        t1, 32893
                  beq          s10, a3, 372f
353:              xor          t0, s8, a3
354:              slli         t4, s6, 11
                  andi         s7, s11, 1061
                  sltu         s5, t5, s3
357:              add          s6, s11, t4
                  xori         s5, t3, -229
359:              bgeu         s4, s8, 378f
                  sub          s8, a1, zero
                  andi         sp, s8, 1782
                  blt          t1, t0, 367f
                  auipc        t2, 402604
                  andi         t2, t6, -1187
                  beq          a5, s8, 366f
366:              xori         t0, t2, -271
367:              slti         t1, s11, -1058
                  bne          zero, t1, 378f
                  nop
                  sub          s10, s3, tp
                  slt          a7, a1, a0
372:              nop
sub_4_1:          jal          s8, 7f
0:                jal          t5, 15f
1:                jal          ra, 13f
2:                jal          t1, 6f
3:                jal          t1, 12f
4:                jal          s7, 3b
5:                jal          s2, 18f
6:                jal          s6, 10f
7:                jal          ra, 8f
8:                jal          ra, 14f
9:                jal          t1, 16f
10:               jal          t1, 11f
11:               jal          t1, 5b
12:               jal          ra, 2b
13:               jal          ra, 9b
14:               jal          t1, 17f
15:               jal          t1, 4b
16:               jal          ra, 0b
17:               jal          ra, 1b
18:               srai         ra, t1, 11
                  slli         a7, s8, 22
                  sub          t6, sp, s9
                  slt          t1, zero, s8
                  or           sp, t1, a7
                  bne          a1, t0, 393f
378:              bltu         t3, s1, 384f
                  addi         tp, s2, 57
                  srai         s8, s7, 23
                  addi         s8, t6, -33
                  lui          gp, 363400
                  sub          a2, t2, s3
384:              srai         t4, a2, 13
                  sra          ra, a3, t4
                  srai         s8, t5, 15
                  sltiu        ra, s7, -399
                  addi         a7, a7, -569
                  or           t2, s4, t1
                  nop
                  ori          a6, a3, -1387
                  srai         s10, s6, 2
393:              sltu         s1, t4, s0
                  blt          a5, a2, 412f
                  slli         a1, t1, 2
                  auipc        a0, 884438
                  auipc        t5, 220144
                  sra          a5, a7, a5
                  and          s10, sp, s5
                  beq          a6, a4, 403f
                  auipc        a1, 541225
                  add          t3, tp, a0
403:              bgeu         s6, s7, 404f
404:              bge          s11, s1, 410f
                  slli         s10, gp, 2
                  ori          a3, tp, -1321
                  addi         s10, s0, 35
                  xor          a7, s4, sp
                  lui          s10, 361257
410:              bge          s8, t6, 417f
                  add          t0, s10, a5
412:              sll          t4, s11, t4
                  slti         s10, s6, -929
                  sub          s6, s5, t3
                  blt          a2, s8, 416f
416:              ori          a3, t0, 967
417:              slt          s4, s10, t0
                  bge          t2, s9, 428f
                  slli         s10, s6, 5
                  blt          s9, t2, 430f
                  add          s6, s8, t4
                  auipc        a0, 736896
                  and          t5, t1, s6
                  auipc        t3, 156004
                  bltu         t2, s0, 442f
                  bgeu         a1, s9, 427f
427:              sll          t5, s11, a2
428:              slti         s5, t0, -65
                  slti         ra, a4, -1107
430:              sltu         t5, s7, gp
                  slli         t5, t4, 27
                  slt          t6, a7, sp
                  xor          s2, s1, a1
                  blt          t4, t2, 438f
                  and          t6, gp, s10
                  srl          t0, t0, a2
                  slli         tp, t3, 11
438:              sra          s1, tp, t3
                  sltu         s1, t1, a7
                  or           s6, sp, t1
                  xori         t5, a2, -549
442:              lui          t6, 15560
                  srli         ra, a3, 12
                  andi         a0, s0, 1174
                  or           t3, t1, t5
                  nop
                  beq          tp, s1, 460f
                  bltu         ra, t2, 453f
                  sra          tp, s7, a1
                  addi         zero, s4, -1203
                  srai         t4, s11, 5
                  bgeu         t0, t2, 463f
453:              sltu         s8, tp, s2
                  srai         a3, s1, 25
                  slti         a7, s2, -886
                  nop
                  ori          gp, s0, 1568
                  andi         t3, t0, 1225
                  sra          a1, s5, s3
460:              slti         s5, gp, 954
                  sltiu        ra, s7, -990
                  lui          s7, 437810
463:              srl          a4, a3, s6
                  bge          s3, a6, 473f
                  lui          a7, 223274
                  addi         a6, a7, 1171
                  add          s2, sp, t6
                  blt          a5, t2, 483f
                  addi         t6, s2, 350
                  xori         s2, s6, -329
                  auipc        s11, 625818
                  slt          s7, s11, s0
473:              bne          s4, t6, 476f
                  andi         a3, s3, -1048
                  sub          t2, zero, t4
476:              bgeu         t0, a1, 494f
                  bltu         s5, a2, 483f
                  ori          gp, a7, 674
                  lui          s8, 80053
                  xori         t1, t3, -1071
                  ori          s5, sp, 288
                  blt          t1, a3, 489f
483:              lui          s11, 224898
                  nop
                  addi         s10, s3, 698
                  sra          s4, s8, t2
                  or           s6, s6, a2
                  ori          a5, s6, -847
489:              sltu         a5, t4, zero
                  andi         t2, t2, -1768
                  auipc        t1, 980431
                  beq          a2, zero, 511f
                  bltu         a2, s1, 506f
494:              addi         zero, a6, 1772
                  andi         a3, gp, 194
                  blt          s5, s6, 512f
                  andi         a7, a5, 1296
                  xori         zero, t4, 1892
                  srl          s7, s10, a3
                  nop
                  sltu         t5, t5, s2
                  xori         sp, a2, -1487
                  sltu         t4, t1, s4
                  sltu         tp, s3, s6
                  andi         a6, s0, -1577
506:              andi         s1, t1, -284
                  addi         s1, gp, 1837
                  beq          a7, a4, 509f
509:              bgeu         a0, a7, 511f
                  bgeu         t5, s11, 530f
511:              bge          s4, gp, 523f
512:              sltiu        t6, t3, -820
                  srai         t1, s10, 28
                  auipc        gp, 483295
                  sll          sp, s7, gp
                  bltu         s3, t4, 528f
                  slti         s1, t1, -1368
                  bgeu         s5, t1, 523f
                  sra          a3, ra, sp
                  beq          t5, s6, 530f
                  bltu         t1, a1, 540f
                  srai         a3, s2, 8
523:              ori          s8, a6, 2018
                  srl          sp, s0, a0
                  sltu         zero, s4, s6
                  sub          a4, a7, t2
                  slt          tp, a2, t0
528:              bge          s6, s1, 531f
                  slt          a5, t2, s0
530:              blt          a2, s8, 541f
531:              ori          s5, zero, 59
                  bne          a7, t0, 541f
                  slli         s7, a6, 2
                  addi         t2, ra, 631
                  addi         t1, tp, -516
                  ori          a1, a7, -489
                  sub          gp, tp, t5
                  slt          t4, s0, a0
                  bltu         a2, a7, 550f
540:              sub          t3, t0, t2
541:              srli         s11, zero, 0
                  srli         t3, t1, 1
                  srl          t4, gp, t0
                  slti         ra, t2, 1843
                  blt          t1, s1, 563f
                  bge          ra, s1, 553f
                  srli         t3, s9, 16
                  srl          a1, t1, a1
                  ori          s6, a0, 1026
550:              sltu         s11, s5, tp
                  addi         s1, zero, -1133
                  blt          s10, sp, 558f
553:              xori         t2, a2, -642
                  lui          t6, 111679
                  or           a4, s4, a2
                  sub          s10, t0, gp
                  or           t2, a5, a2
558:              andi         a3, s4, -2015
                  or           t6, s6, t2
                  andi         s5, a7, 798
                  sltu         a1, zero, s3
                  bne          a3, a3, 582f
563:              auipc        s2, 372092
                  sub          t0, s9, s6
                  nop
                  andi         s4, a6, -1480
                  slti         s7, a1, 627
                  nop
                  sll          t4, t6, s3
                  and          s10, sp, s5
                  and          a5, s3, s0
                  add          s1, sp, s2
                  blt          a1, s0, 574f
574:              or           s11, s10, s11
                  srai         a0, s3, 4
                  sub          ra, a3, s5
                  bge          s10, t0, 579f
                  nop
579:              add          t6, a2, s0
                  nop
                  bne          t0, t4, 594f
582:              blt          gp, gp, 593f
                  ori          s7, gp, -1277
                  blt          s3, ra, 587f
                  sltu         t4, a3, t1
                  ori          ra, t0, -26
587:              blt          t4, s0, 604f
                  andi         tp, t3, 1901
                  beq          a7, t5, 599f
                  sub          s7, sp, s11
                  bne          ra, a0, 610f
                  and          t2, s0, t2
593:              bltu         s6, a7, 594f
594:              or           s10, t6, a0
                  sltiu        s8, t5, 12
                  xor          a1, ra, s5
                  slli         a7, s0, 24
                  andi         s6, s7, 2
599:              xor          tp, sp, s10
                  sra          a0, a2, s11
                  bgeu         t2, s11, 606f
                  beq          s4, gp, 617f
                  auipc        t4, 687478
604:              srl          t3, s9, s4
                  bgeu         s8, s0, 621f
606:              beq          s0, sp, 612f
                  blt          a0, s5, 614f
                  sub          a3, s3, s5
                  slt          a4, gp, s10
610:              bgeu         t0, s6, 613f
                  sltu         s1, s8, t4
612:              slli         ra, ra, 19
613:              srli         t4, t2, 28
614:              sub          a6, t3, zero
                  sll          a4, t3, t0
                  sltu         s4, s10, s3
617:              srl          t2, t4, sp
                  sltiu        t1, a3, -1766
                  sll          s4, zero, s5
                  srl          tp, a0, a2
621:              xori         t2, a5, 1965
                  lui          sp, 517411
                  or           s7, a6, s3
                  bltu         a6, a3, 636f
                  sll          a4, s7, s3
                  nop
                  xor          sp, zero, s7
                  addi         a1, s9, -134
                  xor          s1, s5, a3
                  add          a5, s4, t2
                  and          zero, s11, t6
                  slti         ra, s0, 1464
                  sra          a1, t1, s4
                  srl          a0, s7, t6
                  or           t0, s0, tp
636:              sub          a5, zero, s10
                  slt          s11, s2, ra
                  nop
                  srl          a3, t3, s10
                  slti         a2, a0, -34
                  slli         s2, s6, 10
                  bne          a2, t2, 646f
                  auipc        s8, 952414
                  sltu         s8, t1, t1
                  nop
646:              or           t5, s6, s11
                  addi         s11, s1, 1248
                  nop
                  blt          a5, t3, 668f
                  xori         a5, tp, 1883
                  xori         gp, s1, 678
                  sra          sp, ra, s5
                  bgeu         zero, s7, 665f
                  auipc        a7, 937150
                  srl          t2, s3, a4
                  srai         a4, t3, 12
                  ori          a7, t0, -1408
                  sltu         t4, s2, ra
                  sra          s7, s2, a0
                  add          a4, a5, a6
                  slti         t1, t1, -795
                  srli         a5, s10, 1
                  xori         a3, s6, -27
                  sub          s11, s7, s6
665:              sltiu        a1, t1, 1939
                  and          s1, ra, t2
                  lui          zero, 452396
668:              andi         a5, ra, 1508
                  srai         a2, zero, 22
                  add          t3, s0, s7
                  xori         tp, t5, 817
                  andi         a7, a4, -131
                  srl          t5, s11, t1
                  sll          s2, s4, a2
                  bgeu         tp, a1, 676f
676:              slti         s8, ra, 2021
                  slli         a1, s8, 24
                  blt          s2, s11, 683f
                  srai         a3, ra, 20
                  bltu         s1, sp, 693f
                  slti         a3, tp, 782
                  sltu         a4, s1, a3
683:              blt          sp, s10, 693f
                  blt          t6, s6, 694f
                  bgeu         s6, a4, 697f
                  slli         t4, a5, 23
                  xor          s1, a1, s6
                  bge          s5, s1, 689f
689:              sll          t4, t5, s9
                  bge          a5, a0, 700f
                  auipc        t5, 394377
                  xori         a3, zero, -1727
693:              nop
694:              xori         a3, a1, -1771
                  sltiu        t5, t1, 1318
                  slt          a5, a3, zero
697:              sra          s7, s0, a4
                  bgeu         s8, s6, 711f
                  sra          zero, t5, s9
700:              sub          s2, s7, a1
                  bgeu         s2, s7, 708f
                  blt          t5, s8, 713f
                  bgeu         s7, a0, 719f
                  sll          a6, s3, s4
                  srl          t3, a4, a3
                  bltu         a2, t1, 710f
                  lui          t1, 524048
708:              blt          t6, s5, 727f
                  sltiu        s11, s0, -1557
710:              sub          a6, zero, a3
711:              bltu         s0, t0, 726f
                  lui          a0, 601533
713:              srl          s10, s7, t5
                  bne          tp, s11, 717f
                  slti         s4, s4, -524
                  bgeu         a4, t3, 717f
717:              auipc        s2, 465062
                  sltiu        a0, a7, -750
719:              sra          a5, a6, s5
                  sra          a0, a0, s3
                  xor          a4, a2, s10
                  bgeu         s7, ra, 727f
                  bge          s7, a3, 732f
                  sltu         s2, gp, s0
                  and          s2, a1, s4
726:              lui          t5, 14370
727:              or           a3, a6, a3
                  xor          gp, tp, zero
                  sltiu        s8, gp, 330
                  slt          t1, a7, sp
                  bltu         s6, t1, 750f
732:              srli         a5, ra, 15
                  bgeu         s11, t1, 743f
                  add          t1, tp, zero
                  sub          a3, a4, s5
                  bgeu         t3, s5, 739f
                  sltu         s5, t5, a5
                  slt          a6, gp, s10
739:              srai         t1, t4, 11
                  slt          tp, t2, s7
                  sra          t3, t1, t4
                  slli         a7, s5, 27
743:              sltu         a0, a0, s6
                  sltiu        a1, s2, 1270
                  ori          a4, t2, 340
                  xori         a7, t3, -275
                  bgeu         a1, s0, 759f
                  and          t0, sp, s5
                  srli         a7, tp, 31
750:              addi         tp, a7, 136
                  bne          t6, ra, 757f
                  ori          s4, s0, 722
                  beq          s1, t4, 758f
                  beq          s10, s7, 765f
                  srai         t4, s1, 1
                  srli         s5, a3, 13
757:              slt          t3, t1, t6
758:              bltu         ra, gp, 778f
759:              sll          t6, gp, t2
                  or           zero, s10, s3
                  slti         gp, t2, -937
                  bne          s7, a2, 763f
763:              slt          t4, t4, a6
                  add          gp, s0, a5
765:              sra          s4, s0, s2
                  bne          s6, t4, 779f
                  sltu         s8, s8, s5
                  slti         t2, a0, 360
                  addi         a3, t5, -1953
                  xori         s4, sp, -46
                  srai         s4, a3, 12
                  bltu         tp, s8, 778f
                  lui          s2, 720879
                  bgeu         s6, s6, 792f
                  sra          s8, s0, a1
                  nop
                  lui          gp, 178330
778:              sltu         a5, s5, t2
779:              or           a3, t0, a2
                  sra          t3, a5, s8
                  srai         s7, t3, 0
                  bne          t6, t5, 799f
                  slt          t1, s2, s11
                  sltu         a3, a5, s8
                  add          t5, ra, t1
                  andi         t3, a2, 273
                  xor          gp, gp, s3
                  addi         s10, s0, -408
                  auipc        tp, 49213
                  sra          t5, s5, s6
                  auipc        t3, 418197
792:              xor          s11, sp, s0
                  addi         a6, s8, -1157
                  bgeu         a7, a0, 796f
                  bltu         s4, s0, 802f
796:              slli         a0, gp, 31
                  bge          a1, tp, 807f
                  bge          sp, s11, 809f
799:              and          a4, tp, s10
                  sra          a1, t1, s11
                  ori          t0, s9, -1216
802:              bge          s0, a6, 807f
                  or           sp, tp, tp
                  beq          t2, t5, 824f
                  blt          tp, a7, 817f
                  nop
807:              xor          a3, a1, s9
                  andi         s1, s5, -484
809:              andi         sp, tp, 26
                  or           s2, t0, sp
                  or           sp, s1, sp
                  sltiu        t5, t0, 1020
                  nop
                  sltiu        s4, a7, 2009
                  addi         a3, s6, 724
                  xori         a4, a3, 798
817:              bne          tp, a6, 828f
                  xor          a6, sp, a7
                  bne          t1, s11, 838f
                  srli         s6, s6, 20
                  sub          s2, a5, s10
                  slt          s2, s3, tp
                  bgeu         gp, a2, 828f
824:              addi         tp, gp, -905
                  add          t3, a1, s7
                  sll          gp, s3, s10
                  srai         t2, a1, 29
828:              bne          a6, sp, 838f
                  beq          t4, a1, 833f
                  beq          t3, a4, 846f
                  xor          s8, gp, s1
                  sltu         tp, a4, s11
833:              sltiu        s5, s0, 1317
                  slti         t4, s9, 1043
                  slti         s10, a0, 804
                  beq          t5, t1, 854f
                  srli         t3, a6, 4
838:              bge          tp, s7, 848f
                  or           t3, sp, s2
                  sub          s2, s7, a3
                  slli         s10, t1, 16
                  lui          tp, 589869
                  ori          zero, tp, -1671
                  slli         s10, a4, 26
                  xor          tp, a6, s4
846:              ori          sp, a5, 1447
                  bge          a2, s10, 853f
848:              beq          tp, s10, 861f
                  ori          a1, s0, 765
                  bge          a3, ra, 857f
                  xor          s1, t1, ra
                  bne          s7, a0, 862f
853:              srai         t5, s7, 5
854:              sra          t1, s3, s6
                  add          s6, a3, t4
                  bge          t3, t0, 865f
857:              bgeu         a4, sp, 860f
                  slti         a7, t0, 356
                  slli         a4, s1, 2
860:              ori          s10, gp, 1983
861:              sra          s10, a4, s4
862:              srl          t5, t0, s11
                  srli         s2, s5, 11
                  add          t5, t1, a1
865:              sra          a1, s0, a2
                  xor          s6, a5, a4
                  bgeu         s10, a0, 868f
868:              sltu         s10, s0, a6
                  and          t3, ra, a4
                  sltu         a3, zero, a6
                  bgeu         t6, a5, 886f
                  and          s11, t2, s10
                  bne          a2, gp, 874f
874:              and          t5, s1, tp
                  srli         s2, s0, 17
                  ori          s4, a6, -1316
                  sltiu        ra, t3, 345
                  beq          s5, t3, 897f
                  sub          a3, sp, a6
                  ori          s6, tp, -1014
                  sltu         t3, t0, s5
                  srai         a1, s9, 10
                  and          s2, t0, s4
                  xori         a3, a1, -122
                  slt          s11, a1, t1
886:              beq          t3, s5, 899f
                  srai         a1, a2, 15
                  add          s6, a4, s5
                  slti         gp, s8, -909
                  bgeu         s7, s1, 896f
                  srl          s2, sp, t3
                  slli         t4, a3, 17
                  addi         t3, t1, -209
                  sltu         a3, s10, a2
                  sll          s5, t3, sp
896:              sll          a2, a2, s7
897:              sub          t6, t4, t4
                  slti         s11, s8, -187
899:              or           ra, s7, a7
                  and          gp, gp, s11
                  sll          tp, t3, a6
                  and          t2, s3, t2
                  nop
                  and          a4, s7, t6
                  ori          tp, s2, -25
                  slt          sp, a2, a6
                  beq          a5, gp, 919f
                  slti         t5, a7, 351
                  sll          t3, s7, ra
                  slti         t1, a1, 1451
                  slti         s11, ra, -315
                  auipc        s4, 118675
                  srli         s6, a7, 22
                  slli         t2, a6, 19
                  bne          a6, a6, 916f
916:              slt          s2, s8, zero
                  add          t6, t1, a3
                  slli         zero, s2, 31
919:              addi         zero, a0, 893
                  srai         t4, s0, 21
                  xor          sp, t1, t3
                  sub          t4, t2, t4
                  or           s10, a1, s8
                  ori          a4, a3, 1461
                  xor          t3, a6, t6
                  sltiu        a3, s9, 1487
                  beq          gp, t1, 930f
                  bne          t1, t6, 945f
                  lui          a1, 728445
930:              slti         t2, sp, 420
                  srl          s11, s2, s4
                  lui          t0, 77654
                  lui          t1, 531128
                  sra          a4, s1, t2
                  or           s11, a4, t1
                  srai         ra, s1, 20
                  addi         s5, s2, 849
                  sll          a5, s6, a1
                  add          s8, t3, s3
                  bne          t2, s1, 942f
                  bgeu         a3, s1, 948f
942:              or           sp, t3, s6
                  blt          sp, t2, 950f
                  add          zero, s4, s8
945:              add          s8, a4, tp
                  lui          sp, 462743
                  sltu         t1, t4, s8
948:              xori         t3, a1, -1027
                  xor          a0, s1, s10
950:              ori          s6, a6, -1649
                  sra          s11, s5, t5
                  bne          s3, a7, 953f
953:              sltiu        s4, a0, -1345
                  addi         s6, s2, 416
                  bltu         s5, gp, 965f
                  auipc        t2, 213178
                  sltiu        s4, s8, -1445
                  lui          s1, 489434
                  slt          t1, a7, a6
                  nop
                  srli         tp, s1, 29
                  bgeu         a4, a1, 979f
                  bgeu         tp, a5, 973f
                  blt          t2, a0, 982f
965:              srl          tp, s1, a3
                  auipc        sp, 973802
                  nop
                  addi         a0, s8, 1187
                  slt          s1, t0, a5
                  sra          sp, s4, s10
                  bgeu         a2, a5, 990f
                  sra          s5, s6, s1
973:              xori         sp, ra, 747
                  bne          t1, a4, 975f
975:              nop
                  srl          t5, gp, a2
                  auipc        s5, 833179
                  srai         s11, s8, 2
979:              nop
                  bne          s11, t4, 996f
                  slt          zero, s0, zero
982:              andi         a2, s10, -856
                  beq          t4, ra, 986f
                  bgeu         s10, t6, 996f
                  srai         s10, s0, 0
986:              addi         s6, s5, -328
                  ori          a3, a7, -953
                  add          ra, tp, s9
                  bgeu         ra, s6, 1004f
990:              bne          s4, s10, 1001f
                  slli         a0, t0, 26
                  slti         a5, a1, -516
                  sll          sp, s10, t6
                  add          ra, a0, s6
                  andi         t5, t6, -426
996:              add          s1, t2, s10
                  ori          a3, s4, 1533
                  bge          s11, zero, 1011f
                  addi         t6, t1, -1965
                  ori          s1, t5, -319
1001:             sltiu        a3, s6, -522
                  sltu         tp, s0, t2
                  or           ra, s0, t1
1004:             bne          s11, t0, 1024f
                  slti         s10, s2, 1143
                  add          s1, gp, s4
                  slti         a6, ra, -1107
                  slti         a4, zero, -436
                  blt          s0, a3, 1022f
                  srli         s10, s9, 2
1011:             blt          s5, s6, 1022f
                  lui          ra, 976402
                  slt          t0, a3, s3
                  bgeu         a0, a6, 1033f
                  bgeu         ra, t5, 1027f
                  and          a5, t3, t1
                  bge          t5, zero, 1019f
                  addi         t2, s3, -460
1019:             addi         t5, t0, 1485
                  auipc        tp, 54573
                  slti         a4, a3, -1817
1022:             sltiu        a4, a7, -276
                  beq          s11, s4, 1027f
1024:             srl          a3, a1, s0
                  lui          t4, 218818
                  sra          s4, s4, a3
1027:             srai         t0, a2, 27
                  beq          sp, t4, 1035f
                  nop
                  xori         s6, s9, 960
                  slti         s2, t0, -2023
                  sub          ra, ra, a1
1033:             sra          a6, a5, a5
                  lui          s7, 469742
1035:             srl          s7, t3, t6
                  add          t4, s2, t0
                  lui          s10, 771983
                  srai         t4, s2, 8
                  andi         t4, t4, 1022
                  sltiu        t4, t3, -1259
                  srli         s10, s1, 18
                  lui          tp, 571843
                  beq          s4, s2, 1048f
                  sltu         s10, a7, a6
                  xor          gp, t1, t2
                  srl          a5, s10, a0
                  andi         sp, zero, 116
1048:             bgeu         s7, s4, 1058f
                  slti         t0, ra, -407
                  addi         s4, s9, 1039
                  sll          s2, s2, t3
                  srl          t1, s7, s6
                  bne          s8, s6, 1056f
                  xori         t1, s1, 349
                  or           sp, s11, t3
1056:             sltiu        ra, a6, -1904
                  bgeu         s1, t6, 1066f
1058:             slti         s5, a1, 750
                  and          sp, t6, sp
                  srai         t4, s8, 14
                  bgeu         zero, s11, 1062f
1062:             ori          t6, t3, 71
                  xor          t2, a1, a7
                  bgeu         s5, t6, 1069f
                  sll          ra, t4, t4
1066:             slti         a0, s4, 1385
                  xor          s10, s7, a0
                  andi         t4, a7, -1706
1069:             andi         s2, t4, -1882
                  bne          ra, s8, 1076f
                  bgeu         s10, s4, 1077f
                  sltiu        a3, s1, -1149
                  sra          a3, t1, gp
                  lui          s6, 103949
                  srl          s6, s6, t6
1076:             sltiu        t2, s0, -422
1077:             bge          sp, t0, 1084f
                  slt          s4, s4, s11
                  or           s2, a2, s2
                  srl          tp, s10, s7
                  andi         ra, s10, -1172
                  addi         s10, s5, 2005
                  beq          s3, zero, 1102f
1084:             addi         zero, a3, -1653
                  xori         s5, t0, 783
                  addi         s11, a0, 493
                  sltu         s4, ra, a1
                  sll          a6, gp, t4
                  slti         s7, a3, 967
                  sra          s6, a1, t1
                  sra          a4, s5, a1
                  srai         s7, a1, 13
                  nop
                  slti         s11, s0, -600
                  sub          s4, a4, a4
                  sltu         s4, a5, t6
                  nop
                  slti         t2, a6, 71
                  srai         s6, s4, 12
                  bge          t3, s2, 1110f
                  srl          s6, s4, t0
1102:             addi         s7, a0, -267
                  srl          t1, ra, a7
                  beq          s11, s10, 1105f
1105:             sll          a1, t6, s7
                  or           t5, t5, gp
                  sra          t3, a0, s4
                  sub          t5, s3, s0
                  srl          t0, s10, s3
1110:             sll          t1, t2, t5
                  srai         a2, s2, 11
                  ori          t0, s9, -385
                  andi         tp, s0, 831
                  lui          a1, 709780
                  slli         a2, s1, 1
                  xor          t3, s4, s4
                  ori          a3, t4, -1992
                  xor          a3, t1, s8
                  beq          a6, t6, 1132f
                  srai         s11, s10, 1
                  xori         t6, t5, -1890
                  srl          t2, t3, a7
                  slli         t2, s1, 8
                  slti         t5, s7, 749
                  blt          s0, t1, 1128f
                  ori          sp, tp, 818
                  blt          t1, s2, 1130f
1128:             sra          t0, a0, s7
                  xor          s10, t4, a5
1130:             addi         s6, s5, -926
                  sltu         s7, ra, ra
1132:             addi         t4, a4, 831
                  blt          a1, tp, 1151f
                  bgeu         t1, s4, 1146f
                  sltu         a1, a6, t0
                  sltiu        t2, t6, -877
                  sltiu        gp, s0, -345
                  bltu         t4, tp, 1153f
                  bne          s7, s4, 1140f
1140:             sltiu        a7, a4, -459
                  slti         t1, t4, 1345
                  add          zero, t3, a0
                  auipc        t5, 995258
                  srai         a0, a4, 26
                  bge          a6, a3, 1155f
1146:             sub          ra, zero, s4
                  sltiu        tp, a7, 1362
                  sub          a2, s4, s5
                  bltu         t0, tp, 1156f
                  auipc        s1, 499687
1151:             xori         t2, s1, 1198
                  lui          a3, 948028
1153:             lui          s6, 313935
                  beq          t3, t6, 1155f
1155:             beq          a5, sp, 1171f
1156:             srai         s8, s9, 24
sub_4_10:         jal          s8, 9f
0:                jal          sp, 20f
1:                jal          a1, 16f
2:                jal          ra, 10f
3:                jal          sp, 15f
4:                jal          ra, 12f
5:                jal          ra, 2b
6:                jal          ra, 3b
7:                jal          s4, 14f
8:                jal          s4, 0b
9:                jal          t1, 18f
10:               jal          t1, 21f
11:               jal          t4, 6b
12:               jal          t1, 7b
13:               jal          ra, 11b
14:               jal          ra, 1b
15:               jal          t1, 17f
16:               jal          ra, 19f
17:               jal          ra, 8b
18:               jal          t1, 4b
19:               jal          a2, 13b
20:               jal          ra, 5b
21:               sll          a6, s9, t4
                  blt          zero, t5, 1176f
                  nop
                  bge          s9, s7, 1163f
                  xori         t0, a1, -1435
                  sra          t0, s0, gp
                  nop
1163:             bltu         s7, t2, 1169f
                  bgeu         t6, s10, 1176f
                  srai         gp, t2, 17
                  xori         t6, s2, 877
                  lui          t4, 168017
                  auipc        t5, 835301
1169:             lui          a3, 608975
                  addi         t0, s1, 1817
1171:             andi         a7, a2, -591
                  slli         ra, t4, 22
                  blt          a6, a4, 1175f
                  ori          s11, sp, 1736
1175:             sra          a7, s9, a0
1176:             ori          t1, s11, -1477
                  add          t0, t6, t4
                  srl          s10, s5, s4
                  sltiu        s5, t1, 1113
                  beq          zero, t5, 1185f
                  sub          s4, t2, a3
                  or           a3, zero, s7
                  addi         a4, t5, 42
                  nop
1185:             srli         tp, a4, 24
                  srai         s5, t3, 10
                  ori          s8, a7, -1244
                  auipc        t1, 295713
                  xor          t0, t2, s4
                  and          gp, s8, a2
                  nop
                  add          a1, s7, s1
                  xori         s8, t5, 269
                  ori          zero, t6, 1847
                  addi         a3, t6, -1230
                  and          t2, a0, s5
                  sltiu        s10, t0, 1897
                  xor          s8, t5, t5
                  sltu         t4, a3, s4
                  srl          a5, t3, gp
                  nop
                  nop
                  srli         s2, s1, 28
                  sltu         s8, t4, s0
                  or           tp, tp, a7
                  sra          t5, t2, a6
                  lui          s2, 365117
                  blt          t3, s0, 1217f
                  ori          t6, t1, -1169
                  bgeu         s0, t3, 1230f
                  or           a2, a3, sp
                  and          a7, a3, s5
                  auipc        s11, 306169
                  sltiu        s7, ra, 779
                  andi         sp, a0, -1220
                  bge          s4, t1, 1222f
1217:             ori          a5, t0, 751
                  bge          s4, a3, 1229f
                  or           t5, s2, gp
                  nop
                  addi         a4, t3, 2042
1222:             bltu         a7, t4, 1227f
                  xori         a2, a6, -759
                  bne          t0, s5, 1234f
                  srai         s10, a5, 7
                  add          s10, s7, s1
1227:             add          t1, s1, t3
                  srli         a4, sp, 23
1229:             sll          s5, t3, s10
1230:             srl          s1, s8, s11
                  srai         t3, s10, 21
                  add          s4, s2, t6
                  sltiu        s11, s9, -1537
1234:             sub          gp, t3, ra
                  nop
                  xori         a0, s10, -570
                  slti         t3, s8, -1045
                  lw           s8, 4(s3)
                  andi         a7, t6, 1294
                  addi         s3, s3, 40
                  sub          a4, a7, s2
1756:             addi x9, x24, 1
1756:             jalr x9, x9, 0
sub_1:            beq          s7, s6, sub_1_stack_p
sub_1_stack_p:    addi         s3, s3, -44
                  sub          a3, s2, a5
                  srl          s4, gp, a4
                  sw           s8, 4(s3)
                  sltu         s10, a1, sp
                  andi         s4, s6, -2026
                  sltiu        a2, s1, -469
                  sub          t0, s0, s6
                  srli         t6, s10, 30
                  sra          tp, ra, s7
                  xori         zero, t2, -1113
                  xori         t3, a7, -1544
                  bgeu         t4, gp, sub_1_j3 #branch to jump instr
                  xori         s7, a0, 1227
                  srli         a5, t6, 28
                  or           s2, s5, s0
sub_1_j3:         jal          s8, sub_2 #jump sub_1 -> sub_2
                  slti         s1, zero, 1461
                  auipc        t5, 1001501
                  bge          t2, s4, sub_1_j4 #branch to jump instr
                  slti         s6, a5, -831
                  sra          s2, a0, t4
                  slti         s2, a3, -510
                  auipc        sp, 590170
                  and          t0, s10, s2
                  xori         s2, gp, -814
sub_1_j4:         jal          s8, sub_2 #jump sub_1 -> sub_2
sub_1_0:          jal          s8, 2f
0:                jal          s2, 23f
1:                jal          s4, 4f
2:                jal          t6, 6f
3:                jal          sp, 18f
4:                jal          t1, 9f
5:                jal          ra, 3b
6:                jal          ra, 19f
7:                jal          ra, 13f
8:                jal          ra, 25f
9:                jal          ra, 0b
10:               jal          ra, 16f
11:               jal          a5, 21f
12:               jal          ra, 8b
13:               jal          ra, 5b
14:               jal          t1, 15f
15:               jal          s4, 7b
16:               jal          t1, 1b
17:               jal          tp, 26f
18:               jal          s7, 20f
19:               jal          t1, 11b
20:               jal          t1, 17b
21:               jal          t4, 22f
22:               jal          ra, 24f
23:               jal          ra, 12b
24:               jal          ra, 10b
25:               jal          s11, 14b
26:               sll          a0, s1, s7
sub_1_1:          jal          s8, 15f
0:                jal          ra, 21f
1:                jal          a0, 7f
2:                jal          s5, 12f
3:                jal          ra, 25f
4:                jal          ra, 10f
5:                jal          ra, 23f
6:                jal          ra, 9f
7:                jal          ra, 22f
8:                jal          gp, 5b
9:                jal          ra, 16f
10:               jal          a4, 1b
11:               jal          s1, 3b
12:               jal          a2, 14f
13:               jal          a2, 18f
14:               jal          ra, 20f
15:               jal          s2, 19f
16:               jal          t4, 0b
17:               jal          ra, 13b
18:               jal          ra, 4b
19:               jal          t1, 24f
20:               jal          ra, 11b
21:               jal          s2, 26f
22:               jal          ra, 2b
23:               jal          t1, 17b
24:               jal          t1, 8b
25:               jal          ra, 6b
26:               sltiu        sp, s11, -287
                  srl          t4, s9, a3
                  lui          a4, 87076
                  beq          t6, ra, 17f
                  nop
                  srl          t1, t6, s8
                  and          a1, s5, a4
                  sltu         t3, s5, zero
                  ori          t0, a7, -1910
                  srai         a2, a3, 12
                  srli         a1, tp, 21
                  bltu         t2, zero, 27f
                  bge          a4, s2, 27f
                  srli         tp, t0, 16
                  xori         s1, sp, 613
                  slti         t4, s7, -1876
                  srl          a6, t5, s5
                  or           s4, a1, ra
17:               or           t1, t4, t6
                  slli         s8, a6, 20
                  bgeu         t4, a4, 36f
                  sll          sp, t0, s11
                  auipc        s2, 418412
                  ori          t0, a0, -1448
                  sra          t4, ra, a7
                  bne          a3, t6, 29f
                  srl          t4, s6, s7
                  andi         s10, a6, 744
27:               bge          t1, sp, 30f
                  srai         s7, s5, 14
29:               auipc        t6, 671333
30:               bgeu         s7, ra, 45f
                  bge          t3, t2, 50f
                  and          t5, a0, a0
                  lui          s4, 89764
                  slli         s6, s0, 6
                  sltu         t2, a1, t4
36:               bge          zero, s2, 48f
                  and          gp, sp, a4
                  sll          t2, t3, sp
                  sub          t0, s1, s10
                  bgeu         a1, ra, 56f
                  and          t2, a7, t5
                  sll          a4, s10, s8
                  ori          a7, s5, 1072
                  sltiu        s2, a2, -420
45:               blt          t0, s2, 46f
46:               slt          ra, ra, a6
                  addi         t1, a2, -1114
48:               addi         s11, zero, 688
                  ori          s10, sp, 1361
50:               beq          a4, s2, 70f
                  srai         s4, s11, 21
                  or           t5, t6, a7
                  add          gp, s6, gp
                  sub          t2, a5, t6
                  bne          gp, gp, 70f
56:               ori          sp, s9, 1664
                  bge          t0, t1, 64f
                  xor          a4, a1, s1
                  nop
                  slti         a2, a1, 1617
                  sltu         t6, s11, a2
                  auipc        zero, 495904
                  xor          s11, s11, s10
64:               add          zero, s7, a6
                  srai         tp, s10, 0
                  slti         t3, s7, -1245
                  and          zero, tp, a6
                  srai         s7, s4, 2
                  lui          a3, 818959
70:               xori         s8, t0, 1528
                  slli         s5, a5, 17
                  xor          t3, t5, a1
                  bne          a6, s5, 84f
                  or           t1, a5, s7
                  andi         s10, s0, 243
                  bgeu         t6, s9, 88f
                  slti         s7, a6, -233
                  slli         tp, s8, 24
                  sub          t5, a3, a6
                  nop
                  blt          t2, t6, 100f
                  blt          s5, a7, 85f
                  blt          s9, s1, 90f
84:               sltu         s7, t5, tp
85:               bgeu         s9, s1, 87f
                  bltu         a7, t6, 101f
87:               srai         s10, a3, 20
88:               nop
                  sll          s7, s11, t4
90:               sub          a1, a1, s5
                  bgeu         s4, a5, 107f
                  sll          s2, s0, s5
                  bgeu         t2, zero, 113f
                  srli         zero, s10, 11
                  slt          t4, a0, a5
                  nop
                  addi         a3, t3, 1321
                  bltu         s4, a5, 99f
99:               sub          s2, a4, s2
100:              auipc        s10, 979589
101:              bgeu         t6, t0, 114f
                  blt          zero, ra, 117f
                  and          a4, s1, s4
                  sub          tp, a3, a5
                  auipc        a4, 828929
                  nop
107:              sub          a4, s1, s3
                  and          s4, a7, t1
                  nop
                  and          zero, s0, a5
                  bltu         sp, s1, 112f
112:              sltiu        a3, s11, 569
113:              xori         t5, t5, 1337
114:              addi         t6, t1, -1888
                  xor          a5, tp, a0
                  bne          s3, t2, 129f
117:              add          t6, a7, s5
                  xori         s8, t2, 1097
                  lui          t1, 765078
                  sub          s10, t1, t3
                  srai         t3, t0, 15
                  slti         s6, s11, -1269
                  andi         a3, s9, 1045
                  sub          t5, t1, s5
                  sll          ra, t4, s5
                  andi         t0, t6, 620
                  sltu         t6, s8, s1
                  bltu         ra, t0, 129f
129:              sll          s7, a4, zero
                  lw           s8, 4(s3)
                  srai         s6, t6, 8
                  auipc        t3, 527802
                  addi         s2, a0, -1245
                  andi         a2, a5, 667
                  addi         s3, s3, 44
                  srl          a6, s1, zero
                  ori          t6, a0, -1591
                  sltu         t2, s9, s8
                  srli         a3, s7, 21
                  slli         a3, t5, 1
                  andi         a4, s11, -1499
226:              addi x9, x24, 1
226:              jalr x9, x9, 0
sub_5:            xori         a4, a7, -705
                  sltiu        t3, s3, -1130
                  andi         s6, s7, 1718
                  or           zero, a6, s3
                  xori         t5, zero, 1274
                  addi         s3, s3, -52
                  slli         a0, a0, 14
                  sw           s8, 4(s3)
                  add          a5, sp, s8
sub_5_1:          jal          s8, 11f
0:                jal          t1, 1f
1:                jal          ra, 14f
2:                jal          gp, 6f
3:                jal          s1, 7f
4:                jal          ra, 3b
5:                jal          a2, 0b
6:                jal          a4, 13f
7:                jal          ra, 5b
8:                jal          t1, 17f
9:                jal          t1, 2b
10:               jal          a2, 15f
11:               jal          ra, 12f
12:               jal          ra, 16f
13:               jal          t0, 10b
14:               jal          t1, 8b
15:               jal          t1, 4b
16:               jal          ra, 9b
17:               sltu         a7, a3, gp
sub_5_5:          jal          s8, 22f
0:                jal          s5, 5f
1:                jal          t1, 9f
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          ra, 21f
5:                jal          ra, 11f
6:                jal          t1, 18f
7:                jal          ra, 13f
8:                jal          t1, 12f
9:                jal          ra, 2b
10:               jal          ra, 19f
11:               jal          ra, 24f
12:               jal          ra, 3b
13:               jal          t1, 0b
14:               jal          t1, 15f
15:               jal          ra, 16f
16:               jal          t6, 23f
17:               jal          ra, 14b
18:               jal          ra, 20f
19:               jal          ra, 17b
20:               jal          t1, 4b
21:               jal          ra, 25f
22:               jal          ra, 7b
23:               jal          s4, 8b
24:               jal          ra, 10b
25:               sra          s5, t1, ra
sub_5_2:          jal          s8, 9f
0:                jal          ra, 18f
1:                jal          s1, 6f
2:                jal          ra, 13f
3:                jal          a0, 4f
4:                jal          t3, 26f
5:                jal          ra, 7f
6:                jal          t1, 12f
7:                jal          t6, 23f
8:                jal          ra, 25f
9:                jal          ra, 2b
10:               jal          gp, 17f
11:               jal          ra, 5b
12:               jal          t1, 29f
13:               jal          ra, 15f
14:               jal          t1, 8b
15:               jal          ra, 20f
16:               jal          t4, 30f
17:               jal          gp, 24f
18:               jal          ra, 14b
19:               jal          ra, 16b
20:               jal          ra, 10b
21:               jal          a2, 28f
22:               jal          ra, 19b
23:               jal          s7, 27f
24:               jal          ra, 21b
25:               jal          s10, 22b
26:               jal          t1, 11b
27:               jal          ra, 0b
28:               jal          t1, 1b
29:               jal          s1, 3b
30:               addi         gp, s5, 1587
sub_5_4:          jal          s8, 4f
0:                jal          gp, 7f
1:                jal          t1, 14f
2:                jal          ra, 11f
3:                jal          ra, 15f
4:                jal          t0, 3b
5:                jal          tp, 6f
6:                jal          tp, 16f
7:                jal          t5, 5b
8:                jal          a3, 13f
9:                jal          ra, 12f
10:               jal          ra, 8b
11:               jal          ra, 10b
12:               jal          ra, 1b
13:               jal          ra, 0b
14:               jal          a3, 2b
15:               jal          ra, 9b
16:               or           s7, t1, t3
                  add          s6, a0, sp
                  and          s1, t4, tp
                  nop
                  srli         s1, tp, 8
                  blt          a6, ra, 22f
                  srli         s10, t0, 1
                  lui          a5, 617228
                  blt          s11, s9, 8f
8:                and          s7, t4, t3
                  add          s2, t4, gp
                  srl          a1, t4, t6
                  auipc        s2, 238998
                  sltiu        sp, s3, 114
                  lui          t5, 779626
                  sltiu        s10, s5, -1208
                  sra          gp, s7, s7
                  ori          a3, ra, 2009
                  bgeu         ra, a3, 32f
                  sra          a3, a4, a3
                  slli         t3, s3, 30
                  sltu         s5, s1, t1
                  bge          s5, s0, 29f
22:               srli         a5, s2, 17
                  blt          a0, s7, 34f
                  srl          s5, s5, gp
                  blt          gp, s8, 32f
                  bne          tp, s10, 38f
                  bgeu         s0, s5, 34f
                  sub          t4, a1, s10
29:               srli         t5, s4, 14
                  bne          sp, a0, 49f
                  slli         t5, t5, 31
32:               xor          s6, t5, zero
                  andi         s11, a6, -676
34:               bltu         s10, s1, 49f
                  srl          t1, t1, a7
                  beq          s10, s1, 51f
                  blt          s8, a7, 57f
38:               ori          tp, t6, 853
                  bne          a0, s7, 47f
                  bltu         s8, t6, 56f
                  beq          s0, a1, 55f
                  auipc        t6, 1007873
                  bgeu         s7, ra, 54f
                  blt          t6, t4, 57f
                  beq          gp, t3, 46f
46:               sll          ra, zero, s5
47:               bltu         a6, s11, 51f
                  blt          s1, a1, 63f
49:               sub          s2, t5, s5
                  lui          a4, 157394
51:               slt          gp, s7, a6
                  sll          t6, a5, s2
                  sltiu        ra, s1, -560
54:               add          t1, t1, s4
55:               slti         zero, s2, 1767
56:               ori          t0, t6, 1472
57:               sltiu        s8, gp, 1796
                  bgeu         t3, s8, 60f
                  auipc        t4, 741132
60:               andi         a1, a3, 527
                  lui          s8, 612193
                  ori          t2, s1, -1589
63:               andi         t2, s1, -1913
                  auipc        s8, 233465
                  addi         t6, a0, -1910
                  sub          a5, gp, a2
                  sll          zero, a0, a1
                  andi         a0, zero, -861
sub_5_6:          jal          s8, 9f
0:                jal          ra, 20f
1:                jal          t1, 18f
2:                jal          ra, 10f
3:                jal          t1, 15f
4:                jal          a3, 5f
5:                jal          s2, 3b
6:                jal          s11, 26f
7:                jal          ra, 27f
8:                jal          ra, 11f
9:                jal          ra, 7b
10:               jal          ra, 12f
11:               jal          a1, 25f
12:               jal          t2, 16f
13:               jal          t4, 14f
14:               jal          gp, 24f
15:               jal          ra, 28f
16:               jal          ra, 4b
17:               jal          t1, 13b
18:               jal          ra, 23f
19:               jal          gp, 21f
20:               jal          ra, 19b
21:               jal          ra, 17b
22:               jal          ra, 0b
23:               jal          ra, 22b
24:               jal          t1, 2b
25:               jal          t1, 1b
26:               jal          t1, 8b
27:               jal          a7, 6b
28:               xori         sp, a2, 1144
                  srli         a2, a1, 13
                  sll          tp, tp, sp
                  slt          a2, t3, s1
                  blt          t2, gp, 80f
                  add          t4, t6, s7
                  xor          t1, t6, s4
                  sll          s10, a6, t6
                  slt          a6, s1, s4
                  auipc        t4, 654334
                  sra          a6, s6, s9
                  sltiu        t4, s5, 932
80:               blt          s7, a3, 92f
                  sltu         a1, s11, s7
                  auipc        t0, 441716
                  addi         s7, s9, 987
                  sll          t6, s1, t3
                  sra          t5, a6, s8
                  xori         t0, t3, -1587
                  addi         s11, a7, -1712
                  slti         a2, s6, 552
                  slti         sp, t3, 1321
                  bge          zero, t6, 109f
                  srl          tp, t4, t6
92:               slli         tp, s11, 16
                  andi         a6, a5, 283
                  slti         a2, a3, -616
                  bne          a6, a6, 112f
                  andi         s8, tp, 231
                  sra          t0, t1, a1
                  blt          t6, t4, 107f
                  ori          sp, a7, -98
                  slli         a6, t4, 12
                  blt          gp, a4, 106f
                  add          s11, t0, gp
                  slli         a7, ra, 17
                  andi         s4, a7, 1153
                  sll          s1, s10, a0
106:              andi         a1, s5, 1706
107:              bgeu         t6, tp, 121f
                  bne          t1, ra, 111f
109:              lui          s2, 488103
                  sltu         a5, sp, a3
111:              sub          t0, ra, s10
112:              or           s10, s6, t0
                  beq          tp, a7, 117f
                  slli         s7, gp, 23
                  bge          t6, sp, 117f
                  nop
117:              or           ra, s9, t2
                  nop
                  andi         a6, t1, 84
                  sub          t0, s1, t0
121:              srli         t6, a5, 7
                  ori          s1, a5, 129
                  srli         a4, t3, 31
                  sub          s11, t6, a0
                  beq          a4, a4, 140f
                  nop
                  sll          s11, t5, s8
                  bge          s10, zero, 135f
                  bne          a0, t2, 146f
                  sltiu        s2, a0, -165
                  srl          zero, s9, a1
                  or           s1, a2, a4
                  nop
                  ori          s10, s3, -798
135:              srl          a0, s4, t4
                  slli         s4, s4, 9
                  srai         t5, s9, 28
                  bne          a0, s10, 152f
                  ori          t4, a7, -1896
140:              lui          gp, 189977
                  nop
                  bne          t6, t2, 153f
                  bne          zero, tp, 147f
                  bge          ra, s10, 156f
                  slt          a1, s5, s9
146:              bne          a3, a7, 150f
147:              xor          a3, a6, gp
                  bne          t6, t6, 155f
                  auipc        a5, 471314
150:              or           s4, t6, a1
                  bltu         t1, zero, 167f
152:              slti         t0, tp, -442
153:              slli         a2, s9, 25
                  sub          t6, a7, a1
155:              srl          t6, t3, t6
156:              and          t2, a3, a6
                  srai         a7, s6, 18
                  add          a1, s3, s6
                  xor          s8, a0, t0
                  bltu         s4, s6, 178f
                  xor          t3, t1, a4
                  addi         s7, s0, -441
                  bne          s9, t0, 164f
164:              srli         t5, s8, 21
                  bgeu         s3, s2, 180f
                  addi         t3, t2, 47
167:              slti         t0, s3, -68
                  sub          a3, t3, t5
                  blt          t6, s4, 189f
                  sltiu        a5, t6, 1006
                  slti         a3, s11, 1813
                  andi         s2, s7, -331
                  sltu         s6, s1, s3
                  addi         a0, ra, -655
                  sra          t6, a3, t3
                  beq          t0, a1, 187f
                  xori         s11, s6, 1274
178:              sltu         sp, a1, t5
                  srl          a3, s1, t6
180:              ori          a0, a7, 1459
                  sra          t6, gp, s10
                  blt          s3, s0, 196f
                  slti         s8, t4, -1305
                  blt          ra, t4, 189f
                  nop
                  sll          s11, s1, a6
187:              andi         t4, s7, 767
                  sll          s6, s1, s8
189:              xori         ra, t0, 723
                  beq          a1, a0, 198f
                  slli         a4, a6, 7
                  lui          t3, 200986
                  sra          a6, s3, t0
                  slli         a6, zero, 17
                  srli         gp, s3, 14
196:              blt          a5, t3, 211f
                  srai         sp, a1, 17
198:              srl          s2, ra, sp
                  bge          s5, t0, 218f
                  sltiu        s7, s5, 85
                  ori          tp, s8, -1012
sub_5_0:          jal          s8, 13f
0:                jal          ra, 16f
1:                jal          t1, 0b
2:                jal          ra, 4f
3:                jal          gp, 6f
4:                jal          gp, 20f
5:                jal          ra, 18f
6:                jal          t1, 23f
7:                jal          ra, 10f
8:                jal          ra, 12f
9:                jal          a0, 11f
10:               jal          s10, 8b
11:               jal          ra, 17f
12:               jal          s10, 21f
13:               jal          t3, 22f
14:               jal          ra, 3b
15:               jal          s8, 2b
16:               jal          ra, 5b
17:               jal          a1, 1b
18:               jal          s1, 14b
19:               jal          s6, 9b
20:               jal          ra, 7b
21:               jal          ra, 19b
22:               jal          a1, 15b
23:               slt          t0, s2, t5
                  ori          s2, a0, -1287
                  auipc        s10, 445503
                  srai         s4, tp, 5
                  slt          s10, t0, a1
                  xor          s10, ra, t0
                  lui          gp, 196771
                  and          gp, t6, s6
                  auipc        ra, 848758
                  beq          a1, s3, 222f
211:              bne          t2, s2, 219f
                  xori         t0, gp, -930
                  slt          s5, s10, a6
                  bne          a2, ra, 223f
                  sltiu        s11, ra, -191
                  slti         s1, ra, 425
                  sltu         s1, a5, s11
218:              sltu         s4, a2, s2
219:              sra          a4, s7, s6
                  sra          t1, t1, s5
                  add          zero, t4, tp
222:              add          t5, a0, t2
223:              xor          s2, a7, t0
                  or           gp, a3, s11
                  addi         sp, s9, 737
                  ori          s11, gp, 1084
                  and          t0, s4, s2
                  bge          a5, t3, 241f
                  beq          s11, t3, 244f
                  srai         tp, ra, 19
                  blt          a1, zero, 239f
                  xori         t1, t4, -1310
                  slti         a6, a2, -923
                  blt          s9, t6, 235f
235:              sltiu        s4, gp, 387
                  sra          t2, a1, s6
                  beq          s0, s1, 256f
                  sltiu        t2, s4, -899
239:              nop
                  bge          sp, a1, 243f
241:              xor          s11, a5, ra
                  slt          t1, ra, a0
243:              sltiu        s10, t0, 1744
244:              bne          t0, s3, 248f
                  bne          t1, gp, 246f
246:              bgeu         s8, t4, 254f
                  bgeu         t3, s3, 256f
248:              xor          a1, a3, s10
                  ori          gp, t4, -1623
                  bgeu         s2, s5, 261f
                  bgeu         a2, zero, 268f
                  nop
                  sub          a5, t5, ra
254:              blt          sp, t5, 262f
                  addi         s2, s10, 1509
256:              lui          s8, 199809
                  beq          s7, a3, 264f
                  bge          t1, t3, 273f
                  slti         a7, gp, -1740
                  or           zero, s10, t5
261:              addi         t4, a0, 1310
262:              bne          s10, s1, 264f
                  andi         s4, t0, -1782
264:              auipc        s10, 490285
                  slti         ra, ra, 430
                  slt          a6, t0, a3
                  lui          a6, 158541
268:              sll          a6, s7, s11
                  sltiu        s6, t5, 941
                  auipc        t2, 269836
                  xor          gp, a3, s9
                  nop
273:              addi         t6, a7, 1698
                  sltiu        s11, a7, 326
                  bne          t2, a3, 294f
                  bgeu         zero, t2, 290f
                  srai         zero, a2, 2
                  bgeu         gp, t5, 279f
279:              sltu         a0, t0, a7
                  srl          s1, t3, s9
                  xor          sp, a3, s9
                  srli         s10, gp, 8
                  bne          s0, s8, 297f
                  sltu         a2, a6, a1
                  xori         gp, a0, -839
                  addi         t3, t5, -866
                  slt          a2, a7, s5
                  blt          s1, s5, 303f
                  bge          s10, t1, 302f
290:              sra          t5, a4, a4
                  lui          t2, 572163
                  sub          sp, t5, s11
                  bne          s6, s6, 296f
294:              sll          a0, a7, a7
                  slti         gp, s1, -1038
296:              or           s10, s2, t5
297:              or           s10, a3, t5
                  bgeu         t1, s4, 306f
                  lui          t4, 218364
                  nop
                  bltu         s1, s2, 319f
302:              or           a1, a2, s4
303:              sltu         zero, t2, a1
                  nop
                  bne          a0, a7, 312f
306:              blt          t1, t4, 326f
                  andi         s2, s8, -2045
                  and          s1, a7, s1
                  auipc        s10, 48892
                  bgeu         a1, a4, 326f
                  sltu         s1, a2, s5
312:              bltu         a2, a0, 323f
                  bge          s4, s8, 325f
                  srai         t3, tp, 22
                  addi         t2, gp, 1529
                  auipc        s7, 815426
                  sltu         s8, t0, s7
                  slt          s2, s4, t5
319:              beq          t1, s8, 323f
                  sltu         s7, s0, t2
                  srl          zero, s6, a4
                  lui          s4, 375353
323:              andi         s8, a4, -1797
                  srl          a6, a5, a1
325:              nop
326:              bgeu         t2, t2, 345f
                  bge          s4, s5, 339f
                  xor          zero, s2, a2
                  addi         zero, s0, -984
                  bgeu         sp, t2, 335f
                  slt          a5, t2, s4
                  nop
                  beq          t1, s11, 348f
                  sub          t6, s7, s7
335:              slli         a2, s0, 29
                  slt          t3, s3, a3
                  slli         a4, ra, 6
                  add          sp, s11, s4
339:              bltu         tp, a1, 354f
                  bge          s0, s2, 355f
                  or           ra, s10, s7
                  sltu         tp, t1, s11
                  add          sp, s11, s10
                  sll          sp, tp, t3
345:              bgeu         t5, gp, 352f
                  add          t1, s11, s9
                  or           s4, s5, a1
348:              blt          s8, t4, 352f
                  slti         t5, a1, -1791
                  bltu         s1, s8, 352f
                  ori          a5, a5, 852
352:              andi         s4, s5, 1384
                  and          gp, t6, ra
354:              sub          s11, t6, tp
355:              srli         s8, ra, 18
                  auipc        gp, 203395
                  slti         t3, a6, -1144
                  add          a4, t3, s11
                  sub          t3, s9, sp
                  sltu         t0, s2, a7
                  slli         s8, s4, 7
                  bgeu         s10, t6, 374f
                  beq          t3, s10, 378f
                  or           zero, t2, s10
                  nop
                  slli         a4, s9, 14
                  slli         a5, s1, 22
                  beq          s11, s2, 377f
                  beq          t0, a7, 380f
                  nop
                  sra          t5, t2, s4
                  slt          s11, ra, s6
                  bge          a1, t6, 381f
374:              bne          ra, a7, 375f
375:              sltiu        s10, s4, 632
                  or           a4, ra, s2
377:              bgeu         sp, t4, 378f
sub_5_3:          jal          s8, 4f
0:                jal          ra, 3f
1:                jal          t1, 14f
2:                jal          ra, 10f
3:                jal          sp, 12f
4:                jal          s6, 5f
5:                jal          ra, 8f
6:                jal          s11, 7f
7:                jal          ra, 0b
8:                jal          ra, 11f
9:                jal          t5, 2b
10:               jal          ra, 6b
11:               jal          ra, 13f
12:               jal          s4, 1b
13:               jal          t1, 9b
14:               ori          s2, a7, -446
378:              sub          t4, t5, s11
                  srl          a2, s11, a2
380:              lui          a4, 30825
381:              sltu         t3, s4, s11
                  sltu         s2, s2, tp
                  bne          s1, s6, 384f
384:              slti         a6, gp, -188
                  ori          a2, a1, 991
                  lw           s8, 4(s3)
                  addi         t3, s9, 1587
                  slli         s10, t2, 0
                  sub          gp, t4, a6
                  srl          a5, s2, s1
                  addi         s3, s3, 52
                  slt          t2, s6, s8
569:              addi x5, x24, 1
569:              jalr x5, x5, 0
sub_3:            addi         tp, tp, -1652
                  ori          a0, gp, -1918
                  addi         s3, s3, -32
                  addi         zero, s0, 1759
                  sub          ra, t2, t4
                  sw           s8, 4(s3)
                  srl          a1, s4, a0
                  slti         a5, a2, 1881
                  la           s10, sub_4
                  slli         s11, a0, 5
                  addi         s10, s10, 34
                  bge          a4, a2, sub_3_j7 #branch to jump instr
                  ori          s7, t4, 442
                  slt          s2, a6, sp
                  slli         t1, sp, 21
sub_3_j7:         jalr         s8, s10, -34 #jump sub_3 -> sub_4
                  la           t3, sub_4
                  sub          s11, s4, a1
                  srli         s10, s5, 6
                  sltu         t0, s10, t6
                  sltiu        s11, gp, -344
                  addi         t3, t3, 251
                  sll          a6, s2, s4
sub_3_j9:         jalr         s8, t3, -251 #jump sub_3 -> sub_4
sub_3_1:          jal          s8, 4f
0:                jal          t2, 18f
1:                jal          s7, 23f
2:                jal          ra, 19f
3:                jal          ra, 11f
4:                jal          ra, 12f
5:                jal          t1, 13f
6:                jal          ra, 5b
7:                jal          t1, 21f
8:                jal          ra, 1b
9:                jal          gp, 6b
10:               jal          ra, 15f
11:               jal          s6, 2b
12:               jal          t1, 20f
13:               jal          ra, 10b
14:               jal          ra, 22f
15:               jal          ra, 17f
16:               jal          t1, 9b
17:               jal          ra, 3b
18:               jal          a5, 14b
19:               jal          ra, 0b
20:               jal          t1, 16b
21:               jal          ra, 8b
22:               jal          t0, 7b
23:               srai         s10, s10, 7
sub_3_0:          jal          s8, 20f
0:                jal          ra, 7f
1:                jal          t1, 5f
2:                jal          t1, 18f
3:                jal          s5, 8f
4:                jal          ra, 13f
5:                jal          ra, 11f
6:                jal          ra, 16f
7:                jal          t0, 4b
8:                jal          ra, 14f
9:                jal          ra, 12f
10:               jal          a3, 0b
11:               jal          ra, 6b
12:               jal          gp, 19f
13:               jal          ra, 1b
14:               jal          t1, 15f
15:               jal          sp, 21f
16:               jal          ra, 3b
17:               jal          ra, 9b
18:               jal          ra, 10b
19:               jal          ra, 2b
20:               jal          ra, 17b
21:               addi         zero, t1, -1880
sub_3_5:          jal          s8, 1f
0:                jal          tp, 9f
1:                jal          s4, 13f
2:                jal          ra, 10f
3:                jal          t4, 6f
4:                jal          sp, 19f
5:                jal          ra, 12f
6:                jal          ra, 16f
7:                jal          ra, 8f
8:                jal          t1, 0b
9:                jal          ra, 17f
10:               jal          ra, 11f
11:               jal          ra, 7b
12:               jal          gp, 14f
13:               jal          sp, 5b
14:               jal          s8, 18f
15:               jal          t1, 3b
16:               jal          t1, 2b
17:               jal          ra, 4b
18:               jal          t1, 15b
19:               srai         s7, s11, 29
sub_3_2:          jal          s8, 3f
0:                jal          ra, 5f
1:                jal          ra, 6f
2:                jal          ra, 7f
3:                jal          t1, 10f
4:                jal          ra, 11f
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          tp, 13f
8:                jal          ra, 0b
9:                jal          sp, 2b
10:               jal          ra, 1b
11:               jal          ra, 12f
12:               jal          ra, 8b
13:               lui          t5, 698688
sub_3_4:          jal          s8, 9f
0:                jal          s11, 10f
1:                jal          ra, 4f
2:                jal          t1, 7f
3:                jal          ra, 2b
4:                jal          s1, 6f
5:                jal          ra, 0b
6:                jal          ra, 8f
7:                jal          ra, 1b
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               srl          gp, a6, s8
sub_3_3:          jal          s8, 29f
0:                jal          ra, 1f
1:                jal          t1, 24f
2:                jal          t1, 4f
3:                jal          ra, 22f
4:                jal          ra, 0b
5:                jal          ra, 10f
6:                jal          ra, 30f
7:                jal          ra, 12f
8:                jal          ra, 2b
9:                jal          ra, 6b
10:               jal          a7, 15f
11:               jal          ra, 5b
12:               jal          ra, 27f
13:               jal          t4, 3b
14:               jal          ra, 11b
15:               jal          ra, 17f
16:               jal          ra, 14b
17:               jal          sp, 25f
18:               jal          ra, 23f
19:               jal          ra, 26f
20:               jal          s11, 19b
21:               jal          s5, 9b
22:               jal          t1, 16b
23:               jal          t5, 7b
24:               jal          t1, 21b
25:               jal          s4, 28f
26:               jal          ra, 18b
27:               jal          ra, 13b
28:               jal          t3, 8b
29:               jal          ra, 20b
30:               add          t3, tp, s5
                  slt          t2, t1, s4
                  srl          a0, t5, a6
                  srl          tp, s3, s10
                  bne          a6, s7, 20f
                  or           a5, s8, s4
                  bltu         s1, a3, 7f
                  xor          s2, a3, ra
7:                sltiu        s11, s3, -685
                  add          ra, t2, s9
                  add          a7, t4, s3
                  lui          zero, 35555
                  sll          ra, s11, t1
                  xor          zero, a1, s6
                  bne          s11, a1, 27f
                  ori          t3, tp, 1932
                  sra          s4, s2, sp
                  and          t0, t2, s7
                  and          zero, s4, s5
                  add          gp, s7, a5
                  and          t6, ra, sp
20:               lui          t1, 688971
                  add          zero, a4, s1
                  srli         a5, t5, 13
                  slt          t6, a0, s8
                  add          s10, s0, s11
                  slli         a0, t6, 6
                  sll          s8, t0, tp
27:               srai         zero, s10, 26
                  srai         a1, a0, 21
                  bltu         ra, ra, 39f
                  sub          a7, s3, a6
                  and          a4, t1, s3
                  slti         s6, zero, 46
                  or           a2, ra, s3
                  lui          a7, 925232
                  and          t0, t5, s9
                  bne          s9, s5, 48f
                  slli         gp, s7, 13
                  xori         zero, s11, -2033
39:               bge          a5, t5, 56f
                  bltu         zero, a3, 50f
                  blt          a1, a3, 51f
                  sll          tp, s7, s4
                  slli         s2, s6, 28
                  bge          t3, a1, 62f
                  lui          gp, 599622
                  auipc        a4, 855524
                  bge          a5, s11, 65f
48:               sra          s6, t6, s6
                  srli         s5, a1, 11
50:               addi         t6, s8, -1390
51:               srai         s8, a5, 1
                  and          a4, s3, s7
                  beq          sp, t1, 60f
                  sra          s10, a4, gp
                  add          zero, a3, s3
56:               slli         ra, ra, 30
                  slt          a3, gp, s4
                  sltiu        gp, s10, -1929
                  srli         t6, s5, 28
60:               sub          s8, a6, a2
                  xori         zero, tp, -1112
62:               or           t5, s10, s4
                  slti         t2, s4, 1341
                  sub          a7, t2, t2
65:               slti         s7, a0, 1417
                  bge          a1, a2, 80f
                  xori         a0, s2, -1397
                  addi         a7, s10, -1155
                  sltiu        s2, t4, 80
                  xori         a4, s1, 1521
                  and          t3, a3, s2
                  nop
                  bltu         t5, t5, 90f
                  bltu         s2, t4, 93f
                  srai         s8, tp, 28
                  srai         sp, a2, 27
                  sltiu        tp, a7, -660
                  srl          sp, a6, s3
                  srl          s6, s10, gp
80:               lui          tp, 523472
                  bgeu         t4, t4, 99f
                  srl          ra, s3, s11
                  or           t4, a7, zero
                  slli         s11, sp, 11
                  srl          s11, t3, s8
                  slti         a1, a5, -486
                  auipc        s10, 491599
                  xor          zero, ra, t3
                  blt          a0, s7, sub_3_j8 #branch to jump instr
                  andi         a6, sp, 461
                  slli         s4, a5, 18
                  nop
                  xori         sp, ra, 126
sub_3_j8:         jal          s8, sub_5 #jump sub_3 -> sub_5
                  slli         t6, s1, 3
                  nop
                  bne          t5, s9, 87f
                  srli         s11, a1, 6
87:               srl          a0, s8, t1
                  bltu         zero, s11, 90f
                  srai         s6, a3, 31
90:               slti         a1, s10, -1518
                  sll          t6, s5, t2
                  srl          s8, a7, s3
93:               sub          t0, s1, s2
                  bge          s7, t1, 111f
                  addi         zero, sp, 1635
                  xori         s2, s1, -1432
                  sra          a3, a3, a7
                  srai         a1, s6, 3
99:               sub          s1, t5, t4
                  srl          a3, t4, s10
                  auipc        ra, 221473
                  slti         t1, t4, 226
                  bgeu         a7, a7, 108f
                  bge          a7, t1, 109f
                  ori          t3, s3, 1856
                  ori          a0, gp, -1709
                  xor          s11, a7, s5
108:              add          a4, t6, s10
109:              sll          tp, t5, s1
                  sltiu        a2, s1, -393
111:              slt          zero, t5, a5
                  xori         zero, a1, 1073
                  srli         gp, s6, 24
                  beq          s2, a3, 120f
                  bge          s5, s2, 127f
                  and          zero, zero, a3
                  sltiu        s1, a0, -1096
                  sra          s7, sp, tp
                  addi         s11, a4, -1796
120:              bgeu         s6, s0, 125f
                  srai         t1, zero, 27
                  bne          zero, s2, 124f
                  sltiu        t3, t6, -1413
124:              auipc        gp, 80641
125:              ori          zero, t3, 267
                  sltu         t1, a0, a7
127:              sra          s8, a1, s7
                  lui          tp, 181197
                  add          s11, t1, a5
                  xori         t5, s0, 535
                  srai         t2, s8, 30
                  sltu         a5, ra, t5
                  add          t4, t2, s5
                  srai         a7, a2, 19
                  add          s2, ra, t2
                  andi         a0, s9, 1883
                  bne          zero, s1, 138f
138:              ori          s8, a2, -1336
                  slli         a7, a7, 23
                  bge          s5, s11, 159f
                  blt          t6, s6, 160f
                  slli         t1, s3, 3
                  blt          s11, a2, 149f
                  blt          s11, s1, 152f
                  slt          t4, s3, a3
                  srai         s4, a5, 12
                  slt          a2, t2, s3
                  xori         a7, s11, -582
149:              nop
                  slli         t5, t6, 20
                  nop
152:              bgeu         zero, t3, 159f
                  xor          t4, sp, t2
sub_3_6:          jal          s8, 4f
0:                jal          ra, 17f
1:                jal          tp, 11f
2:                jal          a1, 28f
3:                jal          ra, 7f
4:                jal          s7, 24f
5:                jal          t5, 6f
6:                jal          ra, 15f
7:                jal          t2, 27f
8:                jal          t1, 1b
9:                jal          t1, 14f
10:               jal          ra, 3b
11:               jal          ra, 12f
12:               jal          ra, 29f
13:               jal          sp, 23f
14:               jal          ra, 26f
15:               jal          s8, 0b
16:               jal          ra, 9b
17:               jal          t1, 18f
18:               jal          ra, 10b
19:               jal          sp, 22f
20:               jal          t1, 13b
21:               jal          t1, 8b
22:               jal          t1, 20b
23:               jal          ra, 16b
24:               jal          ra, 19b
25:               jal          ra, 2b
26:               jal          ra, 5b
27:               jal          ra, 25b
28:               jal          ra, 21b
29:               lui          tp, 530772
                  sll          s5, t5, a0
                  bltu         a0, a2, 157f
                  beq          a0, t0, 170f
157:              bne          a1, t0, 164f
                  or           s6, s8, t6
159:              beq          t0, t6, 164f
160:              sra          s8, s5, s10
                  blt          a7, t5, 169f
                  bge          zero, t3, 180f
                  and          zero, s9, s5
164:              slli         a2, s8, 23
                  bgeu         s10, t2, 184f
                  srli         t6, s3, 17
                  sltiu        ra, a2, 943
                  slt          a6, t5, sp
169:              sra          s11, t5, s2
170:              sub          a7, s6, s11
                  sltu         gp, s10, s0
                  slli         tp, a1, 24
                  add          t5, a3, t0
                  lui          a6, 79191
                  andi         s11, s6, 308
                  bge          s9, sp, 181f
                  xor          a0, ra, t0
                  and          a2, s8, t2
                  slti         ra, a2, 239
180:              bgeu         s1, s10, 199f
181:              add          s4, t6, tp
                  srai         t4, s10, 17
                  sll          zero, a5, s10
184:              slli         s7, a5, 9
                  slt          t2, a5, s3
                  blt          s0, s11, 192f
                  sltu         a6, t6, t5
                  lui          s2, 956857
                  sltiu        t3, a7, 1274
                  slli         s5, sp, 26
                  slti         ra, s9, 719
192:              lui          a0, 114782
                  and          t2, a0, a5
                  sub          ra, a5, s10
                  sltiu        zero, a6, 1914
                  bge          s4, ra, 206f
                  ori          t4, gp, -1173
                  beq          gp, t0, 216f
199:              or           tp, a6, t2
                  xor          s10, s10, ra
                  srl          s2, s7, s8
                  xor          s5, t4, a1
                  slti         a7, t2, -273
                  sll          a6, t1, ra
                  sub          t6, s8, tp
206:              sll          ra, t4, t1
                  sltiu        a5, a3, 1772
                  ori          s7, sp, -253
                  bgeu         a2, gp, 210f
210:              sub          t3, a5, t5
                  beq          t2, t0, 213f
                  bne          gp, a5, 222f
213:              lui          sp, 854027
                  bltu         s1, t4, 231f
                  slli         a6, a1, 16
216:              bge          tp, s4, 228f
                  bltu         a4, s2, 236f
                  bge          t4, t1, 235f
                  sll          s6, a0, a3
                  srai         a2, a3, 12
                  or           s6, a3, s10
222:              xori         s2, t6, -1270
                  auipc        s10, 874696
                  bgeu         tp, s2, 236f
                  nop
                  slti         t3, a2, 627
                  srl          a7, t5, sp
228:              srli         a1, a6, 8
                  srl          t3, s0, s6
                  sltiu        s5, s5, -720
231:              lui          zero, 23706
                  ori          t4, tp, -1724
                  andi         s10, a5, 662
                  bne          t2, s9, 236f
235:              addi         s6, s8, -858
236:              srai         s8, t6, 19
                  nop
                  bltu         s1, s3, 243f
                  bltu         s0, s9, 245f
                  sra          a5, s9, a3
                  xori         a5, sp, 670
                  bge          s0, sp, 249f
243:              sltu         s1, s6, t1
                  sltiu        s6, a0, 71
245:              srl          t1, s4, s8
                  nop
                  xor          s11, t3, ra
                  beq          a5, a5, 262f
249:              xori         a1, a6, -1
                  sltiu        a5, t5, -1414
                  bge          t3, s1, 253f
                  and          s11, a5, tp
253:              sub          tp, s3, s3
                  add          s10, s4, t5
                  bge          a1, zero, 273f
                  blt          a5, gp, 273f
                  add          zero, s6, ra
                  auipc        t1, 715346
                  beq          t6, t0, 269f
                  sltu         a6, s4, a6
                  and          s6, a7, s9
262:              and          t4, a1, s7
                  sltu         t0, s6, t1
                  slli         sp, a1, 3
                  slt          a5, s6, s6
                  srai         t5, a0, 14
                  and          s2, sp, tp
                  xor          zero, a2, t1
269:              xori         s4, s4, -1191
                  lui          t1, 687489
                  andi         s11, t6, -185
                  nop
273:              ori          a2, t6, 1238
                  sra          a2, a5, a0
                  addi         a0, a7, 300
                  srli         a3, t2, 5
                  and          s1, s4, s10
                  slti         t3, a2, -1914
                  sub          a3, t4, tp
                  bge          s9, s5, 297f
                  sltiu        a3, t3, 1232
                  sltu         s8, zero, zero
                  auipc        a1, 230008
                  and          a7, s3, a0
                  addi         a6, a1, 1649
                  bltu         t5, a0, 300f
                  bltu         a2, a0, 294f
                  srai         t3, t5, 20
                  bge          t0, gp, 294f
                  beq          s5, t4, 300f
                  andi         t6, t6, -464
                  srli         s2, gp, 11
                  slt          t3, a4, t4
294:              blt          a5, a2, 299f
                  slli         s4, s7, 1
                  slli         s2, a6, 25
297:              xori         gp, tp, -1547
                  auipc        t1, 732335
299:              sltu         ra, s8, t4
300:              beq          a2, t4, 318f
                  and          t3, t5, a2
                  ori          a4, t2, 1230
                  and          a0, a0, s10
                  nop
                  beq          s2, s1, 307f
                  sll          a5, a5, a7
307:              slti         a5, s0, 1472
                  xori         tp, t6, -1710
                  sltu         a0, s4, sp
                  xori         t1, a3, -1734
                  beq          s0, s4, 330f
                  beq          s3, t6, 331f
                  slt          t4, t5, t5
                  bgeu         s3, s1, 321f
                  andi         t2, t5, 305
                  auipc        s4, 584440
                  andi         ra, s4, -1118
318:              lui          t3, 716623
                  and          s1, t4, t0
                  xori         a7, t2, 699
321:              sll          s10, s10, s11
                  lui          s1, 1044883
                  sltiu        s6, t2, -1697
                  bltu         a2, sp, 343f
                  xori         s11, zero, -1692
                  srai         t4, s10, 28
                  sll          s8, ra, t4
                  sltiu        t1, s3, -1003
                  auipc        a1, 357874
330:              srai         a1, a3, 25
331:              slt          s2, s1, tp
                  and          s10, s3, t2
                  xori         t0, t5, 327
                  xor          t2, a7, t4
                  sltiu        a5, t1, -1372
                  sltu         a6, a6, t1
                  auipc        a1, 158626
                  bne          zero, s1, 352f
                  bgeu         gp, s2, 351f
                  add          s2, s6, a3
                  bgeu         zero, a6, 346f
                  sltiu        s2, s10, -327
343:              srai         ra, s1, 29
                  slti         t0, t4, 1764
                  sub          t2, s5, s7
346:              sltiu        tp, sp, 205
                  blt          s6, s8, 364f
                  or           t6, s7, s4
                  bgeu         a2, s8, 366f
                  bgeu         a2, s1, 358f
351:              xor          ra, s5, t2
352:              xori         s10, a5, 851
                  srli         a3, s9, 16
                  sra          t2, a3, s11
                  add          t3, s4, s9
                  andi         a5, s6, -1480
                  andi         t0, a5, -356
358:              slti         a7, s11, 1572
                  srli         t4, zero, 29
                  sll          zero, t4, s10
                  addi         t4, t0, -527
                  slli         t1, a7, 20
                  lui          s1, 972008
364:              xori         tp, t0, 2038
                  addi         t4, s8, 719
366:              add          zero, s7, t4
                  slti         s4, a2, 1389
                  andi         t0, s5, -238
                  blt          s3, s4, 375f
                  srl          sp, a1, a3
                  ori          gp, t3, 1533
                  or           s7, a6, a6
                  add          ra, tp, s8
                  xor          t5, t1, s2
375:              bltu         s10, ra, 387f
                  addi         a3, s9, -1120
                  sltiu        a2, s5, -523
                  andi         a0, gp, 1366
                  slti         s5, s0, 653
                  slt          a2, s10, s9
                  srai         s4, a5, 13
                  sll          a6, t6, a2
                  bge          s2, s2, 385f
                  srli         tp, t3, 7
385:              srai         a0, s6, 5
                  blt          a5, a4, 393f
387:              beq          zero, s7, 393f
                  bge          a6, a6, 390f
                  slti         t5, t5, -621
390:              bgeu         sp, t4, 393f
                  srli         s7, a0, 16
                  bltu         s1, ra, 393f
393:              xori         a7, a3, 871
                  andi         a5, t0, -642
                  add          a0, s4, a6
                  xori         t6, s4, -1543
                  srai         t2, gp, 19
                  add          s11, t1, a5
                  lw           s8, 4(s3)
                  xor          sp, sp, s1
                  addi         s3, s3, 32
                  slli         t6, s10, 22
                  or           s6, sp, t5
599:              addi x1, x24, 1
599:              jalr x1, x1, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x7, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x7, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x7, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x7, x30, ecall_handler
                  li x30, 0x1
                  beq x7, x30, instr_fault_handler
                  li x30, 0x5
                  beq x7, x30, load_fault_handler
                  li x30, 0x7
                  beq x7, x30, store_fault_handler
                  li x30, 0xc
                  beq x7, x30, pt_fault_handler
                  li x30, 0xd
                  beq x7, x30, pt_fault_handler
                  li x30, 0xf
                  beq x7, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
