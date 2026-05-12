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
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0xf42fa97c
                  li x1, 0xfb2e9eca
                  li x2, 0xa7db5336
                  li x3, 0xc
                  li x4, 0x1
                  li x5, 0xb
                  li x7, 0xfb0dcc91
                  li x8, 0x0
                  li x9, 0xb
                  li x10, 0xf02140a4
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0xf628f1ca
                  li x14, 0xf9cd2b6a
                  li x15, 0x0
                  li x16, 0xc
                  li x17, 0xe
                  li x18, 0x6cc61aa1
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x9d4b6981
                  li x23, 0xf1cbef35
                  li x24, 0x9
                  li x25, 0x5
                  li x26, 0xfbf8e261
                  li x27, 0x80000000
                  li x28, 0x5
                  li x29, 0x1
                  li x30, 0xc4e221f6
                  li x31, 0x80000000
                  la x6, user_stack_end
main:             jal          ra, 3f
0:                jal          s9, 13f
1:                jal          ra, 8f
2:                jal          s0, 5f
3:                jal          ra, 6f
4:                jal          gp, 12f
5:                jal          ra, 7f
6:                jal          s7, 10f
7:                jal          ra, 4b
8:                jal          ra, 2b
9:                jal          ra, 1b
10:               jal          ra, 11f
11:               jal          ra, 9b
12:               jal          ra, 0b
13:               lui          a4, 295729
main_15:          jal          ra, 11f
0:                jal          ra, 17f
1:                jal          a5, 4f
2:                jal          a1, 13f
3:                jal          ra, 2b
4:                jal          a1, 10f
5:                jal          ra, 3b
6:                jal          sp, 5b
7:                jal          ra, 16f
8:                jal          t0, 9f
9:                jal          ra, 6b
10:               jal          s11, 8b
11:               jal          ra, 14f
12:               jal          sp, 15f
13:               jal          ra, 0b
14:               jal          s0, 7b
15:               jal          a0, 1b
16:               jal          a2, 12b
17:               xori         s5, s0, 914
main_1:           jal          ra, 8f
0:                jal          ra, 30f
1:                jal          sp, 15f
2:                jal          s4, 1b
3:                jal          ra, 6f
4:                jal          ra, 21f
5:                jal          ra, 25f
6:                jal          s11, 5b
7:                jal          ra, 9f
8:                jal          ra, 23f
9:                jal          ra, 10f
10:               jal          ra, 26f
11:               jal          ra, 20f
12:               jal          ra, 27f
13:               jal          ra, 14f
14:               jal          ra, 3b
15:               jal          sp, 16f
16:               jal          tp, 11b
17:               jal          ra, 29f
18:               jal          ra, 28f
19:               jal          ra, 22f
20:               jal          ra, 7b
21:               jal          s1, 17b
22:               jal          ra, 4b
23:               jal          ra, 12b
24:               jal          ra, 18b
25:               jal          a5, 24b
26:               jal          ra, 0b
27:               jal          ra, 13b
28:               jal          s11, 19b
29:               jal          ra, 2b
30:               or           a6, s3, ra
main_14:          jal          ra, 20f
0:                jal          ra, 23f
1:                jal          ra, 8f
2:                jal          ra, 25f
3:                jal          ra, 2b
4:                jal          ra, 13f
5:                jal          ra, 14f
6:                jal          gp, 18f
7:                jal          ra, 11f
8:                jal          a6, 6b
9:                jal          sp, 17f
10:               jal          s10, 5b
11:               jal          t0, 0b
12:               jal          ra, 21f
13:               jal          ra, 3b
14:               jal          ra, 24f
15:               jal          ra, 4b
16:               jal          ra, 7b
17:               jal          ra, 22f
18:               jal          a1, 10b
19:               jal          ra, 9b
20:               jal          t5, 1b
21:               jal          s1, 15b
22:               jal          ra, 16b
23:               jal          ra, 12b
24:               jal          ra, 19b
25:               add          t6, tp, s5
main_22:          jal          ra, 7f
0:                jal          ra, 11f
1:                jal          ra, 8f
2:                jal          ra, 1b
3:                jal          ra, 14f
4:                jal          s2, 9f
5:                jal          sp, 2b
6:                jal          s5, 0b
7:                jal          a4, 10f
8:                jal          ra, 6b
9:                jal          ra, 3b
10:               jal          t6, 13f
11:               jal          gp, 12f
12:               jal          ra, 4b
13:               jal          ra, 5b
14:               srai         tp, t2, 29
main_2:           jal          ra, 8f
0:                jal          ra, 16f
1:                jal          ra, 11f
2:                jal          t5, 1b
3:                jal          ra, 10f
4:                jal          ra, 7f
5:                jal          t4, 12f
6:                jal          a5, 15f
7:                jal          ra, 9f
8:                jal          gp, 17f
9:                jal          ra, 3b
10:               jal          ra, 18f
11:               jal          ra, 5b
12:               jal          ra, 13f
13:               jal          ra, 4b
14:               jal          a6, 6b
15:               jal          ra, 19f
16:               jal          ra, 14b
17:               jal          ra, 2b
18:               jal          t6, 0b
19:               srai         s4, a6, 30
main_13:          jal          ra, 16f
0:                jal          s5, 4f
1:                jal          ra, 12f
2:                jal          s11, 19f
3:                jal          ra, 9f
4:                jal          ra, 20f
5:                jal          ra, 6f
6:                jal          ra, 21f
7:                jal          t2, 0b
8:                jal          ra, 7b
9:                jal          t3, 14f
10:               jal          a5, 1b
11:               jal          s11, 10b
12:               jal          tp, 17f
13:               jal          s2, 11b
14:               jal          a2, 13b
15:               jal          ra, 2b
16:               jal          s9, 3b
17:               jal          ra, 15b
18:               jal          ra, 8b
19:               jal          t6, 18b
20:               jal          ra, 5b
21:               slli         gp, a0, 25
main_0:           jal          ra, 18f
0:                jal          ra, 15f
1:                jal          ra, 24f
2:                jal          a3, 1b
3:                jal          t6, 0b
4:                jal          sp, 13f
5:                jal          ra, 12f
6:                jal          ra, 10f
7:                jal          ra, 22f
8:                jal          s3, 19f
9:                jal          ra, 23f
10:               jal          tp, 3b
11:               jal          ra, 4b
12:               jal          a6, 6b
13:               jal          ra, 26f
14:               jal          tp, 11b
15:               jal          ra, 16f
16:               jal          sp, 25f
17:               jal          ra, 21f
18:               jal          ra, 8b
19:               jal          ra, 5b
20:               jal          ra, 17b
21:               jal          ra, 14b
22:               jal          ra, 9b
23:               jal          t2, 2b
24:               jal          ra, 20b
25:               jal          tp, 7b
26:               lui          a5, 560299
main_8:           jal          ra, 2f
0:                jal          a3, 9f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          ra, 13f
4:                jal          ra, 14f
5:                jal          t6, 7f
6:                jal          ra, 4b
7:                jal          a1, 3b
8:                jal          ra, 15f
9:                jal          ra, 6b
10:               jal          ra, 8b
11:               jal          ra, 0b
12:               jal          s2, 11b
13:               jal          a4, 1b
14:               jal          s0, 5b
15:               sltu         a3, t0, a1
main_17:          jal          ra, 13f
0:                jal          ra, 15f
1:                jal          ra, 2f
2:                jal          s9, 11f
3:                jal          t5, 9f
4:                jal          ra, 8f
5:                jal          ra, 14f
6:                jal          t2, 4b
7:                jal          ra, 16f
8:                jal          ra, 12f
9:                jal          a2, 5b
10:               jal          ra, 7b
11:               jal          ra, 6b
12:               jal          ra, 0b
13:               jal          ra, 1b
14:               jal          ra, 18f
15:               jal          ra, 10b
16:               jal          ra, 17f
17:               jal          ra, 3b
18:               srl          a0, a5, a4
main_6:           jal          ra, 11f
0:                jal          ra, 10f
1:                jal          ra, 14f
2:                jal          ra, 16f
3:                jal          ra, 6f
4:                jal          ra, 18f
5:                jal          t4, 19f
6:                jal          a2, 7f
7:                jal          t3, 2b
8:                jal          t6, 12f
9:                jal          ra, 20f
10:               jal          ra, 21f
11:               jal          ra, 4b
12:               jal          a0, 1b
13:               jal          gp, 17f
14:               jal          t6, 5b
15:               jal          t5, 13b
16:               jal          ra, 0b
17:               jal          ra, 8b
18:               jal          ra, 15b
19:               jal          ra, 9b
20:               jal          ra, 3b
21:               srai         t6, sp, 0
main_16:          jal          ra, 15f
0:                jal          ra, 20f
1:                jal          s10, 11f
2:                jal          ra, 12f
3:                jal          ra, 5f
4:                jal          ra, 1b
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          ra, 21f
8:                jal          tp, 6b
9:                jal          ra, 13f
10:               jal          gp, 14f
11:               jal          ra, 9b
12:               jal          t4, 19f
13:               jal          ra, 18f
14:               jal          ra, 7b
15:               jal          ra, 3b
16:               jal          ra, 10b
17:               jal          s9, 16b
18:               jal          ra, 17b
19:               jal          ra, 4b
20:               jal          ra, 8b
21:               lui          s4, 927580
main_23:          jal          ra, 12f
0:                jal          ra, 9f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          a1, 14f
4:                jal          ra, 7f
5:                jal          ra, 8f
6:                jal          a5, 3b
7:                jal          a4, 15f
8:                jal          sp, 13f
9:                jal          ra, 6b
10:               jal          ra, 0b
11:               jal          ra, 2b
12:               jal          ra, 1b
13:               jal          t4, 4b
14:               jal          ra, 5b
15:               and          t6, s2, ra
main_11:          jal          ra, 12f
0:                jal          ra, 7f
1:                jal          ra, 9f
2:                jal          t0, 8f
3:                jal          ra, 5f
4:                jal          t0, 6f
5:                jal          ra, 2b
6:                jal          ra, 11f
7:                jal          ra, 1b
8:                jal          ra, 0b
9:                jal          s3, 10f
10:               jal          ra, 13f
11:               jal          ra, 3b
12:               jal          ra, 4b
13:               xor          s10, a4, s2
main_12:          jal          ra, 6f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          s2, 7f
3:                jal          ra, 11f
4:                jal          ra, 1b
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          ra, 3b
8:                jal          ra, 9f
9:                jal          t0, 12f
10:               jal          ra, 2b
11:               jal          ra, 0b
12:               xori         t2, ra, 2005
main_21:          jal          ra, 10f
0:                jal          ra, 5f
1:                jal          ra, 11f
2:                jal          ra, 8f
3:                jal          gp, 15f
4:                jal          ra, 2b
5:                jal          s3, 9f
6:                jal          ra, 14f
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          tp, 1b
10:               jal          tp, 7b
11:               jal          s11, 16f
12:               jal          ra, 3b
13:               jal          ra, 12b
14:               jal          ra, 17f
15:               jal          ra, 4b
16:               jal          t2, 18f
17:               jal          ra, 13b
18:               slli         a3, s8, 13
main_24:          jal          ra, 12f
0:                jal          s0, 8f
1:                jal          ra, 11f
2:                jal          ra, 6f
3:                jal          ra, 5f
4:                jal          t5, 13f
5:                jal          ra, 1b
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          s10, 14f
9:                jal          ra, 3b
10:               jal          ra, 4b
11:               jal          gp, 2b
12:               jal          s0, 7b
13:               jal          ra, 0b
14:               sub          a6, s6, a2
main_10:          jal          ra, 3f
0:                jal          ra, 7f
1:                jal          ra, 4f
2:                jal          ra, 12f
3:                jal          ra, 10f
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          ra, 8f
7:                jal          s3, 6b
8:                jal          ra, 2b
9:                jal          ra, 1b
10:               jal          ra, 9b
11:               jal          ra, 0b
12:               add          s10, s2, t6
main_20:          jal          ra, 12f
0:                jal          gp, 16f
1:                jal          ra, 7f
2:                jal          a0, 10f
3:                jal          gp, 0b
4:                jal          ra, 2b
5:                jal          ra, 19f
6:                jal          s3, 21f
7:                jal          sp, 3b
8:                jal          ra, 18f
9:                jal          ra, 1b
10:               jal          ra, 13f
11:               jal          a6, 4b
12:               jal          s1, 20f
13:               jal          ra, 8b
14:               jal          ra, 11b
15:               jal          ra, 6b
16:               jal          t0, 14b
17:               jal          ra, 9b
18:               jal          ra, 5b
19:               jal          t6, 15b
20:               jal          s11, 17b
21:               sll          s7, t2, tp
main_7:           jal          ra, 11f
0:                jal          s3, 13f
1:                jal          ra, 20f
2:                jal          ra, 17f
3:                jal          a0, 18f
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          ra, 16f
7:                jal          a3, 15f
8:                jal          tp, 14f
9:                jal          s2, 21f
10:               jal          ra, 8b
11:               jal          a3, 1b
12:               jal          ra, 22f
13:               jal          ra, 10b
14:               jal          ra, 19f
15:               jal          ra, 3b
16:               jal          a6, 4b
17:               jal          ra, 12b
18:               jal          ra, 2b
19:               jal          ra, 7b
20:               jal          s9, 5b
21:               jal          ra, 0b
22:               nop
main_18:          jal          ra, 11f
0:                jal          ra, 14f
1:                jal          ra, 3f
2:                jal          gp, 7f
3:                jal          a0, 8f
4:                jal          ra, 12f
5:                jal          gp, 2b
6:                jal          tp, 10f
7:                jal          ra, 6b
8:                jal          t3, 9f
9:                jal          ra, 5b
10:               jal          ra, 16f
11:               jal          ra, 0b
12:               jal          ra, 15f
13:               jal          ra, 1b
14:               jal          s4, 4b
15:               jal          t0, 13b
16:               srai         sp, a4, 29
                  sll          zero, s5, gp
                  sra          gp, a0, sp
                  sltiu        s9, t1, 1622
                  srai         t2, t3, 5
                  lui          tp, 521294
                  slt          a4, ra, a1
                  auipc        s4, 109111
                  bgeu         s10, tp, 27f
                  sltu         sp, ra, s8
                  slli         a2, t6, 20
                  add          a3, tp, t2
                  slli         t3, t4, 27
                  srai         s0, t5, 12
                  srai         t6, s0, 19
                  bge          a2, a2, 18f
                  srl          zero, t4, t6
                  ori          t2, t5, -702
                  blt          s2, s2, 34f
18:               sltu         t3, t3, s1
                  sltiu        s3, s7, -496
                  bge          t0, t3, 25f
                  auipc        t5, 711601
                  srli         s5, s0, 7
                  slti         t5, t5, -1079
                  srl          a4, s10, tp
25:               srl          a0, a6, a3
                  sltiu        s9, s6, -1057
27:               auipc        s7, 873571
                  bne          sp, sp, 39f
                  srl          a0, t6, s0
                  slt          s7, s7, s5
                  bgeu         a2, s0, 47f
                  srl          t3, a5, ra
                  bge          s4, a4, 36f
34:               bge          sp, t3, 46f
                  slt          t0, s7, s5
36:               slli         s8, a4, 8
                  sub          a2, s2, s6
                  nop
39:               blt          ra, s6, 54f
                  sub          sp, zero, s8
                  slli         s4, t2, 10
                  slt          a0, t6, t0
                  blt          t2, gp, 60f
                  blt          s4, ra, 59f
                  lui          zero, 837776
46:               nop
47:               beq          ra, zero, 58f
                  or           t5, s1, tp
                  andi         s1, t0, 135
                  sll          s4, t1, s8
                  xori         s9, a3, 1272
                  sll          t6, a3, t0
                  slli         s2, s2, 22
54:               or           t0, s7, a4
                  bne          s2, t3, 72f
                  sltiu        a6, zero, 53
                  sltu         s11, s4, s10
58:               srl          zero, s3, s10
59:               slli         t6, a2, 20
60:               slt          s9, sp, t0
                  andi         t4, s8, 1842
                  bltu         s11, s0, 63f
63:               slt          ra, t5, tp
                  sll          a4, s1, a1
                  blt          a5, t1, 74f
                  blt          t3, a2, 72f
                  add          zero, a0, s5
                  srli         zero, ra, 17
                  slti         a2, s5, -759
                  beq          s6, a7, 72f
                  bne          s0, s3, 78f
72:               srai         s9, s0, 26
                  blt          a4, s10, 81f
74:               sltiu        a3, t2, -266
                  bltu         s8, sp, 80f
                  auipc        s7, 736487
                  slli         s2, ra, 20
78:               bltu         t0, a7, 81f
                  xor          s11, zero, s11
80:               bltu         s10, a4, 84f
81:               sltiu        a3, s10, 1579
                  srl          s10, a3, t5
                  lui          a4, 189781
84:               srl          t0, ra, s1
                  lui          zero, 85830
                  sll          s8, a2, a3
                  add          s10, a7, s2
                  sltu         s9, a5, s1
                  xori         sp, s8, 351
                  xori         a6, tp, -746
                  slt          s9, t2, s11
                  slti         s7, t5, 825
                  beq          zero, s5, 110f
                  sll          t3, s1, s9
                  srl          t2, s11, s11
                  add          s11, s8, s1
                  slli         s3, tp, 4
                  lui          a4, 585077
                  and          t2, s11, t1
                  blt          s2, s6, 106f
                  srai         t3, t2, 19
                  sub          s10, a2, t5
                  slti         t3, a7, 1952
                  srli         s11, s1, 18
                  lui          s4, 130747
106:              srli         s10, sp, 23
                  lui          gp, 58777
                  addi         sp, s11, 1798
                  bgeu         s4, s11, 123f
110:              sltiu        s9, a7, 1180
                  bltu         s9, ra, 123f
                  bgeu         s11, s0, 122f
                  or           s4, a4, t5
                  lui          tp, 63554
                  bgeu         s6, t4, 123f
                  bgeu         a0, s10, 121f
                  bltu         tp, zero, 126f
                  bltu         t5, a3, 126f
                  auipc        s0, 651850
                  or           a2, sp, s10
121:              sltiu        s9, t1, -1486
122:              bgeu         t3, sp, 139f
123:              slti         s10, a2, 447
                  andi         s7, zero, 124
                  add          s10, ra, a0
126:              andi         zero, a5, 712
                  beq          t0, s2, 138f
                  blt          s11, a6, 133f
                  bltu         t1, sp, 136f
                  sra          s7, s1, ra
                  nop
                  sll          s7, a3, s4
133:              lui          s5, 937089
                  sub          s4, gp, t0
                  bge          a0, s10, 141f
136:              bgeu         s0, s0, 152f
                  xor          s2, s1, t5
138:              xori         ra, a2, 1706
139:              add          s7, a3, a1
                  add          tp, ra, tp
141:              auipc        s7, 200822
                  auipc        a5, 251866
                  srai         t6, s5, 23
                  bne          t4, gp, 150f
                  bgeu         s3, a4, 162f
                  sltu         gp, s0, s11
                  xori         s3, s10, -226
                  addi         s11, t5, -1174
                  addi         a4, s10, -909
150:              lui          s8, 103531
                  or           t4, zero, zero
152:              srli         t3, s8, 31
                  andi         a2, a6, -1255
                  sra          a6, t1, t3
                  sra          s8, t4, gp
                  sub          a5, t2, gp
                  bgeu         sp, t0, 169f
                  xori         t2, sp, -1902
                  sltu         t3, sp, t0
                  bgeu         s0, a4, 175f
                  beq          t1, a4, 175f
162:              addi         a4, a6, 1204
                  addi         s4, sp, -1823
                  bne          tp, s5, 176f
                  sltu         s0, t6, a3
                  slt          s11, t1, a4
                  blt          a3, s11, 178f
                  bltu         a7, s9, 169f
169:              bne          s7, a3, 178f
                  or           a3, a6, a7
                  or           t4, s2, t5
                  sub          s1, a4, tp
                  slti         a6, s9, -607
                  slli         s2, s2, 10
175:              ori          s0, t6, 1841
176:              bne          s5, a4, 178f
                  sra          t4, sp, s0
178:              srl          s9, a6, s3
                  srl          t6, a3, a1
                  auipc        s9, 616713
                  auipc        a0, 115489
                  ori          t0, zero, 1789
                  or           t3, s0, a6
                  srl          t0, s10, a7
                  sub          t4, t0, s4
                  auipc        s10, 866512
                  bge          s0, s1, 192f
                  bge          s10, a2, 192f
                  nop
                  add          s9, s6, a4
                  srl          s1, sp, t4
192:              add          sp, s2, a3
                  nop
                  slti         a3, t6, -1061
                  sltu         s3, a6, t2
                  beq          a0, s8, 199f
                  add          s3, t6, ra
                  bne          s3, t6, 203f
199:              slt          s11, s3, t1
                  slti         t3, a2, -288
                  sub          a2, zero, t5
                  slti         sp, a4, -818
203:              sltiu        a4, sp, 36
                  sltiu        t3, a1, 1666
                  or           ra, t2, a3
                  sll          s4, t6, s1
                  add          t3, a1, sp
                  slt          t4, zero, s5
                  bltu         a3, a5, 224f
                  ori          tp, ra, 53
                  blt          s9, a7, 214f
                  andi         s11, ra, -358
                  sltiu        gp, s1, -90
214:              srai         a6, s5, 28
                  slti         s2, a4, -25
                  srli         t0, a1, 5
                  bge          a0, s1, 234f
                  srai         ra, s5, 7
                  auipc        t2, 552903
                  addi         t6, t4, -867
                  bge          s11, s7, 225f
                  auipc        s0, 274213
                  sra          t0, a0, s10
224:              sub          s8, a6, t0
225:              sltiu        t2, a7, 1612
                  bltu         s5, ra, 243f
                  sll          s11, a5, s2
                  andi         a3, a2, -1292
                  srli         a5, zero, 3
                  xori         sp, s1, -522
                  lui          gp, 63862
main_9:           jal          ra, 10f
0:                jal          ra, 4f
1:                jal          t3, 6f
2:                jal          t2, 7f
3:                jal          t5, 0b
4:                jal          ra, 17f
5:                jal          a1, 12f
6:                jal          ra, 8f
7:                jal          ra, 15f
8:                jal          ra, 13f
9:                jal          ra, 14f
10:               jal          tp, 11f
11:               jal          ra, 5b
12:               jal          ra, 2b
13:               jal          ra, 19f
14:               jal          a5, 16f
15:               jal          ra, 9b
16:               jal          gp, 18f
17:               jal          ra, 1b
18:               jal          gp, 3b
19:               sltu         s2, gp, s5
                  sub          t4, t4, t2
                  sltu         s2, a2, t5
234:              addi         s4, t6, 62
                  sub          t2, tp, t4
                  add          t5, zero, s1
                  xor          t5, a4, t6
                  bge          s10, t6, 247f
                  bge          t1, s11, 259f
                  bne          zero, a6, 250f
                  ori          sp, ra, 1075
                  ori          sp, t0, 611
243:              andi         s5, a1, 153
                  andi         a5, a2, 898
                  sll          s4, tp, zero
                  srl          a2, s11, s6
247:              beq          a6, s8, 255f
                  lui          t2, 699291
                  blt          s3, s10, 253f
250:              sub          zero, s2, zero
                  bltu         s0, t6, 254f
                  bge          s11, t4, 261f
253:              sub          t6, a5, s0
254:              andi         t2, a3, 1561
255:              sub          s1, s0, a3
                  bltu         a0, zero, 268f
                  slt          sp, ra, t6
                  auipc        s2, 718216
259:              sltiu        s5, t6, 764
                  xor          s7, s1, zero
261:              sltiu        gp, a6, -1324
                  sltiu        t5, zero, 1695
                  bgeu         gp, s2, 274f
                  sltu         t4, s7, s9
                  sra          a3, a4, sp
                  lui          s11, 689673
                  blt          s1, a1, 282f
268:              add          a2, a6, t1
                  ori          s3, a3, -1057
                  addi         s10, s0, 1062
                  bge          s11, a0, 273f
                  srl          s1, s5, sp
273:              xor          a6, s2, zero
274:              sll          a2, a2, s1
                  andi         a0, a1, 109
                  add          t2, a3, s6
                  sll          s7, s8, t2
                  add          s10, t1, s4
                  slli         sp, ra, 31
                  bne          s2, s8, 288f
                  slt          a3, t5, t2
282:              addi         t5, s5, 1504
                  and          a3, s7, sp
                  or           a1, sp, sp
                  addi         s2, a0, 173
                  ori          t6, zero, 1123
                  lui          a1, 620499
288:              andi         gp, gp, -1262
                  auipc        t6, 996163
                  auipc        s11, 117394
                  srai         s5, s5, 5
                  srl          s5, a3, s9
                  xori         t4, s2, 158
                  addi         a0, s9, -1659
                  ori          s7, s4, -3
                  bltu         a2, t3, 305f
                  sll          zero, a6, t4
                  addi         t2, t5, 1198
                  srl          s2, t5, a7
                  sltiu        t5, t5, -1955
                  nop
                  nop
                  slt          t5, s3, s11
                  sub          t5, zero, a2
305:              slli         a4, a2, 20
                  sltiu        s0, s10, 826
                  bge          s10, sp, 323f
                  add          t6, s11, s0
                  bge          tp, a7, 317f
                  bge          gp, t3, 327f
                  beq          s4, s10, 328f
                  andi         s5, ra, -1640
                  blt          zero, s5, 314f
314:              slt          tp, sp, a7
                  blt          t3, gp, 320f
                  sltiu        a4, s5, 733
317:              sltu         a6, s0, a2
                  sll          gp, sp, t6
                  sltiu        s8, s11, 1149
320:              xori         s5, s0, -443
                  xori         zero, s11, 462
                  beq          sp, t6, 326f
323:              srli         s0, t4, 4
                  bgeu         a5, t6, 331f
                  and          s8, s1, a4
326:              slti         s4, s6, -568
327:              addi         s3, a6, 1801
328:              slt          a3, a7, s4
                  srli         sp, t3, 3
                  slli         s3, t6, 24
331:              lui          a0, 954296
                  andi         a5, a0, -1089
                  ori          a0, a7, 1910
                  add          s11, t6, a7
                  lui          t4, 733565
                  bgeu         t1, t5, 356f
                  and          a1, t1, s4
                  beq          s4, t6, 348f
                  srli         s9, tp, 28
                  srli         sp, t6, 15
                  srl          s3, tp, zero
                  sra          gp, a2, t2
                  xori         s7, s5, 1233
                  bne          ra, a3, 361f
                  bge          t5, s10, 348f
                  andi         s9, s4, -326
                  or           t3, tp, s11
348:              bltu         a7, t2, 354f
                  bge          a1, t4, 360f
                  sltiu        s8, s11, 2014
                  xor          s8, a1, sp
                  sra          t4, s10, s9
                  sltu         a3, s4, a0
354:              slli         a0, a7, 7
                  bgeu         s11, s7, 361f
356:              beq          a2, s4, 371f
                  addi         ra, t6, 2047
                  andi         s9, ra, -1638
                  xor          t6, s5, s9
360:              ori          s4, a7, 745
361:              bge          t2, t6, 375f
                  blt          zero, a3, 367f
                  sub          a5, a1, a4
                  slti         zero, s11, 1201
main_4:           jal          ra, 9f
0:                jal          ra, 3f
1:                jal          ra, 7f
2:                jal          ra, 11f
3:                jal          ra, 4f
4:                jal          t5, 13f
5:                jal          ra, 8f
6:                jal          ra, 2b
7:                jal          ra, 0b
8:                jal          ra, 12f
9:                jal          ra, 6b
10:               jal          sp, 5b
11:               jal          ra, 10b
12:               jal          s7, 1b
13:               srli         s3, s7, 9
                  bltu         t4, t3, 370f
                  andi         s11, t2, 889
367:              xori         s0, s8, 106
                  beq          a4, t3, 380f
                  ori          s8, s7, 936
370:              sltiu        s9, s1, 658
371:              srl          a3, s11, t0
                  lui          t6, 349014
                  beq          a6, s11, 390f
                  srli         s10, a5, 12
375:              bltu         s6, s8, 384f
                  beq          s3, ra, 396f
main_25:          jal          ra, 28f
0:                jal          ra, 3f
1:                jal          sp, 26f
2:                jal          ra, 20f
3:                jal          gp, 11f
4:                jal          t2, 25f
5:                jal          ra, 13f
6:                jal          ra, 2b
7:                jal          a6, 0b
8:                jal          ra, 23f
9:                jal          ra, 24f
10:               jal          a1, 7b
11:               jal          ra, 9b
12:               jal          ra, 22f
13:               jal          ra, 1b
14:               jal          ra, 19f
15:               jal          s0, 29f
16:               jal          ra, 5b
17:               jal          tp, 14b
18:               jal          t0, 4b
19:               jal          ra, 8b
20:               jal          ra, 15b
21:               jal          ra, 17b
22:               jal          ra, 18b
23:               jal          a6, 27f
24:               jal          t0, 12b
25:               jal          ra, 6b
26:               jal          ra, 21b
27:               jal          a0, 10b
28:               jal          sp, 16b
29:               add          a6, ra, s8
                  nop
                  srli         t0, a3, 14
                  sra          t4, a3, tp
380:              sltu         s7, s1, a6
                  addi         a1, t3, 138
                  add          a3, s6, zero
                  or           s0, t4, t6
384:              addi         t5, a5, -1172
                  xor          a6, t3, s6
                  blt          s7, s7, 392f
                  nop
                  bltu         t1, s9, 398f
                  bgeu         a1, t5, 390f
390:              srl          a3, t4, zero
                  srl          s2, gp, s5
392:              bgeu         s8, t5, 396f
                  beq          t3, ra, 404f
                  slt          s1, a7, a4
                  bltu         t0, a0, 401f
396:              sra          s9, a7, a3
                  and          s0, s11, a7
398:              sltiu        s0, s8, -1663
                  lui          s11, 26159
                  auipc        a2, 19186
401:              nop
                  addi         t5, a5, -1382
                  bltu         a3, t5, 420f
404:              addi         tp, s11, 0
                  lui          sp, 165445
                  srli         gp, a3, 16
                  bgeu         t3, a3, 412f
                  sltu         a3, s5, t6
                  slt          a1, a2, s6
                  bgeu         s0, t0, 422f
                  bne          s3, s1, 419f
412:              beq          zero, a2, 417f
                  addi         s8, a2, 656
                  srli         s4, s0, 30
                  nop
                  sltu         a1, a0, a2
417:              nop
                  sltiu        s0, ra, 424
419:              add          a1, t1, s5
420:              sub          s0, gp, zero
                  lui          t5, 844260
422:              bge          s5, ra, 437f
                  srli         s3, sp, 17
                  beq          s6, tp, 440f
                  sltu         ra, t4, a3
                  addi         s10, t1, -21
                  lui          a4, 65174
                  blt          s10, sp, 435f
                  sll          t5, t0, sp
                  xori         s8, a1, 58
                  xor          s1, s1, a2
                  bge          t3, s10, 435f
                  lui          t5, 651821
                  xor          s10, s7, s8
435:              and          s7, s4, zero
                  sra          a0, t0, a2
437:              xor          s10, a2, t2
                  beq          s10, t1, 450f
                  sra          a6, sp, s6
440:              sub          a3, a3, t4
                  sltu         a4, s9, tp
                  bge          a4, s6, 445f
                  nop
                  srl          t0, a1, t0
445:              sltiu        s1, a6, 1273
                  xori         a3, a3, -1935
                  addi         a0, s0, -667
                  beq          t5, ra, 462f
                  ori          a5, s3, -1124
450:              sra          s3, a2, ra
                  sra          s4, t2, t4
                  slt          ra, s5, a7
                  srli         a6, s6, 17
                  sltiu        s8, a1, 410
                  sltu         t6, t5, s4
                  srli         a4, t4, 27
                  bgeu         s5, a3, 462f
                  or           a4, tp, s11
                  blt          ra, t2, 476f
                  slli         s9, ra, 3
                  slti         tp, t6, 598
462:              slli         zero, a2, 1
                  andi         s10, gp, -1218
                  sltiu        s5, s10, 1684
                  addi         t2, t2, -1887
                  srli         s11, t3, 26
                  srli         s3, s5, 7
                  xori         t2, s0, 27
                  bgeu         t0, s2, 477f
                  addi         t2, ra, 1266
                  xori         t0, s10, -1959
                  xori         a0, s9, 1885
                  add          t0, a1, s4
                  lui          t6, 273500
                  beq          t2, ra, 492f
476:              ori          t3, a1, 1127
477:              bne          t1, s10, 486f
                  nop
                  beq          s2, s0, 496f
                  xor          t4, s6, s7
                  bgeu         t5, t1, 483f
                  xor          tp, t2, a3
483:              bne          sp, s3, 487f
                  sra          s11, tp, s4
                  srli         s8, s6, 9
486:              bgeu         a1, s2, 501f
487:              lui          a1, 855080
                  slli         s0, t3, 22
                  slt          t3, s9, t3
                  srl          a4, a5, s6
                  nop
492:              sltiu        t2, s10, -155
                  bltu         t2, s3, 504f
                  srai         tp, s5, 20
                  ori          a6, s8, 1928
496:              slt          t5, t5, a5
                  auipc        a1, 875960
                  xori         sp, a0, 381
                  srl          zero, gp, a5
                  sub          s10, a5, t6
501:              or           s3, t5, a3
                  addi         s1, a4, 1493
                  auipc        t4, 683148
504:              and          t5, t0, s0
                  srl          t5, a6, s2
                  slt          a1, a7, a4
                  slli         s8, s9, 29
                  add          s7, t0, a5
                  xori         s2, a6, -1008
                  auipc        a0, 14585
                  nop
                  srli         s11, zero, 1
                  or           t4, a0, s10
                  sra          zero, a2, a3
                  add          ra, s1, a5
                  andi         a0, a0, 660
                  or           s2, a6, a2
                  or           a2, t5, s7
                  sll          s7, s3, t0
                  addi         sp, s10, -1348
                  xor          tp, s3, t4
                  add          s9, gp, zero
                  bge          s3, s0, 527f
                  srli         s3, a4, 23
                  slt          a3, s3, a1
                  or           s2, s11, s0
527:              sll          sp, s11, a1
                  bge          ra, a5, 545f
                  slli         s4, t4, 9
                  bgeu         s0, a1, 536f
                  sll          a4, ra, ra
                  slli         ra, gp, 10
                  srl          s0, a7, t5
                  bne          t0, s10, 537f
                  auipc        s2, 596144
536:              addi         zero, sp, 312
537:              srai         zero, s2, 28
                  slt          t2, s4, t2
                  sub          a5, a5, zero
                  auipc        s2, 139071
                  bne          t6, s11, 549f
                  auipc        s10, 371286
                  addi         tp, t4, 687
                  slli         a2, tp, 14
545:              addi         tp, a0, -1730
                  srli         t3, s10, 17
                  sub          a2, t0, a3
                  sltiu        t4, a7, 1106
549:              addi         zero, a5, -1587
                  and          a5, s7, s11
                  addi         s3, sp, 569
                  sltiu        s11, t1, -1160
                  ori          a0, s2, -376
main_5:           jal          ra, 22f
0:                jal          tp, 4f
1:                jal          ra, 12f
2:                jal          s3, 14f
3:                jal          t6, 25f
4:                jal          ra, 19f
5:                jal          ra, 15f
6:                jal          ra, 16f
7:                jal          ra, 11f
8:                jal          ra, 18f
9:                jal          ra, 24f
10:               jal          t0, 5b
11:               jal          tp, 3b
12:               jal          t0, 17f
13:               jal          ra, 0b
14:               jal          ra, 9b
15:               jal          s5, 20f
16:               jal          ra, 23f
17:               jal          ra, 13b
18:               jal          t0, 6b
19:               jal          ra, 7b
20:               jal          tp, 1b
21:               jal          ra, 10b
22:               jal          ra, 2b
23:               jal          t5, 21b
24:               jal          ra, 8b
25:               ori          zero, a4, -726
                  bne          a7, t5, 565f
                  sltu         t6, s11, sp
                  slt          gp, t1, t1
                  slt          a2, s8, ra
                  bgeu         t0, zero, 561f
                  bltu         s8, s8, 568f
                  blt          s1, sp, 576f
561:              ori          a6, s7, 1478
                  ori          s4, ra, 392
                  slli         t2, s11, 9
                  slti         s11, t1, 838
565:              sll          a3, s0, a0
                  ori          s8, ra, 290
                  xor          t3, sp, t0
568:              sub          s10, t6, s7
                  bgeu         s4, s4, 589f
                  addi         s5, t5, 1823
                  sll          s9, gp, s2
                  nop
                  sra          s2, t5, s0
                  auipc        a0, 484146
                  srai         t4, a5, 22
                  nop
                  xor          s0, a0, t5
                  la           t3, sub_1
                  auipc        a5, 218508
                  add          s1, zero, gp
                  srl          a0, s4, s8
                  auipc        a4, 207117
                  nop
                  addi         t3, t3, 771
                  add          a3, s0, a3
                  andi         a5, s9, 1197
main_j1:          jalr         ra, t3, -770 #jump main -> sub_1
                  sll          zero, t2, s9
576:              srai         a0, a6, 1
                  lui          a5, 903123
                  sub          a5, gp, s6
                  ori          s0, s6, -1696
                  andi         s11, zero, -1395
                  addi         s0, s9, 125
                  beq          a1, sp, 589f
                  sub          s0, gp, t6
                  and          t3, a3, a5
                  ori          a0, s10, 1889
                  sltiu        s1, a2, -1683
                  bgeu         tp, s11, 593f
                  slt          t4, a4, tp
589:              srai         t4, s0, 9
                  lui          sp, 539713
                  ori          t4, s7, 546
                  lui          t2, 712249
593:              and          t5, s9, s3
                  bltu         a7, a3, 603f
                  blt          s0, s10, 612f
                  slti         t5, t0, 1666
                  bge          a4, s6, 602f
                  and          tp, s1, s3
                  sltu         s9, s7, a4
                  andi         s8, ra, 1245
                  bne          s7, t3, 603f
602:              blt          t3, s8, 603f
603:              sub          zero, a1, s4
                  blt          sp, s6, 609f
                  addi         a4, t1, -1383
                  slt          t3, sp, a3
                  xori         t5, t2, -2007
                  and          s0, s3, s4
609:              ori          t5, t3, 1464
                  slli         t5, s9, 12
                  auipc        t2, 357297
612:              srli         s11, s11, 3
                  and          t0, s6, t0
                  lui          s4, 387055
                  slti         s8, t1, 11
                  bge          t4, t5, 626f
                  sub          s7, a7, s4
                  bne          t6, t1, 622f
                  beq          t1, a3, 631f
                  auipc        t4, 820564
                  auipc        t0, 580228
622:              lui          t2, 563567
                  bltu         t4, a7, 631f
                  sltu         s2, t6, t5
                  slli         s7, s6, 8
626:              lui          t6, 48430
                  auipc        t6, 256425
                  srli         tp, t5, 10
                  addi         s4, sp, 606
                  lui          a5, 156223
631:              srai         t3, a3, 28
                  slli         t4, t4, 21
                  srli         ra, a7, 31
                  bge          ra, tp, 648f
                  bgeu         a3, t4, 646f
                  slli         a6, a6, 9
                  ori          s10, a6, -730
                  srli         sp, s7, 0
                  xori         a3, s11, 1235
                  sll          a0, s2, t1
                  andi         ra, t3, -1112
                  bltu         a3, s6, 659f
                  addi         a6, a6, 34
                  bltu         s5, zero, 659f
                  blt          a2, a3, 662f
646:              sub          t2, sp, s1
                  xori         a5, t2, -1856
648:              addi         s7, s1, -925
                  add          ra, s10, a7
                  srai         s10, s0, 8
                  srli         s0, s0, 11
                  xori         s2, s0, 704
                  xori         s7, a1, 1623
                  sltiu        t2, t0, -718
                  xor          t3, s9, sp
                  and          s2, a3, t5
                  srli         tp, s8, 2
                  xori         s1, s7, 136
659:              sltu         t2, s3, s5
                  addi         s4, sp, 1447
                  ori          t6, s7, -22
662:              and          a2, s7, ra
                  sll          t2, s6, s11
                  slt          a2, t6, a5
                  slt          a1, t2, t5
                  or           s3, s2, a6
                  beq          tp, s10, 672f
                  slt          a3, s11, t0
                  or           t0, t3, s10
                  xori         a5, tp, 1740
                  addi         a3, t0, -241
672:              add          t2, a1, t4
                  andi         s10, a4, 351
                  sltu         a4, t5, a3
                  sll          s0, s11, a7
                  srli         s1, s7, 19
                  beq          s4, t0, 689f
                  bltu         tp, s7, 693f
                  bgeu         a5, a3, 687f
                  sub          s0, t3, s2
                  bltu         s1, s0, 686f
                  xor          a0, t1, a7
                  sub          ra, s10, ra
                  bne          a7, a7, 701f
                  addi         a4, s11, 1054
686:              slti         t4, gp, -1299
687:              xor          a3, s4, a2
                  add          a2, t2, t1
689:              bgeu         s5, t0, 706f
                  blt          t5, ra, 705f
                  srl          tp, s0, s7
                  sll          gp, s10, t1
693:              slti         s9, s10, 953
                  bgeu         s6, a7, 705f
                  nop
                  srai         zero, ra, 12
                  sra          s3, s9, t3
                  or           a0, s5, tp
                  add          sp, s0, s8
                  sra          t3, t3, t4
701:              srli         s3, zero, 28
                  srai         a4, s1, 17
                  blt          t3, tp, 708f
                  sll          s7, t3, s5
705:              xor          s10, s2, a1
706:              or           s8, t2, sp
                  sra          t4, ra, s4
708:              auipc        s11, 1000395
                  sltiu        a4, ra, -240
                  nop
                  bgeu         sp, t0, 725f
                  sltiu        t6, a1, 519
                  lui          ra, 468096
                  sltiu        tp, s4, 445
                  srl          t4, a3, gp
                  xori         t3, t1, 517
                  auipc        gp, 50993
                  ori          s0, s10, -1158
                  srai         t5, tp, 1
                  andi         a3, s5, -130
                  srl          tp, t6, s3
                  slli         a3, s9, 19
                  xor          s5, s4, a3
                  sltu         t6, s4, t2
725:              srai         t3, a0, 15
                  bne          s3, s6, 736f
                  xor          gp, s6, s1
                  bne          s7, a1, 743f
                  sub          s2, t6, s1
                  xori         gp, tp, 1328
                  sltiu        t6, a1, 1575
                  bgeu         a7, t1, 749f
                  sra          a4, t0, a3
                  srli         s10, s11, 11
                  sub          a5, a5, zero
736:              srai         a6, s11, 3
                  or           a3, a2, a4
                  ori          a2, t1, -321
                  bltu         t2, t0, 756f
                  xori         t0, ra, -1251
                  nop
                  srl          s8, s4, s9
743:              sll          t2, t6, a1
                  sra          a5, a4, a6
                  bne          ra, tp, 761f
                  beq          sp, t3, 749f
                  sll          s1, s7, t4
                  add          tp, zero, s9
749:              or           t5, s10, s11
                  nop
                  blt          gp, a3, 752f
752:              bne          a5, a2, 764f
                  bgeu         a7, t2, 761f
                  and          s5, a3, ra
                  lui          zero, 956748
756:              srai         s1, s10, 17
                  or           s3, s3, t3
                  nop
                  and          a0, s2, s7
                  and          t3, t2, tp
761:              srli         a5, zero, 14
                  add          s11, gp, sp
                  srl          t4, s8, s2
764:              xori         a6, s2, 1285
                  auipc        s9, 446835
                  add          gp, t0, a1
                  beq          t6, t6, 771f
                  addi         s10, t3, 1034
                  sra          a1, sp, t5
                  ori          s1, gp, 442
771:              nop
                  sltu         s11, t2, ra
                  bne          s3, a2, 779f
                  bne          s2, t5, 779f
                  srl          s10, s2, s3
                  bne          t1, s5, 779f
                  beq          a4, s5, 779f
                  or           a4, t0, a6
779:              sra          a2, zero, a5
                  lui          a6, 491682
                  and          a3, s10, s9
                  addi         s5, a2, -311
                  bne          s9, a5, 794f
                  sra          s5, t1, t6
                  bgeu         s4, s4, 794f
                  add          tp, s11, t4
                  slt          s1, s10, s9
                  slt          t2, t6, t2
                  bgeu         s5, a4, 801f
                  andi         zero, s1, -1898
                  slli         s7, s2, 15
                  srli         s4, tp, 26
                  srli         zero, a2, 4
794:              auipc        a4, 793937
                  sltu         sp, s10, sp
                  slt          sp, s11, a0
                  sll          ra, s5, t0
                  bltu         t0, a5, 804f
                  nop
                  bgeu         gp, t3, 804f
801:              srai         s2, gp, 1
                  slli         s9, a1, 31
                  srl          t2, a1, ra
804:              bltu         s11, a2, 824f
                  auipc        t0, 579937
                  slt          s7, a3, s0
                  andi         a6, t5, 1975
                  blt          s4, a2, 815f
                  srl          gp, t3, s10
                  srl          s0, ra, t3
                  sub          a5, s8, t5
                  lui          s3, 285097
                  nop
                  sub          t4, a6, s10
815:              or           s1, t3, a1
                  bne          a5, t2, 825f
                  and          a5, a7, s8
                  bge          s2, t3, 826f
                  sltiu        t3, t3, -537
                  bne          t5, s1, 837f
                  bltu         t4, t4, 828f
                  slti         t6, a1, -861
                  srl          s0, sp, tp
824:              bne          s5, t5, 829f
825:              sltiu        t5, t3, 101
826:              andi         s7, a1, 883
                  srai         s4, t6, 30
828:              srai         ra, t6, 23
829:              nop
                  slti         a6, s6, 977
                  bne          s2, zero, 846f
                  slli         zero, t6, 31
                  andi         a0, s9, -94
                  bge          a7, s2, 846f
                  slt          s1, t1, s2
                  sltiu        s11, s5, 742
837:              sll          ra, tp, a0
                  andi         ra, t5, 1228
                  beq          s7, s1, 841f
                  add          t5, tp, a7
841:              sub          a1, a7, a3
                  srli         s1, t0, 25
                  slti         tp, t0, 1358
                  bne          ra, s7, 847f
                  slli         t5, t2, 15
846:              sll          a2, s7, s3
847:              and          a3, t3, s2
                  andi         s2, a3, -49
                  blt          s8, a4, 852f
                  bgeu         a0, t1, 867f
                  andi         a3, a6, -1891
852:              sll          s0, s3, zero
                  lui          t3, 946703
                  addi         t6, sp, -1145
                  srli         ra, tp, 23
                  srli         zero, sp, 26
                  and          tp, a4, s9
                  ori          s3, s1, -791
                  slt          a5, s11, a3
                  xori         tp, s6, -1032
                  beq          s10, a4, 866f
                  bge          s6, a2, 863f
863:              srai         a4, a5, 9
                  sltu         a5, a5, s0
                  sltu         a0, a1, a5
866:              bge          s3, t6, 871f
867:              srli         s2, a4, 4
                  srai         s4, a7, 0
                  and          a3, a5, s7
                  sra          a1, s6, s1
871:              sltiu        s7, tp, 1249
                  slli         a1, gp, 1
                  blt          a7, gp, 890f
                  bgeu         s6, t0, 891f
                  slti         s11, t2, -1941
                  bge          s9, a0, 896f
                  bgeu         s1, sp, 883f
                  srli         zero, s10, 7
                  nop
                  bge          a1, s8, 892f
                  sub          s8, a6, s11
                  bne          s0, s6, 893f
883:              beq          s9, t2, 894f
                  and          a3, s8, s3
                  xor          a5, s3, a7
                  bge          sp, s6, 894f
                  slti         s10, s4, -1506
                  srl          s10, t5, t0
                  sltu         a6, t6, a7
890:              bgeu         s5, a5, 906f
891:              sub          s3, s1, s7
892:              xor          s3, a1, a1
893:              srai         gp, s5, 27
894:              xori         gp, a4, 1650
                  slli         s5, s0, 8
896:              srl          a3, t2, tp
                  sltiu        s4, tp, -1868
                  xori         s5, a7, 939
                  slli         a6, s9, 10
                  blt          a0, s0, 915f
                  bgeu         s6, a6, 910f
                  nop
                  ori          a4, a6, -1569
                  slti         tp, s8, 1386
                  nop
906:              auipc        s2, 830584
                  or           s9, tp, s0
                  bltu         s1, sp, 918f
                  bltu         t5, a4, 923f
910:              slli         a1, t6, 18
                  slti         t4, t0, 1716
                  lui          t3, 53315
                  andi         a3, s2, 583
                  andi         s2, s3, 915
915:              bne          s2, t6, 924f
                  blt          a4, gp, 922f
                  nop
918:              sll          ra, s9, a4
                  lui          a3, 210403
                  blt          a0, t1, 924f
                  slli         t5, ra, 2
922:              srai         a2, a0, 0
923:              slti         a2, t6, 1319
924:              bge          s3, s5, 928f
                  sll          s7, s2, tp
                  ori          t6, a6, -1522
                  sltu         s3, s0, ra
928:              sra          s1, s6, s1
                  sltu         a4, a1, a3
                  srl          s4, a5, a1
                  sltu         a2, s2, s9
                  beq          tp, t2, 937f
                  nop
                  sra          a1, a6, s8
                  srli         s3, t2, 18
                  add          t0, a3, s11
937:              sll          s0, zero, t3
                  bltu         s9, t5, 955f
                  andi         t2, t3, -36
                  srl          a4, t3, ra
                  add          t2, s11, a4
                  xor          a1, t4, s1
                  slli         a6, a4, 20
                  bltu         s5, t3, 961f
                  lui          s7, 903640
                  bge          s0, gp, 958f
                  bne          a3, a1, 955f
                  bne          t2, s9, 950f
                  sltu         sp, a0, s9
950:              or           ra, a6, t4
                  bgeu         a1, a7, 961f
                  sub          t0, a1, a0
                  ori          s11, s6, 1640
                  blt          s8, ra, 960f
955:              sra          s8, s9, tp
                  slli         sp, s2, 14
                  bge          a6, t4, 961f
958:              xor          tp, a3, zero
                  ori          a5, zero, -1582
960:              ori          a2, s6, 838
961:              srli         s3, a0, 20
                  srai         t4, t1, 13
                  auipc        s0, 909130
                  addi         s7, t3, 1473
                  xor          t0, gp, s2
                  srai         s7, s8, 31
                  bgeu         tp, a2, 972f
                  bge          s10, t3, 974f
                  auipc        s10, 304787
                  bge          s4, s2, 975f
                  srai         s1, s7, 10
972:              srl          s11, ra, a1
                  slli         s8, s1, 26
974:              slt          zero, a3, gp
975:              sltiu        s11, t5, -1143
                  slti         s9, s4, -1600
                  lui          s7, 870501
                  xori         sp, t6, 132
                  sltiu        tp, a1, -1039
                  srl          a6, s9, t2
                  sltu         zero, t3, sp
                  auipc        t5, 1022355
                  sub          s10, s2, t5
                  andi         a0, tp, -132
                  blt          t5, t1, 1000f
                  lui          s4, 186274
                  ori          sp, s9, 1882
                  and          s9, s7, sp
                  xor          t3, a2, s0
                  srli         a4, s3, 14
                  slt          a6, s8, a0
                  add          s11, a0, a2
                  beq          t3, a1, 1004f
                  add          tp, s2, a0
                  andi         s7, ra, 1624
                  or           a4, t0, t3
                  sub          zero, s6, t6
                  nop
                  blt          t2, t4, 1007f
1000:             srai         a3, s5, 9
                  sra          s5, s3, s10
                  and          s5, sp, s6
                  sltiu        t0, t6, -1790
1004:             srli         s10, t0, 13
                  bge          t6, a0, 1025f
                  sll          s1, a5, a0
1007:             lui          t3, 627039
                  addi         a6, a7, -1317
                  nop
                  bltu         s3, s7, 1019f
                  ori          a2, a5, 1529
                  sub          t6, a6, t1
                  and          s10, s10, t4
                  sltiu        tp, s8, 1491
                  sltiu        a6, s0, -660
                  sub          s7, s6, zero
                  bge          s10, t6, 1034f
                  slti         s2, gp, 309
1019:             bne          t3, t0, 1036f
                  sltu         ra, t4, s3
                  bltu         a0, t5, 1025f
                  bne          s7, a1, 1034f
                  xori         t2, s1, -1379
                  nop
1025:             and          t6, a5, a4
                  nop
                  add          t3, gp, s11
                  bltu         a6, t3, 1031f
                  slti         gp, s6, -714
                  xori         s7, t5, 399
1031:             and          s1, a0, s8
                  sltu         t0, tp, t2
                  bltu         s2, s5, 1036f
1034:             bge          a4, t5, 1035f
1035:             srai         s10, t5, 11
1036:             or           s7, tp, a5
                  andi         t6, s4, 195
                  ori          a6, s1, -1105
                  blt          zero, s4, 1046f
                  bgeu         s3, s3, 1054f
                  beq          t4, a3, 1056f
                  addi         ra, t1, 368
                  srli         a2, a6, 8
                  srl          t0, ra, a6
                  bge          t6, s5, 1061f
1046:             addi         s10, s8, 1554
                  add          tp, t2, t1
                  andi         t0, tp, 845
                  slli         t0, ra, 6
                  xori         a5, t4, 392
                  addi         ra, s11, 1484
                  sll          t3, gp, s1
                  sra          sp, a2, a7
1054:             ori          zero, t5, 1601
                  beq          a4, a7, 1066f
1056:             xor          t0, t1, a1
                  bne          t3, t4, 1066f
                  srl          s0, s7, t2
                  add          t0, sp, gp
                  slt          a3, t5, s7
1061:             sra          t4, s9, a2
                  bne          zero, t3, 1070f
                  slli         s7, s1, 21
                  sltu         s8, s1, zero
                  auipc        sp, 43865
1066:             addi         a4, a1, -1509
                  slti         s2, s11, 1819
                  slli         s8, a1, 19
                  slti         zero, a1, -162
1070:             or           s11, s2, s7
                  slli         a0, s2, 29
                  blt          t6, s0, 1077f
                  sll          gp, t3, gp
                  sltu         ra, sp, s0
                  slli         s8, t0, 2
                  sltiu        t2, a2, 1593
1077:             sll          s5, a0, s7
                  srai         s9, tp, 2
                  nop
                  xor          t2, a4, ra
                  sltu         s4, t3, s11
                  slti         s11, tp, 217
                  srli         a5, s0, 9
                  slli         s7, a0, 29
                  auipc        t3, 414334
                  lui          a2, 248626
                  bge          s0, a0, 1102f
                  sll          a0, s2, sp
                  beq          s4, t0, 1092f
                  beq          t0, s2, 1098f
                  xori         a5, s2, -1706
1092:             sll          s5, s0, s8
                  nop
                  srli         ra, a5, 7
                  auipc        a4, 760552
                  beq          t3, t3, 1108f
                  sra          gp, a1, ra
1098:             srai         t4, s3, 29
                  xor          a2, s0, s5
                  sltu         t6, ra, t3
                  xori         gp, t3, -396
1102:             xor          t2, t2, a6
                  beq          a1, a4, 1109f
                  bne          t4, s6, 1118f
                  addi         gp, a6, -1813
                  srai         t6, a7, 23
                  bltu         s3, s6, 1123f
1108:             andi         a2, zero, -763
1109:             and          s3, a3, a3
                  xori         tp, s4, 982
                  addi         a4, a4, -605
                  beq          a5, s2, 1124f
                  beq          ra, s6, 1133f
                  bge          s9, t4, 1119f
                  slti         s0, s10, -899
                  sra          t4, s10, a3
                  bne          a6, tp, 1121f
1118:             beq          s3, zero, 1120f
1119:             add          t2, t0, a5
1120:             slti         a5, a3, 1713
1121:             auipc        s0, 970772
                  bgeu         s5, s5, 1125f
1123:             lui          s3, 648049
1124:             sll          s5, t5, s1
1125:             slt          t0, zero, a6
                  add          s11, gp, s10
                  ori          s10, t4, -478
                  slli         t5, s8, 6
                  sub          t6, a7, t0
                  bltu         s7, sp, 1140f
                  slt          s8, s9, a3
                  slt          s1, a0, s11
1133:             and          t0, s0, a0
                  xor          s3, s4, s7
                  srai         t4, t1, 28
                  bge          tp, s11, 1147f
                  xori         zero, a5, -418
                  slli         a5, a0, 2
                  bne          a3, tp, 1140f
1140:             slti         t3, t3, -61
                  bne          s5, a6, 1156f
                  srai         t4, a6, 19
                  bne          s11, a2, 1160f
                  srli         s10, a2, 4
                  srai         s0, t4, 30
                  bgeu         ra, gp, 1150f
1147:             sub          a2, s4, s6
                  sll          s10, s2, s9
                  ori          a5, t5, 981
1150:             bne          s11, a1, 1157f
                  srli         t2, s9, 9
                  sll          sp, t6, s7
                  sub          t0, a3, s10
                  srai         a4, t6, 31
                  sltiu        zero, tp, 422
1156:             blt          s1, s4, 1161f
1157:             bge          s11, ra, 1174f
                  sra          t3, a0, sp
                  auipc        s10, 391769
1160:             sll          a3, ra, a7
1161:             srl          gp, tp, a7
                  xori         zero, s5, 1331
                  xori         t3, a3, -150
                  sra          t2, s7, a1
                  blt          zero, t0, 1182f
                  beq          a4, t0, 1175f
                  srli         s10, t6, 5
                  bge          s0, s11, 1174f
                  lui          s0, 597766
                  bltu         zero, s0, 1187f
                  blt          s4, t0, 1180f
                  addi         tp, a0, 454
                  xori         s1, a1, 1243
1174:             andi         gp, a2, 448
1175:             sub          t0, a6, s9
                  srl          t6, a0, a7
                  xor          s7, t1, s8
                  slli         s4, s4, 5
                  slt          a3, s8, s9
1180:             and          s4, a0, s5
                  ori          a1, t6, -279
1182:             addi         zero, t3, -696
                  srai         a0, a2, 5
                  lui          s5, 374884
                  sub          a5, sp, t5
                  nop
1187:             and          ra, a7, s2
                  srli         t0, a7, 0
                  xori         a6, s5, 1698
                  bgeu         t1, zero, 1201f
                  srl          a5, gp, zero
                  slt          a4, a0, a1
                  ori          a4, s3, -1724
                  andi         tp, s3, -1550
                  sub          t2, a0, s10
                  blt          a4, a6, 1200f
                  slt          s8, zero, a2
                  blt          s4, s7, 1205f
                  bltu         s5, t3, 1216f
1200:             sub          s5, a0, t4
1201:             srai         s5, gp, 11
                  or           a2, t3, t4
                  auipc        a3, 43436
                  xor          s9, s9, t0
1205:             sltu         a1, t6, s5
                  bgeu         a7, s0, 1223f
                  lui          sp, 897060
                  bne          s6, tp, 1211f
                  sll          a4, a4, s8
                  auipc        t4, 786632
1211:             auipc        gp, 636491
                  srl          s5, s10, s3
                  addi         t2, s4, -1120
                  sltiu        s2, s4, 935
                  lui          a5, 593854
1216:             or           zero, s11, s2
                  blt          s5, a6, 1219f
                  addi         t2, s7, -1062
1219:             slti         s1, t5, -321
                  bne          a0, s4, 1236f
                  andi         s3, ra, -2046
                  sltu         a4, s5, s8
1223:             blt          s0, t4, 1228f
                  and          ra, s4, a6
                  xor          t4, zero, a5
                  slt          zero, a2, s3
                  srli         t6, a5, 1
1228:             sltiu        a0, s7, 991
                  xor          s11, a4, s10
                  sub          tp, a5, ra
                  bne          t4, a4, 1234f
                  slt          s8, t3, ra
                  lui          s9, 747024
1234:             sltu         ra, a2, t1
                  nop
1236:             blt          s2, t6, 1245f
                  lui          s7, 847152
                  bltu         t2, s3, 1244f
                  slti         a4, s11, 695
                  slli         a1, s10, 11
                  sltiu        ra, t4, -180
                  blt          a7, s10, 1257f
                  beq          sp, t4, 1263f
1244:             sub          sp, t0, a6
1245:             slt          t0, s1, t4
                  sltu         t5, s5, zero
                  slt          t3, t1, s7
                  bltu         tp, t4, 1265f
                  srai         t3, t3, 25
                  slti         tp, tp, 1129
                  xor          t3, a1, ra
                  addi         a4, t0, -1431
                  nop
                  add          s7, t3, s10
                  slli         s1, sp, 8
                  add          s5, tp, a5
1257:             blt          ra, zero, 1271f
                  xori         a2, sp, -1283
                  ori          a4, t4, -192
                  lui          s5, 424572
                  sra          tp, a7, sp
                  srli         t5, t6, 7
1263:             beq          s7, t4, 1272f
                  or           t2, t4, s2
1265:             srli         s11, ra, 4
                  sltu         t5, s1, a5
                  ori          sp, tp, 27
                  bne          s3, s2, 1273f
main_19:          jal          ra, 7f
0:                jal          ra, 25f
1:                jal          t5, 6f
2:                jal          ra, 22f
3:                jal          ra, 20f
4:                jal          ra, 24f
5:                jal          ra, 2b
6:                jal          s4, 5b
7:                jal          ra, 0b
8:                jal          ra, 11f
9:                jal          ra, 27f
10:               jal          ra, 15f
11:               jal          ra, 17f
12:               jal          ra, 3b
13:               jal          s0, 19f
14:               jal          ra, 8b
15:               jal          t4, 23f
16:               jal          gp, 10b
17:               jal          s1, 4b
18:               jal          ra, 26f
19:               jal          ra, 14b
20:               jal          ra, 21f
21:               jal          ra, 1b
22:               jal          s2, 9b
23:               jal          ra, 12b
24:               jal          a4, 28f
25:               jal          ra, 16b
26:               jal          ra, 13b
27:               jal          ra, 18b
28:               srli         sp, t2, 25
                  sra          s9, s11, s6
                  xor          a2, s10, tp
1271:             nop
1272:             sltiu        s0, s3, -639
1273:             srli         sp, s8, 11
                  slt          sp, s7, s3
                  xor          a5, s5, a6
                  sll          s0, t5, a0
                  or           t4, s9, s9
                  bltu         t1, t4, 1288f
                  and          s10, t4, zero
                  xori         t0, t1, -1072
                  andi         t2, a7, 360
                  ori          a0, t2, -426
                  xori         a4, s2, -1628
                  beq          tp, s11, 1288f
                  srli         t3, s6, 12
                  and          s7, s0, sp
                  slli         a1, s9, 11
1288:             and          s4, s4, tp
                  ori          s3, s0, -359
                  bne          ra, t5, 1296f
                  nop
                  slli         s5, a7, 6
                  srl          s10, t5, sp
                  bgeu         tp, s0, 1302f
                  slt          s11, ra, t5
1296:             slt          s0, t3, a5
                  slti         tp, a1, 60
                  srai         sp, a7, 13
                  sub          t3, s3, t5
                  or           a1, s9, a5
                  slt          a0, a0, tp
1302:             bgeu         s7, a6, 1313f
                  sub          a2, t1, a3
                  slt          s8, s8, t4
                  ori          a1, a1, -1092
                  addi         a2, s10, 683
                  slli         a4, s9, 6
                  bne          s2, gp, 1319f
                  beq          a4, sp, 1321f
                  sltu         a1, s4, a4
                  auipc        a6, 807186
                  bgeu         t2, s3, 1324f
1313:             sll          s7, t4, a7
                  andi         s1, s9, 1403
                  srai         s10, gp, 24
                  or           a4, s5, s9
                  sltiu        a2, a1, 195
                  or           s11, a3, s9
1319:             srai         sp, ra, 31
                  sltiu        s3, t0, -1662
1321:             xori         tp, s3, -1167
                  xor          t0, t0, s3
                  srli         t6, a7, 25
1324:             and          zero, a7, a5
                  ori          ra, s6, 1816
                  slti         s8, s6, -209
                  sra          a0, s10, t0
                  auipc        t3, 15650
                  srl          s0, s6, a1
                  sll          s11, s3, a7
                  sub          s3, a7, s10
                  lui          s4, 916269
                  bne          s9, a1, 1336f
                  beq          s9, zero, 1335f
1335:             nop
1336:             and          a5, t6, s7
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         t1, t1, -48
                  sw           ra, 4(t1)
                  slt          s2, a3, s9
                  ori          t4, a4, -124
                  sltiu        s10, s0, 1769
                  la           sp, sub_4
                  addi         sp, sp, 246
                  slli         t6, zero, 11
                  sltiu        s7, t3, 923
                  sll          a3, a3, t2
                  nop
                  srai         s1, a6, 1
                  bne          t6, a7, sub_3_j5 #branch to jump instr
                  or           a5, sp, a1
sub_3_j5:         jalr         ra, sp, -246 #jump sub_3 -> sub_4
                  slti         s11, t0, 1520
                  slt          a4, s11, s1
                  auipc        a5, 16790
                  or           s1, t0, gp
                  add          s5, t5, t0
sub_3_j6:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  bge          t3, a7, 15f
                  lui          sp, 424703
                  sltiu        s0, sp, -70
                  bltu         s6, a6, 16f
                  auipc        t3, 392293
                  xori         a3, t6, -1832
                  ori          a6, a4, -453
                  beq          s6, a6, 22f
                  slti         t2, t3, 858
                  slti         s9, a3, -294
                  bgeu         t4, s4, 16f
                  bltu         a1, t2, 23f
                  bgeu         a0, zero, 32f
                  sub          a5, ra, s1
                  slti         s11, s6, 2005
15:               auipc        s1, 795357
16:               auipc        a0, 364101
                  sltu         s10, a3, t6
                  slli         t2, a2, 29
                  ori          a3, a3, 1525
                  srli         zero, s10, 6
                  slti         s4, a2, 1659
22:               sltiu        s10, s3, 1519
23:               ori          a2, s3, 651
                  add          a5, s10, t2
                  ori          a3, t6, -1691
                  sll          s7, s3, s4
                  slti         tp, a0, 756
                  srai         t6, a4, 9
                  bge          a1, t5, 43f
                  auipc        t0, 391279
                  sra          s0, a5, t3
32:               blt          t1, a0, 43f
                  add          a6, t6, zero
                  slti         a3, t4, 1430
                  slt          s0, s3, s11
                  srai         s7, s9, 18
                  sltiu        t6, a5, -205
                  nop
                  bge          s5, t3, 43f
                  bgeu         a0, gp, 43f
                  slti         s10, t4, 1119
                  lui          t2, 494834
43:               sltiu        t3, s8, -3
                  lw           ra, 4(t1)
                  sra          s1, zero, s8
                  add          s9, t1, s1
                  srli         sp, sp, 31
                  xor          t6, s10, s5
                  nop
                  addi         t1, t1, 48
                  addi         t3, s7, -463
                  sltu         t3, s11, s2
                  sra          s0, t0, s10
                  srli         a5, s3, 7
                  nop
77:               addi x25, x1, 1
77:               jalr x25, x25, 0
sub_1:            beq          a7, s2, sub_1_stack_p
sub_1_stack_p:    addi         t1, t1, -16
                  andi         s8, s10, 869
                  srai         s3, a4, 16
                  add          s8, ra, ra
                  add          sp, t0, s3
                  sw           ra, 4(t1)
                  andi         s1, s1, -86
                  sltu         a3, s8, t0
                  bne          s6, t4, sub_1_j2 #branch to jump instr
                  sltiu        zero, a2, -509
                  sltu         s11, a3, a4
                  xor          s3, s10, a4
                  xor          t0, gp, s5
                  srli         a6, t3, 7
                  xori         s0, zero, 1354
                  sltiu        t3, gp, -1932
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  or           ra, s6, t2
                  srai         s10, a4, 25
                  srl          s1, zero, t3
                  xor          a4, t6, s10
                  andi         t2, t6, -212
                  srai         s5, s2, 10
                  la           s7, sub_2
                  nop
                  addi         s7, s7, 112
                  srli         t3, s0, 25
                  xori         s4, a7, -643
sub_1_j3:         jalr         ra, s7, -111 #jump sub_1 -> sub_2
                  bgeu         a6, s7, 9f
                  sub          s5, gp, a2
                  sltu         a5, s1, s11
                  sra          a4, s0, t0
                  srli         t0, a2, 2
                  sra          s9, t4, t3
                  xor          a4, a0, zero
                  and          a2, t4, a1
                  lui          a5, 298377
9:                bne          s7, zero, 19f
                  sltu         s5, a5, s4
                  addi         sp, gp, -151
                  srli         s11, gp, 28
                  and          s8, a4, a2
                  beq          t6, t6, 19f
                  sub          gp, s10, s3
                  sll          a0, a2, t1
                  auipc        s9, 786623
                  ori          t2, s11, -710
19:               lui          t2, 523814
                  lw           ra, 4(t1)
                  sltiu        s5, t2, -1901
                  ori          s1, tp, 758
                  sra          s10, t4, t1
                  srli         a0, s5, 30
                  addi         t1, t1, 16
                  lui          s9, 857780
                  srl          zero, t0, t3
58:               addi x7, x1, 1
58:               jalr x7, x7, 0
sub_5:            srli         t2, a4, 23
                  sub          t2, t0, a5
                  nop
                  lui          a1, 72827
                  bge          s0, a0, sub_5_stack_p
                  xori         t6, a2, 872
sub_5_stack_p:    addi         t1, t1, -48
                  sra          t0, s1, a2
                  sw           ra, 4(t1)
                  sltiu        s4, t6, -473
sub_5_9:          jal          ra, 9f
0:                jal          s2, 14f
1:                jal          s10, 12f
2:                jal          ra, 10f
3:                jal          ra, 6f
4:                jal          ra, 3b
5:                jal          ra, 13f
6:                jal          ra, 0b
7:                jal          ra, 11f
8:                jal          t3, 5b
9:                jal          ra, 15f
10:               jal          ra, 7b
11:               jal          ra, 4b
12:               jal          ra, 16f
13:               jal          ra, 17f
14:               jal          ra, 8b
15:               jal          ra, 1b
16:               jal          t0, 2b
17:               xori         s3, s0, 1930
sub_5_10:         jal          ra, 16f
0:                jal          a1, 2f
1:                jal          ra, 7f
2:                jal          ra, 6f
3:                jal          ra, 0b
4:                jal          s4, 1b
5:                jal          s11, 3b
6:                jal          t6, 14f
7:                jal          ra, 13f
8:                jal          gp, 12f
9:                jal          ra, 8b
10:               jal          t6, 11f
11:               jal          ra, 9b
12:               jal          s7, 4b
13:               jal          ra, 17f
14:               jal          ra, 10b
15:               jal          t5, 5b
16:               jal          ra, 15b
17:               sltu         s4, s7, a5
sub_5_6:          jal          ra, 10f
0:                jal          ra, 5f
1:                jal          ra, 3f
2:                jal          ra, 4f
3:                jal          ra, 8f
4:                jal          ra, 6f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          gp, 9f
8:                jal          ra, 11f
9:                jal          sp, 0b
10:               jal          sp, 7b
11:               sub          t2, s9, a4
sub_5_3:          jal          ra, 19f
0:                jal          ra, 8f
1:                jal          ra, 0b
2:                jal          ra, 7f
3:                jal          a2, 13f
4:                jal          ra, 3b
5:                jal          s1, 17f
6:                jal          ra, 28f
7:                jal          s5, 24f
8:                jal          t0, 22f
9:                jal          ra, 25f
10:               jal          a6, 12f
11:               jal          ra, 2b
12:               jal          a5, 14f
13:               jal          t3, 26f
14:               jal          s7, 5b
15:               jal          ra, 4b
16:               jal          a3, 11b
17:               jal          s1, 6b
18:               jal          t5, 10b
19:               jal          t4, 27f
20:               jal          ra, 21f
21:               jal          ra, 9b
22:               jal          ra, 23f
23:               jal          ra, 20b
24:               jal          ra, 1b
25:               jal          ra, 18b
26:               jal          ra, 16b
27:               jal          ra, 15b
28:               sra          s7, a3, a7
sub_5_15:         jal          ra, 10f
0:                jal          ra, 19f
1:                jal          s3, 21f
2:                jal          s3, 9f
3:                jal          ra, 0b
4:                jal          ra, 15f
5:                jal          ra, 1b
6:                jal          a4, 13f
7:                jal          ra, 6b
8:                jal          t0, 24f
9:                jal          ra, 25f
10:               jal          t0, 11f
11:               jal          ra, 23f
12:               jal          ra, 5b
13:               jal          t5, 22f
14:               jal          ra, 18f
15:               jal          ra, 14b
16:               jal          ra, 7b
17:               jal          ra, 8b
18:               jal          ra, 16b
19:               jal          gp, 17b
20:               jal          ra, 4b
21:               jal          ra, 20b
22:               jal          ra, 26f
23:               jal          ra, 2b
24:               jal          a5, 12b
25:               jal          ra, 3b
26:               srl          zero, a7, ra
sub_5_16:         jal          ra, 6f
0:                jal          ra, 5f
1:                jal          ra, 2f
2:                jal          t4, 9f
3:                jal          ra, 10f
4:                jal          ra, 11f
5:                jal          s2, 1b
6:                jal          ra, 8f
7:                jal          ra, 3b
8:                jal          ra, 7b
9:                jal          ra, 4b
10:               jal          t5, 0b
11:               nop
sub_5_5:          jal          ra, 13f
0:                jal          ra, 11f
1:                jal          ra, 18f
2:                jal          ra, 12f
3:                jal          a6, 7f
4:                jal          ra, 16f
5:                jal          tp, 17f
6:                jal          ra, 3b
7:                jal          ra, 4b
8:                jal          s4, 14f
9:                jal          t5, 0b
10:               jal          s7, 19f
11:               jal          ra, 15f
12:               jal          ra, 20f
13:               jal          tp, 1b
14:               jal          t3, 9b
15:               jal          ra, 10b
16:               jal          s4, 5b
17:               jal          ra, 8b
18:               jal          t0, 6b
19:               jal          t0, 2b
20:               sll          ra, s9, t5
sub_5_8:          jal          ra, 4f
0:                jal          s8, 6f
1:                jal          t0, 11f
2:                jal          s9, 7f
3:                jal          t3, 1b
4:                jal          s2, 10f
5:                jal          s5, 12f
6:                jal          s3, 2b
7:                jal          ra, 9f
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               jal          ra, 8b
12:               slli         s9, s10, 21
sub_5_0:          jal          ra, 4f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          ra, 5f
3:                jal          ra, 9f
4:                jal          ra, 6f
5:                jal          ra, 3b
6:                jal          ra, 8f
7:                jal          ra, 13f
8:                jal          a6, 2b
9:                jal          ra, 1b
10:               jal          ra, 14f
11:               jal          ra, 10b
12:               jal          t0, 15f
13:               jal          gp, 12b
14:               jal          ra, 0b
15:               sub          s0, a0, a1
sub_5_7:          jal          ra, 16f
0:                jal          ra, 9f
1:                jal          ra, 10f
2:                jal          s5, 11f
3:                jal          gp, 17f
4:                jal          s1, 19f
5:                jal          ra, 12f
6:                jal          ra, 14f
7:                jal          ra, 6b
8:                jal          ra, 3b
9:                jal          ra, 13f
10:               jal          ra, 20f
11:               jal          ra, 1b
12:               jal          ra, 4b
13:               jal          ra, 8b
14:               jal          ra, 18f
15:               jal          ra, 21f
16:               jal          ra, 5b
17:               jal          a1, 22f
18:               jal          ra, 2b
19:               jal          s5, 7b
20:               jal          gp, 15b
21:               jal          ra, 0b
22:               ori          a6, t1, -1619
sub_5_17:         jal          ra, 9f
0:                jal          ra, 12f
1:                jal          ra, 8f
2:                jal          ra, 7f
3:                jal          ra, 11f
4:                jal          ra, 0b
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          s1, 6b
8:                jal          ra, 10f
9:                jal          a0, 2b
10:               jal          tp, 4b
11:               jal          ra, 1b
12:               sub          t6, a5, s3
sub_5_4:          jal          ra, 0f
0:                jal          ra, 3f
1:                jal          ra, 10f
2:                jal          ra, 4f
3:                jal          ra, 8f
4:                jal          ra, 6f
5:                jal          sp, 9f
6:                jal          ra, 7f
7:                jal          ra, 5b
8:                jal          ra, 2b
9:                jal          t0, 1b
10:               slli         a2, t2, 27
sub_5_13:         jal          ra, 10f
0:                jal          ra, 3f
1:                jal          ra, 25f
2:                jal          ra, 20f
3:                jal          a0, 5f
4:                jal          sp, 8f
5:                jal          ra, 11f
6:                jal          ra, 24f
7:                jal          sp, 9f
8:                jal          ra, 18f
9:                jal          ra, 4b
10:               jal          ra, 0b
11:               jal          s7, 2b
12:               jal          ra, 21f
13:               jal          t4, 19f
14:               jal          t4, 15f
15:               jal          t0, 23f
16:               jal          ra, 13b
17:               jal          ra, 12b
18:               jal          t0, 14b
19:               jal          gp, 22f
20:               jal          ra, 1b
21:               jal          ra, 6b
22:               jal          sp, 7b
23:               jal          t3, 17b
24:               jal          ra, 26f
25:               jal          ra, 16b
26:               srli         a1, t3, 19
                  xori         gp, zero, 127
                  andi         t4, a7, 410
                  srli         sp, a3, 9
                  sltiu        a5, ra, 1630
                  or           a2, a4, s0
                  sra          ra, t2, s6
                  add          s3, sp, s4
                  sltu         s10, t1, t3
                  slli         zero, tp, 2
                  xor          s10, a1, a6
                  xori         gp, s8, 1079
                  blt          a6, t2, 18f
                  xori         tp, a7, -295
                  lui          s10, 151372
                  add          t4, tp, t5
                  slti         s5, s0, -1732
                  sub          ra, a4, a7
                  srai         t4, a2, 27
18:               xori         a1, t2, 1877
                  sll          tp, t1, gp
                  and          s4, s10, a6
                  slli         sp, s11, 0
                  lui          s5, 975429
                  nop
                  addi         s0, ra, -449
                  sub          sp, s10, s1
                  beq          s5, zero, 45f
                  xor          s4, s1, s3
                  bgeu         a4, t6, 39f
                  sltiu        t3, s6, 1328
                  andi         t2, s1, -1394
                  sll          zero, s10, a0
                  bne          ra, gp, 44f
                  srl          s8, t2, s4
                  add          s9, t6, s1
                  nop
                  nop
                  srli         t5, s2, 3
                  nop
39:               blt          a4, t0, 49f
                  sltiu        a1, t1, -528
                  srl          s4, s7, s11
                  xor          a4, a0, s11
                  srai         sp, s6, 27
44:               sub          t0, t6, zero
45:               bne          ra, s2, 51f
                  bgeu         t2, s6, 54f
                  slli         s8, a5, 30
                  srli         s3, t3, 8
49:               srai         s0, s4, 28
                  srl          t6, a4, a5
51:               andi         s11, s2, -794
                  lui          a4, 63211
                  xor          a4, s4, s6
54:               sltu         a6, s4, a4
                  add          a3, t2, zero
                  or           s0, a5, s0
                  nop
                  sltiu        a5, s10, -343
                  slli         s10, a4, 0
                  bltu         s5, s4, 70f
                  bge          s10, a3, 69f
                  sra          a4, a6, s5
                  slt          a4, ra, s0
                  add          s1, a5, s0
                  sltiu        s8, a6, 1587
                  blt          tp, s1, 84f
                  add          s9, t4, s9
                  bgeu         s4, s4, 82f
69:               slti         a0, a0, -606
70:               add          a5, a6, t2
                  addi         a4, t1, 783
                  addi         s5, s10, -1339
                  sltu         a3, s2, s1
                  xori         s3, s10, 317
                  sub          t6, t6, s4
                  srli         ra, a6, 8
                  srli         s10, s7, 18
                  ori          s10, s2, 88
                  auipc        s4, 388583
                  srli         t3, s5, 9
                  sra          a6, a2, s0
82:               bgeu         s1, s3, 85f
                  blt          s0, t0, 98f
84:               slli         a1, t0, 6
85:               bne          s5, a3, 87f
                  slti         t6, s4, -1669
87:               slli         s7, a4, 26
                  srli         s1, t3, 15
                  lui          s1, 29502
                  beq          s7, s10, 91f
91:               slt          s5, t3, s3
                  bgeu         t4, s7, 104f
                  bltu         tp, s4, 112f
                  sll          t3, sp, t2
                  ori          t4, tp, -1079
                  bne          s8, ra, 114f
                  bltu         t0, ra, 104f
98:               beq          t1, a3, 104f
                  bge          zero, s8, 107f
                  blt          t3, a2, 102f
                  lui          t2, 890872
102:              ori          s4, s3, 1161
                  srli         a3, tp, 9
104:              auipc        a1, 18025
                  slli         a1, a7, 24
                  sll          t5, s5, a7
107:              blt          s1, t1, 113f
                  srli         tp, s5, 28
                  sra          t2, s5, a1
                  slti         t2, a1, -748
                  blt          a7, a2, 131f
112:              slti         s7, t5, -1290
113:              addi         a2, s2, 401
114:              andi         zero, a2, 774
                  srli         s0, s0, 9
                  and          s4, a6, s3
                  srai         t5, s1, 26
                  blt          a3, s1, 134f
                  addi         gp, s5, -1170
                  srl          a5, s5, s6
                  srai         gp, s0, 25
                  sub          s9, s10, tp
                  slt          t5, tp, a0
                  ori          ra, s11, 675
                  sltiu        t3, t6, -553
                  bge          s0, s3, 138f
                  sltiu        a0, tp, 1215
                  slt          a3, t3, s6
                  sll          t2, t0, s2
                  andi         sp, t3, 1956
131:              andi         t0, s7, -819
                  xori         a4, t6, -1231
                  slt          s0, a7, t6
134:              xori         s5, s1, -1101
                  sra          a2, a6, a4
                  bne          zero, t0, 155f
                  srai         a2, a0, 27
138:              lui          s2, 483388
                  sll          s9, a5, s11
                  slt          ra, s6, s5
                  bge          a0, s0, 154f
                  beq          t6, a2, 143f
143:              xori         s2, t2, 1419
                  blt          ra, t3, 146f
                  sll          s1, t1, sp
146:              sltiu        t3, s8, 802
                  nop
                  bne          s8, a4, 168f
                  sltu         a4, zero, s6
                  auipc        a4, 195234
                  nop
                  bge          a1, a1, 160f
                  bge          a0, gp, 155f
154:              slt          t5, s2, s11
155:              addi         s1, t4, 329
                  sub          s7, s0, s6
                  ori          s7, tp, -1914
                  lui          t4, 770796
                  sra          a2, a2, a3
160:              beq          s1, sp, 162f
                  sub          a0, zero, ra
162:              sltu         a1, tp, t3
                  xori         s5, s10, -1086
                  srl          t0, sp, zero
                  xori         s10, sp, -1693
                  sltu         s3, s11, s7
                  nop
168:              bge          tp, s10, 171f
                  bge          s2, t1, 171f
                  bge          a5, a4, 176f
171:              sub          s11, s1, a7
                  slli         s10, a7, 15
                  bge          t5, zero, 189f
                  srl          s11, a0, t5
                  lui          t4, 691658
176:              bne          t5, s9, 177f
177:              bne          a1, a5, 187f
                  ori          tp, ra, -1168
                  slli         t4, a0, 29
                  xori         s11, s8, 1705
                  slti         s2, tp, -875
                  and          tp, a1, s10
                  bltu         t2, t4, 184f
184:              auipc        a2, 462442
                  sra          s0, s11, s7
                  addi         s0, a7, -171
187:              sltiu        s2, s6, -1299
                  ori          s8, t1, 942
189:              auipc        a6, 389832
                  ori          s10, t2, -125
                  and          s10, s9, a0
                  bne          s4, s2, 199f
                  sltiu        s3, a1, 1612
                  bge          t5, s7, 209f
                  xori         t6, a5, -972
                  or           s2, t3, t4
                  srli         s9, s1, 27
                  sra          s9, s3, a2
199:              slt          s10, s8, s7
                  bge          s11, t1, 212f
                  srli         s0, t1, 9
                  srli         s7, ra, 8
                  andi         s5, t5, 1885
                  auipc        s0, 972710
                  and          a1, s2, tp
                  bne          s6, s3, 220f
                  xori         t4, s11, -1711
                  beq          s2, sp, 220f
209:              srli         a6, s1, 15
                  slt          s8, t5, zero
                  beq          s0, a0, 229f
212:              bgeu         s4, a3, 218f
                  slli         t2, s8, 19
                  srl          ra, gp, s11
                  slli         t3, s7, 30
                  beq          a7, sp, 235f
                  ori          s3, t4, 567
218:              bgeu         t1, a4, 237f
                  andi         a5, s7, 920
220:              blt          s1, s11, 238f
                  slt          sp, t3, s4
                  slt          zero, a7, s3
                  bltu         s11, s4, 233f
                  bltu         t5, s7, 237f
                  bne          s9, zero, 231f
                  sra          t0, gp, t2
                  slli         s5, t5, 21
                  auipc        s1, 734610
229:              blt          s2, s2, 248f
                  bgeu         s5, tp, 238f
231:              sltu         s4, tp, s0
                  bne          zero, s9, 244f
233:              sltiu        a5, t1, 571
                  srli         t0, a3, 1
235:              and          s5, a0, a1
                  xori         s9, s2, 137
237:              srli         a0, a7, 14
238:              xor          t3, s0, s4
                  bltu         a2, a2, 250f
                  sltiu        s4, a1, -1017
                  slt          tp, s5, s9
                  or           a4, a3, a3
                  bne          s0, s2, 251f
244:              sra          t3, t5, a2
                  add          s2, s4, a3
                  blt          t0, a0, 253f
                  beq          a1, a6, 253f
248:              or           gp, s8, zero
                  add          a0, s5, s1
250:              sub          a0, a4, s11
251:              srli         ra, a1, 24
                  slti         t0, tp, 19
253:              srai         t2, t6, 30
                  sll          a3, t0, a2
                  or           sp, tp, t5
                  bge          t5, s3, 264f
                  nop
                  srli         a4, t2, 25
                  srl          s7, gp, tp
                  slli         a1, t0, 21
                  slli         a0, a5, 29
                  sra          s1, t2, gp
                  nop
264:              slti         s0, t2, -758
                  slti         s7, t0, 1051
                  bltu         a4, s2, 286f
                  sra          s9, a2, ra
                  bge          s5, tp, 280f
                  slli         a2, ra, 15
                  auipc        a0, 688330
                  sltiu        gp, s1, 1704
                  auipc        s2, 118079
                  bgeu         s9, a7, 280f
                  andi         s10, zero, 1263
                  sll          s7, a7, s0
                  bne          t1, zero, 284f
                  bltu         s5, sp, 279f
                  sub          a6, s7, t3
279:              andi         a6, t5, -1815
280:              sra          a2, s11, t5
                  srai         s5, t0, 14
                  ori          a3, a4, 353
                  sltu         a2, sp, s7
284:              beq          t2, s11, 303f
                  blt          a2, a7, 295f
286:              add          s7, s11, a6
                  sltu         a5, t4, a4
                  sub          s7, ra, t5
                  srl          t4, s8, t5
                  auipc        s0, 758323
                  slt          t2, t2, t1
                  srli         s11, t3, 15
                  add          a0, a3, sp
                  srai         s7, sp, 20
295:              blt          s0, s5, 297f
                  srai         a4, t2, 11
297:              and          s10, t3, s6
                  bne          s1, s9, 304f
                  sltu         a6, t3, t2
                  lui          s11, 394261
                  bge          s5, t3, 314f
                  xori         a1, t3, -1526
303:              sll          a5, tp, a2
304:              srli         s3, t4, 5
                  andi         t4, a2, -1462
                  srai         t2, t5, 22
                  blt          s7, a5, 314f
                  lui          tp, 656685
                  andi         sp, zero, 1235
                  bne          ra, a4, 312f
                  beq          t2, s9, 330f
312:              ori          s3, a6, -210
                  bltu         s2, s10, 325f
314:              sltiu        t6, ra, 1261
                  addi         zero, a3, 550
                  sll          s5, a1, s8
                  addi         sp, a2, -2028
                  beq          s7, s10, 319f
319:              sub          a6, a3, t3
                  blt          a6, a6, 330f
                  bltu         s9, t2, 337f
                  srli         s5, s1, 0
                  srli         s11, s8, 11
                  sltiu        s9, a6, -516
325:              lui          t6, 14242
                  ori          s10, s3, -345
                  bne          s1, sp, 345f
                  blt          a1, s9, 331f
                  slli         s0, t3, 17
330:              srl          s0, t4, s6
331:              bgeu         zero, s10, 332f
332:              blt          s3, s4, 346f
                  sub          s10, a1, ra
                  sra          tp, zero, s4
                  or           zero, s4, s10
                  ori          a0, s0, -1956
337:              sub          a3, a4, t6
                  blt          a4, s10, 357f
                  sltiu        s8, s6, -146
                  sltu         a2, s8, a0
                  auipc        t6, 673742
                  add          sp, t3, ra
                  addi         tp, t6, -443
                  srai         a1, t4, 8
345:              xori         a2, a2, -454
346:              lui          s7, 700740
                  addi         a0, a4, -1046
                  nop
                  beq          a0, a0, 367f
                  sll          gp, s7, a6
                  andi         a6, t3, 1030
                  xori         t3, tp, 1592
                  bne          s4, s7, 359f
                  andi         s4, s10, 2011
                  srl          gp, sp, a6
                  sltiu        tp, s5, 110
357:              bltu         sp, s9, 365f
                  sub          s8, a0, t0
359:              andi         tp, s11, -1868
                  slti         zero, s11, 723
                  slt          t3, ra, t1
                  srai         s5, s6, 12
                  xor          t3, t1, s0
                  add          a6, a0, t3
365:              xor          tp, t3, t2
                  bne          t0, t4, 377f
367:              sll          s5, s11, a1
                  slti         zero, t6, 123
                  xor          t2, a1, s1
                  bltu         t2, t0, 382f
                  xori         t4, s2, 1922
                  slli         s7, t5, 29
                  bltu         s6, tp, 388f
                  andi         s8, s10, 1132
                  ori          s10, a1, -1066
                  blt          t4, a3, 395f
377:              srl          a6, t4, s5
                  bge          t5, s0, 393f
                  add          a3, a2, a0
                  lui          zero, 29581
                  slli         s0, s0, 29
382:              srl          s7, a4, s2
                  bge          s4, a2, 384f
384:              sra          a1, s4, s11
                  bge          s3, s0, 393f
                  bge          t4, a4, 387f
387:              slt          a5, s4, a1
388:              or           a5, s11, a5
                  add          t5, s0, tp
                  or           s9, t6, t3
                  slt          t0, t6, t4
                  bgeu         s0, s3, 406f
393:              lui          t3, 233966
                  slli         a5, t3, 22
395:              auipc        a4, 388103
                  blt          t6, s1, 402f
                  nop
                  beq          a2, a4, 408f
                  bne          a4, a5, 407f
                  srl          sp, tp, a5
                  blt          s1, s0, 417f
402:              sll          s10, s1, gp
                  sra          s9, s9, s4
                  slt          a6, s9, t5
                  nop
406:              lui          sp, 1014713
sub_5_1:          jal          ra, 5f
0:                jal          tp, 11f
1:                jal          tp, 18f
2:                jal          ra, 1b
3:                jal          t6, 9f
4:                jal          t6, 21f
5:                jal          tp, 4b
6:                jal          s1, 23f
7:                jal          s0, 19f
8:                jal          ra, 15f
9:                jal          ra, 7b
10:               jal          ra, 0b
11:               jal          ra, 6b
12:               jal          ra, 13f
13:               jal          s9, 10b
14:               jal          ra, 8b
15:               jal          ra, 20f
16:               jal          ra, 24f
17:               jal          ra, 22f
18:               jal          ra, 14b
19:               jal          gp, 12b
20:               jal          s8, 16b
21:               jal          ra, 17b
22:               jal          t5, 3b
23:               jal          ra, 2b
24:               srl          t0, t4, a7
407:              srai         s2, a0, 8
408:              slti         a1, s0, 449
                  ori          ra, a4, -414
                  blt          t3, t6, 417f
                  srli         a1, ra, 1
                  bge          a7, tp, 415f
                  add          a3, s6, a7
                  sra          t3, a7, s6
415:              bltu         s3, t6, 417f
                  ori          t3, a5, 479
417:              sltu         a3, s8, a1
                  auipc        a2, 196084
                  lui          s0, 650079
                  blt          s11, s4, 432f
                  bltu         t5, a0, 441f
                  nop
                  lui          s10, 737104
                  blt          gp, s6, 426f
                  bne          s1, s2, 427f
426:              srai         a4, gp, 22
427:              srli         t0, s4, 30
                  and          s4, s10, gp
                  auipc        t4, 830226
                  blt          a3, a7, 441f
                  addi         t0, a6, 1367
432:              slli         a6, s7, 17
                  slti         s7, gp, -400
                  addi         t4, t1, -1675
                  add          a4, t2, t0
                  bne          a7, s10, 448f
                  slli         t3, zero, 29
                  bne          s0, ra, 456f
                  bltu         s11, t1, 447f
                  sll          t4, s0, s6
441:              sltu         t4, a5, gp
                  slli         gp, gp, 30
                  bgeu         s5, a1, 456f
                  ori          a4, ra, -1319
                  auipc        t3, 703266
                  sltu         t6, s8, t4
447:              xor          t6, t5, t2
448:              add          a2, a4, a0
                  slti         s1, s0, 171
                  srai         s2, tp, 15
                  slt          t6, s3, t3
                  add          t3, a6, s3
                  slt          a3, t1, t6
                  srai         s9, s10, 9
                  addi         s2, gp, 773
456:              slt          s9, t5, gp
                  slti         t4, a2, 1216
                  bne          a0, sp, 465f
                  or           gp, t2, t4
                  srli         s10, t5, 30
                  slt          a0, t1, a4
                  xori         s7, s5, -1289
                  beq          s7, a1, 469f
                  nop
465:              sra          zero, a2, t1
                  srai         s1, a3, 28
                  auipc        s7, 320127
                  addi         a2, tp, -597
469:              slli         s1, a3, 0
                  andi         t4, s3, -1128
                  auipc        ra, 30343
                  addi         a5, a1, 1779
                  bne          s0, sp, 492f
                  lui          t0, 485923
                  bgeu         t2, t4, 481f
                  addi         a5, t5, -1789
                  bltu         ra, s2, 495f
                  sll          zero, s9, a1
                  and          a6, t4, a3
                  bne          s11, t3, 490f
481:              sltu         t0, s8, s9
                  sub          s11, s0, s7
                  xor          t3, a1, s11
                  sltu         ra, s2, t3
                  sra          s11, s4, a5
                  beq          t0, a6, 505f
                  ori          zero, s7, 1749
                  slt          ra, t4, a3
                  beq          a3, a5, 501f
490:              bltu         t6, a1, 492f
                  sltu         a3, t6, a7
492:              auipc        s7, 1006002
                  and          s3, t2, a3
                  andi         s10, sp, -1279
495:              ori          s2, sp, 761
                  xori         s2, s5, 1144
                  sll          a3, t1, t0
                  srl          gp, ra, t1
                  auipc        t2, 348518
                  addi         a0, s11, -285
501:              beq          t0, a6, 503f
                  bge          a7, s3, 504f
503:              srli         a2, t1, 16
504:              or           zero, s0, s5
505:              xor          s1, a6, a7
                  nop
                  sra          s4, a7, a6
sub_5_11:         jal          ra, 2f
0:                jal          ra, 12f
1:                jal          ra, 3f
2:                jal          s2, 9f
3:                jal          t0, 6f
4:                jal          ra, 5f
5:                jal          s4, 8f
6:                jal          ra, 13f
7:                jal          gp, 15f
8:                jal          ra, 14f
9:                jal          s8, 1b
10:               jal          t6, 7b
11:               jal          s7, 4b
12:               jal          a1, 11b
13:               jal          ra, 0b
14:               jal          ra, 10b
15:               sltiu        a4, t4, 468
                  bne          tp, a5, 520f
                  sra          a0, t3, a4
                  or           s7, s0, s3
                  srai         tp, a3, 30
                  slti         tp, s9, 1178
sub_5_2:          jal          ra, 16f
0:                jal          ra, 12f
1:                jal          ra, 11f
2:                jal          ra, 7f
3:                jal          s2, 10f
4:                jal          s10, 2b
5:                jal          gp, 18f
6:                jal          ra, 20f
7:                jal          ra, 3b
8:                jal          t4, 14f
9:                jal          ra, 8b
10:               jal          ra, 1b
11:               jal          ra, 17f
12:               jal          s7, 19f
13:               jal          ra, 4b
14:               jal          ra, 0b
15:               jal          ra, 9b
16:               jal          ra, 15b
17:               jal          ra, 5b
18:               jal          ra, 6b
19:               jal          a3, 13b
20:               sub          s3, t4, s8
                  auipc        tp, 856966
sub_5_14:         jal          ra, 0f
0:                jal          ra, 11f
1:                jal          s1, 7f
2:                jal          ra, 1b
3:                jal          t0, 6f
4:                jal          ra, 17f
5:                jal          s3, 10f
6:                jal          ra, 16f
7:                jal          s10, 15f
8:                jal          a1, 5b
9:                jal          s2, 4b
10:               jal          ra, 3b
11:               jal          ra, 8b
12:               jal          t0, 2b
13:               jal          t3, 14f
14:               jal          ra, 9b
15:               jal          ra, 13b
16:               jal          ra, 12b
17:               sll          s10, ra, s3
                  andi         a5, s5, 487
                  srl          a2, a7, s8
                  srai         a5, ra, 29
                  sll          s11, t2, s8
                  sub          t5, a4, s6
                  srai         a5, zero, 28
520:              blt          s4, s4, 535f
                  srai         a2, t2, 22
                  bne          s9, a1, 534f
                  sll          t4, s10, s8
                  bne          a1, s5, 542f
                  sub          s10, t1, s9
                  bltu         t5, a3, 545f
                  add          t4, sp, zero
                  add          s9, t3, s6
                  or           a2, gp, a1
                  bgeu         gp, s0, 538f
                  sub          a5, t1, ra
                  sltu         s1, tp, a6
                  slti         tp, t3, -964
534:              bne          s1, a7, 550f
535:              and          a0, a6, s3
                  auipc        a2, 700671
                  and          t4, t2, s9
538:              bgeu         t4, t5, 544f
                  srl          ra, ra, tp
                  auipc        a6, 203482
                  bgeu         t6, t4, 551f
542:              sub          t0, t5, ra
                  nop
544:              srli         t3, s1, 1
545:              bltu         s9, tp, 559f
                  nop
                  sltiu        t4, a7, -100
                  slt          tp, a2, s10
                  sra          sp, a4, a6
550:              slt          s9, s2, s5
551:              bge          zero, s4, 552f
552:              auipc        s8, 164717
                  bge          s10, s11, 559f
                  slli         a0, t0, 20
                  lui          s3, 922844
                  sll          t2, s11, s9
                  sll          a2, t6, a3
                  blt          zero, s10, 566f
559:              ori          a2, s1, 790
                  sltu         a0, a0, a3
                  slti         ra, t3, 1540
                  addi         ra, a5, 1316
                  ori          a5, a7, 57
                  slt          t4, a2, t5
                  sltu         a0, a6, a3
566:              bgeu         s10, a6, 577f
                  sltu         a5, t3, a0
                  nop
                  slli         sp, t4, 25
                  add          a2, t2, s3
                  sltu         zero, a1, t6
                  sltiu        ra, s2, 714
                  beq          a1, a1, 574f
574:              xor          s2, s11, t5
                  or           t5, s3, a0
                  sra          t4, a3, s2
577:              ori          s4, a6, -988
                  ori          s4, a5, -405
                  addi         tp, a6, 79
                  nop
                  addi         s2, a2, 299
                  bgeu         sp, t0, 601f
                  sltiu        a0, a1, 248
                  srl          t5, gp, s6
                  sra          s11, a0, t5
                  bltu         a4, s1, 599f
                  auipc        tp, 421234
                  addi         t0, s9, -551
                  nop
                  srli         s1, s4, 10
                  blt          t6, t0, 603f
                  sub          s11, tp, s8
                  slti         s7, s11, -445
                  bgeu         t1, tp, 597f
                  slt          gp, t6, s11
                  beq          ra, a5, 606f
597:              slt          s1, s8, t4
                  bge          t3, t1, 606f
599:              srl          t4, t5, t6
                  sltiu        a6, s2, 296
601:              bltu         ra, s4, 619f
                  bltu         t2, t0, 622f
603:              sub          sp, t4, s8
                  sub          sp, a3, s2
                  bltu         s11, a1, 612f
606:              addi         a2, zero, 566
                  auipc        a6, 1035492
                  slli         zero, tp, 20
                  beq          sp, s5, 628f
                  or           a6, s11, a7
                  srai         zero, s3, 30
612:              lui          s0, 934206
                  srai         s9, s5, 20
                  nop
                  slti         a0, s7, -862
                  beq          sp, a5, 623f
                  slti         a5, t2, 559
                  nop
619:              sub          s8, s6, gp
                  sra          t5, s3, t6
                  andi         s10, a7, -219
622:              lui          s2, 695015
623:              bne          a0, t5, 629f
                  sll          s1, zero, a2
                  and          t6, s7, a2
                  sll          s10, t6, a7
                  slli         s4, zero, 13
628:              sltu         t0, s11, a0
629:              add          a6, s8, a2
                  srai         s11, s11, 3
                  srli         s5, t5, 17
                  sltiu        a1, s9, -1951
                  nop
                  xori         s10, s9, 125
                  sra          a4, a1, s10
                  slli         zero, s9, 29
                  slti         t0, s1, 362
                  slt          s0, a4, a7
                  nop
                  srli         t6, s0, 11
                  and          t2, zero, zero
                  xori         a4, a7, 1197
                  bge          zero, s6, 659f
                  srl          s9, a2, sp
                  auipc        s3, 638184
                  lui          s8, 366851
                  blt          a5, s3, 661f
                  bgeu         s9, ra, 659f
                  bne          s4, s8, 659f
                  nop
                  andi         s5, s5, 1249
                  beq          a2, a5, 658f
                  bgeu         s9, t2, 660f
sub_5_12:         jal          ra, 1f
0:                jal          t0, 2f
1:                jal          a4, 12f
2:                jal          ra, 13f
3:                jal          ra, 17f
4:                jal          ra, 8f
5:                jal          ra, 20f
6:                jal          a2, 21f
7:                jal          ra, 18f
8:                jal          s11, 14f
9:                jal          ra, 7b
10:               jal          ra, 5b
11:               jal          ra, 15f
12:               jal          t6, 19f
13:               jal          ra, 3b
14:               jal          ra, 0b
15:               jal          ra, 4b
16:               jal          t0, 10b
17:               jal          s9, 6b
18:               jal          ra, 11b
19:               jal          ra, 16b
20:               jal          ra, 9b
21:               slt          ra, s1, t6
                  bltu         s0, a3, 672f
                  add          s2, t3, s2
                  sltiu        s10, s10, 1004
                  beq          s10, t2, 664f
658:              sub          t2, s2, s6
659:              beq          tp, tp, 669f
660:              beq          a5, s2, 673f
661:              and          sp, s11, t2
                  slli         ra, zero, 19
                  srl          a1, tp, s5
664:              nop
                  srai         t5, s9, 30
                  xori         a1, a2, -1099
                  and          t5, tp, t2
                  nop
669:              blt          a1, s8, 684f
                  ori          a3, a6, 382
                  ori          t4, a2, 1853
672:              beq          s4, t1, 684f
673:              bltu         s0, zero, 681f
                  sra          ra, s0, t4
                  bne          t6, a6, 683f
                  ori          s4, t6, 1845
                  and          t4, sp, a5
                  auipc        s2, 446075
                  sll          s10, t4, a3
                  sra          a4, t6, t5
681:              srai         t6, sp, 5
                  addi         a2, gp, -1927
683:              add          ra, s9, a4
684:              srli         s0, s5, 14
                  sub          a2, a0, gp
                  or           a2, a1, s1
                  srli         s3, s4, 28
                  xor          a3, s6, s11
                  blt          t1, a7, 692f
                  srli         s11, ra, 17
                  slt          a4, s9, a1
692:              xori         s4, t2, -482
                  ori          t2, s0, -1238
                  sll          t4, t4, t5
                  bgeu         zero, s10, 697f
                  sub          s10, s10, a4
697:              bge          t4, s11, 703f
                  srl          s8, s8, s11
                  slt          s4, s9, s11
                  blt          t6, s2, 719f
                  srl          a1, s7, s5
                  lui          tp, 257072
703:              xor          gp, ra, t0
                  sub          a6, s7, a2
                  andi         s5, s3, 1039
                  addi         a3, t5, -1434
                  bne          t6, sp, 709f
                  sub          s8, a4, s2
709:              sltu         s10, t0, a7
                  bge          s11, a4, 729f
                  ori          s5, a6, -1357
                  addi         ra, s1, -1617
                  addi         t3, ra, -1179
                  and          s9, s11, s2
                  slti         s7, s1, 1953
                  auipc        s8, 464575
                  xor          t5, a7, s10
                  xor          a0, s11, a7
719:              sltiu        zero, s5, 843
                  lui          sp, 143996
                  or           s1, zero, s10
                  lui          s5, 328267
                  beq          sp, s11, 743f
                  addi         s3, t1, 855
                  sub          gp, a6, s3
                  sra          s7, tp, s9
                  bge          s10, tp, 739f
                  slli         s5, s1, 12
729:              slli         sp, s5, 11
                  xori         s9, s9, 39
                  and          t3, s8, t2
                  bne          zero, a5, 734f
                  srl          s7, ra, tp
734:              bge          t4, s11, 742f
                  srai         a6, a0, 15
                  auipc        s7, 766849
                  sltiu        sp, s4, -1109
                  or           t0, a5, s2
739:              sll          zero, a3, a7
                  slt          t4, s3, a7
                  srai         s5, zero, 27
742:              srl          a1, tp, t5
743:              bge          a3, s3, 749f
                  bne          a3, t2, 745f
745:              sltu         s8, t5, t4
                  srl          s8, t1, s8
                  addi         t6, s0, 1065
                  bltu         s6, t5, 760f
749:              add          a6, a4, a6
                  srl          gp, a5, s7
                  srl          a4, t2, s6
                  sra          a6, s10, s11
                  bge          t1, s0, 771f
                  slti         tp, s11, -1827
                  andi         s8, s11, -1090
                  srli         ra, s5, 22
                  ori          t3, s10, -1536
                  beq          s6, a2, 777f
                  sub          s11, a2, s5
760:              blt          t3, a5, 761f
761:              andi         s2, s5, -1590
                  srai         s9, ra, 30
                  srai         s7, a6, 29
                  blt          a0, a3, 771f
                  sub          a5, sp, a0
                  addi         a4, s7, -1081
                  blt          a3, a0, 769f
                  sra          s5, s11, a5
769:              srai         gp, t4, 3
                  bge          a6, a7, 789f
771:              bge          t4, s11, 789f
                  add          ra, a0, a2
                  slli         a3, s11, 18
                  sub          s1, t1, a5
                  sub          s1, s9, tp
                  srl          t6, t2, s5
777:              bge          s11, a0, 785f
                  auipc        s8, 865180
                  auipc        t0, 628218
                  bge          s5, s9, 788f
                  lui          t0, 334904
                  sltiu        t3, s6, -1979
                  sltu         ra, a6, a4
                  srli         s11, sp, 3
785:              slli         a2, gp, 26
                  sll          gp, s4, s9
                  andi         a2, a0, -286
788:              srl          t2, s4, t5
789:              xori         a4, s3, -1163
                  and          a1, t6, gp
                  nop
                  add          zero, a5, a2
                  srl          s2, s5, t6
                  lui          a5, 170431
                  slli         t6, t0, 17
                  xori         t6, s3, -818
                  sub          s5, t2, sp
                  bge          s8, t0, 806f
                  sltiu        s8, s0, -818
                  slli         t6, s8, 22
                  srli         s9, gp, 1
                  sub          t3, a6, t2
                  xori         s1, s10, 1765
                  or           a1, s9, a3
                  and          s5, a2, sp
806:              blt          a2, zero, 809f
                  lui          t3, 893661
                  bltu         t3, s1, 822f
809:              ori          a4, gp, -2023
                  bltu         t3, a2, 816f
                  sltiu        s9, tp, 1784
                  sra          s0, s6, zero
                  sltu         s5, t2, t4
                  srli         s3, s10, 28
                  beq          s11, s0, 827f
816:              nop
                  srli         s0, sp, 17
                  add          s10, s2, t2
                  bgeu         a1, s4, 820f
820:              ori          a5, s2, 500
                  sltu         sp, s4, t3
822:              auipc        a4, 616179
                  slli         s11, a5, 7
                  ori          a4, s2, 746
                  add          t6, a4, t4
                  sltiu        a1, s10, -1775
827:              bltu         s6, a3, 845f
                  sub          s8, s7, s1
                  and          s0, s0, ra
                  sra          ra, a3, s9
                  add          s7, s6, t4
                  beq          zero, s5, 838f
                  sll          s5, s3, sp
                  xori         s0, t2, -1968
                  blt          t6, t1, 851f
                  srl          a6, s1, s8
                  bge          a6, tp, 857f
838:              bge          t1, s2, 844f
                  nop
                  beq          s7, t2, 850f
                  sll          s4, s2, s6
                  blt          s6, t4, 852f
                  sra          s2, t5, s7
844:              andi         t4, s3, 1501
845:              sltiu        a0, s5, 758
                  or           tp, s11, t5
                  beq          s10, s4, 859f
                  slti         s10, s11, 1613
                  sltu         t5, a0, tp
850:              and          a1, s8, t0
851:              sll          s4, t6, s0
852:              sltu         t5, s6, t4
                  srli         s4, t1, 21
                  bgeu         s1, a2, 866f
                  blt          zero, a2, 874f
                  sltu         s0, a4, ra
857:              sub          a5, s1, ra
                  andi         s11, t2, 688
859:              xor          s9, t5, s9
                  and          a1, s5, s3
                  bge          s6, a2, 872f
                  bltu         t0, gp, 881f
                  sltu         gp, a6, a1
                  slli         a4, ra, 4
                  bgeu         t3, ra, 867f
866:              srai         a1, s3, 30
867:              xori         s3, a7, -957
                  sub          s7, a5, t1
                  or           s0, s7, s10
                  bge          s4, t4, 872f
                  lui          s8, 641901
872:              blt          a5, a5, 885f
                  srli         s0, s5, 22
874:              srli         s9, ra, 8
                  slt          s2, a1, s10
                  andi         s8, s4, -890
                  nop
                  and          s7, zero, a3
                  bne          zero, a2, 894f
                  lui          a1, 587227
881:              blt          t3, t4, 882f
882:              sll          t3, s10, a5
                  sltu         s5, a6, a1
                  slt          a5, s0, a4
885:              or           a6, t2, a4
                  andi         tp, t3, -1167
                  slli         gp, s1, 2
                  bltu         zero, a1, 895f
                  bge          s8, tp, 899f
                  bge          s11, s7, 898f
                  sra          a0, a3, a4
                  slt          s0, a6, a2
                  add          t2, tp, s2
894:              xori         tp, s3, 1839
895:              addi         a3, a5, 310
                  sltiu        sp, s2, 130
                  xor          t0, t3, s6
898:              bgeu         t3, t2, 912f
899:              auipc        t3, 287655
                  beq          a0, a6, 907f
                  sll          s4, tp, t1
                  lui          a3, 4649
                  beq          t2, gp, 915f
                  srai         t4, a3, 22
                  add          s9, s4, a0
                  srl          zero, a0, a1
907:              and          a5, a0, t6
                  srl          s11, a3, s3
                  slti         tp, tp, 2018
                  slti         a4, a7, 198
                  srli         tp, t6, 28
912:              slt          zero, s10, sp
                  srai         s1, zero, 1
                  beq          t6, a7, 921f
915:              add          a0, a6, s10
                  sll          t6, s4, s1
                  beq          s0, s4, 921f
                  slt          s9, s6, a5
                  bge          zero, a0, 921f
                  xor          s3, t5, t5
921:              srai         t4, ra, 24
                  sra          s3, a1, a2
                  sra          s9, gp, a2
                  srai         t2, t3, 2
                  xori         t0, t2, 1452
                  sra          gp, a3, t1
                  ori          s4, a7, -840
                  slli         s8, a5, 9
                  srli         gp, t6, 25
                  xori         s3, t6, 1463
                  lw           ra, 4(t1)
                  addi         t1, t1, 48
                  xor          s0, a2, s8
1304:             addi x11, x1, 1
1304:             jalr x11, x11, 0
sub_2:            bgeu         s11, tp, sub_2_stack_p
sub_2_stack_p:    addi         t1, t1, -12
                  sltu         a2, t6, gp
                  slt          zero, a5, s11
                  auipc        s8, 202149
                  andi         t4, s0, -252
                  sub          s4, a5, t1
                  sw           ra, 4(t1)
                  sltu         a6, sp, t1
                  slt          s7, sp, ra
sub_2_2:          jal          ra, 5f
0:                jal          s1, 9f
1:                jal          ra, 19f
2:                jal          ra, 16f
3:                jal          ra, 14f
4:                jal          ra, 10f
5:                jal          gp, 18f
6:                jal          a1, 20f
7:                jal          ra, 13f
8:                jal          ra, 4b
9:                jal          t0, 21f
10:               jal          ra, 1b
11:               jal          ra, 2b
12:               jal          ra, 3b
13:               jal          ra, 0b
14:               jal          ra, 6b
15:               jal          s4, 17f
16:               jal          ra, 22f
17:               jal          t0, 23f
18:               jal          t5, 8b
19:               jal          ra, 11b
20:               jal          ra, 7b
21:               jal          s4, 15b
22:               jal          ra, 24f
23:               jal          ra, 25f
24:               jal          ra, 12b
25:               sra          gp, gp, zero
sub_2_6:          jal          ra, 7f
0:                jal          ra, 1f
1:                jal          gp, 8f
2:                jal          ra, 6f
3:                jal          ra, 0b
4:                jal          t4, 9f
5:                jal          t0, 10f
6:                jal          s4, 4b
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               srli         a0, s6, 31
sub_2_8:          jal          ra, 16f
0:                jal          a6, 26f
1:                jal          s2, 8f
2:                jal          s8, 0b
3:                jal          ra, 13f
4:                jal          s4, 11f
5:                jal          ra, 23f
6:                jal          s4, 20f
7:                jal          s3, 30f
8:                jal          ra, 24f
9:                jal          ra, 4b
10:               jal          ra, 5b
11:               jal          ra, 15f
12:               jal          ra, 6b
13:               jal          ra, 1b
14:               jal          ra, 29f
15:               jal          ra, 3b
16:               jal          ra, 9b
17:               jal          ra, 10b
18:               jal          ra, 14b
19:               jal          ra, 27f
20:               jal          t4, 19b
21:               jal          t0, 2b
22:               jal          sp, 28f
23:               jal          tp, 25f
24:               jal          ra, 17b
25:               jal          ra, 21b
26:               jal          ra, 12b
27:               jal          s3, 22b
28:               jal          s10, 18b
29:               jal          s5, 7b
30:               srli         t3, a4, 3
sub_2_0:          jal          ra, 11f
0:                jal          ra, 27f
1:                jal          ra, 6f
2:                jal          a2, 5f
3:                jal          ra, 25f
4:                jal          ra, 22f
5:                jal          ra, 17f
6:                jal          t4, 16f
7:                jal          ra, 9f
8:                jal          ra, 28f
9:                jal          ra, 14f
10:               jal          ra, 21f
11:               jal          ra, 12f
12:               jal          ra, 3b
13:               jal          ra, 15f
14:               jal          ra, 18f
15:               jal          ra, 7b
16:               jal          ra, 2b
17:               jal          ra, 4b
18:               jal          ra, 1b
19:               jal          ra, 24f
20:               jal          ra, 19b
21:               jal          t0, 26f
22:               jal          ra, 10b
23:               jal          gp, 20b
24:               jal          ra, 0b
25:               jal          ra, 13b
26:               jal          ra, 23b
27:               jal          ra, 8b
28:               slti         s7, t2, -750
sub_2_1:          jal          ra, 9f
0:                jal          ra, 8f
1:                jal          a3, 16f
2:                jal          ra, 3f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          t3, 15f
6:                jal          ra, 4b
7:                jal          a5, 1b
8:                jal          ra, 5b
9:                jal          ra, 6b
10:               jal          gp, 2b
11:               jal          t5, 7b
12:               jal          ra, 10b
13:               jal          t4, 17f
14:               jal          ra, 13b
15:               jal          ra, 11b
16:               jal          ra, 14b
17:               jal          ra, 18f
18:               sltu         s2, s5, s0
sub_2_4:          jal          ra, 16f
0:                jal          ra, 9f
1:                jal          ra, 21f
2:                jal          t0, 24f
3:                jal          s2, 12f
4:                jal          ra, 6f
5:                jal          ra, 13f
6:                jal          tp, 22f
7:                jal          ra, 3b
8:                jal          ra, 20f
9:                jal          s7, 18f
10:               jal          s9, 0b
11:               jal          sp, 17f
12:               jal          ra, 5b
13:               jal          ra, 1b
14:               jal          ra, 2b
15:               jal          t4, 8b
16:               jal          ra, 10b
17:               jal          s11, 19f
18:               jal          ra, 11b
19:               jal          ra, 23f
20:               jal          ra, 4b
21:               jal          ra, 15b
22:               jal          a3, 14b
23:               jal          ra, 7b
24:               nop
sub_2_9:          jal          ra, 1f
0:                jal          s5, 6f
1:                jal          ra, 7f
2:                jal          ra, 12f
3:                jal          ra, 17f
4:                jal          a5, 18f
5:                jal          t0, 16f
6:                jal          s0, 8f
7:                jal          a6, 13f
8:                jal          a2, 9f
9:                jal          ra, 14f
10:               jal          ra, 11f
11:               jal          s2, 0b
12:               jal          ra, 3b
13:               jal          sp, 5b
14:               jal          ra, 4b
15:               jal          ra, 19f
16:               jal          ra, 2b
17:               jal          s9, 10b
18:               jal          ra, 15b
19:               srl          s1, t5, t1
sub_2_3:          jal          ra, 4f
0:                jal          t6, 8f
1:                jal          s7, 10f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          s0, 6f
6:                jal          ra, 9f
7:                jal          a0, 11f
8:                jal          t6, 2b
9:                jal          s4, 13f
10:               jal          s3, 3b
11:               jal          ra, 1b
12:               jal          ra, 7b
13:               xor          s9, a5, a0
sub_2_5:          jal          ra, 3f
0:                jal          ra, 9f
1:                jal          t5, 0b
2:                jal          t4, 6f
3:                jal          ra, 4f
4:                jal          ra, 5f
5:                jal          ra, 1b
6:                jal          a1, 7f
7:                jal          a2, 10f
8:                jal          s0, 2b
9:                jal          ra, 8b
10:               srl          a4, ra, s2
                  slli         a5, s10, 25
                  blt          t5, gp, 11f
                  and          a1, a5, s10
                  xori         s9, a5, -1795
                  srl          s8, s0, tp
                  xor          a4, tp, t5
                  andi         tp, a1, -1085
                  sra          a4, a6, zero
                  slti         gp, zero, -1671
                  bgeu         t4, s11, 27f
                  bgeu         t4, a2, 12f
11:               auipc        s3, 591073
12:               ori          tp, s6, 513
                  sltu         a1, t5, s6
                  srl          s10, zero, a6
                  bne          s10, t3, 19f
                  addi         a5, s1, -1577
                  or           a4, ra, a1
                  xori         t0, s6, -960
19:               or           t6, t5, a6
                  sub          s8, t1, s2
                  sra          s11, t6, a2
                  xori         a1, a1, 1789
                  bne          s9, a1, 32f
                  sll          s10, tp, a7
                  bgeu         s4, tp, 28f
                  auipc        a3, 1013422
27:               bltu         a2, s2, 42f
28:               add          s1, s4, s10
                  beq          t2, sp, 30f
30:               sub          a4, a2, a0
                  slti         a6, zero, -1186
                  slt          t2, a6, a2
                  add          s11, a3, a7
                  srai         a0, s10, 30
                  auipc        s10, 72455
                  srli         a6, t2, 21
                  ori          s7, s3, 969
                  auipc        s11, 414605
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  sll          t4, t0, ra
32:               or           a5, t0, tp
                  bne          s1, a0, 40f
                  srli         t6, gp, 24
                  ori          s10, a2, 193
                  sltiu        t0, zero, -1072
                  addi         zero, s10, -1111
                  sra          s0, a5, a7
                  sll          s7, a7, a2
40:               slt          s11, a3, s1
                  ori          s8, zero, 111
42:               slt          gp, t1, s4
                  srl          s2, s5, s9
                  addi         s5, s10, 1854
                  or           s9, s8, s4
                  andi         s2, s8, -725
                  bne          ra, s2, 62f
                  add          a3, a3, s2
                  andi         a6, a1, -1586
                  beq          s0, a4, 57f
                  bgeu         t3, t1, 62f
                  srl          a4, s6, t2
                  blt          a3, t0, 59f
                  sll          s3, s2, zero
                  srl          a3, t5, t2
                  addi         t2, tp, 1106
57:               ori          t2, t5, 935
                  nop
59:               bltu         zero, t2, 64f
                  sub          a5, a4, s5
                  xori         a1, t4, 1447
62:               xor          s4, a2, a3
                  sub          s9, sp, s5
64:               bltu         s5, ra, 68f
                  slli         a3, a0, 14
                  xor          s1, sp, t5
                  srli         s9, s0, 31
68:               nop
                  xori         t5, t6, 1095
                  sltu         a4, a7, sp
                  sll          a1, s7, a4
                  sltiu        tp, s9, -1551
                  nop
                  sra          t3, s11, zero
                  addi         a1, s7, -1256
                  nop
                  lui          s8, 590178
                  sltiu        s10, s4, 1080
                  slli         s1, t2, 24
                  or           s3, t0, a4
                  sra          t3, t3, s9
                  blt          t2, t1, 102f
                  or           a6, a6, t5
                  sra          t4, s11, t1
                  andi         s4, s11, 1980
                  ori          s4, s6, 2025
                  andi         a2, a4, -575
                  sra          t4, sp, s7
                  srli         t0, s9, 21
                  slti         gp, t6, -1887
                  blt          a5, a5, 92f
92:               sll          s3, a3, s1
                  sra          s5, t0, s1
                  ori          t2, s5, -593
                  slti         a0, s3, 1938
                  slti         s5, s6, 2038
                  sra          s0, s7, s11
                  bgeu         ra, a2, 99f
99:               slti         s3, a1, -786
                  sll          a3, s10, tp
                  beq          t5, a0, 113f
102:              ori          t5, a2, 1577
                  srai         a1, s0, 31
                  bgeu         t2, s1, 123f
                  addi         s10, t3, -1010
                  or           s4, t2, s10
                  blt          ra, s8, 123f
                  and          s1, a0, a2
                  auipc        s11, 785189
                  bne          a1, s8, 120f
                  nop
                  bgeu         a5, sp, 121f
113:              xor          t3, a6, s5
                  lui          s5, 1011591
                  bltu         s5, a0, 121f
                  sltu         zero, s6, t0
                  nop
                  sltu         t6, s7, t4
                  slli         t5, zero, 26
120:              xor          a3, t5, t5
121:              beq          a1, s10, 128f
                  auipc        a3, 896004
123:              blt          a0, t3, 132f
                  add          a2, a0, zero
                  addi         gp, t5, 640
                  bne          t0, s1, 141f
                  slli         ra, tp, 11
128:              addi         t6, s3, -740
                  srai         s7, s6, 16
                  beq          a1, zero, 147f
                  sub          s3, gp, zero
132:              blt          s4, a2, 142f
                  sra          s0, t3, a6
                  sll          gp, s5, zero
                  sub          t0, sp, s10
                  auipc        s9, 104352
                  srl          t2, s5, a3
                  sub          a5, s2, a2
                  slt          s0, t4, s2
                  addi         t3, a7, -1497
141:              srli         s4, a1, 11
142:              nop
                  xor          a4, t4, t4
                  beq          a2, sp, 161f
                  ori          s0, s8, -1753
                  xor          tp, s4, s5
147:              and          a3, s0, s0
                  srl          s3, s4, t4
                  bge          s4, s6, 156f
                  srl          zero, a6, s2
                  nop
                  blt          ra, a7, 171f
                  lui          a4, 400072
                  xori         s8, zero, -862
                  xor          s5, a5, a5
156:              bne          t4, t5, 165f
                  sltu         s4, a3, tp
                  and          s3, a7, t0
                  sll          sp, a6, s6
                  sra          t3, s8, s2
161:              lui          s8, 388978
                  sra          tp, s2, a5
                  sub          s11, t1, t6
                  sub          t0, s9, s10
165:              sltu         tp, gp, s6
                  slli         a2, s0, 31
                  sltu         s2, t2, s6
                  add          t0, a1, s0
                  xor          a0, s9, s4
                  or           t5, a0, s5
171:              slli         s9, t1, 24
                  bgeu         s8, t1, 181f
                  bltu         a3, s0, 188f
                  sltiu        a5, t5, -1211
                  and          s5, s5, t2
                  auipc        a6, 238342
                  or           gp, a4, s10
                  or           tp, a7, gp
                  beq          a1, a0, 194f
                  beq          a0, a2, 197f
181:              slti         s0, s6, 1922
                  srai         a0, t4, 23
                  beq          t6, t1, 184f
184:              sltiu        s5, a5, 700
                  and          s1, zero, a6
                  slli         t0, a2, 14
                  nop
188:              sub          s4, t6, s6
                  or           tp, s4, a3
                  lui          a0, 191801
                  sltu         t0, a2, s11
                  and          t4, t5, tp
                  slt          a3, s3, zero
194:              srl          t0, a2, s7
                  bltu         a7, a1, 196f
196:              beq          s9, t2, 197f
197:              slli         s7, t0, 1
                  srl          s0, a2, tp
                  lui          gp, 597312
                  srli         s8, s0, 0
                  and          t4, a1, s8
                  bge          a5, s1, 209f
                  nop
                  sltu         a5, a4, t4
                  sltu         s9, s2, a4
                  beq          a0, ra, 210f
                  sub          t0, a6, a0
                  add          t6, s10, t3
209:              and          zero, a3, s4
210:              srli         t4, zero, 2
                  beq          t1, s0, 215f
                  sltu         tp, s5, s5
                  srl          a4, a4, t0
                  sll          s0, t1, gp
215:              bge          t2, s5, 220f
                  xor          t5, s9, s2
                  auipc        t6, 361643
                  sra          a6, s1, sp
                  slli         a5, s10, 29
220:              ori          s5, tp, -1779
                  sub          sp, sp, a0
                  slt          a5, t4, s6
                  xor          a2, s2, t1
                  slti         s10, a5, 1403
                  bgeu         a4, s4, 245f
                  xor          a4, a7, t0
                  srli         s3, a0, 4
                  slti         s5, s11, -1103
                  addi         s4, zero, 471
                  add          a4, s2, t3
                  bgeu         tp, s8, 238f
                  lui          gp, 647495
                  sll          a4, a2, t3
                  ori          a2, tp, -1894
                  sltu         t0, s0, sp
                  addi         s5, s3, -1488
                  slti         t4, s10, 730
238:              slli         zero, s6, 29
                  andi         s1, a6, 391
                  srai         a1, s2, 12
                  bne          sp, s0, 252f
                  beq          tp, a3, 245f
                  srai         t0, s1, 23
                  andi         a2, s11, 2029
245:              srli         t4, s8, 20
                  and          s7, s0, s6
                  srli         tp, t6, 26
                  add          t3, s6, t6
                  bgeu         a0, s0, 261f
                  bgeu         s8, t2, 266f
                  nop
252:              sra          t6, a4, a1
                  slti         s4, t0, -528
                  bgeu         t6, ra, 263f
                  lui          s0, 449737
                  srli         s7, s9, 4
                  slli         tp, tp, 7
                  sub          s8, a0, t4
                  nop
                  bne          a4, t2, 277f
261:              slli         t3, s9, 14
                  bne          a6, s11, 280f
263:              ori          a1, a0, -1914
                  add          t4, t2, a2
                  xori         a3, a3, -441
266:              slt          t4, sp, s5
                  blt          t6, s4, 277f
                  srli         s5, s3, 13
                  add          tp, ra, t6
                  beq          gp, a6, 280f
                  sll          s1, ra, a1
                  xori         gp, t3, 934
                  slli         s7, tp, 1
                  auipc        s5, 908231
                  and          a3, s1, s3
                  nop
277:              bge          t1, a3, 283f
                  xor          a1, s1, a6
                  auipc        t2, 431375
280:              srl          a6, ra, s2
                  sltiu        s0, s6, -1225
                  slt          sp, t6, s8
283:              bltu         s10, s9, 293f
                  xor          s9, s9, s11
                  or           s2, s7, s2
                  xor          tp, a6, s1
                  bge          t0, t2, 289f
                  or           gp, a7, a3
289:              add          t5, s8, s1
                  slli         s7, zero, 1
                  beq          a6, s7, 297f
                  and          t5, s0, a4
293:              bgeu         s9, s2, 308f
                  slti         s5, zero, -62
                  xor          s8, s4, s5
                  blt          s9, t3, 307f
297:              auipc        s2, 127096
                  or           s11, s1, t1
                  and          a3, s10, s0
                  slt          s9, t5, s4
                  andi         tp, a6, 849
                  and          s1, s9, s11
                  bne          s4, s5, 320f
                  beq          t2, s7, 319f
                  bltu         t0, a2, 315f
                  bltu         a5, a7, 309f
307:              auipc        a3, 473615
308:              nop
309:              auipc        s2, 817226
                  ori          s4, t4, -1959
                  blt          tp, a3, 312f
312:              srai         s4, a0, 13
                  srl          a1, s2, s1
                  bge          s8, a1, 321f
315:              slli         s4, tp, 26
                  lui          t5, 629649
                  xor          a2, s11, t5
                  bgeu         s1, s1, 336f
319:              bgeu         t6, t0, 320f
320:              srai         s10, t6, 21
321:              srl          a6, t3, t5
                  srli         a2, t4, 7
                  auipc        a1, 78476
                  slt          a6, gp, a2
                  bltu         a1, s3, 342f
                  addi         s7, t1, -416
                  beq          t6, s6, 331f
                  sltiu        a3, a1, -1119
sub_2_7:          jal          ra, 0f
0:                jal          sp, 18f
1:                jal          a2, 14f
2:                jal          ra, 5f
3:                jal          t5, 9f
4:                jal          ra, 7f
5:                jal          s9, 8f
6:                jal          a2, 19f
7:                jal          ra, 2b
8:                jal          ra, 13f
9:                jal          a3, 12f
10:               jal          ra, 6b
11:               jal          ra, 17f
12:               jal          ra, 22f
13:               jal          ra, 16f
14:               jal          t0, 3b
15:               jal          ra, 4b
16:               jal          t0, 10b
17:               jal          ra, 15b
18:               jal          t3, 25f
19:               jal          ra, 26f
20:               jal          ra, 23f
21:               jal          ra, 20b
22:               jal          a2, 24f
23:               jal          ra, 11b
24:               jal          sp, 21b
25:               jal          ra, 1b
26:               srai         s5, zero, 14
                  slti         s5, s6, 1013
                  sll          s10, s8, t6
331:              xor          s0, s4, a0
                  bne          t2, a1, 344f
                  slli         gp, s5, 10
                  blt          a7, s1, 339f
                  lui          zero, 790521
336:              slt          t3, tp, tp
                  nop
                  blt          a5, s2, 353f
339:              sltiu        t4, sp, -1699
                  lui          a0, 266822
                  ori          s2, t5, -224
342:              sra          s9, zero, t3
                  srli         s5, s10, 18
344:              bltu         sp, s10, 346f
                  sltiu        gp, t6, -96
346:              bge          s0, zero, 355f
                  sub          t0, a5, ra
                  bltu         t2, t3, 358f
                  lui          t5, 996471
                  bge          a4, s11, 357f
                  srai         zero, s8, 4
                  beq          s4, t6, 371f
353:              lui          a4, 614354
                  slti         s5, s10, -1512
355:              blt          a1, s3, 364f
                  slli         t4, s1, 1
357:              beq          s10, t3, 363f
358:              andi         a1, s10, 1977
                  bge          s10, a0, 363f
                  beq          t4, tp, 376f
                  nop
                  bgeu         s11, s6, 377f
363:              sub          t0, s1, a0
364:              bge          s1, s1, 370f
                  slti         s11, a5, -151
                  srli         t5, a4, 17
                  sltiu        t5, s6, -353
                  sll          a0, s11, t0
                  and          a2, s1, t2
370:              addi         s2, t6, 205
371:              slt          s0, s1, zero
                  andi         zero, a6, 386
                  sub          t0, t3, a2
                  xor          a3, s3, s7
                  slti         a5, gp, 243
376:              bgeu         t3, s7, 396f
377:              sltu         s4, s0, s7
                  xori         a0, s11, -810
                  beq          tp, a5, 386f
                  sra          a3, a2, t6
                  auipc        s3, 585789
                  nop
                  bltu         t4, t2, 393f
                  bltu         zero, t6, 393f
                  xori         a2, tp, 1362
386:              blt          tp, a0, 387f
387:              slti         a6, zero, 803
                  beq          s5, s6, 397f
                  sltiu        t4, s9, -916
                  xori         s8, a7, 499
                  bge          a5, t6, 406f
                  beq          a6, sp, 407f
393:              srl          a5, sp, s4
                  bne          s9, s4, 401f
                  slti         s0, t0, 204
396:              slti         ra, tp, 233
397:              sll          tp, a1, t0
                  srli         s10, s6, 19
                  sra          s4, ra, s1
                  ori          s7, s1, 792
401:              bgeu         s9, t6, 408f
                  sll          ra, t2, a3
                  andi         s8, tp, 1563
                  or           t6, sp, s0
                  slli         s9, s0, 8
406:              sra          a4, a3, a6
407:              andi         a1, t3, -1315
408:              andi         s3, s11, 1844
                  slti         tp, s9, 1839
                  slti         t0, s2, 1797
                  blt          s10, s10, 423f
                  xor          a2, s6, a1
                  add          a0, t4, a6
                  bltu         a7, t1, 419f
                  slti         t0, gp, -1371
                  sll          t2, t6, zero
                  bne          a5, t2, 434f
                  sll          zero, s9, s1
419:              blt          a5, gp, 429f
                  sub          s9, s4, t3
                  add          s1, a5, t3
                  xori         s7, t2, -1526
423:              sub          t6, s0, t4
                  blt          a1, a3, 428f
                  ori          a0, a1, 753
                  bgeu         a6, t4, 446f
                  srl          t3, s1, s2
428:              ori          s2, t0, 1348
429:              xor          sp, a0, s1
                  sll          s10, t3, s8
                  ori          a2, s8, -1155
                  bge          a0, a1, 433f
433:              beq          a2, t4, 434f
434:              and          s4, sp, t1
                  blt          sp, t3, 446f
                  andi         a1, gp, 1423
                  xori         a4, sp, -1027
                  slli         s9, t6, 26
                  bgeu         zero, t5, 445f
                  addi         s8, t6, 1614
                  bgeu         s10, t6, 444f
                  andi         t0, s6, -1962
                  andi         s11, s0, -1092
444:              slti         sp, s5, -240
445:              sll          s10, s11, s4
446:              bgeu         s6, s10, 452f
                  slti         tp, zero, -1423
                  and          gp, a7, s11
                  srai         s7, s10, 10
                  addi         gp, s5, 351
                  or           a1, s9, s5
452:              ori          sp, zero, -213
                  slti         a0, a2, 1731
                  lui          a6, 996135
                  bltu         s6, t2, 459f
                  slti         a3, s8, -399
                  and          s0, t2, s0
                  bge          ra, t4, 477f
459:              auipc        s3, 921001
                  bgeu         s8, a6, 476f
                  slti         ra, s0, -1770
                  nop
                  srli         zero, t5, 4
                  and          t6, tp, s11
                  beq          t5, t1, 482f
                  xori         a2, s0, 1706
                  sltiu        gp, a6, 1602
                  andi         a0, t5, -315
                  bge          tp, gp, 487f
                  slti         t6, s2, -753
                  blt          a4, gp, 481f
                  xor          s11, t0, a0
                  bgeu         zero, t1, 474f
474:              slti         tp, t1, 1170
                  ori          s3, s11, 1750
476:              sra          a3, s6, ra
477:              or           s0, s6, tp
                  auipc        s9, 561046
                  srai         t4, tp, 24
                  auipc        s8, 200105
481:              bgeu         s3, zero, 490f
482:              add          s3, a4, a4
                  bltu         s6, sp, 490f
                  and          s5, ra, s3
                  sltiu        a0, s3, -1223
                  srl          gp, s2, a2
487:              beq          t3, ra, 489f
                  srli         s0, s4, 30
489:              andi         s1, a1, 753
490:              lui          zero, 129248
                  bgeu         s2, a4, 506f
                  add          t5, t2, s8
                  bltu         s11, t0, 502f
                  sll          t0, gp, t2
                  sra          s0, s9, a2
                  ori          a3, a6, 1221
                  auipc        gp, 894925
                  slt          s9, s8, t2
                  sltiu        a6, s0, -980
                  sra          s4, sp, t0
                  bltu         sp, t3, 511f
502:              sub          a5, s2, s11
                  bgeu         s3, s8, 521f
                  xori         a3, s9, -339
                  addi         a2, a7, -760
506:              add          s7, s9, t5
                  and          gp, t5, t2
                  sra          t3, a0, t1
                  sll          t6, s10, t1
                  sub          s11, zero, gp
511:              sub          s5, t4, s0
                  xor          ra, a1, a4
                  andi         s9, s4, 1506
                  srai         a5, a1, 25
                  bltu         s8, tp, 524f
                  sll          s1, s6, s5
                  srl          a4, s4, s7
                  add          gp, gp, ra
                  sltiu        tp, a0, 224
                  addi         t2, a4, 1736
521:              sra          a0, s5, s5
                  sra          a2, s4, t6
                  sltiu        t2, zero, -1727
524:              and          s0, a0, a1
                  sub          s7, s5, s2
                  srl          s8, t5, a7
                  lw           ra, 4(t1)
                  addi         t1, t1, 12
                  sub          s10, zero, s3
772:              addi x11, x1, 1
772:              jalr x11, x11, 0
sub_4:            sll          gp, a1, s4
                  bge          s4, a3, sub_4_stack_p
                  sll          s5, tp, zero
sub_4_stack_p:    addi         t1, t1, -8
                  xor          t3, t0, s7
                  slli         s0, a1, 18
                  sw           ra, 4(t1)
                  ori          a2, a1, 71
                  slti         a1, s11, -1336
sub_4_0:          jal          ra, 16f
0:                jal          ra, 10f
1:                jal          ra, 12f
2:                jal          ra, 17f
3:                jal          ra, 14f
4:                jal          s11, 11f
5:                jal          s8, 4b
6:                jal          ra, 20f
7:                jal          ra, 21f
8:                jal          ra, 5b
9:                jal          ra, 6b
10:               jal          ra, 18f
11:               jal          a2, 15f
12:               jal          ra, 22f
13:               jal          ra, 3b
14:               jal          ra, 9b
15:               jal          ra, 1b
16:               jal          ra, 2b
17:               jal          ra, 19f
18:               jal          ra, 7b
19:               jal          gp, 13b
20:               jal          ra, 0b
21:               jal          ra, 8b
22:               xori         a4, s8, -424
sub_4_1:          jal          ra, 0f
0:                jal          ra, 5f
1:                jal          ra, 8f
2:                jal          ra, 1b
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          a0, 4b
6:                jal          s11, 9f
7:                jal          s0, 6b
8:                jal          ra, 11f
9:                jal          s10, 2b
10:               jal          ra, 3b
11:               or           s7, a0, a3
sub_4_2:          jal          ra, 6f
0:                jal          ra, 7f
1:                jal          ra, 2f
2:                jal          ra, 8f
3:                jal          ra, 0b
4:                jal          t6, 20f
5:                jal          ra, 3b
6:                jal          ra, 15f
7:                jal          ra, 10f
8:                jal          ra, 5b
9:                jal          ra, 4b
10:               jal          sp, 19f
11:               jal          tp, 9b
12:               jal          s5, 16f
13:               jal          ra, 18f
14:               jal          a0, 1b
15:               jal          t0, 17f
16:               jal          ra, 21f
17:               jal          ra, 11b
18:               jal          ra, 12b
19:               jal          ra, 13b
20:               jal          ra, 14b
21:               xor          s8, ra, a2
                  sltu         a2, a3, ra
                  andi         sp, a1, -1242
                  srai         s2, a2, 7
                  blt          t5, a4, 7f
                  bgeu         a5, a2, 7f
                  bgeu         a7, s8, 16f
                  ori          s0, ra, -1415
7:                srai         tp, a3, 12
                  srl          a0, s7, s3
                  srai         s2, a0, 0
                  addi         a5, sp, 1854
                  slt          s7, a2, a4
                  bltu         s9, s9, 18f
                  srl          s5, s10, t4
                  xori         s1, s9, 377
                  bge          a0, s2, 29f
16:               sra          zero, s11, gp
                  addi         s8, sp, -1633
18:               xori         a3, s9, 1487
                  sltu         a1, s3, t5
                  lui          a1, 438756
                  srli         s7, zero, 27
                  lui          tp, 589111
                  bne          s2, t2, 41f
                  bgeu         s7, a6, 35f
                  sub          t5, t6, t6
                  add          t3, t3, s5
                  sra          s9, t6, s9
                  srl          a4, ra, s0
29:               bltu         t3, s9, 39f
                  sll          ra, s7, s7
                  sll          s3, s3, s10
                  bne          t1, sp, 36f
                  srli         a6, s2, 22
                  sra          s4, s1, zero
35:               lui          a1, 862841
36:               slt          t4, t3, s11
                  bge          t2, t6, 56f
                  lui          a1, 377875
39:               add          s5, s0, a0
                  sltu         t0, gp, s2
41:               xori         s8, zero, -446
                  bgeu         a0, s8, 50f
                  auipc        t4, 251475
                  sll          tp, t5, t0
                  bltu         t2, gp, 51f
                  nop
                  or           s8, t1, t2
                  xor          s4, s7, t5
                  auipc        s0, 1006564
50:               slti         a0, zero, 172
51:               nop
                  andi         a4, s7, 591
                  srai         s4, sp, 18
                  and          a6, t3, a4
                  slt          s2, t6, a5
56:               sra          ra, a7, t1
                  sltu         a3, a6, s1
                  sub          a1, s1, a1
                  xor          ra, a3, t6
                  slli         tp, zero, 0
                  slli         zero, s11, 21
                  sltu         a1, s5, a3
                  srai         s3, s2, 6
                  sub          s7, s4, ra
                  add          a3, ra, gp
                  blt          s1, a1, 82f
                  addi         t2, s2, -402
                  addi         s11, a3, 1127
                  auipc        s11, 405026
                  andi         a6, s11, 466
                  bgeu         s1, s8, 78f
                  sltiu        a0, s8, 226
                  and          a2, s6, s10
                  and          a6, ra, t6
                  and          t2, a5, a1
                  nop
                  beq          a3, t4, 88f
78:               sltu         s11, s10, a5
                  slti         s2, s9, 889
                  slli         a4, t6, 5
                  andi         ra, s2, -1396
82:               bltu         s8, a7, 99f
                  lui          s9, 788021
                  srai         s10, sp, 24
                  slti         s1, s0, 2036
                  sltiu        t4, t5, 1425
                  bltu         s8, s1, 94f
88:               bne          t2, a0, 91f
                  sll          a1, t5, t6
                  andi         s4, zero, 628
91:               sltiu        s4, t1, 695
                  xor          a2, s9, a5
                  blt          a7, t6, 104f
94:               bne          a1, zero, 112f
                  xori         s1, a0, -109
                  srai         a3, s0, 26
                  bgeu         a1, ra, 99f
                  slti         t0, s3, -111
99:               ori          s0, a2, 1206
                  sll          a4, a0, s11
                  sltu         t4, tp, s4
                  sub          t4, ra, t3
                  addi         a5, s9, -1389
104:              xori         t3, t2, -572
                  bgeu         a5, t2, 122f
                  srai         s8, t0, 23
                  add          t2, t6, a3
                  slli         a1, a6, 14
                  xori         s8, a4, 1142
                  sub          t4, s0, s2
                  auipc        s2, 416720
112:              srai         a5, zero, 17
                  nop
                  add          s5, tp, zero
                  bge          s6, s7, 127f
                  bltu         t2, s8, 122f
                  ori          s7, s11, 505
                  srl          s10, sp, t3
                  slt          tp, s4, t4
                  lui          s9, 790054
                  andi         s7, s0, -872
122:              sub          a3, s7, t4
                  xor          a5, a3, s10
                  beq          gp, s3, 141f
                  bge          t4, t2, 139f
                  auipc        a5, 343185
127:              lui          gp, 259900
                  beq          a4, a5, 136f
                  srli         s11, s9, 24
                  bltu         t5, tp, 133f
                  sltu         t3, s9, s3
                  bgeu         s7, s1, 135f
133:              xori         s4, s3, -1421
                  nop
135:              auipc        zero, 874371
136:              blt          s1, t4, 151f
                  sltu         s1, a2, a0
                  xori         s7, t4, 1835
139:              andi         s8, a1, -1186
                  xor          a6, t0, zero
141:              xor          s8, s5, tp
                  xori         a3, s3, 663
                  addi         t3, s4, -1941
                  ori          t3, t1, -1268
                  slt          sp, a0, s10
                  bgeu         a3, a5, 149f
                  bge          zero, a1, 151f
                  slt          gp, a5, gp
149:              srli         s2, t3, 1
                  add          t0, s2, t0
151:              slli         t5, a3, 6
                  lw           ra, 4(t1)
                  srl          s2, t3, s0
                  addi         s5, ra, -908
                  add          s7, a1, t6
                  addi         t1, t1, 8
                  addi         t5, s11, -1688
227:              addi x7, x1, 1
227:              jalr x7, x7, 0
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
.word 0xd48346c3, 0xdf190116, 0xbaf270e8, 0xdb97b4a3, 0x985e3486, 0xd625cb0b, 0x48c850bb, 0xafabc157
.word 0xd3457fc9, 0x335941a2, 0xa4e2da8a, 0x8b6c36b0, 0xb8f6d41b, 0xe58beb76, 0xbd120e07, 0x68a25054
.word 0xf8fba1ab, 0xeb5ba14f, 0x91b9de11, 0xecf7b751, 0x80528586, 0xfdb5c08b, 0xb5d0b3a3, 0x8b61e7f7
.word 0xd193f7de, 0x069a669e, 0x3e75d349, 0xd18fa4bd, 0xabaa22df, 0xfba387dd, 0xf7d88adf, 0x2e25e5f3
.word 0x8c1df1d5, 0x0e5a7e3b, 0x54b721be, 0x4f34d5c4, 0xa610c033, 0x6691a2b0, 0xf356ce6e, 0x9f325e8f
.word 0xc83528fe, 0xc906eae2, 0x4639b805, 0xaa465a56, 0xbcd9d1f5, 0x4151c66f, 0x7fc414ad, 0x514e1c0a
.word 0x20834a65, 0x248f46c9, 0xd5594a07, 0xf92b1c03, 0xd47cc380, 0x3469fc05, 0x4989b752, 0xd7d2246b
.word 0xce8fe76e, 0xa3e845bc, 0xa28e9fbb, 0x70c660cd, 0x47a5f620, 0x78ca74f4, 0x6e84f707, 0xf362a2dd
.word 0xe5405a6c, 0x33f140f8, 0x33044f6a, 0x038cb080, 0xc8377a70, 0xf457af31, 0x02698ba7, 0x6ca0be8a
.word 0x73c373a9, 0x19d61c29, 0x5fdc4348, 0x7ff2300c, 0x8c803577, 0xf4c39463, 0xa21ae30b, 0x25dd9646
.word 0x3a9822a3, 0x1682d616, 0xc84767d5, 0x681c8b9b, 0x82759416, 0x84a3f4f3, 0x19c8059f, 0x5f9e4562
.word 0x4f184e4e, 0xd5709218, 0xdb0a02da, 0x27265c93, 0x7bd3848c, 0x3177149a, 0x6877a264, 0x8d3ea2e0
.word 0x52c46a9f, 0x631819c0, 0x9e2993c7, 0x4c97fcfe, 0x018e8936, 0x3e10a732, 0x7c46b9bf, 0xa0863cad
.word 0xeb1a61e9, 0x1af6a320, 0x73a47abb, 0x475323c1, 0x6e479a1f, 0xb9d8e1e0, 0xbcad164b, 0x2f2cd5ae
.word 0x994e6bf2, 0x5005f5ea, 0x797e921b, 0xe9477a7b, 0xbc2c39fe, 0xc0328d71, 0xbbcd57f8, 0x0ea9e35b
.word 0x63813424, 0x48569f0f, 0xfaf4ca9f, 0xff9b2f69, 0xc53e11d2, 0xe9b4b410, 0xc087e64d, 0xe9eec26c
.word 0x92e6bed1, 0x89b1fadf, 0xf4bd8259, 0xd7fdbb44, 0xd6b62edb, 0xd7a4e319, 0xb346a558, 0x5e06ff83
.word 0xc002fea8, 0xd614e880, 0xe6995cfb, 0x2a1a401a, 0x1fde75ba, 0xa0cd1241, 0x294f90b4, 0xca646ef2
.word 0xce0bb1ca, 0x653839db, 0xf1170644, 0xbad25966, 0x85094402, 0x40a96099, 0xd9e5acf7, 0xa693890e
.word 0xf30e08f7, 0x7a9eaa10, 0x19cb0b63, 0x12cde2b4, 0x804fd15b, 0x058d9ca5, 0x82b3df43, 0xdda70a9b
.word 0x68764deb, 0x40b58fc8, 0x688ed90b, 0xc3399ce5, 0xa9ccc65c, 0x01980365, 0xddee6b29, 0x626f05ba
.word 0x3310b86a, 0x1dc2efb2, 0x7b373d81, 0x6d0e01ca, 0x1f7e2616, 0x30dfde94, 0x204c02ab, 0x7bc1e104
.word 0x61ebe8fd, 0x539c142d, 0x30b7e822, 0x29c521ca, 0xc5e31498, 0x457d6cde, 0x12ef5b3d, 0x01e329ad
.word 0xbb140abb, 0xe9d45256, 0x22f24aa9, 0x4ffd6826, 0x6d4a9717, 0xfa160ed4, 0x2ad79600, 0xff8c9e8d
.word 0x90aebe28, 0xc43d2f78, 0xf8a6f397, 0x7e1a4629, 0x9766d761, 0xf820ac44, 0x003df7bb, 0x5b4b1ccd
.word 0x7d0afbd1, 0xfaf21ba8, 0xe8fc24e6, 0xdde259c1, 0x52bce46a, 0xe71b73f3, 0x0b3406e1, 0xde368a22
.word 0x67a43ccd, 0x51049886, 0xf1b3fc47, 0x24aaa465, 0xfa3b0389, 0xdd9977d4, 0x6cae3ede, 0xa44169c8
.word 0x97d823ea, 0xdf6f44b9, 0xd82b2434, 0x09893781, 0xdb75af14, 0xd31e391b, 0xf9617ea6, 0x37df6e87
.word 0x9437393b, 0x550547a8, 0x9f2e1eea, 0x78ff2a7b, 0xb39a5ca5, 0x14ae05a5, 0xb0ed2b45, 0xbf3d4b0c
.word 0xc31192da, 0x0ad0748c, 0x136200a1, 0x36a22783, 0x78a08d15, 0x863447b5, 0x353eb027, 0xe0d61aa9
.word 0xc57a0572, 0xe24d7174, 0x31355f17, 0x88c45c61, 0xff20cf7c, 0xfab41726, 0x53c9bb1c, 0xa0866b7a
.word 0xaf1f177c, 0xb15cbff9, 0x7dd8039c, 0x3f1e10b8, 0x7d25a68b, 0xc7176580, 0x4e6781f8, 0xf2e16cd3
.word 0xf14218f4, 0x07326429, 0x7d007d28, 0xeec968b0, 0x33bb86e3, 0x1a187125, 0xe338ac61, 0xa69835e1
.word 0xddcaafe5, 0xdbcc0b20, 0x3c4d3cf6, 0x82ee4898, 0xc6ff5fe1, 0xb296c904, 0x4d90bb89, 0xd5caa908
.word 0x69e15c5a, 0xd9e79f14, 0x203b2063, 0x8fc685ff, 0x384cee45, 0x12726cdd, 0x6953aaca, 0x77df4fe9
.word 0xec47fd64, 0x54e11847, 0x9ecefef8, 0x862e3979, 0x22b2c34b, 0x24383d90, 0x77949a66, 0xe0bc0f3e
.word 0x9da2a7d2, 0xb50810df, 0x27fe86ac, 0xd0446da0, 0x1187107d, 0x80e4c10a, 0xc44c90c3, 0x92b1bf89
.word 0xc296fb18, 0xcf39fa9d, 0xb624ce93, 0x7054f69b, 0x9e125cfd, 0x89b9a876, 0x9932253f, 0x2037f4f6
.word 0xa338c916, 0x4d705942, 0xf701c682, 0xf753a7ae, 0x9da7b92b, 0x416e49b7, 0x77a12f8d, 0xdb864a7a
.word 0xbec48773, 0x38264166, 0x6e1082d0, 0x62593e7b, 0xbe9557ce, 0xf99503dd, 0x1cab81d1, 0xfbe5c98f
.word 0xa216d803, 0x34ca4a30, 0x77c556e6, 0xd7ed6835, 0x2d4b80bd, 0xaff4c914, 0x6b1e65e6, 0xa145e7da
.word 0xd63810ce, 0x126c5e37, 0xb20e4fa3, 0xef7883b3, 0x644007f2, 0x7d1dce6f, 0x1a7d7851, 0x4697847a
.word 0x5fecf4bb, 0x2b5f67b4, 0x69de139e, 0x74eeb66f, 0xfe2f8bbc, 0xad7462b3, 0xfc8904ab, 0x86e2d23b
.word 0xbba2eb0f, 0x9be5c719, 0xfccaebb0, 0x473e59c2, 0x809a2cdc, 0xda80657c, 0xa6cb7644, 0xa56b050c
.word 0xb7aab118, 0x4233878b, 0x0a02aab1, 0x6f9da274, 0xbf300364, 0xdb2e4f36, 0x97f157a5, 0xcdb42de9
.word 0xb34311d6, 0x9f781a43, 0x66cf176a, 0xdaf60b32, 0x1fd67bbc, 0x413036a5, 0x87a08ddb, 0xb962de59
.word 0x583d3264, 0x7844b5fa, 0xab16b3d3, 0x4788cc7b, 0xc4cc8859, 0x243e71e3, 0x5f5484ed, 0xe372aee7
.word 0x2d31097d, 0x3a070f68, 0xad880be4, 0x1ee589bd, 0x3aedf20e, 0xaca15c98, 0x8cb7db5c, 0x5d3ec5ab
.word 0x2f91b8cf, 0x3ffc8eff, 0xacefebf9, 0x8055f67d, 0x677f81d9, 0x065abbaf, 0x71c8ee6f, 0xcb794dd5
.word 0xf51d634c, 0x80bc85a9, 0xd8439fa7, 0x8d6c53b8, 0x2a86557f, 0x8f9cf1e2, 0xa45f5ed5, 0x869fa4bb
.word 0x3f8ab3ce, 0x6cc6cd3e, 0x8d5ab2c1, 0xbb367476, 0xd40ad4af, 0x98b51215, 0xd90f1b30, 0xcafa4da3
.word 0xc7beb848, 0x938e290a, 0x786eb731, 0x2b883aea, 0xe05e250f, 0xfe063584, 0x63cd9c16, 0x9dbe0280
.word 0x2d5e126c, 0x9eda27df, 0x3d74c97d, 0x65d76aa3, 0x8335407c, 0x7c262d15, 0xb0c923d4, 0x1c5002e3
.word 0xc3a10309, 0x03864cf8, 0x72f96559, 0xd175f485, 0x5c40e6ad, 0x61eb5f01, 0x6b40f008, 0x3af73dc7
.word 0xf46d677a, 0x2fd1be7f, 0xb004552f, 0xe11df8ad, 0x00219296, 0xf7ce4f99, 0xadc14cce, 0xd65f4f07
.word 0x0fe04026, 0x120af140, 0x410c958f, 0xd6103ca5, 0xd12caf4f, 0x1e5d7329, 0xec8d7267, 0xd3e440e6
.word 0x9e385254, 0xe595f554, 0xaad3d85f, 0x4a13bad0, 0xe5b5ea33, 0xb1367137, 0x280d2e4a, 0x3e572a17
.word 0x8fc80e55, 0x48734acc, 0xd9c14678, 0x1884b9a1, 0x2fd207d2, 0xdcd0c419, 0x7cf434ea, 0x58f924cb
.word 0xf72cf304, 0xdbe94ec0, 0x949c8eab, 0xf6d12209, 0xcbf616a9, 0xdb2be5a8, 0xecc6f25f, 0x6a8b30f2
.word 0x6701bd68, 0xde01e4bc, 0xdf0a4dad, 0xd7faf181, 0x75572e0a, 0xdd23899b, 0x20c54c92, 0x9684817c
.word 0xf19e4334, 0x33da8a70, 0xa11fb5d1, 0x8945695a, 0xa31f041e, 0x6e701ee4, 0xd1552d12, 0x1456f13b
.word 0xa5375b99, 0x75ca0085, 0x5dce5fb0, 0x188bb383, 0x05140e68, 0xaab8a420, 0x6bc07724, 0x929e35a5
.word 0xdda4ec08, 0xcf46a419, 0x3e2c2ee3, 0x61b0c157
.section .region_1,"aw",@progbits;
region_1:
.word 0x501e9443, 0x84d975b7, 0x7f4aef5f, 0x880a204f, 0x3fdee75a, 0x2676c4fa, 0x7a0cbe37, 0xa0c51964
.word 0x1cec2b1e, 0x6ce4385e, 0x06d09bf1, 0x03632a59, 0xcba25cf1, 0xd69769f7, 0x1e640473, 0x59c2cdfd
.word 0xa60e027d, 0xdb3f62bd, 0x111813e7, 0x104c6cac, 0xee8515bb, 0x2be4abff, 0x8dda3418, 0x5dba8b2e
.word 0x8e08bd1a, 0x38f90dab, 0x837fad39, 0x746c1d3a, 0xb03e7289, 0xbfbd7895, 0xf47b6879, 0xacd63b72
.word 0x6c1a64bc, 0x0b6584e3, 0x12dc4e35, 0x05098ffe, 0x9ef740d4, 0x6eebd8fb, 0x71682c8b, 0x44b69e79
.word 0x42b3ea04, 0x5ae8eab3, 0x126188b7, 0x2fab4239, 0xeabc6c48, 0x6d035aef, 0x9064dde4, 0x782b937e
.word 0x46f29d5a, 0x9276ad0b, 0x70660cca, 0x58f1596d, 0xe3401c5f, 0xc3f6553a, 0x376c9972, 0x945ae939
.word 0x8fcf791d, 0xe5a6889f, 0xbd8049e8, 0x6e54a761, 0x3e7aec76, 0x174ea443, 0x800022af, 0xcec140d9
.word 0x3ff9b5fb, 0x559fb3f8, 0x0b3cb3c4, 0xc3921d21, 0xbfb7ac2f, 0xc8a78b0b, 0x794ddc22, 0x348e2afb
.word 0xdcb12979, 0xeacd9e8f, 0x38bab667, 0xe59129a4, 0x17c9f7ba, 0x8c7ade98, 0xda0bb111, 0x24fca90b
.word 0x0cd4483e, 0xce9b9d40, 0x0d08a81e, 0x07088d45, 0x37e3fa87, 0x417f6f53, 0xa4aef36e, 0x0da14d6f
.word 0x35698467, 0xc9e283a9, 0x155ce6aa, 0x2e19bd3b, 0xd48c00b4, 0x050011a3, 0x80961ed4, 0x73d1aca6
.word 0xb5b9dbe4, 0xba713546, 0x2d548472, 0xb658aacb, 0x453a923f, 0xd3eb776f, 0x4b59b320, 0xc54b0f90
.word 0x6a1d142a, 0x72ef2fb0, 0x158e842d, 0x8d0ac8ee, 0x053bd4e6, 0x709ea45f, 0x03beb380, 0x85e29c04
.word 0x82286a6d, 0xd61152a1, 0x4df7a301, 0x8f858b0b, 0x25384190, 0xfbafcfdd, 0xd74aad15, 0x2027257b
.word 0x5f474a32, 0x2d673b4f, 0xf26e5ac0, 0x58ea97bf, 0x54e1a2f3, 0x68016bf9, 0x6e85d524, 0x0f4ca40e
.word 0xc6898c29, 0x6d9b8495, 0x4a765ae5, 0xe696504d, 0x2cbc62d3, 0x1d7d0e5e, 0x8fb68dd4, 0x86003276
.word 0xe2c40016, 0x7fa2dceb, 0x5d1c6b19, 0xbc1d842d, 0x52d8f703, 0xf97ff6e6, 0x0fac63a0, 0x581aea96
.word 0xef79742d, 0x5ed2e49c, 0x3a10d5df, 0x8172433c, 0x6a424d53, 0x4414ef52, 0xf730126d, 0x3569463d
.word 0xb3cd913d, 0xfb504b09, 0x433a41fc, 0xb346d4fd, 0x8e458eef, 0xb8e0652e, 0x6732fb32, 0x60be8856
.word 0x6ca45244, 0x7695f34b, 0xfdb82100, 0xa07d3a9c, 0x2ae77a2a, 0x451bfea9, 0x984d35d9, 0xa9f4af09
.word 0x3ff9e3c1, 0xd6c3808d, 0xcdbad3d9, 0xc9292f9b, 0xd1a9f555, 0xae243985, 0x3ea9aa2a, 0x3950172e
.word 0xbb97d87b, 0x734700a6, 0x9aec7c42, 0xf55dd754, 0xef5a81d0, 0x1cd8b66d, 0x98d6f6f5, 0x27741e23
.word 0x51c21232, 0x68957a12, 0x44112e1f, 0xc92e1307, 0x1bd4b4c0, 0x1f97d84e, 0x918fb718, 0xcc34d1de
.word 0x1409f8a8, 0x89fa37b0, 0xbf6bead3, 0xa1451dac, 0xf5233797, 0x92062b05, 0x708d5b80, 0xf95d7734
.word 0xd187039b, 0xfcdbdc10, 0xc14f1092, 0x2adcacb4, 0x9efc1bf5, 0x49545c68, 0x638e0d20, 0x8c09c6dc
.word 0x601872e6, 0x9161627d, 0xf8344ecf, 0x5c592702, 0x5beba770, 0xe213c22d, 0xd9cf6722, 0xac9f1324
.word 0x1052a81f, 0x4d16db62, 0xd883772e, 0x5d4feff5, 0xce3961b1, 0xaf4555b8, 0x72c99e0c, 0x8fdc3f75
.word 0xcdd132e1, 0x6b2f18cd, 0xdc13a7f9, 0xbcf734e3, 0x42cd92df, 0x570bdbda, 0x1867961a, 0x4a9ba1d7
.word 0x18ce14ee, 0xd05ac049, 0x8fdd0b8d, 0xdbe2068b, 0x80c9f5f9, 0xf2778317, 0x595b3fb7, 0x0ef1016c
.word 0x0ab47f9c, 0xa82b72d2, 0x8d6f792e, 0x0c504091, 0x940901e0, 0x140423b5, 0x819e20f2, 0x9d968a63
.word 0xe03f9c6d, 0xeebad178, 0x9f926506, 0xdb9f27c9, 0x2ab1530e, 0x41749247, 0x8b9e23a7, 0x05e30401
.word 0xf1f39dcf, 0x576bda85, 0x816dd529, 0x1ebb916c, 0x1b348480, 0x1785a3e3, 0xec03141d, 0xcca6f2eb
.word 0x2d29a32e, 0x7896a268, 0x8c40b1a0, 0x8f01bc93, 0x67a1af10, 0x9503b95a, 0xf13b8cf8, 0x69e12c59
.word 0xd187365c, 0x52820081, 0x1d2520fa, 0xe3703e14, 0xaac7645f, 0x24f61a75, 0x955e7100, 0x557919b3
.word 0x5f6c3b80, 0xfc07557e, 0x8868710f, 0xde8e5b8d, 0xd93498d5, 0xb0aa64c2, 0xf7f8b16d, 0x1b0755c1
.word 0x66b25622, 0x62f90d12, 0x35e5bb92, 0x291bfee4, 0x8491049d, 0x153bb52a, 0x4e1e9d4f, 0x375dd48e
.word 0x1dc54b6e, 0x896bf823, 0x4f2ae6ba, 0xf9829e60, 0x425d4e1c, 0xb7267dd2, 0x8fdaab79, 0xad5e29d8
.word 0x8a1b1bb1, 0xe412342a, 0xb9461465, 0x8731481a, 0x5f3b2676, 0x3f574cc4, 0x7ceebcf1, 0x7303a6cc
.word 0x1f27eb44, 0x9eb04974, 0xb9fc291b, 0x8b8ca8e8, 0x067a313f, 0x4abb0bd6, 0x8ef6bca6, 0x6da9f499
.word 0xb22e796d, 0x6e30547f, 0x4c4ba39f, 0xd2822211, 0x39f36709, 0x292d7034, 0x3ef76f11, 0x1a999017
.word 0xb7052990, 0x743e0618, 0xab0059c9, 0x1e4c935a, 0xe854b519, 0x72e9c731, 0x0d0d6e93, 0xd3389ec9
.word 0x3b383f87, 0x9c0fcbee, 0xd536c013, 0xe130f7b6, 0xf66344bf, 0xda563af8, 0x917b0053, 0x7988ac15
.word 0xad97d528, 0xe243dc3c, 0xa150af9a, 0x34fc0b96, 0xa3c82cbe, 0x021f8ff7, 0x679d2390, 0x318c53bc
.word 0xf147e5b7, 0xe9bf2e00, 0xf7dc8e2b, 0x68fbbebc, 0x268db596, 0x219e525c, 0x994ec93d, 0xac52e109
.word 0x7429faf1, 0x18055e37, 0x09817948, 0xbed5ce57, 0xba8a1a98, 0xe7f2afd0, 0x72a362e0, 0x647bbc47
.word 0xdfe2d169, 0xcad75fa6, 0x90bf552d, 0x84c6978e, 0x6392290f, 0xdaadcf25, 0xf457069d, 0x43f33a2e
.word 0x6dc88d0a, 0xad75e29f, 0x3b245edf, 0x3dc3de81, 0x75f6a57f, 0x0aa738f5, 0x855f17a5, 0x16192d5e
.word 0x5ca9106d, 0x53bc897a, 0x19bef8e0, 0x8668508c, 0x227b8dd0, 0xbf2dacd6, 0xad0cbb53, 0x57eb8e34
.word 0xe459be85, 0x0e4f2d48, 0x18858b73, 0xc8e1dbca, 0xedd68399, 0x30bdcc1b, 0x13a9030f, 0x2d4c50e1
.word 0xa437d032, 0x733dc377, 0xc8b3bcb3, 0x56e15d9a, 0x2c3b1702, 0x60cdc1cb, 0x912a399c, 0x58adf38e
.word 0xe8f1ec92, 0xadcee544, 0x6bad6f9d, 0x96bcefba, 0x3136ce38, 0x4d4fbb21, 0xa54227a3, 0x3a7b3239
.word 0x10c809c6, 0x2afb4e88, 0x9711c529, 0x5cbcaf43, 0x27b3d656, 0x66855753, 0x91eb8cfd, 0x6e2aa99b
.word 0x84119c6e, 0x6d2a3562, 0xc9de3e69, 0xa9c62a03, 0x8d5e6d3a, 0x6ed99de9, 0xf5d70e4c, 0x63f3781a
.word 0x5a5ede56, 0xb613216a, 0x5e5acb05, 0x4bd0ff86, 0x45579f99, 0xee5b624c, 0xa70723cd, 0x1abe407d
.word 0xd2f3c4f5, 0x45b6db4d, 0x17db49f1, 0xa296edfb, 0x14985142, 0xb3a98956, 0x4cc9c2d9, 0x4a4b92a7
.word 0x28cfbd07, 0xaf1eced7, 0xfc897000, 0x7829fd5d, 0x15d40cd5, 0x5fad18c9, 0xdaf65ae9, 0xc86bdefa
.word 0x27b58ff6, 0xd4b09dff, 0x7ccd5f12, 0x5d3509cf, 0x984cac4a, 0x58abea17, 0x74454f9f, 0xa60122c5
.word 0x7c92afa8, 0xc83bacfd, 0x9551f752, 0x64b3e776, 0x8b4db1f6, 0x512ccac4, 0x1f499648, 0x0ccfa58c
.word 0xd449ff84, 0x4f97b35f, 0x3e3940b6, 0xb5f9d5b4, 0xc6d1e6c9, 0x22a51205, 0xdd9a19a6, 0xae97fb40
.word 0xe1e2d27f, 0x6468e313, 0xbf0224ba, 0x42fff921, 0x47c88b8d, 0x5bd8ed22, 0x1d8da71c, 0xbca85a85
.word 0xd9aff841, 0x8a901fc5, 0x9d15c79d, 0xcec72dfc, 0x1c749001, 0xc529ed2e, 0x39363c94, 0x00ddbe6a
.word 0x42045d86, 0x6a00854b, 0x18ef91ff, 0xad9743cc
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_2:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_3:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_4:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_5:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_6:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_7:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_8:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_9:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_10:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_11:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_12:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_13:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_14:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_15:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x16, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x16, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x16, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x16, x10, ecall_handler
                  li x10, 0x1
                  beq x16, x10, instr_fault_handler
                  li x10, 0x5
                  beq x16, x10, load_fault_handler
                  li x10, 0x7
                  beq x16, x10, store_fault_handler
                  li x10, 0xc
                  beq x16, x10, pt_fault_handler
                  li x10, 0xd
                  beq x16, x10, pt_fault_handler
                  li x10, 0xf
                  beq x16, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
