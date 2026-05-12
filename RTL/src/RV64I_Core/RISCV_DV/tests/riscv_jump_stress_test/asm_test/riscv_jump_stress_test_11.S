.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x1a681986
                  li x1, 0x80000000
                  li x2, 0xb
                  li x3, 0x6dbcdc66
                  li x4, 0x2b37bfb2
                  li x6, 0x80000000
                  li x7, 0x142669af
                  li x8, 0x7936908d
                  li x10, 0xf2370c16
                  li x11, 0x2
                  li x12, 0x1
                  li x13, 0x80000000
                  li x14, 0x4
                  li x15, 0xfb6748d0
                  li x16, 0x5
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x8abf101c
                  li x21, 0x6
                  li x22, 0x436accd4
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xc
                  li x26, 0xd60a8748
                  li x27, 0x93e4d9cd
                  li x28, 0x3
                  li x29, 0x6eb5f609
                  li x30, 0x0
                  li x31, 0x3
                  la x9, user_stack_end
main:             jal          ra, 8f
0:                jal          t1, 3f
1:                jal          ra, 9f
2:                jal          ra, 6f
3:                jal          t4, 12f
4:                jal          ra, 13f
5:                jal          a0, 11f
6:                jal          ra, 15f
7:                jal          ra, 0b
8:                jal          ra, 14f
9:                jal          ra, 2b
10:               jal          t1, 7b
11:               jal          t1, 1b
12:               jal          t1, 17f
13:               jal          ra, 18f
14:               jal          s10, 10b
15:               jal          ra, 16f
16:               jal          ra, 4b
17:               jal          ra, 5b
18:               addi         s8, s5, -1901
main_6:           jal          ra, 13f
0:                jal          t1, 5f
1:                jal          t1, 4f
2:                jal          t1, 6f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          s7, 2b
6:                jal          ra, 9f
7:                jal          sp, 3b
8:                jal          t1, 1b
9:                jal          t1, 8b
10:               jal          ra, 7b
11:               jal          ra, 10b
12:               jal          t1, 14f
13:               jal          t1, 11b
14:               slt          s11, s4, gp
main_26:          jal          ra, 22f
0:                jal          s6, 23f
1:                jal          sp, 25f
2:                jal          t4, 10f
3:                jal          ra, 2b
4:                jal          ra, 5f
5:                jal          ra, 20f
6:                jal          ra, 3b
7:                jal          gp, 13f
8:                jal          ra, 12f
9:                jal          ra, 8b
10:               jal          ra, 26f
11:               jal          ra, 0b
12:               jal          a0, 18f
13:               jal          ra, 15f
14:               jal          ra, 4b
15:               jal          ra, 21f
16:               jal          ra, 11b
17:               jal          t1, 19f
18:               jal          t2, 17b
19:               jal          sp, 14b
20:               jal          t1, 7b
21:               jal          ra, 24f
22:               jal          ra, 9b
23:               jal          t1, 1b
24:               jal          t2, 16b
25:               jal          t1, 6b
26:               and          s9, a7, t2
main_20:          jal          ra, 3f
0:                jal          ra, 1f
1:                jal          s8, 11f
2:                jal          a7, 0b
3:                jal          ra, 10f
4:                jal          a0, 9f
5:                jal          ra, 6f
6:                jal          a3, 7f
7:                jal          ra, 4b
8:                jal          ra, 5b
9:                jal          s8, 2b
10:               jal          sp, 8b
11:               addi         a7, a4, 1846
main_25:          jal          ra, 1f
0:                jal          ra, 16f
1:                jal          ra, 15f
2:                jal          t1, 17f
3:                jal          ra, 12f
4:                jal          ra, 0b
5:                jal          t1, 9f
6:                jal          ra, 14f
7:                jal          ra, 2b
8:                jal          ra, 11f
9:                jal          gp, 6b
10:               jal          ra, 4b
11:               jal          t4, 3b
12:               jal          t5, 10b
13:               jal          a5, 8b
14:               jal          ra, 18f
15:               jal          t1, 7b
16:               jal          gp, 5b
17:               jal          t3, 13b
18:               sltiu        t5, t4, -796
main_23:          jal          ra, 8f
0:                jal          ra, 2f
1:                jal          t4, 6f
2:                jal          t1, 10f
3:                jal          a0, 7f
4:                jal          ra, 9f
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          t1, 5b
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               sra          a4, a0, s9
main_7:           jal          ra, 5f
0:                jal          ra, 18f
1:                jal          s7, 3f
2:                jal          s0, 12f
3:                jal          t1, 6f
4:                jal          ra, 22f
5:                jal          gp, 21f
6:                jal          ra, 14f
7:                jal          ra, 15f
8:                jal          ra, 0b
9:                jal          ra, 20f
10:               jal          ra, 9b
11:               jal          s4, 16f
12:               jal          ra, 17f
13:               jal          t1, 1b
14:               jal          ra, 8b
15:               jal          ra, 13b
16:               jal          ra, 2b
17:               jal          gp, 10b
18:               jal          sp, 11b
19:               jal          t3, 7b
20:               jal          t1, 4b
21:               jal          ra, 19b
22:               add          t3, a2, t6
main_0:           jal          ra, 20f
0:                jal          a3, 2f
1:                jal          ra, 17f
2:                jal          t1, 8f
3:                jal          sp, 16f
4:                jal          ra, 6f
5:                jal          t1, 12f
6:                jal          t6, 5b
7:                jal          ra, 4b
8:                jal          ra, 22f
9:                jal          ra, 1b
10:               jal          ra, 13f
11:               jal          sp, 15f
12:               jal          s0, 0b
13:               jal          t1, 7b
14:               jal          ra, 9b
15:               jal          sp, 21f
16:               jal          ra, 23f
17:               jal          s8, 18f
18:               jal          t1, 3b
19:               jal          ra, 14b
20:               jal          ra, 10b
21:               jal          a1, 19b
22:               jal          ra, 11b
23:               xor          s4, s9, s9
main_4:           jal          ra, 0f
0:                jal          t1, 17f
1:                jal          sp, 12f
2:                jal          t1, 3f
3:                jal          ra, 9f
4:                jal          ra, 15f
5:                jal          sp, 19f
6:                jal          ra, 14f
7:                jal          t1, 8f
8:                jal          tp, 16f
9:                jal          ra, 25f
10:               jal          ra, 24f
11:               jal          t2, 22f
12:               jal          gp, 20f
13:               jal          ra, 4b
14:               jal          ra, 13b
15:               jal          ra, 18f
16:               jal          t1, 1b
17:               jal          ra, 5b
18:               jal          ra, 7b
19:               jal          ra, 21f
20:               jal          s5, 23f
21:               jal          t1, 6b
22:               jal          s4, 2b
23:               jal          a5, 10b
24:               jal          a3, 11b
25:               nop
main_24:          jal          ra, 0f
0:                jal          t1, 13f
1:                jal          ra, 4f
2:                jal          sp, 7f
3:                jal          ra, 5f
4:                jal          s11, 6f
5:                jal          ra, 2b
6:                jal          ra, 11f
7:                jal          t1, 10f
8:                jal          s7, 9f
9:                jal          t1, 12f
10:               jal          tp, 8b
11:               jal          gp, 3b
12:               jal          t2, 14f
13:               jal          t1, 1b
14:               slti         gp, a1, 1591
main_1:           jal          ra, 10f
0:                jal          ra, 3f
1:                jal          t5, 8f
2:                jal          ra, 26f
3:                jal          ra, 25f
4:                jal          ra, 15f
5:                jal          s6, 20f
6:                jal          t2, 5b
7:                jal          s8, 21f
8:                jal          t1, 22f
9:                jal          ra, 12f
10:               jal          ra, 14f
11:               jal          t1, 16f
12:               jal          ra, 0b
13:               jal          ra, 2b
14:               jal          s10, 23f
15:               jal          t1, 1b
16:               jal          ra, 13b
17:               jal          ra, 24f
18:               jal          ra, 28f
19:               jal          ra, 29f
20:               jal          a0, 18b
21:               jal          s8, 9b
22:               jal          ra, 27f
23:               jal          ra, 6b
24:               jal          gp, 4b
25:               jal          ra, 11b
26:               jal          ra, 19b
27:               jal          ra, 7b
28:               jal          ra, 17b
29:               or           t5, t3, a2
main_5:           jal          ra, 11f
0:                jal          t1, 23f
1:                jal          a5, 4f
2:                jal          ra, 13f
3:                jal          sp, 12f
4:                jal          ra, 6f
5:                jal          gp, 20f
6:                jal          ra, 14f
7:                jal          ra, 19f
8:                jal          s5, 18f
9:                jal          tp, 1b
10:               jal          ra, 9b
11:               jal          t1, 21f
12:               jal          ra, 2b
13:               jal          s11, 0b
14:               jal          a7, 22f
15:               jal          t1, 7b
16:               jal          ra, 3b
17:               jal          a3, 8b
18:               jal          ra, 10b
19:               jal          tp, 16b
20:               jal          t5, 17b
21:               jal          s7, 5b
22:               jal          ra, 15b
23:               srli         s7, s8, 14
main_8:           jal          ra, 8f
0:                jal          s7, 16f
1:                jal          t1, 18f
2:                jal          ra, 14f
3:                jal          t1, 10f
4:                jal          t1, 6f
5:                jal          ra, 0b
6:                jal          ra, 11f
7:                jal          ra, 3b
8:                jal          ra, 12f
9:                jal          ra, 19f
10:               jal          t1, 1b
11:               jal          ra, 17f
12:               jal          ra, 7b
13:               jal          ra, 5b
14:               jal          ra, 4b
15:               jal          t1, 9b
16:               jal          t1, 20f
17:               jal          s10, 13b
18:               jal          t1, 15b
19:               jal          t1, 2b
20:               jal          ra, 21f
21:               sub          s4, s5, t1
main_13:          jal          ra, 13f
0:                jal          ra, 23f
1:                jal          ra, 16f
2:                jal          ra, 14f
3:                jal          tp, 4f
4:                jal          a2, 2b
5:                jal          t1, 10f
6:                jal          gp, 5b
7:                jal          ra, 12f
8:                jal          sp, 20f
9:                jal          ra, 0b
10:               jal          t1, 22f
11:               jal          t1, 3b
12:               jal          t1, 15f
13:               jal          s0, 9b
14:               jal          ra, 1b
15:               jal          t1, 21f
16:               jal          ra, 24f
17:               jal          ra, 8b
18:               jal          ra, 11b
19:               jal          t1, 17b
20:               jal          t1, 7b
21:               jal          t1, 6b
22:               jal          ra, 18b
23:               jal          ra, 19b
24:               andi         s9, zero, -1397
main_10:          jal          ra, 14f
0:                jal          t1, 20f
1:                jal          ra, 13f
2:                jal          t1, 4f
3:                jal          ra, 11f
4:                jal          t4, 6f
5:                jal          gp, 18f
6:                jal          ra, 9f
7:                jal          t1, 12f
8:                jal          t1, 5b
9:                jal          sp, 8b
10:               jal          s4, 19f
11:               jal          t1, 15f
12:               jal          ra, 10b
13:               jal          gp, 16f
14:               jal          s8, 3b
15:               jal          ra, 1b
16:               jal          ra, 7b
17:               jal          ra, 0b
18:               jal          ra, 17b
19:               jal          gp, 2b
20:               addi         s8, a6, 1932
main_18:          jal          ra, 5f
0:                jal          ra, 23f
1:                jal          ra, 19f
2:                jal          ra, 25f
3:                jal          ra, 22f
4:                jal          ra, 24f
5:                jal          ra, 28f
6:                jal          s2, 9f
7:                jal          sp, 1b
8:                jal          ra, 4b
9:                jal          gp, 3b
10:               jal          ra, 14f
11:               jal          t1, 21f
12:               jal          ra, 2b
13:               jal          t1, 27f
14:               jal          t1, 0b
15:               jal          ra, 10b
16:               jal          t1, 26f
17:               jal          ra, 18f
18:               jal          ra, 8b
19:               jal          gp, 15b
20:               jal          s10, 7b
21:               jal          a3, 17b
22:               jal          s3, 20b
23:               jal          ra, 16b
24:               jal          ra, 12b
25:               jal          s8, 29f
26:               jal          s5, 11b
27:               jal          t1, 6b
28:               jal          ra, 13b
29:               xori         t2, s5, -755
main_17:          jal          ra, 18f
0:                jal          tp, 14f
1:                jal          t1, 17f
2:                jal          ra, 6f
3:                jal          t1, 16f
4:                jal          a4, 9f
5:                jal          ra, 0b
6:                jal          t1, 11f
7:                jal          a3, 1b
8:                jal          tp, 2b
9:                jal          ra, 12f
10:               jal          ra, 5b
11:               jal          ra, 13f
12:               jal          t1, 19f
13:               jal          a5, 20f
14:               jal          a1, 8b
15:               jal          ra, 4b
16:               jal          ra, 7b
17:               jal          ra, 10b
18:               jal          ra, 15b
19:               jal          ra, 3b
20:               jal          ra, 21f
21:               andi         s6, a3, -1092
main_19:          jal          ra, 9f
0:                jal          a7, 3f
1:                jal          a1, 5f
2:                jal          t1, 15f
3:                jal          ra, 12f
4:                jal          t5, 8f
5:                jal          ra, 4b
6:                jal          ra, 7f
7:                jal          t5, 17f
8:                jal          t1, 10f
9:                jal          sp, 14f
10:               jal          ra, 11f
11:               jal          a3, 6b
12:               jal          ra, 1b
13:               jal          t5, 16f
14:               jal          ra, 13b
15:               jal          ra, 0b
16:               jal          ra, 2b
17:               add          t1, t6, s9
main_2:           jal          ra, 4f
0:                jal          t1, 9f
1:                jal          t1, 8f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          t1, 6f
5:                jal          sp, 11f
6:                jal          sp, 10f
7:                jal          ra, 5b
8:                jal          ra, 2b
9:                jal          t1, 1b
10:               jal          ra, 0b
11:               srli         tp, t4, 20
main_15:          jal          ra, 6f
0:                jal          a1, 9f
1:                jal          ra, 10f
2:                jal          a1, 8f
3:                jal          t1, 1b
4:                jal          s11, 7f
5:                jal          t1, 0b
6:                jal          ra, 4b
7:                jal          t1, 5b
8:                jal          ra, 3b
9:                jal          t3, 2b
10:               nop
main_9:           jal          ra, 10f
0:                jal          ra, 13f
1:                jal          ra, 2f
2:                jal          sp, 7f
3:                jal          a4, 11f
4:                jal          ra, 8f
5:                jal          sp, 6f
6:                jal          ra, 9f
7:                jal          ra, 3b
8:                jal          ra, 15f
9:                jal          t2, 12f
10:               jal          ra, 1b
11:               jal          t1, 5b
12:               jal          s0, 14f
13:               jal          t1, 4b
14:               jal          s2, 0b
15:               ori          a3, t1, -1895
                  slti         t3, s6, -587
                  bgeu         t5, sp, 14f
                  srl          s4, a3, a3
                  auipc        a0, 89221
                  or           s0, sp, a0
                  addi         s2, s4, -1990
                  sltu         ra, ra, a1
                  bne          t1, s5, 8f
8:                beq          a6, tp, 27f
                  auipc        a4, 180975
                  nop
                  nop
                  sltiu        a7, t5, 2001
                  xor          a0, t6, t5
14:               bge          s6, gp, 34f
                  sra          t2, s0, a1
                  blt          gp, t2, 21f
                  nop
                  nop
                  xori         t6, s3, 1173
                  and          a0, s4, s8
21:               nop
                  bge          t2, a7, 27f
                  addi         t5, s7, 1080
                  lui          a2, 870103
                  bne          s0, s1, 31f
                  nop
27:               or           gp, sp, s8
                  addi         t2, zero, 1435
                  bltu         a4, t2, 36f
                  slt          a7, a0, t5
31:               auipc        ra, 870901
                  sra          s5, a0, sp
                  xor          s0, s0, s4
34:               bgeu         a5, zero, 39f
                  slli         s11, s0, 16
36:               bltu         s3, s9, 39f
                  xori         s6, s9, -524
                  beq          t5, t1, 49f
39:               sra          s11, s1, a1
                  bltu         s10, t2, 50f
                  srli         a1, s2, 31
                  bge          a2, a0, 50f
                  sltu         s0, s7, s5
                  bltu         s11, s4, 52f
                  sll          t2, s8, tp
                  srli         t2, a6, 17
                  ori          a3, s4, 147
                  bltu         s2, a1, 67f
49:               sub          t2, t6, s1
50:               xori         t2, s8, -533
                  bltu         t1, s9, 71f
52:               bge          s10, s0, 68f
                  blt          s3, s7, 54f
54:               and          t3, a1, a0
                  sra          t5, t5, s7
                  bltu         t6, a0, 74f
                  sll          ra, a3, s7
                  nop
                  addi         a1, t6, 1077
                  blt          a3, a5, 69f
                  srl          s0, a5, a6
                  add          s7, t2, s6
                  xori         s6, t1, 1125
                  srai         a3, t3, 0
                  or           t1, s7, a5
                  sltiu        s8, s6, -144
67:               beq          t5, t2, 78f
68:               srl          a4, t5, t4
69:               sll          a7, s5, a3
                  blt          s4, s8, 77f
71:               xor          t2, s10, zero
                  andi         s2, s3, 399
                  xori         s3, s2, 1591
74:               sltu         tp, t5, s9
                  or           s6, t4, a6
                  bge          a7, ra, 90f
77:               slli         ra, t0, 12
78:               srl          t3, t5, t5
                  addi         sp, gp, -714
                  bne          s0, a1, 89f
                  bge          t5, a1, 84f
                  bge          t4, t2, 90f
                  bltu         a5, sp, 98f
84:               srai         s8, t0, 18
                  xori         s7, s9, 1274
                  nop
                  and          t1, a2, s0
                  xori         a4, s11, -642
89:               slt          s6, a0, t4
90:               bgeu         a0, a6, 92f
                  sltu         t4, a5, s9
92:               bltu         s5, t1, 93f
93:               sra          t1, s7, a1
                  add          a3, t4, tp
                  sub          sp, t3, s4
                  sltu         s4, s0, a4
                  xori         t5, s5, -615
98:               addi         s6, a7, -292
                  andi         t5, s9, 1585
                  slti         s4, s0, -1000
                  or           s2, s5, tp
                  sll          t1, a7, t2
                  ori          gp, a6, -1851
                  slti         s4, t2, 1598
                  blt          ra, zero, 118f
                  sltiu        a1, sp, -396
                  bge          t2, a4, 112f
                  sltu         s4, s1, s9
                  lui          a5, 954104
                  ori          a1, ra, -925
                  slli         a3, s10, 16
112:              xori         t5, t2, -1843
                  sub          s5, a7, t0
                  nop
                  bne          t4, s0, 123f
                  srai         gp, s4, 5
                  nop
118:              slt          s5, t0, s1
                  sltu         a4, t6, a0
                  sra          sp, s5, t4
                  sltiu        t3, s11, -1743
                  auipc        a3, 854313
123:              auipc        s8, 676016
                  slt          t5, s8, a5
                  auipc        s7, 62523
                  srl          a4, a6, gp
                  bge          a7, s7, 137f
                  bgeu         t5, gp, 148f
                  andi         a4, a5, 358
                  srli         a3, t2, 13
                  srai         a2, a4, 3
                  srli         t2, s5, 17
                  or           s2, t2, s9
                  xori         t3, t3, 1211
                  ori          ra, t0, -1898
                  or           s6, zero, s0
137:              and          a0, s7, s8
                  slti         s6, s5, -2011
                  bltu         ra, s5, 140f
140:              srl          t2, a5, s3
                  or           t4, zero, t4
                  srli         sp, t1, 17
                  slli         t5, s9, 29
                  addi         a7, a5, -800
                  add          s2, t0, s1
                  sltu         t6, a0, s1
                  and          s3, s10, gp
148:              srl          s3, gp, s4
                  bge          s3, s10, 162f
                  sltu         s0, s3, gp
                  auipc        t4, 407189
                  lui          s6, 657473
                  slt          s11, s10, a7
                  add          s4, a7, ra
                  sll          t4, gp, zero
                  sub          s4, s6, a5
                  bgeu         t6, a7, 166f
                  slli         a1, t4, 4
                  sub          ra, a2, a4
                  sltiu        zero, tp, 636
                  bltu         s9, s6, 164f
main_16:          jal          ra, 4f
0:                jal          t3, 7f
1:                jal          ra, 9f
2:                jal          ra, 12f
3:                jal          s10, 11f
4:                jal          ra, 0b
5:                jal          gp, 1b
6:                jal          ra, 10f
7:                jal          t1, 3b
8:                jal          gp, 2b
9:                jal          sp, 6b
10:               jal          s9, 8b
11:               jal          tp, 5b
12:               sltiu        a0, a3, -1760
162:              or           s9, s1, s1
                  srli         a0, t1, 17
164:              sltiu        s7, s10, 1761
                  xor          zero, s6, a2
166:              bne          s3, a5, 171f
                  bltu         s9, a2, 178f
                  auipc        s5, 1021806
                  slli         s2, a6, 21
                  xori         s5, sp, 159
171:              beq          t4, s3, 174f
                  bltu         tp, s7, 188f
                  srl          s9, ra, s1
174:              sra          a5, t2, s7
                  add          sp, t0, s3
                  bgeu         s7, t6, 178f
                  bge          t3, t2, 195f
178:              andi         gp, a5, 390
                  xori         a5, t4, 1716
                  add          a2, s8, t5
                  nop
                  lui          t4, 997842
                  auipc        t1, 801652
                  srli         s7, zero, 22
                  nop
main_22:          jal          ra, 4f
0:                jal          ra, 1f
1:                jal          ra, 2f
2:                jal          ra, 10f
3:                jal          s0, 6f
4:                jal          a2, 0b
5:                jal          t1, 3b
6:                jal          ra, 16f
7:                jal          ra, 14f
8:                jal          ra, 7b
9:                jal          ra, 11f
10:               jal          t1, 13f
11:               jal          sp, 8b
12:               jal          ra, 15f
13:               jal          a4, 12b
14:               jal          t5, 5b
15:               jal          ra, 9b
16:               sltiu        a4, t5, 1963
                  xor          s7, s1, t3
                  bne          a2, a0, 207f
188:              sltu         t4, a7, t3
                  and          t2, s3, t5
                  bltu         s10, a7, 201f
                  auipc        s3, 314528
                  bltu         a5, t1, 197f
                  sra          tp, a7, a0
                  addi         s0, t3, 459
195:              nop
                  sltu         s4, tp, t3
197:              sub          s10, s9, t2
                  slti         a5, a7, 101
                  sub          a0, ra, s2
                  or           t5, a6, a0
201:              blt          a3, s3, 202f
202:              ori          s5, s6, -1102
                  or           s4, s6, a5
                  blt          s7, zero, 211f
                  beq          a0, a2, 206f
206:              ori          t3, s6, -1672
207:              and          s5, tp, s7
                  or           s10, s5, t5
                  bge          a2, zero, 217f
                  add          ra, t3, s5
211:              or           zero, s3, sp
                  blt          t0, sp, 225f
                  sub          s6, s7, s2
                  bgeu         t5, s9, 220f
                  slt          s9, t0, ra
                  add          t1, a3, t3
217:              sub          s8, a5, t6
                  srai         t1, s8, 20
                  sltu         tp, t3, zero
220:              beq          zero, t3, 239f
                  addi         s7, a5, -873
                  sub          t3, a1, tp
                  lui          ra, 231816
                  sub          tp, s11, a2
225:              add          s3, t0, s6
                  sll          a5, s7, a5
                  ori          gp, tp, 221
                  lui          s6, 543038
                  sltiu        a0, a3, 1941
                  beq          s11, s11, 239f
                  xori         s9, a1, -1734
                  blt          tp, s9, 251f
                  addi         s7, s4, -417
                  bne          gp, t5, 248f
                  bge          t4, s9, 242f
                  nop
                  addi         s7, s0, 910
                  xori         t2, a7, -1465
239:              ori          s0, a6, -606
                  bgeu         tp, s8, 248f
                  sltu         a7, gp, t4
242:              bge          a0, t0, 257f
                  sltiu        s3, s1, 1125
                  sub          s10, s6, a3
                  bne          a3, s5, 264f
                  sltu         t6, a2, a5
                  xori         a2, s0, -301
248:              and          a7, a2, t0
                  beq          s0, t2, 250f
250:              xori         s10, s0, 1198
251:              sltu         s3, t1, s11
                  slli         sp, t6, 18
                  sltiu        a4, a6, 1534
                  sll          gp, s1, t2
                  sub          a3, s6, s7
                  sltiu        t4, s0, 1176
257:              sltu         a0, t4, t4
                  bge          a4, t4, 267f
                  slti         s0, t4, 1735
                  andi         a1, s8, -478
                  sltiu        t3, s2, -1201
                  addi         t5, t3, 694
                  bltu         s10, t2, 282f
264:              srai         t6, a4, 14
                  blt          s7, a0, 281f
                  and          t4, t6, a0
267:              sltu         tp, zero, s0
                  add          s0, a1, s4
                  bltu         a2, t0, 277f
                  sll          a5, t3, a6
                  add          a4, s5, t3
                  auipc        s0, 689720
                  addi         t1, a2, -1711
                  auipc        s10, 575407
                  bgeu         a4, a3, 289f
                  slti         a1, t2, -16
                  addi         s2, t0, -1197
                  la           t1, sub_1
                  lui          a1, 233986
                  sltu         s5, s11, t1
                  addi         t1, t1, 986
                  xori         s8, t3, -1977
main_j2:          jalr         ra, t1, -985 #jump main -> sub_1
                  srli         s7, a6, 21
277:              sll          s3, tp, t3
                  andi         a2, s3, -970
                  slli         s9, a5, 1
                  sll          s10, s8, sp
281:              nop
282:              sltiu        s8, s6, -971
                  blt          zero, s7, 294f
                  sll          s6, tp, a6
                  slli         tp, t6, 5
                  addi         t5, tp, -682
                  sra          gp, a5, a5
                  add          s5, tp, ra
289:              sra          a1, a2, s7
                  bge          s4, t5, 297f
                  srai         tp, t2, 6
                  srli         a1, s4, 31
                  bne          s2, a7, 308f
294:              bltu         t2, a7, 299f
                  srl          a2, s11, a1
                  beq          s0, s2, 301f
297:              sra          s0, t4, s3
                  nop
299:              bge          s2, s7, 307f
                  slt          zero, s1, s4
301:              auipc        s6, 952398
                  sltiu        a4, s10, 172
                  and          t2, s3, ra
                  andi         t1, sp, 285
                  add          t3, a3, sp
                  slt          ra, a0, a7
307:              nop
308:              slti         s11, t1, -153
                  sltu         s5, a0, ra
                  sub          a7, s3, s10
                  bgeu         tp, a6, 314f
                  sra          s4, t4, s1
                  slti         zero, s6, 181
314:              beq          a5, a6, 334f
                  sub          s3, a3, s5
                  sltiu        a4, s3, 690
                  ori          s11, sp, -352
                  lui          s0, 751461
                  bne          s1, t1, 329f
                  bne          s5, s0, 323f
                  beq          zero, s9, 330f
                  bne          a1, s7, 327f
323:              or           t4, t5, t5
                  addi         s11, sp, 1638
                  blt          t3, a1, 338f
                  xor          t4, zero, s4
327:              ori          sp, s2, -507
                  srl          a5, ra, a6
329:              add          t6, s9, s6
330:              andi         a5, t5, -488
                  or           s11, s8, a3
                  slli         a0, s8, 8
main_21:          jal          ra, 7f
0:                jal          ra, 14f
1:                jal          t4, 9f
2:                jal          ra, 18f
3:                jal          ra, 4f
4:                jal          gp, 13f
5:                jal          t1, 2b
6:                jal          ra, 15f
7:                jal          ra, 12f
8:                jal          t1, 25f
9:                jal          ra, 26f
10:               jal          t1, 22f
11:               jal          t1, 8b
12:               jal          t1, 24f
13:               jal          ra, 17f
14:               jal          t1, 1b
15:               jal          s3, 3b
16:               jal          ra, 21f
17:               jal          a3, 19f
18:               jal          t3, 20f
19:               jal          tp, 23f
20:               jal          ra, 0b
21:               jal          s3, 10b
22:               jal          s5, 5b
23:               jal          s11, 11b
24:               jal          t1, 6b
25:               jal          ra, 16b
26:               slti         s4, a5, -490
                  sub          t2, s10, a5
334:              bgeu         s2, s11, 335f
335:              xor          t6, s5, a3
                  add          a3, ra, a4
                  srai         t1, s5, 3
338:              blt          s5, a2, 351f
                  sltiu        s2, a7, 288
                  sltu         t2, s9, a1
                  bge          t5, s8, 348f
                  addi         t3, s0, -1687
                  bltu         ra, ra, 349f
                  slti         s8, s8, -64
                  lui          a0, 553033
                  beq          s9, a5, 357f
                  sra          s7, s6, gp
348:              addi         sp, s1, -1204
349:              and          s8, s8, s0
                  slli         s9, a1, 8
351:              sub          s2, s7, s2
                  xori         s0, s9, -2035
                  addi         t1, t3, 1488
                  sra          s6, sp, s8
                  or           t4, ra, s2
                  lui          ra, 804494
357:              bge          t0, t4, 359f
                  bge          s11, t5, 376f
359:              slti         sp, a3, -874
                  bge          a2, t5, 368f
                  slli         a1, s9, 8
                  srai         s7, s3, 18
                  srai         a1, a6, 22
                  addi         s3, s8, 1078
                  sltiu        t3, sp, -59
                  sltiu        a3, a7, -1008
                  slt          a5, a4, s6
368:              and          s4, a0, s5
                  beq          tp, a4, 370f
370:              or           t3, a0, a7
                  or           a1, a3, t6
                  or           s0, s2, tp
                  andi         zero, t6, 140
                  blt          a2, s7, 394f
                  lui          s3, 199987
376:              lui          s8, 90935
                  xor          zero, gp, a0
                  beq          t2, tp, 398f
                  sub          s10, t6, a4
                  sub          ra, a7, t3
                  sra          t6, t6, s8
                  ori          s5, s8, 325
                  bne          a5, s10, 396f
                  srli         s7, s10, 12
                  auipc        ra, 57667
                  andi         a5, s11, 1324
                  sra          a1, a5, t3
                  and          a1, a3, a1
                  sra          gp, t0, s10
                  sra          s9, a7, t1
                  nop
                  slti         s2, a2, -853
                  blt          a3, s7, 402f
394:              slt          t2, sp, t0
                  beq          gp, tp, 403f
396:              sra          a3, s8, t4
                  xor          a1, s5, s5
398:              slli         t2, a2, 23
                  sra          s11, tp, t3
                  sra          t5, t5, ra
                  addi         s10, a6, 1624
402:              srai         s9, s7, 14
403:              srl          t6, a3, s0
                  sub          t5, s4, s6
                  auipc        a3, 46552
                  auipc        t2, 649093
                  and          s11, a5, s6
                  xori         s3, s6, 484
                  slt          zero, a5, s7
                  sltiu        ra, s1, -852
                  xor          s5, t0, t1
                  bge          s10, a2, 413f
413:              or           ra, gp, t0
                  xor          s6, t2, s9
                  sll          a5, s4, s8
                  and          s8, tp, s6
                  sra          a0, t3, ra
                  srli         zero, gp, 16
                  sub          a7, a5, t4
                  ori          t4, a7, 803
                  sltiu        t1, tp, 1576
                  sltu         t3, t4, t5
                  andi         t5, s8, 295
                  bgeu         s8, t4, 435f
                  andi         s10, t1, -568
                  bge          t3, a1, 442f
                  sra          tp, sp, t2
                  slti         s6, s11, 654
                  ori          a1, tp, -555
                  xori         a3, s3, -1373
                  sub          a0, a3, a4
                  beq          t2, a5, 433f
433:              bne          a7, a3, 441f
                  andi         s6, s2, -1661
435:              beq          a6, s9, 440f
                  xori         s10, a3, 1590
                  slli         t6, s8, 2
                  ori          zero, s8, 1822
                  srai         s5, s10, 19
440:              addi         s8, a5, 894
441:              and          a7, t0, s6
442:              sltu         a1, t4, a3
                  beq          s9, a3, 456f
                  bgeu         a1, s8, 446f
                  sltiu        t3, s5, 1709
446:              bne          s2, t0, 453f
                  srai         sp, gp, 13
                  slti         a1, t6, -1179
                  slli         a0, t1, 28
                  add          gp, zero, s6
                  and          t1, a2, a2
                  andi         gp, s10, -1472
453:              sll          t6, a3, a4
                  xor          ra, ra, a2
                  nop
456:              sll          gp, sp, s6
                  slt          s4, t4, t6
                  sltu         s7, a1, a1
                  beq          s10, t2, 478f
                  sub          a4, a3, a6
                  add          t4, zero, a4
                  beq          t4, s1, 470f
                  sltiu        s7, tp, 639
                  srli         t1, t5, 2
                  bne          s2, a7, 468f
                  bgeu         s1, s4, 476f
                  slt          t2, a4, a7
468:              and          sp, s1, s0
                  auipc        sp, 284876
470:              bltu         zero, sp, 471f
471:              and          a2, s8, s1
                  sltu         gp, a5, a5
                  xor          tp, gp, a2
                  sra          t4, t0, a4
                  sub          a3, t1, t4
476:              and          t1, s9, s11
                  beq          a7, t6, 496f
478:              sltiu        ra, a2, -860
                  bge          tp, sp, 499f
                  bgeu         s5, a5, 489f
                  slti         a7, t6, -1797
                  or           s9, a1, a1
                  blt          gp, a5, 486f
                  xori         s5, a4, 413
                  blt          s11, a4, 491f
486:              ori          s9, tp, 1651
                  bltu         s7, a1, 505f
                  sltu         s2, a3, a1
489:              lui          s11, 202959
                  ori          ra, tp, 389
491:              ori          a1, a4, 1880
                  or           s11, a6, t0
                  andi         s2, a5, 1857
                  slli         tp, t4, 0
                  bgeu         a7, zero, 500f
496:              auipc        t2, 174211
                  slt          t4, tp, gp
                  bne          t2, s9, 505f
499:              slt          a5, t2, s0
500:              srli         t5, ra, 13
                  auipc        s0, 39239
                  sll          a5, s7, a7
                  add          s4, t6, a4
                  beq          zero, sp, 518f
505:              slli         s6, s9, 11
                  xor          s6, a6, s4
                  sra          s2, s2, s11
                  sltiu        s4, a2, -1639
                  srli         s5, s5, 21
                  and          t3, s5, a4
                  sll          a5, s5, gp
                  nop
                  sll          ra, a4, a7
                  srl          s11, sp, gp
                  sub          t3, s2, t1
                  add          a4, s6, s10
                  beq          a5, s0, 528f
518:              bne          ra, t1, 523f
                  bltu         sp, t1, 534f
                  sub          t4, a2, t3
                  slti         s4, s1, -379
                  sra          s5, s8, tp
523:              or           t6, s11, s3
                  beq          ra, tp, 544f
                  bne          a1, a5, 528f
                  and          t2, s4, t0
                  sltu         a3, a7, tp
528:              add          s6, a6, t2
                  sltu         s5, s10, t2
                  nop
                  lui          t3, 6643
                  sll          ra, s6, t5
                  bgeu         a2, a1, 535f
534:              sltu         a5, t2, a1
535:              sltu         gp, s9, t4
                  bne          t6, t0, 544f
                  blt          s11, s10, 540f
                  nop
                  blt          a3, sp, 544f
540:              sra          s7, s4, t6
                  sll          a7, a4, s4
                  sltu         s10, s5, s7
                  bltu         tp, a2, 561f
544:              beq          a7, sp, 563f
                  sll          a0, a3, s7
                  ori          s8, t5, 890
                  slt          t1, a5, s10
                  bne          s0, s8, 568f
                  srai         s4, s0, 1
                  beq          sp, s3, 569f
                  srl          a4, a5, ra
                  bltu         a5, s11, 558f
                  srli         s11, s9, 21
                  xor          s7, t4, s5
                  srl          t5, a4, a5
                  sltu         s0, t5, a3
                  auipc        a1, 1019622
558:              slt          sp, a4, t4
                  or           tp, s5, zero
                  addi         s8, s8, 2036
561:              auipc        s11, 212703
                  sltu         t5, s8, t1
563:              srl          s10, a5, s5
                  srai         ra, t2, 28
                  beq          s5, s10, 570f
                  sra          ra, s11, t1
                  bne          tp, s0, 568f
568:              bltu         s9, s11, 579f
569:              sub          s7, t0, s7
570:              xor          s0, s3, s4
                  xor          t5, a0, a4
                  slli         a4, s8, 17
                  and          gp, a1, s10
                  sltu         s8, a0, s3
                  slti         a4, s0, -797
                  slt          ra, a6, s1
                  ori          s9, a3, 1162
                  blt          s8, a7, 588f
579:              sll          a5, s9, a2
                  srai         s5, s2, 27
                  srli         a2, t4, 8
                  addi         s7, s9, -912
                  sra          s0, t0, s7
                  bltu         a5, t6, 599f
                  auipc        s7, 334510
                  sltu         t4, s5, s7
                  addi         s9, s4, 1025
588:              xor          s2, s5, a1
                  addi         gp, s6, 1363
                  add          t1, s4, a2
                  blt          ra, t3, 599f
                  andi         t2, zero, -137
                  beq          s4, a2, 600f
                  sltiu        a7, s10, -268
                  sltu         t3, a4, t3
                  sll          t2, s2, s8
                  beq          t2, a6, 613f
                  addi         t4, a0, -592
599:              auipc        s5, 497093
600:              andi         t6, t2, -719
                  bne          t1, t5, 615f
                  auipc        s3, 720621
                  srai         t6, s6, 24
                  or           a2, s4, zero
                  sltiu        s8, a4, -1947
                  xori         a7, s9, -1245
                  sll          s11, a2, t3
                  or           tp, a1, sp
                  sltu         a2, t1, s0
                  blt          s10, s5, 619f
                  or           s5, t4, a3
                  sltu         sp, a1, s5
613:              sll          s11, s7, s5
                  blt          t2, gp, 615f
615:              sll          t1, t6, s4
                  bge          s11, t0, 617f
617:              xori         s7, a2, -1977
                  ori          tp, sp, 36
619:              bgeu         s0, s6, 632f
                  bgeu         a3, s0, 631f
                  sub          a4, t4, a1
                  lui          t5, 482387
                  bgeu         s11, t6, 632f
                  auipc        t1, 594317
                  sra          s8, a3, a1
                  add          ra, a5, ra
                  sll          t6, s1, a3
                  sll          t2, s7, s6
                  xori         s10, t6, 244
                  auipc        t1, 397523
631:              sub          s10, s11, t5
632:              nop
                  sltiu        ra, zero, 1954
                  sltiu        s8, s3, 1858
                  xori         t6, s0, 1563
                  bge          t1, s11, 649f
                  slli         t3, a5, 15
                  and          tp, ra, s11
                  andi         s6, gp, 1374
                  sltiu        t6, s11, 1178
                  or           a0, sp, zero
                  xor          s0, s4, a7
                  auipc        tp, 822421
                  and          gp, a7, ra
                  add          s0, tp, s7
                  addi         t2, t6, -1231
                  addi         t3, s9, 1166
                  blt          sp, a2, 653f
649:              srl          t1, a6, t2
                  srli         ra, t3, 17
                  ori          t5, s9, 106
                  andi         a0, a4, -1380
653:              sra          s0, tp, s8
                  andi         s5, s5, -3
                  sltiu        s0, t5, 937
                  xor          a4, s7, a5
                  blt          t4, a3, 665f
                  addi         a3, a3, 591
                  srai         s11, zero, 10
                  lui          t1, 236372
                  addi         s2, a4, -768
                  sltu         gp, a1, t5
                  srl          zero, t4, s2
                  bltu         t3, s0, 671f
665:              nop
                  nop
                  slli         t5, a5, 22
                  sltiu        s7, s2, -1706
                  slt          t2, t6, a7
                  beq          s7, s9, 683f
671:              blt          a6, a3, 678f
                  beq          a7, s9, 686f
                  sll          a5, s2, t5
                  and          gp, s6, a1
                  srli         a0, sp, 22
                  blt          t6, a4, 689f
                  srai         s10, t3, 3
678:              auipc        a4, 136704
                  sra          s0, s11, a4
                  sll          s11, s0, a7
                  andi         a1, zero, 942
                  srli         s10, a2, 18
683:              xori         t1, sp, -1020
                  sltiu        t6, a4, -132
                  slli         a4, s4, 2
686:              lui          s0, 846635
                  nop
                  slt          a2, s4, s5
689:              lui          a5, 437515
                  xor          a7, tp, a1
                  add          s7, a6, t4
                  addi         a1, a2, 1359
                  srl          a7, t6, t6
                  lui          a1, 803768
                  srai         t5, a5, 22
                  addi         a3, s8, 213
                  bgeu         t0, t3, 698f
698:              addi         zero, s2, -1252
                  srai         a4, t2, 1
                  sltu         s10, a5, s11
                  addi         tp, sp, 449
                  slt          sp, s1, s5
                  auipc        tp, 227972
                  blt          s3, a5, 709f
                  bge          t5, t1, 713f
                  sltiu        a3, a3, 153
                  sub          tp, ra, s6
                  srli         zero, s5, 24
709:              sub          s7, a7, sp
                  srl          s3, s2, s1
                  srl          t6, s9, t6
                  bge          s5, a5, 727f
713:              slli         a4, s11, 5
                  and          s3, t5, gp
                  xori         t4, s0, 637
                  add          ra, a5, s11
                  slli         ra, s11, 2
                  add          s9, a0, t1
                  slli         t3, tp, 1
                  or           t3, s10, a4
                  add          t5, s4, t3
                  xori         t6, s7, -65
                  addi         s9, t2, 1677
                  slti         t5, t2, 1105
                  blt          t0, t3, 736f
                  srai         sp, s2, 20
727:              bgeu         a2, t1, 743f
                  lui          gp, 914162
                  nop
                  or           s5, s7, s0
                  sltiu        s7, a7, 436
                  bge          t2, a7, 750f
                  addi         gp, t4, -1761
                  srai         a2, s2, 26
                  slli         s10, a1, 23
736:              sll          s6, s1, a0
                  sra          t4, a0, s0
                  nop
                  add          s2, s5, ra
                  slti         t2, a7, -872
                  add          s7, a1, a1
                  andi         a2, s3, -2021
743:              blt          s3, a4, 762f
                  bge          a0, s11, 764f
                  bltu         tp, a3, 746f
746:              or           s9, a4, ra
                  slli         s4, a1, 20
                  sub          s9, gp, gp
                  bltu         s4, s1, 768f
750:              bne          s0, zero, 755f
                  srai         t4, s6, 18
                  bge          a6, t4, 761f
                  sub          s9, tp, s4
                  ori          s5, s1, -1596
755:              nop
                  sub          sp, t2, gp
                  sra          tp, s8, s0
                  srai         s10, a3, 27
                  sll          s0, a4, a2
                  sltiu        zero, t6, 1449
761:              sltu         tp, s0, a4
762:              sltu         gp, zero, s9
                  beq          sp, s11, 770f
764:              bltu         s0, t5, 765f
765:              blt          s1, a3, 771f
                  addi         s7, s6, 1329
                  blt          s7, t4, 769f
768:              lui          s11, 49071
769:              and          t2, s11, s6
770:              auipc        t1, 898377
771:              nop
                  addi         s11, a0, -1041
                  sltiu        tp, s11, 1016
                  nop
                  srl          s8, tp, a7
                  srai         s11, s9, 0
                  addi         s5, a1, -42
                  srai         s9, s6, 24
                  srl          a1, s5, t3
                  andi         s8, a4, 481
                  xor          a1, a0, s8
                  blt          s6, a6, 790f
                  auipc        a1, 533004
                  bgeu         s11, zero, 804f
                  or           ra, t1, a1
                  xor          s7, s1, s1
                  slli         gp, t6, 21
                  ori          s4, s3, 47
                  bltu         zero, s6, 792f
790:              slli         s6, s4, 21
                  bltu         t4, s8, 799f
792:              or           s9, t0, ra
                  slli         s8, t3, 16
                  sll          s10, s4, t6
                  srl          zero, s8, s0
                  xor          gp, s5, s4
                  or           s7, t4, ra
                  bge          a3, t2, 801f
799:              ori          a5, s11, -517
                  nop
801:              srli         t1, a1, 15
                  ori          a0, a0, 201
                  ori          s11, s11, 116
804:              bne          a3, t3, 813f
                  slli         a0, s0, 28
                  lui          s4, 449365
                  sub          s11, gp, tp
                  slti         s3, s9, -444
                  slti         a3, a0, 1292
                  ori          ra, a5, -1887
                  xor          a2, s11, s3
                  xor          s0, ra, t1
813:              sltu         s9, t1, s8
                  beq          a4, s9, 824f
                  sll          a1, zero, t3
                  addi         a2, s8, -457
                  auipc        s0, 697952
                  slli         s9, s0, 31
                  bgeu         s7, s3, 830f
                  slt          a0, t5, s0
                  and          ra, ra, zero
                  auipc        s3, 925855
                  slt          s6, sp, s8
824:              ori          t4, s4, -1209
                  bge          a3, s9, 830f
                  srl          s4, gp, t2
                  add          a4, t6, t4
                  bge          t6, a3, 841f
                  beq          s10, s2, 839f
830:              andi         a1, s0, 2040
                  addi         s5, a6, 1264
                  ori          a3, s5, 1510
                  la           a2, sub_1
                  lui          a7, 668454
                  auipc        a5, 728547
                  addi         a2, a2, -111
                  slli         ra, s4, 5
                  srli         s11, t2, 16
                  beq          tp, zero, main_j3 #branch to jump instr
                  xori         s6, t6, -536
                  addi         a3, s10, -1097
                  xor          a1, gp, a0
main_j3:          jalr         ra, a2, 112 #jump main -> sub_1
                  add          a4, a7, a6
                  sub          s6, a3, s3
                  srai         gp, t5, 23
                  bltu         s5, a5, 844f
                  sltu         a7, ra, t4
                  bge          zero, t3, 849f
main_11:          jal          ra, 5f
0:                jal          gp, 11f
1:                jal          a4, 9f
2:                jal          ra, 4f
3:                jal          ra, 12f
4:                jal          ra, 8f
5:                jal          ra, 2b
6:                jal          a0, 7f
7:                jal          ra, 1b
8:                jal          ra, 6b
9:                jal          ra, 10f
10:               jal          ra, 0b
11:               jal          ra, 3b
12:               jal          s2, 13f
13:               slti         a1, s4, 710
839:              sll          t5, a4, a5
                  bltu         s6, s4, 846f
841:              sra          a3, a5, a3
                  xor          a0, s4, s2
                  nop
844:              xor          t6, a3, t0
                  auipc        s11, 911466
846:              sra          a3, s9, s6
                  bltu         s9, s1, 861f
                  bgeu         a3, t6, 863f
849:              sll          a0, t5, t6
                  bge          a6, t5, 851f
851:              addi         sp, t4, -1871
                  srai         a5, t5, 1
                  bltu         a0, a3, 873f
                  sra          t6, t3, t0
                  xor          t2, s9, a2
                  or           s4, gp, s10
                  lui          s6, 394116
                  slli         s9, t1, 23
                  sltiu        s5, a2, 1192
                  srl          s0, a1, t3
861:              bgeu         s6, s11, 879f
                  slli         s7, s7, 19
863:              auipc        s3, 997203
                  sra          t2, zero, s1
                  auipc        a2, 1040467
                  xori         s9, s0, -758
                  or           s11, a7, s9
                  and          s11, t0, s7
                  sll          t1, zero, t6
                  sll          a2, a2, zero
                  xori         a5, t5, 1260
                  bne          s8, s11, 873f
873:              blt          t5, a2, 878f
                  and          zero, zero, t1
                  slli         s9, a7, 11
                  beq          t1, a2, 885f
                  beq          a1, s6, 888f
878:              beq          t6, zero, 886f
879:              slt          gp, s5, s0
                  sltu         t2, sp, s7
                  nop
                  lui          s4, 194145
                  bge          s7, s9, 903f
                  beq          s7, t5, 887f
885:              sltu         zero, s5, s6
886:              addi         ra, zero, 1138
887:              or           a3, t6, t6
888:              nop
                  bgeu         s1, t0, 894f
                  andi         ra, s2, -281
                  sub          t6, a4, t5
                  srl          ra, s5, t4
                  bne          a3, s4, 896f
894:              xor          ra, t4, s9
                  sltiu        t4, s0, 1060
896:              ori          s9, sp, -1665
                  nop
                  blt          s7, zero, 899f
899:              sltiu        a4, s5, -264
                  slti         a3, s11, 1513
                  srai         a2, zero, 4
                  srai         s2, s2, 22
903:              blt          a4, t1, 916f
                  nop
                  blt          t4, t6, 912f
                  sltiu        t3, a7, 920
                  xor          a1, ra, t0
                  sltiu        t5, a7, -1083
                  lui          t1, 943432
                  and          t4, s2, a1
                  sltu         zero, s3, s8
912:              bge          a6, a5, 931f
                  srl          tp, a4, tp
                  bltu         a0, t1, 923f
                  sltu         s9, sp, t6
916:              sll          a3, ra, zero
                  bne          s3, a1, 924f
                  sra          s8, a3, ra
                  bltu         a7, a7, 935f
                  sltu         s9, tp, zero
                  slli         s8, s1, 26
                  and          a5, s10, a6
923:              blt          a0, s5, 928f
924:              sra          s7, s7, a7
                  sltiu        s9, t1, 641
                  addi         a2, t4, 1897
                  beq          s5, s8, 946f
928:              sub          t5, zero, ra
                  bge          s9, zero, 937f
                  sra          t1, s11, a3
931:              and          t3, tp, s2
                  slti         a2, t2, -1750
                  bltu         t1, s8, 935f
                  sra          gp, s5, t4
935:              and          s7, t6, t3
                  andi         s0, t2, -1858
937:              addi         t2, a0, -607
                  ori          t4, t5, -1890
                  bgeu         t2, s0, 948f
                  lui          a3, 703569
                  sub          s0, s11, a4
                  andi         t6, ra, 1689
                  beq          s0, t0, 951f
                  xori         s6, s0, -1865
                  lui          s2, 261398
946:              srai         ra, s10, 30
                  addi         t6, a6, -1077
948:              sll          zero, s0, s4
                  srli         s4, t6, 22
                  sll          a5, t5, tp
951:              srai         s11, s11, 12
                  bge          t2, s0, 972f
                  or           a1, s2, s1
                  blt          sp, t1, 955f
955:              lui          a1, 665753
                  sub          s3, sp, t4
                  slti         t2, zero, -681
                  bltu         s6, t3, 971f
                  bne          s11, s0, 962f
                  nop
                  and          gp, s8, t1
962:              srli         s0, tp, 15
                  srl          tp, t6, t1
                  bge          t4, t1, 974f
                  bgeu         t2, ra, 983f
                  ori          s2, a1, -864
                  srai         t5, t2, 25
                  slt          s0, zero, sp
                  slt          sp, a1, a2
                  add          t1, s10, t0
971:              sll          a2, a4, s4
972:              bge          sp, a3, 979f
                  slti         ra, a3, 573
974:              and          s10, s11, sp
                  ori          gp, sp, -884
                  lui          s9, 249960
                  bge          gp, t2, 978f
978:              blt          s10, a4, 983f
979:              slt          t6, a5, t6
                  bge          s7, t3, 988f
                  xor          a0, t2, s11
                  sub          s3, a7, t3
983:              bltu         a0, s5, 988f
                  slt          s6, tp, a4
                  sltu         a1, s4, a6
                  or           t2, a2, s4
                  xor          a7, s11, a7
988:              bge          s9, t1, 997f
                  xori         sp, t6, 1773
                  lui          t4, 357407
                  add          t3, a7, t0
                  bgeu         zero, t3, 999f
                  auipc        sp, 580916
                  xori         a7, t2, -1935
                  and          s3, t1, s5
                  bltu         sp, gp, 998f
997:              slti         t4, s1, -711
998:              sltu         a4, s11, s6
999:              bgeu         a1, s11, 1002f
                  and          s0, zero, s3
                  bgeu         a0, s10, 1015f
1002:             or           s11, a0, a0
                  bgeu         tp, a6, 1014f
                  sll          ra, sp, s7
                  addi         s9, s6, -352
                  sltiu        s4, t6, -1686
                  sltu         t4, s10, s3
                  andi         s10, t2, -1029
                  bne          a4, tp, 1015f
                  sra          s11, a5, a4
                  and          s10, s8, t4
                  andi         s8, s1, -1013
                  bgeu         s3, s1, 1029f
1014:             lui          t3, 52840
1015:             srli         ra, a5, 20
                  srl          gp, a6, s6
                  auipc        a3, 821511
                  sltu         s5, s3, tp
                  bgeu         s3, s2, 1032f
                  add          t4, s1, s6
                  andi         s2, s0, -1522
                  nop
                  addi         s7, s5, -358
                  sll          s6, gp, s8
                  bltu         s9, t3, 1044f
                  slt          t3, a2, s7
                  xor          s5, s1, a1
                  sub          a7, s8, ra
1029:             ori          ra, t5, 1048
                  xori         a3, a5, -73
                  ori          t5, a6, 1439
1032:             bge          t3, tp, 1052f
                  bltu         s2, s2, 1038f
                  sll          tp, s4, t3
                  slt          zero, s6, t5
                  slti         s5, a1, -1689
                  sltu         a1, a2, s7
1038:             and          s8, a4, t4
                  sltu         sp, a1, a0
                  or           zero, a4, a1
                  bne          a6, ra, 1060f
                  andi         s9, t0, -535
                  sll          a3, a2, s4
1044:             blt          s10, t6, 1052f
                  and          s0, s0, a5
                  bne          s1, gp, 1057f
                  sltiu        s9, s9, 618
                  beq          t3, a2, 1063f
                  blt          t5, a3, 1050f
1050:             blt          s0, sp, 1065f
                  srli         zero, t2, 31
1052:             bne          sp, a5, 1065f
                  slli         t2, gp, 7
                  slt          t5, a5, s1
                  sra          s2, s0, s4
                  srai         a2, a4, 13
1057:             sub          s7, t3, t4
                  beq          s3, a6, 1077f
                  nop
1060:             sltiu        t3, s3, 245
                  lui          t5, 311126
                  and          t1, t2, a0
1063:             auipc        gp, 321466
                  blt          t4, s10, 1069f
1065:             slt          gp, s2, t5
                  andi         s0, t6, 1342
                  xor          gp, a6, t2
                  sra          ra, t5, zero
1069:             bgeu         s1, tp, 1071f
                  slli         t5, t3, 28
1071:             nop
                  sra          t1, s4, s1
                  slt          s6, t5, t5
                  bge          t2, s4, 1082f
                  or           sp, s8, s11
                  slti         ra, a6, 1836
1077:             xori         t6, s4, 348
                  add          a5, s1, a5
                  nop
                  andi         s0, s10, 1909
                  and          a7, a1, s0
1082:             nop
                  xori         s5, s8, -1087
                  lui          t6, 371269
                  srai         zero, a7, 21
                  lui          s7, 177921
                  bge          gp, s4, 1100f
                  andi         ra, gp, 1609
                  bne          s10, s10, 1099f
                  srai         a0, t2, 7
                  bgeu         s10, s9, 1099f
                  or           s5, a2, t3
                  bge          t4, s3, 1101f
                  bne          s2, s0, 1108f
                  sra          zero, s6, a1
                  sltiu        t2, t5, -1460
                  andi         s11, a1, -551
                  bltu         s4, t4, 1116f
1099:             sltu         a3, s7, t3
1100:             blt          s2, s2, 1105f
1101:             xor          a2, s7, s5
                  slti         s6, s2, -649
                  bge          s1, s7, 1104f
1104:             ori          s5, sp, 1917
1105:             bne          s0, a5, 1124f
                  bgeu         a5, a5, 1107f
1107:             sub          s0, s6, a2
1108:             bge          t2, a1, 1117f
                  sltiu        s11, a5, -1960
                  andi         a2, a3, -799
                  or           s11, t4, s10
                  sub          zero, s11, s7
                  bltu         s11, s10, 1124f
                  slt          t2, s0, tp
                  srl          s6, t1, s5
1116:             nop
1117:             sltu         a3, a2, tp
                  sll          a4, t4, a0
                  add          ra, a2, a6
                  addi         a5, s10, -956
                  beq          t1, a0, 1128f
                  bgeu         a5, sp, 1127f
                  or           sp, a7, a4
1124:             slli         tp, a6, 18
                  lui          t5, 843389
                  sltiu        s6, t0, 1004
1127:             and          a1, sp, tp
1128:             or           s10, t6, s6
                  bgeu         s11, ra, 1132f
                  sltiu        a3, s2, -669
                  auipc        s10, 192340
1132:             srl          s9, tp, t2
                  srai         s11, s9, 30
                  slli         a5, t0, 1
                  bne          s10, s3, 1146f
                  sltu         a2, s1, t1
                  sltiu        s8, s6, 1472
                  srli         t1, s11, 25
                  bgeu         a1, a4, 1146f
                  auipc        t4, 793257
                  andi         a0, s11, 841
                  sub          s2, t0, zero
                  andi         t5, a5, 1970
                  auipc        a0, 109139
                  xor          a2, t5, a5
1146:             sub          s2, t1, t2
                  sltiu        ra, s4, 273
                  slli         tp, zero, 29
                  or           s8, t6, zero
                  addi         a0, a7, -91
                  bge          t4, a3, 1171f
                  blt          s1, a3, 1155f
                  srl          zero, a6, a0
                  bne          t3, s7, 1170f
1155:             slt          s7, t0, t6
                  slt          sp, a6, ra
                  lui          s6, 796639
                  bge          a3, a6, 1167f
                  sltiu        a3, s10, -658
                  slli         s10, s4, 9
                  slt          s9, a2, gp
                  lui          s2, 25022
                  lui          t3, 470494
                  add          a7, sp, zero
                  srli         s4, s2, 26
                  sll          s5, t4, gp
1167:             slti         t5, s8, 916
                  xor          ra, s1, s0
                  or           t2, a4, a0
1170:             sub          a1, a4, tp
1171:             ori          s2, s4, 575
                  slti         a3, s7, 201
                  slt          t5, zero, s3
                  srl          a7, a4, s7
                  nop
                  slli         s9, s5, 15
                  sltu         t1, s2, t4
                  nop
                  sltu         s0, a1, tp
                  bge          s9, s11, 1200f
                  sltu         ra, a6, s8
                  addi         s7, t0, 1757
                  addi         s11, a5, -452
                  srai         a7, t2, 13
                  slt          a7, s9, s4
                  add          s11, s3, s5
                  lui          gp, 265929
                  beq          s5, a4, 1189f
1189:             addi         tp, t3, 1365
                  bne          t4, t3, 1196f
                  sltiu        a0, s10, 1569
                  sll          ra, t1, s1
                  ori          s0, ra, -1603
                  addi         t3, a2, -295
                  auipc        a3, 838010
1196:             sltiu        s2, a7, -1282
                  and          a0, s2, s4
                  sub          t1, s11, a6
                  andi         zero, s11, 1411
1200:             bltu         t3, s1, 1216f
                  ori          a7, s2, 1811
main_3:           jal          ra, 21f
0:                jal          a5, 6f
1:                jal          s3, 5f
2:                jal          a3, 27f
3:                jal          s10, 7f
4:                jal          ra, 12f
5:                jal          t1, 18f
6:                jal          ra, 2b
7:                jal          sp, 10f
8:                jal          ra, 9f
9:                jal          gp, 4b
10:               jal          t1, 17f
11:               jal          ra, 14f
12:               jal          t1, 22f
13:               jal          sp, 24f
14:               jal          ra, 15f
15:               jal          ra, 8b
16:               jal          gp, 1b
17:               jal          t1, 23f
18:               jal          ra, 20f
19:               jal          s11, 0b
20:               jal          t1, 13b
21:               jal          ra, 11b
22:               jal          ra, 25f
23:               jal          t1, 26f
24:               jal          ra, 3b
25:               jal          ra, 16b
26:               jal          ra, 19b
27:               sltu         sp, s4, s11
                  bgeu         t5, s7, 1216f
                  xor          a0, t2, s3
                  bne          a2, a3, 1211f
                  srli         s4, a2, 14
                  nop
                  nop
                  beq          t3, s11, 1213f
                  xori         s3, a2, -1498
                  nop
1211:             srai         t1, s3, 25
                  blt          s7, ra, 1225f
1213:             or           ra, a3, s9
                  srai         a3, a1, 5
                  xori         a4, sp, -1543
1216:             andi         s6, t3, 1779
                  auipc        ra, 770268
                  nop
                  xor          ra, t6, t2
                  srai         t4, s3, 4
                  srai         zero, a5, 25
                  add          sp, zero, gp
                  andi         gp, s0, 203
                  auipc        a1, 369691
1225:             bgeu         t4, a6, 1227f
                  sltiu        s5, s3, 533
1227:             sltu         t2, t6, s4
                  bge          t2, s2, 1235f
                  srli         t1, s2, 19
                  blt          s2, s7, 1241f
                  bltu         a7, zero, 1234f
                  xor          t5, a4, a5
                  sll          s3, a4, s0
1234:             addi         s0, s9, 1211
1235:             srai         t6, s11, 13
                  sub          a7, t0, t4
                  lui          t2, 306834
                  andi         sp, tp, -1115
                  xor          t3, a4, s2
                  sll          t3, t3, s0
1241:             lui          a2, 642522
                  sll          zero, s5, a4
                  sltu         s2, sp, s9
                  bgeu         a0, s9, 1259f
                  sub          s10, t6, sp
                  la           t5, sub_2
                  lui          s3, 21224
                  srai         s8, s2, 23
                  add          sp, s7, sp
                  lui          a3, 1011323
                  addi         t5, t5, 139
                  sub          a2, a1, t3
                  andi         s5, s7, 585
                  auipc        s7, 1019236
                  bgeu         s1, a7, main_j1 #branch to jump instr
                  sub          a5, sp, a6
main_j1:          jalr         ra, t5, -138 #jump main -> sub_2
                  slli         a3, a6, 21
                  slt          t5, s5, t4
                  bge          t1, t2, 1251f
                  and          s4, s7, s1
                  slt          a0, sp, s9
1251:             slli         a1, t4, 18
                  andi         s4, a7, 1239
                  bne          t0, a4, 1254f
1254:             beq          a6, s0, 1259f
                  auipc        a1, 492165
                  sub          s9, t2, s4
                  sll          zero, a3, t4
                  ori          t5, t3, -148
1259:             sra          s7, ra, a4
                  lui          t5, 848772
                  xori         s0, a3, -1402
                  bge          a2, a2, 1281f
                  sll          ra, t1, s10
                  slt          s11, s10, t4
                  srli         tp, t5, 17
                  bne          a1, s10, 1271f
                  add          gp, s10, t2
                  sltu         gp, gp, t4
                  slt          tp, s7, t6
                  srli         s5, s9, 18
1271:             ori          t3, a1, -1065
                  sll          s8, a5, ra
                  bgeu         ra, gp, 1282f
                  bge          a3, sp, 1292f
                  and          s6, zero, s8
                  sll          a3, tp, t5
                  and          a7, t1, s3
                  sltiu        s11, s4, -283
                  sub          s8, t4, t4
                  add          s11, s10, t0
1281:             ori          a3, a0, 336
1282:             xori         s8, s7, 463
                  auipc        a0, 324529
                  addi         ra, a4, 1638
                  xori         s6, t3, 676
                  bne          sp, s10, 1292f
                  slli         s2, a5, 19
                  xor          zero, s10, t2
                  or           t6, s6, t1
                  auipc        a0, 356706
                  addi         s11, s0, 157
1292:             slli         t2, s3, 4
                  bne          s11, s1, 1312f
                  or           tp, s1, a4
                  andi         s8, sp, 1491
                  sra          s6, s1, s8
                  lui          s9, 454747
                  sltu         t6, t3, a2
                  beq          t2, a3, 1307f
                  slli         zero, a7, 1
                  sltu         a7, s4, a5
                  blt          s7, a3, 1310f
                  srai         t6, s5, 6
                  bgeu         s8, s6, 1313f
                  sltu         gp, ra, s0
                  bge          s10, t6, 1317f
1307:             bltu         t6, sp, 1308f
1308:             sltu         zero, t4, t4
                  xori         a4, t4, -1136
1310:             sltu         s5, t6, tp
                  srai         s9, ra, 30
1312:             srai         gp, s8, 30
1313:             add          a0, ra, a0
                  bgeu         s7, a4, 1334f
                  srli         zero, s2, 21
                  add          s3, s6, zero
1317:             and          a3, s2, s0
                  add          s6, a5, s9
                  sltu         s0, s6, s5
                  lui          a5, 255384
                  and          s3, s1, t1
                  sra          s8, s10, s1
                  xori         s11, a4, 1562
                  bge          gp, s4, 1334f
                  blt          tp, s7, 1333f
                  or           ra, s1, t6
                  or           s3, t0, s2
                  xori         s2, tp, -728
                  blt          s3, t1, 1330f
1330:             bne          t1, a2, 1350f
                  and          s9, s8, a5
                  sra          s10, t3, s7
1333:             nop
1334:             bge          a2, t5, 1347f
                  lui          gp, 903270
                  beq          ra, s0, 1341f
                  or           s3, t5, a6
                  auipc        s8, 531923
                  or           t2, s7, t4
                  or           a3, t0, a6
main_12:          jal          ra, 11f
0:                jal          ra, 22f
1:                jal          t1, 6f
2:                jal          ra, 13f
3:                jal          t1, 19f
4:                jal          t1, 12f
5:                jal          a2, 16f
6:                jal          ra, 23f
7:                jal          t1, 8f
8:                jal          ra, 0b
9:                jal          ra, 26f
10:               jal          tp, 17f
11:               jal          a1, 4b
12:               jal          t1, 24f
13:               jal          ra, 15f
14:               jal          ra, 9b
15:               jal          ra, 18f
16:               jal          sp, 27f
17:               jal          t1, 3b
18:               jal          ra, 20f
19:               jal          ra, 28f
20:               jal          ra, 21f
21:               jal          s2, 25f
22:               jal          s2, 10b
23:               jal          ra, 14b
24:               jal          a7, 1b
25:               jal          t6, 7b
26:               jal          a2, 5b
27:               jal          ra, 2b
28:               andi         t2, a0, 1346
1341:             and          t1, a1, t3
                  addi         s8, s5, 8
                  slli         ra, s10, 31
                  beq          ra, s6, 1357f
                  slt          a5, s0, t2
                  bge          s6, s10, 1354f
1347:             sra          zero, t6, s10
                  sll          s9, gp, a5
                  sra          s4, s7, ra
1350:             auipc        t1, 568550
                  slli         t2, a2, 4
                  andi         s3, a6, 925
                  xori         s0, s0, 163
1354:             or           s6, a1, ra
                  or           t1, s11, s1
                  bge          a6, s11, 1362f
1357:             sll          a5, s11, s2
                  or           a1, s2, s1
                  sll          a7, s10, s7
                  sll          a1, t1, s1
                  xor          s11, a1, a0
1362:             srl          gp, s7, s5
                  slli         a7, s10, 13
                  xori         a4, s4, 798
                  add          s4, s8, t3
                  bne          s7, a6, 1373f
                  blt          gp, a3, 1380f
                  beq          a0, s5, 1384f
                  slli         tp, t0, 30
                  sltiu        s0, ra, -1128
                  srl          a0, t6, s4
                  beq          a4, t4, 1390f
1373:             bgeu         a7, a3, 1380f
                  bltu         s7, t0, 1376f
                  bltu         s6, a2, 1376f
1376:             slli         s4, s4, 12
                  lui          s0, 602394
                  srai         s11, zero, 19
                  blt          a7, s8, 1380f
1380:             or           a0, a0, s8
                  srai         s0, t2, 15
                  ori          s8, ra, 1102
                  blt          s8, s9, 1388f
1384:             or           t2, a7, s0
                  xor          a0, gp, a7
                  or           t4, s11, s9
                  andi         t1, s3, 1716
1388:             beq          a2, a4, 1394f
                  srl          s10, s8, a1
1390:             srli         s8, a1, 21
                  and          sp, s6, t6
                  sltiu        gp, t3, -464
                  sub          t5, gp, a5
1394:             andi         ra, s9, -23
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sub          s9, t2, t0
                  sltu         sp, t2, s7
                  sll          s9, s10, t4
                  srli         t3, s9, 5
                  or           t3, a7, s8
                  addi         s1, s1, -20
                  sw           ra, 4(s1)
                  srli         t2, sp, 27
                  add          s10, s7, s3
                  srli         a7, a5, 26
                  and          t2, t3, s7
                  xor          zero, s2, a4
                  slli         s9, s9, 21
                  xori         s11, a6, -1272
                  sltiu        s2, a1, 442
                  srai         a3, t0, 7
                  sltiu        ra, tp, -225
sub_1_j5:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  la           t2, sub_4
                  add          s10, a7, s11
                  addi         t2, t2, 228
                  add          tp, a2, sp
                  nop
                  and          a3, a0, t0
                  bne          s6, s9, sub_1_j6 #branch to jump instr
                  slti         s5, t3, 726
sub_1_j6:         jalr         ra, t2, -228 #jump sub_1 -> sub_4
sub_1_2:          jal          ra, 8f
0:                jal          sp, 18f
1:                jal          ra, 15f
2:                jal          ra, 9f
3:                jal          t1, 13f
4:                jal          ra, 16f
5:                jal          ra, 12f
6:                jal          ra, 1b
7:                jal          ra, 0b
8:                jal          s3, 5b
9:                jal          ra, 17f
10:               jal          ra, 14f
11:               jal          ra, 2b
12:               jal          ra, 4b
13:               jal          tp, 6b
14:               jal          t1, 3b
15:               jal          t1, 7b
16:               jal          t1, 11b
17:               jal          s10, 10b
18:               jal          t6, 19f
19:               or           s10, t1, s6
sub_1_1:          jal          ra, 11f
0:                jal          ra, 10f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          ra, 2b
4:                jal          t4, 3b
5:                jal          a4, 4b
6:                jal          a4, 1b
7:                jal          ra, 0b
8:                jal          ra, 12f
9:                jal          ra, 5b
10:               jal          ra, 9b
11:               jal          ra, 7b
12:               slli         s9, s0, 9
sub_1_0:          jal          ra, 7f
0:                jal          ra, 10f
1:                jal          ra, 11f
2:                jal          ra, 14f
3:                jal          ra, 5f
4:                jal          ra, 13f
5:                jal          ra, 9f
6:                jal          s4, 12f
7:                jal          t1, 0b
8:                jal          a2, 2b
9:                jal          t1, 6b
10:               jal          ra, 1b
11:               jal          t6, 4b
12:               jal          a5, 8b
13:               jal          s10, 3b
14:               slli         a4, s4, 24
                  sltiu        s10, t1, 712
                  andi         gp, t2, 63
                  slli         a4, s6, 12
                  beq          a3, t6, 13f
                  bne          ra, s0, 13f
                  sltiu        s6, t6, 1483
                  sltu         sp, a4, s5
                  slt          t5, s11, t2
                  bge          t3, a5, 10f
                  bgeu         a2, s0, 22f
10:               nop
                  sub          a1, a5, gp
                  or           s5, s9, tp
13:               and          t1, s7, t3
                  nop
                  blt          ra, s6, 19f
                  slli         s2, t2, 20
                  xori         s3, t2, 1335
                  xori         s3, a2, -1400
19:               slt          t3, s3, t6
                  slli         s9, t0, 24
                  srli         a5, a1, 17
22:               addi         t4, s7, -663
                  sltu         a5, s8, t0
                  auipc        a3, 608807
                  sltu         s7, t0, zero
                  xori         a3, s10, 949
                  srli         t6, s8, 1
                  slli         t2, s3, 11
                  andi         a5, s9, -646
                  srai         t4, t6, 19
                  sltu         ra, s11, s10
                  nop
                  bge          t5, t2, 46f
                  bne          s6, s5, 52f
                  srai         s2, a4, 24
                  bgeu         a3, a0, 39f
                  or           a5, a4, a4
                  slli         a4, a0, 22
39:               srl          a0, s4, t6
                  xori         t3, s3, -1517
                  ori          sp, s8, -1869
                  xor          s7, s6, s8
                  and          t6, t2, s6
                  beq          gp, s0, 62f
                  sll          s2, a2, s3
                  nop
                  slt          t2, a3, a2
                  ori          a2, s1, 1867
                  slt          s11, s0, s0
                  srli         a2, a3, 24
                  slti         s10, s1, 841
sub_1_j4:         jal          ra, sub_5 #jump sub_1 -> sub_5
                  srai         sp, t2, 1
46:               sub          a3, s6, s7
                  xor          s7, s6, a2
                  slli         s11, tp, 5
                  slti         ra, t6, -116
                  nop
                  add          t5, a2, a1
52:               slli         sp, a6, 22
                  sltiu        a1, a4, -1622
                  bge          a3, s4, 58f
                  auipc        t3, 530863
                  srai         t5, gp, 21
                  add          a0, s6, a6
58:               add          t3, t1, sp
                  sll          s2, gp, t4
                  sra          s4, a2, s2
                  beq          t3, a1, 66f
62:               lui          a1, 94156
                  sll          sp, s6, s1
                  slli         a4, t0, 1
                  sltiu        s0, t1, 1157
66:               bgeu         s2, s2, 73f
                  srli         a0, zero, 9
                  sltu         s6, s1, a1
                  slt          t4, s7, a4
                  or           a3, tp, s10
                  sltiu        s9, zero, -854
                  xori         s3, s6, -1281
73:               sub          gp, s6, t0
                  slti         s10, ra, 1418
                  srl          s4, a7, a4
                  beq          s7, a1, 79f
                  auipc        s8, 1044268
                  auipc        t2, 864291
79:               bne          s9, t4, 94f
                  addi         s7, a2, 1078
                  sll          s0, a1, sp
                  nop
                  slli         sp, s9, 1
                  addi         a5, s4, 526
                  and          s9, t6, a7
                  andi         t3, a5, -1057
                  nop
                  bgeu         ra, s11, 97f
                  addi         a4, s11, -1398
                  sll          s8, t1, sp
                  srl          t5, a0, s3
                  slli         a1, a6, 14
                  sll          t3, s0, ra
94:               xor          a0, s4, s11
                  bgeu         s8, t6, 105f
                  sltiu        s2, s0, -1726
97:               sltu         s2, t6, zero
                  sltiu        s7, a3, 1795
                  addi         a3, a2, 852
                  andi         a2, s11, -1832
                  sltiu        t4, a6, -894
                  and          tp, ra, zero
                  bge          t0, gp, 104f
104:              andi         t6, ra, -1163
105:              slli         s4, sp, 0
                  or           s2, t0, s10
                  sra          s11, ra, a2
                  beq          s11, a7, 122f
                  nop
                  slli         a3, a5, 18
                  ori          s0, t1, -429
                  beq          s9, s11, 127f
                  nop
                  nop
                  bge          a3, s1, 130f
                  sub          sp, gp, a4
                  srli         t1, tp, 11
                  ori          s8, sp, 1079
                  slli         t2, s0, 8
                  blt          sp, s3, 124f
                  or           a5, s7, a4
122:              ori          s2, t6, -1041
                  slli         t5, s8, 14
124:              nop
                  slt          s0, s1, sp
                  xori         s4, a5, 1021
127:              bltu         a3, s8, 142f
                  bgeu         s3, t5, 143f
                  ori          s9, s4, 402
130:              bne          a5, a7, 133f
                  andi         a1, t2, 2011
                  slti         ra, s6, 72
133:              beq          s4, a2, 137f
                  srli         tp, gp, 22
                  slti         s4, tp, -101
                  slti         s5, t3, 2009
137:              and          s4, s4, s0
                  sll          s0, s2, a0
                  nop
                  bne          s4, t3, 144f
                  sltiu        t4, s10, -825
142:              nop
143:              addi         tp, sp, -320
144:              nop
                  srli         t5, s7, 1
                  bltu         a3, t1, 154f
                  blt          a7, s6, 155f
                  bge          t3, t1, 155f
                  andi         t5, a5, 1843
                  sll          t1, a4, a0
                  srai         s6, a4, 17
                  sltiu        a5, sp, -1751
                  sltu         t3, ra, s6
154:              bne          s6, gp, 155f
155:              slli         s10, t3, 14
                  lui          s3, 657734
                  sltiu        gp, a6, 1279
                  and          s11, t1, t6
                  lw           ra, 4(s1)
                  addi         s1, s1, 20
                  auipc        t2, 457161
                  nop
                  sll          t6, s10, s4
                  xor          s7, t6, s6
                  srli         tp, t5, 5
                  or           zero, s8, gp
253:              addi x23, x1, 1
253:              jalr x23, x23, 0
sub_4:            beq          a6, s10, sub_4_stack_p
                  auipc        a4, 514018
                  slli         a5, zero, 10
                  auipc        a5, 819211
                  slti         s10, a6, -1302
sub_4_stack_p:    addi         s1, s1, -16
                  sw           ra, 4(s1)
                  srai         t5, sp, 18
                  nop
                  slt          tp, s1, s2
                  beq          t1, a0, 13f
                  andi         ra, t1, -1057
                  srai         s3, t0, 18
                  sltiu        s11, s1, -197
                  bge          a5, s11, 13f
                  or           ra, a3, tp
                  sra          s3, s8, a4
                  bne          a2, a3, 13f
                  bgeu         a4, t4, 13f
                  srai         sp, gp, 14
                  srai         a7, s3, 9
                  srai         s8, a1, 21
                  xori         s2, t2, -1917
13:               ori          a5, sp, 2011
                  auipc        t5, 87116
                  lw           ra, 4(s1)
                  addi         a2, t6, 1231
                  ori          s3, a5, 260
                  addi         s1, s1, 16
                  andi         s2, a5, -958
                  nop
31:               addi x11, x1, 0
31:               jalr x11, x11, 0
sub_3:            sra          sp, a1, t2
                  addi         s1, s1, -52
                  srl          a0, a0, a4
                  sw           ra, 4(s1)
                  srl          t3, a5, t6
                  srli         t2, s3, 6
                  slt          t6, t4, zero
sub_3_0:          jal          ra, 3f
0:                jal          ra, 4f
1:                jal          ra, 2f
2:                jal          ra, 5f
3:                jal          t1, 6f
4:                jal          ra, 9f
5:                jal          t1, 10f
6:                jal          ra, 8f
7:                jal          t1, 1b
8:                jal          t6, 0b
9:                jal          ra, 7b
10:               slti         a5, t5, 1070
sub_3_1:          jal          ra, 13f
0:                jal          ra, 3f
1:                jal          sp, 12f
2:                jal          ra, 0b
3:                jal          ra, 11f
4:                jal          ra, 10f
5:                jal          tp, 7f
6:                jal          gp, 4b
7:                jal          s11, 9f
8:                jal          gp, 6b
9:                jal          s11, 1b
10:               jal          t1, 2b
11:               jal          sp, 14f
12:               jal          ra, 8b
13:               jal          sp, 5b
14:               srl          s0, a6, t0
                  bne          t3, a6, 14f
                  blt          t3, s2, 8f
                  and          gp, t6, a4
                  srli         s11, ra, 4
                  sra          a5, s6, s10
                  slti         t4, a3, 7
                  lui          t1, 325576
                  nop
8:                sltiu        t5, a0, -671
                  xori         s7, s10, 809
                  auipc        t4, 17776
                  addi         s0, tp, 1714
                  auipc        a4, 342591
                  nop
14:               sll          s6, tp, a7
                  slt          a1, s2, a2
                  add          t5, a0, t1
                  nop
                  and          t2, a2, s5
                  slti         sp, s9, -707
                  sub          s11, gp, s1
                  sll          s3, s1, s9
                  bltu         s3, t3, 35f
                  bge          s11, s2, 28f
                  sll          a5, s8, gp
                  bltu         s10, t3, 31f
                  slt          t3, s0, tp
                  nop
28:               auipc        a2, 177746
                  addi         a0, s11, 183
                  bltu         a4, s10, 33f
31:               sub          t2, a7, s9
                  addi         ra, a3, 1211
33:               xori         t5, s2, 608
                  or           s0, a2, zero
35:               xor          ra, gp, s4
                  auipc        t5, 848920
                  xor          s11, s4, a3
                  bne          s8, s3, 53f
                  slti         zero, a7, -347
                  addi         s10, gp, 1932
                  xori         t5, s1, -1503
                  slt          a0, a1, t3
                  slt          s0, a6, a5
                  blt          a6, zero, 61f
                  srai         t6, s1, 20
                  and          s3, a1, a7
                  bge          s5, a6, 67f
                  nop
                  sub          s4, zero, t2
                  srai         a7, a5, 16
                  and          a1, gp, a4
                  andi         s8, s7, -1735
53:               slti         tp, s11, -543
                  or           t3, s6, s0
                  srai         s0, a2, 21
                  sltu         a7, s0, a7
                  andi         gp, a5, -179
                  beq          t1, t3, 64f
                  xor          s4, t6, a0
                  and          t6, a1, t1
61:               slli         s11, a5, 21
                  xori         s6, t6, 1395
                  sra          a4, t3, s3
64:               xori         s5, s10, -435
                  slti         t2, t1, -1654
                  nop
67:               bltu         s7, s9, 81f
                  add          a5, a0, gp
                  sltiu        t2, zero, 1195
                  bge          a1, s4, 76f
                  sub          a3, s2, s9
                  andi         sp, t2, 1994
                  nop
                  slti         tp, tp, 2026
                  addi         ra, tp, 814
76:               slti         s3, a4, -1970
                  nop
                  srl          s4, t4, tp
                  bge          t0, t6, 97f
                  add          t2, s2, s11
81:               and          t1, s7, s2
                  srli         t1, s4, 16
                  sra          s10, a1, t0
                  bltu         s6, t4, 91f
                  and          s7, a4, a7
                  slt          s2, a1, t6
                  bge          t1, sp, 88f
88:               andi         gp, t2, 1518
                  auipc        t3, 641135
                  srl          zero, a4, s3
91:               bgeu         s2, a7, 94f
                  srli         a4, t0, 7
                  xor          gp, t3, gp
94:               nop
                  srai         s5, s9, 7
                  sub          a0, t1, t4
97:               bltu         s11, s3, 107f
                  srl          s8, s0, gp
                  bgeu         s0, t5, 106f
                  sll          a7, t5, a3
                  lui          a1, 161815
                  and          s7, s0, s3
                  bne          s6, t5, 113f
                  add          s5, t4, s6
                  sltiu        s8, a7, -1473
106:              xori         s2, ra, -1091
107:              beq          s10, a4, 127f
                  beq          sp, t2, 114f
                  sltu         s7, s10, a1
                  srai         s7, t5, 2
                  sltiu        s7, a7, -1220
                  sub          s9, t2, s6
113:              nop
114:              slli         s10, a4, 2
                  bne          a6, a6, 127f
                  xor          s6, t2, a0
                  add          s2, t5, s2
                  lui          t1, 497260
                  lui          a3, 904879
                  srai         a4, a7, 9
                  sltiu        t6, s1, -443
                  or           s4, t4, t1
                  srl          a4, t0, s5
                  sltu         s0, s6, a1
                  add          s7, a7, a0
                  addi         t4, a0, -203
127:              sll          s8, a0, s5
                  bgeu         s4, a2, 132f
                  nop
                  slt          tp, t0, t2
                  bge          a2, a4, 132f
132:              addi         a1, a0, 1388
                  lw           ra, 4(s1)
                  ori          s9, a2, -1249
                  addi         s1, s1, 52
                  lui          s0, 464389
                  sub          a4, zero, s0
173:              addi x12, x1, 0
173:              jalr x12, x12, 0
sub_2:            addi         s1, s1, -36
                  and          t1, tp, a1
                  srl          tp, t2, t5
                  sw           ra, 4(s1)
                  nop
                  slt          t4, ra, t0
                  slli         s0, s9, 31
sub_2_2:          jal          ra, 26f
0:                jal          t1, 29f
1:                jal          ra, 28f
2:                jal          ra, 0b
3:                jal          t1, 23f
4:                jal          ra, 24f
5:                jal          ra, 2b
6:                jal          t6, 11f
7:                jal          ra, 8f
8:                jal          t1, 1b
9:                jal          t1, 21f
10:               jal          ra, 14f
11:               jal          t6, 18f
12:               jal          ra, 10b
13:               jal          t1, 7b
14:               jal          ra, 4b
15:               jal          ra, 17f
16:               jal          ra, 3b
17:               jal          a2, 13b
18:               jal          ra, 16b
19:               jal          s9, 15b
20:               jal          ra, 25f
21:               jal          s2, 20b
22:               jal          ra, 27f
23:               jal          gp, 19b
24:               jal          ra, 5b
25:               jal          t1, 12b
26:               jal          sp, 22b
27:               jal          t1, 6b
28:               jal          ra, 9b
29:               ori          sp, a7, -893
sub_2_11:         jal          ra, 21f
0:                jal          t1, 15f
1:                jal          t1, 8f
2:                jal          t4, 0b
3:                jal          ra, 12f
4:                jal          s0, 14f
5:                jal          sp, 28f
6:                jal          ra, 17f
7:                jal          ra, 10f
8:                jal          gp, 19f
9:                jal          gp, 5b
10:               jal          t1, 18f
11:               jal          t4, 22f
12:               jal          ra, 1b
13:               jal          s0, 2b
14:               jal          t1, 29f
15:               jal          ra, 4b
16:               jal          tp, 7b
17:               jal          ra, 25f
18:               jal          ra, 11b
19:               jal          t1, 26f
20:               jal          ra, 9b
21:               jal          s10, 6b
22:               jal          ra, 27f
23:               jal          sp, 24f
24:               jal          ra, 20b
25:               jal          ra, 23b
26:               jal          t1, 16b
27:               jal          s4, 13b
28:               jal          gp, 3b
29:               srli         s10, s3, 6
sub_2_10:         jal          ra, 17f
0:                jal          ra, 11f
1:                jal          t1, 20f
2:                jal          ra, 10f
3:                jal          t1, 1b
4:                jal          ra, 2b
5:                jal          s3, 9f
6:                jal          t1, 13f
7:                jal          ra, 3b
8:                jal          ra, 16f
9:                jal          sp, 8b
10:               jal          s11, 15f
11:               jal          ra, 14f
12:               jal          t1, 7b
13:               jal          s7, 12b
14:               jal          ra, 18f
15:               jal          t1, 0b
16:               jal          s0, 19f
17:               jal          ra, 4b
18:               jal          t1, 5b
19:               jal          a2, 6b
20:               slti         t5, t1, -1604
sub_2_6:          jal          ra, 12f
0:                jal          sp, 11f
1:                jal          ra, 13f
2:                jal          s6, 6f
3:                jal          ra, 5f
4:                jal          a2, 9f
5:                jal          s8, 4b
6:                jal          t1, 16f
7:                jal          t1, 8f
8:                jal          s3, 0b
9:                jal          gp, 15f
10:               jal          s8, 17f
11:               jal          ra, 3b
12:               jal          ra, 1b
13:               jal          ra, 14f
14:               jal          t1, 7b
15:               jal          s4, 2b
16:               jal          t1, 10b
17:               lui          s8, 10131
sub_2_13:         jal          ra, 2f
0:                jal          ra, 7f
1:                jal          t3, 8f
2:                jal          a1, 13f
3:                jal          ra, 11f
4:                jal          t1, 12f
5:                jal          ra, 10f
6:                jal          ra, 9f
7:                jal          t4, 4b
8:                jal          ra, 0b
9:                jal          ra, 14f
10:               jal          t1, 1b
11:               jal          t1, 6b
12:               jal          gp, 3b
13:               jal          t1, 5b
14:               slti         zero, a5, 532
sub_2_7:          jal          ra, 0f
0:                jal          t1, 5f
1:                jal          s2, 3f
2:                jal          ra, 9f
3:                jal          t1, 10f
4:                jal          a3, 18f
5:                jal          s9, 14f
6:                jal          ra, 7f
7:                jal          ra, 11f
8:                jal          t1, 6b
9:                jal          t1, 4b
10:               jal          ra, 15f
11:               jal          ra, 12f
12:               jal          t1, 19f
13:               jal          ra, 8b
14:               jal          t1, 2b
15:               jal          s3, 13b
16:               jal          ra, 1b
17:               jal          tp, 16b
18:               jal          ra, 17b
19:               or           zero, s11, t5
sub_2_1:          jal          ra, 11f
0:                jal          t2, 15f
1:                jal          t1, 16f
2:                jal          ra, 10f
3:                jal          ra, 6f
4:                jal          ra, 12f
5:                jal          t3, 2b
6:                jal          t2, 17f
7:                jal          ra, 14f
8:                jal          t1, 3b
9:                jal          t5, 5b
10:               jal          ra, 1b
11:               jal          s7, 7b
12:               jal          s2, 13f
13:               jal          t1, 0b
14:               jal          ra, 4b
15:               jal          ra, 9b
16:               jal          s8, 8b
17:               srai         t2, zero, 8
sub_2_12:         jal          ra, 1f
0:                jal          gp, 24f
1:                jal          t1, 7f
2:                jal          t1, 21f
3:                jal          t1, 2b
4:                jal          a7, 13f
5:                jal          ra, 17f
6:                jal          t1, 15f
7:                jal          ra, 23f
8:                jal          ra, 25f
9:                jal          ra, 8b
10:               jal          ra, 14f
11:               jal          ra, 6b
12:               jal          ra, 20f
13:               jal          t1, 0b
14:               jal          ra, 11b
15:               jal          ra, 9b
16:               jal          t1, 12b
17:               jal          ra, 4b
18:               jal          ra, 19f
19:               jal          t6, 16b
20:               jal          s0, 10b
21:               jal          ra, 18b
22:               jal          t1, 3b
23:               jal          s2, 5b
24:               jal          ra, 22b
25:               slti         tp, s7, -1308
sub_2_4:          jal          ra, 12f
0:                jal          ra, 7f
1:                jal          ra, 17f
2:                jal          gp, 0b
3:                jal          t1, 22f
4:                jal          tp, 19f
5:                jal          t1, 8f
6:                jal          t1, 9f
7:                jal          ra, 4b
8:                jal          t1, 11f
9:                jal          sp, 3b
10:               jal          ra, 5b
11:               jal          ra, 15f
12:               jal          ra, 16f
13:               jal          ra, 21f
14:               jal          ra, 23f
15:               jal          s4, 6b
16:               jal          ra, 10b
17:               jal          ra, 18f
18:               jal          t1, 14b
19:               jal          s0, 13b
20:               jal          ra, 1b
21:               jal          ra, 20b
22:               jal          t1, 2b
23:               lui          s9, 991733
sub_2_0:          jal          ra, 14f
0:                jal          gp, 15f
1:                jal          ra, 9f
2:                jal          a3, 0b
3:                jal          s10, 13f
4:                jal          ra, 7f
5:                jal          gp, 1b
6:                jal          a1, 2b
7:                jal          s7, 5b
8:                jal          ra, 4b
9:                jal          ra, 11f
10:               jal          t1, 12f
11:               jal          ra, 10b
12:               jal          ra, 6b
13:               jal          gp, 8b
14:               jal          tp, 3b
15:               addi         s11, a7, 1503
sub_2_8:          jal          ra, 10f
0:                jal          t5, 3f
1:                jal          a3, 2f
2:                jal          gp, 4f
3:                jal          ra, 12f
4:                jal          a3, 0b
5:                jal          ra, 6f
6:                jal          t1, 7f
7:                jal          a2, 11f
8:                jal          a7, 5b
9:                jal          ra, 1b
10:               jal          ra, 8b
11:               jal          s7, 9b
12:               sltiu        sp, a6, 1840
sub_2_9:          jal          ra, 8f
0:                jal          t1, 10f
1:                jal          a0, 12f
2:                jal          sp, 9f
3:                jal          ra, 17f
4:                jal          s7, 19f
5:                jal          t6, 16f
6:                jal          ra, 15f
7:                jal          ra, 2b
8:                jal          ra, 6b
9:                jal          s2, 1b
10:               jal          ra, 14f
11:               jal          ra, 13f
12:               jal          tp, 5b
13:               jal          t1, 7b
14:               jal          ra, 11b
15:               jal          sp, 3b
16:               jal          a5, 4b
17:               jal          ra, 18f
18:               jal          a3, 0b
19:               srli         t6, a6, 8
sub_2_3:          jal          ra, 15f
0:                jal          ra, 6f
1:                jal          t3, 7f
2:                jal          ra, 19f
3:                jal          a7, 18f
4:                jal          a1, 17f
5:                jal          sp, 22f
6:                jal          sp, 21f
7:                jal          s11, 12f
8:                jal          ra, 9f
9:                jal          tp, 13f
10:               jal          s9, 25f
11:               jal          gp, 3b
12:               jal          ra, 16f
13:               jal          ra, 5b
14:               jal          s3, 0b
15:               jal          s11, 10b
16:               jal          t1, 8b
17:               jal          ra, 14b
18:               jal          ra, 26f
19:               jal          t5, 23f
20:               jal          t1, 4b
21:               jal          ra, 11b
22:               jal          ra, 2b
23:               jal          ra, 20b
24:               jal          sp, 1b
25:               jal          ra, 24b
26:               srai         s4, a1, 1
                  ori          s2, a0, -1497
                  ori          a3, a5, 743
                  bgeu         t0, a2, 9f
                  beq          a0, s1, 12f
                  add          t5, a2, a2
                  ori          ra, a5, -1223
                  blt          t2, a4, 18f
                  addi         a3, s1, 264
                  sll          a1, t2, t0
9:                add          t4, s8, t2
                  xor          a3, s11, a6
                  sltiu        gp, a6, 1126
12:               bne          s10, s10, 22f
                  srai         s5, ra, 7
                  lui          s3, 750848
                  nop
                  xori         s6, s7, -1199
                  blt          a0, a7, 35f
18:               sltu         s2, t2, s3
                  sltiu        s3, a3, -15
                  add          a1, a4, t1
                  nop
22:               srai         a0, ra, 4
                  xor          s0, s11, t1
                  auipc        t1, 17954
                  slli         a1, a2, 11
                  srl          a0, zero, t2
                  xor          gp, a5, s9
                  sra          t1, s3, a3
                  beq          t5, s2, 36f
                  nop
                  slti         t5, s1, -848
                  sll          tp, s7, a3
                  slti         t5, t5, -689
                  slti         t5, s6, -98
35:               and          tp, gp, s10
36:               sll          s4, a5, t6
                  bge          t3, s7, 56f
                  auipc        tp, 222453
                  slt          s10, s2, t3
                  auipc        gp, 779058
                  beq          gp, sp, 56f
                  sltu         s11, s9, s1
                  nop
                  blt          s7, a4, 54f
                  ori          a5, a3, 1371
                  xori         tp, s10, -847
                  bne          t2, a5, 55f
                  nop
                  xor          s7, s5, t5
                  and          a0, zero, t6
                  ori          t1, s6, -420
                  andi         a2, s1, -945
                  slti         a7, s4, 992
54:               and          s7, a6, a0
55:               slli         a0, ra, 1
56:               xori         t5, s8, -1792
                  or           s6, tp, s1
                  auipc        a1, 273543
                  bne          t5, t5, 64f
                  blt          s3, s9, 65f
                  andi         a1, s1, -1246
                  auipc        a4, 64915
                  srl          a7, s9, s8
64:               beq          s4, a5, 80f
65:               sltiu        a5, tp, 878
                  beq          a2, s1, 85f
                  ori          s8, zero, -1841
                  nop
                  lui          t2, 853968
                  bltu         t3, s5, 77f
                  slli         s5, tp, 16
                  beq          ra, t6, 74f
                  ori          t5, s7, -1494
74:               sll          a7, s2, s10
                  bne          s9, a1, 92f
                  xor          s0, s0, a5
77:               srl          a4, a7, s6
                  bgeu         s7, t5, 81f
                  slli         t2, zero, 24
80:               blt          tp, a5, 93f
81:               slli         t1, a4, 31
                  nop
                  and          a5, a5, t2
                  bltu         a5, tp, 99f
85:               add          s7, sp, s9
                  sub          s9, tp, a3
                  addi         a0, s11, -582
                  nop
                  bne          s3, s10, 93f
                  srai         t5, a3, 19
                  srai         t3, ra, 4
92:               xori         ra, a2, -1728
93:               sll          gp, s11, s3
                  auipc        s5, 25083
                  lui          t3, 617446
                  blt          s6, a4, 115f
                  slti         a3, s1, 1951
                  sra          t4, s4, t6
99:               nop
                  ori          t4, tp, -1114
                  sub          s6, a6, gp
                  ori          s5, s5, 345
                  slli         a4, a2, 3
                  sll          tp, sp, a5
                  lui          a2, 331936
                  slli         tp, t2, 19
                  srl          s4, s1, t6
                  addi         t1, a6, -1165
                  bge          a7, s6, 117f
                  ori          s0, a3, -1407
                  addi         a2, s8, 14
                  and          a0, zero, s4
                  or           a2, s1, a6
                  lui          sp, 317355
115:              bltu         a2, s5, 125f
                  sltu         a7, a5, s10
117:              auipc        a1, 1045832
                  ori          a2, tp, -1852
                  nop
                  srai         s5, zero, 2
                  srl          a7, tp, s5
                  srai         s4, s7, 17
                  bgeu         a7, a6, 133f
                  srli         a0, ra, 14
125:              lui          a2, 854206
                  auipc        tp, 188994
                  sltu         a7, s2, a2
                  or           s5, s4, t6
                  sltiu        s3, s7, -887
                  bge          tp, a4, 148f
                  sltiu        s2, s5, 1599
                  sll          s6, s11, t4
133:              sra          t3, a6, a6
                  slli         s9, s1, 8
                  addi         s6, ra, 631
                  xor          t3, s3, s6
                  blt          s10, tp, 148f
                  bgeu         s2, zero, 156f
                  srai         s6, a7, 26
                  srai         s7, zero, 26
                  sltiu        a2, s10, -1386
                  blt          s11, s7, 159f
                  addi         ra, a4, 866
                  auipc        ra, 696382
                  sll          s9, t0, s2
                  slti         t1, s0, 243
                  nop
148:              sltu         sp, a0, t6
                  addi         t4, t6, 343
                  beq          a0, t2, 160f
                  ori          t5, sp, 1080
                  blt          a0, a1, 162f
                  or           t3, s4, s2
                  sra          t5, zero, a7
                  sltu         a3, t4, s11
156:              beq          s7, t4, 173f
                  sll          s10, a4, s4
                  sra          zero, sp, tp
159:              xor          s5, a2, ra
160:              andi         s4, a3, 513
                  sll          s6, s6, gp
162:              beq          t2, a6, 167f
                  slli         ra, t1, 1
                  slt          a4, t6, s5
                  nop
                  bgeu         t3, t1, 176f
167:              beq          t1, s8, 177f
                  sltu         s9, tp, a6
                  sll          a7, s5, t0
                  srl          s3, s11, sp
                  srai         s10, s6, 27
                  sub          t6, s6, a3
173:              bltu         a3, s6, 181f
                  xor          a7, s6, a0
                  addi         s6, s3, 335
176:              nop
177:              andi         t3, s7, -1885
                  bgeu         gp, zero, 196f
                  bge          t1, sp, 189f
                  or           zero, a6, s9
181:              srl          t4, gp, s7
                  bne          gp, s4, 190f
                  andi         t5, t6, 1004
                  bge          t1, sp, 186f
                  slli         s3, s6, 7
186:              slt          s5, a0, t1
                  sltiu        a2, ra, -1773
                  lui          a7, 645393
189:              srli         s0, s6, 24
190:              slli         t5, s11, 13
                  bgeu         t2, sp, 206f
                  slti         a0, s0, 359
                  sltiu        t1, s0, 156
                  nop
                  add          tp, zero, a7
196:              beq          s4, t4, 212f
                  bltu         s9, s6, 204f
                  and          s10, t1, a1
                  bge          t1, s4, 218f
                  andi         zero, t0, -1354
                  sltiu        t1, a3, 917
                  andi         a5, a3, 794
                  or           s5, t4, ra
204:              xori         t1, s0, 1230
                  srl          s5, t2, ra
206:              srai         s4, t0, 29
                  auipc        t1, 602722
                  or           s4, a2, t1
                  nop
                  and          t6, a3, t4
                  add          a1, sp, zero
212:              add          t6, s8, a7
                  add          t2, sp, zero
                  xor          sp, sp, t4
                  slti         a3, a6, 1934
                  xor          t1, t3, t5
                  beq          s6, sp, 226f
218:              ori          s2, s6, -1616
                  andi         tp, s1, 1550
                  slt          ra, s6, sp
                  add          t5, s8, a6
                  or           zero, t4, s2
                  or           t2, a0, a0
                  sra          tp, s2, t5
                  bltu         t0, a2, 244f
226:              sub          s0, s10, t0
                  srli         s6, s2, 20
                  and          s6, a3, s9
                  bge          s11, s10, 232f
                  srl          s4, t1, s0
                  lui          s9, 662053
232:              bgeu         a2, s4, 236f
                  ori          s6, a4, 1600
                  xori         t1, t3, 665
                  bne          a0, s7, 252f
236:              srli         tp, gp, 16
                  bne          a7, s3, 252f
                  ori          a1, s2, 1844
                  auipc        s9, 18071
                  auipc        a4, 799142
                  srli         s4, a3, 3
                  lui          gp, 375859
                  bltu         tp, sp, 256f
244:              srl          s5, sp, t6
                  sub          sp, a5, s11
                  xori         a7, a7, 1099
                  slti         s7, s9, 135
                  auipc        a3, 134182
                  srli         sp, tp, 29
                  andi         a5, t4, -107
                  andi         s11, s0, -198
252:              bltu         zero, a0, 262f
                  blt          s7, s3, 272f
                  addi         s11, s2, -123
                  xor          s6, a7, t6
256:              nop
                  sra          t4, tp, s3
                  beq          a4, t6, 265f
                  lui          s3, 622667
                  nop
                  auipc        t1, 749124
262:              bge          s8, a2, 280f
                  auipc        ra, 977104
                  sub          sp, s2, a4
265:              sra          gp, s8, a0
                  xor          a4, zero, a5
                  bltu         a4, s8, 279f
                  sra          a7, a2, s7
                  beq          t6, a3, 276f
                  srli         s7, a2, 26
                  bne          t6, s8, 289f
272:              srai         s7, a2, 8
                  bge          a1, zero, 278f
                  xori         t2, a4, 813
                  and          a4, s1, a7
276:              sub          s11, sp, t2
                  slli         t5, t2, 20
278:              bge          s11, t5, 289f
279:              xori         t4, t3, 1672
280:              ori          a1, s4, -550
                  sra          a1, a6, sp
                  xor          s7, s7, s9
                  sltu         a4, a0, t5
                  sra          t4, zero, t1
                  sub          t1, s11, sp
                  ori          s4, a3, -1976
                  bge          a7, s7, 297f
                  sltu         s7, s4, s5
289:              xori         t2, a1, -1313
                  auipc        s5, 974296
                  blt          s10, tp, 299f
                  xori         zero, sp, -353
                  bgeu         a0, ra, 311f
                  beq          s10, s0, 302f
                  srli         s2, a1, 4
                  xori         s4, s2, 1261
297:              srai         sp, sp, 3
                  srai         zero, s0, 17
299:              bltu         s3, s1, 314f
                  slt          s0, tp, s11
                  bgeu         a0, s0, 313f
302:              srli         s6, t2, 23
                  bne          t1, s11, 313f
                  sll          tp, a5, t6
                  bne          zero, t1, 315f
                  ori          zero, s9, 660
                  slt          tp, zero, s6
                  addi         gp, t1, 517
                  slt          t2, a5, a1
                  bge          t3, s1, 329f
311:              xor          s4, s6, a0
                  bne          s4, a4, 331f
313:              xori         ra, s8, -986
314:              auipc        ra, 221770
315:              srai         sp, s4, 7
                  slt          t6, a6, s10
                  lui          s11, 734004
                  addi         a4, s0, -505
                  addi         s4, t4, 551
                  blt          a2, a5, 337f
                  blt          a3, s0, 331f
                  or           a4, s4, zero
                  beq          a6, t0, 339f
                  auipc        t4, 537015
                  sltiu        s11, a5, -374
                  bne          s3, s9, 331f
                  sltiu        s10, t5, -413
                  beq          t3, a4, 335f
329:              srai         s2, t6, 21
                  sltu         a5, s2, zero
331:              bne          a3, s4, 335f
                  srli         gp, a5, 2
                  srai         zero, a0, 22
                  nop
335:              and          s8, tp, tp
                  slti         s8, t2, -1610
337:              bgeu         s3, sp, 348f
                  sra          t6, a1, a0
339:              sub          a2, a7, s5
                  addi         s0, s5, -923
                  addi         t2, a6, -165
                  blt          s6, s3, 359f
                  andi         a2, s11, 63
                  sub          a1, zero, s9
                  srai         sp, t0, 27
                  sltiu        s4, a0, 718
                  blt          s4, s1, 354f
348:              sltu         s4, s11, gp
                  addi         s5, s0, -345
                  addi         gp, t3, -772
                  andi         s0, a6, -1523
                  ori          a4, s2, -722
                  sltiu        a4, s3, 1769
354:              or           s7, gp, s3
                  ori          t5, s2, 10
                  xori         t1, a6, -1530
                  add          t4, gp, t5
                  slti         a0, s11, 951
359:              sltu         t2, gp, t3
                  sub          s0, s9, s3
                  add          s6, s4, s2
                  or           a3, a2, a1
                  sll          s8, t5, t2
                  sltiu        t4, t2, -1555
                  bge          t2, sp, 383f
                  srl          t4, s7, s7
                  sub          a1, s7, t4
                  slt          a4, a6, tp
                  sltiu        s11, s2, -1498
                  add          a4, s8, t5
                  and          a0, s4, gp
                  slt          sp, gp, t0
                  bltu         ra, s6, 383f
                  srli         s3, s0, 24
                  auipc        a5, 1003902
                  srai         a3, t6, 25
                  blt          s3, t5, 392f
                  bltu         zero, s5, 385f
                  slt          a0, zero, s5
                  addi         t5, s8, -987
                  bne          a7, s1, 400f
                  bgeu         s0, s6, 387f
383:              auipc        zero, 501118
                  xori         t2, t2, 198
385:              slti         s11, a3, -990
                  beq          a2, s1, 389f
387:              add          t4, s3, t3
                  and          s11, s2, t1
389:              xori         t1, s0, -754
                  slti         t1, sp, 1348
                  xor          sp, s2, a6
392:              addi         s11, s3, -145
                  add          a2, t1, a6
                  and          s10, s9, s5
                  bgeu         s11, t5, 404f
                  xori         t4, a4, 1325
                  sltiu        zero, sp, -1960
                  srli         tp, s10, 31
                  ori          s10, sp, -518
400:              sra          a5, s4, t0
                  xor          t1, a3, t3
                  auipc        a5, 162537
                  addi         a3, ra, 1551
404:              bge          a5, t0, 417f
                  nop
                  nop
                  bge          s11, s8, 425f
                  and          s0, t5, a3
                  auipc        a4, 938716
                  and          tp, gp, sp
                  andi         t1, t6, -1771
                  slti         s10, t2, 505
                  add          s11, s8, t3
                  bne          a3, s7, 416f
                  nop
416:              bge          ra, t5, 423f
417:              nop
                  bne          a5, s1, 429f
                  srl          a3, a4, s7
                  lui          gp, 454794
                  auipc        t2, 90097
                  xor          s6, a1, t4
423:              sltiu        s10, s10, -1617
                  xori         s11, s8, -2027
425:              blt          s9, zero, 435f
                  bge          s8, a1, 436f
                  xori         a7, s0, 1236
                  sub          s11, s4, a1
429:              slli         a0, a0, 9
                  sltiu        s2, s9, 480
                  bne          a6, zero, 450f
                  slti         tp, t1, -249
                  sltu         a7, s2, gp
                  bltu         sp, sp, 444f
435:              andi         t3, a7, 1701
436:              bltu         s10, t6, 454f
                  sltu         a2, a3, s4
                  auipc        t3, 240908
                  and          s3, s5, s1
                  srl          s6, t3, t1
                  sltiu        s9, ra, -1325
                  sltiu        s10, zero, -321
                  auipc        t5, 292942
444:              xor          t3, a7, s3
                  slli         gp, s7, 6
                  ori          a0, s1, 1300
                  srai         t1, t4, 9
                  andi         t3, a1, -1258
                  bne          a0, t5, 457f
450:              xor          tp, a2, s11
                  bge          s2, sp, 461f
                  auipc        tp, 637097
                  bltu         a5, s8, 468f
454:              or           a0, s7, zero
                  sra          ra, sp, t4
                  sltiu        t1, a6, -1365
457:              xor          s3, s2, s3
                  slli         a4, ra, 0
                  beq          t6, s0, 466f
                  sub          t1, a3, a3
461:              bne          a5, s11, 478f
                  ori          sp, t5, 2017
                  la           a1, sub_3
                  or           a4, s5, s1
                  slti         a4, a4, 972
                  srli         a3, a7, 24
                  addi         a1, a1, -829
                  addi         s8, ra, -475
                  beq          a6, t0, sub_2_j7 #branch to jump instr
                  add          zero, a5, t5
sub_2_j7:         jalr         ra, a1, 829 #jump sub_2 -> sub_3
                  nop
                  slti         t5, zero, -242
                  sll          gp, t3, s0
                  slt          s11, s11, a2
466:              xor          t5, zero, s3
                  srai         a0, s11, 6
468:              srl          a4, s10, s3
                  sltu         gp, s1, t5
                  add          t5, s3, sp
                  srli         s11, s5, 2
                  add          s11, a7, s9
                  addi         sp, t5, -524
                  bltu         a4, t5, 482f
                  srli         sp, t1, 18
                  slli         gp, s7, 13
                  nop
478:              srli         a0, gp, 25
                  add          s4, t5, s3
                  sra          t2, s8, s3
                  sra          s5, a1, zero
482:              andi         t6, s5, -495
                  auipc        tp, 518803
                  bne          a3, s2, 501f
                  slli         s8, s5, 3
                  nop
                  beq          a5, a5, 491f
                  ori          a4, a4, -90
                  sll          a5, t1, s10
                  srl          a0, t3, a4
491:              blt          a5, t2, 494f
                  srai         s6, s8, 4
                  beq          s7, zero, 512f
494:              sltu         t5, s6, t0
                  or           s5, t3, sp
                  lui          gp, 951993
                  lui          gp, 291797
                  slt          t5, sp, s9
                  sll          a5, zero, a1
                  slli         sp, a3, 27
501:              sub          t4, t2, a2
                  bge          s5, a5, 517f
                  sll          s3, zero, a1
                  slli         s3, s3, 13
                  auipc        a1, 612111
                  bltu         sp, s0, 519f
                  ori          a2, s9, 182
                  xor          tp, s11, ra
                  bge          a5, t2, 514f
                  sltu         t3, s6, tp
                  auipc        t4, 859983
512:              slti         a1, s8, 1382
                  srli         a2, s6, 9
514:              slt          s4, s8, sp
                  slt          t6, s3, zero
                  slti         t1, a3, -591
517:              blt          s11, a5, 526f
                  beq          t4, ra, 523f
519:              lui          s9, 983046
sub_2_5:          jal          ra, 7f
0:                jal          ra, 3f
1:                jal          ra, 18f
2:                jal          tp, 9f
3:                jal          sp, 6f
4:                jal          ra, 11f
5:                jal          ra, 15f
6:                jal          t1, 4b
7:                jal          ra, 0b
8:                jal          ra, 1b
9:                jal          sp, 17f
10:               jal          ra, 16f
11:               jal          s9, 12f
12:               jal          s3, 5b
13:               jal          gp, 2b
14:               jal          s2, 10b
15:               jal          ra, 14b
16:               jal          ra, 13b
17:               jal          ra, 8b
18:               sll          a5, t4, s3
                  bge          t5, zero, 530f
                  sll          t4, sp, t2
                  addi         zero, s11, 1098
523:              bge          s5, a2, 539f
                  srl          s0, a2, gp
                  or           t6, t3, a3
526:              andi         s10, s7, -26
                  ori          t2, sp, -664
                  addi         sp, s6, -896
                  sll          a3, t3, t0
530:              srl          a7, gp, s1
                  andi         s9, a0, -1135
                  nop
                  bgeu         gp, s4, 545f
                  sltiu        s4, a5, -1356
                  xori         a0, a4, 843
                  sra          s11, s8, s3
                  bltu         a2, tp, 556f
                  and          t6, a7, s11
539:              lui          s0, 202644
                  bne          s4, zero, 542f
                  bgeu         t4, a1, 559f
542:              or           s8, zero, s1
                  srli         s10, t5, 26
                  srl          t3, t6, s10
545:              blt          s7, t1, 563f
                  sltu         s4, s2, s3
                  sra          t3, zero, t3
                  srli         t4, s3, 1
                  sltiu        zero, a6, -365
                  nop
                  auipc        s5, 267703
                  srai         t3, a4, 6
                  lui          s3, 426565
                  slli         s0, t2, 4
                  bltu         s4, s11, 562f
556:              sra          s3, s3, t4
                  bge          t6, ra, 565f
                  xori         t4, s9, 8
559:              ori          s3, s1, -1716
                  bge          t2, a5, 576f
                  sra          s4, a2, s8
562:              bltu         s9, t3, 579f
563:              nop
                  sub          t4, s5, t5
565:              bgeu         sp, ra, 578f
                  lui          t4, 74062
                  sltu         s2, s0, s9
                  bgeu         s5, s11, 578f
                  bltu         s2, tp, 579f
                  xori         s6, s2, -140
                  slt          sp, s9, s4
                  add          a1, s4, t3
                  sll          t4, t0, t3
                  ori          s4, t3, -862
                  srai         s4, zero, 14
576:              sra          a0, zero, a5
                  sltiu        t2, a3, 1590
578:              srai         t2, s9, 5
579:              and          t4, s10, ra
                  bge          t4, s3, 585f
                  bgeu         ra, s8, 591f
                  or           s11, t6, gp
                  sltu         t6, s6, s6
                  add          sp, t5, a3
585:              nop
                  or           a5, t4, s1
                  nop
                  add          s10, s11, s6
                  srl          a5, t6, a3
                  or           t5, a2, t4
591:              and          tp, s10, a3
                  xor          s5, zero, t3
                  slli         s9, a3, 27
                  or           s7, s6, t3
                  sub          a7, sp, t5
                  nop
                  bne          zero, s1, 615f
                  nop
                  addi         s9, s7, -108
                  sub          a5, s5, zero
                  andi         s4, a2, -1743
                  slt          s11, a2, s3
                  slti         s8, s9, 211
                  sll          t1, t6, s9
                  andi         a1, a2, 1005
                  blt          a0, t4, 613f
                  slti         a2, a6, 1798
                  srl          zero, a3, t1
                  srl          s10, s3, s11
                  srai         a0, s7, 7
                  srl          t1, a5, s9
                  bge          s7, s7, 630f
613:              sltu         t1, a2, s0
                  bgeu         s7, s11, 622f
615:              srl          tp, s4, ra
                  ori          s9, a6, 397
                  bge          s6, s6, 621f
                  srli         s6, t0, 29
                  slti         s5, t5, 602
                  add          t2, t5, s2
621:              add          a1, s9, t4
622:              andi         t1, a7, -1373
                  or           a4, a2, s8
                  srai         t1, t4, 6
                  ori          zero, a1, -1137
                  slli         a5, t1, 8
                  ori          s2, s11, -1529
                  sll          tp, a0, s11
                  and          t5, sp, a2
630:              bne          a4, s4, 637f
                  bgeu         a4, a7, 650f
                  xor          a7, a6, t6
                  srai         t5, ra, 22
                  slti         s2, a6, 986
                  sltu         a1, s3, t5
                  ori          t4, a3, 1461
637:              bge          a0, a2, 647f
                  bgeu         t5, ra, 649f
                  blt          a7, a0, 648f
                  slli         s8, s4, 9
                  nop
                  sub          t1, a3, a3
                  add          s11, t2, t3
                  srli         s10, t6, 6
                  sub          s11, s7, t4
                  sltiu        s6, t0, 83
647:              and          a5, t1, a4
648:              ori          s7, s5, 959
649:              nop
650:              and          s0, s8, a4
                  and          t3, a2, s3
                  slt          zero, t2, t0
                  slti         s5, t3, 1344
                  sltu         s10, a5, t5
                  bgeu         t0, a2, 673f
                  bltu         s2, tp, 673f
                  sltiu        t6, t1, -1812
                  xori         s3, s3, -657
                  beq          s4, t1, 678f
                  and          s10, s3, s11
                  bne          t5, s10, 663f
                  sra          t5, s1, zero
663:              slti         s6, s6, 309
                  srli         t2, s1, 6
                  and          s4, s7, s3
                  srai         s11, tp, 29
                  addi         s10, s5, -913
                  srai         zero, s11, 11
                  nop
                  beq          s9, t2, 673f
                  bge          s8, sp, 686f
                  bltu         s7, t3, 677f
673:              addi         s7, t1, -1052
                  add          tp, t1, a7
                  xor          s9, t4, t2
                  sub          a1, t4, t5
677:              slti         s11, a2, -1079
678:              sll          a3, zero, gp
                  srl          gp, tp, t1
                  lui          tp, 887407
                  sub          a4, s2, s3
                  andi         gp, s7, 1393
                  bne          zero, s1, 693f
                  sltiu        s8, t1, -54
                  xori         t4, s1, 1548
686:              lui          s6, 977307
                  srli         s4, t2, 30
                  xor          a4, s6, t6
                  slti         s6, s10, -1752
                  beq          s10, a3, 702f
                  slt          s9, gp, tp
                  xori         t1, a3, -1370
693:              slti         t2, s6, 190
                  bne          ra, s5, 709f
                  xori         t3, t1, -2003
                  lui          t4, 627340
                  addi         t6, a3, 1
                  slli         a2, s9, 29
                  bne          a6, a4, 714f
                  sub          a4, s0, a2
                  srli         s2, t5, 3
702:              slli         a5, s3, 1
                  and          s0, s5, s10
                  ori          s0, gp, 511
                  auipc        t4, 1027586
                  srai         s5, t2, 31
                  lui          s9, 94362
                  lui          sp, 434031
709:              ori          a5, t0, -1414
                  srai         t5, s8, 2
                  slli         t5, s4, 2
                  slt          sp, a4, ra
                  lui          s7, 661062
714:              ori          s3, tp, 2040
                  addi         zero, s8, -1552
                  sltu         gp, s6, t3
                  sltiu        a5, a1, 447
                  nop
                  srai         s7, gp, 0
                  auipc        a2, 736677
                  auipc        t4, 906936
                  lw           ra, 4(s1)
                  addi         s1, s1, 36
                  or           t4, s0, t5
1053:             addi x1, x1, 0
1053:             jalr x1, x1, 0
sub_5:            xori         s9, s10, -1794
                  srli         gp, gp, 29
                  bltu         t4, gp, sub_5_stack_p
                  sll          zero, s7, s5
                  auipc        s7, 282055
                  srai         s4, t1, 31
                  srai         t6, a6, 22
sub_5_stack_p:    addi         s1, s1, -48
                  sw           ra, 4(s1)
                  slli         s9, s0, 29
                  nop
                  xor          a7, t1, s8
sub_5_9:          jal          ra, 15f
0:                jal          t1, 12f
1:                jal          ra, 10f
2:                jal          s10, 1b
3:                jal          ra, 26f
4:                jal          ra, 6f
5:                jal          s11, 8f
6:                jal          t1, 7f
7:                jal          sp, 22f
8:                jal          s6, 11f
9:                jal          t1, 17f
10:               jal          t1, 5b
11:               jal          ra, 25f
12:               jal          a1, 24f
13:               jal          ra, 21f
14:               jal          ra, 19f
15:               jal          ra, 16f
16:               jal          s0, 4b
17:               jal          ra, 3b
18:               jal          t1, 13b
19:               jal          t1, 20f
20:               jal          t1, 2b
21:               jal          t6, 23f
22:               jal          s9, 0b
23:               jal          a3, 9b
24:               jal          ra, 14b
25:               jal          ra, 18b
26:               or           t6, a5, t3
sub_5_1:          jal          ra, 17f
0:                jal          ra, 4f
1:                jal          gp, 24f
2:                jal          ra, 23f
3:                jal          ra, 13f
4:                jal          ra, 28f
5:                jal          ra, 2b
6:                jal          ra, 10f
7:                jal          ra, 14f
8:                jal          ra, 21f
9:                jal          t1, 29f
10:               jal          t1, 18f
11:               jal          ra, 9b
12:               jal          s4, 15f
13:               jal          t1, 22f
14:               jal          ra, 3b
15:               jal          gp, 8b
16:               jal          ra, 5b
17:               jal          s10, 16b
18:               jal          ra, 20f
19:               jal          t1, 6b
20:               jal          ra, 26f
21:               jal          tp, 1b
22:               jal          a5, 25f
23:               jal          t1, 0b
24:               jal          t1, 7b
25:               jal          ra, 19b
26:               jal          t1, 11b
27:               jal          ra, 12b
28:               jal          s4, 27b
29:               sub          s11, ra, t0
sub_5_3:          jal          ra, 6f
0:                jal          ra, 15f
1:                jal          t1, 13f
2:                jal          a5, 17f
3:                jal          a1, 12f
4:                jal          t1, 8f
5:                jal          t1, 19f
6:                jal          s7, 14f
7:                jal          t1, 5b
8:                jal          t1, 10f
9:                jal          a5, 21f
10:               jal          ra, 2b
11:               jal          ra, 16f
12:               jal          ra, 18f
13:               jal          ra, 22f
14:               jal          sp, 0b
15:               jal          ra, 4b
16:               jal          t1, 7b
17:               jal          ra, 9b
18:               jal          t1, 20f
19:               jal          ra, 1b
20:               jal          t3, 11b
21:               jal          ra, 3b
22:               nop
sub_5_2:          jal          ra, 18f
0:                jal          ra, 2f
1:                jal          ra, 9f
2:                jal          ra, 12f
3:                jal          t2, 20f
4:                jal          ra, 5f
5:                jal          s0, 7f
6:                jal          ra, 15f
7:                jal          s3, 19f
8:                jal          t5, 23f
9:                jal          ra, 11f
10:               jal          ra, 13f
11:               jal          ra, 8b
12:               jal          ra, 16f
13:               jal          t1, 21f
14:               jal          t1, 24f
15:               jal          s7, 17f
16:               jal          t1, 4b
17:               jal          ra, 14b
18:               jal          t1, 10b
19:               jal          tp, 22f
20:               jal          ra, 6b
21:               jal          ra, 0b
22:               jal          a7, 1b
23:               jal          ra, 3b
24:               slli         s0, s10, 0
sub_5_10:         jal          ra, 8f
0:                jal          ra, 11f
1:                jal          ra, 17f
2:                jal          ra, 10f
3:                jal          ra, 16f
4:                jal          ra, 15f
5:                jal          ra, 1b
6:                jal          a0, 0b
7:                jal          a3, 3b
8:                jal          ra, 5b
9:                jal          ra, 7b
10:               jal          ra, 18f
11:               jal          t3, 13f
12:               jal          ra, 14f
13:               jal          ra, 20f
14:               jal          ra, 19f
15:               jal          gp, 2b
16:               jal          ra, 12b
17:               jal          ra, 9b
18:               jal          sp, 6b
19:               jal          s3, 4b
20:               jal          t1, 21f
21:               xor          a2, s2, s6
sub_5_4:          jal          ra, 13f
0:                jal          t1, 12f
1:                jal          t5, 0b
2:                jal          t1, 15f
3:                jal          gp, 1b
4:                jal          t1, 3b
5:                jal          ra, 18f
6:                jal          ra, 4b
7:                jal          t1, 14f
8:                jal          t4, 2b
9:                jal          tp, 19f
10:               jal          s5, 9b
11:               jal          t1, 5b
12:               jal          ra, 11b
13:               jal          s7, 8b
14:               jal          ra, 16f
15:               jal          t1, 7b
16:               jal          t1, 6b
17:               jal          ra, 10b
18:               jal          ra, 17b
19:               nop
sub_5_8:          jal          ra, 8f
0:                jal          t1, 19f
1:                jal          s2, 11f
2:                jal          t1, 5f
3:                jal          ra, 12f
4:                jal          sp, 10f
5:                jal          ra, 13f
6:                jal          sp, 9f
7:                jal          ra, 22f
8:                jal          s6, 2b
9:                jal          t4, 21f
10:               jal          ra, 16f
11:               jal          t1, 0b
12:               jal          a1, 4b
13:               jal          ra, 20f
14:               jal          ra, 7b
15:               jal          ra, 1b
16:               jal          sp, 6b
17:               jal          t1, 3b
18:               jal          sp, 17b
19:               jal          tp, 14b
20:               jal          gp, 18b
21:               jal          sp, 15b
22:               sub          gp, s1, t3
sub_5_7:          jal          ra, 3f
0:                jal          t3, 23f
1:                jal          ra, 14f
2:                jal          s8, 17f
3:                jal          t1, 12f
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          s6, 10f
7:                jal          ra, 13f
8:                jal          t1, 18f
9:                jal          tp, 24f
10:               jal          t1, 0b
11:               jal          ra, 9b
12:               jal          ra, 4b
13:               jal          sp, 22f
14:               jal          ra, 7b
15:               jal          ra, 8b
16:               jal          ra, 1b
17:               jal          ra, 27f
18:               jal          ra, 19f
19:               jal          ra, 2b
20:               jal          t4, 25f
21:               jal          t1, 20b
22:               jal          ra, 15b
23:               jal          ra, 28f
24:               jal          ra, 21b
25:               jal          t1, 26f
26:               jal          ra, 16b
27:               jal          ra, 6b
28:               sltu         ra, tp, a0
sub_5_5:          jal          ra, 23f
0:                jal          a3, 14f
1:                jal          t1, 12f
2:                jal          a4, 10f
3:                jal          ra, 4f
4:                jal          ra, 18f
5:                jal          a4, 15f
6:                jal          ra, 13f
7:                jal          t1, 21f
8:                jal          t1, 0b
9:                jal          ra, 8b
10:               jal          a7, 9b
11:               jal          ra, 25f
12:               jal          ra, 22f
13:               jal          ra, 5b
14:               jal          ra, 1b
15:               jal          ra, 19f
16:               jal          t6, 2b
17:               jal          ra, 24f
18:               jal          s0, 20f
19:               jal          a2, 7b
20:               jal          ra, 17b
21:               jal          ra, 3b
22:               jal          sp, 26f
23:               jal          ra, 6b
24:               jal          gp, 11b
25:               jal          t1, 16b
26:               sltu         s0, t6, a6
sub_5_0:          jal          ra, 12f
0:                jal          ra, 23f
1:                jal          s8, 8f
2:                jal          ra, 17f
3:                jal          a4, 7f
4:                jal          t1, 15f
5:                jal          t1, 25f
6:                jal          t1, 18f
7:                jal          ra, 19f
8:                jal          ra, 11f
9:                jal          ra, 2b
10:               jal          ra, 22f
11:               jal          ra, 0b
12:               jal          ra, 9b
13:               jal          ra, 20f
14:               jal          ra, 27f
15:               jal          t1, 29f
16:               jal          s8, 28f
17:               jal          tp, 26f
18:               jal          a0, 14b
19:               jal          s6, 24f
20:               jal          ra, 5b
21:               jal          ra, 1b
22:               jal          tp, 13b
23:               jal          a4, 10b
24:               jal          ra, 4b
25:               jal          ra, 3b
26:               jal          ra, 6b
27:               jal          t1, 16b
28:               jal          t1, 21b
29:               sltu         a4, s10, s7
sub_5_6:          jal          ra, 1f
0:                jal          ra, 6f
1:                jal          ra, 22f
2:                jal          t2, 19f
3:                jal          t1, 13f
4:                jal          ra, 12f
5:                jal          t1, 20f
6:                jal          ra, 15f
7:                jal          ra, 8f
8:                jal          t1, 10f
9:                jal          t1, 26f
10:               jal          a4, 24f
11:               jal          t1, 21f
12:               jal          ra, 17f
13:               jal          ra, 7b
14:               jal          t1, 25f
15:               jal          t4, 18f
16:               jal          ra, 23f
17:               jal          ra, 16b
18:               jal          t1, 2b
19:               jal          s6, 27f
20:               jal          s11, 11b
21:               jal          ra, 4b
22:               jal          t1, 14b
23:               jal          t1, 0b
24:               jal          s11, 9b
25:               jal          tp, 3b
26:               jal          gp, 5b
27:               sltiu        s6, t4, 293
                  slt          s6, tp, s0
                  slt          s9, s8, a3
                  bge          t0, t0, 9f
                  bne          a6, s1, 22f
                  bge          t6, s0, 11f
                  bge          t6, a6, 17f
                  lui          tp, 1024469
                  srl          a1, gp, s11
                  srai         a5, a4, 31
9:                ori          s2, s2, -1560
                  nop
11:               bgeu         t6, s3, 15f
                  and          s9, s0, s6
                  nop
                  blt          tp, a1, 31f
15:               srli         tp, s9, 21
                  auipc        t6, 1013271
17:               andi         gp, s10, 1549
                  sra          a5, t0, s11
                  addi         sp, a5, -300
                  bge          t2, s7, 39f
                  sll          gp, s7, s5
22:               srli         t1, a4, 23
                  slli         a1, s11, 24
                  sll          a3, a2, t0
                  or           a2, s5, tp
                  blt          s1, sp, 31f
                  bne          a0, s5, 46f
                  and          t2, s8, a7
                  beq          s10, s3, 42f
                  bltu         s5, s6, 41f
31:               sra          s11, s3, s5
                  slti         tp, sp, 408
                  sltiu        s2, a0, -916
                  andi         sp, t4, -11
                  xori         t3, s1, -1163
                  blt          a2, gp, 53f
                  blt          s11, s0, 53f
                  or           a5, s5, a6
39:               andi         s2, t5, 0
                  srai         a7, sp, 4
41:               slt          a7, a5, a0
42:               bge          s5, gp, 57f
                  bge          s11, t6, 58f
                  bgeu         s4, t6, 64f
                  ori          sp, s9, 2017
46:               sub          s10, s0, s3
                  xori         gp, s2, -1365
                  bltu         t6, s7, 52f
                  addi         a7, t0, -1904
                  andi         a4, s1, -1431
                  xor          s7, a5, s6
52:               srai         a7, a4, 4
53:               nop
                  sltu         t5, s11, a0
                  or           t1, s2, a0
                  and          s11, s4, a7
57:               addi         a7, t2, 221
58:               nop
                  nop
                  add          t1, tp, a3
                  slti         a5, t4, -1471
                  srl          t2, ra, s5
                  xori         s2, sp, -298
64:               ori          a7, a0, 1560
                  bgeu         s8, t4, 70f
                  sub          t2, ra, zero
                  beq          t1, t2, 72f
                  xor          s11, s8, t2
                  or           s4, a4, s4
70:               beq          t1, s8, 76f
                  blt          t4, s2, 90f
72:               bgeu         a4, s4, 81f
                  bge          a0, a0, 78f
                  addi         s10, s3, 1270
                  srl          a3, a6, s1
76:               slti         s10, a4, 1585
                  slti         a7, s11, -159
78:               lui          sp, 298204
                  sll          a7, a5, s6
                  lui          a5, 966870
81:               slti         t1, a3, 1734
                  srai         t5, s10, 19
                  and          s9, s10, s0
                  slli         t3, t4, 23
                  addi         t1, t2, -1910
                  srli         t4, a6, 23
                  ori          s8, s10, 163
                  srl          gp, tp, tp
                  sltu         zero, s3, s2
90:               slli         s4, s11, 31
                  andi         ra, a0, -1139
                  bge          a5, a0, 110f
                  srl          a3, t2, t1
                  slt          s6, gp, t1
                  bne          s8, s9, 105f
                  srai         s11, s0, 20
                  srai         s3, s10, 8
                  addi         t5, s2, 955
                  add          ra, a6, ra
                  bgeu         s10, a4, 120f
                  sub          gp, a2, s5
                  sub          s8, s11, tp
                  sra          s0, a7, t6
                  lui          a7, 480441
105:              and          s2, s5, a7
                  ori          t6, t3, 352
                  bge          s7, s1, 115f
                  blt          a0, zero, 112f
                  sltiu        a4, a4, -312
110:              slli         a3, t0, 9
                  andi         tp, s5, -353
112:              slt          s7, s4, sp
                  srl          zero, s4, s5
                  lui          s9, 855155
115:              auipc        s5, 1009962
                  blt          a3, a5, 124f
                  andi         s2, s4, 398
                  lui          s11, 776606
                  and          t5, a7, tp
120:              nop
                  lui          t3, 399206
                  xori         a2, s6, 467
                  addi         s0, s5, 436
124:              andi         s2, t5, -1477
                  andi         a2, t0, -1495
                  srli         s10, tp, 5
                  bltu         a6, s4, 130f
                  add          t1, a6, s10
                  beq          s1, a1, 136f
130:              slt          t2, sp, tp
                  bltu         gp, s7, 141f
                  add          ra, a0, s5
                  addi         t4, a0, -937
                  slli         a2, t1, 25
                  bltu         s4, s2, 140f
136:              lui          t1, 804925
                  sll          zero, t2, s11
                  ori          s3, sp, -836
                  andi         a3, t3, 989
140:              add          a3, a7, t0
141:              sll          s2, s4, t2
                  and          t3, t5, a7
                  bne          a5, s8, 158f
                  bltu         t0, s11, 162f
                  beq          t2, s2, 160f
                  lui          a0, 32200
                  auipc        sp, 51206
                  addi         t2, gp, 346
                  andi         s2, zero, 1966
                  slli         s10, t1, 30
                  xori         a7, a5, -1686
                  srai         t4, s5, 25
                  blt          a4, s2, 158f
                  slli         s11, t6, 6
                  slt          t5, s4, t6
                  and          s6, zero, sp
                  srl          t3, tp, t0
158:              slti         a2, t2, -1531
                  auipc        s4, 50737
160:              andi         sp, s0, -1438
                  addi         s5, t1, -997
162:              ori          gp, s8, -1006
                  auipc        a4, 61286
                  bltu         a5, s10, 176f
                  srai         t5, zero, 7
                  sltu         t4, a5, zero
                  sltu         s11, a1, t4
                  sltu         s2, a6, t2
                  slt          sp, a4, zero
                  bgeu         s11, t4, 189f
                  slti         ra, t4, -1592
                  lui          a4, 586195
                  addi         a3, t5, 805
                  sub          t4, a1, a7
                  xor          s8, t3, t1
176:              sll          s11, a3, s10
                  slt          s4, t3, t6
                  srli         t3, s7, 12
                  lui          a4, 445792
                  bltu         s4, t5, 191f
                  bltu         a5, sp, 201f
                  auipc        t3, 376559
                  sra          sp, a3, t5
                  srli         s5, s5, 18
                  bgeu         t6, t3, 188f
                  slt          sp, t4, a2
                  ori          s7, s2, -1249
188:              slti         s7, s0, 1578
189:              or           a4, zero, ra
                  sll          s11, s5, s5
191:              or           a4, a5, t4
                  sra          s8, a6, s3
                  srai         a0, s2, 0
                  lui          a1, 591400
                  and          s9, a6, ra
                  ori          t2, s1, 96
                  addi         a7, gp, -584
                  add          ra, gp, s3
                  bne          a7, zero, 208f
                  lui          a7, 594863
201:              blt          a0, s10, 209f
                  slli         s5, a5, 23
                  sltiu        s3, s11, -803
                  bgeu         s1, a7, 211f
                  add          t5, ra, s10
                  andi         gp, s2, -2
                  slli         gp, s3, 15
208:              srl          a3, sp, t5
209:              slli         zero, s4, 10
                  bgeu         a1, s5, 223f
211:              sub          a7, a1, a5
                  beq          tp, t4, 216f
                  slt          sp, s0, t4
                  sub          a5, a5, t2
                  srli         a0, t4, 2
216:              srai         s9, t0, 18
                  slti         s8, a0, -1868
                  bne          t5, t0, 234f
                  ori          s10, s9, 1719
                  addi         t3, s9, 1970
                  addi         a0, sp, 1361
                  add          s2, s5, s10
223:              sub          a0, s6, a6
                  lui          zero, 956806
                  srli         s9, t5, 20
                  srl          t2, a2, a2
                  xori         a2, s9, -1689
                  addi         s8, t1, 422
                  sll          a0, a1, a7
                  or           a1, s1, s7
                  or           a2, a5, a5
                  auipc        zero, 287650
                  nop
234:              or           a2, a1, t3
                  slti         t6, s3, -368
                  sra          a4, s0, zero
                  bltu         s10, tp, 242f
                  andi         s3, a3, 1720
                  bge          zero, s1, 243f
                  blt          t5, a2, 244f
                  bne          ra, s4, 246f
242:              xor          t6, s10, s1
243:              bge          ra, t6, 260f
244:              sra          sp, ra, s4
                  slt          a4, s8, a6
246:              auipc        s7, 15868
                  add          tp, zero, sp
                  xor          zero, a3, a6
                  srli         s3, a1, 2
                  sra          s11, s9, s4
                  auipc        ra, 937445
                  nop
                  srl          tp, ra, s5
                  add          t6, a3, t5
                  nop
                  sra          t2, s6, s0
                  blt          a6, s1, 276f
                  blt          sp, t0, 277f
                  bltu         t4, ra, 267f
260:              lui          a0, 58869
                  srl          s5, t6, s4
                  bgeu         s6, s1, 282f
                  bge          s6, t4, 280f
                  and          a3, s8, tp
                  bge          s8, a5, 271f
                  addi         t5, t3, -639
267:              sltu         t2, t0, a5
                  ori          t2, sp, -918
                  sra          t4, a6, s9
                  srai         s11, t0, 25
271:              sra          ra, sp, t1
                  add          t4, a1, a3
                  beq          s3, sp, 292f
                  sltiu        s2, t4, -1234
                  sra          s5, s11, zero
276:              srai         t4, ra, 8
277:              nop
                  xori         t6, t5, 277
                  sltiu        s8, s9, 2040
280:              xori         gp, sp, 2040
                  andi         t2, s10, 1943
282:              xor          s10, t3, s2
                  xor          zero, sp, t3
                  sltiu        s11, t0, -1536
                  bltu         s3, a6, 297f
                  auipc        a3, 719402
                  add          s6, a0, t1
                  bgeu         a7, t4, 305f
                  or           s10, t1, tp
                  or           t1, t2, gp
                  ori          s5, s3, 1010
292:              sll          ra, s2, s2
                  ori          a2, s9, 420
                  sub          gp, s7, t6
                  ori          t4, a5, 834
                  xori         s4, s2, -755
297:              addi         a5, sp, 1331
                  ori          a5, a7, 1672
                  lui          s2, 454579
                  lui          s8, 88609
                  srl          s6, t3, tp
                  and          s0, s7, a3
                  srai         zero, s11, 5
                  slt          s8, s2, s4
305:              bge          a2, a7, 310f
                  srai         a1, sp, 1
                  srl          s8, s5, s1
                  sll          t1, t3, a6
                  slti         s9, t3, -1347
310:              lui          a3, 584269
                  sltiu        a2, s8, -1007
                  sll          s8, t2, s5
                  ori          s2, ra, 1897
                  slti         s0, s0, -1522
                  sll          a3, t1, sp
                  xor          s6, s5, t5
                  bne          s9, a6, 325f
                  bltu         a6, t5, 333f
                  andi         t5, s8, -923
                  nop
                  sub          a1, s11, s0
                  add          a2, a4, sp
                  sltu         s3, tp, a4
                  bne          t4, a7, 343f
325:              slti         t2, s5, -153
                  srli         s4, s4, 19
                  srai         gp, zero, 26
                  auipc        t4, 261772
                  xor          s4, tp, t3
                  add          t1, s11, gp
                  srli         s0, zero, 11
                  and          s5, s5, a6
333:              slt          s3, ra, a3
                  sltu         ra, s9, a2
                  bgeu         a3, a7, 355f
                  bge          s6, s10, 341f
                  srli         t1, gp, 15
                  sll          ra, s2, t5
                  bne          t5, a0, 357f
                  bne          t3, s9, 359f
341:              slti         a3, t4, -1672
                  addi         ra, t0, 1579
343:              or           t3, s0, s5
                  xor          t5, a1, t5
                  nop
                  lui          s2, 269976
                  or           a7, t1, s2
                  srli         t5, zero, 5
                  slti         s5, a0, 1740
                  lui          a7, 906745
                  slti         a7, s6, -1128
                  sltu         a0, s2, t4
                  xor          a0, tp, t0
                  auipc        a3, 782664
355:              sub          t5, a4, s4
                  lui          t4, 110475
357:              slti         t4, s5, 1271
                  beq          tp, s11, 368f
359:              sltu         s2, a5, a5
                  slt          s8, a0, s2
                  and          a7, s0, a5
                  xor          s11, s1, ra
                  blt          sp, a0, 371f
                  sub          s4, a2, s8
                  lui          t4, 787467
                  addi         a4, s1, -1549
                  add          zero, s8, t6
368:              srl          t2, ra, a1
                  sub          sp, t3, s7
                  sltu         gp, t2, a3
371:              sltiu        zero, s5, -879
                  or           zero, tp, t5
                  sltu         tp, s3, t5
                  blt          s4, a4, 391f
                  srl          a4, s9, t6
                  ori          s4, t5, 1487
                  lui          a0, 597289
                  and          s6, t4, tp
                  blt          a1, s1, 383f
                  srai         s6, t6, 5
                  srli         tp, t6, 19
                  slt          s0, a3, ra
383:              sub          gp, gp, s5
                  nop
                  and          s3, sp, a5
                  sra          a4, s1, s10
                  sltu         a5, t4, s7
                  add          s10, a3, gp
                  slt          s0, t6, t3
                  slt          a3, t5, s3
391:              bge          sp, ra, 410f
                  sltiu        s7, t2, 1408
                  slti         s4, sp, -1505
                  and          ra, a0, t6
                  sll          t4, a1, s9
                  addi         gp, t4, 1687
                  sra          a4, a3, tp
                  bltu         s6, zero, 403f
                  bltu         a4, s7, 403f
                  andi         t2, a3, 698
                  addi         tp, s6, -234
                  auipc        zero, 7587
403:              sltiu        s11, sp, 1201
                  srai         a7, t2, 25
                  ori          s7, tp, 1327
                  blt          ra, s8, 426f
                  ori          ra, s0, 1587
                  andi         t6, zero, -1957
                  or           a3, t3, s6
410:              srli         s3, s10, 18
                  bge          a1, s7, 426f
                  lui          s8, 819242
                  srai         t1, s0, 12
                  sll          t6, s5, a1
                  slli         a2, s4, 13
                  auipc        t5, 709300
                  sll          sp, a4, a2
                  addi         s4, s4, 155
                  bltu         s7, a3, 422f
                  and          s0, s6, s11
                  sltiu        a2, t0, -1421
422:              sra          zero, s3, t4
                  or           s0, a1, s7
                  bge          t0, t2, 440f
                  ori          a1, s3, 1802
426:              lui          t4, 479824
                  bne          gp, t5, 433f
                  andi         a1, s2, -1095
                  add          ra, s0, a5
                  blt          t2, s0, 437f
                  addi         s10, a3, -1672
                  auipc        tp, 298852
433:              and          a7, s5, a7
                  sub          t3, s11, tp
                  bgeu         s8, s9, 440f
                  srl          t1, t5, a3
437:              beq          zero, t3, 448f
                  sub          a5, a2, s8
                  sll          s5, s4, s9
440:              auipc        s8, 456124
                  bne          s10, s10, 450f
                  sra          s3, a4, tp
                  beq          s3, s4, 450f
                  sltiu        s7, a7, -1231
                  srli         s9, s7, 27
                  bge          s7, tp, 450f
                  lui          s11, 93185
448:              sll          t2, s7, a4
                  sra          gp, s0, zero
450:              addi         a0, t4, -246
                  srai         t3, zero, 7
                  xor          t6, s2, sp
                  or           t1, a7, a1
                  or           t5, ra, t3
                  sltu         s8, a0, t3
                  auipc        s0, 96635
                  sltiu        ra, t2, 516
                  bge          s10, tp, 477f
                  slli         s9, s11, 22
                  and          zero, a1, sp
                  srai         zero, tp, 23
                  bge          gp, s11, 475f
                  blt          t3, t1, 468f
                  slt          tp, sp, t1
                  bgeu         t2, s3, 477f
                  andi         a0, s9, 624
                  lui          a2, 456167
468:              bgeu         a1, a1, 483f
                  xori         s8, sp, 202
                  auipc        s8, 663696
                  bne          s10, s9, 475f
                  ori          s11, zero, -1029
                  slli         t3, a3, 19
                  bltu         s5, a3, 493f
475:              sub          a2, s6, s0
                  nop
477:              sub          s9, a3, zero
                  xor          ra, s6, zero
                  addi         t3, a0, -1149
                  slli         s9, zero, 19
                  ori          s6, a1, 550
                  srai         t1, t4, 13
483:              srli         a5, sp, 2
                  sltu         s11, t2, s0
                  and          zero, a0, s7
                  lui          s10, 249614
                  sll          a0, a6, s7
                  slli         s3, s10, 10
                  slti         t6, s6, 929
                  sub          t5, s1, sp
                  sra          s4, s2, a3
                  and          s4, t6, s11
493:              andi         s7, t3, 1697
                  or           s10, zero, s3
                  or           a7, a3, t5
                  beq          a4, tp, 500f
                  bne          s4, a3, 507f
                  bne          t0, s11, 504f
                  add          t5, s11, s5
500:              sltiu        t1, s3, 20
                  ori          s4, gp, 724
                  lui          a1, 399589
                  xor          s10, zero, s11
504:              srai         t2, s5, 10
                  srai         t6, t1, 8
                  or           s6, t2, t6
507:              auipc        tp, 76602
                  auipc        s4, 567177
                  slli         a4, s10, 26
                  lui          a3, 965981
                  bltu         a4, s10, 514f
                  beq          t3, s6, 519f
                  blt          gp, t6, 521f
514:              sll          t1, s9, s3
                  addi         a3, a4, 717
                  beq          s1, s9, 535f
                  nop
                  andi         s8, s2, -568
519:              blt          a1, sp, 539f
                  bltu         ra, s11, 537f
521:              lui          t1, 172511
                  sub          s3, s1, a6
                  blt          t2, a1, 539f
                  bne          a5, s1, 539f
                  or           s6, t3, tp
                  and          ra, zero, t1
                  sub          a5, a1, ra
                  srl          a3, a3, a0
                  xori         s10, s4, 517
                  bge          a1, sp, 535f
                  slti         s5, a1, 1171
                  slli         s8, s9, 11
                  srai         gp, zero, 24
                  srli         s7, s3, 17
535:              and          s8, s8, a1
                  bne          sp, t2, 555f
537:              slli         zero, tp, 3
                  beq          s6, s8, 547f
539:              sll          tp, s6, sp
                  blt          tp, t0, 558f
                  slli         t4, s7, 20
                  ori          s8, t6, 1931
                  slti         sp, sp, 505
                  bge          s0, s5, 564f
                  lui          gp, 503848
                  add          t2, t4, zero
547:              andi         a4, s2, 1387
                  slti         ra, a3, 1133
                  srai         t2, t0, 4
                  bgeu         t1, s10, 557f
                  sll          s9, s7, s9
                  slt          sp, t3, s0
                  bge          s11, a6, 557f
                  bne          s1, a0, 565f
555:              andi         t2, a0, 478
                  srai         t2, t2, 11
557:              srli         ra, s5, 3
558:              andi         s11, a3, 504
                  add          a2, s1, gp
                  or           s3, a4, a4
                  sll          tp, a7, tp
                  addi         s6, s5, 811
                  ori          s7, s11, -1019
564:              bltu         a1, s6, 577f
565:              or           gp, s9, s2
                  blt          sp, a4, 585f
                  sll          s8, s0, a6
                  addi         s0, s8, -2039
                  beq          gp, t1, 574f
                  sltiu        ra, a2, 174
                  nop
                  sltiu        zero, a3, 368
                  blt          a1, s3, 581f
574:              srli         s6, s5, 6
                  and          s2, a0, s8
                  srl          a1, s8, zero
577:              srli         s2, a5, 17
                  xori         a1, t5, 71
                  slt          s3, s9, zero
                  srl          tp, s2, t0
581:              addi         s9, t3, 1053
                  sltiu        s8, s2, -1187
                  slti         a7, s9, -1956
                  sltu         s3, s4, s10
585:              slt          sp, a5, s11
                  xor          a5, a4, s2
                  add          a5, s10, sp
                  xor          tp, zero, s2
                  lw           ra, 4(s1)
                  slti         a5, s3, 1204
                  xor          a1, t3, t3
                  addi         s3, a6, 1539
                  addi         s1, s1, 48
                  and          t2, t3, t5
902:              addi x4, x1, 1
902:              jalr x4, x4, 0
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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x5, x9, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x20, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x20, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x20, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x20, x11, ecall_handler
                  li x11, 0x1
                  beq x20, x11, instr_fault_handler
                  li x11, 0x5
                  beq x20, x11, load_fault_handler
                  li x11, 0x7
                  beq x20, x11, store_fault_handler
                  li x11, 0xc
                  beq x20, x11, pt_fault_handler
                  li x11, 0xd
                  beq x20, x11, pt_fault_handler
                  li x11, 0xf
                  beq x20, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x9, x5, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x5, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x5, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x9, x5, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x9, x5, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x9, x5, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
