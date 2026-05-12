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
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x6
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xa
                  li x8, 0x6
                  li x9, 0xbf6b38d
                  li x10, 0xfa0a7b4e
                  li x11, 0x80000000
                  li x12, 0x879353bd
                  li x13, 0xf21cd9ab
                  li x14, 0xf1a3d93b
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x18, 0xcf9322d6
                  li x19, 0x1f4264fc
                  li x20, 0xc
                  li x21, 0x266689db
                  li x22, 0x84fa5ee3
                  li x23, 0xa
                  li x24, 0x5
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0xfd52bdaa
                  li x29, 0x80000000
                  li x30, 0x7
                  li x31, 0xfcd729ae
                  la x4, user_stack_end
main:             jal          sp, 15f
0:                jal          ra, 17f
1:                jal          t1, 13f
2:                jal          ra, 18f
3:                jal          t0, 14f
4:                jal          a4, 3b
5:                jal          ra, 4b
6:                jal          ra, 20f
7:                jal          s1, 8f
8:                jal          t5, 21f
9:                jal          t1, 1b
10:               jal          t0, 7b
11:               jal          t1, 9b
12:               jal          ra, 11b
13:               jal          ra, 2b
14:               jal          ra, 0b
15:               jal          ra, 6b
16:               jal          ra, 19f
17:               jal          ra, 10b
18:               jal          gp, 22f
19:               jal          t0, 12b
20:               jal          t1, 5b
21:               jal          ra, 16b
22:               slli         s8, ra, 7
main_21:          jal          sp, 9f
0:                jal          ra, 1f
1:                jal          t0, 2f
2:                jal          t1, 6f
3:                jal          ra, 5f
4:                jal          ra, 0b
5:                jal          ra, 12f
6:                jal          s6, 7f
7:                jal          t1, 11f
8:                jal          ra, 4b
9:                jal          ra, 10f
10:               jal          t2, 8b
11:               jal          ra, 3b
12:               sltu         s9, a4, a5
main_13:          jal          sp, 19f
0:                jal          t0, 2f
1:                jal          t5, 20f
2:                jal          ra, 4f
3:                jal          ra, 23f
4:                jal          ra, 17f
5:                jal          ra, 9f
6:                jal          ra, 14f
7:                jal          ra, 18f
8:                jal          t1, 3b
9:                jal          ra, 7b
10:               jal          t1, 16f
11:               jal          a3, 1b
12:               jal          ra, 5b
13:               jal          a6, 21f
14:               jal          ra, 15f
15:               jal          t6, 10b
16:               jal          t3, 13b
17:               jal          ra, 12b
18:               jal          t3, 8b
19:               jal          ra, 11b
20:               jal          ra, 6b
21:               jal          t1, 22f
22:               jal          ra, 0b
23:               slli         s7, s10, 21
main_3:           jal          sp, 7f
0:                jal          ra, 22f
1:                jal          ra, 20f
2:                jal          ra, 11f
3:                jal          ra, 17f
4:                jal          t1, 3b
5:                jal          t1, 25f
6:                jal          ra, 15f
7:                jal          t1, 16f
8:                jal          ra, 26f
9:                jal          ra, 18f
10:               jal          s2, 19f
11:               jal          ra, 9b
12:               jal          ra, 6b
13:               jal          t1, 14f
14:               jal          ra, 21f
15:               jal          ra, 8b
16:               jal          a3, 0b
17:               jal          sp, 12b
18:               jal          ra, 10b
19:               jal          ra, 23f
20:               jal          t1, 2b
21:               jal          gp, 4b
22:               jal          ra, 24f
23:               jal          t1, 13b
24:               jal          ra, 5b
25:               jal          ra, 1b
26:               srli         s7, s10, 2
main_16:          jal          sp, 18f
0:                jal          ra, 7f
1:                jal          t1, 15f
2:                jal          t4, 13f
3:                jal          ra, 17f
4:                jal          ra, 23f
5:                jal          ra, 11f
6:                jal          ra, 0b
7:                jal          t1, 8f
8:                jal          t1, 12f
9:                jal          t1, 19f
10:               jal          ra, 3b
11:               jal          t1, 9b
12:               jal          a2, 10b
13:               jal          s11, 6b
14:               jal          ra, 5b
15:               jal          t0, 16f
16:               jal          t1, 21f
17:               jal          ra, 22f
18:               jal          t1, 1b
19:               jal          ra, 24f
20:               jal          t1, 4b
21:               jal          ra, 2b
22:               jal          s1, 20b
23:               jal          t1, 14b
24:               xor          a4, s4, s2
main_6:           jal          sp, 10f
0:                jal          ra, 12f
1:                jal          s1, 0b
2:                jal          sp, 9f
3:                jal          t1, 19f
4:                jal          ra, 15f
5:                jal          ra, 17f
6:                jal          ra, 14f
7:                jal          ra, 11f
8:                jal          ra, 2b
9:                jal          t1, 20f
10:               jal          sp, 16f
11:               jal          sp, 8b
12:               jal          ra, 13f
13:               jal          s6, 4b
14:               jal          sp, 18f
15:               jal          a3, 7b
16:               jal          t6, 3b
17:               jal          t1, 6b
18:               jal          ra, 1b
19:               jal          ra, 5b
20:               lui          s7, 767700
main_4:           jal          sp, 13f
0:                jal          ra, 23f
1:                jal          t0, 11f
2:                jal          ra, 30f
3:                jal          t1, 2b
4:                jal          t1, 27f
5:                jal          ra, 3b
6:                jal          t1, 19f
7:                jal          sp, 25f
8:                jal          t1, 18f
9:                jal          t1, 29f
10:               jal          ra, 0b
11:               jal          ra, 22f
12:               jal          a0, 20f
13:               jal          ra, 14f
14:               jal          t1, 10b
15:               jal          ra, 7b
16:               jal          t0, 5b
17:               jal          s4, 8b
18:               jal          ra, 21f
19:               jal          t1, 26f
20:               jal          ra, 24f
21:               jal          gp, 28f
22:               jal          a5, 12b
23:               jal          ra, 1b
24:               jal          ra, 17b
25:               jal          t1, 4b
26:               jal          ra, 9b
27:               jal          t4, 16b
28:               jal          ra, 6b
29:               jal          t1, 15b
30:               sll          s1, s5, s7
main_11:          jal          sp, 6f
0:                jal          t1, 11f
1:                jal          ra, 9f
2:                jal          a6, 8f
3:                jal          t1, 7f
4:                jal          t6, 3b
5:                jal          t1, 0b
6:                jal          s0, 5b
7:                jal          t4, 15f
8:                jal          ra, 19f
9:                jal          ra, 17f
10:               jal          ra, 4b
11:               jal          t0, 18f
12:               jal          s1, 13f
13:               jal          s9, 1b
14:               jal          gp, 20f
15:               jal          ra, 16f
16:               jal          ra, 14b
17:               jal          ra, 10b
18:               jal          t1, 2b
19:               jal          a3, 12b
20:               srl          s4, s3, s4
main_10:          jal          sp, 25f
0:                jal          ra, 8f
1:                jal          ra, 19f
2:                jal          ra, 7f
3:                jal          t1, 23f
4:                jal          gp, 17f
5:                jal          ra, 18f
6:                jal          t1, 21f
7:                jal          ra, 9f
8:                jal          t1, 10f
9:                jal          t1, 3b
10:               jal          t1, 2b
11:               jal          ra, 14f
12:               jal          s0, 1b
13:               jal          t5, 6b
14:               jal          s6, 24f
15:               jal          ra, 12b
16:               jal          ra, 13b
17:               jal          ra, 22f
18:               jal          ra, 4b
19:               jal          ra, 5b
20:               jal          ra, 11b
21:               jal          t1, 15b
22:               jal          ra, 20b
23:               jal          gp, 16b
24:               jal          ra, 26f
25:               jal          s7, 0b
26:               nop
main_20:          jal          sp, 0f
0:                jal          ra, 6f
1:                jal          ra, 19f
2:                jal          ra, 8f
3:                jal          ra, 26f
4:                jal          ra, 11f
5:                jal          a4, 4b
6:                jal          t4, 3b
7:                jal          a2, 28f
8:                jal          t2, 13f
9:                jal          ra, 22f
10:               jal          a6, 12f
11:               jal          t1, 17f
12:               jal          ra, 1b
13:               jal          ra, 21f
14:               jal          t1, 18f
15:               jal          t1, 2b
16:               jal          t6, 5b
17:               jal          sp, 25f
18:               jal          ra, 27f
19:               jal          t1, 15b
20:               jal          ra, 24f
21:               jal          ra, 14b
22:               jal          t1, 7b
23:               jal          a5, 10b
24:               jal          gp, 23b
25:               jal          ra, 9b
26:               jal          s3, 20b
27:               jal          sp, 16b
28:               jal          s9, 29f
29:               lui          zero, 30580
main_12:          jal          sp, 1f
0:                jal          ra, 4f
1:                jal          t1, 8f
2:                jal          t1, 0b
3:                jal          t1, 6f
4:                jal          t1, 15f
5:                jal          ra, 7f
6:                jal          s2, 5b
7:                jal          gp, 13f
8:                jal          ra, 14f
9:                jal          ra, 2b
10:               jal          ra, 9b
11:               jal          t1, 10b
12:               jal          t6, 3b
13:               jal          ra, 11b
14:               jal          ra, 12b
15:               slt          t1, s1, s9
main_19:          jal          sp, 0f
0:                jal          t1, 20f
1:                jal          ra, 4f
2:                jal          s4, 18f
3:                jal          ra, 21f
4:                jal          a2, 16f
5:                jal          t1, 12f
6:                jal          ra, 13f
7:                jal          ra, 10f
8:                jal          t1, 15f
9:                jal          ra, 6b
10:               jal          t0, 19f
11:               jal          a0, 8b
12:               jal          t1, 14f
13:               jal          ra, 3b
14:               jal          ra, 9b
15:               jal          gp, 7b
16:               jal          ra, 2b
17:               jal          t1, 11b
18:               jal          ra, 5b
19:               jal          ra, 1b
20:               jal          t1, 17b
21:               nop
main_17:          jal          sp, 24f
0:                jal          s8, 21f
1:                jal          ra, 30f
2:                jal          ra, 11f
3:                jal          ra, 9f
4:                jal          ra, 0b
5:                jal          t1, 25f
6:                jal          ra, 20f
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          ra, 26f
10:               jal          s5, 29f
11:               jal          ra, 18f
12:               jal          ra, 27f
13:               jal          ra, 19f
14:               jal          ra, 6b
15:               jal          ra, 16f
16:               jal          ra, 3b
17:               jal          s3, 8b
18:               jal          ra, 13b
19:               jal          t1, 15b
20:               jal          s4, 23f
21:               jal          t0, 10b
22:               jal          t2, 5b
23:               jal          gp, 22b
24:               jal          s8, 12b
25:               jal          ra, 17b
26:               jal          t6, 28f
27:               jal          ra, 2b
28:               jal          ra, 14b
29:               jal          ra, 1b
30:               andi         t5, s4, -770
main_7:           jal          sp, 6f
0:                jal          ra, 5f
1:                jal          ra, 25f
2:                jal          t5, 19f
3:                jal          ra, 14f
4:                jal          ra, 15f
5:                jal          ra, 1b
6:                jal          sp, 17f
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 0b
10:               jal          t5, 18f
11:               jal          ra, 21f
12:               jal          t0, 3b
13:               jal          ra, 16f
14:               jal          s4, 8b
15:               jal          t0, 2b
16:               jal          ra, 4b
17:               jal          ra, 24f
18:               jal          ra, 13b
19:               jal          t5, 7b
20:               jal          t1, 11b
21:               jal          a1, 22f
22:               jal          ra, 12b
23:               jal          s6, 20b
24:               jal          ra, 23b
25:               auipc        t2, 95680
main_18:          jal          sp, 0f
0:                jal          t1, 13f
1:                jal          ra, 26f
2:                jal          s2, 28f
3:                jal          a3, 6f
4:                jal          t1, 19f
5:                jal          ra, 4b
6:                jal          ra, 18f
7:                jal          t1, 8f
8:                jal          t0, 9f
9:                jal          ra, 1b
10:               jal          gp, 30f
11:               jal          t1, 17f
12:               jal          ra, 21f
13:               jal          ra, 3b
14:               jal          ra, 20f
15:               jal          ra, 27f
16:               jal          s4, 25f
17:               jal          ra, 24f
18:               jal          ra, 2b
19:               jal          ra, 10b
20:               jal          ra, 15b
21:               jal          t1, 16b
22:               jal          ra, 11b
23:               jal          ra, 12b
24:               jal          t1, 29f
25:               jal          ra, 14b
26:               jal          t0, 5b
27:               jal          ra, 22b
28:               jal          t5, 23b
29:               jal          s5, 7b
30:               add          ra, t1, a3
main_9:           jal          sp, 1f
0:                jal          t0, 9f
1:                jal          ra, 6f
2:                jal          ra, 7f
3:                jal          t0, 0b
4:                jal          t0, 11f
5:                jal          ra, 2b
6:                jal          s9, 10f
7:                jal          ra, 3b
8:                jal          ra, 4b
9:                jal          ra, 8b
10:               jal          t1, 5b
11:               sra          a0, t3, s1
main_1:           jal          sp, 12f
0:                jal          ra, 1f
1:                jal          ra, 9f
2:                jal          t1, 11f
3:                jal          ra, 7f
4:                jal          s1, 0b
5:                jal          ra, 10f
6:                jal          s7, 8f
7:                jal          ra, 14f
8:                jal          t1, 5b
9:                jal          ra, 2b
10:               jal          ra, 13f
11:               jal          ra, 3b
12:               jal          ra, 6b
13:               jal          ra, 4b
14:               sll          a0, sp, a4
main_0:           jal          sp, 9f
0:                jal          ra, 14f
1:                jal          t0, 0b
2:                jal          t0, 3f
3:                jal          ra, 11f
4:                jal          ra, 5f
5:                jal          ra, 10f
6:                jal          ra, 17f
7:                jal          ra, 8f
8:                jal          ra, 16f
9:                jal          ra, 7b
10:               jal          s4, 6b
11:               jal          ra, 1b
12:               jal          t1, 15f
13:               jal          ra, 4b
14:               jal          ra, 13b
15:               jal          a4, 2b
16:               jal          ra, 12b
17:               and          t5, t4, t6
                  srl          ra, a2, s8
                  srl          a6, s2, s5
                  xor          a6, ra, s6
                  beq          s10, s7, 21f
                  xori         s6, s3, 492
                  auipc        a4, 13709
                  sra          t3, a3, s11
                  bne          s3, s6, 21f
                  srai         t2, s7, 13
                  srli         s7, gp, 16
                  slt          t0, zero, a1
                  auipc        s5, 568729
                  or           a3, s11, t5
                  srl          s2, s10, a1
                  xori         s8, s6, -353
                  slt          s1, s3, s7
                  sra          t1, t5, a4
                  xori         s11, s3, -691
                  bgeu         s4, ra, 38f
                  and          zero, sp, tp
                  addi         s0, s3, 1036
21:               lui          s0, 854601
                  slt          s11, s6, s10
                  bltu         a5, a3, 43f
                  or           t3, tp, s1
                  bne          s8, gp, 40f
                  or           a1, a6, t3
                  bne          a7, zero, 31f
                  srli         a0, a2, 16
                  slt          a0, s3, sp
                  add          ra, s11, zero
31:               or           s9, t3, s8
                  slli         t3, s7, 16
                  xori         t0, a0, -618
                  slli         gp, t3, 10
                  srl          a6, s8, a7
                  xor          s9, s8, t0
                  srai         gp, ra, 2
38:               bltu         a1, t3, 55f
                  beq          s3, t2, 45f
40:               xor          t3, s0, ra
                  sra          a4, a1, t5
                  slli         zero, t5, 1
43:               srl          t4, t6, t6
                  auipc        a2, 536769
45:               slli         t1, zero, 15
                  ori          s9, t0, 1703
                  slti         s6, t0, 163
                  slt          s6, zero, t1
                  srl          t1, tp, a2
                  bgeu         ra, a2, 68f
                  ori          a0, a0, -775
                  sra          gp, ra, a3
                  auipc        gp, 1037382
                  sll          a0, s11, gp
55:               srl          s9, s5, t0
                  beq          t5, s6, 68f
                  or           s5, t1, s10
                  andi         s8, sp, -1279
                  xori         a5, s11, -48
                  bgeu         t0, t5, 80f
                  bgeu         a3, s10, 65f
                  slt          gp, a1, a4
                  and          a6, s10, zero
                  and          s2, tp, s7
65:               andi         t2, t0, -635
                  sltiu        ra, a7, 1112
                  bgeu         t6, s0, 74f
68:               bltu         t3, s7, 70f
                  auipc        s0, 299737
70:               add          t2, zero, a3
                  nop
                  lui          t1, 631739
                  bge          s2, s4, 88f
74:               slli         s4, a5, 6
                  bne          s3, gp, 77f
                  sltu         s3, a3, s0
77:               slli         a6, sp, 16
                  bge          s9, t3, 93f
                  add          s8, sp, t4
main_14:          jal          sp, 8f
0:                jal          ra, 28f
1:                jal          t1, 15f
2:                jal          ra, 4f
3:                jal          s6, 10f
4:                jal          ra, 5f
5:                jal          t1, 26f
6:                jal          ra, 2b
7:                jal          t1, 18f
8:                jal          ra, 20f
9:                jal          t1, 25f
10:               jal          ra, 17f
11:               jal          ra, 7b
12:               jal          t1, 22f
13:               jal          ra, 12b
14:               jal          ra, 23f
15:               jal          s11, 3b
16:               jal          ra, 29f
17:               jal          sp, 27f
18:               jal          ra, 19f
19:               jal          ra, 14b
20:               jal          ra, 6b
21:               jal          t1, 11b
22:               jal          t4, 1b
23:               jal          ra, 0b
24:               jal          t1, 16b
25:               jal          s9, 24b
26:               jal          ra, 21b
27:               jal          s1, 9b
28:               jal          ra, 13b
29:               slli         s8, a5, 15
80:               xori         t2, a7, 1593
                  addi         s11, a4, -586
                  sltiu        s11, tp, -1527
                  xori         sp, s2, 377
                  and          a0, s7, t1
                  sll          t0, t1, ra
                  lui          s7, 610881
                  slt          zero, a4, a0
88:               bltu         sp, a0, 96f
                  sltu         t0, s6, s11
                  sll          s7, gp, t2
                  bge          s6, a7, 107f
                  beq          t2, t4, 102f
93:               slt          a3, t1, a5
                  blt          s4, a1, 95f
95:               sra          t0, zero, tp
96:               sltu         a5, a4, t3
                  addi         a4, tp, 1162
                  beq          s9, a3, 102f
                  bge          s2, a1, 106f
                  bltu         s1, gp, 101f
101:              bgeu         s7, sp, 116f
102:              srai         s9, ra, 5
                  sltiu        s1, s6, -953
                  sltiu        t6, a5, 1432
                  bgeu         s10, s9, 121f
106:              srli         a5, a4, 5
107:              sra          s3, s1, s4
                  bne          zero, s3, 123f
                  beq          s8, tp, 111f
                  slti         t6, a7, -1593
111:              bgeu         t0, a0, 126f
                  sltiu        s11, t6, 1705
                  lui          t2, 737251
                  bne          a2, s3, 133f
                  srai         s11, s7, 9
116:              bgeu         tp, tp, 131f
                  and          gp, a2, s3
                  bgeu         s2, s7, 133f
                  srli         s1, t5, 17
                  sll          t0, gp, s7
121:              bltu         a3, t2, 125f
                  slli         s9, t6, 13
123:              ori          sp, s9, -984
                  sra          a4, a1, a4
125:              sra          a0, s3, a7
126:              srl          s11, zero, s4
                  andi         s8, s8, -613
                  sltu         s11, sp, s1
                  srai         a4, a0, 13
                  auipc        s3, 793745
131:              add          t3, zero, zero
                  or           a2, s11, s3
133:              slti         gp, s5, 1596
                  or           t3, tp, a6
                  ori          s11, s2, 890
                  sub          t4, sp, zero
                  sltiu        a0, t0, -507
                  nop
                  bgeu         a4, tp, 154f
                  nop
                  srai         s8, ra, 8
                  xor          a5, s0, s5
                  bge          ra, zero, 158f
                  add          a6, a0, a6
                  lui          s3, 559998
                  slt          a3, a4, s5
                  add          a4, s9, a1
                  lui          a5, 631060
                  slti         t2, s10, 629
                  bge          a3, t1, 168f
                  srl          s1, t4, t1
                  xori         sp, s11, -1713
                  andi         a1, s2, -564
154:              nop
                  sra          sp, s7, s0
                  beq          gp, a2, 174f
                  addi         s9, zero, 795
158:              add          t0, s7, s11
                  sltu         t0, s4, s11
                  bgeu         a2, s4, 176f
                  sltu         zero, ra, gp
                  xori         a4, t0, -1863
                  srli         s9, a3, 3
                  sltiu        ra, s2, -1718
                  lui          s0, 771291
                  auipc        a5, 656452
                  andi         t6, zero, 1267
168:              or           a1, t2, a6
                  bge          s7, s0, 171f
                  add          ra, sp, a1
171:              or           s11, a6, s10
                  sltiu        s1, t0, -1129
                  addi         t3, t2, 553
174:              bge          s3, zero, 176f
                  slli         t4, s3, 25
176:              xori         s2, t3, -982
                  sltiu        t1, s6, 791
                  bne          t2, s9, 194f
                  srai         s5, s8, 27
                  xor          s2, a5, s1
                  slti         s7, zero, 955
                  beq          s2, a2, 202f
                  blt          t4, s6, 191f
                  slti         s0, s0, 433
                  auipc        a4, 354959
                  andi         t6, s5, -1632
                  andi         gp, s5, -1468
                  addi         s5, s6, -112
                  xor          a3, zero, t5
                  slti         a4, a3, 2021
191:              sub          t3, sp, s8
                  addi         s3, t1, -1921
                  bltu         t4, a6, 212f
194:              and          t1, a3, a2
                  srli         t6, s2, 11
                  and          t3, s8, a4
                  sltu         a3, t1, s8
                  slli         a6, a2, 19
                  ori          s1, sp, 444
                  sub          t0, a5, tp
                  addi         s1, s11, -10
202:              sll          s6, a5, t1
                  nop
                  andi         t2, s9, -1034
                  slli         zero, a3, 28
                  srli         t0, a1, 9
                  beq          a5, ra, 219f
                  sub          s3, ra, s1
                  ori          t3, a1, 1246
                  auipc        s8, 328934
                  sub          ra, a0, s11
212:              bge          a3, sp, 222f
                  slli         s6, a0, 7
                  lui          zero, 69886
                  sltu         s5, t5, s9
                  sll          sp, zero, s9
                  ori          s1, gp, 1584
                  srai         t1, s10, 2
219:              slli         a1, ra, 19
                  blt          a0, s3, 240f
                  bge          s11, s5, 236f
222:              srai         t6, a3, 4
                  xor          s9, tp, a7
                  srai         gp, t2, 16
                  xor          a2, sp, a5
                  lui          t2, 694204
                  xori         t1, s2, -2011
                  sll          a0, a7, t5
                  ori          s0, s7, -958
                  srai         t3, t3, 14
                  nop
                  sub          a1, s3, s7
                  sll          t1, a0, sp
                  slti         s1, t5, -1248
                  xor          t3, a6, a6
236:              srli         a4, s2, 30
                  addi         a0, t0, -1749
                  srai         a4, ra, 20
                  srl          a5, s0, t6
240:              auipc        a0, 63080
                  or           gp, s1, a1
                  srl          a4, ra, a3
                  bge          t3, t5, 249f
                  xori         s11, s1, -323
                  ori          a2, s8, -563
                  sub          s11, s10, a3
                  andi         t5, t1, 1394
                  bltu         t1, a6, 265f
249:              lui          s1, 12544
                  beq          s7, sp, 252f
                  bgeu         a0, a5, 252f
252:              nop
                  srli         t5, s2, 23
                  slli         a3, t0, 6
                  srli         s6, s6, 23
                  and          a4, a6, t4
                  sll          a3, t2, t5
                  ori          zero, a7, -2048
                  blt          s0, a7, 273f
                  xor          s5, ra, s8
                  nop
                  and          s4, a4, zero
                  slli         s5, gp, 21
                  nop
265:              sra          a0, a3, t1
                  add          a0, s9, s3
                  ori          zero, s10, -1101
                  slt          gp, t1, a6
                  srli         a3, a3, 17
                  srl          a6, t1, a0
                  sll          s8, t4, a2
                  add          t0, a6, t4
273:              xori         s8, ra, -1829
                  auipc        t6, 485987
                  slt          s4, ra, a3
                  lui          s6, 755930
                  or           a0, s3, a5
                  blt          a5, s11, 282f
                  xor          a4, s11, t1
                  bne          a5, a4, 287f
                  beq          s8, s8, 285f
282:              xor          s5, tp, s9
                  and          t6, s9, a4
                  lui          a0, 568400
285:              addi         s3, s7, -90
                  slt          s8, s8, gp
287:              sra          a1, a0, gp
                  nop
                  sub          t6, a1, s7
                  sra          t6, t3, a7
                  xor          a1, a0, s5
                  slli         s0, a2, 1
                  srai         t1, s3, 3
                  auipc        a6, 798354
                  sra          s9, s5, t6
                  sra          a3, t5, s5
                  sub          gp, t3, s5
                  sub          s2, t4, gp
                  bgeu         a4, t1, 300f
300:              bne          a1, t1, 307f
                  sub          s5, t6, ra
                  bltu         a4, a0, 317f
                  xori         a5, a2, 1688
                  sub          a0, t0, t5
                  slti         t0, a5, 773
                  sltiu        s8, zero, -687
307:              sltiu        s5, t5, -425
                  bge          ra, a4, 328f
                  beq          tp, a7, 327f
                  add          a0, s5, t0
                  add          ra, a7, ra
                  xori         s11, a4, -1584
                  blt          s5, zero, 323f
                  and          t1, t5, tp
                  blt          s1, s11, 327f
                  bgeu         s2, zero, 318f
317:              sltu         t5, t5, t0
318:              bltu         t2, s6, 320f
                  bne          s4, s7, 339f
320:              nop
                  slt          a4, s3, a6
                  xori         a3, a2, -2041
323:              slt          t2, t0, s8
                  sltiu        a3, a2, 1144
                  bne          a0, s3, 329f
                  and          a2, t2, s4
327:              auipc        gp, 450359
328:              srli         sp, a5, 13
329:              addi         ra, s3, -1210
                  lui          a2, 266878
                  slti         a4, zero, 1086
                  beq          s4, s11, 347f
                  beq          s9, t1, 334f
334:              ori          gp, s8, -774
                  bge          t0, s7, 350f
                  sltiu        a1, a3, -1337
                  or           t6, zero, a0
                  bltu         t6, t6, 355f
339:              slli         a2, a3, 9
                  slti         t1, a4, 1529
                  and          gp, s8, t0
                  blt          t4, s11, 357f
                  srai         gp, t5, 5
                  bgeu         s1, t5, 351f
                  bne          a3, a5, 353f
                  ori          s7, a4, 611
347:              sltiu        t2, a1, -132
                  or           s5, s3, s3
                  srai         s6, sp, 7
350:              beq          t0, t5, 356f
351:              slt          t0, s7, t2
                  add          a2, t5, s0
353:              sll          s1, t3, gp
                  slti         a3, s6, -930
355:              bne          a4, zero, 369f
356:              auipc        s0, 385277
357:              and          t3, a6, t5
                  andi         s2, s2, 1124
                  slli         t0, t0, 28
                  bge          s11, t2, 367f
                  andi         t5, a7, -603
                  bgeu         s6, a6, 366f
                  addi         t2, a5, 222
                  nop
                  bge          s6, s5, 367f
366:              slli         s4, a7, 5
367:              slli         s2, t5, 23
                  xor          s6, s7, s1
369:              srli         zero, s10, 22
                  lui          s6, 599724
                  bgeu         s4, a2, 387f
                  xor          s8, a3, gp
                  slt          zero, s7, t6
                  lui          t4, 833703
                  bne          a5, a3, 379f
                  srai         s5, s2, 3
                  sll          ra, s2, s1
                  sra          a5, ra, a2
379:              bltu         a6, s4, 380f
380:              addi         s4, a0, 1002
                  ori          zero, s8, -164
                  auipc        s4, 197697
                  bgeu         a2, a4, 398f
                  slt          a4, gp, s2
                  sll          ra, a1, t4
                  sub          a4, s8, t6
387:              slli         s2, t0, 8
                  xori         s1, s4, -1240
                  andi         gp, ra, 893
                  srli         t5, ra, 18
                  xori         s8, t5, 1961
                  xor          t6, sp, s4
                  nop
                  and          s4, a7, s2
                  bge          a7, tp, 411f
                  ori          zero, t0, -1857
                  sub          s9, s7, s6
398:              and          a6, s6, a3
                  xor          t2, gp, s6
                  bltu         a7, s3, 419f
                  and          s6, t3, s11
                  srai         t0, t4, 14
                  add          t2, a1, zero
                  lui          t2, 515792
                  sll          t1, a6, s7
                  slt          s9, t3, a4
                  sltu         a1, a7, a5
                  beq          gp, s10, 426f
                  srai         s9, a3, 7
                  sltu         t5, a2, t4
411:              sltu         t1, a0, a7
                  ori          s7, s7, -69
                  sltiu        s1, ra, 814
                  sltiu        s11, t3, 911
                  and          zero, s5, a5
                  beq          t1, t4, 436f
                  bltu         s6, t0, 432f
                  add          s0, t6, t5
419:              slt          a2, t6, a2
                  lui          t2, 950085
                  auipc        t6, 213550
                  sll          a3, a2, s1
                  sltiu        s8, s2, -686
                  bne          a5, a7, 444f
                  nop
426:              bltu         s5, sp, 441f
                  addi         s7, t4, -1333
                  blt          s8, s1, 447f
                  sub          s1, a4, a0
                  addi         s3, s10, 16
                  xori         s9, gp, 1616
432:              srl          s5, t2, tp
                  sltu         s9, t3, s11
                  or           a5, t6, s9
                  blt          gp, t0, 442f
436:              bgeu         t6, zero, 451f
                  sltu         a0, s2, s3
                  sltiu        ra, s3, 710
                  slti         t1, ra, -1713
                  lui          s5, 64491
441:              bltu         s2, a1, 456f
442:              srli         t5, a1, 27
                  sltiu        s2, s7, -826
444:              sub          zero, s6, a1
                  lui          gp, 834877
                  sltiu        t0, s0, 847
447:              sll          t6, s0, s4
                  srli         zero, a3, 17
                  beq          t3, t2, 456f
                  sra          s1, ra, s5
451:              bge          a7, s4, 469f
                  or           a4, sp, a3
                  lui          s8, 340720
                  slti         s1, a2, 868
                  ori          a2, gp, 694
456:              beq          t4, a0, 472f
                  andi         s11, s5, 451
                  xor          a1, a7, s4
                  add          s0, a1, t0
                  slt          a2, s4, tp
                  slt          s0, a5, a7
                  and          s2, s6, sp
                  sra          sp, a2, t2
                  slli         t5, a7, 31
                  blt          s7, t4, 482f
                  bne          a1, sp, 467f
467:              slti         a1, s4, -1268
                  srli         t0, t6, 11
469:              slti         ra, zero, -1894
                  sltu         s9, s0, a6
                  bltu         s4, a5, 477f
472:              bge          a4, a6, 487f
                  andi         t0, t1, -204
main_8:           jal          sp, 22f
0:                jal          t1, 20f
1:                jal          ra, 5f
2:                jal          t1, 19f
3:                jal          t1, 6f
4:                jal          ra, 18f
5:                jal          ra, 21f
6:                jal          ra, 14f
7:                jal          t2, 12f
8:                jal          ra, 24f
9:                jal          sp, 15f
10:               jal          ra, 23f
11:               jal          ra, 2b
12:               jal          sp, 4b
13:               jal          ra, 3b
14:               jal          ra, 0b
15:               jal          a1, 13b
16:               jal          s2, 11b
17:               jal          ra, 8b
18:               jal          ra, 17b
19:               jal          t1, 10b
20:               jal          ra, 7b
21:               jal          t1, 16b
22:               jal          ra, 1b
23:               jal          t1, 9b
24:               andi         a2, t0, -26
                  sll          a1, a2, t0
                  auipc        s1, 809622
                  sltiu        a0, t2, 1745
477:              nop
                  sll          a6, a6, a4
                  add          s2, s0, s0
                  bge          t3, t3, 498f
                  addi         a6, t6, -2028
482:              blt          a0, s5, 492f
                  sltiu        t3, a2, 1577
                  slti         a5, s2, 156
                  auipc        s11, 157539
                  slt          a0, a0, s8
487:              addi         a5, s0, -917
                  addi         a6, t1, -1255
                  auipc        a3, 347198
                  addi         a0, zero, -1565
                  bge          s7, t3, 505f
492:              bltu         a7, t5, 494f
                  and          a6, s0, s8
494:              bltu         t1, a6, 496f
                  addi         t2, a5, 1212
496:              slli         a4, a5, 3
                  or           s5, t6, a6
                  auipc        s6, 859697
                  slli         s8, s6, 0
                  la           sp, sub_1
                  auipc        t2, 245378
                  srli         a6, a1, 31
                  xori         a4, a6, -623
                  addi         sp, sp, 368
                  sub          zero, a1, t4
                  sltu         a1, s0, s1
main_j2:          jalr         sp, sp, -368 #jump main -> sub_1
                  nop
498:              lui          a2, 197782
                  bge          ra, a3, 519f
                  slli         s4, t6, 1
                  xor          a6, t1, s7
                  addi         s8, s3, -663
                  lui          a5, 23996
                  beq          ra, s10, 519f
505:              beq          s8, t2, 521f
                  beq          s2, tp, 510f
                  sltiu        s5, tp, -1394
                  sltiu        t4, a4, 269
                  auipc        a6, 355245
510:              beq          s11, a3, 512f
                  bltu         s10, s0, 523f
512:              add          a2, s6, t1
                  andi         t2, ra, 942
                  sll          t6, a7, a2
                  srl          a0, s11, t5
                  nop
                  andi         s6, zero, 1439
                  and          s11, a3, a5
519:              auipc        a0, 1007269
                  sll          s11, s7, s2
521:              bltu         a6, tp, 536f
                  or           s4, s5, s1
523:              sltu         t5, t0, s10
                  bgeu         s7, s11, 528f
                  bltu         s5, a3, 533f
                  slli         s9, s0, 21
                  lui          s4, 46909
528:              xor          zero, s9, t6
                  addi         s9, s5, 746
                  bltu         tp, a1, 534f
                  bgeu         s7, a6, 532f
532:              or           s3, ra, a7
533:              sra          s5, gp, s2
534:              slti         s5, ra, 488
                  srli         s1, a5, 24
536:              xor          s1, s1, s0
                  nop
                  sll          t2, t5, s3
                  lui          t2, 374173
                  srl          gp, s8, s9
                  sub          a1, s1, a6
                  addi         t3, a3, 834
                  ori          t6, s3, 407
                  srai         gp, a0, 4
                  sub          t6, a6, s8
                  andi         gp, zero, -169
                  lui          s11, 731916
                  sltu         a1, a5, s10
                  sltiu        s11, ra, -515
                  slli         t1, a3, 7
                  sltu         s3, t4, a3
                  or           t6, s3, s8
                  slli         t5, t1, 2
                  bltu         a7, s6, 569f
                  slt          a1, ra, ra
                  sltu         s1, s7, a5
                  bge          t4, tp, 577f
                  blt          a6, ra, 578f
                  lui          s9, 1037381
                  or           s2, a4, s5
                  and          s1, a4, s8
                  slli         t1, a5, 19
                  sltiu        a6, t4, -1786
                  bgeu         s3, t5, 584f
                  sll          a0, t0, a1
                  sltiu        zero, zero, -1723
                  blt          s2, a5, 583f
                  slt          s6, t5, tp
569:              ori          t0, tp, -1287
                  sltu         a2, t6, zero
                  nop
                  addi         s8, s6, 1979
                  or           zero, t5, t4
                  slli         s0, s6, 14
                  andi         a6, tp, -992
                  xori         sp, sp, -708
577:              or           s9, s10, t2
578:              bltu         s5, s5, 598f
                  slti         t3, t5, 853
                  or           a5, zero, s8
                  slt          a5, s0, s6
                  add          a4, s7, t0
583:              and          s4, t0, s3
584:              ori          s8, tp, 526
                  bge          gp, a5, 586f
586:              blt          t2, t4, 602f
                  slli         a2, s9, 12
                  andi         zero, s6, -1731
                  beq          s1, zero, 604f
                  andi         s11, a1, -888
                  sll          t0, t4, t4
                  nop
                  nop
                  ori          s7, s5, -1309
                  sltu         s2, t6, sp
                  slti         s2, tp, -1663
                  slti         a6, a7, 900
598:              xor          s1, t5, s4
                  srl          a3, t6, s2
                  srli         s4, s7, 0
                  or           a3, a3, t4
602:              sll          a3, a2, s0
                  add          a3, a3, s2
604:              sltu         s5, s4, t6
                  nop
                  nop
                  srli         t2, s9, 25
                  slt          s7, a6, s3
                  sltiu        t2, s6, 1288
                  addi         t2, a2, 1029
                  blt          t4, a3, 615f
                  andi         zero, ra, -1318
                  srai         a6, t0, 18
                  sub          ra, zero, t1
615:              slli         t3, t1, 29
                  sll          s9, s7, sp
                  bltu         a1, s9, 635f
                  sra          t5, t2, s11
                  slt          s9, s8, t5
                  sltiu        s0, s4, 480
                  andi         a0, t4, 1457
                  srli         a0, a7, 14
                  slt          a1, a3, a3
                  ori          s3, t5, 530
                  srli         s4, t3, 5
                  sltiu        t5, a7, 1426
                  auipc        s8, 358714
                  nop
                  sltiu        s3, s6, 1516
                  bltu         tp, s0, 637f
                  sub          s2, a5, s6
                  sltiu        s9, s1, -820
                  nop
                  addi         s8, t0, -8
635:              sra          t5, zero, s2
                  sra          ra, gp, a7
637:              sltu         a6, t1, a5
                  or           s6, s2, s6
                  or           s4, s6, t0
                  sub          gp, a2, s11
                  or           a0, t6, t0
                  auipc        t6, 580256
                  srai         a4, s3, 1
                  slti         sp, a1, 1505
                  auipc        t0, 652398
                  andi         t5, s6, -1538
                  and          s11, s6, s2
                  blt          s8, t6, 663f
                  bltu         a5, a6, 653f
                  auipc        t2, 137129
                  andi         s3, s2, -1527
                  bgeu         s5, a4, 669f
653:              or           s6, a5, s8
                  xori         t5, sp, 1032
                  sltiu        t2, a3, 1544
                  auipc        s6, 191450
                  xor          a2, s8, a2
                  auipc        t4, 874732
                  sub          s7, gp, t3
                  slti         a4, s11, -1999
                  beq          s1, s9, 676f
                  and          sp, a4, s3
663:              slt          a6, a7, s5
                  sra          s7, a2, s8
                  and          t0, t1, a1
                  andi         s3, s5, 1895
                  bltu         a7, sp, 669f
                  lui          s7, 91949
669:              xor          s3, s2, s8
                  andi         a1, a1, -1798
                  andi         t0, sp, 533
                  xori         a6, t4, -550
                  add          t4, t2, t6
                  ori          a3, s2, -81
                  sltiu        s1, t0, 1787
676:              sltu         t4, s9, t6
                  blt          t4, s7, 692f
                  bgeu         a2, s7, 696f
                  auipc        zero, 305289
                  srli         s6, t2, 18
                  blt          s10, a5, 689f
                  bgeu         t4, s6, 702f
                  srli         a1, a2, 1
                  sltu         s9, zero, a7
                  sra          a6, s8, s5
                  auipc        s8, 664280
                  sll          s9, a5, sp
                  addi         a0, a5, -931
689:              sltiu        s6, t6, 193
                  slt          t0, s11, t5
                  blt          s6, s3, 693f
692:              srli         s0, a0, 9
693:              xor          s5, s9, tp
                  sub          ra, a3, t5
                  sll          t6, zero, a1
696:              add          t0, t6, a6
                  xori         t5, a4, -1783
                  sltiu        a2, t3, -1500
                  srli         s2, zero, 6
                  or           a2, t2, s8
main_15:          jal          sp, 9f
0:                jal          ra, 10f
1:                jal          t1, 8f
2:                jal          ra, 5f
3:                jal          t1, 4f
4:                jal          t0, 1b
5:                jal          t1, 6f
6:                jal          gp, 0b
7:                jal          ra, 3b
8:                jal          t0, 2b
9:                jal          t1, 7b
10:               xori         t6, s7, -1957
                  sub          a2, s0, tp
702:              bgeu         t1, a1, 717f
                  blt          s6, s5, 704f
704:              srl          t5, s10, s4
                  nop
                  sltiu        s3, t6, -667
                  slt          s5, s2, s7
                  xori         s5, t0, -36
                  add          ra, a1, s1
                  ori          gp, t2, -685
                  blt          t4, a2, 715f
                  bne          s9, t5, 718f
                  or           s11, a2, s8
                  auipc        ra, 1018007
715:              slt          a5, a2, s8
                  blt          s9, s0, 718f
717:              blt          t3, a5, 724f
718:              srl          s2, s2, a1
                  lui          s8, 96952
                  nop
                  beq          t0, s9, 733f
                  and          a3, s9, a0
                  and          s6, tp, a6
724:              xori         gp, gp, -1773
                  andi         s0, zero, 857
                  bgeu         s0, s5, 741f
                  beq          tp, s7, 737f
                  sltu         ra, t6, a3
                  srl          a4, a0, t1
                  beq          t0, s0, 744f
                  srli         s7, s10, 11
                  auipc        a0, 897078
733:              srli         sp, sp, 14
                  slti         a5, s0, 780
                  auipc        t1, 674172
                  add          a2, tp, s7
737:              bgeu         tp, s11, 756f
                  and          s5, s9, t2
                  slt          sp, t2, a0
                  sra          s11, a5, ra
741:              bltu         t1, a7, 751f
                  sll          s6, gp, t3
                  srli         s3, s7, 4
744:              lui          s0, 379742
                  auipc        t3, 345986
                  bne          s11, t0, 766f
                  sll          s7, t1, s0
                  lui          s5, 597583
                  nop
                  sltu         s1, s3, ra
751:              bge          a0, t2, 766f
                  srl          t6, a5, t1
                  sltiu        s9, s2, -516
                  slti         a2, s9, 685
                  slti         a0, a4, 1137
756:              blt          t6, gp, 770f
                  bgeu         sp, sp, 777f
                  xori         s5, s8, -246
                  bge          t2, s3, 776f
                  slli         a6, s8, 13
                  sub          s0, s6, s1
                  or           s4, s0, gp
                  blt          sp, a3, 779f
                  xor          t5, s7, s9
                  sra          s9, a3, ra
766:              sltu         a5, gp, s2
                  nop
                  sltiu        s5, t2, -725
                  lui          s7, 649895
770:              srai         a6, a3, 30
                  bge          a3, a0, 778f
                  add          s0, s8, s1
                  srl          s8, t6, s7
                  auipc        s1, 651865
                  slt          s3, s9, a1
776:              andi         t3, a5, 1523
777:              xori         s7, a1, -1189
778:              xori         t4, a7, -731
779:              add          a6, t5, t1
                  xori         a4, t4, -577
                  sll          s11, s4, zero
                  lui          a5, 199470
                  beq          sp, ra, 795f
                  and          a3, gp, a0
                  srli         s7, s1, 12
                  nop
                  srai         a2, a2, 0
                  sltu         s1, s6, a0
                  sltiu        a4, zero, -1118
                  lui          s2, 704526
                  nop
                  bltu         s6, t6, 793f
793:              and          a1, a7, s10
                  srl          t1, s6, s7
795:              add          sp, a0, s4
                  sub          t5, sp, t3
                  bne          a6, a7, 812f
                  addi         t6, s6, 473
                  blt          sp, a0, 814f
                  srai         s6, gp, 24
                  andi         a4, s3, 656
                  srl          sp, s7, t0
                  slti         sp, a0, -1221
                  sltiu        s3, s5, -1283
                  bgeu         s9, t6, 812f
                  and          s1, s0, s8
                  bge          gp, a7, 811f
                  addi         gp, a1, 656
                  lui          a4, 866719
                  sltiu        s1, s0, -912
811:              slli         s0, a2, 31
812:              bltu         a5, tp, 816f
                  slt          s11, ra, s8
814:              bltu         s4, s11, 815f
815:              bgeu         s7, s2, 819f
816:              bne          tp, t1, 831f
                  xor          t6, zero, s3
                  lui          s11, 143211
819:              ori          ra, ra, -1009
                  bne          s4, a3, 822f
                  addi         a5, a7, -194
822:              bne          a7, tp, 837f
                  sll          a1, a0, a3
                  beq          t0, a0, 832f
                  add          a2, t1, s7
                  and          gp, a6, a0
                  lui          ra, 450759
                  srl          s7, a4, s2
                  bgeu         a4, t3, 831f
                  auipc        sp, 315790
831:              lui          s6, 131078
832:              blt          s10, gp, 852f
                  bge          zero, a1, 835f
                  lui          sp, 27089
835:              bne          a5, s3, 853f
                  add          s11, s2, gp
837:              slti         t5, a4, 1264
                  srli         s7, s10, 14
                  beq          a7, a3, 857f
                  srl          s11, a3, s4
                  ori          s11, s3, 1274
                  xor          t4, ra, t0
                  beq          s4, a2, 859f
                  srli         s7, s10, 6
                  addi         s5, t3, 638
                  lui          s4, 505849
                  xori         sp, s2, -492
                  lui          zero, 872866
                  srl          s3, t6, a7
                  sra          s9, s1, t4
                  andi         s3, sp, 1900
852:              srl          t0, t4, s3
853:              sltu         a4, s4, t4
                  lui          a0, 941102
                  srl          a3, t2, s11
                  slt          t0, s4, s1
857:              beq          a1, zero, 876f
                  xori         s7, t0, 1561
859:              bgeu         a0, s2, 874f
                  nop
                  xor          t0, s1, a5
                  sub          a5, sp, a7
                  slti         s6, tp, -1166
                  srli         a1, t6, 1
                  auipc        a5, 851989
                  sll          s0, s3, s7
                  srli         s9, t6, 6
                  sra          a3, s8, s9
                  blt          t2, s11, 875f
                  lui          sp, 191777
                  blt          sp, s7, 889f
                  srai         t6, a2, 6
                  or           a4, s8, s5
874:              sra          t2, s4, s1
875:              auipc        a6, 272160
876:              bne          a4, a1, 888f
                  addi         s8, s10, 578
                  sltiu        a6, a2, -1517
                  sltu         a5, s3, a3
                  xori         t4, s4, -1503
                  srai         s11, s9, 27
                  bge          a2, s5, 883f
883:              xor          s11, s6, a1
                  srai         t0, s6, 31
                  andi         t3, s3, -400
                  or           t3, a4, s5
                  bltu         a5, t3, 903f
888:              xori         s7, t5, -847
889:              sll          t0, s0, t6
                  xori         t5, sp, -1807
                  slli         s0, s11, 7
                  ori          t6, a4, 231
                  and          a1, a5, sp
                  nop
                  slti         a2, s3, 536
                  nop
                  srli         t5, s1, 27
                  sub          t3, t0, a5
                  xor          ra, s8, t5
                  lui          a4, 442702
                  slli         a1, t5, 11
                  xor          gp, s0, s4
903:              bgeu         a5, s6, 923f
                  add          s2, s11, s1
                  lui          s7, 654629
                  sll          a2, s2, t4
                  nop
                  blt          s1, s2, 926f
                  bge          t3, tp, 911f
                  bne          s8, s1, 917f
911:              xori         zero, t1, 888
                  xor          t1, a6, a6
                  xor          t2, a3, t0
                  bltu         s1, a2, 924f
                  slli         s7, t6, 12
                  add          sp, s7, s7
917:              slt          s5, s5, s3
                  nop
                  add          s9, s3, sp
                  bgeu         t0, tp, 922f
                  ori          a2, a2, 1459
922:              add          t1, s1, a2
923:              ori          s11, tp, -1605
924:              lui          s6, 939706
                  xor          s8, s6, s4
926:              sll          s7, s8, a7
                  srl          a6, s11, t5
                  xori         t3, gp, 1531
                  slti         s4, a4, -727
                  or           s7, s7, t6
                  and          t2, a4, a2
                  slli         t2, s8, 0
                  and          s8, s10, sp
                  auipc        s0, 355683
                  lui          a5, 244982
                  auipc        t3, 671297
                  slli         s1, a4, 6
                  add          zero, s9, a0
                  ori          sp, a0, 1340
                  blt          a6, tp, 947f
                  slti         s8, s1, 505
                  xori         zero, s9, -1897
                  nop
                  xori         t3, t5, 170
                  auipc        s6, 113454
                  slli         s2, s0, 17
947:              sltu         a2, s5, t0
                  bne          a3, t3, 968f
                  auipc        s5, 387946
                  andi         a6, a4, -641
                  xori         a1, gp, 1031
                  ori          s1, a2, -667
                  sltiu        a0, a1, -1828
                  lui          sp, 405515
                  slli         t0, t3, 5
                  sltiu        t0, s2, 65
                  sltiu        s3, s10, 674
                  sltiu        a5, tp, 354
                  bne          s11, a0, 967f
                  blt          s1, a3, 975f
                  add          s8, gp, ra
                  srli         s0, a0, 21
                  bltu         sp, a0, 967f
                  auipc        s3, 213328
                  andi         s8, gp, 1593
                  bgeu         a3, t0, 985f
967:              slti         s0, s10, 1295
968:              nop
                  sltu         s6, s3, a6
                  and          a0, a7, s7
                  bne          t3, a0, 988f
                  srli         s9, s9, 1
                  slli         s5, a6, 30
                  auipc        ra, 971073
975:              srl          s3, tp, sp
                  sltiu        a1, t6, 1575
                  xori         t1, s7, -546
                  bge          s10, t2, 979f
979:              nop
                  bgeu         t6, t2, 986f
                  srli         t0, a6, 30
                  addi         s1, t6, 143
                  sra          s8, a7, t2
                  or           zero, s9, s6
985:              bgeu         sp, a0, 987f
986:              sub          a6, t1, ra
987:              add          t6, s3, a4
988:              sub          t1, gp, a6
                  beq          t3, s7, 1009f
                  add          s9, s1, s9
                  slt          s7, s8, s5
                  srai         t3, s2, 4
                  la           s1, sub_2
                  add          t6, t1, a5
                  andi         a0, s9, 1811
                  xor          s0, s3, a5
                  addi         a1, s0, 1387
                  addi         s1, s1, 309
                  bgeu         s1, zero, main_j1 #branch to jump instr
                  slti         s4, a3, -509
main_j1:          jalr         sp, s1, -308 #jump main -> sub_2
                  blt          s9, s0, 1007f
                  bgeu         a5, gp, 997f
                  slt          zero, s1, a2
                  slli         a6, a3, 26
                  bge          a4, s3, 1011f
997:              sub          s1, s5, t1
                  blt          a5, t2, 1013f
                  sltu         a4, s2, a4
                  srai         t0, ra, 26
                  blt          ra, t4, 1017f
                  sll          t0, s2, s9
                  srai         a2, s3, 29
                  auipc        t3, 470145
                  sltu         a5, a4, s4
                  slli         s4, gp, 31
1007:             andi         s11, s11, -288
                  slt          a0, s9, t2
1009:             auipc        gp, 583423
                  or           a6, sp, t0
1011:             srli         t0, a7, 14
                  sra          s4, t4, a0
1013:             sltu         t2, s10, t0
                  slli         s3, s8, 10
                  andi         t2, s4, 809
                  xor          s1, s10, a7
1017:             slli         s3, a4, 3
                  sra          gp, a1, s8
                  and          s4, zero, s11
                  bgeu         t0, a6, 1034f
                  addi         ra, t0, 1389
                  slt          s8, t1, a7
                  xor          zero, a0, s0
                  and          ra, a4, s9
                  slti         a0, s5, 1339
                  srai         s11, t2, 27
                  bge          t3, tp, 1042f
                  slt          a4, s0, s3
                  ori          s2, s10, 802
                  slli         zero, s9, 0
                  srai         s11, a6, 22
                  slt          s6, s6, zero
                  ori          gp, t5, 708
1034:             slli         a3, s8, 28
                  sra          t4, s7, a6
                  blt          s2, sp, 1040f
                  sltu         t5, s8, t3
                  xor          gp, s0, a0
                  slti         t2, s1, 1863
1040:             or           t4, t5, s10
                  nop
1042:             and          s1, s5, s5
                  andi         s9, s8, -1789
                  lui          a1, 1042020
                  blt          s7, s2, 1060f
                  slti         a1, gp, -1258
                  srai         gp, a1, 5
                  nop
                  beq          s9, t0, 1065f
                  bltu         s8, t0, 1067f
                  nop
                  xori         a6, s10, -1359
                  or           s4, s11, s4
                  bltu         t5, s5, 1069f
                  slti         s11, a7, 530
                  ori          t3, tp, -332
                  srli         a2, t2, 20
                  addi         t3, a0, 1145
                  sub          a3, s10, t6
1060:             lui          s0, 445308
                  sltu         s8, t6, s10
                  sra          s6, s1, s8
                  andi         s2, a4, 301
                  xori         s2, s7, -109
1065:             xor          t6, t0, s3
                  and          s8, a5, s9
1067:             blt          t4, s2, 1087f
                  beq          t0, s4, 1078f
1069:             addi         t3, a5, 856
                  lui          t1, 122753
                  bgeu         a0, s2, 1091f
                  bltu         a0, t4, 1091f
                  andi         s0, t4, -49
                  sra          t3, t1, a5
                  sub          a4, s3, a1
                  xori         ra, a5, 1416
                  sra          zero, a5, a7
1078:             slt          t6, t4, s7
                  slli         a0, a0, 2
                  srli         s5, zero, 5
                  nop
                  sltu         ra, a4, t0
                  xor          t4, a5, tp
                  sra          t6, s7, a1
                  sll          t6, s9, t2
                  andi         sp, s11, 431
1087:             srl          a5, a6, s5
                  srai         t1, s6, 0
                  sra          s11, zero, zero
main_2:           jal          sp, 9f
0:                jal          s1, 10f
1:                jal          t2, 7f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          s5, 11f
5:                jal          t0, 2b
6:                jal          ra, 1b
7:                jal          ra, 4b
8:                jal          ra, 6b
9:                jal          t0, 8b
10:               jal          t6, 13f
11:               jal          ra, 5b
12:               jal          a0, 0b
13:               jal          s11, 14f
14:               sub          t4, s2, a0
                  bltu         s0, t3, 1108f
1091:             blt          gp, t6, 1105f
                  slti         a6, gp, -2015
                  ori          t0, t0, -518
                  nop
                  xori         a5, s0, 1675
                  slli         s7, a7, 30
                  bgeu         s5, a2, 1098f
1098:             sra          a1, tp, t3
                  srl          a1, s8, s11
                  and          s9, a2, ra
                  xor          s3, t3, t1
                  auipc        t1, 497741
                  sltu         s0, s5, t4
                  sub          s9, s4, t0
1105:             xor          s6, s4, s4
                  sltu         ra, s11, a6
                  addi         t0, s6, -923
1108:             srai         s2, a5, 12
                  sub          a6, gp, s2
                  andi         t6, s10, -864
                  and          s11, a2, s4
                  sub          s8, tp, s1
                  srli         s9, a7, 24
                  bne          s7, t5, 1117f
                  bltu         tp, t0, 1117f
                  auipc        t2, 792145
1117:             srli         s8, s6, 24
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            xori         s2, t1, 163
                  bgeu         t4, t3, sub_4_stack_p
                  and          gp, a1, t0
                  srli         s7, s3, 30
                  sub          s5, a0, t0
sub_4_stack_p:    addi         tp, tp, -8
                  sw           sp, 4(tp)
                  or           t3, t0, t1
                  auipc        a5, 843074
sub_4_23:         jal          sp, 7f
0:                jal          t1, 23f
1:                jal          ra, 9f
2:                jal          t1, 21f
3:                jal          ra, 17f
4:                jal          ra, 3b
5:                jal          ra, 11f
6:                jal          ra, 27f
7:                jal          ra, 0b
8:                jal          t4, 1b
9:                jal          ra, 20f
10:               jal          ra, 14f
11:               jal          t6, 22f
12:               jal          t3, 10b
13:               jal          t1, 4b
14:               jal          a5, 13b
15:               jal          ra, 24f
16:               jal          t1, 12b
17:               jal          a5, 15b
18:               jal          ra, 5b
19:               jal          ra, 26f
20:               jal          ra, 19b
21:               jal          t1, 8b
22:               jal          t1, 6b
23:               jal          ra, 16b
24:               jal          a5, 2b
25:               jal          ra, 18b
26:               jal          t1, 25b
27:               sltu         s2, s11, t4
sub_4_1:          jal          sp, 28f
0:                jal          ra, 17f
1:                jal          t0, 19f
2:                jal          ra, 7f
3:                jal          t1, 13f
4:                jal          s9, 29f
5:                jal          t1, 2b
6:                jal          s9, 3b
7:                jal          t1, 15f
8:                jal          ra, 25f
9:                jal          ra, 12f
10:               jal          t1, 18f
11:               jal          t1, 14f
12:               jal          ra, 22f
13:               jal          ra, 5b
14:               jal          gp, 21f
15:               jal          t1, 4b
16:               jal          ra, 1b
17:               jal          gp, 11b
18:               jal          t1, 20f
19:               jal          ra, 27f
20:               jal          ra, 0b
21:               jal          ra, 8b
22:               jal          t3, 23f
23:               jal          s9, 6b
24:               jal          t1, 9b
25:               jal          ra, 24b
26:               jal          t1, 10b
27:               jal          ra, 26b
28:               jal          ra, 16b
29:               xor          t1, s1, s7
sub_4_9:          jal          sp, 16f
0:                jal          sp, 5f
1:                jal          ra, 11f
2:                jal          s8, 12f
3:                jal          s4, 0b
4:                jal          t1, 3b
5:                jal          ra, 6f
6:                jal          a0, 10f
7:                jal          s5, 17f
8:                jal          ra, 2b
9:                jal          s4, 14f
10:               jal          ra, 15f
11:               jal          ra, 4b
12:               jal          a6, 7b
13:               jal          s1, 8b
14:               jal          t0, 1b
15:               jal          gp, 13b
16:               jal          ra, 9b
17:               jal          s9, 18f
18:               lui          t5, 769632
sub_4_14:         jal          sp, 1f
0:                jal          ra, 3f
1:                jal          a0, 10f
2:                jal          gp, 14f
3:                jal          gp, 2b
4:                jal          sp, 8f
5:                jal          gp, 6f
6:                jal          ra, 17f
7:                jal          t1, 11f
8:                jal          t1, 5b
9:                jal          ra, 13f
10:               jal          ra, 12f
11:               jal          t1, 16f
12:               jal          t6, 20f
13:               jal          ra, 19f
14:               jal          ra, 15f
15:               jal          t1, 18f
16:               jal          ra, 0b
17:               jal          t1, 9b
18:               jal          s1, 4b
19:               jal          ra, 21f
20:               jal          t1, 7b
21:               xor          a4, s2, t1
sub_4_7:          jal          sp, 6f
0:                jal          t1, 7f
1:                jal          t1, 15f
2:                jal          sp, 14f
3:                jal          ra, 13f
4:                jal          t1, 8f
5:                jal          ra, 9f
6:                jal          ra, 11f
7:                jal          t1, 4b
8:                jal          t1, 17f
9:                jal          ra, 0b
10:               jal          ra, 12f
11:               jal          ra, 3b
12:               jal          t1, 16f
13:               jal          a5, 1b
14:               jal          ra, 5b
15:               jal          ra, 10b
16:               jal          ra, 2b
17:               ori          s8, a4, 516
sub_4_2:          jal          sp, 5f
0:                jal          ra, 22f
1:                jal          t1, 13f
2:                jal          t1, 3f
3:                jal          ra, 15f
4:                jal          ra, 27f
5:                jal          ra, 0b
6:                jal          s8, 11f
7:                jal          ra, 10f
8:                jal          ra, 14f
9:                jal          t0, 24f
10:               jal          ra, 12f
11:               jal          a1, 20f
12:               jal          ra, 21f
13:               jal          t0, 16f
14:               jal          ra, 18f
15:               jal          s3, 25f
16:               jal          ra, 17f
17:               jal          ra, 26f
18:               jal          a2, 4b
19:               jal          ra, 1b
20:               jal          ra, 19b
21:               jal          t1, 2b
22:               jal          t5, 9b
23:               jal          t1, 6b
24:               jal          ra, 7b
25:               jal          sp, 23b
26:               jal          a6, 8b
27:               slt          a5, s1, t6
sub_4_15:         jal          sp, 9f
0:                jal          gp, 1f
1:                jal          t1, 22f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          ra, 27f
5:                jal          t0, 18f
6:                jal          ra, 2b
7:                jal          ra, 13f
8:                jal          ra, 6b
9:                jal          ra, 28f
10:               jal          ra, 3b
11:               jal          ra, 14f
12:               jal          ra, 5b
13:               jal          ra, 20f
14:               jal          a3, 17f
15:               jal          t0, 10b
16:               jal          ra, 24f
17:               jal          ra, 21f
18:               jal          a5, 29f
19:               jal          ra, 16b
20:               jal          ra, 11b
21:               jal          ra, 26f
22:               jal          ra, 15b
23:               jal          ra, 8b
24:               jal          ra, 23b
25:               jal          t1, 19b
26:               jal          ra, 12b
27:               jal          ra, 30f
28:               jal          ra, 25b
29:               jal          ra, 4b
30:               lui          a0, 227914
sub_4_25:         jal          sp, 9f
0:                jal          s5, 1f
1:                jal          t0, 10f
2:                jal          a2, 14f
3:                jal          t2, 7f
4:                jal          ra, 2b
5:                jal          t1, 0b
6:                jal          gp, 4b
7:                jal          t0, 8f
8:                jal          s5, 5b
9:                jal          s0, 3b
10:               jal          t1, 6b
11:               jal          ra, 12f
12:               jal          t5, 13f
13:               jal          a0, 15f
14:               jal          ra, 11b
15:               xor          t0, s7, s9
sub_4_26:         jal          sp, 4f
0:                jal          t1, 6f
1:                jal          t1, 8f
2:                jal          ra, 11f
3:                jal          s0, 2b
4:                jal          s6, 5f
5:                jal          ra, 1b
6:                jal          s4, 12f
7:                jal          ra, 3b
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          gp, 0b
11:               jal          s3, 10b
12:               addi         a1, s7, 1919
sub_4_28:         jal          sp, 18f
0:                jal          sp, 6f
1:                jal          ra, 17f
2:                jal          ra, 9f
3:                jal          t1, 15f
4:                jal          t1, 3b
5:                jal          t1, 10f
6:                jal          ra, 20f
7:                jal          t6, 13f
8:                jal          ra, 4b
9:                jal          ra, 14f
10:               jal          ra, 11f
11:               jal          t1, 0b
12:               jal          ra, 5b
13:               jal          ra, 2b
14:               jal          ra, 16f
15:               jal          t4, 1b
16:               jal          s9, 19f
17:               jal          ra, 7b
18:               jal          t3, 8b
19:               jal          t1, 12b
20:               auipc        t4, 771067
sub_4_12:         jal          sp, 1f
0:                jal          a3, 4f
1:                jal          t3, 8f
2:                jal          s8, 0b
3:                jal          ra, 2b
4:                jal          ra, 9f
5:                jal          t3, 10f
6:                jal          t0, 3b
7:                jal          gp, 6b
8:                jal          s11, 7b
9:                jal          t6, 5b
10:               andi         t3, ra, -380
sub_4_10:         jal          sp, 0f
0:                jal          t0, 10f
1:                jal          s4, 15f
2:                jal          ra, 12f
3:                jal          t1, 4f
4:                jal          ra, 20f
5:                jal          t1, 7f
6:                jal          ra, 8f
7:                jal          ra, 26f
8:                jal          ra, 11f
9:                jal          ra, 3b
10:               jal          ra, 21f
11:               jal          ra, 19f
12:               jal          ra, 1b
13:               jal          ra, 9b
14:               jal          ra, 17f
15:               jal          t1, 22f
16:               jal          t1, 18f
17:               jal          ra, 16b
18:               jal          ra, 25f
19:               jal          ra, 13b
20:               jal          ra, 27f
21:               jal          ra, 14b
22:               jal          ra, 5b
23:               jal          s5, 24f
24:               jal          t1, 2b
25:               jal          ra, 23b
26:               jal          a4, 6b
27:               sltu         s8, t4, tp
sub_4_16:         jal          sp, 1f
0:                jal          ra, 8f
1:                jal          ra, 9f
2:                jal          t1, 12f
3:                jal          ra, 6f
4:                jal          t5, 7f
5:                jal          s11, 0b
6:                jal          sp, 13f
7:                jal          ra, 3b
8:                jal          t1, 4b
9:                jal          ra, 10f
10:               jal          t1, 11f
11:               jal          t1, 5b
12:               jal          ra, 14f
13:               jal          t1, 2b
14:               sltu         s7, zero, s2
sub_4_17:         jal          sp, 4f
0:                jal          t1, 21f
1:                jal          ra, 5f
2:                jal          ra, 14f
3:                jal          t3, 16f
4:                jal          t1, 20f
5:                jal          t1, 6f
6:                jal          a2, 13f
7:                jal          t6, 11f
8:                jal          s4, 7b
9:                jal          gp, 17f
10:               jal          t5, 2b
11:               jal          t1, 18f
12:               jal          t1, 0b
13:               jal          ra, 8b
14:               jal          t0, 1b
15:               jal          ra, 24f
16:               jal          a4, 23f
17:               jal          ra, 10b
18:               jal          ra, 19f
19:               jal          ra, 12b
20:               jal          ra, 9b
21:               jal          s9, 15b
22:               jal          sp, 25f
23:               jal          ra, 22b
24:               jal          s4, 3b
25:               slt          t3, s7, s0
sub_4_4:          jal          sp, 8f
0:                jal          t1, 1f
1:                jal          ra, 13f
2:                jal          gp, 17f
3:                jal          gp, 15f
4:                jal          ra, 14f
5:                jal          s8, 2b
6:                jal          t1, 11f
7:                jal          ra, 12f
8:                jal          s6, 10f
9:                jal          t1, 6b
10:               jal          ra, 7b
11:               jal          ra, 16f
12:               jal          t1, 5b
13:               jal          ra, 4b
14:               jal          ra, 3b
15:               jal          ra, 9b
16:               jal          ra, 18f
17:               jal          t5, 0b
18:               nop
sub_4_6:          jal          sp, 10f
0:                jal          ra, 17f
1:                jal          ra, 3f
2:                jal          ra, 12f
3:                jal          s6, 15f
4:                jal          sp, 19f
5:                jal          gp, 7f
6:                jal          ra, 9f
7:                jal          ra, 2b
8:                jal          s4, 16f
9:                jal          ra, 1b
10:               jal          t5, 14f
11:               jal          s8, 6b
12:               jal          ra, 11b
13:               jal          s0, 5b
14:               jal          t1, 8b
15:               jal          t1, 18f
16:               jal          ra, 13b
17:               jal          s0, 4b
18:               jal          t1, 0b
19:               andi         s4, t3, 490
sub_4_27:         jal          sp, 7f
0:                jal          t1, 1f
1:                jal          ra, 2f
2:                jal          t2, 4f
3:                jal          ra, 14f
4:                jal          ra, 5f
5:                jal          s4, 8f
6:                jal          ra, 3b
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          a5, 13f
10:               jal          ra, 0b
11:               jal          ra, 15f
12:               jal          t1, 9b
13:               jal          ra, 11b
14:               jal          s2, 12b
15:               sll          s3, a1, a5
sub_4_0:          jal          sp, 3f
0:                jal          ra, 14f
1:                jal          sp, 9f
2:                jal          t0, 6f
3:                jal          ra, 7f
4:                jal          ra, 0b
5:                jal          ra, 4b
6:                jal          a2, 8f
7:                jal          t1, 16f
8:                jal          ra, 1b
9:                jal          s2, 15f
10:               jal          ra, 17f
11:               jal          t1, 10b
12:               jal          a0, 19f
13:               jal          ra, 5b
14:               jal          ra, 18f
15:               jal          t2, 11b
16:               jal          t1, 2b
17:               jal          t1, 13b
18:               jal          ra, 12b
19:               xor          a6, s11, a7
sub_4_21:         jal          sp, 15f
0:                jal          ra, 2f
1:                jal          sp, 17f
2:                jal          ra, 3f
3:                jal          s0, 21f
4:                jal          ra, 10f
5:                jal          s6, 9f
6:                jal          ra, 11f
7:                jal          t1, 14f
8:                jal          ra, 5b
9:                jal          ra, 13f
10:               jal          s9, 8b
11:               jal          ra, 19f
12:               jal          t1, 7b
13:               jal          ra, 1b
14:               jal          ra, 23f
15:               jal          t5, 0b
16:               jal          ra, 4b
17:               jal          gp, 22f
18:               jal          ra, 20f
19:               jal          t1, 12b
20:               jal          t1, 16b
21:               jal          ra, 6b
22:               jal          ra, 24f
23:               jal          ra, 18b
24:               and          t0, sp, ra
sub_4_11:         jal          sp, 17f
0:                jal          t1, 27f
1:                jal          ra, 18f
2:                jal          ra, 5f
3:                jal          t1, 16f
4:                jal          ra, 29f
5:                jal          ra, 12f
6:                jal          t1, 20f
7:                jal          t1, 4b
8:                jal          s7, 3b
9:                jal          t1, 14f
10:               jal          ra, 11f
11:               jal          ra, 22f
12:               jal          t1, 28f
13:               jal          t1, 0b
14:               jal          ra, 26f
15:               jal          gp, 8b
16:               jal          ra, 2b
17:               jal          ra, 15b
18:               jal          gp, 23f
19:               jal          ra, 25f
20:               jal          t1, 13b
21:               jal          t1, 9b
22:               jal          ra, 6b
23:               jal          ra, 7b
24:               jal          ra, 21b
25:               jal          ra, 24b
26:               jal          ra, 1b
27:               jal          ra, 19b
28:               jal          s3, 10b
29:               addi         t0, s5, -1369
sub_4_29:         jal          sp, 14f
0:                jal          s7, 18f
1:                jal          t1, 16f
2:                jal          t0, 3f
3:                jal          ra, 0b
4:                jal          s9, 15f
5:                jal          ra, 9f
6:                jal          ra, 7f
7:                jal          ra, 22f
8:                jal          sp, 2b
9:                jal          ra, 8b
10:               jal          ra, 4b
11:               jal          a6, 19f
12:               jal          t0, 17f
13:               jal          ra, 23f
14:               jal          ra, 1b
15:               jal          ra, 25f
16:               jal          ra, 5b
17:               jal          ra, 24f
18:               jal          sp, 12b
19:               jal          ra, 13b
20:               jal          ra, 21f
21:               jal          ra, 10b
22:               jal          t5, 20b
23:               jal          ra, 6b
24:               jal          ra, 11b
25:               sltiu        a2, s5, 1737
sub_4_30:         jal          sp, 0f
0:                jal          ra, 13f
1:                jal          ra, 2f
2:                jal          ra, 12f
3:                jal          t1, 7f
4:                jal          gp, 23f
5:                jal          t1, 6f
6:                jal          ra, 16f
7:                jal          sp, 18f
8:                jal          t1, 1b
9:                jal          ra, 21f
10:               jal          a1, 19f
11:               jal          ra, 10b
12:               jal          ra, 5b
13:               jal          gp, 11b
14:               jal          t1, 15f
15:               jal          ra, 22f
16:               jal          ra, 17f
17:               jal          gp, 20f
18:               jal          s0, 14b
19:               jal          t1, 3b
20:               jal          ra, 9b
21:               jal          t1, 4b
22:               jal          ra, 8b
23:               auipc        s5, 471366
sub_4_5:          jal          sp, 18f
0:                jal          t0, 4f
1:                jal          ra, 15f
2:                jal          t5, 14f
3:                jal          ra, 13f
4:                jal          a5, 19f
5:                jal          s2, 9f
6:                jal          ra, 7f
7:                jal          t2, 5b
8:                jal          ra, 10f
9:                jal          ra, 11f
10:               jal          s5, 1b
11:               jal          ra, 12f
12:               jal          ra, 3b
13:               jal          ra, 8b
14:               jal          a5, 16f
15:               jal          ra, 17f
16:               jal          t1, 0b
17:               jal          ra, 2b
18:               jal          s3, 6b
19:               andi         t6, a7, -1073
sub_4_19:         jal          sp, 13f
0:                jal          ra, 20f
1:                jal          ra, 2f
2:                jal          sp, 10f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          t1, 7f
6:                jal          ra, 16f
7:                jal          ra, 11f
8:                jal          t1, 4b
9:                jal          ra, 14f
10:               jal          ra, 9b
11:               jal          ra, 15f
12:               jal          ra, 1b
13:               jal          ra, 12b
14:               jal          ra, 17f
15:               jal          ra, 19f
16:               jal          ra, 18f
17:               jal          ra, 8b
18:               jal          t1, 3b
19:               jal          ra, 6b
20:               sltiu        sp, t1, 1112
sub_4_32:         jal          sp, 0f
0:                jal          sp, 2f
1:                jal          t1, 10f
2:                jal          t1, 5f
3:                jal          ra, 9f
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          t1, 3b
7:                jal          ra, 8f
8:                jal          ra, 1b
9:                jal          t1, 4b
10:               srai         a3, a7, 24
sub_4_20:         jal          sp, 2f
0:                jal          ra, 14f
1:                jal          t1, 11f
2:                jal          t0, 1b
3:                jal          ra, 6f
4:                jal          ra, 13f
5:                jal          ra, 9f
6:                jal          gp, 4b
7:                jal          ra, 8f
8:                jal          ra, 5b
9:                jal          ra, 0b
10:               jal          ra, 7b
11:               jal          ra, 12f
12:               jal          t0, 3b
13:               jal          ra, 10b
14:               slti         t5, t0, 1694
sub_4_3:          jal          sp, 14f
0:                jal          ra, 10f
1:                jal          t1, 0b
2:                jal          ra, 5f
3:                jal          t0, 16f
4:                jal          ra, 6f
5:                jal          s0, 4b
6:                jal          sp, 1b
7:                jal          t1, 12f
8:                jal          a2, 15f
9:                jal          ra, 7b
10:               jal          t2, 17f
11:               jal          ra, 2b
12:               jal          t0, 8b
13:               jal          t1, 11b
14:               jal          ra, 9b
15:               jal          ra, 3b
16:               jal          t0, 13b
17:               auipc        t1, 935507
sub_4_13:         jal          sp, 2f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          t1, 0b
3:                jal          ra, 4f
4:                jal          ra, 10f
5:                jal          ra, 14f
6:                jal          t1, 8f
7:                jal          a2, 15f
8:                jal          t1, 12f
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               jal          ra, 7b
12:               jal          t1, 9b
13:               jal          ra, 3b
14:               jal          ra, 13b
15:               auipc        s8, 721817
sub_4_24:         jal          sp, 5f
0:                jal          gp, 22f
1:                jal          ra, 20f
2:                jal          s1, 14f
3:                jal          t1, 2b
4:                jal          ra, 7f
5:                jal          t1, 23f
6:                jal          t0, 9f
7:                jal          ra, 17f
8:                jal          ra, 10f
9:                jal          s9, 13f
10:               jal          t3, 21f
11:               jal          gp, 6b
12:               jal          ra, 24f
13:               jal          t1, 12b
14:               jal          s3, 15f
15:               jal          a6, 4b
16:               jal          s2, 11b
17:               jal          t5, 0b
18:               jal          a5, 1b
19:               jal          ra, 8b
20:               jal          t1, 3b
21:               jal          s6, 18b
22:               jal          t1, 16b
23:               jal          ra, 19b
24:               or           t4, t3, a2
                  beq          t1, s10, 11f
                  slti         s3, t6, 541
                  addi         t5, s0, 596
                  ori          s4, s1, -1151
                  auipc        s7, 809016
                  srl          s7, a4, a5
                  srl          t6, s8, a1
                  beq          s4, a5, 12f
                  srai         s5, a0, 31
                  srli         s9, a3, 23
                  nop
11:               sltiu        t2, s0, -874
12:               slti         sp, t4, 1406
                  auipc        a2, 45953
                  lui          s8, 440623
                  addi         ra, a2, -6
                  bltu         t4, s5, 32f
                  sll          gp, a1, sp
                  auipc        gp, 418801
                  bltu         s5, t5, 37f
                  srai         t1, s11, 13
                  sltu         s6, s0, a4
                  xori         a5, s3, 577
                  slti         a6, a4, 759
                  slt          t1, a0, s4
                  sra          t2, t3, s0
                  blt          s4, t1, 34f
                  bltu         sp, t2, 42f
                  sltiu        sp, a1, -1777
                  andi         s9, sp, -836
                  slt          ra, s6, a2
                  bge          a5, t3, 42f
32:               blt          s7, s3, 39f
                  bne          s4, t6, 45f
34:               srai         t4, s5, 11
                  bne          t3, sp, 46f
                  beq          a1, s10, 37f
37:               and          ra, a2, t1
                  sltu         t6, s7, ra
39:               sltu         s4, a0, a0
                  xor          t3, t4, s10
                  blt          t1, gp, 45f
42:               blt          s4, s7, 46f
                  addi         t3, ra, 861
                  sltiu        t6, s10, 1169
45:               andi         s2, a7, -1104
46:               srl          s2, s4, t1
                  blt          zero, t0, 56f
                  and          t3, zero, a4
                  sra          s8, s5, sp
                  slli         t0, s9, 23
                  sub          s6, a2, s11
                  blt          t5, a5, 69f
                  andi         t6, t5, 120
                  slli         a1, t5, 7
                  sltu         t1, s11, s7
56:               beq          s9, s4, 67f
                  bltu         a6, s4, 73f
                  bge          t6, t3, 65f
                  sra          t4, s10, t6
                  auipc        t5, 188857
                  srl          t3, ra, s6
                  beq          t0, zero, 67f
                  bltu         ra, t3, 66f
                  sub          t6, t0, t3
65:               or           s8, s3, a1
66:               slt          s9, tp, a4
67:               blt          s4, zero, 78f
                  bne          t6, t2, 78f
69:               srai         a0, s9, 8
                  auipc        a2, 932144
                  sra          s8, a7, a5
                  addi         s1, s2, 1237
73:               bne          s11, s10, 81f
                  sra          s7, zero, s7
                  andi         s9, tp, 1166
                  bgeu         s8, a4, 78f
                  andi         s7, a3, -324
78:               srai         t2, s1, 5
                  ori          t6, zero, -563
                  auipc        t6, 473327
81:               slti         s5, t4, 166
                  ori          a0, s7, -1138
                  xori         a6, t5, -1906
                  sltu         s0, s8, t6
                  or           s5, s11, gp
                  and          a2, a1, s11
                  sltiu        s11, s3, -1297
                  ori          s8, ra, 539
                  beq          s8, s4, 108f
                  xor          s0, ra, a3
                  sltiu        t1, s6, 740
                  and          sp, t1, s10
                  add          s11, t2, a3
                  xori         a0, s7, -1842
                  xor          a0, s9, s2
                  or           sp, a4, s9
                  slti         t6, s5, 825
                  and          t0, s1, t0
                  andi         a1, s10, 1740
                  lui          zero, 583622
                  xor          s2, a2, s1
                  lui          s8, 112872
                  srl          t5, t5, s10
                  nop
                  bge          a2, s7, 114f
                  or           t0, t1, t1
                  nop
108:              addi         zero, a0, -1031
                  slt          t3, gp, s4
                  add          gp, t0, a6
                  add          zero, a5, sp
                  and          s4, s1, s7
                  ori          a2, t2, 1428
114:              bgeu         t2, a3, 119f
                  sub          s0, gp, s2
                  blt          a0, t6, 127f
                  srl          a5, s2, ra
                  blt          t2, zero, 127f
119:              nop
                  sltu         a5, t1, t0
                  bne          t5, zero, 136f
                  andi         s11, s6, -580
                  sltiu        t3, s8, -884
                  lui          s2, 494481
                  nop
                  slt          ra, a1, s4
127:              srai         a3, s10, 20
                  andi         t1, s7, 1515
                  sltiu        s6, a7, 893
                  addi         a6, s2, -769
                  beq          tp, t2, 142f
                  xor          s4, t6, t5
                  xor          a4, s4, a7
                  blt          s8, tp, 145f
                  slti         a0, s2, -985
136:              andi         a5, s7, 216
                  slli         s9, t3, 0
                  and          t1, s10, a2
                  xori         s7, s4, 302
                  srl          a5, s3, s11
                  srl          t3, a5, s5
142:              sub          a2, t5, a0
                  bne          gp, t5, 161f
                  ori          a4, s11, 805
145:              slti         t3, a1, -1214
                  slt          ra, s1, s11
                  addi         t1, s7, -1603
                  srl          s7, a4, a5
                  sltu         a3, a6, a3
                  xori         s11, a4, 610
                  addi         sp, t6, 874
                  slli         t2, tp, 11
                  bge          s0, t4, 156f
                  sub          s0, s0, s11
                  andi         t4, a6, 1767
156:              xor          s8, t6, gp
                  add          s1, t2, a6
                  bge          t4, s5, 167f
                  srli         s7, t3, 12
                  sltiu        s11, s10, -1599
161:              xori         s11, s3, -1572
                  beq          s11, s4, 170f
                  srl          t6, s7, a6
                  srl          sp, a3, s4
                  sub          s2, t0, t3
                  slti         s11, a6, 1776
167:              xori         t2, tp, 323
                  auipc        s9, 601572
                  sra          t5, s2, a1
170:              auipc        a4, 148058
                  sub          s5, s4, a6
                  sltu         s2, tp, s0
                  srli         t1, t0, 24
                  srl          t2, s2, t3
                  sra          s4, s11, s0
                  slli         a0, s8, 23
                  addi         s8, s0, 454
                  add          gp, s0, t6
                  lui          t5, 554199
                  bgeu         s10, s3, 195f
                  xor          t2, s5, t1
                  slli         t3, t3, 24
                  or           a0, zero, sp
                  or           t6, t3, s10
                  bge          s11, t5, 192f
                  slt          a1, s11, a3
                  srl          t0, s1, s0
                  bge          a3, t6, 193f
                  srli         ra, t6, 28
                  slt          a5, t3, s2
                  blt          t6, tp, 196f
192:              srai         a3, t5, 15
193:              bgeu         a4, s3, 204f
                  sra          gp, zero, s6
195:              slt          t4, a0, s8
196:              xor          gp, s6, a0
                  xor          a6, s2, t6
                  nop
                  beq          s7, s9, 215f
                  beq          s5, t3, 212f
                  srli         a4, a3, 8
                  add          t5, a5, a7
                  add          sp, t0, t1
204:              and          t6, a4, a7
                  add          s4, s7, t1
                  addi         s0, s3, 1693
                  blt          s4, s5, 222f
                  andi         a1, s10, -742
                  sub          t1, a3, t4
                  ori          t2, t5, 1777
                  sub          zero, s8, a6
212:              andi         t6, s5, 530
                  ori          s6, a4, -1538
                  sll          s6, t0, s10
215:              srli         a0, t2, 22
                  ori          a6, zero, -137
                  xor          s8, s3, t0
                  bge          t2, t1, 234f
                  or           gp, s11, a5
                  ori          s1, t4, -1436
                  srli         a1, s5, 7
222:              and          zero, s3, a1
                  srli         s4, tp, 3
                  sltu         ra, s6, s0
                  sub          a5, a0, s9
                  sll          s11, a1, a6
                  addi         t2, a3, 1790
                  srl          a1, s8, t3
                  add          t1, s10, s3
                  srl          s7, t5, t3
                  srli         s7, zero, 25
                  beq          s7, a3, 236f
                  nop
234:              bgeu         t5, s8, 251f
                  nop
236:              bne          ra, s0, 244f
                  add          t4, s3, a6
                  and          a2, s11, sp
                  sra          ra, s3, a2
                  slli         s8, s9, 0
                  slt          s3, s7, a3
                  auipc        t2, 503779
                  bne          s11, s0, 247f
244:              ori          t3, s1, 34
                  andi         zero, a2, 104
                  lui          s11, 188906
247:              slti         t4, t3, 1606
                  addi         t6, t3, 1564
                  nop
                  blt          a0, t2, 252f
251:              blt          s6, t6, 260f
252:              xori         sp, a4, 1026
                  sltu         s0, tp, a0
                  sltu         s1, a7, t4
                  lui          s11, 103753
                  slli         s1, t4, 23
                  srli         a4, s10, 15
                  bgeu         ra, zero, 259f
259:              addi         a1, sp, 1339
260:              xor          s7, s8, s8
                  andi         s1, t0, -1129
                  xor          s0, a5, a7
                  srli         a1, gp, 29
                  slti         a2, s5, -1395
                  auipc        s3, 6115
                  slli         s11, t0, 9
                  sltu         t2, s9, t3
                  and          s0, t4, s2
                  sltu         sp, t4, t0
                  nop
                  sll          t1, t1, gp
                  lui          s8, 37281
                  slli         a1, a3, 7
                  srl          s3, a2, gp
                  and          t1, tp, tp
                  sll          s4, s4, s2
                  or           s3, s10, s0
                  bgeu         s7, a4, 287f
                  andi         t3, a5, 564
                  sub          s9, t6, zero
                  xor          s7, s8, t5
                  lui          s7, 186284
                  srl          a2, t2, t3
                  addi         s0, sp, -1618
                  sltu         t1, a4, t5
                  sub          s1, t3, t2
287:              slt          gp, s3, t5
                  slli         t6, zero, 23
                  sub          ra, s3, s2
                  slli         zero, s11, 2
                  blt          a3, a0, 302f
                  sub          t0, tp, tp
                  xor          sp, t3, ra
                  xori         a1, a6, -907
                  xor          s7, s7, a7
                  andi         s3, s2, 924
                  and          s5, s4, s4
                  bge          s0, gp, 305f
                  or           a2, t2, t5
                  slti         s7, a1, -518
                  bne          s7, a3, 311f
302:              or           gp, a4, s2
                  auipc        t0, 215884
                  and          s0, t6, s1
305:              add          t6, a5, t6
                  andi         s9, a6, 237
                  auipc        s9, 936267
                  bltu         tp, a2, 327f
                  srai         s6, a1, 13
                  sltu         a5, t0, tp
311:              srai         s2, s11, 30
                  bltu         s7, s2, 323f
                  bge          s5, s6, 318f
                  lui          a5, 733421
                  srl          s3, t4, s7
                  ori          s3, s0, 1120
                  nop
318:              or           a6, a5, a6
                  andi         s1, t5, 358
                  sub          ra, s5, a0
                  auipc        s6, 943766
                  nop
323:              sub          t5, a7, s6
                  ori          s11, t3, -1685
                  slt          s7, s10, a1
                  addi         s2, tp, 907
327:              bgeu         ra, s3, 338f
                  sub          s5, a7, s8
                  bgeu         s11, s7, 340f
                  bltu         ra, gp, 332f
                  beq          zero, s6, 340f
332:              bne          s8, s3, 351f
                  sub          s6, a0, s9
                  slli         a2, t3, 16
                  sltu         zero, t3, s6
                  slti         s0, sp, -1564
                  or           a6, t3, s3
338:              sra          s9, a7, a1
                  beq          zero, s3, 347f
340:              bltu         tp, s0, 351f
                  bgeu         t3, sp, 346f
                  slli         zero, ra, 24
                  blt          a0, t1, 354f
                  or           t2, a6, s5
                  slti         t4, s6, -1470
346:              srli         a4, s9, 0
347:              srl          s5, a6, t1
                  addi         s0, t2, -639
                  bltu         t5, a6, 360f
                  and          a3, a7, s6
351:              srl          a3, sp, a2
                  srl          a4, a1, a5
                  ori          a4, t0, -231
354:              bne          s8, s7, 365f
                  sll          gp, a7, t6
                  sub          s6, a0, t4
                  bne          tp, a4, 364f
                  sra          t3, t0, ra
                  or           a2, s7, a0
360:              sll          s8, a2, a6
                  ori          ra, a1, 509
                  nop
                  srai         t2, a7, 14
364:              bltu         t2, t0, 373f
365:              and          t6, a0, t1
                  andi         t5, t5, 996
                  srli         a2, s4, 0
                  slti         a5, s10, 1630
                  sra          t0, t6, sp
                  srli         sp, a2, 7
                  xor          s9, ra, t6
                  lui          a0, 959072
373:              blt          s1, s10, 376f
                  andi         s4, s10, 1486
                  ori          s0, t6, -1255
376:              slli         s1, s0, 25
                  beq          s0, gp, 392f
                  bne          s10, t6, 386f
                  srli         a1, s2, 6
                  sltu         t0, tp, a2
                  bgeu         s0, tp, 397f
                  slt          s11, s6, s1
                  bne          a0, t1, 401f
                  bltu         t1, s2, 399f
                  and          s0, t1, a1
386:              sub          s9, s3, s2
                  sll          t5, tp, s6
                  slti         a5, t2, -844
                  srl          t3, s7, a2
                  sub          a4, t5, s1
                  auipc        s9, 64814
392:              bne          s11, ra, 404f
                  nop
                  srli         a1, s1, 30
                  xor          t0, t5, a1
                  slt          s9, a5, t6
397:              blt          a4, s4, 398f
398:              sra          zero, s7, t2
399:              bltu         t2, zero, 404f
                  srai         s4, t0, 9
401:              bge          s3, a0, 410f
                  add          t5, t1, s11
                  sltu         t2, s9, gp
404:              and          ra, s9, sp
                  xori         ra, a7, -30
                  srai         s6, s7, 5
                  nop
                  auipc        s1, 578960
                  addi         a4, s6, 971
410:              slt          a4, s0, t3
                  sltu         a2, s6, a1
                  addi         s6, s11, -1031
                  bltu         a2, a7, 418f
                  bne          zero, a0, 418f
                  slli         s2, s7, 27
                  srl          s9, s8, a1
                  sub          t1, s9, s11
418:              sltiu        t0, s6, 1942
                  xor          gp, s8, t3
                  sltu         s5, s10, a2
                  auipc        s9, 1003521
                  bltu         a7, t6, 439f
                  bgeu         a7, a4, 430f
                  nop
                  addi         a2, s7, 1722
                  xori         a2, tp, 1983
                  slti         s4, s5, 821
                  andi         s11, t3, 178
                  sra          t6, t4, t2
430:              sltu         s4, a7, tp
                  blt          t5, s4, 435f
                  lui          zero, 271063
                  blt          s7, s8, 449f
                  bgeu         s3, a7, 445f
435:              nop
                  srl          t1, t3, a5
                  bge          s11, s3, 447f
                  lui          a0, 773794
439:              blt          a2, s6, 448f
                  andi         a2, t4, -553
                  sll          sp, t0, a3
                  sltiu        a6, a2, 712
                  andi         a5, a1, -1202
                  sub          t3, a2, s4
445:              bgeu         a5, a2, 450f
                  sll          s11, t5, a6
447:              sub          t3, t3, s3
448:              nop
449:              auipc        a2, 600271
450:              sra          t4, t5, t4
                  andi         a3, zero, 1224
                  and          a5, a2, s4
                  add          t1, s10, s10
                  blt          a5, t5, 465f
                  and          s11, a5, ra
                  slt          a5, ra, s2
                  blt          t2, a2, 461f
                  ori          t6, s1, -1643
                  bge          s7, s10, 475f
                  or           t1, s1, s2
461:              and          t3, a3, a3
                  slli         s5, sp, 17
                  xor          s0, t1, tp
                  and          s0, s3, t0
465:              srli         s11, s8, 2
                  bne          s8, t3, 475f
                  sra          a3, s11, a7
                  sra          t0, gp, s2
                  blt          t4, s10, 474f
                  sltu         gp, zero, t6
                  or           t4, a2, a0
                  auipc        t1, 314331
                  bltu         s6, a7, 482f
474:              andi         s0, a4, 1931
475:              add          a2, zero, a3
                  beq          zero, s11, 480f
                  xor          a4, t0, sp
                  bltu         t4, t2, 483f
                  nop
480:              add          s2, a0, gp
                  andi         t0, s5, 1742
482:              xor          t5, t4, tp
483:              blt          t6, a0, 490f
                  sltu         t3, s11, a1
                  sltiu        t1, t6, -1763
                  ori          t4, s5, 196
                  blt          t1, a6, 498f
                  sltu         gp, ra, s5
                  sltu         a6, t5, t2
490:              auipc        a3, 903876
                  sll          a4, sp, a6
                  nop
                  or           t1, zero, a6
                  bne          sp, ra, 509f
                  bge          s6, s9, 496f
496:              and          s6, s4, t5
                  slli         sp, s6, 13
498:              or           t1, s7, s11
                  srai         t3, t3, 2
                  xori         s9, a1, -875
                  bne          t2, a1, 512f
                  sub          t4, s1, s5
                  beq          zero, a5, 520f
                  auipc        zero, 803807
                  bltu         s2, s1, 508f
                  or           s0, a1, s9
                  ori          a0, t2, 228
508:              slli         s3, t1, 4
509:              nop
                  or           s2, gp, t5
                  lui          s11, 709736
512:              nop
                  andi         s11, t0, 1622
                  bne          a7, a5, 525f
                  sltu         a1, s1, t3
                  sll          a5, t1, a2
                  srli         a2, s4, 12
                  nop
                  slti         t1, s7, 1950
520:              beq          s6, tp, 539f
                  ori          s8, s5, -1464
                  sll          s4, s6, a3
                  addi         s8, t2, 1913
                  add          t1, s8, s10
525:              and          a6, t2, s0
                  nop
                  auipc        zero, 848095
                  srai         t4, tp, 4
                  bltu         s3, t1, 536f
                  slt          s11, s5, t3
                  bne          a2, s10, 539f
                  ori          s9, t2, 649
                  srl          t6, a6, t2
                  srli         s2, a3, 11
                  sltu         a3, t2, gp
536:              slli         s2, s2, 17
                  bge          a5, a1, 553f
                  beq          ra, ra, 550f
539:              bgeu         zero, s3, 557f
                  srai         t4, t2, 13
                  bne          s3, s5, 552f
                  add          a1, a3, t4
                  bge          s2, gp, 545f
                  beq          a0, s11, 555f
545:              xori         t3, sp, -1229
                  sub          a3, t3, t1
                  addi         s8, t4, 1610
                  slli         a3, s2, 24
                  sll          t3, s0, s9
550:              and          a6, a4, s7
                  or           a2, s7, a4
552:              sltu         a6, s1, t1
553:              bltu         sp, t6, 561f
                  bltu         zero, a2, 564f
555:              add          a2, sp, gp
                  srli         t0, s8, 15
557:              sltiu        a4, s8, 10
                  nop
                  add          a5, zero, a5
                  slti         s3, s1, 191
561:              auipc        s2, 272594
                  blt          t0, s8, 577f
                  andi         sp, s6, 1435
564:              ori          gp, t6, 358
                  bgeu         t2, t5, 576f
                  blt          t0, s10, 581f
                  sltiu        gp, a5, 1598
                  auipc        s8, 469027
                  bge          s10, s4, 580f
                  addi         t3, a3, -1318
                  bltu         t2, s10, 589f
                  slti         t5, a2, -70
                  srl          t0, a7, t3
                  sll          t5, t6, s11
                  slli         a3, t6, 31
576:              ori          t6, ra, 717
577:              srli         s0, a3, 22
                  sll          zero, gp, a5
                  auipc        s7, 50041
580:              slti         s3, t6, -1968
581:              auipc        s3, 934405
                  andi         zero, a2, -198
                  xori         a2, a3, -1642
                  bge          s6, s2, 600f
                  or           ra, tp, zero
                  slt          zero, s10, a0
                  sltu         a2, s6, s9
                  xor          zero, s6, gp
589:              addi         s4, sp, -904
                  and          s7, s5, s11
                  blt          s4, a3, 598f
                  srai         s1, s11, 4
                  beq          a0, a5, 605f
                  addi         t2, zero, 1541
                  bltu         s9, t5, 605f
                  slt          sp, a4, tp
                  slli         s5, s5, 16
598:              ori          s11, ra, -1871
sub_4_22:         jal          sp, 12f
0:                jal          gp, 9f
1:                jal          a2, 2f
2:                jal          ra, 22f
3:                jal          t1, 19f
4:                jal          ra, 14f
5:                jal          t1, 23f
6:                jal          t1, 0b
7:                jal          ra, 6b
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          ra, 21f
11:               jal          ra, 7b
12:               jal          ra, 13f
13:               jal          gp, 8b
14:               jal          ra, 3b
15:               jal          s9, 11b
16:               jal          ra, 18f
17:               jal          t1, 4b
18:               jal          ra, 5b
19:               jal          ra, 20f
20:               jal          ra, 15b
21:               jal          ra, 17b
22:               jal          sp, 16b
23:               nop
                  sll          a2, s5, a1
600:              sll          s2, t3, s4
                  sra          s4, a7, ra
                  or           a0, s10, t3
                  srl          a2, a3, a5
                  srl          gp, tp, s10
605:              bltu         s4, s1, 613f
                  andi         t2, s10, -1272
                  addi         s1, s0, 1294
                  sltiu        s7, tp, -1425
                  or           a3, s3, sp
                  slli         t4, t3, 4
                  sltiu        ra, t0, 1061
                  bltu         gp, s6, 623f
613:              srai         a5, s3, 24
                  srli         s5, s9, 11
                  lui          t2, 967081
                  lui          t1, 415226
                  srai         ra, t2, 5
                  or           t5, s6, s8
                  xori         s11, t1, 777
                  or           a2, a6, sp
                  slti         s2, a5, -541
                  srli         gp, a1, 2
623:              add          zero, s2, s3
                  nop
                  andi         gp, s9, -1814
                  sll          a2, t4, s9
                  auipc        s7, 175841
                  xori         s9, t2, 301
                  sub          s0, s5, s0
                  bltu         s5, t1, 647f
                  nop
                  sltiu        s7, s1, -722
                  bge          s1, t5, 637f
                  srai         t1, s4, 30
                  addi         s8, s6, 25
                  andi         s1, a5, 1379
637:              sub          a2, sp, t2
                  or           s2, t6, a1
                  xori         s8, a5, 1497
                  nop
                  sra          s3, sp, a6
                  auipc        s1, 721882
                  bltu         gp, t4, 654f
                  slt          t4, s6, s7
                  sll          zero, a6, sp
                  and          a1, a7, sp
647:              slli         a0, zero, 13
                  or           a4, a3, a6
                  slli         s4, a3, 13
                  xor          t1, sp, s3
                  sub          t4, s9, s0
                  beq          s6, s9, 654f
                  srl          a0, a4, a4
654:              bge          a4, t5, 673f
                  bgeu         t6, gp, 660f
                  slt          s6, a6, t4
                  sltu         t3, s1, zero
                  andi         a6, a3, 540
                  or           s4, s10, t1
660:              blt          zero, s2, 669f
                  add          t3, s10, s9
                  bge          t4, t1, 673f
                  andi         ra, t2, -1064
                  bne          t1, a3, 680f
                  bgeu         s4, sp, 680f
                  slli         s2, s11, 9
                  bltu         s2, s11, 668f
668:              bgeu         t1, s4, 673f
669:              auipc        a3, 1024877
                  auipc        t5, 714977
                  srai         s5, ra, 18
                  bge          t6, s0, 681f
673:              lui          a5, 225177
                  beq          a7, s9, 681f
                  and          ra, s8, s5
                  bne          a7, s10, 684f
                  slti         ra, a5, 1831
                  and          s5, t1, a4
                  slt          s5, s6, t5
680:              bltu         a5, a3, 689f
681:              xori         s6, s0, -620
                  srl          s11, s2, s3
                  or           a2, zero, tp
684:              addi         s8, sp, -811
                  slt          a4, t3, t5
                  srl          s8, gp, s2
                  bltu         a7, t5, 690f
                  bge          t3, s0, 699f
689:              bltu         s9, zero, 693f
690:              slti         t0, ra, 1808
                  bltu         s7, gp, 696f
                  bgeu         s11, s7, 701f
693:              sra          a5, s8, s5
                  xor          t6, t5, s6
                  ori          t0, sp, -1525
696:              and          gp, t1, s9
                  or           s6, t1, t3
                  bltu         gp, t0, 705f
699:              ori          a6, s11, 1205
                  add          t6, t5, a3
701:              or           t4, s7, t5
                  bltu         a0, t4, 710f
                  sra          t0, tp, s4
                  slti         t6, s4, 1384
705:              add          s1, s2, s3
                  sub          ra, s5, zero
                  or           s2, zero, t3
                  sltu         s9, a2, s9
                  ori          a0, t3, 1700
710:              add          a1, a2, t4
                  sra          s5, t0, a7
                  addi         t2, zero, 936
                  srai         s8, s6, 19
                  bltu         t4, t5, 722f
                  bgeu         t6, s1, 726f
                  bgeu         s10, t1, 717f
717:              bgeu         ra, s6, 728f
                  addi         a1, s4, -79
                  ori          t4, s0, 1263
                  ori          s6, s7, 1204
                  lui          t1, 461184
722:              beq          zero, s5, 733f
                  bne          s0, s9, 738f
                  or           s2, s0, zero
                  bge          s10, t2, 737f
726:              bne          t4, t0, 737f
                  add          t0, s10, s10
728:              bge          tp, sp, 737f
                  addi         sp, a0, -456
                  ori          t6, t2, -862
                  add          sp, t5, s2
                  or           t4, s0, s1
733:              and          s3, s1, t0
                  nop
                  srl          s0, s6, t1
                  ori          a4, s8, -973
737:              add          s7, a7, a0
738:              xor          s4, t4, s4
                  xor          s2, t2, s4
                  sltiu        s11, a5, 866
                  bltu         t4, zero, 744f
                  sub          s0, t0, ra
                  slli         t1, s6, 16
744:              sub          s7, s3, a5
                  sltiu        s9, gp, 676
                  sltiu        zero, t6, -443
                  nop
                  blt          zero, s0, 763f
                  lui          t3, 944718
                  or           t1, ra, a4
                  bltu         a1, t4, 755f
                  andi         ra, a4, -746
                  add          s7, a7, a5
                  and          a2, t5, s5
755:              bltu         s11, s11, 771f
                  ori          s6, t2, 480
                  sra          a3, zero, t4
                  xori         s5, t2, -1724
                  sltiu        t6, s3, 140
                  bge          s2, ra, 762f
                  xor          s5, t5, s6
762:              beq          a7, tp, 771f
763:              sra          a4, s1, s10
                  sub          s7, a1, t0
                  or           t3, s3, s1
                  addi         ra, a4, -1717
                  add          t2, s1, s10
                  sll          t2, t1, t0
                  ori          a2, t4, -290
                  bne          t3, a7, 774f
771:              slli         t5, a3, 20
                  addi         s2, s3, 1896
                  srai         a1, t3, 28
774:              beq          t6, sp, 784f
                  bgeu         s9, s0, 782f
                  ori          t5, s0, -1526
                  srai         a4, a2, 20
                  or           t3, s7, ra
                  slt          ra, s3, s7
                  blt          a4, zero, 785f
                  bne          s5, zero, 792f
782:              sltu         a5, t1, s2
                  bne          t0, a0, 802f
784:              sub          t4, a6, zero
785:              bltu         a2, s11, 796f
                  bge          s0, s3, 803f
                  slti         t4, a5, 1805
                  sra          t0, t3, s6
                  add          sp, a6, s1
                  and          gp, t1, t1
                  andi         s3, s8, -574
792:              beq          sp, t5, 808f
                  slt          ra, s11, s11
                  andi         sp, s11, 356
                  xor          t0, t1, a6
796:              slt          a3, s5, a3
                  ori          s11, gp, 954
                  xor          t3, zero, t3
                  slli         t2, t5, 21
                  sltiu        ra, s9, -861
                  sltu         gp, t3, s2
802:              nop
803:              or           t6, t1, t6
                  srli         zero, s10, 12
                  andi         ra, t1, 243
                  nop
                  sll          s7, s1, s0
808:              and          zero, s7, a4
                  ori          s0, sp, 481
                  slti         sp, zero, 354
                  slti         s5, t0, -2021
                  xori         s4, a0, -1794
                  sub          s0, t2, tp
                  sll          s8, gp, t6
                  slt          ra, a4, a0
                  nop
                  bltu         s1, a2, 822f
                  sra          t3, a3, s6
                  beq          s1, a2, 837f
                  nop
                  or           t3, s4, s10
822:              xor          a1, s4, s6
                  bltu         s7, gp, 828f
                  addi         a0, s10, 616
                  bge          s9, ra, 836f
                  nop
                  bgeu         a0, zero, 836f
828:              beq          s10, t4, 837f
                  slti         s9, t6, 1120
                  bgeu         gp, a3, 848f
                  xor          s4, a4, sp
                  auipc        s5, 141054
                  srai         t5, s6, 31
                  bltu         t5, t4, 845f
                  slti         s4, s9, 1348
836:              sltu         gp, a3, tp
837:              slt          s6, a5, s11
                  nop
                  slti         s4, a4, 488
                  xor          t5, t2, t3
                  blt          s11, s7, 842f
842:              sra          t4, t0, s0
                  add          t6, t5, tp
                  bgeu         zero, zero, 854f
845:              slli         s0, s0, 7
                  addi         s3, t0, 1002
                  bgeu         s0, ra, 858f
848:              lui          t6, 134351
                  bge          gp, s10, 858f
                  xor          ra, s1, tp
                  sub          a2, s2, a1
                  srli         a0, t1, 19
                  bgeu         t5, a2, 860f
854:              beq          ra, s4, 858f
                  blt          a2, a6, 862f
                  sltu         t4, s7, s1
                  srai         t1, sp, 20
858:              sll          s2, zero, a3
                  srli         a5, a5, 0
860:              nop
                  beq          s0, a2, 872f
862:              addi         s3, zero, -837
                  slli         t3, s9, 9
                  slti         s5, s1, -768
                  nop
                  beq          t2, a1, 885f
                  bgeu         s3, s5, 878f
                  nop
                  blt          t0, s6, 884f
                  ori          s11, a3, -1583
                  addi         t1, t1, -918
872:              sub          a6, t4, t4
                  sll          t3, a4, a5
                  slli         t3, s3, 17
                  sub          t2, s2, a2
                  xor          s4, ra, t3
                  andi         s1, sp, 1302
878:              xori         s6, a3, -1790
                  and          a3, a4, s1
                  blt          a0, t5, 896f
                  srl          t3, sp, ra
                  addi         s7, s11, 1309
                  addi         s8, s9, 1635
884:              sll          a5, t5, t3
885:              lui          s8, 285007
                  and          t5, a4, a1
                  slli         s3, t0, 4
                  sra          s11, s2, a1
                  nop
                  srli         t2, t0, 28
                  andi         s7, t1, 1033
                  bgeu         a4, sp, 908f
                  nop
                  xori         s5, a6, -139
                  xori         t3, sp, -1684
896:              ori          s7, sp, -522
                  sltiu        s4, s1, 1527
                  andi         t2, a0, 1497
                  slt          s1, s4, s7
                  beq          a0, s4, 908f
                  srli         s9, t6, 14
                  slti         t1, s10, -854
                  slli         s11, a4, 17
                  sub          s2, a2, ra
                  beq          s9, s9, 910f
                  sll          s11, t5, s4
                  nop
908:              slti         t1, s5, 1732
                  blt          a4, s5, 912f
910:              addi         s1, a2, -1613
                  sltiu        s8, t0, -530
912:              lui          s6, 716092
                  xor          s0, s7, a4
                  sltiu        s0, a3, -1924
                  bne          a1, ra, 926f
                  slt          s7, a6, s4
                  slti         t5, sp, 326
                  bgeu         a7, t0, 930f
                  sub          zero, t0, a4
                  sll          a4, a4, s5
                  sll          s4, tp, s11
                  bgeu         t6, t1, 939f
                  bge          s11, t3, 927f
                  bge          gp, s3, 929f
                  sll          s2, s9, a1
926:              slti         s7, gp, 1308
927:              blt          a2, t4, 935f
                  srl          a0, a0, t2
929:              sra          a5, a4, s11
930:              bge          gp, a4, 932f
                  sll          a6, s9, s7
932:              beq          s9, t0, 947f
                  slt          gp, t6, zero
                  nop
935:              add          s11, t6, s6
                  addi         s11, s3, 212
                  add          s0, t5, t3
                  xor          s5, t4, t0
939:              beq          s11, a4, 944f
                  blt          zero, a2, 951f
                  ori          ra, s3, -1763
                  bgeu         zero, a1, 953f
                  beq          s0, s6, 948f
944:              or           s4, t2, s10
                  auipc        s3, 233329
                  bgeu         a6, a7, 948f
947:              srli         t2, a2, 3
948:              andi         t5, s4, -1675
                  bgeu         t4, zero, 966f
                  andi         a1, s1, 796
951:              sra          a3, s11, t3
                  xor          s6, s3, t5
953:              or           t6, a1, t0
                  sltu         t0, s3, ra
                  sltiu        s4, s6, -946
                  sub          t4, s1, s11
                  xori         s11, t2, 751
                  ori          a5, zero, 6
                  bgeu         s3, t2, 964f
                  lui          sp, 28140
                  auipc        t2, 691579
                  add          t6, a3, t5
                  ori          gp, tp, 571
964:              bge          a3, t0, 973f
                  sll          t0, s4, s9
966:              slti         s3, a4, 781
                  nop
                  bgeu         s1, s8, 979f
                  or           t3, s10, t4
                  bgeu         a7, s6, 979f
                  beq          a5, t1, 989f
                  blt          t5, s4, 980f
973:              and          a1, t0, t2
                  ori          t1, t3, -200
                  slti         t2, s4, -336
                  auipc        s3, 687121
                  auipc        s5, 815639
                  srli         a5, a7, 18
979:              ori          a1, t0, -137
980:              or           t3, t5, s9
                  srli         ra, a2, 13
                  slli         a0, t6, 9
                  blt          t5, a4, 990f
                  srli         s5, s0, 0
                  bne          s8, a6, 989f
                  slti         s3, s7, -949
                  andi         s6, s3, -1851
                  bltu         sp, a4, 991f
989:              ori          s9, s7, 351
990:              srai         a1, tp, 11
991:              sra          s9, a3, t5
                  slli         s7, a0, 24
                  andi         s9, s7, -636
                  sltu         t6, gp, s10
                  sub          s11, s11, gp
                  addi         t2, t0, -31
                  andi         a4, a5, 660
                  and          t5, s1, s10
                  andi         t0, sp, -200
                  addi         t1, a1, -1000
                  add          s0, zero, a3
                  add          sp, ra, zero
                  ori          t2, a6, -274
                  blt          a1, zero, 1019f
                  slli         a1, t2, 7
                  nop
                  xor          s11, t4, t2
                  add          s2, a3, zero
                  addi         s1, t6, 617
                  bgeu         s0, t5, 1025f
                  bne          a3, a0, 1018f
                  slli         a1, a7, 18
                  lui          a2, 727028
                  bne          zero, ra, 1022f
                  auipc        s3, 707169
                  bge          s3, s7, 1020f
                  srli         a1, s10, 3
1018:             slt          a0, gp, s7
1019:             ori          s8, s3, -1408
1020:             nop
                  slti         s3, t4, 1864
1022:             add          s1, t3, t0
                  bne          s5, t4, 1032f
                  or           t2, sp, a7
1025:             nop
                  bge          s7, a5, 1037f
                  slli         ra, s6, 10
                  xori         s8, a7, 647
                  srli         zero, a4, 25
                  auipc        s0, 370721
                  sltiu        t0, s9, -1816
1032:             slti         s3, ra, -1177
                  bge          tp, s0, 1045f
                  lui          t2, 91608
                  lui          sp, 871281
                  bgeu         s7, a5, 1052f
1037:             bge          t1, s4, 1056f
                  xor          t6, s0, t0
                  bne          s9, gp, 1040f
1040:             srl          a6, s6, s6
                  srl          t5, zero, s9
                  or           t1, t1, s10
                  or           s4, t4, t3
                  xor          t2, s4, tp
1045:             slli         t1, s11, 18
                  srli         a5, t2, 31
                  addi         t6, s2, 467
                  bge          s11, a0, 1053f
                  addi         a2, t2, -2008
                  beq          s1, s7, 1060f
                  slli         t3, t6, 21
1052:             ori          s0, a7, -1563
1053:             slti         a2, sp, -1216
                  add          s8, a0, sp
                  xori         s4, s3, -1438
1056:             sll          a0, s9, s10
                  or           s7, t5, s2
                  andi         a3, a6, -1400
                  sll          t6, t6, s1
1060:             srai         s8, a5, 18
                  bne          s11, t0, 1072f
                  slti         ra, t6, 344
                  nop
                  andi         a5, a1, -929
                  bne          t0, s8, 1076f
                  slti         a5, s2, -674
                  bge          t1, s1, 1083f
                  sra          s3, t0, s8
                  slt          s2, s9, s0
                  ori          s6, t6, 716
                  slti         t5, a2, -869
1072:             xori         s8, t2, 982
                  and          s0, s3, a5
                  addi         t4, s5, 681
                  srli         t3, a2, 16
1076:             sll          gp, s4, a7
                  blt          s8, t5, 1088f
                  bge          a2, s1, 1080f
                  bgeu         s8, zero, 1080f
1080:             bltu         t2, s1, 1091f
                  bgeu         s11, s9, 1091f
                  bge          a2, a1, 1091f
1083:             srl          t5, a1, s3
                  srl          t1, a4, zero
                  sltiu        a5, sp, -1708
                  bgeu         a6, t0, 1098f
                  nop
1088:             srl          t2, t3, a4
                  bge          a7, t3, 1100f
                  srai         t0, a3, 18
1091:             nop
                  and          ra, s4, s11
                  lui          s3, 459254
                  srai         s6, s8, 5
                  sltu         zero, t1, s4
                  slti         a0, a0, -634
                  addi         t0, s2, -749
1098:             sltiu        zero, tp, 660
                  bgeu         t0, a5, 1102f
1100:             xori         a5, t2, 1001
                  lui          gp, 132649
1102:             bge          t5, a2, 1120f
                  xori         s9, t0, 773
                  nop
                  addi         t0, s9, 178
                  and          t6, s10, t0
                  or           s3, t3, zero
                  nop
                  bge          t4, t3, 1118f
                  srai         t6, tp, 9
                  sll          t2, a7, a4
                  beq          t2, a0, 1120f
                  andi         s0, s1, -847
                  sll          t2, a3, a0
                  srai         a2, ra, 8
                  sra          a1, s7, t2
                  srli         s0, gp, 23
1118:             addi         s1, s4, -1569
                  and          t5, s5, s11
1120:             sll          s4, ra, s1
                  bne          s3, zero, 1132f
                  sll          a2, s4, a4
                  srli         gp, s6, 10
                  sltu         a0, s3, a7
                  sra          t1, t1, s1
                  andi         a3, s9, 632
                  beq          gp, t6, 1131f
                  slli         s1, s6, 10
                  slt          s5, s5, s3
                  or           s0, t4, t5
1131:             bgeu         t3, a3, 1142f
1132:             sub          s1, t0, t3
                  bge          a7, sp, 1148f
                  xor          a5, s3, t1
                  auipc        s6, 648107
                  xor          s7, a3, ra
                  auipc        t1, 838699
                  ori          a1, a1, -310
                  beq          a4, s10, 1154f
                  blt          a0, s8, 1145f
                  srai         ra, ra, 22
1142:             lui          t3, 44442
                  nop
                  nop
1145:             bgeu         sp, s3, 1162f
                  beq          zero, s4, 1162f
                  nop
1148:             bne          a0, a1, 1153f
                  lui          s9, 670403
                  sltu         s0, a7, s4
                  bne          s4, a6, 1158f
                  sltu         s7, s1, s6
1153:             andi         t5, s1, -691
1154:             srl          s4, t1, a7
                  add          a0, a2, s4
                  sub          a0, t2, t1
                  bgeu         a1, t3, 1168f
1158:             sll          zero, s3, s9
                  slt          a6, zero, s2
                  bltu         ra, t1, 1176f
                  slt          ra, sp, a4
1162:             or           t0, t1, gp
                  or           a2, s2, ra
                  nop
                  bltu         a7, a0, 1172f
                  andi         s1, s5, 4
                  slt          a2, s7, t6
1168:             bge          s5, a1, 1173f
                  srl          s8, s6, a0
                  add          ra, a7, t5
                  lui          a3, 202604
1172:             ori          s4, a4, 1244
1173:             sra          a0, s0, zero
                  srl          a6, s3, t5
                  srli         s7, sp, 18
1176:             add          t5, zero, t0
                  addi         s1, a6, 1864
                  addi         t5, a3, -1741
                  bne          sp, s9, 1198f
                  lui          s2, 724016
                  andi         t4, s5, -612
                  xori         a6, s5, -243
                  auipc        s7, 638815
                  auipc        s9, 725639
                  auipc        a1, 759476
                  xor          t1, a2, t5
                  srli         s11, s9, 23
                  add          t3, t1, a3
                  lui          a6, 707177
                  and          s6, t2, a0
                  andi         s5, a7, -711
                  bne          gp, s8, 1196f
                  sra          t1, t1, s2
                  beq          s3, a7, 1202f
                  blt          a1, s5, 1204f
1196:             xori         t0, s3, 1276
                  xor          a0, t2, t6
1198:             auipc        t1, 739794
                  ori          s2, s11, 669
                  add          s5, s1, a4
                  sra          ra, sp, t5
1202:             srli         a2, sp, 2
                  srli         a4, t6, 8
1204:             nop
                  sltu         t3, a7, s0
                  sll          s2, t0, t1
                  lui          a0, 815819
                  lui          sp, 142616
                  add          a4, a2, s8
                  andi         a5, s11, -908
                  sra          s6, s1, tp
                  beq          s3, t4, 1221f
                  lui          a4, 707226
                  sltu         a3, s8, s2
                  bltu         s3, s9, 1226f
                  ori          s11, t0, -1085
                  srl          s5, a3, a6
                  and          s8, s8, a6
                  blt          a0, s9, 1226f
                  xor          a4, t6, t3
1221:             sub          a4, tp, gp
                  beq          a7, t1, 1233f
                  srai         a6, t6, 13
                  beq          s4, a0, 1235f
                  sll          sp, s1, s0
1226:             blt          s9, t1, 1238f
                  srli         s0, s8, 20
                  srai         t4, s9, 31
                  srli         a4, tp, 13
                  sltiu        s6, s5, 625
                  slt          t1, s11, a5
                  lui          t2, 237633
1233:             and          s7, a1, a6
                  sll          a1, a7, t5
1235:             srl          gp, s9, t0
                  lui          zero, 726075
                  nop
1238:             nop
                  slli         a1, tp, 31
                  bltu         a2, t5, 1255f
                  srli         s0, s4, 12
                  xor          a0, a6, t2
                  sra          s2, s3, s9
                  srli         t4, s0, 26
                  or           s1, sp, zero
                  lui          t6, 648046
                  sltiu        t5, t3, -77
                  bltu         s3, s4, 1264f
                  sra          a4, s9, s0
                  sll          a6, t2, tp
                  sll          t2, a6, a3
                  auipc        ra, 951445
                  slti         a0, a3, -309
                  sll          s3, a4, s6
1255:             andi         s3, tp, -1438
                  bltu         a2, t2, 1266f
                  sltiu        a0, s8, -153
                  blt          a3, s4, 1265f
                  slti         ra, t2, -1060
                  sltiu        s7, t3, -871
                  bne          s3, t4, 1280f
                  srl          s7, s2, t2
                  lui          s3, 602068
1264:             bne          a5, s1, 1282f
1265:             srai         s4, s5, 1
1266:             sub          t6, a6, tp
                  srai         a0, tp, 25
                  srli         t4, a6, 25
                  sltu         s9, sp, a6
                  slt          s5, t0, s5
                  lui          a5, 412821
                  and          a3, tp, a7
                  add          s4, ra, t4
                  andi         s0, a3, -798
                  and          a6, ra, s10
                  bltu         sp, sp, 1292f
                  sll          zero, s1, s0
                  srl          a4, t1, t3
                  auipc        s2, 961058
1280:             sra          zero, s9, zero
                  or           a2, zero, s3
1282:             sll          s11, s4, a5
                  srl          t0, s8, tp
                  srai         a4, s1, 0
                  xor          gp, s8, s6
                  andi         a4, a6, -1799
                  srli         s8, s2, 21
                  xor          s6, tp, ra
                  and          t3, t3, t1
                  add          t3, a1, t3
                  srai         s11, a4, 24
1292:             slli         s7, a5, 22
                  sll          a4, s3, t1
                  sll          a6, zero, a3
                  beq          a0, sp, 1300f
                  lui          s3, 647470
                  add          t5, gp, a4
                  bltu         t2, s5, 1302f
                  bge          s9, zero, 1302f
1300:             nop
                  addi         zero, s4, -838
1302:             nop
                  bgeu         s11, t3, 1311f
                  sub          a2, gp, a3
                  bltu         ra, zero, 1314f
                  srl          s2, a6, s2
                  sltu         s11, t0, s9
                  nop
                  bgeu         t5, a1, 1324f
                  slli         a3, t1, 22
1311:             sltiu        t5, s5, 2022
                  slti         a3, t6, 312
                  sra          t3, t6, s7
1314:             blt          s0, s11, 1322f
                  addi         s1, s3, -617
                  slli         s2, s3, 23
                  blt          s11, gp, 1328f
                  xor          sp, a5, s7
                  srai         a4, a3, 15
                  srai         t3, sp, 9
                  slt          a2, sp, t2
1322:             xor          s2, t5, zero
                  bne          t0, s5, 1340f
1324:             xor          a4, t0, t4
                  sltu         s4, tp, a6
                  and          a6, s1, a5
                  sra          s4, s10, s7
1328:             ori          t5, s2, -417
                  slti         a1, s9, -65
                  blt          a7, s2, 1335f
                  add          s7, t1, a0
                  slt          t5, ra, t5
                  srai         sp, s7, 10
                  sltiu        a0, t1, -1560
1335:             or           s2, a6, a1
                  and          s4, t2, ra
                  ori          s4, t4, 1628
                  slli         a3, s11, 2
                  andi         t1, ra, -265
1340:             lui          a3, 895598
                  srai         t2, a4, 17
                  ori          a0, a4, -1682
                  xor          t2, tp, s0
                  slt          zero, t6, tp
                  bltu         t3, s11, 1350f
                  srli         t1, zero, 23
                  sltiu        t2, s8, 1785
                  slli         ra, s3, 28
                  slli         s4, a4, 10
1350:             sltu         s4, a6, s0
                  bgeu         a0, t3, 1360f
                  addi         s6, a7, 229
                  sll          sp, s7, s4
                  bltu         a0, ra, 1356f
                  sra          t2, s3, s3
1356:             srl          s4, t1, s4
                  nop
                  slt          s7, s4, s6
                  bge          s2, a0, 1370f
1360:             xori         s5, ra, 1169
                  xor          t6, t4, t0
                  auipc        t3, 851823
                  lui          s9, 181842
                  sltu         ra, t3, s6
                  slti         t2, tp, -1216
                  sll          s0, s1, a2
                  auipc        s1, 318169
                  sub          s3, a1, a5
                  slli         sp, a0, 17
1370:             sltu         t2, t0, a4
                  xor          s11, gp, s3
                  slti         s7, zero, 1724
                  beq          t3, gp, 1374f
1374:             slti         t0, t5, -310
sub_4_33:         jal          sp, 12f
0:                jal          ra, 5f
1:                jal          t1, 3f
2:                jal          ra, 14f
3:                jal          sp, 0b
4:                jal          t1, 19f
5:                jal          s11, 18f
6:                jal          a0, 16f
7:                jal          ra, 4b
8:                jal          t1, 10f
9:                jal          sp, 6b
10:               jal          ra, 21f
11:               jal          t0, 8b
12:               jal          sp, 13f
13:               jal          ra, 9b
14:               jal          ra, 7b
15:               jal          a5, 22f
16:               jal          t1, 17f
17:               jal          ra, 11b
18:               jal          a0, 2b
19:               jal          ra, 20f
20:               jal          ra, 15b
21:               jal          sp, 1b
22:               sub          sp, s6, zero
                  srai         sp, zero, 27
                  sltu         s5, s7, a3
                  xori         s3, gp, 833
                  sra          s0, s0, t4
                  auipc        a5, 189564
                  slt          a0, s3, s11
                  nop
                  xori         s7, t1, -243
                  addi         t6, tp, -1858
                  bltu         a6, t3, 1395f
                  ori          t1, s9, 771
                  srl          t6, a0, s7
                  auipc        s3, 760737
                  sltiu        a6, a0, -642
                  xori         a2, a0, -1332
                  sll          s7, a0, t0
                  slti         t5, s1, 170
                  add          sp, zero, s11
                  slli         s1, t1, 20
                  srl          a4, s0, s8
1395:             srl          a6, s1, s1
                  bltu         s3, t3, 1400f
                  slt          s4, t0, s0
                  xor          a5, a3, a7
                  add          a6, zero, t4
1400:             srl          t4, t5, t1
                  andi         s4, s8, 1986
                  andi         s5, a3, -1515
                  slli         t4, a2, 17
                  ori          s5, tp, 651
                  bltu         a0, a3, 1407f
                  nop
1407:             auipc        a2, 404510
                  bgeu         a6, a4, 1419f
                  bne          s1, t6, 1421f
                  sub          s7, s4, s8
                  bgeu         s6, tp, 1416f
                  ori          t1, t1, 1789
                  lui          s5, 1042153
                  blt          t5, t2, 1425f
                  lui          s0, 347683
1416:             slt          s0, t4, a4
                  andi         s6, s11, -1821
                  srli         t6, t6, 4
1419:             slt          a5, t3, s11
                  slt          s0, s9, s4
1421:             beq          tp, s5, 1422f
1422:             and          t4, s3, a5
                  and          a5, zero, a7
                  sub          a5, gp, a4
1425:             xor          a0, a6, a5
                  sltiu        t3, t3, -1744
                  addi         s7, s0, 1809
                  and          s2, s9, a2
                  srli         a2, s11, 18
                  sltiu        s7, s4, 1220
                  srli         t0, s4, 1
                  andi         s2, s3, -1402
                  slli         a6, tp, 7
                  sll          a5, ra, t5
                  slli         a5, a2, 3
                  srli         s4, a2, 31
                  or           s11, t3, s2
                  srl          t0, s3, a2
                  nop
                  andi         s4, t6, 891
                  ori          ra, t5, 1634
                  sub          s8, tp, t1
                  nop
                  sll          t2, s1, t5
                  or           zero, t0, s4
                  add          a0, s7, s3
                  srai         a6, a7, 28
                  lui          s7, 632709
                  slti         s5, s5, -954
                  auipc        s5, 780309
                  lui          s2, 742040
                  andi         s1, zero, 1806
                  lui          s2, 105882
                  addi         s0, t2, -433
                  slt          t3, a5, s8
                  nop
                  slli         ra, a4, 9
                  xor          a4, s0, s10
                  lui          t2, 360093
                  bgeu         t3, a4, 1476f
                  srai         a5, t2, 30
                  sll          s7, ra, a3
                  slt          a5, s0, a7
                  beq          a3, s2, 1472f
                  sll          s5, a4, s11
                  sltu         t5, tp, t4
                  sub          a4, sp, s10
                  slt          sp, t4, a2
                  auipc        s6, 317336
                  ori          t6, s3, -1162
                  slt          gp, s8, tp
1472:             srl          t0, a3, t1
                  sra          s1, sp, s4
                  bltu         s6, a6, 1483f
                  auipc        ra, 32344
1476:             bge          t2, s1, 1485f
                  srai         a3, a1, 29
                  xori         a2, s2, -715
                  blt          t1, s2, 1489f
                  slt          t0, t0, s2
                  sra          t4, t5, s6
                  and          s11, a5, a7
1483:             nop
                  sltiu        a1, tp, -741
1485:             and          s6, a7, a3
                  srl          s7, s2, s0
                  slt          t2, s6, a7
                  nop
1489:             sub          s11, s2, a2
                  xor          a3, t2, s8
                  sub          s2, s8, s10
                  auipc        ra, 343063
                  slli         s0, a5, 11
                  ori          a0, t2, 370
                  srl          s2, s7, t0
                  sltiu        t1, s10, -1824
                  slli         a2, s5, 0
                  slti         s2, s0, -565
                  sra          s6, sp, a2
                  bne          a4, a1, 1504f
                  beq          ra, s1, 1520f
                  xori         s1, s5, 1884
                  sra          a5, a2, a6
1504:             bge          t6, s1, 1509f
                  nop
                  nop
                  beq          s8, t5, 1512f
                  sll          gp, a4, s8
1509:             bltu         s4, t5, 1525f
                  bltu         s11, a3, 1521f
                  slli         a4, s3, 9
1512:             beq          zero, a5, 1527f
                  nop
                  lui          gp, 1019896
                  nop
                  sra          t4, a2, a3
sub_4_8:          jal          sp, 7f
0:                jal          ra, 9f
1:                jal          t1, 2f
2:                jal          ra, 6f
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          ra, 1b
6:                jal          ra, 11f
7:                jal          s2, 0b
8:                jal          a6, 4b
9:                jal          t1, 8b
10:               jal          ra, 5b
11:               sub          a0, s3, s11
                  lui          s3, 805399
                  beq          tp, a6, 1522f
                  sltiu        sp, s0, -677
1520:             xor          a2, a0, s1
1521:             ori          s3, s2, 48
1522:             xori         t5, s5, 1009
                  sltu         a3, s6, t2
                  slt          a4, zero, a6
1525:             sll          s2, gp, a4
                  sra          s11, tp, s1
1527:             bgeu         s7, s3, 1534f
                  slli         s6, a4, 5
                  srai         s3, t2, 31
                  beq          a1, s0, 1545f
                  auipc        t5, 956011
                  srli         sp, t2, 22
                  slt          s9, s9, t0
1534:             lui          s8, 122910
                  slti         sp, s3, -265
                  slli         zero, gp, 21
                  lui          s11, 396928
                  bge          a1, s2, 1556f
                  bgeu         s0, t5, 1546f
                  ori          a0, a0, 302
                  addi         a0, s7, 499
                  bltu         tp, t2, 1553f
                  sra          s3, a5, s6
                  lui          a6, 369168
1545:             and          s8, zero, a0
1546:             slti         s9, s1, 1400
                  bgeu         t3, s7, 1558f
                  sra          sp, sp, t6
                  sub          s4, a3, t1
                  xori         s5, s6, -181
                  srl          s5, t4, s4
                  sll          s11, a4, t4
1553:             xor          a0, a4, t6
                  slti         t3, t3, 338
                  beq          a3, s7, 1564f
1556:             bgeu         s3, t4, 1567f
                  addi         t1, t4, 40
1558:             slli         s3, t1, 12
                  nop
                  sltu         s8, s2, tp
                  add          t4, s8, t5
                  beq          s5, t2, 1570f
                  bne          s2, gp, 1566f
1564:             bltu         s0, s0, 1581f
                  sltiu        a1, gp, 282
1566:             srli         t4, s4, 19
1567:             slti         a3, tp, -980
                  sra          s3, sp, s7
                  srai         t4, a7, 16
1570:             srli         s9, s4, 23
                  bltu         a0, s1, 1576f
                  andi         gp, a0, 823
                  lui          a0, 536498
                  xor          t2, a1, t3
                  blt          s10, t5, 1586f
1576:             srai         a4, ra, 8
                  add          s3, s8, s6
                  xori         a1, s0, -1060
                  ori          gp, t0, 1578
                  ori          a3, tp, 1099
1581:             bltu         t3, a4, 1592f
                  srai         s9, a4, 11
                  ori          t4, s9, -348
                  sll          t2, s10, a5
                  blt          a3, s7, 1596f
1586:             nop
                  blt          a4, a3, 1590f
                  sll          a4, a5, a7
                  sub          zero, a4, t2
1590:             auipc        t6, 545078
                  auipc        ra, 279156
1592:             add          a6, t6, t0
                  sra          a3, a7, gp
                  addi         s9, a4, 1623
                  srai         a4, a6, 23
1596:             add          s8, a7, t5
                  bltu         a0, t1, 1612f
                  xori         t1, s3, 970
                  sll          s2, s11, s7
                  bge          zero, s11, 1616f
                  or           s11, a2, t3
                  nop
                  bltu         s5, a2, 1605f
                  sll          t3, s0, s4
1605:             bgeu         s2, a4, 1613f
                  xori         t0, sp, 715
                  add          s3, ra, s2
                  blt          a7, s2, 1616f
                  srai         s7, a3, 12
                  nop
                  sra          a6, ra, t2
1612:             sll          t6, a6, a4
1613:             add          s9, s7, t3
                  sll          t0, s2, s8
                  nop
1616:             nop
                  xor          ra, zero, s8
                  bge          s2, a5, 1627f
                  srl          a6, a2, s11
                  srl          a4, s5, a7
                  sra          a5, t2, s9
                  slt          a4, s5, a3
                  xor          s11, tp, s8
                  addi         a2, a0, -1352
                  bge          a7, t5, 1626f
1626:             auipc        s2, 28241
1627:             slt          a4, s2, tp
                  sra          t6, s9, gp
                  sltiu        t1, s7, -1656
                  srai         s5, a1, 1
                  bne          t5, t4, 1636f
                  lui          s8, 397214
                  srai         a0, s3, 28
                  sub          t1, a0, t3
                  add          s5, t2, s10
1636:             sltiu        s6, s1, -10
                  lui          t3, 145718
                  bgeu         t3, s6, 1657f
                  auipc        s4, 407931
                  and          s2, s7, s2
                  sub          a3, t2, s2
                  bge          a7, gp, 1646f
                  slt          s1, gp, a1
                  blt          a2, a5, 1648f
                  sra          t4, s7, sp
1646:             addi         s6, s2, 1740
                  and          a6, a1, s4
1648:             lui          gp, 20642
                  sltiu        s0, t0, 1964
                  and          t3, s3, gp
sub_4_31:         jal          sp, 0f
0:                jal          ra, 2f
1:                jal          s8, 8f
2:                jal          t3, 16f
3:                jal          ra, 5f
4:                jal          s0, 14f
5:                jal          ra, 1b
6:                jal          ra, 18f
7:                jal          t1, 6b
8:                jal          ra, 15f
9:                jal          ra, 4b
10:               jal          t1, 11f
11:               jal          sp, 9b
12:               jal          ra, 13f
13:               jal          ra, 10b
14:               jal          s4, 17f
15:               jal          ra, 19f
16:               jal          s11, 12b
17:               jal          sp, 7b
18:               jal          ra, 3b
19:               ori          ra, a1, -1826
                  ori          s5, zero, 338
                  sltu         zero, a5, a1
                  srli         t2, s10, 18
                  srl          s11, t4, ra
                  lui          t3, 1047396
                  sltu         a1, s0, s10
1657:             bne          sp, t0, 1668f
                  srl          a4, a6, a6
                  srl          s11, s0, s6
sub_4_18:         jal          sp, 14f
0:                jal          ra, 20f
1:                jal          ra, 22f
2:                jal          gp, 9f
3:                jal          s0, 10f
4:                jal          ra, 21f
5:                jal          ra, 11f
6:                jal          t0, 24f
7:                jal          ra, 1b
8:                jal          s11, 0b
9:                jal          t1, 13f
10:               jal          ra, 16f
11:               jal          t0, 12f
12:               jal          ra, 19f
13:               jal          sp, 23f
14:               jal          ra, 2b
15:               jal          t1, 17f
16:               jal          ra, 8b
17:               jal          ra, 4b
18:               jal          ra, 25f
19:               jal          t1, 18b
20:               jal          ra, 7b
21:               jal          ra, 5b
22:               jal          ra, 15b
23:               jal          ra, 6b
24:               jal          t2, 3b
25:               jal          t2, 26f
26:               sll          s9, t1, s5
                  or           a5, s6, s4
                  sll          s3, t6, s2
                  auipc        t2, 369171
                  bgeu         tp, a3, 1668f
                  srai         s0, t2, 28
                  nop
                  srli         s1, t3, 9
                  ori          t4, tp, -771
1668:             sltu         s8, tp, t3
                  slti         s7, t1, -919
                  or           t6, a7, s5
                  srli         t6, s5, 2
                  sltiu        s4, a4, 1695
                  sll          s0, s7, t3
                  bge          a1, s11, 1692f
                  nop
                  bne          gp, sp, 1687f
                  auipc        s11, 156725
                  nop
                  srli         t3, tp, 15
                  sub          s7, s7, s4
                  or           a4, s7, a2
                  ori          t1, s6, -1933
                  srli         gp, gp, 31
                  andi         a5, a5, -1517
                  xor          a3, t0, s4
                  blt          s11, s11, 1701f
1687:             blt          a3, gp, 1697f
                  bne          s3, s9, 1704f
                  srl          zero, tp, t1
                  and          sp, a6, a6
                  bltu         t6, zero, 1698f
1692:             blt          s7, a2, 1709f
                  auipc        t6, 790347
                  srl          zero, s8, s5
                  xori         a4, gp, -293
                  sltiu        a6, t2, -1021
1697:             bne          tp, s4, 1708f
1698:             srai         ra, tp, 25
                  sub          sp, t6, ra
                  blt          t4, a2, 1709f
1701:             bge          s1, a0, 1713f
                  auipc        t0, 213965
                  xori         t5, a6, -1908
1704:             sub          t5, t6, s7
                  sra          a5, ra, tp
                  sltu         s0, zero, t6
                  srai         s1, s3, 23
1708:             xor          s6, s6, s0
1709:             sltu         s2, t5, s8
                  xori         t2, s6, 621
                  sub          a3, t3, t6
                  and          s7, t4, a0
1713:             srli         s7, a1, 12
                  sll          s1, zero, s6
                  sub          t1, ra, s7
                  bltu         s6, s7, 1722f
                  add          s7, t0, a2
                  ori          s2, s2, -958
                  lui          a1, 959509
                  sub          a1, t2, a3
                  sll          s3, a3, tp
1722:             sltu         a3, a2, zero
                  lw           sp, 4(tp)
                  srl          s0, s5, a6
                  sltiu        s11, s8, -967
                  slli         a5, t0, 0
                  xori         a6, s1, -70
                  lui          s7, 523400
                  addi         tp, tp, 8
                  sltu         s9, t5, s6
                  slt          a0, zero, s4
2493:             addi x25, x2, 1
2493:             jalr x25, x25, 0
sub_2:            bltu         s9, t0, sub_2_stack_p
                  sub          a1, s10, s11
sub_2_stack_p:    addi         tp, tp, -24
                  and          a1, a6, s11
                  sll          s1, t5, tp
                  ori          s6, a5, -1142
                  srai         t1, a6, 10
                  sw           sp, 4(tp)
                  and          t0, tp, t6
                  la           t0, sub_4
                  addi         t3, a6, 1709
                  addi         a6, sp, 1076
                  addi         t0, t0, -471
                  blt          a0, a6, sub_2_j5 #branch to jump instr
                  sltiu        s0, s1, 1326
                  sub          a5, zero, a4
                  slti         s5, s1, 1713
sub_2_j5:         jalr         sp, t0, 471 #jump sub_2 -> sub_4
                  slli         t5, s10, 5
                  slti         s11, s11, -1058
                  srl          t0, s1, sp
                  ori          t3, ra, 1194
                  add          gp, a7, a6
                  sltu         s6, s0, a6
                  nop
                  sltu         s0, s4, s5
                  slti         t0, t0, -1654
                  or           zero, s1, s10
                  lw           sp, 4(tp)
                  addi         tp, tp, 24
                  ori          s7, s3, -1715
                  srai         a0, t1, 2
                  ori          t0, a0, -1284
                  xori         a4, ra, 761
                  add          a3, a7, zero
                  sra          a6, a4, a1
36:               addi x25, x2, 0
36:               jalr x25, x25, 0
sub_5:            or           a2, s2, s10
                  sltu         a0, s0, t5
                  addi         tp, tp, -20
                  xor          s6, t5, s2
                  slt          t4, sp, a2
                  sll          a0, a5, s10
                  slt          a6, sp, a3
                  addi         a5, t5, 39
                  srli         a1, t6, 14
                  srli         t2, s5, 12
                  sw           sp, 4(tp)
                  srli         zero, a4, 5
sub_5_0:          jal          sp, 14f
0:                jal          ra, 6f
1:                jal          ra, 18f
2:                jal          ra, 19f
3:                jal          s0, 15f
4:                jal          s8, 20f
5:                jal          a5, 1b
6:                jal          s6, 5b
7:                jal          s0, 2b
8:                jal          t1, 11f
9:                jal          t5, 16f
10:               jal          ra, 23f
11:               jal          t1, 12f
12:               jal          ra, 17f
13:               jal          ra, 9b
14:               jal          ra, 24f
15:               jal          ra, 25f
16:               jal          ra, 0b
17:               jal          sp, 22f
18:               jal          ra, 7b
19:               jal          t1, 21f
20:               jal          t1, 13b
21:               jal          t1, 3b
22:               jal          t0, 10b
23:               jal          ra, 4b
24:               jal          s4, 8b
25:               nop
                  sra          t1, sp, s4
                  bltu         s2, a6, 7f
                  nop
                  lui          s6, 907270
                  bltu         t5, a0, 22f
                  bge          ra, sp, 12f
                  slt          s1, s3, t4
7:                sub          a2, a5, a7
                  and          a3, t5, s7
                  slt          t5, s2, t2
                  auipc        s1, 903250
                  slt          t2, a4, t6
12:               slt          a5, t0, a7
                  ori          s9, t4, 244
                  slt          t3, a2, s10
                  lui          s0, 245401
                  add          s11, s6, tp
                  lui          s4, 613723
                  srli         t2, a6, 10
                  sltiu        s3, a3, 1547
                  xor          a3, s11, s0
                  add          a6, s2, t4
22:               ori          s2, t2, 721
                  bge          t6, s5, 33f
                  sra          a3, s0, a1
                  beq          t6, s0, 28f
                  sub          t3, s4, ra
                  bne          s11, t3, 37f
28:               add          s4, gp, t1
                  or           a1, t6, a4
                  sub          s7, gp, gp
                  and          s5, sp, s8
                  bltu         t2, t2, 50f
33:               sll          s4, a7, t4
                  sltu         t6, a5, a6
                  ori          a4, s6, 1179
                  addi         a3, s5, 590
37:               xor          t0, s2, a1
                  xori         s5, tp, -1169
                  beq          t0, a0, 44f
                  sub          s2, zero, sp
                  srai         s9, gp, 28
                  auipc        t4, 376962
                  srli         s6, s0, 19
44:               add          s0, t5, s0
                  bge          s3, a6, 60f
                  srli         gp, t4, 6
                  bgeu         s7, sp, 51f
                  auipc        gp, 806613
                  bgeu         s3, a7, 59f
50:               bltu         t1, s4, 59f
51:               xori         sp, s4, -18
                  srli         s3, s1, 15
                  bgeu         t3, s4, 61f
                  lui          t0, 431032
                  bltu         t0, a4, 64f
                  bgeu         t2, t3, 58f
                  sll          sp, s6, s11
58:               sll          a2, s7, s8
59:               bgeu         s1, t4, 64f
60:               auipc        a4, 401327
61:               sll          t5, a6, s11
                  sub          t4, s1, s9
                  addi         sp, a1, 556
64:               and          s4, s9, s1
                  lw           sp, 4(tp)
                  srai         a1, t6, 18
                  slti         t2, a6, 719
                  auipc        a3, 876505
                  addi         tp, tp, 20
                  xor          s2, s6, zero
110:              addi x10, x2, 1
110:              jalr x10, x10, 0
sub_1:            slli         s8, s3, 21
                  addi         tp, tp, -52
                  sll          a1, t2, t0
                  sw           sp, 4(tp)
                  sll          t4, s0, t0
                  la           s2, sub_4
                  sra          s5, s11, t6
                  or           s3, t4, t1
                  addi         s2, s2, 499
                  xori         a0, gp, -1833
                  xor          zero, s8, a7
                  xori         t2, gp, -25
                  or           t0, s3, s3
                  bgeu         s9, s5, sub_1_j3 #branch to jump instr
                  lui          a6, 551758
sub_1_j3:         jalr         sp, s2, -498 #jump sub_1 -> sub_4
                  srai         s0, s10, 7
                  bne          a4, tp, sub_1_j4 #branch to jump instr
                  slt          t6, s3, s7
                  and          s5, s5, s2
                  sltu         s11, ra, t3
                  addi         s8, t5, 1877
                  sltu         t2, t5, s9
                  sltu         ra, zero, t5
sub_1_j4:         jal          sp, sub_3 #jump sub_1 -> sub_3
                  sltu         a5, s10, t5
                  sra          s6, t6, a4
                  or           a6, t1, s3
                  sltiu        s7, sp, -1885
                  slti         s8, t2, -1426
                  addi         zero, t3, 1007
                  srl          s4, t4, s10
                  bgeu         a4, t6, 23f
                  and          s6, a6, zero
                  lui          s2, 47330
                  ori          sp, s4, -22
                  sll          t2, s11, zero
                  bge          t2, s0, 22f
                  add          a4, ra, a2
                  bne          a2, a0, 19f
                  blt          s4, gp, 20f
                  nop
                  sltu         t5, t4, a1
                  sll          t5, a2, t0
19:               ori          a1, gp, 709
20:               ori          t0, a7, 1278
                  ori          zero, s7, -1130
22:               sltu         s3, t5, a1
23:               lui          a0, 101794
                  blt          a2, t1, 33f
                  bgeu         s0, a5, 42f
                  bgeu         t4, a2, 36f
                  add          s6, s3, t1
                  and          a4, t3, tp
                  sltiu        s9, t0, -1269
                  blt          a5, t4, 43f
                  srli         s5, a3, 14
                  lui          s5, 166311
33:               slli         s6, s10, 18
                  sltiu        a4, s6, 1867
                  or           sp, tp, s1
36:               ori          sp, sp, -363
                  nop
                  bge          a4, a4, 43f
                  bgeu         s4, s2, 43f
                  sub          s4, t4, s6
                  add          s5, s9, t5
42:               xor          t3, t2, t3
43:               srli         zero, a0, 3
                  xori         gp, s1, 1542
                  lw           sp, 4(tp)
                  xor          a5, gp, t3
                  ori          s5, a4, 1050
                  addi         tp, tp, 52
                  lui          s0, 77953
75:               addi x8, x2, 1
75:               jalr x8, x8, 0
sub_3:            addi         tp, tp, -12
                  add          s9, t4, s6
                  slti         a5, s1, -1905
                  sw           sp, 4(tp)
                  sltu         a0, t6, tp
                  slti         t4, s8, -502
                  la           a1, sub_5
                  sll          a3, s6, sp
                  addi         a1, a1, -252
                  srli         t5, a5, 12
                  and          s7, t6, s0
                  slti         s2, s11, 1272
                  add          a0, zero, s4
sub_3_j6:         jalr         sp, a1, 252 #jump sub_3 -> sub_5
                  slti         t2, s11, 1556
                  sltiu        s2, t5, 423
                  auipc        a0, 286897
                  slli         t0, s4, 5
                  bge          sp, a3, 9f
                  lui          sp, 543216
                  sll          s6, s5, s3
                  bltu         s4, s5, 11f
                  ori          sp, a2, 1125
9:                ori          s11, s11, -255
                  srai         t1, t6, 16
11:               bltu         zero, s11, 17f
                  bne          t3, s2, 22f
                  and          t4, s1, a0
                  srai         zero, s0, 16
                  bltu         a0, s7, 21f
                  add          s11, s4, s2
17:               bne          s0, t4, 20f
                  beq          t0, a5, 34f
                  lui          zero, 264026
20:               slt          s1, gp, s6
21:               auipc        t2, 739608
22:               sll          sp, s7, t0
                  xori         a2, t2, -1104
                  and          a1, a3, gp
                  xori         s7, t0, -415
                  or           a3, gp, a4
                  or           a0, gp, s9
                  sll          sp, s8, t2
                  and          s2, ra, a0
                  nop
                  andi         s7, a4, -187
                  nop
                  bne          s6, t5, 37f
34:               bgeu         ra, s5, 37f
                  and          a3, a1, a2
                  srai         s8, t2, 23
37:               or           s3, t6, sp
                  andi         a0, t5, 1998
                  sub          t5, s7, a5
                  xori         s4, sp, -374
                  lui          s3, 708289
                  lw           sp, 4(tp)
                  addi         a3, s4, -1222
                  srli         s7, s8, 18
                  xori         s2, t5, 978
                  slti         zero, zero, -1032
                  addi         tp, tp, 12
                  slt          a3, s6, a1
                  srl          t2, s5, a6
64:               addi x1, x2, 0
64:               jalr x1, x1, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x17, x4, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x14, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x14, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x14, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x14, x21, ecall_handler
                  li x21, 0x1
                  beq x14, x21, instr_fault_handler
                  li x21, 0x5
                  beq x14, x21, load_fault_handler
                  li x21, 0x7
                  beq x14, x21, store_fault_handler
                  li x21, 0xc
                  beq x14, x21, pt_fault_handler
                  li x21, 0xd
                  beq x14, x21, pt_fault_handler
                  li x21, 0xf
                  beq x14, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x4, x17, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x17, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x17, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x4, x17, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x4, x17, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x4, x17, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
