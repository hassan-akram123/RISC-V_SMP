.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x5, kernel_stack_end

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
                  li x1, 0xfb54bbed
                  li x2, 0x0
                  li x3, 0xe
                  li x4, 0x0
                  li x6, 0x0
                  li x7, 0xfb0bd1b6
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x0
                  li x12, 0xb28040fb
                  li x13, 0x0
                  li x14, 0x7
                  li x15, 0x3
                  li x16, 0x8
                  li x17, 0xfdba5431
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x52876ae9
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x1
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x658e28c
                  li x28, 0x0
                  li x29, 0x9c20947c
                  li x30, 0x3
                  li x31, 0xfc1816e3
                  la x11, user_stack_end
main:             jal          sp, 4f
0:                jal          ra, 11f
1:                jal          ra, 13f
2:                jal          ra, 7f
3:                jal          ra, 9f
4:                jal          t1, 14f
5:                jal          ra, 18f
6:                jal          t5, 17f
7:                jal          ra, 8f
8:                jal          t5, 16f
9:                jal          s1, 6b
10:               jal          tp, 0b
11:               jal          ra, 15f
12:               jal          ra, 1b
13:               jal          ra, 2b
14:               jal          gp, 3b
15:               jal          ra, 5b
16:               jal          t5, 10b
17:               jal          ra, 12b
18:               srl          t6, a2, a0
main_22:          jal          sp, 7f
0:                jal          t1, 5f
1:                jal          ra, 3f
2:                jal          ra, 10f
3:                jal          a2, 8f
4:                jal          s0, 11f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          a7, 6b
8:                jal          ra, 9f
9:                jal          ra, 0b
10:               jal          ra, 4b
11:               and          tp, a5, s9
main_10:          jal          sp, 0f
0:                jal          t1, 13f
1:                jal          s3, 7f
2:                jal          ra, 4f
3:                jal          ra, 9f
4:                jal          ra, 12f
5:                jal          ra, 1b
6:                jal          t1, 14f
7:                jal          sp, 11f
8:                jal          t1, 5b
9:                jal          ra, 10f
10:               jal          ra, 6b
11:               jal          a5, 2b
12:               jal          t1, 3b
13:               jal          ra, 8b
14:               sll          s4, s1, a3
main_8:           jal          sp, 0f
0:                jal          t1, 5f
1:                jal          ra, 8f
2:                jal          a7, 9f
3:                jal          ra, 6f
4:                jal          t1, 1b
5:                jal          s2, 2b
6:                jal          ra, 11f
7:                jal          s2, 3b
8:                jal          ra, 12f
9:                jal          ra, 7b
10:               jal          ra, 4b
11:               jal          ra, 10b
12:               srli         s6, a5, 5
main_19:          jal          sp, 10f
0:                jal          ra, 8f
1:                jal          t1, 15f
2:                jal          t1, 14f
3:                jal          ra, 0b
4:                jal          ra, 7f
5:                jal          ra, 11f
6:                jal          ra, 4b
7:                jal          s6, 12f
8:                jal          s2, 1b
9:                jal          ra, 6b
10:               jal          a5, 2b
11:               jal          ra, 9b
12:               jal          ra, 16f
13:               jal          s4, 3b
14:               jal          s0, 13b
15:               jal          ra, 5b
16:               srli         t2, t5, 13
main_13:          jal          sp, 0f
0:                jal          ra, 20f
1:                jal          tp, 21f
2:                jal          ra, 6f
3:                jal          ra, 2b
4:                jal          ra, 10f
5:                jal          ra, 13f
6:                jal          ra, 25f
7:                jal          ra, 24f
8:                jal          ra, 1b
9:                jal          a3, 4b
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          a4, 7b
13:               jal          s7, 16f
14:               jal          a2, 9b
15:               jal          t1, 18f
16:               jal          ra, 23f
17:               jal          s8, 26f
18:               jal          s0, 19f
19:               jal          a5, 17b
20:               jal          ra, 22f
21:               jal          ra, 11b
22:               jal          s0, 8b
23:               jal          ra, 12b
24:               jal          t1, 14b
25:               jal          t4, 15b
26:               xor          s2, s6, t6
main_5:           jal          sp, 8f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          ra, 13f
3:                jal          ra, 15f
4:                jal          t1, 6f
5:                jal          s6, 7f
6:                jal          ra, 0b
7:                jal          t1, 9f
8:                jal          ra, 12f
9:                jal          sp, 1b
10:               jal          ra, 3b
11:               jal          t1, 18f
12:               jal          ra, 17f
13:               jal          ra, 10b
14:               jal          ra, 11b
15:               jal          ra, 14b
16:               jal          ra, 5b
17:               jal          ra, 16b
18:               auipc        t2, 364037
main_16:          jal          sp, 0f
0:                jal          ra, 9f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          t1, 15f
4:                jal          t1, 11f
5:                jal          ra, 14f
6:                jal          ra, 5b
7:                jal          t1, 4b
8:                jal          t1, 13f
9:                jal          ra, 1b
10:               jal          ra, 7b
11:               jal          a2, 2b
12:               jal          t1, 3b
13:               jal          ra, 10b
14:               jal          ra, 12b
15:               andi         t4, s2, 883
main_24:          jal          sp, 14f
0:                jal          ra, 26f
1:                jal          ra, 3f
2:                jal          ra, 12f
3:                jal          a2, 28f
4:                jal          s8, 18f
5:                jal          ra, 24f
6:                jal          ra, 1b
7:                jal          ra, 15f
8:                jal          ra, 25f
9:                jal          s4, 2b
10:               jal          t1, 13f
11:               jal          t1, 9b
12:               jal          ra, 4b
13:               jal          a6, 11b
14:               jal          ra, 8b
15:               jal          ra, 10b
16:               jal          ra, 20f
17:               jal          t1, 16b
18:               jal          ra, 23f
19:               jal          ra, 6b
20:               jal          ra, 19b
21:               jal          ra, 17b
22:               jal          a3, 27f
23:               jal          ra, 21b
24:               jal          t1, 30f
25:               jal          t1, 22b
26:               jal          ra, 5b
27:               jal          ra, 29f
28:               jal          t1, 0b
29:               jal          gp, 7b
30:               sra          a7, sp, a3
main_9:           jal          sp, 21f
0:                jal          ra, 15f
1:                jal          ra, 7f
2:                jal          sp, 12f
3:                jal          ra, 0b
4:                jal          ra, 16f
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          t6, 4b
8:                jal          t1, 18f
9:                jal          gp, 11f
10:               jal          ra, 13f
11:               jal          ra, 14f
12:               jal          ra, 20f
13:               jal          t1, 2b
14:               jal          ra, 17f
15:               jal          ra, 9b
16:               jal          t1, 22f
17:               jal          ra, 5b
18:               jal          t1, 19f
19:               jal          ra, 1b
20:               jal          ra, 6b
21:               jal          ra, 3b
22:               auipc        s10, 428849
main_3:           jal          sp, 10f
0:                jal          ra, 16f
1:                jal          a0, 14f
2:                jal          t1, 11f
3:                jal          gp, 4f
4:                jal          ra, 12f
5:                jal          sp, 0b
6:                jal          ra, 21f
7:                jal          t1, 18f
8:                jal          ra, 13f
9:                jal          tp, 17f
10:               jal          ra, 9b
11:               jal          ra, 3b
12:               jal          s3, 15f
13:               jal          tp, 1b
14:               jal          s2, 5b
15:               jal          ra, 6b
16:               jal          a2, 19f
17:               jal          a6, 8b
18:               jal          t6, 20f
19:               jal          ra, 7b
20:               jal          t1, 2b
21:               sra          ra, ra, tp
main_2:           jal          sp, 4f
0:                jal          a5, 3f
1:                jal          s0, 9f
2:                jal          ra, 11f
3:                jal          ra, 8f
4:                jal          ra, 12f
5:                jal          gp, 2b
6:                jal          gp, 5b
7:                jal          ra, 10f
8:                jal          a5, 1b
9:                jal          t1, 13f
10:               jal          ra, 6b
11:               jal          t1, 0b
12:               jal          tp, 7b
13:               slli         a0, a5, 7
main_7:           jal          sp, 25f
0:                jal          ra, 7f
1:                jal          tp, 23f
2:                jal          sp, 4f
3:                jal          a2, 11f
4:                jal          ra, 18f
5:                jal          ra, 21f
6:                jal          sp, 17f
7:                jal          ra, 1b
8:                jal          ra, 22f
9:                jal          s0, 0b
10:               jal          ra, 2b
11:               jal          t5, 26f
12:               jal          ra, 3b
13:               jal          ra, 8b
14:               jal          ra, 24f
15:               jal          ra, 13b
16:               jal          ra, 14b
17:               jal          s6, 16b
18:               jal          s3, 6b
19:               jal          ra, 20f
20:               jal          t1, 15b
21:               jal          ra, 9b
22:               jal          ra, 5b
23:               jal          t1, 12b
24:               jal          ra, 19b
25:               jal          ra, 10b
26:               xori         t1, zero, 713
main_1:           jal          sp, 3f
0:                jal          t1, 7f
1:                jal          ra, 8f
2:                jal          ra, 10f
3:                jal          ra, 0b
4:                jal          sp, 2b
5:                jal          t1, 1b
6:                jal          ra, 9f
7:                jal          t1, 5b
8:                jal          t1, 6b
9:                jal          ra, 4b
10:               sll          t4, tp, t4
main_17:          jal          sp, 5f
0:                jal          t1, 4f
1:                jal          ra, 0b
2:                jal          tp, 1b
3:                jal          ra, 9f
4:                jal          ra, 6f
5:                jal          t1, 8f
6:                jal          ra, 3b
7:                jal          ra, 10f
8:                jal          ra, 2b
9:                jal          t1, 7b
10:               srl          s8, ra, zero
main_11:          jal          sp, 13f
0:                jal          sp, 9f
1:                jal          ra, 11f
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          ra, 1b
5:                jal          ra, 16f
6:                jal          ra, 4b
7:                jal          t1, 10f
8:                jal          t1, 3b
9:                jal          ra, 14f
10:               jal          ra, 8b
11:               jal          t1, 17f
12:               jal          s8, 0b
13:               jal          ra, 5b
14:               jal          ra, 2b
15:               jal          ra, 7b
16:               jal          ra, 15b
17:               srl          sp, a2, s7
                  sra          gp, s11, s10
                  beq          zero, a3, 15f
                  bne          t5, a3, 8f
                  srl          a0, s7, s0
                  blt          s0, s10, 14f
                  beq          a2, t1, 16f
                  sltu         a2, s4, t4
                  bge          a2, t0, 26f
8:                add          s1, s0, s2
                  addi         s2, a4, -1605
                  sub          t1, s0, s3
                  bne          a6, s4, 16f
                  nop
                  lui          gp, 1038586
14:               xor          sp, a3, s5
15:               slti         s6, t0, -571
16:               slli         s0, t3, 24
                  sltu         a5, zero, s11
                  srl          s0, s7, a6
                  nop
                  or           zero, s9, s0
                  sll          a5, a7, t2
                  srl          s11, t1, a3
                  sltu         t1, s11, a4
                  add          s6, s3, s3
                  sltiu        zero, ra, -541
                  sltu         s0, s2, a0
                  la           a4, sub_1
                  sltiu        t4, s3, -417
                  addi         a4, a4, -131
                  srai         s4, t3, 30
                  bge          a6, t0, main_j1 #branch to jump instr
                  auipc        s6, 466249
                  xor          s1, ra, t0
main_j1:          jalr         sp, a4, 131 #jump main -> sub_1
                  sltu         a5, s11, a6
main_14:          jal          sp, 21f
0:                jal          ra, 23f
1:                jal          ra, 4f
2:                jal          s1, 17f
3:                jal          s1, 19f
4:                jal          ra, 0b
5:                jal          t1, 16f
6:                jal          ra, 22f
7:                jal          t1, 30f
8:                jal          ra, 25f
9:                jal          gp, 20f
10:               jal          ra, 2b
11:               jal          ra, 28f
12:               jal          t1, 18f
13:               jal          t1, 12b
14:               jal          s8, 11b
15:               jal          t1, 10b
16:               jal          ra, 8b
17:               jal          t1, 24f
18:               jal          sp, 9b
19:               jal          ra, 7b
20:               jal          t1, 6b
21:               jal          ra, 29f
22:               jal          t1, 14b
23:               jal          s1, 3b
24:               jal          ra, 13b
25:               jal          ra, 26f
26:               jal          ra, 15b
27:               jal          t1, 5b
28:               jal          ra, 1b
29:               jal          ra, 27b
30:               ori          a7, tp, 790
                  bgeu         ra, s4, 32f
                  sltiu        a5, ra, 891
26:               auipc        sp, 97114
                  bgeu         tp, a2, 30f
                  blt          gp, s0, 41f
                  bne          a0, sp, 48f
30:               add          s5, a5, a0
                  xor          s1, s8, s5
32:               addi         t5, t3, -1211
                  xor          a5, s4, t5
                  sra          s2, s1, gp
                  slli         t5, t2, 17
                  and          a2, a0, s8
                  sub          s1, t5, s8
                  bltu         a7, ra, 52f
                  slti         s10, a5, 1981
                  xor          ra, s2, t6
41:               srai         a6, tp, 28
                  bgeu         s11, t3, 50f
                  sltiu        a0, s2, 118
                  slt          ra, s11, a4
                  bge          t3, t2, 53f
                  or           s1, a7, a2
                  srl          s3, s9, s2
48:               lui          s3, 353298
                  srl          s6, t5, s9
50:               blt          s5, sp, 59f
                  sra          t5, ra, s2
52:               sltu         ra, t6, a2
53:               sltiu        s8, s7, 967
                  xori         s9, a3, 35
                  srai         s0, a4, 20
                  auipc        s7, 454691
                  bgeu         s6, s3, 77f
                  add          s1, s7, a3
59:               sll          a2, ra, t6
                  addi         s7, gp, 370
                  sll          s8, s1, t0
                  bne          s7, a6, 69f
                  sltu         t4, a0, t6
                  sltiu        s8, a4, 1696
                  xori         gp, s10, 1059
                  srai         t2, s3, 1
                  slli         a2, s2, 12
                  lui          s1, 923684
69:               addi         t1, a0, 772
                  slt          t5, t0, s6
                  srli         a2, t0, 29
                  and          a5, gp, a0
                  srli         t1, s3, 19
                  srai         s10, t3, 21
                  auipc        ra, 264971
                  or           tp, t0, zero
77:               sll          gp, t5, s6
                  sltiu        s2, s11, 1768
                  sltu         s9, s8, a4
                  srl          a4, t0, s11
                  srli         s3, a7, 19
                  lui          zero, 913860
                  andi         t6, s6, -1140
                  bne          tp, a5, 98f
                  or           s1, s1, tp
                  srai         s2, s9, 2
                  andi         s8, a7, 2030
                  xori         t1, t3, 1658
                  bge          s2, t2, 107f
                  sra          tp, a3, s10
                  xori         s8, t6, 275
                  beq          sp, t4, 108f
                  blt          t1, a6, 104f
                  bge          s2, t4, 105f
                  nop
                  srli         a6, s0, 13
                  xori         a7, s10, -1588
98:               slli         tp, tp, 13
                  bge          s0, t0, 101f
                  nop
101:              srli         s9, gp, 4
                  lui          s9, 460842
                  blt          s4, a7, 120f
104:              bne          tp, a1, 117f
105:              sub          sp, ra, a0
                  or           zero, s8, s0
107:              srli         t1, zero, 26
108:              xor          s9, s2, s0
                  bgeu         s4, s10, 116f
                  srl          s4, t1, t5
                  ori          ra, s9, -1737
                  sub          a2, a7, s0
                  addi         a6, gp, -944
                  and          t2, a0, tp
                  xor          s8, s1, s7
116:              sltu         ra, a3, s8
117:              bge          s0, a2, 135f
                  beq          a3, s3, 138f
                  bne          t1, s4, 133f
120:              beq          a5, a3, 124f
                  bne          s4, s9, 140f
                  bltu         t6, t2, 130f
                  srai         s0, a6, 14
124:              sll          s3, s2, t3
                  sltu         sp, s3, s3
                  bgeu         s5, gp, 137f
                  slt          s1, a5, a5
                  bgeu         a5, a4, 148f
                  bge          t3, s9, 132f
130:              srli         zero, a7, 18
                  bne          sp, t4, 149f
132:              xor          t4, ra, a7
133:              bgeu         t0, ra, 137f
                  add          s2, s11, a0
135:              xori         s2, a1, -356
                  bge          s0, t3, 152f
137:              xor          a0, s9, a5
138:              blt          s5, s1, 146f
                  sub          zero, a5, zero
140:              bge          s8, t0, 154f
                  srl          a4, s5, a4
                  bne          t1, t4, 161f
                  beq          t6, s9, 157f
                  bne          gp, a4, 157f
                  bltu         s9, t4, 159f
146:              sltiu        a5, t4, -1036
                  blt          t3, sp, 152f
148:              sub          a3, gp, s10
149:              sra          s10, s7, a7
                  lui          t5, 158007
                  srli         t2, s5, 1
152:              sltiu        s0, a6, -641
                  add          s4, a3, zero
154:              beq          a7, s7, 167f
                  addi         t2, t6, -236
                  add          sp, tp, s11
157:              sltu         a4, a3, a5
                  or           s0, s10, t5
159:              sltu         s0, a5, a7
                  andi         a3, s4, 724
161:              auipc        a6, 963426
                  sll          s5, sp, ra
                  bltu         a5, s3, 182f
                  lui          s6, 1018391
                  ori          s11, s0, -1874
                  sll          s10, s10, a0
167:              sll          s9, a3, s0
                  beq          t4, s7, 187f
                  nop
                  srl          a5, s10, tp
                  bne          a4, a1, 178f
                  lui          s5, 310242
                  slli         sp, s5, 31
                  andi         s10, zero, -933
                  ori          gp, s7, -798
                  sub          s3, a1, t3
                  bge          s10, t6, 185f
178:              slli         t5, t6, 22
                  add          s6, t1, a5
                  sltiu        s0, s8, 163
                  sltu         sp, s9, s1
182:              or           gp, a5, s5
                  srli         t1, ra, 11
                  sltiu        s3, a1, 1116
185:              bltu         zero, a7, 199f
                  bge          a5, t2, 203f
187:              lui          t4, 260316
                  addi         s9, s1, 469
                  and          ra, s7, s9
                  or           tp, a1, t0
                  sll          t6, a7, s7
                  xor          t1, t4, s4
                  sltiu        a7, s1, -33
                  blt          s0, a2, 200f
                  sub          t5, s9, t4
                  nop
                  blt          a5, s1, 204f
                  xori         a7, s2, -699
199:              add          t1, s2, t3
200:              sltu         a3, s10, a7
                  sltiu        t2, t5, 376
                  and          sp, s3, s9
203:              ori          s3, t3, -488
204:              slti         s9, s7, -466
                  srai         t2, s4, 27
                  bltu         a5, s0, 224f
                  slt          t1, a0, s4
                  ori          a2, t3, -1512
                  and          a7, a7, sp
                  addi         s1, t1, 446
                  blt          a7, a3, 222f
                  bltu         zero, sp, 222f
                  slti         gp, s9, -454
                  bgeu         s2, t2, 216f
                  blt          a1, sp, 226f
216:              xor          a4, a1, s9
                  slti         a2, zero, -775
                  slt          zero, zero, s1
                  sltu         t6, s0, a5
                  ori          zero, s9, -875
                  bge          s0, gp, 230f
222:              sltu         ra, tp, s10
                  srli         a6, s1, 1
224:              bltu         t0, sp, 244f
                  auipc        a0, 787150
226:              srli         sp, a0, 28
                  sub          s4, t1, sp
                  beq          t5, t0, 248f
                  or           s10, t6, s0
230:              blt          t3, s1, 244f
                  bne          a4, a3, 239f
                  srai         s7, a1, 27
                  or           a2, t1, t4
                  sltu         t5, s8, s1
                  sub          t5, s11, a6
                  add          a7, sp, t5
                  sltiu        zero, s8, 1370
                  sub          s10, s4, t2
239:              slli         s4, tp, 19
                  srl          t1, t3, a2
                  addi         s6, sp, 988
                  srli         a2, t0, 15
                  sltiu        a7, t2, 2030
244:              bge          t4, s6, 262f
                  srli         a7, sp, 12
                  srai         s3, t6, 24
                  bltu         t3, a1, 252f
248:              beq          t2, tp, 262f
                  srl          ra, a1, t1
                  bgeu         s1, a2, 264f
                  xori         t1, s8, 1550
252:              bltu         a3, t5, 259f
                  sltiu        t2, t0, -902
                  sltu         a7, t3, t4
                  beq          t0, a4, 266f
                  blt          a5, s9, 258f
                  bltu         sp, a2, 260f
258:              bltu         a7, a6, 265f
259:              sub          s3, a1, tp
260:              bgeu         a6, s9, 279f
                  ori          gp, s7, 1420
262:              blt          s11, tp, 275f
                  sub          tp, tp, s8
264:              sltu         s7, t2, t2
265:              nop
266:              and          a5, s4, t0
                  bgeu         t5, zero, 284f
                  or           a4, s4, s11
                  srl          sp, tp, a2
                  nop
                  xor          zero, a0, t2
                  sll          a3, s11, a6
                  xor          a4, s9, s3
                  slli         a4, a1, 5
275:              add          gp, t4, s8
                  slli         s10, s7, 13
                  andi         t5, a2, 318
                  slt          a0, a4, sp
279:              or           s3, a2, a2
                  bltu         s3, ra, 288f
                  slt          t6, s8, s2
                  xor          t5, t2, s2
                  addi         t2, s5, -1464
284:              srli         tp, gp, 17
                  sra          s4, t1, s3
                  sltu         t5, t4, s2
                  slti         a7, a1, 1195
288:              srai         s6, tp, 7
                  srli         s11, s4, 13
                  sll          ra, sp, gp
                  srli         tp, t6, 16
                  bgeu         s8, s0, 303f
                  ori          s6, t2, 409
                  sltiu        gp, t6, -1706
                  addi         s3, s4, 214
                  sra          s8, t3, a6
                  nop
                  beq          a2, a3, 311f
                  sltu         tp, sp, a5
                  auipc        s5, 1004912
                  sltiu        a0, s0, -906
                  sub          t5, ra, s5
303:              addi         gp, a4, 1764
                  or           a3, s6, s2
                  bltu         t2, a0, 309f
                  slli         zero, s6, 24
                  bltu         t3, s7, 315f
                  or           a3, t4, t5
309:              nop
                  auipc        t1, 464733
311:              and          zero, zero, s11
                  beq          a0, s1, 330f
                  sll          a0, t6, t6
                  nop
315:              and          s8, t0, s3
                  ori          s4, s7, 747
                  slt          s2, s7, a1
                  srl          s6, s11, a5
                  bge          zero, t6, 330f
                  sltu         a5, a1, a6
                  xor          s0, gp, s5
                  bge          t5, s6, 338f
                  srl          s6, s5, t2
                  ori          s9, a7, 1321
                  andi         a5, zero, -181
main_18:          jal          sp, 3f
0:                jal          ra, 11f
1:                jal          t1, 4f
2:                jal          t1, 14f
3:                jal          tp, 10f
4:                jal          ra, 24f
5:                jal          gp, 20f
6:                jal          ra, 21f
7:                jal          ra, 6b
8:                jal          ra, 16f
9:                jal          ra, 2b
10:               jal          t1, 8b
11:               jal          t1, 7b
12:               jal          ra, 23f
13:               jal          a2, 12b
14:               jal          ra, 13b
15:               jal          t1, 0b
16:               jal          ra, 22f
17:               jal          t1, 5b
18:               jal          gp, 1b
19:               jal          t1, 17b
20:               jal          a0, 9b
21:               jal          t1, 18b
22:               jal          ra, 19b
23:               jal          ra, 15b
24:               and          tp, sp, s9
                  ori          a7, a6, -1331
                  addi         s4, a1, -1906
                  bge          s2, a1, 337f
                  srai         t1, zero, 18
330:              sll          s0, s5, s9
                  bltu         a4, s11, 350f
                  bgeu         sp, s11, 346f
                  addi         t6, s2, -1116
                  sra          a7, t1, gp
main_6:           jal          sp, 6f
0:                jal          ra, 13f
1:                jal          a0, 8f
2:                jal          ra, 4f
3:                jal          ra, 14f
4:                jal          t1, 7f
5:                jal          ra, 2b
6:                jal          t1, 12f
7:                jal          ra, 11f
8:                jal          s7, 9f
9:                jal          ra, 5b
10:               jal          a5, 3b
11:               jal          t1, 10b
12:               jal          t1, 0b
13:               jal          tp, 1b
14:               jal          ra, 15f
15:               srl          tp, t3, s8
                  bge          a7, s9, 345f
                  blt          t3, s1, 355f
337:              slt          s4, s4, ra
338:              xori         a7, a3, 1548
                  lui          a0, 430059
                  bne          s8, s3, 360f
                  add          s3, t5, t5
                  slti         a2, s2, 199
                  nop
                  bne          s11, gp, 350f
345:              add          s10, s0, sp
346:              lui          t4, 968669
                  add          zero, t4, t3
                  beq          t3, s11, 368f
                  andi         t1, s9, -409
350:              srli         s11, sp, 22
                  nop
                  ori          zero, t4, -1911
                  and          a6, a0, a3
                  sra          tp, s1, a1
355:              lui          s7, 404300
                  blt          ra, sp, 363f
                  srl          gp, a1, a2
                  srli         a6, a5, 22
                  slt          sp, s3, gp
360:              nop
                  slli         a6, t5, 26
                  bltu         s6, s11, 381f
363:              sltiu        s9, s9, -950
                  lui          a0, 979630
                  bgeu         a1, t2, 378f
                  beq          t6, s1, 377f
                  xori         s3, s6, 1248
368:              add          s9, a5, t5
                  slti         a2, s10, 115
                  blt          a3, s4, 386f
                  sltiu        zero, a2, -418
                  bltu         s0, t5, 383f
                  sltiu        s1, s1, 419
                  xori         gp, t0, -1960
                  beq          a4, t5, 380f
                  blt          s3, s11, 390f
377:              beq          t6, a1, 383f
378:              blt          s4, s1, 397f
                  sltu         s10, zero, zero
380:              sra          gp, t1, s7
381:              blt          s1, s11, 390f
                  bgeu         s3, a4, 390f
383:              sub          s4, s1, sp
                  add          gp, s8, s6
                  sltu         ra, s4, s10
386:              bge          s0, s2, 403f
                  add          s0, s1, s0
                  srl          a3, s6, t2
                  sra          t2, a2, s10
390:              ori          t5, sp, -795
                  srai         ra, t5, 1
                  srl          t2, a2, s9
                  sll          a3, s10, t0
                  sub          t2, s9, t5
                  srai         a4, tp, 29
                  nop
397:              addi         s9, t5, -1912
                  beq          s8, t1, 416f
                  add          ra, t0, s1
                  and          s6, s8, a5
                  slti         s9, t2, -1176
                  srai         s0, gp, 10
403:              sra          tp, a0, a0
                  sll          s7, a1, s10
                  slli         tp, s0, 21
                  sll          s9, zero, s6
                  nop
                  or           a7, t5, s6
                  srl          s2, t6, gp
                  beq          zero, a2, 417f
                  slt          a0, a2, t6
                  add          t2, a1, gp
                  lui          s2, 987239
                  sll          sp, sp, s5
                  bltu         a6, t0, 429f
416:              or           s1, tp, s2
417:              xori         t1, s3, 1175
                  ori          tp, a5, 1875
                  and          a5, s0, sp
                  sltiu        s8, s1, -1861
                  sll          t2, a2, s3
                  bge          s9, s10, 426f
                  sra          s1, s4, zero
                  ori          s6, a3, -1243
                  sll          a0, a2, a1
426:              addi         a2, t3, -1314
                  bge          s1, sp, 446f
                  sub          a6, tp, t3
429:              bltu         zero, gp, 442f
                  andi         t6, s10, 562
                  auipc        s9, 527859
                  andi         a5, s11, -99
                  bge          zero, s9, 436f
                  sltu         t2, t1, t3
                  srli         tp, a6, 6
main_12:          jal          sp, 10f
0:                jal          t1, 12f
1:                jal          t1, 16f
2:                jal          ra, 15f
3:                jal          t1, 0b
4:                jal          ra, 20f
5:                jal          s11, 14f
6:                jal          ra, 4b
7:                jal          sp, 18f
8:                jal          t6, 3b
9:                jal          ra, 11f
10:               jal          ra, 17f
11:               jal          a7, 6b
12:               jal          ra, 21f
13:               jal          tp, 19f
14:               jal          ra, 9b
15:               jal          ra, 13b
16:               jal          t1, 22f
17:               jal          ra, 8b
18:               jal          ra, 5b
19:               jal          t1, 1b
20:               jal          ra, 2b
21:               jal          ra, 7b
22:               slli         t6, s5, 6
436:              add          s4, s0, tp
                  bltu         s4, t4, 447f
                  srai         zero, t5, 25
                  addi         s8, t5, -828
                  bltu         a7, t4, 448f
                  bgeu         a2, t0, 459f
442:              nop
                  slt          gp, t0, s2
                  auipc        s3, 667134
                  bgeu         t1, ra, 459f
446:              slt          sp, s5, gp
447:              or           a4, a0, a0
448:              srai         s4, t1, 13
                  andi         s2, a0, -884
                  sltu         a6, t6, s6
                  add          t2, t5, s7
                  sltiu        t4, t1, 611
                  srli         a5, sp, 24
                  bge          s5, a2, 456f
                  slli         s2, a5, 21
456:              srli         gp, s10, 15
                  sub          s4, s6, a4
                  srai         t4, s6, 29
459:              blt          s3, t3, 479f
                  beq          zero, s7, 474f
                  srai         s4, s6, 20
                  srli         a0, s4, 29
                  srai         s10, a4, 17
                  sll          a3, s9, s9
                  lui          tp, 584869
                  sub          tp, t0, a4
                  sltiu        a7, a4, 898
                  sltiu        a4, s10, -338
                  sra          s7, ra, t6
                  bne          t3, a3, 478f
                  and          t1, s2, t3
                  sra          t2, t2, s8
                  sra          s3, sp, s2
474:              xor          t4, a1, s8
                  ori          s5, s5, 1441
                  andi         a0, a4, 516
                  beq          s5, a4, 488f
478:              auipc        s1, 518603
479:              or           a7, t1, s1
                  add          s8, a0, a6
                  xori         s3, s6, -1442
                  xori         t2, t6, 812
                  srli         gp, t2, 29
                  sub          tp, s0, t5
                  srl          s8, t1, s10
                  bge          zero, s10, 497f
                  slt          sp, s11, s8
488:              bgeu         s5, t3, 508f
                  sltu         a3, t2, t0
                  addi         ra, s3, 1053
                  nop
                  srl          t1, t4, s6
                  bltu         a6, a3, 499f
                  sub          t6, a1, t0
                  or           s10, t5, s9
                  bgeu         s2, s7, 510f
497:              auipc        s1, 438277
                  blt          s1, s5, 516f
499:              lui          s1, 911309
                  slli         t6, tp, 22
                  lui          gp, 480034
                  lui          a6, 340018
                  bgeu         a1, s4, 522f
                  bgeu         a3, a3, 506f
                  slli         a0, t3, 10
506:              slt          a5, tp, s4
                  addi         s3, s4, 1339
508:              or           s9, s3, sp
                  and          zero, a7, s9
510:              auipc        s7, 693440
                  slli         s9, a6, 20
                  lui          tp, 252832
                  slti         t4, s4, 1399
main_20:          jal          sp, 11f
0:                jal          tp, 15f
1:                jal          s0, 3f
2:                jal          t1, 6f
3:                jal          ra, 9f
4:                jal          s0, 12f
5:                jal          a3, 2b
6:                jal          ra, 7f
7:                jal          t1, 8f
8:                jal          ra, 1b
9:                jal          gp, 13f
10:               jal          s11, 14f
11:               jal          t1, 4b
12:               jal          ra, 10b
13:               jal          sp, 0b
14:               jal          t1, 5b
15:               sll          a0, tp, s4
                  lui          s6, 393437
                  lui          ra, 780735
516:              slt          s6, gp, t0
                  slli         s1, a0, 22
                  ori          t1, t5, -902
                  slti         a4, t2, -654
                  sltu         s4, t2, t0
                  bltu         a5, zero, 534f
522:              andi         a2, tp, -991
                  xori         s2, s1, -1771
                  blt          t2, a0, 544f
                  or           t5, s3, tp
                  slt          a7, gp, a3
                  slt          t4, sp, s7
                  ori          gp, t2, 1212
                  blt          t1, s4, 548f
                  xori         a3, s10, 697
                  or           s10, a2, s1
                  srl          s8, t2, a7
                  beq          s3, t4, 540f
534:              sltu         t4, s10, a5
                  bne          sp, s4, 549f
                  sltu         ra, a2, tp
                  slli         zero, a6, 24
                  andi         gp, t2, 1362
                  srai         s4, s10, 1
540:              ori          a3, s7, 21
                  lui          sp, 588784
                  auipc        t5, 938083
                  andi         s3, a2, -942
544:              sra          s0, t3, s8
                  nop
                  ori          a3, a0, 33
                  and          s8, s1, s0
548:              addi         s11, s8, -1628
549:              xor          gp, s9, t0
                  slt          a5, zero, s11
                  lui          t6, 665705
                  add          s7, a0, s9
                  slt          t2, s11, s9
                  bne          t0, s5, 568f
                  srai         ra, gp, 25
                  srl          a2, ra, a6
                  srli         s8, a5, 26
                  auipc        t2, 354966
                  srl          a2, s11, t6
                  andi         s1, s5, -855
                  sltu         s8, s5, s6
                  sub          t1, t1, t2
                  blt          s5, t3, 566f
                  bltu         s0, s3, 578f
                  lui          t4, 438633
566:              bgeu         a3, sp, 573f
                  srl          t4, t6, s11
568:              lui          s5, 549379
                  sub          a4, s3, s6
                  sltiu        a0, s8, 1590
                  sub          sp, s5, a2
                  slti         a2, s6, 225
573:              slli         sp, gp, 30
                  blt          ra, a6, 582f
                  or           t4, t0, s1
                  addi         a4, s11, -734
                  slti         s4, a1, -752
578:              srl          t5, t3, zero
                  bne          sp, ra, 588f
                  nop
                  slt          s9, a0, t2
582:              bgeu         s2, s3, 593f
                  slt          s11, s7, a0
                  blt          t2, t0, 588f
                  ori          s9, s5, -1330
                  sltu         s8, s11, s11
                  sll          a3, tp, s4
588:              xori         a0, a7, 208
                  bne          t3, t2, 607f
                  slli         t2, t1, 7
                  srl          s1, s1, s3
                  blt          t2, tp, 609f
593:              sra          s0, a4, a4
                  or           t4, s8, s8
                  lui          s2, 325763
                  addi         gp, a6, -1925
                  lui          a2, 899679
                  or           tp, t0, s9
                  sltiu        t4, s9, -1929
                  srli         s2, sp, 27
                  bltu         s8, s7, 617f
                  sll          a3, s3, t3
                  srai         s11, s0, 28
                  xor          a4, t5, s1
                  addi         t6, a6, 82
                  blt          gp, t2, 616f
607:              ori          s2, s9, -155
                  nop
609:              srl          s5, zero, t5
                  sub          t5, a1, a6
                  lui          s5, 526526
                  srl          s9, t1, t4
                  slli         s7, s3, 9
                  ori          s1, s0, -388
                  sll          a4, s7, gp
616:              bltu         s5, s8, 621f
617:              sub          tp, t2, s3
                  srai         s3, a6, 14
                  bne          t3, s6, 630f
                  beq          s10, s7, 628f
621:              ori          a4, s8, -695
                  sltu         s5, s11, t6
                  slt          a2, t3, a1
                  and          t4, s10, s1
                  srl          s4, s6, s8
                  sub          s3, s0, s2
                  bne          s11, t6, 640f
628:              sra          t5, s8, t0
                  bne          t3, s10, 637f
630:              addi         ra, t5, -1706
                  sltu         a7, t1, a2
                  xori         s1, a1, 652
                  slli         s7, t3, 15
                  slti         s11, s9, -23
                  srli         zero, gp, 15
                  bne          s1, t1, 655f
637:              sltiu        t2, t1, -1635
                  xor          s7, s11, t5
                  sll          t1, t5, s9
640:              bgeu         s11, t0, 645f
                  srli         zero, s1, 28
                  and          ra, t2, s4
                  sra          a2, s7, a5
                  addi         s6, ra, 1172
645:              sll          s2, s3, s4
                  slt          s7, gp, sp
                  ori          s5, t0, -439
                  bge          gp, a5, 651f
                  beq          s11, t4, 660f
                  srl          s0, s1, zero
651:              auipc        tp, 289400
                  bgeu         s5, s9, 658f
                  andi         a4, zero, -495
                  and          s3, s9, t1
655:              slt          s5, s11, t2
                  nop
                  sltu         s8, sp, a4
658:              sltiu        ra, a0, 515
                  or           t1, ra, gp
660:              beq          s9, a0, 679f
                  xori         a2, t2, 787
                  sra          t6, ra, t5
                  sub          s11, s4, t2
                  bne          s1, a5, 682f
                  srli         gp, s8, 25
                  blt          s8, s4, 682f
                  blt          s7, t2, 681f
                  sub          s6, s10, s11
                  or           tp, s4, ra
                  beq          a7, a1, 674f
                  bne          a3, a3, 678f
                  or           s8, s11, t1
                  beq          a5, t2, 687f
674:              srl          s4, s9, s1
                  ori          a2, a2, -1935
                  andi         a3, s0, -1301
                  slt          s4, s5, s10
678:              slt          zero, a6, s4
679:              slt          a2, a0, sp
                  bge          s4, s10, 694f
681:              add          a5, s7, t0
682:              xor          s0, a7, s5
                  andi         s9, t4, 534
                  and          ra, a2, tp
                  bne          a6, zero, 705f
                  srl          s5, s0, s0
687:              srl          a7, zero, tp
                  bne          s0, s2, 706f
                  slli         zero, tp, 27
main_4:           jal          sp, 10f
0:                jal          ra, 3f
1:                jal          ra, 2f
2:                jal          s11, 8f
3:                jal          ra, 1b
4:                jal          ra, 0b
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          s11, 11f
8:                jal          t1, 9f
9:                jal          ra, 5b
10:               jal          s9, 6b
11:               slti         s11, s1, -986
                  sll          s6, s8, t5
                  la           t2, sub_1
                  addi         t2, t2, 445
                  sltiu        sp, t1, 147
                  auipc        zero, 542265
                  sub          gp, s1, s1
                  slti         t4, sp, -805
                  sltiu        zero, s5, -977
                  add          t4, a7, s4
                  slti         a5, t6, -1823
main_j2:          jalr         sp, t2, -445 #jump main -> sub_1
                  xori         t2, zero, 561
                  or           s0, a4, s4
                  bne          a2, t3, 712f
694:              sltiu        t5, t2, 150
                  srl          t2, t2, s2
                  lui          t1, 467980
                  sub          s3, a0, s1
                  lui          a6, 946503
                  srai         s5, zero, 15
                  bgeu         a6, tp, 711f
                  lui          s2, 694312
                  xor          gp, t6, s5
                  blt          s8, s1, 717f
                  sltu         s7, s10, a6
705:              blt          t3, tp, 713f
706:              bltu         sp, s9, 715f
                  xor          s0, a7, ra
                  addi         s11, a4, 388
                  ori          gp, t0, 341
                  xori         zero, gp, -1097
711:              blt          s2, s2, 721f
712:              srli         a5, s6, 7
713:              srai         a3, s8, 9
                  andi         t1, a6, 689
715:              bgeu         s8, s9, 722f
                  andi         s3, sp, -1138
717:              and          s8, s11, t4
                  and          gp, t5, a0
                  add          t1, t3, zero
                  sll          s6, s8, t4
721:              slti         t1, s1, 1554
722:              addi         t2, a7, -685
                  slt          t6, t0, a4
                  slli         s0, tp, 31
                  slt          a3, tp, zero
                  sra          s6, s6, ra
                  bgeu         s5, zero, 747f
                  or           t1, s0, s6
                  srl          a2, gp, t2
                  sra          s4, s7, sp
                  sra          t5, gp, s3
                  srai         a3, a2, 23
                  auipc        s6, 988329
                  bgeu         t2, s9, 745f
                  sub          zero, s1, s10
                  bgeu         t2, a7, 744f
                  and          s0, a7, s5
                  sltiu        s2, a5, 456
                  sll          a4, a1, s1
                  auipc        s2, 814098
                  slt          a7, s8, t1
                  slt          a7, t0, s5
                  lui          s5, 969740
744:              and          t4, t6, a7
745:              beq          zero, zero, 764f
                  auipc        a3, 86858
747:              bge          ra, s1, 760f
                  srl          t1, a5, a6
                  beq          sp, t4, 751f
                  addi         sp, s4, -1163
751:              xor          s8, a0, s2
                  srli         a4, s11, 24
                  sub          s1, a6, a4
                  auipc        t4, 459031
                  add          t4, tp, sp
                  lui          s8, 174041
                  sra          a5, a1, s10
                  bne          a7, s5, 775f
                  xor          gp, a7, a0
760:              bge          s4, t5, 773f
                  bge          t1, a6, 769f
                  or           t5, a3, s8
                  bne          a3, a3, 776f
764:              bltu         tp, t5, 782f
                  xor          tp, s8, s3
                  srl          a7, t5, tp
                  and          sp, a1, zero
                  sra          s5, t2, a2
769:              bne          s0, s9, 778f
                  sltu         t2, a4, s3
                  bltu         zero, s11, 774f
                  lui          t5, 213497
773:              sll          a0, s4, s0
774:              or           t1, tp, a7
775:              slti         gp, t6, 90
776:              addi         s11, a4, 1013
                  addi         a4, tp, -1910
778:              bne          a5, t0, 792f
                  srli         s4, ra, 4
                  slt          ra, s0, s3
                  srai         a5, s9, 29
782:              and          s3, t0, a7
                  add          a2, s3, a2
                  sltu         t6, zero, a2
                  bge          s8, t2, 793f
                  xor          t1, s2, a3
                  sra          s4, t2, t3
                  or           a0, s4, a4
                  sltu         s3, s5, t5
                  srai         s9, t2, 13
                  sll          s9, a2, a6
792:              bgeu         a2, s11, 803f
793:              srli         a4, a4, 25
                  blt          t3, s0, 799f
                  sll          zero, s7, a3
                  srli         s7, a7, 6
                  srl          s3, s9, a7
                  sra          t5, s4, zero
799:              srai         s8, s6, 3
                  beq          s5, t4, 806f
                  sub          a7, a6, t3
                  xori         t6, tp, 427
803:              srl          a6, zero, a5
                  auipc        t1, 299793
                  bltu         s0, ra, 812f
806:              sra          a5, t6, a0
                  nop
                  sltiu        ra, a3, 749
                  xor          s7, a4, gp
                  slt          s1, s10, a2
                  srl          a2, t6, s7
812:              sra          ra, t2, a3
                  beq          tp, a3, 824f
                  or           s7, s1, t4
                  xori         s2, t3, 132
                  bge          a7, t3, 835f
                  auipc        zero, 735697
                  auipc        t6, 935861
                  srli         s10, t1, 11
                  andi         s0, s1, 1485
                  srli         s7, s9, 28
                  slti         t2, a2, 1038
                  sltu         s7, s9, t1
824:              sub          a4, s2, s7
                  xori         a2, a1, 559
                  srai         s10, s7, 22
                  sub          s0, t2, a5
                  ori          t5, s1, 533
                  beq          s8, a1, 849f
                  srl          a0, s2, s7
                  or           ra, t5, t3
                  bltu         tp, t0, 852f
                  srl          s3, s8, a1
                  and          a0, t1, tp
835:              add          a5, sp, s3
                  or           tp, a6, sp
                  slti         t4, t2, -4
                  slti         a6, s9, 1513
                  xori         tp, s6, -847
                  ori          a5, a6, 916
                  sub          s8, s11, s6
                  sra          s1, t4, ra
                  and          sp, tp, s4
                  sll          s11, a4, s7
                  sub          t4, t3, gp
                  lui          sp, 840848
                  slti         s9, s0, -1427
                  and          s8, s8, a5
849:              srai         s6, a7, 13
                  ori          t4, zero, -887
                  bne          s11, a2, 853f
852:              xor          sp, s11, a3
853:              bge          s5, s8, 867f
main_23:          jal          sp, 14f
0:                jal          ra, 20f
1:                jal          ra, 0b
2:                jal          t1, 11f
3:                jal          ra, 1b
4:                jal          t1, 17f
5:                jal          ra, 8f
6:                jal          ra, 5b
7:                jal          t1, 6b
8:                jal          ra, 4b
9:                jal          ra, 10f
10:               jal          s11, 19f
11:               jal          ra, 7b
12:               jal          ra, 9b
13:               jal          ra, 18f
14:               jal          s0, 2b
15:               jal          t4, 13b
16:               jal          ra, 15b
17:               jal          ra, 12b
18:               jal          sp, 3b
19:               jal          ra, 16b
20:               slli         s4, t6, 1
                  bge          s5, zero, 868f
                  sub          s0, tp, s0
                  sltiu        sp, s11, -1981
                  xori         t1, t0, 14
                  and          s1, tp, zero
                  blt          t3, s7, 878f
                  blt          s4, s8, 867f
                  addi         t1, s1, 1509
                  sltiu        s7, s11, -1934
                  xori         sp, zero, -423
                  andi         s0, s4, 237
                  addi         a4, s11, 863
                  xor          a0, a5, t2
867:              slti         gp, a1, 1776
868:              sltiu        t4, s5, -1132
                  srl          a0, a0, s7
                  srl          sp, t4, sp
                  slti         a2, s10, -1297
                  sub          t4, s3, a5
                  bne          a3, s8, 886f
                  slti         t5, s0, 555
                  slt          s5, s6, s6
                  lui          s9, 90892
                  ori          a7, s11, -1126
878:              addi         s4, s1, 846
                  bgeu         s0, t6, 883f
                  add          s2, ra, a0
                  slt          ra, a4, t3
                  or           s6, a5, a6
883:              or           a3, s0, s3
                  or           a3, t0, s3
                  srl          a2, a7, a4
886:              xor          ra, t1, s8
                  sll          s8, s7, t2
                  sub          t6, a2, s0
                  sub          a0, a2, gp
                  sltiu        s0, t6, 810
                  xor          zero, a2, t6
                  or           s5, a2, a1
                  xori         t5, s2, 1179
                  blt          s11, a0, 902f
                  add          s3, t3, t3
                  blt          tp, t5, 906f
                  and          s8, ra, a0
                  srai         s4, a4, 16
                  blt          s0, t4, 917f
                  nop
                  bne          gp, s4, 912f
902:              srl          s8, ra, a3
                  auipc        t5, 391271
                  beq          s4, a1, 920f
                  andi         tp, s2, 39
906:              auipc        s9, 760702
                  srai         s0, s3, 13
                  slli         s5, gp, 30
                  or           sp, t1, s8
                  sra          t1, a3, s2
                  auipc        a0, 846589
912:              xori         a7, s9, -718
                  sra          a0, t6, t5
                  ori          a4, s0, -1558
                  srli         s8, s0, 2
                  srl          t4, t6, s10
917:              beq          t1, s10, 936f
                  bge          a2, t2, 935f
                  bgeu         t3, t6, 933f
920:              srl          a5, t1, sp
                  sra          s7, t5, s10
                  ori          tp, s2, -865
                  srai         s6, zero, 3
                  lui          s3, 93115
                  bltu         a0, s6, 933f
                  sra          s6, a4, s7
                  and          t6, s9, a2
                  addi         s2, s4, -1788
                  slli         s4, t3, 4
                  sll          tp, s11, gp
                  andi         a0, a6, -685
                  xori         a6, a3, -1310
933:              blt          s2, s4, 947f
                  sltu         s3, s2, s0
935:              and          s8, s11, a3
936:              sltiu        t4, a1, -320
                  bge          t5, zero, 945f
                  xor          a2, s2, t5
                  sll          a4, tp, a4
                  and          s4, s9, s11
                  nop
                  and          a6, t2, a7
                  addi         s10, a0, 592
                  srai         s9, a4, 29
945:              beq          s9, s11, 950f
                  sltiu        ra, tp, -1711
947:              add          zero, a3, s2
                  srai         sp, a0, 10
                  xor          sp, s10, sp
950:              sra          s3, gp, s2
                  sll          s3, a7, gp
                  bge          a6, t1, 965f
                  xori         sp, a7, 1344
                  lui          s10, 696702
                  srli         s8, a3, 31
                  or           s0, a4, sp
                  nop
                  slti         s5, sp, -327
                  slti         a3, a4, -188
                  slt          a2, s7, t3
                  nop
                  nop
                  blt          s2, s2, 982f
                  beq          s9, a4, 978f
965:              ori          s10, t3, -468
                  bne          t5, a3, 984f
                  addi         s6, s0, 1097
                  slli         zero, a1, 31
                  bne          a5, a4, 980f
                  slt          s8, a5, t6
                  lui          s2, 571615
                  and          t5, a4, s6
                  xor          a5, a0, t0
                  bne          s2, ra, 988f
                  srl          a6, s4, t1
                  bne          s2, a0, 979f
                  sltiu        t4, a7, -703
978:              beq          s5, a4, 997f
979:              and          s5, s6, t3
980:              beq          t3, t2, 998f
                  sub          a4, t1, s7
982:              sll          ra, zero, a6
                  addi         a4, a1, 420
984:              bgeu         s8, s6, 988f
                  slli         s1, a3, 10
                  sll          t5, s10, t6
                  and          a4, t6, a5
988:              nop
                  slli         a2, a0, 13
                  and          tp, gp, s0
                  bgeu         s4, s9, 999f
                  addi         t2, s4, 1857
                  and          s2, zero, s1
                  srl          s3, t2, a2
                  sltiu        s5, gp, 1337
                  and          s1, s4, s2
997:              beq          t0, a0, 1003f
998:              srai         t5, s2, 23
999:              srli         ra, a0, 8
                  nop
                  slli         s0, sp, 8
                  sub          s10, s6, s2
1003:             sltu         s10, s8, s8
                  and          s4, s8, zero
                  add          a0, a6, ra
                  beq          tp, a5, 1022f
                  nop
                  sltu         s0, s8, zero
                  sltu         a6, s9, s9
                  bne          s6, s3, 1018f
                  or           a6, s2, s6
                  add          tp, a7, s10
                  srli         gp, a3, 29
                  bltu         s8, t2, 1021f
                  beq          s9, s2, 1028f
                  slti         zero, t0, 203
                  nop
1018:             xori         s8, a6, -841
                  slt          s8, s7, ra
                  auipc        tp, 394698
1021:             sll          t6, s4, sp
1022:             bltu         s10, zero, 1033f
                  sll          a7, s4, s11
                  slti         t5, s2, 524
                  slt          s3, a6, t6
                  lui          s4, 675906
                  sll          t1, s4, s6
1028:             slt          s1, s5, s2
                  bgeu         s10, sp, 1040f
                  or           s9, s11, a4
                  xor          sp, s1, a7
                  bge          s3, t3, 1046f
1033:             sub          t2, a6, s4
                  beq          s7, s10, 1054f
                  bgeu         t1, a2, 1055f
                  slli         t1, a2, 6
                  xor          a4, zero, t5
                  xor          s5, s3, s8
                  sub          s6, a7, t4
1040:             slli         a6, zero, 28
                  add          t2, s9, s6
                  andi         s5, s4, 1015
                  nop
                  sltu         t6, t4, tp
                  auipc        t4, 532755
1046:             srli         a0, tp, 14
                  blt          a0, s8, 1057f
                  ori          s1, s8, -1230
                  beq          s1, s1, 1068f
                  bgeu         s4, s2, 1059f
                  bgeu         a0, s8, 1058f
                  slli         a3, t0, 25
                  addi         a4, t5, 1998
1054:             xor          s10, a3, zero
1055:             bge          s9, a4, 1072f
                  blt          s10, a7, 1058f
1057:             bgeu         a0, zero, 1070f
1058:             sra          s3, s7, t3
1059:             slli         s6, t4, 31
                  sltu         s11, s5, a2
                  xor          s6, t5, t3
                  auipc        a3, 477482
main_0:           jal          sp, 26f
0:                jal          ra, 21f
1:                jal          ra, 29f
2:                jal          gp, 15f
3:                jal          ra, 17f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          ra, 9f
7:                jal          t5, 23f
8:                jal          ra, 18f
9:                jal          ra, 7b
10:               jal          t1, 24f
11:               jal          ra, 6b
12:               jal          ra, 4b
13:               jal          ra, 14f
14:               jal          ra, 28f
15:               jal          t1, 5b
16:               jal          ra, 12b
17:               jal          ra, 11b
18:               jal          ra, 27f
19:               jal          ra, 25f
20:               jal          t1, 22f
21:               jal          ra, 10b
22:               jal          a6, 19b
23:               jal          a5, 13b
24:               jal          ra, 16b
25:               jal          ra, 8b
26:               jal          t1, 20b
27:               jal          t1, 0b
28:               jal          t1, 1b
29:               slti         s6, t1, -1925
                  sltu         t2, s4, tp
                  sll          s9, gp, a2
                  bltu         a6, s10, 1079f
                  andi         s9, s7, 406
                  addi         s11, s10, -246
1068:             sll          gp, s9, sp
                  sltu         t2, a3, a6
1070:             sltu         t4, s2, ra
                  nop
1072:             slt          a2, a6, t4
                  srl          s4, t5, s0
                  beq          t4, s4, 1085f
                  bne          t5, t1, 1077f
                  add          s4, s11, a4
1077:             blt          a3, s4, 1097f
                  sltu         zero, s3, s9
1079:             sll          s6, s3, s11
                  andi         s0, sp, -789
                  addi         a5, gp, 499
                  add          s10, s0, s4
                  nop
                  srli         a2, zero, 17
1085:             lui          gp, 174781
                  auipc        s8, 179929
                  xor          s5, a6, s9
                  bge          a0, a1, 1106f
                  or           s8, s2, a5
                  sltiu        s1, ra, -1080
                  xori         a6, zero, 681
                  sra          s1, a7, t0
                  srai         ra, a2, 27
                  srai         a2, s4, 15
                  add          s11, s10, a0
                  add          gp, a6, a7
1097:             auipc        s0, 1012173
                  bgeu         a3, a3, 1105f
                  slt          gp, s8, ra
                  add          t4, s4, s2
                  slt          t1, t0, a4
                  bne          s6, t1, 1116f
                  bge          ra, a5, 1114f
                  bgeu         t3, tp, 1109f
1105:             bne          a2, s6, 1123f
1106:             xor          s11, s3, s6
                  auipc        s0, 993958
                  and          sp, s0, s6
1109:             sra          s5, s6, s11
                  auipc        a7, 200074
                  slt          sp, t5, a7
                  sll          s6, t5, s4
                  nop
1114:             and          tp, s10, s4
                  nop
1116:             xor          t6, t5, t1
                  srl          a0, a3, t5
                  and          ra, s2, s0
                  nop
                  or           sp, s0, s11
                  bltu         s2, t6, 1140f
                  and          a7, s3, s10
1123:             sra          s3, zero, a1
                  xor          t1, a3, a5
                  sub          s0, ra, ra
                  slli         t4, zero, 28
                  bgeu         t0, s11, 1137f
                  srli         s3, t4, 25
                  beq          t4, gp, 1149f
                  auipc        s5, 26631
                  andi         sp, s4, -561
                  auipc        a3, 5068
                  slti         s8, zero, 1996
                  bne          s8, t0, 1140f
                  srl          a4, s6, s4
                  bne          s6, s4, 1155f
1137:             slt          tp, a5, t5
                  xori         t1, a1, 354
                  blt          ra, zero, 1150f
1140:             ori          s4, s6, -1069
                  addi         zero, a1, 1236
                  sll          a6, t6, a6
                  sltu         s0, s5, s3
                  sra          tp, a4, a3
                  sra          tp, a2, sp
                  blt          a4, t0, 1160f
                  srl          sp, s2, t1
                  bgeu         s0, t6, 1156f
1149:             or           s1, t2, a7
1150:             addi         s6, zero, -314
                  srli         s8, t6, 10
                  and          s11, sp, s7
                  bltu         s10, s7, 1161f
                  andi         a3, t4, 1595
1155:             beq          s2, s11, 1172f
1156:             sra          a2, a0, s1
                  andi         sp, t1, 1620
                  slt          t1, a0, s1
                  auipc        t5, 339362
1160:             slti         a0, t0, -1878
1161:             srai         s3, gp, 18
                  bne          a6, a6, 1176f
                  srli         s0, s6, 4
                  add          t5, a6, a3
                  srai         t6, a3, 20
                  bge          s6, ra, 1169f
                  sltiu        t2, a4, -180
                  bne          t4, t5, 1177f
1169:             add          s0, s5, s11
                  xori         s10, s8, 1036
                  and          s6, s11, s0
1172:             bge          tp, s10, 1191f
                  beq          a1, a1, 1180f
                  srl          t4, a1, s2
                  xori         s3, a2, 460
1176:             andi         tp, t1, -1267
1177:             addi         s4, zero, -902
                  sltiu        s11, s6, 677
                  or           tp, a4, a1
1180:             slti         s6, gp, 159
                  sll          a7, t2, s11
                  slt          s4, t5, s0
                  slti         t2, a0, -1047
                  sltu         t4, s10, t0
                  slli         gp, a7, 16
                  andi         t1, s7, 1315
                  addi         a4, a6, 1326
                  slli         s6, s4, 7
                  bge          t1, gp, 1202f
                  slli         t4, ra, 17
1191:             andi         s7, s9, -1217
                  srli         s10, a6, 30
                  srl          a6, t5, s11
                  slt          s11, a7, a6
                  bltu         t6, gp, 1203f
                  sltiu        t4, a2, 365
                  bgeu         s4, s8, 1201f
                  xor          s0, s4, s11
                  sra          zero, s0, zero
                  slti         a5, s9, -653
1201:             ori          gp, s6, 989
1202:             sltiu        s9, s0, -1049
1203:             sltiu        zero, s1, 656
                  and          s4, s6, t0
                  addi         s7, s2, 514
                  slli         a2, t4, 3
                  ori          a3, a7, 1312
                  srli         t4, a5, 11
                  sll          gp, sp, a1
                  addi         s5, ra, 1156
                  sra          s7, s8, t4
main_15:          jal          sp, 7f
0:                jal          t1, 1f
1:                jal          ra, 11f
2:                jal          t1, 5f
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          t1, 9f
8:                jal          a5, 6b
9:                jal          ra, 8b
10:               jal          ra, 2b
11:               slli         a0, s11, 27
                  slli         gp, t1, 0
                  or           s0, tp, s1
                  sltiu        s10, t3, 747
                  blt          ra, a4, 1231f
                  bge          s3, s5, 1236f
                  sll          t4, zero, s3
                  sltiu        a7, zero, -469
                  addi         a3, a1, -1285
                  bge          a5, s7, 1231f
                  nop
                  sltiu        s0, zero, -1037
                  xori         a5, t5, 24
                  srl          s8, s5, sp
                  slti         a2, t1, 1274
                  or           s9, s11, a2
                  andi         s5, sp, -289
                  ori          tp, t6, 922
                  srli         t6, s5, 31
                  sltiu        t2, a4, -2
1231:             slt          s6, tp, a6
                  lui          ra, 1019031
                  sltiu        a6, t5, 625
                  bne          tp, t4, 1240f
                  xori         s5, s4, -1538
1236:             srli         s0, ra, 26
                  lui          s9, 598155
                  nop
                  bgeu         sp, s4, 1257f
1240:             or           sp, s0, s1
                  slti         t2, s0, 1651
                  srl          t2, a4, s8
                  slt          sp, s8, s8
                  addi         s4, t6, 908
                  or           a5, zero, a1
                  andi         gp, s11, -812
                  and          a0, s6, s1
                  sltu         t1, zero, s11
                  bne          t3, s8, 1257f
                  sub          s9, s10, s5
                  andi         s8, gp, -393
                  slli         t1, s9, 14
                  sltu         s5, s4, s9
                  nop
                  or           s2, tp, s4
                  sltiu        a5, s1, -357
1257:             bge          t2, s10, 1272f
                  sltiu        t6, a5, -324
                  slti         gp, a1, -1264
                  blt          t5, t1, 1270f
                  bgeu         t3, t0, 1272f
                  or           s9, s4, s5
                  sra          s8, a7, t3
                  xori         s10, a5, 1861
                  srli         s5, ra, 30
                  srl          s11, a7, a4
                  auipc        s10, 8527
                  or           s6, a6, ra
                  and          a5, a5, a5
1270:             sra          ra, gp, zero
                  slti         a5, ra, -1166
1272:             srl          zero, t6, t6
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            auipc        t5, 137094
                  srl          s8, sp, tp
                  xori         s4, a6, -28
                  andi         s8, s9, -1023
                  srai         a3, a0, 24
                  srli         s10, s1, 23
                  xori         s7, a0, -576
                  sra          a3, t3, t0
                  addi         a1, a1, -64
                  sw           sp, 4(a1)
                  sra          a6, s11, s7
sub_4_7:          jal          sp, 12f
0:                jal          ra, 16f
1:                jal          ra, 6f
2:                jal          sp, 5f
3:                jal          t1, 15f
4:                jal          ra, 3b
5:                jal          gp, 25f
6:                jal          tp, 22f
7:                jal          ra, 11f
8:                jal          ra, 20f
9:                jal          ra, 24f
10:               jal          ra, 2b
11:               jal          ra, 19f
12:               jal          ra, 0b
13:               jal          ra, 8b
14:               jal          ra, 13b
15:               jal          s1, 18f
16:               jal          ra, 4b
17:               jal          ra, 10b
18:               jal          a3, 1b
19:               jal          ra, 14b
20:               jal          tp, 23f
21:               jal          s6, 9b
22:               jal          ra, 21b
23:               jal          t1, 17b
24:               jal          ra, 7b
25:               sltu         a6, t4, t6
sub_4_2:          jal          sp, 18f
0:                jal          ra, 17f
1:                jal          sp, 23f
2:                jal          ra, 1b
3:                jal          t1, 11f
4:                jal          ra, 8f
5:                jal          s6, 12f
6:                jal          ra, 20f
7:                jal          ra, 13f
8:                jal          t1, 28f
9:                jal          ra, 3b
10:               jal          t1, 22f
11:               jal          t1, 19f
12:               jal          ra, 15f
13:               jal          t1, 9b
14:               jal          ra, 21f
15:               jal          ra, 29f
16:               jal          tp, 26f
17:               jal          gp, 5b
18:               jal          ra, 14b
19:               jal          ra, 0b
20:               jal          ra, 4b
21:               jal          ra, 6b
22:               jal          ra, 7b
23:               jal          ra, 25f
24:               jal          s8, 27f
25:               jal          s3, 24b
26:               jal          ra, 2b
27:               jal          s7, 10b
28:               jal          ra, 16b
29:               srai         s2, a4, 30
sub_4_6:          jal          sp, 2f
0:                jal          a0, 13f
1:                jal          s7, 19f
2:                jal          ra, 0b
3:                jal          ra, 11f
4:                jal          ra, 17f
5:                jal          t1, 9f
6:                jal          t1, 18f
7:                jal          ra, 4b
8:                jal          ra, 3b
9:                jal          t5, 10f
10:               jal          s11, 14f
11:               jal          ra, 5b
12:               jal          a2, 15f
13:               jal          ra, 8b
14:               jal          ra, 12b
15:               jal          ra, 16f
16:               jal          t1, 7b
17:               jal          ra, 6b
18:               jal          s0, 1b
19:               or           ra, a5, s3
sub_4_5:          jal          sp, 0f
0:                jal          s2, 17f
1:                jal          s3, 7f
2:                jal          ra, 14f
3:                jal          t1, 8f
4:                jal          ra, 2b
5:                jal          sp, 15f
6:                jal          a3, 19f
7:                jal          a5, 12f
8:                jal          ra, 24f
9:                jal          t1, 3b
10:               jal          ra, 5b
11:               jal          t1, 16f
12:               jal          ra, 13f
13:               jal          sp, 18f
14:               jal          s6, 26f
15:               jal          ra, 4b
16:               jal          ra, 6b
17:               jal          ra, 21f
18:               jal          ra, 11b
19:               jal          ra, 9b
20:               jal          sp, 10b
21:               jal          ra, 25f
22:               jal          s3, 23f
23:               jal          ra, 20b
24:               jal          a4, 22b
25:               jal          ra, 1b
26:               andi         t6, t6, 94
sub_4_4:          jal          sp, 19f
0:                jal          s4, 28f
1:                jal          ra, 8f
2:                jal          t1, 22f
3:                jal          tp, 25f
4:                jal          t1, 7f
5:                jal          ra, 0b
6:                jal          s8, 2b
7:                jal          sp, 6b
8:                jal          ra, 24f
9:                jal          ra, 21f
10:               jal          ra, 14f
11:               jal          tp, 20f
12:               jal          ra, 18f
13:               jal          ra, 5b
14:               jal          t1, 1b
15:               jal          t1, 4b
16:               jal          s3, 12b
17:               jal          ra, 3b
18:               jal          t1, 13b
19:               jal          ra, 26f
20:               jal          t1, 27f
21:               jal          ra, 10b
22:               jal          ra, 9b
23:               jal          s0, 11b
24:               jal          sp, 17b
25:               jal          ra, 23b
26:               jal          ra, 15b
27:               jal          ra, 16b
28:               slli         gp, s1, 31
                  slti         s3, a7, -1635
                  slli         s1, sp, 8
                  sltu         tp, s9, s5
                  sltiu        s1, t6, 1395
                  and          tp, s2, s2
                  sltu         s6, t2, a6
                  sra          s5, zero, t6
                  xori         a5, s9, -1425
                  andi         s9, a4, 391
                  srl          s7, t2, t3
                  xori         s7, s5, 1596
                  add          t4, t1, t1
                  blt          a2, t1, 29f
                  slt          s6, zero, zero
                  slli         s7, s4, 3
                  andi         a0, a4, -550
                  xor          s0, a0, s6
                  sltiu        zero, s11, -2031
                  sub          s7, gp, a5
                  bne          t4, t4, 36f
                  srli         a6, s5, 22
                  bltu         s0, zero, 38f
                  bltu         s3, s4, 42f
                  xor          a4, a5, s1
                  slti         a3, s11, -1359
                  lui          a2, 888398
                  sub          a7, s8, s6
                  nop
                  or           a2, s6, a1
29:               add          a0, t3, t2
                  bge          a2, s2, 40f
                  srli         t2, a6, 24
                  srli         s6, a1, 28
                  andi         t2, tp, 1393
                  xori         s10, gp, -1175
                  sll          gp, s0, s3
36:               sltu         s7, t0, t0
                  or           a7, a6, s8
38:               beq          s8, ra, 41f
                  sub          s9, a5, t0
40:               sltiu        a5, t1, 1711
41:               or           s6, sp, a6
42:               bne          s0, s1, 49f
                  bge          s6, t6, 61f
                  beq          s2, sp, 57f
                  nop
                  addi         s7, a0, 205
                  sub          t6, s2, gp
                  beq          zero, s10, 57f
49:               srli         s1, a4, 14
                  nop
                  blt          a4, t3, 53f
                  nop
53:               bne          s0, s4, 59f
                  addi         a4, gp, 1386
                  and          a3, s10, a4
                  andi         zero, sp, 488
57:               beq          t0, s0, 63f
                  and          a2, s11, s2
59:               and          s9, s2, a6
                  andi         gp, t3, -523
61:               ori          t4, s3, -599
                  srli         ra, sp, 2
63:               auipc        ra, 218775
                  xori         gp, a5, 217
                  slt          tp, s4, gp
                  sltu         s1, s1, s0
                  bltu         a3, s0, 74f
                  sub          sp, ra, s8
                  srli         a2, zero, 20
                  srl          s2, s8, s4
                  auipc        t1, 139309
                  auipc        s10, 518626
                  sltu         tp, s7, t2
74:               add          s6, gp, t3
                  srli         s2, a3, 18
                  nop
                  andi         a2, t1, -137
                  sub          gp, t5, s10
                  add          a4, gp, a4
                  sra          gp, zero, t0
                  sll          t6, t0, t2
                  slti         a4, a1, 1002
                  sra          a0, a0, tp
                  sll          zero, s7, a6
                  xori         t2, a6, 949
                  andi         a2, a5, -1658
                  sll          s1, t2, s4
                  xori         a5, s7, -620
                  bge          t2, s3, 102f
                  bne          s6, a1, 106f
                  slti         t1, s3, -1859
                  bgeu         s9, tp, 99f
                  and          s10, s0, a4
                  slti         s0, a3, -56
                  srl          t6, a4, s6
                  srli         s7, s6, 15
                  lui          s4, 184251
                  slli         zero, a0, 24
99:               sltiu        sp, a5, 1958
                  blt          s8, t3, 120f
                  addi         s6, s2, 558
102:              andi         s1, t1, -566
                  nop
                  bge          gp, t3, 112f
                  nop
106:              slti         a3, t0, -494
                  nop
                  nop
                  bltu         t2, tp, 120f
sub_4_0:          jal          sp, 1f
0:                jal          t1, 9f
1:                jal          t1, 7f
2:                jal          a7, 4f
3:                jal          gp, 0b
4:                jal          ra, 10f
5:                jal          t1, 13f
6:                jal          ra, 3b
7:                jal          ra, 11f
8:                jal          ra, 2b
9:                jal          ra, 5b
10:               jal          ra, 14f
11:               jal          ra, 6b
12:               jal          ra, 8b
13:               jal          ra, 12b
14:               ori          s10, t5, -1503
                  srai         gp, s10, 30
                  bge          t2, t2, 128f
112:              bne          zero, t6, 131f
                  addi         s4, t0, -2048
                  sra          s6, s2, s5
                  bne          s0, a7, 130f
                  bgeu         t4, sp, 129f
                  beq          a7, a6, 118f
118:              sra          sp, a7, zero
                  slt          s0, t4, s10
120:              and          sp, s6, a7
                  xori         a6, zero, -37
                  nop
                  ori          a2, a7, -150
                  slt          s6, s11, t5
                  sltu         s5, s3, t5
                  and          s1, t4, a3
                  bltu         a0, t6, 138f
128:              sltu         s6, s6, s4
129:              xor          a5, a7, s0
130:              slt          s3, a5, t6
131:              lui          a2, 510260
                  add          t2, t3, gp
                  xori         a2, s4, -1656
                  bge          s0, a6, 154f
                  beq          t4, s9, 145f
                  xori         a3, t4, 700
                  lui          s0, 662565
138:              sll          a7, s10, s0
                  add          s11, sp, s7
                  sltiu        zero, tp, -307
                  or           s10, s5, s4
                  slli         gp, a4, 30
                  sltu         s1, a5, s5
                  sltu         s3, tp, s11
145:              nop
                  xori         s2, ra, -1114
                  bltu         s5, s4, 153f
                  or           s3, s7, t6
                  slli         tp, s10, 20
                  beq          s0, s6, 153f
                  slli         a6, tp, 7
                  slt          t6, gp, tp
153:              bge          s0, a6, 159f
154:              xori         s2, s0, 157
                  sltu         tp, t2, t3
                  or           s0, s7, s6
                  bltu         tp, t3, 170f
                  blt          s5, t6, 175f
159:              lui          s10, 703953
                  sll          a7, zero, s4
                  bgeu         zero, s11, 167f
                  sub          t5, zero, s11
                  sll          s11, s3, s2
                  slli         a3, s7, 12
                  sub          ra, s5, t6
                  addi         s9, s7, 526
167:              blt          a4, s11, 185f
                  sltiu        a3, t5, -1599
                  ori          a0, s2, 648
170:              bge          a4, t1, 185f
                  slti         a3, s3, 1528
                  srai         s10, t3, 28
                  xori         s4, a6, -740
                  nop
175:              beq          sp, a7, 182f
                  sltu         s3, ra, s5
                  lui          s1, 406883
                  ori          t6, s4, -836
                  slli         t2, s6, 11
                  bne          ra, tp, 193f
                  add          s11, s8, t2
sub_4_1:          jal          sp, 20f
0:                jal          t5, 24f
1:                jal          t1, 8f
2:                jal          t1, 16f
3:                jal          ra, 15f
4:                jal          s5, 26f
5:                jal          ra, 4b
6:                jal          ra, 28f
7:                jal          ra, 12f
8:                jal          s0, 14f
9:                jal          t1, 6b
10:               jal          s3, 5b
11:               jal          ra, 10b
12:               jal          ra, 19f
13:               jal          ra, 2b
14:               jal          ra, 11b
15:               jal          s6, 9b
16:               jal          tp, 0b
17:               jal          t1, 3b
18:               jal          tp, 13b
19:               jal          tp, 23f
20:               jal          ra, 1b
21:               jal          ra, 18b
22:               jal          sp, 27f
23:               jal          ra, 29f
24:               jal          ra, 22b
25:               jal          ra, 21b
26:               jal          ra, 17b
27:               jal          tp, 7b
28:               jal          ra, 25b
29:               lui          t2, 190072
182:              bgeu         t6, s5, 193f
                  xori         a6, a4, 1244
                  slti         gp, tp, -660
185:              srli         a4, s5, 24
                  and          a5, a4, gp
                  or           a0, t6, a0
                  andi         ra, a0, 1815
                  sra          a2, tp, t5
                  srai         s5, gp, 18
                  lui          s10, 517256
                  ori          s6, s8, -210
193:              srli         s6, ra, 0
                  sra          ra, t4, s3
                  bltu         s0, gp, 201f
                  srl          t1, s8, t5
                  beq          tp, a5, 210f
                  sltu         s10, a1, s1
                  xor          zero, s9, a7
                  auipc        sp, 590491
201:              xor          a0, gp, s0
                  beq          t1, t4, 221f
                  or           tp, s8, t0
                  srai         t1, a3, 14
                  srl          s4, t1, a6
                  xor          t4, t4, t1
                  sltiu        s6, s6, -1151
                  addi         a7, a2, 1503
                  ori          s11, s5, 1460
210:              lui          sp, 738210
                  blt          s2, t3, 218f
                  sltiu        s2, s4, 1291
                  bgeu         s9, zero, 233f
                  sltu         t6, gp, s0
                  nop
                  or           s4, a6, a4
                  sll          t6, s8, a0
218:              srli         s9, s4, 18
                  srli         t1, zero, 16
                  andi         a4, a4, 1443
221:              srai         sp, t3, 3
                  srai         s11, a0, 11
                  srli         s1, t6, 6
                  srl          t2, ra, gp
                  bge          sp, t3, 235f
                  slt          s8, t2, t1
                  srli         s4, s5, 27
                  bge          a2, tp, 248f
                  srai         s1, s0, 15
                  slti         a3, s11, -1948
                  xor          s11, a1, s11
                  auipc        s8, 347077
233:              slti         s9, a5, 979
                  addi         a7, t4, 1414
235:              srl          a5, gp, t1
                  blt          t5, zero, 246f
                  or           t5, s2, a7
                  slti         s0, sp, 400
                  slti         a5, t2, 385
                  sltiu        s2, sp, -1738
                  auipc        s6, 910306
                  xor          zero, s7, a0
                  auipc        zero, 123924
                  sra          s7, s6, s6
                  addi         a2, a3, -1291
246:              sltiu        t2, t3, -1702
                  addi         a2, a1, -1353
248:              srli         s6, t6, 5
                  sll          s3, ra, a4
                  sub          a0, s7, s0
                  bgeu         s9, t6, 271f
                  sltiu        s3, a6, 943
                  bge          t3, gp, 260f
                  bne          a2, sp, 265f
                  sll          a6, a5, t0
                  beq          a0, t5, 264f
                  srl          gp, s8, sp
                  slti         s9, t3, 1822
                  bge          s0, a4, 276f
260:              xori         s9, s4, -1983
                  beq          s0, a6, 270f
                  bne          a1, a7, 263f
263:              sll          gp, a4, s1
264:              bge          s1, a7, 281f
265:              srl          s1, s6, t3
                  addi         a3, t6, 841
                  slli         s6, s9, 22
                  bgeu         t4, t1, 271f
                  bne          a5, t4, 272f
270:              auipc        a4, 316388
271:              xor          a4, a3, s7
272:              andi         t6, s9, 1885
                  xor          s11, t1, s4
                  lui          t6, 127334
                  bltu         t2, t1, 292f
276:              addi         a3, a5, 99
                  srli         s9, sp, 27
                  srai         a5, a2, 21
                  ori          t5, t1, -101
                  xor          t6, t5, a3
281:              lui          a7, 483664
                  ori          s1, t3, 1983
                  andi         s11, s7, 621
                  bgeu         s11, t4, 286f
                  srli         t5, t5, 26
286:              bne          s2, t1, 302f
                  addi         s10, a4, -589
                  andi         t5, t1, 893
                  add          ra, s6, t0
                  slli         a2, tp, 4
                  slli         s5, s9, 31
292:              slt          s4, s2, s2
                  add          s1, a0, a4
                  slt          a7, a6, s11
                  xori         t2, s3, -1195
                  or           gp, t3, a2
                  bne          s10, s6, 300f
                  bge          s11, t6, 305f
                  andi         a2, t0, -1788
300:              sra          a2, s10, t0
                  lui          a4, 290648
302:              sltiu        s0, a7, -1850
                  slli         s2, s1, 19
                  xori         s9, s9, -1020
305:              ori          s1, s1, 622
                  addi         ra, sp, 1785
                  srli         a3, gp, 29
                  sra          t1, t0, a7
                  lui          a4, 422654
                  bltu         t0, s5, 321f
                  xori         a3, gp, -1428
                  srai         gp, t6, 7
                  lui          s10, 729795
                  and          s11, s0, zero
                  sltu         s9, a4, s11
                  add          s11, a7, t1
                  srli         s3, s8, 0
                  xori         tp, t1, -415
                  sll          s2, zero, s0
                  addi         t4, s9, -2046
321:              andi         t2, zero, 1613
                  xori         a3, a0, 718
                  slli         s2, s6, 8
                  bgeu         a1, t0, 333f
                  bgeu         s8, t0, 331f
                  andi         s2, s9, -172
                  srli         t4, a4, 30
                  and          t1, s3, a0
                  sub          s0, t0, sp
                  slt          s3, a3, sp
331:              and          a5, s0, t5
                  srai         s3, a4, 22
333:              slti         s1, a2, 1801
                  sltiu        s0, s1, 1268
                  add          sp, a0, s8
                  slti         a4, t5, 475
                  ori          s5, t3, 936
                  bgeu         zero, t0, 341f
                  ori          t4, t5, -1833
                  sll          a7, a1, zero
341:              add          a0, a6, s9
                  xori         t5, s0, -985
                  sll          t4, tp, a2
                  srli         s1, s9, 11
                  sll          a2, sp, s2
                  auipc        a2, 859145
                  xori         t2, s3, -1997
                  nop
                  sltu         gp, s9, s1
                  bltu         s5, s5, 360f
                  srli         t4, s9, 17
                  bne          a0, t5, 358f
                  andi         s1, s5, -312
                  andi         s3, s9, -981
                  sub          t2, zero, a2
                  srai         t4, a2, 30
                  bne          a0, t0, 372f
358:              bge          s2, a3, 369f
                  beq          s6, t6, 378f
360:              sltu         s9, s6, t2
                  blt          a7, t1, 368f
                  and          s2, a0, a1
                  srl          s8, s7, s1
                  ori          zero, t1, 1997
                  blt          sp, t6, 382f
                  addi         s3, t1, -565
                  bgeu         s0, t1, 387f
368:              srai         s1, s0, 20
369:              andi         ra, tp, -1101
                  blt          a0, a7, 386f
                  sltiu        zero, s9, 1038
372:              sub          t5, t5, t3
                  add          s10, a5, t5
                  beq          t5, s4, 376f
sub_4_3:          jal          sp, 0f
0:                jal          ra, 19f
1:                jal          ra, 2f
2:                jal          ra, 26f
3:                jal          a6, 18f
4:                jal          t1, 23f
5:                jal          ra, 8f
6:                jal          ra, 11f
7:                jal          ra, 12f
8:                jal          ra, 13f
9:                jal          t1, 15f
10:               jal          tp, 21f
11:               jal          ra, 25f
12:               jal          s4, 24f
13:               jal          ra, 3b
14:               jal          ra, 5b
15:               jal          ra, 7b
16:               jal          ra, 14b
17:               jal          ra, 22f
18:               jal          ra, 20f
19:               jal          a4, 10b
20:               jal          sp, 6b
21:               jal          s10, 4b
22:               jal          t1, 16b
23:               jal          t1, 17b
24:               jal          ra, 1b
25:               jal          gp, 9b
26:               andi         s4, s2, -1720
                  bltu         t6, a2, 383f
376:              slli         s3, s0, 9
                  bge          s11, zero, 397f
378:              lui          s4, 44051
                  sll          a7, s11, a7
                  nop
                  blt          a6, a7, 398f
382:              nop
383:              and          gp, s5, s7
                  srli         t5, s5, 3
                  sub          a3, a7, s0
386:              slli         a5, t4, 9
387:              xori         t4, t0, -33
                  bge          s9, t2, 408f
                  xor          t4, s10, s11
                  slli         s0, s3, 18
                  or           s5, s0, s2
                  sltu         s2, s10, s10
                  add          s11, s1, t5
                  xor          s2, a1, a0
                  sra          s0, a5, s11
                  sll          ra, a6, t6
397:              beq          a5, s9, 409f
398:              bne          s7, s11, 409f
                  bne          t6, s0, 409f
                  ori          s6, a2, 1773
                  sltu         a6, t4, s4
                  andi         t6, gp, -1090
                  blt          s8, s3, 409f
                  or           a6, sp, s10
                  srli         s2, s2, 18
                  bge          s1, t3, 409f
                  and          t2, tp, tp
408:              nop
409:              and          s11, s5, t1
                  ori          s1, a5, -355
                  lw           sp, 4(a1)
                  addi         t1, sp, -976
                  addi         a1, a1, 64
                  ori          a2, zero, 370
                  sltu         t4, a1, s0
                  sll          t4, s9, s5
640:              addi x2, x2, 1
640:              jalr x2, x2, 0
sub_3:            addi         a1, a1, -44
                  lui          a6, 1009471
                  sw           sp, 4(a1)
                  or           s3, t5, t4
                  sltiu        t4, t3, -24
                  auipc        t5, 340213
                  sltiu        t4, t2, 1457
                  sll          s3, sp, a2
                  sll          a0, a1, a3
                  slt          s3, t0, a7
                  la           ra, sub_4
                  sltiu        s5, s6, -1944
                  sltu         s11, gp, t3
                  xori         s5, ra, 629
                  andi         s9, t1, 1024
                  addi         ra, ra, 768
                  sra          t6, s9, s9
                  beq          a4, s10, sub_3_j7 #branch to jump instr
                  sub          t6, a3, a5
sub_3_j7:         jalr         sp, ra, -767 #jump sub_3 -> sub_4
sub_3_3:          jal          sp, 14f
0:                jal          s8, 23f
1:                jal          ra, 27f
2:                jal          t1, 25f
3:                jal          ra, 4f
4:                jal          s0, 6f
5:                jal          t1, 24f
6:                jal          gp, 16f
7:                jal          gp, 20f
8:                jal          ra, 11f
9:                jal          ra, 13f
10:               jal          s4, 5b
11:               jal          a4, 9b
12:               jal          ra, 19f
13:               jal          t1, 0b
14:               jal          s11, 2b
15:               jal          tp, 1b
16:               jal          gp, 21f
17:               jal          ra, 18f
18:               jal          ra, 7b
19:               jal          t1, 17b
20:               jal          sp, 26f
21:               jal          gp, 8b
22:               jal          ra, 15b
23:               jal          t1, 22b
24:               jal          ra, 12b
25:               jal          t1, 10b
26:               jal          a5, 3b
27:               xor          t5, a0, s6
sub_3_5:          jal          sp, 12f
0:                jal          s11, 11f
1:                jal          ra, 10f
2:                jal          ra, 9f
3:                jal          ra, 20f
4:                jal          sp, 15f
5:                jal          ra, 14f
6:                jal          a0, 5b
7:                jal          ra, 6b
8:                jal          t1, 16f
9:                jal          ra, 13f
10:               jal          t1, 25f
11:               jal          ra, 19f
12:               jal          tp, 22f
13:               jal          t1, 8b
14:               jal          ra, 17f
15:               jal          tp, 3b
16:               jal          a3, 18f
17:               jal          ra, 24f
18:               jal          ra, 7b
19:               jal          gp, 4b
20:               jal          sp, 1b
21:               jal          tp, 23f
22:               jal          t1, 2b
23:               jal          a5, 0b
24:               jal          ra, 21b
25:               sltu         t6, s0, t5
sub_3_6:          jal          sp, 11f
0:                jal          t1, 5f
1:                jal          a7, 8f
2:                jal          ra, 12f
3:                jal          ra, 13f
4:                jal          ra, 2b
5:                jal          ra, 9f
6:                jal          ra, 10f
7:                jal          ra, 1b
8:                jal          a5, 4b
9:                jal          ra, 6b
10:               jal          ra, 7b
11:               jal          t1, 0b
12:               jal          tp, 3b
13:               srl          a4, s11, s5
sub_3_1:          jal          sp, 20f
0:                jal          sp, 11f
1:                jal          ra, 10f
2:                jal          tp, 24f
3:                jal          ra, 6f
4:                jal          ra, 0b
5:                jal          ra, 1b
6:                jal          t4, 2b
7:                jal          ra, 21f
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          ra, 8b
11:               jal          ra, 3b
12:               jal          a7, 25f
13:               jal          ra, 19f
14:               jal          ra, 22f
15:               jal          t1, 14b
16:               jal          ra, 4b
17:               jal          t1, 15b
18:               jal          t6, 26f
19:               jal          ra, 5b
20:               jal          gp, 12b
21:               jal          s11, 18b
22:               jal          s8, 23f
23:               jal          t1, 16b
24:               jal          t1, 13b
25:               jal          t1, 17b
26:               srl          gp, a5, zero
sub_3_2:          jal          sp, 0f
0:                jal          tp, 7f
1:                jal          t1, 20f
2:                jal          s1, 15f
3:                jal          t1, 11f
4:                jal          t2, 1b
5:                jal          t1, 10f
6:                jal          ra, 3b
7:                jal          ra, 16f
8:                jal          gp, 9f
9:                jal          ra, 5b
10:               jal          s6, 19f
11:               jal          ra, 14f
12:               jal          t1, 2b
13:               jal          t1, 12b
14:               jal          ra, 8b
15:               jal          ra, 6b
16:               jal          ra, 13b
17:               jal          ra, 4b
18:               jal          ra, 17b
19:               jal          t1, 18b
20:               slli         s1, s6, 16
sub_3_4:          jal          sp, 5f
0:                jal          ra, 11f
1:                jal          ra, 7f
2:                jal          t1, 4f
3:                jal          ra, 19f
4:                jal          ra, 16f
5:                jal          ra, 22f
6:                jal          t1, 12f
7:                jal          s4, 17f
8:                jal          a5, 14f
9:                jal          t1, 0b
10:               jal          t5, 1b
11:               jal          gp, 8b
12:               jal          sp, 9b
13:               jal          s7, 20f
14:               jal          t1, 21f
15:               jal          a6, 2b
16:               jal          ra, 18f
17:               jal          ra, 6b
18:               jal          ra, 25f
19:               jal          gp, 26f
20:               jal          t1, 24f
21:               jal          tp, 15b
22:               jal          t6, 3b
23:               jal          ra, 10b
24:               jal          ra, 27f
25:               jal          ra, 13b
26:               jal          t4, 23b
27:               andi         s4, sp, 664
                  add          tp, a1, s6
                  nop
                  xori         s10, t1, 1005
                  bge          tp, a2, 5f
                  bltu         s1, s9, 5f
5:                andi         s7, s4, 1309
                  addi         a6, a6, -1855
                  blt          a6, s4, 19f
                  bgeu         zero, a0, 25f
                  beq          s11, s6, 19f
                  srl          sp, s10, a3
                  bge          s11, a0, 31f
                  sra          a5, sp, t4
                  andi         t6, s11, -1208
                  srli         a0, a0, 24
                  lui          sp, 694425
                  srai         s9, s9, 26
                  slli         s5, s11, 3
                  or           sp, s3, t0
19:               add          t4, a6, s4
                  or           t5, a5, s8
                  andi         s11, s9, 1062
                  blt          t1, t3, 36f
                  add          a5, t6, s3
                  slti         s3, s11, 1861
25:               and          s6, gp, s0
                  slli         t4, a2, 22
                  add          ra, t2, a5
                  nop
                  bltu         t6, s1, 30f
30:               blt          t6, t1, 49f
31:               lui          s7, 624194
                  srli         s10, t5, 11
                  slti         a7, zero, 1260
                  and          zero, t1, s6
                  andi         s6, zero, 1834
36:               sltu         t2, s8, a2
                  xori         sp, a6, 1992
                  slti         s7, ra, 1962
                  xor          gp, a5, s9
                  and          s3, s8, zero
                  xori         a7, a5, 721
                  nop
                  slli         s1, t5, 21
                  slli         a3, s6, 17
                  andi         a0, t5, -956
                  auipc        t5, 789873
                  xor          s4, t0, s7
                  sra          s4, tp, s10
                  addi         a6, ra, -957
                  lui          a6, 501929
                  nop
                  nop
sub_3_j6:         jal          sp, sub_4 #jump sub_3 -> sub_4
                  sll          a2, s2, s4
                  andi         s10, t3, -799
                  sub          s9, tp, s11
                  srl          a6, a1, s6
49:               sra          tp, s4, a0
                  auipc        tp, 658167
                  bne          a3, a7, 61f
                  sltiu        a7, t4, -2043
                  add          t6, t1, a3
                  lui          s11, 646165
                  bge          a2, a2, 64f
                  sltu         s2, t1, a6
                  or           s3, tp, tp
                  slli         a7, ra, 1
                  andi         s11, s0, 3
                  lui          t6, 2887
61:               srl          s2, s4, s2
                  bge          s11, ra, 63f
63:               bne          t6, s1, 71f
64:               bne          a6, a7, 74f
                  ori          t6, t0, -771
                  sltu         t1, a0, a4
                  bltu         a0, s0, 71f
                  sub          t5, t2, s9
                  nop
                  sltiu        zero, s6, -283
71:               bgeu         ra, a0, 87f
                  lui          gp, 942777
                  slti         s11, t4, -2012
74:               slli         a0, s3, 9
                  andi         s5, t3, 142
                  sub          t2, t4, t1
                  sub          s3, s3, sp
                  sll          s11, a1, s8
                  srl          s1, a3, ra
                  slt          s6, a6, a0
                  bne          s11, a7, 90f
                  slt          a2, s7, tp
                  addi         a2, t4, 1602
                  slt          t2, a1, t3
                  slt          t6, a7, s5
                  xori         t1, sp, 834
87:               bltu         s7, a2, 102f
                  or           s11, s6, t1
                  xori         s2, s8, -72
                  slt          t5, a7, s5
                  blt          a5, t4, sub_3_j8 #branch to jump instr
                  xor          s3, s7, s10
                  sll          a4, sp, a1
                  auipc        s5, 718679
sub_3_j8:         jal          sp, sub_5 #jump sub_3 -> sub_5
                  lui          a4, 587511
                  bgeu         a6, s2, 99f
90:               sra          a5, a4, s3
                  sltiu        s2, a2, 912
                  sra          s8, a6, a5
                  and          t2, t2, t0
                  ori          a5, t4, 43
                  xori         s3, t5, -553
                  and          zero, s11, t5
                  nop
                  bgeu         s9, s8, 109f
99:               sra          s11, t2, s11
                  sltiu        s8, zero, -687
                  srai         t4, s6, 12
102:              xori         s4, t4, -647
                  bgeu         ra, sp, 120f
                  lui          gp, 998153
                  slt          a0, a0, a5
                  nop
                  srl          t1, t3, s0
                  sltu         gp, t5, s4
109:              auipc        s4, 260294
                  bge          a6, s0, 130f
                  andi         s10, a5, 1058
                  and          s1, gp, s8
                  srai         s6, t1, 27
                  lui          t1, 268868
                  beq          s8, a0, 116f
116:              add          a6, s8, a4
                  srl          t2, s4, t5
                  sll          t2, t6, a2
                  slt          t6, s2, s8
120:              sll          s2, s10, a5
                  add          t4, s1, a6
                  add          a2, t4, s8
                  and          a0, ra, s5
                  and          s7, s5, s6
                  lui          s8, 733132
                  and          s10, s3, gp
                  bgeu         zero, t3, 133f
                  srl          s11, a7, t0
                  bltu         t1, t2, 146f
130:              slt          a5, s6, t4
                  auipc        a4, 1034922
                  andi         s10, a5, 169
133:              bgeu         s11, t6, 153f
                  bltu         s9, t4, 143f
                  slti         t2, sp, -1522
                  srli         t5, s5, 21
                  andi         a4, a5, 308
                  xori         s0, s2, -897
                  sltu         t5, s2, tp
                  andi         s8, s4, 7
                  andi         t4, s2, -924
                  slli         a7, zero, 22
143:              bne          t5, s2, 145f
                  bgeu         sp, zero, 159f
145:              srli         t4, s0, 30
146:              slti         t6, a1, 1472
                  lui          s9, 563638
                  bgeu         s8, s5, 150f
                  srli         s2, t4, 23
150:              bgeu         s2, zero, 159f
                  sll          a4, s2, s6
                  bne          a7, t6, 169f
153:              and          s7, t1, s3
                  slt          a2, a6, t4
                  slli         a4, a4, 11
                  sll          sp, sp, s5
                  sll          a6, t0, t4
                  sltu         s10, s11, t2
159:              bltu         a6, s11, 176f
                  sltu         t5, a3, ra
                  sltiu        zero, t5, -1214
                  sub          s6, sp, a7
                  lui          s1, 66489
                  srli         a7, zero, 26
                  sll          a7, s9, s0
                  srl          t1, t6, s3
                  srl          a4, s5, a5
                  auipc        a4, 363523
169:              beq          t3, a4, 185f
                  blt          a1, a3, 180f
                  sra          zero, zero, s0
                  sll          t5, s7, s10
                  sub          a4, a6, a5
                  srl          s4, t4, a6
                  xori         s6, s8, 1314
176:              slli         t6, s11, 27
                  xor          s3, s7, s0
                  addi         t5, a2, -418
                  bge          s10, a5, 189f
180:              bgeu         a0, gp, 191f
                  sltu         s2, t3, t0
                  sll          s3, s11, s4
                  bgeu         s10, tp, 184f
184:              slli         t2, a2, 26
185:              sll          s9, tp, gp
                  sltiu        ra, s11, -1629
                  addi         tp, s6, 813
                  slti         a6, a1, -1119
189:              auipc        t2, 384323
                  auipc        zero, 688192
191:              or           s6, s4, s4
                  sltiu        s1, a2, 1303
                  slt          a3, s2, s0
                  srl          sp, t6, s10
                  slti         s5, t0, 610
                  sub          t5, t0, sp
                  bgeu         a5, a3, 207f
                  sll          s8, s2, s10
                  add          s0, t5, t0
                  slti         a4, sp, 1713
                  nop
                  nop
                  add          s5, a3, a3
                  slti         tp, gp, 1066
                  addi         gp, tp, 365
                  lui          gp, 1026809
207:              xori         s2, s0, -101
                  sub          tp, s9, s0
                  add          s10, s1, a0
                  or           a6, t0, t0
                  sra          s7, a4, s0
                  auipc        t4, 847742
                  sll          s5, t5, s0
                  andi         s7, a5, 416
                  sra          a7, s4, ra
                  beq          ra, s0, 231f
                  slli         t1, zero, 2
                  add          zero, a0, s8
                  srai         tp, s9, 1
                  sra          gp, s0, t2
                  addi         sp, zero, 1721
                  slti         a0, t0, -1757
                  beq          a4, t2, 225f
                  sll          sp, a2, tp
225:              xori         a2, a0, -857
                  add          zero, zero, zero
                  slt          t4, s2, zero
                  slli         s2, a3, 2
                  sll          t4, zero, s11
                  lui          ra, 154647
231:              srai         a5, zero, 18
                  sltu         s9, a4, gp
                  bne          a1, a6, 235f
                  beq          t4, gp, 240f
235:              lui          gp, 875724
                  or           s11, t1, t1
                  srai         sp, t0, 8
                  sltiu        s9, t5, 1291
                  slt          a0, s9, t0
240:              auipc        a6, 283450
                  xor          ra, a1, a6
                  xori         t6, zero, -1193
                  add          a3, a1, s10
                  xori         t2, a4, -1049
                  srli         a0, s7, 0
                  beq          ra, s11, 247f
247:              blt          s7, s1, 256f
                  lui          s11, 792802
                  addi         t2, s1, 814
                  xori         ra, a2, -1456
                  addi         t5, a5, 1064
                  andi         a2, a4, -2018
                  blt          t6, t2, 267f
                  nop
                  and          t2, s6, t0
256:              or           t4, s0, s6
                  blt          t6, s7, 269f
                  slt          gp, gp, s1
                  srli         t2, s7, 28
                  slti         t5, a1, -1120
                  blt          s1, zero, 270f
                  sltu         t1, t4, gp
                  ori          t5, sp, 1919
                  nop
                  blt          tp, t5, 285f
                  beq          a2, t6, 267f
267:              blt          a2, t2, 268f
268:              bne          s7, ra, 287f
269:              bgeu         sp, t2, 284f
270:              add          s8, t2, s6
                  lui          s9, 693805
                  addi         a5, s2, -1358
                  blt          s8, s10, 293f
                  bgeu         t3, t6, 284f
                  sra          s11, a6, ra
                  andi         s0, s4, -1214
                  andi         a3, t3, 313
                  lui          tp, 69876
                  lui          tp, 167084
                  bge          t0, t5, 288f
                  lui          tp, 706299
                  or           s1, a2, s4
                  sub          s8, t5, s1
284:              ori          s3, t6, -1112
285:              slli         s3, sp, 18
                  sll          ra, a6, t4
287:              auipc        s3, 783901
288:              add          a5, ra, t0
                  slti         a4, s7, -1135
                  srl          s7, s11, t1
                  bge          t3, t3, 308f
                  sltu         s7, a2, s10
293:              xori         t4, a0, 75
                  sltu         t4, a6, t2
                  bge          a4, tp, 299f
                  blt          a3, ra, 298f
                  xor          s6, a1, s0
298:              srai         s5, s4, 25
299:              bne          a1, a5, 319f
                  xor          a3, sp, t2
                  nop
                  slt          s10, a6, a0
                  blt          t0, t0, 319f
                  add          s1, t0, s2
                  lui          s9, 152934
                  sub          ra, a1, s3
                  slli         s4, s4, 11
308:              and          s11, t5, s1
                  bgeu         s9, zero, 318f
                  slti         sp, tp, -1051
                  slt          t2, s8, s3
                  bne          s0, tp, 314f
                  xor          a6, t1, s10
314:              beq          a3, s5, 331f
                  srli         s7, a1, 13
                  sltiu        s2, t4, -1185
                  nop
318:              beq          a2, s11, 324f
319:              and          a4, t1, t2
                  slti         s2, s6, -216
                  slli         s3, s1, 27
                  sra          t1, t3, s8
                  srl          s9, s10, s6
324:              beq          a2, s11, 336f
                  sub          t5, t4, a0
                  add          s6, s5, a3
                  srli         s6, t3, 22
                  slli         s6, t1, 8
                  andi         tp, a7, -1210
                  bgeu         a3, t0, 338f
331:              bgeu         s11, a6, 351f
                  addi         zero, a1, -810
                  or           t2, s10, gp
                  srl          t5, tp, a5
                  sra          t2, zero, a5
336:              xori         gp, s11, -2031
                  slti         a0, a0, -393
338:              auipc        t2, 512480
                  bgeu         s5, zero, 359f
                  bltu         gp, a3, 341f
341:              lui          ra, 245049
                  or           s9, zero, a7
                  and          t1, s9, s6
                  auipc        s8, 641125
                  bne          s6, s8, 354f
                  bltu         s5, s0, 347f
347:              sltu         tp, s10, a6
                  bne          s3, a6, 358f
                  bge          t5, ra, 368f
                  or           a3, t4, gp
351:              ori          zero, a6, -1357
                  slli         a7, a6, 1
                  ori          a5, tp, 334
354:              slli         a3, ra, 0
                  and          s11, t4, a2
                  bltu         s6, a2, 376f
                  bgeu         t5, a5, 358f
358:              blt          a5, s0, 368f
359:              ori          s1, s6, 619
                  sltu         t2, s11, s2
                  blt          s7, a6, 371f
                  sltu         s9, t0, t3
                  or           t5, a2, t0
                  bgeu         s7, s1, 365f
365:              bge          a5, s8, 382f
                  sra          s4, t2, gp
                  lui          a2, 653043
368:              sll          t2, zero, s8
                  add          t2, t6, s6
                  addi         s0, a5, 762
371:              bltu         a3, tp, 373f
                  slt          s9, a2, t0
373:              sltiu        zero, s1, -1657
                  addi         a7, s1, -1523
                  add          s5, s9, s1
376:              andi         s7, t1, -1857
                  auipc        a3, 785894
                  bne          s3, a2, 380f
                  beq          t3, s1, 394f
380:              srl          s9, t4, s7
                  sub          a0, gp, t6
382:              ori          t6, t1, 1773
                  sra          a5, ra, t1
                  ori          s3, s1, 801
                  slt          gp, t3, s6
                  or           a7, t1, a7
                  beq          a6, s8, 394f
sub_3_0:          jal          sp, 26f
0:                jal          ra, 20f
1:                jal          t1, 17f
2:                jal          s0, 4f
3:                jal          t1, 29f
4:                jal          ra, 21f
5:                jal          ra, 11f
6:                jal          t1, 0b
7:                jal          t1, 18f
8:                jal          sp, 24f
9:                jal          s3, 12f
10:               jal          s3, 28f
11:               jal          ra, 8b
12:               jal          ra, 30f
13:               jal          ra, 15f
14:               jal          ra, 7b
15:               jal          ra, 25f
16:               jal          s9, 5b
17:               jal          ra, 9b
18:               jal          sp, 22f
19:               jal          t1, 23f
20:               jal          tp, 1b
21:               jal          s2, 6b
22:               jal          t1, 27f
23:               jal          ra, 10b
24:               jal          ra, 19b
25:               jal          t1, 14b
26:               jal          ra, 16b
27:               jal          gp, 2b
28:               jal          ra, 3b
29:               jal          ra, 13b
30:               auipc        t4, 849642
                  slt          s8, a7, a2
                  and          a2, a7, s3
                  or           a0, s11, s10
                  srl          gp, s0, s9
                  auipc        s11, 1031
                  lui          ra, 80440
394:              slli         a5, s5, 10
                  xori         t2, s7, -1247
                  lw           sp, 4(a1)
                  sltu         t6, t4, s8
                  addi         a1, a1, 44
                  xor          tp, t2, ra
                  sltiu        s8, s7, -857
                  andi         s11, s4, -146
                  or           t5, a5, t2
                  srl          t2, s5, a6
623:              addi x9, x2, 0
623:              jalr x9, x9, 0
sub_2:            xor          t2, t5, s3
                  sltu         a3, s5, s6
                  blt          a5, a4, sub_2_stack_p
                  slt          s0, t5, tp
sub_2_stack_p:    addi         a1, a1, -44
                  add          ra, s8, s5
                  andi         tp, s4, -840
                  srli         zero, s7, 26
                  sw           sp, 4(a1)
                  srl          t2, t4, s1
sub_2_6:          jal          sp, 26f
0:                jal          ra, 29f
1:                jal          ra, 19f
2:                jal          ra, 6f
3:                jal          ra, 13f
4:                jal          ra, 0b
5:                jal          ra, 4b
6:                jal          ra, 17f
7:                jal          a7, 1b
8:                jal          s11, 28f
9:                jal          ra, 23f
10:               jal          a5, 7b
11:               jal          s4, 27f
12:               jal          ra, 14f
13:               jal          t1, 12b
14:               jal          ra, 16f
15:               jal          ra, 11b
16:               jal          s6, 9b
17:               jal          s0, 5b
18:               jal          t1, 24f
19:               jal          t1, 18b
20:               jal          t1, 25f
21:               jal          ra, 8b
22:               jal          ra, 2b
23:               jal          t1, 20b
24:               jal          t1, 21b
25:               jal          ra, 22b
26:               jal          ra, 15b
27:               jal          t1, 10b
28:               jal          ra, 3b
29:               slli         s9, a1, 4
sub_2_5:          jal          sp, 11f
0:                jal          ra, 17f
1:                jal          ra, 5f
2:                jal          ra, 21f
3:                jal          tp, 16f
4:                jal          s3, 6f
5:                jal          ra, 14f
6:                jal          s7, 2b
7:                jal          s1, 20f
8:                jal          t1, 9f
9:                jal          t1, 3b
10:               jal          tp, 25f
11:               jal          ra, 13f
12:               jal          tp, 4b
13:               jal          t1, 12b
14:               jal          t1, 22f
15:               jal          tp, 26f
16:               jal          tp, 29f
17:               jal          tp, 1b
18:               jal          ra, 0b
19:               jal          ra, 28f
20:               jal          t1, 27f
21:               jal          ra, 18b
22:               jal          s0, 7b
23:               jal          ra, 19b
24:               jal          t1, 23b
25:               jal          t1, 8b
26:               jal          t1, 24b
27:               jal          ra, 15b
28:               jal          tp, 10b
29:               sll          sp, t1, gp
sub_2_3:          jal          sp, 10f
0:                jal          ra, 9f
1:                jal          t1, 5f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          gp, 3b
6:                jal          s1, 11f
7:                jal          s8, 6b
8:                jal          t1, 12f
9:                jal          ra, 1b
10:               jal          ra, 0b
11:               jal          ra, 2b
12:               slti         zero, s0, -1471
sub_2_2:          jal          sp, 10f
0:                jal          s0, 11f
1:                jal          ra, 9f
2:                jal          a3, 8f
3:                jal          t1, 6f
4:                jal          ra, 2b
5:                jal          t2, 7f
6:                jal          ra, 4b
7:                jal          ra, 13f
8:                jal          t1, 5b
9:                jal          ra, 0b
10:               jal          s1, 1b
11:               jal          ra, 12f
12:               jal          a3, 3b
13:               sll          s10, s9, t1
sub_2_1:          jal          sp, 10f
0:                jal          ra, 9f
1:                jal          t1, 18f
2:                jal          ra, 1b
3:                jal          ra, 6f
4:                jal          ra, 13f
5:                jal          ra, 7f
6:                jal          s6, 23f
7:                jal          ra, 17f
8:                jal          ra, 11f
9:                jal          t2, 14f
10:               jal          ra, 8b
11:               jal          ra, 4b
12:               jal          sp, 21f
13:               jal          ra, 3b
14:               jal          ra, 22f
15:               jal          ra, 5b
16:               jal          t1, 15b
17:               jal          a6, 20f
18:               jal          t1, 16b
19:               jal          t1, 2b
20:               jal          ra, 0b
21:               jal          ra, 24f
22:               jal          ra, 12b
23:               jal          s10, 19b
24:               ori          t1, t1, -389
sub_2_4:          jal          sp, 9f
0:                jal          ra, 18f
1:                jal          t5, 21f
2:                jal          ra, 8f
3:                jal          ra, 10f
4:                jal          ra, 19f
5:                jal          ra, 0b
6:                jal          s10, 4b
7:                jal          s4, 17f
8:                jal          ra, 16f
9:                jal          tp, 3b
10:               jal          t1, 1b
11:               jal          ra, 22f
12:               jal          ra, 5b
13:               jal          ra, 7b
14:               jal          ra, 11b
15:               jal          t2, 13b
16:               jal          ra, 15b
17:               jal          gp, 12b
18:               jal          ra, 14b
19:               jal          ra, 23f
20:               jal          t1, 6b
21:               jal          t1, 2b
22:               jal          t6, 20b
23:               nop
                  xor          a0, s6, zero
                  sll          t5, s3, t3
                  ori          s9, s0, -668
                  lui          a2, 336819
                  sll          zero, gp, a7
                  bltu         t3, s9, 12f
                  add          gp, a7, s0
                  slli         gp, s3, 1
                  and          s1, a5, t3
                  beq          s4, s6, 12f
                  sub          a3, s5, a3
                  andi         t1, t1, 761
12:               bgeu         s5, a4, 18f
                  srli         a5, a2, 31
                  sltu         s11, gp, s10
                  sra          s10, s3, tp
                  or           a7, t0, s1
                  sll          a5, s8, s2
18:               bgeu         t6, a2, 38f
                  sltu         ra, s4, t5
                  sub          a6, ra, gp
                  and          s7, a5, s6
                  bgeu         t0, a2, 32f
                  addi         tp, t3, -1748
                  slti         a4, a1, -762
                  sub          a4, a7, s6
                  auipc        s8, 725269
                  sub          s10, s0, t5
                  slli         a7, s0, 29
                  slli         s6, t5, 26
                  bne          s9, t6, 34f
                  and          s3, t3, s10
32:               andi         a2, t2, -1940
                  nop
sub_2_0:          jal          sp, 17f
0:                jal          ra, 20f
1:                jal          ra, 4f
2:                jal          t5, 21f
3:                jal          gp, 23f
4:                jal          ra, 3b
5:                jal          ra, 13f
6:                jal          ra, 7f
7:                jal          ra, 16f
8:                jal          ra, 0b
9:                jal          ra, 8b
10:               jal          ra, 26f
11:               jal          ra, 15f
12:               jal          t1, 11b
13:               jal          ra, 19f
14:               jal          ra, 6b
15:               jal          t1, 5b
16:               jal          t1, 10b
17:               jal          a3, 22f
18:               jal          ra, 1b
19:               jal          ra, 9b
20:               jal          ra, 24f
21:               jal          t6, 14b
22:               jal          t1, 12b
23:               jal          ra, 25f
24:               jal          ra, 18b
25:               jal          ra, 2b
26:               addi         zero, s5, -1575
34:               auipc        t5, 349808
                  auipc        a7, 918505
                  slli         t2, a0, 27
                  andi         t6, t0, 1856
38:               srli         a2, s9, 30
                  sltiu        gp, zero, 393
                  slli         a3, tp, 16
                  srai         tp, t1, 2
                  andi         t5, s5, 968
                  srli         a6, a4, 20
                  sltu         a2, sp, sp
                  lui          a4, 700135
                  bltu         sp, s3, 48f
                  srl          t5, t3, a3
48:               andi         t6, a5, 1306
                  slt          s8, s3, s7
                  bne          gp, ra, 63f
                  blt          sp, a1, 60f
                  ori          a5, s4, 1290
                  nop
                  bge          ra, t2, 56f
                  auipc        tp, 920323
56:               beq          sp, sp, 72f
                  xori         zero, a0, 1226
                  ori          s10, a5, 423
                  slti         tp, s10, 938
60:               slti         t1, t4, -862
                  slli         s11, a2, 25
                  sll          t2, a4, t4
63:               or           tp, t1, s5
                  and          s3, s1, t4
                  sltiu        a6, a5, -1039
                  slti         a7, s11, 115
                  sltiu        ra, t0, 819
                  sra          s7, s5, s9
                  srl          zero, gp, a3
                  auipc        s4, 686204
                  srli         s6, s9, 5
72:               and          t6, s7, a2
                  ori          s3, t3, -293
                  sltu         s11, a1, a3
                  bltu         t5, s10, 79f
                  sltu         ra, s7, s4
                  andi         t2, a5, 143
                  nop
79:               srai         gp, s9, 19
                  slti         s7, sp, -1706
                  xori         t1, sp, 1191
                  bgeu         s5, s9, 89f
                  auipc        t4, 768020
                  or           s5, s0, s10
                  bne          t6, a5, 90f
                  and          s6, s1, s3
                  xori         s10, a2, -1214
                  sra          t5, s9, a3
89:               bgeu         gp, s3, 95f
90:               nop
                  auipc        s10, 127055
                  sltu         a0, s9, s7
                  auipc        s2, 44287
                  nop
95:               bne          a6, tp, 110f
                  or           t4, t5, gp
                  blt          a3, a6, 114f
                  slli         a7, a6, 20
                  addi         a0, a6, -413
                  sltu         t6, t4, a6
                  sll          s6, a0, tp
                  sll          t4, s1, s9
                  addi         a6, sp, 814
                  xori         a2, t6, 1683
                  sra          t1, a1, a1
                  bne          s11, a6, 116f
                  slti         t5, s7, -1511
                  srli         s10, a5, 24
                  lui          a7, 612930
110:              sltu         s0, s1, a2
                  blt          t0, zero, 129f
                  lui          s4, 815480
                  sll          a7, sp, s0
114:              bltu         s2, a1, 122f
                  sltu         tp, t3, t5
116:              bltu         s0, s6, 131f
                  bgeu         a4, t0, 133f
                  lui          s3, 596606
                  auipc        a3, 255290
                  bgeu         a2, a5, 135f
                  slli         s8, t1, 25
122:              bltu         t2, s5, 133f
                  bge          t3, s2, 133f
                  srl          s0, ra, t3
                  srl          sp, s11, s4
                  auipc        gp, 155545
                  auipc        a6, 415662
                  lui          t6, 724897
129:              and          tp, s2, a5
                  srl          a6, s1, s2
131:              srli         gp, t2, 19
                  blt          zero, s8, 145f
133:              sltiu        a0, s6, -1484
                  srai         s0, t5, 28
135:              srl          s6, a7, a4
                  addi         t5, tp, 1025
                  slli         s1, tp, 31
                  beq          s4, tp, 146f
                  bltu         a1, t5, 145f
                  sra          t2, s0, s6
                  bne          t2, gp, 155f
                  slti         t6, s5, -501
                  or           s6, t2, s9
                  blt          s8, s9, 164f
145:              slt          s3, t6, s2
146:              sltiu        a7, a7, 443
                  srl          s2, s4, a5
                  auipc        a3, 391266
                  srai         s6, zero, 10
                  srli         s11, s1, 20
                  and          s3, s10, a6
                  sltu         gp, ra, t2
                  srli         sp, t4, 1
                  sra          ra, a7, a5
                  la           s9, sub_3
                  sll          s6, t3, tp
                  ori          t1, ra, -595
                  xor          t2, s4, a3
                  srli         gp, tp, 11
                  addi         s9, s9, 798
                  auipc        s4, 966525
                  bltu         s6, a3, sub_2_j5 #branch to jump instr
                  lui          s1, 157465
                  addi         s2, s10, 85
                  slli         s10, a3, 13
sub_2_j5:         jalr         sp, s9, -798 #jump sub_2 -> sub_3
                  sra          s4, a7, t0
155:              srl          tp, a4, s4
                  ori          s6, t5, -109
                  sub          s6, s9, s4
                  sub          a4, ra, s6
                  and          ra, tp, a5
                  or           s11, s2, s2
                  sltu         t1, a5, t5
                  srli         t5, tp, 3
                  slli         s8, s10, 16
164:              xor          ra, sp, a7
                  ori          s10, t3, 439
                  bne          a4, t1, 179f
                  addi         s1, a5, 1949
                  andi         s2, a3, -1078
                  srai         zero, a6, 11
                  nop
                  andi         a2, s3, 883
                  beq          a2, s5, 189f
                  xori         s0, a2, 426
                  beq          s6, t0, 188f
                  bne          gp, a1, 183f
                  srli         a2, s10, 15
                  bge          sp, s5, 185f
                  xor          sp, t6, a1
179:              or           s6, a7, s5
                  bgeu         tp, s0, 190f
                  srai         t1, a0, 5
                  bne          s2, s9, 186f
183:              sltiu        s3, zero, 684
                  bne          s5, s8, 194f
185:              sltiu        s8, t3, -666
186:              andi         s2, s0, 1969
                  blt          s11, s8, 189f
188:              xor          s1, tp, s9
189:              srai         s1, zero, 24
190:              sra          s0, a2, t0
                  slt          a0, s10, s7
                  bgeu         t0, t2, 199f
                  xor          a3, t3, gp
194:              sltu         sp, s11, t3
                  addi         a5, a7, -561
                  xori         s6, a0, -27
                  and          t4, a0, t1
                  lui          a0, 637812
199:              nop
                  sub          a4, s1, s4
                  slti         s5, a7, 519
                  nop
                  slli         a4, a6, 16
                  lui          s1, 454764
                  srai         s10, s5, 27
                  beq          tp, s4, 213f
                  srli         a2, t4, 19
                  srai         t1, a0, 19
                  bgeu         s8, t1, 222f
                  nop
                  slt          s0, a1, s9
                  srai         t1, tp, 9
213:              auipc        a0, 513589
                  xor          s7, zero, a1
                  sra          t6, s2, s11
                  srl          a0, s11, s5
                  sltu         s8, a0, t5
                  and          t2, s7, t4
                  add          s3, s1, t5
                  xori         t1, t4, -487
                  blt          t6, a1, 237f
222:              beq          s1, t2, 233f
                  sltu         ra, a6, t6
                  srai         s3, s7, 24
                  sub          sp, gp, s6
                  sub          a7, gp, t3
                  and          s1, s1, a7
                  sltu         s10, s3, s5
                  addi         t5, t2, 214
                  xor          s8, a0, t1
                  lui          s2, 177958
                  ori          t1, s6, -1402
233:              bne          t0, a1, 248f
                  and          a4, s11, s5
                  sltu         a0, a2, tp
                  addi         s6, a7, -1217
237:              slt          gp, s0, t5
                  ori          s3, s5, 1356
                  slt          t5, a1, s7
                  nop
                  addi         a2, s4, 635
                  srli         t2, s1, 14
                  bge          s0, s9, 245f
                  slt          a2, a4, s11
245:              bgeu         ra, s0, 254f
                  srai         s5, t1, 5
                  or           s7, s4, t2
248:              nop
                  blt          t2, s8, 265f
                  sltu         s4, a3, s9
                  blt          s5, s7, 256f
                  blt          tp, t1, 267f
                  beq          a1, s0, 271f
254:              lui          s2, 609437
                  blt          t4, zero, 275f
256:              ori          s4, s0, 1533
                  sra          s5, a5, sp
                  slt          s1, tp, s5
                  beq          a7, t4, 265f
                  bne          s11, t5, 264f
                  bne          s6, s5, 267f
                  and          tp, a7, s4
                  sub          a5, s4, s4
264:              bgeu         s10, t4, 284f
265:              bltu         s10, s1, 275f
                  and          t4, t0, a5
267:              bge          s2, a6, 282f
                  lui          s6, 19047
                  srl          a4, a5, s6
                  srli         s10, s4, 4
271:              ori          s5, s7, 859
                  sub          s10, a7, t3
                  sltiu        s4, s6, -1135
                  add          s10, t3, s11
275:              sll          s0, s6, s1
                  srai         t2, gp, 31
                  srl          s1, a1, sp
                  xor          ra, zero, s11
                  bne          gp, t4, 282f
                  bge          t1, t1, 286f
                  andi         a2, s10, -1942
282:              xor          t6, s11, t0
                  sltu         t6, t5, gp
284:              andi         ra, s11, -8
                  sra          s5, a5, zero
286:              nop
                  bltu         a1, s2, 305f
                  srai         s9, s9, 16
                  auipc        a0, 917462
                  sltiu        s11, s3, -1810
                  bltu         s2, a0, 304f
                  nop
                  slti         sp, s0, 859
                  srl          s6, s0, t0
                  add          t6, s3, a3
                  bne          zero, s3, 306f
                  sll          a0, ra, s7
                  bne          a7, t2, 312f
                  xori         s9, t1, -882
                  srl          s1, a0, a7
                  slti         s11, s1, -234
                  sub          s6, s3, s8
                  blt          s11, t3, 320f
304:              beq          s10, s10, 319f
305:              beq          gp, s0, 312f
306:              srli         a5, s9, 18
                  add          s1, a7, s5
                  bltu         t0, s4, 328f
                  sltu         sp, a5, s8
                  bgeu         a6, a1, 318f
                  ori          t6, t6, -160
312:              srl          tp, s6, s8
                  srai         a2, t2, 10
                  xori         a6, zero, 931
                  auipc        gp, 828300
                  or           zero, s0, s11
                  bne          t3, s0, 322f
318:              slti         s11, tp, -2035
319:              xor          s0, gp, a4
320:              xori         a4, t0, 1756
                  slli         s3, t4, 0
322:              and          t4, s5, t2
                  andi         t5, s1, 1565
sub_2_7:          jal          sp, 10f
0:                jal          ra, 13f
1:                jal          ra, 7f
2:                jal          gp, 9f
3:                jal          ra, 4f
4:                jal          t1, 14f
5:                jal          ra, 0b
6:                jal          s7, 8f
7:                jal          s0, 2b
8:                jal          s4, 5b
9:                jal          t1, 15f
10:               jal          ra, 11f
11:               jal          ra, 1b
12:               jal          t5, 6b
13:               jal          t6, 3b
14:               jal          s11, 16f
15:               jal          ra, 12b
16:               slti         a5, s3, -924
                  bltu         s5, gp, 326f
                  sltu         gp, a2, s6
326:              andi         a6, ra, 372
                  xori         ra, s5, 1625
328:              slt          s6, t5, s8
                  slti         s4, zero, 1276
                  ori          a4, a7, -741
                  bgeu         gp, a7, 351f
                  addi         t1, s11, -658
                  slti         s6, s6, 257
                  auipc        s10, 330003
                  bne          s9, s4, 339f
                  addi         a5, a4, 1251
                  bltu         ra, sp, 344f
                  bge          t6, a2, 348f
339:              beq          s2, s0, 343f
                  srai         t2, s4, 15
                  and          s7, s7, s3
                  lui          sp, 599872
343:              andi         t1, a3, -1324
344:              slti         t1, s6, 532
                  bltu         a7, a1, 348f
                  srl          tp, a5, zero
                  bltu         t2, a6, 358f
348:              lui          s7, 790604
                  srai         t2, t6, 22
                  bge          s11, a7, 356f
351:              sltu         a4, ra, s9
                  srli         t1, s6, 17
                  sltiu        t1, s0, 1718
                  or           s8, a7, t4
                  slti         s11, zero, 678
356:              sltu         a7, a5, s7
                  sll          s5, s6, a2
358:              add          s3, a6, gp
                  add          s11, zero, s3
                  andi         a5, s3, 391
                  sll          ra, gp, a3
                  srl          a2, a6, a2
                  and          a3, t1, s9
                  andi         tp, a0, -483
                  slli         a0, a4, 29
                  sub          sp, sp, a0
                  sra          ra, s8, a7
                  sub          zero, t0, a2
                  nop
                  sltu         a0, a5, t3
                  auipc        a6, 69476
                  beq          gp, a6, 388f
                  or           s1, a4, sp
                  sltiu        s5, a2, 2032
                  add          t5, a0, a5
                  slt          s4, t0, t1
                  sra          s5, t6, sp
                  xori         t1, s7, -32
                  bne          s9, a2, 381f
                  nop
381:              sub          s4, t4, s0
                  sra          s1, a6, s11
                  slti         a5, tp, 966
                  nop
                  sll          sp, a5, a7
                  add          a3, s9, s5
                  srl          t1, s10, t5
388:              and          gp, s2, s0
                  nop
                  sll          s7, a2, zero
                  ori          t1, s11, 308
                  add          t2, ra, a3
                  xori         s9, s4, 1264
                  bltu         a3, a2, 410f
                  beq          sp, tp, 403f
                  bgeu         a7, s3, 406f
                  xori         gp, a2, -1666
                  sltiu        s11, t6, 697
                  addi         a0, s11, -71
                  sub          sp, a5, s5
                  srl          tp, a6, s10
                  bne          t2, t0, 417f
403:              bltu         s7, t0, 409f
                  nop
                  sra          t1, s4, a3
406:              nop
                  srli         a0, s5, 1
                  bge          ra, s5, 417f
409:              bge          a5, s1, 422f
410:              lui          t4, 518715
                  beq          gp, t4, 417f
                  and          t4, t6, t3
                  bge          t6, ra, 428f
                  auipc        a7, 983626
                  srl          a7, t6, s10
                  srai         t6, s0, 11
417:              srai         a5, s9, 10
                  bge          s7, t4, 428f
                  blt          tp, s10, 421f
                  bltu         a5, s10, 435f
421:              slt          sp, s8, a2
422:              srai         s11, gp, 25
                  srl          a5, s7, s3
                  sll          t5, sp, a5
                  srai         t1, a0, 11
                  sub          zero, a1, s5
                  bge          s10, s11, 442f
428:              xori         t6, a1, 432
                  srai         s0, a5, 18
                  bne          t5, s5, 440f
                  sltiu        ra, t3, 1408
                  bge          t1, s4, 445f
                  xor          t1, s4, s10
                  xori         a4, a2, -1818
435:              nop
                  sltiu        t2, s5, 1758
                  srli         a3, s11, 11
                  nop
                  xori         gp, t2, -341
440:              add          tp, s11, a6
                  bge          zero, t6, 445f
442:              srai         s8, a4, 7
                  slli         s7, s11, 13
                  sll          s10, s10, t3
445:              srli         s11, s11, 18
                  lw           sp, 4(a1)
                  slt          s9, t1, tp
                  sltiu        s9, a2, 517
                  nop
                  and          a2, gp, s11
                  and          s7, s10, s8
                  addi         a1, a1, 44
                  addi         s2, a3, 1686
                  slli         s3, s11, 28
666:              addi x2, x2, 1
666:              jalr x2, x2, 0
sub_5:            slti         t2, s9, -244
                  srai         s1, sp, 3
                  sub          a7, a6, a0
                  bge          a6, s4, sub_5_stack_p
sub_5_stack_p:    addi         a1, a1, -36
                  or           t2, s4, s0
                  sw           sp, 4(a1)
                  srai         tp, s5, 29
                  ori          t4, s2, -1832
sub_5_0:          jal          sp, 8f
0:                jal          sp, 12f
1:                jal          ra, 3f
2:                jal          ra, 11f
3:                jal          ra, 4f
4:                jal          t1, 6f
5:                jal          s8, 10f
6:                jal          ra, 9f
7:                jal          ra, 0b
8:                jal          s5, 14f
9:                jal          a7, 15f
10:               jal          t1, 13f
11:               jal          t6, 7b
12:               jal          a2, 5b
13:               jal          s7, 1b
14:               jal          a4, 2b
15:               sll          s4, a1, t6
                  auipc        t4, 812171
                  xor          s1, a3, gp
                  blt          s8, t3, 17f
                  srli         s10, a6, 29
                  bne          t2, t5, 6f
                  bne          s3, a0, 19f
6:                addi         t2, t4, 1570
                  sltu         a6, s2, t2
                  add          a0, t1, s10
                  srli         t2, s7, 29
                  addi         s7, t1, 1931
                  slt          ra, s6, s5
                  srl          t2, a2, s11
                  sub          t4, t3, t0
                  bltu         s5, t4, 34f
                  ori          a5, s1, 1983
                  sltu         s7, a7, ra
17:               srai         s8, s7, 10
                  srli         s11, a3, 22
19:               bltu         s10, s11, 36f
                  srli         a2, a1, 10
                  sub          s10, a6, s10
                  sll          s5, t5, s1
                  srl          s10, t5, t6
                  srli         a7, s7, 31
                  srai         a5, t3, 23
                  sll          s7, t1, a6
                  and          t5, s1, a5
                  xori         s3, a6, -1217
                  add          a5, sp, s6
                  beq          s5, a5, 37f
                  and          s6, a2, a7
                  sll          t5, s0, t6
                  addi         s5, a4, -1960
34:               bne          s0, a4, 54f
                  bltu         s10, t1, 48f
36:               sltu         s9, sp, gp
37:               xori         s8, t1, 1444
                  lui          a0, 1012009
                  sub          t1, s3, s9
                  sra          a5, s6, s3
                  blt          s3, a1, 45f
                  nop
                  xori         sp, a7, -1003
                  slli         s8, zero, 29
45:               sll          s4, a7, t0
                  andi         a2, t2, 289
                  sra          a4, s7, sp
48:               sub          s11, t3, a2
                  blt          s7, t1, 64f
                  slt          a4, s9, a5
                  bltu         tp, a6, 61f
sub_5_1:          jal          sp, 17f
0:                jal          ra, 27f
1:                jal          sp, 2f
2:                jal          sp, 7f
3:                jal          gp, 10f
4:                jal          t4, 9f
5:                jal          ra, 11f
6:                jal          t2, 26f
7:                jal          ra, 20f
8:                jal          s3, 13f
9:                jal          ra, 25f
10:               jal          sp, 14f
11:               jal          tp, 24f
12:               jal          ra, 0b
13:               jal          ra, 5b
14:               jal          ra, 18f
15:               jal          ra, 1b
16:               jal          ra, 3b
17:               jal          ra, 19f
18:               jal          ra, 15b
19:               jal          s6, 6b
20:               jal          ra, 12b
21:               jal          ra, 16b
22:               jal          ra, 8b
23:               jal          ra, 4b
24:               jal          t1, 23b
25:               jal          ra, 21b
26:               jal          t1, 22b
27:               sll          s1, t6, t0
                  xor          s5, a0, a5
                  srl          a5, s11, t6
54:               bne          t5, s6, 68f
                  slti         tp, s6, 957
                  bgeu         s11, s10, 69f
                  sll          s7, a5, s1
                  nop
                  srli         s1, tp, 28
                  xori         a7, s1, -1106
61:               nop
                  slli         a5, s0, 25
                  sll          a4, tp, t4
64:               andi         zero, t0, -1721
                  bgeu         a0, s8, 81f
                  blt          t5, a7, 78f
                  andi         s9, a2, 230
68:               addi         gp, t2, 386
69:               sra          s5, t2, s8
                  srl          sp, a5, a6
                  slli         s9, t4, 4
                  add          s9, tp, s8
                  xor          s4, s11, t5
                  bge          gp, s7, 76f
                  sltu         a6, s7, t6
76:               lui          s4, 654789
                  beq          a3, s9, 81f
78:               srai         ra, s5, 4
                  srai         s1, t2, 18
                  xor          a3, s3, s10
81:               slt          s8, s4, s8
                  srl          s3, s7, s11
                  nop
                  srl          a6, a7, t1
                  or           s4, s6, s6
                  srli         a4, s1, 20
                  sltiu        a0, t6, -662
                  sltu         a5, t3, sp
                  xori         s8, t5, -279
                  bne          a7, s0, 107f
                  srai         s11, t2, 0
                  slli         a2, s5, 19
                  sub          t5, s7, sp
                  bge          zero, a5, 111f
                  xori         s11, s7, -39
                  add          t5, zero, s10
                  and          gp, a4, a0
                  auipc        s5, 970569
                  add          s4, s4, s7
                  slti         s9, zero, 833
                  nop
                  bltu         s1, s6, 108f
                  sltu         s5, t4, tp
                  sub          s2, a3, a3
                  nop
                  srl          s8, a7, t3
107:              srli         a6, ra, 25
108:              lui          a5, 521775
                  bge          t6, tp, 123f
                  sltiu        ra, a5, -1318
111:              add          a2, t2, t4
                  slti         a5, s7, -2016
                  srl          s11, a0, s9
                  sltiu        a2, t5, 619
                  sub          a0, s1, a4
                  srli         s2, s3, 22
                  srli         zero, a2, 18
                  srli         sp, t5, 21
                  ori          a0, a2, -2040
                  slti         t6, a5, -396
                  or           s7, t3, sp
                  xori         s1, sp, -322
123:              andi         t5, s8, 675
                  srli         s7, a6, 12
                  xor          s9, s4, s7
                  srl          s8, s1, t0
                  sltu         gp, s0, a3
                  srl          a4, a5, t6
                  ori          t5, a3, 958
                  beq          ra, s0, 142f
                  xori         a2, tp, -34
                  bltu         s8, a7, 133f
133:              addi         t2, s0, -705
                  srli         a5, s4, 29
                  nop
                  blt          a1, gp, 142f
                  slti         zero, t4, -286
                  sra          ra, s9, s7
                  bge          a3, s5, 142f
                  srai         s8, s11, 31
                  srl          a0, t6, a3
142:              srl          t4, s6, a7
                  sltiu        tp, a4, -1473
                  sltu         s7, gp, t2
                  slti         s11, t6, 1459
                  lw           sp, 4(a1)
                  slt          s4, tp, a4
                  srli         ra, tp, 2
                  srli         t1, a5, 30
                  addi         a1, a1, 36
                  nop
207:              addi x16, x2, 1
207:              jalr x16, x16, 0
sub_1:            lui          a5, 579697
                  bltu         a3, s3, sub_1_stack_p
                  sltu         zero, a5, a3
                  srli         a0, s8, 6
                  addi         s0, a5, 1608
                  slti         a7, sp, -1314
                  nop
                  ori          zero, a7, -126
                  sub          t4, gp, t5
sub_1_stack_p:    addi         a1, a1, -24
                  addi         s2, s11, -1850
                  sw           sp, 4(a1)
                  srl          s9, a2, t4
                  xori         s9, s3, 1905
                  auipc        s0, 810871
                  add          s7, a7, s1
                  and          tp, s9, a0
                  bltu         t2, s3, sub_1_j3 #branch to jump instr
                  slli         s9, t3, 26
                  andi         t6, s10, -1622
sub_1_j3:         jal          sp, sub_2 #jump sub_1 -> sub_2
                  la           s8, sub_2
                  add          s6, s1, s3
                  slli         s11, t3, 30
                  addi         s8, s8, -356
                  srai         s3, t3, 4
                  nop
                  slli         a6, a0, 23
                  srl          gp, t2, s1
                  sra          s10, s5, s2
                  and          sp, a1, a7
                  bgeu         s0, s7, sub_1_j4 #branch to jump instr
                  sltu         s2, a5, s4
                  srl          s5, t4, a3
sub_1_j4:         jalr         sp, s8, 357 #jump sub_1 -> sub_2
sub_1_3:          jal          sp, 9f
0:                jal          ra, 4f
1:                jal          sp, 3f
2:                jal          s8, 0b
3:                jal          t1, 15f
4:                jal          s10, 19f
5:                jal          ra, 16f
6:                jal          t1, 14f
7:                jal          t6, 5b
8:                jal          s8, 13f
9:                jal          ra, 10f
10:               jal          t1, 12f
11:               jal          s9, 6b
12:               jal          t1, 17f
13:               jal          s11, 1b
14:               jal          t1, 8b
15:               jal          s3, 18f
16:               jal          a5, 11b
17:               jal          ra, 7b
18:               jal          sp, 2b
19:               sra          ra, a6, s7
sub_1_1:          jal          sp, 6f
0:                jal          s7, 16f
1:                jal          ra, 2f
2:                jal          ra, 19f
3:                jal          s7, 8f
4:                jal          ra, 9f
5:                jal          t1, 12f
6:                jal          ra, 5b
7:                jal          ra, 4b
8:                jal          t1, 21f
9:                jal          ra, 20f
10:               jal          sp, 17f
11:               jal          s2, 10b
12:               jal          ra, 13f
13:               jal          ra, 1b
14:               jal          ra, 7b
15:               jal          sp, 18f
16:               jal          tp, 15b
17:               jal          ra, 0b
18:               jal          a7, 22f
19:               jal          ra, 3b
20:               jal          t1, 11b
21:               jal          ra, 14b
22:               slti         s5, s4, -96
sub_1_2:          jal          sp, 1f
0:                jal          ra, 13f
1:                jal          t1, 5f
2:                jal          t1, 0b
3:                jal          ra, 12f
4:                jal          ra, 17f
5:                jal          t1, 8f
6:                jal          t6, 14f
7:                jal          ra, 4b
8:                jal          t1, 3b
9:                jal          t1, 16f
10:               jal          ra, 2b
11:               jal          s11, 6b
12:               jal          ra, 9b
13:               jal          ra, 11b
14:               jal          tp, 19f
15:               jal          t1, 18f
16:               jal          t1, 15b
17:               jal          ra, 10b
18:               jal          ra, 7b
19:               lui          a3, 780235
sub_1_0:          jal          sp, 16f
0:                jal          ra, 9f
1:                jal          sp, 5f
2:                jal          ra, 0b
3:                jal          tp, 2b
4:                jal          s7, 18f
5:                jal          ra, 3b
6:                jal          a2, 7f
7:                jal          t1, 13f
8:                jal          t1, 1b
9:                jal          ra, 4b
10:               jal          ra, 14f
11:               jal          ra, 17f
12:               jal          tp, 8b
13:               jal          ra, 15f
14:               jal          s0, 6b
15:               jal          s8, 12b
16:               jal          ra, 11b
17:               jal          gp, 10b
18:               addi         a6, a1, -1610
                  xor          a7, s5, zero
                  andi         s7, s5, 1351
                  bne          t3, s1, 12f
                  addi         a7, s4, -1649
                  bge          s10, sp, 19f
                  addi         s10, s8, -403
                  srli         s9, a1, 1
                  srai         a3, a4, 26
                  beq          s7, a4, 23f
                  bgeu         ra, t0, 17f
                  bgeu         a0, s2, 12f
                  and          s10, sp, s7
12:               slli         s5, a3, 13
                  xor          s2, a1, s2
                  or           t1, zero, zero
                  auipc        t2, 999327
                  srai         t6, t2, 4
17:               blt          s2, t3, 35f
                  nop
19:               lui          s4, 299679
                  bltu         a7, t0, 35f
                  bne          s11, tp, 22f
22:               srai         t6, s6, 16
23:               nop
                  andi         s2, s8, -72
                  sltiu        s11, t3, 1433
                  srli         s8, s6, 31
                  srli         s8, t4, 31
                  xori         a6, s7, 174
                  bne          a2, s1, 40f
                  nop
                  addi         a4, s9, -2017
                  lui          ra, 359668
                  slti         gp, a3, 255
                  bgeu         s0, t3, 37f
35:               ori          s4, s11, -209
                  bltu         a4, s3, 43f
37:               sub          a0, gp, t2
                  sltiu        s11, a7, 1959
                  sra          s8, s2, t1
40:               bge          ra, a4, 44f
                  ori          s4, s6, 66
                  nop
43:               beq          s10, a1, 52f
44:               nop
                  ori          s7, a1, 1056
                  sra          s11, t3, tp
                  ori          a5, s7, 1650
                  add          s5, t6, s3
                  auipc        s1, 428623
                  srli         a3, t4, 26
                  ori          t6, s10, 1153
52:               lui          zero, 646753
                  xor          tp, ra, s3
                  add          s9, a3, tp
                  bgeu         a2, zero, 66f
                  sra          ra, sp, s7
                  srai         s9, sp, 7
                  bltu         a2, a7, 76f
                  srli         s1, t1, 4
                  slti         a6, t6, -613
                  sltu         t1, s11, s5
                  xor          a5, s3, s4
                  andi         a4, s1, -1291
                  sra          t1, gp, sp
                  nop
66:               srli         zero, zero, 8
                  xori         a2, s6, 138
                  or           a2, s5, tp
                  sltiu        a3, t1, 1625
                  bge          s8, gp, 78f
                  sltiu        tp, s2, -1716
                  beq          s7, a5, 78f
                  and          s7, s5, s9
                  auipc        t5, 720292
                  ori          sp, s4, 244
76:               bltu         s5, s9, 96f
                  nop
78:               sra          s3, s0, t5
                  and          t1, ra, s11
                  bltu         s1, s2, 95f
                  bgeu         a1, t0, 99f
                  bgeu         tp, s1, 85f
                  bltu         zero, t5, 87f
                  ori          s6, t5, 276
85:               or           s4, a6, s8
                  srli         a5, s4, 24
87:               sra          tp, t0, a5
                  or           a3, gp, s4
                  addi         a5, tp, 683
                  slti         s8, tp, -1211
                  or           a0, s6, a2
                  add          s6, a3, t0
sub_1_4:          jal          sp, 3f
0:                jal          ra, 15f
1:                jal          t1, 11f
2:                jal          t5, 29f
3:                jal          tp, 17f
4:                jal          ra, 28f
5:                jal          ra, 16f
6:                jal          ra, 27f
7:                jal          a0, 19f
8:                jal          ra, 5b
9:                jal          ra, 1b
10:               jal          t1, 12f
11:               jal          t1, 2b
12:               jal          ra, 4b
13:               jal          t1, 25f
14:               jal          ra, 9b
15:               jal          t1, 10b
16:               jal          ra, 7b
17:               jal          ra, 21f
18:               jal          ra, 0b
19:               jal          t2, 6b
20:               jal          t1, 22f
21:               jal          ra, 20b
22:               jal          ra, 18b
23:               jal          t1, 14b
24:               jal          s4, 13b
25:               jal          ra, 30f
26:               jal          ra, 24b
27:               jal          ra, 23b
28:               jal          t1, 8b
29:               jal          t1, 26b
30:               sub          sp, tp, s3
                  srl          t2, s3, ra
                  srli         s3, t4, 2
95:               sltu         s3, a0, a6
96:               sub          s10, t1, s1
                  slti         s8, s11, -1533
                  andi         s10, s4, 1500
99:               auipc        s7, 792527
                  nop
                  srl          s1, s5, a4
                  ori          sp, t3, 523
                  addi         s7, s0, -1825
                  xori         s0, s6, -1990
                  bge          s1, s5, 122f
                  beq          s4, t1, 115f
                  blt          s4, s4, 108f
108:              and          t5, s3, zero
                  srai         s6, s4, 27
                  slli         s10, t4, 20
                  srli         s1, zero, 23
                  slti         a3, t3, -715
                  slli         s10, t0, 27
                  sll          s8, a7, a4
115:              blt          sp, t1, 123f
                  bge          t4, a1, 119f
                  nop
                  bge          t6, tp, 133f
119:              ori          zero, a7, -849
                  bltu         sp, t2, 133f
                  xor          tp, s3, a3
122:              srli         a5, s11, 27
123:              lui          t1, 943625
                  or           ra, s6, a2
                  andi         s10, a7, -210
                  srai         sp, a2, 12
                  sub          tp, s9, a6
                  sltiu        s7, t6, 190
                  sub          t5, zero, t3
                  or           a4, zero, t1
                  sub          gp, s7, a6
                  xor          s4, s8, t2
133:              sltu         s2, s4, a1
                  nop
                  sra          s5, t3, a5
                  slli         s6, a7, 24
                  xori         s1, a3, 1745
                  xori         s10, s6, 1506
                  beq          gp, a3, 159f
                  or           tp, tp, s0
                  sra          gp, a6, t2
                  blt          zero, t2, 159f
                  srl          t4, t1, s11
                  andi         a0, a3, 325
                  addi         t1, s4, -1077
                  beq          t1, s10, 166f
                  bne          a5, zero, 153f
                  bltu         t1, a2, 163f
                  blt          s1, s4, 152f
                  xor          s0, gp, a0
                  bgeu         s2, t3, 166f
152:              xori         t2, t1, 103
153:              sll          s8, ra, sp
                  xori         s0, a2, -787
                  addi         t4, s7, -1131
                  beq          t4, s5, 160f
                  auipc        a4, 346642
                  sll          tp, s6, s9
159:              srli         a5, t3, 18
160:              slti         t1, s6, 1946
                  slt          s10, a0, t4
                  xori         s9, s5, -1680
163:              add          s6, a0, a4
                  srai         a5, zero, 21
                  srl          s1, s11, ra
166:              slli         sp, t6, 9
                  lui          gp, 806662
                  addi         s2, t2, 1606
                  sltu         t2, t2, s3
                  sll          s10, s10, sp
                  add          s11, s11, zero
                  sub          zero, a0, s3
                  bge          a2, s1, 188f
                  srl          t6, a7, t5
                  or           s0, gp, zero
                  srai         a6, s0, 17
                  or           t5, s2, t4
                  sltu         s10, s4, s1
                  bgeu         sp, t1, 186f
                  slt          a0, s10, a2
                  addi         t4, s10, -140
                  slt          s0, a5, s6
                  blt          s4, s5, 194f
                  srl          s7, zero, s5
                  nop
186:              beq          s10, t1, 194f
                  blt          s6, zero, 196f
188:              sub          t6, a5, s7
                  slt          s9, a7, a7
                  bge          t6, a1, 192f
                  xor          t4, t3, t2
192:              srai         ra, s11, 1
                  bgeu         a7, s2, 196f
194:              bltu         t2, t2, 195f
195:              bltu         gp, t4, 199f
196:              xor          t6, ra, t4
                  nop
                  bltu         t5, s11, 199f
199:              sll          t4, gp, a3
                  srl          s9, s8, t4
                  addi         s0, s2, 1786
                  nop
                  slt          s5, s8, s6
                  blt          s11, s0, 212f
                  sub          s6, a0, s6
                  sll          gp, gp, s10
                  srl          a6, s3, gp
                  andi         t2, s6, -1486
                  beq          a5, s10, 212f
                  or           t1, tp, s1
                  sltiu        t4, a0, -1750
212:              srai         a3, t4, 6
                  slli         t2, gp, 29
                  ori          t5, ra, -1293
                  srli         t2, s7, 5
                  slt          s6, s1, s9
                  ori          a0, t3, -1439
                  sltiu        s11, s4, 326
                  lui          a5, 601088
                  sra          s11, s9, a2
                  slli         s2, s0, 15
                  srl          t6, s7, s8
                  add          tp, t0, t3
                  or           s7, t2, s5
                  and          s9, t0, s11
                  andi         zero, a7, 125
                  or           a0, a5, a5
                  bgeu         tp, s4, 246f
                  slli         s8, t1, 23
                  xor          t1, s6, s11
                  sltu         t1, s11, s3
                  sltiu        a5, a4, 944
                  srai         s3, t0, 14
                  slti         a4, t4, -136
                  sltu         s11, s1, a1
                  blt          s4, a7, 245f
                  sltu         s7, t5, s1
                  bne          tp, s8, 253f
                  bgeu         a2, t3, 249f
                  or           s5, t0, t6
                  srl          s7, a2, zero
                  and          t2, sp, s10
                  slti         gp, s10, -1435
                  andi         t1, s1, -801
245:              srai         a4, s8, 9
246:              nop
                  and          a6, a7, s1
                  add          s2, s8, t1
249:              srl          zero, ra, a7
                  slti         t6, s10, 1427
                  srli         t4, a7, 11
                  bgeu         s6, a0, 270f
253:              nop
                  bltu         s11, a6, 274f
                  bge          tp, s10, 266f
                  sltu         t4, s0, t6
                  sra          s1, a1, zero
                  or           s8, s8, s8
                  andi         t1, t4, -629
                  auipc        s8, 289420
                  bgeu         s3, s0, 269f
                  xori         s1, zero, -778
                  sub          s0, tp, a7
                  slt          s2, s4, s2
                  srl          t1, s11, t4
sub_1_5:          jal          sp, 21f
0:                jal          ra, 3f
1:                jal          ra, 29f
2:                jal          tp, 13f
3:                jal          t1, 5f
4:                jal          a2, 15f
5:                jal          s1, 30f
6:                jal          tp, 10f
7:                jal          a5, 22f
8:                jal          t1, 4b
9:                jal          ra, 6b
10:               jal          s6, 8b
11:               jal          ra, 24f
12:               jal          ra, 0b
13:               jal          s3, 11b
14:               jal          ra, 12b
15:               jal          a7, 19f
16:               jal          ra, 25f
17:               jal          s0, 23f
18:               jal          ra, 20f
19:               jal          ra, 17b
20:               jal          t1, 14b
21:               jal          t1, 7b
22:               jal          t1, 26f
23:               jal          sp, 16b
24:               jal          ra, 1b
25:               jal          ra, 28f
26:               jal          ra, 27f
27:               jal          gp, 9b
28:               jal          ra, 2b
29:               jal          t1, 18b
30:               nop
266:              blt          t2, a1, 284f
                  sll          s1, s10, a3
                  sltu         tp, a4, zero
269:              srli         ra, zero, 25
270:              xori         s0, s8, 674
                  slti         ra, s2, 1082
                  xor          s5, a1, tp
                  sltu         s3, a0, s11
274:              sltiu        a5, s11, 974
                  or           s1, s11, s11
                  andi         t1, t3, -701
                  xor          gp, a6, s9
                  srli         a3, s9, 4
                  srli         s3, s0, 1
                  bgeu         t6, s6, 293f
                  bge          s4, s7, 296f
                  slti         zero, tp, 1356
                  srl          s7, t0, a4
284:              or           s0, t1, a6
                  lui          s3, 865516
                  auipc        a4, 648299
                  slt          t1, s7, sp
                  slli         s3, t3, 30
                  sra          s5, a2, a0
                  srl          t5, s9, s1
                  add          s6, t1, ra
                  add          ra, s3, a4
293:              andi         a2, s3, -6
                  bltu         t6, t4, 300f
                  nop
296:              xori         a2, s5, -152
                  bltu         s5, s4, 315f
                  slti         s0, s6, 484
                  addi         a7, s4, -1513
300:              and          s7, s5, t3
                  bge          gp, s3, 310f
                  bgeu         a1, t3, 317f
                  lui          t2, 409421
                  and          s8, s2, t4
                  xori         a4, s4, 1027
                  sra          gp, s5, t3
                  ori          s10, s5, 1654
                  sltu         s7, a1, t1
                  or           t5, t0, a6
310:              bgeu         s5, s7, 317f
                  or           s10, a4, s5
                  xor          s3, s0, ra
                  sltu         t6, a1, a6
                  bne          s6, s11, 329f
315:              xor          t5, sp, ra
                  sltu         s4, s9, a3
317:              bge          s11, s2, 329f
                  sltu         a3, s2, a2
                  bne          s4, s2, 329f
                  xori         tp, a4, -410
                  sra          a3, a1, ra
                  sra          t5, a6, s4
                  sltiu        t6, t1, 708
                  sub          t2, s11, a4
                  add          ra, s8, s4
                  bltu         ra, gp, 329f
                  srl          gp, s5, sp
                  nop
329:              auipc        t5, 454348
                  sltiu        s4, s10, 1792
                  lw           sp, 4(a1)
                  addi         a1, a1, 24
                  xori         s10, s0, -1895
                  ori          tp, s6, -192
                  and          t6, zero, a2
521:              addi x26, x2, 0
521:              jalr x26, x26, 0
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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x5, x11, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x19, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x19, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x19, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x19, x6, ecall_handler
                  li x6, 0x1
                  beq x19, x6, instr_fault_handler
                  li x6, 0x5
                  beq x19, x6, load_fault_handler
                  li x6, 0x7
                  beq x19, x6, store_fault_handler
                  li x6, 0xc
                  beq x19, x6, pt_fault_handler
                  li x6, 0xd
                  beq x19, x6, pt_fault_handler
                  li x6, 0xf
                  beq x19, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

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
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x11, x5, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

load_fault_handler:
                  add x11, x5, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

store_fault_handler:
                  add x11, x5, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x11, x5, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x11, x5, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x11, x5, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
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
