.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 0
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x8e746248
                  li x4, 0x80000000
                  li x5, 0xf5362659
                  li x6, 0x80000000
                  li x7, 0xf65c4ebe
                  li x8, 0x9459b87c
                  li x9, 0x8
                  li x10, 0x44935611
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0xed5fa973
                  li x15, 0x3555ff96
                  li x16, 0xe
                  li x17, 0x0
                  li x18, 0xfb429722
                  li x19, 0x7
                  li x20, 0xfdbd3b76
                  li x21, 0xc
                  li x22, 0x88e3eb71
                  li x23, 0x80000000
                  li x24, 0x1
                  li x25, 0x7
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xcd8f12e3
                  li x31, 0xfe530c12
                  la x27, user_stack_end
main:             jal          t1, 17f
0:                jal          t1, 11f
1:                jal          ra, 15f
2:                jal          ra, 21f
3:                jal          s8, 5f
4:                jal          t1, 6f
5:                jal          ra, 2b
6:                jal          t1, 0b
7:                jal          ra, 3b
8:                jal          t1, 4b
9:                jal          ra, 13f
10:               jal          ra, 20f
11:               jal          ra, 12f
12:               jal          ra, 9b
13:               jal          ra, 10b
14:               jal          t1, 7b
15:               jal          t4, 19f
16:               jal          t5, 8b
17:               jal          gp, 16b
18:               jal          t1, 1b
19:               jal          ra, 14b
20:               jal          ra, 18b
21:               srl          t1, t2, a5
main_11:          jal          t1, 0f
0:                jal          a1, 10f
1:                jal          ra, 5f
2:                jal          ra, 9f
3:                jal          a1, 6f
4:                jal          s9, 2b
5:                jal          ra, 8f
6:                jal          a7, 11f
7:                jal          s4, 3b
8:                jal          s1, 4b
9:                jal          ra, 12f
10:               jal          ra, 7b
11:               jal          a5, 1b
12:               or           s9, s5, t1
main_3:           jal          t1, 12f
0:                jal          t3, 11f
1:                jal          t2, 5f
2:                jal          ra, 13f
3:                jal          ra, 14f
4:                jal          ra, 6f
5:                jal          a2, 9f
6:                jal          ra, 0b
7:                jal          ra, 1b
8:                jal          ra, 10f
9:                jal          t1, 8b
10:               jal          t1, 2b
11:               jal          ra, 7b
12:               jal          t1, 4b
13:               jal          ra, 3b
14:               andi         s5, a1, -289
main_12:          jal          t1, 10f
0:                jal          ra, 14f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          ra, 7f
4:                jal          ra, 6f
5:                jal          t0, 9f
6:                jal          s2, 12f
7:                jal          tp, 13f
8:                jal          ra, 2b
9:                jal          ra, 15f
10:               jal          t1, 8b
11:               jal          s3, 0b
12:               jal          a1, 5b
13:               jal          a0, 16f
14:               jal          s3, 1b
15:               jal          ra, 3b
16:               srai         s6, s11, 22
main_4:           jal          t1, 11f
0:                jal          ra, 1f
1:                jal          t1, 4f
2:                jal          ra, 8f
3:                jal          ra, 0b
4:                jal          a5, 7f
5:                jal          ra, 12f
6:                jal          ra, 3b
7:                jal          ra, 5b
8:                jal          ra, 9f
9:                jal          gp, 10f
10:               jal          ra, 6b
11:               jal          t3, 2b
12:               sra          tp, a2, s6
main_6:           jal          t1, 2f
0:                jal          ra, 23f
1:                jal          ra, 6f
2:                jal          ra, 20f
3:                jal          ra, 13f
4:                jal          s2, 18f
5:                jal          ra, 3b
6:                jal          ra, 21f
7:                jal          ra, 9f
8:                jal          t1, 15f
9:                jal          ra, 25f
10:               jal          ra, 26f
11:               jal          ra, 8b
12:               jal          ra, 7b
13:               jal          t5, 16f
14:               jal          ra, 11b
15:               jal          ra, 24f
16:               jal          ra, 14b
17:               jal          ra, 19f
18:               jal          ra, 17b
19:               jal          s9, 1b
20:               jal          t1, 4b
21:               jal          a3, 12b
22:               jal          ra, 0b
23:               jal          ra, 10b
24:               jal          t0, 22b
25:               jal          ra, 5b
26:               slli         a5, zero, 30
main_1:           jal          t1, 6f
0:                jal          t4, 14f
1:                jal          ra, 24f
2:                jal          ra, 21f
3:                jal          ra, 7f
4:                jal          ra, 25f
5:                jal          ra, 12f
6:                jal          ra, 15f
7:                jal          ra, 0b
8:                jal          a4, 26f
9:                jal          t1, 1b
10:               jal          t1, 9b
11:               jal          tp, 8b
12:               jal          tp, 10b
13:               jal          ra, 11b
14:               jal          a7, 22f
15:               jal          t1, 4b
16:               jal          ra, 18f
17:               jal          gp, 19f
18:               jal          t6, 3b
19:               jal          t0, 27f
20:               jal          ra, 2b
21:               jal          ra, 17b
22:               jal          ra, 23f
23:               jal          ra, 20b
24:               jal          ra, 13b
25:               jal          ra, 5b
26:               jal          a3, 16b
27:               or           ra, s2, s5
main_13:          jal          t1, 18f
0:                jal          t2, 17f
1:                jal          ra, 20f
2:                jal          ra, 6f
3:                jal          gp, 10f
4:                jal          t1, 3b
5:                jal          ra, 19f
6:                jal          t1, 0b
7:                jal          a0, 13f
8:                jal          t1, 1b
9:                jal          s3, 7b
10:               jal          tp, 22f
11:               jal          ra, 4b
12:               jal          ra, 5b
13:               jal          a4, 11b
14:               jal          ra, 12b
15:               jal          ra, 8b
16:               jal          t4, 21f
17:               jal          t1, 24f
18:               jal          t1, 9b
19:               jal          t1, 23f
20:               jal          ra, 14b
21:               jal          ra, 2b
22:               jal          s2, 15b
23:               jal          ra, 16b
24:               slli         a3, s8, 30
main_10:          jal          t1, 11f
0:                jal          ra, 13f
1:                jal          tp, 6f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          s5, 3b
5:                jal          t4, 10f
6:                jal          t1, 4b
7:                jal          ra, 9f
8:                jal          ra, 1b
9:                jal          ra, 2b
10:               jal          a2, 8b
11:               jal          ra, 12f
12:               jal          t1, 5b
13:               andi         s6, s8, -370
main_2:           jal          t1, 5f
0:                jal          s9, 14f
1:                jal          t1, 16f
2:                jal          ra, 11f
3:                jal          ra, 0b
4:                jal          ra, 1b
5:                jal          a3, 7f
6:                jal          a7, 18f
7:                jal          a3, 10f
8:                jal          ra, 15f
9:                jal          ra, 17f
10:               jal          t1, 13f
11:               jal          ra, 19f
12:               jal          ra, 8b
13:               jal          t3, 12b
14:               jal          ra, 9b
15:               jal          ra, 4b
16:               jal          ra, 3b
17:               jal          t1, 6b
18:               jal          t1, 2b
19:               xor          s7, a7, s3
main_0:           jal          t1, 12f
0:                jal          t5, 7f
1:                jal          ra, 0b
2:                jal          s4, 15f
3:                jal          ra, 11f
4:                jal          t1, 14f
5:                jal          t1, 10f
6:                jal          t1, 17f
7:                jal          ra, 18f
8:                jal          t0, 3b
9:                jal          t1, 16f
10:               jal          ra, 13f
11:               jal          ra, 4b
12:               jal          a1, 9b
13:               jal          ra, 6b
14:               jal          t0, 2b
15:               jal          ra, 5b
16:               jal          t2, 8b
17:               jal          t3, 1b
18:               jal          t0, 19f
19:               sltu         s6, zero, gp
main_8:           jal          t1, 15f
0:                jal          ra, 3f
1:                jal          ra, 17f
2:                jal          ra, 20f
3:                jal          tp, 4f
4:                jal          ra, 16f
5:                jal          s2, 13f
6:                jal          ra, 27f
7:                jal          t1, 24f
8:                jal          ra, 23f
9:                jal          ra, 25f
10:               jal          a3, 18f
11:               jal          t1, 6b
12:               jal          s8, 22f
13:               jal          a7, 19f
14:               jal          s0, 21f
15:               jal          ra, 12b
16:               jal          a6, 2b
17:               jal          ra, 14b
18:               jal          ra, 7b
19:               jal          t1, 9b
20:               jal          t1, 5b
21:               jal          t1, 0b
22:               jal          ra, 26f
23:               jal          ra, 10b
24:               jal          ra, 1b
25:               jal          ra, 11b
26:               jal          ra, 8b
27:               and          a4, ra, t2
main_9:           jal          t1, 2f
0:                jal          s7, 9f
1:                jal          ra, 4f
2:                jal          tp, 8f
3:                jal          t1, 13f
4:                jal          ra, 14f
5:                jal          ra, 10f
6:                jal          t1, 1b
7:                jal          ra, 6b
8:                jal          t1, 12f
9:                jal          gp, 19f
10:               jal          s1, 16f
11:               jal          a7, 3b
12:               jal          s9, 5b
13:               jal          ra, 7b
14:               jal          tp, 18f
15:               jal          t1, 17f
16:               jal          ra, 11b
17:               jal          t1, 0b
18:               jal          t1, 15b
19:               add          s8, a2, a6
                  ori          zero, t5, -1575
                  or           t3, sp, s5
                  sub          a5, zero, s7
                  lui          s7, 347987
                  bne          a3, s4, 14f
                  or           t6, a2, s1
                  beq          t3, s6, 20f
                  slt          s1, s9, s1
                  sra          a2, s4, a7
                  beq          a4, t6, 24f
                  addi         a6, t3, -522
                  bltu         a2, t0, 30f
                  slti         s3, s9, -152
                  sltiu        s8, a6, -1769
14:               add          s8, tp, t4
                  slli         s9, zero, 4
                  addi         s6, s4, 563
                  bne          a2, sp, 32f
                  nop
                  slt          s2, s11, t6
20:               add          a3, tp, s10
                  bltu         s5, ra, 22f
22:               sub          s2, t1, zero
                  or           a2, a2, s8
24:               auipc        gp, 439342
                  xori         s9, s1, 714
                  xor          ra, s3, t1
                  blt          tp, s3, 45f
                  slt          a4, s6, t3
                  addi         s1, sp, 223
30:               slli         a6, t6, 28
                  nop
32:               srl          s8, t6, a2
                  slti         s7, s5, -154
                  blt          tp, t6, 54f
                  slt          s5, s3, tp
                  blt          zero, s10, 38f
                  slti         s2, a5, 235
38:               bne          a7, sp, 49f
                  lui          a5, 394123
                  sra          s7, t1, t4
                  auipc        s5, 901930
                  nop
                  bge          gp, s9, 49f
                  slli         a0, a1, 18
45:               sltiu        t1, gp, 235
                  lui          s3, 511631
                  xor          s1, a4, s6
                  bne          s3, a6, 51f
49:               beq          s1, gp, 51f
                  beq          a7, tp, 54f
51:               sra          a7, a6, s9
                  slt          zero, s6, a7
                  sll          s4, gp, s8
54:               ori          t0, s9, -1428
                  auipc        a1, 1005396
                  xori         s9, s8, -802
                  xor          s3, t5, s7
                  add          t2, t6, s6
                  addi         a7, sp, -1296
                  auipc        s7, 467995
                  andi         a1, t5, -1043
                  blt          a7, sp, 71f
                  andi         s6, a1, 329
                  xori         zero, zero, -967
                  lui          s7, 689403
                  bltu         a3, sp, 73f
                  or           a4, s4, s7
                  bge          a1, t0, 72f
                  bne          t6, s9, 87f
                  or           s0, s8, a3
71:               bne          ra, t6, 84f
72:               bge          t5, t2, 77f
73:               add          t4, s2, s8
                  bgeu         s8, a2, 77f
                  add          s6, gp, s0
                  addi         s0, a5, 1566
77:               srli         a6, t3, 27
                  xor          a1, t3, t3
                  xor          zero, a2, a1
                  bgeu         s6, a3, 90f
                  slti         s9, t3, -869
                  srli         s4, a0, 16
                  bltu         a2, s5, 86f
84:               sll          t2, t2, t4
                  slti         gp, s5, -1726
86:               sltu         ra, t3, a4
87:               slli         t2, t5, 0
                  sra          t3, a3, zero
                  add          gp, s10, t3
90:               xor          t6, s7, gp
                  slt          s0, s3, t2
                  addi         s8, a2, -1764
                  xori         s4, t1, 1910
                  sltiu        gp, s11, 337
                  andi         t0, s8, 737
                  bgeu         t2, sp, 109f
                  andi         a4, t4, -1234
                  srl          t2, s2, t4
                  bge          a6, s10, 115f
                  bne          t6, s10, 102f
                  slti         s2, s0, 1561
102:              xor          t5, gp, ra
                  xori         zero, gp, -298
                  sll          zero, s9, zero
                  sra          t6, a6, s6
                  bge          a7, a2, 112f
                  blt          sp, zero, 116f
                  beq          t3, zero, 121f
109:              srli         tp, a3, 29
                  sltiu        s1, t5, -444
                  addi         t0, s8, 484
112:              bgeu         tp, t5, 131f
                  andi         a7, a1, 1913
                  lui          s1, 652691
115:              bltu         a6, s0, 116f
116:              xor          t6, s2, s4
                  sub          zero, zero, t3
                  bltu         s3, s4, 138f
                  sll          a2, a6, a7
                  ori          t1, s0, 520
                  auipc        s0, 527962
                  la           t3, sub_2
                  srli         s5, a5, 22
                  add          t2, ra, s6
                  addi         t3, t3, -11
                  sub          zero, a2, s2
                  slt          t0, a7, t4
                  ori          s1, s7, 1774
                  slti         t4, s2, -223
main_j2:          jalr         t1, t3, 11 #jump main -> sub_2
                  sra          t3, t3, a2
121:              blt          s0, s6, 140f
                  auipc        t2, 233478
                  sub          t4, s7, t6
                  ori          a5, tp, 1783
                  bgeu         s11, a4, 129f
                  bgeu         t3, s0, 129f
                  slt          s5, gp, a4
                  sll          s5, s4, a1
129:              srai         t3, t3, 21
                  auipc        s0, 922748
131:              and          t2, t6, s7
                  blt          a5, s3, 139f
                  slli         t2, sp, 8
                  blt          a6, s11, 147f
                  nop
                  bne          t1, s6, 152f
                  auipc        zero, 192943
138:              beq          s0, a6, 147f
139:              xori         tp, t3, 1389
140:              sra          s6, t6, s3
                  add          a1, t0, a3
                  and          tp, s6, t5
                  bge          t0, a3, 161f
                  sll          s3, s6, t6
                  bltu         sp, s3, 155f
                  bge          s6, s3, 152f
147:              add          t1, a0, s1
                  sra          t2, a2, s1
                  sltiu        s2, a2, 626
                  ori          t3, s6, -2034
                  beq          s10, a3, 166f
152:              sltu         s6, s7, s6
                  sra          zero, s1, t4
                  srl          a6, sp, s8
155:              slli         s6, s0, 8
                  auipc        s0, 335124
                  srl          s4, a0, t5
                  blt          a3, a3, 167f
                  blt          s6, s1, 164f
                  slt          s0, a7, s5
161:              blt          a2, a1, 164f
                  sub          t2, s8, s9
                  ori          a0, s3, -332
164:              xori         s4, s2, -330
                  sra          a0, t4, t5
166:              xor          a2, t2, t2
167:              bltu         sp, s10, 180f
                  ori          s6, s2, -1004
                  xori         a5, gp, 820
                  and          gp, s7, a7
                  xor          a4, s0, s7
                  blt          a0, a4, 174f
                  srl          s9, s8, s6
174:              ori          t2, s1, -1117
                  lui          a6, 136383
                  andi         s6, ra, -698
                  xori         a6, t3, -483
                  bge          sp, gp, 197f
                  slt          tp, a6, t6
180:              sra          a7, a5, gp
                  nop
                  bgeu         s4, ra, 186f
                  and          s0, s6, s11
                  bge          s9, t1, 197f
                  blt          s7, s7, 196f
186:              bge          zero, a6, 204f
                  srli         t5, s6, 15
                  sltu         s6, a4, s8
                  slt          t5, zero, s0
                  bne          a6, t2, 192f
                  slti         a7, a7, 181
192:              blt          a5, t2, 207f
                  slli         s1, a6, 30
                  ori          a5, t2, 1385
                  bltu         sp, sp, 201f
196:              or           t3, sp, t1
197:              sltu         t1, t4, s7
                  sub          s3, a4, s5
                  add          a7, ra, s10
                  slti         s6, a3, 1359
201:              sll          a4, ra, a4
                  beq          s3, tp, 212f
                  or           t4, s10, s0
204:              slli         gp, t3, 3
                  andi         s9, a7, -1027
                  sltiu        s9, sp, -1901
207:              slti         s9, s4, -790
                  nop
                  bne          a5, s11, 223f
                  beq          s0, tp, 212f
                  add          t6, t1, t2
212:              srli         s7, a5, 27
                  sltiu        s5, t6, -883
                  sra          gp, t3, s0
                  srli         s4, s9, 1
                  bltu         s2, t1, 219f
                  andi         t1, s7, -477
                  add          s5, s2, t4
219:              slli         zero, a2, 11
                  bgeu         s10, s9, 230f
                  bne          t6, a6, 223f
                  lui          s9, 476533
223:              or           t3, s2, s9
                  bgeu         t6, ra, 229f
                  or           s4, t0, t2
                  sub          s8, s3, t6
                  slli         ra, s7, 22
                  slt          s6, a0, t4
229:              beq          s6, s1, 247f
230:              slt          a7, a0, t6
                  bne          a5, s3, 246f
                  or           s4, s6, t0
                  bne          s8, a3, 246f
                  auipc        zero, 325809
                  blt          a5, s6, 242f
                  auipc        a7, 662769
                  add          t0, s10, s5
                  slli         t2, s9, 18
                  bge          t5, s4, 248f
                  addi         a4, a5, -1196
                  or           ra, s1, s11
242:              sltiu        a0, t3, 1337
                  addi         s2, a2, 1830
                  lui          a3, 589258
                  bne          s8, a2, 264f
246:              xor          s2, s6, a6
247:              sltiu        s7, s11, 404
248:              or           a2, t3, t1
                  srai         zero, tp, 10
                  sra          t5, tp, s7
                  bne          s7, s3, 266f
                  blt          s6, s11, 268f
                  slti         s5, s10, -1062
                  addi         s1, s8, 1011
                  bgeu         a4, t5, 268f
                  bne          t6, t2, 269f
                  slti         tp, s5, -1990
                  srl          a5, s4, s8
                  xori         t4, t2, 1696
                  lui          t0, 772206
                  bne          s5, s7, 265f
                  slli         tp, a6, 7
                  sra          s4, a3, s8
264:              bne          a2, a5, 266f
265:              bne          s7, sp, 268f
266:              srl          s2, t1, a2
                  nop
268:              srl          a7, s9, s6
269:              srli         s4, s3, 13
                  addi         t6, a3, -1427
                  xor          s7, a3, s2
                  bltu         s7, s0, 292f
                  nop
                  slti         t4, a7, 1683
                  slt          ra, t0, sp
                  srli         s2, a2, 23
                  nop
                  bne          t4, a4, 280f
                  addi         a1, gp, 1893
280:              andi         s5, s1, -518
                  or           s7, s6, s9
                  slli         s4, s4, 26
                  beq          t6, zero, 289f
                  sll          s2, a5, t0
                  sll          a0, sp, t2
                  auipc        s0, 979669
                  and          s0, s0, s9
                  bne          a1, s4, 294f
289:              or           s8, s6, tp
                  slti         ra, s5, -89
                  slt          t3, s7, gp
292:              sll          t2, a1, s2
                  srai         a4, s7, 26
294:              xori         a4, a1, 1945
                  slli         t5, s3, 23
                  sltu         s3, tp, s0
                  bne          t5, a6, 300f
                  sltu         t5, s1, tp
                  nop
300:              srli         a5, ra, 18
                  nop
                  xori         s2, s11, -845
                  lui          a3, 144665
                  srai         a4, s11, 22
                  bgeu         s6, s5, 316f
                  srli         tp, t3, 23
                  slt          s7, zero, s9
                  slti         zero, zero, 1399
                  sll          ra, a2, s7
                  xor          a7, sp, s9
                  xor          t6, ra, t0
                  nop
                  srai         t1, a2, 31
                  slti         s2, s6, 970
                  add          ra, s11, s4
316:              lui          t6, 58302
                  or           t3, a1, sp
                  auipc        t4, 33624
                  sll          a5, s1, s4
                  ori          t6, s7, -1793
                  sub          a4, a2, t4
                  or           s1, s8, s11
                  or           gp, t0, ra
                  bge          s0, s6, 342f
                  sub          s3, s9, s4
                  srl          a3, s3, a5
                  xori         s4, a0, 1738
                  sub          a4, s4, s6
                  ori          t4, a6, 1237
                  slti         s5, gp, 320
                  auipc        a5, 245511
                  beq          s8, s10, 342f
                  sltiu        t6, sp, -1220
                  and          s7, s4, zero
                  bltu         a4, a3, 344f
                  srl          a1, gp, t5
                  auipc        a0, 702268
                  blt          zero, a2, 341f
                  lui          s3, 920511
                  sub          a2, s8, sp
341:              sra          a4, a3, zero
342:              addi         s3, s9, -336
                  srai         a6, a4, 19
344:              xor          t4, a1, s6
                  addi         s1, zero, -186
                  blt          s8, t0, 347f
347:              srli         s6, t5, 13
                  andi         gp, a2, 1114
                  sub          a4, s11, s0
                  lui          a7, 239625
                  slli         zero, a4, 3
                  sltu         a3, gp, s3
                  or           t0, tp, gp
                  srai         a5, t3, 21
                  or           t2, t3, a4
                  slt          a7, s11, a3
                  slli         s1, t6, 14
                  nop
                  xor          a0, s1, s8
                  sll          t4, s5, tp
                  add          t5, sp, a0
                  xori         s2, a4, -604
                  or           s4, s11, s2
                  add          a3, t4, t5
                  bgeu         t0, t5, 369f
                  sub          a4, a7, t3
                  bge          s7, t6, 381f
                  sll          zero, t0, t0
369:              bge          s5, ra, 388f
                  ori          a0, t1, -251
                  sltu         ra, t2, s5
                  slti         gp, s6, 1427
                  xor          s7, t2, a6
                  xor          a3, sp, s0
                  srai         s7, s5, 17
                  and          s3, s3, a6
                  add          s3, s9, s6
                  bltu         zero, a3, 384f
                  beq          a4, a0, 394f
                  xori         t4, t5, -1611
381:              sll          t3, a5, sp
                  or           t2, t4, a5
                  srli         tp, s9, 19
384:              add          tp, t6, a7
                  lui          t4, 306839
                  auipc        s1, 832915
                  sra          a7, t5, a3
388:              or           s8, s3, t6
                  andi         s2, a6, -534
                  lui          a6, 609612
                  bgeu         ra, sp, 394f
                  add          s4, t2, s8
                  andi         t0, t4, 1400
394:              srli         a3, t6, 25
                  srai         t3, a6, 14
                  srli         t6, t2, 23
                  addi         a7, t3, 1508
                  bne          s8, s2, 409f
                  bne          t5, s10, 409f
                  sll          a7, t5, t2
main_5:           jal          t1, 10f
0:                jal          t1, 20f
1:                jal          ra, 11f
2:                jal          t1, 3f
3:                jal          ra, 4f
4:                jal          ra, 22f
5:                jal          ra, 9f
6:                jal          t1, 24f
7:                jal          ra, 6b
8:                jal          ra, 19f
9:                jal          ra, 1b
10:               jal          ra, 23f
11:               jal          ra, 21f
12:               jal          ra, 17f
13:               jal          ra, 26f
14:               jal          t1, 5b
15:               jal          ra, 27f
16:               jal          ra, 15b
17:               jal          t1, 8b
18:               jal          t1, 14b
19:               jal          a5, 0b
20:               jal          ra, 25f
21:               jal          t1, 16b
22:               jal          ra, 18b
23:               jal          a2, 7b
24:               jal          t1, 13b
25:               jal          ra, 2b
26:               jal          t1, 12b
27:               sltiu        a1, a3, -1505
                  sra          a2, s2, s8
                  srai         t2, s9, 20
                  sra          a2, zero, s10
                  bgeu         ra, s7, 405f
405:              and          t2, s4, tp
                  xor          tp, ra, t2
                  sra          t0, a6, s6
                  srli         t0, t4, 2
                  la           t5, sub_1
                  srl          s2, zero, tp
                  addi         t5, t5, -410
                  auipc        a3, 826709
                  add          a4, t2, t6
main_j1:          jalr         t1, t5, 411 #jump main -> sub_1
                  bne          zero, s9, 422f
                  addi         a5, zero, 763
                  sll          ra, a6, a6
409:              srli         tp, s4, 16
                  slt          s7, s7, t1
                  srl          zero, a1, gp
                  xori         zero, ra, -389
                  xori         s9, s1, -343
                  bgeu         s9, a3, 418f
                  nop
                  xori         t0, s5, 1366
                  bge          a0, t1, 421f
418:              bltu         a5, s8, 436f
                  nop
                  or           gp, s1, a0
421:              sltu         s4, s5, a1
422:              bltu         t3, a4, 424f
                  xor          t4, a0, sp
424:              bne          tp, a5, 433f
                  xori         a1, s10, 1115
                  xor          a4, s0, s9
                  addi         s0, t3, -1661
                  bne          zero, tp, 441f
                  srai         a2, a3, 14
                  or           t3, t1, t5
                  auipc        t2, 578265
                  lui          zero, 588267
433:              addi         s1, s8, 779
                  bne          t0, t2, 441f
                  andi         a7, zero, 939
436:              slli         t1, s0, 14
main_14:          jal          t1, 10f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          ra, 11f
3:                jal          t4, 9f
4:                jal          t1, 6f
5:                jal          ra, 13f
6:                jal          t1, 5b
7:                jal          t1, 8f
8:                jal          t1, 1b
9:                jal          s8, 2b
10:               jal          t6, 7b
11:               jal          ra, 12f
12:               jal          ra, 0b
13:               jal          t3, 14f
14:               xor          s9, t0, a2
                  and          t3, t6, s4
                  slli         gp, a0, 12
                  bne          t3, s5, 448f
                  sub          s3, zero, s6
441:              srai         ra, sp, 29
                  slt          s3, s10, a3
                  sltu         s6, t5, a7
                  srai         a1, s9, 5
                  blt          t3, s5, 447f
                  and          a3, zero, t1
447:              sub          s0, a7, a0
448:              sll          t0, t0, s1
                  slli         t3, a0, 10
                  sltiu        t2, a4, -1162
                  lui          a1, 513337
                  sltu         a4, s8, s2
                  or           a6, s7, a6
                  or           tp, s8, s6
                  addi         a0, s3, -223
                  slti         s6, s6, 722
                  sll          t3, t2, a0
                  lui          a6, 522169
                  addi         a7, sp, -117
                  sra          a2, a0, t1
                  addi         tp, t4, -599
                  beq          s1, t1, 482f
                  sltu         t0, t1, a4
                  xori         a4, a7, 186
                  ori          t1, s7, -1293
                  or           s9, a7, t0
                  blt          zero, t1, 480f
                  add          a1, t3, a7
                  sltu         s4, ra, t3
                  auipc        t3, 159471
                  or           t0, s10, s8
                  bgeu         ra, a4, 477f
                  add          s0, a2, s2
                  xor          t0, s11, a2
                  sll          s7, s3, s10
                  blt          a3, a7, 491f
477:              xor          a5, s7, s3
                  bgeu         s8, a1, 497f
                  sub          s7, a7, t0
480:              bgeu         a0, t0, 486f
                  addi         a7, t5, -751
482:              lui          gp, 431869
                  xor          a6, a1, t3
                  bltu         a6, ra, 486f
                  auipc        a2, 263096
486:              andi         a4, s7, -1881
                  or           a5, s4, t6
                  andi         s9, t0, -1579
                  blt          t6, zero, 492f
                  xori         tp, s3, 249
491:              sll          s6, ra, s2
492:              slti         a4, s11, -2038
                  and          s9, t2, a0
                  add          a0, ra, a6
                  sltiu        s7, gp, -683
                  sll          a4, sp, a0
497:              slli         t6, gp, 5
                  and          s5, tp, a5
                  srl          t2, a1, s6
                  lui          s1, 572295
                  srl          a5, s10, a5
                  bge          t1, t0, 521f
                  slli         t2, tp, 25
                  and          a3, s3, a3
                  srli         tp, s0, 30
                  bge          s3, s2, 509f
                  auipc        a3, 438767
                  srai         gp, a3, 22
509:              bne          zero, t3, 523f
                  addi         a6, t6, -166
                  slti         gp, a1, -1417
                  or           gp, s4, a1
                  blt          a4, sp, 526f
                  sll          a0, t2, a6
                  nop
                  sub          zero, tp, s6
                  bgeu         s9, a6, 527f
                  bgeu         t5, s2, 536f
                  nop
                  bne          zero, a1, 534f
521:              ori          s5, gp, 566
                  sra          s1, a5, a3
523:              and          t2, tp, a0
                  auipc        t2, 305822
                  sra          s2, s8, gp
526:              nop
527:              nop
                  auipc        s7, 560161
                  andi         t1, a6, -1455
                  beq          s5, t1, 550f
                  sltiu        tp, s4, -860
                  srl          ra, a7, zero
                  bltu         a1, s9, 539f
534:              bltu         s8, s8, 547f
                  bltu         s7, s9, 538f
536:              srl          t5, s10, gp
                  lui          t5, 386179
538:              sll          s7, t5, s2
539:              blt          s1, t5, 557f
                  auipc        a3, 63846
                  beq          zero, s4, 551f
                  blt          s1, s7, 548f
                  bne          s3, s11, 561f
                  blt          a5, s8, 548f
                  addi         a5, s10, 1874
                  slti         s7, s11, 1464
547:              lui          t1, 196974
548:              auipc        s8, 621905
                  or           s7, t4, s0
550:              bltu         s10, gp, 553f
551:              sra          s1, t3, s1
                  bltu         s11, a1, 562f
553:              andi         t2, a3, -468
                  bge          a6, s4, 558f
                  slli         a1, t5, 22
                  slli         t5, s6, 6
557:              slli         s3, s11, 13
558:              or           a0, ra, t2
                  lui          s1, 849233
                  xori         t5, a3, -1486
561:              slt          a1, s11, s7
562:              nop
                  sltu         s3, a2, s0
                  and          t5, a0, a5
                  bne          a1, a6, 578f
                  sll          s7, s8, ra
                  slt          s3, ra, t4
                  ori          s7, a2, 1193
                  slt          s6, tp, s1
                  bgeu         s4, s0, 586f
                  add          t6, a0, s2
                  slli         a6, gp, 30
                  nop
                  lui          a3, 337497
                  andi         zero, a3, 1553
                  srli         s2, zero, 28
                  bge          t6, a5, 580f
578:              slt          s6, s5, gp
                  andi         a5, a1, 1885
580:              sll          t3, tp, a3
                  slti         s8, s11, 242
                  bltu         t1, t0, 587f
                  bltu         a2, t3, 602f
                  andi         tp, t5, -1630
                  or           s2, a0, s10
586:              sra          t4, a4, s6
587:              bgeu         s0, a7, 589f
                  srli         gp, s7, 28
589:              xori         a5, s7, -1578
                  sra          s2, sp, a2
                  auipc        a5, 906486
                  slli         s2, s5, 1
                  sltiu        s3, tp, 1155
                  auipc        t3, 953684
                  slti         s4, t4, -1349
                  sltu         s0, t0, t5
                  xor          a7, a7, t5
                  xori         t5, t0, 1701
                  andi         a1, gp, 480
                  bge          a2, t1, 613f
                  ori          t2, a1, -1554
602:              lui          a7, 43968
                  srai         gp, t1, 4
                  slti         s3, a0, 213
                  sltu         t4, ra, a7
                  slti         a3, a1, -1211
                  lui          ra, 968036
                  nop
                  or           ra, s8, s2
                  sltiu        a5, ra, 1615
                  srl          t0, t1, t2
                  sra          s3, s11, s0
613:              sub          s8, sp, zero
                  sub          a0, s0, t2
                  beq          t1, s4, 624f
                  sll          t5, zero, s1
                  bge          t6, s2, 632f
                  andi         s6, s8, 57
                  slti         s4, s3, 532
                  bge          t1, s1, 622f
                  and          s2, t3, s8
622:              bgeu         s5, t1, 633f
                  srai         zero, a3, 14
624:              lui          s7, 29758
                  sltiu        t2, t6, -36
                  or           t1, s2, t2
                  and          t2, tp, gp
                  auipc        t1, 851442
                  srl          s8, a2, a7
                  addi         a3, t5, -1772
                  srl          s3, t2, a6
632:              srl          s6, s5, s10
633:              srai         s5, s1, 14
                  sra          gp, t2, zero
                  beq          a5, t4, 636f
636:              sltiu        a4, s1, -505
                  srai         a4, a4, 23
                  blt          ra, s4, 645f
                  ori          a2, a2, -235
                  or           s8, s6, s0
                  and          tp, t5, s0
                  beq          s7, s11, 644f
                  and          s4, s7, a0
644:              slti         a5, s5, 1566
645:              bgeu         s8, t3, 660f
                  andi         gp, a0, 1217
                  xori         a4, s2, -1324
                  srl          t4, a7, s5
                  bltu         s7, s11, 668f
                  and          s4, t5, a4
                  sra          t1, t5, s7
                  ori          s0, s0, 813
                  or           a4, t4, s7
                  slli         tp, tp, 26
                  blt          a4, t1, 664f
                  sra          zero, t5, s0
                  and          s4, t2, s9
                  sltu         s8, gp, s8
                  slt          ra, a5, s2
660:              andi         gp, gp, -192
                  addi         a7, ra, 685
                  slt          s8, t6, a4
                  xor          s9, gp, a1
664:              nop
                  beq          tp, tp, 678f
                  xori         tp, s2, -281
                  sub          t2, a6, zero
668:              srli         s0, s7, 6
                  ori          t3, tp, -1159
                  add          a5, t2, s7
                  nop
                  addi         t5, t1, -1006
                  sltiu        s2, s11, -1221
                  slti         a1, s2, -262
                  slt          ra, a3, t5
                  lui          gp, 107090
                  bgeu         s6, s2, 686f
678:              srli         s0, t4, 27
                  nop
                  xor          a7, t3, a6
                  xori         a3, a7, 1234
                  srai         s8, a5, 26
                  slt          s8, t3, s5
                  or           a2, a4, sp
                  blt          t4, a3, 700f
686:              nop
                  xori         s4, zero, -965
                  slt          s4, sp, s10
                  sltu         a7, s11, zero
                  slt          zero, gp, s6
                  bgeu         tp, a5, 694f
                  bltu         t0, t1, 694f
                  bltu         a2, a0, 711f
694:              andi         t3, t2, -511
                  add          a1, s0, ra
                  beq          t0, t0, 706f
                  srl          a6, a1, a1
                  bne          a6, tp, 707f
                  bgeu         s2, s0, 709f
700:              bgeu         a7, a4, 702f
                  ori          t3, a4, 46
702:              bgeu         s7, s10, 715f
                  and          s0, gp, s6
                  addi         a0, s10, 340
                  xori         s1, ra, -1502
706:              or           t2, a0, s7
707:              srl          gp, a2, s9
                  xor          a5, a1, t0
709:              andi         tp, s5, -867
                  slt          a0, t3, a5
711:              bgeu         s0, s2, 731f
                  ori          s3, s11, 1573
                  nop
                  blt          a0, a3, 716f
715:              bltu         t2, gp, 716f
716:              addi         a3, t4, 393
                  slt          a5, a6, zero
                  slli         t0, s8, 27
                  or           a3, a7, t0
                  andi         t6, s9, 1394
                  xor          s6, t3, gp
                  nop
                  srai         s6, tp, 8
                  sub          zero, a2, t2
                  bltu         s9, t1, 744f
                  slt          s9, s11, ra
                  beq          s2, s9, 732f
                  bne          a1, t5, 747f
                  and          ra, a6, s4
                  ori          t4, gp, 2042
731:              add          a7, s10, t6
732:              blt          s0, t5, 746f
                  srl          s3, s10, a3
                  ori          s9, t4, 1118
                  lui          a1, 898933
                  andi         t3, a6, -1662
                  srl          t1, s11, tp
                  bgeu         a0, s9, 741f
                  andi         tp, gp, 752
                  bge          s0, t1, 747f
741:              slti         s7, s11, -1802
                  sltu         tp, a7, s6
                  slt          s7, t3, tp
744:              or           a0, s11, s8
                  bgeu         ra, s8, 763f
746:              slli         s7, ra, 22
747:              srl          a5, a3, t0
                  add          t1, s11, s7
                  sltiu        s5, a0, 1293
                  slt          a0, t3, a3
                  add          a3, t4, t1
                  and          s0, a7, t6
                  auipc        t3, 956
                  beq          s5, s10, 765f
                  sltiu        s9, t4, -420
                  blt          s2, tp, 760f
                  sltiu        s7, t2, 1842
                  slt          t2, a6, s0
                  xor          s9, gp, s0
760:              bne          sp, a6, 764f
                  xori         a5, s0, -80
                  srl          a0, a6, s4
763:              blt          t6, tp, 768f
764:              sltu         s2, tp, s11
765:              sll          t0, s1, s4
                  sll          s5, s0, a5
                  slt          s6, a6, s0
768:              or           tp, s0, s7
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         s11, s11, -16
                  xor          s4, s11, s4
                  auipc        t4, 395445
                  lui          s7, 11822
                  andi         s9, tp, 916
                  sll          s8, a0, t0
                  sll          a3, a1, s3
                  sltiu        zero, t0, 678
                  sw           t1, 4(s11)
                  andi         s1, a0, 1836
                  addi         t0, s6, -1667
                  add          s8, t1, t6
sub_2_8:          jal          t1, 7f
0:                jal          ra, 21f
1:                jal          ra, 23f
2:                jal          ra, 15f
3:                jal          ra, 20f
4:                jal          ra, 3b
5:                jal          ra, 14f
6:                jal          t1, 13f
7:                jal          t1, 6b
8:                jal          ra, 19f
9:                jal          t1, 4b
10:               jal          ra, 5b
11:               jal          ra, 17f
12:               jal          gp, 9b
13:               jal          t1, 2b
14:               jal          ra, 16f
15:               jal          s5, 22f
16:               jal          ra, 12b
17:               jal          s4, 0b
18:               jal          t1, 10b
19:               jal          a0, 1b
20:               jal          t1, 11b
21:               jal          gp, 8b
22:               jal          ra, 18b
23:               ori          a4, t3, -1275
sub_2_11:         jal          t1, 9f
0:                jal          ra, 2f
1:                jal          a0, 11f
2:                jal          ra, 8f
3:                jal          ra, 4f
4:                jal          ra, 6f
5:                jal          a2, 10f
6:                jal          ra, 7f
7:                jal          t0, 1b
8:                jal          s0, 5b
9:                jal          ra, 12f
10:               jal          gp, 13f
11:               jal          tp, 0b
12:               jal          t1, 3b
13:               andi         t2, sp, 383
sub_2_15:         jal          t1, 23f
0:                jal          ra, 21f
1:                jal          t0, 18f
2:                jal          t1, 20f
3:                jal          ra, 13f
4:                jal          ra, 14f
5:                jal          gp, 16f
6:                jal          t1, 7f
7:                jal          t1, 9f
8:                jal          ra, 4b
9:                jal          t1, 2b
10:               jal          ra, 22f
11:               jal          ra, 5b
12:               jal          s6, 3b
13:               jal          ra, 10b
14:               jal          ra, 12b
15:               jal          ra, 17f
16:               jal          t1, 15b
17:               jal          ra, 6b
18:               jal          ra, 0b
19:               jal          t6, 24f
20:               jal          ra, 19b
21:               jal          ra, 8b
22:               jal          ra, 11b
23:               jal          ra, 1b
24:               and          a1, t0, s7
sub_2_7:          jal          t1, 23f
0:                jal          a0, 11f
1:                jal          a1, 24f
2:                jal          ra, 0b
3:                jal          t6, 16f
4:                jal          ra, 2b
5:                jal          ra, 13f
6:                jal          t1, 19f
7:                jal          ra, 18f
8:                jal          tp, 4b
9:                jal          ra, 6b
10:               jal          t1, 7b
11:               jal          t1, 22f
12:               jal          ra, 14f
13:               jal          t1, 25f
14:               jal          ra, 3b
15:               jal          t1, 21f
16:               jal          ra, 10b
17:               jal          t1, 12b
18:               jal          ra, 27f
19:               jal          ra, 17b
20:               jal          a0, 8b
21:               jal          t5, 9b
22:               jal          ra, 5b
23:               jal          s0, 15b
24:               jal          t1, 28f
25:               jal          ra, 1b
26:               jal          ra, 20b
27:               jal          ra, 26b
28:               sll          t3, tp, s7
sub_2_17:         jal          t1, 7f
0:                jal          ra, 23f
1:                jal          ra, 30f
2:                jal          gp, 13f
3:                jal          ra, 16f
4:                jal          t1, 6f
5:                jal          ra, 25f
6:                jal          t1, 17f
7:                jal          ra, 8f
8:                jal          s3, 21f
9:                jal          a2, 29f
10:               jal          t1, 9b
11:               jal          t1, 3b
12:               jal          ra, 18f
13:               jal          t1, 15f
14:               jal          ra, 2b
15:               jal          ra, 27f
16:               jal          s8, 5b
17:               jal          t1, 19f
18:               jal          s1, 24f
19:               jal          ra, 20f
20:               jal          ra, 10b
21:               jal          ra, 14b
22:               jal          t1, 0b
23:               jal          t1, 26f
24:               jal          ra, 22b
25:               jal          t1, 12b
26:               jal          t1, 28f
27:               jal          ra, 4b
28:               jal          t1, 1b
29:               jal          ra, 11b
30:               sub          s4, s11, t0
sub_2_16:         jal          t1, 0f
0:                jal          ra, 11f
1:                jal          ra, 19f
2:                jal          s1, 1b
3:                jal          t1, 12f
4:                jal          gp, 18f
5:                jal          ra, 21f
6:                jal          a1, 10f
7:                jal          ra, 15f
8:                jal          t0, 6b
9:                jal          t1, 8b
10:               jal          ra, 20f
11:               jal          ra, 17f
12:               jal          a7, 7b
13:               jal          a0, 3b
14:               jal          s8, 2b
15:               jal          ra, 4b
16:               jal          ra, 13b
17:               jal          s0, 14b
18:               jal          s3, 5b
19:               jal          ra, 9b
20:               jal          a3, 16b
21:               xori         t2, s6, 707
sub_2_10:         jal          t1, 11f
0:                jal          t0, 27f
1:                jal          t1, 8f
2:                jal          ra, 19f
3:                jal          ra, 4f
4:                jal          t1, 7f
5:                jal          ra, 24f
6:                jal          ra, 25f
7:                jal          ra, 16f
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          s7, 15f
11:               jal          ra, 22f
12:               jal          ra, 23f
13:               jal          ra, 10b
14:               jal          t1, 6b
15:               jal          a4, 18f
16:               jal          ra, 5b
17:               jal          gp, 14b
18:               jal          ra, 0b
19:               jal          t1, 12b
20:               jal          ra, 17b
21:               jal          s6, 9b
22:               jal          s7, 1b
23:               jal          t1, 26f
24:               jal          s8, 20b
25:               jal          t1, 21b
26:               jal          ra, 13b
27:               sltiu        t4, sp, -836
sub_2_9:          jal          t1, 4f
0:                jal          ra, 12f
1:                jal          t1, 23f
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          ra, 10f
5:                jal          a5, 21f
6:                jal          ra, 18f
7:                jal          ra, 11f
8:                jal          gp, 25f
9:                jal          ra, 1b
10:               jal          ra, 6b
11:               jal          t1, 13f
12:               jal          t4, 3b
13:               jal          ra, 9b
14:               jal          t1, 24f
15:               jal          ra, 16f
16:               jal          ra, 14b
17:               jal          ra, 15b
18:               jal          ra, 22f
19:               jal          ra, 20f
20:               jal          t4, 17b
21:               jal          ra, 26f
22:               jal          ra, 19b
23:               jal          ra, 5b
24:               jal          t1, 8b
25:               jal          s2, 0b
26:               sra          s4, t0, s7
sub_2_6:          jal          t1, 10f
0:                jal          a2, 20f
1:                jal          ra, 5f
2:                jal          ra, 1b
3:                jal          s0, 9f
4:                jal          ra, 11f
5:                jal          ra, 13f
6:                jal          a7, 17f
7:                jal          a0, 21f
8:                jal          ra, 0b
9:                jal          ra, 22f
10:               jal          ra, 8b
11:               jal          ra, 2b
12:               jal          s5, 16f
13:               jal          ra, 14f
14:               jal          s1, 15f
15:               jal          ra, 7b
16:               jal          ra, 3b
17:               jal          ra, 4b
18:               jal          ra, 12b
19:               jal          t4, 18b
20:               jal          ra, 6b
21:               jal          t1, 19b
22:               xori         t4, a7, -1727
sub_2_4:          jal          t1, 10f
0:                jal          t6, 3f
1:                jal          ra, 8f
2:                jal          ra, 12f
3:                jal          t1, 18f
4:                jal          ra, 15f
5:                jal          t1, 9f
6:                jal          t0, 5b
7:                jal          ra, 19f
8:                jal          t0, 21f
9:                jal          a5, 7b
10:               jal          t0, 23f
11:               jal          ra, 20f
12:               jal          t1, 4b
13:               jal          tp, 24f
14:               jal          t4, 1b
15:               jal          ra, 22f
16:               jal          ra, 14b
17:               jal          t1, 25f
18:               jal          ra, 16b
19:               jal          ra, 13b
20:               jal          ra, 0b
21:               jal          s0, 2b
22:               jal          ra, 6b
23:               jal          ra, 11b
24:               jal          ra, 17b
25:               andi         zero, ra, 505
sub_2_0:          jal          t1, 7f
0:                jal          ra, 11f
1:                jal          tp, 14f
2:                jal          ra, 8f
3:                jal          t1, 15f
4:                jal          ra, 19f
5:                jal          t1, 3b
6:                jal          ra, 17f
7:                jal          ra, 10f
8:                jal          ra, 0b
9:                jal          t1, 21f
10:               jal          ra, 13f
11:               jal          ra, 18f
12:               jal          ra, 4b
13:               jal          ra, 12b
14:               jal          ra, 5b
15:               jal          a3, 2b
16:               jal          t1, 1b
17:               jal          s7, 20f
18:               jal          ra, 6b
19:               jal          s7, 16b
20:               jal          a4, 9b
21:               xori         t5, sp, 152
sub_2_18:         jal          t1, 12f
0:                jal          ra, 6f
1:                jal          s5, 0b
2:                jal          t1, 10f
3:                jal          ra, 2b
4:                jal          tp, 11f
5:                jal          a1, 8f
6:                jal          t1, 9f
7:                jal          ra, 1b
8:                jal          ra, 4b
9:                jal          t0, 13f
10:               jal          ra, 14f
11:               jal          ra, 3b
12:               jal          ra, 7b
13:               jal          ra, 5b
14:               andi         t6, t0, -857
sub_2_2:          jal          t1, 3f
0:                jal          ra, 18f
1:                jal          ra, 14f
2:                jal          ra, 7f
3:                jal          a2, 19f
4:                jal          gp, 13f
5:                jal          gp, 0b
6:                jal          ra, 21f
7:                jal          t1, 15f
8:                jal          gp, 12f
9:                jal          t1, 16f
10:               jal          ra, 22f
11:               jal          ra, 4b
12:               jal          ra, 23f
13:               jal          t1, 9b
14:               jal          ra, 17f
15:               jal          t6, 5b
16:               jal          t1, 1b
17:               jal          ra, 8b
18:               jal          t1, 11b
19:               jal          ra, 20f
20:               jal          ra, 10b
21:               jal          t1, 2b
22:               jal          ra, 6b
23:               slti         a0, a5, 1349
sub_2_19:         jal          t1, 7f
0:                jal          t1, 14f
1:                jal          gp, 18f
2:                jal          gp, 9f
3:                jal          t1, 11f
4:                jal          ra, 10f
5:                jal          ra, 16f
6:                jal          ra, 19f
7:                jal          ra, 0b
8:                jal          t1, 12f
9:                jal          tp, 1b
10:               jal          s2, 13f
11:               jal          t1, 4b
12:               jal          t1, 6b
13:               jal          a3, 15f
14:               jal          s6, 5b
15:               jal          ra, 8b
16:               jal          tp, 2b
17:               jal          a2, 3b
18:               jal          t2, 17b
19:               ori          t3, t0, -1020
sub_2_3:          jal          t1, 12f
0:                jal          ra, 14f
1:                jal          ra, 15f
2:                jal          ra, 23f
3:                jal          t1, 20f
4:                jal          ra, 13f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          ra, 10f
8:                jal          t1, 7b
9:                jal          tp, 2b
10:               jal          t4, 6b
11:               jal          t1, 24f
12:               jal          ra, 21f
13:               jal          t0, 25f
14:               jal          t1, 8b
15:               jal          ra, 18f
16:               jal          ra, 11b
17:               jal          ra, 3b
18:               jal          t0, 5b
19:               jal          t1, 17b
20:               jal          a1, 16b
21:               jal          ra, 9b
22:               jal          ra, 19b
23:               jal          t1, 22b
24:               jal          ra, 1b
25:               srli         s8, s5, 2
sub_2_13:         jal          t1, 1f
0:                jal          ra, 2f
1:                jal          ra, 6f
2:                jal          ra, 7f
3:                jal          ra, 21f
4:                jal          tp, 24f
5:                jal          ra, 18f
6:                jal          t0, 12f
7:                jal          ra, 11f
8:                jal          tp, 4b
9:                jal          t1, 20f
10:               jal          ra, 5b
11:               jal          s2, 16f
12:               jal          ra, 14f
13:               jal          t0, 25f
14:               jal          ra, 23f
15:               jal          t0, 8b
16:               jal          ra, 22f
17:               jal          t1, 10b
18:               jal          ra, 19f
19:               jal          ra, 13b
20:               jal          t1, 28f
21:               jal          t1, 15b
22:               jal          ra, 9b
23:               jal          ra, 26f
24:               jal          ra, 17b
25:               jal          ra, 0b
26:               jal          a2, 27f
27:               jal          ra, 3b
28:               sltiu        a1, t5, -519
sub_2_14:         jal          t1, 4f
0:                jal          ra, 24f
1:                jal          ra, 2f
2:                jal          a5, 6f
3:                jal          ra, 18f
4:                jal          ra, 21f
5:                jal          ra, 0b
6:                jal          t1, 5b
7:                jal          tp, 20f
8:                jal          gp, 1b
9:                jal          ra, 14f
10:               jal          ra, 13f
11:               jal          a5, 16f
12:               jal          t1, 17f
13:               jal          ra, 8b
14:               jal          t1, 3b
15:               jal          ra, 10b
16:               jal          tp, 9b
17:               jal          ra, 19f
18:               jal          t1, 12b
19:               jal          ra, 25f
20:               jal          a6, 23f
21:               jal          ra, 15b
22:               jal          ra, 11b
23:               jal          t1, 22b
24:               jal          s0, 7b
25:               slti         s8, t0, -1488
sub_2_5:          jal          t1, 16f
0:                jal          s0, 5f
1:                jal          ra, 18f
2:                jal          ra, 19f
3:                jal          t1, 7f
4:                jal          ra, 14f
5:                jal          ra, 24f
6:                jal          ra, 21f
7:                jal          ra, 29f
8:                jal          ra, 11f
9:                jal          a7, 6b
10:               jal          ra, 30f
11:               jal          ra, 15f
12:               jal          ra, 25f
13:               jal          s6, 23f
14:               jal          ra, 9b
15:               jal          ra, 0b
16:               jal          t0, 13b
17:               jal          a6, 12b
18:               jal          t0, 2b
19:               jal          gp, 28f
20:               jal          ra, 4b
21:               jal          t1, 22f
22:               jal          t1, 1b
23:               jal          s5, 27f
24:               jal          ra, 3b
25:               jal          ra, 10b
26:               jal          ra, 17b
27:               jal          t4, 8b
28:               jal          ra, 26b
29:               jal          t1, 20b
30:               slti         tp, t5, 1579
                  slt          a6, tp, t1
                  auipc        a3, 771059
                  bgeu         sp, a7, 5f
                  slt          s4, gp, t0
                  andi         a5, t5, -1608
5:                sll          s2, a1, s6
                  srli         zero, t5, 22
                  blt          s4, t3, 24f
                  xori         t1, a0, -180
                  slli         a0, t5, 10
                  slli         a2, t0, 5
                  sra          t1, t4, s4
                  add          s2, zero, s5
                  lui          a3, 121545
                  blt          ra, gp, 27f
                  sub          s4, t1, sp
                  and          t3, s10, a7
                  xori         s5, a0, 17
                  add          a6, zero, a3
                  sub          a6, t0, s8
                  auipc        s8, 179723
                  or           a2, s1, s7
                  bgeu         a5, t5, 33f
                  bne          t4, s11, 32f
24:               srl          s6, t0, s3
                  bne          t4, s7, 38f
                  sltu         s3, s4, a0
27:               slt          s9, zero, t5
                  lui          s4, 254386
                  nop
                  bltu         gp, s8, 33f
                  sll          s6, s4, s6
32:               xori         t5, sp, -1908
33:               bne          s7, a6, 48f
                  beq          s8, s3, 47f
                  bne          ra, sp, 50f
                  sll          a6, t5, t1
                  sub          a6, s0, s0
38:               sltiu        a4, t1, 1799
                  srli         a1, a5, 0
                  auipc        t0, 177425
                  beq          s5, t4, 45f
                  srli         zero, a7, 9
                  sra          tp, s1, t6
                  sra          s0, t1, zero
45:               ori          zero, a0, 1436
                  nop
47:               bgeu         s10, a2, 65f
48:               or           s0, t2, t1
                  ori          s7, s8, -1694
50:               slti         a3, s3, -1547
                  beq          a1, s7, 60f
                  and          a0, s5, t4
                  and          a5, tp, t5
                  lui          t4, 90650
                  sra          s9, ra, t4
                  bge          s2, t6, 68f
                  sll          s4, sp, s4
                  sub          s2, s8, s6
                  ori          t4, a0, 1718
60:               auipc        a2, 242200
                  add          s5, s4, s0
                  andi         s4, t6, -2035
                  blt          t4, a6, 78f
                  xori         s8, zero, 1955
65:               andi         t0, ra, -1014
                  slti         s4, s7, -1583
                  sltiu        zero, t6, -781
68:               lui          t0, 417828
                  sll          s5, s5, a0
                  add          s8, a7, s10
                  blt          a5, t0, 77f
                  slt          t6, s0, s1
                  sll          a2, s11, s10
                  lui          s7, 708656
                  blt          t6, s0, 87f
                  ori          a7, s10, -1804
77:               slti         s7, t3, 473
78:               sra          a3, tp, zero
                  slli         s5, s5, 16
                  andi         a5, s0, -1659
                  beq          tp, gp, 97f
                  andi         a7, tp, 1708
                  bltu         zero, t5, 86f
                  srai         t6, ra, 1
                  sra          a1, a6, t6
86:               srai         ra, t1, 31
87:               bne          s6, a1, 93f
                  slt          a4, s5, t1
                  xor          s3, tp, a0
                  beq          t4, t0, 93f
                  or           a2, a4, a7
                  xor          s1, ra, s0
93:               slt          s2, zero, s7
                  add          t3, s5, s5
                  srl          s2, a4, s7
                  beq          a3, t3, 101f
97:               xori         a4, s1, -1301
                  nop
                  auipc        a7, 897350
                  srai         s5, s10, 12
101:              slti         t4, s10, -116
                  srli         a1, s10, 17
                  srai         t4, a6, 25
                  and          a7, tp, t1
                  add          t6, a2, t0
                  xori         a4, t4, -1029
                  sll          t2, s7, a5
                  slt          a2, t3, a4
                  addi         s4, t6, -502
                  sltu         zero, s7, a1
                  beq          t2, a2, 113f
                  add          t4, a2, s10
113:              blt          a6, sp, 119f
                  sltu         tp, zero, s5
                  sra          s0, s4, zero
                  slli         a4, a4, 2
                  sub          a6, s10, s9
                  bgeu         t0, ra, 136f
119:              slli         s7, s8, 23
                  srli         s9, s10, 2
                  srli         s4, t1, 22
                  xori         tp, s10, -1784
                  bge          zero, ra, 127f
                  srai         a6, t0, 25
                  bltu         a4, zero, 139f
                  sra          t4, s11, s0
127:              sltiu        t6, s5, 1321
                  lui          ra, 54975
                  sll          a1, a3, a7
                  xori         t1, t3, 1235
                  bne          s2, a2, 148f
                  or           a3, a5, gp
                  sll          t3, a4, t0
                  addi         a6, t6, 1467
                  auipc        t1, 539905
136:              sltu         t3, ra, s2
                  and          a6, sp, t2
                  bge          s4, t0, 147f
139:              bne          s0, s7, 148f
                  srli         s0, s11, 10
                  sltiu        s7, s5, 1123
                  bne          t2, t3, 151f
                  slti         t3, s2, 477
                  auipc        s6, 593462
                  sra          s9, s8, s7
                  bgeu         s9, s2, 159f
147:              andi         gp, s9, -938
148:              bltu         a2, ra, 165f
                  sltiu        a6, t5, -942
                  auipc        s1, 774322
151:              andi         a6, s0, 683
                  or           a2, s10, a7
                  slt          s9, sp, ra
                  srai         s6, s5, 24
                  sub          ra, a2, s1
                  lui          a7, 894224
                  sub          s1, s0, tp
                  beq          sp, s6, 171f
159:              auipc        s9, 357240
                  or           s4, sp, t4
                  slt          a7, zero, s1
                  bne          s5, a3, 177f
                  sll          s5, s8, a3
                  xor          s5, t4, s10
sub_2_1:          jal          t1, 2f
0:                jal          ra, 7f
1:                jal          ra, 8f
2:                jal          tp, 6f
3:                jal          ra, 0b
4:                jal          ra, 1b
5:                jal          ra, 10f
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          ra, 9f
9:                jal          t2, 3b
10:               slli         t2, a1, 30
165:              or           s8, s8, zero
                  slt          s7, s4, t6
                  xor          a6, s4, s1
                  add          gp, t3, t4
                  sltu         s1, t3, a2
                  xor          s5, s8, a5
171:              ori          t6, s1, 1738
                  bltu         ra, t5, 181f
                  blt          a7, t3, 188f
                  add          s8, s10, a6
                  nop
                  blt          t0, s3, 181f
177:              blt          s0, a1, 183f
                  srli         s6, tp, 2
                  lui          ra, 865367
                  bne          s3, s4, 183f
181:              beq          s10, s0, 195f
                  or           s6, a1, s3
183:              lui          t4, 827540
                  slti         zero, t6, -44
                  sltu         a6, ra, t5
                  and          s4, ra, t3
                  sra          t4, sp, s6
188:              bge          s6, ra, 206f
                  lui          t6, 834971
                  ori          a2, s9, 1586
                  sra          a3, a4, s11
                  bne          zero, ra, 201f
                  bgeu         t0, ra, 197f
                  beq          t1, a6, 206f
195:              beq          a1, a6, 212f
                  and          s8, tp, s3
197:              slt          s5, a5, sp
                  slli         t4, a4, 19
                  bne          t6, s10, 202f
                  beq          a5, ra, 206f
201:              bgeu         a7, a6, 212f
202:              sltu         s6, a1, s2
                  andi         s3, s9, -1314
                  andi         s6, t2, -752
                  sub          t6, sp, s5
206:              sub          t0, s9, s6
                  bgeu         t1, t3, 210f
                  or           s0, a3, t6
                  blt          tp, s10, 211f
210:              slli         a0, s2, 22
211:              blt          t0, a5, 226f
212:              sltiu        s5, a6, 2023
                  or           s6, s5, s5
                  blt          zero, t5, 218f
                  andi         a0, t0, 480
                  sltu         a0, a2, t0
                  srli         gp, t3, 27
218:              sltu         a6, t6, sp
                  srli         s3, t1, 5
                  bltu         s9, a6, 236f
                  lui          s8, 519235
                  sra          s7, t5, sp
                  xori         s1, a1, -1682
                  xor          gp, s11, ra
                  srai         ra, s3, 13
226:              blt          s0, a3, 244f
                  and          s1, sp, s5
                  srai         s5, t4, 23
                  slt          s6, s2, tp
                  lui          s8, 105207
                  slti         a6, a7, -652
                  sub          s6, t1, a3
                  bgeu         s6, t1, 239f
                  or           a7, s3, a2
                  blt          s8, s2, 238f
236:              bne          a7, s1, 249f
                  xori         a3, a2, -339
238:              add          s9, a0, zero
239:              bge          gp, s10, 248f
                  slli         a5, a0, 7
                  bge          s7, s6, 253f
                  andi         ra, s7, -1378
                  andi         s4, s4, -1398
244:              addi         tp, t4, 892
                  and          ra, zero, t6
                  sltiu        a4, sp, 352
                  nop
248:              ori          t5, s2, 239
249:              xori         a0, t5, -1639
                  sltu         s5, s3, sp
                  srli         s8, sp, 20
                  addi         tp, a2, 301
253:              sll          t5, s2, t4
                  srl          s2, s8, s11
                  bge          t5, a7, 264f
                  srai         s7, t4, 6
                  sra          t4, a2, s1
                  xori         s4, zero, -1931
                  andi         t4, t0, -312
                  bge          s5, tp, 265f
                  srai         a5, tp, 27
                  add          ra, a7, s10
                  ori          t1, t4, 859
264:              beq          zero, s9, 281f
265:              sub          t4, a5, a2
                  sra          a7, a5, s6
                  slli         gp, s4, 20
                  slt          t6, s11, a1
                  add          zero, a6, s1
                  or           s5, t2, gp
                  addi         a4, t4, 45
                  xori         s5, s10, 1745
                  sll          s4, tp, t6
                  ori          t6, t3, -1986
                  bge          tp, s2, 279f
                  bltu         s2, s2, 289f
                  or           tp, t4, zero
                  addi         s7, s9, -1185
279:              slti         s3, a5, -1687
                  sll          t1, gp, gp
281:              xor          t2, s6, t2
                  sll          s7, s10, t1
                  beq          sp, s0, 299f
                  bltu         a5, a3, 287f
                  lui          s7, 910060
                  sll          gp, gp, sp
287:              xori         s6, s7, 1483
                  beq          t5, a3, 299f
289:              ori          s5, a5, -361
                  slti         s0, a6, 577
                  bgeu         a4, s10, 297f
                  auipc        s3, 785950
                  slt          t3, s6, s7
                  sub          t3, zero, zero
                  addi         t4, a1, 881
                  sub          a6, s4, s9
297:              and          s6, t4, a0
                  sra          ra, t1, s9
299:              sra          a2, s2, s9
                  beq          a7, sp, 314f
                  ori          s5, a0, 478
                  blt          t0, t4, 311f
                  xor          gp, s9, t5
                  sltiu        s8, t0, -429
                  auipc        a1, 131842
                  ori          gp, t1, 1368
                  lui          a5, 253414
                  auipc        gp, 921354
                  sll          a6, a3, a2
                  sub          gp, s8, t3
311:              sltu         s3, s6, a4
                  sra          t2, a5, a5
                  nop
314:              slli         s4, s5, 31
                  bltu         t4, s5, 332f
                  bge          s10, s5, 334f
                  or           a6, s3, s3
                  srai         ra, s10, 23
                  beq          t5, s9, 328f
                  slti         t3, s9, 635
                  addi         s5, t4, -1732
                  and          t0, t1, a1
                  sub          s5, s10, a0
                  sll          t6, a5, tp
                  srai         t4, zero, 6
                  xor          s3, a1, gp
                  bge          s5, s1, 333f
328:              sub          a0, s1, a1
                  slli         s4, gp, 8
                  auipc        s0, 405329
                  xori         s3, a4, -793
332:              sll          a1, t6, a2
333:              ori          a0, a5, -970
334:              srai         zero, s5, 5
                  addi         a3, zero, -1066
                  nop
                  srli         s3, gp, 22
                  bne          s6, a7, 350f
                  sltiu        ra, zero, -1156
                  beq          t5, s7, 343f
                  lui          a6, 320894
                  slti         a0, s3, 70
343:              auipc        s6, 177488
                  xori         s2, s3, -1283
                  sltiu        t6, a6, -1881
                  sltiu        a0, sp, 850
                  nop
                  beq          a6, t0, 351f
                  sltiu        t5, s5, 787
350:              sub          t0, a0, t2
351:              ori          ra, a0, 268
                  slt          a3, gp, a1
                  xor          a7, tp, s11
                  srai         a4, s7, 22
                  sltiu        a7, ra, -1746
                  and          a7, s3, s7
                  lui          s5, 712392
                  slt          a1, t0, s8
                  sltu         s5, s5, s1
                  slt          a7, a2, zero
                  sltiu        t4, t2, -1132
                  lui          tp, 47630
                  srl          a3, s1, t4
                  slli         a4, s8, 11
                  bne          a4, t5, 374f
                  nop
                  add          ra, a7, s2
                  nop
                  bne          t2, s11, 373f
                  sra          s0, a5, a6
                  nop
                  ori          s4, t0, 1304
373:              sltiu        s0, s4, 1664
374:              bltu         a0, s8, 387f
                  auipc        a7, 667503
                  bge          s0, t6, 389f
                  and          a6, s1, a1
                  auipc        a6, 674696
                  addi         s2, a0, -201
                  andi         t0, s10, -450
                  slti         s6, a2, -1283
                  and          t0, s3, zero
                  slti         ra, s9, -269
                  sra          a1, a7, s8
                  srli         a3, t5, 9
                  blt          s11, t5, 401f
387:              slt          t0, a7, s1
                  xori         s1, sp, 1449
389:              sll          s3, s10, s3
                  xori         a5, a3, -1977
                  xor          t3, t2, s7
                  andi         a7, a6, -279
                  sra          a7, s11, s1
                  auipc        zero, 929147
                  nop
                  addi         a1, s4, -634
                  sll          t4, s10, s6
                  bgeu         a0, t0, 404f
                  sltu         t4, t2, s3
                  auipc        gp, 930803
401:              beq          t1, t0, 416f
                  srli         s8, s3, 24
                  bne          t1, a2, 421f
404:              sltu         s4, s10, s11
                  slti         a1, t1, -858
                  sub          t2, gp, s1
                  sll          a0, s6, gp
                  slli         t0, s0, 16
                  slli         s2, t3, 24
                  andi         s9, a0, -1044
                  blt          s2, s2, 413f
                  nop
413:              slti         a2, s0, -1121
                  bge          s4, s10, 417f
                  andi         s0, a7, -1944
416:              slt          tp, s9, t3
417:              bgeu         tp, s1, 432f
                  bgeu         s1, s6, 430f
                  slt          tp, t1, t6
                  nop
421:              beq          t6, t2, 439f
                  sll          a1, t6, tp
                  sltiu        s1, t1, -1713
                  xori         a2, a4, -626
                  slti         zero, a7, 221
                  beq          s3, t3, 429f
                  sltiu        a7, sp, 2029
                  add          a2, s3, t6
429:              xori         s0, a6, -1131
430:              nop
                  nop
432:              xori         s4, s11, 1834
                  bne          a3, t0, 446f
                  slt          zero, a0, s5
                  srl          a3, gp, s9
                  or           gp, a7, a3
                  bltu         tp, s6, 443f
                  sll          a7, a5, a2
439:              slli         t6, s1, 5
                  addi         s5, s4, -218
                  srli         t6, a7, 0
                  add          s6, sp, a7
443:              sltu         a0, ra, s2
                  sub          tp, a5, a6
                  xori         a0, s11, -806
446:              bltu         gp, ra, 463f
                  beq          t5, t1, 456f
                  xori         t5, s6, 1629
                  sub          t4, s3, s0
                  bne          gp, s2, 452f
                  auipc        gp, 366469
452:              srl          gp, s1, s1
                  lui          a6, 940916
                  xor          a2, s11, s9
                  srli         a6, gp, 19
456:              ori          t4, a0, 1175
                  slli         a4, s11, 6
                  slti         s2, t2, -253
                  srai         t1, a1, 23
                  or           gp, s4, t6
                  slli         s8, s9, 0
                  and          s7, a1, a2
463:              slt          a3, a6, t4
                  srai         s0, a3, 11
                  andi         s6, s2, 1506
                  bltu         ra, ra, 481f
                  xor          a4, s11, s1
                  blt          t4, a5, 486f
                  sltu         a7, a1, t6
                  andi         s2, s3, -426
                  slli         zero, s9, 7
                  bltu         t0, s4, 475f
                  beq          a3, s3, 476f
                  xor          a6, s7, t0
475:              srli         gp, s0, 17
476:              blt          a4, s8, 482f
                  xori         a1, gp, 1340
                  or           gp, t6, a7
                  bge          t5, ra, 483f
                  nop
481:              sll          t2, t5, s1
482:              slli         a0, a1, 30
483:              srai         s3, s4, 22
                  bltu         s7, a0, 493f
                  add          t2, tp, s3
486:              slt          t5, a0, zero
                  xor          s8, s10, s7
                  sub          s1, a2, t2
                  slti         s7, a2, 1399
                  blt          s6, a3, 504f
                  slli         t4, a6, 20
                  sll          s5, a0, t0
493:              sub          gp, s9, s7
                  slti         t2, s11, -98
                  sra          s1, t4, a0
                  bgeu         s2, t1, 507f
                  nop
                  srli         s9, s8, 22
                  xori         s9, a6, 1574
                  sra          t0, s10, t1
                  lui          a7, 396986
                  nop
                  srli         a5, s10, 3
504:              sltu         a4, a5, a0
                  sll          s1, s6, a5
                  xori         t5, s11, -23
507:              ori          t5, s7, -1258
                  auipc        s7, 14962
                  srli         t6, s6, 15
                  sltu         t5, t4, t3
                  blt          s9, s3, 520f
                  auipc        t1, 626780
                  lui          a2, 699530
                  sra          s1, t1, t4
                  srli         t2, s3, 20
                  lui          s5, 703498
                  sra          t4, a6, sp
                  sra          s0, s3, t6
                  xor          s3, s1, t6
520:              sltiu        gp, zero, -58
                  sra          t1, s6, a3
                  add          ra, s7, s11
                  nop
                  beq          s8, t1, 539f
                  blt          a5, t5, 534f
                  xori         a2, s0, -1291
                  and          a2, s3, a2
                  slti         t4, t4, -1790
                  nop
                  srai         zero, a7, 18
                  sra          s3, t2, sp
                  sltu         s9, tp, t1
                  ori          gp, s5, -403
534:              xori         a5, a7, -1272
                  srl          a7, t5, a1
                  bge          t5, a4, 548f
                  add          s2, t5, ra
                  srai         a4, s3, 13
539:              sub          a3, sp, s1
                  bltu         a7, t0, 555f
                  beq          t0, a7, 558f
                  sll          s3, s9, t5
                  slli         a5, t5, 0
                  sub          s3, a4, s8
                  sub          s4, tp, zero
                  nop
                  srai         s6, s8, 6
548:              lui          t5, 794486
                  sub          t1, a5, s10
                  sltiu        a2, s9, 1318
                  sub          gp, t0, t4
                  bgeu         a5, s6, 568f
                  xori         tp, s8, -1342
                  sra          a4, a0, t1
555:              sra          t2, a4, s1
                  bgeu         s6, t3, 561f
                  add          t0, s9, s8
558:              ori          s8, zero, -353
                  slti         a2, t1, -739
                  bgeu         a7, a7, 564f
561:              ori          zero, s7, 566
                  srai         t3, tp, 13
                  or           s8, s7, t6
564:              bne          tp, a4, 577f
                  sra          a7, a2, t5
                  bne          s2, t0, 578f
                  addi         a0, tp, -365
568:              slti         zero, t1, 1472
                  beq          a7, t4, 572f
                  sra          t6, s6, s3
                  slti         ra, s6, -134
572:              slti         tp, s4, 949
                  slt          s0, a2, ra
                  or           s2, t3, s7
                  bltu         a1, s2, 581f
                  bge          t3, a1, 589f
577:              beq          a0, s5, 588f
578:              xori         s3, s8, -1736
                  andi         a6, s8, -611
                  add          s7, t0, s5
581:              andi         s1, a7, -39
                  add          s5, s11, s7
                  addi         t5, a2, 406
                  xori         s5, s9, -84
                  beq          zero, a7, 590f
                  srl          s5, a0, a7
                  sltiu        t5, s5, 1999
588:              srl          a5, s7, t2
589:              nop
590:              bge          s2, zero, 605f
                  sltiu        a5, s1, -742
                  beq          t3, s7, 610f
                  srai         t3, ra, 21
                  bltu         a6, a3, 598f
                  addi         s1, a1, -78
                  sub          t0, tp, t0
                  bge          s6, s6, 606f
598:              bge          tp, a1, 600f
                  add          t4, t5, s1
600:              add          t4, s5, sp
                  auipc        s6, 14770
                  bltu         sp, s7, 615f
                  slt          t2, a6, sp
                  beq          t0, t6, 619f
605:              slti         s1, t5, -828
606:              xor          a4, s0, s5
                  srl          t1, tp, t1
                  xor          s8, t6, a4
                  andi         a4, a5, 1236
610:              srli         t2, a1, 4
                  sra          tp, a7, s6
                  sll          tp, s6, a5
                  srl          tp, t3, s0
                  addi         s3, t0, 1604
615:              srli         zero, a1, 20
                  xori         gp, gp, 349
                  slti         t5, a0, 1364
                  or           t3, s6, sp
619:              auipc        a1, 796677
                  blt          a1, s11, 623f
                  add          t0, s9, s8
                  and          a3, a4, ra
623:              add          a6, s5, t4
                  auipc        s8, 623215
                  slli         s7, a5, 22
                  ori          gp, s9, -504
                  srai         s4, zero, 22
                  blt          s9, a4, 631f
                  sltu         a0, sp, sp
                  bne          s7, a3, 633f
631:              sub          t0, a6, ra
                  add          a0, t2, s6
633:              bgeu         zero, t2, 650f
                  slt          t0, s3, s10
                  slt          s0, t3, s8
                  sub          zero, sp, gp
                  xor          a0, t0, a2
                  nop
                  bge          a0, s4, 648f
                  bge          s0, a1, 657f
                  sltu         s3, a2, a0
                  bne          s11, a7, 654f
                  or           t2, s2, t4
                  sub          zero, t2, a6
                  sltu         a3, a7, a6
                  blt          t1, t6, 652f
                  add          s7, tp, t6
648:              bne          a2, s5, 662f
                  bgeu         a5, s6, 655f
650:              sra          tp, t0, s6
                  auipc        s8, 792043
652:              bltu         s0, ra, 665f
                  auipc        t0, 193486
654:              or           a3, t2, t4
655:              srl          a0, s4, a3
                  andi         a6, a3, 1764
657:              bne          s2, zero, 666f
                  bge          t5, t1, 670f
                  blt          s2, t0, 677f
                  bge          a5, a7, 673f
                  srai         t4, gp, 25
662:              srl          zero, s3, t0
                  andi         zero, s10, 505
                  beq          s8, zero, 668f
665:              srli         t6, a3, 14
666:              beq          a5, s0, 682f
                  sltiu        t3, a1, -1442
668:              auipc        t3, 1035267
                  auipc        s4, 685995
670:              or           t5, a3, s3
                  slli         a2, s6, 2
                  add          a5, zero, s0
673:              and          a0, s3, a0
                  beq          zero, tp, 683f
                  sltiu        s9, s9, -1989
                  addi         s8, s2, 1097
677:              bne          sp, tp, 680f
                  bne          s11, s5, 693f
                  srai         t0, s1, 25
680:              bne          tp, t2, 686f
                  beq          a6, a1, 687f
682:              slti         a0, s0, -1273
683:              beq          s8, zero, 700f
                  slti         s4, t6, 154
                  lui          a6, 659490
686:              bgeu         a2, s1, 695f
687:              ori          t1, s8, -1806
                  sra          a2, t1, ra
                  nop
                  srai         a6, s2, 22
                  sltiu        t4, s6, -1425
                  auipc        s4, 297803
693:              lui          a4, 1042657
                  srli         a0, t6, 5
695:              sra          a4, a3, a5
                  xor          t2, gp, s6
                  slli         tp, a1, 24
                  srai         t4, t5, 11
                  sub          gp, s5, zero
700:              sltiu        a3, a2, 529
                  ori          s1, t3, -274
                  bltu         s11, zero, 711f
                  sltu         a3, a1, gp
                  add          t3, a6, a7
                  auipc        s0, 808114
                  bltu         t5, s2, 724f
                  andi         a1, a6, -1466
                  sub          s3, a1, t2
                  andi         a0, t2, 1730
                  bgeu         s1, s4, 714f
711:              and          s0, zero, t3
                  andi         t1, sp, 140
                  lui          t3, 932599
714:              sub          s9, t0, t0
                  srl          a7, a2, s2
                  sltu         s8, t0, t6
                  sll          t5, tp, sp
                  xori         t2, t4, 327
                  or           t4, s7, s2
                  srli         gp, a6, 9
                  srli         a2, a1, 23
                  slt          a4, t1, ra
                  addi         t6, a3, 1549
724:              slli         s3, zero, 31
                  xor          s4, a6, t2
                  auipc        a0, 1047782
                  andi         a5, a6, -192
                  blt          t3, a3, 734f
                  auipc        a3, 287537
                  and          t3, s8, gp
                  slt          t4, t3, a0
                  beq          s4, t6, 734f
                  nop
734:              beq          s7, s6, 748f
                  srl          s0, s4, tp
                  sltiu        a5, t1, -823
                  bne          a2, t2, 753f
                  andi         a3, t4, -239
                  bltu         a2, s5, 752f
                  srai         t5, t0, 0
                  nop
                  bltu         s11, s8, 754f
                  or           tp, zero, a1
                  sltu         a2, s1, s1
                  srai         tp, s2, 1
                  sltu         a0, s3, s1
                  bge          gp, s6, 750f
748:              blt          ra, s2, 761f
                  slti         s8, s10, 1900
750:              beq          t4, t6, 753f
                  xor          t5, s6, s2
752:              add          t3, t0, a7
753:              nop
754:              slt          a2, s9, t0
                  bltu         a4, zero, 761f
                  sll          t3, s9, t2
                  slti         t6, t5, -646
                  xori         t2, s3, 379
                  nop
                  nop
761:              blt          s0, a7, 774f
                  beq          zero, s3, 773f
                  srai         s5, t4, 2
                  auipc        s4, 127480
                  ori          a7, s3, -112
                  srl          t2, a7, s3
                  slli         s2, zero, 8
                  bltu         s2, t2, 777f
                  slt          t5, a5, a7
                  sra          a6, t6, t0
                  blt          a1, s7, 786f
                  bgeu         t0, t2, 777f
773:              bge          t2, s5, 790f
774:              and          t3, s3, s9
                  sll          a4, t5, s4
                  sra          a6, s4, a6
777:              srl          a1, a2, zero
                  srli         a6, sp, 25
                  slli         t4, a3, 26
                  sll          tp, a1, a6
                  sll          s9, t1, a7
                  andi         a3, s8, -1107
                  bltu         ra, s9, 795f
                  or           s4, s7, a2
                  srai         s7, s2, 25
786:              srli         a2, s8, 24
                  andi         gp, t6, 1050
                  ori          t0, a7, -698
                  sltiu        a0, zero, -464
790:              add          t3, a6, t3
                  slti         s6, t1, -1135
                  andi         a2, t2, 1839
                  andi         t6, t5, -1380
                  slli         t6, s9, 24
795:              lui          s3, 490092
                  add          s4, s3, gp
                  ori          s3, t5, 105
                  slli         t6, t3, 31
                  nop
                  blt          s0, s10, 818f
                  srai         a0, a5, 2
                  bltu         s8, s1, 811f
                  bgeu         s6, s6, 818f
                  bne          t5, zero, 808f
                  sll          t5, ra, t6
                  srai         a6, s6, 31
                  blt          a3, ra, 810f
808:              bge          s4, a0, 811f
                  sub          s4, s6, t3
810:              bne          s8, t3, 825f
811:              bltu         a7, gp, 820f
                  or           s9, t4, a6
                  srl          zero, a3, tp
                  or           s2, t0, gp
                  bge          s11, t3, 828f
                  addi         t6, s5, -621
                  srl          a1, a4, s7
818:              xori         t1, a7, -695
                  srai         a1, a2, 29
820:              bgeu         a5, s4, 837f
                  sra          t6, sp, s7
                  sll          a5, s5, t5
                  slti         s7, a4, 233
                  bgeu         s6, a3, 830f
825:              slli         s3, s6, 15
                  sltu         t2, a2, t0
                  ori          a1, a5, -1874
828:              srl          t6, a0, a1
                  ori          zero, t5, 224
830:              or           s9, a4, t2
                  slti         s3, s6, 1664
                  sltiu        s6, a0, -1887
                  bge          tp, a2, 836f
                  bgeu         a1, s6, 843f
                  and          ra, s9, a6
836:              srai         t1, s5, 14
837:              srl          s5, t1, t3
                  add          tp, t6, a2
                  and          s0, s4, s9
                  nop
                  xori         a1, t4, -295
                  sub          t3, gp, a4
843:              bne          a4, a3, 856f
                  auipc        a4, 538594
                  xor          s1, s9, a1
                  blt          t4, s10, 857f
                  xori         a0, a6, -462
                  bne          gp, gp, 854f
                  sra          s3, t4, t4
                  add          zero, s5, a3
                  srai         s5, t0, 20
                  slt          s0, ra, s9
                  bltu         s6, a2, 856f
854:              andi         s2, zero, -623
                  la           t0, sub_3
                  xor          s7, s1, a2
                  nop
                  and          tp, a3, s8
                  sub          a2, a6, a1
                  addi         t0, t0, 407
                  slt          t5, t4, tp
sub_2_j4:         jalr         t1, t0, -406 #jump sub_2 -> sub_3
                  addi         t6, s7, -1994
856:              sltu         a4, t2, t6
857:              or           s7, s1, t2
                  lui          t5, 274552
                  slti         a2, s2, 1782
                  xor          a6, t2, a1
                  xori         s8, t2, -405
                  sra          a2, s2, tp
                  sll          s1, s2, s11
                  sltu         s0, s1, t2
                  nop
                  sltiu        t6, s4, 1037
                  srl          s8, a0, s11
                  srai         t5, s11, 18
                  slt          gp, zero, s4
                  bltu         a7, t4, 872f
                  xori         t2, s8, -1706
872:              blt          a2, t6, 887f
                  blt          t1, s5, 890f
                  addi         s6, ra, -738
                  nop
                  sltiu        t1, a1, 1604
                  sra          a2, t1, s6
                  bge          a3, a2, 883f
                  bltu         a0, t3, 897f
                  ori          s7, gp, -619
                  sub          s9, a5, t6
                  sll          tp, s10, a2
883:              beq          t1, a1, 887f
                  srli         tp, s4, 2
                  bgeu         a0, t3, 894f
                  sub          a2, a1, a2
887:              sltiu        s4, s5, 1112
                  add          s7, s7, a0
                  auipc        t6, 50693
890:              srl          t3, s0, s3
                  slli         t0, t6, 13
                  add          s4, sp, ra
                  addi         s0, s9, 361
894:              addi         gp, sp, 1745
                  bgeu         a0, a5, 907f
                  srl          s5, a5, s2
897:              sltu         s9, s9, s5
                  slli         t5, a5, 11
sub_2_12:         jal          t1, 12f
0:                jal          s8, 13f
1:                jal          tp, 17f
2:                jal          ra, 5f
3:                jal          ra, 19f
4:                jal          ra, 20f
5:                jal          ra, 9f
6:                jal          t1, 21f
7:                jal          s5, 6b
8:                jal          ra, 11f
9:                jal          ra, 7b
10:               jal          t1, 23f
11:               jal          ra, 16f
12:               jal          ra, 1b
13:               jal          gp, 10b
14:               jal          ra, 18f
15:               jal          ra, 14b
16:               jal          a3, 3b
17:               jal          ra, 22f
18:               jal          ra, 2b
19:               jal          a1, 4b
20:               jal          t1, 15b
21:               jal          ra, 0b
22:               jal          t0, 8b
23:               sltiu        t1, t0, 1106
                  bgeu         zero, t3, 917f
                  srli         t6, a0, 6
                  sltiu        a7, s4, 649
                  bltu         a3, s7, 918f
                  beq          s0, t3, 918f
                  sra          t3, tp, s9
                  xori         a4, t3, -260
                  addi         t3, s7, -1249
907:              nop
                  slli         t0, a2, 12
                  sra          s8, a2, a3
                  andi         t5, t3, 122
                  add          t0, s3, ra
                  auipc        t4, 524953
                  sra          s3, s7, s8
                  srli         s0, t1, 30
                  sra          s9, s7, s2
                  lui          tp, 956408
917:              auipc        t6, 901909
918:              blt          s11, t1, 924f
                  xori         t0, a4, -526
                  srli         a1, s1, 3
                  bne          s2, tp, 936f
                  srli         a3, sp, 21
                  xori         a6, t5, 1622
924:              sltiu        zero, a3, 393
                  lui          t2, 409771
                  slt          s1, gp, s9
                  slti         s6, s8, -1799
                  and          s3, a6, tp
                  blt          a2, t2, 942f
                  srli         a7, t3, 21
                  srli         a3, a4, 17
                  add          s4, s1, s8
                  and          s6, s9, t2
                  beq          s5, a3, 943f
                  bge          s11, s9, 947f
936:              srai         s6, s4, 7
                  bgeu         s5, a6, 940f
                  and          a2, s4, s2
                  blt          zero, s1, 953f
940:              bltu         t3, s8, 943f
                  add          a7, s11, t4
942:              srai         t4, s6, 29
943:              slt          t5, s9, a5
                  sra          a7, a6, s8
                  or           s8, a2, t6
                  addi         t0, gp, 882
947:              xor          a0, s9, t3
                  or           a7, s2, gp
                  andi         s9, t0, -51
                  xori         t5, a5, -1595
                  xor          t3, s7, s6
                  auipc        s0, 351034
953:              auipc        s4, 777235
                  bne          s9, s10, 958f
                  bne          gp, t2, 973f
                  add          t0, t1, t4
                  xori         a5, s10, 1612
958:              srl          gp, a3, s5
                  sltu         tp, s1, t4
                  slli         gp, s6, 9
                  lui          gp, 982693
                  bne          t1, s2, 978f
                  srl          t5, s0, ra
                  or           s0, a2, gp
                  or           s6, t5, a3
                  lui          s1, 582929
                  srl          s9, a6, s1
                  addi         s4, t3, -1880
                  sltiu        a5, a3, 525
                  sltiu        s3, s5, 2005
                  sltiu        a1, t5, 1870
                  srl          s4, a4, s4
973:              sltiu        s4, s2, -1322
                  bne          ra, t5, 991f
                  bltu         tp, s7, 987f
                  srl          a7, a4, s4
                  bne          a2, t2, 988f
978:              bltu         s7, t1, 981f
                  bne          zero, a2, 985f
                  sub          a0, s1, s2
981:              or           t1, t5, a4
                  add          a5, a1, t0
                  bge          a3, s5, 992f
                  add          a0, s10, s7
985:              bltu         s9, s0, 990f
                  xori         s8, s3, -396
987:              xori         a6, s1, 1672
988:              or           a5, s10, a5
                  slt          s7, sp, a5
990:              addi         s6, s3, -1767
991:              bltu         s11, a1, 1004f
992:              andi         a6, tp, -96
                  sll          s4, gp, zero
                  sra          t4, s6, a2
                  andi         s3, t5, 530
                  bgeu         a5, s6, 1002f
                  addi         ra, t2, -650
                  slli         a2, t4, 29
                  nop
                  slli         a4, s8, 6
                  sll          s5, tp, a5
1002:             sltu         s7, ra, tp
                  add          s8, t6, s0
1004:             or           s1, gp, s3
                  bltu         t4, t3, 1014f
                  slli         t3, t0, 23
                  slti         t6, t5, -74
                  beq          s4, s8, 1016f
                  andi         gp, sp, -1492
                  xori         s0, ra, 28
                  and          t4, a2, tp
                  or           a7, zero, t1
                  slti         a2, a6, -1727
1014:             sltiu        s8, s7, -1721
                  beq          s2, a7, 1016f
1016:             slt          s4, s8, t0
                  sltu         a7, s4, s3
                  ori          tp, s4, -610
                  slti         s4, t2, 1501
                  nop
                  lw           t1, 4(s11)
                  addi         s11, s11, 16
                  add          a7, s6, s9
                  sltu         s5, gp, s0
                  xor          s4, s10, s6
                  auipc        a5, 720569
                  slti         s9, s3, 974
                  ori          a0, a5, 102
1546:             addi x15, x6, 1
1546:             jalr x15, x15, 0
sub_5:            addi         t6, a0, -190
                  srl          a1, s4, a6
                  addi         s11, s11, -36
                  sll          t4, s1, s1
                  auipc        t3, 573069
                  sll          s3, t5, t2
                  sll          s1, s2, t3
                  nop
                  srai         a3, a7, 16
                  sw           t1, 4(s11)
                  slti         t4, a1, 1655
                  sltiu        s7, s5, 1039
sub_5_0:          jal          t1, 13f
0:                jal          t1, 3f
1:                jal          t5, 15f
2:                jal          ra, 14f
3:                jal          t1, 10f
4:                jal          ra, 5f
5:                jal          a1, 12f
6:                jal          a0, 26f
7:                jal          ra, 23f
8:                jal          t1, 16f
9:                jal          ra, 8b
10:               jal          ra, 4b
11:               jal          s7, 19f
12:               jal          ra, 21f
13:               jal          gp, 9b
14:               jal          tp, 24f
15:               jal          ra, 11b
16:               jal          ra, 0b
17:               jal          gp, 18f
18:               jal          tp, 7b
19:               jal          ra, 20f
20:               jal          ra, 25f
21:               jal          ra, 1b
22:               jal          t0, 2b
23:               jal          ra, 6b
24:               jal          ra, 17b
25:               jal          tp, 22b
26:               auipc        t2, 220197
sub_5_1:          jal          t1, 15f
0:                jal          ra, 13f
1:                jal          s4, 9f
2:                jal          s1, 22f
3:                jal          ra, 7f
4:                jal          ra, 16f
5:                jal          ra, 24f
6:                jal          tp, 10f
7:                jal          t1, 30f
8:                jal          ra, 2b
9:                jal          ra, 19f
10:               jal          t1, 26f
11:               jal          a3, 17f
12:               jal          t1, 25f
13:               jal          a6, 4b
14:               jal          t1, 3b
15:               jal          ra, 12b
16:               jal          t0, 27f
17:               jal          a4, 0b
18:               jal          ra, 11b
19:               jal          ra, 20f
20:               jal          tp, 18b
21:               jal          t1, 14b
22:               jal          t3, 5b
23:               jal          a3, 1b
24:               jal          ra, 6b
25:               jal          a7, 28f
26:               jal          t0, 21b
27:               jal          t1, 8b
28:               jal          t1, 29f
29:               jal          ra, 23b
30:               slti         s7, s11, -91
sub_5_2:          jal          t1, 6f
0:                jal          ra, 5f
1:                jal          s1, 26f
2:                jal          t0, 24f
3:                jal          s6, 1b
4:                jal          tp, 22f
5:                jal          gp, 25f
6:                jal          ra, 16f
7:                jal          ra, 0b
8:                jal          gp, 13f
9:                jal          ra, 4b
10:               jal          t1, 17f
11:               jal          s2, 12f
12:               jal          ra, 15f
13:               jal          t1, 21f
14:               jal          t1, 20f
15:               jal          ra, 19f
16:               jal          t5, 7b
17:               jal          a6, 14b
18:               jal          ra, 8b
19:               jal          t1, 2b
20:               jal          gp, 18b
21:               jal          a3, 3b
22:               jal          t1, 10b
23:               jal          a6, 11b
24:               jal          t1, 9b
25:               jal          ra, 23b
26:               slti         s9, s8, -441
                  or           t0, s1, t3
                  bge          tp, t3, 2f
2:                sra          s5, a0, tp
                  nop
                  srl          t6, s3, s0
                  sltu         a5, ra, a6
                  bltu         s9, t3, 7f
7:                slti         a6, s9, 502
                  srai         s6, gp, 12
                  sll          tp, sp, t4
                  bgeu         s8, a7, 11f
11:               srai         a5, a1, 29
                  add          t4, gp, t0
                  blt          t6, s0, 25f
                  sra          a0, tp, s9
                  xori         zero, t0, 487
                  bgeu         s1, t6, 28f
                  bltu         s9, t4, 18f
18:               bgeu         s9, s1, 38f
                  sub          a7, a1, zero
                  add          s9, s0, t2
                  slti         a5, t0, -864
                  or           t0, s7, t2
                  slti         zero, t4, 383
                  srli         s6, t0, 31
25:               sltiu        s7, s9, 697
                  add          s4, sp, s1
                  add          s9, tp, a0
28:               ori          t2, a3, 1798
                  sll          t0, s2, t3
                  addi         a3, a2, -1308
                  addi         a0, t2, 640
                  srli         gp, ra, 8
                  sltiu        tp, t0, -247
                  sra          s4, t6, s8
                  lui          a6, 517542
                  ori          t0, gp, 1608
                  xori         t1, t5, -1174
38:               srli         a5, s5, 19
                  lui          a3, 819226
                  slli         a7, s10, 14
                  xor          t5, s7, tp
                  add          a7, s11, s7
                  add          s5, t2, a3
                  xori         t0, s8, 1965
                  bge          s4, t3, 53f
                  or           s5, s9, s3
                  bge          t3, a4, 65f
                  srl          t2, a0, a3
                  lui          gp, 909779
                  and          a7, zero, t3
                  blt          t3, t1, 56f
                  bgeu         a1, t0, 57f
53:               lui          s7, 548202
                  sra          a7, s4, t3
                  sub          tp, zero, t1
56:               andi         tp, s2, -1593
57:               auipc        a2, 1023990
                  andi         a6, s4, -1005
                  addi         s1, s4, 1298
                  slti         s3, a1, 550
                  ori          a3, s3, 354
                  xori         t3, t0, -1803
                  bne          s9, t6, 76f
                  sub          gp, zero, s0
65:               sltu         s7, t6, gp
                  slti         a3, a6, 1963
                  blt          s11, tp, 75f
                  ori          a7, s8, 1364
                  bne          t0, s6, 76f
                  sltu         t2, t5, s0
                  xori         s0, a7, 98
                  xor          t4, s4, a7
                  lui          s2, 206076
                  bgeu         s2, s6, 78f
75:               sltiu        gp, a4, -336
76:               xori         t5, t6, -1764
                  sub          a0, s10, sp
78:               slt          t3, s2, s7
                  sra          ra, a5, a2
                  bltu         tp, s9, 95f
                  and          a5, t3, a2
                  sll          a5, t3, a2
                  xori         s3, s6, -347
                  srli         a6, s8, 22
                  and          t5, s1, s3
                  bltu         ra, zero, 102f
                  bltu         a0, t1, 97f
                  bne          s5, s3, 101f
                  andi         s3, s4, -1891
                  bgeu         t1, a1, 107f
                  xori         s2, a2, -873
                  sltu         gp, t0, t2
                  or           a7, s9, t2
                  bne          s3, t4, 98f
95:               slt          a0, s9, t6
                  addi         a1, a2, -1248
97:               or           ra, a5, s11
98:               sub          a0, zero, a7
                  bltu         a1, s1, 111f
                  slli         s8, t0, 16
101:              xori         a5, t1, -1698
102:              slti         a6, t6, 1464
                  xori         t0, s10, -1214
                  lui          s4, 730993
                  bltu         t4, s1, 108f
                  srl          s9, s9, t1
107:              xori         t5, s4, 172
108:              lui          a6, 123749
                  blt          t1, gp, 112f
                  nop
111:              auipc        s8, 454703
112:              sub          s1, t4, s11
                  sltu         s6, s6, t2
                  or           s6, s1, a3
                  or           tp, t0, s10
                  bgeu         s9, s10, 134f
                  beq          s6, sp, 135f
                  slt          t0, s7, s6
                  srai         a5, t0, 14
                  srl          a2, t2, s7
                  slt          t2, s2, s5
                  slli         s0, t2, 16
                  sltiu        s5, zero, 974
                  sltu         zero, s0, s6
                  slti         a1, gp, 145
                  add          s3, sp, s7
                  srli         s6, a6, 17
                  slt          s4, a5, zero
                  blt          s11, t5, 134f
                  bltu         a2, s9, 138f
                  bgeu         gp, s10, 151f
                  slti         a6, a3, 343
                  sltu         ra, a1, a4
134:              lui          s3, 355548
135:              xori         a2, s4, 536
                  xori         t6, a2, 533
                  andi         a2, a5, -343
138:              bge          s1, s2, 141f
                  xor          a6, a0, gp
                  beq          s0, t4, 147f
141:              sra          t1, a0, t3
                  sll          t3, t6, a7
                  bgeu         a3, a4, 146f
                  slti         a0, gp, 787
                  slti         a2, t6, -1140
146:              sll          a4, s1, t2
147:              nop
                  lui          s0, 94226
                  slti         t5, a3, 1815
                  bgeu         s4, s1, 154f
151:              beq          s0, s1, 158f
                  bge          s6, t2, 158f
                  bgeu         s5, s4, 158f
154:              addi         gp, a4, 1898
                  sltiu        s9, a5, 956
                  bgeu         a6, t5, 158f
                  bge          s5, t1, 158f
158:              sltu         zero, a1, s1
                  lw           t1, 4(s11)
                  or           a6, t5, s8
                  ori          a6, ra, -1799
                  xori         s3, a1, -1662
                  slt          a3, s5, s5
                  addi         s11, s11, 36
                  xori         s9, ra, -2037
266:              addi x5, x6, 0
266:              jalr x5, x5, 0
sub_3:            andi         s4, t0, -1078
                  srl          t3, t4, s2
                  addi         s11, s11, -16
                  srli         a7, s8, 8
                  sw           t1, 4(s11)
                  add          t6, zero, a7
                  add          ra, s1, t3
                  xori         zero, t6, -2
                  nop
                  sltiu        ra, a3, 1925
                  or           a4, t0, ra
                  andi         a5, a1, -1860
                  add          t5, a5, a2
                  slt          t1, tp, t0
                  la           t2, sub_4
                  slti         s6, t2, -701
                  sll          a6, s3, t6
                  sub          a6, a3, s7
                  ori          a2, tp, -167
                  addi         t2, t2, -371
                  and          t1, s11, ra
sub_3_j5:         jalr         t1, t2, 371 #jump sub_3 -> sub_4
                  sll          t3, t6, s3
                  la           s9, sub_5
                  addi         s9, s9, -912
                  srl          t0, s10, s0
                  sltiu        t1, a6, -739
                  bgeu         t3, zero, sub_3_j6 #branch to jump instr
                  auipc        a2, 64064
                  srl          s8, a7, ra
                  slt          tp, s10, s7
sub_3_j6:         jalr         t1, s9, 912 #jump sub_3 -> sub_5
                  add          s0, tp, a1
                  la           t6, sub_5
                  and          s2, a6, a1
                  xor          t3, sp, sp
                  nop
                  srl          a5, gp, a5
                  slli         a3, t1, 16
                  sll          a1, a4, tp
                  slt          a2, t0, gp
                  andi         s2, s3, -1333
                  addi         t6, t6, 466
                  sltu         tp, s1, t6
sub_3_j7:         jalr         t1, t6, -466 #jump sub_3 -> sub_5
sub_3_1:          jal          t1, 5f
0:                jal          ra, 17f
1:                jal          ra, 11f
2:                jal          ra, 21f
3:                jal          ra, 9f
4:                jal          s8, 1b
5:                jal          t1, 2b
6:                jal          t1, 24f
7:                jal          ra, 14f
8:                jal          ra, 10f
9:                jal          a5, 8b
10:               jal          s9, 7b
11:               jal          s7, 18f
12:               jal          t1, 4b
13:               jal          t1, 23f
14:               jal          ra, 19f
15:               jal          ra, 0b
16:               jal          t0, 22f
17:               jal          t0, 6b
18:               jal          ra, 13b
19:               jal          ra, 20f
20:               jal          a4, 16b
21:               jal          t1, 3b
22:               jal          t1, 12b
23:               jal          ra, 15b
24:               auipc        t4, 570940
sub_3_0:          jal          t1, 16f
0:                jal          t5, 20f
1:                jal          t1, 15f
2:                jal          s3, 8f
3:                jal          ra, 1b
4:                jal          ra, 11f
5:                jal          t0, 6f
6:                jal          ra, 12f
7:                jal          ra, 24f
8:                jal          tp, 27f
9:                jal          ra, 25f
10:               jal          ra, 21f
11:               jal          t2, 9b
12:               jal          ra, 26f
13:               jal          ra, 3b
14:               jal          t1, 10b
15:               jal          t1, 0b
16:               jal          ra, 22f
17:               jal          t5, 13b
18:               jal          s2, 5b
19:               jal          ra, 17b
20:               jal          ra, 4b
21:               jal          ra, 7b
22:               jal          gp, 23f
23:               jal          gp, 19b
24:               jal          t2, 2b
25:               jal          t1, 18b
26:               jal          ra, 14b
27:               nop
sub_3_2:          jal          t1, 0f
0:                jal          t1, 2f
1:                jal          t2, 8f
2:                jal          ra, 6f
3:                jal          ra, 10f
4:                jal          ra, 13f
5:                jal          ra, 12f
6:                jal          ra, 5b
7:                jal          gp, 4b
8:                jal          ra, 3b
9:                jal          t3, 7b
10:               jal          ra, 9b
11:               jal          t1, 1b
12:               jal          s9, 11b
13:               ori          tp, sp, -715
                  beq          a7, s3, 11f
                  srai         tp, ra, 28
                  auipc        t6, 651767
                  ori          s9, s3, -1994
                  sltu         a7, a2, a7
                  sltu         s2, s0, t4
                  slti         a3, zero, 18
                  xor          tp, a5, a2
                  slt          s8, a1, s11
                  sll          gp, a4, t1
                  beq          t1, gp, 27f
11:               sltu         a5, a7, s11
                  bge          s7, a5, 24f
                  xor          s4, s8, s6
                  srli         t6, t2, 1
                  or           zero, s5, zero
                  addi         a3, zero, 1744
                  addi         a7, t4, 319
                  addi         a2, a4, -1339
                  sltu         s1, ra, a7
                  xori         s4, t0, -213
                  addi         a6, a0, -1159
                  sub          s2, s3, s6
                  and          t3, t1, a5
24:               andi         s5, ra, -636
                  beq          a2, s4, 33f
                  xor          a6, ra, t0
27:               ori          a6, tp, -250
                  srai         a3, a5, 2
                  beq          a1, gp, 38f
                  lui          a7, 61653
                  add          t0, a2, t1
                  slti         s8, a0, -646
33:               lui          a4, 849630
                  and          a1, tp, a0
                  bge          ra, a5, 46f
                  or           s7, t1, a6
                  srl          t6, s1, a5
38:               xori         s3, t5, -960
                  bgeu         a2, a7, 50f
                  slti         a5, a1, 37
                  bne          t4, tp, 60f
                  sll          t1, t3, t2
                  sra          s2, gp, a6
                  slt          s5, a6, s3
                  slt          tp, zero, ra
46:               sub          gp, a1, zero
                  add          s4, t3, a6
                  slli         t2, a7, 16
                  srl          s8, tp, tp
50:               add          ra, a6, s2
                  bne          t5, t0, 61f
                  or           tp, sp, s3
                  slt          ra, s4, zero
                  bgeu         s6, s5, 57f
                  sra          s5, s10, t4
                  sra          a0, s6, s8
57:               bge          a0, a3, 66f
                  auipc        zero, 702089
                  or           tp, s9, s3
60:               nop
61:               bge          a0, s11, 80f
                  bltu         s9, s3, 63f
63:               and          t0, a3, zero
                  srli         t6, s9, 23
                  beq          a4, s0, 77f
66:               andi         a0, s0, -1908
                  slt          a3, a1, a1
                  bne          a7, t5, 81f
                  bgeu         s2, tp, 70f
70:               sltiu        a0, a7, 1279
                  bne          a0, a3, 86f
                  bne          s0, a0, 74f
                  and          s7, s7, t2
74:               add          t0, gp, a2
                  sltu         a7, s6, t0
                  srli         a1, s7, 6
77:               sra          t1, tp, s4
                  andi         gp, a3, 1338
                  srli         t1, a6, 0
80:               xori         t6, zero, 610
81:               blt          sp, t4, 91f
                  beq          a5, s5, 102f
                  srl          s5, a1, s2
                  xor          s6, t6, t2
                  xori         s7, ra, 520
86:               andi         tp, t5, 498
                  srl          s3, sp, a6
                  sltiu        a4, s7, 1262
                  or           t0, s10, tp
                  srli         s8, s8, 25
91:               and          s2, s4, s5
                  sra          s4, s2, t0
                  and          s3, a0, a5
                  beq          t6, t3, 95f
95:               srli         s3, a6, 7
                  srai         s7, s1, 6
                  srli         t3, s9, 26
                  nop
                  bge          t2, a2, 101f
                  lui          s4, 511756
101:              beq          s5, s4, 115f
102:              sub          ra, t4, s11
                  auipc        s4, 900593
                  andi         a4, s11, 1206
                  addi         tp, s3, -1609
                  slti         s3, t5, -916
                  slt          a6, t0, s0
                  slli         gp, t1, 16
                  or           s9, t4, a2
                  bge          a0, tp, 112f
                  addi         s5, s11, 778
112:              blt          s11, a0, 131f
                  xor          s6, a2, t4
                  slti         t4, t5, -1599
115:              add          ra, sp, s8
                  or           tp, a6, t3
                  add          a1, t1, tp
                  bne          s7, t2, 126f
                  sll          t2, s6, s3
                  beq          gp, t6, 128f
                  add          a3, t3, a3
                  srli         t2, tp, 0
                  slt          a2, s5, s6
                  lui          t0, 89604
                  lui          s1, 479621
126:              or           a5, s4, s1
                  andi         s1, tp, -1844
128:              sra          s1, a7, t6
                  xori         s0, sp, -257
                  beq          a1, t1, 143f
131:              lui          a1, 1028293
                  add          t3, a5, s4
                  xori         zero, s9, -1113
                  add          a3, zero, s9
                  sub          s8, s1, a4
                  add          a6, tp, t5
                  lui          s6, 623689
                  srai         s9, s3, 6
                  slli         a2, a0, 22
                  srli         t4, a4, 8
                  slti         s2, a7, 1038
                  slt          a0, t0, t4
143:              bne          s1, s1, 157f
                  sltu         t4, s8, a3
                  srl          s2, t1, s2
                  xor          s6, s2, t5
                  srli         gp, a7, 22
                  sra          a5, t0, a1
                  bgeu         s4, s9, 156f
                  sub          a3, a0, a6
                  beq          tp, t1, 161f
                  or           s1, s5, a3
                  xori         s6, t2, 170
                  addi         s6, sp, -648
                  and          tp, a6, s3
156:              blt          s8, t1, 157f
157:              nop
                  sltu         s4, ra, a6
                  bne          s10, s4, 172f
                  sub          t3, s11, t1
161:              srl          t6, s5, a7
                  sltu         t5, s0, a6
                  srl          t1, s2, zero
                  auipc        a4, 757726
                  bltu         t5, ra, 184f
                  bge          sp, t3, 167f
167:              sltu         t1, t0, t2
                  bne          a2, s7, 183f
                  slti         s2, a6, -1016
                  ori          t0, t0, 1438
                  slti         ra, a0, 142
172:              sll          a5, ra, t6
                  srl          ra, a4, a2
                  nop
                  bge          t4, s9, 177f
                  ori          t5, s8, -1253
177:              srai         s7, s0, 14
                  nop
                  srl          t2, s5, a0
                  add          a3, t1, s2
                  bge          s4, zero, 191f
                  srl          zero, a5, zero
183:              sra          a2, t3, s0
184:              or           t1, s6, s6
                  auipc        tp, 671693
                  bltu         a0, s5, 191f
                  add          t5, s9, ra
                  sltu         a7, t4, s3
                  auipc        t3, 424448
                  auipc        a7, 942338
191:              or           a0, sp, t3
                  andi         t4, t2, -307
                  sll          t5, gp, s7
                  sltu         t2, s6, t3
                  lw           t1, 4(s11)
                  addi         t2, t5, 1966
                  slti         a2, s7, 1574
                  srai         s6, s10, 8
                  andi         zero, a4, -817
                  addi         s11, s11, 16
                  addi         gp, s5, 607
317:              addi x3, x6, 1
317:              jalr x3, x3, 0
sub_4:            addi         s11, s11, -56
                  slli         t6, s2, 7
                  sw           t1, 4(s11)
                  addi         s4, a4, -743
                  slt          tp, tp, zero
                  auipc        tp, 482997
                  auipc        a2, 920577
                  srli         t0, a2, 9
                  slt          s5, a6, a6
                  sra          zero, ra, t1
                  or           s9, t3, s10
sub_4_5:          jal          t1, 9f
0:                jal          t1, 11f
1:                jal          gp, 10f
2:                jal          ra, 8f
3:                jal          t1, 2b
4:                jal          t5, 1b
5:                jal          ra, 7f
6:                jal          ra, 0b
7:                jal          ra, 6b
8:                jal          t1, 4b
9:                jal          gp, 3b
10:               jal          ra, 5b
11:               lui          a6, 36035
sub_4_7:          jal          t1, 3f
0:                jal          t1, 4f
1:                jal          ra, 6f
2:                jal          gp, 9f
3:                jal          ra, 8f
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          ra, 0b
7:                jal          ra, 2b
8:                jal          t1, 5b
9:                jal          t1, 1b
10:               sub          t3, sp, t2
sub_4_13:         jal          t1, 7f
0:                jal          a4, 3f
1:                jal          ra, 15f
2:                jal          a1, 20f
3:                jal          t1, 10f
4:                jal          a4, 26f
5:                jal          t1, 28f
6:                jal          t1, 23f
7:                jal          a6, 11f
8:                jal          ra, 14f
9:                jal          ra, 24f
10:               jal          t1, 6b
11:               jal          ra, 0b
12:               jal          tp, 1b
13:               jal          t1, 19f
14:               jal          ra, 17f
15:               jal          t1, 2b
16:               jal          ra, 8b
17:               jal          ra, 18f
18:               jal          ra, 12b
19:               jal          ra, 5b
20:               jal          gp, 13b
21:               jal          ra, 4b
22:               jal          t1, 16b
23:               jal          s8, 25f
24:               jal          ra, 27f
25:               jal          gp, 9b
26:               jal          ra, 22b
27:               jal          ra, 21b
28:               srli         a2, a0, 17
sub_4_14:         jal          t1, 12f
0:                jal          ra, 5f
1:                jal          ra, 6f
2:                jal          ra, 17f
3:                jal          ra, 2b
4:                jal          t1, 0b
5:                jal          ra, 15f
6:                jal          ra, 9f
7:                jal          a7, 13f
8:                jal          t6, 14f
9:                jal          ra, 10f
10:               jal          a6, 11f
11:               jal          s2, 4b
12:               jal          ra, 1b
13:               jal          tp, 3b
14:               jal          ra, 7b
15:               jal          s8, 16f
16:               jal          t1, 8b
17:               sra          t2, s7, t0
sub_4_0:          jal          t1, 22f
0:                jal          ra, 21f
1:                jal          ra, 24f
2:                jal          ra, 13f
3:                jal          s3, 16f
4:                jal          ra, 10f
5:                jal          t1, 8f
6:                jal          s6, 20f
7:                jal          s8, 19f
8:                jal          gp, 1b
9:                jal          t0, 14f
10:               jal          t6, 3b
11:               jal          t4, 6b
12:               jal          ra, 15f
13:               jal          ra, 25f
14:               jal          tp, 7b
15:               jal          ra, 17f
16:               jal          s3, 11b
17:               jal          ra, 23f
18:               jal          t1, 0b
19:               jal          t1, 18b
20:               jal          ra, 27f
21:               jal          ra, 5b
22:               jal          s8, 4b
23:               jal          ra, 9b
24:               jal          ra, 26f
25:               jal          ra, 28f
26:               jal          ra, 2b
27:               jal          ra, 12b
28:               slli         s4, a3, 23
sub_4_6:          jal          t1, 16f
0:                jal          ra, 17f
1:                jal          ra, 13f
2:                jal          s7, 14f
3:                jal          ra, 1b
4:                jal          s3, 11f
5:                jal          s6, 15f
6:                jal          s5, 3b
7:                jal          tp, 5b
8:                jal          tp, 10f
9:                jal          t1, 0b
10:               jal          s0, 12f
11:               jal          ra, 2b
12:               jal          ra, 4b
13:               jal          ra, 9b
14:               jal          t1, 6b
15:               jal          ra, 18f
16:               jal          t1, 8b
17:               jal          ra, 7b
18:               add          zero, t1, s4
sub_4_2:          jal          t1, 21f
0:                jal          t1, 1f
1:                jal          t4, 5f
2:                jal          ra, 26f
3:                jal          a3, 14f
4:                jal          t5, 11f
5:                jal          ra, 22f
6:                jal          ra, 4b
7:                jal          ra, 17f
8:                jal          s9, 13f
9:                jal          s3, 24f
10:               jal          t1, 2b
11:               jal          ra, 9b
12:               jal          ra, 10b
13:               jal          ra, 3b
14:               jal          ra, 20f
15:               jal          ra, 23f
16:               jal          t3, 18f
17:               jal          a3, 12b
18:               jal          t1, 8b
19:               jal          t1, 0b
20:               jal          a0, 7b
21:               jal          t2, 19b
22:               jal          t1, 25f
23:               jal          ra, 16b
24:               jal          t1, 15b
25:               jal          t1, 6b
26:               sltiu        t3, t3, -1164
sub_4_15:         jal          t1, 9f
0:                jal          tp, 5f
1:                jal          ra, 12f
2:                jal          t1, 13f
3:                jal          t1, 1b
4:                jal          ra, 0b
5:                jal          ra, 3b
6:                jal          t1, 8f
7:                jal          t1, 11f
8:                jal          ra, 4b
9:                jal          s9, 10f
10:               jal          ra, 6b
11:               jal          t1, 2b
12:               jal          t1, 7b
13:               xori         ra, s0, -1244
sub_4_11:         jal          t1, 3f
0:                jal          s4, 4f
1:                jal          tp, 6f
2:                jal          s9, 10f
3:                jal          ra, 1b
4:                jal          ra, 9f
5:                jal          ra, 11f
6:                jal          s7, 7f
7:                jal          ra, 0b
8:                jal          ra, 2b
9:                jal          t1, 8b
10:               jal          a6, 5b
11:               sltu         ra, t0, tp
sub_4_1:          jal          t1, 10f
0:                jal          ra, 6f
1:                jal          t6, 11f
2:                jal          t1, 3f
3:                jal          ra, 5f
4:                jal          ra, 15f
5:                jal          s2, 8f
6:                jal          ra, 7f
7:                jal          t1, 4b
8:                jal          gp, 12f
9:                jal          ra, 2b
10:               jal          ra, 13f
11:               jal          gp, 9b
12:               jal          ra, 0b
13:               jal          ra, 14f
14:               jal          ra, 1b
15:               and          t0, s9, a0
sub_4_9:          jal          t1, 6f
0:                jal          s8, 9f
1:                jal          ra, 3f
2:                jal          ra, 20f
3:                jal          s9, 17f
4:                jal          ra, 0b
5:                jal          t1, 1b
6:                jal          ra, 16f
7:                jal          s2, 13f
8:                jal          ra, 15f
9:                jal          t1, 2b
10:               jal          t1, 19f
11:               jal          s0, 4b
12:               jal          ra, 11b
13:               jal          t1, 18f
14:               jal          t1, 5b
15:               jal          t1, 7b
16:               jal          t5, 10b
17:               jal          t1, 8b
18:               jal          ra, 12b
19:               jal          tp, 14b
20:               sltu         a2, s6, a6
sub_4_12:         jal          t1, 6f
0:                jal          ra, 20f
1:                jal          s2, 0b
2:                jal          t1, 17f
3:                jal          t1, 28f
4:                jal          ra, 24f
5:                jal          ra, 14f
6:                jal          ra, 1b
7:                jal          ra, 18f
8:                jal          ra, 13f
9:                jal          tp, 29f
10:               jal          ra, 21f
11:               jal          gp, 9b
12:               jal          t2, 10b
13:               jal          ra, 5b
14:               jal          t0, 25f
15:               jal          ra, 2b
16:               jal          ra, 4b
17:               jal          s4, 22f
18:               jal          ra, 15b
19:               jal          ra, 11b
20:               jal          tp, 7b
21:               jal          ra, 27f
22:               jal          ra, 8b
23:               jal          s3, 12b
24:               jal          ra, 19b
25:               jal          t1, 23b
26:               jal          ra, 3b
27:               jal          ra, 26b
28:               jal          t1, 16b
29:               andi         tp, sp, 722
                  and          tp, t4, t1
                  sra          t6, sp, a3
                  lui          t1, 936612
                  addi         a2, sp, 44
                  andi         s9, s9, 1045
                  bltu         s3, zero, 8f
                  slti         a1, a2, -369
                  sra          a5, s2, s8
8:                addi         s3, s1, -370
                  sltu         a1, s1, t1
                  srl          t6, s10, s9
                  srai         s5, t4, 29
                  bltu         a2, a1, 31f
                  lui          s5, 21586
                  sltu         ra, t0, t1
                  ori          a4, a0, -1693
                  nop
                  srli         t1, a4, 21
                  addi         t5, s4, -2029
                  srai         s2, zero, 5
                  slli         t5, t1, 12
                  ori          s1, a2, -221
                  or           t4, s5, s6
                  bne          tp, sp, 36f
                  bltu         t2, a1, 44f
                  andi         s8, s11, -1898
                  xori         s5, s1, -861
                  sltiu        a6, a6, 1889
                  xori         a0, s4, -800
                  slt          gp, t6, s10
                  sra          a0, t5, a6
31:               bge          t2, a2, 42f
                  xor          a4, a0, s0
                  slt          t1, t4, a2
                  addi         t4, s11, 342
                  lui          a2, 129159
36:               sltu         s2, s8, t3
                  andi         zero, t4, 524
                  sltu         s0, a1, tp
                  slli         s4, tp, 27
                  and          a7, a2, ra
                  bltu         s0, s7, 49f
42:               blt          ra, a5, 43f
43:               srli         t3, s5, 12
44:               slli         t3, s2, 29
                  blt          s6, s7, 50f
                  addi         s3, t6, 1706
                  sll          s5, a0, s9
                  sltiu        tp, t3, 232
49:               beq          s9, t2, 51f
50:               srli         t1, s11, 5
51:               bne          a7, t2, 63f
                  slti         t6, t1, -270
                  or           a2, t2, s3
                  sra          s7, a4, tp
                  sll          t0, s2, t0
                  ori          a6, t0, -940
                  addi         s4, a5, 1390
                  xor          ra, s5, s0
                  xori         t2, s3, 1229
                  addi         a5, zero, -196
                  srl          a7, a4, s10
                  sll          s1, a3, s3
63:               bne          s6, s3, 80f
                  or           s0, a5, s0
                  sra          s3, a4, t4
                  sra          t1, t1, t3
                  sltu         a1, s6, s8
                  bge          s5, s10, 80f
                  sll          s7, sp, s6
                  bgeu         a5, s5, 80f
                  slti         a2, s5, -1120
                  sltiu        a0, s5, 1752
                  bne          t4, t5, 78f
                  srai         t6, a5, 7
                  slli         a2, t5, 30
                  and          a6, a4, s11
                  bne          t6, s10, 86f
78:               xor          s9, s4, s8
                  slli         s3, t6, 7
80:               slt          s1, t5, s10
                  srl          a5, t3, a1
                  bne          s10, t1, 86f
                  addi         a4, a1, -1027
                  blt          s5, ra, 92f
                  srl          s3, t5, s7
86:               or           s2, zero, s4
                  srai         a2, s8, 16
                  andi         s2, s10, -126
                  addi         s9, a4, -1513
                  sltiu        a3, s9, 664
                  sltiu        s0, s2, 1383
92:               slli         zero, s3, 3
                  bne          s4, t0, 99f
                  addi         s1, s2, -341
                  lui          t0, 249113
                  bgeu         t0, sp, 116f
                  sltu         a2, s5, s7
                  bltu         a3, t4, 103f
99:               xori         s1, a3, -1607
                  bge          gp, s11, 101f
101:              sub          s9, s1, t2
                  slt          a1, a1, t6
103:              beq          t5, t5, 115f
                  sltiu        a5, s3, -304
                  add          t0, a3, a5
                  sll          a2, s3, s11
                  srai         a3, t0, 5
                  sra          t1, s9, s5
                  slli         s2, t5, 20
                  srl          s0, a1, t6
                  bne          s4, t3, 122f
                  srli         t3, zero, 3
                  slti         a6, a1, -1790
                  nop
115:              bne          s5, s5, 124f
116:              add          s9, zero, a2
                  lui          a2, 651026
                  sra          a4, a0, s11
                  bne          sp, t2, 139f
                  sub          t3, s6, s0
                  ori          t5, s5, -1736
122:              lui          a2, 672150
                  add          a0, a2, t6
124:              andi         a4, a4, 194
                  slt          t0, s3, s5
                  blt          s11, tp, 144f
                  bge          sp, t0, 128f
128:              slli         tp, s8, 23
                  bne          s6, gp, 137f
                  bgeu         s1, a0, 138f
                  sra          tp, sp, zero
                  nop
                  ori          s4, t3, -1904
                  ori          a0, a3, 1831
                  xori         t6, t2, -682
                  slli         a4, tp, 30
137:              and          a7, t6, zero
138:              srai         tp, t4, 10
139:              beq          s9, t3, 148f
                  ori          t0, zero, 1600
                  sub          gp, t2, a1
                  slt          s6, s5, s11
                  bltu         s4, s2, 163f
144:              auipc        gp, 220270
                  xor          a1, a7, s9
                  sltu         t4, tp, t2
                  slli         t4, tp, 3
148:              slti         s2, a5, -1713
                  add          s5, s2, a3
                  srl          tp, a7, s2
                  bne          s11, s0, 160f
                  auipc        t3, 571233
                  sltu         s8, ra, a5
                  bltu         ra, s4, 173f
                  nop
                  slti         tp, t4, -1215
                  sll          t2, sp, t2
                  slli         ra, a1, 1
                  lui          zero, 727720
160:              sll          a5, sp, a0
                  slli         a1, t5, 31
                  xor          s7, a5, t6
163:              auipc        t1, 441799
                  andi         a5, s5, -335
                  add          zero, s7, a7
                  sub          s7, s10, t0
                  auipc        s2, 444459
                  slt          t0, a3, s1
                  slti         a2, t2, -841
                  ori          a3, s2, -800
                  xori         s0, a6, 1674
                  beq          s5, a1, 173f
173:              bltu         t4, s5, 178f
                  nop
                  nop
                  sltiu        a2, t3, 1936
                  sra          t3, zero, s10
178:              slli         a5, a5, 13
                  slli         t6, a3, 14
                  bge          s3, sp, 192f
                  bge          a4, s3, 182f
182:              bltu         t3, t3, 184f
                  auipc        s1, 960777
184:              bne          a0, zero, 193f
                  sltu         a4, a2, t4
                  add          t2, s1, s0
                  nop
                  sltiu        a4, t4, -407
                  auipc        tp, 301811
sub_4_10:         jal          t1, 10f
0:                jal          ra, 15f
1:                jal          t1, 6f
2:                jal          ra, 3f
3:                jal          ra, 0b
4:                jal          ra, 9f
5:                jal          t1, 1b
6:                jal          ra, 16f
7:                jal          tp, 17f
8:                jal          t1, 7b
9:                jal          ra, 2b
10:               jal          ra, 14f
11:               jal          tp, 8b
12:               jal          gp, 4b
13:               jal          t0, 12b
14:               jal          ra, 13b
15:               jal          ra, 5b
16:               jal          ra, 11b
17:               slti         tp, a2, 226
                  bne          t2, a5, 195f
                  sub          a7, ra, s10
192:              sltiu        t2, a6, 801
193:              sltu         a1, a3, a1
                  beq          s4, s9, 206f
195:              sub          a0, t0, a4
                  sltu         s1, a3, a0
                  xor          a1, a7, s2
                  blt          a7, t3, 206f
                  sra          a1, t3, s6
                  xor          s6, a4, s0
                  slt          tp, s10, s10
                  slt          s2, s4, s5
                  sll          a0, s9, s1
                  slt          t5, s0, t4
                  add          t5, t5, t5
206:              blt          t6, s8, 214f
                  or           s1, a6, s10
                  srai         s2, s7, 16
                  and          t3, a2, a1
                  srl          t0, a1, s11
                  sub          s2, a6, a7
                  add          s5, s4, s9
                  sub          t0, t1, s7
214:              sra          a4, s3, s0
                  addi         zero, sp, 1140
                  srai         s4, tp, 24
                  sra          t2, s4, a6
                  nop
                  add          t4, s2, t2
                  auipc        t1, 87493
                  blt          t3, s5, 225f
                  bne          sp, ra, 234f
                  sltiu        a2, s1, 1275
                  slli         t1, a2, 15
225:              ori          tp, s3, 81
                  bne          gp, sp, 236f
                  srl          a6, a0, s1
                  beq          s4, ra, 234f
                  andi         s6, s9, -1136
                  bgeu         s0, a0, 241f
                  bltu         ra, t2, 232f
232:              sra          s6, a0, s10
                  xor          a4, ra, t1
234:              and          a2, s4, s11
                  beq          s0, s3, 243f
236:              bge          a7, s7, 249f
                  or           gp, tp, sp
                  slli         s9, s1, 29
                  sltiu        t4, s11, 840
                  blt          s3, a7, 260f
241:              bge          t3, s7, 259f
                  sub          s5, s1, a6
243:              addi         ra, s0, -1093
                  add          s6, s6, a6
                  srai         s9, tp, 24
                  sltu         gp, sp, t2
                  lui          t6, 874913
                  ori          a0, s3, 340
249:              auipc        s1, 745325
                  add          a5, a4, s6
                  blt          t5, a0, 254f
                  xor          a0, t6, s2
                  sll          s0, a2, s5
254:              srl          a3, s3, s10
                  sub          a6, s7, zero
                  sra          s7, gp, s4
                  xori         a2, a6, -616
                  and          s4, s0, sp
259:              bgeu         zero, sp, 276f
260:              sub          gp, a0, s4
                  auipc        t1, 95546
                  nop
                  slli         a2, a1, 11
                  andi         s1, a1, 1993
                  sub          s5, s4, t4
                  addi         a1, t4, -1327
                  srai         s3, t6, 24
                  bgeu         t1, s5, 288f
                  add          a4, sp, s5
                  addi         a7, s2, 224
                  sltiu        t2, s5, -1387
                  slli         s7, s0, 7
                  sra          a6, t3, s10
                  or           t4, a4, t5
                  or           s0, t4, a3
276:              slt          a7, t0, s7
                  beq          t3, s1, 288f
                  auipc        s0, 375629
                  lui          t3, 590218
                  slli         tp, s0, 25
                  or           a6, s11, s5
                  lui          t5, 896813
                  slli         ra, a0, 11
                  add          s2, s5, s9
                  sltiu        ra, s7, -499
                  andi         t4, a7, -447
                  slti         t5, a3, 1753
288:              sltiu        t4, s4, -820
                  sub          s9, s2, s8
                  lui          t3, 856030
                  blt          sp, a5, 300f
                  bne          s1, gp, 297f
                  lui          gp, 777136
                  srai         a4, a6, 18
                  ori          t4, ra, -1467
                  slt          s8, a0, s11
sub_4_8:          jal          t1, 20f
0:                jal          a0, 1f
1:                jal          t6, 8f
2:                jal          ra, 5f
3:                jal          s0, 28f
4:                jal          t0, 6f
5:                jal          t1, 0b
6:                jal          s8, 3b
7:                jal          ra, 25f
8:                jal          ra, 15f
9:                jal          a5, 13f
10:               jal          t1, 27f
11:               jal          t1, 21f
12:               jal          ra, 26f
13:               jal          ra, 18f
14:               jal          ra, 2b
15:               jal          ra, 24f
16:               jal          ra, 7b
17:               jal          ra, 29f
18:               jal          s8, 22f
19:               jal          ra, 4b
20:               jal          a5, 11b
21:               jal          a2, 10b
22:               jal          gp, 16b
23:               jal          ra, 19b
24:               jal          ra, 23b
25:               jal          t1, 12b
26:               jal          ra, 14b
27:               jal          t1, 17b
28:               jal          ra, 30f
29:               jal          t1, 9b
30:               and          s7, sp, s4
297:              beq          a5, gp, 305f
                  bne          t3, tp, 316f
                  and          t1, a1, s5
300:              ori          s6, s1, -221
                  srli         s1, s4, 5
                  bltu         t2, s5, 313f
                  nop
                  and          gp, a6, s11
sub_4_4:          jal          t1, 0f
0:                jal          a0, 16f
1:                jal          s8, 26f
2:                jal          t1, 14f
3:                jal          gp, 5f
4:                jal          s3, 17f
5:                jal          ra, 8f
6:                jal          ra, 10f
7:                jal          t0, 23f
8:                jal          s6, 19f
9:                jal          t1, 13f
10:               jal          ra, 1b
11:               jal          ra, 15f
12:               jal          ra, 24f
13:               jal          ra, 25f
14:               jal          ra, 21f
15:               jal          tp, 6b
16:               jal          ra, 18f
17:               jal          ra, 12b
18:               jal          ra, 9b
19:               jal          a0, 11b
20:               jal          t0, 22f
21:               jal          ra, 7b
22:               jal          t0, 2b
23:               jal          ra, 4b
24:               jal          ra, 3b
25:               jal          s9, 20b
26:               sltu         s8, s11, t6
305:              srli         s8, t5, 28
                  and          t3, zero, t4
                  bltu         s9, s11, 316f
                  and          a6, gp, a1
                  and          s1, s2, t2
                  andi         a7, a4, -1389
                  bltu         s10, a5, 323f
                  or           t3, s2, t0
313:              bge          t4, s0, 323f
                  sub          t5, a3, s4
                  srl          t5, a3, t6
316:              bltu         s0, a4, 324f
                  lui          s6, 626741
                  lui          a6, 137857
                  srl          s9, s4, s6
                  sltiu        s5, sp, 973
                  blt          a6, a5, 322f
322:              bne          ra, tp, 331f
323:              srli         t0, s2, 31
324:              andi         s7, a2, 511
                  slti         s8, t0, 976
                  slt          s1, a2, s8
                  andi         zero, t4, -1353
                  slli         s1, t4, 31
                  xor          t4, s9, gp
                  beq          t6, s7, 335f
331:              and          s1, t5, s5
                  bltu         s9, s8, 340f
                  srai         t6, s8, 31
                  add          s7, t2, t1
335:              srai         a6, t6, 8
                  srli         a2, a1, 6
                  addi         a7, t5, 634
                  beq          s1, zero, 339f
339:              nop
340:              sltiu        tp, s2, -1796
                  addi         a0, a4, -522
                  sub          s5, a4, s0
                  auipc        a6, 267424
                  andi         a3, t5, -1065
                  and          s1, a2, a5
                  nop
                  addi         ra, ra, 663
                  lui          zero, 990465
                  srai         a7, a6, 26
                  auipc        a2, 191946
                  auipc        t4, 924419
                  add          a3, a1, a6
                  bne          a5, a1, 365f
                  srl          a2, s4, s1
                  add          t5, s2, s1
                  xor          a0, zero, tp
                  and          t6, sp, t5
                  srl          t0, t6, zero
                  xor          t6, s10, s1
                  sub          a6, s2, a7
                  addi         s7, s0, -1388
                  add          a0, a7, a1
                  sub          s5, a5, s1
                  sltiu        a1, s2, -851
365:              srai         a7, s0, 3
                  add          a7, s5, s3
                  andi         a4, s4, 228
                  sra          a1, s4, s4
                  sra          t1, t4, a7
                  or           a1, s9, s9
                  bge          zero, s2, 383f
                  ori          t4, zero, -606
                  slti         t2, s2, -1945
                  addi         s6, a3, 1070
                  bltu         a2, a5, 388f
                  slli         a7, t1, 26
                  xori         tp, gp, 1037
                  bgeu         s4, t5, 389f
                  andi         t6, t2, -176
                  auipc        s6, 168135
                  slti         tp, s9, -642
                  sltiu        a4, s3, -639
383:              and          a5, a6, s4
                  ori          s3, s3, -1670
                  lui          s0, 346426
                  sltiu        a4, t2, 297
                  sra          s5, a1, t2
388:              ori          zero, s9, -570
389:              ori          s6, s3, 165
                  beq          s11, t4, 398f
                  xor          s3, s0, t4
                  sub          s8, t0, s5
                  slti         t5, a0, -705
                  slli         a2, s8, 17
                  nop
                  auipc        ra, 49978
                  srli         s1, s8, 16
398:              bgeu         tp, t6, 406f
                  or           s7, s6, s9
                  slti         t5, a4, -60
                  bgeu         a6, s3, 410f
                  xori         a1, t6, -24
                  sra          s9, t2, t0
                  bne          sp, s0, 406f
                  ori          t1, s0, -959
406:              srl          a6, t3, gp
                  bge          a1, t2, 408f
408:              slli         gp, s7, 28
                  blt          a4, a5, 413f
410:              sra          s6, t4, s9
                  bge          s1, s10, 417f
                  sltu         t5, s0, t3
413:              bgeu         s10, t0, 430f
                  blt          s0, t1, 417f
                  bge          a2, s5, 420f
                  sll          s4, gp, s2
417:              xori         s7, s9, 1109
                  slli         s8, a2, 10
                  auipc        t0, 291610
420:              bge          a2, a6, 440f
                  bge          a0, s8, 441f
                  sra          t6, s0, t5
                  bgeu         a6, s7, 428f
                  slt          t1, s3, ra
                  beq          s4, t1, 444f
                  addi         s2, a1, -351
                  or           s3, s1, a1
428:              bltu         a4, s11, 448f
                  auipc        a4, 665846
430:              slli         s7, s2, 20
                  beq          ra, a5, 436f
                  addi         s6, t0, -1207
                  slli         s1, t4, 21
                  lui          ra, 477819
                  sltu         s6, s8, t0
436:              addi         t6, s10, -352
                  nop
                  xori         a6, s8, 1448
                  xor          s2, t0, s6
440:              bltu         t2, a3, 448f
441:              beq          t1, s9, 450f
                  sra          t5, s6, a6
                  xor          s1, t0, t4
444:              xor          s3, s6, s2
                  bge          s0, s1, 454f
                  add          t6, s9, a6
                  addi         s9, s0, -1933
448:              blt          a1, t3, 467f
                  beq          a2, gp, 452f
450:              auipc        t6, 89772
                  blt          s9, t3, 471f
452:              beq          zero, s5, 454f
                  nop
454:              slti         s2, a7, -1815
                  nop
                  srli         tp, s3, 13
                  blt          a6, tp, 469f
                  sll          s2, s11, ra
                  nop
                  beq          sp, t1, 473f
                  xor          a1, s5, t2
                  sll          ra, t4, tp
                  beq          t1, gp, 481f
                  lui          gp, 844027
                  slt          a1, t4, ra
                  nop
467:              or           t2, t0, s7
                  add          s6, s2, t0
469:              sra          s0, s9, a2
                  andi         a4, a3, -681
471:              addi         s0, s1, -15
                  sltiu        zero, s9, -718
473:              slt          s4, t5, s2
                  bltu         t0, t6, 491f
                  and          t5, tp, s7
                  beq          t4, t2, 477f
477:              bgeu         s0, a6, 488f
                  addi         s8, a1, -519
                  slt          t5, s1, a1
                  slt          s3, s8, s8
481:              sra          s1, a3, s7
                  slt          a6, sp, s6
                  blt          s10, s4, 484f
484:              ori          s0, gp, -211
                  bltu         a3, s10, 495f
                  sltiu        zero, t5, -1371
                  bge          a4, gp, 507f
488:              xori         tp, a1, 883
                  srl          a3, a3, s2
                  bgeu         s4, s2, 495f
491:              andi         s6, s9, 1280
                  sll          s2, t1, t1
                  srl          s6, a1, t2
                  blt          s3, t2, 498f
495:              andi         s8, gp, 1808
                  srai         t5, s2, 0
                  sub          s1, a5, s6
498:              sra          t0, ra, t4
                  auipc        tp, 222859
                  nop
                  blt          a0, a1, 513f
                  xor          a7, a3, s1
                  blt          a7, a4, 508f
                  bgeu         s3, a6, 512f
                  bge          s10, t0, 513f
                  auipc        t4, 238695
507:              ori          s3, s3, 1361
508:              sltiu        s3, sp, 26
                  auipc        s1, 449851
                  srl          t5, ra, t0
                  andi         s9, s1, 1944
512:              nop
513:              srli         t5, s4, 20
                  blt          a1, s11, 526f
                  beq          a7, a0, 516f
516:              srai         s3, s4, 16
                  or           s3, t6, s8
                  slli         s9, s2, 28
                  slt          a7, s11, a4
                  or           s1, a4, a7
                  or           a1, s5, t6
                  xor          s7, t2, t0
                  sra          t2, s4, s11
                  sltiu        ra, a6, 1560
                  sub          t2, tp, s8
526:              xor          a4, a6, s6
                  sltiu        s1, t6, 626
                  bltu         s2, ra, 534f
                  srli         a1, a4, 0
                  or           a2, a5, a7
                  slt          t1, a4, s0
                  bne          s6, t4, 552f
                  nop
534:              and          gp, zero, t3
                  add          s2, t3, tp
                  srl          t1, a2, a7
                  bne          s0, s6, 545f
                  blt          gp, a3, 547f
                  and          gp, a0, a4
                  sll          a1, a4, a2
                  slli         s8, s2, 21
                  srai         a0, a1, 30
                  or           a7, a4, s6
                  lui          s9, 308093
545:              ori          s8, a1, -147
                  sra          s7, a5, a0
547:              and          s2, s0, ra
                  sltu         s7, a3, a1
                  sltiu        ra, s6, -1878
                  blt          zero, a5, 561f
                  lui          s4, 1015569
552:              add          a6, s8, t3
                  beq          s6, tp, 554f
554:              and          t5, a3, gp
                  or           a6, s4, s4
                  sltu         s0, t2, a0
                  ori          zero, t6, 1363
                  ori          s8, t3, -1689
                  blt          a7, s8, 571f
                  sub          a3, s4, s1
561:              and          t2, s7, s9
                  lui          gp, 498597
                  slt          s5, s3, s5
                  bge          a7, s10, 569f
                  bge          s11, s4, 569f
                  ori          ra, s7, 820
                  auipc        ra, 934494
                  andi         t0, t1, -1787
569:              or           a7, t0, tp
                  srl          a2, a1, s9
571:              sll          a1, s3, t1
                  add          s3, t6, s4
                  sltiu        a2, t2, 403
                  srli         a1, a1, 12
                  bgeu         s2, zero, 583f
                  xori         a2, s5, 1682
                  auipc        a5, 372245
                  auipc        s9, 106006
                  xori         a6, a3, 23
                  ori          zero, s4, 180
                  slli         s7, a1, 9
                  lui          tp, 629196
583:              srai         t5, s4, 23
                  sub          t2, ra, s3
                  srl          t2, s2, s10
                  addi         s2, s11, 13
                  bge          a3, a2, 595f
                  nop
                  srli         s6, ra, 7
                  sltiu        t0, a2, -222
                  add          a1, a4, t0
                  sltiu        s7, s0, 1026
                  or           s8, zero, s11
                  andi         t5, ra, -500
595:              srai         a6, a5, 28
                  bgeu         a0, a1, 616f
                  bge          s7, a3, 617f
                  bltu         s9, ra, 599f
599:              auipc        t1, 495623
                  slti         s3, tp, -1543
                  beq          t5, s6, 620f
                  ori          t3, a2, 1913
                  add          tp, s10, zero
                  or           s3, s5, sp
                  sra          a4, t2, s2
                  sub          s6, t6, s11
                  sltiu        s4, a0, 574
                  srl          a1, t4, tp
                  bge          ra, sp, 612f
                  andi         s7, s2, 1923
                  srl          a3, a7, s6
612:              or           s0, tp, s11
                  ori          s3, s2, -1941
                  bgeu         s6, gp, 623f
                  bgeu         a0, tp, 626f
616:              nop
617:              or           s8, t1, s7
                  xor          s0, s9, s11
                  sll          s8, a0, tp
620:              nop
                  auipc        a7, 1002563
                  sub          tp, t2, a3
623:              sra          s7, t0, s10
                  slli         s7, a6, 29
                  slt          a6, s3, a1
626:              lui          s0, 381892
                  srl          a5, tp, sp
                  sltiu        zero, s11, -1893
                  srai         s3, ra, 25
                  srai         s7, s1, 21
                  sub          t5, a1, a7
                  bgeu         t4, a2, 638f
                  and          s1, sp, t1
                  sra          ra, s8, t2
                  slt          t1, tp, s7
                  auipc        s7, 959009
                  ori          t5, a7, -1134
638:              sltu         gp, ra, a3
                  bltu         gp, a3, 652f
                  andi         a2, s6, -931
                  auipc        s3, 448980
                  addi         a1, s8, -1775
                  auipc        t4, 428240
                  bne          t0, sp, 654f
                  slt          s8, s11, a5
                  srl          a7, t6, t6
                  sltiu        s6, s0, 2010
                  auipc        s0, 90652
                  and          a7, gp, s0
                  addi         ra, s0, -1023
                  add          gp, t3, t4
652:              srli         a3, t4, 11
                  srai         a3, s0, 27
654:              slti         t6, t6, -755
                  sll          s1, t6, s8
                  bgeu         s9, a6, 664f
                  addi         a1, t4, -658
                  xori         s3, t4, 1513
                  bltu         a4, t5, 660f
660:              srli         s1, s8, 14
                  add          t3, a6, a3
                  lui          a7, 261763
                  andi         s4, t3, 518
664:              sltu         t2, s8, s5
                  srli         s5, a3, 16
                  slt          s8, t4, a6
                  bltu         sp, s0, 679f
                  bgeu         s11, a3, 676f
                  ori          s5, s11, 1462
                  slli         s7, s10, 31
                  or           s5, a4, a2
                  lui          s2, 304828
                  or           ra, a6, s7
                  sub          ra, zero, s11
                  andi         ra, ra, -1022
sub_4_3:          jal          t1, 10f
0:                jal          ra, 5f
1:                jal          t1, 7f
2:                jal          s0, 18f
3:                jal          gp, 17f
4:                jal          t1, 16f
5:                jal          s8, 4b
6:                jal          t1, 9f
7:                jal          t5, 6b
8:                jal          ra, 0b
9:                jal          t1, 11f
10:               jal          ra, 15f
11:               jal          t6, 8b
12:               jal          ra, 14f
13:               jal          gp, 3b
14:               jal          t1, 20f
15:               jal          ra, 13b
16:               jal          t1, 19f
17:               jal          tp, 1b
18:               jal          t1, 12b
19:               jal          t1, 2b
20:               jal          s1, 21f
21:               sltu         a3, s2, t6
676:              ori          s7, a5, 316
                  and          t3, t0, t6
                  srai         s9, t1, 25
679:              slt          a4, zero, sp
                  srai         a1, t6, 3
                  bne          s10, a6, 690f
                  srai         s0, s7, 23
                  addi         zero, s3, 1224
                  addi         t2, a3, 496
                  and          a2, a6, s1
                  bne          s2, t3, 697f
                  slli         t1, ra, 16
                  xor          a4, a0, s4
                  srl          t6, s9, s11
690:              bltu         s0, a6, 699f
                  bltu         sp, s1, 708f
                  nop
                  auipc        a2, 103492
                  bne          a1, s3, 706f
                  blt          t3, a2, 713f
                  sub          a4, a3, s6
697:              sra          t6, s10, s11
                  sltiu        t4, t5, 2047
699:              or           a1, s10, t0
                  nop
                  lui          zero, 44134
                  add          s4, a7, s2
                  addi         t1, t2, 1983
                  lui          s2, 379177
                  and          t6, t3, t0
706:              sltu         zero, s7, a7
                  sra          gp, t2, s0
708:              bge          t1, s7, 728f
                  beq          a0, a6, 711f
                  addi         gp, a3, 44
711:              sltiu        t2, tp, 1990
                  sltiu        a3, t6, -688
713:              srai         a4, a1, 27
                  addi         s7, a7, -693
                  beq          a6, a0, 720f
                  slli         s3, s4, 9
                  bltu         t6, gp, 722f
                  bltu         s4, s8, 737f
                  add          a4, t1, s1
720:              andi         s0, s1, 365
                  lui          t2, 628501
722:              lui          a1, 882128
                  auipc        t2, 426893
                  srli         s7, t0, 21
                  and          gp, tp, a2
                  srli         t4, t2, 29
                  andi         s1, s6, 1599
728:              srli         a5, s7, 2
                  sub          ra, a7, zero
                  addi         t1, s11, -1028
                  bltu         t2, ra, 741f
                  andi         a3, s3, -737
                  sra          t6, a1, s3
                  sltiu        t4, t1, 1385
                  sltiu        s9, t6, 1102
                  sltu         s7, a0, a2
737:              slli         t4, s8, 13
                  sll          s5, tp, t3
                  slt          s9, s11, s7
                  sltu         a0, a7, gp
741:              bne          a5, s7, 749f
                  sll          s7, s7, sp
                  sub          ra, s1, t4
                  nop
                  addi         tp, a0, 2029
                  bltu         t2, a0, 758f
                  bgeu         s2, t4, 752f
                  srli         a2, a6, 27
749:              auipc        t1, 231730
                  auipc        a4, 398528
                  sll          s8, a0, s3
752:              xori         a6, s7, 641
                  beq          s0, s0, 765f
                  bgeu         s5, t1, 763f
                  xori         a0, a7, -165
                  srli         a2, s7, 2
                  bne          ra, a4, 770f
758:              auipc        t3, 951025
                  bgeu         t4, s11, 779f
                  srl          t2, s4, s6
                  sra          zero, s11, a5
                  bltu         t1, t3, 763f
763:              beq          t1, s3, 769f
                  srl          a6, sp, a5
765:              ori          s6, t0, 239
                  bltu         a1, t1, 771f
                  bge          zero, s7, 776f
                  slti         tp, a4, -536
769:              sll          a2, a0, a7
770:              blt          a4, s10, 771f
771:              lui          s1, 109954
                  slt          s3, t3, a4
                  sltiu        t6, s6, -1775
                  auipc        s7, 57220
                  bgeu         a4, tp, 778f
776:              sll          s0, s3, a6
                  sltu         t4, a7, sp
778:              srli         t3, t6, 4
779:              bne          t1, zero, 788f
                  bltu         sp, a1, 788f
                  xori         s5, s3, 1136
                  srl          a2, s4, s2
                  slli         t3, a0, 26
                  sltu         s4, tp, s5
                  bgeu         s4, zero, 793f
                  slli         ra, a5, 2
                  lui          ra, 278087
788:              andi         tp, t1, -698
                  lui          a0, 145238
                  sll          a6, t5, a1
                  sub          s4, s5, a7
                  sll          zero, s1, a6
793:              slli         gp, a6, 27
                  bge          a3, a7, 805f
                  addi         t3, a3, -1098
                  sra          a1, a1, a4
                  bne          s2, t2, 814f
                  bgeu         t1, t5, 806f
                  nop
                  or           t2, s1, s0
                  sll          t5, a2, s3
                  sltu         t0, s3, s11
                  add          s6, a7, t2
                  sltiu        ra, a7, 689
805:              blt          s3, a5, 806f
806:              sltu         t2, a3, t3
                  slt          a1, s10, t3
                  beq          t3, s7, 810f
                  slti         t3, s10, 9
810:              auipc        s1, 127233
                  auipc        t1, 857510
                  bge          s5, tp, 830f
                  auipc        tp, 646595
814:              lui          s7, 858985
                  or           a3, t1, a6
                  srai         s6, a1, 8
                  slti         a6, a5, 1668
                  andi         zero, s3, -22
                  bne          a6, t0, 830f
                  slli         a4, s11, 21
                  and          gp, a7, s11
                  blt          a6, s10, 830f
                  add          s1, a4, s4
                  blt          s8, t3, 830f
                  sll          a3, s3, s10
                  add          s5, t5, a7
                  beq          s11, s5, 830f
                  add          a5, s10, a5
                  sltiu        a2, tp, -251
830:              sltiu        a6, a7, 292
                  slti         t6, zero, 1249
                  srli         t6, t4, 0
                  lw           t1, 4(s11)
                  srai         s3, t2, 31
                  sra          t5, t5, s1
                  xori         zero, a5, 247
                  addi         s11, s11, 56
                  xor          t5, t6, s2
1202:             addi x22, x6, 1
1202:             jalr x22, x22, 0
sub_1:            bge          a7, a5, sub_1_stack_p
                  sub          s2, s9, a2
sub_1_stack_p:    addi         s11, s11, -60
                  sll          tp, s7, s8
                  slti         t5, t2, -677
                  sw           t1, 4(s11)
                  addi         s2, zero, -1680
                  la           t3, sub_3
                  lui          t5, 69429
                  slti         s7, s11, 852
                  addi         t3, t3, -182
                  sltu         a2, gp, a6
                  bne          s3, s6, sub_1_j3 #branch to jump instr
                  lui          s3, 893092
                  nop
                  add          a2, a7, a4
                  nop
                  add          a6, t2, s6
                  srli         s4, a7, 11
sub_1_j3:         jalr         t1, t3, 183 #jump sub_1 -> sub_3
                  sra          t6, s4, t6
                  slt          s5, s11, ra
                  xori         t4, t0, 1229
                  sltiu        t1, s9, 1856
                  ori          a0, t2, 1886
                  sltiu        a4, a7, -1000
                  bge          a6, a5, 11f
                  nop
                  sll          a1, ra, a7
                  bge          t3, a3, 27f
                  srli         t1, s5, 23
11:               or           s6, a6, ra
                  slti         a4, a7, -1728
                  sltu         s5, zero, t1
                  bge          t3, gp, 26f
                  srli         ra, s1, 14
                  or           s1, a2, ra
                  srl          t4, a1, t5
                  srli         t2, s3, 14
                  andi         s2, a0, 418
                  srli         t2, t0, 3
                  bge          a7, s1, 31f
                  and          ra, s10, s4
                  andi         t4, s6, 968
                  addi         s7, t3, 216
                  andi         t6, s7, -1261
26:               sll          t4, sp, a6
27:               lui          tp, 604207
                  slt          s4, a6, a1
                  xor          a0, s5, s5
                  sltu         s1, a6, a2
31:               slt          s2, s5, s4
                  lw           t1, 4(s11)
                  ori          s2, t0, 262
                  slt          tp, t6, a4
                  sll          a2, s0, s8
                  sltiu        s9, s1, -1991
                  srl          s7, s10, t4
                  addi         s11, s11, 60
                  andi         a2, s11, -1868
60:               addi x30, x6, 1
60:               jalr x30, x30, 0
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
.word 0x60e90d91, 0x7886d101, 0x8bcdf3d4, 0x0ea19a92, 0x9a583ea2, 0x90673812, 0x0821cf7b, 0x15f7308e
.word 0x87139d1e, 0xcb6bb6ce, 0x98d0e233, 0x70585afa, 0x07887a18, 0xa960c746, 0x1cef996b, 0x1280675c
.word 0x8a64c4fa, 0x3d9fa64c, 0xa2a86329, 0x06af80a9, 0xda894a56, 0x58b05163, 0x22337f24, 0xf4d422f4
.word 0xeccfb32e, 0xf4911551, 0x57c3d9c7, 0x3b4c7126, 0x82547da6, 0xc9151235, 0x5148b9fe, 0xb31d11ab
.word 0x15e4fa89, 0xea03cac8, 0x469aaba7, 0x70d9e614, 0x0f3f8072, 0xd68e9a2d, 0x3875e900, 0xfb8bc3b5
.word 0xbcaba241, 0xd85f11f5, 0x28272c90, 0xeb1e6b21, 0xf25682e4, 0xb2d468dc, 0x2e8c3305, 0x8ef92df7
.word 0xafa47025, 0x3289ade1, 0xce14f849, 0xf0e69fa1, 0xf8bd8de6, 0x22f3e6ef, 0xbcf83e35, 0xe06aa23e
.word 0xaf804f72, 0xda103fec, 0x1d0fba3f, 0x21a9ee9a, 0x63ae22a7, 0x2cb166ae, 0x6d1554b3, 0xa613455a
.word 0x30a694cd, 0x91462eab, 0x993d1546, 0x90c10dc2, 0x578a3f1a, 0x54ca9a94, 0x5abb1275, 0x8207d777
.word 0xad47a11d, 0x3731c9e8, 0xfdf2a789, 0xd1e40391, 0x1841a0de, 0x8b2621e1, 0x20e161b9, 0x93b4d6ea
.word 0x6eb5dbd5, 0xc5130d03, 0xb42453ca, 0x76ebb4e5, 0x8d208411, 0x64fee2a2, 0x447f7b27, 0xa6a629c6
.word 0xc0b25dd5, 0xddf0e8ba, 0xc9265dd7, 0x7b3b802a, 0x17260e95, 0xc4327fe6, 0x567f7c9d, 0x47b9d82c
.word 0xbe4739ae, 0x5dbf1b16, 0x0adfd35a, 0x0f4669f8, 0x22586e66, 0xf42608da, 0x0e593494, 0xc986b93b
.word 0xa70d5486, 0x941cac05, 0x5148cf80, 0xac62408e, 0x6c8bd87a, 0x94322ff9, 0x2b1810ca, 0x2fa28ece
.word 0xb6c2ab8e, 0x3bd6e03c, 0x1c6474b9, 0x907111db, 0xa60d8371, 0xded136d4, 0x2cc44a52, 0xa588cae3
.word 0xf75ab6f5, 0x61dd7967, 0x103834c6, 0xa7760abf, 0x35ebf53f, 0x4c9949a1, 0x4907e2fb, 0xae6a6fc0
.word 0x5a9be1b9, 0x1100dbaa, 0x3469dd20, 0x49675379, 0xb840ba78, 0x2e7546c6, 0x1304f34e, 0x99eba057
.word 0xeff2a2f2, 0xe4046dfe, 0x57bc1e16, 0x197febe0, 0x5bca41e7, 0x5d9fa30a, 0x8e36ab03, 0x3d74e529
.word 0xd8bc31fd, 0xd69a4e38, 0x6fc4e1b7, 0xc1302c76, 0x6222b3f9, 0x3bddc43e, 0xde4aa655, 0xd5ec7931
.word 0xaefb76ca, 0xe41f0abf, 0x98354443, 0xdec72d20, 0x380b67fb, 0xfa4a8c62, 0x7322735d, 0x757393db
.word 0xf77fad6b, 0x87044c87, 0x12fe07e7, 0x697bf488, 0xfa04fd77, 0x0a94e368, 0xacd31d0e, 0x9bfebd57
.word 0x7cca89ba, 0x7b9534fe, 0xa4b687e4, 0x26ca5e3e, 0xb09edc88, 0x351af710, 0x9a4a029c, 0xa953785d
.word 0xdd151a76, 0x6b1c0270, 0x4d3f488d, 0x58972c7a, 0xacd741a6, 0x14ce407e, 0x854742c9, 0x81b1777b
.word 0x2b40c490, 0xa5d85b93, 0xa932491a, 0x34b02fd1, 0xfc794639, 0x453ad278, 0x2f97af1f, 0x911c77c9
.word 0x0969fab9, 0xf97dc0b1, 0x30e0a275, 0xde6d684f, 0xfb720a2d, 0xe6cd0f9b, 0x166bc6d6, 0xddaa5e17
.word 0xd5db8af4, 0x8047fbff, 0xc66c0350, 0xddc6db52, 0x92d3612f, 0x35361f5a, 0xccf0b214, 0x99aa1e48
.word 0xd202527f, 0x7a7d7f46, 0x7c799761, 0xe4edf3ec, 0xdab0521b, 0xadcae750, 0x22043a45, 0x3cb73c76
.word 0xdf782158, 0x6530ab64, 0xa24fafbf, 0x3d48fe9d, 0x1962c4b6, 0x52d33888, 0x52b273cf, 0xe19b783e
.word 0x993645b9, 0x80d1539a, 0x4566ca7f, 0x0bf70604, 0x7e70b8e5, 0x0ad383fa, 0xd2364ca5, 0x72b767bd
.word 0x0f0e791a, 0xdfc472db, 0x53f02f9e, 0xa2f7b393, 0xe01ab1ed, 0xa2f56db6, 0xcf45c2e9, 0xaa812114
.word 0xbb035a48, 0x2901ba92, 0x785fae9a, 0x2d2bd6c6, 0xb46671ca, 0x6dd61235, 0xe0dff290, 0x7a53236b
.word 0x4d6dbe45, 0xde7b2819, 0x44caaaf5, 0x66ec2b2e, 0xd9695367, 0xedf9b147, 0x9ff71bba, 0xcdf85aa7
.word 0x5c308962, 0xf68f781a, 0x6c59eba2, 0xeca9eade, 0x9ca98c9b, 0xaecb6ca8, 0xbc066853, 0xbedcdccb
.word 0x15387e90, 0x79212567, 0xf11c5b10, 0xb5fb8369, 0xd7c890ff, 0x0faf7e5a, 0x60148d13, 0xcad0091a
.word 0x088e26bd, 0x9b9c7116, 0x5cee2f95, 0x1f592735, 0xd64ebe97, 0xee020ea5, 0x3cfb9d95, 0xffa6b3cd
.word 0x2172bb3a, 0x83e5419e, 0x19ec255d, 0x1e64afd5, 0x74685592, 0x5f34384b, 0x2e5efb8a, 0xa3af136d
.word 0x2ee24e86, 0xfa855d19, 0x254c84c8, 0x72143bce, 0xd12c7889, 0x493ce561, 0x9d5d63a5, 0x663a96bb
.word 0x4964e51b, 0x57e2469d, 0xcfc95d97, 0x527db5d2, 0x2e7b0e7a, 0xacdb5dd4, 0x30e385ba, 0x0511ca98
.word 0x47eff2b4, 0x90bee3ef, 0xf39df74b, 0xc3b3b4ed, 0x97111b0a, 0x677012ea, 0x72a4743f, 0x96218d5a
.word 0xe21b06ad, 0x0debedd2, 0x88015828, 0x7dc90e8e, 0xed77698e, 0xd4e58fad, 0x28789644, 0xf267ebe4
.word 0x20d259d1, 0x2928f8fc, 0x820906e9, 0x5295fa62, 0x97543d37, 0x3e5deffa, 0xb3e23418, 0xaab3909f
.word 0x02a5ca6c, 0x71daa6f2, 0x98e5ca35, 0xbbd7181b, 0x8d892b43, 0xbfba3c53, 0xbd75bbe2, 0x0eb915a8
.word 0x2892c899, 0x96f2a363, 0x4475b88c, 0x985b7b81, 0xb071792b, 0x26c76fa3, 0xcb474cb0, 0x20c50474
.word 0xdce12d32, 0x437f76ad, 0x0f8b2dcc, 0x829c25bd, 0xa73d24c3, 0x4f928dc0, 0xf4aa82fa, 0xa8dde5ca
.word 0x517d3647, 0xd1f0c475, 0xfedc1fb5, 0xd3aa4bce, 0x14609a1a, 0xb14f32c3, 0x05a4da23, 0xe418dc0c
.word 0xdcb203f4, 0xc280d99c, 0x2c8501aa, 0x5672af25, 0x12bac36b, 0xb5c52107, 0x3d7562e3, 0x8f295d11
.word 0x252f67a5, 0x205d3e88, 0xef3614b3, 0x130d8703, 0x5e024986, 0x40d8ac39, 0x69f77a79, 0x80d28ca1
.word 0xc6b0f569, 0xcb7597ef, 0xd94dcd65, 0xf9ec122e, 0x8725394f, 0x9d462de5, 0x28b96707, 0xcde6ed41
.word 0x9064af9b, 0x65ed70f0, 0xbb624188, 0xe61d69e9, 0xa1300fb8, 0x1841a880, 0x760b5946, 0xaf1b4ccf
.word 0x294a45bf, 0x4348b8ae, 0x7fabd6a0, 0xf017c3c1, 0x5fb7c520, 0x80f59ddd, 0x8910e1db, 0x50d85efc
.word 0x0066c0c0, 0x61846a32, 0xdca3c7a1, 0xc3f3e993, 0x554fd298, 0x0e07aea7, 0xf999c2b4, 0x1cf6caa8
.word 0x33ca5bdb, 0x7cf7b6e7, 0x2d910e2a, 0x67e09259, 0x7b981a36, 0x5556e451, 0xf0ec39c8, 0xcfffea41
.word 0x70d82274, 0x7011a452, 0x24d437ef, 0xee167423, 0xcc5c7aa9, 0xefd04102, 0x96168836, 0xf0aa0005
.word 0x6324f1db, 0x4aea397f, 0xcf3eb2cf, 0xa11c6803, 0x124e98d2, 0xab048d43, 0x41129676, 0x155558df
.word 0x1a45b08b, 0x7529713d, 0x7b06cca2, 0xfa9df69a, 0x504704db, 0xa3dc94d3, 0x074fe815, 0xbd9057da
.word 0x490c1ceb, 0xf67120d3, 0xc54d6f65, 0xbd1eaf9f, 0xf0d7c587, 0xca1f9797, 0xd661211a, 0xb61e6f41
.word 0x548eb06e, 0x496e90c1, 0xe12ea0d7, 0x8c1030fe, 0x81b38acf, 0x0d4d8ac8, 0x927e4b8b, 0xd0a1a1dd
.word 0x4b99681e, 0xa35cfafd, 0xc6bd810b, 0x8aed2855, 0x4f185c40, 0x9a2bcd28, 0x884b90f4, 0x6ec29fc2
.word 0xb58a93c5, 0x9f029ec9, 0xfcf94015, 0x0b93a1e5, 0x4108359c, 0xa538fef7, 0x382524dc, 0xec232753
.word 0x5a842213, 0xc5362e5d, 0xef5bb8b7, 0x8c422f72, 0xb256d0aa, 0x7bc4709c, 0x94e56fc6, 0x10e0aebe
.word 0x350d056e, 0x9e87f809, 0x8efdf1d1, 0x8c0e8ae4, 0x39b620d9, 0x12d69084, 0xd746a049, 0x0f46ba27
.word 0x8609e6cd, 0x1a907e9e, 0xb8861828, 0x30b28e4f, 0xba86a306, 0x90919e98, 0xaaff2326, 0x78c110ff
.word 0xb0a04f97, 0x14d2db76, 0x23b7a727, 0x55076373
.section .region_1,"aw",@progbits;
region_1:
.word 0x40e47e8d, 0x89b79c41, 0x7eeb0592, 0x7b2a5659, 0x9d424a70, 0x8d0ddcb4, 0xed06b627, 0x712cb27e
.word 0x824a2477, 0xa142500f, 0xb5093127, 0x63e34b59, 0x9867a1d0, 0x7ad4e722, 0x7dc00c02, 0xcc92000f
.word 0x88181963, 0x7b12a408, 0x4e18b32b, 0x5d0208d3, 0x8aee4bb4, 0x172a1898, 0xa24da869, 0xf989aa6f
.word 0xb6ee9654, 0x17b3b985, 0xa96b55de, 0x44fac57a, 0x69c99dad, 0xf620933a, 0x5bb5ee35, 0x6a50600a
.word 0xc9153667, 0x7590eba1, 0xd227d02f, 0x172d933f, 0x259f045e, 0x89cfba55, 0xf255612f, 0x7f98ccbc
.word 0x6efb0bb0, 0x713d0fd7, 0xc8872b18, 0x746ef6cb, 0x1aac89b3, 0x037da677, 0xbdf56607, 0xadd36556
.word 0x0dfdca1c, 0x41881033, 0xc46e4bb4, 0xeee10857, 0xa47b51ca, 0x1ce54868, 0xe326ca86, 0x1a376070
.word 0x819b8fd4, 0xb2c97596, 0xcf5049e2, 0xf66b60d1, 0x8e707e2b, 0x770f6ce0, 0x11387079, 0xf59f07e1
.word 0xdf9708c7, 0x2cbaf77b, 0x65052bda, 0x14709361, 0x27346173, 0xf83d3697, 0xe87a89b7, 0xe34cdecb
.word 0x8b67843c, 0xfdd4954b, 0x545dd4a2, 0xadcb5198, 0xfaec54d8, 0x654b4026, 0xea0d9488, 0x948d6e4c
.word 0x16dbfd8a, 0x89c69840, 0x9887e9f5, 0xe6350446, 0x0b42170c, 0x15ba55ba, 0xbcb65cf4, 0xfd0bd49d
.word 0x87df41e4, 0xa27a063b, 0xd989a828, 0x8b65da58, 0xcf03e5dd, 0x744c67eb, 0x55bd9e02, 0x12bf1c1a
.word 0x284cc2e6, 0x983aeb20, 0xcee0a550, 0x14422b74, 0x119a572f, 0x839791f8, 0x9920de09, 0x1e469cfa
.word 0xc2cce1b5, 0xf7a0c0af, 0xc6334848, 0x367ed945, 0x5b5200c7, 0x2af20529, 0xf27b106b, 0xb10990f9
.word 0x8f776f42, 0x32462497, 0xa2412a93, 0xa22c8f2a, 0x15714ac5, 0xab84544c, 0x443152dc, 0x98cfc52f
.word 0x7e1684cb, 0xc20867b3, 0x6616c6c0, 0x70065736, 0x7db0004a, 0xbcef26c2, 0xacc00166, 0x68d233de
.word 0x7c867d78, 0x6730c6e1, 0x49113fba, 0xf6b03144, 0x52039019, 0xb4b272f4, 0x946e8da0, 0x8aae9019
.word 0x9e9cd2ec, 0x50067c88, 0x9b55af65, 0x14ad9571, 0xec4a1d00, 0x8d9b6818, 0x4659db2f, 0x185e106b
.word 0x1c68f322, 0x7cfb2760, 0xb03333d6, 0xd3d76035, 0x2ac8dbbe, 0x98d23ec1, 0xe6819008, 0x209ef5df
.word 0x8cc53e1b, 0x1b8f6046, 0x57f87d1c, 0xb4b3257f, 0x901e7404, 0xa3e9454f, 0xe6639bf7, 0x744245c7
.word 0x25b57fd3, 0xa275a157, 0x9f10afbd, 0x1cf9747d, 0x3a8d3edf, 0xeb5d4814, 0x75a49148, 0x784a50a4
.word 0x7743f187, 0xff53af8c, 0x95e9e807, 0x071af6ad, 0x783132d8, 0x2c6112cb, 0x588dea61, 0x6b867edd
.word 0xd17c40fd, 0x7db4be9b, 0x950706f1, 0x6b2eacf8, 0xedf27f79, 0x816bf59d, 0x144e1bca, 0x53f451e9
.word 0x2d7d9791, 0x857a32d6, 0x04392dc8, 0xb4338f9b, 0x8c79e0c6, 0x14d1cf84, 0x4bfcc5bf, 0xc103d26c
.word 0xc05a5d29, 0xa33c4027, 0x480553f8, 0x876cc392, 0x043a8a12, 0xdff87bd8, 0xdc7e3b3a, 0x705b8953
.word 0x9d0426b4, 0xdac30d19, 0xe3f828b7, 0x702ed610, 0xa818e195, 0xfa16028a, 0xdb962ed2, 0x628731ff
.word 0x336d6e48, 0x938b8d2c, 0x595c144a, 0x95bb29ef, 0xe81f41dd, 0x9101e509, 0xeae86ae5, 0xcdd0b361
.word 0x8392f4d9, 0x323caccb, 0x9196ec42, 0x615ff8e4, 0x29691b98, 0x0b7e0724, 0xc5a9120c, 0x7e656669
.word 0x7fe7e84b, 0x7b8c00da, 0x66b88b99, 0x5587a300, 0xa1c0eeac, 0x4aa25c65, 0xb13e3a56, 0xef63ee39
.word 0x4659077e, 0xbc1f2a88, 0x313ee2bd, 0x668466b1, 0x1b005389, 0x5c43d025, 0x2ae5653c, 0xae3bfcb0
.word 0xf0fcb0d6, 0xee6e5a02, 0xd14cd390, 0x16e7ecdf, 0x776824f3, 0x5c06efbd, 0xcf18c379, 0xe292ce59
.word 0x15e947d9, 0x41e243bf, 0xf088a73d, 0x6a859199, 0xe42d88bb, 0xef3034e6, 0xf768b23e, 0xc780baf0
.word 0xcd3b07b5, 0xe437424c, 0x047079ba, 0xbe0abea3, 0x22b569e0, 0xa2301344, 0x0b948edd, 0x0a698b79
.word 0x485aabff, 0x41c9e5ec, 0x56c1c3fd, 0xb91a259b, 0x59a334a9, 0xf76fb6da, 0xb1353e30, 0x11e0e9b4
.word 0x38f9e1db, 0x8aaccb85, 0x9b152056, 0x1a611b5a, 0x90c25dfd, 0x94e276e9, 0x4cf52780, 0x604de4d6
.word 0x1dffb484, 0xf0b43bbb, 0x08d6356d, 0x359ba251, 0x654efc0a, 0xe04bf33c, 0xd3293ec1, 0x42296aa1
.word 0x6a26863c, 0x2f43b76b, 0x254abc54, 0x970893ec, 0x45831721, 0x8b98acca, 0x7a29eee9, 0xbce8e377
.word 0x04c54a95, 0x61ce68fa, 0x42c824bd, 0xe9716475, 0x913a9edc, 0xe85931f3, 0x745931f6, 0xc7ad22eb
.word 0x15cb9961, 0x0a8cc6c1, 0xe227a58f, 0xcf606d98, 0xea1e8228, 0xbee22bea, 0xf857450c, 0x9e8f246d
.word 0x3b030b1c, 0x0a0379f9, 0x38eb7949, 0xf28ad69f, 0x53a9eb4c, 0x66e24dbb, 0xe729a7ef, 0xc24232cf
.word 0x299659f4, 0xe993ff86, 0x31e2de50, 0x2945366a, 0x233df0d8, 0xcf826f45, 0xce29a3e7, 0xc04380be
.word 0x38187eb2, 0xeb52d783, 0x13e12f95, 0xf3a8a29e, 0x8eac1828, 0xc6833c19, 0xe3e93ae3, 0xa159a9b3
.word 0x815c64b8, 0x7870d82b, 0xe4ef6b6b, 0x25ff6f67, 0x5c022b5d, 0xa8436739, 0xe098f949, 0x6355bf39
.word 0x4178fa22, 0x367e7465, 0x4c6333c3, 0x4d762820, 0x84887c9c, 0x7d2e5838, 0x9b7f7fb7, 0x8e152a5a
.word 0x06fe5cd1, 0xeddf62dc, 0x6ae27b78, 0xdfb83d2e, 0x55b0749a, 0x2f4fbbda, 0xac32d2ee, 0x2663285c
.word 0x4c85103e, 0xcc7c3aaa, 0xfcef8240, 0x98822400, 0xaae28398, 0x23ca342a, 0xb126f16b, 0xc499b684
.word 0x86e4e536, 0xe1f47663, 0x84611194, 0x423453b7, 0x045511de, 0xd6229222, 0xdc830e34, 0x9e293c2c
.word 0xc6169af2, 0x71d69c5f, 0x289d460f, 0x101aa142, 0xb7463478, 0x98af13b4, 0x86d13c3c, 0x8597033b
.word 0x02d6fc1c, 0x865dcfca, 0xc2039880, 0x091a4151, 0x3402e199, 0x8e0ab423, 0x62bb71d9, 0x077c2d76
.word 0x5d0a9a44, 0xb42b0010, 0xc37565c5, 0x4d2c76e3, 0xe3b84698, 0xef2b0c6f, 0x37125b23, 0xca44b396
.word 0x02214b65, 0x7fb16b5d, 0xc07242d0, 0x8e2fa48e, 0x32fdc46f, 0x876072a4, 0x028de857, 0xbaf98c9d
.word 0xb9983c70, 0x25e04c6f, 0xd25737fa, 0xabc62df5, 0x39c5c8a6, 0x38057537, 0xa1f94056, 0x32ffc9fc
.word 0x75846646, 0x0ff09fb9, 0x54ff15ca, 0xb0725c09, 0x5c383dec, 0x9a14706b, 0x696b69fe, 0xade30a2d
.word 0xbcfe93b2, 0xa3691127, 0x7ea5af85, 0xc5bcd6bb, 0x58d01429, 0xa0434a08, 0x22601dd1, 0x41727a0d
.word 0x62b932ab, 0xe4ad2e7a, 0xb9f01e3f, 0x25673283, 0x7f7d3ed9, 0x66370910, 0xb6062ab3, 0x177c7504
.word 0xbfe38791, 0x4ee24ed0, 0x76030419, 0xc456de3f, 0x944f8eff, 0xb1192011, 0x885dcbdc, 0xb758666b
.word 0x6ab709e3, 0xa902c28c, 0xc4851096, 0xb4a3de46, 0x3da1cf69, 0x82160c4a, 0xd53a364e, 0x2b0ee205
.word 0xcd25fd47, 0x7872a67e, 0x2574b2a5, 0xdb29aa90, 0x6a72442f, 0xac6c08c9, 0xe2964815, 0x56c7bcf3
.word 0xabea1a35, 0x1aa27202, 0xb2bb7587, 0xebe1a6e1, 0x8c405267, 0x7cdc033f, 0x71f3bd34, 0x1735a588
.word 0x6057c4f4, 0x1b22e78e, 0xaf0b80b5, 0x54a6f2a9, 0xd4dcfc4d, 0xd4092da7, 0x11fed211, 0xaca8f32e
.word 0x2df5f95a, 0xefd570af, 0x5e1131b5, 0x1167f443, 0x0c00d819, 0x0502bf47, 0x9a01ca56, 0x4d613a4f
.word 0xa2125b07, 0x284fe8af, 0x411c528d, 0x2bfbb1fa, 0x0801ecf4, 0x1642846f, 0x5946ae24, 0x6f6791e4
.word 0xcfcab63c, 0x5f382545, 0x749c3e46, 0xf1da8d50
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x26, x27, zero
                  csrr x21, 0x300 # MSTATUS
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 31
                  bne x21, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x21, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x21, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x21, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x21, x12, ecall_handler
                  li x12, 0x1
                  beq x21, x12, instr_fault_handler
                  li x12, 0x5
                  beq x21, x12, load_fault_handler
                  li x12, 0x7
                  beq x21, x12, store_fault_handler
                  li x12, 0xc
                  beq x21, x12, pt_fault_handler
                  li x12, 0xd
                  beq x21, x12, pt_fault_handler
                  li x12, 0xf
                  beq x21, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x27, x26, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x26, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x26, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x27, x26, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x27, x26, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x27, x26, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
