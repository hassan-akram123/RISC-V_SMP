.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 1
                  csrw 0x305, x4 # MTVEC

mepc_setup:       
                  la x4, init
                  csrw 0x341, x4

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x4, 0x1800
                  csrw 0x300, x4 # MSTATUS
                  mret
init:             
                  li x0, 0xf3b1952d
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x986a42a8
                  li x7, 0x6
                  li x8, 0x6c6a2086
                  li x9, 0xbc8af924
                  li x10, 0x80000000
                  li x11, 0xf0398f7a
                  li x12, 0x80000000
                  li x13, 0xe6a5c647
                  li x14, 0xb
                  li x15, 0x80000000
                  li x16, 0xf2ebf3c7
                  li x17, 0x80000000
                  li x19, 0x33ef25ec
                  li x20, 0x80000000
                  li x21, 0x8
                  li x22, 0x80000000
                  li x23, 0xf73d091e
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x7e3eb392
                  li x30, 0x8
                  li x31, 0x0
                  la x18, user_stack_end
main:             sra          tp, t5, a6
                  andi         sp, t6, -562
                  andi         t3, s1, 599
                  xori         s8, a1, -99
                  srai         s6, s7, 10
                  la           t0, sub_1
                  sltiu        s11, t6, -57
                  addi         t0, t0, -812
                  sltiu        a4, s1, 74
main_j2:          jalr         ra, t0, 812 #jump main -> sub_1
main_0:           jal          ra, 9f
0:                jal          ra, 6f
1:                jal          s6, 7f
2:                jal          ra, 8f
3:                jal          ra, 5f
4:                jal          ra, 1b
5:                jal          ra, 4b
6:                jal          ra, 3b
7:                jal          t3, 11f
8:                jal          a2, 10f
9:                jal          a5, 0b
10:               jal          t1, 12f
11:               jal          ra, 2b
12:               srai         a6, ra, 0
                  nop
                  sll          gp, t5, s10
                  srai         s5, ra, 0
                  sltiu        s1, ra, -1931
                  bgeu         s2, s9, 9f
                  sltiu        zero, s10, -432
                  la           t2, sub_2
                  ori          ra, a2, -1744
                  xor          gp, t4, t5
                  addi         t2, t2, -927
                  sub          s9, a2, t3
                  slt          a4, a5, s1
                  ori          s4, s10, -1126
                  sub          s6, a0, s0
main_j1:          jalr         ra, t2, 927 #jump main -> sub_2
                  ori          a1, t3, -1135
                  ori          t0, t1, -1489
                  srl          a2, s10, t1
                  beq          t6, s6, 9f
9:                and          t3, t4, a2
                  la x8, test_done
                  jalr x0, x8, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            sll          s4, a6, tp
                  and          s7, gp, sp
                  or           tp, t6, sp
                  srl          t5, s6, s1
                  lui          t3, 1041794
                  sra          a1, t4, s2
                  addi         s2, s2, -8
                  sltiu        a2, s1, 1404
                  sw           ra, 4(s2)
                  sub          a6, s5, t3
                  xori         s7, t3, 1585
                  sub          t2, t1, a0
sub_5_1:          jal          ra, 8f
0:                jal          t1, 29f
1:                jal          ra, 19f
2:                jal          ra, 4f
3:                jal          ra, 22f
4:                jal          ra, 21f
5:                jal          t0, 11f
6:                jal          a6, 9f
7:                jal          t1, 6b
8:                jal          t0, 17f
9:                jal          t1, 23f
10:               jal          ra, 26f
11:               jal          ra, 7b
12:               jal          ra, 27f
13:               jal          ra, 5b
14:               jal          ra, 12b
15:               jal          ra, 20f
16:               jal          ra, 25f
17:               jal          t1, 16b
18:               jal          ra, 2b
19:               jal          ra, 3b
20:               jal          t1, 18b
21:               jal          ra, 13b
22:               jal          ra, 15b
23:               jal          ra, 24f
24:               jal          t1, 10b
25:               jal          ra, 1b
26:               jal          s11, 28f
27:               jal          t1, 0b
28:               jal          t1, 14b
29:               slti         t0, t3, 257
sub_5_4:          jal          ra, 1f
0:                jal          tp, 5f
1:                jal          ra, 17f
2:                jal          t1, 26f
3:                jal          a1, 10f
4:                jal          s7, 15f
5:                jal          t1, 22f
6:                jal          ra, 9f
7:                jal          ra, 25f
8:                jal          t1, 6b
9:                jal          ra, 21f
10:               jal          ra, 14f
11:               jal          t1, 20f
12:               jal          ra, 24f
13:               jal          ra, 12b
14:               jal          ra, 18f
15:               jal          ra, 13b
16:               jal          s7, 2b
17:               jal          t2, 4b
18:               jal          t3, 0b
19:               jal          ra, 23f
20:               jal          ra, 19b
21:               jal          sp, 16b
22:               jal          ra, 8b
23:               jal          ra, 27f
24:               jal          ra, 7b
25:               jal          a7, 3b
26:               jal          a0, 11b
27:               lui          tp, 129850
sub_5_6:          jal          ra, 25f
0:                jal          t1, 9f
1:                jal          tp, 0b
2:                jal          ra, 22f
3:                jal          t2, 6f
4:                jal          t1, 7f
5:                jal          ra, 21f
6:                jal          t1, 18f
7:                jal          a7, 14f
8:                jal          ra, 11f
9:                jal          ra, 27f
10:               jal          s4, 24f
11:               jal          a5, 1b
12:               jal          ra, 3b
13:               jal          ra, 20f
14:               jal          t1, 23f
15:               jal          ra, 4b
16:               jal          t1, 8b
17:               jal          t1, 13b
18:               jal          ra, 2b
19:               jal          ra, 28f
20:               jal          a2, 26f
21:               jal          ra, 16b
22:               jal          t1, 5b
23:               jal          gp, 10b
24:               jal          t1, 12b
25:               jal          a4, 17b
26:               jal          t1, 15b
27:               jal          ra, 19b
28:               ori          a5, s9, 1264
sub_5_7:          jal          ra, 9f
0:                jal          t1, 12f
1:                jal          ra, 2f
2:                jal          ra, 13f
3:                jal          ra, 0b
4:                jal          ra, 22f
5:                jal          t1, 26f
6:                jal          ra, 14f
7:                jal          ra, 30f
8:                jal          s7, 21f
9:                jal          ra, 24f
10:               jal          ra, 25f
11:               jal          t1, 18f
12:               jal          t1, 8b
13:               jal          ra, 16f
14:               jal          ra, 20f
15:               jal          ra, 19f
16:               jal          ra, 10b
17:               jal          ra, 15b
18:               jal          ra, 3b
19:               jal          t1, 29f
20:               jal          ra, 4b
21:               jal          a6, 27f
22:               jal          ra, 17b
23:               jal          ra, 7b
24:               jal          ra, 5b
25:               jal          ra, 11b
26:               jal          tp, 1b
27:               jal          ra, 6b
28:               jal          t1, 23b
29:               jal          t1, 28b
30:               sltu         t5, s10, a3
sub_5_3:          jal          ra, 21f
0:                jal          t1, 23f
1:                jal          s8, 6f
2:                jal          t1, 20f
3:                jal          t1, 13f
4:                jal          ra, 8f
5:                jal          ra, 2b
6:                jal          a3, 19f
7:                jal          ra, 5b
8:                jal          a6, 1b
9:                jal          ra, 14f
10:               jal          ra, 9b
11:               jal          ra, 16f
12:               jal          ra, 18f
13:               jal          a3, 7b
14:               jal          ra, 3b
15:               jal          t1, 0b
16:               jal          ra, 17f
17:               jal          ra, 10b
18:               jal          ra, 15b
19:               jal          ra, 12b
20:               jal          ra, 4b
21:               jal          ra, 22f
22:               jal          t1, 11b
23:               add          t1, a6, t0
sub_5_2:          jal          ra, 10f
0:                jal          ra, 3f
1:                jal          ra, 11f
2:                jal          t5, 4f
3:                jal          s8, 8f
4:                jal          ra, 6f
5:                jal          ra, 2b
6:                jal          t1, 12f
7:                jal          t1, 1b
8:                jal          a0, 5b
9:                jal          t6, 0b
10:               jal          ra, 7b
11:               jal          gp, 9b
12:               srli         t2, a0, 15
sub_5_5:          jal          ra, 5f
0:                jal          t1, 10f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          t1, 4f
4:                jal          ra, 2b
5:                jal          ra, 1b
6:                jal          t1, 0b
7:                jal          ra, 8f
8:                jal          t1, 9f
9:                jal          t1, 6b
10:               and          ra, s7, s9
sub_5_0:          jal          ra, 13f
0:                jal          ra, 23f
1:                jal          ra, 22f
2:                jal          ra, 8f
3:                jal          t1, 24f
4:                jal          ra, 0b
5:                jal          ra, 26f
6:                jal          ra, 11f
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          ra, 29f
10:               jal          ra, 2b
11:               jal          ra, 18f
12:               jal          ra, 16f
13:               jal          ra, 20f
14:               jal          ra, 12b
15:               jal          ra, 6b
16:               jal          ra, 5b
17:               jal          ra, 19f
18:               jal          ra, 9b
19:               jal          ra, 15b
20:               jal          t6, 25f
21:               jal          ra, 1b
22:               jal          t2, 17b
23:               jal          gp, 21b
24:               jal          ra, 14b
25:               jal          t0, 27f
26:               jal          ra, 10b
27:               jal          t3, 28f
28:               jal          ra, 3b
29:               sll          tp, a5, t0
                  auipc        s9, 617141
                  add          s3, s11, t0
                  lui          tp, 333971
                  xor          a6, a3, s9
                  xor          a1, zero, t6
                  blt          s8, gp, 18f
                  slt          s1, a2, s3
                  bltu         ra, ra, 21f
                  sra          s4, s4, t6
                  blt          a6, t1, 13f
                  sub          a4, t1, sp
                  xor          a3, gp, s4
                  xor          s1, sp, zero
13:               ori          t3, zero, 774
                  srli         t3, s11, 24
                  andi         t6, t1, -1884
                  slti         t1, s5, 878
                  lui          s8, 154748
18:               bltu         t3, t3, 26f
                  srl          s3, a5, a2
                  bgeu         s2, a2, 30f
21:               addi         t3, s4, -65
                  beq          t3, t1, 28f
                  xor          t4, s10, a7
                  blt          gp, t1, 39f
                  sll          t4, s11, a6
26:               srl          s6, t2, gp
                  xori         a2, a5, 1366
28:               slli         s11, s2, 30
                  addi         s4, sp, -1274
30:               slli         t3, s8, 0
                  sltiu        t2, a7, 144
                  ori          t0, s4, 1656
                  blt          ra, t3, 52f
                  sub          a1, sp, s7
                  ori          tp, ra, 41
                  srl          sp, a0, s9
                  bltu         a0, s1, 40f
                  bne          a5, t5, 57f
39:               xori         s4, ra, 24
40:               nop
                  ori          sp, s6, 1176
                  addi         zero, t4, -653
                  bltu         ra, a1, 53f
                  xor          t5, s2, a1
                  bge          a7, t4, 59f
                  xori         a3, s5, 479
                  blt          s8, t0, 50f
                  xori         t6, t4, -323
                  bltu         a3, a3, 57f
50:               slt          s9, s3, s5
                  bgeu         t2, a4, 55f
52:               nop
53:               bltu         a1, a4, 63f
                  sra          t3, t3, t2
55:               or           t5, s5, s7
                  bge          tp, a4, 58f
57:               addi         s8, s4, 320
58:               bgeu         t5, zero, 63f
59:               bgeu         t6, a2, 61f
                  beq          zero, a0, 75f
61:               srl          a4, ra, gp
                  bge          t6, s3, 79f
63:               nop
                  ori          a6, a0, 833
                  bgeu         t1, t3, 69f
                  slti         gp, s2, 1519
                  or           a0, a0, s9
                  slli         s5, s8, 3
69:               slti         a2, s7, 788
                  slti         sp, a2, 558
                  and          s1, t0, t3
                  and          t5, t0, t1
                  blt          a1, t4, 75f
                  srai         s9, a6, 24
75:               srl          a4, s5, a4
                  srai         a2, s11, 24
                  srai         a7, s0, 12
                  slt          tp, s2, s4
79:               slti         s5, zero, -549
                  sra          a2, s1, s10
                  or           s1, s7, gp
                  and          s6, t6, gp
                  xor          a2, t2, s2
                  sltiu        gp, s7, 1003
                  bge          s4, s10, 94f
                  add          t2, a6, s4
                  srl          s5, t6, a3
                  blt          s10, tp, 107f
                  sltu         t6, a6, a0
                  bgeu         s4, s3, 100f
                  xori         s6, t2, -1538
                  xori         s5, t6, 1393
                  bne          t4, s8, 96f
94:               or           s8, a3, s3
                  sltu         t5, s4, a0
96:               and          tp, t2, a0
                  sra          s3, t5, t0
                  bgeu         tp, s0, 116f
                  and          t1, t4, tp
100:              blt          s7, s11, 104f
                  sub          t4, tp, a2
                  bne          a2, s8, 103f
103:              beq          s10, gp, 106f
104:              sll          ra, s11, gp
                  or           t1, t0, a1
106:              sra          a5, s7, t3
107:              bgeu         t5, s6, 121f
                  add          sp, t3, a6
                  addi         t2, a5, 543
                  sltiu        s5, a5, -1614
                  nop
                  addi         a0, a1, 539
                  srl          s11, a4, s7
                  lui          t3, 855848
                  addi         s6, s10, -515
116:              or           s1, s6, s9
                  slt          ra, t3, zero
                  nop
                  sub          s4, s1, s0
                  or           sp, ra, t5
121:              and          a0, s7, s0
                  nop
                  slt          s4, a6, s4
                  blt          a4, sp, 130f
                  xor          s3, a0, gp
                  addi         t5, s0, 1782
                  blt          s1, s10, 137f
                  bltu         a2, zero, 138f
                  sra          a0, a3, s7
130:              bltu         t4, s1, 132f
                  srai         a0, a0, 13
132:              beq          t1, a0, 140f
                  nop
                  add          sp, a4, s4
                  slti         s8, ra, -1131
                  add          a2, t4, t2
137:              or           t5, sp, s7
138:              sll          s11, a1, t2
                  srl          s1, t5, s9
140:              bltu         t4, s3, 150f
                  xor          sp, a3, s3
                  bgeu         s3, a6, 143f
143:              sub          s6, t0, a7
                  sra          t3, t0, t1
                  srli         sp, a6, 26
                  blt          a5, a3, 156f
                  add          a7, a1, a7
                  srl          a4, s11, a5
                  srl          a3, a3, zero
150:              bne          s10, a7, 169f
                  srai         s11, t4, 18
                  bgeu         s1, s3, 166f
                  sra          a1, s6, s11
                  add          tp, a2, s2
                  srai         a4, gp, 15
156:              and          t5, s10, s9
                  blt          a4, t0, 176f
                  sll          a2, t1, s10
                  nop
                  xori         t6, t2, 1860
                  and          t3, s1, s5
                  slti         s1, t3, 1658
                  auipc        s8, 681226
                  andi         a1, a7, -97
                  sll          a0, a5, s1
166:              srl          t6, s5, a7
                  sra          a0, a1, s1
                  srl          t0, a2, a3
169:              xori         s7, a0, -846
                  sll          t5, s5, s9
                  ori          t3, a6, -2
                  ori          t3, a2, -1916
                  sub          s1, a5, sp
                  bge          s11, a4, 191f
                  or           s5, s1, a7
176:              nop
                  sltiu        s1, a0, -828
                  addi         tp, s0, -448
                  or           a3, gp, s3
                  srai         s9, tp, 6
                  srli         a6, s11, 9
                  auipc        a4, 392650
                  bne          a4, s0, 187f
                  srli         s5, ra, 23
                  sub          s6, t1, t6
                  bne          a4, s1, 190f
187:              xori         a5, t1, -332
                  srl          t5, sp, a2
                  andi         a1, t5, -374
190:              beq          s2, s0, 205f
191:              sltiu        sp, a1, 533
                  blt          ra, s6, 210f
                  xor          zero, s6, s3
                  sra          s8, s11, t2
                  auipc        t5, 429373
                  lui          t1, 102851
                  addi         s5, a7, -1259
                  srai         a2, a7, 15
                  nop
                  auipc        t6, 935062
                  bltu         gp, s10, 204f
                  sltiu        s3, t1, -890
                  auipc        zero, 51269
204:              sltu         s1, t2, s8
205:              bltu         t3, t2, 207f
                  bgeu         s0, s9, 221f
207:              bge          sp, t2, 220f
                  addi         a2, a2, -1999
                  sll          a5, sp, t1
210:              bltu         s11, gp, 215f
                  auipc        a6, 97845
                  and          s3, s1, a6
                  nop
                  beq          s4, t1, 216f
215:              srai         zero, s11, 29
216:              lui          a5, 678209
                  bne          s2, s10, 221f
                  xor          a2, zero, a2
                  slli         gp, ra, 25
220:              bltu         sp, zero, 229f
221:              or           a3, s0, s7
                  sltiu        a2, a3, -48
                  andi         a4, t0, -379
                  sra          s11, tp, zero
                  slti         a3, s5, 718
                  srli         s4, s3, 23
                  auipc        sp, 503395
                  bltu         t3, zero, 232f
229:              slt          gp, a2, t6
                  bne          gp, a2, 238f
                  and          t4, s10, t5
232:              lui          a6, 45100
                  sltiu        t3, s6, -1981
                  srai         a7, a6, 27
                  sll          gp, s8, t2
                  sltu         a2, t0, gp
                  auipc        s6, 329879
238:              ori          s4, a2, -1820
                  xor          s8, ra, a4
                  sltu         a0, t5, gp
                  sll          t5, a0, s10
                  bne          s4, s4, 261f
                  auipc        s7, 777247
                  andi         a0, t3, 607
                  lui          s9, 405451
                  sltu         s8, a3, s9
                  srai         s11, a7, 10
                  addi         a7, s3, -1735
                  sub          t1, a2, t6
                  and          s7, a4, a5
                  beq          a5, s2, 254f
                  add          t6, a6, a1
                  sra          s4, s9, s2
254:              add          t3, s1, gp
                  or           s8, sp, s7
                  sltiu        t5, a1, 304
                  slt          s9, s3, t6
                  srl          s11, t5, a1
                  sltu         ra, a3, a5
                  ori          s6, sp, 1058
261:              add          s11, a5, s5
                  srl          a7, s0, t6
                  slt          t5, sp, s0
                  xori         a7, s5, 903
                  srli         a0, sp, 14
                  slt          sp, s5, s5
                  srai         a2, a6, 9
                  srai         s4, s4, 29
                  bge          t6, t5, 273f
                  auipc        t2, 117312
                  sltu         ra, a6, s6
                  addi         t4, a5, 320
273:              sra          s3, s4, s3
                  bltu         a2, s6, 279f
                  srai         ra, ra, 10
                  andi         tp, sp, 779
                  add          s11, zero, a7
                  sub          a6, s7, a4
279:              blt          t1, a7, 280f
280:              sltu         s4, a2, s11
                  blt          a4, a0, 295f
                  or           ra, tp, s1
                  bgeu         t1, t5, 293f
                  ori          a2, s10, -697
                  sll          a6, zero, a7
                  bge          tp, s1, 295f
                  lui          a0, 15848
                  bltu         tp, s10, 296f
                  addi         s9, t4, 2045
                  sra          zero, t0, s1
                  blt          t0, t1, 299f
                  srl          t6, t3, ra
293:              slli         sp, a3, 30
                  sub          t5, s10, sp
295:              slt          s7, s6, a1
296:              bge          t6, t1, 315f
                  auipc        s4, 38943
                  xori         t4, a1, 653
299:              auipc        a3, 873114
                  sltu         sp, s11, t2
                  slt          ra, t4, a7
                  sltu         s8, s6, s10
                  nop
                  xor          a6, s1, ra
                  bgeu         gp, a4, 307f
                  slti         a5, ra, -548
307:              srai         s4, t6, 18
                  sub          t3, t0, s6
                  bne          a3, a2, 327f
                  beq          a5, a3, 324f
                  and          s9, sp, a3
                  add          s9, a4, t3
                  ori          s3, a7, 1336
                  xori         t0, s8, -583
315:              nop
                  ori          s11, a4, 1526
                  addi         zero, t5, 1386
                  xor          zero, s4, t1
                  beq          a2, gp, 338f
                  sll          s4, s10, t4
                  or           s9, zero, t1
                  add          s1, t3, t4
                  srai         t0, a0, 11
324:              xor          a5, s0, a5
                  xori         t1, s7, 1609
                  lui          a7, 244913
327:              blt          a4, tp, 342f
                  or           s6, a2, t1
                  sltiu        a1, a7, 378
                  sra          a1, t4, a6
                  bgeu         s4, s6, 341f
                  sll          t6, s5, s4
                  addi         t4, a7, 1142
                  slti         a3, s8, -1391
                  sltu         t1, t5, a2
                  bge          t4, sp, 339f
                  addi         s1, t2, 2006
338:              beq          zero, sp, 340f
339:              or           ra, t6, s8
340:              slt          a7, s6, a2
341:              andi         s7, a7, 1278
342:              blt          t0, s2, 348f
                  ori          a5, a4, -1112
                  ori          a1, a2, -1962
                  bge          s8, a0, 360f
                  sub          gp, s11, s0
                  sltiu        ra, t0, -165
348:              sub          t0, s6, t4
                  slt          a1, t5, s11
                  blt          a7, a3, 367f
                  slti         t0, s2, -1703
                  auipc        t1, 713964
                  srli         a4, gp, 3
                  sub          a5, s4, t6
                  or           sp, a4, a2
                  srl          t3, sp, s6
                  beq          s0, s8, 361f
                  addi         t1, t6, -567
                  sltu         a6, gp, s8
360:              srl          s5, t3, zero
361:              slt          a3, t4, s0
                  bne          s11, t0, 372f
                  srai         a1, t0, 31
                  sltu         s8, sp, a5
                  nop
                  srli         s9, gp, 29
367:              sltiu        gp, a6, 1748
                  slti         sp, a4, -1171
                  sltu         s3, tp, s0
                  auipc        s5, 104714
                  slti         s4, a3, -1372
372:              slt          t0, s8, t3
                  lui          t6, 294179
                  xori         a4, tp, -739
                  slt          a4, s9, t4
                  srli         a2, t2, 10
                  bltu         s9, a4, 396f
                  add          a1, ra, t6
                  auipc        t0, 499352
                  nop
                  bge          tp, ra, 385f
                  bne          s2, s0, 395f
                  nop
                  sll          a1, s1, s10
385:              addi         s9, s1, 624
                  auipc        s11, 985942
                  ori          s6, s1, 378
                  sll          s6, s9, t2
                  sra          a0, a5, s6
                  bne          a7, a3, 400f
                  bltu         s5, t2, 395f
                  srai         zero, t6, 22
                  auipc        ra, 71531
                  xor          s4, s0, s10
395:              xor          a3, s6, s3
396:              bne          s0, s9, 398f
                  srai         a4, tp, 25
398:              xor          a6, t6, t6
                  slli         s7, s2, 9
400:              xori         s4, a4, -1793
                  and          a1, t0, a4
                  ori          s3, a0, 1851
                  and          zero, sp, s2
                  xor          a1, a6, a3
                  lui          a5, 921218
                  and          t0, a0, t1
                  slti         sp, s7, 1749
                  ori          tp, zero, 1219
                  lw           ra, 4(s2)
                  slt          s8, s3, s10
                  lui          a5, 720110
                  lui          a3, 247614
                  addi         s2, s2, 8
                  slti         a7, a3, 1632
                  addi         s8, t1, 355
                  sltiu        s6, s9, 1334
                  nop
                  slt          s5, s6, a4
                  srl          zero, t3, s8
636:              addi x16, x1, 0
636:              jalr x16, x16, 0
sub_4:            auipc        s1, 249510
                  bgeu         zero, s3, sub_4_stack_p
                  slti         s9, s10, 1644
                  sra          tp, s6, t4
sub_4_stack_p:    addi         s2, s2, -40
                  sw           ra, 4(s2)
                  sltu         s11, s7, s3
sub_4_9:          jal          ra, 4f
0:                jal          ra, 2f
1:                jal          t2, 6f
2:                jal          ra, 8f
3:                jal          ra, 10f
4:                jal          ra, 5f
5:                jal          sp, 7f
6:                jal          ra, 9f
7:                jal          t1, 0b
8:                jal          s5, 1b
9:                jal          sp, 3b
10:               sub          t1, s8, a1
sub_4_8:          jal          ra, 15f
0:                jal          ra, 6f
1:                jal          ra, 17f
2:                jal          ra, 3f
3:                jal          a7, 4f
4:                jal          ra, 12f
5:                jal          tp, 14f
6:                jal          ra, 1b
7:                jal          ra, 11f
8:                jal          t1, 18f
9:                jal          t0, 13f
10:               jal          ra, 0b
11:               jal          ra, 21f
12:               jal          t1, 19f
13:               jal          t1, 8b
14:               jal          ra, 7b
15:               jal          ra, 9b
16:               jal          ra, 2b
17:               jal          s8, 20f
18:               jal          t2, 10b
19:               jal          s11, 5b
20:               jal          ra, 16b
21:               slti         gp, a6, -909
sub_4_15:         jal          ra, 7f
0:                jal          s7, 8f
1:                jal          ra, 17f
2:                jal          t1, 11f
3:                jal          a3, 2b
4:                jal          ra, 3b
5:                jal          ra, 14f
6:                jal          ra, 18f
7:                jal          ra, 9f
8:                jal          ra, 21f
9:                jal          ra, 4b
10:               jal          s3, 24f
11:               jal          t1, 16f
12:               jal          ra, 15f
13:               jal          ra, 12b
14:               jal          t0, 19f
15:               jal          sp, 22f
16:               jal          t1, 20f
17:               jal          ra, 13b
18:               jal          ra, 23f
19:               jal          ra, 1b
20:               jal          ra, 0b
21:               jal          sp, 5b
22:               jal          tp, 6b
23:               jal          ra, 10b
24:               andi         a2, t5, -538
sub_4_1:          jal          ra, 5f
0:                jal          ra, 9f
1:                jal          ra, 0b
2:                jal          ra, 12f
3:                jal          ra, 6f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          ra, 4b
7:                jal          t1, 11f
8:                jal          a6, 10f
9:                jal          gp, 7b
10:               jal          ra, 14f
11:               jal          s11, 8b
12:               jal          ra, 13f
13:               jal          s7, 1b
14:               or           sp, zero, s1
sub_4_10:         jal          ra, 17f
0:                jal          ra, 10f
1:                jal          t0, 20f
2:                jal          ra, 1b
3:                jal          ra, 2b
4:                jal          t1, 5f
5:                jal          t1, 13f
6:                jal          ra, 22f
7:                jal          t1, 18f
8:                jal          ra, 15f
9:                jal          ra, 8b
10:               jal          t0, 7b
11:               jal          t3, 21f
12:               jal          ra, 9b
13:               jal          ra, 3b
14:               jal          ra, 12b
15:               jal          t3, 0b
16:               jal          ra, 11b
17:               jal          ra, 4b
18:               jal          ra, 6b
19:               jal          sp, 16b
20:               jal          ra, 19b
21:               jal          s9, 14b
22:               lui          zero, 710878
sub_4_0:          jal          ra, 7f
0:                jal          s7, 18f
1:                jal          gp, 2f
2:                jal          ra, 10f
3:                jal          t1, 9f
4:                jal          ra, 14f
5:                jal          a0, 1b
6:                jal          a1, 12f
7:                jal          ra, 3b
8:                jal          ra, 17f
9:                jal          ra, 5b
10:               jal          s11, 16f
11:               jal          ra, 4b
12:               jal          ra, 8b
13:               jal          ra, 15f
14:               jal          ra, 6b
15:               jal          t1, 0b
16:               jal          t1, 11b
17:               jal          t1, 13b
18:               lui          t0, 687416
sub_4_23:         jal          ra, 8f
0:                jal          t1, 2f
1:                jal          t1, 6f
2:                jal          s4, 10f
3:                jal          t1, 13f
4:                jal          a0, 3b
5:                jal          t1, 23f
6:                jal          a6, 25f
7:                jal          ra, 18f
8:                jal          s1, 22f
9:                jal          ra, 24f
10:               jal          t1, 20f
11:               jal          a6, 29f
12:               jal          t3, 19f
13:               jal          ra, 26f
14:               jal          ra, 11b
15:               jal          ra, 28f
16:               jal          a6, 5b
17:               jal          ra, 0b
18:               jal          t1, 15b
19:               jal          ra, 14b
20:               jal          ra, 27f
21:               jal          ra, 12b
22:               jal          ra, 4b
23:               jal          t1, 17b
24:               jal          ra, 16b
25:               jal          t1, 7b
26:               jal          tp, 9b
27:               jal          a7, 1b
28:               jal          ra, 21b
29:               and          ra, s6, gp
sub_4_5:          jal          ra, 15f
0:                jal          t5, 10f
1:                jal          ra, 13f
2:                jal          t1, 3f
3:                jal          s11, 11f
4:                jal          ra, 8f
5:                jal          tp, 2b
6:                jal          tp, 12f
7:                jal          ra, 4b
8:                jal          ra, 1b
9:                jal          ra, 6b
10:               jal          s4, 5b
11:               jal          t1, 9b
12:               jal          ra, 18f
13:               jal          ra, 0b
14:               jal          ra, 16f
15:               jal          t6, 14b
16:               jal          t1, 17f
17:               jal          ra, 7b
18:               sub          s7, t4, a4
sub_4_13:         jal          ra, 18f
0:                jal          sp, 15f
1:                jal          ra, 2f
2:                jal          s11, 4f
3:                jal          ra, 10f
4:                jal          t1, 3b
5:                jal          ra, 20f
6:                jal          t1, 9f
7:                jal          ra, 17f
8:                jal          ra, 1b
9:                jal          t1, 12f
10:               jal          t1, 5b
11:               jal          t0, 8b
12:               jal          s9, 7b
13:               jal          ra, 19f
14:               jal          s11, 0b
15:               jal          t4, 13b
16:               jal          ra, 11b
17:               jal          ra, 14b
18:               jal          sp, 16b
19:               jal          t1, 21f
20:               jal          ra, 6b
21:               lui          a6, 558636
sub_4_7:          jal          ra, 3f
0:                jal          t1, 13f
1:                jal          ra, 18f
2:                jal          t4, 4f
3:                jal          ra, 12f
4:                jal          ra, 17f
5:                jal          ra, 6f
6:                jal          ra, 14f
7:                jal          ra, 9f
8:                jal          ra, 16f
9:                jal          t1, 1b
10:               jal          tp, 0b
11:               jal          ra, 2b
12:               jal          ra, 8b
13:               jal          sp, 7b
14:               jal          ra, 11b
15:               jal          a3, 10b
16:               jal          t1, 5b
17:               jal          s1, 15b
18:               ori          t6, t6, 200
sub_4_12:         jal          ra, 1f
0:                jal          ra, 2f
1:                jal          ra, 7f
2:                jal          a2, 3f
3:                jal          ra, 18f
4:                jal          ra, 15f
5:                jal          ra, 13f
6:                jal          gp, 27f
7:                jal          ra, 12f
8:                jal          ra, 4b
9:                jal          t1, 25f
10:               jal          ra, 28f
11:               jal          t1, 24f
12:               jal          ra, 19f
13:               jal          ra, 8b
14:               jal          t1, 0b
15:               jal          ra, 17f
16:               jal          s1, 5b
17:               jal          tp, 23f
18:               jal          t1, 10b
19:               jal          a1, 22f
20:               jal          ra, 21f
21:               jal          ra, 6b
22:               jal          ra, 26f
23:               jal          t6, 9b
24:               jal          ra, 16b
25:               jal          ra, 14b
26:               jal          ra, 20b
27:               jal          ra, 11b
28:               lui          a6, 809057
sub_4_2:          jal          ra, 10f
0:                jal          a3, 6f
1:                jal          ra, 2f
2:                jal          t1, 8f
3:                jal          t1, 5f
4:                jal          t3, 7f
5:                jal          ra, 12f
6:                jal          gp, 1b
7:                jal          ra, 13f
8:                jal          t1, 3b
9:                jal          ra, 4b
10:               jal          a3, 11f
11:               jal          t5, 9b
12:               jal          ra, 14f
13:               jal          ra, 0b
14:               srai         s1, a2, 2
sub_4_19:         jal          ra, 13f
0:                jal          a0, 19f
1:                jal          ra, 22f
2:                jal          t1, 4f
3:                jal          s4, 7f
4:                jal          t3, 28f
5:                jal          t1, 24f
6:                jal          ra, 25f
7:                jal          t1, 20f
8:                jal          t1, 1b
9:                jal          t1, 2b
10:               jal          ra, 26f
11:               jal          ra, 10b
12:               jal          t0, 8b
13:               jal          ra, 5b
14:               jal          ra, 9b
15:               jal          ra, 3b
16:               jal          ra, 11b
17:               jal          ra, 14b
18:               jal          ra, 29f
19:               jal          gp, 15b
20:               jal          t1, 23f
21:               jal          sp, 27f
22:               jal          ra, 16b
23:               jal          ra, 17b
24:               jal          ra, 12b
25:               jal          t4, 21b
26:               jal          t1, 6b
27:               jal          t1, 0b
28:               jal          ra, 18b
29:               slli         s5, a4, 14
sub_4_11:         jal          ra, 14f
0:                jal          a2, 23f
1:                jal          t1, 24f
2:                jal          t5, 19f
3:                jal          a0, 25f
4:                jal          t2, 2b
5:                jal          t1, 13f
6:                jal          ra, 11f
7:                jal          t1, 20f
8:                jal          ra, 28f
9:                jal          ra, 15f
10:               jal          t1, 26f
11:               jal          ra, 22f
12:               jal          ra, 5b
13:               jal          ra, 27f
14:               jal          s6, 17f
15:               jal          t1, 10b
16:               jal          ra, 21f
17:               jal          t3, 1b
18:               jal          ra, 12b
19:               jal          t1, 7b
20:               jal          ra, 16b
21:               jal          t1, 0b
22:               jal          t1, 8b
23:               jal          t1, 9b
24:               jal          ra, 3b
25:               jal          ra, 4b
26:               jal          s9, 18b
27:               jal          t1, 6b
28:               addi         t6, zero, -242
sub_4_4:          jal          ra, 8f
0:                jal          t6, 3f
1:                jal          ra, 0b
2:                jal          a4, 5f
3:                jal          ra, 11f
4:                jal          ra, 14f
5:                jal          a2, 7f
6:                jal          ra, 10f
7:                jal          gp, 1b
8:                jal          s4, 6b
9:                jal          ra, 13f
10:               jal          ra, 9b
11:               jal          ra, 12f
12:               jal          t1, 4b
13:               jal          sp, 2b
14:               srli         zero, a2, 1
sub_4_21:         jal          ra, 9f
0:                jal          ra, 8f
1:                jal          t1, 6f
2:                jal          ra, 3f
3:                jal          s6, 5f
4:                jal          gp, 10f
5:                jal          ra, 14f
6:                jal          ra, 11f
7:                jal          ra, 13f
8:                jal          ra, 12f
9:                jal          t1, 7b
10:               jal          s4, 0b
11:               jal          t1, 4b
12:               jal          ra, 2b
13:               jal          s7, 1b
14:               srl          gp, a3, t1
sub_4_14:         jal          ra, 14f
0:                jal          ra, 8f
1:                jal          t1, 15f
2:                jal          t1, 10f
3:                jal          t1, 22f
4:                jal          ra, 7f
5:                jal          a4, 27f
6:                jal          t1, 17f
7:                jal          ra, 16f
8:                jal          t1, 4b
9:                jal          ra, 20f
10:               jal          t1, 0b
11:               jal          ra, 28f
12:               jal          ra, 2b
13:               jal          t1, 5b
14:               jal          ra, 6b
15:               jal          t1, 19f
16:               jal          a4, 9b
17:               jal          t1, 24f
18:               jal          ra, 13b
19:               jal          a4, 26f
20:               jal          ra, 23f
21:               jal          t1, 3b
22:               jal          ra, 1b
23:               jal          ra, 18b
24:               jal          ra, 12b
25:               jal          ra, 11b
26:               jal          ra, 25b
27:               jal          ra, 21b
28:               sll          t0, s0, s7
                  xori         s3, t0, -458
                  srli         a6, s6, 15
                  nop
                  addi         a1, a7, 2002
                  beq          t4, s3, 7f
                  beq          t5, s5, 17f
                  sltiu        s5, s10, 470
7:                andi         t0, s11, 268
                  nop
                  srai         a4, sp, 25
                  xori         a2, a2, -1067
                  blt          s8, t4, 14f
                  bltu         s5, t1, 16f
                  bltu         sp, s6, 25f
14:               slt          s5, t5, a5
                  beq          s9, zero, 24f
16:               srai         a2, a6, 25
17:               add          t0, s10, sp
                  sll          tp, t0, zero
                  lui          ra, 92994
                  sll          ra, a4, tp
                  slli         sp, s8, 15
                  bltu         gp, t6, 39f
                  addi         zero, a3, -285
24:               lui          t0, 92818
25:               ori          s4, a0, -578
                  add          a2, a5, t1
                  and          t2, s7, t2
                  xor          a0, ra, s3
                  addi         s5, sp, 1151
                  srai         s11, t5, 5
                  sll          s11, t2, s2
                  srli         a3, a1, 10
                  add          tp, s0, a3
                  and          a7, t1, tp
                  nop
                  xor          t1, t6, s5
                  sltu         a0, a0, ra
                  or           t1, tp, s4
39:               srai         s1, a6, 23
                  slt          a3, s5, s9
                  bne          a6, a5, 45f
                  slt          t1, ra, s6
                  xori         a6, a4, -1179
                  lui          a6, 24867
45:               slti         s11, ra, 1111
                  nop
                  sub          s11, s2, s8
                  lui          a3, 211480
                  sub          sp, t0, zero
                  auipc        s7, 988832
                  sltu         a3, s1, t6
                  srai         s1, s4, 24
                  xor          t2, s4, s0
                  blt          a6, a4, 63f
                  auipc        s5, 348962
                  slli         s6, s2, 11
                  andi         s11, a6, -582
                  add          a5, a0, s11
                  srai         a7, t2, 7
                  sltu         s1, ra, tp
                  slti         t6, s11, 1943
                  or           s1, s4, t3
63:               xor          t4, s1, t4
                  nop
                  slti         a1, a4, 1363
                  nop
                  sltu         tp, a2, t5
                  sltiu        a3, tp, -615
                  slt          t3, a0, s10
                  add          a6, s0, t0
                  beq          t3, a3, 82f
                  slt          a3, a6, ra
                  sltiu        t2, t4, 2034
                  addi         a5, s10, 219
                  srl          gp, t3, t1
                  xori         a7, s6, 2005
                  blt          t3, s11, 95f
                  ori          tp, a3, -1585
                  or           ra, ra, a6
                  sltu         s4, ra, gp
                  sra          s9, s2, a3
82:               xor          a0, s0, s6
                  bgeu         s8, t0, 102f
                  xor          s4, t0, a5
                  auipc        s6, 183281
                  addi         ra, a2, -654
                  lui          t6, 412722
                  auipc        a6, 504249
                  slli         s11, a2, 4
                  nop
                  xori         t2, tp, -1153
                  sltiu        s4, a1, -89
                  addi         t4, a4, 161
                  add          gp, a6, s2
95:               sra          a6, sp, a4
                  add          tp, a5, s8
                  srl          t2, a5, ra
                  sub          zero, s4, t4
                  lui          s11, 723040
                  sll          t3, a2, t4
                  andi         a6, t2, -1449
102:              nop
                  slti         a0, a1, 668
                  lui          s3, 766466
                  auipc        a5, 268270
                  nop
                  slti         t5, t1, 604
                  bne          s8, t4, 127f
                  beq          s8, a5, 123f
                  sll          t1, a6, s6
                  sra          s5, ra, s7
                  and          t3, t5, a3
                  and          s5, a3, s7
                  bne          s2, t5, 129f
                  sll          a6, s8, t1
                  add          t6, t3, t1
                  andi         t2, t2, -508
                  sll          tp, a7, s5
                  blt          sp, t5, 120f
120:              slli         a4, gp, 24
                  xor          t0, t0, s4
                  xori         t2, s4, -1454
123:              addi         zero, s8, -941
                  nop
                  xori         s7, a1, -571
                  auipc        s11, 431663
127:              srli         a1, t5, 8
                  bltu         zero, t2, 134f
129:              slt          t6, s0, a3
                  slt          a4, a7, t4
                  slli         s1, s8, 20
                  auipc        zero, 982267
                  bne          tp, a7, 134f
134:              beq          s4, tp, 154f
                  srai         s6, zero, 30
                  blt          a7, s11, 151f
                  bge          zero, t0, 147f
                  sltiu        gp, a6, 35
                  or           t6, tp, t0
                  sltiu        t0, s6, -1631
                  xori         t5, a5, -1564
                  srai         a5, a4, 14
                  slli         a1, a2, 17
                  bgeu         t6, gp, 152f
                  bge          tp, s1, 161f
                  xori         sp, s4, 117
147:              bne          a7, t0, 160f
                  bne          t5, t5, 161f
                  bltu         s1, a3, 165f
                  ori          tp, zero, -735
151:              xor          sp, s8, a4
152:              add          t3, s4, s9
                  sltu         t0, s2, t0
154:              and          t1, a3, a0
                  xori         sp, s7, -121
                  lui          s9, 104344
                  blt          a5, t1, 160f
                  bltu         s6, tp, 162f
                  bne          t0, a5, 162f
160:              srai         sp, a7, 3
161:              bne          s5, t5, 170f
162:              add          a4, ra, t5
                  slti         t3, zero, -199
                  bne          a3, a7, 167f
165:              srl          a2, s1, zero
                  or           gp, s8, t0
167:              blt          ra, s6, 183f
                  nop
                  sub          t6, s8, a5
170:              xori         t4, t3, -747
                  bne          s8, a3, 185f
                  srl          t2, a7, s7
                  and          gp, s10, a6
                  slti         a2, a7, -737
                  bne          s11, t3, 179f
                  srai         a0, a6, 5
                  slti         a7, t5, -1204
                  srl          t6, a0, s0
179:              sub          t5, t6, zero
                  slli         a4, s8, 10
                  or           ra, s5, s0
                  add          ra, gp, a5
183:              nop
                  sub          t5, sp, a3
185:              auipc        t6, 140371
                  beq          s6, a7, 202f
                  slli         sp, s5, 21
                  slt          a6, a3, a5
                  nop
                  sltiu        s1, a1, -821
                  addi         s3, s9, -1419
                  xor          sp, a4, a6
                  sub          s5, gp, t5
                  blt          t5, s3, 213f
                  or           zero, s9, a1
                  or           s6, zero, s1
                  auipc        t4, 851487
                  bltu         s10, ra, 204f
                  slt          s11, t2, a4
                  srl          s7, gp, t1
                  srai         t6, a1, 15
202:              srli         a4, a7, 9
                  ori          a7, a7, -584
204:              xori         t4, s3, -1764
                  sub          a4, a2, s7
                  bgeu         s3, a0, 210f
                  bge          ra, a6, 218f
                  nop
                  slli         t2, s0, 0
210:              beq          sp, a6, 219f
                  or           t0, s11, a2
                  sra          s5, sp, a6
213:              sltu         a0, s5, s7
                  or           s11, s1, s7
                  ori          t2, sp, 102
                  ori          t2, a5, 1016
                  xor          t5, a2, a4
218:              xori         s8, t0, -1424
219:              srl          sp, s5, a3
                  sltiu        tp, gp, 1515
                  ori          a3, a2, 1886
                  slti         s6, t1, 1184
                  xor          a2, s1, a3
                  addi         s11, s6, 1589
                  slti         tp, s4, 140
                  sub          gp, s8, a7
                  andi         a3, s3, -1017
                  blt          s9, tp, 238f
                  slli         a3, a1, 21
                  auipc        a0, 129701
                  or           a6, t3, ra
                  sltu         s4, s2, a2
                  ori          a4, t1, -142
                  bltu         s8, gp, 249f
                  bltu         a0, s5, 247f
                  addi         sp, sp, 503
                  bltu         t3, s11, 238f
238:              slti         tp, sp, -556
                  slti         gp, a5, -1989
                  slli         ra, s4, 31
                  xori         t1, zero, 246
                  add          s8, s11, gp
                  srli         s8, a3, 12
                  bge          s9, s1, 247f
                  xori         a3, a5, 193
                  xori         t1, s0, 948
247:              bltu         a7, t4, 255f
                  addi         a3, t2, -1195
249:              lui          t4, 452140
                  nop
                  and          a5, t4, a1
                  slti         a0, t3, -909
                  xori         t2, s9, 1596
                  andi         ra, s1, 9
255:              or           zero, ra, s9
                  bltu         ra, gp, 273f
                  sra          zero, zero, s8
                  and          s3, ra, ra
                  or           ra, s11, t4
                  slt          s3, a5, tp
                  addi         a6, a0, -470
                  sub          a1, t2, s2
                  xori         t3, t2, -582
                  slt          a2, t0, zero
                  srl          a7, a2, a4
                  and          a1, t5, s4
                  lui          ra, 328014
                  srai         ra, t4, 1
                  auipc        sp, 39240
                  nop
                  add          gp, a1, s6
                  slt          t6, a3, a4
273:              beq          t2, s0, 285f
                  xori         gp, s5, -665
                  or           a1, s3, s8
                  addi         s9, a3, 1892
                  sltiu        s9, t1, 688
                  auipc        t1, 219714
                  sltu         t0, t2, s6
                  slti         s1, zero, 1799
                  sub          tp, zero, s7
                  lui          a1, 255488
                  add          a5, a0, t0
                  andi         s7, s5, -389
285:              slti         t0, s9, -1875
                  lui          s3, 419582
                  sll          tp, s8, s3
                  xori         a2, a6, 1645
                  bltu         a3, s4, 309f
                  beq          s4, a2, 299f
                  sub          sp, t0, s8
                  ori          t0, s1, 52
                  srl          s4, s10, a2
                  bge          t0, a0, 307f
                  or           a0, a6, a6
                  lui          t3, 149807
                  and          t4, a4, a0
                  sra          s8, ra, a6
299:              ori          t2, s7, 1913
                  xor          tp, t1, a3
                  addi         s4, t1, 1230
                  slti         s6, s6, -2
                  bge          a7, gp, 306f
                  xori         s5, ra, -132
                  xori         t5, a3, -798
306:              slt          a5, a2, a5
307:              auipc        s4, 447779
                  slt          s6, t3, s3
309:              srai         a6, s0, 4
                  sra          s4, t5, s4
                  sra          s6, s7, gp
                  srl          s8, t3, s6
                  nop
                  sub          t2, t3, a2
                  xori         a3, t3, 977
                  or           a4, a4, s8
                  or           s11, s5, s9
                  addi         zero, a2, -2024
                  beq          t4, s6, 334f
                  slti         s9, s1, -1760
                  sub          a5, s2, t5
                  slli         a0, gp, 11
                  auipc        gp, 124507
                  andi         a6, s10, -1403
                  addi         a6, gp, 490
                  beq          tp, t3, 327f
327:              sltiu        a3, s1, 979
                  slti         t6, s0, 1359
                  bgeu         tp, a7, 338f
                  sltiu        s1, a4, -1202
                  bne          ra, s9, 349f
                  blt          s9, t3, 335f
                  bge          s2, s2, 346f
334:              beq          s0, a1, 338f
335:              sltu         s3, a1, s6
                  slt          s1, s7, a5
                  sltu         gp, s2, s6
338:              add          a0, a2, s8
                  add          t2, s2, gp
                  sltiu        s9, s0, -1099
                  lui          a4, 638271
                  srai         a5, t5, 23
                  srl          tp, s11, a7
                  slt          s6, s4, s4
                  beq          s9, t1, 364f
346:              srli         a0, a3, 6
                  ori          a0, t0, -1082
                  slti         t0, t1, -973
349:              sltiu        sp, gp, 1493
                  ori          a0, a2, 1678
                  srli         t4, s5, 6
                  sltu         a5, s11, s6
                  xor          tp, t0, t1
                  srai         s9, t4, 27
                  bne          t3, s9, 358f
                  sltiu        t5, s11, 663
                  and          t2, zero, t3
358:              add          a7, s3, s2
                  slli         t5, ra, 17
                  slti         s3, s7, 587
                  blt          t4, a5, 376f
                  andi         s1, t5, 557
                  slli         a2, sp, 14
364:              slt          s3, t3, tp
                  bltu         a3, a6, 368f
                  or           sp, s6, a5
                  and          tp, s8, s9
368:              slli         a4, t1, 23
                  sra          s7, tp, ra
                  or           t0, s8, a6
                  xor          a6, s0, tp
                  sra          a7, s2, t2
                  slti         sp, a6, 1415
                  xor          s6, s10, gp
                  sra          a2, s2, a5
376:              sra          a1, tp, s7
                  lui          s6, 829405
                  slli         s4, a4, 15
                  slt          t5, tp, s2
                  bne          a0, a0, 392f
                  srl          a4, s11, a0
                  sltu         t6, t2, s1
                  beq          sp, t0, 395f
                  auipc        a7, 67991
                  xori         a3, a2, -1948
                  blt          sp, s8, 387f
387:              bgeu         s5, a5, 396f
                  lui          a0, 279635
                  srli         s3, s1, 22
                  sltiu        a6, a7, -605
                  sra          a3, t0, a5
392:              sra          sp, t0, s1
                  addi         t5, s6, 1940
                  or           s1, s10, s1
395:              slt          s9, t1, s6
396:              srai         t6, a5, 20
                  slti         s6, s8, 1281
                  addi         a4, a5, 1430
                  xori         t1, s2, -1125
                  srli         t4, t3, 18
                  add          zero, gp, s6
                  xor          s11, t4, a3
                  bne          tp, s5, 423f
                  ori          t1, t0, -1901
                  xor          t3, t4, a2
                  xor          s3, t4, s6
                  addi         zero, a3, -1674
                  sltu         t2, s4, tp
                  add          t2, a5, t6
                  slli         s7, tp, 7
                  andi         gp, s0, -26
                  or           sp, s7, a2
                  slli         s1, a4, 30
                  nop
                  blt          s10, a6, 419f
                  bge          a7, t5, 427f
                  xor          a1, s3, s11
                  xori         tp, s2, 1284
419:              sltu         a0, sp, s4
                  addi         s9, ra, -549
                  blt          a0, t2, 438f
                  xor          t2, s9, s1
423:              sra          s4, a6, t0
                  xor          a5, a7, a3
                  bne          a2, s3, 444f
                  bltu         a6, gp, 430f
427:              lui          a6, 426615
                  xor          s9, zero, zero
                  auipc        t6, 696107
430:              and          zero, sp, t3
                  ori          t5, s11, -1329
                  slti         s9, s7, 1765
                  nop
                  sltu         t6, s7, a5
                  ori          s5, sp, -961
                  or           t0, t2, sp
                  slli         t3, s5, 3
438:              sltiu        t3, s0, 2039
                  bgeu         s9, s4, 453f
                  auipc        tp, 746493
                  sll          s1, s6, a2
                  sub          ra, a1, t4
                  addi         t2, t2, -406
444:              add          s11, a7, s0
                  srai         a0, t4, 30
                  slli         s5, tp, 29
                  ori          a7, t4, 384
                  and          s8, s1, t2
                  or           s11, t5, a5
                  bne          zero, a4, 460f
                  bltu         gp, a4, 469f
                  addi         s11, t4, 1030
453:              slti         a4, a4, -71
                  srai         a0, a0, 8
                  bge          t3, s11, 461f
                  sra          a4, a1, a1
                  addi         s11, s4, -650
                  add          s7, s2, s0
                  ori          s4, s1, 1682
460:              bltu         a5, ra, 479f
461:              sll          a3, a2, a3
                  add          t3, zero, a2
                  sltu         a7, s6, t5
                  andi         t4, s8, -1677
                  xor          t0, s2, s0
                  bgeu         a2, s10, 467f
467:              nop
                  slli         a0, a1, 19
469:              blt          s0, s0, 485f
                  bltu         s5, s8, 486f
                  sll          a7, s10, s6
                  blt          s3, a7, 476f
                  sub          s6, t6, a0
                  addi         s11, a1, -2013
                  sltu         sp, a3, t5
476:              beq          a7, s6, 489f
                  bne          s4, tp, 486f
                  bgeu         s5, t0, 486f
479:              sub          t2, t3, tp
                  srai         ra, t4, 2
                  bge          s8, s0, 494f
                  srl          a1, a7, a3
                  auipc        t5, 411299
                  addi         t5, a7, 1983
485:              lui          sp, 618967
486:              blt          a4, s5, 489f
                  sltiu        gp, t0, -411
                  bge          s3, a0, 497f
489:              blt          t2, s6, 504f
                  slt          a2, a3, a5
                  slt          s9, s8, s7
                  srai         t2, t0, 6
                  sltiu        s1, s10, 1246
494:              ori          t5, t2, -936
                  xori         s9, gp, 1962
                  slt          s11, a6, a4
497:              sltiu        a4, a0, -1793
                  nop
                  slt          t2, s10, t1
                  and          sp, zero, s8
                  nop
                  ori          s8, s4, -139
                  bltu         tp, t2, 506f
504:              and          a3, t6, s11
                  add          s11, gp, s3
506:              blt          s1, s10, 510f
                  srai         t5, gp, 30
                  bge          a5, s0, 517f
                  auipc        s8, 66316
510:              sra          t4, a3, t1
                  srl          tp, a4, s7
                  andi         a6, s11, -69
                  slli         s3, a1, 7
                  bge          gp, s9, 518f
                  sub          t5, a3, s8
                  slt          a2, t2, s2
517:              auipc        t4, 600718
518:              and          s4, s2, t4
                  auipc        a4, 771073
                  sltu         t6, s2, gp
                  slti         t0, t6, -259
                  xori         a0, s2, 314
                  bgeu         s9, t1, 526f
                  ori          s9, s4, 279
                  add          s11, s0, tp
526:              slt          t4, s11, tp
                  ori          ra, s9, 508
                  lui          t4, 384356
                  bgeu         t4, s0, 542f
                  sltu         s8, s9, a5
                  srai         s5, s2, 2
                  bge          t2, sp, 535f
                  bne          tp, s7, 542f
                  slti         s3, a0, 1108
535:              or           a4, s3, s4
                  xor          s9, t5, a7
                  xori         s1, s10, -1005
                  bgeu         a7, gp, 542f
                  ori          s6, s4, 128
                  srai         zero, a7, 24
                  slt          sp, a3, a0
542:              slt          t4, s10, a2
                  srl          s9, a2, s6
                  slti         a3, tp, 943
                  beq          s7, t6, 553f
                  sub          s11, t2, t0
                  add          t5, s9, s9
sub_4_3:          jal          ra, 4f
0:                jal          ra, 14f
1:                jal          t1, 3f
2:                jal          t1, 13f
3:                jal          t1, 16f
4:                jal          a1, 0b
5:                jal          ra, 6f
6:                jal          s3, 15f
7:                jal          ra, 1b
8:                jal          t6, 2b
9:                jal          s9, 11f
10:               jal          t6, 5b
11:               jal          gp, 12f
12:               jal          ra, 7b
13:               jal          ra, 17f
14:               jal          t1, 10b
15:               jal          s3, 9b
16:               jal          ra, 8b
17:               xori         s6, s5, -364
                  slti         s1, t5, 1261
                  beq          t3, t5, 566f
                  xor          zero, t5, s1
                  add          sp, t4, t0
                  andi         t2, a2, 1843
553:              addi         a5, a2, 150
                  bltu         s7, a7, 569f
                  srai         t6, a3, 12
                  addi         s1, t6, 1014
                  bltu         s8, s1, 560f
                  sub          s11, s2, s9
                  lui          a2, 826724
560:              bge          s8, s7, 580f
                  ori          a2, a1, -1607
                  srl          tp, a3, a7
                  ori          t0, s9, 1221
                  sll          s1, t0, t2
                  blt          s4, sp, 583f
566:              blt          s2, a3, 567f
567:              bgeu         t3, t5, 580f
                  slt          t3, s4, t5
569:              xori         t6, zero, -15
                  blt          s11, s5, 576f
                  addi         s7, s10, 1622
                  sra          tp, s1, sp
                  bgeu         sp, s11, 582f
                  auipc        s6, 277866
                  ori          t2, s11, 441
576:              auipc        a1, 611140
                  slli         s3, s8, 23
                  bgeu         s9, zero, 597f
                  srl          s8, a0, a0
580:              blt          t3, s0, 581f
581:              lui          t1, 901583
582:              ori          t3, s11, -1106
583:              sra          t5, tp, s2
                  slti         s8, a0, -1405
                  nop
                  and          t0, s5, a4
                  sll          a2, s10, a7
                  bgeu         s0, a1, 603f
                  or           a2, a4, s4
                  slti         a2, s0, 1026
                  nop
                  slti         ra, s1, -1862
                  srl          t5, a1, ra
                  or           t2, s1, a3
                  beq          a5, s8, 607f
                  srai         a1, s1, 10
597:              addi         a4, t6, -1633
                  slli         t1, tp, 2
                  slt          s11, gp, a1
                  nop
                  beq          s7, s3, 604f
                  bne          a1, s8, 618f
603:              bne          a4, tp, 614f
604:              srai         t4, s10, 1
                  bgeu         t1, s6, 615f
                  sltu         zero, gp, sp
607:              sll          a6, a2, s7
                  bne          sp, s2, 620f
                  sub          a0, s2, a2
                  sltiu        t5, tp, -2024
                  bge          s9, s11, 630f
                  or           a6, s1, t0
                  sll          t2, a2, a1
614:              sltiu        a7, s4, -2018
615:              srli         a0, s4, 7
                  sltiu        s11, t3, 629
                  slt          zero, t6, s6
618:              lui          ra, 933279
                  and          s6, a5, sp
620:              blt          s11, t0, 636f
                  sub          a1, s5, a6
                  andi         a4, t6, 28
                  addi         ra, sp, 148
                  add          gp, a4, t0
                  add          t6, t1, s6
                  addi         zero, gp, -601
                  srli         a5, s7, 13
                  srli         t2, s3, 14
                  srai         zero, a3, 20
630:              and          tp, zero, s4
                  ori          a7, s4, 431
                  sltiu        a1, a5, -348
                  srl          tp, a3, s11
                  slt          s4, s2, s3
                  and          s4, a6, t4
636:              add          t4, sp, a0
                  add          s11, s0, s9
                  sll          t2, t4, a0
                  bge          s9, s2, 653f
                  nop
                  bgeu         a5, t2, 645f
                  sltu         s9, t0, s11
                  add          t1, a3, a0
                  bne          gp, ra, 645f
645:              sra          ra, s0, a0
                  nop
                  xor          gp, s7, t3
                  ori          a5, a2, -773
                  or           a1, gp, a0
                  srli         s1, s4, 29
                  add          a2, zero, s4
                  and          t1, tp, t2
653:              sll          a1, gp, a1
                  slli         a7, t5, 0
                  xori         t6, tp, 60
                  srl          s4, s2, t6
                  bne          tp, zero, 660f
                  xori         t0, t4, -83
                  srai         s3, a1, 8
660:              sltu         a6, s7, t6
                  sra          t6, s6, s5
                  nop
                  or           t6, a3, s4
                  or           t5, t0, s9
                  or           ra, a3, t0
                  sra          t3, a5, s8
                  sra          s8, s7, a6
                  addi         s7, s2, -1490
                  ori          a2, s5, -59
                  slli         a4, a6, 10
                  nop
                  srl          t0, a4, a3
                  slli         a6, s2, 22
                  or           t1, t0, t4
                  blt          a3, s5, 676f
676:              andi         tp, t2, 200
                  sub          t1, t0, a2
                  and          a6, s0, a5
                  xor          sp, a2, t5
                  sltiu        s9, s2, 38
sub_4_16:         jal          ra, 6f
0:                jal          t1, 8f
1:                jal          ra, 7f
2:                jal          ra, 4f
3:                jal          ra, 2b
4:                jal          t1, 9f
5:                jal          a4, 10f
6:                jal          ra, 1b
7:                jal          t1, 0b
8:                jal          t1, 3b
9:                jal          s4, 5b
10:               and          a0, t0, tp
                  bne          s1, a2, 701f
                  or           s7, a1, s7
                  bgeu         a6, a5, 698f
                  xor          t4, s2, t5
                  srl          a1, a7, s11
                  xori         s9, s6, 1883
                  sll          s3, a2, s9
                  bne          ra, s2, 704f
                  sltu         a4, t6, a5
                  slti         s1, s11, -1957
                  sll          s9, t1, s5
                  srl          s11, ra, t4
                  or           s3, ra, a5
                  or           a0, t0, t3
                  and          s7, a3, s0
                  sra          a6, t4, a0
                  slti         t4, zero, 49
698:              add          t4, s9, s9
                  srli         s9, s4, 31
                  sltu         s3, a4, s7
701:              andi         a3, a7, -1632
                  blt          t4, a3, 717f
                  blt          s10, s0, 715f
704:              sra          s6, t5, a1
                  add          s4, s3, t4
                  sltiu        t6, a1, -1124
                  bge          s3, s0, 716f
                  sltiu        zero, s3, 960
                  sll          a3, gp, s1
                  sra          t0, t0, t4
                  andi         s6, s10, -786
                  auipc        s3, 334091
                  andi         s3, a2, -1793
                  beq          a2, s1, 728f
715:              beq          t5, t3, 732f
716:              srli         s11, a6, 3
717:              blt          s6, s9, 729f
                  srl          t4, gp, zero
                  xori         s5, s4, -998
                  beq          t2, a0, 723f
                  sltiu        t4, s10, 507
                  ori          gp, s2, 1346
723:              or           a5, s6, s6
                  beq          s4, t1, 728f
sub_4_22:         jal          ra, 1f
0:                jal          ra, 4f
1:                jal          ra, 12f
2:                jal          ra, 5f
3:                jal          ra, 14f
4:                jal          ra, 6f
5:                jal          s8, 3b
6:                jal          ra, 8f
7:                jal          ra, 10f
8:                jal          t0, 7b
9:                jal          t1, 0b
10:               jal          a2, 13f
11:               jal          ra, 9b
12:               jal          ra, 11b
13:               jal          a0, 2b
14:               sltiu        a2, a5, 1358
                  lui          a0, 751137
                  xor          t6, s2, a5
                  sub          t0, a2, a5
728:              nop
729:              and          s7, s0, t1
                  sll          s3, s6, a1
                  sra          s9, tp, a6
732:              sub          s8, s6, a5
                  sub          a5, s0, sp
                  bne          t6, a6, 747f
                  srli         a6, s1, 12
                  addi         s8, s6, -1637
                  bge          tp, t5, 756f
                  or           ra, s0, a0
                  srl          s7, t1, s8
                  xori         tp, s8, 677
                  sll          a5, s9, t5
                  beq          a4, a6, 745f
                  add          s5, t2, a0
                  lui          tp, 286611
745:              bne          t0, zero, 763f
                  andi         s9, a3, -1308
747:              nop
                  srai         a3, s0, 16
                  xor          tp, s7, s0
                  slti         s6, a2, 802
                  add          a0, s9, s8
                  nop
                  and          t4, s1, a0
                  srli         t4, a1, 24
                  xor          s8, a0, t3
756:              srai         zero, s5, 29
                  andi         t4, zero, 115
                  sltiu        s7, a5, 1155
                  and          t0, s9, s5
                  addi         sp, zero, 1226
                  sra          t6, a2, t0
                  xori         a6, s2, 390
763:              srai         s11, s10, 25
                  bge          a2, gp, 773f
                  xor          s5, a0, s7
                  or           s1, s8, sp
                  sll          gp, t5, ra
                  bne          t4, t4, 771f
                  nop
                  sll          s1, s4, a1
771:              bltu         a3, a3, 790f
                  beq          t3, s5, 788f
773:              sub          s1, a3, s2
                  sll          a5, a0, a0
                  sub          gp, s7, t0
                  bltu         s8, t5, 784f
                  lui          a2, 442795
                  ori          t3, s0, 995
                  sub          s5, a1, a6
                  slti         t1, s8, -615
                  sra          a1, t5, s0
                  srl          a0, a3, a2
                  xor          s8, a6, t5
784:              blt          a5, s4, 788f
                  auipc        t5, 524678
                  andi         t0, a2, -1618
sub_4_6:          jal          ra, 10f
0:                jal          ra, 7f
1:                jal          t1, 12f
2:                jal          a1, 11f
3:                jal          t0, 1b
4:                jal          ra, 9f
5:                jal          ra, 8f
6:                jal          t1, 15f
7:                jal          ra, 17f
8:                jal          ra, 4b
9:                jal          s3, 2b
10:               jal          s5, 14f
11:               jal          ra, 16f
12:               jal          ra, 0b
13:               jal          ra, 3b
14:               jal          ra, 6b
15:               jal          ra, 5b
16:               jal          t1, 13b
17:               sltiu        s7, tp, -930
                  sub          t3, gp, s6
788:              xori         t1, t5, -1021
                  addi         t6, t0, 2032
790:              sltu         t3, a7, t5
                  slti         gp, a0, -515
                  bne          s2, s7, 802f
                  bgeu         a1, s6, 802f
                  beq          zero, t3, 807f
                  blt          t4, a6, 801f
                  lui          a3, 195352
                  bltu         ra, gp, 808f
                  sltu         t6, t3, sp
                  sub          s7, s9, a5
                  bge          s7, a1, 815f
801:              addi         s8, s5, -145
802:              andi         a5, t0, 1238
                  sll          a5, a7, a3
                  slti         a4, s8, 434
                  slti         sp, a2, -1140
                  bgeu         a7, t5, 815f
807:              srl          t3, t2, s9
808:              slt          a3, sp, a3
                  sltiu        a1, s1, 1831
                  sra          s11, s9, sp
                  nop
                  bge          t5, a3, 822f
                  slti         a2, t4, 955
                  slti         s9, s3, 1460
815:              sltu         a4, a7, a6
                  slt          t3, gp, t6
                  lui          t0, 260186
                  sub          tp, t6, t0
                  bltu         a5, t6, 836f
                  bltu         t2, s3, 823f
                  addi         t2, s10, -1502
822:              or           t1, a0, a5
823:              bne          s10, a1, 827f
                  xori         a3, t2, -1677
                  sra          t1, s4, zero
                  andi         zero, s0, -99
827:              slt          a1, s7, s3
                  bltu         ra, zero, 839f
                  srli         s3, s4, 22
                  addi         t0, a7, -968
                  addi         a0, a0, -1598
                  sra          sp, a3, t3
                  srli         ra, ra, 30
                  andi         t5, a0, 500
                  bltu         tp, s11, 854f
836:              bge          s3, t4, 845f
                  nop
                  blt          t3, sp, 857f
839:              srli         s7, a7, 11
                  blt          t2, s5, 844f
                  sll          ra, s8, s8
                  slli         a2, a3, 22
                  bltu         s2, sp, 849f
844:              auipc        a1, 357692
845:              sltiu        t3, t1, 1161
                  andi         s9, s3, -120
                  beq          a5, s2, 850f
                  sra          tp, t1, a7
849:              blt          s7, tp, 862f
850:              ori          s8, s3, 92
                  add          a2, s9, ra
                  slli         gp, t0, 31
                  blt          a1, t5, 857f
854:              sll          a7, s4, s11
                  bgeu         a7, a1, 863f
                  ori          s1, a2, 1781
857:              bltu         tp, t5, 872f
                  srli         s11, s6, 7
                  and          t2, s2, t0
                  xori         t3, t5, -445
                  or           t1, a3, s10
862:              bltu         t3, s3, 871f
863:              sub          t3, a3, s7
                  slt          t4, a1, s0
                  sltiu        t0, t5, 162
                  sltu         t2, s4, a0
                  slti         s5, s4, -36
                  beq          a5, ra, 880f
                  ori          s6, a6, 1461
                  sltu         gp, t4, t0
871:              and          s4, s3, s10
872:              sra          s8, tp, s7
                  bltu         t4, sp, 887f
                  or           s9, gp, zero
                  sll          s3, t0, s9
                  auipc        a0, 494941
sub_4_18:         jal          ra, 20f
0:                jal          ra, 3f
1:                jal          ra, 24f
2:                jal          ra, 12f
3:                jal          a5, 1b
4:                jal          ra, 23f
5:                jal          gp, 18f
6:                jal          a2, 22f
7:                jal          a5, 8f
8:                jal          t1, 5b
9:                jal          ra, 25f
10:               jal          ra, 19f
11:               jal          t1, 21f
12:               jal          ra, 17f
13:               jal          s7, 26f
14:               jal          s4, 10b
15:               jal          ra, 4b
16:               jal          s1, 14b
17:               jal          s1, 13b
18:               jal          a1, 15b
19:               jal          ra, 9b
20:               jal          t1, 6b
21:               jal          gp, 7b
22:               jal          t6, 11b
23:               jal          a5, 0b
24:               jal          ra, 16b
25:               jal          ra, 2b
26:               sub          s6, s10, tp
                  auipc        a2, 80988
                  sra          s5, t2, t4
                  addi         gp, a0, -1713
880:              sltiu        ra, a3, 1357
                  xori         a4, s3, -1112
                  sub          a7, ra, s9
                  sltu         a7, s4, t1
                  sltu         a5, ra, s7
                  bltu         ra, s9, 901f
                  add          a1, a4, t4
887:              xor          t2, s9, t4
                  sll          a4, a7, t1
                  sltu         s4, s3, s10
                  nop
                  add          t1, s9, t0
                  nop
                  beq          t6, s4, 894f
894:              andi         a4, a5, -1472
                  slli         t1, s1, 0
                  sub          a0, t0, s5
                  bgeu         ra, s2, 900f
                  xori         t5, a4, 1149
                  beq          t4, ra, 915f
900:              ori          a3, s5, 1856
sub_4_20:         jal          ra, 2f
0:                jal          t6, 8f
1:                jal          t1, 5f
2:                jal          gp, 1b
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          t1, 9f
6:                jal          ra, 0b
7:                jal          t1, 4b
8:                jal          t1, 3b
9:                jal          a5, 6b
10:               sll          a6, t3, a4
901:              slt          s9, ra, a2
                  lui          s7, 698017
                  sll          tp, zero, t5
                  srl          a4, s7, s0
                  add          t1, t5, a1
                  sltiu        s5, s0, 326
                  blt          s4, tp, 919f
                  bne          t4, sp, 911f
                  auipc        tp, 572718
                  slli         t5, s11, 26
911:              nop
                  or           a2, zero, s0
                  add          s3, s1, ra
                  slti         s7, t6, 685
915:              add          s6, a7, t4
                  bltu         s1, a1, 929f
                  slti         s8, t1, 508
                  andi         a5, ra, -250
919:              andi         a0, tp, 2028
                  slli         s4, s10, 18
                  slt          s11, tp, t5
                  blt          tp, s11, 923f
923:              addi         s7, s2, 531
                  slt          tp, sp, t3
                  blt          s1, ra, 943f
                  slt          t3, t3, s8
                  slli         a3, t5, 2
                  and          a5, s4, sp
929:              srai         s4, a7, 11
                  or           a1, s10, t3
                  and          zero, s5, t5
                  auipc        t1, 407934
                  srl          t1, s10, ra
                  bge          s10, tp, 954f
                  bne          s3, s3, 939f
                  slli         t5, s2, 12
                  auipc        a6, 329659
                  sltu         a0, t4, t1
939:              bne          t4, s4, 950f
                  slti         tp, sp, 1359
                  slli         a3, s3, 7
                  sub          t6, t3, s0
943:              bge          s3, s9, 946f
                  ori          t5, a1, -1500
                  xor          a1, t5, a1
946:              srai         a2, s2, 13
                  and          s4, s5, a1
                  or           t1, s9, a1
                  slti         t0, zero, -1202
950:              srli         a4, t4, 6
                  slt          s7, s0, t6
                  or           t0, s7, s5
                  addi         s4, s11, -308
954:              and          s7, zero, s7
                  xori         s3, s6, -249
                  and          s4, a3, a4
                  bgeu         a2, zero, 972f
                  addi         a5, s10, -593
                  xori         s7, s2, 561
                  sltu         t1, t3, t5
                  sub          a5, s10, t6
                  auipc        t1, 463771
                  andi         a1, t2, 2031
                  sra          t3, sp, t1
                  addi         s6, t4, 1014
                  slt          s6, s4, a4
                  lui          t5, 20039
                  blt          a2, zero, 987f
                  slli         a7, s2, 17
                  or           a1, a6, s8
                  slli         a6, tp, 5
972:              bltu         s10, t4, 990f
                  or           s8, a3, t1
                  slti         s9, s0, 867
                  sub          s5, a1, s10
                  add          s1, t2, a3
                  ori          s11, s1, 14
                  slt          t3, sp, s5
                  addi         a2, a1, -1593
                  lui          a7, 936998
                  sltu         s9, t3, t1
                  bgeu         t6, a1, 996f
                  lui          t4, 362800
                  sll          a6, s0, s10
                  xor          t6, t0, s0
                  bge          s11, s7, 998f
987:              beq          gp, a7, 993f
                  bge          s4, s8, 1003f
                  bge          a3, a5, 1008f
990:              beq          sp, s7, 999f
                  lui          a4, 127863
                  beq          t3, a6, 1001f
993:              sra          t6, s6, gp
                  and          a0, t3, a7
                  slti         s4, s6, 1172
996:              xor          s6, a1, a2
                  sub          s11, a3, a7
998:              nop
999:              bltu         tp, s6, 1019f
                  auipc        s8, 296310
1001:             and          gp, ra, s6
                  bge          gp, s10, 1005f
1003:             ori          s7, a4, -1854
                  ori          s7, sp, 272
1005:             bge          t5, sp, 1021f
                  bge          s6, s4, 1018f
                  bgeu         s7, s5, 1008f
1008:             bge          zero, t5, 1017f
                  bge          t1, a1, 1022f
                  nop
                  nop
                  ori          sp, t0, -794
                  sll          s1, s9, s4
                  srli         s6, gp, 6
                  srl          gp, zero, tp
                  or           ra, a2, t6
1017:             srai         a2, a4, 6
1018:             srli         gp, a5, 15
1019:             srai         a6, a2, 13
                  bltu         s3, s0, 1021f
1021:             addi         s1, sp, 2002
1022:             lui          t5, 37831
                  sltu         s1, a1, s9
                  add          ra, t0, s4
                  add          s4, t4, t0
                  bltu         t5, sp, 1036f
                  sltu         s4, a1, s3
                  add          t2, t6, s2
                  slt          s3, t1, s8
                  xori         s4, t4, 847
                  sub          t4, sp, t4
                  slli         s11, s2, 18
                  slti         s1, s9, -428
                  auipc        s8, 675021
                  and          a1, a1, a6
1036:             blt          s1, t3, 1053f
                  blt          s10, s2, 1050f
                  sub          tp, s5, t5
                  xori         t2, a6, 815
                  srl          a4, s5, a6
                  bltu         s6, t6, 1044f
                  add          s5, a3, s9
                  bne          t5, s9, 1047f
1044:             srli         a5, tp, 1
                  xor          s7, s0, zero
                  add          s5, t2, t2
1047:             slti         gp, a7, -385
                  bne          t6, s4, 1056f
                  slt          s8, ra, a7
1050:             blt          a3, t5, 1066f
                  bge          s11, s3, 1054f
                  bge          a7, t0, 1056f
1053:             and          t0, t3, s0
1054:             slt          t0, t5, a2
                  slti         s1, t6, -495
1056:             beq          t1, t0, 1062f
                  bgeu         a1, s4, 1066f
                  srai         s7, s6, 3
                  xor          t6, sp, t2
                  sra          zero, t4, tp
                  srai         s6, a5, 31
1062:             nop
                  andi         a0, s4, 92
                  sub          a1, zero, t6
                  xori         sp, t5, -178
1066:             slt          a7, a0, s9
                  srai         t2, t3, 9
                  srli         s5, s10, 22
                  slti         a7, a0, -445
                  sub          t3, t6, gp
                  slti         t0, s4, -1485
                  srli         zero, a6, 11
                  and          a1, sp, a7
                  srli         sp, sp, 18
                  andi         t6, t0, 592
                  or           sp, s1, s6
                  and          zero, s9, t2
                  xori         ra, tp, 656
                  sltiu        t5, gp, -232
                  xori         s5, t6, -1081
                  srai         a3, a3, 25
                  srai         ra, s9, 25
                  slli         a0, a0, 18
                  ori          s5, a7, -1960
                  xori         ra, t0, 1965
                  xor          s4, a6, a6
                  beq          s0, t2, 1099f
                  and          t1, s1, t5
                  addi         s5, a4, 351
                  addi         t5, s10, -1463
                  sltu         tp, s8, t3
                  bge          a2, s9, 1109f
                  slli         tp, gp, 26
                  addi         s9, a3, 1334
                  lui          gp, 200723
                  xori         a7, a3, -1182
                  add          t6, s1, a3
                  xori         s8, s9, 1441
1099:             slt          ra, a1, a1
                  bge          s6, a1, 1116f
                  srai         s11, a3, 11
                  srl          gp, a3, a4
                  slt          s7, t5, a6
                  add          a1, a0, t1
                  bge          t0, s2, 1108f
                  auipc        t4, 816683
                  nop
1108:             sll          gp, t3, s8
1109:             lui          a1, 235486
                  slt          t1, s8, a0
                  bgeu         tp, s5, 1115f
                  or           zero, s2, t4
                  sub          t4, t6, tp
                  srli         a0, s0, 12
1115:             sltiu        s9, t1, 538
1116:             blt          s6, s11, 1128f
                  slli         a2, a3, 17
                  sltu         t3, a3, t6
                  sltiu        a7, s2, 780
                  nop
                  sub          t6, s6, s0
                  sltiu        s3, s1, 760
                  bge          s8, s9, 1132f
                  andi         ra, s3, -1986
                  sltu         t5, s8, s10
                  addi         s5, zero, -1597
                  xor          t3, t1, s10
1128:             sra          s6, t6, t1
                  srai         a2, ra, 6
                  andi         tp, a1, 93
                  slt          a7, s3, gp
1132:             addi         a5, a4, 1865
                  or           s1, s4, s2
                  slli         t6, s11, 23
                  auipc        s9, 3224
                  sra          a4, s11, t6
                  sub          a0, s9, gp
sub_4_17:         jal          ra, 4f
0:                jal          ra, 8f
1:                jal          t5, 3f
2:                jal          ra, 9f
3:                jal          t0, 7f
4:                jal          ra, 6f
5:                jal          t1, 2b
6:                jal          ra, 5b
7:                jal          a2, 0b
8:                jal          t1, 12f
9:                jal          s8, 14f
10:               jal          ra, 11f
11:               jal          ra, 13f
12:               jal          a4, 15f
13:               jal          ra, 1b
14:               jal          s3, 10b
15:               add          a4, t0, a4
                  bge          gp, a6, 1153f
                  beq          a1, zero, 1152f
                  xor          s3, s6, a7
                  and          s11, sp, t4
                  slt          a5, s6, s1
                  bgeu         s8, s3, 1161f
                  ori          gp, t6, -682
                  nop
                  sltu         s6, t2, a7
                  slli         s6, s7, 3
                  slti         gp, s4, -1987
                  slti         zero, a3, -2015
                  blt          s0, t1, 1164f
                  add          a7, a6, a6
1152:             or           a0, a3, a7
1153:             bltu         s0, t3, 1157f
                  xor          a7, gp, gp
                  sra          t6, t5, tp
                  add          s6, tp, t0
1157:             beq          s2, s5, 1160f
                  and          t3, s8, s5
                  ori          a3, s6, -1905
1160:             sltiu        a2, a1, 1077
1161:             sll          s9, zero, s10
                  andi         s1, s5, -1767
                  sll          s9, s0, a4
1164:             slli         t3, tp, 13
                  addi         s6, a2, -86
                  bne          a6, t0, 1185f
                  bne          s8, s8, 1183f
                  srli         zero, a3, 17
                  blt          s7, s10, 1172f
                  xori         t3, s8, -1399
                  sltiu        a6, t3, 671
1172:             srai         a4, gp, 1
                  auipc        s5, 489694
                  slli         tp, a1, 12
                  ori          s5, s11, -1552
                  sltu         t5, a0, s9
                  addi         a2, a7, -250
                  blt          t3, a2, 1187f
                  add          a5, a3, t6
                  srli         s3, t4, 2
                  ori          s11, a2, -597
                  sll          s3, a0, s10
1183:             slli         tp, t5, 16
                  sltu         t2, gp, s0
1185:             auipc        s11, 670985
                  sltiu        a6, a0, -1409
1187:             sub          s6, ra, sp
                  add          s3, t1, t3
                  addi         a4, a7, 414
                  srai         a3, a2, 29
                  sra          a7, t2, s0
                  add          sp, a6, gp
                  bgeu         t2, a1, 1203f
                  srai         t3, a4, 26
                  sub          a1, tp, s1
                  srli         s7, s0, 8
                  addi         a2, t2, 898
                  xori         sp, s3, 1968
                  andi         gp, t4, -184
                  sra          zero, a4, ra
                  slti         s8, s1, 778
                  srl          t4, a1, t5
1203:             bltu         a5, s2, 1214f
                  srli         a5, s0, 7
                  xor          t5, s9, s5
                  or           a6, s6, a2
                  bne          s9, s9, 1210f
                  or           t5, s9, a0
                  ori          t6, a2, -422
1210:             and          a0, sp, s11
                  sll          gp, t4, t3
                  slli         a3, s8, 29
                  slt          s1, a4, s9
1214:             sub          gp, a6, s5
                  slti         s7, s11, -853
                  andi         a2, a2, 621
                  auipc        t2, 319858
                  xori         t0, s8, -933
                  ori          gp, s8, -1535
                  sra          a3, s10, s10
                  and          s11, t4, a0
                  add          a3, a2, s1
                  sub          t2, t6, s7
                  beq          t4, t5, 1237f
                  srl          s5, t1, s9
                  sltiu        s11, ra, 1067
                  beq          a1, t3, 1237f
                  bltu         a7, t1, 1236f
                  ori          t2, s3, 1789
                  bge          tp, t6, 1234f
                  xor          t6, t3, a5
                  slti         gp, s8, -880
                  slti         t2, a0, -471
1234:             lui          t1, 829260
                  andi         a1, t4, 112
1236:             xori         s3, a5, -126
1237:             sub          s4, s6, s9
                  slti         a5, gp, -588
                  sltiu        zero, sp, -1240
                  lw           ra, 4(s2)
                  addi         s2, s2, 40
                  nop
                  and          s11, sp, a4
                  sltu         s8, t0, tp
                  addi         tp, a7, -1946
                  slt          t1, t5, s11
                  sltiu        t1, s4, 1173
                  sltiu        sp, a6, -873
1763:             addi x13, x1, 1
1763:             jalr x13, x13, 0
sub_3:            srl          t6, s3, t6
                  add          s5, s2, a1
                  sra          a4, a6, tp
                  srl          tp, tp, a7
                  addi         s2, s2, -48
                  ori          t6, a1, 1088
                  srai         s1, s11, 7
                  sub          a1, s2, s1
                  sw           ra, 4(s2)
                  slli         a1, s9, 5
                  xor          a5, s2, sp
sub_3_6:          jal          ra, 14f
0:                jal          tp, 18f
1:                jal          tp, 16f
2:                jal          ra, 11f
3:                jal          ra, 2b
4:                jal          ra, 10f
5:                jal          ra, 15f
6:                jal          ra, 9f
7:                jal          ra, 6b
8:                jal          ra, 4b
9:                jal          gp, 0b
10:               jal          ra, 5b
11:               jal          gp, 19f
12:               jal          ra, 7b
13:               jal          ra, 17f
14:               jal          ra, 12b
15:               jal          ra, 1b
16:               jal          t1, 3b
17:               jal          gp, 8b
18:               jal          t4, 13b
19:               slti         s6, sp, 733
sub_3_3:          jal          ra, 10f
0:                jal          ra, 11f
1:                jal          t1, 9f
2:                jal          ra, 8f
3:                jal          ra, 2b
4:                jal          gp, 12f
5:                jal          ra, 13f
6:                jal          ra, 7f
7:                jal          ra, 3b
8:                jal          ra, 5b
9:                jal          ra, 4b
10:               jal          t1, 1b
11:               jal          t0, 6b
12:               jal          ra, 0b
13:               slli         sp, tp, 14
sub_3_8:          jal          ra, 5f
0:                jal          t3, 11f
1:                jal          tp, 3f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          t1, 13f
5:                jal          s6, 0b
6:                jal          s4, 9f
7:                jal          gp, 12f
8:                jal          t6, 1b
9:                jal          ra, 10f
10:               jal          a5, 2b
11:               jal          s8, 8b
12:               jal          s9, 6b
13:               add          s5, s0, t6
sub_3_5:          jal          ra, 9f
0:                jal          ra, 5f
1:                jal          ra, 6f
2:                jal          t0, 20f
3:                jal          t1, 18f
4:                jal          ra, 10f
5:                jal          ra, 15f
6:                jal          ra, 7f
7:                jal          sp, 4b
8:                jal          ra, 3b
9:                jal          ra, 8b
10:               jal          s5, 13f
11:               jal          ra, 0b
12:               jal          s9, 17f
13:               jal          ra, 21f
14:               jal          t1, 23f
15:               jal          ra, 16f
16:               jal          ra, 12b
17:               jal          a5, 1b
18:               jal          s5, 19f
19:               jal          ra, 11b
20:               jal          ra, 14b
21:               jal          ra, 22f
22:               jal          ra, 2b
23:               srai         s1, s2, 0
sub_3_0:          jal          ra, 2f
0:                jal          t4, 6f
1:                jal          ra, 8f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          tp, 9f
6:                jal          ra, 4b
7:                jal          t1, 1b
8:                jal          t1, 11f
9:                jal          ra, 3b
10:               jal          ra, 5b
11:               sra          t5, a5, ra
sub_3_2:          jal          ra, 24f
0:                jal          ra, 16f
1:                jal          ra, 21f
2:                jal          t1, 26f
3:                jal          ra, 14f
4:                jal          s1, 25f
5:                jal          ra, 22f
6:                jal          t1, 23f
7:                jal          a2, 12f
8:                jal          t1, 9f
9:                jal          tp, 19f
10:               jal          ra, 4b
11:               jal          t1, 0b
12:               jal          ra, 15f
13:               jal          ra, 11b
14:               jal          ra, 13b
15:               jal          ra, 20f
16:               jal          a0, 18f
17:               jal          ra, 2b
18:               jal          ra, 10b
19:               jal          t6, 29f
20:               jal          ra, 3b
21:               jal          ra, 17b
22:               jal          ra, 27f
23:               jal          ra, 28f
24:               jal          t1, 1b
25:               jal          ra, 6b
26:               jal          ra, 7b
27:               jal          t3, 8b
28:               jal          tp, 5b
29:               xor          s5, t5, s5
sub_3_4:          jal          ra, 2f
0:                jal          ra, 8f
1:                jal          t1, 26f
2:                jal          gp, 24f
3:                jal          t1, 23f
4:                jal          t1, 9f
5:                jal          ra, 22f
6:                jal          ra, 3b
7:                jal          t1, 25f
8:                jal          t1, 1b
9:                jal          ra, 17f
10:               jal          t1, 14f
11:               jal          ra, 12f
12:               jal          t1, 21f
13:               jal          sp, 5b
14:               jal          t1, 0b
15:               jal          ra, 6b
16:               jal          a4, 19f
17:               jal          t1, 11b
18:               jal          t1, 10b
19:               jal          ra, 15b
20:               jal          t1, 18b
21:               jal          ra, 16b
22:               jal          s11, 4b
23:               jal          t1, 7b
24:               jal          ra, 13b
25:               jal          ra, 20b
26:               andi         a7, s7, 737
sub_3_7:          jal          ra, 0f
0:                jal          t1, 21f
1:                jal          t1, 7f
2:                jal          ra, 24f
3:                jal          ra, 8f
4:                jal          t4, 13f
5:                jal          t1, 4b
6:                jal          ra, 9f
7:                jal          a6, 10f
8:                jal          ra, 19f
9:                jal          t1, 23f
10:               jal          ra, 2b
11:               jal          t1, 1b
12:               jal          ra, 16f
13:               jal          a1, 14f
14:               jal          t1, 18f
15:               jal          ra, 5b
16:               jal          gp, 22f
17:               jal          s7, 11b
18:               jal          ra, 20f
19:               jal          t1, 15b
20:               jal          gp, 12b
21:               jal          t1, 3b
22:               jal          t1, 6b
23:               jal          sp, 17b
24:               or           t0, a5, s4
sub_3_1:          jal          ra, 20f
0:                jal          tp, 15f
1:                jal          ra, 23f
2:                jal          t1, 22f
3:                jal          t2, 7f
4:                jal          t0, 19f
5:                jal          t1, 21f
6:                jal          ra, 10f
7:                jal          ra, 18f
8:                jal          ra, 1b
9:                jal          t1, 11f
10:               jal          s5, 12f
11:               jal          gp, 17f
12:               jal          ra, 5b
13:               jal          t1, 6b
14:               jal          ra, 16f
15:               jal          t1, 8b
16:               jal          t1, 24f
17:               jal          t1, 13b
18:               jal          ra, 0b
19:               jal          ra, 14b
20:               jal          sp, 9b
21:               jal          ra, 2b
22:               jal          t1, 3b
23:               jal          t0, 4b
24:               sltiu        s3, a3, 102
                  sub          a5, s9, t5
                  xori         t4, sp, -2039
                  slt          t2, gp, tp
                  add          s9, s8, s3
                  srai         ra, zero, 7
                  srai         t0, t3, 16
                  bge          zero, s8, 8f
                  addi         s8, a4, 1455
8:                beq          s4, s10, 24f
                  sltiu        t2, a4, -1933
                  bgeu         s8, a4, 16f
                  auipc        s9, 239212
                  auipc        a1, 664602
                  sra          t6, a1, t6
                  srli         t5, a3, 9
                  bne          a3, zero, 21f
16:               or           s8, s9, s0
                  xor          a1, s5, a6
                  slti         a4, s2, 1643
                  auipc        s4, 249494
                  sltiu        a3, t5, 1392
21:               bltu         s0, a5, 33f
                  sra          s6, sp, a5
                  sll          sp, t4, gp
24:               lui          a6, 902046
                  or           a4, s6, a2
                  sub          a7, s0, ra
                  beq          s6, s9, 35f
                  slt          s4, t2, t0
                  nop
                  srai         s5, t2, 16
                  beq          gp, gp, 34f
                  nop
33:               slti         sp, s8, 71
34:               xori         s3, s1, -1498
35:               andi         s11, s1, 1620
                  addi         a5, s0, -3
                  auipc        s1, 118890
                  bge          a5, s2, 41f
                  add          s1, tp, s6
                  sltiu        a2, t0, 937
41:               sra          t3, a4, a4
                  slt          a4, tp, a5
                  sltu         t2, a5, gp
                  slli         s1, s4, 18
                  srai         t4, zero, 28
                  sltu         s7, t1, ra
                  andi         t1, a2, -1899
                  addi         a5, s1, -699
                  or           t4, t0, a6
                  lui          t2, 566833
                  auipc        t4, 676537
                  addi         s3, tp, 1513
                  sub          t2, zero, s4
                  bge          s8, t6, 62f
                  or           s8, a4, a3
                  and          s5, a4, ra
                  nop
                  blt          a7, a6, 78f
                  auipc        s8, 313008
                  bgeu         a1, s5, 75f
                  xor          s7, a0, a5
62:               blt          a1, s10, 64f
                  srai         s5, t4, 16
64:               bltu         a3, s3, 75f
                  ori          a4, t0, -486
                  bge          s0, s6, 74f
                  bge          s1, sp, 86f
                  slt          zero, a5, a2
                  lui          a7, 542670
                  sltu         s7, zero, a7
                  beq          t5, a4, 78f
                  or           t0, a6, t0
                  srl          t3, t3, s3
74:               slt          a1, s4, a6
75:               beq          s0, s8, 84f
                  ori          s8, ra, 217
                  ori          s5, s1, -1993
78:               srli         tp, s3, 2
                  addi         t0, a7, -898
                  srli         t0, t4, 10
                  and          s7, s3, a0
                  slt          a0, tp, a3
                  and          s11, t4, a0
84:               slli         s9, s3, 10
                  beq          ra, s4, 91f
86:               slti         t6, s5, 290
                  bltu         t5, t6, 101f
                  sltiu        a3, tp, 1351
                  srl          a3, s11, s3
                  srl          a1, s10, t6
91:               lui          t0, 392635
                  nop
                  sltu         a1, a3, ra
                  beq          s11, a6, 96f
                  add          a2, ra, s3
96:               sub          s8, t5, a1
                  sra          a3, t3, t1
                  slti         a6, a7, -219
                  sra          s7, a2, zero
                  add          zero, t0, a4
101:              auipc        s6, 249
                  and          s4, a4, ra
                  andi         s4, a1, -126
                  auipc        a6, 697055
                  auipc        s9, 912551
                  sub          t3, a1, s10
                  srl          t3, a5, zero
                  srli         s8, t2, 6
                  xori         tp, s9, -729
                  ori          a0, zero, 685
                  slt          a7, t6, s9
                  lui          s3, 50699
                  add          s11, s9, t5
                  sll          t4, gp, a1
                  bgeu         s7, sp, 126f
                  sltiu        ra, a1, 1947
                  sltiu        a4, s0, -746
                  beq          a7, tp, 124f
                  srl          t2, t0, t1
                  add          zero, s7, s2
                  ori          t6, t5, -193
                  sub          a3, a5, s1
                  bltu         a0, s7, 140f
124:              sltu         sp, a6, s6
                  blt          s2, s3, 141f
126:              andi         t5, t4, 1029
                  bge          s5, s6, 141f
                  ori          sp, a3, -1386
                  blt          zero, a0, 137f
                  sltu         t5, a4, a1
                  sltu         s5, s1, gp
                  addi         s6, ra, -1415
                  ori          zero, t0, -258
                  bltu         s2, a0, 142f
                  blt          t4, t2, 152f
                  add          s11, s9, s0
137:              sltu         tp, s4, a6
                  sll          a1, t6, a7
                  srl          t1, a7, a0
140:              slti         a0, a3, -1939
141:              slt          s11, zero, s5
142:              ori          t1, t3, 383
                  and          a6, a3, s7
                  ori          t2, t3, 1742
                  beq          ra, sp, 149f
                  blt          gp, tp, 150f
                  slti         t4, s2, -698
                  or           s7, a0, s8
149:              lui          zero, 677665
150:              blt          t6, s5, 154f
                  and          ra, s1, s7
152:              ori          a0, s5, -951
                  nop
154:              lui          a6, 68891
                  nop
                  blt          t2, t4, 164f
                  or           a6, t1, gp
                  andi         a7, s3, -1998
                  slli         t6, a4, 6
                  beq          a1, t5, 177f
                  andi         s7, s10, -991
                  sra          a5, t2, s5
                  add          gp, s4, gp
164:              srl          s9, t5, s7
                  sub          tp, s11, a4
                  nop
                  srli         t5, a6, 0
                  bge          t4, s9, 171f
                  srai         t0, a2, 2
                  slt          s8, s5, s0
171:              sltiu        t5, s6, -321
                  srl          a3, s0, t0
                  xor          t4, a2, zero
                  bge          a5, ra, 185f
                  bne          s11, ra, 177f
                  xor          a7, a7, a2
177:              lui          a0, 271800
                  srli         a4, s6, 8
                  bge          s1, s3, 187f
                  sub          s6, s6, s5
                  and          s7, t4, a5
                  srl          tp, s1, t5
                  and          gp, a7, s3
                  srl          t1, t4, t5
185:              andi         zero, t1, -533
                  sub          t1, s0, tp
187:              bgeu         a5, t1, 189f
                  slti         gp, s8, -661
189:              add          sp, s3, a2
                  sltu         a3, t3, ra
                  slt          t5, s3, t6
                  sltiu        s4, s4, 616
                  bltu         t5, t1, 213f
                  xori         a3, a3, 429
                  xori         s9, a4, -1919
                  srai         s8, ra, 8
                  sub          s5, a2, s11
                  slti         zero, t3, -509
                  andi         gp, a5, -718
                  sll          t3, a7, s8
                  srai         t2, s10, 15
                  bgeu         s3, a5, 219f
                  bge          a0, s3, 207f
                  nop
                  lui          a4, 224257
                  ori          a1, t0, 1985
207:              bne          a1, a2, 221f
                  auipc        a1, 708498
                  auipc        t0, 187241
                  sub          s4, tp, gp
                  sltu         t5, a4, t3
                  la           ra, sub_5
                  addi         ra, ra, -297
                  nop
                  or           s11, s5, gp
                  xori         t1, s4, -530
                  sub          s1, ra, a0
                  sra          t6, a7, s1
sub_3_j5:         jalr         ra, ra, 297 #jump sub_3 -> sub_5
                  or           t5, t6, a6
                  beq          s10, a5, 216f
                  sra          t5, s1, s1
                  addi         t1, t1, -1235
213:              nop
                  sll          s7, a3, a1
                  beq          a6, s6, 218f
216:              sltiu        s4, t0, 1780
                  and          s8, s2, s7
218:              lui          s3, 403404
219:              srai         s7, t4, 30
                  and          gp, s3, tp
221:              bne          a0, zero, 229f
                  sltu         s9, s11, tp
                  blt          t4, sp, 239f
                  sltu         t1, s6, s5
                  auipc        s9, 959725
                  and          a3, t2, a5
                  sub          t5, a0, s1
                  or           zero, s4, a4
229:              add          s6, s10, s6
                  xori         t6, tp, 1051
                  or           a1, t2, s7
                  add          a2, ra, s8
                  sltu         sp, s7, t5
                  srli         s7, t6, 3
                  bltu         s11, t0, 249f
                  xori         s9, gp, -338
                  xor          t5, s1, s8
                  slli         zero, a4, 31
239:              sra          t1, t1, s9
                  slti         t3, s7, -1736
                  blt          t2, tp, 243f
                  beq          a0, t3, 257f
243:              bltu         tp, s2, 249f
                  sltiu        s11, s6, 1516
                  sra          tp, s5, s11
                  sll          s3, a1, sp
                  srai         t1, s3, 22
                  andi         a3, t6, 1374
249:              slt          zero, t2, a0
                  sltu         t2, a7, gp
                  sltu         a0, a5, t4
                  sra          s6, t0, gp
                  or           gp, s11, zero
                  sll          a5, s7, s11
                  auipc        a6, 602872
                  srl          t0, t2, s11
257:              blt          t1, a7, 273f
                  auipc        a5, 822023
                  slti         a4, t1, -323
                  slti         a5, t0, 872
                  srl          t6, a1, a2
                  slti         a5, a4, 1075
                  slli         a2, s10, 23
                  lui          a6, 89707
                  blt          a0, t6, 271f
                  blt          s2, a3, 272f
                  srli         a3, t5, 26
                  sltiu        t6, a2, 1081
                  xori         t4, s4, 1294
                  blt          s9, a3, 281f
271:              addi         a2, t3, 712
272:              lui          a4, 212890
273:              or           a6, s2, s8
                  xori         gp, s3, 2014
                  slti         s3, t3, 464
                  slti         s9, s8, 407
                  beq          s11, s9, 296f
                  srl          a6, s8, s5
                  sub          s3, t0, t2
                  sll          t6, s0, sp
281:              sra          sp, s7, a0
                  add          s9, s2, a4
                  bne          t0, sp, 295f
                  sub          a3, s9, t4
                  sra          a6, a2, a2
                  or           s11, s2, t3
                  sltu         a0, s8, a7
                  ori          s8, s8, 571
                  andi         a0, a6, 1997
                  nop
                  or           a3, a6, s0
                  bge          s4, a0, 300f
                  addi         t1, a4, 1351
                  srai         t3, t1, 3
295:              add          tp, s11, s9
296:              nop
                  addi         t5, sp, -1239
                  addi         t5, sp, -286
                  ori          t6, t6, 278
300:              bltu         sp, s1, 307f
                  sll          t5, zero, a4
                  sll          sp, s5, t1
                  and          s3, s3, s9
                  ori          s3, t0, -674
                  andi         a2, a6, 882
                  srl          t0, t5, t0
307:              slli         t4, s9, 13
                  ori          t4, s7, 1642
                  beq          gp, a5, 318f
                  bne          tp, a7, 318f
                  ori          gp, a2, -1527
                  bge          s1, s8, 324f
                  slti         t3, ra, 969
                  slli         ra, a2, 6
                  bne          a0, sp, 317f
                  sub          s1, s0, a0
317:              andi         s1, a3, 1124
318:              auipc        ra, 139394
                  sltiu        t4, s10, -1799
                  bltu         s9, t1, 339f
                  bgeu         tp, t3, 337f
                  sltiu        a3, zero, -819
                  add          t0, t5, gp
324:              sltiu        t0, a5, -1636
                  ori          a2, zero, 1668
                  bge          a5, s6, 332f
                  blt          s7, t6, 338f
                  bltu         s7, t0, 343f
                  slti         zero, zero, -402
                  beq          s0, t4, 332f
                  slli         a4, ra, 0
332:              srai         s6, a6, 28
                  xor          sp, t3, zero
                  srli         s11, a2, 28
                  sra          a0, a4, a7
                  sll          s3, tp, t3
337:              xori         tp, a3, -546
338:              bne          s6, a3, 358f
339:              xor          s11, s2, t2
                  sub          s7, t5, zero
                  srai         a0, a3, 18
                  sltu         a2, tp, s4
343:              xori         s3, sp, -109
                  slt          t4, t3, s1
                  slti         sp, t4, -1614
                  srli         a7, s9, 14
                  sub          t1, a5, ra
                  ori          tp, a1, 623
                  lui          s1, 24662
                  xor          s9, t3, s7
                  nop
                  ori          sp, s9, 707
                  slli         s3, a2, 2
                  xor          s9, s3, s11
                  sltiu        s7, s6, -558
                  bge          a2, s7, 362f
                  or           s7, a2, a0
358:              slli         a0, a6, 27
                  sltiu        a7, a2, 813
                  sub          t0, s9, t2
                  srai         a7, t4, 31
362:              blt          s1, s3, 371f
                  srl          s3, s8, s1
                  xori         s11, s7, 851
                  slli         t1, a1, 3
                  slli         sp, t6, 20
                  or           a1, gp, s6
                  xori         tp, t0, -588
                  auipc        s9, 149249
                  bge          s2, a1, 387f
371:              beq          a6, t6, 379f
                  auipc        t5, 1011796
                  bgeu         tp, s2, 377f
                  lui          gp, 172137
                  slti         a6, a4, -1871
                  xori         t2, s7, -804
377:              bltu         s7, a2, 385f
                  slt          s5, sp, t5
379:              sra          t4, s0, t4
                  beq          s5, t2, 394f
                  xori         t5, a6, -434
                  sltu         a0, sp, s0
                  auipc        a1, 275739
                  or           a5, a5, s3
385:              andi         s7, gp, -296
                  addi         a7, a0, -69
387:              sltu         a1, gp, a6
                  sra          s3, a5, gp
                  sltu         gp, s0, s7
                  lui          s5, 647527
                  beq          gp, gp, 399f
                  slti         a7, tp, -780
                  add          a4, t1, t0
394:              nop
                  srai         t3, a3, 24
                  srai         t3, t4, 26
                  sltiu        a6, s3, -1341
                  srai         t4, s7, 4
399:              bge          gp, sp, 415f
                  bne          a5, s2, 414f
                  bne          a5, a4, 404f
                  blt          s7, s7, 410f
                  bltu         s2, s3, 409f
404:              slt          t4, t1, s7
                  slli         s1, a6, 2
                  srl          tp, a4, a5
                  srli         t4, t6, 18
                  sll          s4, s5, a2
409:              bgeu         s2, a7, 420f
410:              sll          t1, tp, s3
                  sltiu        t4, zero, -498
                  slt          t2, ra, a1
                  sub          s5, s3, gp
414:              xor          gp, s3, s10
415:              or           sp, a5, tp
                  srl          s5, a5, zero
                  and          a7, s11, s1
                  ori          a4, a2, 896
                  bne          s1, s5, 436f
420:              slli         s11, a5, 0
                  nop
                  sub          tp, s7, s8
                  add          s4, t1, s8
                  sltu         a1, a1, a4
                  xor          s6, a4, t6
                  slt          s6, t2, s1
                  or           t5, s9, t5
                  sub          ra, s10, s8
                  slt          t5, t4, s11
                  sub          s3, t1, t6
                  beq          t2, a1, 434f
                  sltu         s5, s2, s0
                  bltu         s10, s1, 439f
434:              add          s6, s4, zero
                  and          a4, s0, gp
436:              sltiu        s3, s10, -371
                  auipc        t1, 219775
                  bgeu         a1, s2, 445f
439:              bne          a6, a0, 447f
                  sra          t5, s4, a4
                  sll          t3, s0, a6
                  addi         s9, s1, 2025
                  lui          t6, 321455
                  sub          s3, t5, a6
445:              add          t6, s9, s2
                  or           zero, zero, t1
447:              sra          s6, s11, s7
                  slli         t2, tp, 27
                  ori          a3, s7, 1243
                  lw           ra, 4(s2)
                  and          s4, s3, s3
                  xor          s8, s1, s11
                  sltiu        a3, t1, -2024
                  addi         s2, s2, 48
                  srli         t2, s0, 31
678:              addi x7, x1, 1
678:              jalr x7, x7, 0
sub_2:            addi         t3, s10, -1248
                  or           tp, s0, t2
                  and          s8, s0, a5
                  addi         s2, s2, -44
                  auipc        t5, 854891
                  sw           ra, 4(s2)
                  sub          s11, a5, a5
                  sra          gp, a0, t0
                  xori         a1, a7, 79
                  la           t6, sub_3
                  xori         s6, s3, 1215
                  addi         t6, t6, -264
                  srai         s4, t4, 30
                  srl          t3, a4, gp
                  slli         s7, s5, 2
                  andi         a6, s4, 1248
                  srai         s8, s3, 2
                  sltu         t4, gp, s1
                  slt          s9, s4, s4
                  slti         ra, s6, -1265
                  sltu         s9, s3, s1
sub_2_j4:         jalr         ra, t6, 265 #jump sub_2 -> sub_3
sub_2_1:          jal          ra, 1f
0:                jal          ra, 3f
1:                jal          t1, 10f
2:                jal          ra, 15f
3:                jal          ra, 5f
4:                jal          s6, 11f
5:                jal          ra, 2b
6:                jal          ra, 13f
7:                jal          ra, 12f
8:                jal          t1, 4b
9:                jal          s1, 7b
10:               jal          t1, 9b
11:               jal          ra, 16f
12:               jal          t1, 8b
13:               jal          t1, 0b
14:               jal          ra, 6b
15:               jal          ra, 18f
16:               jal          ra, 17f
17:               jal          ra, 14b
18:               addi         t3, s0, -613
sub_2_4:          jal          ra, 6f
0:                jal          ra, 15f
1:                jal          t6, 0b
2:                jal          ra, 4f
3:                jal          ra, 13f
4:                jal          ra, 14f
5:                jal          tp, 12f
6:                jal          s4, 8f
7:                jal          ra, 16f
8:                jal          s8, 3b
9:                jal          s8, 11f
10:               jal          ra, 7b
11:               jal          ra, 5b
12:               jal          ra, 10b
13:               jal          t1, 1b
14:               jal          ra, 9b
15:               jal          ra, 2b
16:               srl          a3, gp, t2
sub_2_3:          jal          ra, 13f
0:                jal          t0, 3f
1:                jal          s4, 9f
2:                jal          ra, 21f
3:                jal          s6, 24f
4:                jal          s1, 0b
5:                jal          ra, 19f
6:                jal          sp, 17f
7:                jal          ra, 23f
8:                jal          s8, 4b
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          ra, 18f
12:               jal          t1, 14f
13:               jal          ra, 7b
14:               jal          ra, 2b
15:               jal          t1, 10b
16:               jal          a5, 5b
17:               jal          t1, 16b
18:               jal          tp, 20f
19:               jal          t1, 8b
20:               jal          a6, 12b
21:               jal          ra, 1b
22:               jal          ra, 15b
23:               jal          t1, 22b
24:               add          t1, t3, s11
sub_2_2:          jal          ra, 10f
0:                jal          t1, 5f
1:                jal          ra, 7f
2:                jal          t3, 13f
3:                jal          ra, 14f
4:                jal          t1, 0b
5:                jal          ra, 12f
6:                jal          ra, 1b
7:                jal          t1, 3b
8:                jal          ra, 15f
9:                jal          t1, 6b
10:               jal          ra, 11f
11:               jal          t6, 2b
12:               jal          s9, 9b
13:               jal          ra, 4b
14:               jal          s1, 8b
15:               sll          a2, ra, t5
sub_2_0:          jal          ra, 12f
0:                jal          sp, 8f
1:                jal          t1, 5f
2:                jal          ra, 1b
3:                jal          t1, 9f
4:                jal          ra, 3b
5:                jal          ra, 13f
6:                jal          a5, 2b
7:                jal          t3, 0b
8:                jal          ra, 15f
9:                jal          ra, 14f
10:               jal          ra, 4b
11:               jal          t1, 6b
12:               jal          ra, 10b
13:               jal          ra, 7b
14:               jal          t1, 11b
15:               nop
                  and          t2, a4, zero
                  nop
                  sltu         t3, zero, a7
                  andi         s4, t5, 297
                  add          t4, s11, a1
                  addi         t0, s9, 1448
                  slti         s4, s10, -156
                  bne          t6, a1, 24f
                  sra          s1, zero, s8
                  beq          tp, a1, 18f
                  slt          t2, a0, tp
                  slli         zero, t5, 30
                  or           t5, t0, s3
                  or           s8, s2, t1
                  bge          tp, s0, 29f
                  bne          s3, t6, 28f
                  andi         s9, tp, -1120
                  beq          t4, s8, 31f
18:               sub          a6, s3, t6
                  beq          a0, s5, 21f
                  sll          s1, a3, t3
21:               or           gp, s4, t1
                  sltiu        a2, s11, 464
                  sll          zero, t3, t2
24:               sra          t4, a4, s4
                  slt          s6, a7, a5
                  bge          s1, zero, 45f
                  sll          a2, gp, a7
28:               sll          s4, s11, gp
29:               slli         a7, s10, 20
                  sltu         s9, a4, a6
31:               bgeu         ra, s8, 46f
                  srli         tp, t4, 14
                  srai         t4, s10, 31
                  beq          s2, tp, 49f
                  bge          t1, s0, 37f
                  bne          a1, a2, 45f
37:               and          a0, s9, a0
                  sltiu        a7, s7, -229
                  addi         t5, t4, 1834
                  sltiu        gp, s1, 1230
                  addi         gp, s10, 1923
                  sltu         t3, s11, t2
                  sra          tp, a5, t1
                  bgeu         s0, s3, 48f
45:               sltu         s7, t1, s11
46:               slt          t0, zero, t4
                  sra          s7, t6, t4
48:               sltu         t4, sp, s10
49:               xor          sp, zero, s11
                  and          a1, ra, a7
                  and          s6, s9, s2
                  slli         t2, ra, 13
                  srl          a6, tp, a6
                  or           zero, s2, s5
                  sll          s9, t6, a5
                  beq          s9, s9, 57f
57:               bge          a2, s2, 77f
                  auipc        t6, 489173
                  sltu         ra, t6, ra
                  addi         t6, s1, -331
                  auipc        t6, 723267
                  beq          t3, s4, 65f
                  sltiu        zero, a7, 798
                  srli         a7, s1, 18
65:               srl          s5, s5, tp
                  and          sp, a6, t6
                  xori         s8, t5, 840
                  lui          ra, 1023834
                  sra          zero, a4, t0
                  bge          t2, zero, 85f
                  srli         tp, s0, 2
                  bgeu         t3, a7, 76f
                  xori         a0, a7, -123
                  sra          gp, s10, t5
                  andi         tp, a1, -2038
76:               sll          a4, t2, t2
77:               beq          s5, a1, 93f
                  beq          s2, s0, 87f
                  srl          a0, gp, a5
                  bltu         s1, a5, 89f
                  blt          s7, a7, 90f
                  slli         a5, s11, 2
                  bge          s2, t5, 88f
                  sll          s1, s8, s11
85:               beq          s3, s11, 104f
                  bge          s6, a5, 92f
87:               or           s6, t1, a0
88:               srl          t3, a4, s5
89:               bgeu         gp, s4, 109f
90:               andi         t3, s11, 1685
                  addi         zero, a4, -1670
92:               nop
93:               auipc        s4, 480723
                  nop
                  sub          s3, sp, tp
                  bgeu         s8, a1, 115f
                  or           s3, s9, s3
                  srl          zero, t4, s2
                  slti         t4, gp, -645
                  srai         s3, s8, 11
                  beq          s11, s10, 109f
                  sub          t6, sp, s2
                  srai         a5, s6, 21
104:              bge          sp, t4, 110f
                  bne          ra, t6, 107f
                  sub          ra, s11, t3
107:              auipc        s5, 16559
                  xori         s4, t6, 1808
109:              sra          s3, a4, t2
110:              srai         a5, s7, 27
                  sltu         t6, s0, a0
                  andi         s7, a2, 172
                  slt          tp, a7, a6
                  sra          a3, s5, ra
115:              addi         a2, s10, -1634
                  and          s6, t3, t1
                  srai         s7, t2, 21
                  sll          a2, a4, a2
                  bne          s11, zero, 122f
                  andi         ra, s1, 1879
                  sra          sp, s2, a2
122:              add          s8, s0, s1
                  slt          s1, s1, s2
                  and          ra, ra, s4
                  sltiu        a6, t4, -1855
                  add          zero, t6, t6
                  or           t6, a5, t6
                  slt          a3, s4, s0
                  srli         s8, s9, 21
                  bltu         s6, s8, 139f
                  bne          a4, t3, 147f
                  add          sp, ra, t0
                  xor          gp, s11, a4
                  bge          s0, t2, 143f
                  or           ra, a1, t3
                  slt          s7, s11, s8
                  blt          s2, zero, 157f
                  slli         a1, a6, 26
139:              srl          a1, s10, sp
                  sltu         s5, ra, s8
                  and          t5, gp, t4
                  sltu         s5, a4, t1
143:              blt          a5, a3, 147f
                  slt          a0, a4, gp
                  addi         s11, t0, -1784
                  and          tp, a2, s0
147:              sra          a6, a1, a5
                  slti         a1, s7, -1958
                  xor          s4, s3, t2
                  sltu         a1, t5, s1
                  sra          s1, t5, s8
                  slt          tp, s8, t0
                  srli         a6, s7, 29
                  sll          a3, a3, a4
                  srli         zero, a5, 25
                  bgeu         a0, s10, 158f
157:              slt          a2, tp, zero
158:              and          a5, a5, a7
                  ori          s1, s11, 1025
                  sub          a2, t1, s10
                  srli         a1, s9, 0
                  srli         ra, t5, 26
                  lui          tp, 901878
                  and          a2, sp, a7
                  bne          s1, a4, 179f
                  bge          s10, a0, 168f
                  sll          s5, s7, s7
168:              or           gp, s7, t1
                  bne          s1, zero, 184f
                  beq          s10, s11, 176f
                  slt          s11, t5, s1
                  lui          sp, 724030
                  blt          a7, s3, 188f
                  slt          a1, t3, s6
                  xor          t6, a0, s0
176:              add          s7, s2, a1
                  bne          s3, tp, 180f
                  blt          a5, s11, 180f
179:              andi         t1, t2, -1659
180:              slli         a6, a0, 13
                  beq          a3, zero, 200f
                  sll          a4, a4, gp
                  auipc        ra, 753877
184:              sltiu        a5, s8, 601
                  bgeu         s1, s3, 193f
                  auipc        t6, 523560
                  sub          a5, s2, a6
188:              sra          a3, t6, a2
                  auipc        t2, 660989
                  sra          t0, s7, s4
                  srli         t2, s0, 27
                  bltu         t2, t5, 197f
193:              sltiu        s4, s10, -1054
                  andi         s3, tp, -610
                  xor          t5, t5, tp
                  slt          gp, sp, s3
197:              or           t1, a6, a5
                  sra          t2, gp, zero
                  srli         s4, a6, 4
200:              xori         t5, t0, -841
                  bne          s4, zero, 220f
                  srai         a7, a2, 8
                  ori          a4, s11, 3
                  srl          ra, s1, t4
                  bgeu         a3, t6, 220f
                  and          a7, t1, s9
                  auipc        a2, 310572
                  nop
                  and          ra, a7, t5
                  sub          ra, s10, a1
                  auipc        s4, 996903
                  xori         s8, s3, -1956
                  andi         t0, a3, 1165
                  xori         a2, t1, -123
                  andi         tp, t5, -182
                  srli         a3, s5, 15
                  xori         s5, s4, 1074
                  sll          a4, a1, s3
                  srai         a7, a3, 13
220:              srai         zero, s6, 2
                  ori          s4, s9, 1728
                  bne          s9, s7, 241f
                  slli         a4, s0, 4
                  add          t5, s0, a3
                  sltiu        s8, s6, 1623
                  sltiu        a0, s6, -685
                  ori          tp, s4, -1808
                  bge          s2, s9, 243f
                  xor          a4, s8, t5
                  andi         s5, t5, -1477
                  or           a0, ra, t2
                  lui          s4, 391440
                  and          s4, t5, s9
                  beq          s0, s10, 247f
                  blt          s11, ra, 236f
236:              lui          a1, 539656
                  srai         a4, gp, 24
                  andi         a1, s4, 1699
                  srl          t3, zero, s1
                  auipc        t0, 1019268
241:              or           s1, s8, s1
                  ori          s8, s2, 166
243:              ori          s9, sp, -1050
                  bne          t3, a5, 248f
                  bltu         t1, t1, 265f
                  ori          a2, t6, 451
247:              bltu         s5, s11, 256f
248:              xor          s9, s4, s9
                  beq          a3, s10, 258f
                  bgeu         a2, zero, 253f
                  nop
                  and          t4, s1, t4
253:              sll          a3, t2, t1
                  ori          t6, s9, 17
                  srl          s6, a2, a6
256:              addi         s9, s5, 379
                  xori         a5, s0, -1118
258:              xor          sp, s6, s2
                  bgeu         a6, s4, 268f
                  bltu         s10, s10, 266f
                  sltu         a3, s6, t2
                  xor          a4, a0, a2
                  bgeu         t1, sp, 272f
                  sll          sp, s4, s3
265:              nop
266:              slt          t6, tp, s0
                  sll          s5, a2, s6
268:              srai         zero, s8, 25
                  slli         a4, t2, 6
                  xor          t4, t1, s9
                  xor          s11, s1, gp
272:              sra          t1, t1, t2
                  ori          zero, gp, -1237
                  xori         tp, s7, -418
                  sll          a1, a2, a0
                  lw           ra, 4(s2)
                  addi         s2, s2, 44
                  ori          s5, s11, -187
                  slli         a5, s2, 1
400:              addi x24, x1, 0
400:              jalr x24, x24, 0
sub_1:            sub          s7, ra, s3
                  sra          sp, t2, s8
                  sra          s5, s4, s6
                  nop
                  blt          s8, s10, sub_1_stack_p
sub_1_stack_p:    addi         s2, s2, -36
                  andi         s3, t3, 1179
                  slt          zero, s6, t4
                  sw           ra, 4(s2)
                  sra          a5, t2, ra
sub_1_4:          jal          ra, 11f
0:                jal          t1, 3f
1:                jal          a6, 0b
2:                jal          t1, 1b
3:                jal          ra, 18f
4:                jal          ra, 2b
5:                jal          ra, 22f
6:                jal          a4, 9f
7:                jal          t1, 8f
8:                jal          t1, 13f
9:                jal          t1, 21f
10:               jal          t1, 6b
11:               jal          t1, 17f
12:               jal          t1, 19f
13:               jal          t1, 16f
14:               jal          ra, 4b
15:               jal          s7, 10b
16:               jal          a5, 12b
17:               jal          t1, 26f
18:               jal          t1, 7b
19:               jal          t1, 25f
20:               jal          ra, 23f
21:               jal          ra, 24f
22:               jal          ra, 27f
23:               jal          t1, 14b
24:               jal          tp, 5b
25:               jal          t1, 15b
26:               jal          s3, 20b
27:               xori         s11, s9, -1256
sub_1_10:         jal          ra, 7f
0:                jal          t1, 2f
1:                jal          ra, 3f
2:                jal          t1, 1b
3:                jal          ra, 10f
4:                jal          ra, 0b
5:                jal          t3, 6f
6:                jal          tp, 4b
7:                jal          t1, 8f
8:                jal          ra, 9f
9:                jal          ra, 5b
10:               slti         t0, s7, 1087
sub_1_9:          jal          ra, 3f
0:                jal          a5, 11f
1:                jal          t1, 5f
2:                jal          ra, 7f
3:                jal          ra, 1b
4:                jal          t4, 12f
5:                jal          ra, 10f
6:                jal          t1, 2b
7:                jal          t1, 9f
8:                jal          ra, 4b
9:                jal          t1, 13f
10:               jal          ra, 0b
11:               jal          t1, 8b
12:               jal          ra, 6b
13:               nop
sub_1_3:          jal          ra, 17f
0:                jal          ra, 11f
1:                jal          ra, 7f
2:                jal          t1, 0b
3:                jal          t1, 12f
4:                jal          ra, 6f
5:                jal          t1, 13f
6:                jal          sp, 14f
7:                jal          t1, 9f
8:                jal          t5, 19f
9:                jal          t1, 18f
10:               jal          ra, 3b
11:               jal          ra, 4b
12:               jal          ra, 2b
13:               jal          ra, 15f
14:               jal          ra, 8b
15:               jal          t1, 1b
16:               jal          s4, 5b
17:               jal          ra, 16b
18:               jal          t1, 10b
19:               jal          ra, 20f
20:               sltiu        t6, t6, 1451
sub_1_5:          jal          ra, 1f
0:                jal          t1, 8f
1:                jal          t1, 0b
2:                jal          s1, 4f
3:                jal          t1, 9f
4:                jal          ra, 10f
5:                jal          s5, 6f
6:                jal          ra, 3b
7:                jal          ra, 2b
8:                jal          s5, 11f
9:                jal          t4, 12f
10:               jal          a7, 5b
11:               jal          ra, 7b
12:               andi         a6, gp, -1640
sub_1_8:          jal          ra, 21f
0:                jal          ra, 22f
1:                jal          ra, 3f
2:                jal          t1, 16f
3:                jal          ra, 23f
4:                jal          ra, 0b
5:                jal          ra, 15f
6:                jal          t0, 1b
7:                jal          s3, 2b
8:                jal          t1, 17f
9:                jal          ra, 10f
10:               jal          gp, 4b
11:               jal          ra, 19f
12:               jal          ra, 5b
13:               jal          t1, 18f
14:               jal          t1, 9b
15:               jal          t6, 6b
16:               jal          ra, 14b
17:               jal          ra, 13b
18:               jal          t1, 7b
19:               jal          ra, 8b
20:               jal          ra, 11b
21:               jal          ra, 20b
22:               jal          ra, 12b
23:               sub          s11, t6, t4
sub_1_1:          jal          ra, 17f
0:                jal          ra, 10f
1:                jal          t1, 11f
2:                jal          ra, 13f
3:                jal          a7, 21f
4:                jal          ra, 0b
5:                jal          ra, 22f
6:                jal          s1, 19f
7:                jal          ra, 6b
8:                jal          tp, 15f
9:                jal          a4, 1b
10:               jal          t1, 8b
11:               jal          t1, 12f
12:               jal          t1, 20f
13:               jal          t1, 9b
14:               jal          t5, 4b
15:               jal          ra, 7b
16:               jal          ra, 3b
17:               jal          ra, 14b
18:               jal          t1, 16b
19:               jal          t1, 18b
20:               jal          ra, 5b
21:               jal          ra, 2b
22:               xor          sp, t0, t0
sub_1_6:          jal          ra, 8f
0:                jal          ra, 2f
1:                jal          tp, 4f
2:                jal          ra, 9f
3:                jal          ra, 7f
4:                jal          ra, 3b
5:                jal          ra, 11f
6:                jal          ra, 10f
7:                jal          ra, 0b
8:                jal          s8, 6b
9:                jal          ra, 5b
10:               jal          gp, 1b
11:               srai         ra, a5, 11
sub_1_0:          jal          ra, 1f
0:                jal          t1, 11f
1:                jal          a0, 5f
2:                jal          t1, 12f
3:                jal          ra, 20f
4:                jal          a5, 9f
5:                jal          t1, 13f
6:                jal          ra, 21f
7:                jal          t1, 8f
8:                jal          s11, 6b
9:                jal          ra, 7b
10:               jal          a7, 4b
11:               jal          ra, 18f
12:               jal          t1, 15f
13:               jal          ra, 0b
14:               jal          ra, 3b
15:               jal          sp, 17f
16:               jal          t3, 10b
17:               jal          ra, 14b
18:               jal          ra, 2b
19:               jal          ra, 16b
20:               jal          ra, 19b
21:               slti         tp, s0, -802
sub_1_11:         jal          ra, 20f
0:                jal          ra, 17f
1:                jal          ra, 24f
2:                jal          a0, 11f
3:                jal          ra, 2b
4:                jal          ra, 6f
5:                jal          t1, 15f
6:                jal          ra, 0b
7:                jal          ra, 26f
8:                jal          ra, 4b
9:                jal          t1, 10f
10:               jal          ra, 25f
11:               jal          ra, 8b
12:               jal          s11, 22f
13:               jal          ra, 7b
14:               jal          s9, 5b
15:               jal          ra, 21f
16:               jal          ra, 27f
17:               jal          ra, 13b
18:               jal          ra, 3b
19:               jal          s7, 18b
20:               jal          ra, 14b
21:               jal          a6, 19b
22:               jal          ra, 23f
23:               jal          s1, 16b
24:               jal          ra, 12b
25:               jal          t1, 1b
26:               jal          gp, 9b
27:               andi         s7, s5, -481
                  add          a0, s1, a3
                  or           a6, t0, s5
                  xor          a6, s2, t6
                  srai         t6, s1, 9
                  add          sp, s7, t6
                  slti         t0, ra, -1914
                  sll          t2, t2, s9
                  sub          t3, s4, ra
                  bgeu         zero, t3, 22f
                  andi         t1, s4, 14
                  add          a7, t4, s11
                  beq          sp, t0, 27f
                  xori         t5, t6, 523
                  bne          a0, t0, 16f
                  add          a0, t1, s2
                  slt          s6, a6, s4
16:               lui          a2, 346619
                  sltiu        gp, s1, -1896
                  sll          zero, s8, s8
                  bltu         s5, a7, 26f
                  or           sp, s0, t6
                  sltiu        a7, t6, -1178
22:               bge          t6, t1, 41f
                  or           a2, s2, zero
                  auipc        t1, 937613
                  ori          a5, s6, -809
26:               sltu         a7, a7, ra
27:               bge          gp, t1, 44f
                  addi         a6, tp, 1957
                  slt          s6, tp, s8
                  srli         t2, s1, 29
                  andi         t6, a2, 2021
                  nop
                  add          a2, t4, s8
                  xori         t3, s1, 316
                  auipc        ra, 21689
                  and          a2, s7, zero
                  beq          t2, s1, 43f
                  srl          s6, a2, a0
                  srai         t4, sp, 11
                  beq          a1, t0, 56f
41:               lui          s5, 179445
                  slt          a5, a6, t6
43:               beq          t4, t4, 54f
44:               srl          t4, zero, s8
                  auipc        s11, 209655
                  sub          a1, s8, t1
                  bne          s10, s2, 49f
                  sltu         s9, sp, s0
49:               addi         t6, a6, 1093
                  srli         s9, t5, 31
                  ori          a5, a4, 997
                  nop
                  beq          zero, a7, 56f
54:               sll          s5, sp, zero
                  sub          s9, s3, s8
56:               slt          t4, t0, a5
                  bge          s3, s8, 65f
                  sub          tp, ra, gp
                  bltu         s9, a7, 79f
                  add          s6, s4, t6
                  lui          ra, 436363
                  or           a1, s3, s6
                  add          a4, a5, s5
                  sra          a0, s9, t4
65:               bne          tp, sp, 73f
                  add          t5, a6, s10
                  slt          s4, a2, gp
                  sra          s9, s1, a3
                  lui          t3, 218682
                  xori         a0, t3, -1156
                  bne          s3, gp, 76f
                  sub          a5, a2, tp
73:               srai         t1, t1, 5
                  srai         s8, t0, 30
                  bge          t2, s0, 84f
76:               srli         s3, a2, 4
                  srai         a4, s11, 5
                  lui          t5, 805130
79:               xor          a3, t6, a6
                  nop
                  and          t1, a6, t1
                  srai         a0, a6, 2
                  sub          t5, a7, s2
84:               srai         s3, s3, 3
                  srli         t0, s10, 28
                  addi         t4, sp, 92
                  bne          tp, a4, 107f
                  sra          zero, s3, s3
                  srli         s6, ra, 30
                  auipc        s4, 357232
                  lui          s1, 131261
                  or           s6, t3, t6
                  auipc        s8, 393240
                  srl          sp, t5, a0
                  bltu         a1, ra, 97f
                  sub          zero, sp, s0
97:               sra          zero, s9, t0
                  bge          zero, t6, 99f
99:               sll          a5, s6, s1
                  slt          t3, s9, s2
                  and          a6, zero, a6
                  ori          s6, gp, 786
                  ori          s11, a6, -1101
                  bgeu         sp, a0, 110f
                  bne          a7, tp, 119f
                  addi         t0, s3, -1606
107:              beq          tp, t1, 112f
                  or           gp, gp, ra
                  srli         s9, zero, 22
110:              bgeu         t6, t1, 128f
                  andi         a6, sp, 1452
112:              srai         a3, ra, 2
                  beq          zero, a6, 133f
                  slli         s9, s1, 20
                  andi         t3, t4, -357
                  slli         s8, t0, 3
                  nop
                  lui          a3, 962725
119:              addi         t3, s10, 1449
                  sra          a1, a2, s7
                  nop
                  sub          zero, a7, a5
                  addi         a2, a2, 194
                  andi         s6, a2, -1330
                  ori          s11, s10, -1125
                  xori         a0, t2, 1762
                  sltu         s9, s7, a1
128:              sra          a2, a5, t4
                  auipc        s9, 890365
                  xor          a0, a3, sp
                  xor          a6, a7, t3
                  srli         s4, s1, 25
133:              andi         s9, a5, -1099
                  nop
                  slt          t1, s2, s2
                  blt          s3, a0, 149f
                  bltu         a0, sp, 155f
                  sub          s1, t5, s10
                  slti         s5, ra, -932
                  slti         s6, t4, 473
                  and          t6, a3, s1
                  addi         a4, s6, -105
                  srai         a0, s8, 9
                  srli         a5, a0, 6
                  sub          s11, a5, s9
                  or           zero, a5, a5
                  nop
                  xori         ra, s4, 355
149:              srl          s6, s10, gp
                  slti         s1, s4, 151
                  slli         a5, a1, 22
                  beq          a6, s6, 158f
                  lui          s5, 452514
                  sll          sp, s10, t2
155:              xor          s11, zero, s4
                  sltiu        s5, s2, -1376
                  slt          a5, a2, a7
158:              sltiu        tp, s6, 1875
                  or           s3, s6, s7
                  bne          t0, a6, 165f
                  sll          gp, s1, a5
                  sltiu        gp, t3, 409
                  bge          sp, s9, 165f
                  ori          s5, s9, -1773
165:              beq          sp, t6, 168f
                  addi         t0, t6, -735
                  sltiu        a5, t3, -181
168:              slt          a7, s2, s11
                  bltu         s3, t6, 174f
                  and          a3, zero, a0
                  sub          zero, a2, a1
                  xor          t4, s4, s10
                  slt          s4, sp, t5
174:              nop
                  nop
                  bltu         a5, t1, 196f
                  srl          tp, t6, zero
                  or           s4, a3, s9
                  slti         s4, s1, 1074
                  bgeu         s8, gp, 183f
                  slli         s5, s2, 3
                  andi         sp, a2, 763
183:              beq          a0, s9, 196f
                  bgeu         a3, s0, 198f
                  slt          ra, t3, t0
                  lui          t0, 584597
                  srl          t0, tp, s1
                  sltiu        a2, t2, -1525
                  addi         t3, zero, 335
                  sll          s1, t6, a6
                  srai         t3, zero, 22
                  bltu         s8, gp, 199f
                  sltiu        s4, s10, -806
                  bge          tp, a6, 202f
                  srli         t1, sp, 17
196:              addi         s11, t5, 478
                  slt          s5, s8, ra
198:              andi         s8, t5, -301
199:              srl          s3, t5, a5
                  or           a4, s6, a2
                  srli         s3, s0, 9
202:              add          a4, a4, sp
                  andi         t3, s8, 1222
                  andi         s3, a3, 1660
                  slti         t1, a0, 1318
                  slt          s9, t4, a2
                  andi         tp, t4, -409
                  blt          s5, t4, 217f
                  sltu         ra, s2, a1
                  bne          t4, a4, 212f
                  bge          s7, ra, 222f
212:              blt          t5, s11, 231f
                  bne          a2, s2, 219f
                  sll          zero, a2, s7
                  srli         t6, t1, 5
                  bge          t5, t3, 218f
217:              or           a1, t5, t3
218:              srli         s5, a4, 0
219:              slli         a4, s7, 27
                  slli         a7, gp, 4
                  and          t1, a2, a2
222:              nop
                  bltu         s3, s10, 240f
                  srl          s3, t3, a7
                  ori          s6, s6, -1395
                  beq          a0, t3, 240f
                  slli         s4, s5, 9
                  nop
                  srli         t3, ra, 30
                  bge          a0, a6, 238f
231:              slt          a2, s10, s11
                  sltiu        zero, s4, -963
                  add          zero, s11, s2
                  and          a2, a4, t5
                  beq          s2, t5, 240f
                  beq          s6, s5, 237f
237:              blt          s8, t3, 255f
238:              nop
                  bltu         s7, s5, 242f
240:              sra          a2, a1, t1
                  bgeu         s0, t5, 246f
242:              srl          sp, s7, tp
                  bgeu         s10, s2, 259f
                  sll          s7, a2, t5
                  bltu         a6, t4, 251f
246:              srl          s1, s9, s9
                  slti         a1, a4, 512
                  auipc        a6, 995122
                  sltu         zero, s2, gp
                  sltu         s4, t1, a0
251:              and          tp, a5, a3
                  sra          s11, s1, a5
                  bltu         a4, a5, 273f
                  sltu         s5, a5, a6
255:              nop
                  ori          a5, s8, 828
                  slti         s3, t1, 1325
                  addi         s11, s10, -1100
259:              add          t3, s11, t4
                  slti         s7, sp, 970
                  ori          t1, s7, -92
                  ori          s7, s1, 729
                  lui          a4, 511280
                  ori          a4, s7, -147
                  add          sp, s5, t0
                  xor          t4, s2, t4
                  and          gp, gp, a0
                  srl          a0, t3, a2
                  srli         t6, t3, 0
                  sub          a3, s2, a2
                  sub          a6, t3, s0
                  sub          s11, s1, s2
273:              srl          s7, gp, a7
                  srl          s7, t2, zero
                  srai         a0, s6, 6
                  andi         a0, a0, 1994
                  auipc        a3, 946226
                  slti         a2, a3, 1499
                  slli         tp, a3, 7
                  andi         s5, a5, 92
                  add          a7, a4, s1
                  slt          s3, a3, t1
                  ori          t2, t3, 1134
                  beq          t1, ra, 286f
                  blt          a7, a7, 291f
286:              bne          a7, s11, 306f
                  bge          s4, a3, 290f
                  auipc        s7, 663395
                  add          a7, t4, s11
290:              bne          s10, a0, 306f
                  and          t6, s1, s0
                  xori         s7, a0, -672
                  bgeu         s3, s3, sub_1_j3 #branch to jump instr
                  srl          a5, sp, tp
                  ori          zero, t1, 1762
                  slt          s9, s2, a3
sub_1_j3:         jal          ra, sub_4 #jump sub_1 -> sub_4
291:              xori         a0, s6, -949
                  sra          t6, t4, t6
                  srai         a5, t6, 9
                  add          t0, t4, sp
                  bltu         a0, t2, 313f
                  bltu         t2, s0, 302f
                  srli         sp, s1, 20
                  srli         a5, a6, 16
                  bge          gp, gp, 301f
                  auipc        t0, 864763
301:              sub          a4, s7, a0
302:              ori          ra, s0, -1816
                  bltu         t6, t5, 306f
                  add          t5, sp, tp
                  slt          t0, s4, a7
306:              sub          s5, s5, t1
                  andi         s8, s3, 1901
                  auipc        s11, 909346
                  bge          s2, s3, 329f
                  srli         s8, t2, 16
                  lui          a3, 547475
                  sub          gp, a1, t3
313:              auipc        a6, 64102
                  lui          s11, 425570
                  sub          s7, tp, t4
                  sra          s11, s4, a7
                  slti         s5, s10, -973
                  slli         a3, a2, 31
                  and          a4, zero, s6
                  beq          sp, t4, 325f
                  blt          s2, sp, 323f
                  or           a0, s2, s8
323:              sll          a4, t6, s6
                  slti         a0, t0, -1961
325:              slti         zero, ra, 425
                  xor          t4, a7, t6
                  bgeu         a7, s2, 343f
                  blt          a1, a2, 342f
329:              lui          s6, 216677
                  sll          ra, s6, a0
                  slti         tp, s8, -2037
                  bne          a7, a5, 352f
                  blt          gp, gp, 351f
                  sra          zero, s10, a2
                  slti         a0, a5, -23
                  srai         a7, s9, 30
                  slti         a6, t1, -1506
                  nop
                  sub          tp, a2, sp
                  add          s8, s0, gp
                  blt          a1, t0, 349f
342:              sra          a0, a1, tp
343:              auipc        a5, 802610
                  slli         a7, t5, 14
                  sub          s1, t4, tp
                  srl          s3, a6, t6
                  add          t2, a3, t3
                  sub          a6, a3, a0
349:              srai         tp, t6, 22
                  xor          s9, gp, sp
351:              slt          sp, s10, s0
352:              sra          t1, a1, s2
                  bltu         a7, s11, 355f
                  lui          s9, 316492
355:              srli         a1, s10, 2
                  and          ra, a2, s11
                  xori         s6, a6, 1893
                  add          tp, s10, a5
                  bge          a3, a3, 362f
                  and          t1, t4, t3
                  nop
362:              srai         a6, s10, 29
                  srai         a0, a3, 28
                  xor          a3, ra, s1
                  sltu         t3, a2, s7
                  srai         a3, t6, 8
                  auipc        s6, 670097
                  slli         t0, s5, 21
                  and          s1, ra, t2
                  sltu         t6, t3, s3
                  auipc        a4, 305043
                  blt          s6, a7, 373f
373:              blt          t5, s9, 381f
                  bge          t2, a2, 390f
                  or           zero, t3, t6
                  sltiu        a2, s11, 170
                  andi         s8, tp, 1357
                  srai         s8, t1, 8
                  srli         t6, s8, 16
                  bne          a3, a3, 385f
381:              blt          tp, s6, 400f
                  andi         t3, s0, -897
                  andi         zero, s2, 1186
                  lui          a7, 986164
385:              srli         s1, a4, 15
                  sub          t2, a0, a4
                  xor          s11, a0, a1
                  or           gp, t1, t6
                  slli         t0, s5, 1
390:              sll          s9, a5, sp
                  and          a1, gp, t2
                  sltu         s9, s11, t5
                  sra          t2, a3, t5
                  slli         a1, s9, 19
                  bne          s0, s6, 401f
                  xori         t2, t5, -327
                  xor          t6, t4, t1
                  slt          s9, s2, t0
                  addi         ra, s7, 1385
400:              slt          s3, t4, a3
401:              blt          t6, s2, 419f
                  beq          a6, a1, 416f
                  sub          t5, t5, s9
                  nop
                  blt          s7, a6, 408f
                  bne          a3, t5, 411f
                  bgeu         gp, s9, 418f
408:              srl          t3, s11, t6
                  addi         a6, s5, -1016
                  and          s11, t2, s5
411:              andi         gp, s0, -647
                  and          a6, t5, a0
                  slti         gp, a5, 909
                  ori          a7, t4, -230
                  bltu         s9, s11, 421f
416:              sra          sp, s3, sp
                  srli         a0, s7, 16
418:              slt          s9, s2, a7
419:              slli         s11, a4, 21
                  srai         s7, gp, 25
421:              or           a4, a5, a5
                  sltiu        s3, t4, 1026
                  sub          a4, s2, a6
                  slt          s7, a6, s11
                  add          a1, t6, a5
                  slti         a7, t0, -956
                  sltiu        t2, t1, -1200
                  slti         zero, t6, 251
                  bge          t1, t3, 446f
                  addi         a7, s7, -1829
                  srl          s3, s11, a1
                  and          tp, s10, s4
                  or           a6, t2, t1
                  and          s8, s7, s7
                  sub          s8, t4, s0
                  srai         sp, t1, 22
                  sltu         a0, s6, t3
                  sra          a3, t6, a7
                  sll          a0, gp, t4
                  or           a5, s6, t3
                  auipc        ra, 285617
                  slli         ra, s7, 19
                  slt          s3, a2, s7
                  slli         s8, a7, 5
                  bgeu         t4, ra, 458f
446:              bne          a0, a5, 455f
                  slt          t6, t0, s9
                  ori          zero, t5, 1813
                  bge          a1, t1, 469f
                  slt          zero, s5, ra
                  sltiu        a6, t1, 34
                  bge          t4, t4, 459f
                  srai         s5, s2, 13
                  ori          zero, tp, -300
455:              nop
                  sub          s8, a5, t0
                  sltu         t3, s8, s6
458:              sltiu        a1, s2, 781
459:              srli         s7, a2, 18
                  and          s6, s3, s7
                  xor          t2, s8, a3
                  beq          t4, s11, 470f
                  ori          s11, s9, -1361
                  sra          sp, t6, a7
                  sltiu        a7, s11, -1364
                  blt          sp, a6, 483f
                  sll          t5, t1, s2
                  nop
469:              addi         gp, s0, 582
470:              nop
                  add          gp, s3, t1
                  slt          s3, a1, a6
                  and          t4, tp, t5
                  srl          sp, s0, t0
                  slli         zero, a1, 11
                  blt          a5, s7, 496f
                  nop
                  xor          s6, s0, s9
                  ori          s4, ra, 47
                  sltu         s11, t1, s10
                  slt          t4, s9, s10
                  or           t0, s2, sp
483:              xori         tp, s7, 1130
                  slti         a7, s6, -1274
                  srai         a4, t4, 25
                  slt          s8, s5, a0
                  bgeu         s5, t0, 505f
                  bgeu         t6, s5, 491f
                  bge          a6, sp, 505f
                  srl          s8, s8, t4
491:              xori         sp, a5, 1074
                  lui          tp, 868949
                  bne          a7, s0, 507f
                  bgeu         a1, s7, 507f
                  beq          a5, t3, 501f
496:              nop
                  slti         s9, zero, 1467
                  bltu         s2, a5, 514f
                  addi         a6, s4, -1183
                  beq          s3, t4, 502f
501:              sra          t6, s7, t3
502:              slti         a7, s6, 1249
                  ori          t2, a7, -1858
                  auipc        a6, 129384
505:              add          s5, a3, t3
                  slti         tp, a5, -154
507:              and          sp, s11, zero
                  andi         t5, a3, -187
                  auipc        s1, 581640
                  sltu         a5, t2, a1
                  ori          s6, a6, 1803
                  srli         zero, s1, 19
                  srai         sp, a5, 1
514:              xori         gp, s6, 1225
                  bgeu         ra, s2, 520f
                  sub          a6, a2, t3
                  sub          tp, gp, t6
                  blt          a1, a6, 519f
519:              sub          t2, a2, t6
520:              sub          a3, a2, s6
                  srli         t0, t3, 18
                  bge          gp, s0, 542f
                  sltiu        ra, s6, -1204
                  srl          s5, s4, t5
                  lui          s5, 342948
                  slli         t4, t6, 5
                  addi         a2, s11, 1081
                  sub          s8, sp, s8
                  xori         tp, s5, -343
                  slti         s4, a0, -1508
                  sltiu        zero, a3, -20
                  srli         s1, tp, 10
sub_1_2:          jal          ra, 20f
0:                jal          sp, 14f
1:                jal          tp, 24f
2:                jal          s3, 21f
3:                jal          s11, 6f
4:                jal          ra, 8f
5:                jal          ra, 10f
6:                jal          ra, 5b
7:                jal          ra, 13f
8:                jal          ra, 9f
9:                jal          ra, 22f
10:               jal          s5, 15f
11:               jal          sp, 1b
12:               jal          ra, 16f
13:               jal          ra, 27f
14:               jal          t1, 4b
15:               jal          ra, 0b
16:               jal          ra, 23f
17:               jal          gp, 19f
18:               jal          ra, 3b
19:               jal          ra, 18b
20:               jal          ra, 2b
21:               jal          s3, 26f
22:               jal          ra, 25f
23:               jal          t1, 17b
24:               jal          ra, 7b
25:               jal          t1, 11b
26:               jal          ra, 12b
27:               nop
                  sub          t3, s4, s7
                  ori          a5, s0, -1509
                  srl          t0, t6, t5
                  srl          t6, s7, a4
                  sltu         ra, sp, a2
                  srli         ra, s1, 16
                  srli         sp, s9, 26
                  slti         t4, a4, 1724
                  slt          s4, t6, t4
542:              ori          a0, t5, -203
sub_1_7:          jal          ra, 5f
0:                jal          ra, 21f
1:                jal          ra, 4f
2:                jal          ra, 3f
3:                jal          ra, 14f
4:                jal          t6, 12f
5:                jal          t1, 23f
6:                jal          ra, 7f
7:                jal          ra, 17f
8:                jal          ra, 16f
9:                jal          ra, 22f
10:               jal          ra, 24f
11:               jal          s11, 0b
12:               jal          s9, 9b
13:               jal          ra, 25f
14:               jal          t1, 11b
15:               jal          ra, 2b
16:               jal          t1, 6b
17:               jal          ra, 20f
18:               jal          ra, 13b
19:               jal          t2, 10b
20:               jal          ra, 15b
21:               jal          t1, 18b
22:               jal          a3, 27f
23:               jal          t1, 19b
24:               jal          t1, 26f
25:               jal          ra, 1b
26:               jal          t1, 8b
27:               and          a1, s3, t1
                  add          zero, zero, a4
                  add          a5, a5, s10
                  slli         t6, a5, 11
                  xori         s4, t3, 732
                  addi         a7, s4, 1734
                  slti         t4, zero, -1365
                  beq          a3, s11, 552f
                  bltu         tp, s8, 570f
                  srai         a0, s11, 30
552:              bltu         ra, t1, 555f
                  ori          sp, a3, -1923
                  xori         s5, t6, 1595
555:              andi         s6, t6, -528
                  or           s6, a0, a2
                  sltu         sp, a0, t4
                  nop
                  sll          a4, tp, sp
                  bltu         t6, a1, 569f
                  beq          sp, t3, 572f
                  ori          t6, s1, 218
                  slti         t2, s10, -1351
                  sra          t3, a0, s11
                  bge          s7, t1, 570f
                  ori          s4, t5, 1530
                  srli         a0, a3, 20
                  lui          t4, 986303
569:              sub          a3, a3, s4
570:              bltu         t5, a3, 588f
                  nop
572:              sltu         s11, a6, gp
                  slli         a6, s9, 31
                  sub          a1, a6, s4
                  beq          s6, s11, 582f
                  slt          t1, s5, ra
                  nop
                  bge          a4, s9, 584f
                  bge          t6, t4, 585f
                  sra          t1, a7, t1
                  sll          ra, a1, s7
582:              bge          t1, a2, 587f
                  bgeu         t0, a4, 585f
584:              or           s9, a5, a0
585:              xor          t3, a6, t1
                  sra          a1, a2, s2
587:              add          s7, a2, t4
588:              lui          a2, 42724
                  nop
                  addi         t3, a7, 1448
                  blt          s9, ra, 599f
                  bltu         s0, t3, 606f
                  sub          a5, s2, t4
                  and          s6, s5, a3
                  add          a0, a0, a2
                  srli         a7, s7, 21
                  xori         s3, t1, 475
                  sll          t1, s1, ra
599:              xori         s7, s2, -398
                  or           s3, s7, gp
                  srai         s7, t5, 8
                  ori          s11, s5, -828
                  xori         a1, s3, 1003
                  sub          a0, gp, s6
                  bne          a5, a0, 607f
606:              ori          a0, a6, 985
607:              bge          s2, t6, 617f
                  lui          a2, 410069
                  xor          t5, a2, a1
                  andi         a0, s5, 1313
                  blt          t1, s2, 617f
                  bne          zero, s11, 617f
                  slt          s4, s9, s7
                  lui          ra, 66373
                  bge          a4, t4, 617f
                  sll          s1, ra, t5
617:              lui          s8, 184187
                  addi         t0, s4, -644
                  xori         s11, a4, -1818
                  slli         t4, ra, 29
                  auipc        a1, 171807
                  slli         t0, a5, 14
                  lw           ra, 4(s2)
                  sll          t1, t1, a0
                  auipc        s5, 404443
                  nop
                  addi         s2, s2, 36
                  lui          s5, 91677
910:              addi x12, x1, 1
910:              jalr x12, x12, 0
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
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_2:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_3:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_4:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_5:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_6:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_7:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_8:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_9:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_10:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_11:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_12:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_13:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_14:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_15:
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x26, x18, zero
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x4, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x4, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x4, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x4, x22, ecall_handler
                  li x22, 0x1
                  beq x4, x22, instr_fault_handler
                  li x22, 0x5
                  beq x4, x22, load_fault_handler
                  li x22, 0x7
                  beq x4, x22, store_fault_handler
                  li x22, 0xc
                  beq x4, x22, pt_fault_handler
                  li x22, 0xd
                  beq x4, x22, pt_fault_handler
                  li x22, 0xf
                  beq x4, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x4, _start
                  sw x0, 0(x4)
                  sw x1, 4(x4)
                  sw x2, 8(x4)
                  sw x3, 12(x4)
                  sw x4, 16(x4)
                  sw x5, 20(x4)
                  sw x6, 24(x4)
                  sw x7, 28(x4)
                  sw x8, 32(x4)
                  sw x9, 36(x4)
                  sw x10, 40(x4)
                  sw x11, 44(x4)
                  sw x12, 48(x4)
                  sw x13, 52(x4)
                  sw x14, 56(x4)
                  sw x15, 60(x4)
                  sw x16, 64(x4)
                  sw x17, 68(x4)
                  sw x18, 72(x4)
                  sw x19, 76(x4)
                  sw x20, 80(x4)
                  sw x21, 84(x4)
                  sw x22, 88(x4)
                  sw x23, 92(x4)
                  sw x24, 96(x4)
                  sw x25, 100(x4)
                  sw x26, 104(x4)
                  sw x27, 108(x4)
                  sw x28, 112(x4)
                  sw x29, 116(x4)
                  sw x30, 120(x4)
                  sw x31, 124(x4)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x18, x26, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x26, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x26, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x18, x26, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x18, x26, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x18, x26, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
