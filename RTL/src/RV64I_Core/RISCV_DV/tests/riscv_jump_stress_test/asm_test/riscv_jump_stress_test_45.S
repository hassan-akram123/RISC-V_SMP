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
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0x3
                  li x1, 0x4
                  li x2, 0x0
                  li x3, 0xfa578d70
                  li x4, 0x63764f2e
                  li x5, 0x2f047de3
                  li x6, 0x0
                  li x8, 0x1a8564de
                  li x9, 0x1
                  li x10, 0x7c3f3cf4
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x2
                  li x15, 0xff383c18
                  li x16, 0x80000000
                  li x17, 0xe
                  li x18, 0x1
                  li x19, 0xac137b91
                  li x20, 0xc6644307
                  li x21, 0x9
                  li x22, 0x2
                  li x23, 0xf18f3ed6
                  li x24, 0xfc064b7d
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x7
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xc74eedb5
                  la x31, user_stack_end
main:             jal          s3, 11f
0:                jal          t1, 4f
1:                jal          ra, 23f
2:                jal          a6, 18f
3:                jal          t1, 24f
4:                jal          ra, 9f
5:                jal          a3, 14f
6:                jal          t1, 7f
7:                jal          a4, 2b
8:                jal          t1, 25f
9:                jal          ra, 8b
10:               jal          tp, 26f
11:               jal          ra, 12f
12:               jal          ra, 22f
13:               jal          t1, 0b
14:               jal          t1, 15f
15:               jal          ra, 13b
16:               jal          ra, 10b
17:               jal          ra, 19f
18:               jal          t1, 1b
19:               jal          s6, 3b
20:               jal          ra, 21f
21:               jal          ra, 17b
22:               jal          ra, 6b
23:               jal          sp, 20b
24:               jal          ra, 5b
25:               jal          t1, 16b
26:               nop
main_0:           jal          s3, 26f
0:                jal          a6, 13f
1:                jal          gp, 20f
2:                jal          t4, 21f
3:                jal          a0, 19f
4:                jal          ra, 17f
5:                jal          ra, 10f
6:                jal          gp, 1b
7:                jal          t1, 16f
8:                jal          ra, 6b
9:                jal          t1, 18f
10:               jal          ra, 2b
11:               jal          ra, 22f
12:               jal          s2, 8b
13:               jal          t3, 14f
14:               jal          ra, 25f
15:               jal          ra, 4b
16:               jal          a7, 0b
17:               jal          ra, 27f
18:               jal          ra, 12b
19:               jal          ra, 24f
20:               jal          ra, 15b
21:               jal          t1, 23f
22:               jal          ra, 3b
23:               jal          ra, 11b
24:               jal          t1, 7b
25:               jal          ra, 28f
26:               jal          t1, 9b
27:               jal          ra, 5b
28:               andi         s0, s1, 1254
                  slli         s3, zero, 3
                  bge          a5, t2, 6f
                  sub          a1, t2, sp
                  ori          sp, s8, -780
                  srai         a3, s1, 13
                  sltiu        t4, a6, 551
6:                srli         ra, s7, 24
                  sub          a2, s6, a6
                  beq          a7, s5, 11f
                  slt          gp, a0, s10
                  sra          s1, s9, a7
11:               blt          gp, s1, 29f
                  xor          s11, a1, t5
                  and          t3, s3, ra
                  blt          s11, sp, 19f
                  addi         tp, s4, 951
                  add          a7, a4, s5
                  bge          s10, s0, 37f
                  xor          s9, s2, t1
19:               slti         s0, zero, 1012
                  auipc        s5, 592953
                  auipc        s3, 60286
                  srl          t0, ra, s0
                  bne          s6, s8, 32f
                  andi         s9, sp, 175
                  beq          t0, a6, 39f
                  slti         a6, a6, 181
                  srai         s0, a4, 15
                  addi         a0, s3, 544
29:               srai         s5, tp, 18
                  andi         tp, s10, 1130
                  srai         s5, t6, 7
32:               srai         s2, s5, 25
                  bgeu         t3, t5, 48f
                  lui          a1, 154445
                  bgeu         t3, s2, 42f
                  sltu         zero, gp, a0
37:               beq          t4, gp, 45f
                  nop
                  auipc        ra, 195282
                  la           s4, sub_1
                  sll          a2, a6, s8
                  addi         s4, s4, 50
                  xor          s5, t2, ra
                  bltu         s8, zero, main_j1 #branch to jump instr
                  addi         s1, t5, -1278
                  slti         a1, a5, -546
                  slt          zero, s4, a5
                  srli         s2, t3, 5
                  srl          s1, s7, a1
main_j1:          jalr         s3, s4, -49 #jump main -> sub_1
                  andi         a0, t2, 12
39:               bltu         s8, tp, 59f
                  bge          s5, gp, 43f
                  srl          s9, a7, t4
42:               beq          s10, s0, 55f
43:               ori          s6, s3, -2029
                  bge          s5, gp, 46f
45:               sll          gp, s3, a1
46:               and          a3, a3, zero
                  bge          s5, s8, 57f
48:               sltiu        s8, t6, 1086
                  srl          s4, s6, t4
                  bgeu         s7, zero, 69f
                  xor          t3, ra, tp
                  srai         s0, a6, 3
                  ori          s7, t2, -978
                  bne          ra, a3, 60f
55:               auipc        t0, 688413
                  slti         a1, tp, 1228
57:               srai         s8, s6, 21
                  lui          s6, 877726
59:               sub          tp, s4, s8
60:               sll          t4, s4, t0
                  slli         t3, s11, 3
                  slt          s0, s10, t6
                  xori         t1, tp, -317
                  sltiu        s3, a3, 325
                  bgeu         tp, s0, 68f
                  nop
                  auipc        s1, 527788
68:               addi         a2, a2, 2040
69:               xor          t5, a1, s7
                  sltu         t5, s9, s9
                  sll          s3, a0, t4
                  bgeu         s6, a6, 85f
                  sltu         s5, t6, a2
                  beq          s1, s5, 90f
                  bge          s3, t4, 92f
                  sll          s0, s6, t4
                  srli         s7, t5, 3
                  addi         s9, s3, 1053
                  nop
                  lui          a2, 597729
                  ori          a6, t4, -1603
                  bne          s6, s0, 86f
                  bne          a6, s4, 86f
                  slti         s6, a3, 196
85:               srai         t4, t1, 10
86:               slti         t0, t4, -1115
                  slli         gp, a7, 13
                  sub          t3, sp, t6
                  sub          t0, t3, s4
90:               bge          s5, s8, 107f
                  slti         a0, zero, -462
92:               blt          t4, a4, 107f
                  add          s2, a1, s4
                  slt          t3, a3, a5
                  sra          ra, a2, s4
                  auipc        s1, 667367
                  slli         a7, t4, 26
                  sltu         ra, a6, a4
                  sub          s5, s8, s4
                  bne          s7, s11, 106f
                  and          s5, a1, t2
                  srl          s1, s2, s11
                  bgeu         s1, tp, 105f
                  bne          t6, t2, 107f
105:              sra          s3, t3, s3
106:              andi         s0, sp, 1721
107:              ori          a3, a3, 901
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            sltiu        s2, a1, 599
                  xori         a3, t0, 1430
                  auipc        s8, 691218
                  addi         t6, t6, -64
                  srl          t4, t3, t2
                  or           s7, s2, t3
                  sltiu        sp, s1, 1262
                  sw           s3, 4(t6)
                  ori          t4, t2, 1585
sub_4_5:          jal          s3, 4f
0:                jal          ra, 13f
1:                jal          ra, 8f
2:                jal          ra, 12f
3:                jal          ra, 16f
4:                jal          a1, 2b
5:                jal          s6, 3b
6:                jal          ra, 17f
7:                jal          ra, 15f
8:                jal          ra, 10f
9:                jal          ra, 19f
10:               jal          ra, 6b
11:               jal          s5, 1b
12:               jal          t0, 9b
13:               jal          t1, 18f
14:               jal          sp, 20f
15:               jal          s4, 11b
16:               jal          s6, 14b
17:               jal          s8, 0b
18:               jal          sp, 5b
19:               jal          a3, 7b
20:               or           a4, s1, s3
sub_4_3:          jal          s3, 6f
0:                jal          t1, 8f
1:                jal          t1, 7f
2:                jal          t1, 3f
3:                jal          ra, 1b
4:                jal          gp, 2b
5:                jal          s7, 12f
6:                jal          ra, 0b
7:                jal          gp, 13f
8:                jal          a7, 4b
9:                jal          ra, 11f
10:               jal          t1, 5b
11:               jal          ra, 14f
12:               jal          ra, 15f
13:               jal          s9, 9b
14:               jal          ra, 10b
15:               slli         sp, a3, 11
sub_4_11:         jal          s3, 6f
0:                jal          t1, 10f
1:                jal          ra, 4f
2:                jal          t5, 21f
3:                jal          ra, 1b
4:                jal          ra, 25f
5:                jal          s7, 11f
6:                jal          t1, 9f
7:                jal          ra, 14f
8:                jal          ra, 17f
9:                jal          sp, 8b
10:               jal          ra, 5b
11:               jal          t1, 23f
12:               jal          ra, 13f
13:               jal          ra, 2b
14:               jal          ra, 24f
15:               jal          ra, 22f
16:               jal          ra, 3b
17:               jal          ra, 7b
18:               jal          ra, 15b
19:               jal          ra, 20f
20:               jal          ra, 16b
21:               jal          ra, 18b
22:               jal          s4, 26f
23:               jal          ra, 12b
24:               jal          ra, 19b
25:               jal          t1, 0b
26:               sltiu        a5, s1, 322
sub_4_2:          jal          s3, 4f
0:                jal          ra, 6f
1:                jal          a6, 10f
2:                jal          ra, 22f
3:                jal          tp, 24f
4:                jal          sp, 21f
5:                jal          gp, 9f
6:                jal          ra, 7f
7:                jal          t1, 2b
8:                jal          t1, 26f
9:                jal          a6, 3b
10:               jal          a3, 18f
11:               jal          ra, 8b
12:               jal          ra, 11b
13:               jal          ra, 14f
14:               jal          t1, 5b
15:               jal          ra, 16f
16:               jal          s11, 1b
17:               jal          ra, 13b
18:               jal          ra, 17b
19:               jal          t1, 20f
20:               jal          ra, 15b
21:               jal          t1, 12b
22:               jal          ra, 19b
23:               jal          t0, 25f
24:               jal          ra, 23b
25:               jal          ra, 27f
26:               jal          ra, 0b
27:               srai         gp, a6, 18
sub_4_12:         jal          s3, 3f
0:                jal          t1, 1f
1:                jal          a1, 13f
2:                jal          ra, 9f
3:                jal          t1, 4f
4:                jal          s5, 11f
5:                jal          tp, 0b
6:                jal          ra, 2b
7:                jal          s5, 8f
8:                jal          s1, 5b
9:                jal          t1, 10f
10:               jal          sp, 7b
11:               jal          ra, 12f
12:               jal          ra, 6b
13:               sltu         t5, s10, a4
sub_4_0:          jal          s3, 4f
0:                jal          ra, 19f
1:                jal          t1, 15f
2:                jal          ra, 10f
3:                jal          s7, 20f
4:                jal          t0, 6f
5:                jal          ra, 13f
6:                jal          t0, 7f
7:                jal          s8, 0b
8:                jal          ra, 17f
9:                jal          ra, 14f
10:               jal          t1, 21f
11:               jal          ra, 16f
12:               jal          a1, 22f
13:               jal          t1, 1b
14:               jal          t1, 3b
15:               jal          ra, 12b
16:               jal          ra, 8b
17:               jal          t1, 5b
18:               jal          t1, 2b
19:               jal          t1, 9b
20:               jal          ra, 18b
21:               jal          a0, 11b
22:               ori          zero, a1, 1132
sub_4_6:          jal          s3, 13f
0:                jal          ra, 24f
1:                jal          ra, 5f
2:                jal          t1, 6f
3:                jal          s1, 0b
4:                jal          a7, 19f
5:                jal          tp, 10f
6:                jal          t1, 26f
7:                jal          ra, 20f
8:                jal          a7, 4b
9:                jal          ra, 25f
10:               jal          ra, 2b
11:               jal          ra, 15f
12:               jal          ra, 22f
13:               jal          ra, 7b
14:               jal          t1, 18f
15:               jal          ra, 17f
16:               jal          ra, 28f
17:               jal          s8, 23f
18:               jal          a6, 3b
19:               jal          ra, 21f
20:               jal          ra, 8b
21:               jal          gp, 12b
22:               jal          ra, 1b
23:               jal          tp, 9b
24:               jal          ra, 11b
25:               jal          t1, 16b
26:               jal          ra, 27f
27:               jal          ra, 14b
28:               or           a6, s8, s6
sub_4_9:          jal          s3, 8f
0:                jal          t1, 9f
1:                jal          a7, 10f
2:                jal          s1, 11f
3:                jal          ra, 6f
4:                jal          ra, 2b
5:                jal          t1, 0b
6:                jal          gp, 7f
7:                jal          a4, 4b
8:                jal          ra, 1b
9:                jal          t4, 3b
10:               jal          gp, 5b
11:               jal          ra, 12f
12:               nop
sub_4_8:          jal          s3, 9f
0:                jal          ra, 14f
1:                jal          ra, 0b
2:                jal          ra, 13f
3:                jal          ra, 12f
4:                jal          s2, 11f
5:                jal          ra, 7f
6:                jal          t1, 4b
7:                jal          ra, 2b
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          ra, 8b
11:               jal          t0, 1b
12:               jal          ra, 16f
13:               jal          tp, 6b
14:               jal          ra, 10b
15:               jal          ra, 5b
16:               auipc        s8, 213190
sub_4_10:         jal          s3, 28f
0:                jal          t1, 18f
1:                jal          ra, 6f
2:                jal          ra, 15f
3:                jal          ra, 7f
4:                jal          ra, 29f
5:                jal          ra, 4b
6:                jal          t4, 5b
7:                jal          ra, 19f
8:                jal          s0, 24f
9:                jal          ra, 26f
10:               jal          t5, 22f
11:               jal          ra, 25f
12:               jal          t1, 2b
13:               jal          ra, 0b
14:               jal          ra, 13b
15:               jal          ra, 17f
16:               jal          ra, 27f
17:               jal          ra, 3b
18:               jal          sp, 30f
19:               jal          ra, 16b
20:               jal          t1, 21f
21:               jal          gp, 1b
22:               jal          a4, 20b
23:               jal          s4, 14b
24:               jal          t1, 23b
25:               jal          ra, 9b
26:               jal          ra, 12b
27:               jal          ra, 8b
28:               jal          t3, 10b
29:               jal          t1, 11b
30:               or           tp, s10, a2
                  srai         t3, s5, 22
                  beq          a6, s0, 12f
                  and          a6, s3, s5
                  sra          gp, a1, t0
                  sub          s11, a1, t0
                  add          a4, s5, s3
                  bgeu         s7, tp, 25f
                  bltu         t3, s6, 27f
                  bltu         s6, s6, 25f
                  slt          s8, s6, t6
                  lui          ra, 114183
                  beq          gp, s2, 17f
12:               nop
                  slti         tp, ra, -1797
                  srai         s7, t4, 6
                  or           t0, a7, a6
                  slt          a1, tp, sp
17:               blt          a0, s11, 36f
                  sll          gp, t3, t0
                  srli         tp, a5, 13
                  ori          gp, a4, 402
                  sub          a6, s1, s6
                  bltu         a3, a1, 28f
                  bne          a2, s3, 28f
                  auipc        t4, 326010
25:               slti         a1, t3, -670
                  sub          a0, s11, ra
27:               sra          zero, t0, t0
28:               bge          t6, s9, 32f
                  blt          s6, s0, 46f
                  and          s3, tp, t2
                  bltu         a5, a5, 35f
32:               auipc        s5, 1016181
                  srai         s7, s11, 2
                  andi         a7, t5, 1686
35:               lui          a1, 565667
36:               sltiu        t0, t2, -1189
                  beq          ra, t2, 43f
                  bgeu         t3, t3, 57f
                  xor          a5, a5, s5
                  andi         s1, a4, 445
                  addi         s0, t3, 1085
                  bgeu         a1, ra, 47f
43:               sltiu        s2, t6, 279
                  sltu         s5, gp, s6
                  xori         a1, s5, 5
46:               and          t5, a0, s1
47:               add          s2, t6, sp
                  and          s11, t0, s0
                  sltiu        s6, s9, -691
                  and          zero, a7, a0
sub_4_7:          jal          s3, 8f
0:                jal          t3, 9f
1:                jal          s8, 7f
2:                jal          ra, 6f
3:                jal          t1, 4f
4:                jal          a3, 11f
5:                jal          ra, 12f
6:                jal          s2, 1b
7:                jal          ra, 3b
8:                jal          sp, 2b
9:                jal          ra, 5b
10:               jal          t1, 0b
11:               jal          ra, 10b
12:               auipc        s7, 270432
                  srl          sp, t4, s0
                  beq          t0, a5, 56f
                  andi         zero, a2, 1451
                  sra          a4, s7, t4
                  bne          s2, s5, 74f
56:               and          sp, s2, a2
57:               srli         t3, s6, 31
                  bgeu         s11, s5, 77f
                  sll          s4, a6, s5
                  xori         s1, zero, -2031
                  bge          s5, s3, 73f
                  sltu         s8, s11, s1
                  sra          s3, a7, gp
                  sltu         s7, s8, s7
                  srl          a5, a7, s5
                  srli         a1, t6, 2
                  xori         zero, t3, -1368
                  xor          a2, s2, gp
                  srli         s7, s9, 20
                  addi         s5, t5, 843
                  bltu         t6, t4, 82f
                  auipc        t3, 936117
73:               sra          tp, a5, t0
74:               sltu         s0, s8, s4
                  slt          s7, t0, s3
                  sra          a5, s6, s11
77:               xor          s8, tp, gp
                  sra          a2, a0, s6
                  xori         s3, s3, -503
                  xor          t5, a3, t2
                  andi         tp, t0, 1336
82:               slli         s11, a0, 1
                  or           a5, sp, a1
                  xor          a7, s8, s6
                  xor          t0, s4, tp
                  ori          zero, s2, 74
                  addi         ra, zero, 492
                  sll          s0, a4, a5
                  lui          t1, 587454
                  sltu         a7, zero, s4
sub_4_4:          jal          s3, 0f
0:                jal          ra, 1f
1:                jal          a4, 6f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          ra, 5f
5:                jal          t1, 3b
6:                jal          t1, 2b
7:                jal          sp, 8f
8:                jal          ra, 9f
9:                jal          gp, 11f
10:               jal          t5, 12f
11:               jal          t1, 10b
12:               sll          s3, s3, t6
                  slli         a1, t3, 15
                  srai         a2, s2, 8
                  srli         s1, t0, 29
                  nop
                  slli         a6, a4, 20
                  bge          s6, a7, 113f
                  bge          t5, a0, 116f
                  auipc        s3, 497046
                  bltu         s11, t0, 108f
                  auipc        s6, 847806
                  addi         a3, s5, -256
                  slli         a0, t5, 14
                  nop
                  slt          a4, s3, s8
                  bge          s10, t0, 123f
                  sltu         a5, t5, a3
                  blt          zero, s6, 126f
108:              slli         s8, a1, 17
                  and          s3, t4, t1
                  slti         a3, t6, -1511
                  slli         a3, a3, 25
                  srai         s1, a0, 18
113:              lui          s11, 544806
                  auipc        a0, 1047083
                  add          tp, s10, s5
116:              and          gp, t3, zero
                  nop
                  lui          a1, 85896
                  srli         s8, a1, 20
                  lui          a1, 830099
                  addi         s5, t2, -1052
                  sll          zero, t1, s9
123:              lui          a3, 7689
                  auipc        s3, 455735
                  ori          sp, sp, -479
126:              nop
                  beq          s0, s8, 146f
                  sll          s2, t5, s7
                  blt          s7, s10, 139f
                  addi         a5, t6, -813
                  slt          s4, s8, gp
                  andi         s9, a7, -534
                  bltu         s3, ra, 146f
                  slli         a6, a5, 10
                  nop
                  sra          a3, s6, a5
                  sra          ra, s11, s9
                  srl          tp, s3, s7
139:              srai         a0, a7, 16
                  and          s3, tp, zero
                  lui          t1, 930705
                  bgeu         s6, s5, 161f
                  sll          s1, a3, s4
                  slli         s8, zero, 3
                  xori         a2, t5, 620
146:              srl          a4, t3, s8
                  and          t1, a6, a2
                  bne          s10, t3, 151f
                  and          zero, s0, s7
                  srl          t0, gp, a7
151:              blt          sp, sp, 159f
                  beq          s10, s5, 162f
                  lui          a6, 742738
                  bltu         a1, sp, 160f
                  bne          s4, s8, 174f
                  or           zero, t2, t2
                  bge          zero, a3, 175f
                  sra          a1, a7, t0
159:              and          s2, t6, zero
160:              sltiu        a7, a0, 1352
161:              and          a5, a0, a3
162:              sub          a0, a4, s11
                  sra          s0, a2, t5
                  bge          t6, s9, 175f
                  slt          t1, t5, gp
                  srli         s7, s1, 1
                  nop
                  sub          a2, t4, a0
                  auipc        s7, 31939
                  bltu         a4, sp, 173f
                  auipc        s6, 599678
                  lui          gp, 476836
173:              srai         t1, s8, 18
174:              slli         t5, s6, 31
175:              bge          zero, t5, 194f
                  sll          a4, a3, t1
                  bne          a0, a0, 197f
                  slli         t3, t6, 22
                  srai         a6, a2, 1
                  bgeu         a7, s1, 199f
                  srli         a5, a7, 18
                  xori         sp, s3, 1238
                  srai         s6, sp, 4
                  srl          t4, s2, ra
                  sra          s4, a1, s7
                  srai         a3, a1, 20
                  sltu         a6, t5, tp
                  slt          a1, a7, s5
                  bltu         t0, t0, 194f
                  sra          t1, s5, s2
                  or           s1, s4, a0
                  andi         sp, t5, 68
                  bltu         s0, t4, 197f
194:              bgeu         t3, s4, 206f
                  srai         sp, a2, 4
                  bgeu         s7, s5, 215f
197:              srl          s3, s5, s11
                  or           s6, s1, s9
199:              slti         s3, t4, 501
                  blt          t1, t5, 217f
                  and          t4, t1, a0
                  sra          t5, a7, gp
                  sra          s3, s1, a6
                  sub          zero, s2, t0
                  andi         t4, t4, 817
206:              ori          tp, a2, 1510
                  sra          a2, s2, s3
                  xor          s3, s9, zero
                  add          zero, tp, zero
                  auipc        gp, 269420
                  slli         s3, t0, 12
                  add          s5, t2, s4
                  xor          t5, s7, a4
                  addi         s8, t1, -1353
215:              nop
                  bgeu         gp, a6, 221f
217:              sltu         s4, ra, s5
                  bge          t2, s10, 235f
                  sltiu        a5, s0, -1570
                  xori         s11, t0, 618
221:              or           s8, s7, gp
                  xori         s6, s3, 1259
                  bge          s5, t3, 242f
                  srli         s11, a4, 29
                  nop
                  sltu         sp, s11, s6
                  sub          a6, s1, s11
                  sub          gp, t4, s5
                  bge          s8, t2, 248f
                  slt          tp, a1, s1
                  sub          zero, s1, a0
                  sltu         t1, a6, a7
                  bne          a1, t2, 239f
                  andi         zero, a3, 167
235:              blt          s8, t4, 246f
                  nop
                  nop
                  nop
239:              srli         s4, s8, 18
                  andi         a7, sp, 583
                  auipc        a2, 129792
242:              sltiu        a6, t2, 1702
                  srai         zero, s1, 10
                  beq          s5, t4, 250f
                  and          sp, s2, s9
246:              nop
                  srai         s8, s5, 15
248:              sra          t4, t5, s6
                  sub          gp, t1, t5
250:              bgeu         zero, ra, 254f
                  bge          s0, s9, 264f
                  sll          a5, gp, s9
                  slti         a2, t4, 1871
254:              lui          a2, 433194
                  blt          s3, s9, 259f
                  beq          t3, a3, 265f
                  sll          t0, a1, a3
                  sub          zero, s9, a1
259:              beq          a2, t0, 278f
                  srli         s9, t5, 7
                  bltu         s0, a2, 269f
                  auipc        t5, 838515
                  nop
264:              sub          s4, t4, a3
265:              slli         a1, s4, 23
                  bgeu         s0, s10, 283f
                  sltiu        t4, s2, 1032
                  bne          s11, s2, 287f
269:              sub          a2, tp, t2
                  ori          t0, t4, 1027
                  lui          t4, 308747
                  auipc        ra, 921641
                  auipc        t5, 357882
                  auipc        s7, 800354
                  bltu         s7, s0, 294f
                  sltiu        t1, ra, 1779
                  srl          a5, a2, s9
278:              blt          ra, t3, 297f
                  srai         t5, t1, 8
                  sltu         t3, s10, a7
                  sub          s7, s5, tp
                  ori          t1, a7, 1535
283:              and          gp, t3, gp
                  bne          a3, t3, 304f
                  slti         a2, s9, 783
                  auipc        s7, 96109
287:              sra          s0, s10, s0
                  ori          gp, s3, -1595
                  slti         tp, a4, 676
                  auipc        s5, 165879
                  lui          s2, 530824
                  bltu         gp, t5, 309f
                  slli         a6, a0, 4
294:              sltiu        s9, a7, 1191
                  srai         s6, a6, 24
                  and          s3, a4, s10
297:              slti         a5, a5, -1143
                  xori         a4, zero, 1216
                  bgeu         ra, s10, 305f
                  beq          a5, ra, 305f
                  blt          t5, s5, 307f
                  sltiu        gp, s2, 137
                  sra          s5, s5, zero
304:              sra          zero, s4, t2
305:              lui          s8, 1010213
                  andi         s11, s6, 1378
307:              sltiu        t0, a3, -508
                  sltu         s2, a5, s6
309:              bltu         s1, s11, 322f
                  slt          s8, gp, s5
                  lui          t5, 1031414
                  srl          a4, s3, tp
                  and          s11, s3, a2
                  auipc        a1, 917898
                  srl          tp, a0, sp
                  lui          t5, 223666
                  nop
                  xori         s1, t6, 1684
                  srai         a7, s4, 26
                  add          s6, s5, s11
                  addi         a2, s4, -1961
322:              andi         tp, a5, 2047
                  srl          a1, t4, a4
                  sra          s5, s7, zero
                  blt          t0, a1, 331f
                  lui          tp, 55327
                  slt          a2, s9, t4
                  bltu         s10, t6, 332f
                  lui          s5, 323408
                  slli         a3, tp, 20
331:              lui          sp, 11510
332:              sltu         a5, t5, a0
                  addi         s8, t5, -207
                  beq          t4, s5, 353f
                  slli         a6, sp, 20
                  lui          a2, 195371
                  bgeu         s5, t0, 356f
                  bgeu         t4, a0, 357f
                  add          t4, s5, a7
                  slt          s6, s8, tp
                  sll          t3, t6, a6
                  sll          a0, s4, t4
                  slt          s9, s1, t0
                  srli         s4, s10, 12
                  beq          t1, t5, 362f
                  beq          s0, t2, 358f
                  nop
                  bne          s7, t1, 353f
                  sltiu        s1, a5, 134
                  blt          s4, zero, 354f
                  srai         zero, a5, 1
                  add          a3, t5, s6
353:              slli         s11, t0, 17
354:              lui          s6, 569210
                  auipc        s5, 41024
sub_4_13:         jal          s3, 10f
0:                jal          s6, 18f
1:                jal          sp, 11f
2:                jal          ra, 12f
3:                jal          ra, 22f
4:                jal          ra, 8f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          gp, 19f
8:                jal          ra, 25f
9:                jal          ra, 13f
10:               jal          ra, 2b
11:               jal          ra, 24f
12:               jal          ra, 16f
13:               jal          tp, 14f
14:               jal          s6, 17f
15:               jal          ra, 5b
16:               jal          t1, 3b
17:               jal          tp, 15b
18:               jal          t0, 1b
19:               jal          ra, 23f
20:               jal          t1, 21f
21:               jal          ra, 9b
22:               jal          ra, 7b
23:               jal          s7, 20b
24:               jal          t1, 6b
25:               and          tp, a3, s4
356:              xori         s8, s2, 303
357:              sub          a0, t4, s1
358:              srai         sp, a4, 6
                  lui          s3, 316003
                  bltu         s7, t2, 379f
                  slt          s4, tp, ra
362:              bne          s11, t3, 381f
                  beq          a4, s1, 367f
                  sltiu        a1, t4, -597
                  xori         sp, s3, 1405
                  beq          a1, s1, 375f
367:              slli         t0, s2, 6
                  xor          t1, a1, s3
                  xori         t3, tp, 1039
                  bltu         s10, a2, 388f
                  slli         zero, t5, 13
                  blt          t2, t1, 391f
                  sub          s11, ra, s9
                  sll          a0, t1, s8
375:              sll          t1, s1, s9
                  nop
                  bne          s8, zero, 396f
                  nop
379:              and          s11, t5, s5
                  add          t4, s5, s9
381:              beq          a3, s0, 391f
                  nop
                  sltiu        s7, a6, -1628
                  xori         s8, t0, -476
                  sub          a1, s0, t6
                  sll          t0, a0, zero
                  slli         a1, t4, 11
388:              srli         t4, s3, 0
                  bgeu         t1, s4, 400f
                  xor          s9, s1, t3
391:              bge          s3, t2, 408f
                  sra          s2, t4, s8
                  or           gp, s0, sp
                  andi         t4, a0, 466
                  addi         s3, t4, 817
396:              slti         t0, ra, 132
                  srli         a5, t5, 7
                  bge          t5, a7, 417f
                  bne          a2, a2, 407f
400:              lui          s1, 48302
                  beq          s5, a2, 404f
                  lui          a5, 1044444
                  or           a0, s1, s7
404:              beq          s3, s5, 415f
                  srl          t4, s4, t4
                  sll          a1, a0, ra
407:              sra          a2, a2, t2
408:              srl          tp, a2, s1
                  sub          a6, tp, s0
                  addi         s1, t5, -1350
                  sltu         sp, gp, s2
                  srli         t4, a6, 9
                  bltu         tp, s0, 430f
                  xor          a2, s2, s4
415:              andi         a0, s6, 275
                  ori          a7, s11, 508
417:              beq          t3, a5, 420f
                  bgeu         s7, s11, 436f
                  addi         a7, s11, 596
420:              slli         a2, s7, 20
                  sltiu        t1, s8, 1013
                  blt          t0, s1, 426f
                  slti         t4, s8, -40
                  bne          a2, s8, 441f
                  sll          s7, a0, gp
426:              bne          s4, t1, 445f
                  xor          t3, t3, s0
                  or           s11, s8, a3
                  sll          a5, s10, a7
430:              add          t3, ra, s3
                  bne          t4, gp, 450f
                  sltu         sp, a6, t4
                  addi         a1, a7, -134
                  andi         s7, a4, -1141
                  andi         s3, s11, 1120
436:              add          s3, a6, s11
                  srli         s9, t0, 8
                  slt          s7, s5, a5
                  auipc        t1, 873082
                  slli         s5, s7, 2
441:              bne          a6, t2, 460f
                  bltu         tp, a7, 461f
                  sub          a5, a6, s6
                  auipc        a5, 128507
445:              bltu         a5, s8, 450f
                  xori         s8, s4, -1531
                  bltu         t0, s3, 464f
                  slli         s0, zero, 19
                  lui          s9, 960852
450:              srli         s3, s11, 17
                  or           t1, s6, a2
                  slti         s6, s4, 1529
                  lui          a0, 522038
                  sltu         s5, a1, t2
                  ori          s1, t3, -1521
                  srai         t3, sp, 12
                  beq          t2, a2, 476f
                  srl          sp, ra, s2
                  slt          s2, s0, s7
460:              sra          a7, t3, t0
461:              andi         s0, t6, -1756
                  blt          sp, a7, 481f
                  xori         tp, s3, 1303
464:              sltu         s1, s8, tp
                  slli         s2, t4, 1
                  add          a4, s8, s4
                  bne          t2, t4, 471f
                  bltu         tp, a4, 478f
                  sra          s1, s4, t3
                  bge          zero, tp, 476f
471:              nop
                  bgeu         a3, s3, 492f
                  sub          a0, ra, t3
                  lui          a7, 709907
                  lui          s8, 873487
476:              and          a0, a7, t0
                  lui          zero, 926424
478:              srli         s0, tp, 24
                  sub          s9, a7, t0
                  sltiu        a1, t3, -1566
481:              slt          t3, t1, a6
                  bgeu         a4, s9, 501f
                  addi         a3, tp, -1044
                  blt          s3, a5, 496f
                  bltu         a4, s2, 491f
                  lui          s2, 1044418
                  sra          s2, a6, t0
                  nop
                  sra          t4, t5, t5
                  srli         a4, s0, 11
491:              auipc        a5, 80000
492:              bge          t5, s3, 498f
                  lui          t3, 373116
                  slt          a7, s1, s7
                  sra          tp, s9, gp
496:              addi         ra, s6, 1928
                  ori          a2, t1, -517
498:              bge          t6, a1, 506f
                  bne          s11, a0, 504f
                  beq          t5, a0, 504f
501:              bne          a6, s8, 510f
                  sltu         ra, s3, a5
                  addi         zero, s0, 314
504:              sltiu        s1, a6, 1168
                  slt          sp, s10, a1
506:              bge          a1, s2, 525f
sub_4_1:          jal          s3, 5f
0:                jal          s1, 21f
1:                jal          t1, 7f
2:                jal          ra, 22f
3:                jal          t1, 8f
4:                jal          ra, 11f
5:                jal          tp, 2b
6:                jal          tp, 3b
7:                jal          ra, 13f
8:                jal          ra, 1b
9:                jal          t1, 6b
10:               jal          ra, 19f
11:               jal          t1, 17f
12:               jal          ra, 18f
13:               jal          s6, 24f
14:               jal          s8, 10b
15:               jal          t1, 25f
16:               jal          t1, 4b
17:               jal          ra, 12b
18:               jal          t0, 15b
19:               jal          ra, 0b
20:               jal          a3, 14b
21:               jal          s3, 9b
22:               jal          t0, 20b
23:               jal          t1, 16b
24:               jal          sp, 23b
25:               addi         s3, t4, 915
                  bgeu         a2, t6, 520f
                  sltiu        t4, a7, 18
                  and          t3, a7, a5
510:              sll          a0, s2, s10
                  xori         tp, gp, 858
                  slt          s0, s11, s1
                  bge          t5, s11, 524f
                  sra          t5, t2, tp
                  blt          t4, t2, 526f
                  bge          a7, s3, 535f
                  bne          t3, zero, 536f
                  bltu         s9, t4, 524f
                  srai         s4, ra, 15
520:              sra          a6, a7, s9
                  sltiu        s1, a2, 1854
                  lui          a0, 271669
                  sll          t1, t5, t5
524:              bge          s8, s11, 528f
525:              sltu         ra, s8, t0
526:              sll          s4, zero, ra
                  lui          a2, 768918
528:              add          t3, t0, t4
                  xor          a7, t4, t6
                  add          a7, t0, t4
                  addi         s3, t4, -1499
                  sub          ra, a7, sp
                  srli         t4, a2, 21
                  bne          a3, a6, 553f
535:              lui          t4, 119265
536:              srl          ra, s0, s7
                  xori         s2, zero, 1579
                  sub          t4, zero, s3
                  auipc        s4, 308080
                  addi         a7, t6, 1812
                  nop
                  add          s4, zero, s9
                  sra          t5, zero, s8
                  andi         s1, s2, -784
                  blt          a0, s4, 564f
                  slt          t4, s11, s1
                  slli         tp, s2, 2
                  bge          t5, t3, 553f
                  xor          a6, t4, t1
                  bltu         s2, t1, 567f
                  sra          s11, sp, t4
                  ori          s4, a0, 1541
553:              sltu         t3, s3, a2
                  sub          t0, a3, a6
                  slli         s9, a0, 18
                  addi         gp, s3, -1854
                  lui          s4, 691751
                  xor          t1, a3, a6
                  slt          a6, t3, s3
                  beq          s8, t5, 570f
                  srl          s1, s7, t0
                  sltu         t0, s10, s11
                  sltiu        s11, a1, 1492
564:              nop
                  blt          s10, a6, 568f
                  slti         s7, ra, 29
567:              srli         tp, s5, 20
568:              andi         s8, s9, -2022
                  slli         tp, a4, 18
570:              bge          s3, s7, 575f
                  xori         tp, a1, -976
                  xor          t5, s10, s9
                  or           t1, s0, a3
                  lui          s4, 421211
575:              or           tp, a0, a5
                  ori          a1, s6, -353
                  sub          sp, s9, a5
                  sra          ra, t0, s2
                  ori          t0, s0, -972
                  sra          t3, s5, t0
                  sra          a0, s3, s4
                  sub          tp, a0, t6
                  lui          gp, 117032
                  lui          sp, 925879
                  xori         a3, t2, -167
                  add          t0, t6, t3
                  andi         a6, s11, -1682
                  xori         s11, a2, 949
                  beq          t0, s4, 601f
                  andi         tp, s1, 177
                  auipc        a7, 615905
                  and          s7, s1, s5
                  and          a1, s9, s4
                  xori         a5, gp, 448
                  bltu         s5, s8, 601f
                  xor          s3, s8, sp
                  and          s6, s9, a4
                  and          s6, zero, sp
                  or           sp, a5, gp
                  lui          t4, 476624
601:              sub          a7, a7, a2
                  auipc        s5, 787182
                  bge          t5, a5, 621f
                  or           a0, sp, t3
                  slti         sp, t3, -1660
                  nop
                  bgeu         a1, s1, 618f
                  andi         t3, t2, 1618
                  and          a2, s0, t6
                  add          a3, a6, s10
                  beq          t0, t3, 617f
                  sltu         t5, a0, s0
                  bgeu         s0, s0, 626f
                  and          s9, sp, t2
                  bne          a7, s7, 634f
                  slti         t0, t4, -123
617:              sra          a7, s9, ra
618:              srai         s5, a2, 20
                  slt          t0, tp, a0
                  lui          s0, 398024
621:              or           a4, t2, s9
                  andi         s0, a5, -731
                  add          zero, t0, s8
                  add          a3, s10, a1
                  bgeu         s1, gp, 644f
626:              srai         a7, tp, 19
                  bge          s5, s6, 647f
                  ori          gp, ra, -381
                  slli         s3, t2, 20
                  bgeu         a6, s4, 647f
                  add          a6, a2, t1
                  or           s7, a7, s9
                  beq          t2, t6, 652f
634:              add          a4, s6, t4
                  addi         s7, t0, 848
                  bne          t5, a3, 644f
                  bne          t5, s9, 641f
                  bgeu         s8, t0, 657f
                  beq          t2, t2, 658f
                  addi         s5, t5, -472
641:              srli         gp, t6, 20
                  srl          s6, a3, t1
                  slli         a0, s5, 9
644:              srl          sp, t2, s11
                  bltu         s11, s0, 649f
                  xor          s1, s4, s3
647:              or           s11, t2, a3
                  sra          a6, a2, s5
649:              bltu         tp, a3, 660f
                  or           a5, s4, a6
                  lui          s3, 528886
652:              srli         s8, a4, 23
                  srl          s4, s10, a5
                  xor          tp, s10, sp
                  or           t0, s0, t0
                  srl          a3, s2, t1
657:              nop
658:              blt          s7, sp, 677f
                  sub          a4, t3, a5
660:              sub          a5, s8, a3
                  and          s4, t3, s8
                  bgeu         a1, s0, 671f
                  bne          t6, a2, 680f
                  slli         a7, s5, 22
                  or           t1, t2, a0
                  andi         a6, s7, -1431
                  sub          zero, s9, s1
                  nop
                  beq          t5, s9, 689f
                  beq          s7, a2, 681f
671:              andi         s6, a5, 625
                  ori          gp, s0, -264
                  bltu         sp, s5, 681f
                  bltu         t0, s8, 680f
                  sltiu        t0, s10, -1061
                  andi         s7, s3, 13
677:              sra          t0, s11, a3
                  beq          sp, a6, 684f
                  sub          a6, a5, s5
680:              srai         zero, t6, 10
681:              blt          s0, a2, 698f
                  bge          s1, s4, 699f
                  blt          s9, a5, 702f
684:              bne          a0, zero, 703f
                  ori          sp, t1, 749
                  auipc        a0, 773960
                  sll          a4, ra, t3
                  blt          ra, tp, 693f
689:              beq          s8, s5, 693f
                  srli         t4, a0, 7
                  slt          s2, s10, t0
                  bgeu         a1, gp, 696f
693:              srli         a3, s1, 30
                  sub          s6, t2, tp
                  lui          sp, 893096
696:              add          a1, a5, t2
                  sll          a0, a3, t2
698:              addi         a7, s6, -1926
699:              srl          s4, a3, t4
                  auipc        s4, 1021205
                  auipc        s11, 560467
702:              slt          a1, t1, s0
703:              slli         s2, s5, 0
                  bne          tp, s11, 713f
                  bgeu         s9, a0, 724f
                  beq          a7, sp, 724f
                  nop
                  srli         s4, tp, 8
                  bltu         s10, s4, 720f
                  and          ra, s9, s10
                  bne          ra, ra, 717f
                  slt          s5, s11, s9
713:              sub          s7, a5, t0
                  nop
                  lui          s7, 157775
                  srl          a1, s11, a1
717:              bgeu         s6, gp, 720f
                  and          s3, a1, s0
                  sra          a1, s0, sp
720:              srli         s7, t4, 2
                  addi         a5, zero, -1698
                  slt          a4, s10, s10
                  srli         t0, s3, 24
724:              bgeu         s4, s0, 743f
                  auipc        a1, 672501
                  slli         s4, t5, 29
                  sltu         ra, s5, a6
                  srai         a2, t0, 31
                  bgeu         a5, s3, 743f
                  sub          s4, t4, s5
                  sltiu        a4, t1, -53
                  nop
                  or           s8, s4, a7
                  srl          a5, a7, a3
                  bne          zero, s3, 743f
                  sltiu        t5, a6, 1854
                  andi         a0, t5, 852
                  bgeu         gp, t0, 743f
                  xor          sp, a1, s11
                  bgeu         s4, a7, 743f
                  sub          s1, s3, gp
                  ori          s5, s3, -387
743:              sltu         a5, zero, a7
                  ori          a5, a0, 882
                  sll          s0, a0, a5
                  lw           s3, 4(t6)
                  lui          t5, 600513
                  addi         t6, t6, 64
                  slli         sp, a7, 5
                  slti         s4, s10, 1612
                  slt          sp, t5, gp
                  sra          a7, s1, a0
                  srai         s0, a0, 20
1074:             addi x15, x19, 1
1074:             jalr x15, x15, 0
sub_3:            bgeu         a2, a7, sub_3_stack_p
                  and          s9, s4, t1
sub_3_stack_p:    addi         t6, t6, -56
                  nop
                  auipc        s2, 568501
                  sw           s3, 4(t6)
                  srli         sp, zero, 27
sub_3_3:          jal          s3, 13f
0:                jal          gp, 22f
1:                jal          ra, 21f
2:                jal          ra, 9f
3:                jal          s0, 19f
4:                jal          s0, 3b
5:                jal          t1, 10f
6:                jal          tp, 0b
7:                jal          t1, 18f
8:                jal          ra, 4b
9:                jal          s2, 8b
10:               jal          ra, 2b
11:               jal          tp, 1b
12:               jal          ra, 11b
13:               jal          ra, 12b
14:               jal          ra, 7b
15:               jal          ra, 17f
16:               jal          ra, 15b
17:               jal          t0, 5b
18:               jal          t1, 16b
19:               jal          ra, 6b
20:               jal          s11, 14b
21:               jal          ra, 20b
22:               srai         t4, sp, 19
sub_3_4:          jal          s3, 22f
0:                jal          t1, 24f
1:                jal          t5, 0b
2:                jal          tp, 16f
3:                jal          s4, 26f
4:                jal          a2, 20f
5:                jal          ra, 9f
6:                jal          ra, 18f
7:                jal          t1, 2b
8:                jal          ra, 3b
9:                jal          s11, 4b
10:               jal          t1, 12f
11:               jal          ra, 8b
12:               jal          t1, 6b
13:               jal          s4, 1b
14:               jal          ra, 15f
15:               jal          ra, 13b
16:               jal          ra, 25f
17:               jal          ra, 19f
18:               jal          ra, 23f
19:               jal          ra, 5b
20:               jal          ra, 14b
21:               jal          ra, 11b
22:               jal          ra, 10b
23:               jal          ra, 7b
24:               jal          ra, 21b
25:               jal          ra, 17b
26:               sub          zero, s8, a5
sub_3_13:         jal          s3, 6f
0:                jal          t1, 1f
1:                jal          t3, 14f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          t1, 12f
5:                jal          ra, 2b
6:                jal          ra, 11f
7:                jal          ra, 9f
8:                jal          t1, 13f
9:                jal          gp, 4b
10:               jal          ra, 15f
11:               jal          ra, 5b
12:               jal          ra, 8b
13:               jal          t1, 0b
14:               jal          t1, 10b
15:               jal          t0, 16f
16:               add          s8, a2, s11
sub_3_25:         jal          s3, 7f
0:                jal          sp, 8f
1:                jal          ra, 16f
2:                jal          ra, 1b
3:                jal          t1, 5f
4:                jal          a6, 11f
5:                jal          ra, 10f
6:                jal          ra, 2b
7:                jal          ra, 0b
8:                jal          t1, 9f
9:                jal          t1, 17f
10:               jal          ra, 6b
11:               jal          ra, 20f
12:               jal          t1, 14f
13:               jal          a3, 12b
14:               jal          ra, 19f
15:               jal          t1, 18f
16:               jal          ra, 21f
17:               jal          s6, 13b
18:               jal          t1, 4b
19:               jal          a2, 15b
20:               jal          t1, 3b
21:               sra          t3, a1, s7
sub_3_20:         jal          s3, 1f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          t1, 11f
4:                jal          ra, 2b
5:                jal          s4, 0b
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          ra, 7b
9:                jal          tp, 3b
10:               jal          ra, 5b
11:               sub          t4, s1, s3
sub_3_17:         jal          s3, 23f
0:                jal          ra, 11f
1:                jal          a5, 15f
2:                jal          s4, 7f
3:                jal          t1, 13f
4:                jal          ra, 19f
5:                jal          t1, 18f
6:                jal          s6, 1b
7:                jal          ra, 22f
8:                jal          t1, 20f
9:                jal          a2, 17f
10:               jal          a7, 0b
11:               jal          gp, 24f
12:               jal          a4, 14f
13:               jal          t3, 26f
14:               jal          ra, 16f
15:               jal          s7, 8b
16:               jal          t4, 5b
17:               jal          sp, 4b
18:               jal          ra, 3b
19:               jal          s8, 6b
20:               jal          t1, 2b
21:               jal          ra, 10b
22:               jal          s5, 12b
23:               jal          t1, 25f
24:               jal          a3, 9b
25:               jal          ra, 21b
26:               or           tp, s0, a1
sub_3_14:         jal          s3, 15f
0:                jal          s11, 5f
1:                jal          ra, 9f
2:                jal          ra, 16f
3:                jal          s11, 10f
4:                jal          ra, 6f
5:                jal          t1, 2b
6:                jal          t1, 1b
7:                jal          ra, 12f
8:                jal          s11, 0b
9:                jal          ra, 3b
10:               jal          t1, 8b
11:               jal          ra, 4b
12:               jal          t1, 13f
13:               jal          ra, 14f
14:               jal          ra, 11b
15:               jal          sp, 7b
16:               xor          s6, a2, ra
sub_3_23:         jal          s3, 21f
0:                jal          ra, 5f
1:                jal          ra, 0b
2:                jal          s9, 1b
3:                jal          t1, 25f
4:                jal          ra, 19f
5:                jal          ra, 17f
6:                jal          ra, 23f
7:                jal          ra, 13f
8:                jal          s0, 22f
9:                jal          ra, 20f
10:               jal          t1, 2b
11:               jal          a7, 9b
12:               jal          ra, 16f
13:               jal          ra, 10b
14:               jal          a3, 18f
15:               jal          t5, 8b
16:               jal          ra, 4b
17:               jal          t1, 11b
18:               jal          ra, 6b
19:               jal          ra, 3b
20:               jal          ra, 14b
21:               jal          t0, 24f
22:               jal          ra, 7b
23:               jal          ra, 12b
24:               jal          ra, 15b
25:               srli         a4, s9, 15
sub_3_22:         jal          s3, 13f
0:                jal          s7, 10f
1:                jal          t1, 3f
2:                jal          ra, 16f
3:                jal          ra, 0b
4:                jal          ra, 11f
5:                jal          ra, 15f
6:                jal          ra, 8f
7:                jal          ra, 5b
8:                jal          ra, 14f
9:                jal          ra, 2b
10:               jal          ra, 9b
11:               jal          ra, 7b
12:               jal          sp, 6b
13:               jal          t1, 4b
14:               jal          t1, 1b
15:               jal          ra, 12b
16:               auipc        s2, 574607
sub_3_12:         jal          s3, 4f
0:                jal          ra, 8f
1:                jal          ra, 9f
2:                jal          t1, 5f
3:                jal          ra, 2b
4:                jal          ra, 0b
5:                jal          s9, 11f
6:                jal          t1, 12f
7:                jal          ra, 6b
8:                jal          s9, 17f
9:                jal          s3, 13f
10:               jal          ra, 18f
11:               jal          a4, 19f
12:               jal          tp, 16f
13:               jal          ra, 15f
14:               jal          tp, 1b
15:               jal          t1, 20f
16:               jal          s5, 14b
17:               jal          sp, 10b
18:               jal          s11, 3b
19:               jal          ra, 7b
20:               srl          a4, t1, t4
sub_3_11:         jal          s3, 4f
0:                jal          sp, 13f
1:                jal          ra, 26f
2:                jal          ra, 11f
3:                jal          ra, 25f
4:                jal          ra, 7f
5:                jal          ra, 12f
6:                jal          a0, 19f
7:                jal          ra, 22f
8:                jal          gp, 28f
9:                jal          ra, 20f
10:               jal          ra, 18f
11:               jal          s5, 10b
12:               jal          ra, 2b
13:               jal          a6, 5b
14:               jal          a2, 1b
15:               jal          t1, 17f
16:               jal          t5, 9b
17:               jal          ra, 14b
18:               jal          s6, 6b
19:               jal          t1, 16b
20:               jal          ra, 15b
21:               jal          ra, 8b
22:               jal          ra, 27f
23:               jal          ra, 0b
24:               jal          ra, 21b
25:               jal          ra, 24b
26:               jal          ra, 3b
27:               jal          ra, 23b
28:               srli         s3, gp, 19
sub_3_0:          jal          s3, 12f
0:                jal          ra, 13f
1:                jal          ra, 14f
2:                jal          ra, 5f
3:                jal          t0, 9f
4:                jal          gp, 2b
5:                jal          ra, 1b
6:                jal          t1, 4b
7:                jal          ra, 6b
8:                jal          s1, 10f
9:                jal          s8, 0b
10:               jal          t1, 11f
11:               jal          t5, 7b
12:               jal          t0, 3b
13:               jal          ra, 8b
14:               ori          a7, ra, -1273
sub_3_24:         jal          s3, 16f
0:                jal          ra, 15f
1:                jal          a6, 4f
2:                jal          s4, 17f
3:                jal          ra, 1b
4:                jal          a3, 13f
5:                jal          t1, 12f
6:                jal          t3, 2b
7:                jal          ra, 11f
8:                jal          t1, 7b
9:                jal          ra, 10f
10:               jal          ra, 3b
11:               jal          a5, 6b
12:               jal          ra, 0b
13:               jal          ra, 5b
14:               jal          t1, 9b
15:               jal          t0, 8b
16:               jal          ra, 14b
17:               nop
sub_3_9:          jal          s3, 5f
0:                jal          ra, 2f
1:                jal          t1, 0b
2:                jal          a5, 11f
3:                jal          ra, 1b
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          ra, 3b
7:                jal          ra, 4b
8:                jal          t1, 6b
9:                jal          ra, 10f
10:               jal          t1, 8b
11:               slli         t1, s4, 3
sub_3_21:         jal          s3, 11f
0:                jal          ra, 7f
1:                jal          t1, 3f
2:                jal          a7, 4f
3:                jal          ra, 10f
4:                jal          ra, 9f
5:                jal          ra, 20f
6:                jal          s1, 19f
7:                jal          s9, 15f
8:                jal          t1, 22f
9:                jal          ra, 1b
10:               jal          t1, 0b
11:               jal          ra, 17f
12:               jal          ra, 2b
13:               jal          ra, 14f
14:               jal          ra, 21f
15:               jal          s3, 6b
16:               jal          t1, 27f
17:               jal          ra, 13b
18:               jal          s7, 5b
19:               jal          t1, 25f
20:               jal          s0, 8b
21:               jal          ra, 23f
22:               jal          t1, 12b
23:               jal          s8, 18b
24:               jal          ra, 16b
25:               jal          s9, 26f
26:               jal          t1, 24b
27:               sub          zero, s3, s6
sub_3_7:          jal          s3, 1f
0:                jal          t1, 17f
1:                jal          s7, 8f
2:                jal          a7, 22f
3:                jal          ra, 18f
4:                jal          t1, 2b
5:                jal          ra, 15f
6:                jal          ra, 5b
7:                jal          ra, 14f
8:                jal          ra, 7b
9:                jal          t3, 13f
10:               jal          tp, 11f
11:               jal          ra, 3b
12:               jal          ra, 10b
13:               jal          ra, 21f
14:               jal          ra, 12b
15:               jal          ra, 19f
16:               jal          ra, 0b
17:               jal          sp, 20f
18:               jal          ra, 9b
19:               jal          ra, 16b
20:               jal          ra, 4b
21:               jal          t1, 6b
22:               sltu         a6, s4, a7
sub_3_8:          jal          s3, 6f
0:                jal          t1, 12f
1:                jal          t1, 11f
2:                jal          ra, 7f
3:                jal          t1, 2b
4:                jal          s11, 9f
5:                jal          ra, 3b
6:                jal          t1, 8f
7:                jal          ra, 1b
8:                jal          s2, 10f
9:                jal          s7, 0b
10:               jal          ra, 5b
11:               jal          ra, 4b
12:               slti         s3, s5, -469
sub_3_10:         jal          s3, 8f
0:                jal          ra, 4f
1:                jal          ra, 11f
2:                jal          t1, 6f
3:                jal          ra, 0b
4:                jal          ra, 2b
5:                jal          ra, 7f
6:                jal          t1, 9f
7:                jal          s11, 3b
8:                jal          t1, 10f
9:                jal          tp, 1b
10:               jal          ra, 5b
11:               sll          s7, tp, tp
sub_3_5:          jal          s3, 20f
0:                jal          ra, 11f
1:                jal          t1, 18f
2:                jal          t1, 21f
3:                jal          a2, 19f
4:                jal          ra, 9f
5:                jal          ra, 3b
6:                jal          ra, 14f
7:                jal          t1, 2b
8:                jal          ra, 10f
9:                jal          a4, 13f
10:               jal          a7, 7b
11:               jal          t3, 4b
12:               jal          a5, 16f
13:               jal          ra, 12b
14:               jal          t1, 15f
15:               jal          sp, 1b
16:               jal          t1, 8b
17:               jal          ra, 6b
18:               jal          ra, 0b
19:               jal          ra, 17b
20:               jal          t1, 5b
21:               srli         s4, a4, 27
sub_3_15:         jal          s3, 19f
0:                jal          ra, 24f
1:                jal          ra, 18f
2:                jal          ra, 5f
3:                jal          ra, 20f
4:                jal          t1, 3b
5:                jal          ra, 9f
6:                jal          s0, 14f
7:                jal          s5, 15f
8:                jal          ra, 1b
9:                jal          ra, 4b
10:               jal          t1, 12f
11:               jal          s6, 25f
12:               jal          ra, 23f
13:               jal          ra, 11b
14:               jal          ra, 17f
15:               jal          s4, 10b
16:               jal          ra, 0b
17:               jal          t1, 21f
18:               jal          ra, 7b
19:               jal          s9, 8b
20:               jal          ra, 13b
21:               jal          ra, 2b
22:               jal          ra, 16b
23:               jal          ra, 22b
24:               jal          ra, 6b
25:               slti         tp, t3, -1037
sub_3_1:          jal          s3, 0f
0:                jal          ra, 23f
1:                jal          t1, 13f
2:                jal          ra, 17f
3:                jal          a7, 6f
4:                jal          ra, 10f
5:                jal          ra, 20f
6:                jal          ra, 16f
7:                jal          ra, 18f
8:                jal          ra, 14f
9:                jal          t1, 7b
10:               jal          t1, 2b
11:               jal          t1, 9b
12:               jal          tp, 8b
13:               jal          t1, 22f
14:               jal          ra, 1b
15:               jal          ra, 5b
16:               jal          ra, 12b
17:               jal          ra, 15b
18:               jal          t1, 4b
19:               jal          ra, 3b
20:               jal          ra, 21f
21:               jal          ra, 24f
22:               jal          ra, 11b
23:               jal          ra, 19b
24:               xor          s3, s10, sp
sub_3_6:          jal          s3, 13f
0:                jal          a0, 29f
1:                jal          ra, 23f
2:                jal          ra, 18f
3:                jal          t1, 16f
4:                jal          ra, 20f
5:                jal          ra, 26f
6:                jal          t4, 3b
7:                jal          ra, 9f
8:                jal          s0, 19f
9:                jal          ra, 24f
10:               jal          ra, 7b
11:               jal          t1, 21f
12:               jal          ra, 10b
13:               jal          a6, 4b
14:               jal          ra, 2b
15:               jal          ra, 28f
16:               jal          ra, 22f
17:               jal          gp, 27f
18:               jal          ra, 6b
19:               jal          ra, 0b
20:               jal          t1, 12b
21:               jal          t1, 15b
22:               jal          ra, 8b
23:               jal          t4, 5b
24:               jal          ra, 1b
25:               jal          t1, 14b
26:               jal          ra, 17b
27:               jal          s8, 11b
28:               jal          ra, 25b
29:               sub          s1, t6, a0
sub_3_16:         jal          s3, 4f
0:                jal          t1, 13f
1:                jal          ra, 5f
2:                jal          t1, 0b
3:                jal          ra, 6f
4:                jal          tp, 12f
5:                jal          ra, 10f
6:                jal          t1, 11f
7:                jal          ra, 2b
8:                jal          ra, 7b
9:                jal          ra, 14f
10:               jal          t1, 9b
11:               jal          ra, 8b
12:               jal          s2, 3b
13:               jal          a1, 1b
14:               add          t1, a7, s0
                  srl          s2, t3, s9
                  sll          s4, a2, t4
                  sltiu        tp, s11, 1947
                  slti         a1, a3, -424
                  srli         t3, tp, 28
                  ori          s8, a7, 903
                  srli         s8, s3, 31
                  slt          t4, gp, tp
                  auipc        a0, 707782
                  slt          s5, s9, a4
                  srli         s6, s5, 0
                  sll          a1, a6, s4
                  ori          s2, t3, -1402
                  sub          t4, t2, a6
                  sll          a4, t3, s0
                  sub          s9, sp, a0
                  srli         s2, s9, 23
                  auipc        s2, 212143
                  addi         a6, a6, 944
                  beq          t6, t2, 23f
                  sub          t4, t3, s11
                  sll          a6, gp, t1
                  addi         s7, t4, 2029
23:               bltu         s4, t3, 30f
                  ori          s0, a0, -123
                  beq          ra, t0, 28f
                  sltu         a2, s8, a5
                  slli         a3, gp, 2
28:               beq          s8, s9, 45f
                  blt          s5, a3, 41f
30:               sra          s4, zero, t1
                  sub          s8, a1, s1
                  sll          t3, a0, s0
                  xori         a6, s1, -238
                  bge          t3, s10, 37f
                  sll          t0, s8, t5
                  bgeu         a0, t6, 50f
37:               addi         t3, t2, -1246
                  addi         t5, a3, -1893
                  xori         s7, s6, 1718
                  ori          s8, t3, 1154
41:               slt          s3, tp, t0
                  srai         s11, t5, 14
                  or           t3, s11, s6
                  bgeu         a6, gp, 50f
45:               beq          t4, s0, 62f
                  bne          t5, s6, 50f
                  beq          a2, t6, 62f
                  srl          s8, s6, gp
                  sra          t5, s2, s7
50:               xori         a2, gp, 1246
                  bge          s6, s6, 59f
                  blt          s9, a1, 64f
                  lui          gp, 411209
                  sltu         t0, t0, s6
                  beq          t5, a4, 73f
                  srli         a1, a1, 22
                  bne          a0, a0, 71f
                  sra          ra, zero, t2
59:               lui          a4, 401255
                  slt          s3, s8, s10
                  xori         s3, a7, -780
62:               blt          s8, t6, 72f
                  or           a4, a6, a7
64:               srl          t0, s6, s11
                  blt          a3, a1, 73f
                  sltiu        t0, s0, -1007
                  xor          a6, a5, ra
                  blt          a4, a1, 74f
                  sltiu        gp, s6, 14
                  srli         t5, gp, 13
71:               nop
72:               addi         a1, a5, 1801
73:               srli         t4, gp, 14
74:               bgeu         zero, a3, 75f
75:               sll          s6, s11, s0
                  and          a5, s0, s7
                  sltu         a1, t0, s6
                  slt          a3, zero, s10
                  sltu         a6, t3, ra
                  srli         s0, t3, 27
                  add          s6, zero, s0
                  andi         gp, s10, 1586
                  slti         a2, t0, -582
                  bgeu         s7, s4, 90f
                  sll          s2, a7, t1
                  blt          s11, t4, 98f
                  slli         tp, a6, 3
                  slti         t1, s4, -430
                  bne          tp, t1, 96f
90:               sra          zero, tp, zero
                  blt          sp, s3, 108f
                  sra          s7, s9, s3
                  sra          t5, ra, s3
                  beq          sp, a0, 103f
                  auipc        t5, 294761
96:               auipc        a3, 121389
                  addi         s5, zero, -1913
98:               nop
                  or           t4, t3, a4
                  sra          a5, t2, a0
                  ori          s6, s2, -767
                  add          t3, s1, t3
103:              auipc        a3, 675397
                  auipc        zero, 785877
                  nop
                  addi         tp, s8, -1848
                  sub          s7, sp, t2
108:              blt          sp, s3, 116f
                  sub          tp, s4, t2
                  srai         a6, s7, 7
                  xori         s0, a5, 1823
                  addi         a1, t4, 1643
                  auipc        gp, 408907
                  or           ra, s0, t4
                  srli         gp, a3, 21
116:              blt          a7, s0, 130f
                  bne          gp, t1, 128f
                  sltiu        a5, t4, 1997
                  blt          sp, s11, 123f
                  blt          a2, s4, 127f
                  slti         tp, a1, -312
                  slti         a4, s4, 601
123:              bgeu         s2, s6, 140f
                  xori         s0, a6, -1051
                  blt          t3, s11, 131f
                  blt          t1, t5, 134f
127:              srl          t5, s11, a4
128:              and          a7, s11, s5
                  xori         s11, a2, 1478
130:              beq          sp, s5, 144f
131:              bge          s4, s8, 142f
                  sltu         t1, t3, a4
                  slli         a4, s9, 24
134:              sltu         s0, t0, sp
                  xori         s6, t1, -1079
                  sub          a7, s6, t0
                  bge          s9, a2, 143f
                  bgeu         gp, a6, 144f
                  slt          a2, gp, ra
140:              andi         s9, s8, -957
                  sltiu        ra, s10, -948
142:              srli         tp, gp, 27
143:              blt          a3, a3, 150f
144:              srli         gp, s6, 21
                  sltu         a5, t6, tp
                  sll          s2, s8, t3
                  auipc        a3, 170329
                  bltu         a4, ra, 165f
                  bltu         a0, s5, 158f
150:              sltiu        s1, s10, -1339
                  ori          tp, a7, 1095
                  sra          tp, t2, s4
                  nop
                  sll          s4, s9, a5
                  slti         s6, gp, 1784
                  bgeu         s6, s7, 173f
                  xori         t1, a1, 533
158:              xor          a5, t0, s10
                  bne          a4, a4, 166f
                  bge          s3, zero, 175f
                  bltu         s1, s4, 168f
                  beq          s11, t3, 166f
                  slli         s0, a4, 18
                  beq          s9, a3, 176f
165:              slli         t5, a0, 8
166:              ori          s11, t5, 1925
                  sltu         t5, s11, s10
168:              bge          s0, s3, 172f
                  lui          s8, 141102
                  beq          a2, a1, 174f
                  slti         s4, a2, -403
172:              addi         t4, s6, -238
173:              beq          s6, s5, 187f
174:              xori         gp, s6, -1525
175:              andi         s1, a1, -1827
176:              srl          s0, tp, s10
                  bgeu         s5, s3, 194f
sub_3_2:          jal          s3, 13f
0:                jal          ra, 7f
1:                jal          t1, 12f
2:                jal          ra, 10f
3:                jal          ra, 27f
4:                jal          ra, 0b
5:                jal          t1, 25f
6:                jal          t1, 19f
7:                jal          t1, 3b
8:                jal          t1, 26f
9:                jal          ra, 29f
10:               jal          gp, 21f
11:               jal          ra, 6b
12:               jal          t0, 20f
13:               jal          ra, 5b
14:               jal          t3, 17f
15:               jal          ra, 8b
16:               jal          t1, 18f
17:               jal          ra, 15b
18:               jal          ra, 28f
19:               jal          ra, 24f
20:               jal          sp, 14b
21:               jal          ra, 16b
22:               jal          a0, 2b
23:               jal          ra, 22b
24:               jal          t1, 23b
25:               jal          t1, 11b
26:               jal          ra, 4b
27:               jal          ra, 9b
28:               jal          ra, 1b
29:               srai         a3, s11, 28
                  blt          a1, s0, 190f
                  add          ra, a2, s7
                  xori         s6, a2, -16
                  andi         s6, s11, -1524
                  srai         s9, s1, 1
                  blt          t5, a4, 191f
                  ori          tp, a3, 10
                  xori         s5, a5, -530
                  slt          t3, s2, s0
187:              addi         t3, s9, 959
                  or           gp, s8, ra
                  sll          s9, t1, zero
190:              andi         t5, s10, 1999
191:              slti         zero, a3, 1303
                  sltu         s8, s6, tp
                  bltu         s5, sp, 210f
194:              srli         s6, t5, 17
                  sra          t3, t1, s6
                  beq          s4, t6, 199f
                  slt          a2, t4, s3
                  srli         a7, a3, 13
199:              ori          tp, a3, -1953
                  bgeu         s10, a3, 214f
                  beq          t5, t3, 219f
                  slt          t1, t0, a5
                  blt          s2, a5, 204f
204:              or           a0, s10, s3
                  beq          a2, a1, 215f
                  ori          a4, t6, -742
                  slli         a1, s10, 24
                  sltiu        a3, s2, -589
                  add          a1, s11, t6
210:              slti         t0, t5, -1397
                  ori          s7, s2, 1139
                  lui          s0, 190337
                  xori         a2, a5, -38
214:              sub          a7, t3, s4
215:              auipc        s1, 670457
                  sra          t0, t2, s5
                  slt          t5, zero, s2
                  sltu         s0, sp, ra
219:              srli         s11, a2, 10
                  addi         t5, a5, 253
                  sltiu        gp, gp, -1599
                  slti         s8, sp, 1011
                  srai         a6, t6, 9
                  sra          t1, s9, s0
                  add          s3, s5, s2
                  sll          s9, a4, sp
                  blt          a1, s3, 230f
                  sra          t1, s10, a0
                  sltu         ra, s2, s3
230:              srli         s6, s0, 31
                  andi         s4, a6, 168
                  slti         t0, t0, 1478
                  srl          a6, ra, a7
                  bne          s0, a7, 246f
                  bge          a3, a7, 243f
                  bge          t0, a6, 253f
                  slli         s3, t3, 28
                  xori         a5, a0, -107
                  lui          t0, 679631
                  bgeu         t6, gp, 258f
                  nop
                  beq          t6, s6, 249f
243:              xori         s7, sp, 906
                  sll          s1, a7, zero
                  lui          a3, 460893
246:              or           a5, zero, a0
                  srai         ra, s8, 30
                  or           s5, t3, ra
249:              sll          a2, s11, t1
                  xor          a0, a0, a6
                  srl          a5, s4, t4
                  addi         s2, a3, -1662
253:              xori         t0, t5, 1043
                  sll          a1, s3, s10
                  beq          s3, t2, 269f
                  sra          a0, ra, zero
                  lui          s3, 942053
258:              bne          t5, a0, 264f
                  lui          a1, 1031962
                  slti         a4, a5, -1497
                  xor          a7, t3, tp
                  auipc        a3, 1008929
                  xori         ra, t4, 488
264:              and          gp, s9, ra
                  slli         s2, gp, 4
                  lui          s11, 74284
                  sll          s8, a6, tp
                  sltu         t0, s7, t4
269:              slti         t0, a3, -270
                  and          sp, s11, t4
                  and          t3, ra, s5
                  sltiu        zero, t0, -1352
                  bgeu         s9, gp, 285f
                  bge          a6, a5, 288f
                  addi         s9, t3, -1761
                  and          a7, s4, tp
                  addi         a4, s3, 722
                  xor          a7, a7, a0
                  or           a0, t6, s10
                  srl          t1, t6, s9
                  ori          a5, s0, 1336
                  xor          s4, zero, a3
                  add          s6, t0, s8
                  bge          t5, a1, 301f
285:              srl          s2, s2, t2
                  nop
                  beq          t0, t2, 294f
288:              lui          a5, 307743
                  auipc        a6, 228596
                  lui          a0, 841714
                  bltu         t0, s8, 305f
                  or           a2, s9, s9
                  and          a5, s1, a5
294:              sra          t0, sp, a1
                  blt          s3, s0, 307f
                  bne          t4, ra, 299f
                  xor          t0, t1, t6
                  bge          s3, s8, 299f
299:              ori          ra, tp, -1122
                  and          t5, s8, a2
301:              ori          a0, a6, 1423
                  bge          a2, s7, 312f
                  bne          s11, sp, 310f
                  bne          t4, a4, 310f
305:              sll          s2, a4, t2
                  sra          a5, t2, s11
307:              andi         s8, s2, -970
                  lui          a6, 409313
                  xor          s9, t5, a5
310:              or           t5, t0, a3
                  nop
312:              xor          t4, t1, a1
                  bgeu         a3, gp, 325f
                  srli         tp, t3, 27
                  lui          t0, 975913
                  srl          t0, a0, s2
                  andi         ra, s0, 1816
                  srli         a1, s3, 16
                  srli         a7, t0, 11
                  nop
                  bne          s5, s10, 332f
sub_3_26:         jal          s3, 9f
0:                jal          sp, 1f
1:                jal          gp, 6f
2:                jal          s2, 11f
3:                jal          s5, 5f
4:                jal          t1, 12f
5:                jal          t1, 10f
6:                jal          ra, 2b
7:                jal          t1, 0b
8:                jal          t5, 3b
9:                jal          ra, 7b
10:               jal          t1, 4b
11:               jal          s1, 8b
12:               ori          t5, s6, -1471
                  beq          gp, t2, 325f
                  sub          gp, a5, t2
                  sra          t0, gp, a7
325:              xori         a6, a5, 430
                  and          a0, t1, s3
                  slt          a5, t4, t3
                  addi         gp, a2, 1601
                  xori         gp, gp, 770
                  srai         a2, t5, 29
                  srl          a1, s10, s7
332:              slti         t1, s3, 456
                  xori         a4, a1, 1065
                  andi         s7, s4, -1675
                  andi         a4, a6, -873
                  beq          sp, sp, 351f
                  sub          ra, s7, s4
                  srl          s6, t4, a2
                  blt          t6, t6, 347f
                  slli         sp, t6, 21
                  or           s2, s8, s7
                  or           s9, s9, s1
                  or           s7, s7, s1
                  nop
                  addi         sp, tp, 401
                  beq          t0, s5, 363f
347:              add          a7, a2, a6
                  slli         a5, s6, 20
                  bltu         sp, a4, 366f
                  xor          a4, a0, s2
351:              bgeu         s8, s1, 355f
                  auipc        a0, 237138
                  add          a0, t6, a3
                  andi         s5, zero, -743
355:              or           s11, t6, a3
                  nop
                  srai         t4, tp, 10
                  sra          s5, s1, t1
                  or           t3, t6, t2
                  beq          a3, s3, 369f
                  andi         a6, s1, -1178
                  sltiu        s3, t0, -1157
363:              sub          s6, a7, s0
                  slli         s7, a3, 10
                  xori         s7, t4, 1197
366:              sra          a4, tp, t4
                  add          s3, t1, s2
                  sll          tp, t6, s1
369:              bltu         s10, t1, 377f
                  add          a4, a1, s4
                  or           s8, zero, a4
                  srl          a2, a4, t5
                  andi         a5, t1, -298
                  or           tp, s7, s9
                  ori          a3, s0, 982
                  xor          t5, t4, zero
377:              sltiu        t5, s8, 836
                  slti         s3, s10, 596
                  sltiu        s9, s10, 1422
                  bltu         a5, s7, 386f
                  lui          s5, 594576
                  nop
                  or           s6, s7, t1
                  xor          a0, s8, tp
                  add          a7, t6, t2
386:              slti         s3, s3, -96
                  slli         t1, s1, 20
                  sltu         gp, s5, a1
                  sll          s11, gp, s11
                  lui          t1, 655710
                  sub          s3, s6, t3
                  and          t4, s0, a5
                  andi         zero, s11, -1418
                  sub          a0, tp, t1
                  add          a7, t6, t3
                  auipc        s8, 756780
                  nop
                  ori          t3, s5, -756
                  sra          t5, t2, t4
                  xor          s7, s7, a3
                  slli         a0, t6, 26
                  sll          s4, a5, s3
                  xor          s3, ra, t6
                  bge          s8, s3, 412f
                  addi         s5, a4, -564
                  nop
                  sll          a0, s8, tp
                  srli         t0, s7, 17
                  sra          tp, t6, s0
                  nop
                  or           t3, s8, s6
412:              xori         zero, s10, -1285
                  slli         s4, s4, 25
                  srai         a4, s6, 0
                  bne          a2, a6, 419f
                  add          ra, s3, s11
                  xori         zero, s1, 1442
                  srai         a1, s7, 12
419:              sltiu        a4, s0, 1237
                  auipc        s5, 931746
                  and          a3, s5, t1
                  blt          t3, s4, 426f
                  sll          s5, s2, s4
                  xor          a5, t5, sp
                  ori          s4, s1, -1867
426:              auipc        a3, 288533
                  auipc        s3, 490820
                  srli         s2, a3, 23
                  sltu         a4, t1, s5
                  andi         zero, s7, 844
                  xori         s4, t1, -1984
                  slt          a6, s0, s11
                  or           s2, s8, a7
                  slli         sp, t5, 0
                  bne          zero, a1, 445f
                  bltu         gp, s5, 453f
                  sltiu        s9, s11, 367
                  srai         s0, t3, 11
                  slti         gp, zero, -1065
                  sra          a0, a1, zero
                  and          ra, a3, t1
                  and          gp, s6, ra
                  bgeu         t1, tp, 455f
                  sll          s1, a6, s10
445:              and          ra, ra, s4
                  lui          t5, 237501
                  bne          s2, sp, 461f
                  or           s5, s2, s5
                  xor          sp, a6, t1
                  ori          s7, s1, 16
                  bltu         a1, t1, 466f
                  xori         s5, s3, -431
453:              bne          s8, s11, 456f
                  andi         s2, s8, -399
455:              sltiu        a1, s10, -1695
456:              ori          t5, s6, 23
                  sll          s6, s11, s8
                  addi         a5, s1, 1628
                  bgeu         s5, t3, 465f
                  xori         a0, t6, 1201
461:              sub          a5, t5, zero
                  blt          s9, s9, 479f
                  auipc        a1, 648821
                  xori         zero, a2, -8
465:              srai         a7, s11, 29
466:              sub          zero, s6, a5
                  bge          gp, t2, 484f
                  beq          s10, s8, 486f
                  bge          s10, a4, 483f
                  slti         a3, t1, -75
                  slli         s6, a5, 17
                  sltiu        s2, t1, -589
                  slti         tp, s1, -1718
                  bgeu         a0, s0, 482f
                  addi         sp, a2, -990
                  blt          a0, ra, 480f
                  srl          s9, s9, s10
                  srai         a2, sp, 5
479:              sltu         s11, t0, t5
480:              bge          s8, s6, 492f
                  or           gp, s5, a0
482:              srl          s8, a1, s8
483:              slli         a4, a4, 7
484:              nop
                  sltiu        s8, a0, -984
486:              addi         a6, t2, -879
                  bge          s9, ra, 490f
                  addi         t1, s0, 644
                  sltiu        t0, t6, -1406
490:              slt          a2, a1, t0
                  slti         s6, sp, 1980
492:              sll          s11, t6, s10
                  add          s7, zero, t0
                  xori         ra, t2, -1699
                  blt          a3, s3, 499f
                  lui          zero, 284837
                  ori          s5, s11, 1901
                  or           s3, t3, ra
499:              addi         s11, t4, 241
                  bltu         t3, a2, 504f
                  sltu         s8, t6, zero
                  slli         a4, a5, 11
                  xori         s1, t5, -755
504:              sub          a5, s7, zero
                  xor          t1, t5, a5
                  slli         s6, s4, 1
                  addi         s2, t3, -1048
                  xori         ra, t2, -1052
                  sll          gp, s5, s5
                  add          sp, s2, a2
                  bgeu         s3, t6, 519f
                  or           t1, s6, s2
                  sltiu        s2, a4, -1612
                  bgeu         t1, t0, 531f
                  nop
                  slti         t4, s5, 1514
                  auipc        s0, 920327
                  andi         t0, ra, -1345
519:              bltu         gp, t6, 520f
520:              nop
                  or           s9, s0, a7
                  bge          t6, s7, 529f
                  slti         t0, a2, -753
                  xor          s1, zero, gp
                  or           a3, s8, gp
                  xori         t5, s1, 1303
                  srai         a3, s9, 22
                  add          a0, s3, s11
529:              sltiu        t5, a2, 1303
                  xori         s11, s3, -631
531:              bne          a2, zero, 537f
                  ori          a5, a7, -1595
                  xori         s6, s0, 1177
                  and          s1, s4, a3
                  sltu         s2, gp, a1
                  or           a2, s10, s8
537:              slt          tp, a1, s1
                  slt          s4, t2, s0
                  xor          s9, s1, t5
                  srl          s2, s10, t5
                  bne          zero, s5, 553f
                  slli         sp, a5, 30
                  srl          a2, a7, s11
                  beq          a0, t4, 552f
                  ori          s7, s1, 1995
                  lui          tp, 915039
                  bge          t6, t5, 553f
                  bge          s2, tp, 559f
                  srl          t0, t6, a7
                  sltiu        a0, a1, -1416
                  sub          a1, s9, a7
552:              sra          t5, s10, a6
553:              bne          a3, s1, 562f
                  slt          s5, s4, sp
                  add          s3, s5, s8
                  srli         a5, t5, 18
                  bgeu         s6, t3, 564f
                  auipc        t3, 806482
559:              srli         s0, s8, 13
                  and          a0, a3, s6
                  slli         a7, s11, 13
562:              bgeu         s1, tp, 576f
                  sra          s9, a3, zero
564:              srai         tp, zero, 21
                  srl          t3, tp, t2
                  sub          s2, s4, a2
                  lui          t3, 452037
                  or           a5, s2, tp
                  sll          t0, a2, gp
                  srai         a6, s5, 30
                  addi         t4, t2, -908
                  andi         s9, a5, 1525
                  sra          a4, t0, a2
                  beq          zero, t6, 581f
                  or           t4, t0, a4
576:              nop
                  blt          ra, s8, 581f
                  add          s9, t3, s11
                  xor          s9, s0, a2
                  sll          sp, s6, s2
581:              and          s7, a5, a3
                  add          s2, s11, s4
                  beq          s8, s10, 597f
                  sltiu        s9, s7, 1346
                  sll          s3, s2, s7
                  ori          s5, t3, 230
                  sll          s11, a3, t5
                  sltu         t1, a6, s1
                  bgeu         a3, t2, 593f
                  nop
                  xori         s7, s10, -896
                  add          s3, gp, a4
593:              srai         t1, t5, 23
                  nop
                  auipc        a3, 96952
                  sll          sp, s10, t1
597:              nop
                  srai         s2, t2, 27
                  bne          a7, s2, 607f
                  sra          s8, a0, s4
                  srl          a4, a2, s8
                  sltiu        a6, a3, -1516
                  sltiu        s8, s0, -1213
                  sltu         a7, a2, s0
                  lui          zero, 463987
                  slt          s11, a3, a4
607:              sll          s5, s3, tp
                  srai         ra, s0, 1
                  slli         a6, tp, 26
                  bltu         s8, a4, 617f
                  beq          s4, t5, 625f
                  slt          s3, a6, zero
                  and          s2, s8, s3
                  bltu         s10, a1, 624f
                  andi         t1, s11, -201
                  slt          sp, s7, t2
617:              bgeu         a7, s2, 620f
                  auipc        s5, 558072
                  lui          s6, 480642
620:              lui          a3, 971917
                  auipc        a4, 830556
                  or           s9, s7, s7
                  andi         ra, t0, 1645
624:              sltu         s7, zero, s2
625:              bgeu         t1, s1, 628f
                  bne          s5, s6, 634f
                  srl          s8, t5, a1
628:              beq          t1, a5, 640f
                  srai         t3, s2, 8
                  addi         t1, ra, 404
                  ori          a4, t6, 1574
                  srli         t1, s8, 26
                  auipc        gp, 144575
634:              and          t0, s1, t6
                  srl          gp, a0, a6
                  bltu         s2, s6, 645f
                  slt          s7, sp, t0
                  srli         a7, ra, 14
                  addi         s11, sp, 1566
640:              sub          a4, t0, a2
                  bge          t0, a1, 647f
                  slli         a6, sp, 6
                  sltu         a7, a5, a3
                  add          gp, t4, s1
645:              sltiu        s7, a1, 1895
                  xor          s5, a5, t0
647:              srl          t0, s8, sp
                  bne          s10, s10, 665f
                  srai         a6, s7, 5
                  sltu         s7, s5, s0
                  nop
                  sll          s6, a3, ra
                  or           t0, s11, t5
                  ori          s7, t4, -602
                  or           sp, t3, zero
                  slt          tp, s4, t6
                  sltiu        ra, t0, -379
                  sra          s0, s11, t6
                  add          s2, s9, gp
                  and          t5, gp, s8
                  beq          s10, s7, 675f
                  addi         a3, s1, 356
                  xor          s8, t0, s9
                  lui          s3, 512786
665:              auipc        t5, 993181
                  slti         s0, sp, 2002
                  sll          s5, a2, a3
                  nop
                  sltu         gp, s8, s7
                  slli         s2, s6, 10
                  and          a3, s6, tp
                  auipc        s1, 695712
                  addi         s9, s5, 1962
                  ori          a0, a5, -1544
675:              xor          a5, a7, s3
                  xor          a7, s7, s11
                  andi         a6, s2, 639
                  ori          zero, a3, 695
                  or           a7, t1, s7
                  sll          s6, zero, a7
                  bge          s11, t5, 699f
                  or           a1, a3, a3
                  sra          s1, s0, s5
                  srli         s9, t0, 15
                  bne          s4, t4, 700f
                  srl          a5, s9, t1
                  bne          zero, t6, 704f
                  slti         t5, t3, 699
sub_3_19:         jal          s3, 21f
0:                jal          a0, 13f
1:                jal          t1, 12f
2:                jal          t1, 25f
3:                jal          t0, 14f
4:                jal          s1, 2b
5:                jal          a4, 16f
6:                jal          s0, 18f
7:                jal          ra, 8f
8:                jal          sp, 1b
9:                jal          ra, 0b
10:               jal          s6, 17f
11:               jal          ra, 10b
12:               jal          ra, 20f
13:               jal          t1, 19f
14:               jal          a7, 11b
15:               jal          ra, 24f
16:               jal          ra, 26f
17:               jal          ra, 5b
18:               jal          ra, 29f
19:               jal          ra, 28f
20:               jal          s3, 15b
21:               jal          ra, 27f
22:               jal          ra, 7b
23:               jal          s2, 9b
24:               jal          t1, 23b
25:               jal          t1, 22b
26:               jal          ra, 6b
27:               jal          t1, 4b
28:               jal          a1, 3b
29:               sltiu        a5, zero, -1629
                  xor          gp, t6, s6
                  lui          t4, 1040039
                  slti         a6, a7, 1165
                  slti         a6, s11, 592
                  sltu         s0, s6, ra
                  bltu         a4, a3, 711f
                  ori          a5, a5, 173
                  xori         s2, sp, 1736
                  srl          a1, gp, s9
                  bne          s3, zero, 710f
699:              srl          s9, sp, s8
700:              slli         t4, t0, 7
                  sltu         s5, s0, t1
                  srli         a1, t5, 25
                  srli         t5, s2, 6
704:              slti         a0, zero, -1800
                  and          sp, s7, t6
                  slli         a4, t2, 23
                  bltu         tp, zero, 718f
                  or           ra, s10, s10
                  sll          t4, t4, s0
710:              sltiu        s11, tp, 919
711:              auipc        a4, 380215
                  sub          a0, a7, a0
                  lui          ra, 217897
                  beq          ra, s5, 722f
                  beq          zero, a0, 721f
                  bgeu         t4, s7, 728f
                  srai         s5, s8, 24
718:              beq          a5, sp, 725f
                  and          s3, zero, a6
                  bgeu         s2, s4, 721f
721:              bltu         t4, s2, 727f
722:              sltiu        a6, gp, -1522
                  sub          a7, s8, t1
                  andi         a3, s1, -1956
725:              sll          sp, t4, t4
                  srl          t5, t2, s0
727:              ori          s4, zero, 1109
728:              srai         sp, sp, 15
                  auipc        t1, 649283
                  xori         a6, s4, -1329
                  or           t3, a4, a5
                  xor          a4, ra, s10
                  nop
                  ori          t4, s11, -151
                  sub          tp, s3, s6
                  bgeu         t2, s0, 743f
                  sll          s11, s3, t3
                  srl          tp, a2, ra
                  slti         gp, s6, -935
                  slli         a6, s8, 29
                  slli         s2, t6, 14
                  beq          s11, s4, 759f
743:              srl          s7, t4, s3
                  addi         s3, s11, -1001
                  slt          gp, t0, a2
                  xor          s6, t2, t1
                  bge          t0, t6, 751f
                  ori          s0, s6, -63
                  sub          a3, t6, a7
                  slli         s4, s9, 19
751:              bgeu         s1, a3, 757f
                  sltu         zero, s6, s4
                  bge          s5, s8, 763f
                  slt          zero, s9, s3
                  addi         s4, a6, -484
                  sra          gp, zero, a4
757:              nop
                  bne          s10, s11, 766f
759:              sll          tp, s1, s0
                  add          zero, a7, a0
                  beq          t0, gp, 765f
                  ori          a0, t5, 1259
763:              lui          s4, 537125
                  and          s5, t2, t1
765:              srli         tp, a0, 18
766:              sll          a7, a3, s4
                  sll          ra, s11, s6
                  xori         a4, a0, -1207
                  or           s4, t5, t2
                  slt          tp, s5, s3
                  xor          s11, zero, s4
                  sll          a5, t5, s11
                  blt          s7, s11, 782f
                  bgeu         s4, zero, 780f
                  nop
                  ori          t3, ra, 1282
                  srli         s1, s6, 14
                  and          s7, s9, s0
                  xori         s7, t6, 1413
780:              srli         t4, s4, 5
                  sll          t5, t5, t1
782:              blt          a3, s1, 796f
                  or           a2, s4, t6
                  addi         s0, a3, -1001
                  beq          s4, s2, 788f
                  xori         t4, ra, -1148
                  sltu         t1, t6, s3
788:              sll          t5, t0, a1
                  slt          a3, a3, gp
                  sltiu        s4, a0, 594
                  bltu         a4, sp, 809f
                  sra          s2, a6, a0
                  sltiu        t0, t3, -623
                  nop
                  sltiu        s6, zero, -710
796:              bgeu         a5, s7, 813f
                  add          s5, t6, a7
                  bne          s1, s1, 810f
                  sub          s2, s10, s7
                  nop
                  sltu         a5, s4, s11
                  nop
                  andi         s7, s6, 114
                  srai         s2, t1, 23
                  bltu         t2, a6, 811f
                  add          a2, a3, t2
                  auipc        a0, 77001
                  slti         ra, a5, -1998
809:              bne          sp, sp, 817f
810:              auipc        s3, 28869
811:              sltiu        a2, s10, -1193
                  slt          a5, zero, zero
813:              slti         gp, a4, -1494
                  addi         t5, s6, -888
                  srai         gp, s2, 11
                  and          a6, gp, t1
817:              srai         t0, a1, 14
                  slti         a6, zero, 899
                  slt          s6, a4, t1
                  ori          ra, t2, 301
                  auipc        ra, 686536
                  bgeu         s7, s4, 839f
                  xori         s11, a7, 1319
                  bne          s6, t1, 839f
                  bne          gp, a2, 839f
                  srai         tp, s9, 11
                  slt          s1, a5, t3
                  andi         s11, s2, 1989
                  bge          a1, zero, 837f
                  bltu         ra, s1, 834f
                  ori          a0, a2, 77
                  xori         s5, tp, 1121
                  srl          a6, a2, a2
834:              bltu         a1, s1, 845f
                  sltu         a7, sp, t2
                  add          s4, s9, a3
837:              sltu         t5, s8, t3
                  slt          a1, a3, t6
839:              slt          t5, a1, t5
                  or           s9, s3, t4
                  srli         t0, t4, 5
                  sltiu        a4, t1, 1444
                  bgeu         s6, s9, 844f
844:              srli         a6, a5, 7
845:              beq          tp, a3, 862f
                  blt          t1, gp, 853f
                  slt          s2, s11, t5
                  addi         t3, s11, 603
                  slt          s1, s8, tp
                  ori          s11, a7, 1765
                  srl          t5, zero, s9
                  lui          tp, 344278
853:              sra          s8, a4, a7
                  sltu         a6, s9, gp
                  sra          a2, zero, sp
                  bge          tp, s7, 868f
                  srai         a4, s9, 29
                  nop
                  blt          gp, s1, 863f
                  sub          a1, a5, ra
                  xor          sp, t5, s2
862:              sltiu        tp, t0, 142
863:              or           tp, s10, s2
                  add          gp, t5, s1
                  sra          zero, s2, gp
                  add          s8, s8, t1
                  xori         s2, s5, 1836
868:              slt          t5, s2, s3
                  xori         s0, t6, 1646
                  or           s2, a3, t1
                  nop
                  slli         a4, tp, 4
                  and          a6, tp, t4
                  andi         sp, s6, 858
                  sub          s1, a0, s5
                  blt          t1, s9, 883f
                  nop
                  slli         a6, s11, 28
                  bgeu         a7, ra, 896f
                  slli         a5, sp, 16
                  auipc        a5, 95660
                  addi         t5, s7, 823
883:              sll          s4, t3, a5
                  nop
                  andi         t4, t6, -685
                  sra          a4, s1, gp
                  blt          t4, s9, 899f
                  slt          a1, s1, a3
                  xori         t3, gp, -1992
                  slt          a2, tp, a7
                  srl          s0, t6, s2
                  xor          ra, t6, t0
                  xori         a0, ra, -1683
                  add          s0, s11, t6
                  xor          a5, s3, sp
896:              sltu         a3, s2, ra
                  slt          a2, t2, tp
                  sub          a2, tp, s9
899:              lui          s8, 528220
                  sub          t0, a6, s5
                  srai         a5, t1, 11
                  blt          s5, s9, 905f
                  bge          s5, s2, 910f
                  ori          t3, a4, -1423
905:              addi         s3, gp, 486
                  srai         s11, a0, 17
                  bge          gp, a2, 921f
                  xori         a3, a6, 1042
                  sltiu        a1, gp, 16
910:              sll          s11, t0, t0
                  sll          ra, a4, t5
                  slt          a1, ra, a6
                  beq          a7, s6, 921f
                  bltu         s1, s10, 915f
915:              sltiu        s0, zero, 1642
                  slt          t1, s11, t1
                  bltu         s0, s2, 921f
                  xor          a0, s8, a2
                  srli         s2, t6, 19
                  beq          t0, s10, 934f
921:              and          a1, a2, s9
                  srl          a6, ra, t2
                  sll          s0, t3, s8
                  sll          a7, gp, s1
                  sub          s11, t5, sp
                  blt          a5, t1, 930f
                  slli         a0, t1, 11
                  sub          a4, a0, t2
                  beq          s10, s6, 935f
930:              ori          ra, s0, -1747
                  xori         a0, a6, -48
                  blt          s5, a5, 944f
                  xori         t1, t3, 164
934:              sltiu        s8, s7, -452
935:              bne          a3, t6, 938f
                  sra          a7, a2, s8
                  sltiu        s5, t3, -1628
938:              auipc        s9, 632066
                  ori          zero, s3, 1130
                  sltiu        s3, s11, -1007
                  sub          s9, t1, a0
                  auipc        a1, 47487
                  or           a7, t0, t3
944:              add          s4, a5, s7
                  bltu         tp, a7, 948f
                  sll          a2, a2, a5
                  sll          s6, a5, s0
948:              beq          t0, s11, 956f
                  sltu         s9, t6, s5
                  sub          s9, sp, a6
                  add          s0, a7, s9
                  bge          a1, ra, 962f
                  bgeu         s5, s0, 964f
                  sll          a0, s9, s0
                  addi         a2, s4, -400
956:              ori          a2, a5, 1640
                  bltu         a1, s9, 963f
                  slti         s4, a5, -193
                  blt          t0, a7, 971f
                  slli         s5, ra, 15
                  xori         s4, s7, -1588
962:              lui          t3, 575823
963:              and          gp, a1, a0
964:              srl          a4, a6, t1
                  slli         a4, ra, 15
                  bltu         a1, s5, 983f
                  srl          a6, s2, s10
                  auipc        a7, 951358
                  slt          t4, s6, s1
                  lui          a5, 580691
971:              sltiu        a1, zero, 1386
                  bltu         zero, t3, 979f
                  sll          ra, s9, a5
                  srai         s1, tp, 12
                  bne          s6, s6, 982f
                  sltu         ra, s1, tp
                  sltiu        s5, t6, -557
                  addi         s5, s1, -1329
979:              addi         s11, t6, 611
                  srli         s3, t2, 7
                  ori          s0, s10, -1485
982:              bgeu         s4, s11, 999f
983:              slt          a1, s10, s7
                  auipc        s9, 704788
                  sll          zero, a0, ra
                  auipc        s3, 924170
                  sltiu        s0, t1, 938
                  lui          a3, 475260
                  xori         s5, ra, -115
                  sra          s4, s3, t4
                  sltu         a1, sp, t1
                  srli         a3, s8, 14
                  ori          t1, a7, 1218
                  add          a2, s7, s10
                  lui          a4, 582214
                  srl          ra, a2, gp
                  beq          s2, gp, 1015f
                  bltu         s2, s2, 1006f
999:              blt          s5, s5, 1013f
                  lui          a3, 465323
                  slt          t1, s8, a0
                  srai         a6, a5, 23
                  xori         tp, sp, 1180
                  bne          s5, tp, 1010f
                  auipc        a5, 163073
1006:             sub          a4, s9, t2
                  ori          a7, a6, -367
                  addi         a2, t1, 1403
                  sltiu        t4, a3, 17
1010:             addi         a0, t1, -1873
                  xori         s7, s10, 1087
                  bge          s10, s0, 1027f
1013:             bne          gp, s7, 1027f
                  lui          tp, 634655
1015:             bne          t6, s8, 1027f
                  sll          a6, a5, s7
                  addi         s11, s1, 1210
                  blt          s11, t5, 1025f
                  bgeu         s10, tp, 1036f
                  sltu         s8, a5, s4
                  srl          s4, a1, s0
                  sub          a0, t3, s6
                  srl          gp, a1, t0
                  slt          a4, ra, s4
1025:             sub          s7, t6, tp
                  srai         s11, s5, 12
1027:             xor          s1, s9, a5
                  add          gp, t5, a3
                  add          a3, s0, s11
                  and          t1, a7, t2
                  addi         zero, t1, -646
                  auipc        t1, 579418
                  blt          t1, s7, 1037f
                  slt          zero, a0, a3
                  lui          s6, 950575
1036:             sra          a4, a5, gp
1037:             bltu         s2, s7, 1046f
                  sltiu        s0, a2, 710
                  bltu         t3, s1, 1056f
                  lui          a6, 575530
                  beq          a5, sp, 1045f
                  lui          s1, 876527
                  slti         s8, s10, -1289
                  srl          s9, a3, s1
1045:             bne          s11, t0, 1051f
1046:             blt          t2, s8, 1047f
1047:             srli         s3, a1, 22
                  blt          t0, t4, 1054f
                  andi         s0, s5, -181
                  addi         a6, s6, 1496
1051:             slti         a1, t1, -1424
                  auipc        ra, 611093
                  xori         s0, a4, 325
1054:             slli         s2, s1, 10
                  auipc        tp, 780035
1056:             bne          s11, s10, 1074f
                  beq          s6, s4, 1064f
                  beq          sp, s3, 1065f
                  andi         t1, t1, 724
                  and          s7, s11, t4
sub_3_18:         jal          s3, 18f
0:                jal          s1, 17f
1:                jal          gp, 5f
2:                jal          s3, 12f
3:                jal          ra, 7f
4:                jal          ra, 14f
5:                jal          gp, 0b
6:                jal          ra, 15f
7:                jal          t4, 9f
8:                jal          gp, 2b
9:                jal          s2, 19f
10:               jal          tp, 21f
11:               jal          ra, 10b
12:               jal          ra, 28f
13:               jal          s2, 22f
14:               jal          ra, 16f
15:               jal          t1, 20f
16:               jal          s3, 3b
17:               jal          t0, 8b
18:               jal          ra, 26f
19:               jal          tp, 1b
20:               jal          ra, 4b
21:               jal          ra, 23f
22:               jal          t0, 24f
23:               jal          ra, 27f
24:               jal          ra, 25f
25:               jal          t1, 6b
26:               jal          s11, 11b
27:               jal          ra, 13b
28:               slt          s9, s9, s11
                  xori         gp, sp, 1342
                  bgeu         s6, s7, 1076f
                  sll          gp, s4, t6
1064:             beq          a6, s7, 1081f
1065:             slti         a0, t2, -459
                  sll          ra, gp, s6
                  srl          t3, s0, s3
                  srai         a1, t6, 5
                  srl          a2, a2, s4
                  sub          s5, a1, s5
                  slli         s3, t1, 13
                  slt          t5, s8, a1
                  xori         a4, s9, -175
1074:             bgeu         s1, sp, 1082f
                  xori         s1, t1, -2007
1076:             slti         t5, s0, -1778
                  xor          a6, s6, t1
                  andi         s8, s5, -844
                  ori          a4, t4, -421
                  slti         s0, s11, -715
1081:             bge          a3, s6, 1090f
1082:             or           sp, a0, s2
                  bgeu         s4, s3, 1098f
                  slt          a3, s0, t6
                  and          tp, s2, s9
                  auipc        t4, 1005112
                  bne          tp, a7, 1095f
                  ori          tp, zero, -1809
                  sll          t4, t5, gp
1090:             bne          a2, a4, 1093f
                  bltu         a7, t3, 1097f
                  xori         t4, sp, -1441
1093:             srai         s0, t3, 11
                  andi         s7, t0, 1688
1095:             auipc        t3, 728696
                  bne          sp, a1, 1100f
1097:             sub          s3, s8, a0
1098:             slti         a4, s8, -323
                  sra          ra, s10, a0
1100:             auipc        s1, 262412
                  bgeu         zero, t1, 1115f
                  auipc        t3, 123009
                  slti         a2, t4, 128
                  xor          t0, a2, t6
                  auipc        t0, 1026250
                  slli         t3, a6, 15
                  addi         a4, tp, 888
                  slti         s8, a6, -785
                  slli         s0, s11, 24
                  blt          s8, a7, 1122f
                  sltiu        a0, s7, -966
                  bltu         t6, a3, 1129f
                  srl          s3, t6, t6
                  beq          ra, tp, 1125f
1115:             sltiu        tp, s7, 499
                  srai         a0, sp, 16
                  or           a5, s11, s11
                  xor          t1, s1, s6
                  sra          a3, t5, s3
                  nop
                  lui          a1, 701718
1122:             srai         s3, a6, 25
                  blt          a4, ra, 1130f
                  sltiu        s8, t2, 856
1125:             and          a0, t3, zero
                  srli         s7, t2, 10
                  xori         t0, t3, -1285
                  bltu         sp, tp, 1145f
1129:             srl          t5, a4, s0
1130:             add          a0, s4, a5
                  sltu         s9, s6, t3
                  add          zero, a1, s11
                  slt          a4, t5, s3
                  bltu         s11, a5, 1146f
                  slti         tp, a6, -525
                  lui          s9, 759331
                  andi         a1, s6, 1223
                  nop
                  bgeu         s6, t4, 1142f
                  andi         t1, t4, -574
                  nop
1142:             bge          t6, s4, 1154f
                  nop
                  xori         s1, s1, 1973
1145:             sra          s2, s3, t4
1146:             slti         s3, t3, 524
                  nop
                  srli         s8, s8, 19
                  ori          zero, s10, 61
                  sll          a1, s8, s5
                  and          t3, s3, t5
                  addi         t5, t1, -1427
                  beq          s6, s0, 1157f
1154:             add          t1, s3, a6
                  lui          t1, 887411
                  sub          s9, t3, s11
1157:             beq          sp, t3, 1171f
                  xori         t5, a6, 711
                  auipc        a4, 593761
                  xor          s1, s4, a2
                  sub          a5, gp, t4
                  sra          s6, t5, s1
                  xori         t3, s9, 1937
                  srl          s4, t5, gp
                  xori         tp, s10, -754
                  andi         ra, s0, -108
                  xori         s5, a0, -875
                  sra          s11, s7, s10
                  blt          a5, s11, 1179f
                  sra          a7, t6, ra
1171:             and          a1, s1, t6
                  srl          s6, sp, s5
                  sltu         s11, sp, t1
                  sltiu        s7, a1, 881
                  addi         s8, s11, 634
                  add          gp, s0, ra
                  add          t0, sp, a7
                  srai         s7, s11, 19
1179:             addi         a5, a5, 947
                  bltu         a1, t4, 1197f
                  srl          a5, s10, t4
                  addi         a3, s3, 1349
                  or           s4, a1, a7
                  sltiu        a5, a0, 38
                  sll          s1, ra, a7
                  beq          t0, a0, 1194f
                  bgeu         s4, s4, 1188f
1188:             lui          a7, 368288
                  slti         s7, s5, 753
                  sra          ra, s2, s9
                  addi         t4, t1, -569
                  slti         a0, tp, 1996
                  xori         a1, s7, 1928
1194:             xor          t3, a4, sp
                  and          a0, a3, t3
                  andi         gp, a0, 576
1197:             lui          s9, 382609
                  sltiu        a2, s7, -1610
                  slt          sp, s4, sp
                  nop
                  bgeu         t3, s7, 1216f
                  beq          s10, a1, 1210f
                  blt          t5, s8, 1210f
                  or           s9, t1, s3
                  sub          a4, zero, t1
                  andi         zero, sp, -777
                  ori          s3, t2, -1744
                  andi         a3, s4, -1114
                  lui          s3, 333056
1210:             sltu         s9, t2, s2
                  xor          s9, t0, s1
                  blt          t6, a4, 1226f
                  add          a1, s8, gp
                  sub          t5, zero, a6
                  addi         s8, s10, 1017
1216:             lui          a0, 555251
                  sltiu        a1, a2, 441
                  blt          s11, s11, 1222f
                  lui          s3, 271459
                  xori         s0, s9, 1405
                  xori         s6, s11, 538
1222:             ori          t4, t1, 869
                  lui          s2, 149202
                  bne          gp, s5, 1228f
                  bltu         s8, a1, 1235f
1226:             slti         s7, s3, 1693
                  sub          sp, a5, s6
1228:             sll          s7, t5, s4
                  sub          t4, t6, t3
                  slti         s4, s10, -649
                  add          gp, t1, t1
                  or           s7, a1, s9
                  auipc        t0, 149489
                  xori         s11, s3, -1012
1235:             and          s5, t2, gp
                  xori         s4, s2, -440
                  bltu         s5, s11, 1244f
                  bgeu         tp, s10, 1252f
                  nop
                  sll          t3, t6, a6
                  or           s0, t5, a0
                  or           a7, s4, s11
                  xori         a3, s5, 959
1244:             beq          s6, s0, 1262f
                  srl          t4, s3, t1
                  auipc        ra, 353750
                  sub          s8, s8, t0
                  sub          s8, sp, a5
                  slt          t0, t2, s11
                  sltiu        s8, t2, 1814
                  andi         tp, t5, -1102
1252:             nop
                  auipc        a3, 458912
                  srli         s8, s3, 21
                  sll          a4, s6, gp
                  auipc        a0, 342754
                  and          s5, a7, a7
                  bgeu         sp, a2, 1275f
                  lui          t5, 987058
                  srl          a3, s0, a3
                  andi         s6, a5, -1368
1262:             sub          t3, t6, a3
                  lui          a5, 211630
                  srai         t4, t4, 25
                  addi         t1, tp, 95
                  ori          a4, t5, -105
                  sltu         sp, ra, sp
                  andi         t0, t3, 1608
                  bne          t0, s7, 1281f
                  slli         s9, s3, 10
                  blt          t1, t2, 1282f
                  srl          s9, t4, s10
                  ori          s3, t2, 1135
                  srl          s6, a6, a5
1275:             xor          a5, t5, a1
                  sra          s8, s1, t5
                  bge          s8, tp, 1280f
                  beq          s4, a4, 1281f
                  sra          ra, s8, s3
1280:             xori         a0, a1, -212
1281:             sll          s5, a3, a5
1282:             andi         s9, s9, 1182
                  sltu         t1, s2, t5
                  bgeu         t4, t1, 1290f
                  bltu         s3, s11, 1291f
                  and          a2, s7, sp
                  bge          a3, gp, 1293f
                  srl          gp, a6, t2
                  bltu         ra, a1, 1306f
1290:             sub          a3, a7, t1
1291:             srai         tp, t2, 30
                  srai         a2, a3, 28
1293:             srl          s5, t6, t4
                  srli         s0, tp, 23
                  srl          a5, t5, s0
                  bltu         tp, a2, 1313f
                  xor          s0, a1, a5
                  sltiu        a4, t3, 1437
                  slt          s4, a1, t0
                  bgeu         t6, s3, 1314f
                  bgeu         tp, gp, 1310f
                  slt          s8, gp, s7
                  beq          t0, a1, 1315f
                  srl          gp, zero, a0
                  sltu         s4, t3, t4
1306:             srai         t0, a7, 21
                  slli         a0, s4, 19
                  srli         a3, a4, 11
                  bne          a2, s2, 1316f
1310:             srli         a5, s4, 5
                  nop
                  add          t3, a4, a0
1313:             bgeu         s1, a5, 1317f
1314:             blt          a3, zero, 1326f
1315:             srl          t0, zero, a2
1316:             beq          t1, s11, 1324f
1317:             slt          s2, s9, a2
                  sltiu        t1, sp, 695
                  xori         a7, ra, 339
                  srai         a7, s0, 11
                  sub          s11, a0, s4
                  auipc        s4, 1008196
                  andi         s11, a1, -105
1324:             sltu         s5, s0, a5
                  slli         s3, s7, 5
1326:             addi         a5, t2, 2044
                  xori         s11, s4, 1899
                  auipc        s2, 1022560
                  bgeu         s5, t3, 1337f
                  xori         t0, gp, 682
                  sltiu        t3, s2, -1094
                  sra          s11, s5, a6
                  sltiu        s5, a0, -117
                  blt          s3, s7, 1351f
                  blt          s4, tp, 1341f
                  bltu         s2, zero, 1343f
1337:             sra          a3, a5, a1
                  nop
                  nop
                  srli         s2, t1, 29
1341:             or           a5, a2, a0
                  sll          t0, a2, ra
1343:             beq          s3, t4, 1352f
                  sltiu        a3, t1, 1986
                  beq          a5, s4, 1359f
                  andi         sp, a4, -852
                  nop
                  bge          t1, t3, 1361f
                  blt          a2, a2, 1361f
                  xor          a5, s5, s1
1351:             sub          tp, s2, t4
1352:             add          s11, a5, a2
                  slli         s5, t6, 4
                  bgeu         s4, a6, 1361f
                  bltu         a6, a7, 1361f
                  slli         sp, s5, 24
                  srli         s5, sp, 26
                  sub          ra, a0, t5
1359:             bne          s8, t4, 1361f
                  bgeu         a6, a3, 1361f
1361:             auipc        tp, 821191
                  lw           s3, 4(t6)
                  sra          t5, s5, t3
                  addi         t6, t6, 56
                  sub          s1, a1, a6
                  slti         zero, gp, 1167
1980:             addi x22, x19, 1
1980:             jalr x22, x22, 0
sub_5:            beq          t5, t3, sub_5_stack_p
                  nop
sub_5_stack_p:    addi         t6, t6, -52
                  sltu         a5, s8, t5
                  sll          s9, a5, t0
                  sw           s3, 4(t6)
                  slt          t0, s9, a6
                  addi         a4, s10, -768
                  and          s2, s11, ra
sub_5_7:          jal          s3, 12f
0:                jal          ra, 8f
1:                jal          a4, 0b
2:                jal          ra, 14f
3:                jal          ra, 7f
4:                jal          t1, 17f
5:                jal          t5, 21f
6:                jal          t1, 15f
7:                jal          ra, 4b
8:                jal          t1, 11f
9:                jal          gp, 3b
10:               jal          ra, 5b
11:               jal          ra, 16f
12:               jal          s5, 18f
13:               jal          ra, 2b
14:               jal          t1, 10b
15:               jal          t4, 19f
16:               jal          t1, 6b
17:               jal          s7, 13b
18:               jal          ra, 1b
19:               jal          s1, 20f
20:               jal          t4, 9b
21:               nop
sub_5_2:          jal          s3, 28f
0:                jal          a2, 26f
1:                jal          s3, 16f
2:                jal          tp, 7f
3:                jal          a4, 1b
4:                jal          ra, 2b
5:                jal          t1, 22f
6:                jal          ra, 17f
7:                jal          ra, 11f
8:                jal          ra, 5b
9:                jal          t5, 27f
10:               jal          s6, 21f
11:               jal          s11, 3b
12:               jal          ra, 18f
13:               jal          tp, 10b
14:               jal          ra, 0b
15:               jal          t4, 8b
16:               jal          t4, 19f
17:               jal          ra, 12b
18:               jal          s1, 13b
19:               jal          ra, 15b
20:               jal          tp, 29f
21:               jal          ra, 4b
22:               jal          s6, 25f
23:               jal          t1, 24f
24:               jal          t1, 14b
25:               jal          t1, 23b
26:               jal          a5, 9b
27:               jal          ra, 20b
28:               jal          s11, 6b
29:               sub          s11, s6, sp
sub_5_3:          jal          s3, 13f
0:                jal          ra, 16f
1:                jal          ra, 22f
2:                jal          a0, 19f
3:                jal          ra, 8f
4:                jal          gp, 6f
5:                jal          ra, 17f
6:                jal          ra, 0b
7:                jal          ra, 1b
8:                jal          ra, 5b
9:                jal          sp, 4b
10:               jal          ra, 7b
11:               jal          a3, 24f
12:               jal          s4, 20f
13:               jal          s6, 10b
14:               jal          t1, 12b
15:               jal          t1, 23f
16:               jal          gp, 11b
17:               jal          ra, 18f
18:               jal          ra, 9b
19:               jal          ra, 3b
20:               jal          a0, 2b
21:               jal          ra, 15b
22:               jal          ra, 21b
23:               jal          ra, 14b
24:               or           s8, t1, s4
sub_5_5:          jal          s3, 8f
0:                jal          t0, 3f
1:                jal          a6, 0b
2:                jal          s3, 15f
3:                jal          t1, 10f
4:                jal          s9, 9f
5:                jal          tp, 12f
6:                jal          ra, 1b
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          ra, 17f
10:               jal          s2, 2b
11:               jal          ra, 16f
12:               jal          ra, 11b
13:               jal          s0, 18f
14:               jal          ra, 13b
15:               jal          t1, 14b
16:               jal          s6, 6b
17:               jal          t1, 5b
18:               srli         a5, a4, 0
sub_5_1:          jal          s3, 10f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          s8, 9f
3:                jal          t1, 0b
4:                jal          t1, 5f
5:                jal          ra, 8f
6:                jal          ra, 1b
7:                jal          t1, 4b
8:                jal          ra, 2b
9:                jal          s9, 6b
10:               jal          a5, 3b
11:               xor          s8, s1, t4
sub_5_0:          jal          s3, 9f
0:                jal          ra, 11f
1:                jal          sp, 3f
2:                jal          ra, 10f
3:                jal          t3, 16f
4:                jal          t1, 5f
5:                jal          s5, 6f
6:                jal          a5, 15f
7:                jal          ra, 8f
8:                jal          t1, 1b
9:                jal          ra, 13f
10:               jal          ra, 14f
11:               jal          sp, 7b
12:               jal          ra, 0b
13:               jal          t1, 2b
14:               jal          ra, 4b
15:               jal          a6, 12b
16:               sltu         a2, s1, a4
sub_5_6:          jal          s3, 12f
0:                jal          gp, 2f
1:                jal          ra, 4f
2:                jal          ra, 24f
3:                jal          ra, 17f
4:                jal          ra, 16f
5:                jal          t1, 23f
6:                jal          t1, 20f
7:                jal          t1, 8f
8:                jal          s5, 10f
9:                jal          sp, 0b
10:               jal          ra, 3b
11:               jal          t0, 9b
12:               jal          ra, 6b
13:               jal          t1, 19f
14:               jal          t5, 15f
15:               jal          a5, 13b
16:               jal          ra, 11b
17:               jal          t5, 5b
18:               jal          ra, 22f
19:               jal          ra, 18b
20:               jal          ra, 21f
21:               jal          s8, 7b
22:               jal          ra, 1b
23:               jal          ra, 14b
24:               jal          ra, 25f
25:               slti         t4, sp, -239
                  addi         a5, t0, -796
                  sltu         s8, s2, t1
                  nop
                  sltu         s2, s7, t0
                  or           s5, s6, t5
                  srai         t1, s0, 27
                  bge          s7, s5, 23f
                  lui          gp, 969345
                  and          sp, a6, gp
                  slt          s7, gp, a6
                  xor          s6, a0, a0
                  nop
                  nop
                  xor          a6, s0, a5
                  bge          a4, tp, 23f
                  slli         a6, s2, 23
                  srl          s1, sp, s2
                  bge          a2, a1, 37f
                  nop
                  bge          t5, a2, 22f
                  blt          t5, tp, 36f
                  and          s3, s1, t6
22:               sltu         a6, a6, s3
23:               slt          tp, s1, t4
                  srai         s9, t4, 20
                  sra          a6, sp, s9
                  sub          s6, s5, t6
                  add          ra, a2, s8
                  xor          tp, t3, t0
                  sll          s8, sp, s11
                  xor          gp, s7, s2
                  auipc        t1, 850738
                  sub          a7, a1, s7
                  andi         a7, a2, -1487
                  lui          s4, 985307
                  sub          t4, sp, a7
36:               lui          s8, 994663
37:               addi         gp, s0, -501
                  srli         t4, ra, 2
                  sub          t0, s9, t5
                  lui          s11, 959981
                  ori          tp, t2, 1373
                  auipc        a2, 379980
                  or           a7, zero, a5
                  auipc        t4, 443945
                  andi         s3, s11, -601
                  blt          t3, a0, 64f
                  blt          sp, s2, 53f
                  srai         s4, a0, 8
                  bltu         a5, s6, 60f
                  sub          a0, s2, t6
                  sltu         a4, s4, s3
                  srli         t0, a6, 24
53:               slt          s5, t0, a1
                  add          ra, s8, s3
                  lui          s1, 979856
                  bge          t2, a7, 67f
                  sltiu        a2, ra, 1372
                  sub          sp, a4, a3
                  blt          s11, zero, 65f
60:               slti         s4, sp, 1101
                  blt          a2, s10, 71f
                  sll          s9, t0, s9
                  andi         s3, t3, -395
64:               srl          s0, a4, s1
65:               auipc        zero, 272401
                  xori         s3, a6, -563
67:               srl          a4, a1, a2
                  sra          a4, t6, a2
                  sub          zero, t6, t2
                  auipc        a3, 851363
71:               addi         a1, sp, -681
                  xor          s8, a0, zero
                  nop
                  and          a0, zero, s10
                  srai         sp, a4, 29
                  sltu         s8, zero, t5
                  srl          s3, t0, s2
                  ori          a7, s7, -614
                  bne          t5, a5, 87f
                  andi         sp, ra, 1195
                  sub          s6, a4, s5
                  lui          tp, 614344
                  bne          a5, s6, 100f
                  sltu         s3, s9, s3
                  bne          s11, t2, 94f
                  lui          a0, 657282
87:               blt          t1, s7, 94f
                  xori         t3, sp, 387
                  sra          ra, t6, tp
                  auipc        s4, 299335
                  sltiu        tp, s8, 225
                  lui          s7, 13981
                  srl          s2, s8, s2
94:               xori         s1, t2, 703
                  blt          tp, s0, 106f
                  bne          a7, s3, 97f
97:               srli         tp, ra, 4
                  ori          t3, a7, -969
                  bne          s9, a2, 116f
100:              and          s4, a3, a7
                  xor          s8, sp, t0
                  or           s4, s1, s1
                  bne          zero, a2, 116f
                  xori         s3, s8, -212
                  srli         a3, t4, 28
106:              srai         s6, s8, 8
                  srai         s5, zero, 26
                  add          a5, a6, a2
                  slli         gp, a4, 14
                  srai         zero, a7, 5
                  and          t4, ra, t2
                  sll          a5, a0, t5
                  xor          s0, a0, a3
                  bltu         s11, s11, 116f
                  blt          s9, a7, 126f
116:              slli         zero, a6, 3
                  sll          s1, zero, t5
                  sltiu        ra, s6, -1164
                  ori          s3, ra, 523
                  blt          s2, s7, 127f
                  andi         zero, t2, -870
                  blt          tp, a1, 132f
                  ori          s3, t6, -524
                  sltiu        zero, sp, -1661
                  bgeu         t4, t5, 133f
126:              bgeu         a3, a6, 140f
127:              bgeu         t0, a5, 145f
                  srli         t3, s8, 14
                  ori          s2, t5, 1238
                  and          t1, s5, a4
                  slti         s6, s6, -1738
132:              or           s9, a3, s8
133:              bne          a6, ra, 141f
                  srl          tp, t1, a6
                  srli         a4, t5, 3
                  addi         s7, s9, -1356
                  xori         s8, s5, 429
                  srli         a4, a4, 22
                  lui          t4, 85651
140:              sub          a0, s7, s7
141:              srai         a6, t2, 29
                  ori          s4, s8, -519
                  slti         a5, t6, -2011
                  sub          a3, s11, t4
145:              andi         s4, s11, -1149
                  sll          s1, s1, a2
                  bgeu         a1, a3, 160f
                  ori          t5, a7, 805
                  slli         tp, s8, 6
                  beq          gp, t3, 170f
                  slli         t5, a3, 23
                  bne          a3, s1, 168f
                  srl          a1, a2, t1
                  beq          s1, a0, 171f
                  xori         s6, s7, 768
                  auipc        ra, 256419
                  ori          s7, t2, 1579
                  and          zero, s4, a5
                  srai         a2, ra, 14
160:              lui          s0, 313131
                  sra          zero, gp, t1
                  nop
                  add          a0, tp, zero
                  beq          tp, s4, 184f
                  and          a3, a2, s9
                  bltu         s3, t5, 175f
                  slt          s3, s5, tp
168:              slti         a1, s7, 481
                  sub          a6, s6, s0
170:              auipc        t5, 781787
171:              xori         t4, t0, 29
                  slti         t3, s4, 784
                  andi         s6, tp, 991
                  slt          s1, t2, zero
175:              nop
                  bne          t3, a0, 185f
                  ori          a5, a7, -688
                  xori         t0, a3, -441
                  blt          ra, a5, 190f
                  bgeu         s3, t3, 181f
181:              andi         s2, s0, 1747
                  slti         a5, t2, -711
                  sltiu        a6, t1, -579
184:              srl          ra, tp, t5
185:              beq          s6, sp, 195f
                  slli         t1, ra, 27
                  nop
                  and          s7, a4, t4
                  sll          a6, tp, a4
190:              or           gp, ra, a1
                  bne          tp, tp, 193f
                  xor          zero, s8, gp
193:              bne          s6, a1, 200f
                  bltu         t0, t6, 207f
195:              addi         a7, t3, 321
                  andi         sp, s5, 1969
                  auipc        t1, 939485
                  nop
                  beq          t3, gp, 205f
200:              srl          a6, t4, s8
                  sltiu        s3, s9, 1147
                  srai         a1, ra, 18
                  nop
                  bltu         zero, sp, 221f
205:              sub          a7, a7, a6
                  srli         s5, a2, 26
207:              lui          a5, 639859
                  sltu         s3, s2, a4
                  andi         t4, t4, -823
                  or           s7, sp, a4
                  sll          a6, s8, s0
                  or           s5, s2, s11
                  or           s9, s5, a4
                  add          s8, a0, t2
                  blt          s6, tp, 226f
                  bltu         tp, gp, 224f
                  or           tp, gp, t2
                  slt          t5, tp, s2
                  sra          s8, a1, a6
                  addi         ra, a1, -1772
221:              sll          a7, s7, zero
                  slli         t5, a0, 8
                  lui          a4, 261008
224:              nop
                  beq          t3, a3, 243f
226:              bgeu         a1, t1, 243f
                  sra          s0, s1, s6
                  addi         gp, t4, 654
                  sra          s4, a2, t5
                  add          a4, a3, s0
                  sra          s3, s10, s2
                  xori         s0, s10, -1606
                  ori          gp, a6, 464
                  ori          s7, t4, -48
                  ori          a1, t4, 1035
                  sll          tp, a2, s5
                  sltiu        a3, s11, 830
                  sltu         a4, tp, t3
                  bltu         s11, a2, 246f
                  srai         s5, t1, 23
                  sll          s9, s4, t4
                  slli         sp, s9, 23
243:              bltu         sp, t1, 249f
                  beq          a7, s4, 258f
                  ori          s1, ra, -1655
246:              sub          a1, zero, s9
                  sltiu        s3, a4, -316
                  sltiu        s11, t5, 1775
249:              addi         s11, s10, -571
                  addi         s11, t5, -1516
                  sub          s0, s6, t5
                  srai         t1, s1, 19
                  sra          s11, s7, t3
                  sub          a4, t0, a2
                  srai         s9, s1, 2
                  sltu         tp, a3, s8
                  ori          tp, s4, 117
258:              sll          s11, s8, a0
                  nop
                  bge          s8, t3, 271f
                  srl          s4, t2, t6
                  and          s6, s6, tp
                  xori         t0, t2, 1915
                  lui          a5, 251741
                  and          a7, s8, s10
                  or           s11, a3, a7
                  and          sp, tp, gp
                  addi         a0, a2, 1490
                  lui          s5, 722013
                  sltu         s11, s0, s11
271:              slli         s5, gp, 11
                  blt          a2, s0, 288f
                  addi         a5, t6, -2004
                  addi         sp, tp, -2016
                  and          s4, gp, sp
                  ori          tp, t4, -446
                  slti         a1, s11, -962
                  or           s3, t0, s10
                  sltiu        s3, t1, 1750
                  sltiu        a6, t1, -1592
                  sltu         ra, gp, t0
                  andi         t3, s2, 1964
                  bgeu         s6, s4, 294f
                  sll          s8, a4, s9
                  xor          zero, t6, a4
                  andi         s2, gp, 1152
                  xori         a7, a0, -1992
288:              ori          zero, zero, -1086
                  sltu         tp, a3, t4
                  add          s2, s5, s0
                  bgeu         s11, s0, 299f
                  blt          s8, t2, 300f
                  nop
294:              andi         s11, t2, 1201
                  bgeu         s4, a3, 313f
                  slti         s9, a7, -430
                  sra          a4, t4, a4
                  blt          a4, s8, 318f
299:              bne          s9, s7, 309f
300:              ori          s5, s4, -1552
                  slti         a5, gp, 742
                  bltu         ra, s9, 315f
                  addi         s4, t2, -322
                  sub          ra, t1, a0
                  srl          s4, a7, t0
                  nop
                  and          s6, s5, ra
                  sltu         t3, s1, t1
309:              slt          t0, s11, s3
                  sub          a5, s9, s0
                  beq          s8, t4, 327f
                  srl          t4, t6, sp
313:              beq          s1, gp, 316f
                  andi         a3, s10, 877
315:              srl          s7, ra, s0
316:              or           a2, s4, t2
                  xori         a7, t6, -1436
318:              ori          a3, ra, 1075
                  bgeu         s9, a5, 336f
                  xor          a2, a1, a6
                  srli         s7, a5, 14
                  sra          s0, s3, a5
                  bge          sp, s9, 339f
                  bltu         t1, s4, 326f
                  xor          s0, s9, s5
326:              slli         sp, s0, 16
327:              blt          s5, zero, 336f
                  xor          a3, s5, t4
                  sltu         a7, s10, s11
                  sltu         t3, a2, zero
                  slt          s2, s8, s3
                  slt          s9, t6, t6
                  blt          s7, t6, 340f
                  sub          t1, sp, a2
                  sltu         s11, t4, a6
336:              slti         s9, s4, -1217
                  xor          sp, s1, a6
                  addi         s2, s1, -1444
339:              auipc        s4, 190250
340:              nop
                  addi         s5, a2, 1867
                  srli         s2, t2, 3
                  xor          s7, t6, t2
                  sll          s5, tp, a4
                  slti         t4, a1, 47
                  bgeu         t6, s8, 357f
                  beq          a7, s11, 367f
                  slti         a7, s7, 222
                  srai         s3, t3, 17
                  xori         a3, s4, -960
                  sltiu        a2, a4, -1106
                  srli         t5, t1, 12
                  bgeu         s4, a5, 356f
                  auipc        s0, 486781
                  srl          s2, a1, tp
356:              or           sp, t0, t5
357:              bge          t3, t5, 368f
                  srl          t3, t0, s11
                  srl          s3, gp, a4
                  sltiu        ra, s0, -1100
                  andi         ra, a6, -1404
                  and          t5, s11, t3
                  slti         a4, a3, 558
                  bge          s7, s2, 365f
365:              bge          a6, sp, 376f
                  lui          gp, 863852
367:              bge          zero, a6, 377f
368:              bne          s3, a4, 384f
                  slti         t4, s0, -455
                  sra          a0, a1, s7
                  sltiu        t0, a4, -1388
                  slt          t5, zero, ra
                  sub          a4, a4, s0
                  bltu         a2, sp, 383f
                  bltu         s5, s8, 393f
376:              andi         s11, a1, -1515
377:              srai         s5, a1, 29
                  ori          a2, s10, -337
                  slti         s6, s0, -798
                  nop
                  sub          s8, a2, a5
                  sltiu        s9, s5, 1732
383:              or           a6, s5, a0
384:              bltu         s9, s7, 390f
                  sll          s4, s1, s3
                  nop
                  bltu         t0, t5, 401f
                  beq          a3, s6, 401f
                  sra          s11, s6, s2
390:              bne          a3, zero, 398f
                  slt          s9, a6, s7
                  blt          zero, ra, 403f
393:              and          a7, a0, t2
                  slli         s11, ra, 29
                  xori         s1, t4, -493
                  bge          a4, t2, 416f
                  or           ra, a2, t1
398:              slti         a4, s7, -286
                  addi         gp, s4, -829
                  sltu         a2, a7, s11
401:              bgeu         t6, gp, 408f
                  srai         a3, s1, 12
403:              auipc        a3, 497002
                  slti         a3, a5, -1885
                  slti         s5, t5, 403
                  sltiu        a4, zero, -1042
                  srl          s11, t2, t0
408:              sll          s3, t1, a6
                  sltiu        s9, zero, 1319
                  bltu         s5, t4, 416f
                  or           s4, zero, t5
                  sltu         s11, a4, gp
                  sltiu        a4, s2, 1467
                  sll          s7, gp, a0
                  or           a1, s4, s7
sub_5_4:          jal          s3, 6f
0:                jal          ra, 10f
1:                jal          t1, 2f
2:                jal          t1, 3f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          t1, 13f
6:                jal          ra, 11f
7:                jal          ra, 8f
8:                jal          t4, 1b
9:                jal          t1, 4b
10:               jal          ra, 5b
11:               jal          t1, 9b
12:               jal          a3, 7b
13:               srli         sp, s1, 25
416:              and          s3, t0, t6
                  sra          s3, s1, a7
                  addi         t5, s0, 521
                  or           a1, s10, t6
                  or           a5, a4, ra
                  blt          t0, a0, 438f
                  xori         a1, a2, -393
                  beq          ra, s1, 441f
                  auipc        t3, 541999
                  bge          a5, s7, 442f
                  sltu         s8, s3, a5
                  slti         t1, t5, 1972
                  or           a5, s1, s5
                  sub          t3, t1, s8
                  sltu         t5, t2, t2
                  beq          ra, t6, 439f
                  slt          t4, s5, s1
                  addi         s6, s8, 1588
                  and          ra, a4, a0
                  bgeu         t3, s10, 447f
                  bgeu         s3, s2, 444f
                  nop
438:              and          gp, s9, tp
439:              srli         s0, s9, 25
                  bltu         a2, a5, 447f
441:              and          s9, sp, t1
442:              sll          t0, a1, t5
                  sltu         s3, ra, tp
444:              bltu         s6, s9, 447f
                  blt          a2, t6, 447f
                  srai         t1, s0, 20
447:              addi         a0, s5, 1124
                  slt          a2, t1, t3
                  add          s8, s0, t2
                  lw           s3, 4(t6)
                  xor          s4, s2, s7
                  addi         t6, t6, 52
                  sra          ra, ra, s6
                  slt          ra, a5, t5
                  slti         a2, s5, 1950
                  slt          s7, a1, t2
                  sll          zero, t3, t0
                  xor          a5, s2, s10
641:              addi x27, x19, 1
641:              jalr x27, x27, 0
sub_1:            bne          zero, ra, sub_1_stack_p
sub_1_stack_p:    addi         t6, t6, -12
                  addi         s5, t6, -1775
                  and          s7, s6, a1
                  sltiu        s6, tp, -1066
                  slt          a7, s0, a1
                  sw           s3, 4(t6)
                  and          t5, a3, s6
                  sll          t3, t6, t1
                  addi         ra, s8, 1448
                  add          s4, a4, a2
                  and          sp, a0, a6
                  sll          s5, s10, s7
                  la           t5, sub_2
                  slli         t4, s7, 21
                  nop
                  sltu         zero, s10, a5
                  addi         t5, t5, -25
                  xor          s0, s6, s6
                  srli         s6, s4, 4
                  srai         s0, s2, 0
sub_1_j2:         jalr         s3, t5, 25 #jump sub_1 -> sub_2
                  sra          gp, s6, s1
                  xori         s5, s0, 1333
                  sltiu        t4, a5, -563
                  auipc        s2, 820260
                  addi         zero, a6, 190
                  and          s1, t1, a6
                  srai         t4, ra, 17
                  slti         s3, t0, 1836
                  ori          s2, a2, -1661
sub_1_j3:         jal          s3, sub_4 #jump sub_1 -> sub_4
                  lui          s0, 461011
                  la           t3, sub_5
                  sub          zero, t5, a5
                  addi         t3, t3, 445
                  srli         a0, a5, 26
                  auipc        s6, 26733
                  lui          s8, 793098
                  slt          a3, t0, s8
                  sub          s9, s5, s6
                  slli         a0, s9, 3
sub_1_j4:         jalr         s3, t3, -444 #jump sub_1 -> sub_5
                  la           a2, sub_3
                  addi         a2, a2, -633
                  xori         t1, a4, -652
                  slt          s3, tp, gp
                  bltu         sp, s9, sub_1_j5 #branch to jump instr
                  slt          a7, a4, t0
                  add          a0, s1, s6
                  srai         s3, a3, 16
                  lui          s7, 785597
                  or           zero, t2, s10
                  lui          s6, 668551
                  srai         s3, ra, 29
sub_1_j5:         jalr         s3, a2, 633 #jump sub_1 -> sub_3
sub_1_1:          jal          s3, 16f
0:                jal          ra, 13f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          t0, 6f
4:                jal          ra, 0b
5:                jal          ra, 1b
6:                jal          a6, 20f
7:                jal          gp, 18f
8:                jal          ra, 5b
9:                jal          ra, 12f
10:               jal          tp, 19f
11:               jal          s5, 17f
12:               jal          tp, 15f
13:               jal          ra, 14f
14:               jal          ra, 2b
15:               jal          ra, 10b
16:               jal          t1, 8b
17:               jal          a5, 9b
18:               jal          ra, 3b
19:               jal          ra, 7b
20:               lui          s2, 1026604
sub_1_2:          jal          s3, 3f
0:                jal          t1, 2f
1:                jal          s1, 14f
2:                jal          ra, 1b
3:                jal          a6, 7f
4:                jal          ra, 13f
5:                jal          tp, 0b
6:                jal          ra, 12f
7:                jal          s8, 5b
8:                jal          ra, 10f
9:                jal          t3, 4b
10:               jal          s3, 11f
11:               jal          ra, 6b
12:               jal          s9, 15f
13:               jal          ra, 8b
14:               jal          sp, 9b
15:               srai         s3, s8, 14
sub_1_0:          jal          s3, 7f
0:                jal          t1, 11f
1:                jal          ra, 13f
2:                jal          t0, 3f
3:                jal          s4, 9f
4:                jal          ra, 0b
5:                jal          ra, 10f
6:                jal          ra, 4b
7:                jal          ra, 8f
8:                jal          ra, 12f
9:                jal          ra, 1b
10:               jal          ra, 2b
11:               jal          ra, 5b
12:               jal          t0, 6b
13:               and          a3, t6, s0
                  srli         a6, t6, 23
                  auipc        sp, 792391
                  srli         sp, t1, 29
                  slli         a5, ra, 8
                  srl          s11, t2, t5
                  sub          s9, s11, a3
                  xori         a7, s2, -1815
                  auipc        s1, 171161
                  auipc        gp, 391786
                  bgeu         t3, s10, 25f
                  slt          t3, t2, t4
                  xori         t5, t6, -1575
                  slli         s4, tp, 22
                  bge          ra, s0, 32f
                  and          sp, a0, t6
                  sltiu        s5, t3, -904
                  slti         s7, s2, -2032
                  sub          s0, s11, a3
                  bgeu         s11, sp, 20f
                  andi         gp, s8, -755
20:               sub          sp, gp, a7
                  lui          s8, 866131
                  bltu         a7, a3, 25f
                  sll          a2, s7, s5
                  and          tp, a4, ra
25:               addi         s1, zero, 1237
                  srl          s4, s0, a5
                  srli         tp, t5, 22
                  ori          s0, s1, -346
                  addi         t1, a5, -696
                  bltu         a7, t2, 46f
                  ori          t1, a1, 271
32:               slli         a5, a5, 24
                  srai         s4, a1, 31
                  sub          s4, s5, gp
                  auipc        s1, 237741
                  srl          ra, a3, s1
                  bne          s4, s7, 51f
                  sltiu        zero, s1, -1607
                  bltu         t4, a7, 51f
                  xor          zero, a7, zero
                  beq          s3, s11, 52f
                  sll          a4, a6, s2
                  beq          t5, s1, 61f
                  auipc        s3, 321426
                  bgeu         t2, a1, 48f
46:               and          s7, a7, s8
                  andi         s0, t0, 1144
48:               sub          s8, a0, tp
                  srli         tp, a6, 16
                  add          gp, tp, s3
51:               auipc        s5, 242309
52:               add          a5, a3, t0
                  blt          tp, s9, 62f
                  addi         t3, s2, 501
                  srl          a7, tp, a0
                  slli         a5, t6, 29
                  or           t5, s8, a4
                  xori         zero, t3, -1993
                  lui          s0, 199098
                  srai         s3, sp, 16
61:               srai         tp, s11, 21
62:               sltu         s3, t1, sp
                  and          s5, s6, s11
                  bltu         zero, s9, 67f
                  slti         a0, a6, -1252
                  or           a1, gp, s6
67:               nop
                  add          sp, a2, s7
                  auipc        a0, 792146
                  srai         t1, s1, 8
                  bgeu         a3, a1, 85f
                  or           t4, gp, t3
                  bge          ra, t1, 74f
74:               sll          s8, s10, t5
                  nop
                  sll          s7, t5, a6
                  bne          t0, s5, 91f
                  bge          t6, s0, 81f
                  ori          sp, a6, 1782
                  xor          s7, s6, sp
81:               bgeu         t4, s6, 93f
                  slti         a7, tp, 1153
                  sll          a2, gp, a6
                  auipc        a1, 403786
85:               and          t0, s6, s5
                  bltu         s3, s3, 88f
                  lui          s3, 235420
88:               blt          s9, tp, 96f
                  lui          s3, 196292
                  andi         a5, t1, 1236
91:               srl          s11, t4, ra
                  xor          sp, a0, s11
93:               srai         sp, s1, 31
                  srl          s11, t3, s10
                  andi         s5, s5, 1066
96:               addi         sp, s11, -1968
                  slti         s5, s5, 1566
                  ori          zero, a1, 1938
                  bgeu         sp, s11, 111f
                  bge          s2, a6, 112f
                  sll          s6, a0, a7
                  or           a0, t1, a2
                  srl          s9, t6, t5
                  bne          s8, tp, 115f
                  sub          a3, t5, s7
                  sltu         zero, sp, a5
                  slli         s1, a0, 28
                  srai         t3, s9, 30
                  addi         s8, s2, -1914
                  bltu         a5, sp, 125f
111:              or           s4, t2, a7
112:              and          s11, a3, t6
                  auipc        sp, 66635
                  sll          a6, s11, a2
115:              auipc        s4, 400690
                  srl          s6, a4, s11
                  bgeu         t3, t3, 129f
                  add          s0, a4, s3
                  sltu         a5, s3, s1
                  srli         t0, s3, 13
                  sltu         a5, a6, t4
                  slti         a0, s4, 1307
                  srai         gp, s5, 30
                  sub          zero, s4, t3
125:              blt          s2, s2, 132f
                  sll          a3, a6, s5
                  bgeu         s3, s11, 147f
                  slt          a0, s5, s7
129:              bgeu         t0, a5, 132f
                  slli         s8, ra, 0
                  andi         a7, a0, -591
132:              andi         sp, s5, -1350
                  auipc        s9, 191379
                  srai         s5, t0, 10
                  sltiu        sp, s3, -807
                  beq          s4, s1, 151f
                  auipc        s8, 577838
                  lui          a1, 545741
                  sub          a0, a3, a0
                  srai         a3, s4, 8
                  or           a5, a5, a5
                  add          gp, a0, a5
                  blt          t0, s8, 161f
                  ori          t3, a5, -527
                  nop
                  addi         sp, s3, 1692
147:              add          gp, s2, a2
                  srai         s0, s7, 29
                  sub          a7, t2, ra
                  or           s1, t2, sp
151:              nop
                  add          a5, s1, tp
                  add          s3, zero, a3
                  sra          sp, a0, a7
                  and          gp, gp, t3
                  add          t5, s3, t0
                  lui          s4, 223062
                  ori          s11, s1, -108
                  blt          a0, t6, 173f
                  bge          s0, s7, 172f
161:              add          tp, a3, s0
                  srli         zero, s3, 28
                  srai         a2, s11, 0
                  sltiu        zero, a6, 856
                  sra          s11, a4, ra
                  bltu         a1, s10, 180f
                  andi         a4, a2, -1353
                  sub          s4, s10, gp
                  sra          gp, a7, s11
                  srai         gp, t2, 28
                  bgeu         t5, s0, 185f
172:              sltiu        t0, a3, 1932
173:              andi         s3, a1, -344
                  srl          a1, t2, t0
                  bge          s9, t2, 186f
                  srai         a6, t4, 14
                  bne          s11, s5, 189f
                  xori         s7, t3, -617
                  bgeu         tp, s5, 186f
180:              beq          s5, a5, 198f
                  slli         s0, gp, 8
                  xor          zero, s5, sp
                  auipc        s8, 851070
                  and          a5, ra, s0
185:              blt          a4, t5, 188f
186:              bgeu         a6, a0, 189f
                  bge          s11, a5, 198f
188:              sltu         t1, ra, t6
189:              sltu         s4, t6, s4
                  or           a5, s8, t4
                  sub          s4, gp, sp
                  beq          s8, s8, 198f
                  ori          zero, s8, -637
                  addi         s0, s8, -431
                  bne          gp, s5, 196f
196:              add          a5, a1, gp
                  xor          a3, s9, sp
198:              auipc        a3, 458512
                  lw           s3, 4(t6)
                  ori          s1, s1, -2041
                  xori         s0, t2, 1215
                  slli         t3, a3, 12
                  lui          zero, 872639
                  slt          a5, t3, t6
                  addi         t6, t6, 12
                  andi         a5, s0, 634
                  srl          a6, s6, t0
                  sub          tp, tp, sp
                  slti         t3, s9, 1573
                  sll          s11, s1, a3
321:              addi x5, x19, 0
321:              jalr x5, x5, 0
sub_2:            sltiu        s0, t2, -228
                  bgeu         s5, s3, sub_2_stack_p
                  lui          ra, 493970
sub_2_stack_p:    addi         t6, t6, -64
                  sltu         t3, t3, tp
                  slli         s8, t5, 13
                  sw           s3, 4(t6)
                  andi         s0, zero, 1196
                  andi         s5, s8, -860
                  nop
                  bgeu         s7, t5, 7f
                  bge          t4, a4, 19f
                  slli         tp, a3, 30
                  bne          t2, gp, 10f
                  srl          s1, t0, a0
7:                or           a0, a2, t4
                  add          zero, s0, a1
                  srli         sp, ra, 12
10:               sltiu        s6, t5, -347
                  sltu         t3, t5, a4
                  sll          s1, a5, s10
                  bne          s11, a1, 30f
                  blt          t1, s0, 20f
                  slt          s7, s7, a4
                  slli         s7, a5, 24
                  lui          a4, 811062
                  xor          ra, a7, a6
19:               sll          a0, s10, tp
20:               xor          t3, t0, s7
                  andi         t5, a0, -1128
                  slti         tp, s9, 513
                  srai         s6, tp, 10
                  sub          a3, ra, s8
                  addi         a5, a7, -361
                  or           t5, a2, s8
                  and          zero, t5, s11
                  beq          s10, ra, 30f
                  sll          zero, gp, a4
30:               lui          a1, 9390
                  slli         s0, t3, 24
                  bltu         s7, s2, 41f
                  sub          a4, a1, t6
                  srai         a4, a7, 2
                  xor          sp, s8, s6
                  or           s5, s2, a3
                  beq          s8, ra, 45f
                  nop
                  beq          s0, a4, 58f
                  bgeu         gp, gp, 46f
41:               slti         s5, s9, 1848
                  lui          zero, 956338
                  beq          a3, s8, 57f
                  or           s2, a2, ra
45:               slli         s5, a4, 22
46:               sltiu        a0, gp, -1487
                  andi         s11, t3, 1838
                  lui          gp, 445424
                  srl          s2, zero, s5
                  sub          a4, gp, s5
                  bge          a4, s6, 69f
                  addi         a2, s11, 1313
                  sra          t0, a4, a7
                  sra          s3, s8, gp
                  nop
                  add          s5, s5, t4
57:               srl          t3, t2, t5
58:               sltu         gp, s0, gp
                  slt          a4, t5, t2
                  addi         s1, a0, -1350
                  bge          s1, a1, 75f
                  xori         s6, a6, 312
                  andi         s1, a0, 523
                  or           t3, a1, a3
                  sra          s7, s9, s11
                  xori         s3, s1, 1915
                  xor          ra, a6, a0
                  add          s11, zero, sp
69:               bne          t0, a2, 74f
sub_2_0:          jal          s3, 24f
0:                jal          ra, 14f
1:                jal          gp, 28f
2:                jal          a4, 26f
3:                jal          t1, 2b
4:                jal          ra, 20f
5:                jal          ra, 30f
6:                jal          t0, 13f
7:                jal          ra, 25f
8:                jal          ra, 17f
9:                jal          ra, 10f
10:               jal          a0, 27f
11:               jal          s9, 12f
12:               jal          ra, 6b
13:               jal          s11, 7b
14:               jal          t1, 8b
15:               jal          ra, 9b
16:               jal          a3, 5b
17:               jal          t1, 23f
18:               jal          t1, 15b
19:               jal          ra, 18b
20:               jal          ra, 19b
21:               jal          ra, 11b
22:               jal          a6, 0b
23:               jal          ra, 4b
24:               jal          ra, 3b
25:               jal          s6, 22b
26:               jal          t1, 21b
27:               jal          ra, 1b
28:               jal          t1, 29f
29:               jal          t1, 16b
30:               andi         zero, s3, -659
                  srl          t0, s6, tp
                  slti         a2, s9, -672
                  sra          a0, s1, a0
                  sra          s4, s5, t0
74:               beq          a0, t1, 81f
75:               addi         gp, t5, 1695
                  bne          t0, a4, 81f
                  sra          tp, tp, t3
                  sub          gp, a0, a6
                  add          s3, t2, s3
                  slt          t1, s5, a7
81:               sub          t5, gp, sp
                  srli         t1, a6, 4
                  addi         a3, s3, 1555
                  auipc        a5, 94615
                  sltiu        s8, t4, 1005
                  xori         a4, t4, 1365
                  sltiu        s9, gp, -2021
                  beq          a1, t5, 98f
                  xori         t1, ra, 1797
                  bne          t6, gp, 107f
                  slt          t4, a7, s1
                  lui          tp, 657645
                  srl          t3, ra, a4
                  sub          gp, t1, t4
                  sltu         ra, t2, s4
                  bne          s5, a4, 115f
                  beq          t2, t0, 104f
98:               bne          s7, zero, 107f
                  andi         a2, sp, -370
                  ori          s7, tp, -1233
                  nop
                  xor          s9, a4, sp
                  slli         sp, s7, 22
104:              sub          s1, a5, s0
                  nop
                  sltiu        s11, a1, -722
107:              beq          a4, s10, 117f
                  and          a3, t1, s3
                  xor          a0, gp, t5
                  slli         a4, s10, 28
                  addi         a6, a3, -1552
                  auipc        a3, 737540
                  slti         sp, t6, -1547
                  srai         a0, s1, 26
115:              slti         a1, s1, 301
                  nop
117:              srli         a0, a5, 13
                  sra          a6, zero, a6
                  blt          t1, a1, 126f
                  bgeu         t3, a7, 131f
                  slt          t1, ra, gp
                  blt          t1, sp, 137f
                  beq          tp, a1, 137f
                  xor          a0, a4, s8
                  or           zero, a6, t5
126:              sub          s5, a7, s11
                  slti         t4, t6, -1012
                  xori         t4, gp, -1030
                  xori         a4, tp, 1744
                  sub          s0, a7, s7
131:              bne          ra, t6, 137f
                  lui          gp, 282981
                  bne          a1, t3, 137f
                  ori          s11, t0, 136
sub_2_1:          jal          s3, 9f
0:                jal          t1, 3f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          s5, 7f
4:                jal          ra, 8f
5:                jal          ra, 0b
6:                jal          t1, 2b
7:                jal          ra, 6b
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          ra, 5b
11:               slli         s3, a1, 9
                  sltu         a6, a0, a2
                  nop
137:              slti         s8, a3, 547
                  srl          a4, t0, s4
                  ori          a4, a1, 543
                  lw           s3, 4(t6)
                  srai         s0, gp, 13
                  auipc        tp, 855698
                  srai         t0, s7, 16
                  andi         a0, sp, 1253
                  addi         t6, t6, 64
                  slti         s9, a1, 535
                  xor          a0, sp, ra
                  srai         s5, gp, 3
                  srl          t3, a2, s2
203:              addi x1, x19, 1
203:              jalr x1, x1, 0
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
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
                  add x7, x31, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
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
                  add x7, x31, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x23, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x23, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x23, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x23, x27, ecall_handler
                  li x27, 0x1
                  beq x23, x27, instr_fault_handler
                  li x27, 0x5
                  beq x23, x27, load_fault_handler
                  li x27, 0x7
                  beq x23, x27, store_fault_handler
                  li x27, 0xc
                  beq x23, x27, pt_fault_handler
                  li x27, 0xd
                  beq x23, x27, pt_fault_handler
                  li x27, 0xf
                  beq x23, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x31, x7, zero
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
                  add x31, x7, zero
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
                  add x31, x7, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x31, x7, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x31, x7, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x31, x7, zero
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
