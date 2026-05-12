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
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 0
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0xba3b9a1b
                  li x1, 0x0
                  li x2, 0x35224ac7
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x9c1fdcbd
                  li x7, 0xf0bbb212
                  li x9, 0x0
                  li x10, 0xe
                  li x11, 0xf9d1c183
                  li x12, 0x3
                  li x13, 0x1
                  li x14, 0xb
                  li x15, 0x5
                  li x16, 0xf32fe132
                  li x17, 0x1a43b92a
                  li x18, 0x80000000
                  li x19, 0x6
                  li x20, 0x2dfa3946
                  li x21, 0x3a117779
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0xfa4b82d8
                  li x25, 0x60988dc4
                  li x26, 0x6
                  li x27, 0x0
                  li x29, 0x955b4e0a
                  li x30, 0x7c682bf0
                  li x31, 0xf576a4a7
                  la x28, user_stack_end
main:             srl          s2, s4, s9
                  la           a5, sub_4
                  nop
                  addi         a5, a5, -488
                  xori         a4, s6, 362
                  bgeu         a2, s8, main_j3 #branch to jump instr
                  sra          t4, t6, s10
                  srli         a2, s2, 27
                  sltu         s2, t4, s5
                  slt          t5, t2, a1
                  or           a2, zero, s8
                  xori         s11, s10, 1385
                  sub          s3, a2, s2
main_j3:          jalr         ra, a5, 488 #jump main -> sub_4
                  la           t0, sub_1
                  srai         s1, zero, 26
                  srl          zero, tp, a4
                  srl          a2, s8, a5
                  andi         s3, a5, 1081
                  addi         t0, t0, -862
                  srai         t2, s3, 17
                  blt          s7, a1, main_j4 #branch to jump instr
                  add          s8, zero, a3
                  sra          a5, s3, a7
                  xori         tp, s3, -1381
main_j4:          jalr         ra, t0, 863 #jump main -> sub_1
main_18:          jal          ra, 4f
0:                jal          ra, 13f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          a7, 6f
4:                jal          gp, 23f
5:                jal          gp, 14f
6:                jal          ra, 17f
7:                jal          ra, 2b
8:                jal          ra, 0b
9:                jal          a4, 18f
10:               jal          ra, 16f
11:               jal          ra, 24f
12:               jal          ra, 9b
13:               jal          ra, 1b
14:               jal          sp, 20f
15:               jal          ra, 8b
16:               jal          a4, 5b
17:               jal          ra, 15b
18:               jal          gp, 21f
19:               jal          t1, 3b
20:               jal          t1, 11b
21:               jal          a4, 25f
22:               jal          ra, 7b
23:               jal          ra, 19b
24:               jal          a4, 22b
25:               andi         s1, a1, 1263
main_1:           jal          ra, 8f
0:                jal          s2, 1f
1:                jal          ra, 17f
2:                jal          ra, 9f
3:                jal          tp, 13f
4:                jal          ra, 10f
5:                jal          ra, 14f
6:                jal          ra, 0b
7:                jal          t4, 15f
8:                jal          ra, 3b
9:                jal          ra, 11f
10:               jal          ra, 7b
11:               jal          ra, 4b
12:               jal          s2, 5b
13:               jal          s5, 12b
14:               jal          ra, 2b
15:               jal          t1, 16f
16:               jal          ra, 6b
17:               addi         s1, t4, 267
main_21:          jal          ra, 4f
0:                jal          a3, 10f
1:                jal          ra, 11f
2:                jal          s4, 12f
3:                jal          t4, 14f
4:                jal          ra, 0b
5:                jal          tp, 15f
6:                jal          t1, 1b
7:                jal          s1, 16f
8:                jal          ra, 6b
9:                jal          ra, 2b
10:               jal          a2, 3b
11:               jal          t1, 9b
12:               jal          ra, 7b
13:               jal          ra, 8b
14:               jal          t1, 5b
15:               jal          ra, 13b
16:               srai         s1, gp, 10
main_10:          jal          ra, 6f
0:                jal          ra, 12f
1:                jal          ra, 8f
2:                jal          ra, 1b
3:                jal          t1, 7f
4:                jal          s3, 3b
5:                jal          s10, 2b
6:                jal          s8, 11f
7:                jal          t1, 5b
8:                jal          ra, 9f
9:                jal          t1, 0b
10:               jal          t1, 4b
11:               jal          ra, 10b
12:               jal          a7, 13f
13:               andi         s5, t3, -1077
main_8:           jal          ra, 18f
0:                jal          ra, 15f
1:                jal          ra, 7f
2:                jal          sp, 9f
3:                jal          ra, 4f
4:                jal          ra, 14f
5:                jal          t0, 3b
6:                jal          s4, 22f
7:                jal          ra, 2b
8:                jal          ra, 21f
9:                jal          s6, 16f
10:               jal          ra, 1b
11:               jal          ra, 12f
12:               jal          ra, 13f
13:               jal          ra, 6b
14:               jal          t1, 11b
15:               jal          s10, 19f
16:               jal          t4, 20f
17:               jal          ra, 5b
18:               jal          ra, 10b
19:               jal          tp, 8b
20:               jal          t1, 0b
21:               jal          t2, 17b
22:               and          zero, t0, a4
main_14:          jal          ra, 21f
0:                jal          ra, 6f
1:                jal          s4, 13f
2:                jal          ra, 12f
3:                jal          t1, 23f
4:                jal          s7, 14f
5:                jal          ra, 19f
6:                jal          ra, 9f
7:                jal          t1, 4b
8:                jal          a1, 24f
9:                jal          a1, 15f
10:               jal          a5, 7b
11:               jal          t1, 10b
12:               jal          s3, 8b
13:               jal          ra, 22f
14:               jal          ra, 5b
15:               jal          a0, 16f
16:               jal          a2, 20f
17:               jal          ra, 0b
18:               jal          s2, 11b
19:               jal          ra, 1b
20:               jal          ra, 18b
21:               jal          ra, 17b
22:               jal          ra, 3b
23:               jal          t1, 2b
24:               sll          a1, a0, a1
main_7:           jal          ra, 3f
0:                jal          ra, 13f
1:                jal          ra, 16f
2:                jal          s3, 1b
3:                jal          ra, 9f
4:                jal          ra, 6f
5:                jal          t6, 10f
6:                jal          t1, 5b
7:                jal          ra, 15f
8:                jal          s8, 4b
9:                jal          s3, 0b
10:               jal          t4, 17f
11:               jal          t1, 2b
12:               jal          ra, 18f
13:               jal          ra, 8b
14:               jal          ra, 11b
15:               jal          ra, 14b
16:               jal          ra, 12b
17:               jal          ra, 7b
18:               add          s11, s1, a4
main_5:           jal          ra, 4f
0:                jal          ra, 12f
1:                jal          t1, 3f
2:                jal          a7, 0b
3:                jal          ra, 9f
4:                jal          t1, 6f
5:                jal          t1, 1b
6:                jal          ra, 10f
7:                jal          t2, 11f
8:                jal          sp, 2b
9:                jal          ra, 8b
10:               jal          s4, 7b
11:               jal          tp, 5b
12:               xor          t0, s9, s6
main_6:           jal          ra, 19f
0:                jal          ra, 22f
1:                jal          ra, 16f
2:                jal          s10, 26f
3:                jal          gp, 18f
4:                jal          s2, 20f
5:                jal          t1, 2b
6:                jal          ra, 27f
7:                jal          t5, 10f
8:                jal          ra, 21f
9:                jal          s10, 8b
10:               jal          sp, 14f
11:               jal          ra, 4b
12:               jal          sp, 7b
13:               jal          t1, 12b
14:               jal          t1, 23f
15:               jal          ra, 17f
16:               jal          ra, 9b
17:               jal          ra, 0b
18:               jal          ra, 11b
19:               jal          t1, 5b
20:               jal          t1, 15b
21:               jal          ra, 25f
22:               jal          ra, 13b
23:               jal          t2, 24f
24:               jal          a5, 1b
25:               jal          s7, 6b
26:               jal          ra, 3b
27:               nop
main_23:          jal          ra, 6f
0:                jal          t1, 9f
1:                jal          tp, 3f
2:                jal          ra, 8f
3:                jal          ra, 10f
4:                jal          ra, 0b
5:                jal          t1, 2b
6:                jal          t0, 7f
7:                jal          s6, 4b
8:                jal          s7, 1b
9:                jal          ra, 5b
10:               nop
main_22:          jal          ra, 14f
0:                jal          ra, 16f
1:                jal          t1, 9f
2:                jal          a1, 1b
3:                jal          t1, 2b
4:                jal          ra, 24f
5:                jal          t1, 0b
6:                jal          t1, 8f
7:                jal          ra, 5b
8:                jal          ra, 23f
9:                jal          s6, 4b
10:               jal          ra, 7b
11:               jal          ra, 20f
12:               jal          t1, 3b
13:               jal          s5, 10b
14:               jal          ra, 15f
15:               jal          t1, 21f
16:               jal          sp, 22f
17:               jal          ra, 18f
18:               jal          ra, 6b
19:               jal          t0, 17b
20:               jal          t1, 19b
21:               jal          ra, 11b
22:               jal          ra, 12b
23:               jal          ra, 13b
24:               xori         s6, a2, -1568
main_20:          jal          ra, 23f
0:                jal          a2, 9f
1:                jal          ra, 10f
2:                jal          ra, 14f
3:                jal          t1, 26f
4:                jal          s3, 21f
5:                jal          ra, 0b
6:                jal          ra, 20f
7:                jal          ra, 18f
8:                jal          a0, 15f
9:                jal          s1, 4b
10:               jal          ra, 7b
11:               jal          ra, 8b
12:               jal          gp, 28f
13:               jal          t1, 22f
14:               jal          ra, 25f
15:               jal          ra, 12b
16:               jal          t1, 13b
17:               jal          ra, 16b
18:               jal          s9, 27f
19:               jal          s1, 2b
20:               jal          t1, 29f
21:               jal          ra, 19b
22:               jal          gp, 5b
23:               jal          ra, 11b
24:               jal          s5, 1b
25:               jal          ra, 6b
26:               jal          t1, 24b
27:               jal          t1, 17b
28:               jal          ra, 3b
29:               nop
main_9:           jal          ra, 0f
0:                jal          ra, 5f
1:                jal          ra, 3f
2:                jal          ra, 4f
3:                jal          t0, 9f
4:                jal          ra, 6f
5:                jal          ra, 7f
6:                jal          ra, 10f
7:                jal          tp, 1b
8:                jal          ra, 11f
9:                jal          a4, 2b
10:               jal          ra, 8b
11:               jal          t1, 12f
12:               srai         a3, s9, 19
main_4:           jal          ra, 9f
0:                jal          ra, 4f
1:                jal          s4, 8f
2:                jal          ra, 19f
3:                jal          gp, 6f
4:                jal          ra, 16f
5:                jal          t6, 15f
6:                jal          ra, 0b
7:                jal          a7, 21f
8:                jal          ra, 3b
9:                jal          ra, 17f
10:               jal          s11, 7b
11:               jal          ra, 13f
12:               jal          ra, 14f
13:               jal          ra, 5b
14:               jal          t1, 20f
15:               jal          ra, 2b
16:               jal          ra, 10b
17:               jal          t0, 12b
18:               jal          t5, 11b
19:               jal          ra, 1b
20:               jal          ra, 18b
21:               xori         s1, sp, -1234
main_19:          jal          ra, 12f
0:                jal          ra, 3f
1:                jal          t1, 7f
2:                jal          ra, 4f
3:                jal          t0, 5f
4:                jal          a4, 10f
5:                jal          ra, 6f
6:                jal          ra, 1b
7:                jal          t1, 13f
8:                jal          ra, 2b
9:                jal          ra, 14f
10:               jal          ra, 0b
11:               jal          a1, 8b
12:               jal          ra, 11b
13:               jal          ra, 9b
14:               lui          t2, 760677
main_17:          jal          ra, 10f
0:                jal          s10, 16f
1:                jal          ra, 8f
2:                jal          t1, 5f
3:                jal          t1, 19f
4:                jal          ra, 26f
5:                jal          t4, 1b
6:                jal          ra, 12f
7:                jal          ra, 17f
8:                jal          ra, 7b
9:                jal          s9, 22f
10:               jal          t1, 18f
11:               jal          sp, 25f
12:               jal          ra, 15f
13:               jal          t1, 4b
14:               jal          t2, 23f
15:               jal          t1, 3b
16:               jal          s1, 27f
17:               jal          a4, 28f
18:               jal          ra, 13b
19:               jal          ra, 11b
20:               jal          s7, 2b
21:               jal          s7, 9b
22:               jal          ra, 14b
23:               jal          ra, 6b
24:               jal          ra, 20b
25:               jal          t1, 0b
26:               jal          ra, 21b
27:               jal          ra, 24b
28:               or           a1, s7, t0
main_11:          jal          ra, 4f
0:                jal          ra, 9f
1:                jal          ra, 8f
2:                jal          a2, 1b
3:                jal          s6, 10f
4:                jal          t1, 5f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          s4, 3b
8:                jal          t1, 7b
9:                jal          ra, 6b
10:               auipc        t4, 665835
main_3:           jal          ra, 13f
0:                jal          s5, 8f
1:                jal          ra, 14f
2:                jal          ra, 0b
3:                jal          s4, 11f
4:                jal          a4, 3b
5:                jal          ra, 4b
6:                jal          t2, 9f
7:                jal          ra, 12f
8:                jal          ra, 15f
9:                jal          tp, 17f
10:               jal          ra, 1b
11:               jal          t1, 7b
12:               jal          ra, 16f
13:               jal          s4, 2b
14:               jal          ra, 5b
15:               jal          a7, 10b
16:               jal          t1, 6b
17:               or           t4, s9, s11
main_12:          jal          ra, 7f
0:                jal          s10, 2f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          t1, 18f
4:                jal          t0, 22f
5:                jal          a1, 11f
6:                jal          t1, 12f
7:                jal          t1, 19f
8:                jal          ra, 14f
9:                jal          a5, 17f
10:               jal          tp, 20f
11:               jal          t1, 13f
12:               jal          ra, 8b
13:               jal          a2, 10b
14:               jal          s8, 0b
15:               jal          ra, 16f
16:               jal          t1, 1b
17:               jal          ra, 6b
18:               jal          ra, 9b
19:               jal          s4, 15b
20:               jal          ra, 21f
21:               jal          t1, 4b
22:               xori         t6, t6, 1401
main_13:          jal          ra, 22f
0:                jal          t1, 18f
1:                jal          a3, 12f
2:                jal          t1, 15f
3:                jal          ra, 14f
4:                jal          s6, 19f
5:                jal          s6, 21f
6:                jal          t0, 4b
7:                jal          ra, 24f
8:                jal          s10, 0b
9:                jal          ra, 11f
10:               jal          gp, 9b
11:               jal          ra, 17f
12:               jal          a3, 8b
13:               jal          ra, 2b
14:               jal          t4, 23f
15:               jal          t1, 20f
16:               jal          sp, 5b
17:               jal          s8, 1b
18:               jal          t1, 3b
19:               jal          ra, 10b
20:               jal          ra, 7b
21:               jal          ra, 13b
22:               jal          ra, 6b
23:               jal          ra, 16b
24:               slt          a0, a2, s2
                  add          s1, a6, t4
                  bne          t4, s0, 20f
                  sra          a4, a6, s4
                  xori         t4, t6, 157
                  beq          a3, s1, 10f
                  auipc        a4, 830457
                  srli         ra, t2, 30
                  add          s3, s0, s4
                  slli         s7, a2, 21
                  addi         sp, s8, -1876
10:               xor          tp, s8, t3
                  sll          s3, s6, s3
                  srai         gp, a7, 20
                  addi         s4, s10, -82
                  addi         t4, s6, -613
                  srli         s6, s7, 9
                  add          a3, a2, s3
                  auipc        s7, 341555
                  sltu         s1, s3, s8
                  srl          a0, a5, s10
20:               or           sp, s11, a4
                  sra          t1, a5, a2
                  nop
                  or           s6, s4, t6
                  beq          t1, t6, 28f
                  sltu         t4, t6, zero
                  xor          zero, s8, t2
                  srli         a4, t1, 30
28:               xori         a4, s1, 962
                  sub          s3, t4, a4
                  bne          a7, t0, 49f
                  sltu         t0, a7, a0
                  sra          s5, gp, gp
                  sra          s3, s7, a7
                  sra          s2, gp, sp
                  xor          a2, t5, a7
                  sll          a0, s7, s2
                  ori          t0, s10, -807
                  bge          t3, a2, 57f
                  sltu         t2, s4, gp
                  bltu         s7, t5, 43f
                  srl          t1, gp, s1
main_2:           jal          ra, 12f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          tp, 0b
3:                jal          s11, 19f
4:                jal          t1, 3b
5:                jal          tp, 9f
6:                jal          t1, 8f
7:                jal          ra, 24f
8:                jal          a0, 26f
9:                jal          ra, 7b
10:               jal          ra, 4b
11:               jal          ra, 25f
12:               jal          t0, 14f
13:               jal          ra, 10b
14:               jal          t1, 16f
15:               jal          ra, 23f
16:               jal          ra, 2b
17:               jal          t1, 13b
18:               jal          ra, 17b
19:               jal          t0, 5b
20:               jal          ra, 22f
21:               jal          t1, 27f
22:               jal          t1, 15b
23:               jal          t1, 1b
24:               jal          t1, 20b
25:               jal          ra, 21b
26:               jal          ra, 18b
27:               lui          s2, 34718
                  slt          s9, a6, t0
43:               sltiu        t4, s4, 516
                  blt          a2, a3, 50f
                  sltu         s3, a4, s10
                  and          a2, a0, a2
                  sra          s6, a1, t2
                  or           s9, s7, a5
49:               ori          s7, s3, -1230
50:               sll          t4, s8, s2
                  andi         ra, s7, 453
                  xor          a2, t0, t4
                  slti         a3, ra, 1301
                  bltu         a6, t1, 56f
                  xori         s5, s2, -511
56:               sltu         a7, t3, t0
57:               srli         a1, a4, 28
                  srl          a4, a1, a5
                  nop
                  ori          a1, s8, -1664
                  xori         a5, s5, -1993
                  slli         t5, ra, 6
                  sub          s5, t5, s7
                  auipc        a2, 298034
                  bge          s6, a0, 76f
                  beq          a2, a6, 67f
67:               blt          a3, s5, 82f
                  srai         a3, t5, 3
                  xori         t6, s8, 1202
                  ori          t0, s11, 981
                  and          a4, a7, t4
                  xor          tp, t6, s8
                  beq          a5, a5, 75f
                  sub          gp, s10, s5
75:               auipc        sp, 1019780
76:               nop
                  beq          tp, a6, 79f
                  srli         s9, a6, 28
79:               sll          s1, a2, zero
                  xor          s1, s5, zero
                  sltu         sp, t3, a2
82:               bne          s6, ra, 88f
                  addi         s10, s2, 262
                  sltiu        s11, s8, -1808
                  bltu         t2, s3, 101f
                  xor          gp, t5, s4
                  sll          t6, a0, s9
88:               bltu         t2, s3, 89f
89:               add          s8, s9, sp
                  nop
                  srl          s6, s7, s11
                  sub          a1, s3, a5
                  xor          sp, a0, s8
                  addi         s10, s2, -1252
                  or           a7, t1, a7
                  sltu         s10, t1, a1
                  srli         s6, s2, 0
main_16:          jal          ra, 8f
0:                jal          ra, 6f
1:                jal          ra, 23f
2:                jal          ra, 25f
3:                jal          ra, 1b
4:                jal          s4, 20f
5:                jal          ra, 13f
6:                jal          ra, 9f
7:                jal          ra, 24f
8:                jal          t1, 5b
9:                jal          ra, 7b
10:               jal          s2, 26f
11:               jal          t1, 2b
12:               jal          ra, 0b
13:               jal          ra, 17f
14:               jal          ra, 4b
15:               jal          t5, 16f
16:               jal          t1, 11b
17:               jal          t1, 18f
18:               jal          t1, 3b
19:               jal          ra, 22f
20:               jal          t1, 19b
21:               jal          t1, 15b
22:               jal          sp, 10b
23:               jal          ra, 21b
24:               jal          ra, 14b
25:               jal          t1, 12b
26:               slti         zero, sp, 1684
                  and          s3, s10, t1
                  and          t2, a5, zero
                  beq          s0, a1, 115f
101:              xor          a7, t1, s9
                  blt          tp, t1, 107f
                  slt          a3, s10, s2
                  beq          s5, s5, 111f
                  add          a0, s9, a3
                  and          t2, a6, s8
107:              srai         t2, a2, 2
                  sra          t5, a1, gp
                  srai         a3, a2, 7
                  andi         a5, s2, -318
111:              srli         t6, s6, 3
                  slli         gp, t1, 5
                  or           t2, a2, s1
                  auipc        a4, 246937
115:              add          s4, s5, t2
                  ori          s1, s4, -99
                  or           a0, s10, s6
                  add          t2, a7, a0
                  andi         s8, t1, 621
                  srai         s1, s7, 8
                  srli         s1, s8, 22
                  la           a1, sub_3
                  addi         a1, a1, 142
                  xori         a5, s11, 1588
                  slt          a2, a0, t4
                  or           zero, ra, tp
                  sltu         gp, s7, s3
                  xor          t1, t3, t1
main_j1:          jalr         ra, a1, -141 #jump main -> sub_3
                  srai         s3, gp, 31
                  slti         zero, tp, -1168
                  sltiu        a4, t3, -392
                  blt          s4, zero, 131f
                  bge          s9, s4, 125f
                  slt          t5, t4, s6
                  srai         t0, a0, 12
                  xori         tp, t1, 724
125:              srli         a5, t6, 27
                  xor          a1, s7, a5
                  slt          tp, s10, t0
                  ori          t2, gp, 975
                  srai         t6, tp, 13
                  srai         t0, s11, 9
131:              srai         a4, a7, 3
                  srl          a3, s6, a6
                  xor          t5, gp, a7
                  auipc        zero, 504607
                  or           a1, s5, t2
                  bne          a3, zero, 139f
                  ori          ra, a7, 1980
                  lui          a2, 144027
139:              nop
                  ori          s4, t2, 998
                  slt          t2, s1, a7
                  sltu         tp, t6, sp
                  bne          a0, s8, 161f
                  srli         s11, tp, 4
                  slti         sp, s1, -1475
                  sra          t5, s7, tp
                  xor          t2, t2, t2
                  bne          a6, s0, 152f
                  xori         s8, s10, 1503
                  sll          s6, a0, s8
                  auipc        a4, 560990
152:              bge          tp, a7, 166f
                  sltu         s11, t3, s7
                  lui          zero, 396326
                  blt          a1, s11, 174f
                  slli         sp, sp, 16
                  sub          s9, s10, tp
                  lui          t1, 724434
                  sra          s9, s5, s8
                  blt          s2, zero, 175f
161:              nop
                  auipc        a1, 104694
                  bge          s0, t3, 174f
                  lui          s8, 56392
                  sub          tp, a4, s7
166:              auipc        tp, 425564
                  add          s5, sp, tp
                  and          a5, tp, t6
                  srli         sp, a4, 13
                  bge          ra, s9, 173f
                  auipc        s3, 403405
                  ori          s10, s2, -205
173:              slli         a1, s4, 0
174:              slli         t0, t4, 7
175:              nop
                  bgeu         ra, s10, 184f
                  add          s11, s5, t6
                  slli         t0, a5, 4
                  nop
                  addi         ra, s5, 1362
                  xori         t1, s5, 938
                  beq          tp, a0, 184f
                  lui          t2, 634976
184:              blt          s11, s4, 202f
                  beq          s6, s11, 200f
                  nop
                  srli         tp, sp, 3
                  andi         ra, a6, -1511
                  slti         t0, s11, -1058
                  slt          t1, s3, zero
                  andi         s11, ra, -171
                  ori          a0, s9, -664
                  nop
                  and          s10, a6, a6
                  sll          gp, s3, s9
                  srl          a7, t5, ra
                  xori         t2, tp, -544
                  addi         t2, s5, 1891
                  srai         a0, s0, 15
200:              beq          s4, s3, 201f
201:              bgeu         s5, a6, 204f
202:              sub          a0, a3, s5
                  sra          a3, a4, a0
204:              slli         zero, gp, 17
                  slt          s9, a2, s9
                  and          s3, gp, t4
                  sub          zero, t6, t6
                  sub          sp, s8, s4
                  nop
                  slti         t1, t4, 1905
                  slti         s3, a3, -1466
                  sltiu        zero, gp, 414
                  bne          s4, t1, 224f
                  xori         s4, s2, 882
                  slti         s5, a1, 419
                  slt          a4, s7, s9
                  srl          s4, a3, a7
                  auipc        s9, 964673
                  auipc        s6, 293040
                  blt          s8, t0, 224f
                  xori         s4, a0, -743
                  andi         a2, t1, 362
                  sub          s11, s7, a2
224:              slti         t2, a2, -772
                  xor          t0, s9, gp
                  bne          s9, s3, 241f
                  sll          gp, s0, gp
                  xor          a1, t0, t3
                  slt          t2, t2, s8
                  or           tp, a0, s0
                  or           s4, t0, s7
                  sltiu        s9, t5, -1673
                  xori         tp, s7, -1491
                  beq          a3, s8, 238f
                  slti         s10, s7, -1635
                  auipc        s8, 45622
                  bltu         gp, t5, 241f
238:              sltu         tp, a1, s4
                  slt          s7, s8, t1
                  sub          t1, t5, a3
241:              bge          s9, a7, 249f
                  sltiu        a0, s8, 1217
                  or           t5, a1, sp
                  slli         s5, s7, 5
                  auipc        s4, 354341
                  slli         zero, a7, 11
                  add          tp, a6, s5
                  sub          s6, t5, a6
249:              and          t6, sp, s4
                  nop
                  auipc        ra, 990240
                  sltu         a1, t4, gp
                  bgeu         s11, s8, 259f
                  bge          gp, t1, 257f
                  beq          s6, gp, 270f
                  bltu         t5, a1, 267f
257:              and          a1, t4, a4
                  lui          s4, 170475
259:              xor          a1, s2, a2
                  ori          t6, t1, 1415
                  ori          a5, s10, -1731
                  xori         s11, t1, 1285
                  slt          a2, a4, a0
                  slti         a7, t4, 1122
                  bltu         t5, a3, 268f
                  bltu         s10, t1, 282f
267:              or           a7, s7, a4
268:              sra          t5, s6, t6
                  srli         s10, t5, 24
270:              sltiu        a4, t2, 1455
                  bltu         ra, s1, 278f
                  beq          t0, sp, 283f
                  sltu         s9, a1, s0
                  sltu         t1, tp, gp
                  srai         a4, s7, 24
                  srl          t6, s0, s6
                  sltu         s2, a4, s8
278:              or           t4, s3, s8
                  slli         s4, sp, 8
                  beq          a1, ra, 299f
                  blt          a5, s11, 283f
282:              srai         s5, gp, 7
283:              sra          s8, s4, zero
                  ori          s1, t4, -55
                  addi         s4, s9, 1115
                  ori          s6, a4, 1886
                  sltu         t0, zero, t0
                  sll          tp, s6, s7
                  and          tp, s5, t1
                  or           zero, a3, s11
                  blt          t0, t5, 297f
                  sll          s6, s9, t0
                  bltu         t3, a5, 312f
                  bltu         a2, a3, 313f
                  nop
                  slti         tp, sp, -1408
297:              or           t6, s8, a4
                  bne          s4, a1, 299f
299:              auipc        s2, 877964
                  ori          s7, a3, 1071
                  and          s6, s1, a4
                  andi         a4, t1, 1913
                  andi         a0, t2, 1686
                  sra          s5, t2, t6
                  or           t4, tp, s7
                  bne          ra, a4, 312f
main_0:           jal          ra, 6f
0:                jal          ra, 7f
1:                jal          t1, 8f
2:                jal          ra, 15f
3:                jal          t4, 9f
4:                jal          a5, 3b
5:                jal          a7, 1b
6:                jal          a2, 13f
7:                jal          ra, 11f
8:                jal          ra, 4b
9:                jal          ra, 2b
10:               jal          s8, 12f
11:               jal          ra, 5b
12:               jal          ra, 0b
13:               jal          ra, 14f
14:               jal          s7, 10b
15:               srai         s7, t2, 21
                  sltiu        tp, t2, 545
                  slli         tp, sp, 5
                  nop
                  ori          a7, s1, -1740
                  nop
312:              blt          s1, t4, 331f
313:              sra          t6, a5, a5
                  andi         s6, s10, -1915
                  slli         s10, a6, 17
                  xori         a0, s6, -249
                  ori          a2, t4, 1942
                  add          s3, t1, a0
                  andi         t1, a4, -248
                  slli         s2, zero, 11
                  add          a1, sp, t1
                  lui          s1, 237300
                  srai         t1, a6, 28
                  srli         sp, s7, 30
                  sra          a2, s7, s6
                  sltu         a7, s3, t2
                  sltu         a7, s7, t3
                  bltu         ra, s9, 333f
                  srai         a4, ra, 12
                  srai         tp, s5, 26
331:              or           s8, s11, t4
                  bltu         a6, s11, 346f
333:              auipc        a7, 993725
                  nop
                  sra          a1, a3, s2
                  slti         a4, t3, -1025
                  add          s11, t1, t6
                  bgeu         s5, sp, 340f
                  sra          s7, tp, a7
340:              xor          t0, s10, a3
                  sra          sp, s9, a5
                  addi         a2, a1, -1155
                  add          a3, a3, s1
                  sltiu        gp, a6, 25
                  srli         s9, a0, 27
346:              andi         s4, a4, 1232
                  slli         s6, a3, 27
                  ori          s6, s3, -1517
                  add          t0, s10, gp
                  sub          t1, s10, a4
                  slli         a7, zero, 28
                  auipc        s6, 777487
                  and          a4, s10, s0
                  andi         a3, a5, -1082
                  srl          t1, s4, t2
                  xori         a4, a5, 142
                  and          t0, a5, a3
                  andi         gp, a3, -18
                  srl          a2, s2, t3
                  bne          a2, t1, 375f
                  beq          a7, tp, 372f
                  slti         s5, a1, 1369
                  bne          ra, zero, 374f
                  srl          s1, s10, t4
                  xori         t1, s11, -430
                  slt          t6, a4, a2
                  beq          tp, sp, 374f
                  bgeu         s11, t0, 376f
                  or           t0, t2, t2
                  xor          zero, t6, t4
                  sra          t2, a0, s8
372:              lui          s3, 96412
                  lui          a5, 480099
374:              sub          a5, a1, t1
375:              and          t4, s1, s2
376:              and          zero, tp, s1
                  nop
                  or           s5, a3, s0
                  bgeu         s2, a2, 398f
                  sub          t4, t5, s2
                  sltu         a4, a2, tp
                  blt          t4, s8, 388f
                  bne          a3, t5, 402f
                  beq          a7, t2, 385f
385:              bne          a5, s7, 396f
                  slli         t1, a3, 10
                  andi         ra, a4, 1614
388:              sll          a7, a7, a2
                  sub          s11, a5, s11
                  sltiu        s10, t2, 208
                  sub          s10, sp, s10
                  sra          a7, t4, s4
                  sltu         a7, t5, s4
                  sltiu        t1, s0, 1569
                  andi         s5, a3, -1687
396:              xor          s11, ra, s3
                  sll          a7, zero, gp
398:              add          t2, a7, t5
                  bltu         t6, s1, 418f
                  addi         t4, s4, 1579
                  xor          ra, t4, tp
402:              sltu         s10, t2, t0
                  srl          t6, s9, s5
                  sub          a0, gp, a6
                  auipc        a1, 627098
                  sra          s2, s10, s11
                  auipc        sp, 476717
                  slti         s7, t5, -468
                  blt          s8, a4, 413f
                  srli         t6, zero, 18
                  sra          s2, s0, a2
                  srli         s11, s5, 2
413:              ori          s6, gp, -1636
                  blt          zero, t0, 429f
                  add          a3, s1, gp
                  srl          s11, s11, t5
                  bne          t6, t2, 421f
418:              xori         t2, zero, 1284
                  slt          s6, t0, s7
                  srai         s10, a2, 20
421:              sltu         a0, a0, s6
                  slli         a7, tp, 13
                  slli         s6, a6, 5
                  andi         a4, a0, 173
                  blt          s8, zero, 444f
                  bgeu         s5, sp, 442f
                  slli         s2, s4, 24
                  slti         s11, s4, -1376
429:              bltu         gp, a6, 433f
                  add          gp, s4, s3
                  sll          a2, s2, s11
                  beq          ra, s9, 435f
433:              or           a2, s0, t5
                  slt          a3, a7, t0
435:              bgeu         s7, t3, 438f
                  add          s1, s2, s4
                  bgeu         s1, s1, 443f
438:              srai         sp, s10, 11
                  sra          s10, t2, s1
                  slli         sp, sp, 15
                  slt          zero, a1, sp
442:              slli         zero, sp, 7
443:              and          s5, t1, sp
444:              xor          a7, s1, s8
                  slli         a3, t3, 7
                  nop
                  beq          t3, ra, 461f
                  sub          s6, sp, s5
                  auipc        t4, 978752
                  sra          ra, a1, a0
                  add          a7, t0, s5
                  slti         zero, s11, -1049
                  sll          sp, s2, tp
                  sra          s6, zero, tp
                  andi         t5, a3, -867
                  slt          s8, a7, a6
                  bne          a7, s4, 459f
                  bgeu         t6, s3, 473f
459:              sltu         a3, zero, s6
                  auipc        s2, 851560
461:              and          a4, s11, a4
                  auipc        t6, 426122
                  bge          s10, t4, 468f
                  bgeu         ra, a5, 466f
                  nop
466:              bge          gp, t6, 484f
                  sltu         s8, t4, t1
468:              bge          t1, a7, 471f
                  ori          t4, a5, 1778
                  lui          a3, 289332
471:              sra          s8, s7, a4
                  xori         zero, s6, 1818
473:              bge          s3, s4, 479f
                  xor          gp, gp, s3
                  slt          a4, a3, t0
                  srli         t1, tp, 22
                  auipc        s6, 899030
                  slti         s6, t2, 276
479:              bge          a7, sp, 480f
480:              bltu         a7, s11, 482f
                  addi         t1, s10, -575
482:              xori         s1, s10, 1005
                  nop
484:              bgeu         s9, s4, 490f
                  ori          t4, s4, -196
                  sltiu        s9, s8, 92
                  srli         t6, t4, 0
                  auipc        s10, 796685
                  or           s9, t3, t4
490:              and          t1, s1, a1
                  ori          s1, s9, -771
                  andi         t1, a2, 689
                  slli         a2, a0, 23
                  srl          s1, t1, s1
                  blt          a7, gp, 511f
                  bne          s1, s2, 511f
                  sra          t4, s10, t3
                  blt          s2, t5, 513f
                  add          t1, s8, sp
                  lui          a1, 943773
                  sll          zero, a6, a4
                  beq          a0, s5, 503f
503:              beq          zero, s1, 507f
                  lui          t2, 844904
                  xor          s7, a1, s11
                  beq          a2, tp, 511f
507:              sub          s6, t2, zero
                  sra          s5, s0, s4
                  sltiu        t4, a7, -1530
                  auipc        t1, 379091
511:              xor          tp, a4, t1
                  beq          t6, s0, 518f
513:              bne          t6, a2, 527f
                  bge          ra, ra, 533f
                  slli         a5, a1, 26
                  slti         t0, t4, 245
                  srli         t0, t3, 14
518:              sub          a2, a1, s10
                  add          a4, s5, t6
                  auipc        s9, 50358
                  srl          t6, a4, t6
                  bltu         s3, s9, 524f
                  slli         a1, a0, 18
524:              slti         a1, t4, 1279
                  blt          a2, t4, 528f
                  sll          a3, t1, t6
527:              sltu         a3, s0, s6
528:              slti         t6, t1, 500
                  xor          s5, gp, gp
                  beq          ra, zero, 549f
                  xori         s2, s1, 1738
                  srai         t2, a3, 9
533:              sll          s3, a3, t1
                  beq          s6, t0, 535f
535:              slt          t2, s11, t0
                  bgeu         s1, s10, 551f
                  sll          ra, a4, a5
                  srai         s6, a2, 24
                  add          t1, s7, tp
                  blt          s6, s8, 542f
                  and          s6, s3, t6
542:              sltiu        t2, s8, -438
                  srl          gp, a0, t4
                  add          s9, t5, a5
                  bgeu         a2, t5, 564f
                  or           t0, t5, zero
                  sll          t1, a0, s7
                  sra          s6, t6, t2
549:              srl          t4, s7, gp
                  and          tp, t0, t0
551:              srai         a3, s3, 8
                  blt          s7, s1, 556f
                  blt          s7, t3, 564f
                  blt          a0, t2, 565f
                  blt          t0, s7, 559f
556:              ori          s9, tp, 259
                  srli         gp, t1, 1
                  lui          s1, 321448
559:              addi         a5, a0, 1268
                  andi         a7, s2, -1342
                  auipc        s9, 519067
                  xor          a1, s1, a3
                  sltu         s6, a7, t0
564:              slli         a4, s10, 9
565:              bgeu         a6, s7, 568f
                  nop
                  bge          t0, a6, 570f
568:              beq          ra, ra, 587f
                  andi         t4, s1, -1385
570:              blt          ra, s11, 577f
                  lui          t4, 284045
                  sub          s9, t2, s0
                  srai         s7, s0, 30
                  auipc        a7, 529344
                  beq          s6, t4, 577f
                  srai         s8, sp, 12
577:              sltu         s3, s3, ra
                  bltu         a4, a4, 589f
                  andi         t5, s2, 1028
                  nop
                  auipc        a5, 467185
                  andi         zero, s4, 1598
                  sltiu        sp, t1, 627
                  beq          s0, t2, 602f
                  sltiu        t1, a1, -452
                  slt          t5, s6, t4
587:              bgeu         t1, a4, 593f
                  sltiu        s11, t1, 1124
589:              srl          s6, t3, a7
                  and          s6, s2, ra
                  beq          a0, a5, 599f
                  or           a0, a7, s9
593:              sra          a5, sp, s0
                  slti         s6, a0, 1506
                  add          tp, gp, s2
                  xori         t1, s10, 167
                  beq          s9, a6, 601f
                  srai         sp, a4, 20
599:              sltiu        a2, t5, -87
                  sltu         s4, t1, t6
601:              slti         ra, t2, 540
602:              sra          s1, zero, s0
                  addi         a3, a0, 1373
                  srl          s2, t2, s3
                  bge          a1, a1, 606f
606:              and          a1, s4, a7
                  and          gp, t5, s5
                  srl          s5, t4, s9
                  bne          a6, s2, 611f
                  bge          s2, a3, 616f
611:              bge          s8, t3, 614f
                  blt          t3, s4, 631f
                  bne          s8, tp, 627f
614:              or           s7, t2, tp
                  add          ra, a5, s6
616:              ori          s6, a1, -788
                  bne          tp, a6, 623f
                  blt          a4, s11, 621f
                  auipc        a7, 931205
                  srl          a0, zero, zero
621:              sra          t5, ra, a2
                  auipc        t1, 215021
623:              xor          s5, a2, zero
                  blt          gp, s0, 632f
                  addi         s10, s1, -52
                  or           s11, s7, zero
627:              slli         t6, gp, 15
                  bltu         t5, t2, 643f
                  bge          t2, s8, 644f
                  andi         zero, s6, 1338
631:              srai         s4, s6, 21
632:              srli         s3, s6, 5
                  auipc        s7, 209981
                  addi         s7, a4, -1859
                  bltu         t6, s7, 654f
                  nop
                  bne          s2, s5, 652f
                  ori          t4, s11, -1438
                  srli         a4, s2, 19
                  ori          t6, s5, 1096
                  beq          s4, t3, 644f
                  blt          a4, t0, 653f
643:              bge          a0, s2, 662f
644:              nop
                  sltu         s3, t1, t5
                  lui          t0, 648094
                  bge          zero, zero, 658f
                  or           a5, s8, s2
                  sltiu        a7, t3, 1002
                  lui          t5, 153790
                  slt          s8, s6, t2
652:              nop
653:              andi         a0, t1, 1202
654:              or           s4, s9, sp
                  sll          t6, s6, a7
                  lui          t0, 357366
                  sub          s9, a1, a2
658:              srl          s9, a7, t0
                  xor          s3, t0, a0
                  ori          s1, a1, -819
                  xor          t6, t0, zero
662:              lui          a3, 294605
                  sub          s4, tp, s10
main_15:          jal          ra, 3f
0:                jal          ra, 5f
1:                jal          t0, 2f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          ra, 0b
5:                jal          t1, 8f
6:                jal          ra, 11f
7:                jal          ra, 13f
8:                jal          ra, 9f
9:                jal          ra, 10f
10:               jal          gp, 12f
11:               jal          ra, 1b
12:               jal          tp, 14f
13:               jal          a5, 6b
14:               ori          tp, zero, 1829
                  sltiu        s5, s9, 779
                  sra          zero, s9, s5
                  or           s2, sp, s9
                  xori         s5, s8, 1464
                  slt          ra, t3, a6
                  bge          s10, t4, 673f
                  sll          t4, tp, a2
                  xor          zero, t5, a0
                  slt          t2, zero, s3
673:              sub          gp, s10, s4
                  slti         gp, a5, 901
                  sltu         s6, s3, s6
                  sub          tp, s9, s5
                  srli         t5, s7, 9
                  blt          t5, t4, 696f
                  srli         s3, s11, 27
                  sub          t6, t2, s6
                  ori          tp, a4, -563
                  srl          s6, s10, zero
                  srl          a3, s5, s2
                  srai         t5, t3, 26
                  slt          s2, t6, s10
                  xor          s8, zero, a2
                  nop
                  andi         t1, a0, 1535
                  slli         t6, t1, 23
                  bltu         a6, sp, 706f
                  slt          gp, s4, zero
                  srl          s3, t4, s8
                  sltu         s2, a0, s0
                  slli         t6, a3, 25
                  lui          t5, 167271
696:              add          s11, s5, s8
                  slti         t2, s4, 830
                  bgeu         t3, s6, 700f
                  sra          a3, t0, a2
700:              beq          t1, s10, 705f
                  srli         s11, ra, 31
                  addi         t2, s8, 1312
                  bge          a2, gp, 705f
                  xor          sp, a6, s1
705:              sra          t4, sp, ra
706:              or           s3, s3, a5
                  or           tp, a6, s2
                  bgeu         a3, a4, 715f
                  sll          gp, a4, a6
                  sub          s10, s0, t5
                  sra          t1, s1, s6
                  slti         s7, t6, -1047
                  xor          s4, tp, s4
                  bltu         s4, t2, 720f
715:              auipc        s1, 250962
                  srli         a2, ra, 12
                  srai         s3, a1, 15
                  slti         t4, s0, -772
                  xor          a4, a3, s4
720:              nop
                  bge          s7, s3, 722f
722:              sra          t0, ra, s5
                  srai         zero, s2, 11
                  sltu         sp, s7, s5
                  sll          a7, s3, t6
                  slti         s7, t5, -494
                  xori         t0, a2, 508
                  blt          a4, t3, 739f
                  sub          ra, t4, tp
                  sltiu        a2, t4, 1468
                  sub          t4, s11, s5
                  add          t4, a6, sp
                  bgeu         s9, a7, 737f
                  slli         s2, a1, 11
                  nop
                  srl          t1, s1, t6
737:              nop
                  sub          a4, t1, sp
739:              bne          s9, a2, 758f
                  add          a0, a6, s6
                  ori          s6, tp, -1531
                  auipc        tp, 370879
                  and          a5, t1, s10
                  beq          sp, s10, 762f
                  xor          ra, s9, a6
                  add          a3, ra, s9
                  sra          s11, s7, a4
                  sub          t4, a4, tp
                  bltu         ra, s5, 755f
                  sll          s2, s5, ra
                  sll          s2, zero, ra
                  bltu         zero, sp, 767f
                  bgeu         zero, s5, 757f
                  srai         s9, a4, 0
755:              add          t6, a7, t0
                  blt          s10, t3, 775f
757:              bne          t5, s9, 763f
758:              lui          a2, 216304
                  bltu         s5, s6, 763f
                  beq          t4, t1, 764f
                  or           s1, s10, s0
762:              add          s1, t2, s1
763:              or           a0, s10, gp
764:              sll          a4, a2, t3
                  sub          s5, s3, t0
                  lui          a1, 954687
767:              auipc        s1, 188480
                  slli         a3, t0, 28
                  slt          a4, s6, s1
                  slli         s11, s4, 24
                  blt          a4, s6, 782f
                  slt          zero, s3, s3
                  srli         gp, a7, 15
                  bgeu         s3, a7, 782f
775:              addi         s7, s7, -166
                  bge          a4, s11, 782f
                  bgeu         zero, gp, 788f
                  bltu         s10, t5, 789f
                  add          gp, s11, t5
                  sub          sp, t3, s4
                  slti         a0, tp, -970
782:              srl          s2, ra, s8
                  srl          tp, s11, a7
                  sra          s5, s0, a3
                  and          tp, a1, s2
                  add          gp, s11, s7
                  nop
788:              auipc        s1, 972450
789:              nop
                  sltiu        tp, a2, -1167
                  ori          sp, sp, 522
                  bltu         a2, t5, 811f
                  ori          t1, a7, 1091
                  sltiu        s11, s10, 475
                  lui          s7, 1009158
                  lui          s6, 1021357
                  or           zero, s8, s2
                  add          s5, s1, a3
                  sub          s2, ra, s7
                  sltu         a2, a7, s6
                  xori         s4, s7, 1281
                  slti         s7, s0, 1188
                  lui          s4, 989075
                  auipc        a3, 893621
                  blt          s9, ra, 808f
                  bltu         s1, tp, 825f
                  addi         ra, s5, 128
808:              add          tp, t5, s6
                  bltu         a7, t6, 828f
                  sub          a4, t0, s8
811:              sra          s2, t6, t6
                  add          gp, s9, a0
                  nop
                  slli         s11, s6, 20
                  blt          a6, a7, 818f
                  bne          zero, s0, 817f
817:              sltu         t2, a6, t1
818:              lui          s3, 543300
                  andi         s11, a1, -75
                  bgeu         tp, t1, 834f
                  bge          s0, s1, 828f
                  bge          s7, s4, 824f
                  bltu         gp, zero, 826f
824:              bge          s2, s6, 839f
825:              auipc        s3, 456325
826:              bge          s9, t1, 841f
                  and          s4, s1, t6
828:              sll          t4, a4, s6
                  or           a3, s7, t2
                  lui          s7, 961908
                  auipc        s7, 911015
                  sub          sp, t5, s4
                  bge          s7, ra, 835f
834:              slti         t1, s9, -1872
835:              ori          a1, a4, -1419
                  auipc        t4, 3786
                  ori          ra, s6, -903
                  add          t6, a0, s1
839:              and          t4, a5, s11
                  sll          a3, gp, s9
841:              beq          gp, t5, 843f
                  sra          s3, s7, a0
843:              blt          s1, s10, 848f
                  xori         s1, a5, 1086
                  bgeu         a6, s0, 846f
846:              sub          t4, t6, t0
                  sub          t6, t1, s2
848:              bltu         a0, sp, 864f
                  sltu         s10, s8, s2
                  slti         t2, zero, -1124
                  bltu         a6, a7, 855f
                  srai         ra, a1, 20
                  beq          tp, a6, 864f
                  bltu         ra, zero, 865f
855:              srli         s8, s6, 14
                  slti         a3, s11, 336
                  blt          s1, a1, 872f
                  add          a2, t1, t5
                  slti         s4, a1, -572
                  sltiu        s10, a6, -1759
                  blt          a1, t3, 872f
                  bge          s5, s8, 868f
                  bge          s1, s9, 882f
864:              lui          s9, 773636
865:              sra          a3, s11, s1
                  bge          a7, t1, 882f
                  addi         a5, s10, -1330
868:              sub          gp, s0, s9
                  srli         s6, t4, 13
                  auipc        s1, 544986
                  sltu         s8, ra, t0
872:              bgeu         gp, t1, 880f
                  sll          tp, s3, a1
                  sltiu        a7, a0, -1483
                  auipc        s3, 198494
                  bltu         t3, s1, 877f
877:              bltu         s10, a1, 881f
                  srli         gp, sp, 5
                  or           ra, a0, t3
880:              slt          s6, s9, s2
881:              nop
882:              slti         ra, a5, -1557
                  slt          s7, t1, s6
                  xor          s7, a1, a0
                  add          s10, s6, a2
                  andi         t6, sp, -1682
                  ori          s10, tp, -1368
                  sra          a7, a6, s2
                  ori          s9, s8, 1769
                  bltu         s7, a3, 908f
                  or           s5, t5, a3
                  slli         t0, gp, 25
                  ori          tp, t6, 669
                  bne          t2, t1, 896f
                  nop
896:              addi         sp, t1, -335
                  srl          s1, t5, s9
                  add          s2, a3, a4
                  sltiu        a2, s10, 270
                  sltu         s11, a3, s5
                  lui          s3, 98653
                  andi         a5, s7, 961
                  sltiu        t5, t6, -2007
                  sltiu        a7, s5, 590
                  add          s3, s9, a0
                  nop
                  bge          s9, gp, 922f
908:              blt          s5, s3, 910f
                  sll          a7, a6, s2
910:              sltiu        t2, gp, -2022
                  auipc        a1, 272250
                  xori         a0, t0, 1337
                  sltu         sp, zero, t2
                  nop
                  xor          zero, t4, zero
                  srl          gp, sp, sp
                  srl          s5, s11, t2
                  beq          t3, s0, 921f
                  xori         a7, tp, 310
                  sltiu        a0, a4, -290
921:              nop
922:              sra          sp, s2, a0
                  ori          ra, s11, -1788
                  slt          s11, zero, a7
                  sub          a4, a3, a0
                  beq          a0, t6, 931f
                  beq          a7, a2, 942f
                  sltiu        gp, s0, -850
                  srli         tp, a4, 26
                  sltu         t1, s11, s7
931:              add          s2, a3, t3
                  slt          a4, t1, zero
                  ori          t6, a3, -1360
                  addi         t2, s3, 300
                  lui          t5, 978782
                  auipc        s10, 600747
                  sra          a1, t5, s9
                  blt          zero, t6, 944f
                  bne          a6, t4, 942f
                  sub          a3, s2, s9
                  slt          a3, s11, sp
942:              sub          t0, t5, a3
                  bltu         a7, s8, 962f
944:              auipc        t6, 87322
                  sra          a7, t3, ra
                  nop
                  sub          a1, a5, s3
                  beq          s7, a4, 962f
                  xor          t0, s7, s3
                  add          s1, t1, t4
                  slt          s8, a5, zero
                  add          s10, a2, s2
                  slli         tp, s3, 9
                  lui          s8, 608080
                  sra          t4, s0, s0
                  or           a2, s6, s2
                  beq          s6, s7, 960f
                  andi         a5, a4, 1853
                  slt          tp, a5, t2
960:              slt          t4, t1, s11
                  slti         s2, a5, 733
962:              sub          a0, a6, ra
                  sltiu        a7, t6, -1413
                  lui          a3, 1026904
                  bge          ra, s1, 969f
                  srli         s10, tp, 11
                  srai         t1, t4, 16
                  srl          s7, t1, a0
969:              blt          a2, a7, 988f
                  and          a5, a6, tp
                  nop
                  xori         a7, s8, -927
                  sub          s1, a2, a1
                  sub          s6, t1, a1
                  addi         t0, a7, -1749
                  andi         ra, t2, -2035
                  srai         s9, a0, 12
                  add          a7, tp, s8
                  lui          a2, 532735
                  srai         a7, ra, 20
                  sra          t2, s9, t1
                  add          a3, t4, t5
                  addi         s9, t3, 147
                  lui          tp, 403518
                  sra          t5, t0, s0
                  bge          t2, a3, 992f
                  bne          t4, t5, 989f
988:              xori         a1, s6, 745
989:              blt          t6, a3, 990f
990:              add          tp, s8, a0
                  addi         t4, ra, 512
992:              ori          a3, ra, -1664
                  sltiu        a4, zero, -1664
                  bgeu         s2, ra, 1013f
                  add          t4, t2, s0
                  sltiu        a4, s5, -175
                  beq          t0, s8, 1004f
                  sll          s3, t1, t1
                  blt          s7, gp, 1010f
                  slt          a4, s2, t3
                  addi         ra, a1, -253
                  slti         s9, a6, 246
                  xori         ra, s4, -1743
1004:             ori          a1, a7, 1533
                  srai         s9, s10, 26
                  slti         s8, s8, 210
                  slt          s4, s10, t0
                  srl          s6, s10, t4
                  and          s8, s0, a0
1010:             srli         ra, a3, 20
                  sll          s11, t2, a0
                  or           a7, a4, a2
1013:             sltiu        a5, s7, 516
                  ori          s6, s5, -1235
                  sra          s3, s1, ra
                  xor          t2, s7, tp
                  andi         s3, a3, 1763
                  slli         t6, s2, 6
                  xor          s9, t1, a2
                  slt          a0, s4, t5
                  blt          s1, s4, 1023f
                  bgeu         a2, t5, 1023f
1023:             sub          s3, a0, a4
                  andi         s5, ra, -191
                  nop
                  srai         s2, zero, 27
                  auipc        a5, 328051
                  andi         s6, tp, -1473
                  srl          s4, a0, ra
                  srli         s4, s5, 0
                  sll          s2, t0, s6
                  auipc        s8, 892930
                  add          t4, t4, tp
                  ori          s5, s9, 1487
                  bge          s1, t6, 1050f
                  slti         a7, a5, -1237
                  auipc        t1, 123889
                  xori         s2, ra, -1263
                  and          t4, a1, s9
                  xor          s2, s0, a6
                  auipc        a0, 204670
                  sll          s5, s9, a3
                  srli         s3, t6, 6
                  or           sp, s6, s8
                  addi         a1, a5, 335
                  blt          s7, s11, 1060f
                  slt          t6, t6, s8
                  slt          a5, a1, s6
                  sll          tp, s4, s1
1050:             auipc        a0, 5788
                  sll          s8, a2, s6
                  sltiu        s11, a7, 53
                  nop
                  andi         s2, t4, -639
                  bgeu         t5, s0, 1060f
                  addi         s10, s1, 31
                  xor          s6, t3, s9
                  bne          t3, t1, 1062f
                  bgeu         a7, s6, 1077f
1060:             sltiu        s11, s3, 940
                  slti         a2, s2, -1682
                  xor          s8, t5, a6
                  slti         a2, a2, 533
                  lui          a5, 48064
                  ori          a7, s1, 2047
                  and          s9, s5, t2
                  nop
                  sra          ra, s6, sp
                  sltiu        s9, t0, -400
                  la           s11, sub_2
                  addi         s11, s11, 115
                  ori          zero, s8, -1432
                  sub          s5, a6, t0
main_j2:          jalr         ra, s11, -115 #jump main -> sub_2
1062:             or           t6, t3, s8
                  sub          sp, t4, t6
                  srl          t2, a2, s6
                  add          s6, s1, t5
                  slli         s5, s5, 0
                  bge          t3, a6, 1071f
                  auipc        s3, 433411
                  bne          s0, sp, 1075f
                  bltu         s1, ra, 1076f
1071:             bne          gp, a0, 1086f
                  bne          s5, zero, 1091f
                  slt          tp, tp, s11
                  sltiu        s5, s11, 1266
1075:             srl          t1, t3, a6
1076:             bne          a0, a0, 1077f
1077:             lui          t2, 361936
                  or           s10, a0, gp
                  auipc        s1, 93063
                  beq          s9, t2, 1099f
                  sra          s9, t4, tp
                  or           s11, s10, a2
                  srl          s1, sp, t2
                  srai         s4, s4, 20
                  bge          s11, s8, 1088f
1086:             xori         tp, t4, -410
                  or           zero, t4, t0
1088:             slti         s2, a7, 389
                  auipc        zero, 504991
                  andi         t2, s3, 1487
1091:             sltu         t6, s6, tp
                  auipc        s11, 344164
                  sltiu        a3, sp, 1018
                  srl          a5, a3, s4
                  beq          s11, a2, 1099f
                  beq          s4, s8, 1115f
                  srl          s6, s10, zero
                  andi         t6, t1, 1044
1099:             and          s7, a4, t0
                  srai         a5, s5, 12
                  lui          s5, 858948
                  sltu         tp, s1, sp
                  slt          t5, s4, t0
                  bne          a3, a5, 1115f
                  ori          gp, ra, 816
                  bgeu         a1, a4, 1113f
                  sra          s8, t3, gp
                  xor          s8, s0, ra
                  bne          s5, s11, 1112f
                  sll          zero, t4, a4
                  bgeu         s7, sp, 1117f
1112:             srai         t6, tp, 30
1113:             beq          s11, ra, 1132f
                  sra          a0, s9, s10
1115:             sub          tp, t4, ra
                  sltiu        a5, s7, 425
1117:             slti         sp, s0, -1227
                  bltu         t2, a7, 1120f
                  xori         a4, zero, -884
1120:             ori          s2, t0, 294
                  sltiu        sp, gp, 1965
                  slt          a0, t4, t4
                  add          sp, ra, tp
                  beq          s6, t3, 1139f
                  sll          s3, t2, a4
                  auipc        a7, 150386
                  srli         gp, t2, 8
                  xor          s4, a2, tp
                  add          ra, t2, t4
                  auipc        a0, 200999
                  bltu         a7, s7, 1134f
1132:             nop
                  bgeu         a2, ra, 1144f
1134:             or           s5, a0, s4
                  slli         t0, s9, 21
                  xor          a2, tp, a3
                  xor          gp, t2, s1
                  xor          a4, s0, tp
1139:             sra          gp, s10, t0
                  add          s6, s0, s2
                  bge          s6, s4, 1143f
                  srl          s6, a6, a4
1143:             andi         s10, gp, 1927
1144:             bne          t3, s2, 1152f
                  slti         t4, t6, -1033
                  blt          t5, a4, 1162f
                  bge          s3, a0, 1149f
                  bltu         a5, s9, 1155f
1149:             sltiu        t0, a6, 1085
                  sltiu        sp, s1, -1524
                  slti         ra, t0, 935
1152:             ori          a3, t6, -1400
                  xor          a4, s8, zero
                  srai         a7, a4, 21
1155:             blt          s6, t3, 1169f
                  xor          t4, a5, a1
                  auipc        s7, 25433
                  sltiu        s1, t6, -2033
                  slti         s6, t5, -1289
                  sub          s10, a1, a5
                  bne          t5, zero, 1180f
1162:             bgeu         s1, t3, 1168f
                  bgeu         gp, t6, 1174f
                  add          s4, t0, t0
                  slt          a2, s0, s4
                  bge          s5, a4, 1177f
                  slli         t1, ra, 23
1168:             blt          gp, s11, 1171f
1169:             bgeu         s1, tp, 1184f
                  sra          a2, t6, a2
1171:             or           s5, s11, a0
                  slti         a0, a3, 174
                  slti         a7, t6, 635
1174:             nop
                  addi         a0, s10, -1094
                  srli         tp, s0, 11
1177:             slli         s2, t4, 2
                  ori          a7, s11, 1996
                  sra          t4, t5, s10
1180:             and          a0, a3, s0
                  sra          s3, tp, s3
                  andi         a5, a6, 1912
                  srai         s9, gp, 19
1184:             add          a5, a2, s0
                  slti         a5, s4, -1843
                  lui          t0, 498595
                  bge          s7, a1, 1189f
                  or           s8, gp, t3
1189:             sltu         a7, t3, s4
                  blt          t4, s5, 1205f
                  ori          zero, t5, -1292
                  or           s10, a1, zero
                  xori         s9, t2, -2001
                  lui          a5, 421640
                  slli         tp, a2, 27
                  srai         t2, a0, 15
                  srl          a7, t4, a4
                  and          t2, s3, sp
                  addi         a1, s10, 976
                  sltiu        zero, ra, 989
                  bge          a6, t1, 1206f
                  srli         s6, s6, 12
                  xori         t5, a1, 1087
                  srai         s10, s2, 30
1205:             nop
1206:             lui          s5, 877814
                  xor          gp, s11, t3
                  slt          s10, t2, s0
                  srl          a3, a2, s5
                  sltu         t0, s0, s4
                  bne          zero, t5, 1212f
1212:             sll          tp, a3, t1
                  xor          s5, a2, a2
                  sra          s1, t1, a5
                  bne          t4, s3, 1224f
                  or           tp, s9, t3
                  nop
                  xor          t5, a4, s2
                  sltu         t4, a5, s3
                  and          t2, s2, tp
                  sltu         s4, a3, t5
                  add          t6, t0, a4
                  andi         sp, a1, 1743
1224:             ori          a0, s1, -2037
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            andi         s9, t6, 509
                  bgeu         a0, tp, sub_1_stack_p
                  sra          a1, s2, s11
sub_1_stack_p:    addi         t3, t3, -32
                  sw           ra, 4(t3)
                  xor          t0, s11, a3
                  sub          t5, sp, s6
                  auipc        s10, 310942
                  srai         s7, tp, 22
sub_1_16:         jal          ra, 2f
0:                jal          ra, 7f
1:                jal          a1, 3f
2:                jal          ra, 1b
3:                jal          s11, 5f
4:                jal          s10, 9f
5:                jal          ra, 4b
6:                jal          ra, 10f
7:                jal          s9, 6b
8:                jal          s10, 0b
9:                jal          ra, 11f
10:               jal          ra, 12f
11:               jal          ra, 8b
12:               ori          a1, a7, -1142
sub_1_22:         jal          ra, 20f
0:                jal          ra, 12f
1:                jal          t2, 7f
2:                jal          tp, 11f
3:                jal          t1, 18f
4:                jal          ra, 2b
5:                jal          ra, 19f
6:                jal          ra, 8f
7:                jal          t1, 13f
8:                jal          a5, 10f
9:                jal          ra, 14f
10:               jal          t1, 3b
11:               jal          s1, 1b
12:               jal          t1, 24f
13:               jal          t1, 6b
14:               jal          t1, 0b
15:               jal          ra, 21f
16:               jal          s5, 4b
17:               jal          ra, 23f
18:               jal          ra, 15b
19:               jal          ra, 17b
20:               jal          ra, 22f
21:               jal          t1, 5b
22:               jal          t1, 16b
23:               jal          s6, 9b
24:               srai         s11, t2, 26
sub_1_17:         jal          ra, 1f
0:                jal          ra, 8f
1:                jal          t1, 16f
2:                jal          t1, 0b
3:                jal          t0, 15f
4:                jal          s10, 2b
5:                jal          t1, 10f
6:                jal          t1, 13f
7:                jal          ra, 12f
8:                jal          t1, 7b
9:                jal          gp, 5b
10:               jal          ra, 14f
11:               jal          s8, 4b
12:               jal          ra, 17f
13:               jal          tp, 9b
14:               jal          t1, 11b
15:               jal          ra, 18f
16:               jal          a1, 3b
17:               jal          ra, 19f
18:               jal          ra, 6b
19:               slli         sp, s10, 23
sub_1_1:          jal          ra, 21f
0:                jal          ra, 24f
1:                jal          ra, 20f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          ra, 6f
5:                jal          ra, 28f
6:                jal          sp, 2b
7:                jal          ra, 29f
8:                jal          t2, 11f
9:                jal          ra, 23f
10:               jal          a4, 26f
11:               jal          ra, 27f
12:               jal          a5, 13f
13:               jal          ra, 5b
14:               jal          t1, 4b
15:               jal          s1, 19f
16:               jal          ra, 30f
17:               jal          ra, 12b
18:               jal          a3, 14b
19:               jal          a2, 8b
20:               jal          s4, 0b
21:               jal          ra, 3b
22:               jal          t1, 15b
23:               jal          gp, 17b
24:               jal          t1, 7b
25:               jal          ra, 16b
26:               jal          gp, 25b
27:               jal          tp, 18b
28:               jal          ra, 1b
29:               jal          s3, 22b
30:               xori         a1, t0, 794
sub_1_15:         jal          ra, 20f
0:                jal          ra, 21f
1:                jal          t1, 4f
2:                jal          ra, 15f
3:                jal          ra, 0b
4:                jal          t4, 9f
5:                jal          ra, 3b
6:                jal          ra, 18f
7:                jal          ra, 16f
8:                jal          ra, 19f
9:                jal          ra, 11f
10:               jal          t1, 5b
11:               jal          ra, 2b
12:               jal          gp, 1b
13:               jal          a2, 12b
14:               jal          t1, 7b
15:               jal          ra, 10b
16:               jal          t1, 8b
17:               jal          t1, 6b
18:               jal          sp, 14b
19:               jal          t1, 13b
20:               jal          ra, 17b
21:               or           gp, s6, a4
sub_1_18:         jal          ra, 17f
0:                jal          s2, 16f
1:                jal          s2, 14f
2:                jal          tp, 10f
3:                jal          t4, 0b
4:                jal          s7, 8f
5:                jal          t1, 9f
6:                jal          t1, 2b
7:                jal          gp, 6b
8:                jal          ra, 11f
9:                jal          ra, 4b
10:               jal          ra, 5b
11:               jal          ra, 20f
12:               jal          ra, 15f
13:               jal          ra, 12b
14:               jal          s5, 7b
15:               jal          ra, 19f
16:               jal          a5, 1b
17:               jal          ra, 18f
18:               jal          ra, 3b
19:               jal          s11, 21f
20:               jal          ra, 13b
21:               sll          ra, tp, t2
sub_1_4:          jal          ra, 14f
0:                jal          t1, 6f
1:                jal          ra, 17f
2:                jal          ra, 20f
3:                jal          ra, 9f
4:                jal          ra, 3b
5:                jal          ra, 21f
6:                jal          ra, 11f
7:                jal          ra, 15f
8:                jal          t1, 7b
9:                jal          s9, 10f
10:               jal          ra, 1b
11:               jal          t1, 16f
12:               jal          gp, 0b
13:               jal          ra, 4b
14:               jal          t1, 22f
15:               jal          a3, 2b
16:               jal          ra, 5b
17:               jal          ra, 23f
18:               jal          a7, 12b
19:               jal          s10, 8b
20:               jal          t1, 13b
21:               jal          t1, 19b
22:               jal          ra, 18b
23:               lui          t5, 142200
sub_1_20:         jal          ra, 2f
0:                jal          ra, 4f
1:                jal          ra, 6f
2:                jal          s9, 1b
3:                jal          ra, 7f
4:                jal          t1, 8f
5:                jal          ra, 12f
6:                jal          ra, 0b
7:                jal          ra, 9f
8:                jal          ra, 3b
9:                jal          ra, 5b
10:               jal          ra, 13f
11:               jal          ra, 10b
12:               jal          ra, 11b
13:               jal          ra, 14f
14:               xori         s5, t4, -1212
sub_1_21:         jal          ra, 0f
0:                jal          ra, 6f
1:                jal          ra, 7f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          ra, 13f
5:                jal          ra, 2b
6:                jal          ra, 5b
7:                jal          ra, 4b
8:                jal          t1, 15f
9:                jal          ra, 14f
10:               jal          ra, 1b
11:               jal          s5, 12f
12:               jal          t1, 3b
13:               jal          ra, 11b
14:               jal          s9, 8b
15:               lui          a1, 948365
sub_1_8:          jal          ra, 12f
0:                jal          ra, 1f
1:                jal          ra, 9f
2:                jal          t1, 18f
3:                jal          ra, 16f
4:                jal          tp, 13f
5:                jal          ra, 7f
6:                jal          t1, 17f
7:                jal          ra, 24f
8:                jal          ra, 23f
9:                jal          a7, 6b
10:               jal          ra, 11f
11:               jal          a0, 2b
12:               jal          ra, 21f
13:               jal          ra, 19f
14:               jal          a3, 3b
15:               jal          ra, 10b
16:               jal          gp, 5b
17:               jal          ra, 14b
18:               jal          ra, 22f
19:               jal          ra, 20f
20:               jal          ra, 0b
21:               jal          ra, 4b
22:               jal          ra, 8b
23:               jal          ra, 25f
24:               jal          s10, 15b
25:               sltu         sp, zero, tp
sub_1_19:         jal          ra, 4f
0:                jal          ra, 2f
1:                jal          t1, 8f
2:                jal          ra, 5f
3:                jal          ra, 10f
4:                jal          ra, 9f
5:                jal          ra, 1b
6:                jal          t0, 3b
7:                jal          ra, 6b
8:                jal          ra, 11f
9:                jal          ra, 7b
10:               jal          ra, 0b
11:               auipc        s7, 391106
sub_1_12:         jal          ra, 14f
0:                jal          t1, 6f
1:                jal          t1, 5f
2:                jal          ra, 8f
3:                jal          ra, 1b
4:                jal          s6, 9f
5:                jal          ra, 4b
6:                jal          ra, 12f
7:                jal          sp, 15f
8:                jal          s8, 0b
9:                jal          s9, 2b
10:               jal          ra, 11f
11:               jal          t1, 3b
12:               jal          ra, 13f
13:               jal          a3, 16f
14:               jal          t1, 7b
15:               jal          ra, 10b
16:               sll          t6, a6, t1
sub_1_10:         jal          ra, 0f
0:                jal          s11, 11f
1:                jal          ra, 7f
2:                jal          a4, 10f
3:                jal          ra, 13f
4:                jal          ra, 8f
5:                jal          ra, 2b
6:                jal          ra, 12f
7:                jal          t1, 14f
8:                jal          ra, 9f
9:                jal          ra, 5b
10:               jal          t2, 3b
11:               jal          s10, 4b
12:               jal          ra, 1b
13:               jal          tp, 6b
14:               srli         t0, ra, 16
sub_1_11:         jal          ra, 13f
0:                jal          t1, 9f
1:                jal          t4, 0b
2:                jal          t1, 4f
3:                jal          ra, 14f
4:                jal          s8, 15f
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          t1, 11f
8:                jal          ra, 6b
9:                jal          ra, 2b
10:               jal          s11, 3b
11:               jal          s9, 12f
12:               jal          t1, 8b
13:               jal          ra, 7b
14:               jal          ra, 1b
15:               slli         s8, s0, 10
sub_1_7:          jal          ra, 25f
0:                jal          ra, 18f
1:                jal          ra, 26f
2:                jal          ra, 27f
3:                jal          t1, 15f
4:                jal          t1, 3b
5:                jal          t1, 4b
6:                jal          ra, 12f
7:                jal          ra, 8f
8:                jal          ra, 20f
9:                jal          t0, 1b
10:               jal          ra, 13f
11:               jal          ra, 10b
12:               jal          t1, 17f
13:               jal          ra, 6b
14:               jal          ra, 23f
15:               jal          ra, 11b
16:               jal          ra, 5b
17:               jal          gp, 21f
18:               jal          s7, 9b
19:               jal          s3, 0b
20:               jal          tp, 28f
21:               jal          gp, 24f
22:               jal          a5, 14b
23:               jal          ra, 2b
24:               jal          a3, 19b
25:               jal          t1, 16b
26:               jal          t1, 22b
27:               jal          t1, 7b
28:               srli         s8, s6, 4
sub_1_14:         jal          ra, 14f
0:                jal          t0, 8f
1:                jal          ra, 16f
2:                jal          t5, 4f
3:                jal          ra, 12f
4:                jal          t1, 5f
5:                jal          a1, 10f
6:                jal          ra, 15f
7:                jal          ra, 18f
8:                jal          a7, 19f
9:                jal          a7, 13f
10:               jal          ra, 0b
11:               jal          t1, 17f
12:               jal          ra, 11b
13:               jal          sp, 1b
14:               jal          ra, 2b
15:               jal          t1, 20f
16:               jal          t1, 3b
17:               jal          ra, 6b
18:               jal          s10, 9b
19:               jal          t1, 7b
20:               xori         s4, s3, -1435
sub_1_0:          jal          ra, 1f
0:                jal          s8, 8f
1:                jal          ra, 12f
2:                jal          ra, 0b
3:                jal          gp, 2b
4:                jal          ra, 3b
5:                jal          s1, 13f
6:                jal          t1, 10f
7:                jal          ra, 5b
8:                jal          ra, 7b
9:                jal          t4, 11f
10:               jal          ra, 4b
11:               jal          ra, 6b
12:               jal          tp, 9b
13:               slti         t0, s7, 1528
sub_1_6:          jal          ra, 1f
0:                jal          ra, 23f
1:                jal          a3, 4f
2:                jal          ra, 9f
3:                jal          t1, 8f
4:                jal          ra, 20f
5:                jal          s1, 0b
6:                jal          t1, 12f
7:                jal          ra, 14f
8:                jal          ra, 6b
9:                jal          ra, 17f
10:               jal          a0, 2b
11:               jal          s1, 5b
12:               jal          t1, 10b
13:               jal          t1, 15f
14:               jal          sp, 18f
15:               jal          gp, 7b
16:               jal          sp, 24f
17:               jal          s11, 19f
18:               jal          ra, 21f
19:               jal          s2, 22f
20:               jal          ra, 3b
21:               jal          tp, 16b
22:               jal          ra, 11b
23:               jal          ra, 13b
24:               jal          sp, 25f
25:               sltiu        s6, s3, -1089
sub_1_3:          jal          ra, 14f
0:                jal          t1, 12f
1:                jal          ra, 15f
2:                jal          tp, 16f
3:                jal          s10, 20f
4:                jal          ra, 18f
5:                jal          ra, 4b
6:                jal          t0, 21f
7:                jal          sp, 1b
8:                jal          sp, 19f
9:                jal          a0, 17f
10:               jal          a3, 7b
11:               jal          t6, 3b
12:               jal          t6, 13f
13:               jal          t6, 27f
14:               jal          t1, 10b
15:               jal          ra, 6b
16:               jal          t1, 11b
17:               jal          ra, 24f
18:               jal          t1, 2b
19:               jal          t1, 25f
20:               jal          ra, 23f
21:               jal          ra, 26f
22:               jal          ra, 9b
23:               jal          s11, 0b
24:               jal          a1, 8b
25:               jal          tp, 5b
26:               jal          ra, 22b
27:               sub          zero, t5, a6
sub_1_5:          jal          ra, 4f
0:                jal          s2, 8f
1:                jal          s2, 7f
2:                jal          a0, 14f
3:                jal          ra, 15f
4:                jal          t1, 0b
5:                jal          s10, 10f
6:                jal          a0, 2b
7:                jal          a7, 3b
8:                jal          ra, 9f
9:                jal          ra, 6b
10:               jal          ra, 1b
11:               jal          t1, 5b
12:               jal          t1, 13f
13:               jal          a1, 11b
14:               jal          t0, 12b
15:               sltiu        zero, t3, -634
sub_1_13:         jal          ra, 0f
0:                jal          ra, 14f
1:                jal          ra, 5f
2:                jal          a2, 9f
3:                jal          ra, 11f
4:                jal          ra, 12f
5:                jal          t1, 4b
6:                jal          t1, 7f
7:                jal          t5, 3b
8:                jal          t2, 13f
9:                jal          ra, 1b
10:               jal          ra, 2b
11:               jal          t1, 16f
12:               jal          t2, 8b
13:               jal          gp, 6b
14:               jal          a3, 15f
15:               jal          s5, 10b
16:               sltiu        s3, s8, 2028
sub_1_9:          jal          ra, 8f
0:                jal          t0, 9f
1:                jal          ra, 2f
2:                jal          t4, 0b
3:                jal          ra, 6f
4:                jal          s5, 7f
5:                jal          t1, 11f
6:                jal          s2, 1b
7:                jal          ra, 5b
8:                jal          a4, 3b
9:                jal          ra, 10f
10:               jal          s1, 4b
11:               xor          s10, sp, s2
                  ori          a5, a5, 1356
                  xori         tp, s0, -16
                  xor          a7, gp, t4
                  sub          a4, tp, s2
                  bltu         s0, t0, 12f
                  srai         a7, s8, 14
                  or           t1, tp, a0
                  srai         s5, t0, 25
                  nop
                  bltu         sp, t4, 14f
                  sltu         zero, ra, s0
                  slt          t6, t0, s6
12:               slt          tp, a3, ra
                  nop
14:               blt          s5, s5, 21f
                  sltiu        s4, s4, -463
                  bltu         s10, s1, 32f
                  blt          t3, t2, 25f
                  bltu         t2, sp, 28f
                  slli         a5, sp, 23
                  andi         s10, t5, 846
21:               and          a5, t0, t4
                  beq          s3, s11, 27f
                  blt          a6, a7, 28f
                  slti         a1, sp, 700
25:               beq          a1, gp, 30f
                  xori         s10, s8, -1204
27:               sltu         s1, a7, s10
28:               slti         a0, zero, -983
                  sltiu        a3, t2, -76
30:               or           a2, s10, a5
                  add          s10, a0, sp
32:               and          t5, s0, s9
                  sra          s7, gp, t0
                  or           s4, t0, s5
                  bltu         a4, a5, 51f
                  blt          a1, s8, 49f
                  slti         t4, s2, -1890
                  sltiu        a2, a6, 229
                  sltu         t6, s1, ra
                  and          s3, a7, s8
                  andi         s2, s6, -1863
                  slti         t1, s7, 1079
                  sltu         a5, gp, tp
                  and          t0, s9, s11
                  lui          a3, 655089
                  bne          a1, a0, 66f
                  blt          sp, ra, 64f
                  slti         t5, a4, 583
49:               bge          s11, tp, 55f
                  srai         sp, s9, 27
51:               bge          tp, a2, 52f
52:               sltu         sp, a2, t0
                  slti         s9, t3, -171
                  auipc        a5, 636778
55:               xori         gp, a4, 1280
                  blt          a6, t1, 67f
                  srli         a7, t6, 22
                  beq          a6, sp, 67f
                  sltu         tp, s8, s6
                  sltiu        s10, sp, -162
                  andi         t6, a7, 789
                  lui          a4, 242868
                  sra          ra, a3, a2
64:               srai         s3, s10, 4
                  add          t4, s9, a7
66:               addi         zero, s4, -1881
67:               blt          s1, zero, 71f
                  auipc        tp, 299871
                  bge          t3, tp, 88f
                  nop
71:               auipc        s4, 141400
                  sltu         s2, t1, s6
                  srli         s1, s5, 27
                  xor          s4, s3, s2
                  andi         s2, t6, -1642
                  xor          s9, s0, s8
                  beq          a4, a1, 78f
78:               ori          sp, t5, 136
                  srli         t0, a5, 15
                  nop
                  bltu         a7, s2, 82f
82:               auipc        s8, 1044734
                  blt          s11, s1, 87f
                  srai         a7, t5, 9
                  xor          a5, s3, t3
                  auipc        a0, 815809
87:               xori         s8, a5, 579
88:               addi         s11, t3, -230
                  andi         s2, t3, 691
                  ori          s3, s9, 1930
                  nop
                  xori         t5, t6, 585
                  srai         a5, sp, 31
                  and          ra, a3, t2
                  lui          zero, 462909
                  addi         a4, zero, -1048
                  sltu         s5, s2, sp
                  sltu         sp, sp, t5
                  sltu         a1, a5, s6
                  and          s6, s3, a6
                  and          a7, gp, t1
                  xori         sp, a5, -635
                  xor          s1, s3, s9
                  bne          a5, zero, 117f
                  srli         a5, s6, 1
                  and          a7, s7, tp
                  add          a4, s5, gp
                  nop
                  slli         t0, a6, 14
                  sra          a4, t6, tp
                  xori         ra, a6, 1190
                  lui          t0, 56244
                  xor          s1, s0, t4
                  ori          gp, ra, -1248
                  auipc        s11, 14224
                  addi         a7, t1, 1114
117:              srl          t5, a2, zero
                  slt          s8, t1, ra
                  slt          s7, s5, t2
                  srai         s9, s10, 16
                  bltu         a5, a5, 129f
                  ori          s3, s9, -1235
                  bne          t1, a7, 134f
                  slti         sp, t2, -1476
                  nop
                  and          s6, s7, s11
                  bltu         s6, s5, 147f
                  sra          ra, a5, t2
129:              xori         a0, s7, 1417
                  addi         gp, t3, -1707
                  srli         t4, s9, 14
                  bge          a4, a4, 150f
                  slli         a4, t6, 21
134:              bgeu         t6, s7, 148f
                  sltu         s3, tp, t4
                  bltu         gp, s1, 146f
                  sltiu        a2, a7, 449
                  srai         a7, a4, 14
                  addi         a0, s9, -477
                  beq          s8, tp, 154f
                  srai         t6, s8, 10
                  nop
                  srli         t2, s10, 29
                  bltu         t5, s0, 152f
                  slti         s8, s6, 944
146:              xor          sp, s5, s6
147:              sltiu        zero, s0, -1879
148:              srl          a0, s9, a4
                  srli         s10, tp, 22
150:              srli         tp, zero, 25
                  ori          s5, s3, 905
152:              or           s10, a7, ra
                  sub          s4, a2, s4
154:              nop
                  add          s9, a0, t0
                  andi         sp, s2, 2004
                  sltiu        s4, t4, -1383
                  beq          a5, t2, 175f
                  nop
                  nop
                  sra          tp, ra, sp
                  xori         s5, s6, 1420
                  blt          s0, a5, 176f
                  bltu         gp, s6, 169f
                  srl          t6, s2, a5
                  srl          a1, s1, s6
                  slli         a4, a2, 18
                  bltu         a0, s3, 182f
169:              auipc        s5, 812746
                  beq          zero, t1, 175f
                  beq          t5, a7, 187f
                  sra          s3, a4, a1
                  auipc        t0, 120058
                  bge          s3, t0, 185f
175:              sltiu        s3, s0, -1353
176:              bne          sp, a1, 186f
                  sub          t6, a1, t2
                  blt          s8, t0, 198f
                  addi         s9, s9, -2003
                  ori          s5, s4, -496
                  bltu         t0, tp, 199f
182:              auipc        t4, 623697
                  slti         tp, a1, -1482
                  srl          a7, a7, a3
185:              xori         s6, s3, 38
186:              bltu         s4, t5, 192f
187:              bltu         t6, t6, 198f
                  srai         a7, t0, 26
                  xor          a7, s2, s3
                  bne          s2, a6, 194f
                  sltiu        s9, t6, 451
192:              xor          t6, s10, s6
                  sltiu        s9, s2, 41
194:              slti         t1, zero, -760
                  beq          a5, s8, 199f
                  srai         a7, t2, 6
                  slli         s10, a2, 20
198:              srli         s9, s1, 29
199:              sll          s9, s11, gp
                  slli         t5, sp, 25
                  xor          s6, sp, s5
                  sub          t6, sp, s3
                  xor          a7, tp, s4
                  andi         s5, s5, -122
                  sll          a3, s11, s0
                  ori          tp, s9, 65
                  addi         s10, t1, 1605
                  bge          s10, t1, 215f
                  beq          a2, s2, 228f
                  sll          t5, a4, t3
                  bgeu         t0, tp, 220f
                  srai         s4, sp, 30
                  andi         t4, a5, -1146
                  beq          a4, s1, 215f
215:              beq          gp, t1, 220f
                  sra          a5, s8, a2
                  add          a4, a7, s4
                  srai         s11, s5, 6
                  xor          a4, t1, s1
220:              slt          s9, a6, a4
                  srl          a2, s8, tp
                  blt          t3, s4, 242f
                  addi         a3, s8, 640
                  sll          s4, s2, a1
                  bge          s11, t2, 235f
                  bgeu         a4, s10, 231f
                  nop
228:              srli         s4, a0, 20
                  sll          t4, t3, a1
                  slti         t2, a1, -577
231:              srl          sp, a5, sp
                  xor          sp, tp, s0
                  srai         s5, a1, 29
                  sltiu        a2, gp, 1720
235:              and          s4, s6, t2
                  srai         t0, s1, 3
                  xor          a2, s2, s0
                  slt          ra, s5, t1
                  bge          sp, s6, 240f
240:              or           t4, s2, a3
                  blt          t2, tp, 249f
242:              add          a5, a6, s8
                  sub          s4, t4, s8
                  sltu         s6, t6, tp
                  sltu         s7, s8, a2
                  bltu         a3, s4, 254f
                  xor          zero, s6, ra
                  bge          s2, a3, 261f
249:              auipc        s10, 585766
                  srai         a0, a3, 31
                  sra          sp, t1, a2
                  bne          s6, t2, 268f
                  srl          t2, gp, s0
254:              ori          s8, t2, 608
                  srli         s6, a3, 8
                  sltu         a2, s2, s10
                  bgeu         a4, a5, 271f
                  or           gp, t5, s10
                  blt          t4, zero, 260f
260:              and          s4, t0, t3
261:              slti         a2, t5, -1006
                  add          s6, tp, s2
                  or           s2, a1, s3
                  srl          zero, t0, t3
                  andi         s9, t6, -1713
                  bge          ra, s9, 276f
                  sub          s6, a0, s8
268:              bgeu         s8, s6, 288f
                  blt          a7, s7, 280f
                  ori          zero, s10, 12
271:              andi         tp, sp, -1850
                  slt          s2, a0, s7
                  auipc        a0, 7969
                  xor          s1, s0, s1
                  addi         a5, t0, -1178
276:              srli         s10, a3, 11
                  slti         t4, t1, -887
                  sra          a1, t5, sp
                  slli         a5, sp, 6
280:              xori         a0, s11, -1378
                  xori         s10, a4, 867
                  bltu         ra, s11, 301f
                  beq          t5, t2, 294f
                  srai         tp, a3, 18
                  blt          a4, t6, 301f
                  beq          t3, a0, 290f
                  add          s2, a6, tp
288:              slt          s5, t4, t3
                  bltu         a0, s4, 290f
290:              slti         a2, s8, 69
                  beq          t0, ra, 308f
                  add          t4, s9, sp
                  andi         s10, a7, 1215
294:              or           sp, a4, a6
                  addi         a7, zero, 493
                  sub          tp, t0, t4
                  and          t0, t4, s7
                  xor          s7, s4, t3
                  xori         s9, a3, 466
                  slli         s3, a2, 3
301:              slti         s10, a7, -1836
                  bne          s1, t6, 307f
                  addi         a3, t0, -356
                  bltu         a1, s5, 320f
                  sra          s10, a1, tp
                  ori          a5, t4, -728
307:              sltiu        s6, sp, 666
308:              sltu         s10, a2, s1
                  sll          t5, sp, s9
                  xori         a4, a0, 1035
                  sltiu        s10, a7, 182
                  lui          s11, 563780
                  slli         a3, a1, 6
                  addi         ra, zero, 1383
                  xor          ra, s8, a0
                  bltu         s4, t6, 336f
                  nop
                  sltu         t0, s4, gp
                  lui          s8, 654550
320:              sltiu        s7, a2, -128
                  srai         sp, t5, 10
                  beq          a5, s9, 336f
                  and          s10, t2, gp
                  beq          s8, s8, 329f
                  srli         t0, t0, 26
                  andi         t0, ra, -489
                  or           s8, s5, sp
                  add          s7, t6, s2
329:              andi         t6, tp, 1982
                  srl          t2, a1, s7
                  or           t2, a2, t4
                  slti         a4, sp, -92
                  srli         a2, t5, 30
                  nop
                  sltu         s10, t0, t0
336:              blt          t0, ra, 337f
337:              bge          zero, s5, 346f
                  bltu         s5, a1, 343f
                  bltu         a3, a6, 345f
                  addi         a2, gp, 1997
                  add          s9, tp, t3
                  bne          a4, t4, 347f
343:              sltiu        t1, s11, -1701
                  slt          s7, s6, s7
345:              srli         zero, ra, 9
346:              add          s9, a0, s3
347:              addi         a2, a4, 934
                  xori         a3, s6, 1391
                  sltiu        a0, tp, -509
                  srl          t2, a5, gp
                  lui          s8, 640064
                  srl          sp, a1, a2
                  auipc        a3, 207993
                  slli         a4, s3, 14
                  auipc        t1, 955824
                  xori         sp, a1, -128
                  sltu         zero, sp, s3
                  bne          t6, t6, 366f
                  bge          sp, t5, 360f
360:              slti         ra, ra, -375
                  bltu         s9, t0, 369f
                  slt          ra, tp, a2
                  bltu         s6, a5, 371f
                  slti         tp, a4, -1489
                  add          s1, t4, t5
366:              slt          s5, a6, a0
                  bge          a1, ra, 381f
                  andi         s9, sp, -1201
369:              andi         ra, s4, -1148
                  andi         gp, s7, -425
371:              bne          zero, s8, 378f
                  bge          t5, a1, 390f
                  bgeu         s8, s6, 383f
                  and          s8, s7, s10
                  addi         t4, a4, -476
                  slli         a4, a4, 23
                  addi         s8, a1, 1707
378:              sltiu        s2, a0, 1433
                  xori         zero, tp, -416
                  bltu         s9, s7, 393f
381:              blt          s1, s3, 385f
                  and          s8, s7, t0
383:              bgeu         s7, a7, 396f
                  srl          t5, t4, s7
385:              slli         t0, sp, 14
                  addi         t0, s5, 687
                  srl          a4, s4, t6
                  srl          t4, s1, a1
                  bltu         t0, t3, 407f
390:              blt          a5, s9, 400f
                  add          a1, s3, zero
                  ori          a1, s4, -1346
393:              srl          sp, s8, s3
                  bltu         a5, t5, 399f
                  bne          t0, a0, 411f
396:              andi         a4, sp, 2009
                  bge          tp, ra, 407f
                  sltiu        s6, a5, -1638
399:              or           s1, s5, tp
400:              srai         s8, s10, 0
                  beq          a0, t3, 409f
                  sub          a1, a5, a7
                  slli         s7, s5, 9
                  sub          a0, a7, a0
                  blt          sp, a6, 414f
                  srli         s8, a4, 22
407:              andi         s11, s4, 178
                  auipc        a7, 47910
409:              addi         s6, t3, -511
                  sltiu        s3, s10, 528
411:              xori         s10, s0, -1679
                  or           t0, sp, s7
                  blt          s5, t6, 433f
414:              add          t2, s9, t0
                  bge          s10, s3, 421f
                  addi         s11, s4, -1430
                  sra          s4, t4, ra
                  bge          s1, a7, 419f
419:              lui          zero, 448690
                  sra          s3, a2, t1
421:              bge          t0, s2, 422f
422:              andi         a0, s3, 798
                  sra          s5, t3, t1
                  xor          t6, s5, a6
                  ori          t6, t2, 1405
                  sll          s2, zero, t1
                  sra          gp, s8, a7
                  bltu         s6, t4, 429f
429:              beq          t5, s10, 437f
                  ori          a2, a4, -1860
                  xor          t2, t5, s10
                  bltu         tp, s0, 440f
433:              or           s9, zero, ra
                  slti         s6, a3, -1848
                  slli         s1, zero, 24
                  and          a3, s1, sp
437:              or           a3, s9, a6
                  slti         ra, a0, 1088
                  bgeu         gp, s4, 444f
440:              slti         a1, t3, 1108
                  srl          t6, a3, s11
                  bne          ra, s10, 455f
                  blt          a0, s5, 447f
444:              xor          gp, a2, s1
                  sltu         s5, t5, s10
                  andi         tp, a1, 206
447:              and          t0, s1, t0
                  add          t5, zero, s6
                  nop
                  ori          gp, s10, -1226
                  slti         s6, t3, 947
                  bgeu         zero, s6, 465f
                  sra          s3, a7, a4
                  xori         s7, s1, 1411
455:              srl          gp, s11, s1
                  and          a0, s10, t1
                  slli         s7, a2, 12
                  sll          s6, s3, s7
                  slli         s5, a4, 23
                  nop
                  sltu         t0, sp, s0
                  bne          t3, a5, 476f
                  xori         s10, s2, -422
                  bgeu         t6, a6, 478f
465:              srai         tp, a5, 30
                  auipc        t5, 522264
                  sll          s1, a2, a5
                  srai         a1, t2, 5
                  slli         s2, s4, 3
                  srai         t0, zero, 4
                  andi         t4, s7, 1483
                  sltiu        a2, a4, 1371
                  andi         t5, a6, 1870
                  xor          s8, t2, gp
                  srai         s6, a2, 29
476:              andi         t0, t5, 1665
                  ori          t5, a5, -101
478:              add          a0, s9, sp
                  blt          s7, s3, 499f
                  sub          t1, t6, gp
                  add          t5, a2, a3
                  lui          zero, 789445
                  slt          t1, sp, a0
                  bgeu         gp, s2, 501f
                  bge          s6, s10, 501f
                  blt          a1, gp, 491f
                  srl          a2, t6, s3
                  srai         s6, t2, 28
                  slt          a0, t2, ra
                  bltu         a3, s11, 497f
491:              bge          s6, a5, 510f
                  srai         a3, t0, 11
                  srai         t0, a1, 14
                  bltu         s10, a4, 498f
                  bgeu         s3, a3, 506f
                  or           a3, ra, s1
497:              sltu         s2, a2, t4
498:              bgeu         s7, s4, 503f
499:              and          s2, a4, s10
                  srli         a1, s0, 4
501:              bge          zero, s0, 512f
                  ori          zero, s10, -87
503:              nop
                  auipc        t1, 534065
                  andi         sp, ra, 146
                  and          t5, t5, a3
                  bgeu         a7, a5, sub_1_j5 #branch to jump instr
                  nop
                  xori         s5, tp, -1930
                  andi         tp, a0, 498
                  sll          s4, t0, a7
                  andi         s7, ra, -238
                  sub          gp, s7, t3
                  nop
                  sra          t6, ra, s3
sub_1_j5:         jal          ra, sub_5 #jump sub_1 -> sub_5
506:              add          ra, s9, s10
                  slli         s8, a4, 19
                  andi         t2, t6, -1712
                  sltiu        ra, gp, 87
510:              blt          t3, t2, 511f
511:              srai         a2, a7, 5
512:              addi         a3, s6, 2046
                  bne          s3, s2, 529f
                  or           sp, a6, zero
                  bge          a6, a6, 516f
516:              or           t1, s10, a5
                  xor          a1, a5, sp
                  add          s1, sp, a4
                  slt          zero, t2, a5
                  sra          ra, t0, s6
                  slti         a7, ra, -1731
                  xori         s11, s9, 497
                  srai         s9, tp, 22
                  bgeu         t1, sp, 538f
                  addi         a0, zero, 2037
sub_1_2:          jal          ra, 1f
0:                jal          t1, 17f
1:                jal          ra, 8f
2:                jal          a4, 16f
3:                jal          ra, 10f
4:                jal          a1, 9f
5:                jal          t1, 13f
6:                jal          a2, 7f
7:                jal          ra, 3b
8:                jal          ra, 2b
9:                jal          ra, 6b
10:               jal          t6, 5b
11:               jal          s6, 12f
12:               jal          ra, 14f
13:               jal          ra, 15f
14:               jal          s10, 4b
15:               jal          a5, 0b
16:               jal          ra, 11b
17:               srl          a0, gp, t2
                  add          ra, s4, s7
                  srli         a7, s1, 31
                  nop
529:              nop
                  bge          s5, t2, 550f
                  sltu         t6, t0, a6
                  xori         s11, s1, -43
                  ori          s11, s10, 217
                  bgeu         a2, a6, 547f
                  bltu         a6, t0, 540f
                  add          s6, a3, gp
                  ori          a3, t3, -1506
538:              sra          a1, s4, zero
                  sub          a1, a1, zero
540:              srli         zero, t3, 24
                  srl          a0, t5, t5
                  andi         s1, a4, 156
                  bgeu         t1, s6, 552f
                  andi         t2, s6, -113
                  beq          a2, s11, 549f
                  lui          s7, 776461
547:              bge          sp, ra, 566f
                  xori         s9, s6, 934
549:              ori          ra, sp, -1757
550:              andi         t0, a4, 701
                  bltu         t1, a1, 556f
552:              xori         tp, s0, 1927
                  nop
                  xor          a5, s11, s9
                  xori         sp, s11, 737
556:              add          a3, zero, a2
                  addi         tp, t6, -103
                  slti         a3, s3, 1032
                  bge          t0, s1, 564f
                  lui          s4, 819876
                  slli         t2, t4, 28
                  slt          t5, a6, ra
                  bltu         a6, s2, 574f
564:              ori          a1, s5, 154
                  nop
566:              slti         ra, s8, 1702
                  nop
                  add          tp, s4, a1
                  bne          t5, zero, 589f
                  bgeu         t2, a2, 580f
                  or           s10, s10, a3
                  ori          s6, s7, 513
                  srli         sp, a6, 24
574:              addi         s11, t0, 957
                  and          s10, s8, s10
                  srai         a2, s3, 23
                  blt          a0, t3, 594f
                  srl          s11, t1, ra
                  sub          s8, t5, zero
580:              sltiu        a7, s10, 1099
                  addi         sp, s2, 552
                  blt          tp, s10, 595f
                  slti         t6, s2, -416
                  bge          a0, tp, 594f
                  slti         s3, s1, 1347
                  sltiu        a3, gp, 1133
                  addi         s5, t1, 118
                  add          s11, tp, sp
589:              bne          gp, a2, 596f
                  auipc        sp, 929128
                  xori         a1, s10, 1723
                  lui          s2, 865887
                  bltu         a3, s3, 609f
594:              addi         s1, zero, 1954
595:              srai         s7, t0, 10
596:              sra          s9, s3, t0
                  lui          s1, 833459
                  xori         zero, a2, -527
                  bge          zero, t6, 607f
                  ori          s10, a0, 752
                  bgeu         t5, s8, 605f
                  addi         t0, ra, 651
                  or           s5, sp, s7
                  slti         sp, t5, 647
605:              srai         s1, a3, 13
                  sltu         s3, s1, tp
607:              bge          a3, a5, 615f
                  andi         a3, t3, 1955
609:              add          t5, a7, a1
                  ori          zero, ra, 706
                  srli         zero, s10, 1
                  auipc        a7, 891776
                  addi         a1, a4, 497
                  sub          s8, s5, gp
615:              bltu         s5, ra, 620f
                  ori          s7, a5, -1890
                  slli         s1, ra, 4
                  beq          s0, s2, 636f
                  sub          t1, t6, a2
620:              nop
                  and          s11, s2, a6
                  xor          s4, s11, t1
                  auipc        a1, 753929
                  or           s11, t0, t0
                  or           sp, s3, s6
                  and          zero, s7, a5
                  sltiu        a2, t2, -695
                  bne          t3, t2, 639f
                  sra          a2, a5, s5
                  sll          zero, t1, tp
                  andi         s8, a6, 955
                  slt          s6, ra, s5
                  andi         a4, zero, -320
                  srli         tp, t4, 12
                  bge          a6, a3, 641f
636:              blt          s3, a6, 637f
637:              sub          t1, a5, s10
                  xor          s11, s2, t5
639:              srai         sp, tp, 0
                  slli         t4, t4, 29
641:              srl          s8, t0, a1
                  bgeu         s0, s2, 656f
                  sra          s5, t4, s11
                  xori         t5, t0, -566
                  sra          s3, ra, a4
                  sltu         t6, s3, t5
                  xor          s6, s11, s8
                  ori          a1, s10, 538
                  sltiu        s9, t0, 238
                  bltu         t0, a0, 658f
                  auipc        s6, 392317
                  sub          a4, t5, s8
                  addi         t2, s7, 1770
                  or           ra, gp, s4
                  add          s7, a4, t5
656:              auipc        a1, 359701
                  beq          s1, a6, 671f
658:              srli         t2, s9, 13
                  sub          a0, a6, t5
                  sll          s9, a3, gp
                  and          a4, s11, s4
                  ori          s10, a4, 1611
                  ori          s2, s9, -1554
                  bge          t3, s8, 675f
                  bne          a2, t3, 670f
                  sra          a4, s7, sp
                  xori         s9, s4, -552
                  sra          sp, sp, ra
                  lui          t0, 245692
670:              lui          a2, 867587
671:              xori         t1, s1, -1374
                  bge          s8, s11, 688f
                  sll          a3, s10, a7
                  beq          tp, s0, 675f
675:              srli         s9, t5, 6
                  bltu         s11, a1, 683f
                  bge          a7, gp, 681f
                  sltu         sp, a4, s3
                  sub          s1, s5, s0
                  and          zero, a2, a5
681:              and          t1, t5, ra
                  beq          a0, a6, 698f
683:              beq          t3, gp, 700f
                  sub          t0, s1, ra
                  xori         s3, s5, -1154
                  sub          s11, s6, a7
                  blt          s4, a3, 692f
688:              slti         t0, a2, 1408
                  bge          a6, a1, 700f
                  sll          s2, s3, a3
                  add          s9, a1, a3
692:              blt          s2, tp, 706f
                  bne          a4, s0, 701f
                  and          a4, a1, a3
                  srai         t0, s6, 31
                  srli         t4, s3, 0
                  and          s4, gp, a7
698:              xor          a1, ra, a4
                  sll          s6, s9, t3
700:              addi         s1, zero, 32
701:              srl          t5, zero, s5
                  xor          t2, s0, a6
                  sltu         s3, tp, a7
                  xori         s5, t5, -48
                  sltu         a4, s6, t6
706:              srai         s1, sp, 10
                  bgeu         a5, gp, 712f
                  sra          a4, gp, s5
                  sltu         gp, t6, t3
                  sltu         t5, t6, a0
                  sltu         s10, t4, t6
712:              sra          s10, s8, s3
                  xori         a7, zero, -1207
                  bge          a5, a5, 727f
                  srli         t4, s4, 8
                  ori          t2, s3, 1464
                  slli         t6, a0, 29
                  slt          tp, a5, t0
                  and          a5, s10, zero
                  slli         s5, a6, 5
                  nop
                  sra          s2, t3, s2
                  sub          t6, gp, gp
                  lui          s10, 57221
                  nop
                  and          t4, t6, s6
727:              nop
                  beq          s10, s10, 729f
729:              beq          s3, zero, 737f
                  sltu         a2, t1, t3
                  slti         a4, tp, -1355
                  srai         t6, t5, 18
                  lui          s7, 994643
                  xori         tp, a2, -1761
                  bltu         a3, s9, 736f
736:              xori         s1, tp, 1579
737:              xor          t6, s1, s1
                  lui          gp, 195875
                  bgeu         a4, a7, 752f
                  addi         zero, a2, 257
                  sub          s5, zero, s7
                  srl          sp, s4, zero
                  lui          s10, 629186
                  blt          a7, s5, 749f
                  and          s6, a6, t5
                  sra          ra, a5, a4
                  or           t1, s7, s2
                  slt          zero, zero, a4
749:              or           gp, a0, t5
                  slti         t2, t1, -39
                  bgeu         t5, ra, 760f
752:              sra          zero, s8, s11
                  beq          t4, ra, 761f
                  srai         t6, t0, 21
                  srl          s11, s6, t1
                  srl          s11, s5, a7
                  slt          s4, s0, s8
                  srl          s3, a0, ra
                  bge          s1, s7, 769f
760:              bne          sp, s8, 764f
761:              beq          t4, a1, 780f
                  bge          s11, s2, 782f
                  slli         t0, s1, 30
764:              blt          s7, s5, 782f
                  slt          a2, a4, s6
                  nop
                  bgeu         tp, s11, 787f
                  beq          a1, a6, 774f
769:              slti         t6, a6, -1021
                  auipc        t0, 387442
                  ori          zero, a4, 980
                  slt          s6, ra, a4
                  slli         s6, s10, 19
774:              ori          t2, zero, -1229
                  srl          tp, s0, s2
                  xori         s5, a1, -472
                  sltiu        zero, s0, 802
                  sltu         s5, s10, s7
                  sll          gp, s7, a0
780:              srli         a1, t6, 18
                  sltiu        t5, a6, -281
782:              slli         a1, s3, 27
                  or           s6, a1, a1
                  srai         s11, tp, 11
                  bltu         t4, s7, 795f
                  lui          s9, 802889
787:              slli         s4, s5, 30
                  bne          s2, t5, 805f
                  srl          s7, s11, s6
                  slt          zero, s8, s7
                  and          a3, t2, zero
                  slli         a4, a1, 18
                  bgeu         s7, s4, 812f
                  add          t0, s8, s8
795:              srai         s3, a3, 17
                  bne          a2, s4, 816f
                  srai         s1, s5, 15
                  bge          s3, s3, 811f
                  sll          t4, s11, s9
                  xori         ra, s3, 1580
                  or           t4, s8, a2
                  add          a1, s8, s11
                  bgeu         s1, t4, 808f
                  add          a1, s0, t3
805:              bgeu         a4, s2, 806f
806:              ori          a3, a0, 1341
                  or           a1, s7, a4
808:              sub          t0, a3, t4
                  sll          s1, s2, s9
                  blt          s4, zero, 828f
811:              and          t2, a7, s7
812:              add          a7, s11, s11
                  bgeu         zero, a4, 823f
                  and          t1, s11, a6
                  blt          a0, t1, 826f
816:              bge          a0, gp, 821f
                  andi         s10, s1, -7
                  auipc        s5, 215749
                  blt          t3, tp, 835f
                  lui          s8, 395174
821:              srl          s6, a5, ra
                  nop
823:              sltu         s5, t4, t0
                  and          t4, a7, t1
                  nop
826:              srli         a3, s1, 20
                  srl          a2, t2, a2
828:              slt          t5, t4, a3
                  slli         a3, t1, 30
                  andi         s7, s11, -1013
                  sra          s7, s10, zero
                  bgeu         tp, a1, 836f
                  auipc        s5, 553075
                  bge          s4, t0, 838f
835:              sltu         s3, tp, t6
836:              sll          s8, t3, s5
                  sll          a5, t4, gp
838:              sra          s3, s4, t4
                  slt          gp, s5, a4
                  auipc        s7, 964842
                  add          s2, s7, s9
                  auipc        t4, 68655
                  sltu         zero, a1, t3
                  xor          ra, a1, tp
                  beq          s5, a7, 855f
                  blt          a4, t2, 855f
                  andi         a0, s7, -166
                  xor          t4, t6, t0
                  add          a4, s2, s3
                  slli         t1, t0, 19
                  sltiu        ra, s4, 319
                  xori         gp, a5, 1901
                  sll          gp, a4, a0
                  nop
855:              bgeu         a1, a1, 868f
                  slti         t0, s1, 1044
                  bltu         s11, zero, 865f
                  and          t0, ra, ra
                  slli         gp, s2, 9
                  srli         zero, tp, 20
                  bltu         t6, zero, 862f
862:              slti         s6, a1, 410
                  sltiu        a7, s4, 1739
                  or           zero, t2, t6
865:              slli         gp, a2, 4
                  slt          a7, a6, a1
                  lui          s5, 332431
868:              srl          a2, sp, t0
                  srai         s6, t2, 21
                  blt          s5, gp, 881f
                  and          a3, t0, t2
                  sra          a0, a7, s11
                  srli         a5, s4, 0
                  nop
                  blt          gp, t3, 895f
                  srli         t4, a4, 31
                  bltu         ra, s10, 884f
                  auipc        s11, 334728
                  beq          s5, zero, 895f
                  nop
881:              and          zero, s5, s8
                  addi         s7, t4, 997
                  andi         s9, t4, -1584
884:              srai         a7, a1, 19
                  slti         s11, s6, -946
                  or           t4, t6, s0
                  lui          s10, 202102
                  srai         s11, sp, 22
                  sltiu        s8, s3, 1419
                  sub          tp, s0, s4
                  beq          s6, s11, 896f
                  or           s1, ra, a3
                  bltu         s10, a7, 898f
                  slt          zero, s7, s2
895:              auipc        s6, 977423
896:              bge          a6, s5, 897f
897:              sll          s11, t5, sp
898:              sll          t6, s1, ra
                  addi         sp, t1, -1499
                  slli         t4, t1, 13
                  lui          gp, 173420
                  slli         a2, a2, 11
                  slti         ra, sp, -732
                  srai         s5, a5, 6
                  srli         t0, a4, 30
                  xori         a5, a1, -1695
                  nop
                  sltiu        s9, t5, -1613
                  addi         s11, a3, 182
                  xori         a7, ra, -1618
                  bne          a1, a1, 919f
                  xor          s3, a5, s4
                  sra          a2, zero, sp
                  sltu         a2, t1, t5
                  bltu         a0, a2, 929f
                  bge          t6, s3, 922f
                  xori         t4, s0, -222
                  slti         sp, s7, -1783
919:              lui          s7, 150255
                  sra          s3, s5, a3
                  sltu         gp, a0, a4
922:              bge          zero, t4, 936f
                  slt          s8, a7, s0
                  lui          s1, 574844
                  xori         s8, a0, 1558
                  lui          s5, 429206
                  and          s4, a0, s11
                  lui          a0, 770409
929:              srai         ra, tp, 9
                  bge          t0, sp, 938f
                  ori          t4, s9, 45
                  bgeu         s11, s7, 948f
                  andi         t5, s5, -1972
                  xori         ra, t3, 582
                  lui          s5, 940880
936:              nop
                  auipc        gp, 777952
938:              bltu         t1, a4, 946f
                  bne          gp, s11, 953f
                  bge          a1, s5, 941f
941:              andi         a2, s0, 1163
                  bgeu         s1, t2, 946f
                  andi         s3, a1, 1323
                  lui          a4, 898576
                  bge          t5, t5, 946f
946:              slt          s5, s10, s1
                  auipc        t5, 910344
948:              xori         a1, s6, 411
                  nop
                  sltu         s8, s7, s9
                  blt          s2, a1, 959f
                  auipc        a4, 489522
953:              bgeu         a0, t4, 966f
                  sltu         sp, sp, s7
                  xor          a0, a7, tp
                  bltu         s9, s9, 961f
                  add          ra, s9, zero
                  addi         ra, a1, 577
959:              sll          tp, s10, gp
                  ori          sp, a7, -1320
961:              slti         s11, gp, -1467
                  slli         s4, s7, 2
                  nop
                  slti         t2, a7, -1546
                  sltiu        ra, a1, 1118
966:              blt          t3, zero, 976f
                  and          tp, a7, s5
                  bltu         gp, s5, 977f
                  and          s8, s7, a3
                  sub          t5, a2, a3
                  sra          t2, sp, s1
                  andi         t2, s3, -1378
                  andi         a2, a1, -1066
                  andi         t1, t1, 2042
                  ori          s1, a4, -748
976:              srl          a4, a6, s8
977:              sra          a1, s3, a4
                  bge          t4, tp, 998f
                  sltu         s6, ra, sp
                  slti         s3, gp, 2012
                  add          s9, zero, gp
                  sub          s1, s10, s2
                  sra          tp, s1, t4
                  xori         s4, t2, -1552
                  sltiu        s7, s10, -310
                  bne          t3, s8, 997f
                  sltiu        sp, s9, 1077
                  beq          s2, gp, 993f
                  or           t6, zero, a7
                  andi         s9, sp, 940
                  slt          tp, s6, s2
                  sltiu        s2, s6, -1845
993:              bge          ra, t4, 999f
                  bgeu         t5, s10, 1010f
                  addi         ra, sp, 162
                  and          t6, t2, a2
997:              sll          a0, s3, a5
998:              srl          ra, a3, s1
999:              srl          a1, sp, t0
                  sub          a4, t2, t1
                  auipc        t2, 119237
                  addi         s10, s1, -288
                  sltiu        a2, s1, -770
                  bne          s4, a5, 1018f
                  addi         s7, a7, 754
                  srai         t6, s3, 3
                  blt          gp, t3, 1027f
                  or           ra, t3, t3
                  and          s10, t6, a5
1010:             addi         t5, a7, -977
                  bge          s10, t6, 1028f
                  sltu         a4, sp, a6
                  srl          t5, a7, a4
                  nop
                  sll          t5, a5, s4
                  auipc        a4, 492654
                  slt          s10, zero, a7
1018:             andi         t6, a7, 1662
                  bge          s9, s5, 1027f
                  andi         s5, a0, -1889
                  sltu         s6, t1, t0
                  addi         a3, t1, -1796
                  and          t2, a2, s10
                  or           s9, s8, a7
                  slli         a2, a6, 11
                  add          t4, a4, s3
1027:             ori          s7, a6, -959
1028:             nop
                  xori         t5, a6, -1184
                  or           a5, s1, s2
                  andi         a4, t6, 28
                  andi         s5, a0, 1889
                  slti         sp, t2, 493
                  xori         ra, t3, -87
                  xori         a1, s8, -205
                  srai         a4, s7, 15
                  sltu         s10, tp, t5
                  auipc        a3, 519638
                  bgeu         s3, a0, 1049f
                  sltiu        s6, s5, -605
                  sltu         s10, a1, ra
                  bgeu         s5, tp, 1061f
                  slli         ra, a2, 27
                  slt          s6, s6, s4
                  slli         a0, a2, 21
                  ori          s5, s2, 164
                  lui          s3, 117082
                  add          t5, a0, zero
1049:             beq          s8, s8, 1054f
                  slli         s9, s7, 30
                  slti         a4, s7, -2008
                  andi         a5, sp, -367
                  lui          a5, 328860
1054:             sra          s3, s6, s0
                  or           t2, s0, s9
                  bge          ra, t2, 1067f
                  srli         s5, t3, 10
                  or           a7, t6, a6
                  srai         a3, s5, 4
                  slti         gp, a5, 913
1061:             and          tp, a5, t0
                  slli         s5, t1, 6
                  ori          a3, t0, -189
                  xori         a2, t3, 1346
                  sltu         s11, t4, a6
                  nop
1067:             blt          a1, s6, 1072f
                  srl          t0, t5, gp
                  bltu         a4, s10, 1087f
                  blt          s11, a1, 1071f
1071:             andi         a4, t0, 179
1072:             srli         t6, s2, 27
                  slt          t0, sp, t3
                  slli         s2, s1, 17
                  srli         s11, s3, 4
                  slt          s1, a6, a5
                  bgeu         s9, s8, 1084f
                  srli         ra, a2, 5
                  srai         sp, a4, 3
                  bgeu         t3, a7, 1084f
                  sltu         s9, s10, a5
                  ori          s2, s3, 673
                  add          a5, t2, s6
1084:             add          s10, sp, s8
                  bne          ra, tp, 1098f
                  slti         t2, ra, -1270
1087:             sltiu        t0, s10, 1562
                  sltiu        a7, ra, -1411
                  andi         a1, zero, 1624
                  slt          a4, ra, s11
                  slli         t6, s4, 3
                  xor          sp, a6, s4
                  lui          tp, 525180
                  or           s2, gp, s10
                  lui          a7, 225303
                  xori         s2, s6, 912
                  xori         t4, a4, -1087
1098:             bltu         s9, s4, 1106f
                  andi         s7, s9, -768
                  and          t0, t6, t5
                  xori         a2, s4, -336
                  bgeu         s7, s5, 1107f
                  xori         s4, s0, 593
                  slt          sp, ra, s3
                  sub          a1, a2, t6
1106:             sll          a5, s2, s11
1107:             slli         t1, zero, 31
                  xor          s9, sp, s5
                  xori         sp, a2, -529
                  auipc        t1, 668729
                  or           s3, t2, s8
                  bgeu         s8, a3, 1131f
                  beq          ra, a3, 1130f
                  sltiu        a7, zero, -1974
                  srai         a1, a7, 31
                  blt          a2, a3, 1122f
                  sltiu        t4, s4, 1968
                  ori          a1, a0, -2041
                  slli         s3, s3, 8
                  blt          gp, t4, 1140f
                  beq          ra, s7, 1129f
1122:             srl          t6, s6, s7
                  xori         t4, s5, 570
                  sltiu        s8, t3, -1143
                  addi         tp, gp, 812
                  bgeu         gp, t3, 1134f
                  bltu         t2, a3, 1143f
                  and          s9, s0, t1
1129:             and          t1, s0, a6
1130:             sltu         s10, s6, a1
1131:             lui          a4, 258831
                  or           a7, a3, s1
                  blt          zero, t0, 1146f
1134:             blt          s9, a7, 1148f
                  srl          a1, s1, s6
                  slli         s3, s4, 31
                  addi         s10, t6, -548
                  slti         s10, s3, -1376
                  nop
1140:             sll          a3, s8, t3
                  sll          a1, t5, s6
                  bge          t4, s4, 1147f
1143:             lui          s7, 619367
                  lui          sp, 215169
                  addi         s10, s8, 1670
1146:             add          t4, a4, a1
1147:             lui          t0, 809065
1148:             bltu         a7, s2, 1149f
1149:             bge          t5, t4, 1156f
                  beq          s5, s6, 1151f
1151:             bne          a7, sp, 1156f
                  sll          a5, tp, a0
                  lui          tp, 569448
                  sub          a2, a2, a1
                  sll          s4, a7, a3
1156:             and          a2, gp, a4
                  lw           ra, 4(t3)
                  addi         t3, t3, 32
                  andi         t1, t0, -1554
                  slli         a4, a5, 22
                  or           t4, a5, sp
                  sra          s6, s10, s4
                  xori         a3, gp, -1257
                  srai         t0, zero, 18
                  sll          gp, s1, sp
1664:             addi x26, x1, 1
1664:             jalr x26, x26, 0
sub_5:            bgeu         t3, t6, sub_5_stack_p
                  nop
                  sra          t6, tp, s6
                  sub          s11, s10, gp
                  or           t2, t3, t5
                  xor          sp, t5, s0
sub_5_stack_p:    addi         t3, t3, -28
                  ori          a1, t4, 445
                  slti         s11, s8, 1305
                  sub          t4, t5, t2
                  auipc        a3, 330303
                  sw           ra, 4(t3)
                  sltiu        t6, a2, -870
sub_5_2:          jal          ra, 1f
0:                jal          ra, 5f
1:                jal          gp, 8f
2:                jal          ra, 0b
3:                jal          t1, 10f
4:                jal          ra, 7f
5:                jal          t1, 12f
6:                jal          ra, 3b
7:                jal          t0, 6b
8:                jal          ra, 9f
9:                jal          ra, 2b
10:               jal          ra, 13f
11:               jal          t1, 4b
12:               jal          ra, 11b
13:               sra          s10, t0, t6
sub_5_1:          jal          ra, 0f
0:                jal          ra, 15f
1:                jal          ra, 3f
2:                jal          t1, 11f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          a0, 9f
6:                jal          s5, 1b
7:                jal          t1, 4b
8:                jal          ra, 16f
9:                jal          ra, 13f
10:               jal          ra, 7b
11:               jal          t1, 12f
12:               jal          ra, 6b
13:               jal          t1, 2b
14:               jal          tp, 10b
15:               jal          s3, 14b
16:               sra          a7, t0, s2
sub_5_3:          jal          ra, 28f
0:                jal          ra, 21f
1:                jal          t1, 18f
2:                jal          t4, 30f
3:                jal          a4, 14f
4:                jal          ra, 3b
5:                jal          ra, 6f
6:                jal          ra, 2b
7:                jal          t1, 16f
8:                jal          a1, 25f
9:                jal          ra, 27f
10:               jal          ra, 24f
11:               jal          ra, 8b
12:               jal          ra, 9b
13:               jal          t1, 1b
14:               jal          t1, 20f
15:               jal          ra, 12b
16:               jal          sp, 22f
17:               jal          ra, 4b
18:               jal          t1, 26f
19:               jal          ra, 10b
20:               jal          a7, 13b
21:               jal          ra, 23f
22:               jal          ra, 15b
23:               jal          ra, 19b
24:               jal          t1, 5b
25:               jal          t1, 17b
26:               jal          ra, 0b
27:               jal          t0, 11b
28:               jal          ra, 29f
29:               jal          s8, 7b
30:               sra          gp, s6, a6
                  nop
                  sra          t6, a0, s6
                  and          tp, s0, s8
                  bne          s9, gp, 5f
                  blt          a4, gp, 24f
5:                bne          s0, s7, 15f
                  add          ra, s1, a6
                  blt          gp, t1, 15f
                  lui          s10, 462865
                  xori         t0, t1, 1001
                  auipc        s1, 371734
                  sub          s10, s3, s7
                  bge          s0, a3, 25f
                  and          t2, a1, a2
sub_5_0:          jal          ra, 11f
0:                jal          ra, 9f
1:                jal          tp, 6f
2:                jal          ra, 12f
3:                jal          ra, 2b
4:                jal          t1, 7f
5:                jal          ra, 1b
6:                jal          t1, 8f
7:                jal          ra, 3b
8:                jal          t1, 13f
9:                jal          s11, 4b
10:               jal          ra, 5b
11:               jal          ra, 0b
12:               jal          s2, 10b
13:               xori         a4, sp, -1735
                  bne          a4, t6, 29f
15:               auipc        t4, 252711
                  or           a7, s3, a4
                  ori          s3, s11, -1981
                  bltu         sp, t5, 37f
                  slli         t4, s1, 8
                  xor          s4, s2, a4
                  xori         a0, t4, 508
                  xori         a4, a2, -1830
                  add          gp, s6, s1
24:               sub          s1, s11, t4
25:               beq          a0, a7, 31f
                  srl          a3, t6, a0
                  ori          s3, a7, -1346
                  bge          a2, zero, 44f
29:               srl          t0, a0, s2
                  blt          a5, a0, 48f
31:               bge          t6, a5, 36f
                  addi         a5, s4, -138
                  bgeu         t6, a5, 36f
                  sltiu        sp, zero, -125
                  srai         sp, s8, 4
36:               addi         s6, s9, -1407
37:               slti         a1, a6, 1822
                  auipc        s4, 398828
                  addi         s11, a7, 1419
                  bgeu         sp, zero, 46f
                  sltiu        s7, t4, 1427
                  sltu         sp, sp, a4
                  srli         a5, t3, 25
44:               bne          t0, a1, 59f
                  ori          a5, a7, -436
46:               bltu         t0, s4, 61f
                  auipc        s7, 146009
48:               bgeu         s8, s4, 61f
                  addi         tp, a2, -1463
                  auipc        zero, 998625
                  srl          gp, sp, a6
                  beq          t0, a7, 64f
                  srl          a4, t0, t0
                  or           s7, s5, s2
                  beq          s9, sp, 73f
                  sra          s10, s9, ra
                  xor          a5, s7, ra
                  bge          t3, tp, 64f
59:               beq          t4, s3, 66f
                  bgeu         a0, s5, 73f
61:               bltu         zero, sp, 74f
                  and          t6, s0, a3
                  beq          t0, t3, 76f
64:               bge          s1, t5, 67f
                  nop
66:               bltu         a6, s6, 84f
67:               bgeu         s5, s5, 72f
                  bgeu         t6, t6, 71f
                  xori         t1, tp, 1341
                  blt          a4, sp, 82f
71:               sra          a3, ra, a5
72:               andi         gp, gp, -1571
73:               beq          s0, a3, 76f
74:               slt          a5, s2, s5
                  xori         s8, t3, -918
76:               srai         s4, a4, 7
                  sub          s2, a5, ra
                  bge          s10, t1, 84f
                  bgeu         s2, t3, 98f
                  sltu         zero, s9, t2
                  andi         s7, s1, -1467
82:               srli         ra, s2, 1
                  sll          t1, a0, gp
84:               beq          a3, t3, 87f
                  sra          a0, a4, a5
                  bge          a0, zero, 101f
87:               xor          ra, a4, t3
                  srai         s6, sp, 28
                  sltiu        a7, s9, 483
                  srai         tp, s2, 4
                  sltu         t4, s9, s5
                  andi         a7, sp, -1531
                  sltu         s6, s2, s0
                  addi         s8, s9, -1462
                  sltu         s3, s8, t0
                  sra          s6, t3, t5
                  beq          t6, s3, 112f
98:               sltu         t1, a6, s1
                  sll          s1, tp, t6
                  sltiu        a0, a3, 976
101:              sra          s5, t5, a0
                  ori          s3, s9, 329
                  addi         t0, t6, -730
                  slti         ra, a4, -2015
                  add          t6, a2, a7
                  sltu         a1, a1, s1
                  or           s4, t4, t4
                  slli         a3, zero, 31
                  bge          a0, s10, 122f
                  auipc        t0, 169395
                  blt          s2, s5, 129f
112:              andi         sp, gp, 1244
                  sltu         t4, s3, a6
                  or           s6, zero, ra
                  nop
                  sltiu        s4, sp, 1297
                  andi         a2, t3, 1098
                  bltu         t3, sp, 120f
                  sra          t0, ra, s9
120:              ori          a7, a1, -761
                  bgeu         tp, sp, 127f
122:              or           a0, s0, zero
                  blt          s5, t2, 126f
                  slt          s3, s4, s0
                  sll          gp, ra, a1
126:              slti         sp, s4, -1889
127:              sub          a4, a7, ra
                  beq          t0, s11, 141f
129:              blt          s9, t3, 142f
                  srai         a0, gp, 5
                  sub          s11, s1, t0
                  beq          s6, s10, 144f
                  auipc        a5, 727546
                  xori         a4, s0, -305
                  andi         zero, a6, 726
                  srli         s2, t4, 13
                  srai         t1, a7, 11
                  and          s4, s9, a4
                  beq          s0, s3, 155f
                  slli         t0, s1, 24
141:              ori          s3, a2, -103
142:              sll          a7, s8, s1
                  auipc        s2, 318440
144:              blt          a1, s1, 159f
                  and          tp, gp, t5
                  add          s1, a5, s6
                  ori          s5, a2, -1605
                  blt          s8, s1, 156f
                  xori         s7, s11, 1496
                  srli         s11, s5, 16
                  xori         a5, a2, -329
                  slti         s4, a1, -476
                  and          s4, s0, a0
                  add          s7, a0, t2
155:              and          a7, s5, a3
156:              bltu         a6, s3, 162f
                  sltu         a0, a3, s1
                  sltiu        tp, s9, -74
159:              xor          a0, s1, a0
                  and          s10, t3, a1
                  bltu         s7, tp, 167f
162:              auipc        a0, 701735
                  sltiu        a1, t5, -1289
                  sltiu        t6, a3, 888
                  sltiu        a4, t3, -1767
                  nop
167:              slt          t4, s1, s9
                  auipc        a1, 602053
                  bltu         t1, a3, 176f
                  sltu         s6, t0, a6
                  sll          t2, a3, gp
                  bge          zero, zero, 192f
                  blt          gp, s11, 176f
                  lui          a2, 731497
                  srai         s3, s8, 11
176:              bge          t0, a4, 189f
                  bne          s9, a0, 189f
                  lui          s2, 551051
                  srai         s9, s2, 9
                  slt          ra, ra, a5
                  slti         t5, tp, 1995
                  sll          t1, sp, a7
                  blt          s6, t1, 188f
                  sltiu        s10, t0, 249
                  andi         s7, t3, 414
                  sra          a0, t2, t5
                  blt          a3, t3, 205f
188:              auipc        t1, 562548
189:              slti         a2, a1, -2044
                  nop
                  slt          a5, s10, s7
192:              slti         a7, a3, -174
                  sra          a2, t1, gp
                  and          s1, t2, s3
                  bltu         ra, s10, 208f
                  bltu         a1, a0, 199f
                  sll          a0, ra, s7
                  andi         t0, t1, 295
199:              lui          a2, 385300
                  sltiu        s4, s0, 538
                  srai         t5, t3, 2
                  xori         gp, gp, -1608
                  auipc        s8, 304645
                  lui          s6, 419868
205:              lui          t6, 176849
                  sltiu        t0, t4, 872
                  nop
208:              slli         s3, s10, 21
                  or           s10, a7, tp
                  slli         s6, t6, 23
                  xor          s9, t1, s3
                  lw           ra, 4(t3)
                  sll          sp, t1, a4
                  sll          t1, s2, t0
                  andi         sp, s5, -90
                  slt          sp, gp, ra
                  addi         t3, t3, 28
                  sll          s5, s9, t4
                  xori         t0, t0, -661
313:              addi x29, x1, 1
313:              jalr x29, x29, 0
sub_3:            addi         t3, t3, -36
                  sra          sp, t3, gp
                  slti         s1, t1, -461
                  xori         s1, t4, -40
                  sw           ra, 4(t3)
                  andi         a3, t0, -173
                  add          s5, zero, a7
                  add          a7, a0, a1
                  sll          s8, a0, s2
                  xori         s7, s6, 825
                  sltiu        s4, a4, -1565
                  la           t6, sub_5
                  slti         a4, gp, 244
                  addi         t6, t6, 18
                  xor          zero, t5, tp
                  beq          s4, s2, sub_3_j6 #branch to jump instr
                  ori          s5, s3, -425
                  sra          s5, gp, a2
sub_3_j6:         jalr         ra, t6, -18 #jump sub_3 -> sub_5
                  andi         s3, a4, -1436
                  sub          gp, t3, a7
                  bge          a7, s8, 3f
3:                srli         s1, s6, 19
                  blt          s10, a7, 11f
                  xori         s6, a7, 657
                  bne          sp, gp, 13f
                  srl          zero, s8, a7
                  srai         s3, tp, 20
                  lui          s7, 471307
                  bgeu         a2, t4, 24f
11:               slt          s4, s2, t1
                  add          s1, t4, a6
13:               bgeu         s11, t6, 29f
                  ori          s7, s3, 972
                  andi         a0, s4, -1560
                  srl          s4, sp, s11
                  bne          s1, a2, 23f
                  slti         t6, s7, 1758
                  slti         s11, t3, -459
                  and          s5, s1, a3
                  or           a2, ra, t3
                  srli         t0, s10, 5
23:               auipc        t2, 803053
24:               slt          zero, s7, t2
                  slli         s4, a4, 7
                  srl          s7, s8, s6
                  slli         a4, t1, 1
                  srai         a7, s4, 11
29:               slli         s1, s1, 19
                  nop
                  lui          s3, 914829
                  and          t1, s11, s7
                  bgeu         tp, t0, 34f
34:               and          a3, a5, zero
                  lw           ra, 4(t3)
                  xor          a2, s6, s2
                  sll          s1, s11, s7
                  addi         t3, t3, 36
                  sub          a3, zero, a4
                  addi         a0, s10, 980
60:               addi x25, x1, 0
60:               jalr x25, x25, 0
sub_4:            bltu         sp, a5, sub_4_stack_p
                  sub          s6, sp, a5
sub_4_stack_p:    addi         t3, t3, -20
                  slt          a4, s11, a1
                  sw           ra, 4(t3)
                  xori         zero, a2, 747
                  ori          tp, sp, 522
                  sra          s8, a1, t6
sub_4_4:          jal          ra, 8f
0:                jal          ra, 12f
1:                jal          t1, 9f
2:                jal          ra, 0b
3:                jal          ra, 10f
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          s1, 1b
7:                jal          t1, 2b
8:                jal          ra, 3b
9:                jal          ra, 13f
10:               jal          ra, 11f
11:               jal          t0, 4b
12:               jal          ra, 5b
13:               xor          s8, gp, s3
sub_4_1:          jal          ra, 8f
0:                jal          ra, 6f
1:                jal          ra, 10f
2:                jal          s3, 4f
3:                jal          ra, 5f
4:                jal          ra, 3b
5:                jal          t1, 9f
6:                jal          a1, 2b
7:                jal          t1, 0b
8:                jal          sp, 1b
9:                jal          ra, 12f
10:               jal          tp, 11f
11:               jal          ra, 7b
12:               sll          s3, s5, a4
sub_4_0:          jal          ra, 3f
0:                jal          ra, 1f
1:                jal          ra, 6f
2:                jal          ra, 12f
3:                jal          ra, 11f
4:                jal          ra, 14f
5:                jal          ra, 9f
6:                jal          s9, 5b
7:                jal          ra, 10f
8:                jal          t1, 17f
9:                jal          t1, 2b
10:               jal          s10, 19f
11:               jal          sp, 0b
12:               jal          t1, 13f
13:               jal          t1, 4b
14:               jal          gp, 18f
15:               jal          sp, 7b
16:               jal          a7, 15b
17:               jal          a3, 16b
18:               jal          ra, 8b
19:               slt          a1, s9, t6
sub_4_5:          jal          ra, 9f
0:                jal          ra, 4f
1:                jal          ra, 13f
2:                jal          ra, 16f
3:                jal          ra, 12f
4:                jal          t2, 2b
5:                jal          ra, 1b
6:                jal          ra, 3b
7:                jal          ra, 11f
8:                jal          tp, 6b
9:                jal          ra, 7b
10:               jal          a2, 15f
11:               jal          ra, 14f
12:               jal          t1, 10b
13:               jal          ra, 8b
14:               jal          ra, 5b
15:               jal          t2, 0b
16:               sub          s3, t2, s10
sub_4_2:          jal          ra, 1f
0:                jal          tp, 8f
1:                jal          s4, 9f
2:                jal          ra, 26f
3:                jal          t1, 12f
4:                jal          ra, 18f
5:                jal          t1, 4b
6:                jal          t1, 27f
7:                jal          ra, 21f
8:                jal          ra, 2b
9:                jal          t1, 15f
10:               jal          s9, 17f
11:               jal          ra, 5b
12:               jal          ra, 22f
13:               jal          ra, 25f
14:               jal          ra, 0b
15:               jal          s4, 10b
16:               jal          ra, 11b
17:               jal          ra, 19f
18:               jal          t1, 13b
19:               jal          tp, 7b
20:               jal          ra, 6b
21:               jal          a1, 24f
22:               jal          s2, 23f
23:               jal          ra, 14b
24:               jal          ra, 3b
25:               jal          ra, 20b
26:               jal          ra, 16b
27:               sll          s3, a4, a3
                  srl          s5, a0, s10
                  ori          s9, s8, -571
                  beq          tp, t1, 3f
3:                bne          a4, s11, 20f
                  sll          zero, t4, s6
                  srli         s1, sp, 0
                  nop
                  beq          s9, s3, 27f
                  and          a7, a4, a6
                  sra          s5, s7, a5
                  srli         s7, t0, 8
                  auipc        tp, 766499
                  bne          ra, a0, 13f
13:               bne          s4, s4, 31f
                  xori         t5, a1, 1859
                  lui          a4, 329507
                  and          a4, a3, zero
                  andi         gp, a7, -680
                  slt          sp, t6, a7
                  srl          zero, s0, s4
20:               sltu         t2, s4, t0
                  bgeu         a4, t5, 31f
                  xor          tp, a1, s2
                  or           s5, s1, t3
                  slli         t1, a3, 29
                  slli         s10, t0, 17
                  srli         a3, t2, 21
27:               auipc        tp, 454664
                  andi         a0, ra, 1035
                  bge          a0, s5, 46f
                  auipc        s8, 955736
31:               slt          a0, a7, s9
                  bne          s5, a0, 43f
                  sra          a5, t4, s8
                  bltu         t1, t4, 42f
                  sra          t0, a5, s7
                  nop
                  sll          tp, t3, s1
                  xor          a3, t1, a0
                  srl          s8, s9, a0
                  slli         a0, a1, 14
                  srl          a2, s10, ra
42:               or           s3, t5, s1
43:               beq          a7, a3, 56f
                  add          a5, t1, ra
                  sll          a4, s7, a1
46:               ori          a0, s8, 245
                  bgeu         t6, t0, 58f
                  xori         t0, s1, 1199
                  and          t0, t4, s11
                  bge          t4, a2, 53f
                  ori          s10, t2, 1834
                  srl          sp, s3, a7
53:               srl          t5, s3, s3
                  lui          zero, 472710
                  beq          a4, a4, 73f
56:               sltu         s7, a7, s9
                  ori          gp, t2, 1973
58:               addi         gp, t0, -825
                  bltu         t5, gp, 76f
                  srl          sp, s7, tp
                  xor          a3, t3, a3
                  sltiu        tp, ra, -263
                  sltu         tp, t6, t4
                  auipc        s8, 1041859
                  sra          t6, s4, a7
                  lui          t2, 700553
                  auipc        t6, 56895
                  srai         s2, t4, 11
                  auipc        s8, 30281
                  bne          a4, a7, 85f
                  bltu         s3, a5, 83f
                  srai         s6, a1, 0
73:               or           t2, a4, t1
                  bgeu         a3, s10, 77f
                  sub          s8, t5, ra
76:               blt          s10, a0, 91f
77:               sltu         s1, zero, s3
                  xor          t1, s7, s0
                  ori          t4, tp, -1222
                  bgeu         a0, a6, 100f
                  andi         a7, s7, 714
                  bge          t4, s11, 101f
83:               bltu         s10, t2, 84f
84:               xor          t5, a2, s8
85:               addi         a2, gp, 41
                  bltu         s2, t5, 94f
                  sltu         t1, s10, a5
                  sub          s6, t2, t5
                  slli         s8, s1, 1
                  bne          t1, s4, 101f
91:               bge          s5, a3, 106f
                  slt          s3, t5, gp
                  srai         s1, a4, 8
94:               sltiu        s4, a3, 216
                  sltu         s10, s7, t2
                  xor          a7, s10, t2
                  xori         t5, s4, -1808
                  slti         zero, a5, 1687
                  slti         a3, s7, 582
100:              slli         s1, t6, 27
101:              add          t4, s3, s6
                  nop
                  ori          s7, t3, -1115
                  beq          ra, s0, 122f
                  srl          t2, a4, s5
106:              sll          t2, t2, s2
                  auipc        s2, 825157
                  andi         a7, s8, -1647
                  sra          gp, a4, s11
                  and          s2, a7, s9
                  ori          s9, a3, 2010
                  bltu         t6, s3, 128f
                  and          a4, s4, s5
                  andi         zero, t3, 169
                  blt          zero, t2, 135f
                  sltiu        a5, s11, 1982
                  slt          tp, a0, a5
                  lui          a1, 824320
                  blt          t6, s9, 124f
                  sltiu        s4, t5, -1472
                  sltu         ra, ra, a0
122:              and          tp, ra, s6
                  bltu         s3, s1, 131f
124:              slti         a4, t5, 1292
                  sra          a0, s3, a7
                  addi         s11, s11, 120
                  addi         s9, s6, -2048
128:              addi         s1, s6, 1578
                  nop
                  add          s11, gp, t6
131:              slli         s9, a5, 4
                  slli         sp, t3, 9
                  sltiu        s8, ra, -1313
                  lui          tp, 599336
135:              bgeu         t6, sp, 151f
                  sltiu        a2, s3, -1942
                  nop
                  or           t2, s2, s0
                  bne          ra, a3, 155f
                  bne          gp, s10, 157f
                  srli         tp, a0, 13
                  sltiu        t2, t0, 589
                  add          s7, s1, t0
                  slli         t1, zero, 25
                  bltu         t3, s11, 165f
                  add          s2, s11, ra
                  add          gp, ra, a6
                  srli         s4, s0, 6
                  srai         gp, t3, 4
                  srl          t1, a1, t3
151:              bne          sp, ra, 169f
                  sll          a0, t1, a7
                  blt          s6, a3, 165f
                  bgeu         t4, a4, 157f
155:              ori          a4, s10, 1041
                  and          zero, t6, s5
157:              xori         a3, s7, -206
                  srai         a3, sp, 17
                  srli         s2, s7, 25
                  nop
                  xor          t0, t6, a6
                  sra          a3, a2, s9
                  xori         t4, s3, 1803
                  or           s1, s1, s5
165:              bge          a7, t2, 178f
                  add          a3, s3, a3
                  srai         a0, t5, 3
                  lui          s3, 441359
169:              beq          s3, t4, 179f
                  auipc        s11, 181641
                  srl          t4, s6, a3
                  sub          t1, a6, s11
                  addi         t0, a7, 543
                  xor          t5, a2, t3
                  srli         t0, t0, 31
                  addi         s9, t4, 95
                  andi         t2, ra, 820
178:              slli         a3, s3, 1
179:              sra          sp, tp, s4
                  or           s1, s10, s6
                  andi         t4, s11, -1654
                  bge          a0, s8, 190f
                  sltu         a2, s10, s4
                  bne          s1, s1, 199f
                  auipc        s7, 965090
                  bgeu         ra, sp, 187f
187:              add          t2, a1, t5
                  or           t2, t5, a1
                  addi         s1, s5, 1871
190:              sltiu        sp, a4, -1528
                  bne          s10, a0, 211f
                  andi         s2, a2, -585
                  lui          zero, 744772
                  auipc        s5, 714997
                  bge          s5, sp, 196f
196:              sltiu        sp, s11, 1742
                  sll          t4, a2, s11
                  sra          gp, s4, a4
199:              blt          s0, s6, 214f
                  slt          zero, a4, t3
                  srai         s1, a5, 30
                  slti         a5, s10, 1435
                  and          s1, s0, t2
                  addi         a2, a4, -876
                  bne          t4, t4, 216f
                  or           a1, t6, a1
                  beq          s2, a0, 227f
                  srai         a1, a2, 4
                  bge          s10, s1, 212f
                  sll          s10, a3, sp
211:              srli         a4, s0, 4
212:              bne          a3, s5, 223f
                  nop
214:              auipc        a4, 970142
                  bgeu         s4, gp, 233f
216:              ori          s6, a7, -147
                  srl          a0, s5, s4
                  bgeu         s3, ra, 226f
                  slti         gp, s5, -73
                  lui          a3, 694004
                  srl          a3, t3, a5
                  add          t6, t6, a2
223:              sltiu        a2, a7, -1753
                  sll          s5, s6, s1
                  srli         zero, a4, 16
226:              srli         s4, t5, 26
227:              beq          a6, s1, 232f
                  xori         t4, s1, -950
                  bge          s6, s5, 244f
                  addi         a0, zero, -1216
                  sll          a7, t2, ra
232:              sub          t1, a7, s3
233:              sub          a7, zero, s3
                  auipc        t5, 57305
                  srai         s8, s6, 0
                  srai         a2, s7, 17
                  sltu         s4, s4, s5
                  auipc        s11, 733158
                  bne          s7, s9, 250f
                  xori         t4, s10, 524
                  sra          a2, s8, a5
                  nop
                  slti         s1, a3, 943
244:              and          a7, s10, a4
                  srli         zero, a5, 29
                  addi         a5, s0, 466
                  andi         s11, t2, 1028
                  nop
                  sra          s1, t4, a7
250:              auipc        a2, 401961
                  bge          s10, a5, 267f
                  srli         a7, t6, 6
                  ori          a3, s7, -723
                  addi         a5, a3, -1972
                  blt          a4, zero, 273f
                  ori          a2, s2, -77
                  srai         a0, t5, 12
                  bltu         s10, t4, 275f
                  bltu         sp, a5, 267f
                  auipc        s11, 1033730
                  srai         s1, s3, 22
                  add          a5, zero, s7
                  srli         a2, a7, 23
                  sub          t2, s2, a1
                  andi         s11, s7, 1781
                  srai         s3, a3, 3
267:              beq          sp, sp, 268f
268:              add          sp, t3, t0
                  or           a4, s5, t6
                  bge          s10, a0, 287f
                  bne          t1, t5, 290f
                  and          a4, a2, a0
273:              add          a1, a1, s1
                  xor          a3, s9, tp
275:              andi         a3, a4, -47
                  blt          t3, a7, 295f
                  lui          a2, 287293
                  slti         s7, ra, -684
                  blt          s11, a0, 290f
                  bgeu         a7, s0, 297f
                  sub          s5, s9, a4
                  bltu         s2, s8, 297f
                  xori         tp, a3, -1604
                  nop
sub_4_3:          jal          ra, 15f
0:                jal          ra, 8f
1:                jal          ra, 12f
2:                jal          t1, 5f
3:                jal          a3, 14f
4:                jal          t1, 16f
5:                jal          a1, 3b
6:                jal          ra, 2b
7:                jal          ra, 1b
8:                jal          s7, 7b
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          ra, 4b
12:               jal          t1, 13f
13:               jal          ra, 9b
14:               jal          t1, 10b
15:               jal          s4, 0b
16:               slti         t2, a6, -1222
                  or           t1, t2, s5
                  or           s2, t3, s11
287:              slli         a0, t1, 7
                  blt          tp, a6, 301f
                  add          s7, a1, a1
290:              sltu         s5, s8, a7
                  xori         t4, t3, -219
                  slt          sp, t2, gp
                  sltiu        sp, s4, 1526
                  blt          s4, s3, 297f
295:              sra          s5, s11, gp
                  lui          a4, 494797
297:              beq          t4, t4, 305f
                  sltiu        zero, sp, -324
                  xori         t6, s6, 1392
                  slli         s7, zero, 5
301:              sub          a3, t1, a0
                  and          t1, s3, s6
                  slli         s1, a5, 28
                  xor          t4, a0, t6
305:              and          t5, a0, t4
                  lui          t6, 680622
                  lui          s6, 780404
                  slti         s1, a1, 898
                  auipc        a4, 85717
                  slti         s10, s10, -836
                  and          s2, s2, s9
                  xori         t4, s2, 2045
                  sltu         tp, gp, t5
                  beq          a4, t0, 315f
315:              blt          a6, s10, 328f
                  blt          a6, s6, 328f
                  slli         s4, s0, 20
                  and          s11, t1, s11
                  blt          s9, s6, 328f
                  ori          s10, a7, -1448
                  sltiu        a1, a4, -994
                  andi         a3, t6, 122
                  or           a1, s5, t1
                  xor          t6, s2, t0
                  srai         ra, t5, 29
                  sll          ra, t4, s9
                  bltu         a2, a2, 328f
328:              ori          s8, s6, -960
                  sll          s9, s8, zero
                  lui          s11, 527361
                  slti         a7, a3, -271
                  lw           ra, 4(t3)
                  sub          t1, s1, t3
                  sltiu        t2, s11, -393
                  slti         t6, s7, 544
                  sltu         a1, a0, s4
                  addi         t3, t3, 20
                  add          t2, a1, s2
                  srli         s9, s3, 30
                  sltu         a0, a4, t1
464:              addi x3, x1, 0
464:              jalr x3, x3, 0
sub_2:            addi         t5, t3, -1237
                  sltu         s2, t0, s4
                  slti         s4, s0, -1951
                  sltiu        s2, s6, -743
                  lui          a4, 318404
                  addi         t3, t3, -28
                  slti         s1, s8, 476
                  sw           ra, 4(t3)
                  xori         s6, gp, -786
                  srl          t6, t2, a5
                  lui          gp, 934107
                  slt          t6, s8, ra
                  bltu         tp, t4, 1f
1:                ori          t1, s5, -476
                  slli         t0, t3, 8
                  xor          t5, gp, ra
                  or           s11, zero, zero
                  bne          s1, a1, 21f
                  lui          s4, 646994
                  srl          zero, a4, t1
                  bne          s4, t3, 23f
                  add          a2, s1, t4
                  bgeu         s9, t0, 15f
                  ori          t0, a7, 376
                  bgeu         s4, s1, 21f
                  sll          s1, sp, s10
                  add          a7, a2, s0
15:               bge          ra, t1, 22f
                  nop
                  beq          gp, t1, 32f
                  ori          s7, a2, -1397
                  slt          s4, s3, s6
                  and          gp, zero, t4
21:               ori          s4, t4, 1606
22:               srai         a2, tp, 4
23:               slti         a0, s2, -1083
                  srli         s3, s4, 6
                  add          s7, s11, s3
                  xor          s3, s7, t6
                  xori         a0, zero, -899
                  add          s7, s2, s0
                  auipc        a3, 560226
                  auipc        s9, 697551
                  srai         a2, a6, 31
32:               srli         a4, s6, 21
                  sub          a2, t6, t1
                  bgeu         s9, t2, 37f
                  bgeu         gp, t3, 36f
36:               bge          s3, a2, 37f
37:               slti         s7, t1, 1550
                  nop
                  and          zero, t4, gp
                  slt          s3, s10, s10
                  xor          s1, sp, tp
                  addi         s10, s9, -1131
                  lw           ra, 4(t3)
                  xor          a3, a5, t5
                  addi         t3, t3, 28
                  add          a3, t5, s1
59:               addi x17, x1, 0
59:               jalr x17, x17, 0
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
                  add x8, x28, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x12, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x12, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x12, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x12, x5, ecall_handler
                  li x5, 0x1
                  beq x12, x5, instr_fault_handler
                  li x5, 0x5
                  beq x12, x5, load_fault_handler
                  li x5, 0x7
                  beq x12, x5, store_fault_handler
                  li x5, 0xc
                  beq x12, x5, pt_fault_handler
                  li x5, 0xd
                  beq x12, x5, pt_fault_handler
                  li x5, 0xf
                  beq x12, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x28, x8, zero
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
                  add x28, x8, zero
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
                  add x28, x8, zero
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x28, x8, zero
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x28, x8, zero
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
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x28, x8, zero
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
