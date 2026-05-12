.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 1
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x7e54a496
                  li x2, 0xf981e32a
                  li x3, 0x1
                  li x4, 0xf046c1ef
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xf8b88c15
                  li x8, 0x80000000
                  li x9, 0xf5fbc2c1
                  li x11, 0x11da0195
                  li x13, 0x0
                  li x14, 0xff54bd9f
                  li x15, 0x8
                  li x16, 0x0
                  li x17, 0xd8af0930
                  li x18, 0x80000000
                  li x19, 0x8
                  li x20, 0x3
                  li x21, 0x591ed1ea
                  li x22, 0xc6afa460
                  li x23, 0x80000000
                  li x24, 0x4
                  li x25, 0xf729dbb0
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0xb
                  li x30, 0xf4083917
                  li x31, 0xfceb1e62
                  la x10, user_stack_end
main:             jal          ra, 0f
0:                jal          ra, 3f
1:                jal          ra, 26f
2:                jal          ra, 12f
3:                jal          ra, 27f
4:                jal          t1, 22f
5:                jal          ra, 14f
6:                jal          ra, 16f
7:                jal          t1, 18f
8:                jal          t2, 10f
9:                jal          ra, 4b
10:               jal          s5, 9b
11:               jal          ra, 13f
12:               jal          ra, 1b
13:               jal          ra, 8b
14:               jal          ra, 7b
15:               jal          ra, 5b
16:               jal          s8, 24f
17:               jal          t1, 15b
18:               jal          ra, 11b
19:               jal          ra, 28f
20:               jal          ra, 6b
21:               jal          ra, 23f
22:               jal          t1, 20b
23:               jal          ra, 19b
24:               jal          ra, 25f
25:               jal          t1, 2b
26:               jal          ra, 21b
27:               jal          tp, 17b
28:               auipc        gp, 935762
main_5:           jal          ra, 19f
0:                jal          t1, 3f
1:                jal          t1, 11f
2:                jal          a1, 0b
3:                jal          ra, 7f
4:                jal          t3, 29f
5:                jal          ra, 25f
6:                jal          ra, 4b
7:                jal          gp, 23f
8:                jal          ra, 27f
9:                jal          ra, 2b
10:               jal          t0, 1b
11:               jal          ra, 21f
12:               jal          ra, 20f
13:               jal          ra, 6b
14:               jal          t1, 13b
15:               jal          ra, 16f
16:               jal          t1, 22f
17:               jal          ra, 30f
18:               jal          ra, 15b
19:               jal          tp, 9b
20:               jal          ra, 17b
21:               jal          ra, 5b
22:               jal          ra, 26f
23:               jal          t1, 28f
24:               jal          ra, 14b
25:               jal          ra, 18b
26:               jal          t1, 8b
27:               jal          t1, 24b
28:               jal          ra, 10b
29:               jal          ra, 12b
30:               addi         a5, s9, 126
main_10:          jal          ra, 7f
0:                jal          ra, 19f
1:                jal          t3, 18f
2:                jal          t0, 28f
3:                jal          t4, 15f
4:                jal          ra, 1b
5:                jal          a6, 6f
6:                jal          a1, 21f
7:                jal          s0, 9f
8:                jal          a7, 23f
9:                jal          ra, 2b
10:               jal          ra, 26f
11:               jal          s5, 13f
12:               jal          ra, 11b
13:               jal          ra, 20f
14:               jal          ra, 0b
15:               jal          t1, 10b
16:               jal          ra, 25f
17:               jal          t1, 24f
18:               jal          s3, 8b
19:               jal          ra, 5b
20:               jal          ra, 17b
21:               jal          ra, 29f
22:               jal          ra, 14b
23:               jal          t0, 16b
24:               jal          s0, 3b
25:               jal          ra, 22b
26:               jal          t1, 27f
27:               jal          ra, 4b
28:               jal          ra, 12b
29:               jal          ra, 30f
30:               sltiu        t0, s0, -1798
main_6:           jal          ra, 12f
0:                jal          ra, 7f
1:                jal          t5, 22f
2:                jal          t0, 1b
3:                jal          s11, 24f
4:                jal          sp, 11f
5:                jal          ra, 6f
6:                jal          t0, 13f
7:                jal          sp, 25f
8:                jal          ra, 19f
9:                jal          ra, 2b
10:               jal          a6, 26f
11:               jal          ra, 15f
12:               jal          ra, 23f
13:               jal          ra, 18f
14:               jal          t1, 5b
15:               jal          ra, 17f
16:               jal          t1, 14b
17:               jal          ra, 27f
18:               jal          t1, 0b
19:               jal          s2, 9b
20:               jal          ra, 4b
21:               jal          t1, 20b
22:               jal          s10, 10b
23:               jal          t1, 8b
24:               jal          tp, 16b
25:               jal          t2, 21b
26:               jal          tp, 3b
27:               xori         a4, a5, -416
main_4:           jal          ra, 2f
0:                jal          ra, 13f
1:                jal          s10, 3f
2:                jal          t1, 11f
3:                jal          ra, 9f
4:                jal          gp, 6f
5:                jal          ra, 1b
6:                jal          ra, 8f
7:                jal          ra, 12f
8:                jal          t1, 0b
9:                jal          a7, 4b
10:               jal          t1, 14f
11:               jal          t1, 5b
12:               jal          ra, 15f
13:               jal          ra, 7b
14:               jal          t5, 16f
15:               jal          t1, 10b
16:               jal          ra, 17f
17:               slt          s6, s7, t2
main_11:          jal          ra, 7f
0:                jal          ra, 10f
1:                jal          ra, 13f
2:                jal          t1, 1b
3:                jal          t1, 11f
4:                jal          t0, 9f
5:                jal          ra, 12f
6:                jal          a7, 5b
7:                jal          s11, 3b
8:                jal          t1, 4b
9:                jal          ra, 6b
10:               jal          a4, 2b
11:               jal          ra, 8b
12:               jal          ra, 0b
13:               slti         s10, a1, -1154
main_2:           jal          ra, 13f
0:                jal          ra, 4f
1:                jal          ra, 16f
2:                jal          ra, 17f
3:                jal          tp, 1b
4:                jal          s5, 7f
5:                jal          ra, 9f
6:                jal          t1, 18f
7:                jal          ra, 11f
8:                jal          tp, 12f
9:                jal          ra, 3b
10:               jal          ra, 8b
11:               jal          ra, 14f
12:               jal          ra, 5b
13:               jal          ra, 0b
14:               jal          ra, 6b
15:               jal          ra, 10b
16:               jal          ra, 2b
17:               jal          ra, 19f
18:               jal          t1, 15b
19:               or           t5, a2, t1
main_1:           jal          ra, 22f
0:                jal          ra, 28f
1:                jal          t1, 13f
2:                jal          ra, 19f
3:                jal          t0, 9f
4:                jal          ra, 2b
5:                jal          t1, 26f
6:                jal          ra, 1b
7:                jal          s10, 3b
8:                jal          t1, 11f
9:                jal          a7, 6b
10:               jal          ra, 20f
11:               jal          ra, 15f
12:               jal          a1, 25f
13:               jal          t1, 12b
14:               jal          ra, 23f
15:               jal          t1, 18f
16:               jal          t3, 17f
17:               jal          ra, 5b
18:               jal          s8, 21f
19:               jal          s10, 7b
20:               jal          t0, 0b
21:               jal          ra, 10b
22:               jal          t1, 14b
23:               jal          t1, 16b
24:               jal          ra, 4b
25:               jal          ra, 8b
26:               jal          ra, 27f
27:               jal          t1, 24b
28:               addi         t5, t0, -756
main_16:          jal          ra, 15f
0:                jal          ra, 10f
1:                jal          ra, 14f
2:                jal          t2, 16f
3:                jal          tp, 4f
4:                jal          ra, 7f
5:                jal          sp, 13f
6:                jal          ra, 0b
7:                jal          t1, 5b
8:                jal          ra, 6b
9:                jal          t1, 11f
10:               jal          ra, 1b
11:               jal          ra, 2b
12:               jal          s0, 8b
13:               jal          t1, 12b
14:               jal          ra, 9b
15:               jal          t1, 3b
16:               srl          a7, t3, s10
main_0:           jal          ra, 0f
0:                jal          ra, 9f
1:                jal          t1, 3f
2:                jal          s11, 1b
3:                jal          ra, 11f
4:                jal          ra, 16f
5:                jal          a4, 7f
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          ra, 12f
9:                jal          t1, 2b
10:               jal          t5, 4b
11:               jal          ra, 14f
12:               jal          t1, 15f
13:               jal          t1, 17f
14:               jal          t1, 6b
15:               jal          s5, 10b
16:               jal          t5, 13b
17:               slli         s6, s5, 24
main_3:           jal          ra, 14f
0:                jal          s0, 3f
1:                jal          sp, 15f
2:                jal          ra, 0b
3:                jal          t1, 11f
4:                jal          t5, 16f
5:                jal          ra, 8f
6:                jal          sp, 1b
7:                jal          tp, 2b
8:                jal          ra, 17f
9:                jal          a7, 5b
10:               jal          t0, 4b
11:               jal          t1, 18f
12:               jal          ra, 13f
13:               jal          tp, 7b
14:               jal          ra, 9b
15:               jal          ra, 12b
16:               jal          t1, 6b
17:               jal          ra, 10b
18:               xor          s3, t1, s9
                  bge          a2, s7, 20f
                  bgeu         t1, s10, 21f
                  blt          s4, s0, 5f
                  auipc        a7, 516413
                  beq          s6, s1, 10f
5:                slti         t1, a4, 330
                  ori          a5, a4, 1145
                  or           s11, a6, t6
                  sra          s9, s9, a6
                  sll          s7, s3, s4
10:               sltu         sp, sp, a4
                  sra          gp, t4, t3
                  andi         a1, s6, -1588
                  bltu         a0, s2, 14f
14:               bltu         t3, a2, 32f
                  xor          zero, a4, s7
                  sra          t5, s0, t0
                  beq          zero, a3, 30f
                  sltiu        s10, s8, 553
                  andi         gp, s8, 682
20:               xori         t4, t2, 31
21:               lui          s6, 236519
                  sltiu        s7, ra, -28
                  bgeu         s9, s5, 32f
                  slli         s10, s4, 29
                  bltu         s2, s2, 32f
                  ori          a5, t6, 183
                  slt          t3, t3, s3
                  slt          a6, s6, t5
                  ori          t0, gp, 1443
30:               bltu         s3, a5, 47f
                  bgeu         s8, gp, 35f
main_9:           jal          ra, 8f
0:                jal          ra, 20f
1:                jal          ra, 4f
2:                jal          a6, 3f
3:                jal          ra, 0b
4:                jal          ra, 24f
5:                jal          t1, 28f
6:                jal          s7, 7f
7:                jal          s8, 23f
8:                jal          ra, 9f
9:                jal          ra, 13f
10:               jal          ra, 22f
11:               jal          ra, 21f
12:               jal          ra, 14f
13:               jal          ra, 2b
14:               jal          t1, 26f
15:               jal          ra, 16f
16:               jal          t1, 12b
17:               jal          ra, 11b
18:               jal          ra, 6b
19:               jal          t1, 15b
20:               jal          ra, 29f
21:               jal          ra, 1b
22:               jal          s9, 17b
23:               jal          ra, 30f
24:               jal          ra, 5b
25:               jal          ra, 18b
26:               jal          t6, 10b
27:               jal          s0, 19b
28:               jal          ra, 25b
29:               jal          ra, 27b
30:               auipc        ra, 614084
32:               bgeu         s7, t0, 42f
                  bltu         s2, tp, 39f
                  slli         ra, a1, 6
35:               xori         s2, zero, -310
                  sub          t0, s3, s8
                  bltu         t5, t6, 44f
                  slti         a6, s0, 347
39:               beq          a1, tp, 41f
                  blt          tp, t0, 50f
41:               sra          t0, a0, a6
42:               sltiu        t3, gp, 232
                  bge          a0, s5, 63f
44:               lui          tp, 715289
                  bge          s8, t4, 54f
                  bgeu         s9, s8, 59f
47:               blt          ra, t2, 51f
                  sltu         zero, s11, tp
                  sra          s10, s8, s11
50:               lui          zero, 421315
51:               bne          t6, s7, 52f
52:               blt          t1, a4, 56f
                  sra          t5, s8, a0
54:               srai         s9, s1, 15
                  slt          gp, a1, s3
56:               sltu         s10, s2, s9
                  sll          tp, s7, t5
                  sltiu        t2, t3, -1118
59:               slt          t0, sp, s11
                  add          a7, t2, t3
                  bltu         t3, tp, 62f
62:               bgeu         s0, s6, 79f
63:               addi         s0, gp, 1857
                  sll          s10, tp, s6
                  bge          a3, zero, 71f
                  xori         t2, t2, -350
                  nop
                  and          s1, t3, t5
                  ori          t6, tp, 256
                  ori          s5, t3, -927
71:               srli         s9, s10, 26
                  blt          s7, s7, 79f
                  xor          t6, s0, t0
                  bltu         s4, zero, 82f
                  blt          s3, a6, 87f
                  auipc        t1, 820111
                  srai         t1, a4, 8
                  lui          a1, 316146
79:               blt          a7, t4, 90f
                  xori         s1, a2, 908
                  sub          s9, t2, gp
82:               add          t1, s1, s9
                  add          t1, t2, t3
                  xori         a6, a3, -2030
                  srl          s8, t5, gp
                  sll          ra, a7, zero
87:               andi         a4, s7, 1382
                  bltu         t5, ra, 89f
89:               sltu         t3, t2, s1
90:               auipc        s6, 847040
                  bge          a7, t5, 108f
                  add          a6, gp, a2
                  xor          t0, s2, s4
                  slli         t3, t5, 0
                  sub          t4, t5, s9
                  slli         sp, a1, 18
                  blt          s10, t0, 98f
98:               slt          s1, t6, a5
                  nop
                  sub          s2, s11, tp
                  bne          sp, a3, 102f
102:              and          t3, a0, s2
                  slt          t0, a1, t1
                  addi         s11, s9, -1062
                  sll          a6, zero, s6
                  srli         t4, a3, 12
                  srli         s0, s9, 1
108:              sltu         s2, t2, a4
                  srli         gp, s2, 12
                  slt          t4, s10, zero
                  srai         sp, s6, 0
                  srl          s9, t1, s11
                  blt          s11, s7, 126f
                  srl          s3, zero, s11
                  srai         t5, a4, 3
                  beq          t2, t3, 136f
                  bltu         a1, s8, 123f
                  slt          a1, a2, tp
                  bge          ra, tp, 125f
                  slti         s9, a1, 469
                  addi         a4, s7, 1854
                  bge          t2, zero, 129f
123:              sll          a6, a7, s9
                  sltu         t4, s10, sp
125:              auipc        t3, 388431
126:              blt          s6, a6, 144f
                  andi         a3, s9, -1115
                  add          s8, a4, t2
129:              ori          gp, tp, 922
                  add          s2, a7, s7
                  sltu         t6, t4, a3
                  and          a4, s2, a3
                  add          s0, s3, s1
                  blt          t4, zero, 144f
                  xori         gp, t3, 965
136:              xori         a5, t2, 1388
                  sll          t6, gp, a7
                  sra          zero, s1, s8
                  srl          s2, t0, t5
                  lui          s8, 1012364
                  auipc        t3, 1046049
                  bltu         a5, zero, 155f
                  srai         s7, s6, 14
144:              sra          s5, t2, t5
                  srli         s3, s0, 30
main_13:          jal          ra, 13f
0:                jal          t1, 15f
1:                jal          ra, 17f
2:                jal          ra, 16f
3:                jal          ra, 1b
4:                jal          ra, 3b
5:                jal          ra, 12f
6:                jal          ra, 9f
7:                jal          ra, 19f
8:                jal          t1, 11f
9:                jal          t1, 8b
10:               jal          t1, 2b
11:               jal          ra, 14f
12:               jal          t1, 18f
13:               jal          ra, 5b
14:               jal          gp, 10b
15:               jal          ra, 7b
16:               jal          ra, 0b
17:               jal          ra, 6b
18:               jal          a3, 4b
19:               lui          s9, 310316
                  or           t3, ra, t0
                  srl          a4, s10, s9
                  or           a1, a3, s0
                  blt          t1, s9, 158f
                  addi         zero, t1, 1567
                  sra          s8, s9, s4
                  slti         s3, t5, -1714
                  slti         t2, s4, 1635
                  srli         t3, a4, 9
155:              ori          t4, a6, 1452
                  lui          t2, 145313
                  ori          sp, a7, -1306
158:              xor          t6, t1, s6
                  bge          s8, t3, 161f
                  ori          s0, ra, -1273
161:              beq          tp, t3, 164f
                  xori         s6, s0, 868
                  ori          a1, t4, -1159
164:              sltiu        s1, a2, 529
                  bgeu         t0, t6, 169f
                  xori         s0, s11, 2018
                  slli         t5, a2, 30
                  sra          t4, t4, a7
169:              srli         s6, s8, 17
                  blt          a3, s3, 171f
171:              slt          a7, s10, t5
                  sra          s9, s2, s6
                  srl          s5, a7, tp
                  bne          sp, t1, 194f
                  auipc        zero, 997032
                  sra          sp, s5, a7
                  slli         t5, s9, 14
                  sltiu        a4, t0, 1683
                  andi         tp, a3, 1132
                  sltu         a3, s3, t3
                  sll          a5, s2, a2
                  lui          a4, 202855
                  bge          a5, a2, 191f
                  andi         s2, s8, -1486
                  bgeu         t5, s3, 202f
                  or           t3, s8, s6
                  sra          zero, s2, s5
                  srl          t1, s1, a2
                  auipc        s8, 339818
                  nop
191:              srli         s3, s10, 12
                  andi         s8, s6, -465
                  srl          t0, gp, s6
194:              and          s9, zero, gp
                  bltu         a0, s5, 202f
                  slti         t4, t2, -32
                  slt          s5, s11, s4
                  sub          a4, t4, zero
                  or           tp, t6, a7
                  ori          t4, a5, -1941
                  blt          s8, s6, 213f
202:              srai         sp, t4, 11
                  sltu         t1, ra, sp
                  andi         t0, t3, 572
                  and          s1, a1, t1
                  nop
                  nop
                  and          tp, t5, s4
                  add          s2, s1, s0
                  bgeu         s4, a5, 230f
                  nop
                  or           s6, t1, s0
213:              bne          t6, a4, 219f
                  add          t4, a1, s3
                  xor          t6, t0, a5
                  lui          t2, 575118
                  bltu         s6, t1, 221f
                  xor          t1, a5, a6
219:              sll          a3, s7, s7
                  auipc        t1, 822980
221:              sll          a5, a5, s6
                  or           s11, s11, s2
                  srli         a3, s0, 22
main_12:          jal          ra, 0f
0:                jal          t1, 8f
1:                jal          ra, 2f
2:                jal          ra, 4f
3:                jal          t1, 9f
4:                jal          t1, 15f
5:                jal          ra, 23f
6:                jal          sp, 18f
7:                jal          ra, 3b
8:                jal          ra, 10f
9:                jal          ra, 6b
10:               jal          tp, 12f
11:               jal          ra, 21f
12:               jal          t5, 11b
13:               jal          t1, 5b
14:               jal          t1, 16f
15:               jal          s5, 13b
16:               jal          ra, 19f
17:               jal          ra, 7b
18:               jal          tp, 1b
19:               jal          ra, 20f
20:               jal          ra, 22f
21:               jal          ra, 14b
22:               jal          ra, 17b
23:               srli         t0, a7, 13
                  sltiu        gp, s6, -1937
                  xori         s9, s5, 1095
                  addi         t1, s6, 410
                  bgeu         s9, s2, 234f
                  andi         a3, s1, 976
                  nop
230:              sltu         s5, a1, gp
                  andi         s0, a1, -1982
                  sltiu        s2, s8, -1012
                  sra          a5, a6, s2
234:              srli         s2, t1, 26
                  lui          s9, 984968
                  bltu         sp, s10, 237f
237:              xor          s1, a6, t0
                  bne          a6, s3, 242f
                  nop
                  sub          ra, s3, zero
                  and          s6, t4, ra
242:              xor          s1, s9, s0
                  beq          t3, ra, 253f
                  slti         gp, tp, 1795
                  and          s2, t0, a6
                  ori          zero, zero, -357
                  slt          s7, s7, s6
                  srl          s2, s3, s0
                  andi         tp, sp, -341
                  lui          s7, 334218
                  sub          s3, s4, s9
                  blt          ra, a4, 261f
253:              sltiu        sp, gp, 114
                  or           sp, t6, s10
                  sll          s6, s3, s6
                  bgeu         t0, a0, 267f
main_14:          jal          ra, 17f
0:                jal          ra, 9f
1:                jal          ra, 13f
2:                jal          ra, 11f
3:                jal          ra, 5f
4:                jal          s8, 3b
5:                jal          t1, 25f
6:                jal          ra, 20f
7:                jal          s8, 0b
8:                jal          ra, 26f
9:                jal          ra, 1b
10:               jal          sp, 6b
11:               jal          t1, 16f
12:               jal          ra, 23f
13:               jal          ra, 10b
14:               jal          t2, 18f
15:               jal          s8, 27f
16:               jal          ra, 7b
17:               jal          t1, 2b
18:               jal          ra, 19f
19:               jal          ra, 4b
20:               jal          ra, 22f
21:               jal          gp, 15b
22:               jal          ra, 14b
23:               jal          ra, 24f
24:               jal          a5, 8b
25:               jal          gp, 12b
26:               jal          ra, 21b
27:               lui          ra, 574631
                  sltu         s9, t5, sp
                  beq          s9, gp, 259f
259:              or           t3, a2, a4
                  slli         s6, t3, 1
261:              sra          s2, zero, s9
                  andi         s9, t2, -1655
                  add          a7, a1, a2
                  xori         s9, s2, -1629
                  slt          s0, gp, s10
                  bgeu         s5, t5, 284f
267:              lui          s8, 5349
                  bltu         t2, s10, 281f
                  sltiu        tp, a7, 1054
                  bge          s6, s6, 276f
                  xor          s3, s3, s8
                  sra          t2, sp, s0
                  sltu         a7, zero, t4
                  nop
                  xor          s10, zero, gp
276:              xori         t2, a6, 1582
                  slt          a7, a6, ra
                  sltiu        a1, t0, 1953
                  bgeu         s6, s11, 285f
                  lui          zero, 390594
281:              bge          t5, t6, 288f
                  srli         s6, a0, 0
                  lui          a1, 360911
284:              srli         t1, s4, 12
285:              andi         s8, s8, -681
                  slli         t0, t5, 5
                  add          gp, t2, s11
288:              srli         s1, a2, 23
                  sub          a1, s8, tp
                  ori          a3, a7, -1200
                  nop
                  nop
                  slt          s6, a7, a1
                  or           t6, a6, zero
                  lui          s2, 409350
                  blt          t3, t5, 300f
                  blt          s0, a3, 307f
                  xor          a3, s6, t3
                  srl          t1, s11, t3
300:              sra          a5, s7, t2
                  bltu         t1, s8, 313f
                  sltu         s10, s8, a6
                  and          t2, a1, s6
                  addi         a7, t0, -187
                  auipc        s10, 74428
                  and          a7, zero, a1
307:              add          a7, zero, tp
                  add          s2, s5, a7
                  auipc        a6, 218876
                  xori         s7, s6, -158
                  slli         s8, s8, 6
                  and          s7, t0, zero
313:              xor          s1, s1, gp
                  addi         ra, t5, 1752
                  lui          s3, 822230
                  beq          a3, zero, 333f
                  lui          t1, 412963
                  nop
                  auipc        t1, 587665
                  sll          gp, sp, s3
                  xori         s6, a4, 2043
                  sltiu        ra, t5, -1072
                  srl          a3, a3, ra
                  andi         s5, t1, -1142
                  nop
                  slt          a3, t1, a6
                  andi         s3, tp, 1213
                  sll          s10, a1, t5
                  bgeu         a4, a7, 330f
330:              bgeu         t2, a5, 334f
                  sltiu        tp, t6, 1443
                  bne          s1, s4, 340f
333:              andi         s0, t3, 327
334:              srli         t5, s3, 2
                  sltiu        s8, a5, 556
                  blt          t1, a5, 345f
                  sub          t3, s9, s1
                  and          s6, a2, sp
                  slli         t2, s5, 10
340:              addi         s3, s4, -1230
                  sltu         s6, s5, s11
                  nop
                  slti         sp, s3, 914
                  auipc        a4, 820875
345:              slt          tp, a5, tp
                  slti         t4, a6, -118
                  srl          t0, s4, zero
                  bltu         t6, a1, 368f
                  beq          t2, s7, 369f
                  bgeu         ra, zero, 357f
                  add          t5, s3, t3
                  ori          sp, s8, -661
                  srl          s9, sp, t2
                  ori          gp, s11, -1184
                  sll          t1, s3, s3
                  ori          a3, sp, 1951
357:              sltu         zero, t0, a4
                  auipc        zero, 543892
                  or           s0, t5, ra
                  sub          a6, s4, a6
                  sll          s1, t1, t4
                  la           a1, sub_1
                  addi         a1, a1, -356
                  andi         s9, ra, -1809
                  sub          t0, t2, t2
                  sltiu        t3, sp, -306
                  sra          t6, gp, t3
                  bgeu         t6, t0, main_j2 #branch to jump instr
                  srli         gp, t6, 27
                  slti         ra, t6, -692
                  srl          t1, a2, a2
main_j2:          jalr         ra, a1, 357 #jump main -> sub_1
                  slti         s6, s0, -1466
                  addi         t6, t5, -1175
                  sra          s3, t4, a6
                  lui          s7, 588177
                  lui          a5, 465017
                  or           s2, a7, s3
                  sub          t6, s2, s2
                  sra          t3, t6, t6
368:              add          s2, ra, a3
369:              slt          a5, a1, t1
                  and          s2, a3, t2
                  blt          s0, t1, 382f
                  srli         s6, s4, 19
                  lui          ra, 14836
                  sltu         s11, tp, s6
                  or           a5, a0, s5
                  sll          s2, s2, a0
                  srai         t5, s5, 2
                  sll          s10, s11, s6
                  sra          t0, a5, tp
                  lui          a4, 14548
                  xori         s1, t3, -130
382:              slt          s10, s11, s7
                  srli         a5, a4, 4
                  and          a7, a6, gp
                  or           s2, t0, t0
                  xor          t4, t2, t5
                  sll          t5, s5, s4
                  andi         s11, t2, 585
                  bltu         a0, s3, 390f
390:              sll          s5, t1, s9
                  beq          s0, a2, 393f
                  or           tp, s8, a1
393:              bne          t0, s8, 413f
                  beq          t4, s11, 407f
                  addi         a3, tp, 1366
                  slli         t1, s0, 4
                  sltiu        s11, t0, 1452
                  slt          s11, t4, s10
                  sll          a7, s11, a1
                  srai         a6, a0, 31
                  lui          t4, 557762
                  srl          s11, a6, t3
                  bltu         tp, s4, 412f
                  add          s5, a1, a1
                  bne          sp, a1, 408f
                  add          tp, s1, a3
407:              slli         sp, a0, 20
408:              sltu         a3, a5, zero
                  add          zero, s5, s0
                  sltu         s10, a1, t5
                  slli         sp, s7, 19
412:              xori         s11, zero, -1222
413:              andi         gp, t4, 96
                  addi         s11, t3, -255
                  lui          s5, 937494
                  bltu         gp, s11, 417f
417:              bge          a4, a3, 423f
                  auipc        tp, 542166
                  sll          s3, t0, ra
                  or           a1, s3, a2
                  add          s9, s11, t2
                  ori          s5, s6, -1413
423:              ori          s2, s9, 126
                  xor          s9, s4, s8
                  sub          a5, ra, a3
                  ori          s11, s2, -1366
                  addi         s0, a5, -1673
                  sll          ra, a1, s0
                  srl          s5, s8, s3
                  ori          s10, s11, -1420
                  srli         s1, a2, 29
                  blt          tp, s7, 436f
                  ori          zero, a3, 927
                  xori         t0, a2, -1976
                  bge          t6, s0, 442f
436:              sub          a1, s9, t2
                  bltu         s3, gp, 454f
                  sll          s10, t2, t4
                  sltiu        s1, s1, 1888
                  addi         t5, s2, 37
                  xor          t1, a1, a4
442:              beq          a1, gp, 452f
                  slli         a5, s9, 13
                  sll          sp, s6, ra
                  sltu         ra, gp, a4
                  slt          s5, a5, a4
                  srl          s11, s5, a5
                  slli         a1, zero, 29
                  slt          t2, t0, t3
                  slli         s3, s3, 0
                  auipc        sp, 331196
452:              bltu         s2, gp, 462f
                  add          s9, a3, sp
454:              srai         s11, a2, 4
                  ori          s7, s2, -1199
                  ori          t1, t0, 1849
                  add          s2, a2, t5
                  auipc        s2, 861622
                  and          a4, t0, t1
                  sll          a5, a0, ra
                  blt          tp, s7, 467f
462:              addi         t2, t5, -744
                  and          s0, tp, s4
                  sltiu        s8, t6, 1881
                  auipc        a1, 99401
                  ori          s8, a4, 411
467:              beq          s8, zero, 480f
                  blt          sp, t3, 475f
                  add          t0, t1, t1
                  bge          t0, gp, 488f
                  srai         s3, t1, 22
                  lui          s9, 815497
                  andi         s10, ra, -1990
                  srl          t3, t2, t6
475:              srai         a3, s0, 19
                  srai         s3, s4, 15
                  sltiu        t5, s8, 121
                  nop
                  bgeu         s3, s5, 499f
480:              add          t1, sp, s5
                  nop
                  bge          a4, gp, 502f
                  slli         a4, t6, 16
                  srl          s6, t2, s8
                  ori          s3, a5, -540
                  bne          a1, s4, 506f
                  srl          s11, a1, a7
488:              sub          s8, a1, tp
                  sltu         t1, t3, a2
                  addi         t4, zero, -1109
                  bgeu         a1, s3, 492f
492:              or           s7, s3, t5
                  sltiu        s6, zero, -950
                  nop
                  sltiu        s1, s9, -264
                  xori         gp, t5, 1004
                  and          t3, ra, a7
                  sub          t5, t6, a0
499:              andi         t5, t6, -148
                  or           s8, t5, gp
                  lui          s2, 477968
502:              sltu         t6, a5, a5
                  sll          gp, s11, tp
                  slt          a1, s6, a6
                  and          s8, a4, s10
506:              bge          s9, a1, 515f
                  addi         zero, sp, 868
                  srai         a7, s4, 19
                  beq          s8, t4, 510f
510:              slli         t5, s0, 12
                  slli         gp, a5, 4
                  slli         s5, s1, 12
                  ori          s11, s4, -799
                  slli         s0, ra, 23
515:              blt          s8, s0, 518f
                  bge          s3, s9, 533f
                  slti         a4, s3, -1396
518:              bltu         s3, s9, 525f
                  sltu         s11, a4, s5
                  add          s2, zero, t1
                  srli         s1, s0, 5
                  slt          gp, t1, a1
                  nop
                  bgeu         s9, t1, 533f
525:              ori          s6, t6, 528
                  nop
                  slti         t4, t2, 838
                  srl          s9, t6, zero
                  sub          s11, s11, s5
                  beq          sp, s4, 542f
                  slli         t4, a3, 31
                  lui          s11, 518666
533:              sltiu        t4, s9, -829
                  addi         s7, t6, -895
                  srl          s9, a3, s10
                  sltiu        t2, a7, 346
                  bne          t3, t2, 554f
                  auipc        t2, 152836
                  beq          sp, a6, 543f
                  bge          tp, t3, 548f
                  slti         t2, s3, -587
542:              srli         s11, a2, 11
543:              sltu         s8, t0, a1
                  and          a4, a6, t5
                  xori         s10, s6, 191
                  sub          s11, s10, a5
                  srai         zero, a7, 24
548:              sub          t5, a6, a5
                  slti         s5, t1, 427
                  bltu         s3, s7, 560f
                  andi         t3, s4, -1815
                  auipc        s7, 254704
                  slt          a1, s5, t4
554:              sub          a7, t1, gp
                  bne          t3, gp, 559f
                  xori         zero, s3, 648
                  srl          s5, a2, s3
                  slti         s3, sp, 1111
559:              lui          tp, 1002541
560:              and          s7, s11, s1
                  sub          tp, ra, s9
                  bltu         a6, ra, 568f
                  sub          s6, a2, a5
                  sltiu        ra, a1, 784
                  auipc        t6, 596615
                  lui          a6, 406758
                  add          t3, t5, s9
568:              sra          s2, zero, a1
                  auipc        a6, 812209
                  or           s2, sp, t5
                  sub          a3, s6, zero
                  srl          t5, a5, s11
                  srai         t5, s11, 3
                  bltu         a7, a7, 585f
                  andi         t0, s0, 1114
                  auipc        t4, 882
                  add          s9, s6, sp
                  beq          t4, a4, 579f
579:              beq          a4, s1, 585f
                  beq          a5, t3, 587f
                  and          s1, t0, t0
                  beq          a6, s0, 586f
                  addi         t1, s1, 1123
                  ori          t4, s6, 1021
585:              nop
586:              slti         t1, tp, -1457
587:              add          t3, t0, a1
                  nop
                  blt          a0, s10, 590f
590:              sra          s7, a0, t4
                  auipc        s5, 1660
                  sltiu        s7, gp, -1422
                  srai         a4, sp, 2
                  srl          t1, a7, gp
                  srl          s3, s11, s6
                  slt          t1, a2, a6
                  sll          a6, s2, s10
                  ori          s11, s7, -56
                  srli         s11, a3, 8
                  addi         ra, t6, 1432
                  bgeu         t1, t2, 603f
                  and          gp, a7, s11
603:              bgeu         s7, ra, 616f
                  addi         s11, t2, 10
                  lui          t5, 452676
                  sub          t3, a6, s0
                  sltu         a3, t5, sp
                  srl          a7, tp, s5
                  bgeu         t0, a2, 613f
                  lui          s0, 423500
                  and          s10, s9, s10
                  sltiu        zero, t3, -1606
613:              andi         s6, a0, 767
                  addi         t2, a4, 1724
                  xori         s9, t5, 225
616:              slli         t6, a6, 24
                  add          s8, zero, a1
                  srai         a3, s5, 13
                  and          a3, s10, a5
                  srli         s10, s5, 23
                  sub          s0, a4, zero
                  sub          s0, a4, s11
                  lui          a6, 387001
                  slli         gp, s2, 26
                  sra          a1, a5, s7
                  beq          gp, a3, 646f
                  sltu         s9, t6, s10
                  blt          t6, a5, 639f
                  sra          s0, gp, t0
                  auipc        s5, 677576
                  bltu         a3, a4, 634f
                  and          s3, s0, s2
                  xori         s5, s2, -1273
634:              sltiu        s3, s5, 118
                  slt          gp, s2, t1
                  srai         t4, a4, 17
                  sltu         s10, gp, a0
                  sub          t4, t3, a3
639:              andi         t5, s3, 57
                  sll          a1, a7, s5
                  add          s2, sp, a0
                  sra          s11, s6, s3
                  slti         a1, s6, -640
                  blt          t6, s11, 646f
                  bgeu         s8, s6, 646f
646:              sra          t0, t3, a6
                  slli         a4, s0, 5
                  sltu         zero, s4, a6
                  srl          s10, s5, gp
                  sltu         s6, sp, s8
                  beq          a6, tp, 660f
                  sltu         t4, t2, a2
                  bltu         s7, s10, 654f
654:              addi         s3, a0, 1691
                  sltiu        gp, s7, 95
                  sra          s7, t5, t5
                  slt          s0, t2, gp
                  bgeu         s3, s7, 675f
                  sltu         sp, t3, s2
660:              sltiu        s7, s3, 1904
                  and          s6, t1, sp
                  srli         s6, t5, 25
                  ori          s9, a0, -1776
                  blt          s8, t6, 671f
                  slli         a6, t5, 7
                  slli         t1, t0, 29
                  xori         gp, s5, 637
                  bgeu         a3, s3, 674f
                  srai         ra, t3, 19
                  lui          s10, 229306
671:              bgeu         a5, s4, 691f
                  sll          gp, t6, t1
                  xor          t0, a1, a0
674:              xor          s1, a4, s10
675:              addi         a5, s1, -934
                  sltu         s10, s0, gp
                  sub          ra, a1, a4
                  srli         a7, t6, 2
                  bltu         sp, t6, 680f
680:              add          tp, a7, s9
                  sltu         s10, s0, s2
                  xor          t5, s10, s8
                  xori         a4, sp, 1961
                  bgeu         a6, tp, 697f
                  srl          t2, a5, a6
                  beq          s11, a1, 692f
                  sltiu        t4, s0, 1552
                  xor          ra, a3, sp
                  addi         s5, gp, 690
                  la           a4, sub_1
                  nop
                  add          a3, s0, s1
                  addi         a4, a4, -341
                  srai         s5, s6, 1
                  xor          a5, a3, t5
                  ori          s5, s3, -62
                  sltiu        tp, t4, 465
main_j1:          jalr         ra, a4, 341 #jump main -> sub_1
                  sll          t1, a7, t6
                  lui          a3, 967832
691:              nop
692:              sltiu        t6, a2, -1078
                  bge          a5, t1, 705f
                  slt          a6, t3, s5
                  xori         a1, a4, 1599
                  add          s1, s8, a7
697:              add          t6, s5, sp
                  bgeu         s10, sp, 707f
                  srl          a6, t0, a6
                  sll          t0, t5, a7
                  addi         t1, sp, -1829
                  sll          s11, s3, tp
                  add          s7, t1, a7
                  sltu         zero, a1, a7
705:              srai         s1, a0, 23
                  blt          s6, t3, 724f
707:              auipc        t6, 500375
                  lui          s7, 343306
                  xori         tp, s11, -1018
                  xor          gp, s2, s4
                  and          s7, t0, a0
                  srl          s3, a2, a7
                  slti         tp, tp, 672
                  bltu         ra, t5, 724f
                  sra          a4, t0, gp
                  sltu         a7, s4, a1
                  add          s6, sp, s5
                  sra          gp, t4, s0
                  bltu         s4, t0, 739f
                  lui          a4, 1032143
                  sra          a3, t6, s2
                  sll          zero, t5, s4
                  sltiu        ra, s1, 1062
724:              srai         s7, a6, 30
                  add          a7, s3, s5
                  srl          s6, t1, t4
                  bgeu         ra, s4, 731f
                  slti         zero, tp, 1791
                  sub          t3, a6, zero
                  sll          s6, a0, s3
731:              nop
                  andi         s7, s8, 1343
                  sub          s1, t0, s8
                  or           a5, s2, a4
                  nop
                  andi         a3, t2, -617
                  sub          s1, a6, s8
                  bge          s6, zero, 755f
739:              bge          gp, s8, 746f
                  sltiu        a5, s2, 678
                  bge          t2, s8, 749f
                  nop
                  add          t5, t4, s4
                  sltu         s9, t2, s0
                  and          s5, s8, gp
746:              xor          ra, a4, s4
                  bgeu         sp, s11, 748f
748:              or           s6, sp, s6
749:              sll          s6, a1, s3
                  sll          t3, gp, a5
                  slt          s6, t3, s8
                  slt          tp, s8, s10
                  beq          sp, t0, 759f
                  auipc        t1, 746803
755:              addi         s5, t3, 1323
                  sltu         t5, s4, s8
                  auipc        t1, 409314
                  sub          t2, a5, a1
759:              sltiu        a3, s6, -1911
                  slli         s10, a6, 30
                  blt          a4, s1, 768f
                  srli         t3, s6, 1
                  sub          t4, a2, s0
                  auipc        t5, 62678
                  bge          a2, s1, 778f
                  xori         gp, a3, 1949
                  xori         s1, a0, -1622
768:              bltu         t3, s7, 772f
main_15:          jal          ra, 11f
0:                jal          ra, 27f
1:                jal          ra, 15f
2:                jal          t1, 20f
3:                jal          t1, 7f
4:                jal          ra, 30f
5:                jal          t0, 18f
6:                jal          t1, 26f
7:                jal          ra, 29f
8:                jal          t1, 19f
9:                jal          gp, 5b
10:               jal          ra, 25f
11:               jal          ra, 8b
12:               jal          t1, 22f
13:               jal          ra, 2b
14:               jal          t1, 16f
15:               jal          ra, 21f
16:               jal          ra, 28f
17:               jal          ra, 13b
18:               jal          ra, 24f
19:               jal          t1, 10b
20:               jal          ra, 3b
21:               jal          ra, 6b
22:               jal          ra, 14b
23:               jal          tp, 9b
24:               jal          tp, 12b
25:               jal          ra, 23b
26:               jal          ra, 0b
27:               jal          t1, 4b
28:               jal          ra, 17b
29:               jal          gp, 1b
30:               nop
                  lui          t4, 991356
                  srli         s0, t3, 30
                  sltu         a5, a0, s10
772:              add          tp, zero, a4
                  addi         s0, s6, 653
                  xori         t3, ra, -1593
                  bne          a2, s1, 785f
                  srai         s11, ra, 8
                  nop
778:              slli         tp, ra, 28
                  slt          t0, sp, ra
                  sub          t6, t1, a0
                  xori         s8, t2, -485
                  lui          a6, 534119
                  blt          gp, a2, 784f
784:              bltu         t3, t6, 793f
785:              or           a4, s10, t3
                  add          sp, s8, a0
                  bltu         tp, a1, 800f
                  slli         zero, s4, 30
                  srli         ra, t3, 9
                  bgeu         s5, a1, 799f
                  and          s2, a0, s3
                  bne          t1, a0, 799f
793:              blt          s0, a3, 794f
794:              lui          s0, 659597
                  slti         t3, a0, 1967
                  sltiu        s8, t3, 1433
                  srai         s9, s3, 20
                  bltu         a3, s9, 804f
799:              and          a6, s4, a6
800:              lui          t4, 672424
                  or           s0, t0, t0
                  sll          tp, s1, sp
                  andi         a1, s2, -1334
804:              slt          t6, s11, s7
main_7:           jal          ra, 7f
0:                jal          ra, 11f
1:                jal          ra, 4f
2:                jal          t1, 15f
3:                jal          ra, 5f
4:                jal          ra, 0b
5:                jal          t3, 10f
6:                jal          ra, 12f
7:                jal          t3, 8f
8:                jal          ra, 14f
9:                jal          ra, 2b
10:               jal          ra, 9b
11:               jal          t1, 3b
12:               jal          gp, 13f
13:               jal          t1, 1b
14:               jal          t1, 6b
15:               nop
                  slti         s3, s10, -258
                  and          s5, t5, a7
                  srl          s0, a0, t0
                  srai         s7, a5, 20
                  andi         t6, t1, -1106
                  srl          t2, a4, s0
                  beq          s5, zero, 818f
                  addi         t3, zero, -848
                  xor          s0, s0, a0
                  bgeu         s3, s5, 821f
                  slli         t5, s6, 4
                  beq          s8, a3, 820f
                  addi         sp, t6, 272
818:              auipc        a6, 804962
                  srl          s7, s8, t1
820:              nop
821:              and          tp, tp, s8
                  or           s5, s7, s4
                  sub          ra, t4, s2
                  slt          ra, a6, s10
                  addi         t4, s6, -884
                  andi         gp, s3, 1502
                  sltiu        s3, s0, -469
                  add          s10, sp, a2
                  xor          a4, ra, t1
                  slli         s8, t2, 19
                  sltiu        s0, a4, -383
                  auipc        zero, 508052
                  slli         a3, s9, 14
                  sltiu        s8, s11, 764
                  bge          a7, t6, 855f
                  bltu         s3, zero, 838f
                  addi         a5, t2, -1209
838:              slli         t6, s0, 29
                  slti         t4, a5, 16
                  sub          a6, s9, s4
                  sll          a5, t1, s6
                  slti         s0, t3, -664
                  andi         a5, s9, 605
                  bltu         t4, t6, 854f
                  or           t0, t4, s4
                  addi         s11, t2, 531
                  sltiu        t4, t6, 799
                  sra          s5, s4, a2
                  add          s1, s6, s4
                  bltu         gp, a2, 851f
851:              and          t0, zero, t4
                  or           s1, a2, a0
                  sltiu        t5, a1, 547
854:              addi         a5, s6, -862
855:              srl          a4, s9, s4
                  slli         s0, a7, 15
                  blt          a5, a7, 874f
                  slli         a1, s8, 17
                  bne          t5, tp, 865f
                  sltu         sp, a0, a0
                  blt          t2, s5, 865f
                  bge          s0, s10, 866f
                  beq          s6, s7, 883f
                  andi         t1, s0, -57
865:              srli         s6, t0, 4
866:              lui          s2, 413153
                  andi         a3, tp, 993
                  srai         a7, s8, 10
                  sltu         zero, t3, a5
                  bne          s1, s3, 883f
                  sltiu        ra, t3, -925
                  or           a6, t4, a4
                  beq          t4, s10, 883f
874:              bgeu         sp, sp, 875f
875:              slti         zero, s7, -1789
                  xori         a3, s0, -489
                  sltiu        t5, t1, -329
                  beq          s6, s0, 890f
                  srl          s0, t2, t0
                  bltu         s5, a2, 886f
                  bge          s11, a3, 892f
                  addi         s6, s7, -25
883:              xori         zero, s7, -1123
                  ori          t1, s8, -365
                  lui          ra, 824553
886:              bgeu         s1, t4, 894f
                  beq          a2, zero, 896f
                  nop
                  nop
890:              srl          a5, ra, a4
                  srai         t1, s9, 14
892:              add          s8, s8, s0
                  blt          s2, s1, 896f
894:              srli         t5, gp, 8
                  bge          a4, s2, 896f
896:              sub          s1, s1, s6
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            xori         a6, a4, -1886
                  bne          sp, s1, sub_3_stack_p
                  srli         sp, s5, 14
sub_3_stack_p:    addi         a0, a0, -24
                  srai         a5, s3, 0
                  sw           ra, 4(a0)
                  or           a4, t5, s2
                  sll          sp, a2, s2
                  and          s5, s3, s4
                  nop
                  or           s10, s10, s11
                  xori         ra, s6, 603
                  nop
                  addi         s3, s10, -167
                  sltu         t4, s0, a6
                  slli         t0, t6, 17
                  addi         s3, s2, 1308
sub_3_j5:         jal          ra, sub_4 #jump sub_3 -> sub_4
sub_3_7:          jal          ra, 1f
0:                jal          t1, 3f
1:                jal          ra, 8f
2:                jal          t1, 4f
3:                jal          ra, 6f
4:                jal          ra, 0b
5:                jal          ra, 11f
6:                jal          t4, 9f
7:                jal          t1, 10f
8:                jal          ra, 2b
9:                jal          ra, 12f
10:               jal          t1, 5b
11:               jal          ra, 13f
12:               jal          ra, 7b
13:               auipc        gp, 955152
sub_3_13:         jal          ra, 18f
0:                jal          ra, 14f
1:                jal          ra, 20f
2:                jal          t1, 0b
3:                jal          a5, 1b
4:                jal          t1, 19f
5:                jal          ra, 27f
6:                jal          s8, 16f
7:                jal          s11, 9f
8:                jal          ra, 22f
9:                jal          ra, 13f
10:               jal          s8, 17f
11:               jal          s1, 12f
12:               jal          s9, 26f
13:               jal          ra, 25f
14:               jal          ra, 28f
15:               jal          ra, 23f
16:               jal          gp, 8b
17:               jal          s1, 4b
18:               jal          ra, 6b
19:               jal          ra, 15b
20:               jal          gp, 5b
21:               jal          s1, 3b
22:               jal          t1, 7b
23:               jal          ra, 21b
24:               jal          t0, 10b
25:               jal          a7, 24b
26:               jal          s0, 2b
27:               jal          s0, 11b
28:               slli         s5, a4, 22
sub_3_4:          jal          ra, 1f
0:                jal          t1, 3f
1:                jal          t1, 16f
2:                jal          t1, 11f
3:                jal          t0, 7f
4:                jal          ra, 10f
5:                jal          t1, 6f
6:                jal          t1, 9f
7:                jal          ra, 17f
8:                jal          ra, 14f
9:                jal          ra, 4b
10:               jal          a5, 13f
11:               jal          ra, 5b
12:               jal          s1, 0b
13:               jal          tp, 12b
14:               jal          ra, 15f
15:               jal          t1, 2b
16:               jal          ra, 8b
17:               sltu         a3, t6, gp
sub_3_18:         jal          ra, 10f
0:                jal          ra, 3f
1:                jal          a1, 11f
2:                jal          t1, 4f
3:                jal          ra, 9f
4:                jal          ra, 8f
5:                jal          t1, 0b
6:                jal          ra, 5b
7:                jal          s9, 1b
8:                jal          t1, 6b
9:                jal          t1, 7b
10:               jal          t1, 2b
11:               sll          a4, a6, zero
sub_3_1:          jal          ra, 8f
0:                jal          ra, 1f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          t1, 10f
4:                jal          ra, 0b
5:                jal          ra, 6f
6:                jal          t1, 7f
7:                jal          t1, 4b
8:                jal          gp, 2b
9:                jal          sp, 5b
10:               andi         s2, t0, -1610
sub_3_5:          jal          ra, 20f
0:                jal          s8, 11f
1:                jal          t1, 15f
2:                jal          ra, 0b
3:                jal          a3, 7f
4:                jal          gp, 16f
5:                jal          t4, 18f
6:                jal          tp, 21f
7:                jal          ra, 2b
8:                jal          gp, 28f
9:                jal          a3, 5b
10:               jal          t1, 26f
11:               jal          ra, 24f
12:               jal          ra, 23f
13:               jal          t6, 4b
14:               jal          t1, 1b
15:               jal          tp, 22f
16:               jal          t1, 14b
17:               jal          ra, 12b
18:               jal          t5, 8b
19:               jal          s2, 25f
20:               jal          t3, 27f
21:               jal          t0, 9b
22:               jal          t1, 17b
23:               jal          ra, 19b
24:               jal          t1, 10b
25:               jal          s6, 3b
26:               jal          ra, 6b
27:               jal          s3, 13b
28:               xor          zero, t4, a1
sub_3_12:         jal          ra, 7f
0:                jal          ra, 8f
1:                jal          tp, 11f
2:                jal          t1, 9f
3:                jal          t1, 5f
4:                jal          ra, 6f
5:                jal          ra, 4b
6:                jal          t1, 2b
7:                jal          ra, 3b
8:                jal          s3, 10f
9:                jal          ra, 0b
10:               jal          s7, 1b
11:               srl          s5, s4, s6
sub_3_0:          jal          ra, 10f
0:                jal          ra, 12f
1:                jal          a7, 11f
2:                jal          ra, 7f
3:                jal          t1, 6f
4:                jal          t0, 0b
5:                jal          ra, 4b
6:                jal          t6, 5b
7:                jal          a4, 3b
8:                jal          ra, 14f
9:                jal          s0, 13f
10:               jal          ra, 9b
11:               jal          ra, 8b
12:               jal          sp, 15f
13:               jal          ra, 1b
14:               jal          ra, 2b
15:               jal          sp, 16f
16:               lui          s10, 242179
sub_3_9:          jal          ra, 4f
0:                jal          s7, 14f
1:                jal          a4, 9f
2:                jal          sp, 8f
3:                jal          s11, 2b
4:                jal          ra, 16f
5:                jal          t1, 3b
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          ra, 1b
9:                jal          tp, 0b
10:               jal          t1, 7b
11:               jal          a6, 6b
12:               jal          ra, 15f
13:               jal          t1, 17f
14:               jal          s9, 11b
15:               jal          ra, 10b
16:               jal          ra, 12b
17:               lui          t4, 727009
sub_3_6:          jal          ra, 6f
0:                jal          tp, 15f
1:                jal          ra, 27f
2:                jal          ra, 10f
3:                jal          ra, 12f
4:                jal          t1, 11f
5:                jal          gp, 19f
6:                jal          s5, 22f
7:                jal          ra, 5b
8:                jal          a7, 13f
9:                jal          ra, 4b
10:               jal          s2, 25f
11:               jal          sp, 21f
12:               jal          a3, 24f
13:               jal          ra, 1b
14:               jal          ra, 9b
15:               jal          t1, 16f
16:               jal          ra, 2b
17:               jal          t1, 20f
18:               jal          ra, 3b
19:               jal          ra, 0b
20:               jal          t6, 7b
21:               jal          t1, 23f
22:               jal          t1, 17b
23:               jal          t1, 18b
24:               jal          ra, 8b
25:               jal          ra, 26f
26:               jal          a6, 14b
27:               lui          s6, 216770
sub_3_15:         jal          ra, 7f
0:                jal          ra, 9f
1:                jal          ra, 12f
2:                jal          ra, 8f
3:                jal          s7, 18f
4:                jal          ra, 1b
5:                jal          t1, 15f
6:                jal          t1, 17f
7:                jal          ra, 2b
8:                jal          s3, 6b
9:                jal          ra, 5b
10:               jal          gp, 0b
11:               jal          ra, 10b
12:               jal          ra, 19f
13:               jal          ra, 27f
14:               jal          t1, 3b
15:               jal          t1, 20f
16:               jal          s6, 28f
17:               jal          ra, 26f
18:               jal          s8, 29f
19:               jal          ra, 11b
20:               jal          sp, 14b
21:               jal          t1, 25f
22:               jal          t6, 16b
23:               jal          ra, 4b
24:               jal          ra, 23b
25:               jal          ra, 24b
26:               jal          ra, 22b
27:               jal          ra, 21b
28:               jal          t1, 13b
29:               slli         zero, t2, 8
sub_3_11:         jal          ra, 8f
0:                jal          t1, 14f
1:                jal          t1, 21f
2:                jal          t1, 24f
3:                jal          t1, 19f
4:                jal          ra, 22f
5:                jal          ra, 23f
6:                jal          s7, 26f
7:                jal          ra, 20f
8:                jal          ra, 3b
9:                jal          ra, 4b
10:               jal          ra, 12f
11:               jal          ra, 15f
12:               jal          ra, 17f
13:               jal          t3, 11b
14:               jal          ra, 5b
15:               jal          ra, 6b
16:               jal          ra, 13b
17:               jal          ra, 0b
18:               jal          t1, 25f
19:               jal          ra, 10b
20:               jal          t2, 1b
21:               jal          ra, 18b
22:               jal          t1, 16b
23:               jal          s8, 2b
24:               jal          t1, 7b
25:               jal          t1, 9b
26:               or           a3, a0, t3
sub_3_2:          jal          ra, 8f
0:                jal          ra, 11f
1:                jal          ra, 5f
2:                jal          s8, 1b
3:                jal          ra, 2b
4:                jal          ra, 0b
5:                jal          ra, 7f
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          s0, 10f
9:                jal          ra, 4b
10:               jal          t0, 6b
11:               srl          t1, zero, s10
sub_3_8:          jal          ra, 19f
0:                jal          gp, 4f
1:                jal          t1, 9f
2:                jal          gp, 1b
3:                jal          ra, 6f
4:                jal          ra, 16f
5:                jal          ra, 18f
6:                jal          sp, 10f
7:                jal          ra, 22f
8:                jal          ra, 11f
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          t5, 7b
12:               jal          ra, 23f
13:               jal          s6, 2b
14:               jal          s7, 13b
15:               jal          ra, 5b
16:               jal          ra, 17f
17:               jal          a5, 21f
18:               jal          ra, 20f
19:               jal          ra, 14b
20:               jal          t1, 24f
21:               jal          ra, 15b
22:               jal          ra, 3b
23:               jal          s1, 0b
24:               xori         s9, s11, 440
sub_3_17:         jal          ra, 16f
0:                jal          t1, 20f
1:                jal          ra, 9f
2:                jal          t1, 8f
3:                jal          t1, 19f
4:                jal          a3, 10f
5:                jal          t4, 15f
6:                jal          sp, 13f
7:                jal          ra, 21f
8:                jal          t4, 3b
9:                jal          t1, 7b
10:               jal          tp, 11f
11:               jal          t1, 1b
12:               jal          t1, 2b
13:               jal          ra, 22f
14:               jal          t1, 0b
15:               jal          s3, 17f
16:               jal          ra, 18f
17:               jal          a4, 14b
18:               jal          ra, 12b
19:               jal          t0, 5b
20:               jal          t2, 4b
21:               jal          t1, 6b
22:               add          ra, a2, gp
sub_3_16:         jal          ra, 18f
0:                jal          ra, 22f
1:                jal          ra, 17f
2:                jal          ra, 8f
3:                jal          ra, 16f
4:                jal          ra, 15f
5:                jal          a1, 12f
6:                jal          ra, 2b
7:                jal          ra, 19f
8:                jal          t0, 10f
9:                jal          gp, 6b
10:               jal          ra, 20f
11:               jal          sp, 23f
12:               jal          s6, 0b
13:               jal          ra, 5b
14:               jal          t0, 11b
15:               jal          ra, 1b
16:               jal          t1, 13b
17:               jal          t1, 25f
18:               jal          t3, 3b
19:               jal          t1, 24f
20:               jal          ra, 4b
21:               jal          ra, 9b
22:               jal          t2, 7b
23:               jal          ra, 21b
24:               jal          ra, 14b
25:               slli         zero, s7, 27
                  slt          t3, sp, sp
                  srli         a7, zero, 7
                  ori          s3, s2, -1172
                  bne          a0, s10, 9f
                  bgeu         s1, sp, 14f
                  srai         a5, t5, 11
                  sub          t3, s10, t4
                  bltu         ra, s9, 20f
                  ori          sp, s5, 1492
9:                sltu         a3, s3, a1
                  srai         gp, s2, 17
                  nop
                  sltiu        s1, gp, 352
                  ori          a7, a6, 581
14:               bne          s5, t0, 34f
                  xori         t0, s8, -1568
                  ori          ra, t2, 1100
                  srl          zero, t0, t1
                  bne          tp, a0, 25f
                  andi         t6, t5, 1097
20:               xor          s0, s10, s11
                  sub          a4, s8, s5
                  slli         s10, a7, 19
                  bge          a5, s7, 31f
                  sltiu        t6, t0, 1106
25:               lui          zero, 1043460
                  bne          s6, s7, 28f
                  slt          s3, s1, s1
28:               slti         t6, s2, -100
                  slli         a5, s4, 5
                  sltiu        a1, s0, 631
31:               srli         a7, s0, 27
                  bgeu         ra, s10, 51f
                  sltu         zero, ra, t3
34:               sub          t0, t3, zero
                  xori         tp, s5, 587
                  bge          s7, s2, 42f
                  srai         a3, s1, 14
                  bne          t2, t0, 42f
                  bne          t1, t1, 55f
                  xori         a6, t4, 1223
                  blt          s5, t5, 48f
42:               srai         a1, s2, 7
                  srai         gp, t3, 13
                  sltu         ra, s6, a1
                  bne          s3, s0, 57f
                  ori          s10, a0, -1276
                  or           a5, a0, s9
48:               srl          ra, s2, s5
                  auipc        s6, 120989
                  sltiu        s9, t1, -1174
51:               beq          zero, s4, 69f
                  lui          gp, 642105
                  add          tp, tp, a4
                  sltiu        a4, a4, -1984
55:               add          s6, s7, t4
                  srai         s7, sp, 7
57:               add          t0, zero, a5
                  andi         s11, a1, -292
                  srl          s2, s3, zero
                  ori          s1, s0, 166
                  nop
                  xor          t0, s0, s1
                  bge          tp, tp, 72f
                  bgeu         s0, t0, 79f
                  blt          s9, s9, 78f
                  xori         tp, a3, 805
                  and          zero, s6, s9
                  add          t5, t1, s7
69:               srai         t5, sp, 30
                  srl          s2, s8, a5
                  sub          t4, tp, tp
72:               and          a1, a4, a6
                  nop
                  ori          ra, s11, -645
                  ori          sp, s1, -1779
                  and          a6, gp, s3
                  sra          s0, zero, t2
78:               addi         s1, s1, 195
79:               sra          s11, s11, a2
                  sra          ra, t4, tp
                  bne          s11, s0, 100f
                  auipc        s5, 572921
                  blt          t0, a1, 98f
                  and          sp, tp, s0
                  or           s6, s11, s3
sub_3_3:          jal          ra, 16f
0:                jal          s8, 21f
1:                jal          ra, 18f
2:                jal          ra, 24f
3:                jal          s6, 5f
4:                jal          t0, 25f
5:                jal          ra, 13f
6:                jal          t1, 3b
7:                jal          ra, 14f
8:                jal          t1, 2b
9:                jal          t2, 12f
10:               jal          ra, 22f
11:               jal          tp, 9b
12:               jal          ra, 6b
13:               jal          ra, 0b
14:               jal          s11, 17f
15:               jal          ra, 4b
16:               jal          t1, 19f
17:               jal          ra, 8b
18:               jal          ra, 15b
19:               jal          gp, 7b
20:               jal          ra, 11b
21:               jal          t1, 23f
22:               jal          t0, 1b
23:               jal          ra, 10b
24:               jal          tp, 20b
25:               xor          a7, s6, a0
                  slt          s0, t0, s2
                  or           ra, a0, a4
                  auipc        t3, 865062
                  or           s10, a4, s9
                  srai         t2, a7, 23
                  srli         s1, s2, 9
                  sltiu        t6, s9, -1473
                  slt          s2, a7, t2
                  slti         s1, s11, -417
                  or           a3, s8, a6
                  sub          s6, s10, s3
                  beq          a7, s8, 116f
98:               slti         s1, s5, 261
                  auipc        gp, 611227
100:              beq          s2, s6, 115f
                  srl          gp, zero, s2
                  slti         s2, s0, -1944
                  xor          s6, s4, a5
                  sltu         s7, gp, s7
                  srl          a3, a4, a5
                  srl          s0, a7, s2
                  sltu         s0, sp, t5
                  srl          s11, t3, zero
                  bltu         s1, a0, 113f
                  srai         s7, t0, 3
                  slti         a5, s11, 1084
                  and          s0, a0, a6
113:              slt          zero, gp, s11
                  xor          sp, a1, s11
115:              bne          ra, s8, 120f
116:              beq          a3, s8, 122f
                  nop
                  ori          s8, s2, -957
                  bge          tp, s5, 129f
120:              ori          a1, s10, 1081
                  sltu         s3, a7, t5
122:              bltu         t1, t1, 128f
                  ori          t2, t1, 1328
                  sra          t4, s3, s2
                  andi         s8, t6, -281
                  xor          s3, s11, s8
                  auipc        tp, 388717
128:              slti         s8, a0, 1639
129:              slti         s8, sp, -1387
                  slt          t5, t1, t5
                  sra          s2, a2, a5
                  and          t5, s7, s6
                  slt          s5, a2, sp
                  ori          a5, t4, -716
                  nop
                  ori          s9, s0, 1251
                  bge          s1, t5, sub_3_j6 #branch to jump instr
                  xor          t3, t6, sp
                  sltiu        s1, t2, 454
                  nop
sub_3_j6:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  nop
                  auipc        a4, 876029
                  sltiu        t4, t1, 1216
                  andi         s7, s5, 1153
                  slli         a5, a1, 26
                  sltiu        a4, a4, 568
                  srli         a6, a5, 24
                  addi         gp, a4, 442
                  and          t6, s10, a6
                  xori         sp, a0, 579
                  srai         t0, a6, 21
                  srai         s2, a0, 25
                  ori          t3, s9, -74
                  bge          t2, gp, 145f
145:              slti         a1, a2, 401
                  and          t5, s9, sp
                  slti         s6, a3, 1299
                  nop
                  bge          ra, a4, 152f
                  sltu         s11, t0, t6
                  nop
152:              srli         t5, a1, 28
                  beq          t2, s3, 157f
                  sll          a1, s0, a5
                  srli         s10, s1, 26
                  auipc        t0, 197765
157:              andi         ra, a1, -376
                  sll          t1, a3, t4
                  auipc        s3, 996086
                  auipc        zero, 160610
                  slti         s8, a3, -548
                  srl          a7, a5, s0
                  and          tp, s10, t1
                  bne          t6, t0, 167f
                  xor          a5, tp, s5
                  lui          t6, 323290
167:              slli         t2, s0, 6
                  srl          a4, t2, gp
                  sub          t0, ra, t2
                  srai         tp, a7, 23
                  slt          s7, a5, t3
                  andi         t6, s1, -1640
                  andi         a5, s7, -55
                  bge          t1, s6, 177f
                  nop
                  bgeu         ra, a6, 189f
177:              slt          t2, t0, s3
                  sra          s2, a5, a7
                  addi         s10, t0, -129
                  bltu         s6, a1, 184f
                  srli         s5, t5, 10
                  bgeu         zero, a4, 185f
                  bge          a6, t4, 189f
184:              andi         s5, s5, 1649
185:              andi         t1, a0, -1220
                  addi         t1, t4, -250
                  bgeu         t2, a2, 202f
                  addi         s11, sp, -1235
189:              blt          gp, s7, 208f
                  bltu         s9, t3, 191f
191:              andi         zero, zero, 428
                  ori          s1, ra, -1596
                  slli         s6, s1, 26
                  xor          t3, s10, a0
                  slt          sp, ra, a0
                  or           a1, s10, a4
                  xor          s11, tp, s4
                  xori         a6, s6, 1004
                  nop
                  slt          zero, s1, s9
                  bgeu         zero, a4, 211f
202:              addi         a5, t6, -1783
                  auipc        s1, 789816
                  slt          a5, a1, a5
                  slt          t5, s5, a3
                  srai         gp, t0, 22
                  blt          s10, a7, 220f
208:              sll          ra, t3, t2
                  bgeu         a6, t5, 219f
                  ori          a3, a1, -1354
211:              xori         t0, s11, -462
                  auipc        s3, 989214
                  sub          a6, s6, s5
                  bgeu         t3, a5, 221f
                  sra          s8, t6, s0
                  add          s1, a4, s1
                  and          t0, t2, gp
                  and          a4, a7, s3
219:              sra          s7, s3, a6
220:              srli         a6, a6, 22
221:              srai         s1, a3, 27
                  srl          a5, a4, sp
                  andi         a1, a6, 563
                  add          zero, s7, s6
                  slti         s1, t1, 658
                  lui          s5, 271625
                  sra          gp, s10, s4
                  slt          gp, s4, a1
                  beq          a0, s5, 248f
                  bge          a1, a6, 248f
                  sll          a7, s7, a6
                  nop
                  xor          a6, t6, zero
                  xori         s5, a7, 1433
                  blt          s1, s9, 241f
                  and          s2, a3, ra
                  nop
                  sltu         gp, t2, a6
                  bltu         t2, gp, 255f
                  slli         s6, s2, 1
241:              srl          t2, s7, zero
                  sub          s1, s0, zero
                  bge          zero, s4, 251f
                  srli         a1, a5, 26
                  sltiu        s0, tp, -947
                  nop
                  addi         s5, t0, -1509
248:              addi         s5, t6, 1840
                  sra          ra, s6, a0
                  and          t2, t6, s0
251:              addi         s3, a5, 1183
                  srai         s5, tp, 6
                  slt          gp, t2, t5
                  beq          s0, s11, 260f
255:              bltu         a7, s5, 259f
                  sltiu        gp, a0, 150
                  sltiu        s1, s5, -1086
                  and          s3, tp, a5
259:              beq          s8, s1, 264f
260:              add          a4, a7, s0
                  auipc        t5, 950550
                  andi         sp, a1, -1710
                  andi         t6, a7, 1703
264:              sub          s2, s4, ra
                  slli         a7, s10, 15
                  sll          t5, s5, zero
                  sub          s10, s6, sp
                  slli         t1, a7, 19
                  beq          sp, a5, 288f
                  and          s7, t4, ra
                  addi         a6, gp, -471
                  andi         s11, a5, -1264
                  sltu         s7, s8, a3
                  beq          a3, a3, 286f
                  bne          s5, s11, 290f
                  slti         s2, s2, 84
                  srli         tp, t1, 31
                  sll          s9, s2, s6
                  bltu         t0, t2, 299f
                  slli         t2, t2, 31
                  srai         a1, s2, 30
                  bne          sp, a1, 289f
                  bge          a6, s10, 289f
                  sub          t4, s2, t4
                  auipc        a5, 762367
286:              sltu         s8, s0, gp
                  bge          s7, a0, 302f
288:              sltu         gp, ra, t4
289:              ori          s5, s5, -1714
290:              sll          t0, a5, s8
                  slli         t2, s0, 17
                  andi         t6, t2, 1434
                  srl          t0, s1, a0
                  bge          s1, t3, 298f
                  srl          t6, ra, a5
                  beq          sp, s8, 298f
                  xori         s0, t4, -1845
298:              sra          t4, sp, t5
299:              srli         s10, t4, 6
                  nop
                  srl          t4, s3, t2
302:              slt          t3, sp, t2
                  addi         a4, t5, -706
                  slt          zero, s2, s11
                  slti         s10, s3, -1235
                  and          s2, s8, t5
                  lui          t5, 372675
                  beq          a0, a2, 317f
                  bge          a5, a2, 328f
                  add          t6, a3, t3
                  sub          s8, s3, gp
                  add          s8, s7, t0
                  addi         a7, s8, -1736
                  xor          s8, s3, t6
                  lui          s0, 644232
                  srai         s11, tp, 23
317:              ori          gp, s6, 1446
                  sltu         a7, s5, ra
                  nop
                  nop
                  ori          s6, s1, -1430
                  srai         s6, tp, 25
                  sra          s9, ra, a5
                  auipc        a3, 194449
                  nop
                  srai         a1, s0, 7
                  auipc        t5, 426681
328:              sub          gp, s7, s5
                  sll          s3, s8, zero
                  srli         s5, t3, 5
                  xor          ra, t3, s11
                  and          t5, t1, s3
                  sltiu        t1, s2, 835
                  sra          t5, s5, a4
                  slti         a6, a7, 582
                  and          s3, a7, s3
                  sltu         s0, t2, a3
                  sub          gp, t6, s8
                  add          t2, gp, s5
                  add          t0, s1, t3
                  bge          a3, s5, 359f
                  blt          t4, s5, 348f
                  bltu         s7, s7, 353f
                  blt          s6, s11, 364f
                  lui          t3, 982902
                  lui          t6, 475931
                  slti         a5, sp, 1305
348:              bgeu         t0, a6, 356f
                  and          a7, s7, a5
                  srl          s0, t4, tp
                  ori          t1, a3, 1091
                  or           s5, a0, s10
353:              slt          s1, t1, t6
                  andi         t5, t1, -1812
                  sub          zero, s9, a6
356:              nop
                  bltu         ra, s2, 361f
                  andi         zero, a3, -480
359:              lui          sp, 312678
                  slti         a4, t0, 1621
361:              sra          t3, t1, t1
                  blt          a1, a7, 368f
                  bgeu         a0, t1, 369f
364:              bge          s3, t3, 379f
                  slli         a4, t3, 0
                  srli         ra, zero, 6
                  and          s8, t2, t3
368:              or           t5, s9, s6
369:              sltu         s7, zero, a6
                  nop
                  xor          t1, t4, a4
                  slt          ra, gp, ra
                  or           t6, a3, a0
                  slli         s9, s8, 8
                  sra          t6, s1, s9
                  lui          s8, 862693
                  lui          a1, 1048461
                  srl          s1, a4, s3
379:              slt          s5, s0, ra
                  sll          t0, t5, s1
                  xor          t3, s5, s1
                  beq          a1, s7, 401f
                  srai         a5, tp, 28
                  xor          s2, t1, gp
                  and          s1, a6, a6
                  nop
                  lui          s3, 596676
                  sub          zero, t1, s8
                  bne          a0, a1, 396f
                  sll          a7, t4, s11
                  slli         s7, s8, 12
                  sltu         t0, a1, gp
                  sub          a5, a0, sp
                  bltu         t6, a3, 395f
395:              sub          a7, sp, s0
396:              slti         s0, a5, 2019
                  sub          s5, s5, a2
                  slli         sp, t1, 2
                  ori          zero, s2, 1755
                  or           t5, s6, a7
401:              lui          s1, 359464
                  bne          s8, s4, 414f
                  and          s0, s11, tp
                  srai         t2, t0, 26
                  bge          s6, s8, 418f
                  slli         sp, s0, 16
                  nop
                  or           s5, zero, zero
                  bne          s6, s9, 425f
                  srl          t3, s8, s10
                  addi         tp, t0, 1259
                  auipc        a3, 44719
                  sltu         t5, gp, tp
414:              sll          s0, s6, a5
                  bgeu         t6, t5, 430f
                  bne          t6, ra, 435f
                  beq          s5, zero, 421f
418:              add          a5, t2, ra
                  bne          a6, s6, 428f
                  addi         t3, s10, -289
421:              blt          t3, a1, 436f
                  srli         s8, zero, 20
                  slti         s0, a6, -1780
                  bltu         s6, t0, 431f
425:              sltiu        ra, a3, 1725
                  slti         s10, s11, -327
                  sltu         s7, s7, s0
428:              slti         s5, a7, -1882
                  auipc        a4, 571063
430:              xor          s0, ra, s7
431:              slti         a4, s5, 696
                  srl          sp, s5, t2
                  slti         t2, a2, -1131
                  auipc        a3, 143023
435:              bge          a7, s5, 438f
436:              slti         t2, s9, 63
                  or           a7, s0, s2
438:              sra          zero, ra, s8
                  srl          t4, a4, tp
                  slli         gp, s6, 10
                  addi         zero, gp, 1745
                  blt          a0, s11, 446f
                  slti         a1, t2, 1644
                  andi         zero, sp, 438
                  blt          a0, t3, 450f
446:              blt          s1, a6, 452f
                  bltu         s0, t3, 450f
                  andi         s6, ra, 566
                  ori          s2, a5, 1169
450:              addi         s1, t2, 910
                  addi         t5, a4, 960
452:              srai         tp, t0, 21
                  sltiu        s8, sp, -1311
                  xori         a3, s1, 589
                  auipc        a6, 586341
                  srl          tp, t5, a4
                  sub          zero, s8, t0
                  lui          a7, 806844
                  addi         t6, s10, 183
                  xori         a6, s11, -38
                  bgeu         t5, t6, 463f
                  auipc        s7, 643110
463:              srai         t5, a0, 8
                  xori         a5, t0, 356
                  xori         s8, s8, -139
                  sll          a4, t1, t1
                  addi         s7, t3, 1410
                  xori         gp, s11, 82
                  bltu         s10, a1, 479f
                  bltu         s0, t0, 483f
                  srli         s2, s0, 19
                  add          s2, zero, s5
                  lui          a5, 801652
                  ori          t6, a3, -1048
                  bne          zero, t4, 479f
                  sltiu        gp, t3, -742
                  beq          t2, a2, 479f
                  bltu         s11, s5, 497f
479:              ori          s3, zero, -613
                  slli         a1, t2, 0
                  addi         t1, s1, 942
                  blt          s2, t6, 488f
483:              andi         a3, zero, -258
                  beq          t4, a7, 490f
                  and          s6, t4, s2
                  beq          s0, a3, 493f
                  bne          s3, t5, 505f
488:              beq          zero, a5, 508f
                  slt          s7, s5, t1
490:              bgeu         ra, s6, 491f
491:              nop
                  addi         a6, s2, 1369
493:              srl          t1, zero, t5
                  xori         s7, s4, 1737
                  slti         sp, t3, -217
                  xor          t2, t1, s0
497:              blt          s2, t1, 503f
                  xor          s1, t0, gp
                  srl          s6, t3, s6
                  blt          t6, tp, 509f
                  slt          t3, s5, a1
                  or           s5, gp, s2
503:              sltiu        t5, a7, 1913
                  bge          s9, ra, 520f
505:              bge          s8, s10, 524f
                  or           tp, a5, a3
                  ori          a1, s2, -1577
508:              sub          t3, s0, s5
509:              slt          s11, tp, t1
                  auipc        t2, 4704
                  slti         s7, s4, -1925
                  nop
                  addi         s8, t3, -503
                  slt          s5, zero, a7
                  and          t0, s5, s3
                  nop
                  xori         s3, t6, 1620
                  slt          zero, t3, a4
                  sub          s11, a2, s7
520:              add          s2, s9, gp
                  sltu         s6, s5, s6
                  sltiu        a6, zero, 1068
                  auipc        t3, 860852
524:              xori         gp, gp, -1253
                  add          s7, s10, a5
                  or           ra, s11, s0
                  bltu         s2, tp, 539f
                  nop
                  sll          t5, s9, a1
                  srai         a1, a6, 14
                  andi         tp, a6, 820
                  sltu         zero, a2, a7
                  bge          t2, s8, 536f
                  bge          s11, a5, 539f
                  andi         t2, s9, -722
536:              slti         t2, t3, -1602
                  slt          a7, t3, s11
                  sub          a1, t1, s1
539:              or           sp, zero, t3
                  ori          a3, s11, -56
                  srli         s3, t3, 3
                  xori         sp, t4, 1623
                  bne          tp, ra, 550f
                  add          t4, a2, a4
                  bge          a2, s6, 553f
                  sltu         s8, a1, t5
                  andi         s7, a2, -1232
                  srai         t4, s11, 13
                  sll          s1, t2, t5
550:              srai         s1, zero, 13
                  addi         a3, a5, -970
                  or           t4, gp, a7
553:              slti         s6, a2, -1676
                  xor          t5, s7, s7
                  slt          a4, sp, a2
                  lui          tp, 185660
                  sltiu        s7, a5, 807
                  lui          tp, 307419
                  sub          tp, s2, t3
                  add          s6, a3, a1
                  add          s6, ra, s5
                  bge          s9, a2, 575f
                  or           s2, t3, a2
                  slli         s7, a5, 25
                  ori          s8, s1, 529
                  and          t0, zero, a2
                  bge          s4, a1, 577f
                  and          a4, s9, s4
                  sltu         t5, a3, a1
                  auipc        zero, 720849
                  srl          t6, sp, s7
                  srl          s6, sp, s3
                  addi         ra, s9, 922
                  bgeu         t0, s6, 578f
575:              xor          t6, ra, s2
                  xor          tp, sp, a1
577:              ori          a4, s3, 923
578:              addi         t4, a7, 1362
                  sll          s5, s6, s10
                  xor          t4, s2, s6
                  andi         s8, ra, 1690
                  slt          s6, t5, s1
                  andi         s10, s7, 1439
                  beq          s10, t2, 594f
                  sltiu        a5, t2, 1526
                  nop
                  sub          s5, t1, s2
                  sra          s1, t3, s2
                  or           a5, sp, tp
                  bgeu         s4, zero, 596f
                  slli         s6, s3, 22
                  add          sp, t2, s9
                  ori          a3, s3, -1315
594:              xori         s1, a5, -242
                  bgeu         a1, ra, 598f
596:              slli         t5, s3, 29
                  bge          s7, t1, 612f
598:              ori          s10, s7, -46
                  xori         s3, t6, 1036
                  srl          sp, s7, t1
                  bge          s0, ra, 614f
                  bge          a7, t4, 617f
                  andi         t3, ra, -1458
                  sub          t4, s6, s9
                  andi         s8, a4, 24
                  sltiu        s8, a0, -1742
                  xori         t2, a7, 467
                  or           s1, a4, s8
                  bgeu         t6, s0, 613f
                  addi         t5, s11, -1434
                  bltu         s7, a2, 630f
612:              andi         s10, s5, 803
613:              auipc        s11, 764601
614:              lui          ra, 917681
                  srl          s10, s1, s6
                  slt          ra, s7, t0
617:              srl          s1, s4, a1
                  bge          a6, t4, 633f
                  sltu         t3, s8, sp
                  srl          s11, s4, a3
                  xor          s7, a7, a6
                  blt          t5, s9, 641f
                  add          zero, a2, a7
                  sub          a4, s7, a4
                  sra          s8, s6, s10
                  auipc        zero, 703960
                  add          a7, sp, s9
                  xor          a7, a7, s5
                  sll          s9, tp, tp
630:              slli         a7, gp, 4
                  slt          s6, s11, s8
                  bge          t5, zero, 639f
633:              srai         t0, s6, 4
                  or           s5, gp, tp
                  blt          t4, t6, 647f
                  sltiu        s7, ra, 1280
                  slti         s7, a5, -1880
                  sltiu        a1, s11, -1077
639:              xor          a7, s0, a6
                  sra          s5, gp, t6
641:              add          a6, t2, a0
                  blt          gp, t4, 645f
                  bgeu         t1, t5, 647f
                  addi         s10, tp, -898
645:              and          sp, ra, sp
                  bltu         t2, t5, 648f
647:              add          s7, t3, a6
648:              slti         t4, a2, -215
                  or           t3, s8, a2
                  auipc        tp, 429586
                  slti         zero, a3, 261
                  ori          s5, sp, 66
                  sltiu        s7, t4, 2003
                  nop
                  blt          a7, s2, 665f
                  and          s9, a5, tp
                  bne          a3, t2, 670f
                  srai         s9, a5, 25
                  sltu         t4, t6, s9
                  slt          t5, zero, gp
                  or           s11, s6, ra
                  srl          s3, s11, s6
                  beq          s3, a7, 668f
                  srl          s8, a3, zero
665:              andi         s10, a7, 123
                  srl          a7, s3, ra
                  bge          t3, s1, 673f
668:              blt          t2, s11, 671f
                  srli         s11, s9, 0
670:              lui          a6, 891009
671:              or           t0, tp, s11
                  and          s11, t2, zero
673:              nop
                  bne          t2, a6, 693f
                  xori         s0, s3, -2044
                  xori         s5, s8, 439
                  nop
                  slt          a6, s0, s9
                  srli         s10, a1, 7
                  nop
                  bne          s7, s0, 697f
                  xor          s3, t3, t3
                  srli         s2, t1, 26
                  slti         t1, zero, 680
                  xori         t2, a7, -414
                  and          sp, gp, t2
                  and          s9, gp, s4
                  add          t5, s4, s1
                  slti         s1, a0, -1016
                  sra          a7, t6, s8
                  bge          ra, a6, 711f
                  sltu         s6, s6, t3
693:              srl          s10, t2, a6
                  sltu         s10, ra, s11
                  blt          a3, t5, 701f
                  blt          s1, s4, 702f
697:              xori         a3, a5, -9
                  andi         t5, s1, 759
                  slti         t0, a3, 1922
                  auipc        s7, 449628
701:              srai         t2, ra, 28
702:              xor          gp, gp, a3
                  auipc        a7, 749483
                  auipc        tp, 961909
                  bltu         s8, a7, 714f
                  nop
                  add          s0, t5, s9
                  bltu         t1, a5, 723f
                  beq          s0, t1, 716f
                  bne          t4, s7, 728f
711:              add          gp, a5, t3
                  sltiu        s7, s6, -93
                  sltiu        zero, t2, -1178
714:              or           ra, ra, a7
                  beq          a2, a7, 730f
716:              bge          s8, ra, 720f
                  slli         t4, zero, 17
                  bne          a1, a6, 733f
                  auipc        s9, 159740
720:              beq          t6, s0, 726f
                  nop
                  srai         t4, a1, 12
723:              sltu         t6, s5, t3
                  srli         t5, sp, 25
                  bne          ra, s2, 744f
726:              nop
                  srli         a4, a3, 22
728:              sltu         s10, s9, a5
                  andi         t2, s10, 1013
730:              sub          t4, t6, s6
                  srl          zero, a5, t0
                  xori         s2, s11, -512
733:              bltu         a1, s0, 746f
                  srli         a1, s5, 21
                  lui          zero, 417585
                  sll          t3, s4, t6
                  add          s2, zero, s9
                  bgeu         a5, t0, 742f
                  slli         a4, s3, 23
                  srl          t5, a5, a6
                  beq          s0, s9, 751f
742:              addi         t1, a7, -1203
                  xor          t0, sp, a5
744:              nop
                  srli         s0, s6, 9
746:              ori          a7, s11, -1613
                  sll          a1, s10, sp
                  srl          zero, gp, a6
                  srai         s3, s2, 5
                  srai         a4, t5, 27
751:              slti         a5, a7, 941
                  srai         t2, a7, 10
                  xor          t5, s2, s5
                  bge          t3, t6, 762f
                  auipc        t6, 286588
                  sra          s2, s3, a3
                  sll          a3, t1, gp
                  sltiu        t3, a1, 856
                  srli         s2, a1, 21
                  xor          ra, tp, s2
                  bge          s5, a7, 762f
762:              sltiu        a4, s3, 194
                  sll          s11, ra, sp
                  slli         a7, t3, 31
                  sra          t3, gp, s0
                  bltu         tp, a6, 775f
                  srai         a6, a6, 11
                  bge          s8, a3, 783f
                  or           t0, a5, s6
                  nop
                  srli         s2, a3, 22
                  sltiu        s11, tp, 579
                  ori          t6, s9, -23
                  sltu         s7, s10, t1
775:              beq          s2, t6, 790f
                  slt          s7, s2, t5
                  or           t4, t4, t3
                  lui          t4, 904482
                  ori          ra, sp, -1013
                  auipc        a7, 558315
                  ori          ra, tp, 1190
                  blt          s7, s5, 790f
783:              slli         t1, a2, 8
                  bltu         a3, a4, 791f
                  blt          s0, s7, 789f
                  lui          s10, 579447
                  slli         s11, s3, 16
                  andi         s8, t3, -1103
789:              slli         t1, s9, 16
790:              sltu         a1, s7, t2
791:              bltu         t6, t5, 797f
                  addi         s3, t2, -1434
                  sub          t4, t6, a2
                  ori          a6, s7, -446
                  sltiu        s1, s11, -424
                  add          ra, zero, s10
797:              addi         a1, t6, -134
                  bltu         a3, a2, 803f
                  xori         tp, s0, -841
                  sra          s9, a2, s2
                  sub          ra, s8, s11
                  srli         a7, s9, 24
803:              add          s3, a1, a5
                  auipc        t5, 1041386
                  sra          s10, t2, a4
                  add          sp, t6, s8
                  sub          zero, t3, t3
                  bltu         t6, t0, 812f
                  add          s1, zero, a6
                  lui          s2, 117526
                  ori          s1, a4, 1182
812:              slt          a1, t0, ra
                  beq          t6, s0, 814f
814:              xori         s7, a3, 1471
                  nop
                  nop
                  sub          s7, ra, a7
                  bltu         sp, a5, 821f
                  bne          t4, gp, 829f
                  and          a1, s10, a4
821:              sltu         s11, gp, s8
                  ori          s2, s1, 1043
                  bge          a1, t0, 843f
                  auipc        a1, 177228
                  sra          s6, tp, t4
                  slti         s5, a6, -1923
                  and          s7, t3, a2
                  andi         s10, s6, 790
829:              srli         s5, t0, 26
                  xor          s10, a2, a4
                  srli         a5, gp, 21
                  blt          t4, s7, 839f
                  nop
                  sltu         a5, a5, s2
                  srli         s10, zero, 3
                  srli         a5, zero, 25
                  srl          a3, t3, a6
                  bge          s11, a3, 844f
839:              nop
                  srl          a7, t1, t3
                  bgeu         s2, s10, 859f
                  slli         t6, t0, 20
843:              blt          s5, a5, 859f
844:              sltu         s2, a1, gp
                  bgeu         a5, s5, 849f
                  or           sp, t4, a0
                  addi         s2, s11, 1412
                  sll          s0, a4, s1
849:              nop
                  or           s8, s1, a1
                  xori         zero, a3, -104
                  srl          t0, s10, s9
                  sub          tp, a1, a7
                  xor          s2, zero, zero
                  beq          s0, s11, 868f
                  sltiu        t4, a5, -940
                  auipc        t0, 960137
                  srl          a5, a4, a6
sub_3_14:         jal          ra, 1f
0:                jal          ra, 10f
1:                jal          t1, 2f
2:                jal          ra, 5f
3:                jal          a7, 7f
4:                jal          s3, 0b
5:                jal          s8, 3b
6:                jal          ra, 8f
7:                jal          ra, 4b
8:                jal          s1, 11f
9:                jal          a3, 6b
10:               jal          ra, 9b
11:               ori          t6, s2, -539
859:              srli         t6, s1, 12
                  sll          a5, s10, a5
                  slt          a3, s10, t1
                  slli         s11, tp, 6
                  nop
                  blt          s11, s7, 883f
                  bltu         a5, a3, 868f
                  bltu         s8, zero, 885f
                  bltu         s4, s7, 869f
868:              beq          s10, s6, 883f
869:              bge          a5, a3, 888f
                  srai         gp, s9, 30
                  auipc        gp, 671660
                  ori          sp, a5, -490
                  or           s5, s11, s1
                  or           t2, t2, t1
                  addi         sp, s11, 220
                  sub          s9, t5, s1
                  xor          sp, t2, tp
                  bne          s11, s0, 891f
                  srai         s11, gp, 6
                  srai         sp, tp, 31
                  sra          t6, zero, a2
sub_3_10:         jal          ra, 5f
0:                jal          s2, 3f
1:                jal          ra, 2f
2:                jal          ra, 13f
3:                jal          a3, 8f
4:                jal          ra, 11f
5:                jal          ra, 4b
6:                jal          s0, 7f
7:                jal          t1, 14f
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               jal          ra, 12f
11:               jal          ra, 0b
12:               jal          ra, 6b
13:               jal          a7, 9b
14:               and          s10, a2, s6
                  bge          t2, t5, 894f
883:              beq          t4, a4, 893f
                  nop
885:              ori          a6, t1, -1606
                  auipc        s1, 871403
                  xori         a1, tp, -750
888:              nop
                  bge          s10, a7, 895f
                  ori          ra, a7, 1698
891:              bne          a5, t6, 897f
                  sra          s0, t1, s6
893:              bgeu         s5, ra, 903f
894:              xori         s9, s9, -839
895:              xor          tp, t0, t4
                  srl          s0, gp, a3
897:              sltiu        s2, a3, -746
                  nop
                  xor          t3, s4, t6
                  bge          s8, tp, 915f
                  sltiu        s8, a6, -9
                  srl          sp, s5, a3
903:              sll          a5, t6, tp
                  blt          s5, s10, 910f
                  andi         s5, t1, -1415
                  and          s8, s6, s4
                  bltu         t0, t6, 910f
                  bge          t2, t4, 927f
                  slt          a3, a4, s3
910:              bne          t2, s2, 919f
                  slt          t1, t2, tp
                  srli         t6, t5, 5
                  sltu         s6, s7, a1
                  srai         a1, zero, 23
915:              sltu         s1, s2, a1
                  auipc        a1, 292274
                  beq          s10, s0, 932f
                  sltiu        s1, s10, 1644
919:              blt          t0, s1, 923f
                  lui          s2, 989946
                  blt          a7, a5, 940f
                  and          a1, a3, s8
923:              bge          sp, t5, 925f
                  blt          t2, zero, 929f
925:              bltu         a0, a3, 943f
                  slti         s7, a5, 2018
927:              add          s10, t6, s4
                  bne          tp, a5, 934f
929:              blt          s0, a6, 933f
                  sltu         a1, s2, a6
                  lui          s10, 552236
932:              slti         a3, t2, -538
933:              blt          t3, s9, 949f
934:              or           a5, ra, s5
                  srli         s3, t6, 10
                  slt          t2, t3, t5
                  beq          t2, s10, 956f
                  xori         a1, s1, 1304
                  sub          s11, a4, t3
940:              srli         a1, s9, 2
                  srli         a4, s10, 20
                  and          a1, sp, s8
943:              sub          s5, t4, t2
                  slli         t4, sp, 2
                  xor          sp, s2, a1
                  srli         s0, sp, 1
                  slli         a1, t5, 19
                  xori         s8, s9, -84
949:              lui          a6, 231115
                  auipc        t0, 606924
                  slt          s1, a5, t5
                  add          s2, t2, s9
                  slti         tp, t6, 1274
                  sll          t2, s5, a2
                  bltu         t2, t0, 967f
956:              slli         s9, sp, 27
                  blt          t0, a3, 964f
                  slt          s10, s4, a4
                  sltu         s10, s4, s11
                  lui          s5, 800406
                  xori         s11, s2, 875
                  add          t0, t5, a1
                  sltiu        ra, s7, 1413
964:              nop
                  slli         t6, s1, 21
                  beq          s1, gp, 972f
967:              srli         s2, s2, 10
                  srli         a1, t3, 13
                  auipc        zero, 413553
                  sub          t4, t3, s5
                  beq          t0, s6, 983f
972:              slti         s7, a6, 1414
                  xori         sp, tp, 1414
                  bge          s7, s7, 980f
                  xori         s1, t3, 999
                  addi         a7, t1, 1233
                  andi         a5, s2, -1734
                  or           t0, t4, s9
                  sub          t0, a7, t0
980:              srai         a7, s4, 30
                  bne          s0, s2, 983f
                  bltu         t4, a6, 983f
983:              ori          a6, s2, -224
                  add          t1, a0, a6
                  addi         t0, a5, -199
                  sltiu        t1, tp, -373
                  lw           ra, 4(a0)
                  sra          t1, s2, t2
                  xori         t2, sp, 572
                  sra          t1, s3, a2
                  srai         s2, s5, 27
                  addi         a0, a0, 24
                  xori         a5, zero, 64
1426:             addi x25, x1, 1
1426:             jalr x25, x25, 0
sub_2:            xor          a6, a4, a1
                  srli         t6, t2, 6
                  addi         a0, a0, -36
                  ori          a1, s0, 1749
                  xor          s5, t6, tp
                  sw           ra, 4(a0)
                  srai         tp, t5, 1
                  auipc        t4, 139455
                  sub          t0, a0, a0
                  sub          s3, t2, t6
sub_2_2:          jal          ra, 1f
0:                jal          s3, 6f
1:                jal          s6, 16f
2:                jal          tp, 21f
3:                jal          ra, 18f
4:                jal          gp, 20f
5:                jal          ra, 9f
6:                jal          ra, 8f
7:                jal          ra, 0b
8:                jal          t1, 14f
9:                jal          t1, 12f
10:               jal          ra, 15f
11:               jal          ra, 22f
12:               jal          ra, 19f
13:               jal          a3, 4b
14:               jal          ra, 5b
15:               jal          ra, 7b
16:               jal          ra, 10b
17:               jal          ra, 11b
18:               jal          t5, 13b
19:               jal          ra, 3b
20:               jal          ra, 2b
21:               jal          s7, 17b
22:               srli         gp, t2, 27
sub_2_15:         jal          ra, 13f
0:                jal          a3, 19f
1:                jal          ra, 20f
2:                jal          ra, 7f
3:                jal          ra, 0b
4:                jal          a4, 2b
5:                jal          a5, 11f
6:                jal          ra, 1b
7:                jal          sp, 18f
8:                jal          t6, 22f
9:                jal          t6, 6b
10:               jal          tp, 9b
11:               jal          t1, 4b
12:               jal          ra, 8b
13:               jal          sp, 21f
14:               jal          ra, 3b
15:               jal          ra, 12b
16:               jal          ra, 10b
17:               jal          ra, 15b
18:               jal          ra, 16b
19:               jal          t1, 5b
20:               jal          ra, 17b
21:               jal          ra, 14b
22:               srl          a4, a4, tp
sub_2_8:          jal          ra, 4f
0:                jal          t4, 1f
1:                jal          s0, 14f
2:                jal          ra, 13f
3:                jal          a1, 0b
4:                jal          ra, 11f
5:                jal          ra, 2b
6:                jal          ra, 3b
7:                jal          ra, 10f
8:                jal          a7, 7b
9:                jal          t0, 15f
10:               jal          t1, 6b
11:               jal          t1, 5b
12:               jal          ra, 8b
13:               jal          t1, 12b
14:               jal          ra, 9b
15:               addi         s5, a7, 970
sub_2_12:         jal          ra, 14f
0:                jal          s8, 7f
1:                jal          t1, 12f
2:                jal          a7, 23f
3:                jal          t1, 13f
4:                jal          ra, 8f
5:                jal          a6, 25f
6:                jal          ra, 24f
7:                jal          a5, 26f
8:                jal          ra, 0b
9:                jal          ra, 16f
10:               jal          a4, 18f
11:               jal          t1, 20f
12:               jal          s1, 10b
13:               jal          ra, 19f
14:               jal          ra, 4b
15:               jal          ra, 6b
16:               jal          t1, 15b
17:               jal          t1, 22f
18:               jal          s2, 28f
19:               jal          a3, 1b
20:               jal          a6, 5b
21:               jal          s2, 17b
22:               jal          ra, 2b
23:               jal          t2, 9b
24:               jal          t1, 3b
25:               jal          ra, 21b
26:               jal          t1, 27f
27:               jal          s10, 11b
28:               nop
sub_2_14:         jal          ra, 11f
0:                jal          t6, 15f
1:                jal          ra, 3f
2:                jal          ra, 16f
3:                jal          s11, 8f
4:                jal          gp, 14f
5:                jal          s3, 17f
6:                jal          s2, 12f
7:                jal          ra, 2b
8:                jal          s8, 6b
9:                jal          ra, 1b
10:               jal          t1, 0b
11:               jal          ra, 5b
12:               jal          ra, 18f
13:               jal          ra, 7b
14:               jal          t1, 9b
15:               jal          t1, 13b
16:               jal          ra, 4b
17:               jal          ra, 10b
18:               xor          a3, a3, a1
sub_2_3:          jal          ra, 6f
0:                jal          ra, 18f
1:                jal          ra, 3f
2:                jal          s7, 5f
3:                jal          t1, 8f
4:                jal          a3, 12f
5:                jal          t1, 4b
6:                jal          ra, 7f
7:                jal          t1, 0b
8:                jal          s7, 10f
9:                jal          t1, 2b
10:               jal          ra, 13f
11:               jal          ra, 9b
12:               jal          ra, 14f
13:               jal          ra, 20f
14:               jal          ra, 17f
15:               jal          gp, 1b
16:               jal          t1, 11b
17:               jal          ra, 19f
18:               jal          a7, 16b
19:               jal          t1, 15b
20:               auipc        a6, 31620
sub_2_1:          jal          ra, 14f
0:                jal          t1, 9f
1:                jal          ra, 4f
2:                jal          gp, 3f
3:                jal          s2, 11f
4:                jal          ra, 17f
5:                jal          ra, 18f
6:                jal          ra, 5b
7:                jal          ra, 22f
8:                jal          ra, 1b
9:                jal          s11, 19f
10:               jal          ra, 24f
11:               jal          ra, 6b
12:               jal          ra, 8b
13:               jal          t0, 2b
14:               jal          ra, 20f
15:               jal          a1, 0b
16:               jal          t1, 23f
17:               jal          ra, 13b
18:               jal          ra, 7b
19:               jal          ra, 12b
20:               jal          t1, 15b
21:               jal          s3, 10b
22:               jal          ra, 16b
23:               jal          ra, 21b
24:               srai         t5, a6, 0
sub_2_5:          jal          ra, 16f
0:                jal          ra, 11f
1:                jal          ra, 0b
2:                jal          a7, 12f
3:                jal          gp, 18f
4:                jal          ra, 2b
5:                jal          t1, 9f
6:                jal          ra, 13f
7:                jal          ra, 24f
8:                jal          ra, 3b
9:                jal          ra, 21f
10:               jal          ra, 23f
11:               jal          ra, 7b
12:               jal          ra, 10b
13:               jal          a4, 17f
14:               jal          ra, 19f
15:               jal          ra, 25f
16:               jal          ra, 4b
17:               jal          ra, 20f
18:               jal          s1, 5b
19:               jal          ra, 6b
20:               jal          ra, 8b
21:               jal          ra, 15b
22:               jal          t1, 14b
23:               jal          t1, 1b
24:               jal          s8, 22b
25:               ori          s7, s10, 590
sub_2_9:          jal          ra, 1f
0:                jal          ra, 13f
1:                jal          ra, 9f
2:                jal          ra, 17f
3:                jal          ra, 15f
4:                jal          ra, 0b
5:                jal          ra, 6f
6:                jal          t1, 14f
7:                jal          a3, 10f
8:                jal          s6, 7b
9:                jal          t4, 16f
10:               jal          t1, 12f
11:               jal          ra, 3b
12:               jal          t1, 2b
13:               jal          t1, 5b
14:               jal          t1, 11b
15:               jal          ra, 8b
16:               jal          tp, 4b
17:               sltu         t5, ra, a1
sub_2_13:         jal          ra, 21f
0:                jal          t1, 2f
1:                jal          ra, 6f
2:                jal          t2, 11f
3:                jal          t1, 12f
4:                jal          ra, 13f
5:                jal          ra, 10f
6:                jal          t1, 15f
7:                jal          t1, 9f
8:                jal          ra, 17f
9:                jal          ra, 18f
10:               jal          t1, 16f
11:               jal          ra, 5b
12:               jal          ra, 23f
13:               jal          ra, 19f
14:               jal          ra, 0b
15:               jal          t3, 7b
16:               jal          t1, 1b
17:               jal          ra, 3b
18:               jal          ra, 20f
19:               jal          ra, 14b
20:               jal          t0, 8b
21:               jal          ra, 22f
22:               jal          ra, 4b
23:               jal          s10, 24f
24:               sltu         ra, tp, t5
sub_2_7:          jal          ra, 8f
0:                jal          ra, 19f
1:                jal          ra, 12f
2:                jal          ra, 5f
3:                jal          gp, 9f
4:                jal          s11, 13f
5:                jal          ra, 17f
6:                jal          t0, 2b
7:                jal          a5, 4b
8:                jal          t1, 6b
9:                jal          ra, 10f
10:               jal          s1, 11f
11:               jal          ra, 7b
12:               jal          sp, 0b
13:               jal          ra, 16f
14:               jal          t1, 15f
15:               jal          t0, 3b
16:               jal          ra, 18f
17:               jal          t1, 14b
18:               jal          a5, 1b
19:               and          t1, s7, a4
sub_2_11:         jal          ra, 20f
0:                jal          t1, 14f
1:                jal          ra, 24f
2:                jal          ra, 11f
3:                jal          ra, 23f
4:                jal          t1, 2b
5:                jal          ra, 4b
6:                jal          t1, 0b
7:                jal          ra, 5b
8:                jal          a1, 6b
9:                jal          ra, 15f
10:               jal          ra, 18f
11:               jal          t1, 10b
12:               jal          ra, 16f
13:               jal          ra, 12b
14:               jal          t1, 9b
15:               jal          ra, 13b
16:               jal          ra, 3b
17:               jal          ra, 21f
18:               jal          ra, 19f
19:               jal          ra, 1b
20:               jal          tp, 8b
21:               jal          s0, 7b
22:               jal          ra, 17b
23:               jal          s9, 22b
24:               andi         s5, s8, -1875
sub_2_0:          jal          ra, 15f
0:                jal          ra, 12f
1:                jal          ra, 22f
2:                jal          ra, 23f
3:                jal          ra, 7f
4:                jal          ra, 3b
5:                jal          ra, 16f
6:                jal          ra, 20f
7:                jal          s8, 26f
8:                jal          t1, 6b
9:                jal          gp, 5b
10:               jal          ra, 25f
11:               jal          s11, 24f
12:               jal          ra, 1b
13:               jal          t6, 21f
14:               jal          ra, 13b
15:               jal          gp, 18f
16:               jal          ra, 4b
17:               jal          t1, 8b
18:               jal          t1, 19f
19:               jal          ra, 17b
20:               jal          t1, 2b
21:               jal          s1, 0b
22:               jal          t0, 10b
23:               jal          ra, 14b
24:               jal          ra, 9b
25:               jal          t2, 11b
26:               sra          s0, sp, ra
sub_2_10:         jal          ra, 8f
0:                jal          ra, 9f
1:                jal          t1, 6f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          ra, 2b
5:                jal          s7, 1b
6:                jal          ra, 10f
7:                jal          ra, 5b
8:                jal          t1, 0b
9:                jal          s3, 4b
10:               sll          s7, s4, t2
                  slt          a7, s8, t6
                  bltu         sp, t4, 7f
                  bne          sp, t0, 13f
                  bgeu         s2, zero, 18f
                  or           zero, s9, a4
                  srai         a4, a2, 21
                  or           s7, s6, a5
7:                srli         t1, s8, 29
                  slli         t2, s1, 23
                  beq          s8, s11, 25f
                  ori          a4, ra, 1772
                  addi         s2, gp, -206
                  and          t3, s7, s2
13:               beq          zero, s10, 27f
                  bne          s2, s5, 23f
                  addi         s10, s7, 1339
                  xori         s8, a7, 448
                  slli         a4, s9, 29
18:               sub          s11, t5, a1
                  beq          ra, a3, 24f
                  slti         t5, a4, -570
                  sra          ra, t3, s8
                  and          s10, s6, t5
23:               slt          a3, s7, t1
24:               nop
25:               ori          a3, a5, 13
                  or           zero, t0, s2
27:               srli         t4, s3, 23
                  auipc        s2, 475179
                  ori          a1, s3, 1188
                  lui          a1, 64263
                  or           t2, t0, tp
                  or           t5, a5, s2
                  beq          gp, a1, 43f
                  addi         ra, s11, 1497
                  srl          gp, a4, s2
                  bgeu         s5, sp, 53f
                  nop
                  and          s9, a7, t5
                  beq          t5, a4, 44f
                  nop
                  srl          s8, zero, s2
                  blt          gp, gp, 59f
43:               add          s7, a5, tp
44:               sll          ra, s9, s10
                  sub          s3, s4, a6
                  beq          s6, s2, 64f
                  bne          sp, gp, 67f
                  sra          s5, s4, s9
                  ori          t3, s2, 1594
                  xori         tp, tp, 1934
                  bge          ra, t6, 62f
                  xori         a5, sp, 1477
53:               ori          tp, gp, 1245
                  beq          s6, t1, 64f
                  srli         t0, s2, 6
                  ori          t2, t4, 1413
                  sltiu        s3, gp, -1894
                  xor          s3, a2, a2
59:               beq          s8, s5, 66f
                  nop
                  lui          s10, 277561
62:               lui          t6, 423220
                  or           s11, a5, s9
64:               andi         sp, s1, -1904
                  addi         t1, tp, 119
66:               bgeu         a0, s1, 86f
67:               auipc        ra, 355544
                  bltu         s0, a5, 72f
                  slt          s9, t0, t2
                  beq          a3, s7, 71f
71:               addi         tp, a5, -203
72:               sltu         t2, a5, ra
                  and          gp, s5, a6
                  srai         a6, s4, 28
                  bge          t4, a6, 84f
                  srli         s5, s5, 13
                  sub          s2, tp, s2
                  andi         t4, s8, 977
                  srl          t0, a1, a5
                  add          a3, s2, t0
                  auipc        a7, 282982
                  sub          sp, s2, s0
                  andi         t4, s9, 346
84:               lui          t1, 477907
                  beq          t6, a5, 99f
86:               bgeu         t5, a3, 92f
                  slti         s8, gp, -1755
                  bltu         s2, s9, 104f
                  xori         a5, a6, -555
                  srl          t5, a5, s11
                  slli         a7, s5, 25
92:               addi         s7, t3, 521
                  srl          s11, s7, sp
                  sra          s6, s9, t3
                  bltu         s0, t1, 102f
                  srl          a4, ra, t2
                  sra          s1, s10, s8
                  beq          s9, s5, 112f
99:               srai         a7, s8, 11
                  andi         s10, t4, 1817
                  and          s5, s10, gp
102:              blt          t0, a2, 107f
                  beq          t3, a4, 110f
104:              bgeu         zero, a6, 111f
                  sra          s9, t3, s11
                  add          s1, s11, a0
107:              sra          a4, t1, t6
                  lui          sp, 653565
                  addi         s6, sp, -1414
110:              andi         t2, a4, 1254
111:              slti         s5, a7, -573
112:              add          a7, a6, gp
                  sub          zero, a6, a0
                  sltu         a1, ra, s5
                  andi         s10, ra, -1866
                  blt          gp, s0, 133f
                  sll          s10, s10, a2
                  xor          sp, a3, a3
                  xor          a5, a1, a6
                  bgeu         s2, a7, 139f
                  bgeu         s5, t6, 132f
                  bne          ra, zero, 132f
                  srai         s10, s8, 12
                  andi         t3, t1, 1659
                  addi         a5, s4, -56
                  srl          s6, a4, a3
                  sltu         sp, a3, a5
                  sll          sp, t2, a6
                  and          gp, zero, zero
                  addi         s5, a7, -1322
                  srl          t3, a1, a5
132:              sra          t4, s8, a7
133:              add          s6, t6, s4
                  sub          s8, s10, t4
                  sra          s8, s10, a4
                  bne          s5, a2, 143f
                  slti         s11, s8, 1567
                  bge          s5, s9, 153f
139:              bgeu         t0, zero, 148f
                  sltiu        ra, t2, 252
                  srli         gp, ra, 1
                  lui          a6, 1023258
143:              lui          s5, 323108
                  srl          s1, t4, t2
                  xori         t0, a3, 1744
                  slti         t2, a0, -470
                  addi         sp, s9, 1056
148:              sra          a4, a0, s11
                  addi         s6, a3, 1835
                  sltiu        sp, s0, 736
                  xor          t3, a6, a3
                  addi         a6, s2, -1504
153:              bge          s11, s8, 170f
                  add          a1, t4, s0
                  nop
                  slt          s10, gp, s10
                  bltu         s5, s10, 167f
                  sra          s7, a6, s5
                  sltiu        s1, s8, 970
                  andi         s8, s4, -1727
                  nop
                  slt          s3, a6, t1
                  or           t3, t4, t3
                  and          s9, zero, tp
                  la           a5, sub_3
                  or           a6, s3, t2
                  slti         t3, a3, 1393
                  auipc        t1, 283914
                  slt          s0, gp, s11
                  addi         a5, a5, 583
                  add          a3, s7, t4
sub_2_j4:         jalr         ra, a5, -582 #jump sub_2 -> sub_3
                  sll          t5, a1, a0
                  or           s11, a4, zero
                  srl          t1, sp, s2
167:              andi         s1, t0, 2022
                  andi         a3, s3, 1305
                  sra          s11, s2, a1
170:              lui          s8, 576493
                  sub          a1, t6, s8
                  nop
                  slli         s7, ra, 12
                  beq          a6, sp, 194f
                  srl          a1, s7, a0
                  sltu         s8, s3, a1
                  ori          s1, s11, -219
                  or           tp, sp, tp
                  auipc        s5, 747909
                  slli         a7, t3, 17
                  slli         a4, a5, 28
                  beq          ra, s7, 201f
                  bltu         t5, a7, 200f
                  slti         zero, s7, -1517
                  beq          s11, gp, 191f
                  addi         sp, a0, 1819
                  bgeu         sp, a1, 194f
                  bgeu         a6, a6, 204f
                  nop
                  sll          s6, t6, s4
191:              ori          t2, t6, 1938
                  bge          s7, t6, 196f
                  sltu         s6, s6, t4
194:              blt          ra, s11, 212f
                  sub          s6, a4, s2
196:              xori         sp, t1, 1121
                  slti         s0, s5, -60
                  add          t5, a5, t1
                  bne          s3, a7, 200f
200:              sll          t3, s7, a3
201:              and          s5, a2, s1
                  srli         s1, a7, 10
                  slt          s3, gp, s8
204:              bgeu         t0, a5, 209f
                  sltiu        s5, s9, 1731
                  sub          t3, s11, sp
                  slli         s7, s1, 27
                  xori         zero, a3, -712
209:              sll          s3, gp, sp
                  bge          t1, a6, 221f
                  or           t5, s3, a5
212:              xor          t4, t0, t4
                  add          t2, s0, s11
                  bltu         zero, s10, 223f
                  lui          a1, 792687
                  ori          gp, ra, 596
                  xor          t6, s5, a3
                  bgeu         s1, zero, 223f
                  bge          tp, s10, 233f
                  slt          s5, a4, sp
221:              auipc        sp, 991367
                  auipc        a3, 131886
223:              bltu         s5, s2, 229f
                  sll          a1, s4, ra
                  blt          ra, a5, 232f
                  add          s6, s2, a4
                  bltu         s5, t3, 241f
                  slli         s10, t1, 17
229:              auipc        s7, 445924
                  slti         s8, sp, 794
                  bne          a1, s9, 238f
232:              andi         s10, a5, 528
233:              slti         t0, s11, 490
                  nop
                  sll          t5, ra, t2
                  slti         gp, a4, 690
                  sub          a1, a1, a4
238:              nop
                  sll          s6, t6, sp
                  bne          a0, t0, 257f
241:              and          a1, t3, s6
                  sra          s5, s2, gp
                  slt          s6, t2, gp
                  nop
                  sltu         t1, s4, t4
                  bltu         t5, tp, 260f
                  blt          t1, a5, 252f
                  ori          s10, t3, -1228
                  sra          gp, s1, a2
                  ori          a5, a0, 978
                  addi         s3, a5, 682
252:              and          s7, s11, a7
                  addi         t0, a7, -447
                  slli         t0, s2, 20
                  or           t3, s1, a0
                  auipc        s6, 538666
257:              addi         s0, sp, 677
                  bgeu         s10, t1, 278f
                  xor          zero, s3, s5
260:              srli         t5, gp, 7
                  sra          s3, s5, t2
                  or           a1, a7, a4
                  nop
                  sra          s7, a4, a0
                  sub          ra, sp, zero
                  addi         a3, s8, -1140
                  slt          t0, tp, s11
                  lui          s5, 851380
                  srai         a4, t6, 12
                  sra          s8, s6, s11
                  blt          gp, t1, 287f
                  blt          s9, s8, 289f
                  slti         s9, a4, -836
                  srl          zero, t2, t2
                  bgeu         t5, t4, 284f
                  xor          a7, zero, a3
                  xori         s0, a6, -69
278:              ori          s11, zero, -944
                  lui          a3, 825114
                  auipc        s8, 934935
                  bne          a5, s1, 288f
                  slt          t6, s3, a7
                  auipc        gp, 216285
284:              xori         s7, a5, 649
                  blt          tp, t3, 305f
                  addi         s10, s7, -447
287:              or           s7, t4, a2
288:              srl          a3, s5, a7
289:              sub          a3, a5, s3
                  srl          s6, a2, s7
                  beq          t5, s3, 307f
                  or           a7, s0, a7
                  slti         a3, a6, 379
                  slli         ra, a4, 5
                  slli         a5, s3, 21
                  bge          t1, gp, 315f
                  sll          s6, s8, a7
                  slt          s7, tp, a6
                  sltu         a3, s10, tp
                  xori         a5, tp, -486
                  auipc        s8, 569466
                  sub          zero, s0, t1
                  ori          tp, a4, 1792
                  slt          s11, s4, a1
305:              ori          s10, tp, 500
                  and          tp, s0, t2
307:              srai         a4, gp, 27
                  slli         s0, gp, 23
                  and          s9, a1, a0
                  lui          s1, 509200
                  bgeu         s0, s4, 316f
                  nop
                  xor          a1, a3, s2
                  beq          a5, a0, 331f
315:              auipc        t5, 568128
316:              ori          s10, a6, -1869
                  auipc        s9, 197127
                  ori          s2, ra, -1201
                  beq          a2, s1, 326f
                  lui          a5, 507343
                  ori          sp, s5, 1825
                  andi         s5, a0, -1345
                  slti         s9, a0, 1397
                  slli         t3, sp, 26
                  sltu         a5, s5, s6
326:              srl          t4, s5, a4
                  nop
                  sll          t2, s8, a7
                  beq          s0, t3, 335f
                  sltu         s1, t4, a3
331:              blt          s0, a2, 342f
                  andi         tp, s7, -671
                  bltu         t5, s4, 349f
                  ori          a6, a0, 1619
335:              sltu         gp, a2, t0
                  sra          t0, ra, a0
                  bgeu         s11, zero, 351f
                  or           a6, s9, a6
                  srl          t1, s1, a0
                  sltiu        a4, sp, -43
                  lui          s0, 705926
342:              slli         a5, a5, 21
                  beq          ra, a1, 349f
                  srl          s9, ra, t0
                  andi         s1, a6, 325
                  sll          a1, ra, t2
                  bltu         s7, s3, 354f
                  slli         s7, ra, 1
349:              nop
                  xor          t1, s7, t0
351:              or           tp, zero, a3
                  xori         t5, t2, -540
                  ori          s3, t4, -1303
354:              sub          a6, s3, s5
                  sltu         a6, a0, tp
                  auipc        ra, 853021
                  and          t1, a6, a1
                  andi         t1, tp, 314
                  sltu         t2, s1, a0
                  nop
                  nop
                  bgeu         t2, a4, 377f
                  srai         a5, a0, 14
                  blt          ra, zero, 375f
                  blt          a1, a0, 379f
                  srl          s0, a4, s7
                  addi         zero, s6, -769
                  ori          s0, s7, -1972
                  srli         tp, a7, 23
                  srai         zero, a0, 27
                  sll          s10, t6, t4
                  or           s9, tp, a2
                  xor          gp, t1, s1
                  slli         s11, ra, 12
375:              bge          a3, a2, 393f
                  add          zero, s0, s8
377:              bgeu         s0, s11, 378f
378:              xori         s2, a5, 1208
379:              sub          a6, a7, a1
                  addi         t4, s10, 146
                  ori          a4, s7, -1207
                  andi         t6, s8, 1978
                  slti         s11, s3, -1548
                  bgeu         a1, t2, 391f
                  srli         sp, tp, 10
                  srai         s5, a5, 1
                  xor          s6, a3, s2
                  add          a6, s11, t1
                  sra          sp, t0, s11
                  ori          t5, t2, 1872
391:              bne          s9, t6, 401f
                  xori         s10, s5, 1800
393:              sub          tp, gp, a3
                  sll          s2, a5, s7
                  bgeu         a4, a7, 400f
                  xor          s9, t2, a0
                  and          t4, s11, t4
                  sltu         s0, zero, sp
                  sub          t0, ra, t3
400:              srai         s8, s7, 22
401:              or           t6, ra, ra
                  bgeu         s2, a7, 422f
                  slt          t4, s2, s3
                  sltiu        s5, tp, 757
                  srl          s2, t2, s11
                  slt          a7, a2, s5
                  bltu         t5, t3, 424f
                  and          s5, s9, s4
                  addi         s3, ra, -1911
                  ori          a5, a1, -694
                  srli         s11, a7, 29
                  slt          t0, t3, a2
                  auipc        s1, 811763
                  sltu         t5, a4, t0
                  blt          tp, s0, 424f
                  beq          s6, s3, 420f
                  bne          t2, s7, 427f
                  bge          s11, a1, 432f
                  sub          s6, t4, s4
420:              slli         a3, sp, 12
                  andi         s5, a2, -1019
422:              srli         tp, s11, 24
                  lui          s3, 1013204
424:              lui          s10, 799056
                  bne          s3, a6, 430f
                  srai         gp, t6, 29
427:              nop
                  bne          tp, zero, 433f
                  sub          tp, t4, s9
430:              slt          a4, a6, s8
                  and          s11, t0, s11
432:              slli         s5, s8, 18
433:              srai         s6, s3, 15
                  srai         t3, s10, 18
                  add          gp, s0, a1
                  ori          a1, a6, -557
                  lui          s8, 676742
                  srai         t2, a1, 24
                  nop
                  bgeu         s8, t1, 447f
                  xor          s6, gp, t3
                  sub          s1, s10, s7
                  add          t3, s7, s0
                  or           a5, s0, t6
                  sltu         s3, a6, s11
                  and          sp, s8, t0
447:              sub          a4, sp, a4
                  addi         sp, a6, 324
                  xori         s9, t6, 1862
                  add          a3, tp, t1
                  sltu         s0, t4, t6
                  sra          t3, t1, ra
                  blt          t5, s3, 473f
                  and          s6, s9, tp
                  xor          a4, a3, t0
                  srli         s3, t6, 28
                  sltiu        t0, s1, -667
                  xor          a7, zero, sp
                  addi         a3, t2, -1988
                  xori         gp, s1, -235
                  sll          a1, s3, zero
                  or           s11, s3, s5
                  sra          s5, s10, t3
                  auipc        ra, 306079
                  andi         t5, a2, -1195
                  srai         a1, a1, 8
                  bltu         zero, zero, 482f
                  srai         t0, t1, 23
                  slti         a7, s10, -1615
                  bge          t1, a0, 479f
                  nop
                  addi         s5, a5, -968
473:              ori          s1, s2, -559
                  bge          zero, s2, 485f
                  srai         s9, t6, 31
                  srl          a7, s8, a3
                  ori          s5, a7, 1080
                  sra          t6, t6, a2
479:              add          t0, s4, a4
                  nop
                  auipc        s3, 430677
sub_2_6:          jal          ra, 2f
0:                jal          ra, 18f
1:                jal          t1, 14f
2:                jal          ra, 8f
3:                jal          ra, 4f
4:                jal          ra, 20f
5:                jal          ra, 19f
6:                jal          s0, 15f
7:                jal          s0, 3b
8:                jal          t1, 11f
9:                jal          s7, 13f
10:               jal          gp, 12f
11:               jal          t1, 25f
12:               jal          ra, 9b
13:               jal          ra, 26f
14:               jal          t1, 21f
15:               jal          t1, 28f
16:               jal          t1, 6b
17:               jal          ra, 0b
18:               jal          t1, 5b
19:               jal          gp, 1b
20:               jal          s0, 22f
21:               jal          t1, 23f
22:               jal          ra, 10b
23:               jal          t1, 24f
24:               jal          t1, 7b
25:               jal          ra, 16b
26:               jal          ra, 29f
27:               jal          sp, 17b
28:               jal          s0, 27b
29:               lui          tp, 256795
482:              bne          zero, a6, 489f
                  addi         t0, s4, -1621
                  sub          s1, s1, s10
485:              bgeu         a4, tp, 504f
                  ori          ra, t4, 1675
                  auipc        s6, 54701
                  beq          gp, s11, 502f
489:              sltu         s10, zero, gp
                  add          a3, a4, a4
                  addi         s9, s4, 1063
                  and          t3, s9, t2
                  sub          tp, sp, t0
                  slli         a5, t1, 9
                  xor          a5, tp, a5
                  and          t3, t2, gp
                  blt          s10, s2, 501f
                  srli         ra, a7, 0
                  add          a1, t6, a1
                  slt          s6, s0, t2
501:              or           t2, s3, s4
502:              add          s10, s1, s5
                  srli         zero, a5, 9
504:              bgeu         s7, t3, 520f
                  ori          s9, gp, 1924
                  bne          s6, s2, 507f
507:              srl          s2, a5, t1
                  sltu         s9, t5, s2
                  lui          a5, 1036181
                  or           s8, s10, tp
                  srai         a5, ra, 0
                  andi         s5, a0, 1949
                  sll          s0, a1, zero
                  slti         ra, t6, 615
                  add          a3, t1, a2
                  srai         s1, a3, 18
                  sltiu        ra, a1, -1642
                  or           s0, ra, a0
                  srl          zero, s2, s10
520:              xor          a5, s11, s2
                  slti         s5, t1, -1666
                  lui          s3, 1009990
                  blt          t3, t2, 528f
                  bltu         t2, s2, 534f
                  slti         s5, a3, -6
                  slli         t1, a7, 21
                  srl          t3, s3, s8
528:              sra          a5, zero, t6
                  nop
                  bge          a1, tp, 550f
                  lui          s3, 556327
                  sll          a4, t1, s8
                  sra          s8, s1, s1
534:              ori          t6, a0, -891
                  add          t6, s7, t0
                  xor          zero, t6, t0
                  slt          a7, zero, zero
                  or           ra, s10, a3
                  bne          s2, tp, 557f
                  ori          t2, s0, -161
                  slt          t2, ra, t4
                  ori          s7, t3, -1593
                  add          gp, t6, a6
                  bgeu         a2, s7, 558f
                  slt          sp, tp, gp
                  bltu         ra, t6, 563f
                  xori         s5, s8, 980
                  beq          t1, s11, 564f
                  xor          s11, t6, a1
550:              nop
                  slti         a4, s3, -639
                  nop
                  nop
                  slli         t0, s4, 18
                  xor          s1, s7, a6
                  ori          s2, sp, -1050
557:              sll          a5, a0, s6
558:              srai         s6, t1, 11
                  and          t4, s5, s7
                  sub          s3, s3, a0
                  bge          a7, s2, 578f
                  lui          t1, 685456
563:              slt          a6, a0, s9
564:              bgeu         t1, s0, 574f
                  and          t0, t5, a4
                  ori          s1, t6, -15
                  slli         s7, t6, 13
                  slti         s1, s8, 856
                  bgeu         t4, s11, 583f
                  bne          gp, tp, 575f
                  bltu         ra, a2, 577f
                  and          zero, t1, s0
                  bge          s8, tp, 584f
574:              bltu         t5, zero, 581f
575:              lui          t0, 818901
                  bne          s7, s1, 585f
577:              bne          a4, t0, 584f
578:              sra          s10, a5, a1
                  bge          t4, s11, 585f
                  or           s3, a4, s11
581:              sub          sp, t5, gp
                  sltu         s9, s9, ra
583:              ori          a7, s2, -1473
584:              addi         s1, s2, -1986
585:              beq          a4, s7, 602f
                  ori          t3, t2, 995
                  ori          tp, sp, 1587
                  bge          s8, s8, 605f
                  ori          a3, a0, -632
                  bgeu         s1, s11, 597f
                  add          s9, a1, s2
                  sll          s10, s8, s4
                  srl          s1, gp, s10
                  and          t3, t2, s11
                  addi         a6, t1, 639
                  sub          t0, gp, s10
597:              sltu         s5, s2, sp
                  beq          a4, t2, 609f
                  slti         t0, a4, -900
                  nop
                  xor          t2, t4, t3
602:              bgeu         a2, zero, 612f
                  ori          sp, s1, 1813
                  srl          s6, s10, gp
605:              or           a5, t4, s11
                  xori         ra, s11, -402
                  slti         s0, t0, -1049
                  bgeu         s2, t2, 617f
609:              sub          s9, tp, a1
                  slli         sp, s11, 22
                  and          s10, a5, t4
612:              beq          s10, t4, 632f
                  srli         t2, s10, 31
                  andi         a4, t2, 1118
                  srl          tp, a0, s7
                  lui          ra, 381141
617:              sltu         a6, s2, ra
                  sltiu        t4, s10, 498
                  auipc        a1, 53593
                  beq          a7, s3, 640f
                  and          s7, s8, sp
                  slti         t0, s7, 1018
                  sltu         s6, s1, s0
                  slti         a3, a3, 1714
                  slti         a1, s2, -723
                  sltu         a4, s5, s2
                  bne          a3, s10, 641f
                  xori         tp, s7, 1330
                  addi         s2, s3, -771
                  lui          tp, 147683
                  bne          a2, a6, 648f
632:              srai         s2, ra, 1
                  addi         s3, t6, 1499
                  sra          s8, s0, s8
                  addi         a4, s0, -1534
                  sltu         t3, s4, a4
                  beq          a7, a2, 642f
                  add          a7, s0, t1
                  bne          s1, t5, 654f
640:              add          a5, ra, a1
641:              lui          t5, 12573
642:              xor          s11, t5, t6
                  srai         a5, s10, 21
                  slti         t1, zero, -1699
                  bne          s0, a1, 663f
                  beq          a6, s0, 651f
                  and          a5, t5, s7
648:              and          s7, t4, t1
                  sub          s3, s4, a0
                  nop
651:              srai         s1, a1, 15
                  blt          s7, a3, 658f
                  bgeu         a3, tp, 660f
654:              srl          s6, t1, t0
                  sltiu        t2, s10, -1197
                  sltiu        a5, t3, -123
                  slti         a6, s8, 1012
658:              or           t0, gp, s9
                  and          t2, a6, s3
660:              ori          t2, s6, -1954
                  bne          s0, sp, 668f
                  andi         a3, tp, -55
663:              slti         t6, s8, 373
                  blt          t1, a7, 683f
                  or           t0, sp, s7
                  slli         s10, tp, 19
                  nop
668:              bgeu         s4, t6, 673f
                  xori         s7, t6, -1104
                  sra          s2, a7, s9
                  slt          s6, t3, a2
                  srli         zero, s3, 18
673:              bne          s9, t5, 689f
                  add          s0, zero, t6
                  bge          a0, a6, 689f
                  sltiu        a7, t6, -914
                  or           t5, t0, a1
                  andi         ra, s0, 488
                  add          t2, a3, a6
                  auipc        s5, 414839
                  bge          s5, s2, 692f
                  or           s3, a4, a5
683:              blt          t4, tp, 699f
                  nop
                  xor          s1, t3, a3
                  sub          t6, s9, t1
                  bltu         ra, s2, 701f
                  slli         a1, a4, 18
689:              andi         t6, a2, 1365
                  nop
                  xor          s0, a5, s1
692:              sra          s7, s10, t2
                  xor          t3, t1, s2
                  add          a3, a4, tp
                  bgeu         gp, a1, 699f
                  bltu         s5, a0, 713f
                  sll          t0, s9, a0
                  sltiu        a5, s6, -778
699:              ori          a4, s8, -1550
                  auipc        a4, 208935
701:              add          a7, s2, s11
                  blt          a6, t1, 709f
                  bge          s3, s0, 713f
                  sltu         t2, t0, a1
                  slt          t2, s4, ra
                  sltiu        s6, s9, -529
                  bge          tp, a4, 716f
                  andi         s5, s10, 1991
709:              ori          s2, a5, 1165
                  bne          a4, a3, 711f
sub_2_4:          jal          ra, 9f
0:                jal          a1, 8f
1:                jal          ra, 4f
2:                jal          s10, 1b
3:                jal          t1, 10f
4:                jal          ra, 12f
5:                jal          t1, 11f
6:                jal          ra, 17f
7:                jal          a3, 2b
8:                jal          t1, 6b
9:                jal          ra, 13f
10:               jal          ra, 0b
11:               jal          t1, 14f
12:               jal          ra, 16f
13:               jal          t1, 7b
14:               jal          t1, 3b
15:               jal          ra, 5b
16:               jal          t1, 15b
17:               andi         t1, s0, 546
711:              bge          t4, s11, 717f
                  nop
713:              slli         a5, s11, 7
                  blt          s8, s3, 719f
                  sra          t3, a7, a2
716:              add          s10, tp, t4
717:              srl          s11, t0, a1
                  or           s0, gp, t0
719:              and          s10, s1, tp
                  sltu         a7, a6, t6
                  sra          a4, s4, t2
                  slt          s2, t1, t4
                  sub          s10, t3, a0
                  ori          zero, a6, 1615
                  bgeu         s10, s9, 742f
                  bltu         a2, ra, 733f
                  srl          s3, a4, gp
                  and          a3, a2, s0
                  srli         s6, t4, 7
                  lui          s2, 443219
                  sltu         t4, ra, s9
                  auipc        gp, 545918
733:              slt          s3, s11, s0
                  xori         t1, a3, -2021
                  sltiu        zero, s5, 711
                  bne          zero, s10, 753f
                  nop
                  ori          s11, s8, 2005
                  andi         t2, s4, 1118
                  srai         t4, s2, 25
                  srli         s10, t5, 3
742:              auipc        tp, 502303
                  sltu         tp, s2, a6
                  lui          tp, 573062
                  beq          ra, a1, 762f
                  slti         s5, t5, -1426
                  bgeu         s3, s3, 757f
                  xori         s2, s9, -1956
                  slti         a7, t2, -1005
                  beq          s1, ra, 757f
                  ori          t1, t0, -1845
                  blt          t6, s7, 767f
753:              xor          a5, s1, zero
                  bne          zero, s7, 763f
                  and          s11, a6, t0
                  sltiu        t5, s2, -473
757:              sll          s11, a4, s10
                  and          t5, sp, s9
                  and          t6, a3, s1
                  sltiu        s11, gp, -1884
                  slt          s9, s9, t6
762:              or           t2, s2, a2
763:              nop
                  add          s5, a5, s7
                  add          t0, s11, a5
                  auipc        s0, 551437
767:              bge          a5, t4, 771f
                  bne          t1, s7, 773f
                  sub          s3, s6, a3
                  srli         s6, s9, 13
771:              nop
                  srl          tp, s9, a6
773:              sltiu        s11, s10, 1446
                  slt          a4, t3, s11
                  bgeu         s6, t0, 794f
                  bge          gp, s4, 790f
                  xori         s10, gp, 542
                  nop
                  nop
                  or           ra, t0, s10
                  slti         ra, s2, -1901
                  slt          a4, t5, t4
                  sub          s10, a7, a2
                  srli         ra, a3, 27
                  bge          s9, tp, 786f
786:              addi         s10, s1, 1485
                  srl          zero, a6, zero
                  xori         s9, t5, 1901
                  blt          s0, s2, 799f
790:              lui          a3, 398002
                  sra          tp, s11, s8
                  sub          a4, s11, t2
                  srai         s11, s2, 23
794:              sll          t1, t0, s1
                  xori         t3, zero, 1869
                  srli         zero, a5, 23
                  bltu         a1, a5, 799f
                  xor          s1, a1, t5
799:              srl          s8, a3, a1
                  lw           ra, 4(a0)
                  xori         s1, t6, -2045
                  addi         a0, a0, 36
                  add          a3, a7, tp
                  add          t5, tp, a0
                  sltu         a7, t3, s11
1197:             addi x6, x1, 1
1197:             jalr x6, x6, 0
sub_4:            sltiu        sp, t6, 523
                  srli         s3, s0, 5
                  srl          t1, t5, a0
                  slt          s0, a5, s8
                  slti         s7, t2, -2034
                  addi         a0, a0, -8
                  sw           ra, 4(a0)
                  srl          a7, ra, ra
                  and          a5, t0, s8
                  nop
                  lui          s11, 201169
                  auipc        a4, 478148
                  srli         ra, t2, 30
                  la           gp, sub_5
                  xori         t3, t5, -1909
                  addi         gp, gp, -920
                  slt          a3, a0, s2
                  and          s7, s0, s9
                  bltu         a3, a3, sub_4_j7 #branch to jump instr
                  ori          s3, s8, 890
                  xor          s1, t4, s4
                  xor          a3, s5, a3
sub_4_j7:         jalr         ra, gp, 920 #jump sub_4 -> sub_5
                  la           s11, sub_5
                  slli         s6, gp, 8
                  addi         s11, s11, -41
                  slti         s6, s3, -1255
                  srl          t4, t5, zero
                  slti         tp, s8, -1447
                  sltiu        t0, a2, -730
                  add          s7, t0, s11
                  sra          a6, tp, s0
                  sltu         t1, zero, ra
sub_4_j8:         jalr         ra, s11, 41 #jump sub_4 -> sub_5
                  bgeu         a7, a7, 9f
                  sra          a1, s1, s5
                  bgeu         t6, a6, 9f
                  srli         a5, s6, 5
                  sub          zero, tp, a3
                  ori          a1, t5, -992
                  andi         s9, s2, -1671
                  blt          tp, s0, 9f
                  xor          sp, s3, s2
9:                nop
                  slt          t4, a7, a2
                  lw           ra, 4(a0)
                  addi         s11, s3, -942
                  auipc        s6, 587030
                  andi         gp, s7, -562
                  addi         a0, a0, 8
                  sll          a7, a7, t2
51:               addi x1, x1, 1
51:               jalr x1, x1, 0
sub_1:            beq          a5, s7, sub_1_stack_p
                  ori          t1, t1, -569
                  auipc        t4, 394927
                  sra          s2, zero, a3
                  andi         s5, tp, -254
                  xori         t1, a0, -1864
sub_1_stack_p:    addi         a0, a0, -44
                  andi         t0, t6, -133
                  sw           ra, 4(a0)
                  slt          a1, s10, a3
                  andi         s3, a1, 1914
                  and          zero, ra, tp
                  la           t5, sub_2
                  sltiu        a6, s4, 673
                  addi         t5, t5, -211
                  addi         sp, t1, -1603
                  lui          s2, 432633
                  sltu         s0, zero, gp
                  bltu         ra, a4, sub_1_j3 #branch to jump instr
                  lui          s1, 518507
sub_1_j3:         jalr         ra, t5, 212 #jump sub_1 -> sub_2
                  xor          s10, s4, sp
                  or           s0, zero, a6
                  blt          t0, gp, 18f
                  addi         s2, a6, -125
                  srl          t4, a2, a2
                  srli         s7, a7, 7
                  sub          t3, a7, a4
                  lui          t0, 573430
                  slt          gp, ra, a3
                  xori         gp, s10, 1847
                  slti         a7, a5, 1338
                  sll          s2, a6, t4
                  srl          a1, t0, s5
                  sub          s9, s1, t2
                  xor          t2, s8, a4
                  ori          a1, s1, -622
                  slti         s5, s11, 918
                  and          s3, a1, a2
18:               bltu         zero, a7, 32f
                  sra          s10, s2, s11
                  auipc        s1, 475437
                  addi         s11, s2, 412
                  sltu         a5, t1, a7
                  bne          s11, a0, 41f
                  srl          s11, t2, a0
                  and          s5, a2, a5
                  or           s6, tp, s1
                  auipc        s11, 301036
                  addi         s8, t5, -1092
                  sltu         a1, s4, t2
                  bge          zero, a3, 41f
                  bne          t4, a0, 41f
32:               xor          a4, ra, t4
                  sub          a4, s7, t4
                  slt          s11, s4, s0
                  beq          a1, sp, 41f
                  xori         s10, s8, 642
                  bne          s9, zero, 41f
                  sra          gp, zero, a0
                  sltu         s10, a4, zero
                  ori          s9, a2, 179
41:               add          ra, s3, a4
                  srl          a6, s3, s9
                  lw           ra, 4(a0)
                  andi         a4, gp, 436
                  slti         t0, t6, 1356
                  srli         s2, s3, 24
                  andi         tp, gp, -619
                  addi         a0, a0, 44
                  xor          a5, t4, s8
                  xori         s6, a0, -1809
                  add          gp, t4, s9
73:               addi x27, x1, 1
73:               jalr x27, x27, 0
sub_5:            and          t3, a2, tp
                  xor          gp, s0, t5
                  auipc        t0, 32293
                  slti         s5, t1, -1066
                  srl          gp, s5, s10
                  slti         s2, s7, -1250
                  addi         a0, a0, -44
                  srl          t0, s8, sp
                  sll          tp, s5, gp
                  slt          a7, s7, t3
                  sw           ra, 4(a0)
                  slt          a4, s7, a4
sub_5_4:          jal          ra, 18f
0:                jal          s0, 6f
1:                jal          t1, 12f
2:                jal          t1, 15f
3:                jal          a6, 4f
4:                jal          ra, 9f
5:                jal          ra, 14f
6:                jal          ra, 21f
7:                jal          ra, 0b
8:                jal          t0, 10f
9:                jal          t1, 17f
10:               jal          tp, 5b
11:               jal          t1, 1b
12:               jal          gp, 8b
13:               jal          ra, 19f
14:               jal          sp, 20f
15:               jal          t1, 22f
16:               jal          t1, 3b
17:               jal          t1, 7b
18:               jal          ra, 11b
19:               jal          a7, 2b
20:               jal          t1, 16b
21:               jal          ra, 13b
22:               xori         s3, sp, 358
sub_5_1:          jal          ra, 14f
0:                jal          ra, 2f
1:                jal          t4, 5f
2:                jal          ra, 3f
3:                jal          a4, 15f
4:                jal          t5, 11f
5:                jal          tp, 9f
6:                jal          ra, 10f
7:                jal          ra, 16f
8:                jal          gp, 13f
9:                jal          ra, 0b
10:               jal          ra, 7b
11:               jal          t1, 6b
12:               jal          t1, 8b
13:               jal          tp, 4b
14:               jal          ra, 1b
15:               jal          tp, 12b
16:               sub          zero, zero, s1
sub_5_3:          jal          ra, 2f
0:                jal          ra, 13f
1:                jal          ra, 9f
2:                jal          a5, 11f
3:                jal          t0, 5f
4:                jal          t1, 14f
5:                jal          t1, 1b
6:                jal          ra, 3b
7:                jal          t4, 19f
8:                jal          sp, 16f
9:                jal          t1, 17f
10:               jal          t1, 7b
11:               jal          ra, 4b
12:               jal          tp, 0b
13:               jal          ra, 6b
14:               jal          t1, 18f
15:               jal          ra, 8b
16:               jal          ra, 12b
17:               jal          ra, 10b
18:               jal          ra, 15b
19:               jal          ra, 20f
20:               xor          t1, gp, t2
sub_5_0:          jal          ra, 15f
0:                jal          sp, 27f
1:                jal          ra, 4f
2:                jal          ra, 18f
3:                jal          ra, 7f
4:                jal          t1, 14f
5:                jal          t1, 2b
6:                jal          ra, 23f
7:                jal          a6, 26f
8:                jal          ra, 9f
9:                jal          ra, 11f
10:               jal          ra, 20f
11:               jal          t2, 1b
12:               jal          ra, 3b
13:               jal          t1, 25f
14:               jal          ra, 21f
15:               jal          a6, 0b
16:               jal          ra, 12b
17:               jal          t1, 19f
18:               jal          ra, 28f
19:               jal          ra, 6b
20:               jal          ra, 13b
21:               jal          ra, 24f
22:               jal          ra, 17b
23:               jal          s9, 16b
24:               jal          s6, 22b
25:               jal          ra, 8b
26:               jal          ra, 5b
27:               jal          ra, 10b
28:               srai         s0, s9, 19
sub_5_2:          jal          ra, 11f
0:                jal          ra, 2f
1:                jal          ra, 6f
2:                jal          ra, 12f
3:                jal          s7, 10f
4:                jal          s2, 8f
5:                jal          s1, 7f
6:                jal          sp, 0b
7:                jal          ra, 4b
8:                jal          ra, 9f
9:                jal          t2, 3b
10:               jal          ra, 1b
11:               jal          t1, 5b
12:               jal          t1, 13f
13:               sub          s6, a3, s10
                  and          a3, s6, s4
                  ori          s9, a4, 325
                  slli         sp, t3, 0
                  and          t0, a7, s10
                  ori          t6, s11, 203
                  and          a1, s9, zero
                  addi         a5, a3, 468
                  sll          s7, s7, s2
                  and          ra, s8, s7
                  bge          t0, a3, 24f
                  slt          t5, t2, s11
                  sltu         t5, t2, a2
                  sub          s5, a1, t1
                  ori          s3, t1, -792
                  srl          gp, a1, a4
                  bne          t6, sp, 19f
                  bgeu         s8, s9, 24f
                  sub          a1, a6, t6
                  auipc        t1, 995974
19:               lui          s0, 258153
                  bne          s11, ra, 35f
                  lui          s5, 652403
                  slli         s2, a3, 20
                  sub          s1, t2, t2
24:               srl          t0, a0, s5
                  andi         t4, ra, -158
                  slt          s7, t2, s2
                  slti         zero, t2, -102
                  xor          s9, t0, a7
                  add          a7, gp, t5
                  bne          gp, sp, 31f
31:               beq          s3, sp, 35f
                  ori          t3, t1, -351
                  sra          s11, s7, a2
                  ori          t5, s0, -996
35:               srli         s8, gp, 23
                  srai         t3, ra, 14
                  beq          a3, s4, 44f
                  or           a7, t4, t3
                  or           s6, s0, s1
                  srl          s3, t2, s3
                  xor          gp, a1, s8
                  beq          s1, zero, 51f
                  addi         s0, a0, -313
44:               ori          a1, s5, 1533
                  xor          t6, s7, a1
                  add          s2, t1, s3
                  srli         s6, t2, 22
                  xor          t2, zero, a4
                  xori         a7, s11, 1961
                  slli         s6, t4, 31
51:               xor          gp, s8, t0
                  bgeu         t6, s8, 72f
                  and          gp, t4, gp
                  beq          s8, s10, 58f
                  auipc        t6, 1039744
                  srli         t4, s11, 0
                  and          t4, ra, t4
58:               xor          s8, t0, s11
                  andi         a4, s3, -145
                  nop
                  bltu         zero, s11, 78f
                  add          zero, t6, t5
                  slti         gp, s8, 864
                  lui          s6, 797446
                  ori          s0, s4, 1082
                  xor          zero, t3, a6
                  xor          tp, t4, t0
                  add          t3, t5, t0
                  sll          ra, t6, t5
                  slli         s10, a1, 10
                  auipc        s0, 492049
72:               addi         s6, s11, -474
                  sub          t6, s3, a2
                  slti         s9, s9, -605
                  slli         t2, t0, 7
                  blt          t5, s10, 77f
77:               sll          t6, s5, gp
78:               blt          a7, zero, 88f
                  bne          a7, s0, 86f
                  sra          s7, s1, s0
                  ori          s9, s4, 335
                  and          s1, s8, t1
                  bgeu         tp, t6, 94f
                  bltu         a7, a1, 101f
                  xori         s6, t4, 65
86:               auipc        s11, 352165
                  auipc        s3, 787398
88:               lui          zero, 201391
                  beq          gp, t5, 107f
                  srl          a7, s2, a4
                  bgeu         t5, a0, 105f
                  srl          s5, a7, a1
                  slli         a5, s3, 18
94:               add          a6, s7, a5
                  bgeu         zero, t6, 112f
                  andi         t3, s3, -749
                  sltiu        s11, a7, -1877
                  sub          a1, a2, s10
                  or           ra, s5, s10
                  nop
101:              xori         gp, s9, 164
                  sub          tp, s0, tp
                  nop
                  nop
105:              nop
                  lui          a1, 23634
107:              lui          tp, 177869
                  blt          t5, s1, 117f
                  slti         s6, s9, -882
                  srl          t5, s11, s5
                  and          zero, s11, t5
112:              auipc        t1, 1004347
                  bne          t0, a5, 131f
                  sltiu        s1, gp, -445
                  or           ra, t0, t4
                  slt          ra, tp, t2
117:              ori          a4, zero, 1544
                  slt          t4, t4, s1
                  bgeu         s7, t2, 124f
                  beq          t3, s8, 126f
                  lui          s11, 359002
                  sll          t0, s3, sp
                  bne          t1, s9, 125f
124:              slti         s7, t6, 811
125:              bltu         t0, s5, 140f
126:              srli         s7, t3, 10
                  xor          s8, s11, a4
                  or           a7, s2, t4
                  auipc        s10, 920846
                  lui          zero, 830419
131:              bge          a5, t6, 137f
                  srli         s0, gp, 23
                  bltu         ra, s8, 138f
                  bgeu         s8, s3, 135f
135:              bne          t4, t1, 145f
                  ori          t2, gp, 678
137:              sub          a7, a7, a1
138:              add          a7, s3, t5
                  sra          t0, gp, s5
140:              blt          a2, a5, 155f
                  sll          s0, t1, a1
                  srai         a3, a2, 9
                  ori          s11, s2, 627
                  blt          ra, a6, 159f
145:              xor          s6, s8, s0
                  blt          s6, a3, 156f
                  slli         t5, t3, 15
                  sltiu        t5, s6, 2046
                  slt          s3, s11, a1
                  blt          t6, t4, 168f
                  sub          t1, t5, s3
                  lui          a6, 323607
                  sra          tp, a3, s11
                  sltiu        gp, ra, 218
155:              sltiu        s11, a2, 1150
156:              bltu         sp, s6, 173f
                  srli         t4, s9, 14
                  xor          a7, a5, s4
159:              slt          t5, s10, tp
                  nop
                  auipc        s7, 214660
                  slti         ra, s1, 1570
                  srai         t5, t1, 21
                  andi         t6, t1, 724
                  sltu         s7, t3, sp
                  auipc        s10, 508864
                  add          s5, a0, s11
168:              srl          a6, ra, a2
                  xori         t5, gp, -1503
                  beq          s10, t5, 190f
                  srli         a5, s11, 16
                  sub          s10, t2, s11
173:              bltu         a6, t3, 188f
                  andi         a1, t1, -1860
                  sltu         sp, s5, s2
                  xori         s6, t2, 881
                  sub          ra, s2, t4
                  bltu         ra, s11, 182f
                  sra          s2, tp, sp
                  beq          s3, a3, 197f
                  sltu         zero, s6, a2
182:              ori          a7, gp, -127
                  or           s1, sp, s8
                  and          s2, s1, s9
                  bgeu         s8, s6, 192f
                  bgeu         s0, tp, 201f
                  srli         s11, a6, 31
188:              auipc        t5, 383803
                  and          t1, a0, t0
190:              or           a5, s0, s1
                  sra          s10, s3, t0
192:              sll          s2, s4, t0
                  xor          t2, t4, s2
                  sll          a7, a5, t4
                  sub          gp, zero, s4
                  ori          s2, a0, 451
197:              sltu         s1, s2, t0
                  add          t5, s10, t0
                  addi         a4, s1, -1372
                  xori         a4, a2, 1213
201:              sub          a3, gp, a3
                  lui          zero, 302087
                  lui          sp, 641783
                  srli         t2, t5, 9
                  andi         a1, s1, -1680
                  slli         ra, s7, 25
                  slt          s8, s10, s3
                  slli         s9, s9, 30
                  slli         a4, tp, 19
                  blt          s10, a5, 217f
                  bgeu         a2, t3, 220f
                  slti         t3, s10, -578
                  sltiu        a1, tp, 85
                  beq          s0, zero, 219f
                  and          tp, t4, s8
                  blt          gp, s1, 224f
217:              xori         a5, s2, -90
                  srai         s5, a0, 27
219:              sra          sp, t1, t3
220:              nop
                  lui          a3, 1024302
                  or           a6, a6, t3
                  beq          t4, gp, 225f
224:              lui          s0, 225335
225:              xor          tp, s3, a4
                  sltiu        a1, s9, -621
                  lui          s3, 175766
                  addi         a6, s4, -665
                  srai         gp, s3, 3
                  sltiu        a5, s2, 1461
                  lui          t0, 737121
                  ori          s1, t4, 308
                  andi         t5, t2, 258
                  srli         a7, t1, 3
                  bltu         ra, t3, 246f
                  auipc        sp, 257918
                  bgeu         s0, t2, 243f
                  bgeu         a6, s4, 242f
                  xori         s5, a6, 1382
                  auipc        s3, 73861
                  blt          a0, a4, 245f
242:              srl          tp, s8, s7
243:              sll          s5, gp, t1
                  bgeu         a3, a3, 261f
245:              nop
246:              andi         s5, s11, -370
                  slti         s0, a3, 1235
                  ori          zero, a1, -1758
                  or           s9, s10, a7
                  xori         t1, s2, 1328
                  andi         a5, a1, -199
                  sra          a5, s4, s5
                  sra          tp, a6, a2
                  bgeu         t0, s8, 266f
                  nop
                  sub          s10, s8, s3
                  slli         s1, a1, 28
                  auipc        gp, 158525
                  srai         s10, tp, 17
                  srli         s2, s9, 18
261:              sra          t2, t4, t1
                  add          gp, a2, tp
                  ori          t4, a6, -582
                  beq          s7, a0, 266f
                  xor          a6, t2, a0
266:              slt          t5, s1, t1
                  slti         s10, a4, -599
                  ori          s10, a0, 1844
                  ori          s9, gp, -850
                  lui          s10, 32626
                  sub          a5, a4, s0
                  xori         t5, s8, -269
                  lw           ra, 4(a0)
                  addi         a0, a0, 44
                  xor          s11, s0, zero
397:              addi x28, x1, 0
397:              jalr x28, x28, 0
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x12, x10, zero
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x17, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x17, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x17, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x17, x23, ecall_handler
                  li x23, 0x1
                  beq x17, x23, instr_fault_handler
                  li x23, 0x5
                  beq x17, x23, load_fault_handler
                  li x23, 0x7
                  beq x17, x23, store_fault_handler
                  li x23, 0xc
                  beq x17, x23, pt_fault_handler
                  li x23, 0xd
                  beq x17, x23, pt_fault_handler
                  li x23, 0xf
                  beq x17, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x10, x12, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x12, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x12, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x10, x12, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x10, x12, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x10, x12, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
