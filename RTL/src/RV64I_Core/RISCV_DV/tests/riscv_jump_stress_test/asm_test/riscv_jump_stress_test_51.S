.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xf25d94df
                  li x5, 0xf7e93914
                  li x6, 0xf0278346
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x2f74620f
                  li x10, 0xb
                  li x11, 0x61b95178
                  li x12, 0x0
                  li x13, 0xff16c310
                  li x14, 0x80000000
                  li x15, 0x816bd1c3
                  li x16, 0xf081c92b
                  li x18, 0xc
                  li x19, 0x325e1cad
                  li x20, 0xf1df417e
                  li x21, 0x8b7b91c2
                  li x22, 0xfaf690b1
                  li x23, 0x80000000
                  li x24, 0xa
                  li x25, 0x0
                  li x26, 0xcda0dffc
                  li x27, 0x80000000
                  li x28, 0x21d0871a
                  li x29, 0x80000000
                  li x30, 0x80000000
                  la x17, user_stack_end
main:             jal          t1, 9f
0:                jal          ra, 1f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          sp, 6f
4:                jal          s4, 11f
5:                jal          ra, 2b
6:                jal          t1, 5b
7:                jal          t1, 8f
8:                jal          sp, 4b
9:                jal          sp, 0b
10:               jal          t5, 12f
11:               jal          t1, 10b
12:               slli         t4, s0, 4
main_10:          jal          t1, 24f
0:                jal          gp, 22f
1:                jal          t1, 20f
2:                jal          t1, 5f
3:                jal          t1, 13f
4:                jal          t1, 21f
5:                jal          ra, 25f
6:                jal          gp, 11f
7:                jal          gp, 12f
8:                jal          t0, 7b
9:                jal          ra, 19f
10:               jal          ra, 8b
11:               jal          t4, 15f
12:               jal          ra, 6b
13:               jal          ra, 26f
14:               jal          ra, 27f
15:               jal          ra, 0b
16:               jal          s4, 17f
17:               jal          t1, 10b
18:               jal          ra, 2b
19:               jal          ra, 18b
20:               jal          t1, 23f
21:               jal          t1, 16b
22:               jal          ra, 3b
23:               jal          ra, 4b
24:               jal          ra, 9b
25:               jal          ra, 1b
26:               jal          ra, 14b
27:               and          sp, s0, zero
main_19:          jal          t1, 3f
0:                jal          s3, 8f
1:                jal          t1, 6f
2:                jal          ra, 4f
3:                jal          t1, 1b
4:                jal          tp, 13f
5:                jal          ra, 12f
6:                jal          t1, 0b
7:                jal          ra, 11f
8:                jal          ra, 10f
9:                jal          s5, 2b
10:               jal          ra, 9b
11:               jal          ra, 14f
12:               jal          ra, 7b
13:               jal          ra, 5b
14:               slt          ra, s0, a0
main_7:           jal          t1, 16f
0:                jal          s4, 6f
1:                jal          ra, 20f
2:                jal          t1, 14f
3:                jal          t1, 13f
4:                jal          t1, 17f
5:                jal          a5, 7f
6:                jal          ra, 1b
7:                jal          s5, 2b
8:                jal          sp, 9f
9:                jal          ra, 3b
10:               jal          ra, 23f
11:               jal          gp, 19f
12:               jal          sp, 0b
13:               jal          ra, 22f
14:               jal          ra, 12b
15:               jal          ra, 11b
16:               jal          ra, 18f
17:               jal          ra, 15b
18:               jal          a5, 5b
19:               jal          s6, 10b
20:               jal          t1, 21f
21:               jal          t0, 8b
22:               jal          ra, 4b
23:               auipc        s5, 918887
main_22:          jal          t1, 13f
0:                jal          s2, 9f
1:                jal          ra, 17f
2:                jal          ra, 1b
3:                jal          t1, 20f
4:                jal          a5, 12f
5:                jal          ra, 8f
6:                jal          t3, 11f
7:                jal          ra, 2b
8:                jal          ra, 16f
9:                jal          ra, 3b
10:               jal          t1, 19f
11:               jal          tp, 7b
12:               jal          t1, 10b
13:               jal          a5, 15f
14:               jal          a1, 5b
15:               jal          t1, 6b
16:               jal          t4, 18f
17:               jal          ra, 4b
18:               jal          s5, 0b
19:               jal          ra, 14b
20:               srli         s5, a3, 18
main_2:           jal          t1, 14f
0:                jal          ra, 9f
1:                jal          t5, 12f
2:                jal          ra, 3f
3:                jal          t1, 8f
4:                jal          t3, 0b
5:                jal          ra, 17f
6:                jal          ra, 15f
7:                jal          sp, 10f
8:                jal          tp, 5b
9:                jal          t1, 19f
10:               jal          t1, 11f
11:               jal          ra, 18f
12:               jal          ra, 13f
13:               jal          sp, 7b
14:               jal          ra, 2b
15:               jal          s9, 4b
16:               jal          sp, 6b
17:               jal          ra, 1b
18:               jal          ra, 16b
19:               andi         tp, a2, -401
main_6:           jal          t1, 2f
0:                jal          s2, 9f
1:                jal          t1, 5f
2:                jal          t1, 7f
3:                jal          ra, 12f
4:                jal          t0, 3b
5:                jal          ra, 10f
6:                jal          t4, 18f
7:                jal          ra, 17f
8:                jal          a4, 1b
9:                jal          t1, 13f
10:               jal          ra, 4b
11:               jal          ra, 6b
12:               jal          t1, 14f
13:               jal          a1, 11b
14:               jal          t1, 15f
15:               jal          t1, 16f
16:               jal          ra, 0b
17:               jal          ra, 8b
18:               or           t5, s2, t6
main_18:          jal          t1, 10f
0:                jal          ra, 19f
1:                jal          tp, 27f
2:                jal          s6, 6f
3:                jal          ra, 5f
4:                jal          ra, 11f
5:                jal          ra, 13f
6:                jal          ra, 8f
7:                jal          s2, 4b
8:                jal          ra, 21f
9:                jal          t1, 28f
10:               jal          tp, 24f
11:               jal          a4, 17f
12:               jal          ra, 14f
13:               jal          ra, 1b
14:               jal          tp, 26f
15:               jal          ra, 25f
16:               jal          a5, 23f
17:               jal          sp, 3b
18:               jal          s6, 7b
19:               jal          ra, 22f
20:               jal          t1, 2b
21:               jal          sp, 12b
22:               jal          ra, 16b
23:               jal          t1, 20b
24:               jal          t1, 18b
25:               jal          ra, 0b
26:               jal          t1, 9b
27:               jal          t1, 15b
28:               nop
main_11:          jal          t1, 13f
0:                jal          t3, 2f
1:                jal          gp, 8f
2:                jal          tp, 7f
3:                jal          ra, 9f
4:                jal          ra, 10f
5:                jal          t1, 1b
6:                jal          ra, 12f
7:                jal          t1, 6b
8:                jal          ra, 14f
9:                jal          ra, 5b
10:               jal          ra, 0b
11:               jal          t1, 3b
12:               jal          ra, 11b
13:               jal          s8, 4b
14:               add          zero, t6, s0
main_23:          jal          t1, 0f
0:                jal          ra, 13f
1:                jal          s6, 5f
2:                jal          t5, 11f
3:                jal          ra, 8f
4:                jal          ra, 1b
5:                jal          s5, 2b
6:                jal          ra, 12f
7:                jal          t1, 3b
8:                jal          ra, 14f
9:                jal          t4, 7b
10:               jal          ra, 6b
11:               jal          t1, 10b
12:               jal          ra, 17f
13:               jal          ra, 15f
14:               jal          ra, 16f
15:               jal          t1, 9b
16:               jal          s8, 4b
17:               xori         t3, s8, 1050
main_20:          jal          t1, 18f
0:                jal          ra, 1f
1:                jal          t0, 25f
2:                jal          ra, 23f
3:                jal          ra, 0b
4:                jal          ra, 22f
5:                jal          a1, 9f
6:                jal          ra, 14f
7:                jal          a4, 4b
8:                jal          sp, 2b
9:                jal          a2, 3b
10:               jal          gp, 11f
11:               jal          a2, 6b
12:               jal          ra, 7b
13:               jal          ra, 16f
14:               jal          t2, 21f
15:               jal          ra, 27f
16:               jal          tp, 17f
17:               jal          ra, 26f
18:               jal          ra, 13b
19:               jal          sp, 15b
20:               jal          ra, 24f
21:               jal          ra, 19b
22:               jal          a4, 20b
23:               jal          s5, 10b
24:               jal          ra, 5b
25:               jal          t1, 8b
26:               jal          t5, 12b
27:               slti         s8, s5, 1410
main_4:           jal          t1, 25f
0:                jal          t1, 12f
1:                jal          t1, 10f
2:                jal          gp, 13f
3:                jal          s11, 6f
4:                jal          t1, 20f
5:                jal          ra, 23f
6:                jal          ra, 17f
7:                jal          ra, 27f
8:                jal          t2, 29f
9:                jal          sp, 7b
10:               jal          ra, 8b
11:               jal          a2, 26f
12:               jal          ra, 18f
13:               jal          t1, 9b
14:               jal          t0, 16f
15:               jal          s0, 4b
16:               jal          sp, 24f
17:               jal          ra, 28f
18:               jal          t4, 2b
19:               jal          t0, 21f
20:               jal          ra, 0b
21:               jal          ra, 5b
22:               jal          s0, 1b
23:               jal          s1, 15b
24:               jal          a2, 19b
25:               jal          ra, 3b
26:               jal          t1, 14b
27:               jal          ra, 22b
28:               jal          t1, 11b
29:               nop
main_13:          jal          t1, 8f
0:                jal          ra, 12f
1:                jal          t0, 19f
2:                jal          ra, 14f
3:                jal          s6, 15f
4:                jal          s8, 7f
5:                jal          a5, 3b
6:                jal          ra, 16f
7:                jal          a0, 9f
8:                jal          t1, 6b
9:                jal          sp, 2b
10:               jal          ra, 0b
11:               jal          s4, 13f
12:               jal          ra, 17f
13:               jal          t1, 5b
14:               jal          t1, 18f
15:               jal          t1, 10b
16:               jal          ra, 11b
17:               jal          s7, 4b
18:               jal          ra, 1b
19:               xori         a0, a4, 1063
main_17:          jal          t1, 9f
0:                jal          s2, 1f
1:                jal          t1, 3f
2:                jal          gp, 6f
3:                jal          ra, 7f
4:                jal          s4, 2b
5:                jal          ra, 0b
6:                jal          ra, 5b
7:                jal          t1, 8f
8:                jal          t1, 10f
9:                jal          sp, 4b
10:               add          gp, s11, t4
main_21:          jal          t1, 24f
0:                jal          t1, 17f
1:                jal          gp, 9f
2:                jal          ra, 10f
3:                jal          ra, 18f
4:                jal          ra, 0b
5:                jal          t0, 7f
6:                jal          ra, 20f
7:                jal          ra, 8f
8:                jal          ra, 12f
9:                jal          sp, 19f
10:               jal          t1, 27f
11:               jal          t1, 5b
12:               jal          t1, 16f
13:               jal          sp, 23f
14:               jal          t1, 6b
15:               jal          ra, 3b
16:               jal          t1, 15b
17:               jal          t1, 22f
18:               jal          ra, 25f
19:               jal          ra, 26f
20:               jal          ra, 21f
21:               jal          a5, 28f
22:               jal          ra, 11b
23:               jal          t1, 4b
24:               jal          ra, 2b
25:               jal          t1, 14b
26:               jal          ra, 13b
27:               jal          a0, 1b
28:               xori         t4, a6, 584
main_0:           jal          t1, 4f
0:                jal          t5, 6f
1:                jal          ra, 19f
2:                jal          t1, 10f
3:                jal          ra, 13f
4:                jal          ra, 21f
5:                jal          t1, 8f
6:                jal          ra, 23f
7:                jal          ra, 24f
8:                jal          t1, 1b
9:                jal          ra, 2b
10:               jal          ra, 15f
11:               jal          t0, 9b
12:               jal          ra, 3b
13:               jal          t1, 16f
14:               jal          s11, 27f
15:               jal          ra, 22f
16:               jal          ra, 18f
17:               jal          a5, 25f
18:               jal          ra, 26f
19:               jal          ra, 12b
20:               jal          t1, 0b
21:               jal          ra, 14b
22:               jal          ra, 5b
23:               jal          t1, 28f
24:               jal          t1, 17b
25:               jal          ra, 11b
26:               jal          a2, 20b
27:               jal          ra, 7b
28:               srai         a0, s5, 24
main_1:           jal          t1, 15f
0:                jal          ra, 11f
1:                jal          ra, 10f
2:                jal          ra, 16f
3:                jal          ra, 1b
4:                jal          a2, 5f
5:                jal          ra, 13f
6:                jal          ra, 14f
7:                jal          s11, 12f
8:                jal          ra, 7b
9:                jal          s1, 4b
10:               jal          t1, 9b
11:               jal          ra, 3b
12:               jal          ra, 6b
13:               jal          s4, 2b
14:               jal          ra, 0b
15:               jal          t3, 8b
16:               xor          s3, t4, s1
main_8:           jal          t1, 1f
0:                jal          ra, 22f
1:                jal          t1, 5f
2:                jal          ra, 3f
3:                jal          s5, 7f
4:                jal          t1, 15f
5:                jal          ra, 16f
6:                jal          tp, 10f
7:                jal          s9, 20f
8:                jal          ra, 19f
9:                jal          ra, 6b
10:               jal          ra, 23f
11:               jal          t1, 12f
12:               jal          ra, 4b
13:               jal          a1, 21f
14:               jal          tp, 8b
15:               jal          ra, 18f
16:               jal          ra, 2b
17:               jal          ra, 13b
18:               jal          ra, 17b
19:               jal          ra, 0b
20:               jal          t1, 14b
21:               jal          t0, 9b
22:               jal          t1, 11b
23:               auipc        s0, 169899
main_24:          jal          t1, 8f
0:                jal          t1, 6f
1:                jal          ra, 7f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          t1, 1b
5:                jal          ra, 2b
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          ra, 10f
9:                jal          ra, 11f
10:               jal          ra, 9b
11:               jal          ra, 0b
12:               addi         t3, sp, -787
                  sltu         s2, t4, t6
                  sltiu        s2, s7, -282
                  bltu         s6, a0, 12f
                  slt          s3, s0, s9
                  slt          tp, s9, ra
                  lui          s3, 265187
                  slt          t1, s10, ra
                  beq          t1, s9, 20f
                  slt          a1, t0, t4
                  blt          zero, a0, 14f
                  and          a6, t4, a6
                  blt          s5, tp, 20f
12:               andi         s8, s10, 480
                  andi         t3, s2, 1778
14:               srai         ra, a4, 6
                  blt          s1, a2, 23f
                  beq          s8, a1, 19f
                  srai         a1, s4, 24
                  nop
19:               and          t1, s10, t5
20:               ori          a1, s11, -1575
                  sub          s0, a6, s6
                  blt          s2, a2, 39f
23:               slti         zero, tp, 239
                  sub          t3, a4, t2
                  slli         t5, t2, 27
                  srl          s11, tp, s0
                  beq          t0, s1, 44f
                  bne          gp, zero, 41f
                  slli         ra, s11, 8
                  bltu         t1, s11, 47f
                  sltiu        s0, s4, -1816
                  ori          s9, a5, -901
                  andi         s6, t6, 1196
                  slli         a4, a3, 30
                  srl          zero, s9, t5
                  sltiu        s6, sp, 1254
                  sltu         t0, a3, t6
                  srl          a4, s0, ra
39:               beq          a7, s6, 43f
                  beq          a2, s10, 41f
41:               sub          zero, s4, s11
                  bne          s7, t6, 51f
43:               srai         t1, t4, 24
44:               ori          s9, gp, 752
                  bge          gp, s8, 59f
                  andi         s6, s7, -1011
47:               srli         s8, s2, 18
                  or           t0, s5, t3
                  bgeu         s4, tp, 61f
                  or           s8, a4, a3
51:               xor          t0, a3, s5
                  xor          s11, tp, t1
                  blt          t1, a5, 57f
                  addi         s3, t0, 719
                  slli         t3, a4, 5
                  ori          s3, a4, 1048
57:               bltu         a5, s5, 72f
                  slli         zero, t4, 20
59:               bgeu         s9, zero, 79f
                  slli         s8, t0, 22
61:               bge          s0, s1, 70f
                  xor          a2, gp, s9
                  sra          ra, s2, t4
                  srl          t3, s5, a5
                  sltu         t4, gp, s6
                  bne          s4, s4, 75f
                  slt          s4, t3, a1
                  or           s0, t0, a7
                  bltu         a1, zero, 74f
70:               ori          s10, ra, -931
                  bge          a4, ra, 91f
72:               sra          s0, a7, gp
                  add          t1, s10, t2
74:               and          s5, a1, s11
75:               sltiu        a5, s9, 1235
                  lui          t2, 606283
                  sra          t5, ra, a4
                  xori         s5, a0, 1015
79:               bne          sp, s8, 90f
                  add          ra, ra, a5
                  ori          s5, s3, 372
                  srai         s4, ra, 28
                  xor          s0, gp, ra
                  sub          s1, s4, a1
                  slti         a1, t1, 898
                  xor          s0, a0, gp
                  sub          s8, s6, s0
                  srai         s7, gp, 3
                  xor          sp, a1, t6
90:               xori         zero, s1, 1294
91:               ori          a0, t1, -1175
                  bne          t2, s2, 94f
                  srl          t3, a0, t2
94:               blt          t3, s4, 100f
                  and          a4, s0, s6
                  blt          a0, a4, 102f
                  beq          s4, ra, 104f
                  slt          a4, s5, s1
                  slli         s2, t2, 13
100:              bge          t6, gp, 109f
                  blt          ra, s7, 106f
102:              srai         s5, tp, 20
                  blt          t6, t2, 116f
104:              sub          a6, a0, t0
                  srli         s6, s6, 1
106:              blt          a1, gp, 118f
                  xori         s6, s1, 342
                  srl          s5, t5, s4
109:              slt          a5, a6, s3
                  srai         s2, a1, 5
                  srl          gp, s8, a7
                  blt          s7, a2, 127f
                  lui          zero, 698983
                  blt          sp, a0, 118f
                  bge          t0, t6, 132f
116:              bge          s7, t1, 125f
                  add          s10, ra, t2
118:              sltu         a1, s4, a0
                  slt          zero, a1, t1
                  sltiu        s7, t4, 281
                  addi         t1, t2, 1141
                  xori         t4, gp, 554
                  bltu         s4, ra, 137f
                  srl          zero, a0, a2
125:              nop
                  blt          s10, t4, 130f
127:              xor          a1, s2, s11
                  slti         t1, a4, -1890
                  and          t2, a6, zero
130:              nop
                  srai         s3, a2, 5
132:              srl          s10, t2, a6
                  slt          s7, t4, s11
                  bltu         t4, a2, 140f
                  bltu         s6, a0, 141f
                  slli         sp, s4, 29
137:              bltu         a2, a7, 157f
                  slli         s6, t3, 20
                  slti         a1, s5, 24
140:              ori          gp, s3, -1808
141:              slli         a5, t6, 4
                  srl          s2, t1, t0
                  sll          ra, t3, s1
                  sll          t3, t0, s2
                  xori         s0, s10, 1191
                  sra          s2, t3, a4
                  bgeu         a5, a0, 156f
                  bne          a0, t1, 161f
                  beq          s4, t3, 162f
                  sra          a0, a1, t5
                  andi         gp, t0, 1947
                  slti         tp, t1, 1801
                  or           t2, t3, t1
                  xor          a5, a5, s5
                  srli         s5, zero, 12
156:              bgeu         zero, a1, 173f
157:              srli         s2, s2, 3
                  bltu         zero, a7, 167f
                  beq          a7, s9, 161f
                  sub          s6, s5, zero
161:              srai         s3, a2, 19
162:              auipc        s7, 1037729
                  add          gp, sp, s0
                  sltiu        s10, sp, -613
                  beq          sp, t2, 185f
                  beq          a0, a5, 174f
167:              add          t4, s2, a7
                  ori          tp, a5, 797
                  blt          t5, s8, 176f
                  sll          s6, a7, t0
                  xor          s11, tp, a5
                  or           a0, t6, s0
173:              slti         a0, t6, -653
174:              srai         a2, s11, 20
                  ori          s8, t4, 1163
176:              lui          s4, 964818
                  auipc        s6, 148970
                  slt          s4, a5, a0
                  nop
                  ori          s9, gp, 1612
                  sra          a0, a4, s0
                  slti         tp, s10, 1377
                  sltu         s1, s4, t2
                  sub          s8, zero, a2
185:              addi         t5, t6, -1086
                  sll          t2, t6, s3
                  addi         a4, t1, 885
                  sra          s2, t3, t2
                  bltu         s1, ra, 194f
                  slti         s7, a4, 1019
                  slli         s10, sp, 7
                  and          ra, t1, a2
                  bge          a7, s5, 202f
194:              bne          a7, a4, 204f
                  bltu         t6, t6, 208f
                  bge          s10, gp, 197f
197:              beq          tp, s2, 202f
                  bltu         s8, a2, 209f
                  beq          tp, t1, 204f
                  xor          t0, s0, a7
                  slt          t2, s3, s7
202:              xori         s5, zero, 1826
                  and          t0, tp, s10
204:              andi         sp, a5, -1395
                  sltiu        t1, s8, 2013
                  ori          a2, t5, -642
                  and          a4, s8, a0
208:              nop
209:              addi         ra, s5, -435
                  bltu         s4, tp, 219f
                  bgeu         s5, s1, 214f
                  sll          a5, t1, t6
                  bne          s11, t1, 230f
214:              blt          t1, a0, 219f
                  bge          a1, a7, 226f
                  sub          s10, ra, zero
                  addi         s11, sp, 1939
                  addi         t0, t1, 187
219:              auipc        s1, 809960
                  beq          a1, s4, 225f
                  sltiu        t3, s7, -1611
                  bne          s4, t0, 224f
                  xori         ra, s4, -1021
224:              andi         gp, a0, -678
225:              bge          s6, a7, 231f
226:              bgeu         t2, t6, 234f
                  srai         s0, s0, 13
                  blt          a0, a7, 232f
                  srli         zero, sp, 30
230:              nop
231:              or           ra, s0, s10
232:              srai         t5, zero, 29
                  and          tp, s7, t4
234:              auipc        t3, 1017226
                  lui          s11, 808517
                  andi         t0, s11, 574
                  bltu         s2, s1, 246f
                  srai         s10, s10, 0
                  add          s9, t6, s0
                  nop
                  sltu         a0, t0, s5
                  bne          t5, t1, 259f
                  xor          a2, s3, t1
                  slli         a5, t0, 11
                  xor          a4, s6, s2
246:              sub          t1, a1, s6
                  slti         a0, s4, 588
                  sll          t4, t1, s9
                  addi         s1, s2, 1675
                  xor          a1, t5, t2
                  lui          t3, 819404
                  xori         t3, tp, -1040
                  sltu         sp, a7, t3
                  auipc        s9, 1045677
                  xori         s7, t2, 1819
                  bgeu         a2, t1, 268f
                  blt          s8, s6, 277f
                  bltu         ra, s3, 262f
259:              auipc        a5, 863996
                  srai         s4, a0, 15
                  add          t0, ra, t5
262:              srl          tp, s2, t0
                  slli         ra, s8, 24
                  srli         s0, s4, 20
                  sra          s5, sp, t3
                  sub          a1, t4, t3
                  and          t4, s0, s5
268:              lui          a1, 1009605
                  or           zero, ra, a6
                  nop
                  xori         a0, t1, -1361
                  auipc        s3, 539049
                  sub          s1, s3, s5
                  lui          s8, 508746
                  slt          t5, t1, t2
                  blt          a2, a6, 285f
277:              srli         ra, t2, 17
                  xori         tp, a5, -923
                  xori         s2, s1, -877
                  sltiu        tp, s1, 1645
                  xori         s10, t3, -1833
                  ori          t3, gp, 2003
                  srl          sp, t1, s5
                  sra          t0, a2, a7
285:              xori         t5, t0, 49
                  sub          t2, t1, t6
                  bne          t1, t2, 293f
                  slli         s2, s3, 27
                  srl          s4, s5, a7
                  bgeu         s1, s1, 304f
                  slt          a6, s1, gp
                  nop
293:              lui          tp, 202621
                  bltu         sp, a3, 301f
                  slt          ra, s11, t4
                  xor          t4, s4, s9
                  sra          s9, ra, a5
                  auipc        tp, 728739
                  bgeu         zero, ra, 308f
                  slli         s10, s9, 21
301:              srai         s1, t5, 8
                  bge          t5, t1, 305f
                  andi         s1, sp, -474
304:              add          t0, s11, s5
305:              bne          t2, t4, 325f
                  bge          a0, a4, 311f
                  srai         gp, s8, 25
308:              sra          s11, s6, ra
                  xori         s4, t2, 2012
                  addi         sp, a6, 582
311:              srli         s8, s7, 20
                  or           s5, t5, t5
                  sra          s7, t1, t3
                  and          t4, a2, s6
                  blt          gp, s4, 332f
                  or           a5, s2, a2
                  lui          zero, 108111
                  blt          ra, s1, 327f
                  slti         tp, t2, 399
                  sll          t3, t2, a0
                  ori          s2, s6, -1072
                  or           s10, gp, a1
                  bltu         s5, a4, 336f
                  ori          a0, s9, -1986
325:              sub          sp, t6, zero
                  sra          t0, a4, s10
327:              srai         a5, t1, 29
                  sra          ra, s0, t5
                  bgeu         tp, s2, 344f
                  addi         s1, s3, -186
                  slti         sp, a4, 316
332:              bne          gp, a3, 349f
                  auipc        t1, 74804
                  slti         t3, a2, 733
                  srl          s6, s10, t6
336:              nop
                  srli         t1, t5, 23
                  sltiu        s3, a1, -1513
                  bge          s0, a4, 340f
340:              sra          sp, s7, s5
                  add          s5, a2, s9
                  bltu         s8, gp, 352f
                  bgeu         gp, a2, 356f
344:              nop
                  sltiu        sp, s7, -27
                  and          s6, a4, s3
                  blt          a6, s10, 360f
                  bne          t5, ra, 357f
349:              slli         sp, t0, 7
                  sra          s4, a1, a4
                  or           s9, a6, a2
352:              addi         sp, a2, 1649
                  sltu         s2, a3, t2
                  srli         t2, s4, 15
                  blt          t4, a6, 368f
356:              bge          a1, t6, 361f
357:              xori         a4, a0, -454
                  andi         ra, a2, -102
                  bltu         a2, a5, 373f
360:              beq          s11, a2, 375f
361:              addi         gp, s4, -651
                  xori         t1, a5, 1456
                  xori         s11, s2, 745
                  and          tp, a3, gp
                  slti         tp, s6, -324
                  bge          s6, a3, 369f
                  srli         tp, t0, 26
368:              sra          t2, a3, t1
369:              andi         t0, t2, -469
                  nop
                  bgeu         t5, gp, 372f
372:              sub          s3, a7, s3
373:              slli         a4, a1, 29
                  slli         s4, s9, 5
375:              bgeu         s1, s7, 379f
                  bltu         a5, a1, 396f
                  sltiu        zero, t2, -1427
                  sltu         t4, a5, t2
379:              bge          s7, gp, 386f
                  bltu         t3, sp, 386f
                  add          s7, sp, t5
                  xor          s1, s9, t6
                  xori         t4, ra, -1099
                  xor          tp, t1, s7
                  nop
386:              blt          s11, s1, 395f
                  xor          s5, s6, ra
                  sll          t4, a2, s2
                  srai         t5, s4, 6
                  sltiu        sp, t6, 394
                  bne          s10, a7, 401f
                  bge          a7, a0, 396f
                  andi         a4, a6, 1237
                  andi         t0, t4, -904
395:              bge          t2, s0, 412f
396:              sra          t0, s0, a5
                  srl          s5, s6, s11
                  xori         t0, zero, 1064
                  bltu         t2, t0, 412f
                  srli         s6, tp, 16
401:              add          tp, t0, a3
                  nop
                  slti         s5, s0, 547
                  or           t4, a6, a6
                  xori         s3, a7, 1563
                  slti         t4, t1, -1678
                  or           s8, ra, s2
                  sll          t5, t3, s7
                  andi         tp, s8, -950
                  auipc        ra, 843343
                  ori          tp, s7, 1340
412:              srli         s8, t5, 23
                  beq          s1, a5, 433f
                  ori          a6, s0, -385
                  xor          zero, s11, s4
                  xori         s3, a1, -1034
                  sra          a6, s8, sp
                  slli         s1, s11, 12
                  sra          s2, a3, s9
                  sltiu        t3, gp, 138
                  lui          t5, 977200
                  or           s10, s9, s6
                  bltu         gp, a2, 432f
                  bge          s9, a5, 436f
                  slt          t4, zero, t0
                  sub          s2, s5, s8
                  bge          t2, s0, 436f
                  slti         zero, sp, -590
                  slti         s8, zero, 353
                  and          t4, t1, s5
                  srli         s8, a4, 27
432:              xor          gp, t0, t4
433:              srl          a1, s8, s10
                  xor          t1, s10, a2
                  srai         a0, s6, 15
436:              bgeu         sp, a4, 445f
                  sra          t1, sp, a0
                  xor          s3, s11, s6
                  bgeu         zero, s11, 450f
                  sra          t4, a3, gp
                  blt          s9, a7, 458f
                  srai         a2, s2, 18
                  srl          sp, s6, s11
                  la           s11, sub_1
                  sll          s2, s4, t0
                  and          a2, t1, a4
                  addi         s11, s11, 300
                  addi         t4, s3, -1074
                  or           s5, zero, a7
                  sltiu        s9, t6, 1770
                  or           s0, zero, zero
                  or           t5, s4, a3
                  nop
                  xor          s5, a0, a4
                  addi         s10, s5, -1061
main_j3:          jalr         t1, s11, -300 #jump main -> sub_1
                  add          s3, a0, a1
445:              sub          t5, t4, s6
                  srl          a4, a0, s1
                  ori          s4, gp, 2
                  and          t2, s8, s4
                  auipc        a2, 619724
450:              sltu         t0, a4, t2
                  sra          s11, s7, s5
                  addi         t5, s0, -215
                  srli         tp, t3, 21
                  bgeu         a2, t6, 467f
                  andi         s2, a4, 35
                  bne          gp, t1, 461f
                  srl          s3, t4, t4
458:              sra          a0, s0, t4
                  ori          a5, a5, 1464
                  add          s9, s7, t2
461:              bge          s7, t2, 467f
                  ori          a4, gp, 1899
                  xor          s0, s11, s8
                  bge          s4, a1, 466f
                  bne          t6, s6, 474f
466:              sll          a5, t0, t0
467:              bge          t3, s3, 484f
                  srl          s8, t4, a5
                  blt          s6, t4, 474f
                  andi         a2, t0, -1229
                  auipc        s4, 906305
                  srl          s10, a0, t2
                  xori         s5, s2, 1255
474:              auipc        s0, 960892
                  nop
                  andi         tp, a5, 1505
                  or           s4, s4, ra
                  slt          a5, s6, t5
                  xor          s4, s5, t0
                  slt          s6, a0, t5
                  or           t3, s7, t1
                  sltu         a5, s8, a5
                  xor          a0, s1, s5
484:              sll          tp, s10, a4
                  sll          t1, s6, s5
                  sra          a2, t4, s3
                  add          a1, s7, a7
                  sub          s9, t0, s9
                  blt          sp, gp, 497f
                  lui          ra, 744199
                  or           s11, sp, a7
                  sltiu        a0, t0, 1558
                  add          zero, t5, s4
                  srl          a4, s11, s7
                  slti         t4, a2, -1058
                  blt          s0, a2, 506f
497:              bge          zero, a5, 514f
                  slt          s0, s0, t5
                  add          t5, s2, a7
                  bge          a6, s0, 520f
                  bne          t4, gp, 506f
                  sltiu        a2, t4, 1116
                  srai         t1, t1, 9
                  bgeu         a3, t5, 508f
                  sltiu        s2, s9, 472
506:              sub          gp, t0, a6
                  add          s4, a5, s10
508:              sra          ra, ra, s5
                  auipc        a0, 29282
                  srli         s7, s9, 13
                  srai         s10, a5, 2
                  sltiu        t0, s0, -885
                  sra          a1, s11, s1
514:              bgeu         a0, a5, 529f
                  and          sp, s9, s0
                  sltu         s3, s2, a1
                  and          a6, ra, ra
                  nop
                  ori          a1, s0, -599
520:              xor          t2, t4, s3
                  ori          t5, s1, 2015
                  beq          ra, t4, 525f
                  sltu         t5, sp, a5
                  sub          a5, a0, s5
525:              addi         t3, s4, -1424
                  bge          a4, s8, 540f
                  or           s1, s10, s0
                  sra          t2, t5, t2
529:              and          a6, gp, s4
                  srai         a5, a0, 28
                  slti         sp, a6, 1434
                  sra          t2, t4, s5
                  beq          s1, ra, 542f
                  bne          s10, s7, 541f
                  bne          zero, t1, 544f
                  xor          s11, s7, a0
                  sltiu        t0, s2, -887
                  slli         t1, t2, 27
                  slt          a5, s0, a7
540:              sll          s9, s7, ra
541:              lui          s10, 528402
542:              sub          a6, sp, s8
                  andi         s4, s9, 1140
544:              srli         t3, a6, 27
                  slti         t3, zero, 995
                  sll          tp, t2, s2
                  srli         s4, gp, 4
                  andi         zero, s8, -182
                  ori          tp, a1, 1278
                  sll          s2, gp, t6
                  ori          s7, s2, -68
                  xori         t0, sp, -747
                  sub          ra, s1, a4
                  xori         s0, s6, -748
                  bgeu         zero, s4, 564f
                  nop
main_3:           jal          t1, 17f
0:                jal          s4, 5f
1:                jal          ra, 16f
2:                jal          ra, 24f
3:                jal          ra, 11f
4:                jal          ra, 27f
5:                jal          ra, 26f
6:                jal          tp, 21f
7:                jal          ra, 9f
8:                jal          t1, 14f
9:                jal          t1, 20f
10:               jal          ra, 28f
11:               jal          ra, 7b
12:               jal          t0, 15f
13:               jal          s11, 19f
14:               jal          ra, 3b
15:               jal          t1, 6b
16:               jal          gp, 8b
17:               jal          t1, 1b
18:               jal          t1, 0b
19:               jal          ra, 12b
20:               jal          t0, 4b
21:               jal          ra, 25f
22:               jal          ra, 18b
23:               jal          t0, 10b
24:               jal          ra, 23b
25:               jal          t1, 2b
26:               jal          t2, 13b
27:               jal          t0, 22b
28:               sll          a2, s2, a4
                  sltu         s5, a4, s7
                  slti         s2, s2, 45
                  lui          s4, 560128
                  xori         a5, t1, -1104
                  add          t5, a1, a4
                  lui          s4, 678913
                  slti         s1, t6, -659
564:              or           s2, a5, s10
                  addi         t1, s3, 1148
                  lui          t5, 1011200
                  ori          a1, a4, -216
                  xori         zero, a1, -1368
                  ori          tp, zero, -766
                  add          gp, s5, a3
                  add          s3, a7, s9
                  bgeu         s11, a1, 581f
                  sra          ra, t4, s10
                  auipc        t2, 714655
                  slli         zero, s3, 23
                  add          t2, a7, t2
                  beq          s0, s2, 583f
                  slt          t5, s4, s2
                  slti         t0, a6, 1713
                  sltiu        zero, s4, -1399
581:              lui          t1, 532551
                  slli         t4, t3, 11
583:              bgeu         a5, a3, 600f
                  srai         a0, s10, 25
                  slti         a4, a1, -1718
                  slt          sp, a6, sp
                  xor          a6, a6, s11
                  sub          s0, a5, t2
                  sra          sp, s5, sp
                  bgeu         s7, s5, 610f
                  xor          s1, a3, sp
                  slti         gp, s9, -579
                  sltiu        s8, t6, 326
                  and          s4, t3, s7
                  or           s1, s0, s11
                  srai         s9, a0, 21
                  blt          sp, a3, 599f
                  sra          s5, a7, s0
599:              xor          a0, a6, t6
600:              sltiu        s4, t0, -1163
                  addi         a6, t0, -1939
                  andi         s8, t2, -730
                  bge          s0, t2, 615f
                  slt          s9, s1, t6
                  add          a5, s1, t6
                  nop
                  srai         t3, gp, 31
                  srl          s10, a1, tp
                  xori         s10, s6, -381
610:              auipc        gp, 477138
                  nop
                  sra          s7, tp, t2
                  blt          t0, s8, 626f
                  srl          sp, a6, s0
615:              sltu         a5, a2, t0
                  slli         t1, s1, 27
                  auipc        gp, 369656
                  xor          a5, s7, t4
                  bge          a7, s3, 632f
                  bne          a5, s3, 631f
                  bge          t4, s11, 629f
                  slli         t5, a3, 26
                  bltu         tp, s7, 636f
                  bne          a6, t3, 629f
                  bge          s9, a2, 629f
626:              slti         s0, zero, 1897
                  sra          t1, a3, gp
                  bgeu         t0, t0, 633f
629:              slli         t5, a5, 29
                  bge          zero, sp, 631f
631:              bge          t3, t4, 648f
632:              or           t5, a7, t2
633:              srli         a6, sp, 17
                  auipc        tp, 338066
                  andi         tp, sp, -1514
636:              xor          s4, s7, sp
                  and          a5, sp, s6
                  blt          zero, a6, 644f
                  slt          ra, s6, s11
                  slti         s3, sp, 819
                  srai         a6, s2, 6
                  slli         s9, s4, 23
                  sub          a5, t4, t6
644:              sltiu        s9, zero, -1511
                  nop
                  sll          s11, a1, t6
                  blt          tp, a7, 656f
648:              xori         s4, t6, -825
                  sll          tp, s9, s11
                  xori         s3, gp, -668
                  slli         s10, a7, 29
                  beq          ra, s5, 661f
                  nop
                  sltiu        a1, gp, 1922
                  auipc        t3, 552709
656:              nop
                  bgeu         t6, s11, 669f
                  bne          t0, t0, 671f
                  sra          a4, t1, s9
                  lui          ra, 344313
661:              slti         s8, t5, 637
                  or           a2, a2, a2
                  srli         zero, ra, 19
                  slti         t4, t1, -1111
                  srli         t2, t3, 23
                  slli         t3, t0, 26
                  blt          s2, a5, 672f
                  bne          a0, sp, 677f
669:              bgeu         s1, a5, 679f
                  add          t3, s10, a1
671:              andi         a0, sp, -1058
672:              and          gp, t0, s6
                  xori         s5, s4, 92
                  andi         t3, a3, 1898
                  auipc        t0, 743171
                  sll          s4, t4, zero
677:              andi         t0, a3, 1891
                  srl          tp, s9, s2
679:              bge          a2, s11, 681f
                  sltu         gp, s8, sp
681:              blt          t0, gp, 686f
                  blt          t5, s8, 699f
                  srl          s5, a0, zero
                  bge          a7, s2, 697f
                  andi         t4, s9, -1978
686:              srai         t4, t3, 29
                  nop
                  add          gp, s6, s1
                  sll          a6, t1, s4
                  blt          a5, s11, 695f
                  addi         t1, a3, 1275
                  srai         s6, s9, 3
                  or           t3, s7, s4
                  srl          s0, t0, s10
695:              bgeu         s7, s1, 698f
                  auipc        t3, 215551
697:              sra          tp, s1, a4
698:              beq          s11, a0, 705f
699:              sub          tp, s0, s6
                  sub          tp, t6, t2
                  slti         a2, sp, 1821
                  sub          s10, s11, s7
                  sltiu        tp, t2, 407
                  slli         s2, t5, 3
705:              srl          t2, s1, t4
                  ori          t0, s2, -863
                  xori         s0, gp, -1702
                  bgeu         sp, s1, 712f
                  sll          a2, a7, a2
                  add          t2, t4, sp
                  nop
712:              slli         a4, s7, 22
                  srai         s6, s9, 13
                  auipc        a2, 589834
                  xori         s5, s7, 593
                  or           t0, s3, sp
                  srl          s0, s8, s5
                  or           s9, sp, s5
                  sltu         t4, s10, s0
                  auipc        s8, 81492
                  srai         t1, t2, 28
                  bgeu         s7, s5, 730f
                  ori          sp, s7, 989
                  sltiu        ra, t4, -1916
                  beq          a3, s3, 729f
                  bltu         gp, s2, 746f
                  auipc        t2, 139345
                  bne          zero, s7, 745f
729:              sltiu        zero, t6, 1639
730:              sra          s7, t5, gp
                  blt          sp, tp, 751f
                  sra          s3, s5, t0
                  slt          s4, s7, s8
                  blt          s1, s5, 743f
                  bge          tp, s3, 744f
                  andi         a2, a6, 304
                  sra          zero, a6, s5
                  bltu         s0, t4, 751f
                  sra          s1, zero, s11
                  auipc        s8, 428254
                  srli         tp, zero, 17
                  sll          zero, zero, a6
743:              slli         t3, t2, 5
744:              bge          t6, s2, 753f
745:              and          sp, t4, t4
746:              and          s11, t3, a6
                  and          s8, s9, s11
                  bltu         s9, s5, 763f
                  srl          t3, t4, s10
                  srai         s0, t3, 13
751:              slti         s5, t1, 1360
                  srl          a0, s10, a1
753:              blt          s6, zero, 767f
                  or           s9, t3, t0
                  beq          s9, a0, 761f
                  sltu         a5, ra, t0
                  slli         a5, a7, 11
                  auipc        t3, 931286
                  bne          s8, s2, 770f
                  bltu         s0, s8, 761f
761:              beq          s11, s6, 767f
                  srl          a5, tp, a6
763:              xor          a1, s1, s1
                  ori          s11, tp, 1548
                  srl          tp, zero, t6
                  and          s2, a1, a7
767:              slti         a0, s5, -1851
                  nop
                  nop
770:              bgeu         zero, t4, 787f
                  sra          t2, a2, a5
                  sltiu        s11, s7, 1315
                  add          s3, s5, t4
                  la           s8, sub_2
                  srli         a0, a4, 24
                  slti         s6, s10, 641
                  addi         s8, s8, -979
                  and          a5, a0, zero
                  addi         tp, s6, 240
                  slt          t3, s11, a3
main_j2:          jalr         t1, s8, 980 #jump main -> sub_2
                  sll          s9, s4, s5
                  auipc        s5, 689884
                  add          s5, s11, a3
                  addi         s8, s1, -761
                  bgeu         s7, gp, 793f
                  bge          s7, tp, 783f
                  sll          sp, tp, a7
                  sltiu        a5, s6, 810
                  srai         s5, s2, 26
783:              sltiu        t0, sp, -1389
                  bge          t5, sp, 801f
                  srl          ra, t0, s3
                  slli         t0, t0, 22
787:              sltiu        t1, s8, -1254
                  bgeu         t4, a3, 790f
                  or           s6, a6, a3
790:              bne          s2, s8, 799f
                  bge          a2, gp, 795f
                  beq          a6, s9, 797f
793:              slli         s9, t0, 2
                  xori         ra, sp, 596
795:              sub          a4, a4, a6
                  sra          t3, s2, zero
797:              slt          s2, a5, t6
                  auipc        s3, 255975
799:              bne          s0, s9, 811f
                  sub          gp, s6, s10
801:              bne          a7, s6, 810f
                  xori         a2, s1, -428
                  slli         t4, t3, 7
                  bge          s7, s4, 805f
805:              slt          s3, t0, s9
                  srai         a1, t5, 2
                  srai         a4, a2, 29
                  sra          s9, t2, gp
                  bge          s0, a0, 826f
810:              xor          s3, t3, a7
811:              add          s0, s3, a6
                  auipc        a6, 638674
                  ori          a0, s4, -874
                  addi         s7, a6, -956
                  beq          s4, t4, 826f
                  srli         s6, s2, 23
                  xori         s11, s8, 1372
                  add          s11, t3, a2
                  xori         s3, sp, 923
                  ori          s11, a3, -328
                  addi         t4, a4, 67
                  ori          t3, s10, 289
                  bne          s6, s8, 829f
                  sltiu        zero, a4, -855
                  srai         s4, t4, 28
826:              blt          t5, a0, 831f
                  bltu         s9, gp, 847f
                  srl          ra, s10, a6
829:              andi         a5, a4, -332
                  nop
831:              slt          a2, a5, s7
                  srli         t1, ra, 3
                  srli         s4, a0, 5
                  bge          a2, a0, 837f
                  sra          sp, gp, t2
                  beq          a3, s6, 845f
837:              sra          a6, s3, tp
                  nop
                  sll          s5, t1, zero
                  or           a5, t1, a5
                  slti         s4, t1, -1597
                  xori         s8, s3, 647
                  andi         t4, t1, 666
                  sltu         s9, a0, s9
845:              xori         s8, s0, 1612
                  slt          t5, t2, gp
847:              sltu         s3, t5, a0
                  ori          t0, a2, 1432
                  xori         s4, s6, 861
                  and          a1, s11, s3
                  add          s1, s8, s6
                  bgeu         a7, a1, 872f
                  slti         a4, a4, 410
                  bne          a0, t5, 859f
                  bgeu         zero, a0, 864f
                  sltiu        tp, a6, 805
                  bne          s1, t3, 863f
                  sra          a4, s7, a5
859:              addi         s10, sp, -463
                  and          t1, t0, s5
                  or           s5, t4, zero
                  slt          t4, t2, a0
863:              slt          sp, s9, t5
864:              beq          sp, t3, 872f
                  sub          sp, s5, a0
                  bgeu         s8, a5, 883f
                  slt          ra, s0, a6
                  ori          s10, a2, -1121
                  lui          t1, 303978
                  bltu         a1, zero, 883f
                  beq          s3, t5, 884f
872:              sll          t3, a0, a3
                  bne          ra, s6, 883f
                  slli         ra, t2, 28
                  xori         s0, t0, -1637
                  sll          s10, t2, s6
                  and          t5, a6, a2
                  bne          gp, ra, 885f
                  or           tp, t1, a7
                  nop
                  sltu         t4, t6, t5
                  bne          t1, a3, 895f
883:              auipc        s10, 759021
884:              or           t4, s2, s9
885:              srli         s9, t1, 27
                  or           t0, s7, a7
                  ori          s7, sp, 963
                  addi         gp, gp, 676
                  bltu         s10, t4, 903f
                  sltiu        a4, s8, -1080
                  srai         s5, s10, 13
                  auipc        zero, 1022090
                  slt          sp, s2, s7
                  or           s5, a2, a1
895:              xori         s9, s7, 1011
                  sub          sp, s0, s6
                  bltu         ra, s9, 906f
                  beq          tp, a4, 903f
                  slti         s1, zero, -1967
                  sra          s8, a6, a6
                  sra          s8, t2, a4
                  blt          s6, t4, 919f
903:              bne          s11, tp, 911f
                  auipc        t4, 100739
                  bltu         t4, s11, 918f
906:              lui          tp, 722527
                  bge          t0, s10, 916f
                  bgeu         s6, a2, 917f
                  bne          s7, t1, 920f
                  beq          t3, a2, 927f
911:              beq          a1, a4, 931f
                  addi         tp, a6, -1471
                  srli         a1, t2, 29
                  srl          a4, s0, t3
                  sll          s9, t3, a3
main_14:          jal          t1, 17f
0:                jal          ra, 7f
1:                jal          ra, 3f
2:                jal          a1, 16f
3:                jal          ra, 10f
4:                jal          t2, 15f
5:                jal          s11, 1b
6:                jal          t1, 9f
7:                jal          t1, 4b
8:                jal          t1, 11f
9:                jal          t1, 0b
10:               jal          ra, 18f
11:               jal          t3, 14f
12:               jal          t0, 8b
13:               jal          sp, 12b
14:               jal          ra, 6b
15:               jal          tp, 5b
16:               jal          ra, 13b
17:               jal          ra, 2b
18:               sll          s8, t4, tp
916:              sub          a2, s3, a4
917:              bge          s9, t2, 937f
918:              ori          a1, ra, 917
919:              sll          t1, gp, s6
920:              srai         a1, a7, 25
                  srl          s1, a5, t3
                  blt          a6, t3, 927f
                  addi         a1, s5, 84
                  sra          a2, zero, s3
                  ori          a2, s0, -921
                  lui          s5, 311749
927:              lui          a1, 934934
                  sltiu        s11, ra, -876
                  nop
                  sltiu        s11, a0, -1303
931:              sltu         a4, s3, zero
                  sltiu        s4, zero, -1206
                  sll          s4, a0, a0
                  sltiu        s8, s5, 155
                  slti         tp, a5, -75
                  sltu         s6, t0, tp
937:              bge          zero, s4, 951f
                  slt          a1, sp, t1
main_16:          jal          t1, 13f
0:                jal          ra, 17f
1:                jal          t1, 12f
2:                jal          ra, 22f
3:                jal          t1, 14f
4:                jal          ra, 26f
5:                jal          s0, 7f
6:                jal          t4, 5b
7:                jal          a4, 25f
8:                jal          ra, 21f
9:                jal          t1, 0b
10:               jal          ra, 8b
11:               jal          ra, 3b
12:               jal          t1, 4b
13:               jal          ra, 6b
14:               jal          sp, 19f
15:               jal          ra, 20f
16:               jal          sp, 18f
17:               jal          ra, 24f
18:               jal          t1, 23f
19:               jal          t1, 16b
20:               jal          ra, 10b
21:               jal          t1, 2b
22:               jal          ra, 1b
23:               jal          ra, 15b
24:               jal          t5, 11b
25:               jal          tp, 9b
26:               xori         s7, s7, 746
                  slt          s6, a3, zero
                  bge          s2, s3, 943f
                  add          s3, s10, a5
                  sltiu        t5, s2, 1156
943:              bgeu         t1, s8, 944f
944:              xor          a4, s9, zero
                  add          s1, a3, tp
                  slti         s4, a3, -840
                  beq          a4, gp, 949f
                  bge          t4, a2, 961f
949:              slli         t5, t2, 15
                  sll          t4, s4, s3
951:              bltu         s4, s5, 960f
                  nop
                  sra          s5, a6, ra
                  auipc        s3, 762376
                  bltu         s8, s2, 965f
                  lui          s8, 147751
                  bne          a5, t0, 963f
                  sll          s7, a6, sp
                  xor          s8, s7, s2
960:              sltiu        a2, s0, -125
961:              andi         s6, t4, -16
                  lui          s0, 39204
963:              slt          s7, ra, t0
                  auipc        s8, 422582
965:              bgeu         t0, a7, 980f
                  xori         s10, s1, -1505
                  srai         s2, a0, 31
                  bge          t6, t1, 981f
                  andi         s0, a7, 1693
                  slli         t5, a3, 2
                  sub          a1, t3, t3
                  nop
                  and          s3, s11, sp
                  add          t1, t2, ra
                  andi         s8, t1, 480
                  lui          a2, 375947
                  lui          a0, 248738
                  bge          a6, a2, 983f
                  ori          ra, a5, 7
980:              sltu         s6, a0, a5
981:              or           t1, s2, ra
                  sltu         s5, a1, gp
983:              sll          sp, t3, sp
                  blt          s10, t5, 993f
                  nop
                  sltiu        a6, a4, 233
                  slli         s1, a5, 17
                  bltu         t2, a4, 995f
                  sll          a0, tp, sp
                  auipc        s2, 191955
                  auipc        s10, 305096
                  xor          s2, a6, ra
993:              auipc        s1, 594596
                  bltu         a1, a6, 1000f
995:              add          ra, a3, a3
                  slt          t2, a2, s1
                  lui          s0, 357111
                  sltiu        t5, t2, 287
                  slti         zero, s3, 1590
1000:             slti         s8, a1, -96
                  sltu         a5, a0, s9
                  or           t3, gp, t2
                  srl          s8, s7, t6
                  srli         t2, a3, 21
                  srai         s5, tp, 22
                  blt          a2, t1, 1023f
                  auipc        s8, 620764
                  sub          s5, a3, s4
                  xori         s11, s7, 523
                  sra          tp, t4, ra
                  bge          s11, s10, 1015f
                  nop
                  blt          s1, a4, 1017f
                  addi         a4, s0, -1956
1015:             beq          s2, s10, 1024f
                  slli         sp, t4, 1
1017:             beq          t5, zero, 1029f
                  xori         sp, t3, -1042
                  sltiu        sp, a0, -496
                  ori          a2, a5, 116
                  ori          tp, a4, 1457
                  slti         a1, a4, -988
1023:             nop
1024:             bge          a1, s2, 1041f
                  auipc        a6, 475718
                  sltu         a2, s8, a2
                  srli         t0, a1, 10
                  and          t0, s8, a7
1029:             lui          s6, 277991
                  srai         gp, sp, 17
                  auipc        s4, 187222
                  bne          s0, s3, 1041f
                  xori         a2, sp, -868
                  sltu         zero, s8, t0
                  slti         s3, s1, 1211
                  srli         s5, s1, 2
                  auipc        sp, 931259
                  beq          s1, t1, 1055f
                  slli         s8, s9, 11
                  xori         gp, a7, 701
1041:             slt          s7, s4, a7
                  slli         t0, sp, 0
                  bne          s3, s5, 1048f
                  slt          a1, s7, gp
                  srai         ra, a0, 23
                  bne          zero, s5, 1051f
                  bge          a6, s9, 1054f
1048:             add          t1, a7, t1
                  slti         t2, t4, 900
                  srl          s3, t4, sp
1051:             bne          a4, a5, 1064f
                  sra          gp, gp, sp
                  srai         s2, t4, 17
1054:             srai         gp, t4, 25
1055:             bge          s3, s10, 1059f
                  bge          tp, s9, 1066f
                  bne          a2, tp, 1070f
                  bne          s9, zero, 1073f
1059:             sub          s2, a3, ra
                  lui          a5, 690984
                  sub          a6, s6, t2
                  slt          s2, s6, a3
                  bltu         s7, s8, 1083f
1064:             ori          t5, sp, 1738
                  sub          s1, gp, t4
1066:             srli         a6, t4, 23
                  bltu         t2, t3, 1081f
                  sltiu        s10, a6, -108
                  or           t1, zero, t0
1070:             add          s9, t2, s2
                  srai         t2, ra, 16
                  nop
                  la           s5, sub_1
                  addi         s5, s5, 796
                  srai         s6, s11, 20
                  sra          t4, tp, t5
                  ori          s0, s3, -1062
                  slli         s11, tp, 11
                  bgeu         s3, t4, main_j1 #branch to jump instr
                  srai         a5, a4, 16
                  auipc        t4, 1012218
                  addi         a5, tp, -521
main_j1:          jalr         t1, s5, -796 #jump main -> sub_1
                  sll          t2, t2, s7
1073:             slli         a2, t1, 31
                  lui          s3, 516025
                  nop
                  addi         s9, t5, 416
                  sra          a1, zero, zero
                  or           s6, t2, s9
                  bge          t0, s11, 1099f
                  add          s5, t0, zero
1081:             slt          a6, a5, sp
                  xori         t3, a5, -1058
1083:             sltu         s1, t1, s6
                  slti         sp, s3, 1153
                  bge          s6, a2, 1097f
                  beq          s11, s0, 1087f
1087:             or           t1, s7, s9
                  add          s10, a5, t4
                  srl          t5, s4, t2
                  xor          s9, a3, zero
                  sll          s1, s10, t5
                  addi         s7, t0, 680
                  beq          a6, t4, 1110f
                  sub          t1, a5, a3
                  bge          t0, a2, 1099f
                  xori         a2, a2, -247
1097:             srai         ra, a1, 0
                  srli         s8, a7, 3
1099:             sltiu        s9, gp, -1218
                  andi         s6, t4, -584
                  xori         a5, gp, 1299
                  srl          s8, a6, s5
                  srai         t4, s7, 1
                  sra          ra, sp, a0
                  bgeu         tp, t0, 1107f
                  andi         a1, a7, 900
1107:             andi         t0, s6, 1388
                  sra          t0, s9, gp
                  slli         s9, t0, 31
1110:             slt          s9, a4, a1
                  add          ra, zero, s11
                  beq          t2, t6, 1120f
                  xori         s8, a2, -874
                  sra          s0, t0, t1
                  xori         t0, t6, 376
                  xor          s0, t0, t4
                  andi         t0, s11, 647
                  xor          t4, t3, t6
                  srli         a2, t4, 22
main_12:          jal          t1, 13f
0:                jal          t1, 3f
1:                jal          t1, 10f
2:                jal          tp, 4f
3:                jal          t0, 15f
4:                jal          ra, 7f
5:                jal          s8, 16f
6:                jal          t1, 0b
7:                jal          ra, 1b
8:                jal          t4, 9f
9:                jal          ra, 14f
10:               jal          s5, 17f
11:               jal          t1, 5b
12:               jal          ra, 8b
13:               jal          t1, 6b
14:               jal          ra, 11b
15:               jal          a4, 18f
16:               jal          ra, 19f
17:               jal          t1, 12b
18:               jal          ra, 2b
19:               slti         s9, ra, -325
1120:             srli         t4, a6, 17
                  srli         tp, zero, 22
                  blt          s10, a7, 1131f
                  ori          tp, s4, -1798
                  bge          t4, t1, 1130f
                  auipc        t0, 85545
                  slti         s8, sp, -1362
                  bne          a3, gp, 1136f
                  sltu         a5, s10, t2
                  addi         t5, s0, -311
1130:             bge          s7, t5, 1136f
1131:             sub          a6, s3, s4
                  add          a4, s1, t1
                  beq          s6, s3, 1146f
                  xor          t1, t3, t6
                  slti         a5, t0, -2043
1136:             xor          s10, zero, s5
                  or           a4, a2, t0
                  or           s4, sp, s3
                  xor          s1, s7, s1
                  xor          a4, s8, s6
                  srai         tp, a5, 23
                  srai         t3, ra, 25
                  slti         zero, a4, -330
                  sltiu        a5, s2, -2002
                  sll          zero, s8, s4
1146:             srai         t3, a4, 27
                  beq          a0, s8, 1150f
                  srl          a6, t4, t4
                  srl          ra, a6, tp
1150:             ori          a5, s9, -788
                  bne          s0, gp, 1160f
                  or           s6, s11, s11
                  xor          s7, s11, a1
                  slti         s5, a4, 716
                  ori          tp, a4, 2047
                  nop
                  slt          s11, ra, s9
                  sll          t2, s8, t0
                  srli         ra, s5, 10
1160:             addi         ra, gp, -190
                  lui          tp, 615937
                  sub          s5, s10, t2
                  sltu         s0, a6, s4
                  bgeu         a0, t0, 1173f
                  and          a5, s8, s2
                  lui          s4, 638018
                  slti         ra, gp, -152
                  sub          s11, s9, gp
                  bne          zero, t6, 1180f
                  sll          s4, sp, zero
                  srai         t3, s8, 24
                  srai         s5, s10, 28
1173:             bltu         s11, t3, 1178f
                  add          zero, a6, t4
                  or           s4, zero, s10
                  or           s5, s9, s2
                  and          s11, s9, s9
1178:             bltu         s0, zero, 1190f
                  sll          a1, t4, t0
1180:             bltu         a0, t4, 1193f
                  blt          t6, t0, 1196f
                  lui          a1, 192555
                  or           s2, s10, s5
                  slt          s0, s1, t1
                  or           t1, gp, a6
                  addi         t2, s8, -1909
main_5:           jal          t1, 17f
0:                jal          ra, 9f
1:                jal          ra, 15f
2:                jal          t1, 18f
3:                jal          s3, 2b
4:                jal          t1, 3b
5:                jal          ra, 10f
6:                jal          t4, 7f
7:                jal          t1, 4b
8:                jal          ra, 6b
9:                jal          ra, 13f
10:               jal          ra, 19f
11:               jal          tp, 5b
12:               jal          ra, 20f
13:               jal          s9, 16f
14:               jal          ra, 8b
15:               jal          t0, 11b
16:               jal          t1, 14b
17:               jal          ra, 12b
18:               jal          ra, 1b
19:               jal          t3, 21f
20:               jal          ra, 0b
21:               nop
                  bgeu         s9, a6, 1197f
                  srai         t5, s11, 0
                  bge          t4, t1, 1198f
1190:             xori         ra, t0, -1470
                  slti         s1, zero, -1899
                  bge          s7, t4, 1201f
1193:             xori         ra, s11, -852
                  bne          s0, a3, 1197f
                  add          t0, s2, a6
1196:             xor          a2, t4, s7
1197:             slti         s5, ra, -340
1198:             sltu         a5, t5, s1
                  blt          s9, a3, 1208f
                  andi         s8, s0, 65
1201:             andi         s4, t5, 1370
                  beq          s0, a0, 1207f
                  sltu         tp, a4, ra
                  blt          s3, s10, 1209f
                  bltu         a6, t5, 1218f
                  srl          t1, s8, a0
1207:             add          a0, a0, s3
1208:             bne          s7, t2, 1214f
1209:             sub          ra, s1, s3
                  add          s5, t1, s7
                  srl          s7, s8, t3
                  srl          s3, zero, s4
                  srli         zero, s6, 3
1214:             bge          zero, t0, 1218f
                  nop
                  sltiu        s4, a3, -731
                  bne          s9, a3, 1222f
1218:             bltu         tp, a3, 1238f
                  add          s8, s1, t0
                  sub          a0, a2, a7
                  srai         a6, s3, 20
1222:             bge          a4, s5, 1224f
main_9:           jal          t1, 1f
0:                jal          ra, 11f
1:                jal          t1, 8f
2:                jal          t0, 18f
3:                jal          a6, 4f
4:                jal          s3, 16f
5:                jal          ra, 17f
6:                jal          t1, 2b
7:                jal          t1, 10f
8:                jal          ra, 5b
9:                jal          t1, 12f
10:               jal          ra, 15f
11:               jal          t1, 9b
12:               jal          ra, 13f
13:               jal          a1, 7b
14:               jal          a5, 3b
15:               jal          a1, 14b
16:               jal          ra, 6b
17:               jal          gp, 0b
18:               addi         s6, s3, 54
                  ori          sp, s2, -1523
1224:             srli         zero, s11, 25
                  slli         tp, s4, 24
                  xor          s3, a3, a4
                  nop
                  lui          s6, 591927
                  bgeu         s7, ra, 1238f
                  addi         s3, sp, 750
                  lui          a2, 697684
                  sltu         s3, t1, s10
                  bltu         s9, a7, 1250f
                  ori          t0, a1, 1003
                  beq          a3, s1, 1236f
1236:             ori          t2, t4, -1726
                  auipc        s5, 623249
1238:             sll          zero, t4, a6
                  sltu         s9, t1, s3
                  srli         t3, s5, 23
                  slti         t0, s11, -1720
                  andi         s1, tp, -2039
                  srai         s5, zero, 25
                  srai         ra, s2, 8
                  srl          t2, s5, t0
                  bne          a0, s11, 1252f
                  bne          a6, a7, 1251f
                  slt          t4, t3, s3
                  sra          s4, t4, a0
1250:             sltiu        s2, a3, 146
1251:             blt          s7, tp, 1262f
1252:             bgeu         s8, s6, 1259f
                  and          s10, zero, s7
                  srai         ra, sp, 13
                  sra          a6, s1, s4
                  nop
                  auipc        s10, 470828
                  slti         s9, t5, 47
1259:             sltiu        s3, sp, 754
                  add          a1, s6, s5
                  add          s10, t6, s6
1262:             nop
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            slti         a4, s6, 1490
                  addi         a7, a7, -40
                  addi         s10, s3, 1371
                  sw           t1, 4(a7)
                  auipc        s1, 290572
                  lui          s10, 558997
                  add          tp, t4, s1
                  andi         s7, s1, -1972
                  sra          t3, t5, ra
                  nop
                  sltu         a6, t5, a5
                  sub          zero, a7, s8
                  nop
                  sra          tp, t4, a2
                  add          a6, t2, s7
                  srl          a4, t2, a2
                  auipc        s1, 512068
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  srai         tp, t4, 2
                  addi         a4, s0, -717
                  srli         gp, s6, 22
                  xor          a6, s1, t3
                  nop
                  auipc        t2, 19713
                  slli         s7, gp, 27
                  bne          s10, a5, 22f
                  srai         tp, t4, 8
                  bgeu         s2, s1, 24f
                  sra          s4, a1, sp
                  srli         a6, t2, 20
                  sltu         t4, t1, s8
                  bltu         a6, zero, 17f
                  nop
                  blt          t3, t3, 24f
                  lui          s7, 409952
17:               xor          s1, t3, t6
                  and          s3, s1, tp
                  srl          s1, gp, s9
                  sll          t5, t4, s2
                  bgeu         zero, a5, 24f
22:               bne          a6, sp, 24f
                  sll          s9, t5, s8
24:               nop
                  lw           t1, 4(a7)
                  and          ra, a0, t5
                  srli         a0, a3, 16
                  xor          ra, s11, t0
                  addi         a7, a7, 40
                  lui          s9, 302964
                  sltu         s7, s6, a6
                  xor          s1, s8, s3
51:               addi x5, x6, 0
51:               jalr x5, x5, 0
sub_2:            and          a5, a3, s1
                  sub          a1, tp, t6
                  or           s2, a1, s4
                  andi         s11, tp, 1972
                  addi         a7, a7, -60
                  or           s1, a7, sp
                  sw           t1, 4(a7)
                  nop
                  andi         a6, s4, -718
                  slli         t0, a1, 8
                  sltiu        a4, s5, 1704
sub_2_0:          jal          t1, 12f
0:                jal          ra, 20f
1:                jal          t1, 10f
2:                jal          t1, 3f
3:                jal          ra, 23f
4:                jal          t4, 17f
5:                jal          ra, 26f
6:                jal          ra, 25f
7:                jal          t1, 24f
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          ra, 22f
11:               jal          t1, 15f
12:               jal          s7, 11b
13:               jal          ra, 6b
14:               jal          ra, 18f
15:               jal          ra, 1b
16:               jal          ra, 14b
17:               jal          ra, 19f
18:               jal          t4, 13b
19:               jal          gp, 2b
20:               jal          ra, 16b
21:               jal          t1, 4b
22:               jal          ra, 21b
23:               jal          t1, 8b
24:               jal          ra, 0b
25:               jal          ra, 5b
26:               slli         tp, t6, 25
sub_2_1:          jal          t1, 7f
0:                jal          s6, 20f
1:                jal          ra, 9f
2:                jal          t1, 15f
3:                jal          ra, 22f
4:                jal          ra, 18f
5:                jal          gp, 11f
6:                jal          ra, 1b
7:                jal          ra, 0b
8:                jal          ra, 4b
9:                jal          a2, 19f
10:               jal          a1, 23f
11:               jal          gp, 16f
12:               jal          ra, 2b
13:               jal          s4, 5b
14:               jal          ra, 3b
15:               jal          ra, 17f
16:               jal          ra, 21f
17:               jal          ra, 14b
18:               jal          tp, 13b
19:               jal          s11, 10b
20:               jal          ra, 8b
21:               jal          ra, 12b
22:               jal          t1, 6b
23:               and          t0, sp, t1
                  xor          t0, s7, s8
                  slti         s11, s9, -953
                  srl          s10, a4, t2
                  sltu         tp, s2, s7
                  bltu         s5, tp, 9f
                  auipc        s2, 182558
                  xori         s4, t2, 1698
                  slli         s3, t1, 20
                  add          s9, t6, s10
9:                lui          gp, 850614
                  lui          a0, 910156
                  beq          a1, s2, 29f
                  lui          a2, 569005
                  bltu         s6, s0, 33f
                  srli         t5, s2, 25
                  addi         t5, s5, 1107
                  bne          tp, t4, 23f
                  auipc        t1, 306319
                  bltu         ra, s1, 25f
                  sra          s7, t0, s6
                  xor          s1, a2, ra
                  bne          s5, a3, 37f
                  sltiu        a2, t5, 1836
23:               srl          sp, a4, a7
                  srl          t0, s0, a3
25:               andi         a4, a4, 1555
                  xori         s3, s3, 1353
                  sra          a1, t2, t5
                  beq          zero, a4, 35f
29:               sltiu        s0, s9, -477
                  srl          a1, tp, sp
                  beq          a5, sp, 44f
                  slli         a6, s8, 10
33:               srai         s5, s5, 25
                  or           tp, s9, s3
35:               bltu         t1, s11, 47f
                  bne          s5, s1, 49f
37:               slti         s6, t2, -1095
                  srli         a5, sp, 18
                  sltu         s3, a2, s10
                  ori          s2, s9, 976
                  blt          t1, s2, 56f
                  ori          ra, s10, -952
                  bgeu         s4, s7, 57f
44:               slli         a6, a2, 4
                  bgeu         s1, s10, 50f
                  add          s9, a5, t1
47:               srli         tp, tp, 3
                  and          a4, zero, t5
49:               srl          sp, s8, a0
50:               slli         a4, t3, 18
                  xori         zero, a4, -750
                  sll          a1, s11, s11
                  slti         s2, t0, -125
                  ori          s11, s5, 662
                  beq          s4, ra, 62f
56:               ori          a0, t1, -804
57:               or           a4, t3, a0
                  sra          a6, a1, t2
                  bne          s10, a2, 67f
                  beq          tp, s8, 68f
                  lui          s7, 803491
62:               blt          s8, a5, 66f
                  sltu         s2, s8, t4
                  blt          a6, a6, 74f
                  xori         tp, s2, 835
66:               and          a5, t3, ra
67:               auipc        s2, 512708
68:               sltu         tp, a2, s10
                  bgeu         zero, t3, 72f
                  sltiu        a1, t2, 6
                  srai         gp, a4, 5
72:               lui          t1, 278619
                  srl          a1, t5, t4
74:               sll          a5, sp, t3
                  or           t0, s0, s2
                  or           t1, t6, s2
                  slti         a0, a4, -1751
                  lui          t3, 401329
                  bltu         a0, a6, 80f
80:               slt          s11, s6, s8
                  blt          s10, s11, 91f
                  and          a2, ra, a1
                  ori          s7, ra, 1278
                  beq          a2, t1, 103f
                  or           t0, a0, a0
                  add          s4, s2, s1
                  or           a6, t6, t5
                  and          s11, s9, t0
                  sll          s10, t3, a1
                  auipc        s2, 576738
91:               ori          s8, s8, 1022
                  ori          s7, s3, 40
                  slli         s8, zero, 5
                  slt          s10, s9, s8
                  bge          s2, t6, 97f
                  bge          s10, t4, 101f
97:               srai         sp, s10, 19
                  andi         t3, t0, 1208
                  bltu         tp, t6, 101f
                  sub          sp, s4, t0
101:              beq          s11, s8, 103f
                  slli         gp, s2, 16
103:              srai         gp, s4, 8
                  addi         ra, sp, 600
                  and          s4, zero, t2
                  slti         s4, t6, 1621
                  xori         s11, s2, 1619
                  bne          gp, t5, 124f
                  sll          a1, a3, a1
                  add          a6, t2, zero
                  bge          t2, t0, 127f
                  bgeu         t6, s2, 129f
                  or           t4, a5, s5
                  sltiu        ra, s7, -18
                  bltu         ra, ra, 130f
                  blt          s2, s3, 124f
                  xor          t3, a4, t1
                  srai         s6, t5, 25
                  blt          a2, s0, 126f
                  sltu         a6, s8, t6
                  addi         a1, s4, -884
                  bne          t6, s9, 127f
                  bgeu         tp, s9, 133f
124:              srli         s10, s9, 13
                  addi         t1, a4, -838
126:              auipc        s11, 746631
127:              xor          s3, ra, sp
                  sra          s11, a4, gp
129:              and          t1, t4, zero
130:              xor          zero, gp, a4
                  slti         gp, t1, -1137
                  auipc        a1, 538347
133:              slt          sp, a2, t0
                  blt          t5, t6, 136f
                  bge          t5, a0, 138f
136:              srl          s0, a6, s8
                  srli         t3, a4, 25
138:              slt          a6, s5, t2
                  lw           t1, 4(a7)
                  srli         tp, gp, 13
                  xor          zero, a0, tp
                  addi         a7, a7, 60
                  slli         s9, t2, 0
208:              addi x18, x6, 0
208:              jalr x18, x18, 0
sub_5:            ori          gp, s5, 1360
                  beq          s2, zero, sub_5_stack_p
sub_5_stack_p:    addi         a7, a7, -64
                  xor          t2, s10, s11
                  sw           t1, 4(a7)
                  add          a1, zero, s3
                  sra          tp, t5, t3
                  sub          s8, a1, s11
                  srli         s11, s8, 31
                  addi         t3, s2, 752
                  slti         a1, a2, -788
sub_5_15:         jal          t1, 3f
0:                jal          ra, 2f
1:                jal          sp, 6f
2:                jal          gp, 4f
3:                jal          ra, 8f
4:                jal          ra, 7f
5:                jal          s8, 10f
6:                jal          ra, 0b
7:                jal          ra, 9f
8:                jal          ra, 12f
9:                jal          ra, 11f
10:               jal          ra, 1b
11:               jal          ra, 13f
12:               jal          t1, 5b
13:               sra          s1, s2, a2
sub_5_10:         jal          t1, 5f
0:                jal          ra, 22f
1:                jal          ra, 24f
2:                jal          s1, 17f
3:                jal          t1, 13f
4:                jal          ra, 14f
5:                jal          tp, 18f
6:                jal          ra, 0b
7:                jal          s8, 8f
8:                jal          t1, 25f
9:                jal          ra, 7b
10:               jal          s0, 15f
11:               jal          t1, 21f
12:               jal          ra, 20f
13:               jal          t1, 23f
14:               jal          ra, 11b
15:               jal          t1, 6b
16:               jal          ra, 2b
17:               jal          ra, 12b
18:               jal          ra, 16b
19:               jal          ra, 3b
20:               jal          ra, 1b
21:               jal          ra, 9b
22:               jal          ra, 4b
23:               jal          ra, 10b
24:               jal          ra, 19b
25:               ori          a5, t3, 492
sub_5_13:         jal          t1, 10f
0:                jal          ra, 3f
1:                jal          ra, 21f
2:                jal          gp, 16f
3:                jal          a5, 22f
4:                jal          t1, 20f
5:                jal          t2, 18f
6:                jal          ra, 0b
7:                jal          ra, 14f
8:                jal          ra, 11f
9:                jal          sp, 5b
10:               jal          ra, 2b
11:               jal          ra, 26f
12:               jal          ra, 19f
13:               jal          ra, 1b
14:               jal          ra, 24f
15:               jal          ra, 8b
16:               jal          ra, 17f
17:               jal          t1, 13b
18:               jal          ra, 15b
19:               jal          a0, 7b
20:               jal          ra, 6b
21:               jal          ra, 4b
22:               jal          t0, 25f
23:               jal          t1, 27f
24:               jal          ra, 23b
25:               jal          ra, 9b
26:               jal          ra, 12b
27:               andi         s7, t0, -1586
sub_5_14:         jal          t1, 9f
0:                jal          s0, 13f
1:                jal          ra, 0b
2:                jal          ra, 14f
3:                jal          ra, 6f
4:                jal          t1, 1b
5:                jal          a4, 10f
6:                jal          s3, 12f
7:                jal          gp, 5b
8:                jal          t1, 7b
9:                jal          ra, 3b
10:               jal          ra, 4b
11:               jal          ra, 8b
12:               jal          a5, 15f
13:               jal          t0, 2b
14:               jal          ra, 16f
15:               jal          t1, 11b
16:               jal          t1, 17f
17:               slli         s7, a0, 23
sub_5_3:          jal          t1, 14f
0:                jal          ra, 18f
1:                jal          a2, 13f
2:                jal          t1, 16f
3:                jal          ra, 0b
4:                jal          ra, 20f
5:                jal          s10, 1b
6:                jal          t1, 24f
7:                jal          ra, 17f
8:                jal          a5, 5b
9:                jal          s10, 19f
10:               jal          a2, 23f
11:               jal          ra, 25f
12:               jal          ra, 28f
13:               jal          s11, 6b
14:               jal          ra, 11b
15:               jal          ra, 29f
16:               jal          ra, 9b
17:               jal          t1, 2b
18:               jal          t1, 27f
19:               jal          t1, 4b
20:               jal          t1, 26f
21:               jal          tp, 15b
22:               jal          ra, 8b
23:               jal          gp, 3b
24:               jal          t1, 7b
25:               jal          ra, 10b
26:               jal          ra, 12b
27:               jal          ra, 22b
28:               jal          s10, 21b
29:               slt          s5, t4, t4
sub_5_0:          jal          t1, 12f
0:                jal          ra, 6f
1:                jal          t1, 2f
2:                jal          a5, 14f
3:                jal          t0, 13f
4:                jal          s9, 8f
5:                jal          a2, 1b
6:                jal          ra, 4b
7:                jal          s9, 23f
8:                jal          t1, 3b
9:                jal          t1, 10f
10:               jal          s6, 16f
11:               jal          a5, 18f
12:               jal          t1, 15f
13:               jal          ra, 17f
14:               jal          s5, 9b
15:               jal          ra, 22f
16:               jal          t1, 7b
17:               jal          ra, 11b
18:               jal          tp, 20f
19:               jal          ra, 0b
20:               jal          ra, 21f
21:               jal          tp, 5b
22:               jal          s8, 19b
23:               slli         s4, s3, 19
sub_5_7:          jal          t1, 12f
0:                jal          ra, 21f
1:                jal          ra, 19f
2:                jal          t1, 4f
3:                jal          a5, 9f
4:                jal          t1, 6f
5:                jal          ra, 2b
6:                jal          ra, 17f
7:                jal          ra, 8f
8:                jal          ra, 13f
9:                jal          ra, 23f
10:               jal          gp, 15f
11:               jal          sp, 24f
12:               jal          sp, 14f
13:               jal          t1, 5b
14:               jal          ra, 16f
15:               jal          ra, 22f
16:               jal          ra, 10b
17:               jal          a5, 0b
18:               jal          t1, 7b
19:               jal          a0, 20f
20:               jal          ra, 18b
21:               jal          t1, 11b
22:               jal          ra, 3b
23:               jal          ra, 1b
24:               srl          s8, a7, a6
sub_5_8:          jal          t1, 2f
0:                jal          a4, 12f
1:                jal          s3, 13f
2:                jal          ra, 11f
3:                jal          ra, 8f
4:                jal          t1, 9f
5:                jal          ra, 10f
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          ra, 14f
9:                jal          ra, 7b
10:               jal          s6, 3b
11:               jal          ra, 1b
12:               jal          ra, 6b
13:               jal          ra, 0b
14:               slt          s9, t3, s5
sub_5_12:         jal          t1, 20f
0:                jal          t1, 10f
1:                jal          ra, 12f
2:                jal          t1, 9f
3:                jal          ra, 4f
4:                jal          t0, 2b
5:                jal          ra, 6f
6:                jal          ra, 11f
7:                jal          ra, 25f
8:                jal          t1, 22f
9:                jal          t1, 7b
10:               jal          s2, 17f
11:               jal          s0, 18f
12:               jal          s5, 26f
13:               jal          gp, 16f
14:               jal          ra, 13b
15:               jal          t1, 23f
16:               jal          s7, 19f
17:               jal          t4, 14b
18:               jal          t1, 0b
19:               jal          t1, 1b
20:               jal          ra, 8b
21:               jal          s5, 5b
22:               jal          t1, 15b
23:               jal          ra, 3b
24:               jal          ra, 21b
25:               jal          t5, 24b
26:               jal          s11, 27f
27:               andi         a5, s10, 1639
sub_5_1:          jal          t1, 7f
0:                jal          t1, 16f
1:                jal          ra, 19f
2:                jal          t1, 1b
3:                jal          sp, 30f
4:                jal          ra, 5f
5:                jal          t0, 9f
6:                jal          t1, 26f
7:                jal          ra, 21f
8:                jal          tp, 3b
9:                jal          ra, 14f
10:               jal          ra, 17f
11:               jal          ra, 29f
12:               jal          ra, 11b
13:               jal          a2, 28f
14:               jal          ra, 13b
15:               jal          t1, 20f
16:               jal          ra, 15b
17:               jal          s8, 24f
18:               jal          t1, 23f
19:               jal          t1, 18b
20:               jal          ra, 6b
21:               jal          s0, 0b
22:               jal          ra, 8b
23:               jal          sp, 25f
24:               jal          ra, 22b
25:               jal          t1, 4b
26:               jal          gp, 2b
27:               jal          ra, 12b
28:               jal          t1, 27b
29:               jal          s1, 10b
30:               srli         t1, a0, 24
sub_5_4:          jal          t1, 8f
0:                jal          ra, 6f
1:                jal          tp, 7f
2:                jal          t2, 3f
3:                jal          ra, 1b
4:                jal          ra, 5f
5:                jal          ra, 2b
6:                jal          t1, 9f
7:                jal          a6, 0b
8:                jal          t1, 4b
9:                jal          ra, 10f
10:               sub          t4, t4, ra
sub_5_9:          jal          t1, 9f
0:                jal          ra, 11f
1:                jal          t1, 0b
2:                jal          t1, 3f
3:                jal          ra, 17f
4:                jal          sp, 7f
5:                jal          ra, 15f
6:                jal          ra, 14f
7:                jal          ra, 16f
8:                jal          ra, 6b
9:                jal          t1, 5b
10:               jal          gp, 12f
11:               jal          ra, 13f
12:               jal          ra, 4b
13:               jal          ra, 8b
14:               jal          ra, 2b
15:               jal          t3, 10b
16:               jal          ra, 1b
17:               jal          ra, 18f
18:               sra          s5, t3, ra
                  xor          s6, s6, tp
                  slti         tp, a1, 497
                  nop
                  and          s7, s11, t1
                  sltiu        tp, s5, 1285
                  sub          s1, a7, ra
                  sub          a4, a3, s1
                  bgeu         a4, t6, 21f
                  or           t5, t4, s5
                  slli         s5, a7, 16
                  slt          gp, s6, s0
                  bge          gp, a0, 24f
                  and          ra, s1, t0
                  sub          s9, a2, tp
                  addi         t0, s0, 1097
                  bltu         t2, t5, 25f
                  bge          a1, s8, 27f
                  add          s10, t4, s5
                  bne          t2, sp, 36f
                  addi         s10, t4, 1039
                  nop
21:               srai         s1, gp, 21
                  add          a4, sp, s3
                  sub          s7, s7, s7
24:               sltiu        t1, sp, -1456
25:               sltiu        t4, t3, 554
                  sra          t0, tp, ra
27:               xor          a5, t3, s1
sub_5_6:          jal          t1, 1f
0:                jal          ra, 11f
1:                jal          tp, 12f
2:                jal          t1, 10f
3:                jal          ra, 5f
4:                jal          ra, 7f
5:                jal          ra, 8f
6:                jal          ra, 13f
7:                jal          ra, 9f
8:                jal          s0, 2b
9:                jal          ra, 6b
10:               jal          t4, 0b
11:               jal          ra, 4b
12:               jal          ra, 3b
13:               auipc        t0, 377513
                  xor          a6, a4, a2
                  xori         s8, a3, 1684
                  addi         gp, a0, -1051
                  bltu         t3, t6, 51f
                  bne          a0, s2, 40f
                  or           gp, zero, s1
                  blt          ra, s2, 42f
                  or           a6, s1, t1
36:               auipc        s4, 593551
                  and          a6, a1, s6
                  and          t0, t3, s2
                  slti         ra, a0, -1171
40:               xori         t2, a0, -975
                  blt          s2, s9, 48f
42:               nop
                  sll          sp, t1, s8
                  sub          s8, s3, t2
                  and          s8, t1, t6
                  slti         s2, s0, 194
                  sltu         a2, a2, a2
48:               slli         s0, t4, 0
                  add          s10, s0, a6
                  andi         s10, s0, -1379
51:               srai         a2, s4, 10
                  beq          a5, a4, 71f
                  bgeu         s11, a5, 69f
                  slt          s8, s4, t2
                  blt          s4, gp, 70f
                  or           t1, s1, t3
                  bge          s6, t1, 71f
                  bge          s9, gp, 61f
                  slti         s6, s7, -744
                  add          s2, s6, a5
61:               slli         a4, s5, 15
                  addi         t0, t5, -977
                  sra          gp, a5, s2
                  and          s9, tp, t6
                  addi         s3, s6, 1913
                  srli         t1, s3, 18
                  slt          a5, t0, t6
                  bge          sp, a0, 84f
69:               srli         s2, t3, 15
70:               bne          t0, zero, 77f
71:               nop
                  auipc        s8, 191987
                  slli         a4, t3, 7
                  bge          a2, t3, 76f
                  bge          a1, tp, 90f
76:               srai         s3, s0, 28
77:               slt          t5, s0, s5
                  slli         s4, a0, 27
                  bltu         s8, s8, 87f
                  or           sp, s7, s6
                  add          s9, s11, s0
                  lui          s5, 123112
                  add          a4, s11, s1
84:               bge          t0, a2, 98f
                  addi         s6, t5, -1195
                  auipc        s5, 815865
87:               sltiu        s3, a2, -237
                  xori         a1, gp, 1508
                  srli         a4, a3, 4
90:               srai         a0, tp, 10
                  add          s3, a3, s11
                  lui          s9, 742594
                  addi         a2, s6, -1090
                  addi         a1, a3, -215
                  and          t2, s10, a7
                  add          s0, t0, ra
                  bltu         s6, sp, 104f
98:               slt          a2, t0, s4
                  slt          a0, tp, gp
                  bge          t6, a2, 120f
                  slti         s7, a5, -581
                  srli         gp, a7, 12
                  andi         s2, a0, -1094
104:              srli         zero, a4, 30
                  ori          a6, a3, 52
                  auipc        s7, 151367
                  slli         s10, a0, 8
                  addi         t2, zero, -580
                  sra          t4, a7, s4
                  sub          gp, t4, a7
                  blt          s10, tp, 114f
                  slti         s6, sp, -104
                  slt          sp, a4, zero
114:              xor          a0, a5, s1
                  ori          s3, gp, 1297
                  sra          a5, a0, t4
                  slt          s10, s8, s8
                  slti         s2, sp, -886
                  blt          s11, t1, 136f
120:              slli         s5, a3, 5
                  or           s11, a3, sp
                  xori         a6, a7, -1908
                  auipc        t2, 337607
                  bgeu         t2, t2, 127f
                  bgeu         s4, s3, 136f
                  xori         ra, ra, 1856
127:              add          s10, a6, a2
                  xori         gp, s11, -1782
                  sub          a1, a1, s4
                  srai         s0, zero, 29
                  srl          t2, tp, a6
                  ori          s3, t4, -1644
                  sltu         sp, t2, ra
                  beq          s2, a5, 147f
                  sltiu        s11, t5, -1373
136:              sll          s4, s9, s8
                  add          t4, s9, gp
                  slli         s0, t2, 24
                  addi         t3, zero, -552
                  bge          s8, tp, 158f
                  blt          a1, s4, 159f
                  xori         t1, t1, 525
                  sub          s6, t3, s6
                  nop
                  bltu         s7, s7, 164f
                  sltiu        s0, s7, -636
147:              sll          s2, t0, zero
                  or           t0, s9, a1
                  add          t4, ra, t3
                  or           a0, s1, s3
                  bltu         a1, a5, 161f
                  nop
                  srai         s6, a0, 25
                  slli         t0, a1, 26
                  xori         a6, s10, 643
                  sra          s11, t2, gp
                  sll          s11, gp, a6
158:              srai         a4, s6, 26
159:              or           a4, s8, t0
                  or           s3, s2, a7
161:              and          s9, s8, t6
                  xor          s6, s1, t4
                  slli         t0, zero, 9
164:              sra          s4, sp, s11
                  bgeu         t6, ra, 173f
                  or           s1, s6, zero
                  xor          tp, a1, t2
                  sll          s0, s7, s4
                  auipc        a5, 51913
                  beq          a4, sp, 188f
                  slti         t5, s8, -604
                  slli         s5, a2, 12
173:              xor          zero, t1, zero
                  slli         gp, s10, 23
                  auipc        t3, 630318
                  addi         ra, t6, 602
                  nop
                  sra          a5, t2, t4
                  srli         a6, t4, 9
                  xor          gp, t6, sp
                  xori         s10, t3, 402
                  xori         a2, tp, 1787
                  xor          t3, t2, t6
                  slt          a0, s11, tp
                  sub          zero, a1, s4
                  sub          tp, s5, t5
                  slti         s3, s0, 267
188:              and          gp, t4, a0
                  auipc        a5, 1046854
                  beq          a6, t4, 210f
                  xor          zero, t6, s10
                  sll          t1, a2, a4
                  or           a6, a5, s10
                  andi         a5, t3, 1738
                  bgeu         a0, t1, 203f
                  andi         s0, s10, 1702
                  xori         s7, tp, -941
                  sub          t1, s5, t4
                  sltiu        tp, a7, 2013
                  sll          ra, a0, s6
                  nop
                  xor          s4, zero, s5
203:              or           s7, t6, t4
                  srl          s1, t0, s3
                  or           s11, t0, t0
                  slli         ra, zero, 21
                  bne          s1, sp, 209f
                  sra          zero, s6, a4
209:              srl          s9, s9, s9
210:              srai         s11, a3, 18
                  add          s5, t1, tp
                  blt          t2, ra, 225f
                  bgeu         t0, s2, 228f
                  nop
                  slti         s7, s7, -967
                  nop
                  slti         s9, s0, 844
                  bgeu         s0, t4, 232f
                  sub          a2, s5, zero
                  lui          s10, 649527
                  add          a0, s5, s11
                  andi         a0, t4, -859
                  xor          a4, a5, s4
                  ori          s0, s10, -1578
225:              bgeu         t0, sp, 228f
                  bgeu         a5, a3, 246f
                  lui          a6, 37240
228:              sltu         a2, s2, a0
                  slli         s0, ra, 26
                  lui          s10, 305911
                  bne          s1, a5, 238f
232:              and          a2, a5, a6
                  slti         s7, t1, -1477
                  sltiu        a1, s9, -1841
                  slt          a5, a1, sp
                  bge          s0, zero, 250f
                  srl          s3, s11, s10
238:              blt          s2, s8, 241f
                  and          a0, a7, s0
                  srl          s11, s3, ra
241:              addi         zero, gp, -1783
                  nop
                  sltiu        t0, a3, -1817
                  blt          zero, s0, 255f
                  sltu         s1, s8, s11
246:              blt          gp, t1, 264f
                  slt          gp, t5, t6
                  srli         s9, s11, 7
                  bge          a7, s10, 267f
250:              lui          s2, 367738
                  srl          s3, s10, a4
                  sub          a4, t4, s1
sub_5_2:          jal          t1, 13f
0:                jal          t4, 3f
1:                jal          t1, 2f
2:                jal          ra, 8f
3:                jal          sp, 7f
4:                jal          ra, 10f
5:                jal          s2, 17f
6:                jal          tp, 11f
7:                jal          t1, 9f
8:                jal          s11, 20f
9:                jal          ra, 14f
10:               jal          ra, 5b
11:               jal          t1, 0b
12:               jal          t1, 4b
13:               jal          ra, 15f
14:               jal          s2, 16f
15:               jal          ra, 19f
16:               jal          s8, 18f
17:               jal          t1, 1b
18:               jal          ra, 12b
19:               jal          ra, 6b
20:               addi         tp, t3, -747
                  and          a0, t0, s9
                  add          t3, s4, ra
255:              srli         ra, sp, 31
                  xori         t1, t2, 274
                  add          t3, s9, a4
                  srai         s0, a3, 29
                  auipc        a2, 516036
                  sltiu        s3, a1, 1134
                  srl          s11, t1, t1
                  add          a0, s6, zero
                  bgeu         a3, t1, 279f
264:              bne          t3, s9, 280f
                  sll          a2, t4, a2
                  blt          a7, t1, 274f
267:              sll          t4, ra, s4
                  slt          sp, a0, s4
                  slti         ra, s3, -432
                  srl          s5, a5, s7
                  srai         ra, a4, 4
                  slli         ra, t1, 3
                  xori         s1, a5, 784
274:              slti         t5, s11, -1543
                  srai         s1, tp, 16
                  slt          s5, s1, a6
                  and          sp, t0, t5
                  blt          a4, t4, 292f
279:              auipc        zero, 280805
280:              slt          ra, t6, s3
                  blt          gp, t5, 288f
                  sub          a6, s11, a1
                  xor          t2, s3, a4
                  add          s11, s8, s8
                  sra          s7, ra, t3
                  sra          s6, ra, a3
                  bge          sp, t0, 300f
288:              lui          s10, 274655
                  blt          s11, s9, 308f
                  srai         s5, sp, 24
                  addi         t3, s8, 922
292:              bge          s8, t2, 309f
                  xori         t3, s2, -927
                  bge          a3, s11, 297f
                  bltu         s2, t3, 306f
                  nop
297:              slti         zero, a0, -831
                  addi         tp, t4, 242
                  and          gp, a0, s3
300:              srai         s3, s2, 28
                  or           s1, s8, s6
                  andi         t1, a1, -505
                  bltu         a3, s2, 322f
                  sra          zero, s9, tp
                  bltu         zero, s1, 312f
306:              slt          s2, a4, a6
                  sra          s6, a7, t4
308:              or           a6, s0, s2
309:              auipc        s1, 858291
                  auipc        ra, 619992
                  srli         tp, t1, 22
312:              and          s3, s2, a1
                  sll          a6, tp, a2
                  sll          t5, s7, t5
                  or           a4, s10, s1
                  slti         s2, s3, 1115
                  beq          s7, s7, 332f
                  bne          t2, s8, 326f
                  bge          a6, a5, 337f
                  nop
                  ori          a5, s8, 1985
322:              bgeu         s9, s4, 340f
                  slli         s11, s6, 12
                  slli         a0, gp, 12
                  sub          t3, zero, t6
326:              bge          s11, t6, 329f
                  slt          s2, gp, gp
                  sltiu        s11, s1, 57
329:              xori         a6, zero, 232
                  sll          s5, zero, a4
                  and          s4, t4, s1
332:              sll          ra, s10, a1
                  lui          t5, 654271
                  beq          ra, a6, 341f
                  or           s2, t4, t6
                  bne          a1, s5, 351f
337:              lui          sp, 1020995
                  or           s7, t5, ra
                  bge          t2, a3, 347f
340:              srl          s10, a5, s10
341:              srl          t0, s10, t4
                  xori         s2, ra, 479
                  bne          s8, t6, 363f
                  xor          t3, t5, tp
                  sll          zero, zero, t2
sub_5_11:         jal          t1, 10f
0:                jal          t1, 2f
1:                jal          s11, 7f
2:                jal          t1, 11f
3:                jal          ra, 12f
4:                jal          s10, 0b
5:                jal          ra, 1b
6:                jal          tp, 3b
7:                jal          a4, 6b
8:                jal          s7, 4b
9:                jal          ra, 8b
10:               jal          ra, 5b
11:               jal          s7, 13f
12:               jal          tp, 9b
13:               jal          ra, 14f
14:               srli         a6, a1, 0
                  srl          ra, t5, s6
347:              add          t5, a3, tp
                  srl          s8, t1, s4
                  blt          s8, s3, 365f
                  nop
351:              slt          t5, a6, zero
                  addi         sp, t3, 656
                  nop
                  sltiu        a6, t5, 779
                  srl          s7, a3, a0
                  slli         a2, t0, 24
                  slli         t5, a4, 28
                  add          t2, ra, a5
                  bge          t5, s8, 377f
                  srli         s9, a3, 0
                  sltu         t1, s0, ra
                  sra          s4, t0, t2
363:              sltiu        t2, a0, 764
                  auipc        t3, 1410
365:              sub          s9, s4, t5
                  ori          a4, t3, -952
                  sltiu        t3, s7, -1794
                  xori         s7, s7, 238
                  bltu         sp, s4, 383f
                  and          s6, s1, t5
                  sltiu        s6, a7, -1874
                  sra          t3, s5, s6
                  srli         t1, s2, 29
                  blt          s5, s9, 381f
                  sltiu        s4, a6, 247
                  bge          s10, s5, 389f
377:              bgeu         s2, a4, 380f
                  xori         s8, a7, -384
                  srai         s4, a2, 8
380:              srai         tp, t0, 17
381:              srl          a5, s1, s1
                  addi         s1, a0, -793
383:              add          s0, s5, t6
                  nop
                  sltiu        s3, ra, -89
                  andi         s0, a6, 536
                  xor          a0, t1, s0
                  sltu         s7, s4, tp
389:              slli         a4, s8, 31
                  addi         t3, a6, -1453
                  srli         a4, s3, 23
                  slt          s2, t1, zero
                  bgeu         s10, s3, 408f
                  bne          t1, sp, 396f
                  slli         s4, a3, 26
396:              nop
                  sll          a4, sp, t1
                  srli         s3, tp, 18
                  add          s0, s7, s7
                  bltu         s4, s7, 410f
                  slti         s8, a1, 490
                  and          t5, s7, t5
                  sra          s9, s8, a6
                  beq          s11, a0, 423f
                  auipc        s11, 609037
                  sltiu        a6, ra, -1148
                  or           s9, a6, s8
408:              auipc        s0, 799178
                  sltiu        a1, a3, 656
410:              bne          s10, s6, 413f
                  or           a1, t4, a7
                  auipc        t0, 468174
413:              bltu         s1, t5, 424f
                  sltiu        t4, a4, 261
                  blt          s2, sp, 428f
                  bgeu         a6, zero, 430f
                  xori         a5, s3, -25
                  sltiu        s10, s10, -1704
                  sub          t1, s5, s9
                  srai         s7, t5, 19
                  add          tp, t1, sp
                  slt          s3, a6, s8
423:              sltu         s5, gp, t5
424:              sltu         zero, a6, t3
                  sll          a5, s10, s11
                  slli         a5, t6, 27
                  slli         s2, s3, 26
428:              lui          a6, 1016975
                  xor          t4, gp, s5
430:              auipc        t0, 341494
                  xor          s11, s8, t3
                  srai         a6, s4, 20
                  ori          a6, a3, -198
                  bgeu         s2, s5, 450f
                  bgeu         s9, t1, 452f
                  ori          sp, s1, 40
                  slli         s5, a1, 23
                  or           s5, a2, s10
                  srai         s7, a6, 26
                  bge          t1, t4, 460f
                  srl          s3, t6, t1
                  srli         a4, t6, 14
                  add          s9, tp, t6
                  andi         s11, t5, 1380
                  ori          s5, s1, 1548
                  sll          sp, s0, a4
                  bgeu         ra, t1, 458f
                  sltu         tp, a0, t6
                  sll          a1, s7, gp
450:              bltu         a7, a5, 458f
                  bltu         a1, t6, 465f
452:              bge          sp, s9, 459f
                  sltu         tp, s0, s7
                  srli         s3, a7, 12
                  sub          s10, s7, a6
                  bge          t6, a4, 475f
                  sll          s6, sp, sp
458:              sra          a1, a3, t3
459:              bne          a1, s2, 472f
460:              slt          s6, a1, s5
                  lui          a2, 524466
                  nop
                  slt          a1, a1, s2
                  and          t0, t1, s4
465:              sra          s10, t2, sp
                  bltu         t3, a7, 473f
                  bge          a4, t2, 483f
                  or           s6, s5, a7
                  bltu         a0, a6, 483f
                  nop
                  sra          s1, s2, s10
472:              blt          s1, s6, 480f
473:              blt          t0, a6, 493f
                  addi         ra, t2, -525
475:              and          s0, s11, sp
                  lui          s8, 108286
                  bgeu         s10, s6, 496f
                  lui          s6, 325336
                  or           t3, t3, tp
480:              sll          s8, s4, s9
                  bge          s7, t6, 489f
                  andi         sp, s8, 562
483:              and          s7, s0, s10
                  sltiu        s9, s2, -413
                  lui          t5, 14038
                  xori         t5, t0, 475
                  auipc        a5, 312845
                  srai         s10, a1, 22
489:              sltiu        t3, ra, -502
                  sub          a0, ra, tp
                  bne          a0, s5, 510f
                  sra          t3, a2, s11
493:              slli         a5, a0, 1
                  lui          sp, 447578
                  sub          t5, s11, ra
496:              ori          a4, s2, 1444
                  nop
                  blt          s4, s6, 514f
                  bne          sp, t1, 502f
                  srl          s0, a1, a4
                  andi         t4, s9, 123
502:              xori         t4, s11, -1777
                  addi         tp, t3, -1745
                  or           t2, s4, s4
                  nop
                  sltiu        s5, t4, 1083
                  slti         s9, s4, 769
                  xori         s5, s10, -289
                  blt          ra, t5, 519f
510:              xor          t2, s10, s5
                  slt          ra, a7, s5
                  srli         t3, s9, 9
                  srli         s4, t6, 23
514:              srai         tp, t2, 16
                  addi         t1, a3, -1984
                  ori          t4, s6, 560
                  lui          t1, 199015
                  xor          a4, t1, sp
519:              sltiu        t2, a3, -748
                  srli         a6, a6, 20
                  addi         gp, a6, -2000
                  and          s0, s4, a2
                  auipc        s1, 736483
                  and          s11, s3, zero
                  srl          s7, a4, s0
                  bltu         t4, s9, 541f
                  or           s4, t5, s5
                  slt          s7, a4, a1
                  blt          ra, ra, 544f
                  addi         s5, ra, -494
                  lui          tp, 645881
                  srli         s9, s2, 8
                  bge          s8, ra, 544f
                  ori          t0, a4, 1100
                  srl          a2, t0, t2
                  blt          a0, a7, 550f
                  sltiu        gp, s5, 1971
                  srai         s1, a2, 12
                  srai         t1, a2, 2
                  sll          t1, s5, s10
541:              bne          s10, tp, 544f
                  slt          a0, s8, t5
                  slti         a0, a5, -1122
544:              xori         sp, s11, -2036
                  lui          t2, 913640
                  add          zero, s0, a5
                  blt          t2, t0, 555f
                  slti         s0, s5, 1277
                  srl          gp, t0, ra
550:              xor          a4, s4, s11
                  slt          s1, ra, s9
                  bltu         t6, sp, 565f
                  add          t2, s1, s1
                  slti         t0, ra, -498
555:              addi         s10, a3, -777
                  srli         s3, t2, 15
                  xor          gp, t4, s7
                  auipc        s5, 473486
                  sra          s1, s5, s0
                  nop
                  slli         t1, s11, 1
                  sltu         s5, a4, tp
                  addi         a0, s0, 535
                  blt          a1, gp, 567f
565:              slli         s2, t5, 18
                  srli         a4, s4, 22
567:              bltu         tp, s4, 574f
                  sra          a4, a5, a0
                  srli         a1, a6, 27
                  lui          t4, 63521
                  auipc        gp, 284962
                  nop
                  nop
574:              beq          t2, t4, 585f
                  beq          s5, s8, 582f
                  srai         s10, s9, 17
                  lui          s2, 701065
                  bltu         t1, ra, 598f
                  slli         s7, zero, 18
                  add          s1, t5, s0
                  srl          s5, s11, s3
582:              srl          a2, t1, s2
                  lui          s10, 417220
                  bltu         s6, a3, 601f
585:              bgeu         t0, a7, 603f
                  srai         t3, t6, 13
                  sll          s1, t3, zero
                  bge          tp, a0, 606f
                  srl          s7, tp, a2
                  auipc        s6, 1010304
                  sltu         t5, s3, t0
                  auipc        a6, 572062
                  slli         t2, a0, 8
                  srai         s0, sp, 10
                  sltu         s2, a7, zero
                  andi         t3, zero, -149
                  slli         s2, gp, 6
598:              andi         s4, t4, -1779
                  srai         tp, zero, 23
                  blt          gp, a4, 614f
601:              bltu         a3, a6, 619f
                  sra          a2, s2, zero
603:              addi         a0, t2, 1921
                  beq          a6, t2, 606f
                  bne          s4, t0, 613f
606:              sra          s9, sp, s7
                  bge          sp, tp, 621f
                  add          a0, s11, a5
                  srli         a0, t2, 15
                  slli         zero, a3, 8
                  lui          t5, 732287
                  srl          s2, ra, a2
613:              slli         a5, a6, 26
614:              bgeu         s2, s4, 630f
                  slt          a5, s2, a4
                  ori          a0, t6, -881
                  bne          s4, a5, 630f
                  blt          a7, gp, 628f
619:              sll          a1, t6, t4
                  bltu         gp, a0, 637f
621:              bne          a3, t6, 639f
                  xori         s4, s3, -1575
                  sub          s2, a3, a6
                  srai         s5, ra, 19
                  andi         a4, a5, -373
                  and          tp, s2, s3
                  sll          s3, s4, s11
628:              andi         s1, a5, -369
                  bgeu         a4, s7, 636f
630:              blt          t1, t5, 649f
                  auipc        a0, 477650
                  sltu         a6, s4, s6
                  addi         s10, s11, 1313
                  sltiu        a1, s7, -858
                  add          s3, a0, t4
636:              nop
637:              blt          a7, s3, 640f
                  sra          t1, s6, t1
639:              srli         zero, s10, 4
640:              sltiu        t5, t0, -1304
                  beq          t6, s8, 654f
                  bne          s11, s6, 656f
                  and          s4, a3, a0
                  srli         a5, s1, 3
                  srli         s6, s10, 3
                  sll          zero, tp, sp
                  sra          s6, s11, a6
                  xori         s3, s11, 573
649:              xori         a0, a3, 1201
                  lui          sp, 552011
                  bltu         a1, a2, 662f
                  xor          sp, tp, a3
sub_5_5:          jal          t1, 7f
0:                jal          s8, 11f
1:                jal          ra, 20f
2:                jal          s9, 8f
3:                jal          t1, 6f
4:                jal          ra, 19f
5:                jal          ra, 12f
6:                jal          ra, 0b
7:                jal          t1, 14f
8:                jal          t1, 4b
9:                jal          t1, 13f
10:               jal          ra, 15f
11:               jal          ra, 18f
12:               jal          ra, 10b
13:               jal          s2, 1b
14:               jal          ra, 9b
15:               jal          t1, 2b
16:               jal          ra, 5b
17:               jal          a1, 16b
18:               jal          a0, 17b
19:               jal          sp, 21f
20:               jal          t3, 3b
21:               sra          s3, ra, a3
                  bne          s2, s10, 656f
654:              xori         s4, t5, -256
                  slt          gp, s9, s1
656:              sub          s5, s11, t1
                  or           t5, t1, s7
                  srai         s8, t0, 31
                  add          sp, a2, a0
                  sltiu        tp, s3, 670
                  sltu         a2, t0, t1
662:              srli         sp, s1, 21
                  andi         t5, t5, 387
                  sub          s9, t1, s3
                  addi         s1, sp, -1020
                  bltu         sp, s2, 668f
                  bgeu         s10, s6, 681f
668:              slli         a5, s7, 0
                  bgeu         s3, t3, 677f
                  srai         s6, a3, 8
                  srl          s8, s7, ra
                  sltiu        s2, s10, 62
                  or           t3, zero, s3
                  bltu         s10, t3, 682f
                  sub          s9, s6, s8
                  beq          sp, tp, 695f
677:              and          s10, s6, a6
                  srli         t3, ra, 16
                  addi         t1, a6, 761
                  sub          ra, t1, a1
681:              sub          gp, s2, s8
682:              or           t1, a4, s7
                  ori          sp, s4, -1860
                  sltiu        t3, a6, -1763
                  bltu         s8, s2, 692f
                  addi         t1, s1, 1700
                  lui          s9, 903567
                  sub          s7, a6, tp
                  nop
                  sltu         s0, t4, ra
                  addi         a1, s3, -441
692:              beq          a2, a4, 695f
                  bne          s4, a2, 711f
                  sltu         tp, sp, ra
695:              and          gp, a2, t0
                  slli         s7, a1, 3
                  and          t0, a2, sp
                  sltiu        sp, s0, 1113
                  or           s3, zero, a2
                  bgeu         a1, a6, 720f
                  bne          s4, s6, 712f
                  add          s5, s7, t5
                  beq          a2, s5, 719f
                  xor          s10, s7, t3
                  bge          a6, s11, 712f
                  srli         t2, s3, 8
                  xori         t1, a6, -1623
                  bltu         s3, s8, 723f
                  beq          ra, s0, 729f
                  beq          s9, s11, 725f
711:              xor          tp, t6, s0
712:              xori         a4, s11, -1381
                  sll          zero, ra, a7
                  xor          gp, t2, zero
                  xor          s8, a0, s5
                  nop
                  blt          t5, t3, 735f
                  add          sp, t2, s6
719:              beq          a3, a7, 738f
720:              sll          gp, sp, ra
                  bltu         s5, a5, 738f
                  sltiu        gp, s11, -1200
723:              add          a4, s5, a0
                  and          s11, zero, t3
725:              sltu         a5, a3, a4
                  sra          t5, a6, sp
                  lui          a5, 785954
                  slli         t0, a7, 22
729:              bge          t2, a3, 731f
                  xori         a1, s0, 1331
731:              xor          ra, s11, t0
                  nop
                  bne          gp, t1, 748f
                  sltiu        t5, t2, 1057
735:              xori         s5, s11, -1479
                  slli         zero, a5, 7
                  bgeu         t0, s9, 745f
738:              blt          s7, t2, 754f
                  sub          sp, a3, t5
                  blt          s7, s5, 747f
                  sra          t4, a3, t2
                  beq          t1, s0, 753f
                  sll          s7, t3, ra
                  xor          s11, t2, tp
745:              slli         t3, t2, 11
                  sra          s1, a4, s0
747:              nop
748:              xor          sp, gp, tp
                  bltu         t3, a7, 759f
                  slli         a0, s1, 5
                  srl          zero, a7, s2
                  srl          s3, s6, a6
753:              addi         s0, a3, 1795
754:              xori         s5, t1, 1287
                  bgeu         tp, s3, 769f
                  ori          t5, s3, 845
                  bltu         t0, gp, 770f
                  andi         a2, s4, -7
759:              add          s0, a5, t0
                  slli         t1, s9, 1
                  bgeu         a0, a2, 764f
                  or           tp, s5, s6
                  bne          s0, sp, 770f
764:              sra          s9, t6, t4
                  bge          s0, s1, 783f
                  sltu         a1, s2, s5
                  xori         tp, a0, -1455
                  sll          a2, t3, sp
769:              sltiu        t0, t5, 996
770:              sll          a2, s9, s5
                  xori         t1, s9, 1401
                  nop
                  sra          a4, a4, s0
                  xor          s11, s10, s8
                  srli         s4, sp, 18
                  bge          t4, t6, 796f
                  bne          t5, a5, 795f
                  sltiu        t2, a1, -600
                  srli         t1, t6, 8
                  srli         s3, s1, 9
                  slli         tp, a7, 31
                  add          s6, a7, t4
783:              beq          a1, s8, 802f
                  auipc        a4, 514537
                  bltu         a6, gp, 796f
                  srli         s1, t1, 19
                  bge          t5, t6, 802f
                  slli         s5, t1, 25
                  bne          ra, s4, 805f
                  slli         t4, t1, 21
                  blt          t1, tp, 794f
                  and          gp, zero, a0
                  srli         a6, t1, 19
794:              add          s5, t0, s4
795:              andi         zero, a1, 297
796:              bne          t3, a6, 810f
                  sra          s5, s8, zero
                  slti         s3, s9, 881
                  add          s11, a5, s7
                  srl          s8, gp, tp
                  slli         sp, a3, 17
802:              bne          zero, a5, 810f
                  sra          s1, t5, a0
                  srai         s11, s3, 8
805:              xor          s4, s6, s0
                  auipc        s3, 307800
                  nop
                  nop
                  srli         tp, a0, 19
810:              sltiu        s0, a2, -1586
                  lui          t5, 642163
                  xori         s11, s4, -1486
                  slti         t2, s9, 1476
                  andi         t3, s3, -1628
                  bgeu         s1, sp, 828f
                  srl          sp, ra, zero
                  srl          s11, a1, a2
                  sra          s3, a0, a2
                  add          sp, t1, a7
                  sltiu        zero, s4, -1045
                  slt          tp, s6, s11
                  xori         s9, t0, -1853
                  ori          s3, s6, -949
                  srl          t5, s5, t4
                  bne          t2, s3, 832f
                  ori          a5, s4, -243
                  nop
828:              bne          a7, s2, 838f
                  srl          s7, gp, a6
                  blt          s4, t5, 838f
                  bltu         a5, s6, 838f
832:              nop
                  andi         sp, s9, -765
                  lui          gp, 748038
                  bltu         t3, a1, 838f
                  andi         s10, t3, 1349
                  sltu         t0, a1, t4
838:              nop
                  add          s0, s3, a7
                  or           ra, s11, a2
                  lw           t1, 4(a7)
                  and          a1, ra, t2
                  auipc        s9, 212937
                  addi         a7, a7, 64
                  lui          t4, 919088
                  xor          t2, t3, a4
                  auipc        a5, 320382
                  ori          t2, t5, -1688
                  or           s11, t6, t2
                  srai         t2, t4, 4
1219:             addi x19, x6, 0
1219:             jalr x19, x19, 0
sub_4:            nop
                  lui          s3, 143499
                  slli         t0, s11, 27
                  addi         a7, a7, -8
                  sub          gp, a7, a2
                  sw           t1, 4(a7)
                  xori         a6, sp, 2011
                  add          s9, a6, t0
                  auipc        s11, 529374
                  nop
                  srai         s2, a5, 11
sub_4_3:          jal          t1, 17f
0:                jal          ra, 7f
1:                jal          t1, 13f
2:                jal          ra, 6f
3:                jal          t1, 12f
4:                jal          a2, 14f
5:                jal          ra, 15f
6:                jal          t1, 0b
7:                jal          t4, 1b
8:                jal          ra, 4b
9:                jal          t1, 10f
10:               jal          s3, 5b
11:               jal          ra, 2b
12:               jal          ra, 16f
13:               jal          ra, 19f
14:               jal          t1, 3b
15:               jal          ra, 11b
16:               jal          ra, 9b
17:               jal          t0, 18f
18:               jal          t5, 8b
19:               or           a5, s0, a6
sub_4_1:          jal          t1, 7f
0:                jal          t1, 3f
1:                jal          ra, 18f
2:                jal          t5, 19f
3:                jal          ra, 6f
4:                jal          s4, 5f
5:                jal          s7, 12f
6:                jal          tp, 15f
7:                jal          s7, 11f
8:                jal          ra, 10f
9:                jal          t1, 8b
10:               jal          t1, 4b
11:               jal          t1, 0b
12:               jal          t1, 2b
13:               jal          s3, 1b
14:               jal          t1, 16f
15:               jal          ra, 14b
16:               jal          ra, 13b
17:               jal          ra, 9b
18:               jal          ra, 17b
19:               srl          a5, a5, t1
sub_4_0:          jal          t1, 1f
0:                jal          ra, 5f
1:                jal          ra, 19f
2:                jal          gp, 20f
3:                jal          ra, 18f
4:                jal          ra, 12f
5:                jal          ra, 28f
6:                jal          ra, 21f
7:                jal          ra, 17f
8:                jal          s3, 2b
9:                jal          ra, 26f
10:               jal          ra, 14f
11:               jal          t1, 15f
12:               jal          ra, 10b
13:               jal          t0, 27f
14:               jal          t1, 22f
15:               jal          ra, 23f
16:               jal          t1, 13b
17:               jal          t1, 9b
18:               jal          ra, 16b
19:               jal          tp, 24f
20:               jal          a0, 11b
21:               jal          t1, 0b
22:               jal          t0, 25f
23:               jal          ra, 3b
24:               jal          ra, 7b
25:               jal          t1, 8b
26:               jal          t1, 4b
27:               jal          ra, 6b
28:               andi         s6, s11, -2028
sub_4_2:          jal          t1, 5f
0:                jal          a6, 17f
1:                jal          tp, 6f
2:                jal          a1, 16f
3:                jal          t3, 7f
4:                jal          ra, 9f
5:                jal          ra, 3b
6:                jal          ra, 2b
7:                jal          ra, 1b
8:                jal          ra, 12f
9:                jal          a2, 10f
10:               jal          sp, 13f
11:               jal          ra, 15f
12:               jal          ra, 14f
13:               jal          ra, 8b
14:               jal          t5, 0b
15:               jal          ra, 4b
16:               jal          ra, 11b
17:               sltu         s7, a1, ra
                  bltu         s6, a4, 5f
                  bne          a3, a5, 15f
                  andi         s10, a1, 1314
                  xor          tp, s5, t4
                  blt          a5, ra, 11f
5:                auipc        s5, 382847
                  xori         s9, t1, 1380
                  and          s2, s2, a0
                  xori         a1, t1, -1756
                  bge          tp, t1, 15f
                  bltu         t4, s9, 14f
11:               bltu         s2, t1, 18f
                  bltu         s2, a6, 28f
                  slti         s3, s3, -1324
14:               sltiu        s4, t3, 232
15:               sub          s2, a1, t6
                  xori         s10, t1, -192
                  xor          t1, t4, a2
18:               slli         tp, s10, 6
                  slt          t4, a7, t4
                  srl          t0, a0, a3
                  slti         ra, sp, 70
                  nop
                  srl          t1, a5, t6
                  andi         t1, s8, 1409
                  xori         a1, s3, 1128
                  lui          ra, 553324
                  bltu         s8, s4, 31f
28:               xori         s11, s2, -67
                  srai         a5, a5, 9
                  add          t2, ra, tp
31:               xor          s0, sp, a1
                  srli         a2, a0, 12
                  srai         s3, gp, 22
                  xor          t1, s2, a4
                  sltu         a5, s0, t4
                  slli         a4, t2, 17
                  slti         t5, s8, 34
                  slli         sp, s7, 2
                  srli         t5, t3, 20
                  bltu         s1, s7, 47f
                  sub          t2, s8, s3
                  auipc        s8, 578150
                  srli         s4, s10, 14
                  beq          tp, a1, 46f
                  sltu         tp, s10, t1
46:               bgeu         s11, t0, 62f
47:               sltiu        t5, ra, 2023
                  beq          a5, t3, 62f
                  blt          s11, s2, 68f
                  sltu         t3, t1, a3
                  srai         t0, zero, 6
                  blt          sp, s10, 68f
                  sll          s1, t1, t1
                  add          s1, s9, ra
                  ori          gp, sp, 897
                  lui          t0, 990721
                  bgeu         s6, t6, 65f
                  bgeu         t0, zero, 64f
                  bgeu         s5, s6, 67f
                  auipc        a2, 546022
                  xori         t1, a6, 292
62:               slli         s9, a3, 15
                  beq          t2, a2, 82f
64:               sltu         a1, s2, ra
65:               bltu         s2, a3, 85f
                  andi         gp, t2, 1059
67:               sltu         s0, a0, a6
68:               bltu         s3, gp, 74f
                  and          a1, s1, s1
                  bne          tp, s8, 78f
                  add          s4, s8, t5
                  auipc        a0, 343024
                  sra          s11, t5, zero
74:               blt          ra, s6, 85f
                  addi         s6, t5, 1378
                  slli         tp, t6, 4
                  auipc        t5, 807633
78:               lui          t0, 298186
                  xor          t4, gp, a5
                  slt          s11, sp, s9
                  bgeu         t4, s7, 97f
82:               sra          a0, s11, a4
                  sltu         t5, sp, t3
                  bgeu         s11, t5, 93f
85:               bge          tp, t6, 105f
                  xor          t3, s6, s7
                  blt          s7, s4, 100f
                  andi         s10, t1, 734
                  sub          t1, s10, a3
                  srli         zero, t5, 14
                  beq          s1, s6, 102f
                  sltiu        s11, a4, -1354
93:               sltiu        t5, s10, 93
                  sll          t5, zero, s0
                  bge          a0, a7, 114f
                  andi         s3, a7, -1348
97:               sra          a2, t3, zero
                  blt          t3, a4, 112f
                  and          s7, s6, a0
100:              andi         a2, zero, 1385
                  or           sp, t0, a1
102:              lui          a2, 561739
                  bne          t1, t1, 108f
                  ori          sp, s1, 2040
105:              bne          s11, a4, 118f
                  sltu         a4, tp, t2
                  srai         t5, s3, 4
108:              xor          gp, a3, t6
                  sub          s7, s3, t3
                  auipc        a2, 975582
                  sll          a6, s10, s7
112:              slt          t3, gp, t2
                  bne          zero, a7, 127f
114:              bltu         s5, zero, 128f
                  xori         a5, a3, 822
                  slli         a0, s6, 21
                  blt          s10, s10, 133f
118:              bne          a0, a2, 125f
                  and          a2, a4, a4
                  blt          s9, a5, 134f
                  sltiu        t5, t5, -1241
                  add          s11, s9, ra
                  srl          zero, s10, a5
                  slti         a6, a1, 573
125:              addi         t4, sp, -259
                  sltiu        s8, t1, -438
127:              bltu         sp, a1, 146f
128:              nop
                  srli         t0, s6, 5
                  andi         t4, t1, 604
                  lui          s10, 106055
                  blt          s1, s0, sub_4_j6 #branch to jump instr
                  srai         sp, s6, 20
                  nop
                  xori         a4, zero, 303
                  sra          s6, s4, a6
                  auipc        s7, 231232
sub_4_j6:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  slt          a1, s4, s4
133:              slt          a6, s5, s9
134:              srai         t2, ra, 0
                  nop
                  sltu         t5, s11, s10
                  slt          s11, a4, tp
                  auipc        zero, 94662
                  srai         sp, s9, 4
                  bltu         s11, a5, 159f
                  bne          a2, t3, 157f
                  beq          a1, t3, 146f
                  sll          t1, s11, t4
                  sltiu        zero, a5, -1110
                  srai         s6, a2, 12
146:              xor          s3, s7, t2
                  sra          s8, t6, t2
                  sltu         t3, a1, zero
                  sltiu        s4, a4, -752
                  auipc        s5, 169042
                  slli         a0, t1, 0
                  blt          t3, a2, 163f
                  srai         s11, t1, 9
                  srli         sp, gp, 12
                  beq          a4, zero, 161f
                  sltu         t2, sp, a1
157:              sra          s6, s2, s4
                  bge          s8, t3, 162f
159:              addi         t3, t3, 920
                  bne          s4, s1, 165f
161:              bne          s4, t1, 177f
162:              bltu         a4, a2, 182f
163:              ori          sp, a5, 769
                  nop
165:              sub          s1, s8, a4
                  and          s11, a6, s7
                  bne          ra, zero, 174f
                  xori         t4, s8, -884
                  slt          sp, s2, s10
                  auipc        s0, 567296
                  sub          s9, s10, s4
                  sll          t3, s5, s8
                  slti         a0, t3, 1201
174:              or           t2, a1, zero
                  add          a4, t4, s11
                  sub          s9, t3, s8
177:              blt          s10, a3, 193f
                  slli         s3, s0, 15
                  xori         ra, a4, -1673
                  nop
                  srl          a6, t0, t1
182:              xori         a4, s7, -1506
                  xor          t2, a4, s7
                  auipc        t4, 751073
                  sltu         a2, a3, s0
                  ori          s3, a5, -800
                  blt          a7, s11, 193f
                  and          s11, zero, t0
                  nop
                  blt          s11, a4, 192f
                  nop
192:              bltu         a4, s5, 212f
193:              srl          t1, t3, a5
                  andi         s3, s11, -864
                  or           t2, t6, t2
                  slli         tp, s11, 10
                  auipc        t5, 90583
                  sra          a1, s2, s5
                  beq          t2, s6, 204f
                  sll          s1, t5, t6
                  and          a4, t2, t2
                  sll          s4, a2, ra
                  slt          s7, s1, sp
204:              lui          zero, 811237
                  xori         a5, t5, -1875
                  andi         zero, ra, -1333
                  slli         s10, t1, 8
                  srai         s0, s11, 27
                  bne          a4, a0, 222f
                  lui          s1, 65739
                  bltu         sp, s7, 218f
212:              bge          t2, gp, 220f
                  beq          t1, sp, 222f
                  slt          s7, sp, t6
                  add          s1, t4, t6
                  blt          tp, t2, 222f
                  lui          s4, 395678
218:              beq          t5, t5, 222f
                  and          t1, t0, s0
220:              and          s4, s9, s9
                  sltu         s11, s11, ra
222:              sra          s5, a0, s6
                  ori          t5, a7, 1367
                  slt          t5, gp, t0
                  sll          t5, s9, t2
                  and          t2, s2, s11
                  sll          a2, tp, s10
                  srli         ra, s9, 8
                  lw           t1, 4(a7)
                  lui          t4, 24815
                  or           s5, t0, s1
                  slt          t0, s5, tp
                  addi         a7, a7, 8
                  andi         s11, a7, 1725
344:              addi x11, x6, 0
344:              jalr x11, x11, 0
sub_3:            srli         s4, s11, 0
                  beq          s7, tp, sub_3_stack_p
                  srai         s5, a2, 16
sub_3_stack_p:    addi         a7, a7, -16
                  srai         ra, t0, 18
                  nop
                  sra          s4, s5, a1
                  sw           t1, 4(a7)
                  andi         a2, t4, 1013
                  slti         gp, t5, 525
                  xor          s6, s3, t3
sub_3_7:          jal          t1, 7f
0:                jal          t1, 13f
1:                jal          ra, 8f
2:                jal          a0, 3f
3:                jal          t1, 5f
4:                jal          ra, 2b
5:                jal          t1, 1b
6:                jal          ra, 4b
7:                jal          ra, 12f
8:                jal          ra, 10f
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          s11, 0b
12:               jal          s1, 9b
13:               slt          s6, t5, gp
sub_3_1:          jal          t1, 5f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          s7, 8f
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          ra, 0b
7:                jal          t0, 4b
8:                jal          ra, 6b
9:                jal          t1, 1b
10:               auipc        tp, 1003964
sub_3_4:          jal          t1, 11f
0:                jal          sp, 8f
1:                jal          s4, 10f
2:                jal          ra, 17f
3:                jal          t4, 4f
4:                jal          ra, 13f
5:                jal          t1, 7f
6:                jal          ra, 19f
7:                jal          t1, 12f
8:                jal          a1, 15f
9:                jal          ra, 18f
10:               jal          t1, 0b
11:               jal          ra, 9b
12:               jal          sp, 3b
13:               jal          a4, 6b
14:               jal          ra, 1b
15:               jal          t1, 5b
16:               jal          s8, 2b
17:               jal          ra, 14b
18:               jal          ra, 16b
19:               nop
sub_3_0:          jal          t1, 0f
0:                jal          ra, 13f
1:                jal          sp, 2f
2:                jal          ra, 8f
3:                jal          t1, 14f
4:                jal          t1, 16f
5:                jal          t1, 19f
6:                jal          t1, 17f
7:                jal          ra, 10f
8:                jal          t1, 11f
9:                jal          ra, 6b
10:               jal          t5, 4b
11:               jal          ra, 5b
12:               jal          ra, 18f
13:               jal          ra, 3b
14:               jal          t1, 9b
15:               jal          t0, 7b
16:               jal          ra, 12b
17:               jal          ra, 15b
18:               jal          ra, 1b
19:               add          t5, t5, gp
sub_3_3:          jal          t1, 10f
0:                jal          s3, 3f
1:                jal          s6, 6f
2:                jal          ra, 7f
3:                jal          sp, 1b
4:                jal          ra, 13f
5:                jal          t1, 14f
6:                jal          t1, 5b
7:                jal          ra, 11f
8:                jal          s9, 12f
9:                jal          s0, 2b
10:               jal          t1, 9b
11:               jal          sp, 4b
12:               jal          t1, 0b
13:               jal          ra, 8b
14:               and          t4, s10, a6
sub_3_2:          jal          t1, 12f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          t1, 11f
3:                jal          s4, 9f
4:                jal          gp, 10f
5:                jal          ra, 8f
6:                jal          ra, 1b
7:                jal          t4, 5b
8:                jal          ra, 0b
9:                jal          a5, 2b
10:               jal          gp, 13f
11:               jal          t1, 4b
12:               jal          t1, 7b
13:               auipc        s9, 272158
sub_3_9:          jal          t1, 9f
0:                jal          a1, 2f
1:                jal          s5, 11f
2:                jal          t1, 6f
3:                jal          ra, 0b
4:                jal          tp, 3b
5:                jal          t1, 4b
6:                jal          t0, 7f
7:                jal          ra, 8f
8:                jal          t3, 1b
9:                jal          ra, 10f
10:               jal          ra, 5b
11:               srai         s0, t3, 31
sub_3_5:          jal          t1, 7f
0:                jal          t1, 14f
1:                jal          gp, 17f
2:                jal          s10, 10f
3:                jal          ra, 0b
4:                jal          t0, 12f
5:                jal          t1, 3b
6:                jal          ra, 1b
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 4b
10:               jal          ra, 9b
11:               jal          s3, 6b
12:               jal          sp, 15f
13:               jal          ra, 8b
14:               jal          tp, 11b
15:               jal          t1, 16f
16:               jal          ra, 13b
17:               auipc        s7, 532073
                  slt          t3, s0, s4
                  slti         s6, sp, -1026
                  bltu         zero, a4, 13f
                  bne          s0, t5, 10f
                  srai         tp, t5, 9
                  blt          a3, gp, 23f
                  slti         t0, zero, 1873
                  beq          s9, s10, 22f
                  bge          t6, s3, 19f
                  bne          s4, tp, 10f
10:               sltu         a1, gp, s7
                  addi         s9, zero, -396
                  or           t1, zero, t5
13:               srai         s7, a4, 19
                  auipc        t1, 669920
                  andi         s8, tp, 908
                  or           tp, s7, s4
                  srl          t0, s1, t1
                  andi         t1, s8, 666
19:               sra          s9, t5, s9
                  sltu         sp, s5, s2
                  and          s5, a1, ra
22:               beq          a4, s7, 27f
23:               addi         zero, a3, -352
                  srl          t5, t3, s0
                  sltu         s5, t4, a3
                  xor          sp, tp, a3
27:               and          zero, a6, s10
                  lui          s1, 541949
                  sub          a0, a0, zero
                  addi         ra, s4, -1992
                  slt          t5, s7, a1
                  srai         s9, gp, 28
                  bge          s9, t0, 47f
                  or           s9, gp, tp
                  bltu         a5, t1, 41f
                  bgeu         t2, s6, 45f
                  lui          t1, 591893
                  and          zero, s1, gp
                  sll          t5, gp, a2
                  srai         a6, a1, 26
41:               bgeu         gp, tp, 57f
                  sra          s11, s2, a6
                  beq          t0, s2, 55f
                  bge          a3, s10, 59f
45:               blt          s5, a0, 63f
                  xori         t2, s0, -128
47:               beq          t4, a2, 48f
48:               nop
                  srli         a4, s0, 7
                  blt          a5, ra, 57f
                  xori         s8, a6, -903
                  xori         a1, s2, 511
                  slli         a0, tp, 7
                  srli         a0, t6, 22
55:               srli         ra, s1, 18
                  xor          ra, s4, s5
57:               andi         t4, s2, -1326
                  blt          s5, a0, 64f
59:               andi         s8, s7, 1695
                  nop
                  slli         t4, s10, 17
                  bne          s8, s11, 77f
63:               and          t1, t3, t6
64:               bge          t3, gp, 81f
                  addi         t1, s5, -612
                  xori         t5, s6, 770
                  xori         s2, gp, -67
                  sra          ra, a2, sp
                  bge          a5, a2, 81f
                  auipc        s0, 704384
                  bge          s8, t3, 90f
                  ori          s10, a4, 2041
                  sltu         a1, s7, a0
                  sll          a0, ra, sp
                  srai         a6, zero, 18
                  bltu         zero, s3, 86f
77:               sll          a1, t1, sp
                  xor          a5, t6, ra
                  slli         s4, s2, 30
                  bltu         t6, ra, 85f
81:               auipc        s2, 66404
                  sltu         s10, t1, a1
                  bgeu         s4, a1, 92f
                  srl          s6, s2, t0
85:               nop
86:               slti         a5, t2, 1182
                  bne          s1, t6, 107f
                  ori          t0, s8, -1406
                  bgeu         s8, a1, 107f
90:               srl          s10, zero, gp
                  srai         s10, s2, 0
92:               sltu         gp, ra, s0
                  and          s10, s0, a6
                  lui          ra, 904227
                  sll          s11, t6, s7
                  bge          t5, sp, 110f
                  andi         s3, t2, 751
                  slt          s2, s5, sp
                  nop
                  or           s0, a5, s2
                  ori          s10, s7, -1010
                  srli         zero, s3, 25
                  bne          s7, s10, 107f
                  addi         a1, tp, -368
                  slli         s4, s11, 24
                  sltu         s4, t1, t3
107:              lui          gp, 462487
                  slti         t3, s5, 1955
                  slti         s4, s8, -720
                  slt          t3, a3, s6
                  la           t2, sub_4
                  lui          a1, 112085
                  slt          s2, s5, s1
                  sltu         t0, t4, a4
                  sltu         gp, t4, t0
                  addi         t2, t2, 487
                  slt          tp, t4, tp
sub_3_j5:         jalr         t1, t2, -487 #jump sub_3 -> sub_4
                  sll          zero, s10, t2
110:              andi         s3, ra, 1779
                  sltu         s9, zero, a5
                  blt          a2, t3, 121f
                  add          ra, a5, t4
                  sll          s3, s0, s3
                  sll          ra, t6, t6
                  sll          zero, a7, s5
                  auipc        s7, 919819
                  xori         a6, sp, -27
                  srli         s1, t2, 23
                  xori         a0, t5, -811
121:              xori         tp, s7, -1704
                  slt          a2, t1, s8
                  nop
                  slt          t4, s6, a4
                  bge          s9, s0, 144f
                  slti         s0, a6, 13
                  lui          s5, 595355
                  lui          gp, 554402
                  and          s5, a4, s2
                  slli         gp, a7, 21
                  blt          t2, s2, 146f
                  bgeu         s10, t0, 137f
                  bltu         ra, sp, 134f
134:              slti         s3, s5, 1995
                  andi         t3, ra, 745
                  bne          s11, s4, 143f
137:              nop
                  addi         s9, t0, -1065
                  bne          s0, t1, 143f
                  addi         s9, t2, -2006
                  nop
                  xori         tp, tp, -559
143:              beq          s4, a6, 159f
144:              sltiu        t0, s4, -887
                  srl          a4, a1, zero
146:              bltu         s11, t3, 165f
                  bne          s6, sp, 166f
                  auipc        t5, 591682
                  sltu         t0, s2, t2
                  sub          t5, t0, s9
                  srli         t5, sp, 28
                  xor          t3, a2, s6
                  lui          s10, 851422
                  beq          s1, s1, 165f
                  nop
                  beq          a6, a4, 174f
                  add          s0, a7, a5
                  bne          s5, gp, 164f
159:              srl          ra, t0, s7
                  lui          a6, 312520
                  srai         t3, s3, 0
                  xori         s7, s1, -648
                  sra          a4, a4, s1
164:              bge          s6, tp, 173f
165:              lui          s4, 852137
166:              slt          gp, tp, s5
                  bltu         t4, t4, 177f
                  nop
                  and          s8, tp, s11
                  auipc        t0, 230647
                  nop
                  blt          a1, a5, 192f
173:              xori         a0, t2, 925
174:              auipc        s10, 1042016
                  andi         gp, t6, -543
                  xor          t5, s7, s11
177:              andi         t3, a4, -1461
                  lui          a2, 281549
                  sll          s7, s2, s7
                  bgeu         s10, a5, 198f
                  sltiu        s7, t3, 1694
                  add          s0, s10, zero
                  xori         s10, t1, 91
                  nop
                  beq          s6, t0, 199f
                  slti         ra, t6, 159
                  slti         a4, s2, 286
                  srli         t1, a5, 15
                  bne          a3, a3, 200f
                  srli         s0, ra, 21
                  srl          s7, gp, a6
192:              srai         s11, s8, 18
                  beq          a6, s5, 194f
194:              srli         s2, ra, 7
                  add          a1, s11, a0
                  or           s0, a7, a1
                  nop
198:              add          s4, t1, s11
199:              bge          s7, a3, 216f
200:              xor          s10, zero, sp
                  sub          a1, s1, s0
                  lui          gp, 840407
                  bne          s2, a5, 210f
                  addi         ra, a1, 1486
                  slt          t5, s6, a2
                  blt          s5, s8, 211f
                  sltu         s8, zero, t4
                  srai         s6, s8, 17
                  bltu         a5, s9, 218f
210:              and          a6, s2, a6
211:              blt          t0, a5, 225f
                  slt          t0, t0, s10
                  srai         t5, t2, 20
                  addi         s11, a7, -527
                  andi         t0, zero, -189
216:              sltu         t2, tp, s0
                  sra          s0, s1, a7
218:              slt          s2, t1, s6
                  xori         sp, a0, 838
                  bltu         sp, a0, 226f
                  xori         a1, s9, -1117
                  add          s7, s6, s7
                  bltu         a7, a1, 238f
                  xori         s11, t1, -374
225:              sltiu        a0, a4, 105
226:              add          gp, a0, sp
                  xori         t3, s0, -1579
                  slli         t3, ra, 19
                  sltu         t3, s3, s6
                  srli         a4, t2, 5
                  srli         s1, t2, 19
                  srl          a2, t2, t1
                  add          s8, a0, a2
                  sub          a0, sp, a5
                  bltu         s9, a4, 244f
                  ori          s6, s9, 169
                  add          s6, a2, zero
238:              srai         a0, a7, 22
                  sub          a2, t4, zero
                  srai         s7, s10, 18
                  sra          s0, zero, t0
                  xor          a5, s5, s0
                  sra          t2, s5, s7
244:              xor          a0, t3, a0
                  beq          a2, t2, 257f
                  slli         t5, s2, 26
                  slli         a1, t3, 4
                  andi         t5, s8, 1696
                  ori          a2, s7, -1652
                  blt          s1, a6, 262f
                  sltu         t5, t4, a1
                  add          s10, s10, s0
                  sltiu        s9, a6, -1400
                  srai         t2, tp, 5
                  slli         sp, a7, 22
                  and          t2, s10, t3
257:              sll          a5, s10, t6
                  lui          s3, 451481
                  bne          s6, t0, 277f
                  srli         t1, tp, 6
                  srli         a5, s5, 0
262:              bgeu         sp, a4, 277f
                  nop
                  srai         s10, s2, 28
                  bltu         s9, s9, 285f
                  xor          a6, gp, t1
                  and          s7, tp, s9
                  add          t3, a6, a6
                  nop
                  auipc        t0, 53735
                  ori          sp, t2, 1652
                  sltiu        t3, a4, -1270
                  xori         zero, t3, 1872
                  bge          s2, a1, 283f
                  bge          a7, s0, 290f
                  beq          s9, a0, 282f
277:              sra          s0, s9, a4
                  srli         t0, s3, 23
                  bgeu         s10, gp, 289f
                  bge          s6, s11, 298f
                  srai         a1, s0, 9
282:              xor          t5, s11, s9
283:              xori         a0, s3, -995
                  sub          sp, a5, a4
285:              bne          t1, t2, 296f
                  srai         t0, s2, 7
                  and          s9, s9, t6
                  sltu         s1, tp, s9
289:              bge          a2, s7, 290f
290:              slti         s11, a6, -769
                  sra          s5, s3, a1
                  nop
                  slt          a5, a4, s8
                  add          t1, tp, s8
                  sra          a0, zero, tp
296:              bltu         t0, ra, 307f
                  srli         t2, gp, 22
298:              sub          s9, gp, s7
                  lui          a0, 450421
                  srl          a2, a0, s7
                  bgeu         s4, s5, 306f
                  auipc        t1, 1028826
                  and          a4, a6, t4
                  blt          s11, sp, 321f
                  bltu         t3, t5, 312f
306:              nop
307:              xori         s3, t2, 1026
                  slt          s9, t5, a1
                  sltu         a4, t2, s10
                  xori         s0, a4, -401
                  bgeu         a7, t5, 312f
312:              sll          s1, tp, a5
                  sub          s5, a4, a2
                  bgeu         a0, a3, 332f
                  sltiu        a4, t1, -1989
                  and          s10, s1, t3
                  and          t3, s6, s5
                  bgeu         a0, ra, 334f
                  slti         a5, a4, -582
                  beq          t5, gp, 329f
321:              or           s2, a6, s11
                  and          sp, a7, s4
                  blt          a2, a2, 329f
                  beq          s5, s9, 336f
                  slli         s3, a0, 20
                  xor          s1, s0, a4
                  sltu         a5, s10, s8
                  bge          s4, a1, 332f
329:              bltu         s2, s10, 344f
                  bge          ra, t4, 349f
                  addi         t5, t5, -1190
332:              slt          sp, s3, s4
                  srli         s10, s2, 19
334:              blt          ra, s0, 349f
                  auipc        t0, 555753
336:              slti         s5, a4, -1242
                  nop
                  sltu         gp, t0, a5
                  ori          a2, ra, 1789
                  srl          s10, t5, t1
                  nop
                  bge          s6, t3, 360f
                  slli         t5, s3, 5
344:              xori         a2, t2, -1047
                  bne          a3, s0, 357f
                  sub          t0, t5, a1
                  srai         a2, t4, 12
                  bgeu         s1, t1, 367f
349:              lui          zero, 950321
                  add          s1, a7, gp
                  beq          a2, t4, 365f
sub_3_8:          jal          t1, 4f
0:                jal          a2, 7f
1:                jal          ra, 9f
2:                jal          gp, 0b
3:                jal          t1, 6f
4:                jal          sp, 2b
5:                jal          a2, 8f
6:                jal          t1, 10f
7:                jal          a4, 1b
8:                jal          s5, 3b
9:                jal          a4, 5b
10:               ori          s9, t5, 1459
                  bne          zero, a6, 359f
                  nop
                  or           s2, t6, s10
                  sra          tp, a0, gp
                  bgeu         a4, a7, 370f
357:              andi         s4, s9, 373
                  slt          s8, s2, t3
359:              slli         s6, t4, 24
360:              bge          s5, t5, 369f
                  srl          s11, a2, s7
                  slli         a2, a4, 24
                  and          gp, s2, t2
                  auipc        s10, 750459
365:              andi         ra, t5, 715
                  sub          t4, s6, ra
367:              bltu         s0, s6, 372f
                  xori         a1, a1, -1321
369:              xor          t3, a5, a7
370:              srl          t5, a4, s4
                  beq          s9, t2, 382f
372:              srli         t0, s2, 29
                  slti         gp, s8, 1671
                  nop
                  sra          s7, tp, a1
                  beq          s3, s6, 382f
                  ori          zero, t6, -2048
                  sltu         ra, t6, ra
                  xor          s11, s1, a2
                  bne          a3, a0, 394f
                  xori         s3, s1, -14
382:              srl          a6, s8, a0
                  and          s5, s7, s2
                  or           a1, s6, s3
                  bne          t2, s2, 400f
                  or           s2, a0, gp
                  ori          t3, s5, 192
                  slli         t2, t3, 7
sub_3_6:          jal          t1, 3f
0:                jal          t1, 8f
1:                jal          ra, 6f
2:                jal          ra, 0b
3:                jal          t3, 5f
4:                jal          ra, 2b
5:                jal          ra, 9f
6:                jal          gp, 4b
7:                jal          ra, 10f
8:                jal          s9, 7b
9:                jal          t1, 1b
10:               jal          s5, 11f
11:               xor          t4, t6, t0
                  auipc        s4, 394680
                  bne          a3, s7, 405f
                  andi         t0, s9, -723
                  sltu         s4, t3, ra
                  addi         s0, a2, 1711
394:              bge          s8, a0, 410f
                  bgeu         a1, s10, 396f
396:              sltiu        a5, s8, 894
                  xor          s4, s6, sp
                  auipc        s6, 375083
                  sub          s7, s4, t1
400:              sub          s4, s0, t0
                  ori          s0, zero, -434
                  srai         t0, a1, 13
                  or           a4, t5, s1
                  bne          t6, t1, 409f
405:              or           s8, t2, s11
                  lui          ra, 889476
                  beq          t5, a2, 411f
                  or           s7, s9, zero
409:              lui          s6, 775131
410:              sltiu        t3, s4, -1017
411:              slt          tp, t6, s0
                  slt          t4, a6, s3
                  sra          s4, gp, a3
                  slli         t3, a2, 25
                  slli         sp, s8, 2
                  andi         t1, a3, -804
                  lui          t4, 255263
                  srl          s8, s4, s4
                  andi         ra, t2, 401
                  bgeu         a5, s4, 439f
                  sltu         zero, t4, a6
                  slti         zero, s7, 459
                  sll          sp, zero, tp
                  add          zero, s7, sp
                  ori          s3, t4, -1595
                  xor          t5, a7, t6
                  beq          sp, t3, 432f
                  beq          gp, s11, 437f
                  xor          sp, t0, s11
                  lui          t1, 338369
                  bne          a4, s9, 449f
432:              lui          a5, 506848
                  srl          t1, zero, s3
                  xori         a0, a0, 1710
                  blt          s10, a3, 447f
                  slti         t5, s9, 1684
437:              bge          t3, a7, 449f
                  sltu         a6, t5, a0
439:              and          a5, t1, a6
                  slt          s9, t2, t3
                  xori         a1, a4, 1184
                  slti         s7, s4, -777
                  slli         a4, s8, 29
                  andi         s6, t3, 6
                  nop
                  xori         tp, t2, -675
447:              bge          gp, a5, 456f
                  xor          s4, s0, s0
449:              blt          s11, s8, 459f
                  addi         sp, s4, 1272
                  xor          s11, s2, tp
                  add          t0, s3, s6
                  xor          zero, t0, sp
                  srai         s0, t6, 22
                  sltiu        t0, t0, -1669
456:              slti         s10, s10, -616
                  sll          s4, a0, s0
                  nop
459:              andi         s6, a1, -1161
                  xori         t1, ra, 1707
                  blt          a5, s5, 476f
                  andi         s3, a0, -215
                  srli         s1, s2, 9
                  slti         t2, s9, -1898
                  xori         gp, t4, 776
                  bgeu         s4, t1, 475f
                  or           s7, t0, zero
                  sra          a5, a3, s7
                  bgeu         sp, s5, 476f
                  sltiu        t3, s10, -599
                  lui          t3, 275257
                  blt          s1, s7, 492f
                  auipc        a2, 434029
                  bgeu         s0, s5, 491f
475:              andi         t2, s10, -1147
476:              sub          s3, t4, gp
                  bltu         t0, a4, 478f
478:              and          a6, s0, a6
                  bne          t2, a6, 493f
                  srl          t2, s0, t6
                  sltu         t2, a3, a2
                  sra          a4, zero, t5
                  auipc        s4, 623600
                  xori         t3, gp, -859
                  bltu         a6, s10, 503f
                  slli         t5, t6, 31
                  sra          a1, t1, zero
                  bne          zero, ra, 506f
                  sra          a6, a6, s8
                  sltiu        t3, s2, -1521
491:              and          s9, t4, s4
492:              bgeu         s7, a3, 508f
493:              add          s10, a7, a6
                  blt          s7, s3, 501f
                  slli         a4, a5, 25
                  srai         t3, t0, 20
                  slli         s6, t5, 3
                  xori         s7, gp, -870
                  slli         s1, s7, 16
                  or           t3, s4, s8
501:              lui          s10, 292359
                  srli         s11, t6, 14
503:              add          s9, s1, t3
                  slt          t4, s2, t6
                  lui          t4, 161080
506:              blt          a0, s4, 508f
                  bltu         t3, s7, 508f
508:              ori          s5, s6, -404
                  slt          tp, a2, a1
                  lw           t1, 4(a7)
                  lui          s0, 832041
                  addi         s2, s6, -1209
                  sra          s6, s0, a5
                  addi         a7, a7, 16
                  andi         sp, s8, 115
                  slli         a1, s1, 26
                  sltiu        t5, gp, -1086
696:              addi x4, x6, 1
696:              jalr x4, x4, 0
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x31, x17, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x19, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x19, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x19, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x19, x24, ecall_handler
                  li x24, 0x1
                  beq x19, x24, instr_fault_handler
                  li x24, 0x5
                  beq x19, x24, load_fault_handler
                  li x24, 0x7
                  beq x19, x24, store_fault_handler
                  li x24, 0xc
                  beq x19, x24, pt_fault_handler
                  li x24, 0xd
                  beq x19, x24, pt_fault_handler
                  li x24, 0xf
                  beq x19, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x17, x31, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
