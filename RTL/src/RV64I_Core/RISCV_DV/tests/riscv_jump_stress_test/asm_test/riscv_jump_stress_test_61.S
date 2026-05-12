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
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xaf8c7a4c
                  li x2, 0xf36f2740
                  li x3, 0x3
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0xe
                  li x7, 0xc
                  li x8, 0xfc6d2b16
                  li x9, 0x3
                  li x10, 0x2b4a9bef
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0xffd530a4
                  li x14, 0xd
                  li x15, 0x0
                  li x16, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x9538ff6b
                  li x25, 0xfebc754c
                  li x26, 0xf124a266
                  li x27, 0xa
                  li x28, 0xffd908b4
                  li x30, 0x0
                  li x31, 0x4
                  la x29, user_stack_end
main:             jal          ra, 9f
0:                jal          s4, 1f
1:                jal          s8, 6f
2:                jal          ra, 13f
3:                jal          t5, 12f
4:                jal          ra, 17f
5:                jal          s10, 10f
6:                jal          ra, 15f
7:                jal          a4, 4b
8:                jal          ra, 3b
9:                jal          ra, 16f
10:               jal          gp, 2b
11:               jal          ra, 7b
12:               jal          ra, 5b
13:               jal          t1, 21f
14:               jal          ra, 19f
15:               jal          s5, 11b
16:               jal          t1, 18f
17:               jal          t1, 20f
18:               jal          t1, 14b
19:               jal          ra, 0b
20:               jal          t1, 8b
21:               sll          s3, a6, s7
main_3:           jal          ra, 8f
0:                jal          t0, 12f
1:                jal          ra, 0b
2:                jal          ra, 5f
3:                jal          ra, 4f
4:                jal          t1, 11f
5:                jal          t1, 3b
6:                jal          t1, 1b
7:                jal          ra, 2b
8:                jal          t1, 6b
9:                jal          t1, 13f
10:               jal          ra, 7b
11:               jal          ra, 9b
12:               jal          ra, 10b
13:               srai         s3, s5, 7
main_2:           jal          ra, 8f
0:                jal          gp, 16f
1:                jal          s2, 19f
2:                jal          a5, 6f
3:                jal          ra, 14f
4:                jal          t1, 5f
5:                jal          s3, 1b
6:                jal          ra, 4b
7:                jal          t1, 18f
8:                jal          ra, 17f
9:                jal          t1, 10f
10:               jal          t1, 15f
11:               jal          ra, 2b
12:               jal          t1, 22f
13:               jal          t1, 3b
14:               jal          t0, 11b
15:               jal          ra, 13b
16:               jal          a3, 9b
17:               jal          s5, 12b
18:               jal          t1, 0b
19:               jal          s11, 20f
20:               jal          t0, 23f
21:               jal          a3, 7b
22:               jal          ra, 21b
23:               sltiu        s0, gp, 1465
main_6:           jal          ra, 26f
0:                jal          t1, 2f
1:                jal          ra, 25f
2:                jal          ra, 21f
3:                jal          t1, 20f
4:                jal          ra, 6f
5:                jal          t1, 13f
6:                jal          tp, 17f
7:                jal          t1, 24f
8:                jal          tp, 19f
9:                jal          ra, 22f
10:               jal          s6, 4b
11:               jal          ra, 9b
12:               jal          t1, 3b
13:               jal          t0, 0b
14:               jal          t1, 27f
15:               jal          t1, 7b
16:               jal          ra, 15b
17:               jal          ra, 5b
18:               jal          ra, 1b
19:               jal          gp, 14b
20:               jal          ra, 8b
21:               jal          ra, 16b
22:               jal          tp, 12b
23:               jal          ra, 18b
24:               jal          ra, 23b
25:               jal          ra, 11b
26:               jal          t1, 10b
27:               addi         a6, t1, -315
main_7:           jal          ra, 9f
0:                jal          ra, 4f
1:                jal          ra, 13f
2:                jal          ra, 11f
3:                jal          ra, 6f
4:                jal          ra, 10f
5:                jal          ra, 1b
6:                jal          ra, 12f
7:                jal          s0, 8f
8:                jal          ra, 5b
9:                jal          a3, 2b
10:               jal          ra, 7b
11:               jal          t5, 3b
12:               jal          ra, 0b
13:               ori          s9, t4, -444
main_0:           jal          ra, 24f
0:                jal          ra, 19f
1:                jal          gp, 6f
2:                jal          ra, 27f
3:                jal          t1, 2b
4:                jal          t1, 7f
5:                jal          t5, 3b
6:                jal          ra, 20f
7:                jal          t2, 17f
8:                jal          s2, 15f
9:                jal          ra, 11f
10:               jal          ra, 14f
11:               jal          t1, 18f
12:               jal          ra, 23f
13:               jal          s9, 12b
14:               jal          ra, 1b
15:               jal          t1, 21f
16:               jal          ra, 25f
17:               jal          tp, 5b
18:               jal          ra, 0b
19:               jal          s5, 29f
20:               jal          ra, 28f
21:               jal          ra, 4b
22:               jal          t1, 30f
23:               jal          ra, 8b
24:               jal          ra, 16b
25:               jal          a4, 9b
26:               jal          ra, 13b
27:               jal          t1, 22b
28:               jal          s0, 26b
29:               jal          a0, 10b
30:               addi         gp, t1, -1461
main_1:           jal          ra, 23f
0:                jal          ra, 28f
1:                jal          t1, 9f
2:                jal          t1, 7f
3:                jal          t3, 29f
4:                jal          t1, 8f
5:                jal          ra, 10f
6:                jal          ra, 19f
7:                jal          ra, 24f
8:                jal          ra, 16f
9:                jal          s7, 25f
10:               jal          a0, 1b
11:               jal          ra, 17f
12:               jal          ra, 26f
13:               jal          t1, 21f
14:               jal          s2, 2b
15:               jal          t1, 3b
16:               jal          ra, 6b
17:               jal          ra, 13b
18:               jal          ra, 22f
19:               jal          a5, 18b
20:               jal          t1, 5b
21:               jal          ra, 4b
22:               jal          tp, 20b
23:               jal          ra, 15b
24:               jal          s8, 27f
25:               jal          ra, 0b
26:               jal          s2, 14b
27:               jal          ra, 11b
28:               jal          gp, 30f
29:               jal          ra, 12b
30:               sll          s7, s2, a7
main_8:           jal          ra, 3f
0:                jal          gp, 1f
1:                jal          ra, 2f
2:                jal          a3, 9f
3:                jal          s7, 10f
4:                jal          ra, 11f
5:                jal          t1, 7f
6:                jal          ra, 0b
7:                jal          t1, 8f
8:                jal          ra, 12f
9:                jal          ra, 4b
10:               jal          ra, 6b
11:               jal          gp, 5b
12:               andi         t0, t5, 874
                  xor          a6, a0, a4
                  xor          t5, t6, t0
                  slli         s1, s4, 17
                  xor          a2, ra, s2
                  auipc        a6, 1026444
                  slt          a0, tp, s11
                  slli         a5, a4, 14
                  bgeu         zero, gp, 23f
                  srl          s2, t3, s10
                  lui          s8, 949852
                  ori          s2, a6, 367
                  auipc        t6, 1028139
                  ori          t6, s2, 343
                  slli         gp, s8, 7
                  xor          s8, t0, a0
                  ori          t5, s0, 1008
                  ori          t6, gp, 709
                  xor          a0, t1, t4
                  and          t0, ra, a6
                  and          s2, a2, tp
                  srli         a5, s8, 1
                  andi         s7, a3, -1621
                  slti         gp, a3, -696
23:               xori         a0, a7, 1515
                  lui          a1, 351465
                  andi         t2, t5, -193
                  xori         t1, a0, -175
                  sltiu        t0, a7, -1847
                  bgeu         a6, a5, 39f
                  addi         s9, a1, -733
                  bne          s5, t5, 34f
                  lui          t1, 678287
                  bltu         a6, s4, 36f
                  add          s9, zero, s9
34:               or           ra, t2, a7
                  srai         a1, t6, 29
36:               sub          s7, s5, tp
                  slt          t2, a5, a7
                  addi         a4, a3, -558
                  la           s3, sub_1
                  addi         s3, s3, -586
                  bgeu         a7, s1, main_j2 #branch to jump instr
                  auipc        s10, 144584
                  srli         s11, s1, 30
                  slt          s5, s10, t5
                  addi         a5, a2, 1212
                  srl          s6, a1, t3
                  nop
main_j2:          jalr         ra, s3, 586 #jump main -> sub_1
                  slti         gp, t4, 2010
39:               beq          a5, t0, 49f
                  blt          sp, t6, 47f
                  nop
                  lui          a1, 491586
                  bge          s8, ra, 48f
                  sra          a0, a2, a4
                  slli         gp, a7, 12
                  andi         t6, a0, 2027
47:               sub          t5, a4, s11
48:               add          a3, s3, s2
49:               sltiu        s5, ra, -1472
                  auipc        zero, 268752
                  andi         a4, s2, -937
                  bltu         s7, t6, 71f
                  sra          s3, s4, a3
                  beq          sp, s6, 64f
                  bltu         a0, t3, 66f
                  sltiu        t0, a4, 37
                  addi         t3, s4, -330
                  sltu         t3, sp, ra
                  sltiu        zero, a1, -1896
                  addi         a5, s7, -1400
                  bgeu         t3, s8, 79f
                  sub          s1, s5, a2
                  sll          s3, t0, a5
64:               lui          t2, 890760
                  lui          a0, 608601
66:               and          t2, s6, s3
                  sll          s10, t4, s9
                  srl          tp, ra, s10
                  blt          a7, a4, 87f
                  blt          gp, t5, 87f
71:               bge          s1, s5, 83f
                  lui          s9, 811839
                  srai         a3, s9, 29
                  auipc        a4, 116622
                  or           tp, a0, s10
                  la           s11, sub_2
                  nop
                  addi         s11, s11, 548
                  sltu         a1, a6, s0
                  lui          a0, 144018
                  add          s0, t5, sp
                  or           t1, t6, a7
                  srli         a1, tp, 18
                  beq          ra, tp, main_j4 #branch to jump instr
                  auipc        ra, 168843
main_j4:          jalr         ra, s11, -547 #jump main -> sub_2
                  xori         a0, a2, 91
                  sltiu        s11, s3, -112
                  lui          t3, 1045018
                  sltiu        t5, a4, -684
                  bltu         s7, t4, 88f
79:               sub          t3, t2, t3
                  and          s9, t6, t5
                  bltu         t1, sp, 100f
                  sub          s7, s5, t2
83:               blt          t1, t3, 94f
                  auipc        ra, 558606
                  lui          a3, 729819
                  sub          t2, sp, t1
87:               lui          t1, 843414
88:               add          a2, s6, s2
                  slti         a3, a1, -1883
                  slli         t5, s0, 1
                  slt          a6, a7, s10
                  andi         s7, s9, 1664
                  nop
94:               andi         s8, gp, -1455
                  add          t2, s10, a5
                  ori          s5, t0, -568
                  beq          a1, a6, 117f
                  sll          gp, ra, a5
                  addi         tp, s0, 292
100:              and          a0, ra, a0
                  srl          s4, t4, s4
                  sltiu        tp, t5, 1171
                  auipc        s4, 897025
                  or           s0, a0, s8
                  srli         a2, t6, 23
                  addi         t5, s4, -1315
                  bne          s4, gp, 119f
                  lui          t3, 324955
                  slti         t6, sp, 480
                  blt          t0, s10, 126f
                  blt          s2, t6, 127f
                  sltu         a6, zero, gp
                  lui          a0, 542359
                  xor          s5, t1, sp
                  beq          s8, a2, 119f
                  andi         s5, t0, 1449
117:              sll          a5, s3, ra
                  srli         s5, a7, 19
119:              beq          s9, ra, 136f
                  blt          s6, s11, 121f
121:              sub          s1, s11, a3
                  addi         s11, s2, 1171
                  bgeu         t1, tp, 125f
                  add          s7, s8, ra
125:              srli         s10, a2, 8
126:              auipc        a5, 369539
127:              sub          a6, a7, s4
                  bne          ra, t1, 135f
                  xor          s10, t4, s9
                  beq          t5, sp, 146f
                  bgeu         t6, t3, 138f
                  slli         s8, s5, 23
                  lui          zero, 36103
                  bgeu         a4, t6, 145f
135:              andi         s6, ra, -1397
136:              bgeu         t3, a7, 152f
                  add          t1, s7, t0
138:              sltiu        a6, s2, 1149
                  or           a3, s1, s10
                  slli         s3, a5, 16
                  sltu         ra, s10, zero
                  bgeu         s6, a5, 153f
                  add          s10, a1, a4
                  sltiu        a4, t0, -1193
145:              or           a5, s1, t1
146:              slt          s6, t2, s9
                  slli         s9, a0, 6
                  slt          s3, a2, gp
                  auipc        t5, 1030493
                  sltu         s0, t0, a3
                  blt          t1, sp, 162f
152:              bne          a3, a2, 171f
153:              bge          a4, t5, 165f
                  lui          gp, 671596
                  sltiu        s8, s9, 509
                  sll          s2, zero, s10
                  ori          gp, t2, 1215
                  bne          s4, t5, 162f
                  andi         gp, s0, -949
                  blt          s3, a7, 161f
161:              sll          s0, s4, t6
162:              sltu         tp, s9, s4
                  bgeu         a5, tp, 170f
                  and          a2, a1, a2
165:              andi         t2, s2, 1790
                  lui          s10, 740558
                  andi         tp, s7, 1281
                  slti         a6, a6, -1705
                  add          t2, sp, t2
170:              auipc        t5, 75961
171:              bge          t3, s0, 173f
                  bgeu         s2, s11, 176f
173:              slti         t1, a4, -1379
                  sub          s8, s11, s1
                  andi         t1, a3, -654
176:              slli         a6, t6, 5
                  sra          s8, ra, a3
                  beq          s7, s6, 188f
                  sltu         s6, t6, a5
                  bne          s5, s8, 196f
                  bltu         s8, t5, 191f
                  nop
                  andi         a1, a4, -939
                  slti         a3, s6, 693
                  sll          a5, t5, a5
                  nop
                  and          s10, s2, s0
188:              or           t2, s11, gp
                  and          s11, gp, a6
                  srli         t0, a5, 6
191:              sltiu        s2, t1, -169
                  bgeu         s10, zero, 208f
                  sltu         a0, t2, ra
                  addi         a0, s5, -967
                  slt          s8, s7, s5
196:              xor          t0, zero, s4
                  bltu         tp, gp, 215f
                  or           t6, t3, s1
                  bge          s11, s0, 206f
                  beq          s2, ra, 211f
                  or           s8, s5, gp
                  lui          s2, 168599
                  slt          s3, t5, zero
                  slt          s4, s6, t5
                  bgeu         a3, s8, 222f
206:              sra          t2, sp, sp
                  andi         t5, a4, -1809
208:              nop
                  srl          s10, tp, t0
                  srli         s8, tp, 27
211:              xori         a3, t1, -791
                  andi         gp, t5, -2022
                  beq          s9, s9, 233f
                  sub          t6, s3, a1
215:              add          t2, a3, t3
                  slli         s11, s11, 22
                  bltu         s3, t5, 236f
                  lui          s0, 969301
                  srl          s3, a3, s6
                  sltiu        s8, t3, 438
                  bge          s8, t0, 228f
222:              andi         a4, t4, 1288
                  ori          zero, a5, -1792
                  and          s2, s4, s8
                  sub          s4, a2, s7
                  xor          t2, s10, a0
                  beq          a2, s10, 243f
228:              sra          ra, a3, a5
                  srl          t2, a1, t3
                  sll          tp, a1, s1
                  beq          s3, s6, 243f
                  or           t3, sp, s5
233:              xori         gp, sp, 693
                  lui          s11, 912932
                  bltu         a3, a7, 252f
236:              bge          t6, a7, 254f
                  auipc        t2, 337059
                  or           t5, a0, t2
                  slli         s9, s8, 8
                  ori          tp, s1, 1815
                  beq          a3, a2, 257f
                  slti         s9, sp, 1214
243:              srl          a0, a0, a2
                  beq          a0, a2, 254f
                  add          a3, t0, s4
                  ori          gp, tp, 589
                  slti         gp, a0, 1261
                  beq          s9, ra, 264f
                  and          a2, ra, s5
                  ori          a3, t4, 1255
                  add          s3, s5, t4
252:              auipc        t6, 32882
                  slli         t0, s11, 21
254:              ori          t3, t3, 1804
                  and          s6, s7, s2
                  and          t0, gp, ra
257:              blt          s10, tp, 268f
                  bltu         s5, s3, 263f
                  bgeu         s8, a1, 263f
                  sltiu        t3, s2, -1629
                  sltu         s1, t4, a6
                  slli         a6, a3, 28
263:              srai         t6, a1, 11
264:              bge          t6, s11, 280f
                  sltiu        s11, a1, 793
                  sub          s10, t0, a1
                  sltu         s4, a6, s1
268:              sra          t3, t2, tp
                  bgeu         ra, a2, 286f
                  ori          s9, sp, 1996
                  sltu         t5, a4, t1
                  and          s0, a2, t0
                  bgeu         s7, t6, 291f
                  sra          s3, t3, s3
                  add          a1, a7, a7
                  auipc        s2, 592246
                  srli         t2, t2, 4
                  addi         ra, t2, -396
                  blt          s9, s1, 286f
280:              add          s7, s4, t6
                  or           s2, a5, ra
                  sra          a4, sp, a7
                  auipc        t5, 749413
                  lui          s10, 737799
                  blt          ra, s2, 290f
286:              srli         t1, s0, 9
                  add          t5, s2, t4
                  sub          t2, t5, a6
                  and          t2, ra, a3
290:              sll          a5, a0, a6
291:              or           t6, s2, a2
                  bne          s6, s5, 309f
                  srl          t5, s5, a4
                  sltu         t1, a5, sp
                  sltiu        t1, a3, -650
                  la           a0, sub_5
                  addi         a0, a0, 916
                  sll          s10, s7, t1
                  xori         s1, s7, 1373
                  srai         s11, s5, 16
main_j3:          jalr         ra, a0, -915 #jump main -> sub_5
                  bltu         ra, s8, 305f
                  ori          a1, t5, 2006
                  addi         a4, s5, 1030
                  slli         a5, a3, 31
                  sltu         s3, a7, t4
                  sltu         s5, zero, t2
                  srl          ra, s11, s1
                  sltiu        s3, a7, -921
                  sub          t2, t6, t2
                  sra          a1, t3, t6
                  sltiu        s9, zero, 870
                  nop
305:              addi         t5, s1, 455
                  lui          s11, 60173
                  lui          ra, 130512
                  slt          s4, t0, t2
                  srai         t3, a6, 7
                  la           t2, sub_4
                  slt          s3, s8, t0
                  lui          s10, 70909
                  addi         t2, t2, -713
                  auipc        t1, 364537
                  xor          t1, t3, s4
                  sub          s10, a6, s4
main_j1:          jalr         ra, t2, 714 #jump main -> sub_4
                  blt          s8, s11, 326f
                  srli         s11, s9, 25
309:              slti         s8, s3, 404
                  bne          ra, a6, 326f
                  slt          a1, a5, t6
                  ori          s10, s8, 1226
                  nop
                  sll          s9, t3, zero
                  srl          s3, t3, s11
                  srli         t0, a4, 21
                  srli         a0, s10, 17
                  blt          a0, ra, 320f
                  or           ra, t6, a2
320:              xori         tp, t1, -1445
                  addi         s3, a6, -56
                  slli         s11, t3, 7
                  sltu         a4, s1, s3
                  slli         s5, s5, 15
                  sra          t5, t2, a7
326:              bgeu         t5, s10, 344f
                  sra          s0, t6, a2
                  addi         a6, a3, 101
                  beq          ra, t0, 340f
                  slli         t5, t1, 7
                  sra          t1, a5, a2
                  or           s11, s1, zero
                  sltiu        zero, s6, -1800
                  xori         gp, zero, -1610
                  beq          zero, a5, 345f
                  auipc        s6, 165829
                  ori          s8, ra, -1490
                  addi         a2, t3, 458
                  slt          a3, s2, s6
340:              add          s9, s11, t6
                  srli         a5, s6, 24
                  addi         a2, t6, 1823
                  slt          s9, sp, t1
344:              ori          gp, a7, -1731
345:              blt          s3, s8, 352f
                  sll          a3, s1, sp
                  addi         a3, zero, -668
                  xor          gp, s11, a0
                  sltiu        s7, s0, 1058
                  sub          t3, s0, a3
                  srai         s2, a7, 15
352:              bgeu         t4, sp, 371f
                  srli         s5, a7, 22
                  xori         t5, t2, -1732
                  sra          a6, t0, s4
                  bltu         s9, t5, 367f
                  ori          a5, t4, 634
                  andi         a2, a7, -598
                  srli         a5, s11, 11
                  addi         a4, a1, -1115
                  sra          t0, a3, s8
                  blt          s8, zero, 366f
                  xor          s5, t3, s6
                  srl          s5, s7, s11
                  bge          a1, t3, 376f
366:              srl          a3, a4, t4
367:              slti         a5, t6, -1457
                  ori          s8, t6, 1812
                  srli         s2, a3, 31
                  bgeu         s10, t6, 386f
371:              srai         s0, s11, 15
                  add          s10, a7, tp
                  andi         gp, a4, 1823
                  sub          s0, s1, s1
                  slti         t6, t6, -1313
376:              nop
                  bge          s2, a0, 387f
                  sltiu        zero, tp, -352
                  sub          s2, t3, a2
                  bltu         s7, t0, 400f
                  bge          a3, a5, 382f
382:              ori          t5, t5, 2044
                  srl          s1, a4, t6
                  ori          s2, zero, -420
                  ori          s10, s9, -17
386:              slti         a2, s7, -6
387:              sub          s10, t3, s5
                  bne          s3, a6, 395f
                  sll          a2, s1, a4
                  add          s4, s2, s10
                  xori         t0, s5, -1080
                  slti         a3, s2, 1746
                  bne          t4, t6, 397f
                  add          s9, s5, s4
395:              srl          s7, t5, t1
                  srli         t6, t6, 2
397:              bgeu         s0, a1, 413f
                  auipc        a5, 607348
                  xori         s3, s8, 1891
400:              srl          s10, t1, a7
                  nop
                  and          gp, a7, s8
                  add          s11, a4, s3
                  bltu         a1, s10, 416f
                  add          s7, a5, a4
                  xor          zero, s4, t0
                  sra          gp, s4, s0
                  andi         s6, t4, 1038
                  sltu         s2, gp, s10
                  xori         s8, s2, -524
                  xor          a3, a0, s5
                  xori         a2, a6, -327
413:              srli         a0, a5, 0
                  bgeu         zero, t2, 430f
                  srai         a4, sp, 20
416:              bltu         t4, s0, 426f
                  xori         s0, s1, 1093
                  addi         t3, s11, -15
                  auipc        s10, 922090
                  sltu         s8, t3, s2
                  lui          a6, 132840
                  slli         t6, a1, 27
main_4:           jal          ra, 0f
0:                jal          t0, 15f
1:                jal          t1, 19f
2:                jal          t1, 9f
3:                jal          t0, 17f
4:                jal          t1, 6f
5:                jal          t1, 3b
6:                jal          ra, 5b
7:                jal          t1, 1b
8:                jal          a3, 7b
9:                jal          ra, 13f
10:               jal          s9, 11f
11:               jal          s10, 18f
12:               jal          ra, 4b
13:               jal          s4, 10b
14:               jal          ra, 12b
15:               jal          s3, 14b
16:               jal          ra, 8b
17:               jal          tp, 2b
18:               jal          t0, 16b
19:               auipc        s11, 389545
                  srai         t5, s0, 18
                  xor          t6, t0, s4
                  srli         t3, t4, 20
                  srl          s9, s2, s0
                  la           a4, sub_3
                  srli         s0, s4, 14
                  sltiu        a1, t1, -1483
                  addi         a4, a4, -228
                  slli         a3, s3, 22
                  slt          a5, s5, a3
                  sub          s5, t5, a0
                  xori         t2, a2, -382
                  andi         s9, t5, 1735
main_j5:          jalr         ra, a4, 228 #jump main -> sub_3
                  blt          t0, sp, 428f
                  bne          t1, s8, 436f
426:              xori         t6, s4, 1404
                  sltiu        tp, t6, 136
428:              bne          a7, s2, 432f
                  sra          t1, t5, s7
430:              ori          a5, t2, -940
                  xor          a5, a5, a0
432:              bne          a7, a0, 439f
                  slti         s3, s10, -822
                  slli         a2, t4, 5
                  blt          s9, gp, 442f
436:              sra          s4, s11, t3
                  bltu         t1, a6, 456f
                  bltu         s5, s10, 449f
439:              xor          a2, t3, a7
                  xor          s11, a7, s8
                  bltu         a7, s9, 451f
442:              and          t3, a3, s2
                  srai         a0, s4, 17
                  or           s4, s0, s5
                  or           s1, s2, sp
                  andi         s4, t4, 990
                  blt          ra, s5, 451f
                  slti         zero, s4, -742
449:              srli         t1, a3, 3
                  ori          t6, a4, -336
451:              bltu         a0, a2, 462f
                  sltiu        a1, s5, 1258
                  srl          s3, tp, a7
                  nop
                  andi         gp, t3, 61
456:              andi         tp, a4, 1430
                  add          t6, s5, s6
                  auipc        a6, 289351
                  andi         a5, s5, -1549
                  sll          a4, a0, a6
                  nop
462:              slli         a4, s2, 20
                  slti         a4, zero, 197
                  slt          tp, s6, t3
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         t4, t4, -64
                  slt          s8, t6, s4
                  nop
                  sw           ra, 4(t4)
                  and          t5, s1, a0
                  sltu         a4, a2, t5
                  srl          s7, s0, t5
                  slt          s2, a3, s4
                  andi         s3, s1, 323
sub_1_2:          jal          ra, 10f
0:                jal          a1, 7f
1:                jal          ra, 12f
2:                jal          ra, 9f
3:                jal          ra, 11f
4:                jal          ra, 13f
5:                jal          t1, 8f
6:                jal          t1, 0b
7:                jal          a1, 2b
8:                jal          a5, 4b
9:                jal          ra, 3b
10:               jal          s4, 1b
11:               jal          gp, 5b
12:               jal          ra, 6b
13:               and          s8, tp, a7
sub_1_3:          jal          ra, 4f
0:                jal          ra, 6f
1:                jal          ra, 5f
2:                jal          s6, 8f
3:                jal          ra, 1b
4:                jal          ra, 9f
5:                jal          t2, 10f
6:                jal          s8, 7f
7:                jal          ra, 2b
8:                jal          ra, 3b
9:                jal          t6, 0b
10:               srl          s1, t5, a0
sub_1_0:          jal          ra, 2f
0:                jal          s3, 13f
1:                jal          ra, 5f
2:                jal          ra, 6f
3:                jal          s5, 22f
4:                jal          ra, 15f
5:                jal          t0, 11f
6:                jal          s2, 19f
7:                jal          ra, 30f
8:                jal          s4, 16f
9:                jal          a0, 0b
10:               jal          t0, 20f
11:               jal          ra, 26f
12:               jal          ra, 8b
13:               jal          ra, 18f
14:               jal          ra, 21f
15:               jal          ra, 3b
16:               jal          ra, 4b
17:               jal          ra, 23f
18:               jal          ra, 7b
19:               jal          ra, 10b
20:               jal          ra, 28f
21:               jal          t1, 24f
22:               jal          t1, 27f
23:               jal          s6, 29f
24:               jal          tp, 12b
25:               jal          t1, 14b
26:               jal          s0, 9b
27:               jal          ra, 17b
28:               jal          t1, 25b
29:               jal          a1, 1b
30:               addi         gp, s7, 1255
                  add          a5, t0, t1
                  or           s7, tp, t2
                  nop
                  nop
                  or           t0, s11, s11
                  lui          s5, 373101
                  slt          s7, s3, a2
                  srl          a6, a7, s5
                  bne          s5, s7, 14f
                  slti         t3, a3, 1035
                  bltu         s7, s6, 22f
                  and          gp, t5, s0
                  slt          s3, a0, zero
                  srl          a1, t5, gp
14:               xori         s11, t5, 988
                  xor          t0, s10, s6
                  blt          s3, s11, 33f
                  srl          s0, a5, zero
                  andi         s6, t4, 286
                  bgeu         a0, s1, 30f
                  ori          s2, t6, 889
                  andi         t3, s8, -1094
22:               blt          t1, t3, 28f
                  blt          t5, s2, 34f
                  nop
                  sll          t6, s0, ra
                  and          t0, a0, sp
                  sltu         a4, a0, s3
28:               bltu         a7, gp, 37f
                  and          s11, ra, t3
30:               slt          a5, s3, a3
                  sltiu        a2, a4, 1964
                  or           t6, t1, sp
33:               bne          a5, a0, 44f
34:               bgeu         s1, a6, 41f
                  sltiu        a6, gp, 582
                  sra          a2, a4, a0
37:               slli         gp, s5, 17
                  addi         s5, a6, 727
                  and          s11, a7, s8
                  bgeu         a0, a7, 52f
41:               bge          s7, a0, 56f
                  andi         a1, s0, 1909
                  nop
44:               slti         t1, gp, -1697
                  bge          t3, a3, 56f
                  addi         ra, zero, 1934
                  srai         s8, a0, 4
                  xor          t0, t5, s0
                  addi         a0, s9, -1383
                  auipc        s0, 1016487
                  srli         s1, a7, 22
52:               srl          s8, s8, s8
                  srai         t1, t3, 6
                  lui          s1, 616476
                  sra          s9, t3, t6
56:               beq          t4, s8, 57f
57:               bltu         s11, a4, 71f
                  addi         s3, a6, -992
                  or           s2, ra, gp
                  slt          a3, s5, tp
                  srli         s11, a0, 13
                  ori          a6, a7, 1961
                  xor          t6, s1, a7
                  srli         a3, a3, 31
                  blt          s11, t0, 82f
                  sltu         a0, sp, s7
                  and          a5, s7, a4
                  andi         tp, t2, -547
                  ori          ra, t3, -1718
                  nop
71:               bltu         a7, t2, 87f
                  slt          a3, s2, a5
                  blt          tp, a2, 91f
                  xori         s3, zero, -1741
                  blt          a2, s1, 91f
                  srli         s7, gp, 7
                  add          a0, a3, t1
                  slli         gp, gp, 0
                  xor          s10, s8, t3
                  slt          a6, a6, a3
                  auipc        a5, 367652
82:               addi         t0, a6, 372
                  xori         t0, t4, 60
                  ori          ra, s11, 912
                  nop
                  and          t0, s3, t3
87:               xori         s9, s10, -1904
                  blt          t4, s11, 99f
                  bge          t0, s0, 105f
                  slli         s2, s3, 27
91:               andi         t2, t0, 536
                  sub          zero, s4, a5
                  bge          s10, t4, 102f
                  slt          a6, t3, a2
                  sll          t3, t5, tp
                  xor          gp, t6, s2
                  xori         s3, s1, 771
                  sll          a3, a3, t6
99:               sub          t2, a1, s8
                  blt          t2, s11, 119f
                  bne          s10, gp, 109f
102:              srai         t2, gp, 15
                  or           s1, a6, a1
                  nop
105:              addi         s9, s4, 1768
                  blt          s11, s2, 126f
                  slti         a6, s3, -440
                  slli         t1, t4, 4
109:              slti         zero, t6, 182
                  srl          s10, t2, s4
                  beq          t0, a3, 121f
                  bne          sp, zero, 118f
                  slli         s2, tp, 29
                  sltu         gp, tp, zero
                  lui          t0, 658666
                  sub          s4, a0, s7
                  bge          s11, s9, 124f
118:              and          s9, s9, t3
119:              and          t6, s7, s9
                  bltu         s5, s9, 130f
121:              bge          gp, a5, 129f
                  and          s11, s4, t5
                  xori         s2, a4, 74
124:              bgeu         s10, a3, 135f
                  bgeu         s9, s7, 136f
126:              slli         s8, ra, 31
                  lui          a2, 568808
                  sltu         t2, s2, t1
129:              andi         a4, a7, -441
130:              sra          s11, a4, s0
                  bne          s9, t0, 145f
                  srai         s9, t6, 2
                  beq          t3, t3, 139f
                  and          a6, t3, s11
135:              bgeu         t1, a3, 146f
136:              srli         s1, sp, 2
                  addi         a6, tp, -1468
                  sll          t2, gp, t3
139:              sltu         ra, a3, s7
                  bge          a3, s9, 152f
                  xor          s11, s10, a1
                  bltu         t3, a7, 158f
                  sltiu        t2, t0, -1198
                  bge          tp, t0, 161f
145:              blt          a2, s11, 155f
146:              add          zero, t3, a0
                  blt          t6, ra, 153f
                  sltiu        ra, s6, -707
                  sll          s8, a2, t6
                  xori         s4, sp, -654
                  sltiu        s4, a4, 1401
152:              slli         s11, s10, 6
153:              sltu         t2, t1, s7
                  slli         s3, a0, 0
155:              sll          a4, a6, a3
                  bne          s4, t4, 175f
                  or           a0, a6, s5
158:              auipc        s6, 50598
                  sub          s7, a0, t4
                  and          a5, s6, t1
161:              lui          s7, 388348
                  slti         s7, s10, 1097
                  and          s9, t1, s6
                  xor          a2, a5, sp
                  xor          s2, sp, t2
                  sra          ra, a0, a0
                  ori          t6, sp, -1535
                  addi         zero, a7, 1262
                  andi         s8, s7, 930
                  nop
                  srl          t1, s5, s6
                  sra          s4, t5, zero
                  sra          a5, s9, s0
                  bltu         a6, tp, 190f
175:              addi         s8, a0, -1155
                  slt          s1, s5, t4
                  nop
                  slti         s6, a0, -1743
                  add          s6, s1, a0
                  slt          t3, t6, s4
                  slti         t2, sp, -554
                  beq          a7, t3, 197f
                  beq          s7, s4, 184f
184:              slti         s0, t0, -1642
                  sltiu        s2, t6, 1456
                  sltu         zero, a0, gp
                  srl          a6, t1, s3
                  bge          a6, s6, 196f
                  bge          a0, a5, 206f
190:              xori         t1, s5, 1186
                  beq          s10, s4, 198f
                  beq          s9, s1, 212f
                  xori         a2, s9, -832
                  bne          s3, s11, 205f
                  auipc        t2, 606571
196:              bne          a3, a1, 207f
197:              slti         s0, a7, -1767
198:              slt          s4, t2, a3
                  nop
                  sra          s7, a2, zero
                  srl          gp, s11, t6
                  sra          s9, s6, t5
                  srl          a5, s5, t5
                  nop
205:              bge          s4, zero, 216f
206:              slli         ra, a0, 12
207:              andi         s4, gp, -676
                  bne          t5, t4, 216f
                  xori         zero, a2, -239
                  ori          s6, t6, 310
                  slli         a5, a0, 22
212:              nop
sub_1_1:          jal          ra, 12f
0:                jal          ra, 7f
1:                jal          ra, 5f
2:                jal          ra, 15f
3:                jal          ra, 22f
4:                jal          ra, 24f
5:                jal          t1, 14f
6:                jal          ra, 10f
7:                jal          ra, 21f
8:                jal          s10, 0b
9:                jal          ra, 20f
10:               jal          ra, 1b
11:               jal          ra, 23f
12:               jal          t0, 17f
13:               jal          ra, 3b
14:               jal          a2, 18f
15:               jal          t1, 25f
16:               jal          ra, 27f
17:               jal          t1, 8b
18:               jal          s0, 11b
19:               jal          t1, 26f
20:               jal          s7, 2b
21:               jal          ra, 13b
22:               jal          gp, 9b
23:               jal          ra, 16b
24:               jal          tp, 6b
25:               jal          ra, 19b
26:               jal          ra, 4b
27:               sll          s2, s11, s5
                  addi         t6, tp, -680
                  nop
                  addi         s1, t6, -898
216:              blt          t5, s11, 223f
                  srl          t3, t4, s10
                  slti         t2, a4, -1886
                  srai         s4, s8, 24
                  andi         t5, t1, -1611
                  sltu         t1, t4, s3
                  bgeu         ra, ra, 231f
223:              xor          s1, a0, a0
                  nop
                  xor          s7, t6, tp
                  sub          a0, t2, sp
                  slt          t2, t4, s2
                  auipc        ra, 230027
                  auipc        s1, 884353
                  slti         ra, a7, -748
231:              slli         s2, s10, 3
                  sra          s7, s5, zero
                  slti         t2, a3, 1479
                  blt          t3, ra, 244f
                  bge          ra, s1, 244f
                  xori         s3, t1, 7
                  blt          s9, s11, 247f
                  or           s5, ra, t4
                  ori          zero, s6, -1384
                  slt          t0, a6, sp
                  slt          s2, s4, a5
                  and          s5, s10, a4
                  srli         s7, a4, 29
244:              xor          s0, a4, a1
                  and          s4, t2, t6
                  srli         s5, a3, 30
247:              srli         t5, s3, 5
                  xor          s8, t6, s5
                  lw           ra, 4(t4)
                  nop
                  sll          s11, s5, tp
                  addi         t4, t4, 64
                  sub          a4, a6, a0
                  add          s6, t5, a1
                  andi         s10, gp, 647
                  xor          s5, t5, ra
                  sra          s9, t1, t1
355:              addi x14, x1, 0
355:              jalr x14, x14, 0
sub_2:            add          s5, zero, s3
                  bne          s1, s3, sub_2_stack_p
                  ori          tp, t5, 1418
                  and          s7, s7, a0
sub_2_stack_p:    addi         t4, t4, -16
                  srli         s8, s3, 18
                  slli         s2, s3, 13
                  sw           ra, 4(t4)
                  xor          t6, s2, s10
sub_2_1:          jal          ra, 2f
0:                jal          t1, 10f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          ra, 15f
4:                jal          ra, 9f
5:                jal          ra, 0b
6:                jal          ra, 8f
7:                jal          t1, 17f
8:                jal          ra, 12f
9:                jal          t0, 16f
10:               jal          ra, 3b
11:               jal          ra, 6b
12:               jal          s0, 13f
13:               jal          s0, 14f
14:               jal          ra, 5b
15:               jal          ra, 7b
16:               jal          ra, 18f
17:               jal          t1, 1b
18:               slt          s1, t2, a4
sub_2_0:          jal          ra, 6f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          tp, 1b
3:                jal          tp, 15f
4:                jal          t1, 17f
5:                jal          t1, 14f
6:                jal          a2, 5b
7:                jal          ra, 0b
8:                jal          ra, 21f
9:                jal          ra, 2b
10:               jal          ra, 9b
11:               jal          ra, 18f
12:               jal          s7, 20f
13:               jal          t1, 7b
14:               jal          t1, 12b
15:               jal          a6, 19f
16:               jal          t1, 10b
17:               jal          s0, 11b
18:               jal          ra, 8b
19:               jal          ra, 13b
20:               jal          t3, 16b
21:               sltu         zero, gp, a6
                  ori          a4, s4, -712
                  slt          zero, s9, s2
                  srai         s0, zero, 3
                  slli         zero, sp, 9
                  srli         a6, gp, 6
                  sub          t6, sp, gp
                  lui          a1, 928030
                  bltu         s1, s8, 23f
                  srl          a6, t3, a7
                  bgeu         a5, t2, 23f
                  auipc        s3, 1023836
                  ori          a2, gp, 1908
                  bltu         a6, t3, 28f
                  bltu         tp, t2, 22f
                  blt          s5, a5, 24f
                  srl          a4, a1, sp
                  ori          s1, t3, 716
                  xori         a4, s8, 998
                  sra          a2, a1, t5
                  addi         s9, zero, 405
                  slti         s5, t6, -1052
                  srl          a1, s8, s10
22:               srl          a0, a6, s6
23:               auipc        s4, 765874
24:               beq          a1, a7, 30f
                  add          ra, s4, s10
                  srai         tp, s1, 16
                  sra          s10, s9, a1
28:               slli         s9, tp, 1
                  bge          s5, a0, 46f
30:               andi         s6, s4, -717
                  bltu         s6, ra, 41f
                  sub          t1, t2, a6
                  sub          zero, s3, gp
                  sub          t2, s4, t5
                  andi         ra, s10, 852
                  slt          gp, a4, s6
                  slli         ra, s5, 0
                  srai         s10, s10, 5
                  sll          s9, t3, gp
                  xor          s1, zero, s7
41:               sltu         s0, gp, s1
                  sra          t2, t0, s10
                  lui          a4, 693757
                  srai         a2, a4, 5
                  beq          s3, s8, 59f
46:               srl          s1, s4, tp
                  add          s7, s8, t2
                  sltiu        s4, s8, 1003
                  blt          ra, a7, 66f
                  sub          s6, zero, t3
                  auipc        s3, 912668
                  blt          s1, t5, 55f
                  or           t3, s6, s11
                  andi         s4, gp, -1394
55:               slti         s3, t3, -610
                  slli         s9, s4, 24
                  srai         s8, gp, 14
                  sub          a2, t1, a2
59:               sra          a5, t6, a7
                  slli         t2, s6, 8
                  sra          t2, a6, tp
                  sra          s11, a4, sp
                  slt          s11, a3, t2
                  bne          t6, s11, 68f
                  sll          s4, zero, s1
66:               srli         s7, t0, 31
                  beq          s11, s6, 78f
68:               add          s8, s6, gp
                  addi         a1, s1, -1143
                  slli         s10, s0, 10
                  and          s0, s10, tp
                  srli         a0, a1, 14
                  or           t2, s6, s11
                  addi         s5, s8, 313
                  srl          gp, a2, a7
                  sll          s7, s5, s7
                  slti         s9, s1, 369
78:               sltu         gp, a6, s6
                  srai         s3, a3, 2
                  xor          ra, a7, a2
                  blt          sp, s3, 92f
                  or           s0, s4, t4
                  xori         s1, t3, 1061
                  blt          s5, s8, 92f
                  sltiu        a4, s5, -71
                  and          a4, a5, tp
                  xor          s6, t0, t0
                  addi         s3, s4, 227
                  lui          s3, 545828
                  sub          ra, s5, gp
                  srai         a6, zero, 30
92:               addi         t1, s9, -1976
                  blt          a5, s6, 97f
                  srli         s11, a1, 17
                  bltu         tp, s6, 97f
                  or           tp, s9, s4
97:               sltiu        a5, tp, 681
                  beq          s1, s2, 114f
                  bltu         s2, sp, 114f
                  ori          s10, t3, 70
                  sltiu        s5, t5, 202
                  ori          a2, t1, -2013
                  sltu         s11, t2, t3
                  sll          s0, s11, s2
                  sltiu        s4, s3, 25
                  beq          tp, s0, 114f
                  slli         a6, s5, 27
                  blt          s4, a3, 121f
                  auipc        s10, 161212
                  blt          s1, t1, 113f
                  and          s7, a1, sp
                  xor          a5, s9, gp
113:              sltu         s10, a6, s6
114:              xori         t6, a3, -517
                  lui          s8, 556418
                  bgeu         s2, a5, 126f
                  blt          t2, t2, 130f
                  bltu         s5, a6, 136f
                  ori          s9, gp, 1382
                  slti         s10, a5, -363
121:              bge          tp, a3, 129f
                  auipc        t3, 58844
                  nop
                  add          zero, t0, t2
                  xor          a2, a2, a4
126:              slt          s5, s10, s3
                  add          zero, a4, t1
                  bltu         s9, sp, 141f
129:              bne          s5, s10, 136f
130:              sltu         s3, s0, s9
                  slli         s11, t5, 23
                  sra          s11, s6, s5
                  sra          t2, tp, t4
                  xori         s6, sp, -1124
                  xor          t0, s4, t5
136:              lui          s3, 510630
sub_2_2:          jal          ra, 11f
0:                jal          t1, 20f
1:                jal          t1, 22f
2:                jal          ra, 9f
3:                jal          t1, 2b
4:                jal          t1, 0b
5:                jal          gp, 13f
6:                jal          s0, 18f
7:                jal          t1, 1b
8:                jal          t0, 16f
9:                jal          t3, 8b
10:               jal          gp, 23f
11:               jal          ra, 4b
12:               jal          t1, 19f
13:               jal          ra, 14f
14:               jal          ra, 12b
15:               jal          ra, 6b
16:               jal          gp, 7b
17:               jal          ra, 15b
18:               jal          ra, 3b
19:               jal          ra, 17b
20:               jal          t0, 5b
21:               jal          ra, 10b
22:               jal          ra, 21b
23:               srai         s2, t3, 1
                  ori          ra, a5, 1238
                  sub          t6, t4, a0
                  and          a1, t3, t6
                  blt          t6, sp, 151f
141:              add          a6, s6, gp
                  bgeu         s2, sp, 144f
                  bltu         a0, a1, 153f
144:              beq          a6, t0, 161f
                  xori         a2, t1, 911
                  addi         s0, a3, 636
                  xori         a5, t0, -1342
                  addi         s3, s7, -463
                  sltu         s7, t6, s0
                  beq          a1, s2, 154f
151:              srai         a1, s1, 16
                  xori         a6, s9, -453
153:              sll          t5, a0, s1
154:              and          t0, a5, a0
                  beq          s5, s11, 164f
                  beq          a7, gp, 174f
                  slli         s10, s2, 4
                  bne          s0, gp, 166f
                  beq          zero, s7, 169f
                  auipc        s4, 517367
161:              auipc        a6, 1021
                  blt          s11, t6, 176f
                  bltu         a7, a7, 166f
164:              add          ra, gp, s0
                  bltu         a2, a5, 176f
166:              lui          s8, 257457
                  bltu         s10, a1, 178f
                  nop
169:              sra          s6, t2, s11
                  sub          tp, t0, t5
                  bge          ra, t0, 179f
                  slli         s5, zero, 1
                  srai         gp, s1, 9
174:              srli         t3, t3, 11
                  sra          s0, t1, a0
176:              slt          t1, s3, a5
                  srli         t6, s1, 19
178:              andi         s8, t6, -1639
179:              bne          t2, s2, 188f
                  sltu         t2, s0, ra
                  slli         s11, sp, 24
                  auipc        s4, 543632
                  xori         s1, t5, -1900
                  slti         s1, gp, 247
                  xor          s11, a4, s4
                  slt          a3, t4, a1
                  bltu         s8, a6, 188f
188:              andi         a6, s8, 218
                  sra          s10, s10, a3
                  nop
                  lw           ra, 4(t4)
                  ori          gp, s0, -1977
                  addi         t4, t4, 16
                  sltiu        t3, zero, 1708
272:              addi x10, x1, 0
272:              jalr x10, x10, 0
sub_4:            bltu         t0, s4, sub_4_stack_p
                  srli         s8, t1, 29
                  srl          s7, a3, t2
sub_4_stack_p:    addi         t4, t4, -36
                  srl          s0, sp, s3
                  sw           ra, 4(t4)
                  sltu         t2, t3, a2
                  nop
sub_4_23:         jal          ra, 10f
0:                jal          a4, 13f
1:                jal          a6, 7f
2:                jal          ra, 19f
3:                jal          a1, 1b
4:                jal          ra, 9f
5:                jal          t0, 16f
6:                jal          ra, 0b
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          s6, 22f
10:               jal          t1, 12f
11:               jal          ra, 5b
12:               jal          gp, 21f
13:               jal          ra, 2b
14:               jal          ra, 15f
15:               jal          a1, 11b
16:               jal          ra, 17f
17:               jal          ra, 20f
18:               jal          ra, 14b
19:               jal          ra, 4b
20:               jal          t0, 3b
21:               jal          t0, 18b
22:               sub          t2, s5, t2
sub_4_8:          jal          ra, 0f
0:                jal          t1, 12f
1:                jal          gp, 4f
2:                jal          ra, 13f
3:                jal          ra, 5f
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          t1, 11f
7:                jal          t1, 6b
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          ra, 8b
11:               jal          tp, 1b
12:               jal          a1, 10b
13:               auipc        t6, 42320
sub_4_14:         jal          ra, 24f
0:                jal          ra, 25f
1:                jal          tp, 7f
2:                jal          a4, 17f
3:                jal          a5, 26f
4:                jal          t1, 21f
5:                jal          ra, 6f
6:                jal          ra, 28f
7:                jal          s6, 11f
8:                jal          t5, 1b
9:                jal          gp, 27f
10:               jal          ra, 5b
11:               jal          t1, 15f
12:               jal          t2, 13f
13:               jal          ra, 0b
14:               jal          ra, 23f
15:               jal          ra, 19f
16:               jal          ra, 14b
17:               jal          ra, 29f
18:               jal          t1, 8b
19:               jal          ra, 9b
20:               jal          tp, 12b
21:               jal          t1, 20b
22:               jal          t1, 10b
23:               jal          tp, 4b
24:               jal          t1, 3b
25:               jal          s1, 2b
26:               jal          a2, 22b
27:               jal          t1, 16b
28:               jal          ra, 18b
29:               slti         s1, s5, 396
sub_4_28:         jal          ra, 3f
0:                jal          ra, 6f
1:                jal          ra, 9f
2:                jal          t1, 0b
3:                jal          t0, 8f
4:                jal          ra, 5f
5:                jal          t1, 7f
6:                jal          ra, 1b
7:                jal          ra, 10f
8:                jal          ra, 2b
9:                jal          ra, 4b
10:               sub          s4, s11, a5
sub_4_11:         jal          ra, 2f
0:                jal          t3, 1f
1:                jal          t1, 13f
2:                jal          ra, 20f
3:                jal          ra, 28f
4:                jal          ra, 21f
5:                jal          ra, 11f
6:                jal          ra, 19f
7:                jal          t1, 8f
8:                jal          ra, 23f
9:                jal          a5, 3b
10:               jal          s1, 5b
11:               jal          ra, 12f
12:               jal          ra, 18f
13:               jal          a6, 27f
14:               jal          s7, 0b
15:               jal          s2, 22f
16:               jal          gp, 25f
17:               jal          ra, 10b
18:               jal          ra, 9b
19:               jal          ra, 26f
20:               jal          ra, 15b
21:               jal          s2, 17b
22:               jal          a3, 6b
23:               jal          ra, 4b
24:               jal          tp, 14b
25:               jal          ra, 7b
26:               jal          ra, 24b
27:               jal          ra, 16b
28:               or           s3, s0, zero
sub_4_21:         jal          ra, 23f
0:                jal          ra, 11f
1:                jal          ra, 29f
2:                jal          ra, 22f
3:                jal          ra, 30f
4:                jal          a3, 25f
5:                jal          t1, 10f
6:                jal          ra, 17f
7:                jal          ra, 4b
8:                jal          ra, 16f
9:                jal          s1, 15f
10:               jal          a6, 26f
11:               jal          ra, 12f
12:               jal          ra, 5b
13:               jal          t6, 14f
14:               jal          s2, 7b
15:               jal          ra, 3b
16:               jal          gp, 1b
17:               jal          ra, 27f
18:               jal          ra, 21f
19:               jal          t1, 2b
20:               jal          ra, 6b
21:               jal          ra, 24f
22:               jal          t1, 28f
23:               jal          ra, 13b
24:               jal          gp, 9b
25:               jal          t2, 8b
26:               jal          t1, 18b
27:               jal          ra, 0b
28:               jal          t1, 20b
29:               jal          ra, 19b
30:               slt          s7, t2, tp
sub_4_17:         jal          ra, 1f
0:                jal          ra, 11f
1:                jal          t1, 16f
2:                jal          s6, 13f
3:                jal          ra, 26f
4:                jal          ra, 14f
5:                jal          ra, 17f
6:                jal          ra, 12f
7:                jal          ra, 23f
8:                jal          a2, 20f
9:                jal          t1, 15f
10:               jal          ra, 24f
11:               jal          ra, 19f
12:               jal          ra, 10b
13:               jal          t1, 8b
14:               jal          ra, 9b
15:               jal          ra, 25f
16:               jal          ra, 6b
17:               jal          s3, 27f
18:               jal          ra, 7b
19:               jal          ra, 5b
20:               jal          ra, 18b
21:               jal          ra, 28f
22:               jal          ra, 3b
23:               jal          gp, 0b
24:               jal          t0, 2b
25:               jal          t1, 22b
26:               jal          s9, 21b
27:               jal          a2, 4b
28:               ori          s10, a2, 1333
sub_4_3:          jal          ra, 9f
0:                jal          ra, 17f
1:                jal          s2, 12f
2:                jal          t1, 5f
3:                jal          t1, 13f
4:                jal          ra, 6f
5:                jal          t1, 22f
6:                jal          ra, 11f
7:                jal          t1, 0b
8:                jal          ra, 15f
9:                jal          ra, 19f
10:               jal          ra, 8b
11:               jal          s0, 18f
12:               jal          ra, 14f
13:               jal          ra, 20f
14:               jal          ra, 21f
15:               jal          t1, 23f
16:               jal          ra, 4b
17:               jal          ra, 16b
18:               jal          t1, 10b
19:               jal          gp, 1b
20:               jal          a4, 7b
21:               jal          ra, 2b
22:               jal          t1, 3b
23:               andi         zero, t4, 1855
sub_4_0:          jal          ra, 16f
0:                jal          ra, 15f
1:                jal          ra, 2f
2:                jal          t1, 18f
3:                jal          t1, 19f
4:                jal          t1, 14f
5:                jal          t0, 10f
6:                jal          tp, 1b
7:                jal          ra, 11f
8:                jal          a6, 13f
9:                jal          a5, 3b
10:               jal          ra, 17f
11:               jal          ra, 12f
12:               jal          t6, 4b
13:               jal          ra, 6b
14:               jal          ra, 8b
15:               jal          t1, 5b
16:               jal          s4, 9b
17:               jal          ra, 7b
18:               jal          t1, 20f
19:               jal          t1, 0b
20:               sra          s0, s2, s4
sub_4_16:         jal          ra, 10f
0:                jal          ra, 24f
1:                jal          t1, 22f
2:                jal          s2, 5f
3:                jal          ra, 20f
4:                jal          a1, 19f
5:                jal          t1, 1b
6:                jal          ra, 17f
7:                jal          t1, 14f
8:                jal          s5, 18f
9:                jal          ra, 8b
10:               jal          ra, 21f
11:               jal          ra, 3b
12:               jal          ra, 13f
13:               jal          t1, 9b
14:               jal          ra, 16f
15:               jal          t0, 12b
16:               jal          t0, 2b
17:               jal          tp, 7b
18:               jal          t1, 25f
19:               jal          ra, 23f
20:               jal          ra, 15b
21:               jal          tp, 0b
22:               jal          ra, 11b
23:               jal          ra, 6b
24:               jal          ra, 4b
25:               srai         t5, t5, 13
sub_4_26:         jal          ra, 4f
0:                jal          t1, 3f
1:                jal          t1, 8f
2:                jal          ra, 17f
3:                jal          ra, 11f
4:                jal          s0, 13f
5:                jal          t0, 7f
6:                jal          t1, 0b
7:                jal          ra, 16f
8:                jal          ra, 10f
9:                jal          ra, 15f
10:               jal          a1, 9b
11:               jal          t1, 14f
12:               jal          ra, 2b
13:               jal          a2, 5b
14:               jal          s5, 1b
15:               jal          t1, 12b
16:               jal          ra, 6b
17:               sltu         a4, s6, s0
sub_4_6:          jal          ra, 11f
0:                jal          t1, 17f
1:                jal          tp, 14f
2:                jal          ra, 21f
3:                jal          ra, 7f
4:                jal          ra, 18f
5:                jal          ra, 6f
6:                jal          ra, 12f
7:                jal          a3, 10f
8:                jal          ra, 15f
9:                jal          ra, 13f
10:               jal          t1, 0b
11:               jal          s4, 20f
12:               jal          ra, 9b
13:               jal          a3, 16f
14:               jal          ra, 3b
15:               jal          ra, 4b
16:               jal          t5, 1b
17:               jal          ra, 2b
18:               jal          t1, 5b
19:               jal          t1, 8b
20:               jal          ra, 19b
21:               sll          t1, s10, t1
sub_4_9:          jal          ra, 12f
0:                jal          ra, 13f
1:                jal          ra, 6f
2:                jal          gp, 0b
3:                jal          t1, 5f
4:                jal          ra, 18f
5:                jal          ra, 20f
6:                jal          ra, 4b
7:                jal          t1, 8f
8:                jal          ra, 2b
9:                jal          s9, 15f
10:               jal          ra, 11f
11:               jal          ra, 3b
12:               jal          ra, 19f
13:               jal          ra, 16f
14:               jal          t1, 1b
15:               jal          t1, 17f
16:               jal          t1, 9b
17:               jal          ra, 14b
18:               jal          ra, 10b
19:               jal          t5, 7b
20:               and          t3, a2, a3
sub_4_15:         jal          ra, 8f
0:                jal          ra, 13f
1:                jal          a5, 24f
2:                jal          t1, 9f
3:                jal          ra, 4f
4:                jal          t1, 14f
5:                jal          ra, 12f
6:                jal          ra, 17f
7:                jal          ra, 10f
8:                jal          t1, 19f
9:                jal          t3, 5b
10:               jal          t0, 1b
11:               jal          ra, 20f
12:               jal          t1, 16f
13:               jal          ra, 3b
14:               jal          tp, 15f
15:               jal          t1, 6b
16:               jal          t1, 22f
17:               jal          ra, 2b
18:               jal          ra, 23f
19:               jal          ra, 18b
20:               jal          a2, 7b
21:               jal          ra, 0b
22:               jal          gp, 11b
23:               jal          ra, 21b
24:               jal          ra, 25f
25:               or           s9, a0, zero
sub_4_4:          jal          ra, 5f
0:                jal          t1, 14f
1:                jal          s4, 19f
2:                jal          tp, 11f
3:                jal          ra, 1b
4:                jal          ra, 10f
5:                jal          ra, 3b
6:                jal          s2, 2b
7:                jal          gp, 18f
8:                jal          gp, 13f
9:                jal          ra, 15f
10:               jal          ra, 7b
11:               jal          a5, 8b
12:               jal          ra, 0b
13:               jal          ra, 20f
14:               jal          ra, 9b
15:               jal          ra, 6b
16:               jal          ra, 12b
17:               jal          ra, 21f
18:               jal          s4, 17b
19:               jal          ra, 16b
20:               jal          s10, 4b
21:               xor          t6, tp, t2
sub_4_5:          jal          ra, 12f
0:                jal          ra, 17f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          a6, 13f
4:                jal          tp, 16f
5:                jal          t3, 8f
6:                jal          t1, 14f
7:                jal          ra, 1b
8:                jal          t6, 6b
9:                jal          ra, 0b
10:               jal          s5, 9b
11:               jal          ra, 15f
12:               jal          ra, 11b
13:               jal          s2, 4b
14:               jal          tp, 2b
15:               jal          ra, 5b
16:               jal          tp, 10b
17:               sra          a1, a3, ra
sub_4_7:          jal          ra, 13f
0:                jal          ra, 23f
1:                jal          ra, 21f
2:                jal          t1, 17f
3:                jal          ra, 10f
4:                jal          ra, 16f
5:                jal          ra, 0b
6:                jal          s3, 9f
7:                jal          ra, 22f
8:                jal          a2, 18f
9:                jal          gp, 1b
10:               jal          ra, 6b
11:               jal          ra, 24f
12:               jal          ra, 20f
13:               jal          ra, 2b
14:               jal          ra, 8b
15:               jal          ra, 5b
16:               jal          ra, 3b
17:               jal          tp, 11b
18:               jal          gp, 7b
19:               jal          ra, 25f
20:               jal          ra, 15b
21:               jal          s7, 14b
22:               jal          ra, 12b
23:               jal          t1, 19b
24:               jal          t1, 4b
25:               srl          a5, a4, a5
sub_4_27:         jal          ra, 4f
0:                jal          t1, 7f
1:                jal          a3, 5f
2:                jal          a0, 8f
3:                jal          t5, 11f
4:                jal          ra, 0b
5:                jal          ra, 14f
6:                jal          ra, 13f
7:                jal          s5, 1b
8:                jal          ra, 12f
9:                jal          t3, 3b
10:               jal          a1, 2b
11:               jal          ra, 6b
12:               jal          s1, 15f
13:               jal          ra, 10b
14:               jal          t1, 9b
15:               srai         s6, s7, 24
sub_4_24:         jal          ra, 18f
0:                jal          ra, 15f
1:                jal          gp, 11f
2:                jal          ra, 26f
3:                jal          ra, 27f
4:                jal          t1, 14f
5:                jal          ra, 23f
6:                jal          ra, 2b
7:                jal          ra, 20f
8:                jal          a5, 21f
9:                jal          a4, 17f
10:               jal          t1, 24f
11:               jal          ra, 0b
12:               jal          a6, 4b
13:               jal          s9, 19f
14:               jal          s7, 16f
15:               jal          gp, 7b
16:               jal          gp, 5b
17:               jal          ra, 22f
18:               jal          a0, 9b
19:               jal          ra, 6b
20:               jal          a4, 8b
21:               jal          t1, 3b
22:               jal          tp, 12b
23:               jal          tp, 13b
24:               jal          ra, 1b
25:               jal          ra, 10b
26:               jal          ra, 25b
27:               add          a5, s2, t1
sub_4_25:         jal          ra, 3f
0:                jal          a1, 6f
1:                jal          ra, 18f
2:                jal          a5, 10f
3:                jal          t1, 13f
4:                jal          t1, 12f
5:                jal          ra, 1b
6:                jal          ra, 20f
7:                jal          ra, 22f
8:                jal          s9, 0b
9:                jal          ra, 2b
10:               jal          t0, 23f
11:               jal          ra, 7b
12:               jal          ra, 15f
13:               jal          t5, 4b
14:               jal          ra, 11b
15:               jal          t1, 16f
16:               jal          t1, 5b
17:               jal          ra, 9b
18:               jal          ra, 21f
19:               jal          t1, 14b
20:               jal          s3, 17b
21:               jal          s9, 19b
22:               jal          t2, 8b
23:               andi         s2, t3, 788
sub_4_22:         jal          ra, 18f
0:                jal          ra, 7f
1:                jal          a3, 13f
2:                jal          s8, 0b
3:                jal          ra, 1b
4:                jal          t1, 21f
5:                jal          a2, 12f
6:                jal          a0, 23f
7:                jal          ra, 28f
8:                jal          tp, 27f
9:                jal          t1, 6b
10:               jal          a5, 4b
11:               jal          t1, 25f
12:               jal          t1, 3b
13:               jal          a3, 10b
14:               jal          t1, 26f
15:               jal          ra, 29f
16:               jal          s10, 5b
17:               jal          ra, 15b
18:               jal          a2, 8b
19:               jal          t3, 11b
20:               jal          t1, 17b
21:               jal          ra, 20b
22:               jal          ra, 2b
23:               jal          ra, 16b
24:               jal          ra, 9b
25:               jal          s7, 22b
26:               jal          s3, 19b
27:               jal          ra, 14b
28:               jal          ra, 24b
29:               srl          t3, t1, t2
sub_4_13:         jal          ra, 10f
0:                jal          ra, 6f
1:                jal          ra, 18f
2:                jal          tp, 17f
3:                jal          ra, 13f
4:                jal          t1, 9f
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          ra, 12f
8:                jal          ra, 14f
9:                jal          ra, 1b
10:               jal          t1, 11f
11:               jal          ra, 2b
12:               jal          ra, 8b
13:               jal          ra, 15f
14:               jal          t1, 4b
15:               jal          t1, 7b
16:               jal          t1, 0b
17:               jal          ra, 16b
18:               jal          ra, 19f
19:               jal          t1, 20f
20:               sra          a0, s9, t6
sub_4_12:         jal          ra, 1f
0:                jal          t1, 18f
1:                jal          t1, 6f
2:                jal          t1, 15f
3:                jal          ra, 10f
4:                jal          s8, 13f
5:                jal          ra, 9f
6:                jal          t2, 5b
7:                jal          ra, 17f
8:                jal          t1, 7b
9:                jal          t3, 8b
10:               jal          ra, 0b
11:               jal          t1, 19f
12:               jal          ra, 3b
13:               jal          ra, 2b
14:               jal          t1, 16f
15:               jal          ra, 11b
16:               jal          ra, 12b
17:               jal          a2, 14b
18:               jal          ra, 4b
19:               xor          zero, s11, s3
sub_4_10:         jal          ra, 11f
0:                jal          ra, 3f
1:                jal          ra, 17f
2:                jal          ra, 25f
3:                jal          t1, 18f
4:                jal          a1, 1b
5:                jal          s8, 9f
6:                jal          ra, 22f
7:                jal          t1, 19f
8:                jal          ra, 12f
9:                jal          tp, 21f
10:               jal          ra, 13f
11:               jal          ra, 15f
12:               jal          s0, 23f
13:               jal          ra, 7b
14:               jal          a0, 2b
15:               jal          ra, 5b
16:               jal          ra, 14b
17:               jal          s2, 6b
18:               jal          ra, 4b
19:               jal          ra, 20f
20:               jal          t3, 8b
21:               jal          ra, 16b
22:               jal          s2, 10b
23:               jal          t1, 26f
24:               jal          ra, 0b
25:               jal          t1, 24b
26:               xor          a1, sp, s1
sub_4_18:         jal          ra, 27f
0:                jal          t1, 28f
1:                jal          t1, 4f
2:                jal          t1, 18f
3:                jal          ra, 0b
4:                jal          ra, 19f
5:                jal          t1, 3b
6:                jal          t1, 2b
7:                jal          t1, 29f
8:                jal          a3, 20f
9:                jal          s2, 7b
10:               jal          t1, 22f
11:               jal          ra, 5b
12:               jal          s11, 16f
13:               jal          ra, 14f
14:               jal          t1, 26f
15:               jal          ra, 13b
16:               jal          ra, 25f
17:               jal          a6, 12b
18:               jal          t1, 11b
19:               jal          t5, 21f
20:               jal          ra, 17b
21:               jal          t3, 15b
22:               jal          s3, 8b
23:               jal          gp, 10b
24:               jal          ra, 9b
25:               jal          t1, 24b
26:               jal          ra, 23b
27:               jal          t1, 6b
28:               jal          t1, 1b
29:               sltu         t1, s5, gp
                  sub          t3, t5, a3
                  bgeu         ra, s5, 4f
                  and          s6, a3, s11
                  sltu         s4, s11, s3
4:                nop
                  lui          tp, 355722
                  and          s8, s3, s7
                  slt          t5, tp, s6
                  andi         t6, t4, -1240
                  auipc        gp, 277382
                  bltu         zero, t5, 14f
                  bgeu         s5, s0, 19f
                  bltu         s2, t1, 18f
                  or           tp, a2, s0
14:               ori          gp, s0, -955
                  srli         t5, t4, 27
                  auipc        t1, 1000479
                  blt          s10, sp, 20f
18:               sltiu        tp, a3, -796
19:               andi         s9, s6, 2030
20:               srli         a1, s3, 5
                  bgeu         s9, s6, 22f
22:               bgeu         s5, ra, 34f
                  and          s9, t4, gp
                  slli         a3, a2, 30
                  xor          s3, s5, s7
                  xori         s10, t0, -1757
                  or           s11, sp, a4
                  slt          s2, a5, sp
                  or           s1, s9, s3
                  or           t1, ra, a5
                  blt          a6, zero, 51f
                  lui          a1, 42569
                  blt          s4, s8, 35f
34:               bge          a4, a1, 41f
35:               sltiu        a3, sp, 251
                  srai         a6, t1, 15
                  or           s9, a3, t6
                  xor          t3, s8, s4
                  blt          zero, s0, 54f
                  xori         a5, a3, 170
41:               slti         a1, a3, -1554
                  auipc        a4, 731117
                  slt          a5, s6, gp
                  bne          a3, tp, 63f
                  sra          a4, gp, ra
                  srai         t0, s6, 23
                  bltu         a0, s10, 51f
                  bne          t4, s9, 65f
                  beq          s1, tp, 55f
                  sra          t3, a5, s9
51:               bge          a7, a0, 55f
                  srl          s2, t6, s8
                  xor          gp, t0, t1
54:               sltiu        a5, t3, -195
55:               xor          ra, s8, t2
                  addi         ra, a4, 1288
                  xor          s6, s1, s4
                  srai         t0, a6, 5
                  lui          s2, 181242
                  add          s5, sp, s0
                  xori         s1, s9, -525
                  addi         a6, s3, 1352
63:               sub          s8, t2, s11
                  and          tp, zero, a7
65:               xori         a2, s11, 1097
                  sltu         s9, s11, tp
                  lui          s3, 355709
                  sub          s7, a2, s7
                  addi         t3, t3, 1487
                  bge          t4, a7, 75f
                  sltu         s0, sp, s1
                  bgeu         s1, t3, 91f
                  and          gp, t4, a4
                  sub          gp, sp, t0
75:               auipc        a1, 534919
                  ori          t3, s9, 904
                  lui          t1, 334398
                  bge          a7, a6, 83f
                  sra          s10, s4, s3
                  add          s2, s4, s10
                  and          t1, s6, s6
                  sub          t0, a2, s1
83:               sltiu        s9, s0, 1043
                  auipc        s4, 822551
                  addi         s4, t2, -884
                  beq          s0, t1, 92f
                  sltu         t2, a4, a3
                  lui          s5, 364677
                  srai         s10, s11, 30
                  xor          s8, a1, t2
91:               or           t3, t2, s4
92:               bne          a7, tp, 100f
                  ori          t1, t1, -937
                  auipc        a6, 146221
                  srl          t1, s11, s8
                  nop
                  srl          gp, a1, a1
                  sltiu        s8, tp, -1932
                  auipc        s10, 138375
100:              add          a0, s2, t6
                  sltu         t1, a2, a5
                  slt          zero, s5, tp
                  ori          t6, sp, -1414
                  sltu         a1, s0, gp
                  slt          a4, a3, a7
                  slli         s9, zero, 19
                  bne          s2, s5, 121f
                  and          s8, s9, a0
                  bltu         gp, sp, 111f
                  sltu         a4, s9, ra
111:              andi         s2, s7, -294
                  slli         s1, a4, 20
                  srai         s2, s9, 3
                  slt          ra, s1, t4
                  xor          t3, a2, s7
                  sltu         s8, a4, s2
                  lui          ra, 940081
                  sll          gp, gp, s6
                  srli         s10, s3, 4
                  srai         s3, a4, 12
121:              srl          s0, s10, gp
                  xori         s11, s2, -2024
                  add          s11, s10, s5
                  xori         t3, a5, 1847
                  bne          s4, s1, 135f
                  sltiu        a0, zero, 994
                  srli         s0, s2, 25
                  slt          s2, s7, t6
                  bgeu         a1, s2, 136f
                  sltiu        a1, a1, -1405
                  slt          gp, s1, t0
                  lui          s6, 73671
                  beq          s11, tp, 142f
                  sltiu        gp, sp, -1260
135:              srai         s7, s4, 3
136:              and          s2, s10, gp
                  addi         a3, s11, -162
                  bne          s2, a1, 144f
                  bne          gp, t1, 150f
                  and          a4, s11, a6
                  nop
142:              or           s8, t1, s7
                  xori         s3, zero, -1213
144:              addi         s7, s7, -752
                  and          a6, a4, a5
                  and          t2, a1, s11
                  sltiu        s5, t4, 329
                  sltiu        t0, s11, -1748
                  sra          s11, s4, s5
150:              nop
                  bne          s3, s8, 162f
                  bge          a3, s8, 157f
                  srl          s2, ra, a0
                  sltu         t1, t6, t6
                  and          t3, a4, s11
                  or           a0, t0, t5
157:              lui          gp, 217623
                  addi         s9, a2, 575
                  auipc        t1, 916823
                  bltu         a4, t6, 163f
                  srl          t3, t1, s5
162:              srai         s7, t4, 0
163:              sra          s10, tp, zero
                  srai         s3, a1, 28
                  and          s1, a2, t4
                  sll          gp, a0, t2
                  slti         s0, t4, 768
                  bge          s6, s3, 173f
                  bne          ra, s5, 176f
                  ori          gp, s10, 1964
                  bge          s9, s11, 181f
                  srl          s0, s10, a0
173:              srli         s0, s1, 0
                  beq          s4, a7, 179f
                  srli         s2, t4, 30
176:              nop
                  andi         a5, gp, 1112
                  add          a0, s6, tp
179:              and          t0, a7, s8
                  srai         s3, t5, 13
181:              bgeu         a3, a3, 184f
                  add          s6, s0, a3
                  lui          ra, 77574
184:              srl          t6, s3, a0
                  sll          a1, a7, a4
                  bltu         s9, s5, 187f
187:              srli         t6, tp, 29
                  add          t3, a3, a5
                  auipc        a2, 323463
                  add          zero, a7, a3
                  xori         t6, s1, 656
                  nop
                  add          tp, a5, s1
                  bgeu         gp, a3, 202f
                  and          s0, a7, a1
                  blt          s8, s0, 207f
                  bne          s9, t2, 203f
                  addi         t1, s9, 836
                  lui          a5, 269564
                  sll          t2, ra, ra
                  slli         s10, s8, 15
202:              blt          s4, s6, 208f
203:              andi         s2, t6, 1991
                  add          ra, t5, t3
                  xor          s1, ra, t6
                  srl          s11, a6, s6
207:              slti         t6, s1, 136
208:              bge          a1, s0, 210f
                  sltiu        t0, s6, 830
210:              slt          zero, a6, s2
                  add          a0, s8, s8
                  ori          s11, gp, 1406
                  srli         a1, s9, 15
                  sltiu        s2, a4, -414
                  blt          s2, s1, 222f
                  sra          zero, t1, s6
                  bge          t5, s8, 219f
                  sub          a6, ra, a3
219:              add          t3, t0, s9
                  add          s2, t6, a3
                  srai         gp, t4, 12
222:              blt          s10, ra, 241f
                  xor          s4, gp, t0
                  auipc        a4, 960993
                  xor          t1, s11, a2
                  bgeu         t1, t5, 235f
                  blt          a2, s11, 233f
                  slli         t3, a4, 22
                  sltiu        t1, s6, 88
                  sub          a5, s11, s9
                  lui          s4, 467433
                  beq          t0, s11, 246f
233:              xori         t2, tp, 1497
                  addi         s8, t1, 483
235:              andi         a6, s3, -1557
                  ori          a5, sp, -1407
                  andi         t6, t0, 524
                  sra          s8, s4, s4
                  add          s9, s10, s6
                  bgeu         t1, s5, 251f
241:              bne          a6, a4, 245f
                  andi         s8, a4, 2011
                  addi         s7, s11, 1846
                  andi         a2, ra, -796
245:              bltu         s9, s4, 249f
246:              xor          a5, s2, s7
                  bgeu         s11, s11, 267f
                  bge          s0, s11, 253f
249:              lui          zero, 236270
                  bge          t6, ra, 256f
251:              auipc        a1, 311511
                  slti         a3, s3, -1133
253:              srl          gp, a6, a2
                  xori         a3, a5, 1557
                  srai         tp, s1, 29
256:              auipc        a0, 285862
                  srai         s11, s11, 5
sub_4_19:         jal          ra, 18f
0:                jal          ra, 19f
1:                jal          a6, 14f
2:                jal          gp, 12f
3:                jal          ra, 16f
4:                jal          ra, 3b
5:                jal          ra, 2b
6:                jal          ra, 5b
7:                jal          ra, 0b
8:                jal          ra, 15f
9:                jal          ra, 20f
10:               jal          ra, 8b
11:               jal          t1, 17f
12:               jal          t1, 1b
13:               jal          ra, 7b
14:               jal          ra, 10b
15:               jal          s10, 11b
16:               jal          t1, 13b
17:               jal          a6, 9b
18:               jal          t1, 4b
19:               jal          ra, 6b
20:               jal          ra, 21f
21:               xori         t2, gp, -1176
                  sltu         t5, zero, s2
                  bne          s1, a4, 263f
                  blt          a0, a5, 272f
                  lui          zero, 892008
                  slt          s3, s9, ra
263:              auipc        a3, 492634
                  bltu         s0, t6, 272f
                  bltu         t1, s3, 280f
                  beq          s3, s11, 283f
267:              bge          t5, a0, 286f
                  xori         s9, gp, -67
                  bne          s9, s0, 272f
                  xori         s10, t1, -1575
                  beq          s6, a4, 280f
272:              xori         a4, s8, 1387
                  xori         s9, a2, 1353
                  slti         t2, t4, 793
                  andi         s7, a4, 1812
                  xori         t2, s2, 1853
                  blt          s7, s2, 294f
                  xor          t5, s6, t3
                  addi         s5, s11, -706
280:              addi         a3, zero, -763
                  and          a4, s4, s6
                  sltiu        a6, s11, 1295
283:              add          t6, t1, s1
                  nop
                  bge          s7, zero, 287f
286:              sll          t1, s1, t2
287:              bltu         t2, t2, 292f
                  add          tp, sp, a4
                  or           a1, a6, a2
                  blt          a6, sp, 297f
                  addi         t6, s4, 1045
292:              sltu         s2, s0, t6
                  sltiu        t2, s0, -1891
294:              auipc        s0, 132296
                  srli         t2, t4, 25
                  and          a1, s6, s3
297:              sltiu        t6, tp, -1289
                  and          t5, t5, a5
                  ori          t3, ra, -1878
                  srl          zero, t1, t5
                  ori          ra, s6, 1828
                  bge          t1, t2, 313f
                  sltu         s11, s10, a1
                  and          ra, s3, gp
                  srli         s3, t5, 15
                  srai         s1, t6, 18
                  bgeu         a1, a5, 311f
                  srl          s10, a2, s4
sub_4_20:         jal          ra, 9f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          t1, 1b
3:                jal          ra, 10f
4:                jal          t0, 0b
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          ra, 2b
8:                jal          a4, 4b
9:                jal          t1, 8b
10:               srli         s3, a6, 26
                  addi         t2, a2, 1866
                  xor          s10, t6, s4
311:              bgeu         a7, tp, 313f
                  bltu         s1, ra, 318f
313:              slt          s5, s10, t1
                  auipc        a4, 291034
                  sll          s11, t6, s5
                  andi         ra, s3, -1350
                  auipc        ra, 964894
318:              lui          s4, 367077
                  sltiu        tp, a5, -368
                  srl          s5, a5, s10
                  slt          s11, s0, s5
                  srli         s1, t6, 13
                  sub          s1, s4, zero
                  sra          s11, s8, t1
                  auipc        s2, 128192
                  blt          s4, a1, 329f
                  auipc        t5, 663281
                  xori         a3, s1, -507
329:              blt          t4, a4, 348f
                  bge          t3, gp, 336f
                  sltu         zero, t2, tp
                  lui          s6, 829496
                  blt          s1, s10, 339f
                  bge          t2, a6, 338f
                  and          t0, s8, zero
336:              andi         a2, a4, -288
                  xor          a1, s3, t0
338:              addi         s11, s2, -388
339:              srai         gp, a3, 19
                  srl          s9, a0, a2
                  beq          t0, t3, 347f
                  slti         s7, s7, 1145
                  sltu         s5, s6, sp
                  bgeu         a1, s7, 352f
                  ori          s10, t1, -1388
                  xor          s7, t2, s2
347:              srli         s1, t2, 26
348:              sll          ra, s10, a7
                  ori          tp, s1, 2003
                  sub          tp, a3, a6
                  sll          s3, t3, zero
352:              xor          s6, a1, sp
                  sltu         s6, t0, a3
                  sra          s10, tp, s2
                  sltu         t0, s1, a5
                  sltiu        s0, a5, 583
                  slt          s9, a6, t4
                  auipc        a1, 356346
                  lui          s1, 399376
                  and          s1, t0, t4
                  slti         s3, t3, 598
                  slli         a2, ra, 23
                  blt          a5, tp, 382f
                  bne          a7, a7, 368f
                  blt          a3, sp, 379f
                  sltu         a1, t2, t6
                  sll          a4, t5, a3
368:              add          s5, s9, t5
                  srli         t6, a0, 0
                  srai         s3, zero, 18
                  auipc        s9, 844254
                  beq          a5, s9, 373f
373:              lui          t5, 664021
                  srai         a6, t0, 25
                  slt          gp, t4, s10
                  bgeu         a1, t2, 381f
                  add          a4, a5, t2
                  xori         t2, s0, 1962
379:              sltiu        a3, t1, 200
                  xor          a4, s1, s0
381:              bne          a1, s3, 393f
382:              xor          s10, t5, a4
                  srai         a3, tp, 4
                  blt          a5, s7, 404f
                  bne          s11, t1, 392f
                  slti         t2, s10, -1851
                  bne          a2, ra, 392f
                  slti         s8, a3, 948
                  sub          s8, t0, s2
                  nop
                  slt          s9, t3, s6
392:              addi         s9, sp, -1456
393:              blt          zero, a0, 403f
                  slti         t6, zero, 1788
                  lui          gp, 635777
                  andi         s3, s6, -773
                  sll          s8, tp, s4
                  sll          a0, s3, s6
                  xor          t1, s10, zero
                  slli         s7, s6, 30
                  xor          s9, a7, a0
                  sra          t3, t3, t1
403:              slt          a5, a7, t3
404:              beq          tp, s6, 412f
                  andi         t3, s0, 195
                  xor          s7, s8, sp
                  srli         s3, t4, 9
                  and          s6, a5, s1
                  and          t3, a5, gp
                  ori          zero, s11, -1718
                  and          s0, t6, s3
412:              sltu         s6, s1, tp
                  srl          s3, a1, s8
                  slli         s5, s7, 14
                  add          t3, s3, s9
                  bltu         s2, s9, 427f
                  bge          s5, gp, 432f
                  sll          s1, s2, ra
                  lui          t3, 334176
                  slt          a2, t3, a1
                  bltu         s7, a6, 423f
                  sra          t2, t2, t6
423:              slt          s1, s6, a7
                  xor          a4, s7, a1
                  srl          t5, s9, tp
                  bgeu         a4, a7, 432f
427:              sub          s5, a1, gp
                  blt          a2, s11, 435f
                  srai         s7, tp, 1
                  xori         a2, t4, 1577
                  srli         a5, s6, 29
432:              or           a1, s7, s8
                  blt          s9, s8, 441f
                  slt          gp, ra, a1
435:              or           t1, zero, s8
                  sub          ra, a3, a6
                  slti         s9, gp, 529
                  ori          t0, s9, 1576
                  slti         s4, s11, 1213
                  slt          s6, s10, s4
441:              bgeu         tp, a4, 455f
                  beq          a1, s7, 454f
                  andi         t6, t2, -2040
                  bgeu         s10, ra, 445f
445:              and          t6, s1, t0
                  sub          s10, sp, s1
                  sll          ra, s4, t5
                  sub          s0, gp, sp
                  sltiu        s10, a1, -619
                  beq          t3, s4, 457f
                  srl          zero, t2, t6
                  slti         a0, t1, 727
                  lui          a4, 321089
454:              xor          a0, a7, s8
455:              and          t2, s0, a3
                  sub          s1, s9, s1
457:              xor          s11, s2, tp
                  sub          a1, a2, t5
                  lui          a3, 60042
                  xori         s0, s10, 266
                  slti         s4, a3, 1629
                  or           s5, t1, s0
                  sll          s9, a5, ra
                  xor          s0, a3, t6
                  beq          a1, s6, 468f
                  sub          s6, a0, s9
                  add          t5, a2, t1
468:              add          s3, s6, zero
                  slt          a2, s0, ra
                  slt          s8, s2, a6
                  sltu         s9, a5, ra
                  slti         a0, gp, -2043
                  xor          t6, a2, a2
                  bltu         s11, a0, 476f
                  sub          t6, s6, s11
476:              and          s2, a4, a3
                  blt          zero, s7, 487f
                  bge          t5, a0, 482f
                  auipc        s5, 133613
                  bgeu         s7, t5, 485f
                  slli         a3, s7, 22
482:              srai         s1, s8, 4
                  andi         zero, a0, -1454
                  srli         a2, a1, 14
485:              lui          t2, 432696
                  add          s8, a5, zero
487:              beq          a1, s5, 491f
                  bge          s5, t0, 493f
                  sub          t1, a6, t2
                  addi         t5, gp, 1112
491:              xor          a5, a6, t0
                  addi         t5, a1, -1180
493:              andi         s8, a5, -53
                  sltu         t1, t2, a6
                  bne          gp, s1, 498f
                  slti         s7, sp, -39
                  xor          s3, s7, t5
498:              bne          gp, sp, 509f
                  xori         s4, gp, 1476
                  bgeu         t3, a4, 504f
                  blt          a3, t5, 507f
                  andi         s7, a2, -1670
                  bge          s5, s4, 522f
504:              or           s11, a1, ra
                  sub          zero, a2, s2
                  bltu         s5, s0, 511f
507:              slli         a3, s8, 19
                  slt          s4, t2, s6
509:              blt          t5, tp, 529f
                  srli         s2, a3, 30
511:              sub          s5, s3, s11
                  or           zero, t3, s2
                  srl          t6, a0, a4
                  srl          s11, a1, sp
                  andi         s5, s0, 1501
                  nop
                  sub          t2, a6, t4
                  and          s10, t5, a3
                  sltu         a0, t3, gp
                  sub          a5, s9, a5
                  and          t5, tp, s10
522:              bge          t3, sp, 539f
                  srl          t2, a5, s1
                  bgeu         s11, s1, 530f
                  xor          ra, a1, a3
                  bgeu         ra, t3, 534f
                  beq          t0, s2, 536f
                  slti         s5, a2, 828
529:              beq          a4, t2, 544f
530:              beq          sp, s0, 541f
                  add          t0, s0, s10
                  xori         tp, s4, -4
                  slti         a3, a3, 549
534:              lui          s2, 794935
                  andi         s11, s4, -142
536:              sll          s1, sp, a1
                  bge          a7, t0, 543f
                  lui          t5, 247791
539:              and          t6, t4, s2
                  addi         s1, sp, -173
541:              sub          s9, t3, s9
                  nop
543:              bge          s6, s7, 562f
544:              xor          a1, s7, a2
                  sub          s2, tp, tp
                  lui          s2, 276749
                  bgeu         a7, t1, 552f
                  bge          t3, s9, 550f
                  blt          t0, ra, 559f
550:              or           ra, s10, a2
                  add          tp, tp, a1
552:              xor          zero, t1, s8
                  sll          t3, t6, s3
                  lui          s8, 359215
                  bne          a5, a2, 574f
                  addi         t5, s4, -544
                  slti         a3, s2, -469
                  srl          a0, t4, t2
559:              bgeu         a4, s11, 563f
                  slt          s4, s4, s11
                  lui          tp, 120090
562:              sll          a6, a7, a6
563:              sltu         s10, s3, s4
                  bne          a4, a5, 570f
                  sltiu        s8, s7, 808
                  lui          a5, 526060
                  ori          s11, t5, 74
                  srl          s0, t0, a5
                  nop
570:              slt          s8, t6, gp
                  srl          s3, a3, gp
                  blt          sp, t6, 575f
                  blt          t5, gp, 578f
574:              slli         t6, t2, 23
575:              beq          t3, ra, 584f
                  sltiu        s10, a6, 234
                  sub          s8, s5, a3
578:              slt          gp, s6, tp
                  slt          s10, ra, t1
                  sll          s9, a2, sp
                  beq          a4, a7, 592f
                  bgeu         s10, s9, 587f
                  nop
584:              auipc        a3, 992486
                  auipc        s11, 688432
                  sltu         s6, a0, tp
587:              blt          a4, a6, 591f
                  ori          s5, s8, -1932
                  srli         a1, s10, 9
                  ori          a0, s2, -1148
591:              add          tp, s5, s7
592:              bltu         gp, zero, 607f
                  lui          t6, 822704
                  xori         s6, s11, -1331
                  and          s0, s10, ra
                  slli         a3, s2, 19
                  add          a0, s9, zero
                  bge          s3, s7, 617f
                  blt          a1, t6, 607f
                  srl          s10, a0, gp
                  sll          t5, sp, s3
                  bgeu         s6, gp, 619f
                  sltiu        t3, s11, -1334
                  slti         t3, s8, 1763
                  add          t0, tp, a6
                  sll          ra, t0, tp
607:              and          t0, a1, s6
                  and          ra, s4, s5
                  sltu         s3, s6, t2
                  sub          s9, t5, a3
                  beq          t0, a7, 617f
                  sll          ra, a4, t6
                  sll          zero, a2, s1
                  slti         ra, s11, 1303
                  bltu         a7, t1, 626f
                  and          s9, a7, s7
617:              nop
                  srli         s5, tp, 8
619:              andi         s6, t3, 894
                  slti         a3, ra, -427
                  xor          t6, t4, a1
                  sll          s8, s6, s11
                  blt          t1, a4, 635f
                  srli         s7, t6, 18
                  xori         ra, s3, 875
626:              bne          s8, a4, 633f
                  auipc        s5, 813661
                  sra          a5, a6, s7
                  slti         a3, a5, -678
                  add          gp, a7, t3
                  addi         s3, t5, 575
                  sltiu        s4, zero, 821
633:              sll          s7, s10, sp
                  srai         a3, t0, 10
635:              xor          a4, a5, tp
                  slli         t2, ra, 1
                  sltiu        t2, t5, -664
                  and          s6, t3, tp
                  xor          s6, t1, s2
                  slti         a6, a6, 611
                  nop
                  slli         gp, t6, 22
                  bgeu         a7, t6, 649f
                  nop
                  sltu         s3, a2, s10
                  bge          a2, a6, 660f
                  slli         a6, sp, 1
                  srai         t2, t0, 1
649:              bltu         a1, s10, 651f
                  sub          t1, a2, a2
651:              slt          s9, s10, t4
                  blt          s2, tp, 659f
                  slt          s8, t1, s11
                  bge          t5, a7, 674f
                  nop
                  or           s6, s5, t6
                  sltu         a5, a1, s0
                  auipc        t3, 552449
659:              slti         s7, s9, -95
660:              sltiu        a1, a6, 1466
                  beq          a1, a4, 669f
                  sra          ra, t0, a6
                  sll          a2, s10, zero
                  bne          a2, s8, 668f
                  auipc        t5, 403320
                  sra          a0, tp, s3
                  xor          s8, t6, gp
668:              slti         s0, gp, 1579
669:              bge          ra, s11, 672f
                  xori         gp, s4, 1587
                  srli         s0, t5, 27
672:              srli         s11, s1, 5
                  nop
674:              sltu         ra, a5, t4
                  auipc        t3, 186927
                  and          a4, sp, s4
                  bge          a3, a7, 678f
678:              bltu         t5, s9, 684f
                  bge          s5, s5, 683f
                  xor          a3, t6, t5
                  xori         ra, t3, 1178
                  nop
683:              nop
684:              bltu         gp, t3, 703f
                  sltiu        s11, a1, 412
                  or           s8, t2, tp
                  sra          s3, s10, s8
                  srli         s6, a1, 8
                  srli         ra, ra, 6
                  srli         a0, gp, 7
                  xori         t2, s5, 410
                  srli         s0, zero, 22
                  srai         s1, s2, 9
                  ori          t1, t3, 695
                  sltiu        t1, a4, -52
                  slt          s10, s10, s2
                  ori          zero, a7, 598
                  slti         a6, a5, 565
                  and          s10, a5, t6
                  bltu         a5, s10, 707f
                  addi         t5, tp, 1157
                  or           s8, gp, s3
703:              srai         t5, sp, 0
                  beq          a6, a4, 724f
                  srai         a1, a4, 1
                  nop
707:              sra          a6, gp, t5
                  srl          t2, t0, s2
                  xori         s3, t0, 1572
                  auipc        a4, 830256
                  and          ra, tp, t6
                  sll          s8, a3, a5
                  bgeu         a0, a3, 718f
                  srl          t6, a0, t5
                  and          s3, s2, s6
                  add          s11, s11, gp
                  blt          s4, s10, 719f
718:              bge          s7, t1, 722f
719:              lui          a0, 96792
                  sra          s2, ra, t0
                  andi         zero, a2, -1049
722:              sll          s1, s11, gp
                  sltu         a1, t3, tp
724:              andi         s5, tp, -404
                  ori          gp, a2, -533
                  slli         a1, zero, 27
                  srl          t2, a6, s6
                  bltu         gp, ra, 735f
                  auipc        s1, 440755
                  or           gp, t1, ra
                  add          s1, t4, a0
                  blt          a1, ra, 751f
                  slt          a4, s2, s6
                  xori         s6, a0, -604
735:              bltu         t4, t0, 745f
                  blt          t1, zero, 751f
                  bgeu         gp, a2, 740f
                  nop
                  auipc        t5, 92227
740:              xor          s3, t5, a3
                  nop
                  ori          a5, s10, 1144
                  ori          zero, a5, 1203
                  nop
745:              ori          a0, s3, 1476
                  slt          s3, t6, a1
                  nop
                  or           s4, gp, a5
                  bgeu         tp, t4, 754f
                  slti         t3, s7, 1175
751:              bgeu         sp, s6, 754f
                  srl          a5, t2, t0
                  addi         s11, a0, 1367
754:              sltu         s6, s2, s7
                  sll          ra, gp, zero
                  sra          a1, a7, a7
                  bne          s10, a1, 758f
758:              sltu         gp, s4, s1
                  srli         t6, s6, 6
                  bne          t3, s1, 766f
                  sltiu        s5, s9, 124
                  auipc        t6, 597242
                  srl          s6, s1, a0
                  beq          s7, t6, 768f
                  bgeu         s0, t5, 770f
766:              slti         a3, s2, 148
                  sltiu        a2, s10, -148
768:              bge          s3, s0, 779f
                  lui          s4, 994985
770:              xor          a2, s4, s0
                  slli         ra, s3, 0
                  xor          t0, s10, a2
                  sub          s2, a5, s7
                  bgeu         s3, s2, 780f
                  bgeu         t0, s4, 789f
                  slti         s1, a4, -1846
                  andi         ra, t2, -658
                  xori         t2, zero, 1114
779:              beq          s0, s10, 788f
780:              srl          zero, s7, zero
                  bne          a2, tp, 789f
                  addi         s8, s2, 52
                  bge          s5, s9, 789f
                  nop
                  sll          t3, a5, ra
                  sra          t0, s1, a7
                  andi         a3, ra, -1287
788:              beq          s5, s5, 794f
789:              andi         s6, gp, 700
                  and          a2, gp, a2
                  srai         s7, s7, 2
                  slti         ra, a5, -2000
                  sltiu        s4, s5, -984
794:              xori         a4, s4, 1876
                  sll          a2, t6, a6
                  and          s7, t2, s0
sub_4_1:          jal          ra, 9f
0:                jal          ra, 20f
1:                jal          ra, 12f
2:                jal          ra, 19f
3:                jal          s5, 18f
4:                jal          ra, 6f
5:                jal          s8, 8f
6:                jal          ra, 21f
7:                jal          ra, 1b
8:                jal          ra, 3b
9:                jal          ra, 17f
10:               jal          ra, 16f
11:               jal          t5, 22f
12:               jal          ra, 2b
13:               jal          s3, 4b
14:               jal          t1, 11b
15:               jal          ra, 14b
16:               jal          s7, 15b
17:               jal          t1, 13b
18:               jal          t1, 0b
19:               jal          ra, 5b
20:               jal          ra, 10b
21:               jal          ra, 7b
22:               sltiu        s3, tp, 1956
                  bne          sp, gp, 808f
                  sra          t6, a1, s2
                  xor          a3, t1, a1
                  ori          a3, s5, 937
                  slli         a4, s9, 19
                  lui          s6, 1004728
                  sra          s8, a7, s5
                  nop
                  sll          zero, t3, s7
                  addi         t0, a2, 1717
                  sltiu        s11, t4, -1502
808:              sltiu        s11, gp, 1348
                  addi         s1, a6, 58
                  sra          s5, a7, s4
                  slli         a6, s3, 0
                  xori         s4, zero, 604
                  slli         gp, t6, 12
                  sub          t0, s8, a4
                  slti         t5, gp, 1133
                  bgeu         t0, ra, 828f
                  andi         t6, sp, 1305
                  slt          t6, a6, a5
                  nop
                  srli         t1, t1, 8
                  add          a3, tp, s8
                  and          zero, t4, s2
                  xori         s1, s7, -163
                  auipc        s11, 832189
                  srli         a2, t6, 3
                  addi         a0, a7, -688
                  xor          t5, s9, s4
828:              slti         ra, s0, -726
                  slt          zero, s6, s6
                  bltu         s10, t3, 838f
                  sub          ra, a6, sp
                  slti         t1, s10, -1317
                  srl          s0, s0, s0
                  nop
                  bne          sp, s5, 837f
                  sll          t5, a2, s11
837:              bne          ra, s4, 854f
838:              ori          s4, t0, -880
                  sra          tp, a7, t3
                  blt          sp, s3, 846f
                  srli         s8, s0, 15
                  auipc        s11, 754288
                  lui          a4, 682210
                  sltiu        s3, tp, 1959
                  add          s7, a6, s7
846:              and          a1, s8, t6
                  sltu         a0, s8, a6
                  add          a4, a2, gp
                  xori         a6, t0, -1777
                  bgeu         s11, s8, 859f
                  bgeu         a7, t2, 854f
                  or           t3, s4, s5
                  sub          s10, t2, s9
854:              ori          ra, a3, -515
                  bge          t0, sp, 860f
                  or           a1, a0, s2
                  bge          t6, s11, 862f
                  and          a0, a6, s6
859:              sra          s11, zero, s7
860:              xori         zero, a4, -1853
                  slli         s8, zero, 5
862:              beq          s10, zero, 864f
                  xori         t5, s2, 788
864:              addi         gp, gp, 1108
                  nop
                  srl          s1, a0, ra
                  xor          t2, t2, s1
                  and          s1, a4, t0
                  blt          a3, s5, 875f
                  addi         a2, sp, -1488
                  auipc        ra, 71653
                  xori         t0, a3, -954
                  srli         a0, s0, 3
                  beq          t2, s3, 894f
875:              sll          gp, a0, s11
                  ori          s10, gp, -463
sub_4_2:          jal          ra, 12f
0:                jal          s5, 23f
1:                jal          gp, 2f
2:                jal          ra, 5f
3:                jal          ra, 30f
4:                jal          t1, 28f
5:                jal          ra, 9f
6:                jal          s4, 3b
7:                jal          t1, 15f
8:                jal          ra, 20f
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          ra, 22f
12:               jal          ra, 1b
13:               jal          ra, 6b
14:               jal          t1, 16f
15:               jal          ra, 26f
16:               jal          t1, 18f
17:               jal          tp, 7b
18:               jal          s9, 25f
19:               jal          ra, 29f
20:               jal          ra, 0b
21:               jal          s5, 27f
22:               jal          ra, 19b
23:               jal          t1, 21b
24:               jal          t0, 11b
25:               jal          t1, 24b
26:               jal          ra, 14b
27:               jal          ra, 17b
28:               jal          ra, 13b
29:               jal          t1, 4b
30:               lui          t2, 733299
                  sltu         t1, a2, a1
                  sll          s8, s11, s9
                  srai         ra, a0, 11
                  xor          a1, s0, t4
                  auipc        a1, 706480
                  andi         s2, s9, -917
                  slli         t3, s0, 4
                  blt          a7, t6, 898f
                  or           tp, s7, s0
                  xor          zero, a6, ra
                  add          s11, a1, a5
                  or           s8, a3, s7
                  auipc        t0, 577834
                  blt          s6, s4, 892f
                  bge          s2, a2, 895f
892:              sltu         a5, ra, s5
                  or           s1, t3, s8
894:              blt          ra, a5, 895f
895:              lui          t2, 704997
                  andi         t2, a5, 1325
                  bge          s0, s8, 904f
898:              blt          tp, s4, 909f
                  xori         a0, s2, -1894
                  sub          s1, gp, a0
                  slli         s9, s9, 7
                  xor          zero, a0, a2
                  slt          s2, t3, t3
904:              xori         s7, t6, -1303
                  nop
                  xor          t5, s2, s11
                  xori         a1, gp, -857
                  slti         s6, zero, -1234
909:              srai         s11, t4, 6
                  sra          ra, s8, a7
                  sll          zero, tp, zero
                  slli         s2, s9, 11
                  sltiu        s1, a5, -1469
                  slt          t0, sp, t1
                  bne          t6, s7, 921f
                  xori         zero, s10, 767
                  and          tp, a3, a1
                  sll          s4, t5, a5
                  bge          t5, s1, 934f
                  addi         t5, s11, -1509
921:              slt          a3, t3, t3
                  slti         s8, s8, -1389
                  bltu         a1, a4, 926f
                  xori         zero, t2, 246
                  sltiu        s3, s10, -539
926:              bgeu         s0, ra, 938f
                  blt          s10, s5, 938f
                  srai         gp, s5, 8
                  andi         s1, t6, 905
                  bltu         t5, t1, 949f
                  ori          t3, zero, 693
                  bgeu         s9, s9, 942f
                  sltu         a0, t1, s6
934:              srai         gp, s0, 26
                  srl          t0, s6, a7
                  srli         t0, a4, 26
                  sra          t6, s3, s5
938:              nop
                  bgeu         s6, zero, 956f
                  bltu         a0, ra, 959f
                  srli         s7, t2, 20
942:              ori          s9, gp, 654
                  nop
                  or           s6, zero, ra
                  sll          ra, s2, t5
                  xori         gp, t5, 1934
                  andi         t2, s1, 893
                  or           a1, t4, s10
949:              and          s7, s11, s7
                  slt          t6, s1, a2
                  sltiu        zero, s7, -530
                  and          t1, t0, s1
                  sra          a6, s5, s10
                  srli         t5, s4, 29
                  sra          t5, sp, sp
956:              srli         s11, t0, 11
                  blt          t2, a4, 963f
                  and          s7, a4, s5
959:              addi         s4, s10, 739
                  bgeu         a0, t0, 964f
                  beq          s8, s11, 969f
                  srli         s4, t4, 30
963:              andi         s9, s7, -1963
964:              slt          s7, s10, s8
                  sra          s5, a2, a2
                  srai         ra, s4, 15
                  sll          t6, s6, s2
                  andi         s3, t0, 1624
969:              bge          s4, a7, 976f
                  ori          gp, s3, 740
                  sra          zero, a6, a1
                  srl          t1, a4, a3
                  slti         t1, t1, -930
                  slt          s8, a3, t2
                  xor          s5, t2, t2
976:              nop
                  sub          t2, a5, t4
                  or           a2, t1, a5
                  sll          a2, ra, a4
                  xor          s0, a0, t4
                  bne          t5, a6, 986f
                  or           a6, a0, t5
                  ori          s7, tp, 1619
                  andi         s0, t3, -1899
                  andi         t2, ra, 496
986:              srli         s6, a1, 11
                  addi         t1, s2, -974
                  lui          s5, 332422
                  ori          s0, t3, 789
                  beq          sp, a1, 998f
                  sra          ra, t2, t3
                  srl          s7, a2, a1
                  or           t6, s11, a2
                  xori         s4, s9, -1232
                  srai         a2, a2, 29
                  slt          t0, t3, s0
                  xori         a4, s5, 188
998:              bge          t5, s9, 1002f
                  auipc        gp, 268947
                  bne          a0, a6, 1019f
                  and          zero, zero, s8
1002:             bgeu         a6, a6, 1009f
                  nop
                  andi         zero, s11, -505
                  add          a0, tp, t1
                  andi         t3, t1, -807
                  add          t1, s11, a1
                  nop
1009:             ori          a2, gp, -985
                  and          ra, s1, s5
                  addi         s10, a6, 1132
                  slt          s1, t0, tp
                  nop
                  sll          gp, t0, s10
                  lui          s1, 961669
                  add          s6, t0, s9
                  slti         a4, s3, 150
                  srai         s0, s2, 18
1019:             addi         t2, a6, 1224
                  andi         a5, s5, -368
                  srai         t5, a0, 22
                  slti         a1, s5, 1325
                  andi         a1, t3, -1811
                  xori         t3, t0, 1948
                  bltu         t3, s3, 1031f
                  xor          s8, a4, a7
                  or           s0, a3, tp
                  sra          ra, s6, a2
                  and          a1, s10, s9
                  add          s6, s7, a7
1031:             sll          t1, zero, s11
                  bgeu         a4, s11, 1040f
                  slli         s9, ra, 31
                  sra          t5, a6, tp
                  slti         tp, t2, -1026
                  srli         t5, s5, 28
                  beq          s2, a4, 1043f
                  bne          tp, gp, 1053f
                  bge          a5, t0, 1059f
1040:             slti         t6, t1, 1265
                  sltu         a2, s8, s1
                  bge          s11, t2, 1044f
1043:             bge          a6, zero, 1047f
1044:             or           a0, s2, t5
                  xori         t6, s5, 884
                  sltu         a5, t3, a0
1047:             srli         a3, t6, 22
                  bltu         s2, zero, 1056f
                  and          a1, t0, s11
                  blt          t3, sp, 1069f
                  sll          s7, s4, s11
                  slti         ra, zero, 272
1053:             sltu         s2, s7, a0
                  bltu         s11, t0, 1058f
                  bge          t1, a1, 1057f
1056:             slt          s0, s4, a0
1057:             bgeu         a4, s2, 1062f
1058:             sra          a3, s1, t4
1059:             sra          ra, s11, a4
                  xor          s0, a5, s8
                  sltu         s2, t0, a2
1062:             blt          s10, s5, 1071f
                  xori         gp, t5, 911
                  slti         s2, t5, 1877
                  srl          t0, s7, a0
                  xori         s3, s0, -1901
                  xori         t2, s6, 1759
                  bltu         s11, a0, 1082f
1069:             sra          zero, tp, t2
                  sll          a5, a1, a5
1071:             and          s2, t4, t2
                  srai         t0, zero, 0
                  lui          t1, 86120
                  sltu         s4, s6, a4
                  or           t1, gp, s1
                  slli         t5, s1, 14
                  ori          s5, s5, -125
                  sltiu        t1, gp, 1341
                  sll          t2, s7, t2
                  sra          t5, s0, s7
                  slli         a6, sp, 11
1082:             auipc        t1, 418631
                  sub          zero, t0, gp
                  srai         t1, s3, 12
                  auipc        t6, 874713
                  add          s3, s3, a3
                  bgeu         a4, s0, 1093f
                  bgeu         s3, s11, 1098f
                  srai         zero, a0, 16
                  slli         t5, a1, 22
                  xor          s1, s9, a2
                  sub          s11, s8, sp
1093:             sub          t5, sp, s4
                  slli         zero, t3, 2
                  slt          a1, a3, t3
                  xor          tp, s2, s8
                  slti         tp, a3, -2041
1098:             bltu         s10, s10, 1109f
                  bne          a7, sp, 1116f
                  bgeu         s6, s10, 1104f
                  auipc        t6, 262253
                  addi         tp, s1, 1330
                  xori         s1, t4, 394
1104:             sll          t5, ra, s9
                  nop
                  ori          s6, s0, -677
                  xori         t5, t6, -621
                  bltu         sp, t1, 1114f
1109:             bltu         a5, a5, 1114f
                  sll          a4, t4, t1
                  nop
                  sltiu        gp, t3, -553
                  srl          s4, a3, t3
1114:             sltu         a0, t6, s11
                  sll          s3, s0, sp
1116:             ori          s5, zero, 1809
                  sltu         a3, s10, a6
                  sub          gp, s10, s11
                  lui          t6, 735681
                  addi         t6, t0, 110
                  andi         a0, t5, 2003
                  addi         s5, s0, -1113
                  bltu         gp, s8, 1134f
                  srai         a5, s3, 19
                  xori         t1, a1, 569
                  nop
                  srai         t2, t6, 26
                  sltu         a4, zero, t0
                  xor          a5, s11, a4
                  add          s5, s2, t4
                  auipc        t6, 195848
                  nop
                  addi         a0, a2, -860
1134:             srli         t2, s4, 13
                  srai         s8, s0, 29
                  bge          t1, s5, 1137f
1137:             sra          zero, t0, t2
                  slli         s4, s0, 18
                  xori         t1, t0, -1317
                  andi         a1, s0, -1071
                  auipc        s6, 853606
                  bltu         s10, a5, 1145f
                  nop
                  bltu         a2, a7, 1147f
1145:             sltu         gp, t2, s5
                  slt          a6, t0, s4
1147:             slti         s0, a3, 1857
                  blt          t4, t5, 1160f
                  sltiu        tp, a5, 426
                  bgeu         a3, s5, 1155f
                  slli         s4, sp, 5
                  sub          s4, a0, s11
                  addi         s5, s5, -612
                  slt          s4, t6, a1
1155:             sll          s6, s11, s7
                  sra          s1, s10, sp
                  nop
                  ori          s1, s11, -973
                  sltiu        s6, s9, -964
1160:             bge          s9, zero, 1167f
                  sll          s2, s6, t4
                  xori         a2, s8, 166
                  auipc        t3, 529367
                  srai         s3, s3, 6
                  sll          a5, ra, s3
                  blt          sp, s4, 1170f
1167:             blt          t5, t4, 1168f
1168:             bgeu         t5, t4, 1170f
                  nop
1170:             blt          sp, t4, 1189f
                  slt          s5, s3, t6
                  andi         t5, a1, -70
                  sub          tp, s7, tp
                  sltu         s2, s10, t2
                  sll          zero, a0, s10
                  srai         t1, a7, 25
                  bge          t6, a3, 1184f
                  auipc        t2, 215118
                  bgeu         a5, a3, 1189f
                  bgeu         t0, t5, 1184f
                  blt          s0, s11, 1201f
                  srai         s1, s2, 28
                  beq          t2, tp, 1194f
1184:             sra          s8, s0, a6
                  slti         a6, t1, 1968
                  sltiu        s8, a6, -550
                  bne          a6, a2, 1206f
                  sll          a3, s8, a0
1189:             srl          a1, t4, t6
                  bge          a2, s5, 1194f
                  ori          s7, s7, 482
                  andi         t0, a1, 1564
                  slt          a6, s5, s11
1194:             nop
                  srai         s10, gp, 26
                  slti         s5, s3, 1806
                  sltiu        t6, a5, 1257
                  sll          a5, a7, s3
                  addi         s3, t1, 892
                  sra          tp, a0, t5
1201:             srai         t6, s4, 27
                  bne          a2, ra, 1207f
                  addi         s6, s1, 1298
                  srl          t0, t0, a4
                  bltu         t4, t3, 1220f
1206:             beq          t5, s11, 1208f
1207:             or           t1, t4, s1
1208:             sltu         t6, a3, a6
                  sub          gp, t5, s4
                  addi         s5, a1, 1394
                  nop
                  add          a4, a7, s0
                  sra          s9, t4, a4
                  nop
                  xori         t3, sp, -629
                  srli         tp, s1, 28
                  bne          s3, s4, 1229f
                  bge          tp, s5, 1224f
                  ori          s9, t4, 16
1220:             lui          t1, 830375
                  srli         s5, a0, 25
                  sll          t6, a2, a0
                  beq          s3, zero, 1229f
1224:             ori          t0, a5, 1567
                  slti         a3, s1, 508
                  bgeu         s1, a3, 1240f
                  or           a5, t1, tp
                  or           s5, t2, t1
1229:             sra          gp, a2, a1
                  auipc        s3, 766659
                  bgeu         gp, t2, 1234f
                  sll          s9, s9, t6
                  sll          ra, s9, a0
1234:             addi         s9, s11, 1033
                  srl          t6, a2, a1
                  xor          zero, s8, a5
                  lui          s9, 519279
                  xor          s2, t0, t3
                  beq          s1, tp, 1248f
1240:             slti         a0, a3, 1566
                  slt          s5, t2, zero
                  xor          a0, t3, s7
                  xor          s5, s1, a3
                  or           s7, s8, t3
                  slli         a2, t5, 20
                  ori          s1, a4, 1738
                  bltu         a1, s9, 1254f
1248:             add          t2, t0, s3
                  lui          ra, 928781
                  bne          s3, tp, 1258f
                  lui          t6, 627105
                  sltu         tp, t6, t5
                  beq          t2, s9, 1258f
1254:             slli         t2, ra, 19
                  sra          s0, sp, t3
                  srl          a5, a4, sp
                  bltu         s1, s5, 1265f
1258:             beq          a2, s2, 1269f
                  xori         zero, s8, 1003
                  bne          t3, s11, 1266f
                  srl          s2, s3, t4
                  xor          a4, t6, a2
                  nop
                  srai         a0, gp, 18
1265:             ori          t5, t4, -751
1266:             srli         s2, s1, 13
                  add          s10, s11, s9
                  sub          s10, a6, a1
1269:             bgeu         t1, s6, 1272f
                  sltiu        s5, t3, -1972
                  andi         tp, sp, -1545
1272:             bltu         a4, gp, 1278f
                  slli         a4, s1, 5
                  srli         a3, s11, 28
                  sll          ra, a7, s5
                  slli         s1, s5, 14
                  blt          s10, tp, 1294f
1278:             slti         gp, t5, -1027
                  andi         a1, a1, 911
                  auipc        a3, 828866
                  slt          tp, t4, s7
                  sub          s5, t4, s2
                  sltiu        a5, a1, 1807
                  add          ra, a4, s2
                  and          t3, t5, s3
                  srl          t5, t5, gp
                  bge          t4, a2, 1292f
                  sltiu        a6, gp, -1789
                  sll          s9, a7, s8
                  sra          s11, t5, t6
                  auipc        zero, 13492
1292:             srli         a1, a4, 0
                  xor          a5, t6, s7
1294:             ori          t2, s8, -202
                  slt          s9, s1, t5
                  xori         s8, a6, 1748
                  beq          a7, tp, 1309f
                  addi         t1, t2, -801
                  xor          a6, a4, a4
                  and          s9, s4, tp
                  slt          s8, s5, a6
                  or           tp, s6, a4
                  xor          s7, s10, s8
                  bne          s3, a7, 1310f
                  or           s3, s8, t4
                  blt          s9, t3, 1325f
                  srli         s7, t5, 14
                  sltiu        s2, s3, 926
1309:             bne          ra, s9, 1310f
1310:             andi         t1, t1, -1573
                  srai         s3, s5, 21
                  beq          gp, s10, 1321f
                  bge          ra, a7, 1318f
                  lui          ra, 180263
                  ori          t2, s9, 1899
                  srl          a1, s9, a3
                  sll          a1, a4, t5
1318:             sub          a5, t0, t3
                  xori         s4, t5, -1154
                  sltu         a5, gp, a1
1321:             slli         s2, a1, 15
                  xor          gp, t4, t2
                  bltu         t6, s6, 1331f
                  blt          t6, s3, 1330f
1325:             slli         s10, s9, 22
                  bgeu         t6, s5, 1331f
                  sll          t0, s1, sp
                  lui          a2, 216973
                  xor          s7, a7, t1
1330:             auipc        t5, 925914
1331:             srl          tp, s6, a4
                  beq          a0, s9, 1346f
                  sll          s9, s1, s8
                  sltu         gp, t0, s3
                  srl          tp, tp, s11
                  nop
                  slli         s10, t1, 25
                  add          t3, a7, t6
                  and          s5, a0, tp
                  blt          a4, s8, 1360f
                  addi         s10, s3, -1832
                  srli         t0, s3, 13
                  sra          s11, t4, s4
                  or           t1, a0, t0
                  lui          t6, 647334
1346:             blt          s2, s8, 1353f
                  ori          s10, a5, -1567
                  addi         t5, t5, 988
                  srli         t1, a3, 19
                  srl          s5, a5, s7
                  srl          a4, s2, s5
                  slt          zero, zero, a2
1353:             or           t3, t3, s3
                  bne          s6, gp, 1359f
                  srai         a0, t2, 19
                  sll          s4, a5, tp
                  andi         s3, sp, -1149
                  xor          a3, ra, a2
1359:             nop
1360:             lui          zero, 885428
                  srli         zero, s8, 0
                  bne          s7, s5, 1368f
                  srli         t3, a6, 22
                  slli         gp, t6, 9
                  or           a4, tp, s5
                  addi         t1, s2, 827
                  auipc        ra, 513829
1368:             sltiu        a1, a1, -198
                  sub          a4, gp, t2
                  srli         t5, s8, 31
                  auipc        s7, 457823
                  srl          a6, t2, s10
                  beq          s3, s4, 1390f
                  bgeu         a4, t6, 1380f
                  slt          t5, sp, s7
                  srai         a1, t0, 14
                  lui          a1, 854690
                  bgeu         a5, sp, 1380f
                  slt          s4, a1, tp
1380:             andi         a4, a0, 444
                  or           t2, zero, t6
                  andi         s3, s1, 1129
                  sub          a1, tp, s5
                  bgeu         s5, t3, 1394f
                  blt          s3, s4, 1389f
                  addi         tp, tp, -1986
                  add          s7, s7, t5
                  blt          gp, s8, 1403f
1389:             sra          zero, a1, t5
1390:             add          s6, s7, a3
                  sub          a0, s3, s10
                  sub          s7, a1, s5
                  sltiu        gp, t0, 1967
1394:             srli         t5, a5, 5
                  blt          s5, s8, 1414f
                  sltu         s4, s10, t2
                  slti         a1, a1, -1268
                  auipc        t0, 7675
                  slt          s1, t2, a2
                  sub          a3, s6, a0
                  srl          s9, t0, a1
                  and          s9, a0, s4
1403:             ori          a5, s11, 1707
                  addi         t2, a2, -852
                  beq          s1, s11, 1412f
                  lui          a5, 243884
                  sra          t3, s0, t0
                  sra          s7, s1, s10
                  srli         a5, s7, 21
                  lui          a1, 215059
                  srai         s7, s3, 7
1412:             add          s11, a0, a2
                  slli         s3, s1, 7
1414:             xor          a4, a4, a0
                  or           s5, a6, s9
                  bgeu         s10, s10, 1418f
                  slt          t2, a4, s8
1418:             sltiu        t1, a6, 1783
                  add          a4, a7, t6
                  bge          t6, t0, 1428f
                  beq          a2, s4, 1432f
                  bgeu         t3, s8, 1426f
                  bltu         zero, tp, 1427f
                  sltu         t1, a2, a7
                  sltu         s10, t6, gp
1426:             srl          t0, a4, a3
1427:             andi         s8, zero, 578
1428:             slli         tp, t2, 0
                  addi         t3, s7, 756
                  srli         s6, t0, 8
                  xor          s4, a5, zero
1432:             sub          t5, s0, s7
                  lui          t6, 933866
                  bgeu         t4, a6, 1437f
                  bge          sp, gp, 1446f
                  or           t2, s10, a2
1437:             sll          t1, s8, s8
                  sll          t2, s2, s0
                  blt          s3, gp, 1442f
                  blt          zero, t2, 1445f
                  srl          gp, s4, a7
1442:             sltiu        s5, a3, 1107
                  andi         a2, t4, -1617
                  sra          t6, s7, t2
1445:             xori         s5, t5, -1626
1446:             and          s11, s8, a4
                  add          s6, t2, t3
                  slt          t6, a4, t3
                  xor          a3, s9, t6
                  bltu         s0, s5, 1458f
                  auipc        s11, 787752
                  lui          s7, 75389
                  lui          s7, 967963
                  srl          a2, t2, s5
                  bne          zero, a0, 1458f
                  beq          zero, t5, 1458f
                  and          a5, s2, s6
1458:             ori          a2, s6, 132
                  ori          t1, t4, 1102
                  sltiu        tp, tp, 642
                  srai         a6, ra, 9
                  lw           ra, 4(t4)
                  slti         gp, t0, -390
                  addi         t4, t4, 36
                  srl          s9, a0, t4
2177:             addi x21, x1, 0
2177:             jalr x21, x21, 0
sub_3:            sltiu        s6, t1, 515
                  sltu         gp, s6, s8
                  bne          s9, t6, sub_3_stack_p
sub_3_stack_p:    addi         t4, t4, -56
                  xori         t1, s7, -1290
                  srli         s9, s11, 19
                  auipc        zero, 1045734
                  sw           ra, 4(t4)
                  nop
                  lui          t6, 693106
sub_3_5:          jal          ra, 6f
0:                jal          ra, 5f
1:                jal          t1, 7f
2:                jal          ra, 9f
3:                jal          s6, 1b
4:                jal          t1, 2b
5:                jal          ra, 10f
6:                jal          s7, 0b
7:                jal          ra, 11f
8:                jal          s0, 4b
9:                jal          t1, 12f
10:               jal          ra, 3b
11:               jal          a2, 8b
12:               ori          tp, s3, 1026
sub_3_0:          jal          ra, 21f
0:                jal          ra, 16f
1:                jal          t1, 11f
2:                jal          ra, 5f
3:                jal          s11, 1b
4:                jal          t1, 12f
5:                jal          ra, 15f
6:                jal          a6, 10f
7:                jal          ra, 3b
8:                jal          t1, 14f
9:                jal          ra, 18f
10:               jal          ra, 17f
11:               jal          ra, 2b
12:               jal          t1, 9b
13:               jal          s1, 22f
14:               jal          a5, 4b
15:               jal          a4, 24f
16:               jal          ra, 20f
17:               jal          t1, 19f
18:               jal          a6, 13b
19:               jal          ra, 8b
20:               jal          ra, 23f
21:               jal          ra, 6b
22:               jal          ra, 0b
23:               jal          s1, 7b
24:               ori          s5, s0, -439
sub_3_10:         jal          ra, 11f
0:                jal          ra, 2f
1:                jal          ra, 17f
2:                jal          t1, 6f
3:                jal          gp, 5f
4:                jal          ra, 13f
5:                jal          a5, 14f
6:                jal          t1, 10f
7:                jal          ra, 15f
8:                jal          t1, 16f
9:                jal          ra, 12f
10:               jal          s9, 3b
11:               jal          ra, 7b
12:               jal          a0, 1b
13:               jal          ra, 0b
14:               jal          ra, 9b
15:               jal          tp, 8b
16:               jal          ra, 4b
17:               xori         s6, t5, -1339
sub_3_1:          jal          ra, 16f
0:                jal          s1, 1f
1:                jal          ra, 22f
2:                jal          ra, 12f
3:                jal          gp, 4f
4:                jal          ra, 19f
5:                jal          ra, 11f
6:                jal          ra, 5b
7:                jal          ra, 23f
8:                jal          t1, 0b
9:                jal          gp, 20f
10:               jal          t1, 6b
11:               jal          a4, 21f
12:               jal          s6, 3b
13:               jal          t1, 9b
14:               jal          ra, 7b
15:               jal          ra, 24f
16:               jal          t1, 13b
17:               jal          ra, 15b
18:               jal          t0, 2b
19:               jal          tp, 8b
20:               jal          ra, 18b
21:               jal          gp, 14b
22:               jal          t1, 17b
23:               jal          ra, 25f
24:               jal          s7, 10b
25:               sll          s0, t0, s9
sub_3_9:          jal          ra, 2f
0:                jal          ra, 18f
1:                jal          ra, 28f
2:                jal          ra, 22f
3:                jal          t5, 9f
4:                jal          ra, 5f
5:                jal          t0, 12f
6:                jal          ra, 4b
7:                jal          ra, 27f
8:                jal          a4, 7b
9:                jal          ra, 24f
10:               jal          t1, 14f
11:               jal          ra, 20f
12:               jal          t1, 19f
13:               jal          ra, 11b
14:               jal          t1, 21f
15:               jal          t1, 23f
16:               jal          t2, 13b
17:               jal          ra, 29f
18:               jal          t0, 6b
19:               jal          gp, 16b
20:               jal          t1, 1b
21:               jal          s11, 15b
22:               jal          s11, 3b
23:               jal          t1, 25f
24:               jal          ra, 26f
25:               jal          t1, 17b
26:               jal          s7, 8b
27:               jal          ra, 0b
28:               jal          ra, 10b
29:               ori          s8, a6, 961
sub_3_4:          jal          ra, 12f
0:                jal          ra, 6f
1:                jal          s10, 9f
2:                jal          t1, 18f
3:                jal          t2, 11f
4:                jal          t1, 17f
5:                jal          ra, 19f
6:                jal          a2, 3b
7:                jal          t1, 10f
8:                jal          tp, 1b
9:                jal          ra, 2b
10:               jal          ra, 5b
11:               jal          t5, 15f
12:               jal          ra, 13f
13:               jal          ra, 14f
14:               jal          tp, 0b
15:               jal          ra, 16f
16:               jal          t1, 8b
17:               jal          s4, 7b
18:               jal          ra, 4b
19:               srl          s6, a7, t5
sub_3_2:          jal          ra, 3f
0:                jal          s10, 6f
1:                jal          ra, 0b
2:                jal          t0, 1b
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          t2, 4b
6:                jal          t1, 5b
7:                jal          t1, 9f
8:                jal          gp, 2b
9:                jal          a2, 8b
10:               jal          ra, 11f
11:               auipc        ra, 85915
sub_3_7:          jal          ra, 9f
0:                jal          ra, 5f
1:                jal          a5, 11f
2:                jal          t1, 3f
3:                jal          ra, 0b
4:                jal          ra, 10f
5:                jal          t1, 8f
6:                jal          ra, 12f
7:                jal          tp, 2b
8:                jal          ra, 14f
9:                jal          t6, 1b
10:               jal          ra, 6b
11:               jal          t1, 4b
12:               jal          ra, 13f
13:               jal          ra, 7b
14:               sub          a5, s5, t5
                  srl          t0, t6, s4
                  sra          ra, s4, s6
                  sltu         a5, t2, zero
                  bne          t2, s2, 12f
                  sll          a2, t1, s0
                  sub          s5, a1, ra
                  sra          s8, s3, a0
                  lui          a1, 56498
                  add          s1, ra, a2
                  xori         ra, a6, -1638
                  bge          s9, zero, 22f
                  auipc        t1, 58279
12:               xori         s0, tp, -540
                  or           t0, t6, s8
                  bge          ra, a3, 28f
                  nop
                  nop
                  add          zero, a4, t1
                  bgeu         zero, t3, 37f
                  bge          s7, s7, 34f
                  beq          a5, a2, 23f
                  srli         s8, sp, 6
22:               xor          s6, s0, gp
23:               add          s7, t0, t6
                  ori          s11, s9, -1742
                  bge          a4, a7, 38f
                  beq          s2, t4, 42f
                  bgeu         sp, tp, 30f
28:               sub          s7, gp, t5
sub_3_8:          jal          ra, 21f
0:                jal          t3, 2f
1:                jal          ra, 5f
2:                jal          ra, 3f
3:                jal          ra, 1b
4:                jal          a5, 20f
5:                jal          t1, 13f
6:                jal          ra, 18f
7:                jal          t5, 22f
8:                jal          ra, 15f
9:                jal          s9, 6b
10:               jal          t1, 9b
11:               jal          ra, 14f
12:               jal          ra, 4b
13:               jal          s0, 17f
14:               jal          ra, 7b
15:               jal          t1, 12b
16:               jal          ra, 11b
17:               jal          t1, 10b
18:               jal          ra, 8b
19:               jal          t1, 16b
20:               jal          ra, 19b
21:               jal          ra, 0b
22:               nop
                  slt          t5, s6, zero
30:               sltu         s5, s6, t5
                  bne          s6, s1, 32f
32:               sll          s10, s10, a3
                  sra          gp, a3, t4
34:               bltu         t2, gp, 40f
                  srl          tp, s6, s8
                  ori          zero, gp, 524
37:               bne          t1, sp, 55f
38:               slti         s9, s5, 1809
                  srli         s6, s11, 28
40:               sll          t6, s8, s11
                  and          gp, s8, a3
42:               xor          s10, s10, a3
                  sltu         s6, s2, s11
                  slti         s7, s10, -1221
                  sltu         s6, zero, s5
                  and          s9, a3, s4
                  or           a3, s6, t4
                  bne          t1, t2, 66f
                  slti         ra, a4, -780
                  andi         t3, gp, -1494
                  bge          t1, s6, 66f
                  slti         t2, a2, 930
                  srl          ra, s6, t6
                  lui          a1, 895116
55:               bge          t6, t1, 71f
                  slt          a6, t5, s8
                  blt          t5, a1, 66f
                  sub          s6, s3, tp
                  ori          s3, zero, 845
                  and          gp, a4, t0
                  sra          s4, t6, s0
                  sltu         t1, s10, tp
                  sltu         s8, t2, s1
                  slti         a6, t2, 2011
                  sub          s2, s11, a2
66:               lui          t6, 397270
                  blt          t0, s11, 85f
                  bgeu         s3, a2, 81f
                  slt          zero, a4, t3
                  blt          a6, a6, 72f
71:               add          a5, s10, s9
72:               andi         s11, t6, 299
                  srl          t2, a3, s7
                  srli         a3, a7, 8
                  andi         tp, s10, 92
                  slti         tp, s0, -1970
                  auipc        s0, 833810
                  auipc        s8, 499936
                  sll          s9, t0, a4
                  sub          s2, s5, a2
81:               xori         gp, s3, 346
                  slli         s8, s8, 13
                  sra          gp, a5, t1
                  bgeu         s4, zero, 100f
85:               beq          zero, a3, 97f
                  bltu         zero, a3, 91f
                  bltu         a3, s10, 107f
                  xor          a5, t1, t2
                  auipc        t1, 374255
                  addi         s2, a0, -222
91:               slli         a5, a5, 21
                  xori         ra, s11, -437
                  bne          a0, a0, 95f
                  sll          ra, s9, a6
95:               blt          s2, s7, 97f
                  slt          s3, a7, t5
97:               auipc        t6, 106001
                  xor          s2, zero, t4
                  auipc        ra, 438557
100:              or           s9, gp, s9
                  slt          t2, a6, s4
                  bltu         t5, a1, 113f
                  beq          s5, tp, 119f
                  srai         a3, sp, 20
                  slli         zero, t0, 17
                  sltiu        t2, s6, -2006
107:              bgeu         s6, s3, 127f
                  sll          zero, a0, t1
                  andi         s2, s2, -342
                  xori         t3, s3, 406
                  slt          t5, t0, t5
                  blt          a1, t3, 132f
113:              bge          t1, s2, 130f
                  beq          a6, s5, 125f
                  xor          ra, a6, s6
                  sra          ra, s2, t5
                  addi         a0, a3, 1648
                  bne          a1, a6, 133f
119:              slli         a3, s8, 14
                  xor          zero, a1, ra
                  add          a6, sp, s10
                  srli         s2, zero, 4
                  auipc        s1, 737683
                  and          s5, a3, ra
125:              ori          s0, t0, 1800
                  addi         t5, a7, -319
127:              sra          a0, a4, a0
                  slli         a4, s11, 25
                  sll          s11, s6, t2
130:              andi         a1, s9, -605
                  slt          zero, t6, sp
132:              bne          a3, s0, 141f
133:              sra          a6, t1, s1
                  bge          s11, t4, 150f
                  srai         a3, t5, 7
                  or           s5, a2, t6
                  auipc        a3, 580429
                  auipc        s1, 554974
                  srai         t6, a7, 10
                  srai         t1, s2, 25
141:              slt          t2, s9, s4
                  auipc        a6, 431485
                  sll          t5, gp, s8
sub_3_6:          jal          ra, 8f
0:                jal          ra, 7f
1:                jal          ra, 22f
2:                jal          gp, 9f
3:                jal          t1, 16f
4:                jal          ra, 21f
5:                jal          t1, 3b
6:                jal          ra, 5b
7:                jal          ra, 11f
8:                jal          ra, 13f
9:                jal          ra, 20f
10:               jal          a5, 19f
11:               jal          ra, 10b
12:               jal          gp, 23f
13:               jal          s9, 1b
14:               jal          ra, 2b
15:               jal          t0, 12b
16:               jal          t0, 18f
17:               jal          a3, 4b
18:               jal          ra, 24f
19:               jal          ra, 15b
20:               jal          ra, 17b
21:               jal          a1, 6b
22:               jal          a0, 0b
23:               jal          ra, 14b
24:               jal          a6, 25f
25:               srli         s4, a2, 13
                  bltu         a0, a5, 157f
                  xori         s3, tp, 1600
                  sll          a2, a3, a3
                  sll          zero, a3, a2
                  sltiu        a0, t6, -1142
                  slt          s6, t1, s4
150:              bne          s4, s1, 170f
                  xori         s3, a0, -191
                  andi         a4, s8, 1319
                  lui          s4, 185532
                  slti         a1, t0, 380
                  addi         t3, a0, 1223
                  auipc        zero, 1040917
157:              slti         a1, a0, -1920
                  srai         s0, s9, 4
                  auipc        t2, 997553
                  sltiu        s11, s3, -1441
                  auipc        s7, 890489
                  ori          a4, s6, -1208
                  nop
                  slli         gp, s6, 1
                  blt          s9, t3, 167f
                  nop
167:              lui          a3, 770046
                  bge          zero, gp, 181f
                  nop
170:              slti         ra, tp, -1732
                  bne          s4, gp, 191f
                  sll          s1, t5, s2
                  nop
                  slli         s8, t2, 30
                  bne          s7, t1, 193f
                  bge          t4, s6, 178f
                  or           t1, s1, s10
178:              srai         s3, s2, 1
                  srli         a0, ra, 21
                  lui          s10, 731899
181:              slti         a1, a6, 1875
                  and          s9, a4, t4
                  bltu         s8, s3, 185f
                  slli         tp, zero, 16
185:              addi         s8, tp, -864
                  auipc        a3, 135133
                  bgeu         s7, a3, 188f
188:              lui          a0, 233151
                  srl          t3, s6, a4
                  srai         t1, a0, 29
191:              sltiu        t1, s8, 973
                  sub          t5, s9, t4
193:              sub          t2, s8, s8
                  sltiu        a5, a0, -846
                  lui          a5, 355290
                  auipc        s0, 910126
                  and          t1, a1, sp
                  bge          s11, s10, 212f
                  srl          s9, ra, sp
                  sltiu        t6, s0, 432
                  beq          s3, s8, 207f
                  and          ra, a3, s9
                  slli         tp, a5, 25
                  srl          gp, a6, s11
                  xori         s7, sp, 918
                  bltu         s10, t4, 218f
207:              sub          t6, s2, s6
                  slli         a5, s10, 3
                  auipc        s6, 418941
                  sll          t0, s1, t5
                  srl          a6, gp, gp
212:              sub          zero, t3, s4
                  slli         t0, tp, 15
                  slti         s2, zero, 678
                  addi         s0, t4, -1082
                  sltu         s7, t0, s8
                  ori          s10, tp, -1843
218:              ori          s11, ra, -1862
                  add          t2, s11, t5
                  sub          t0, gp, a0
                  xori         a5, s6, -1566
                  slti         s2, t5, -1574
                  sra          a4, t4, ra
                  auipc        s9, 223302
                  add          s11, gp, s6
                  srli         s4, s9, 4
                  ori          s7, s0, 723
                  bge          t4, a3, 240f
                  blt          s5, a5, 244f
                  andi         a4, a3, -116
                  ori          zero, a4, 650
                  and          gp, s3, tp
                  sra          a1, a0, t0
                  bgeu         s0, a6, 239f
                  ori          t6, ra, 1519
                  bge          t6, t0, 239f
                  sra          a3, ra, gp
                  sub          t6, s4, s9
239:              nop
240:              andi         tp, s4, -309
                  andi         a1, t4, -558
                  sra          t0, a2, zero
                  sll          s7, s10, t0
244:              addi         s9, t1, 852
                  srli         t5, a6, 14
                  sll          s2, zero, s1
                  sltu         t6, s5, a3
                  ori          tp, tp, -256
                  bge          t6, a2, 265f
                  xor          s3, s5, ra
                  slt          ra, a5, s5
                  slli         a1, t1, 30
                  andi         s11, ra, 1142
                  slli         a2, s3, 25
                  lui          a5, 193084
                  add          zero, t0, sp
                  srai         tp, s8, 9
                  srl          a0, s4, s1
                  bne          a4, s0, 277f
                  add          zero, s5, t5
                  blt          s7, a7, 278f
                  andi         s3, s5, 331
                  and          a4, s11, a3
                  bge          t4, a7, 280f
265:              ori          t5, s0, -593
                  bne          a7, t2, 285f
                  sltiu        t2, s0, 1999
                  add          s9, s6, a1
                  ori          s5, a2, 22
                  xori         t0, a4, -1210
                  nop
                  blt          t4, gp, 288f
                  srai         s4, a7, 22
                  srai         tp, gp, 10
                  lui          t0, 461556
                  slti         s2, gp, 1099
sub_3_3:          jal          ra, 6f
0:                jal          s7, 10f
1:                jal          ra, 24f
2:                jal          ra, 18f
3:                jal          s7, 0b
4:                jal          t1, 9f
5:                jal          tp, 11f
6:                jal          ra, 22f
7:                jal          s3, 21f
8:                jal          t1, 19f
9:                jal          s8, 29f
10:               jal          s1, 20f
11:               jal          a5, 1b
12:               jal          ra, 13f
13:               jal          ra, 28f
14:               jal          s4, 5b
15:               jal          t0, 7b
16:               jal          ra, 4b
17:               jal          tp, 15b
18:               jal          ra, 30f
19:               jal          t1, 3b
20:               jal          ra, 12b
21:               jal          t1, 16b
22:               jal          ra, 27f
23:               jal          gp, 25f
24:               jal          ra, 17b
25:               jal          ra, 26f
26:               jal          t1, 14b
27:               jal          t1, 23b
28:               jal          ra, 2b
29:               jal          ra, 8b
30:               xor          t3, t3, s2
277:              bgeu         a1, t2, 286f
278:              srai         a4, s3, 9
                  bltu         a3, a2, 282f
280:              or           a4, ra, a1
                  or           a3, sp, t2
282:              ori          tp, t3, -1870
                  andi         t3, t2, -1685
                  xor          ra, s0, s1
285:              bltu         a4, t1, 303f
286:              bgeu         tp, s9, 306f
                  slli         a0, t0, 28
288:              sll          a4, a0, a6
                  sll          a1, s5, s6
                  slli         s10, a2, 24
                  bgeu         t6, t4, 307f
                  srai         s10, a4, 26
                  or           t3, s2, a0
                  blt          s3, t4, 295f
295:              and          s8, s1, s5
                  slt          a5, t2, ra
                  andi         s5, s5, 1187
                  sltiu        s7, a0, -76
                  and          t2, s4, t6
                  ori          s7, s8, 172
                  bltu         a4, a3, 313f
                  nop
303:              add          a2, a2, gp
                  lui          a6, 638336
                  srai         s3, a6, 14
306:              bne          s8, ra, 309f
307:              sra          a4, s4, s3
                  bltu         tp, a0, 322f
309:              slt          t1, a7, ra
                  srai         s8, a1, 4
                  ori          s6, t6, -198
                  sltiu        gp, a5, 334
313:              xori         s7, a1, 1103
                  sltiu        s1, a1, -1205
                  or           s4, s5, t2
                  slti         t0, tp, -782
                  slti         t0, zero, -1971
                  bge          a7, s11, 334f
                  sra          tp, s8, s0
                  slli         tp, t6, 28
                  addi         a3, t2, -1592
322:              srai         s2, t4, 5
                  blt          a5, gp, 341f
                  and          zero, a6, t3
                  slti         t1, s2, 211
                  and          t5, a2, t1
                  andi         t6, s1, -1770
                  beq          a2, s7, 333f
                  lui          a5, 872538
                  sltu         s9, s7, a4
                  bgeu         t0, s4, 349f
                  srai         s11, tp, 15
333:              lui          s1, 1042236
334:              sra          t1, a0, gp
                  srai         a5, a0, 28
                  xori         s7, a6, -1927
                  xor          s0, s10, a2
                  andi         s10, zero, -131
                  beq          s5, gp, 351f
                  xori         s8, s4, -1149
341:              bne          s11, s10, 361f
                  slli         s9, a2, 24
                  beq          s5, s6, 358f
                  slli         s0, t1, 18
                  bge          a2, s3, 358f
                  srai         a3, s7, 14
                  auipc        a6, 865885
                  nop
349:              xori         s3, a2, 1237
                  xor          s5, a1, s5
351:              beq          s5, s9, 371f
                  andi         s1, t5, -1235
                  slli         s11, t6, 19
                  sra          t2, a0, s10
                  slli         a4, t4, 6
                  srli         s11, a2, 27
                  or           a6, s8, tp
358:              bltu         t5, tp, 360f
                  beq          zero, sp, 370f
360:              nop
361:              andi         zero, s2, -995
                  sltu         ra, s2, s5
                  beq          a5, t3, 369f
                  sltu         a6, s3, t0
                  srai         gp, s7, 20
                  and          t3, a7, t2
                  auipc        t1, 890909
                  beq          a1, a0, 386f
369:              sltiu        s7, s5, -517
370:              beq          t3, s11, 386f
371:              srai         t0, a2, 11
                  xor          s6, gp, s9
                  auipc        t3, 1026867
                  slti         a6, a7, -1592
                  srai         t6, a1, 6
                  sltiu        s7, t1, 1710
                  bltu         tp, a6, 386f
                  and          gp, t2, a4
                  xori         ra, t4, 902
                  nop
                  slli         s3, a2, 5
                  srl          a3, t2, s1
                  andi         s1, a7, -110
                  nop
                  addi         s10, s6, 767
386:              sra          s11, s2, t1
                  lui          s3, 32740
                  beq          a0, a1, 408f
                  xori         s7, a1, 1836
                  srl          a0, t4, s0
                  sll          s8, s0, s6
                  bne          s10, s4, 394f
                  srli         a3, ra, 13
394:              sltu         a4, a7, t2
                  blt          a6, s5, 397f
                  sltiu        s10, t2, 134
397:              blt          s7, a3, 410f
                  slti         s11, s1, -1488
                  sub          s2, s10, s11
                  ori          s4, s10, -692
                  bgeu         t1, zero, 410f
                  nop
                  xori         tp, s4, 1725
                  addi         t5, zero, 1220
                  add          s9, s7, zero
                  bne          s9, s4, 423f
                  lui          s8, 964113
408:              nop
                  andi         a3, s0, 894
410:              slt          s7, zero, zero
                  bge          s3, s11, 414f
                  bne          tp, s5, 427f
                  bltu         s10, t5, 429f
414:              bge          t5, s0, 433f
                  srli         a1, t5, 29
                  add          s10, tp, a0
                  lui          s11, 269068
                  add          s10, a5, t1
                  bgeu         s5, s3, 439f
                  addi         s4, ra, 1920
                  addi         a1, s7, 800
                  slli         s1, s5, 23
423:              blt          a1, zero, 424f
424:              or           t2, s5, t5
                  bgeu         t0, s1, 434f
                  slti         a0, t5, -1238
427:              andi         a0, s3, 811
                  bne          ra, s4, 443f
429:              sra          a4, a0, s11
                  sub          zero, a1, a6
                  sra          a5, s4, a2
                  sltu         zero, sp, zero
433:              srl          s4, a5, a2
434:              add          t6, t5, a7
                  lui          s8, 793816
                  and          t6, a7, a6
                  bge          t0, t5, 449f
                  slti         tp, t0, -557
439:              slti         t6, s10, -540
                  ori          a0, a5, 1297
                  slt          s0, t4, s9
                  sll          tp, s8, a0
443:              slt          s11, t4, ra
                  sra          a2, t1, s8
                  andi         t0, s9, -1458
                  blt          t0, a3, 462f
                  srl          s5, s5, a3
                  nop
449:              slli         s10, s0, 16
                  beq          sp, s3, 465f
                  srl          t1, t3, s4
                  lui          a1, 562549
                  srli         s10, t0, 14
                  sra          s6, s7, s3
                  or           s5, t6, s8
                  ori          s4, a0, 900
                  lui          t2, 607024
                  srai         s2, sp, 1
                  bge          t3, s6, 462f
                  addi         a6, s4, -997
                  add          a5, zero, zero
462:              xori         t5, a7, -71
                  xor          s2, s11, s10
                  srl          a3, tp, t3
465:              slli         t1, a0, 12
                  sra          s11, t4, ra
                  or           s7, s6, s10
                  beq          s1, t4, 488f
                  slt          t3, a5, s9
                  slli         s9, a5, 7
                  sltu         ra, a7, s10
                  beq          gp, s4, 490f
                  srai         zero, s6, 24
                  bltu         t6, zero, 493f
                  srai         s11, s1, 13
                  or           s6, s2, s7
                  sltu         s8, a0, a2
                  or           tp, zero, a0
                  auipc        t2, 961976
                  slti         gp, s1, 269
                  slt          s1, s6, zero
                  nop
                  slt          t6, t6, zero
                  beq          t0, s8, 502f
                  sra          s4, tp, zero
                  sltu         a4, t5, s4
                  ori          t2, s6, 1126
488:              slli         tp, s0, 22
                  sll          a1, a2, a2
490:              bgeu         s0, a5, 506f
                  and          a3, t2, a1
                  and          s6, s4, zero
493:              sub          s1, t4, a3
                  slli         s11, s5, 17
                  bne          s9, s3, 504f
                  sltu         s3, a1, t3
                  srli         s7, a6, 20
                  nop
                  and          ra, t6, t0
                  and          s5, s3, s7
                  sltiu        s0, a5, 673
502:              sltu         a4, t5, s6
                  ori          zero, gp, 0
504:              slti         s8, ra, 932
                  andi         a6, s2, -331
506:              nop
                  nop
                  beq          s8, t6, 525f
                  srai         gp, s0, 20
                  xor          s11, t1, s6
                  and          gp, a7, a7
                  lui          s10, 886770
                  lui          s9, 47155
                  srai         s9, s8, 15
                  addi         t0, s10, -767
                  srai         s9, a6, 22
                  bltu         s5, s5, 519f
                  sltiu        zero, s8, -1184
519:              addi         s8, gp, 155
                  auipc        s11, 68993
                  beq          a6, sp, 541f
                  sra          t5, a1, gp
                  beq          sp, a0, 539f
                  sltiu        s7, sp, -1678
525:              sub          s9, s3, t0
                  srl          t6, t2, sp
                  xori         s10, a6, -307
                  srl          s2, ra, s3
                  xori         a0, sp, 42
                  sltu         s0, a7, t3
                  auipc        s2, 1035699
                  add          s7, a6, gp
                  sltu         a3, a1, sp
                  lui          a4, 1048519
                  xor          s6, t2, s10
                  sltu         s1, t0, t5
                  ori          ra, t5, -312
                  or           a6, t6, t4
539:              xor          s4, s2, a3
                  xor          s10, s7, a0
541:              add          a0, t5, s3
                  slli         t6, a7, 30
                  srli         a3, t1, 25
                  slti         t1, sp, -1058
                  addi         s3, a0, 1442
                  andi         s4, a6, 1293
                  slti         s9, a0, -31
                  sll          s5, t1, s5
                  sll          a4, a7, s2
                  bgeu         s2, tp, 563f
                  add          t6, s11, s1
                  auipc        s4, 597776
                  srl          a5, sp, t4
                  beq          t3, s9, 560f
                  bgeu         s7, zero, 560f
                  srl          tp, a4, s1
                  addi         s1, t4, -688
                  bne          ra, a0, 571f
                  beq          t2, s7, 571f
560:              blt          s6, a1, 571f
                  beq          ra, t0, 571f
                  bltu         ra, a1, 571f
563:              or           a2, s11, t4
                  slli         a4, s8, 3
                  slti         s4, a1, 961
                  srl          a1, t4, s10
                  sltiu        a3, s7, -1733
                  sll          s3, t4, ra
                  sra          s4, s9, s7
                  sll          s8, ra, sp
571:              srli         t1, t0, 3
                  lw           ra, 4(t4)
                  addi         t4, t4, 56
                  ori          a2, s10, -1131
                  slli         a4, sp, 3
                  xori         s6, t0, 463
                  sll          t1, gp, s7
                  lui          a6, 641863
839:              addi x19, x1, 1
839:              jalr x19, x19, 0
sub_5:            auipc        s10, 239319
                  beq          s4, s9, sub_5_stack_p
                  xori         s4, tp, -2027
                  sub          s10, s4, t0
sub_5_stack_p:    addi         t4, t4, -60
                  sw           ra, 4(t4)
                  xori         t5, a6, 128
                  slli         a3, a4, 14
                  slt          t5, a7, s0
                  or           a1, s6, s6
                  addi         s4, s6, 1175
                  slt          a3, s4, s0
                  sll          gp, t5, a6
sub_5_0:          jal          ra, 7f
0:                jal          t5, 8f
1:                jal          a1, 14f
2:                jal          t1, 4f
3:                jal          ra, 16f
4:                jal          t1, 6f
5:                jal          ra, 3b
6:                jal          t1, 15f
7:                jal          t0, 13f
8:                jal          ra, 10f
9:                jal          t6, 1b
10:               jal          ra, 9b
11:               jal          ra, 0b
12:               jal          ra, 2b
13:               jal          ra, 12b
14:               jal          t1, 5b
15:               jal          t1, 11b
16:               srai         s1, s10, 2
                  blt          t0, s6, 14f
                  xori         t2, s1, 1448
                  sltiu        s2, t3, 699
                  slti         s0, t6, -1355
                  srl          t2, t1, a1
                  beq          a0, gp, 20f
                  xori         t6, s2, 1822
                  srl          gp, a2, t2
                  sra          tp, a2, t6
                  xori         s7, s5, 438
                  bgeu         a6, s5, 19f
                  add          a3, s2, a6
                  sub          s4, s5, t0
                  beq          s9, t4, 20f
14:               slt          s0, s5, t2
                  slli         ra, t2, 14
                  blt          s1, zero, 21f
                  auipc        s2, 482516
                  andi         s7, a1, 1838
19:               bge          a7, zero, 39f
20:               bne          t3, s9, 31f
21:               srli         a6, s3, 12
                  andi         t0, a1, -195
                  slti         a3, t3, -4
                  xori         a3, a2, -76
                  srli         s2, sp, 12
                  lui          a5, 833423
                  slli         s3, a5, 26
                  srai         a0, s2, 26
                  or           s7, t5, t1
                  slti         t1, t2, -1676
31:               ori          s11, s5, -1880
                  bne          t1, t2, 34f
                  bge          s1, s3, 42f
34:               slt          a3, t4, s5
                  xor          s11, s8, t4
                  xor          s2, a2, s3
                  or           s8, a2, s6
                  blt          s5, t0, 56f
39:               addi         s8, s2, 1115
                  bne          s3, s11, 53f
                  srl          a6, tp, zero
42:               add          s2, a7, s0
                  slt          t6, gp, t0
                  sll          t0, gp, zero
                  bne          s5, t0, 46f
46:               sra          s1, t0, t1
                  bgeu         s6, t0, 58f
                  blt          gp, s10, 58f
                  sltiu        gp, a6, 600
                  bge          s4, s0, 58f
                  bge          s7, tp, 66f
                  lui          a5, 139825
53:               sltu         a3, a7, s7
                  bgeu         t3, a1, 58f
                  xor          s6, s7, a6
56:               blt          t2, t3, 62f
                  auipc        s8, 594636
58:               sll          t6, t2, t1
                  beq          a3, s7, 65f
                  srli         t6, t1, 18
                  ori          s3, s5, -640
62:               srl          a4, zero, a1
                  bgeu         a0, s4, 66f
                  andi         a4, s10, -1783
65:               slt          s1, zero, t3
66:               srli         t2, s4, 13
                  xori         s4, zero, -412
                  slti         s1, s2, -1509
                  lw           ra, 4(t4)
                  andi         s9, s5, 1342
                  addi         t4, t4, 60
                  sll          a0, a6, t1
104:              addi x4, x1, 1
104:              jalr x4, x4, 0
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
.align           2
mtvec_handler:    
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x17, x29, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x27, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x27, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x27, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x27, x20, ecall_handler
                  li x20, 0x1
                  beq x27, x20, instr_fault_handler
                  li x20, 0x5
                  beq x27, x20, load_fault_handler
                  li x20, 0x7
                  beq x27, x20, store_fault_handler
                  li x20, 0xc
                  beq x27, x20, pt_fault_handler
                  li x20, 0xd
                  beq x27, x20, pt_fault_handler
                  li x20, 0xf
                  beq x27, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x29, x17, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x17, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x17, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x29, x17, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x29, x17, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x29, x17, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
