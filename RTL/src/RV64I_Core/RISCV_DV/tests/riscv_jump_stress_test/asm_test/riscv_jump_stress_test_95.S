.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
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
                  li x1, 0xfc5cb210
                  li x2, 0x3768a545
                  li x3, 0xf23bfa4f
                  li x4, 0x0
                  li x5, 0xf156dd2d
                  li x6, 0x80000000
                  li x7, 0xf56d937c
                  li x8, 0x80000000
                  li x9, 0xf017e467
                  li x10, 0xff03c588
                  li x11, 0x238fafff
                  li x12, 0xfb0fbee9
                  li x13, 0xe9ea4f0e
                  li x14, 0x4
                  li x15, 0x80000000
                  li x16, 0xd
                  li x18, 0x0
                  li x19, 0xf8befe79
                  li x20, 0x23cb13e6
                  li x21, 0x80000000
                  li x23, 0xf74c92fe
                  li x24, 0xd5d5848a
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0xf8b381da
                  li x28, 0xf3035a0a
                  li x29, 0x0
                  li x30, 0xff3a4e7e
                  li x31, 0x50b26e12
                  la x17, user_stack_end
main:             sltu         tp, t2, t3
                  sll          a1, s10, t6
                  sltiu        s4, a5, -1055
                  la           gp, sub_2
                  xori         a3, s2, -1648
                  andi         tp, t0, -1847
                  addi         gp, gp, -773
                  srli         a1, s11, 31
                  bgeu         s0, a5, main_j2 #branch to jump instr
                  andi         a0, ra, 1225
                  srli         s4, t0, 3
                  sltiu        s9, a3, 252
main_j2:          jalr         t1, gp, 774 #jump main -> sub_2
                  la           t4, sub_1
                  sltiu        t1, s11, -819
                  lui          s11, 600664
                  addi         t4, t4, -765
                  sltiu        a4, a4, -617
                  srl          t6, a6, s2
                  beq          s4, zero, main_j3 #branch to jump instr
                  sub          t2, s3, s0
main_j3:          jalr         t1, t4, 765 #jump main -> sub_1
main_1:           jal          t1, 16f
0:                jal          a3, 1f
1:                jal          t1, 27f
2:                jal          t1, 20f
3:                jal          t1, 0b
4:                jal          t1, 11f
5:                jal          t1, 13f
6:                jal          ra, 10f
7:                jal          ra, 26f
8:                jal          a6, 14f
9:                jal          t1, 17f
10:               jal          ra, 23f
11:               jal          s8, 15f
12:               jal          ra, 28f
13:               jal          ra, 3b
14:               jal          ra, 7b
15:               jal          t6, 12b
16:               jal          s11, 9b
17:               jal          ra, 24f
18:               jal          ra, 5b
19:               jal          ra, 22f
20:               jal          s11, 18b
21:               jal          a6, 2b
22:               jal          sp, 8b
23:               jal          t1, 21b
24:               jal          ra, 19b
25:               jal          ra, 4b
26:               jal          ra, 6b
27:               jal          ra, 25b
28:               lui          s11, 25741
main_3:           jal          t1, 18f
0:                jal          t1, 3f
1:                jal          ra, 17f
2:                jal          ra, 9f
3:                jal          t1, 4f
4:                jal          tp, 10f
5:                jal          ra, 2b
6:                jal          t0, 20f
7:                jal          t1, 15f
8:                jal          ra, 1b
9:                jal          ra, 14f
10:               jal          ra, 5b
11:               jal          ra, 12f
12:               jal          ra, 0b
13:               jal          a1, 11b
14:               jal          s8, 7b
15:               jal          ra, 16f
16:               jal          sp, 19f
17:               jal          s0, 13b
18:               jal          ra, 8b
19:               jal          ra, 6b
20:               and          t5, s7, s11
main_4:           jal          t1, 4f
0:                jal          a1, 12f
1:                jal          ra, 11f
2:                jal          ra, 0b
3:                jal          t1, 5f
4:                jal          ra, 8f
5:                jal          t1, 2b
6:                jal          ra, 1b
7:                jal          a5, 10f
8:                jal          s4, 3b
9:                jal          t4, 6b
10:               jal          t0, 14f
11:               jal          s2, 7b
12:               jal          a2, 13f
13:               jal          t1, 9b
14:               ori          a5, zero, -365
main_2:           jal          t1, 2f
0:                jal          t1, 11f
1:                jal          ra, 5f
2:                jal          s10, 21f
3:                jal          t1, 7f
4:                jal          ra, 12f
5:                jal          s2, 20f
6:                jal          ra, 8f
7:                jal          ra, 15f
8:                jal          t1, 24f
9:                jal          ra, 14f
10:               jal          t3, 4b
11:               jal          ra, 23f
12:               jal          ra, 16f
13:               jal          ra, 17f
14:               jal          t2, 3b
15:               jal          s4, 10b
16:               jal          ra, 13b
17:               jal          ra, 1b
18:               jal          ra, 19f
19:               jal          ra, 22f
20:               jal          ra, 18b
21:               jal          a6, 0b
22:               jal          gp, 6b
23:               jal          t1, 9b
24:               xori         s10, a5, 1304
main_0:           jal          t1, 7f
0:                jal          t2, 11f
1:                jal          ra, 0b
2:                jal          ra, 6f
3:                jal          t6, 2b
4:                jal          t1, 10f
5:                jal          ra, 3b
6:                jal          ra, 12f
7:                jal          t2, 8f
8:                jal          ra, 4b
9:                jal          t1, 1b
10:               jal          ra, 9b
11:               jal          a3, 5b
12:               xori         tp, t4, -680
main_5:           jal          t1, 27f
0:                jal          ra, 10f
1:                jal          ra, 12f
2:                jal          t1, 29f
3:                jal          s10, 1b
4:                jal          s9, 24f
5:                jal          t1, 13f
6:                jal          a6, 16f
7:                jal          s2, 9f
8:                jal          a6, 3b
9:                jal          t1, 4b
10:               jal          ra, 8b
11:               jal          ra, 2b
12:               jal          t0, 7b
13:               jal          ra, 15f
14:               jal          ra, 18f
15:               jal          ra, 6b
16:               jal          s11, 20f
17:               jal          ra, 19f
18:               jal          t1, 11b
19:               jal          ra, 21f
20:               jal          ra, 22f
21:               jal          ra, 23f
22:               jal          ra, 25f
23:               jal          ra, 26f
24:               jal          ra, 14b
25:               jal          ra, 17b
26:               jal          ra, 0b
27:               jal          t1, 28f
28:               jal          ra, 5b
29:               jal          ra, 30f
30:               nop
                  beq          a2, gp, 5f
                  add          a0, s3, a3
                  sltiu        s10, a4, -26
                  bne          s1, a4, 4f
4:                bne          t0, a3, 14f
5:                slli         s11, t1, 14
                  srai         a6, t5, 14
                  slt          s10, t3, sp
                  slti         t2, a2, 995
                  xori         t1, a4, 541
                  nop
                  and          a5, t5, t0
                  bltu         tp, tp, 32f
                  nop
14:               and          t2, zero, a0
                  nop
                  or           ra, gp, a5
                  srl          s9, a7, s6
                  lui          s1, 1011637
                  sll          tp, a3, zero
                  sll          s0, t1, a5
                  sra          t2, t5, t6
                  lui          a3, 1046493
                  srl          a2, s11, t5
                  add          s11, s10, gp
                  sltiu        s9, s2, 1538
                  sll          s10, a3, t2
                  lui          t3, 139622
                  xori         gp, tp, -122
                  beq          s7, gp, 36f
                  ori          sp, t4, 757
                  slt          gp, a2, s1
32:               srl          s1, gp, tp
                  sltiu        t4, t1, -70
                  sltiu        t1, s1, 733
                  sll          tp, s11, t5
36:               srai         gp, s7, 12
                  slti         t0, t5, 1460
                  sltu         s11, t0, a0
                  nop
                  addi         s1, zero, -859
                  and          a1, t2, t1
                  ori          s0, s0, -880
                  bne          s2, s9, 58f
                  nop
                  sltu         s5, s10, zero
                  addi         s0, s1, 435
                  ori          s11, s7, -1422
                  slli         s8, s1, 23
                  bne          a7, t6, 63f
                  xori         t2, s10, 1667
                  sll          a1, s4, s0
                  slt          s5, s11, t1
                  sub          a2, tp, a0
                  srai         a1, t5, 23
                  bne          s5, s3, 61f
                  auipc        t5, 10028
                  beq          s4, a2, 73f
58:               addi         t3, gp, 1317
                  andi         t3, s4, 303
                  bgeu         t5, ra, 76f
61:               lui          a2, 651426
                  auipc        t1, 283298
63:               nop
                  srl          a1, s4, s9
                  addi         a3, a0, 306
                  slt          s8, s9, a2
                  srai         gp, a0, 15
                  blt          a1, tp, 80f
                  slti         tp, s6, 700
                  bgeu         a5, a7, 77f
                  xori         t3, t1, 596
                  sra          t6, a3, s9
73:               srai         ra, a7, 29
                  bne          s7, s0, 92f
                  xori         a5, s5, 1077
76:               slli         sp, a7, 11
77:               lui          t6, 903618
                  blt          s2, s6, 87f
                  srl          t6, a4, s0
80:               sltiu        zero, a5, 1326
                  sltu         gp, s7, s7
                  bltu         ra, a2, 98f
                  slti         a4, s1, -1764
                  add          tp, s11, s5
                  sra          a5, zero, a3
                  blt          s0, t1, 97f
87:               beq          t5, a1, 89f
                  or           s8, s3, ra
89:               slti         s4, a6, 1987
                  srl          t0, a7, a5
                  or           t3, s10, a4
92:               sub          s5, s9, s1
                  xor          s9, s3, a6
                  bgeu         s3, s6, 100f
                  blt          s9, s5, 100f
                  andi         tp, t4, -1158
97:               xor          ra, s7, s8
98:               sll          a1, a6, a0
                  sltu         tp, tp, s6
100:              sltiu        s2, t5, 29
                  xori         tp, s3, 753
                  ori          t4, a4, -925
                  slli         ra, s10, 2
                  bge          a1, s8, 123f
                  or           t3, a3, s4
                  blt          s5, s9, 120f
                  sltu         a3, s10, a0
                  nop
                  addi         gp, s3, 283
                  xori         s1, tp, -213
                  or           gp, s4, s4
                  srli         t1, s2, 15
                  bltu         s6, t0, 123f
                  or           zero, t4, s6
                  beq          s2, t6, 126f
                  sra          t2, s1, a3
                  addi         s4, a0, -477
                  sll          s4, s2, s5
                  and          zero, s9, tp
120:              ori          gp, ra, -1195
                  bltu         s8, s1, 138f
                  add          sp, tp, s9
123:              or           s0, a0, s8
                  sltu         s11, ra, t5
                  add          t4, s9, a5
126:              srl          s9, t0, t5
                  sltu         t4, sp, s4
                  srl          a3, ra, s7
                  slli         zero, a6, 18
                  ori          t3, s3, -1863
                  srai         s9, t2, 29
                  bne          t3, a0, 148f
                  sltiu        a6, s3, 66
                  srl          a3, sp, ra
                  bne          t6, a5, 150f
                  sll          a3, t1, s2
                  sll          ra, s5, s5
138:              bne          t2, gp, 153f
                  blt          a0, s10, 148f
                  and          a5, s11, s4
                  srl          a0, t6, s0
                  slti         t0, a3, -654
                  srl          s5, t4, a7
                  bgeu         tp, s2, 146f
                  sltiu        a6, t3, -272
146:              bltu         a1, zero, 152f
                  srai         ra, ra, 9
148:              bge          t4, a2, 155f
                  srli         s10, ra, 23
150:              add          s1, s7, t4
                  nop
152:              and          t1, sp, s11
153:              slt          t2, s4, s6
                  slli         a3, s11, 23
155:              auipc        a1, 149512
                  addi         s0, sp, 1513
                  andi         s5, t0, 1012
                  sub          t6, s8, tp
                  bgeu         tp, s2, 169f
                  and          a5, a1, a7
                  bltu         t1, s1, 170f
                  or           a1, zero, tp
                  srli         s4, a0, 19
                  srai         a5, t1, 2
                  nop
                  or           sp, a4, s7
                  addi         t1, t4, 1893
                  auipc        s7, 571672
169:              xori         t5, t3, -566
170:              bgeu         t4, s9, 171f
171:              add          s9, t1, s5
                  or           a6, s4, tp
                  blt          s2, s8, 189f
                  sltiu        a6, a5, 670
                  bne          sp, t0, 181f
                  and          zero, t1, gp
                  ori          s9, t2, -1288
                  bltu         a4, t4, 188f
                  xor          s8, s10, s10
                  andi         a1, a4, -577
181:              xori         a0, s3, -1277
                  sub          t2, tp, a5
                  ori          a3, s8, -788
                  sra          s7, t1, t6
                  sltiu        t1, a7, -1849
                  or           tp, zero, tp
                  sra          s10, a3, t1
188:              or           s7, a1, s7
189:              sra          gp, s2, s2
                  bge          s6, s4, 202f
                  sltiu        s5, s11, 339
                  sub          s10, s3, s4
                  bgeu         ra, a5, 209f
                  bgeu         s10, t5, 196f
                  srli         a1, t0, 29
196:              bltu         a1, s8, 201f
                  slti         s11, a4, -1241
                  andi         t0, s8, -95
                  nop
                  sltiu        s11, s6, 169
201:              slt          s11, t6, s6
202:              srl          t3, a1, s4
                  ori          a2, sp, -1479
                  bne          sp, s0, 210f
                  srai         a0, s8, 20
                  blt          ra, t6, 225f
                  ori          s7, sp, 1970
                  bgeu         t4, t6, 226f
209:              ori          s0, a0, 2017
210:              blt          a5, a1, 226f
                  sltiu        t2, s8, -352
                  bge          t1, s0, 223f
                  xori         s0, t6, 1494
                  bgeu         a2, a4, 216f
                  bge          s7, t6, 222f
216:              sltiu        t6, t6, 1876
                  addi         s8, sp, -1058
                  xor          t3, a3, s1
                  bne          s6, a7, 234f
                  ori          t1, t6, -783
                  slti         t0, s0, -1638
222:              slti         s7, s0, -543
223:              lui          sp, 848385
                  sltiu        s9, t0, 181
225:              or           t1, tp, t0
226:              or           zero, a7, s6
                  slli         s8, s4, 23
                  slli         tp, s1, 17
                  or           a0, a5, zero
                  nop
                  sltiu        tp, s9, 1115
                  andi         s2, t4, 708
                  bne          s0, s5, 249f
234:              blt          s9, t1, 245f
                  srli         s10, t2, 10
                  xor          s5, s1, a3
                  add          sp, a6, t2
                  xori         t0, s3, 257
                  xori         t3, gp, -1293
                  xor          s2, s3, s6
                  blt          s8, t2, 255f
                  beq          s6, zero, 257f
                  slt          s0, t3, s8
                  srli         a4, t4, 20
245:              xori         a1, s7, 1593
                  xor          t2, t3, s6
                  srli         t1, s6, 21
                  srai         s5, s1, 30
249:              srli         s10, t0, 14
                  andi         s4, a0, -499
                  sub          t1, a0, t5
                  nop
                  andi         s4, s7, -1796
                  sltu         t2, zero, s8
255:              bltu         s4, a0, 272f
                  sra          a2, s2, zero
257:              bge          ra, sp, 271f
                  bgeu         s8, a3, 264f
                  blt          a3, a2, 268f
                  srai         a4, t0, 3
                  and          s1, t3, t3
                  slti         t1, t5, -1686
                  sub          a5, s1, zero
264:              ori          s1, a5, -752
                  andi         t3, t6, 113
                  xor          a4, a5, s3
                  auipc        a6, 891561
268:              sub          t6, a6, zero
                  sra          gp, zero, a7
                  srai         a3, t1, 22
271:              sll          t5, a6, t6
272:              slt          gp, a5, s8
                  or           s1, sp, t4
                  auipc        s0, 540890
                  ori          a0, s1, 25
                  addi         s2, a6, 154
                  srl          a0, a7, s3
                  blt          s6, s7, 298f
                  bne          t2, ra, 284f
                  slt          s7, a7, s7
                  slli         ra, s5, 9
                  bltu         a4, s2, 297f
                  beq          s4, s6, 298f
284:              and          s10, a2, s1
                  slli         s0, s10, 6
                  slti         ra, t4, 2002
                  bne          s3, t1, 303f
                  bge          t0, s4, 304f
                  srai         t2, s8, 21
                  blt          s7, gp, 297f
                  sltu         ra, s11, s6
                  sltiu        t6, t2, 1270
                  xori         s9, s10, 1324
                  nop
                  slt          t5, a0, a0
                  bge          a7, a1, 306f
297:              sub          s7, a2, s10
298:              add          ra, gp, s5
                  auipc        t1, 488790
                  sll          t5, tp, a7
                  bltu         s10, a5, 316f
                  sltu         s1, s1, a4
303:              bne          a2, s7, 314f
                  slt          s2, s2, t1
                  la           sp, sub_1
                  sltu         t4, zero, s9
                  slli         s5, t0, 13
                  addi         sp, sp, -124
                  and          s10, ra, s4
                  add          t1, s4, s10
                  xor          zero, s6, t2
                  or           zero, t2, a7
main_j1:          jalr         t1, sp, 125 #jump main -> sub_1
304:              slt          gp, a5, sp
                  bltu         sp, sp, 321f
306:              srai         s1, a7, 0
                  slli         a5, ra, 14
                  slt          t2, a0, a7
                  xori         a6, s3, -477
                  addi         a4, a7, -52
                  add          t4, t3, s9
                  sub          s7, a2, zero
                  srli         t0, a4, 23
314:              andi         t3, s0, -501
                  slti         t1, s7, -172
316:              xor          t2, t1, a3
                  sltu         tp, s4, s0
                  sub          t2, s8, gp
                  slt          t2, s8, s1
                  srl          t3, a4, sp
321:              sub          a6, t5, tp
                  andi         a6, a6, 615
                  or           a3, s3, s10
                  bne          s7, a0, 330f
                  sub          s0, t0, s7
                  slt          sp, t1, ra
                  xori         sp, t6, 216
                  andi         a3, s3, -144
                  bgeu         a7, sp, 343f
330:              bge          s8, s2, 349f
                  ori          t1, a5, 1684
                  and          s11, a4, t0
main_6:           jal          t1, 19f
0:                jal          t1, 27f
1:                jal          a6, 4f
2:                jal          ra, 3f
3:                jal          ra, 6f
4:                jal          t1, 22f
5:                jal          gp, 1b
6:                jal          ra, 5b
7:                jal          sp, 17f
8:                jal          ra, 0b
9:                jal          ra, 29f
10:               jal          a3, 7b
11:               jal          ra, 13f
12:               jal          ra, 15f
13:               jal          ra, 26f
14:               jal          ra, 8b
15:               jal          t1, 20f
16:               jal          gp, 21f
17:               jal          tp, 28f
18:               jal          t1, 11b
19:               jal          ra, 10b
20:               jal          ra, 14b
21:               jal          ra, 24f
22:               jal          ra, 25f
23:               jal          t1, 9b
24:               jal          ra, 18b
25:               jal          ra, 16b
26:               jal          ra, 23b
27:               jal          ra, 2b
28:               jal          t1, 12b
29:               add          s10, s5, a2
                  blt          s5, a1, 348f
                  auipc        sp, 499555
                  and          tp, t2, a3
                  sub          a4, a5, s3
                  sll          t4, t4, t0
                  nop
                  lui          s7, 384009
                  bge          t0, sp, 345f
                  sub          s8, s5, t1
                  nop
343:              xor          a0, s11, s1
                  nop
345:              xori         t2, a3, 1620
                  auipc        t4, 322034
                  addi         a4, a3, 1553
348:              xori         t4, t1, -1398
349:              srl          a4, a0, t1
                  bge          t0, a6, 355f
                  ori          s4, s8, -774
                  bgeu         sp, s1, 355f
                  and          t0, t6, sp
                  and          s9, gp, a0
355:              auipc        a6, 680891
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            ori          s0, s6, -1839
                  addi         a7, a7, -52
                  slt          a4, ra, s6
                  sw           t1, 4(a7)
                  slli         s4, t5, 8
sub_4_3:          jal          t1, 10f
0:                jal          ra, 24f
1:                jal          ra, 2f
2:                jal          ra, 28f
3:                jal          s1, 23f
4:                jal          t1, 14f
5:                jal          ra, 3b
6:                jal          ra, 21f
7:                jal          t1, 11f
8:                jal          ra, 17f
9:                jal          gp, 8b
10:               jal          t1, 26f
11:               jal          ra, 5b
12:               jal          ra, 27f
13:               jal          ra, 6b
14:               jal          t0, 9b
15:               jal          a0, 20f
16:               jal          t1, 12b
17:               jal          t0, 22f
18:               jal          s7, 1b
19:               jal          ra, 4b
20:               jal          ra, 0b
21:               jal          t1, 25f
22:               jal          ra, 16b
23:               jal          s5, 13b
24:               jal          t4, 18b
25:               jal          ra, 19b
26:               jal          ra, 7b
27:               jal          s7, 15b
28:               auipc        s8, 72297
sub_4_4:          jal          t1, 1f
0:                jal          t1, 12f
1:                jal          tp, 8f
2:                jal          ra, 10f
3:                jal          sp, 27f
4:                jal          ra, 23f
5:                jal          t1, 18f
6:                jal          a6, 24f
7:                jal          s10, 16f
8:                jal          ra, 22f
9:                jal          t5, 2b
10:               jal          ra, 25f
11:               jal          ra, 20f
12:               jal          t1, 15f
13:               jal          t1, 3b
14:               jal          ra, 7b
15:               jal          ra, 5b
16:               jal          ra, 26f
17:               jal          ra, 14b
18:               jal          ra, 11b
19:               jal          ra, 13b
20:               jal          ra, 4b
21:               jal          tp, 17b
22:               jal          a0, 28f
23:               jal          t1, 21b
24:               jal          a3, 9b
25:               jal          t0, 0b
26:               jal          t0, 29f
27:               jal          tp, 6b
28:               jal          s5, 19b
29:               slt          s11, a4, s9
sub_4_5:          jal          t1, 20f
0:                jal          ra, 3f
1:                jal          s9, 23f
2:                jal          ra, 6f
3:                jal          ra, 2b
4:                jal          t1, 9f
5:                jal          tp, 21f
6:                jal          ra, 12f
7:                jal          s8, 24f
8:                jal          s8, 16f
9:                jal          ra, 15f
10:               jal          ra, 1b
11:               jal          a0, 13f
12:               jal          ra, 7b
13:               jal          ra, 19f
14:               jal          t0, 4b
15:               jal          t1, 0b
16:               jal          sp, 10b
17:               jal          ra, 22f
18:               jal          ra, 11b
19:               jal          a0, 14b
20:               jal          t1, 8b
21:               jal          t1, 18b
22:               jal          a2, 5b
23:               jal          a6, 17b
24:               nop
sub_4_2:          jal          t1, 3f
0:                jal          ra, 6f
1:                jal          ra, 8f
2:                jal          s11, 7f
3:                jal          tp, 2b
4:                jal          ra, 10f
5:                jal          t1, 1b
6:                jal          ra, 5b
7:                jal          ra, 0b
8:                jal          ra, 9f
9:                jal          ra, 4b
10:               jal          t1, 11f
11:               andi         s7, t2, -1189
sub_4_1:          jal          t1, 3f
0:                jal          s0, 8f
1:                jal          ra, 7f
2:                jal          ra, 5f
3:                jal          a0, 9f
4:                jal          ra, 2b
5:                jal          t1, 10f
6:                jal          ra, 1b
7:                jal          s1, 0b
8:                jal          tp, 11f
9:                jal          ra, 4b
10:               jal          sp, 6b
11:               nop
                  bgeu         s2, a6, 19f
                  bltu         s4, s4, 18f
                  and          s9, a6, t1
                  bltu         s6, t0, 6f
                  blt          s3, t0, 23f
                  beq          t5, tp, 25f
6:                bgeu         a1, gp, 17f
                  bne          a0, a4, 20f
                  andi         zero, t2, 297
                  sub          t4, s4, ra
                  sltu         s7, sp, zero
                  nop
                  sub          t2, t3, s11
                  bne          s6, tp, 28f
                  xori         t3, s5, 1826
                  slli         a1, t4, 14
                  bgeu         s1, s11, 22f
17:               add          s5, s3, a6
18:               bgeu         s11, tp, 36f
19:               beq          s8, s11, 28f
20:               xori         a3, s9, 1067
                  sll          t5, a4, a0
22:               xori         a1, a6, 616
23:               andi         gp, s7, 73
                  xori         t0, tp, -582
25:               srl          t5, s4, s3
                  lui          a3, 354346
                  blt          gp, s5, 43f
28:               addi         sp, s7, 1802
                  sltiu        s2, gp, -1118
                  srai         a2, t4, 26
                  xori         ra, s8, -1000
                  srl          t4, s3, s2
                  andi         s4, t1, 1317
                  andi         gp, s7, -1983
                  slt          t5, t5, s4
36:               xori         a3, s10, -361
                  add          s8, a1, s8
                  or           s11, s0, s9
                  sra          ra, s1, tp
                  xori         a5, s8, -603
                  addi         a4, a2, 993
                  sub          zero, t4, s6
43:               blt          a5, ra, 49f
                  auipc        s2, 645587
                  slli         a0, s10, 7
                  auipc        a4, 480134
                  slti         a6, a2, -968
                  add          t6, a6, zero
49:               add          gp, zero, t6
                  srli         t2, a7, 16
                  bgeu         t5, s3, 61f
                  bgeu         t3, s10, 71f
                  bne          s7, gp, 54f
54:               or           s4, t3, a6
                  slt          s5, t5, sp
                  and          t5, s3, a1
                  bne          a1, zero, 60f
                  xori         s11, s1, -646
                  bne          s8, a7, 72f
60:               xori         s8, a1, -1202
61:               beq          s3, s2, 69f
                  xori         s1, s8, -1364
                  blt          s7, s8, 71f
                  srli         sp, t2, 6
                  bgeu         s10, s0, 82f
                  xor          sp, a2, s8
                  slti         a6, t0, -908
                  xor          tp, s2, a6
69:               nop
                  srl          t2, t5, a2
71:               xori         s4, s1, 1038
72:               bge          t6, t2, 88f
                  or           tp, a6, s11
                  slti         zero, s5, -1229
                  add          s11, t0, s3
                  sltiu        a0, sp, -465
                  bge          a5, tp, 92f
                  slti         s2, tp, 72
                  lui          sp, 573294
                  add          zero, a1, a6
                  bne          t6, a4, 86f
82:               auipc        gp, 872667
                  srl          s8, t2, t4
                  or           s0, s8, t0
                  addi         t4, a2, -750
86:               srl          a5, t0, s8
                  sll          s11, t5, s11
88:               slti         t2, t0, 914
                  sltiu        s4, gp, 752
                  slti         s0, t5, 643
                  srl          t4, s3, t4
92:               sra          a2, s9, s6
                  nop
                  bge          s5, a2, 113f
                  bltu         t4, s4, 97f
                  slt          s1, s11, t1
97:               srai         s7, gp, 10
                  bgeu         a7, s7, 108f
                  ori          a0, t5, -132
                  slt          a4, s2, a5
                  bge          zero, s6, 104f
                  srai         a1, a5, 13
                  sll          t2, s7, t1
104:              blt          a2, t0, 122f
                  xori         zero, tp, -866
                  srl          t3, t2, t0
                  srai         t2, t0, 20
108:              auipc        t4, 874475
                  addi         t4, a4, 1245
                  addi         t2, t4, -941
                  slti         t2, t0, -961
                  sll          gp, zero, t3
113:              xori         t4, s5, 642
                  sltu         a0, s10, sp
                  bge          s11, t3, 127f
                  slti         zero, s4, -1537
                  sltu         a4, s2, a6
                  sltu         t6, s5, s10
                  srl          s5, ra, sp
                  sll          s0, ra, s9
                  srai         s4, a2, 4
122:              andi         s8, s5, -944
                  xor          s0, zero, s7
                  addi         ra, t4, 2046
                  andi         a5, a5, 1601
                  slti         t5, a5, 1722
127:              lui          s4, 807144
                  slti         gp, s3, 799
                  sltu         s7, a5, s11
                  slt          ra, gp, s8
                  sltu         a4, s7, s3
                  xori         s9, s2, 752
                  lui          s11, 731997
                  beq          a4, a1, 140f
                  nop
                  xori         s5, a0, 1887
                  beq          a0, a3, 148f
                  or           s2, a3, s10
                  bne          s5, s11, 144f
140:              andi         a3, t2, 415
                  bltu         s8, zero, 144f
                  addi         a4, s2, -862
                  blt          t6, s11, 161f
144:              bltu         a0, a4, 147f
                  andi         t6, a5, 1529
                  slt          a0, t1, s1
147:              xor          s1, s9, s6
148:              addi         tp, s3, -809
                  beq          s0, ra, 159f
                  sltiu        s4, t2, -900
                  beq          zero, a5, 164f
                  and          a3, t5, gp
                  srli         t4, s3, 30
                  slt          s8, s3, s4
                  xori         s5, a2, 874
                  slt          s11, s7, t5
                  xor          a0, a0, tp
                  blt          a2, a1, 174f
159:              srl          a4, t4, a6
                  srai         s9, a4, 18
161:              sra          t3, s7, sp
                  auipc        a4, 672975
                  auipc        t5, 594454
164:              slt          s10, a6, a2
                  beq          t1, a1, 177f
                  sltiu        zero, s5, 1594
                  bltu         a0, a3, 186f
                  ori          s1, t1, 1740
                  add          gp, tp, t0
                  addi         zero, a2, -1503
                  srai         s9, t5, 10
                  bge          a3, a6, 185f
                  bge          s6, t0, 190f
174:              sltu         a1, s7, t3
                  sub          s8, s7, t1
                  xor          gp, s7, tp
177:              addi         s2, zero, -1867
                  nop
                  ori          a2, s7, 813
                  bgeu         t0, t3, 195f
                  addi         t3, t4, -1423
                  slt          a2, tp, a6
                  bge          gp, a5, 199f
                  sub          s10, ra, s2
185:              srai         zero, gp, 20
186:              sra          s11, t4, s2
                  sltiu        t0, a6, 316
sub_4_0:          jal          t1, 0f
0:                jal          ra, 16f
1:                jal          ra, 10f
2:                jal          ra, 23f
3:                jal          ra, 19f
4:                jal          ra, 12f
5:                jal          ra, 25f
6:                jal          ra, 13f
7:                jal          t1, 29f
8:                jal          ra, 18f
9:                jal          t1, 22f
10:               jal          t5, 24f
11:               jal          ra, 3b
12:               jal          a2, 5b
13:               jal          a3, 28f
14:               jal          t1, 11b
15:               jal          ra, 9b
16:               jal          ra, 4b
17:               jal          s8, 20f
18:               jal          s8, 2b
19:               jal          ra, 17b
20:               jal          s1, 1b
21:               jal          s0, 6b
22:               jal          tp, 7b
23:               jal          t1, 27f
24:               jal          ra, 21b
25:               jal          a1, 26f
26:               jal          ra, 14b
27:               jal          t1, 15b
28:               jal          t3, 8b
29:               sub          s4, a4, s11
                  or           a1, t0, s3
                  sub          a3, zero, a6
190:              bgeu         s1, zero, 208f
                  slli         ra, a6, 25
                  sub          t6, a6, t4
                  or           a1, s3, gp
                  xori         a5, s2, 1337
195:              bge          t3, a0, 214f
                  slti         t5, s10, -990
                  slt          t0, a1, s0
                  srl          s8, s10, a2
199:              slt          a2, t4, a1
                  or           sp, s5, s0
                  sll          t4, t2, t1
                  bgeu         s4, s11, 212f
                  slt          a1, a3, s4
                  andi         zero, sp, -2004
                  blt          a6, a3, 222f
                  ori          s2, s4, 126
                  ori          t2, a2, 380
208:              srli         t5, s11, 2
                  sltiu        ra, a3, -499
                  slt          t4, a2, t2
                  sltu         a0, s7, s11
212:              add          t0, s11, s4
                  ori          t6, s3, -676
214:              sltiu        zero, zero, -1081
                  beq          t6, s11, 223f
                  nop
                  bgeu         t3, t3, 219f
                  sltiu        a4, s10, 1678
219:              or           s8, ra, s2
                  beq          t1, s8, 226f
                  blt          s7, t0, 240f
222:              sub          s0, gp, ra
223:              bge          gp, a5, 238f
                  slti         zero, s3, 560
                  bltu         s6, s4, 244f
226:              blt          s2, gp, 235f
                  andi         ra, s4, -1096
                  srli         s8, a0, 8
                  and          s8, s8, a7
                  srl          s5, s7, s4
                  auipc        s7, 621242
                  nop
                  xor          tp, s8, zero
                  and          a2, ra, t3
235:              ori          s8, t1, -1130
                  auipc        gp, 805605
                  beq          a0, s11, 257f
238:              andi         sp, a5, 1659
                  xori         t2, a2, -1539
240:              srli         s11, s2, 29
                  slli         a5, s10, 6
                  ori          a4, s2, -902
                  addi         s1, a5, 1817
244:              sub          s11, s1, a0
                  slti         t2, t1, 1072
                  xori         s2, s10, -1799
                  sra          s2, s4, t6
                  sll          s1, t4, s0
                  andi         t2, t0, -1952
                  xor          a4, s5, s10
                  sra          s7, t3, a3
                  sltiu        t3, a2, 1570
                  sltu         s5, gp, a4
                  add          s10, tp, tp
                  slt          t2, s3, s9
                  auipc        s7, 289675
257:              auipc        s4, 436326
                  sltu         s5, s0, s0
                  srl          t6, t0, a2
                  sub          t4, s11, s0
                  xor          t2, a4, t1
                  sll          t6, s10, a3
                  add          s8, s4, s11
                  sltu         s4, s3, a4
                  bgeu         sp, t1, 268f
                  sra          a0, s7, sp
                  bne          t3, s10, 268f
268:              xori         s1, a0, -943
                  auipc        t4, 216735
                  nop
                  bgeu         s9, a0, 279f
                  bne          t3, s2, 288f
                  slli         s4, sp, 31
                  auipc        s9, 686063
                  and          t6, a3, t0
                  sub          ra, a7, t1
                  bgeu         s1, t3, 288f
                  srl          a5, s4, a3
279:              srli         a6, a7, 14
                  srl          tp, t5, a7
                  bltu         s11, t4, 296f
                  srli         s5, s2, 14
                  and          t2, a7, sp
                  sltiu        t6, ra, 463
                  and          a1, sp, a3
                  or           a0, ra, s1
                  nop
288:              andi         t2, t1, -978
                  bge          s6, t5, 302f
                  andi         sp, a0, -1434
                  nop
                  beq          s10, s6, 305f
                  sub          s9, s3, t4
                  bne          a2, a5, 300f
                  xori         sp, t5, 1327
296:              sra          s5, a2, a6
                  sltiu        a6, s1, 1094
                  andi         t1, t6, 235
                  auipc        a4, 533051
300:              xori         sp, a4, 351
                  lui          t3, 845906
302:              bge          a6, a3, 303f
303:              sltu         ra, t2, s10
                  or           s1, tp, gp
305:              sltu         s11, t0, s0
                  lw           t1, 4(a7)
                  auipc        t5, 90823
                  sub          s8, s6, a4
                  sub          t5, s1, a5
                  addi         a7, a7, 52
                  andi         zero, a7, 69
                  sub          sp, t4, a0
462:              addi x28, x6, 0
462:              jalr x28, x28, 0
sub_5:            xor          zero, s1, a1
                  sltiu        a0, a3, 164
                  addi         a7, a7, -52
                  auipc        s0, 428363
                  sw           t1, 4(a7)
                  and          s7, gp, t4
                  lui          t5, 672550
sub_5_0:          jal          t1, 9f
0:                jal          ra, 16f
1:                jal          t1, 5f
2:                jal          tp, 14f
3:                jal          ra, 1b
4:                jal          ra, 2b
5:                jal          t1, 10f
6:                jal          ra, 8f
7:                jal          ra, 3b
8:                jal          s0, 4b
9:                jal          s11, 15f
10:               jal          s1, 18f
11:               jal          ra, 13f
12:               jal          a5, 17f
13:               jal          ra, 7b
14:               jal          t1, 11b
15:               jal          ra, 0b
16:               jal          ra, 12b
17:               jal          t3, 6b
18:               auipc        s8, 1044524
sub_5_1:          jal          t1, 8f
0:                jal          s5, 1f
1:                jal          ra, 9f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          tp, 6f
5:                jal          ra, 0b
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          ra, 3b
9:                jal          t1, 10f
10:               jal          ra, 4b
11:               jal          ra, 2b
12:               jal          ra, 11b
13:               sra          a3, t1, a2
                  slt          s1, t1, t5
                  bge          t4, ra, 21f
                  add          ra, a2, t5
                  blt          a1, tp, 9f
                  bltu         zero, a7, 23f
                  bgeu         t3, t6, 16f
                  lui          s10, 747405
                  beq          t6, a1, 23f
                  slli         a6, a3, 5
9:                sltiu        s8, t5, 1584
                  srai         s9, a7, 1
                  sltiu        s10, gp, 538
                  sra          ra, a5, s7
                  slli         a1, tp, 0
                  beq          s9, s5, 27f
                  lui          ra, 626687
16:               sltiu        s0, s5, 1516
                  sltiu        t6, s6, 1616
                  bltu         t0, s10, 34f
                  sub          t5, s8, ra
                  slt          t1, s11, s3
21:               srai         t3, s10, 30
                  addi         a2, ra, -866
23:               andi         s4, t2, -717
                  xor          a6, s11, s4
                  add          t2, a4, s1
                  sll          s9, a7, ra
27:               bge          t5, a7, 47f
                  ori          s9, s7, -495
                  lui          a5, 600688
                  sra          s2, a6, a7
                  srli         a6, s4, 27
                  addi         t1, s6, 801
                  slt          t2, s3, sp
34:               bge          a6, ra, 37f
                  sltiu        tp, a6, 606
sub_5_2:          jal          t1, 19f
0:                jal          ra, 3f
1:                jal          t1, 26f
2:                jal          t4, 9f
3:                jal          t1, 25f
4:                jal          sp, 20f
5:                jal          ra, 23f
6:                jal          tp, 21f
7:                jal          ra, 28f
8:                jal          ra, 17f
9:                jal          ra, 11f
10:               jal          a6, 6b
11:               jal          t1, 0b
12:               jal          t3, 10b
13:               jal          t1, 5b
14:               jal          ra, 15f
15:               jal          ra, 7b
16:               jal          ra, 4b
17:               jal          a3, 27f
18:               jal          sp, 2b
19:               jal          ra, 1b
20:               jal          ra, 24f
21:               jal          t1, 8b
22:               jal          ra, 12b
23:               jal          ra, 16b
24:               jal          t1, 18b
25:               jal          ra, 22b
26:               jal          a2, 13b
27:               jal          ra, 14b
28:               xor          s8, s3, t2
                  sltiu        s0, s5, 1014
37:               sltiu        a2, t4, 1479
                  addi         s5, s2, -290
                  bge          s10, a1, 43f
                  bgeu         tp, s1, 45f
                  slli         a6, s3, 22
                  bge          s9, gp, 50f
43:               and          s8, s11, t6
                  bge          sp, s7, 55f
45:               srl          a3, t2, s11
                  xori         a1, t5, -1207
47:               slti         s0, s10, -617
                  srl          t5, s9, a7
                  blt          a6, s9, 63f
50:               slti         s1, s7, 1508
                  srai         tp, a0, 16
                  sll          s1, a7, a4
                  auipc        s11, 1001396
                  blt          s2, t3, 71f
55:               andi         t5, s8, 2001
                  xori         sp, s2, 820
                  auipc        t2, 888797
                  sltiu        t3, t0, 1972
                  nop
                  addi         a0, a4, -128
                  blt          ra, t3, 68f
                  srli         tp, a2, 18
63:               blt          a1, zero, 72f
                  bltu         a6, t1, 68f
                  sll          s8, a5, gp
                  srli         t0, a3, 4
                  and          a4, s10, a3
68:               bne          s0, s1, 73f
                  blt          s6, t3, 83f
                  sub          s10, t4, s2
71:               or           a2, a6, t5
72:               slti         s11, s5, 1442
73:               auipc        s5, 802463
                  sltiu        t2, t3, -861
                  sltiu        s10, s3, 1003
                  bne          s1, a1, 88f
                  addi         a0, t2, -270
                  slt          a4, t0, s2
                  sub          a1, s7, t5
                  nop
                  andi         a0, a2, 1556
                  sra          a4, zero, s0
83:               sll          a3, s9, t2
                  sub          s1, a4, s6
                  bge          s0, tp, 90f
                  beq          tp, ra, 100f
                  bgeu         a0, a6, 106f
88:               sltiu        s8, a6, 434
                  add          t1, a0, a0
90:               beq          gp, s3, 94f
                  blt          s0, a7, 104f
                  xori         s7, s11, 692
                  sub          t5, s3, a0
94:               sll          a2, t3, zero
                  sub          sp, s6, ra
                  andi         s5, t1, -2
                  sll          t4, s10, s2
                  sltiu        s1, a5, -1021
                  andi         a6, tp, -1864
100:              srli         s8, s9, 30
                  sltu         zero, s8, a6
                  xori         s0, a4, 1007
                  or           a4, s8, s9
104:              lui          sp, 70338
                  andi         tp, gp, -320
106:              srl          t1, t5, sp
                  add          t4, s9, t5
                  srli         zero, t1, 14
                  nop
                  addi         a6, s8, 1478
                  and          s0, a6, t4
                  slt          t2, t0, a0
                  sltu         s10, sp, s2
                  slt          a3, tp, zero
                  bltu         t3, s10, 126f
                  and          gp, t1, s11
                  sltiu        a1, a5, 879
                  srl          s8, s9, s7
                  bgeu         tp, s5, 120f
120:              slt          ra, t3, t5
                  sub          t5, tp, s7
                  bltu         a2, t5, 127f
                  blt          s8, s0, 138f
                  srli         ra, tp, 7
                  slli         tp, a7, 26
126:              ori          s9, s2, -1533
127:              sltiu        s0, s2, -811
                  nop
                  bne          a6, s3, 132f
                  sub          s11, gp, a3
                  and          t6, gp, a6
132:              slti         tp, t0, -2024
                  and          s4, a4, s3
                  slt          gp, s9, t3
                  lui          s8, 859112
                  sub          zero, s4, t5
                  addi         s1, a5, -1726
138:              slt          a1, t3, s9
                  and          s10, s10, s10
                  slti         a0, s10, -1505
                  andi         t3, tp, -586
                  xor          ra, s2, s5
                  slti         a3, a2, -1114
                  sra          s4, ra, a4
                  and          t3, tp, s7
                  xori         tp, s2, 913
                  or           s11, s2, t3
                  auipc        s8, 46393
                  slti         t6, s1, -281
                  xor          zero, tp, a6
                  beq          zero, sp, 156f
                  andi         s5, s11, -348
                  srli         a6, sp, 21
                  xori         a0, zero, 936
                  xor          sp, a3, s8
156:              sltu         t1, gp, s8
                  sltiu        a1, a5, -1940
                  add          gp, t3, s2
                  and          a4, t3, a2
                  blt          s9, s6, 162f
                  bge          s2, a4, 162f
162:              auipc        s0, 49632
                  or           gp, t1, s1
                  lw           t1, 4(a7)
                  andi         a6, zero, 1028
                  slli         t5, a4, 1
                  sra          s8, s1, s1
                  xori         t3, a1, -1831
                  addi         a7, a7, 52
                  nop
                  slli         gp, t4, 15
244:              addi x2, x6, 1
244:              jalr x2, x2, 0
sub_1:            srai         s2, s10, 13
                  addi         a7, a7, -12
                  auipc        a6, 190040
                  slti         s10, a7, -727
                  lui          t0, 405618
                  sw           t1, 4(a7)
                  addi         zero, gp, -1191
                  srai         s11, gp, 16
                  add          ra, s10, s6
                  and          a3, s8, t5
                  or           s0, tp, s10
                  addi         a0, a5, -1793
                  xori         s8, s1, -1513
                  and          s11, t4, a0
                  la           gp, sub_4
                  addi         gp, gp, -70
                  ori          t5, sp, -1890
sub_1_j6:         jalr         t1, gp, 71 #jump sub_1 -> sub_4
sub_1_16:         jal          t1, 13f
0:                jal          ra, 3f
1:                jal          ra, 17f
2:                jal          t1, 10f
3:                jal          s1, 16f
4:                jal          ra, 1b
5:                jal          a5, 7f
6:                jal          ra, 9f
7:                jal          t1, 0b
8:                jal          ra, 5b
9:                jal          ra, 8b
10:               jal          ra, 14f
11:               jal          s8, 4b
12:               jal          s5, 11b
13:               jal          tp, 15f
14:               jal          a1, 6b
15:               jal          ra, 2b
16:               jal          ra, 12b
17:               slli         t5, s11, 1
sub_1_2:          jal          t1, 16f
0:                jal          a0, 8f
1:                jal          ra, 18f
2:                jal          t1, 12f
3:                jal          t1, 1b
4:                jal          ra, 19f
5:                jal          ra, 6f
6:                jal          ra, 21f
7:                jal          ra, 13f
8:                jal          t1, 4b
9:                jal          ra, 5b
10:               jal          ra, 2b
11:               jal          sp, 3b
12:               jal          ra, 9b
13:               jal          sp, 10b
14:               jal          tp, 20f
15:               jal          ra, 14b
16:               jal          t1, 22f
17:               jal          t1, 23f
18:               jal          ra, 0b
19:               jal          t1, 7b
20:               jal          t1, 11b
21:               jal          t1, 17b
22:               jal          ra, 15b
23:               sltiu        a1, t5, 86
sub_1_13:         jal          t1, 10f
0:                jal          t1, 6f
1:                jal          s9, 2f
2:                jal          ra, 3f
3:                jal          ra, 17f
4:                jal          t1, 15f
5:                jal          ra, 12f
6:                jal          s0, 16f
7:                jal          t1, 19f
8:                jal          t1, 13f
9:                jal          t1, 20f
10:               jal          ra, 7b
11:               jal          ra, 5b
12:               jal          t6, 18f
13:               jal          t1, 1b
14:               jal          t4, 0b
15:               jal          s11, 9b
16:               jal          ra, 4b
17:               jal          t1, 11b
18:               jal          ra, 14b
19:               jal          ra, 8b
20:               slli         a6, s10, 7
sub_1_24:         jal          t1, 23f
0:                jal          t3, 19f
1:                jal          ra, 10f
2:                jal          ra, 14f
3:                jal          ra, 27f
4:                jal          ra, 30f
5:                jal          t1, 25f
6:                jal          s0, 2b
7:                jal          ra, 21f
8:                jal          ra, 7b
9:                jal          ra, 24f
10:               jal          ra, 26f
11:               jal          t1, 16f
12:               jal          tp, 11b
13:               jal          t1, 6b
14:               jal          t1, 3b
15:               jal          t1, 29f
16:               jal          ra, 22f
17:               jal          ra, 5b
18:               jal          a6, 1b
19:               jal          a2, 17b
20:               jal          t0, 13b
21:               jal          ra, 15b
22:               jal          t1, 28f
23:               jal          ra, 18b
24:               jal          a6, 0b
25:               jal          gp, 20b
26:               jal          ra, 9b
27:               jal          ra, 12b
28:               jal          ra, 8b
29:               jal          ra, 4b
30:               slti         s5, s4, 392
sub_1_0:          jal          t1, 9f
0:                jal          t1, 2f
1:                jal          ra, 4f
2:                jal          t1, 10f
3:                jal          ra, 13f
4:                jal          s8, 8f
5:                jal          t1, 6f
6:                jal          t1, 0b
7:                jal          ra, 5b
8:                jal          s5, 7b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               jal          a1, 12f
12:               jal          s2, 14f
13:               jal          t1, 1b
14:               sra          s10, t0, a3
sub_1_17:         jal          t1, 10f
0:                jal          ra, 4f
1:                jal          t1, 11f
2:                jal          t1, 1b
3:                jal          a4, 0b
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          s9, 2b
7:                jal          a0, 8f
8:                jal          ra, 3b
9:                jal          ra, 7b
10:               jal          ra, 9b
11:               sub          t4, s11, gp
sub_1_4:          jal          t1, 10f
0:                jal          a5, 1f
1:                jal          ra, 21f
2:                jal          s4, 22f
3:                jal          ra, 17f
4:                jal          ra, 3b
5:                jal          ra, 16f
6:                jal          ra, 19f
7:                jal          sp, 9f
8:                jal          ra, 6b
9:                jal          ra, 5b
10:               jal          a2, 4b
11:               jal          s9, 14f
12:               jal          ra, 18f
13:               jal          ra, 7b
14:               jal          ra, 0b
15:               jal          t1, 13b
16:               jal          s8, 12b
17:               jal          a4, 2b
18:               jal          s7, 8b
19:               jal          ra, 11b
20:               jal          ra, 23f
21:               jal          ra, 20b
22:               jal          ra, 15b
23:               andi         s5, t4, -1603
sub_1_20:         jal          t1, 12f
0:                jal          t1, 22f
1:                jal          ra, 7f
2:                jal          ra, 9f
3:                jal          ra, 6f
4:                jal          ra, 1b
5:                jal          t0, 4b
6:                jal          t1, 19f
7:                jal          ra, 11f
8:                jal          t1, 18f
9:                jal          t1, 10f
10:               jal          t1, 0b
11:               jal          ra, 23f
12:               jal          ra, 15f
13:               jal          s4, 25f
14:               jal          gp, 16f
15:               jal          ra, 20f
16:               jal          ra, 8b
17:               jal          s8, 5b
18:               jal          ra, 3b
19:               jal          a6, 24f
20:               jal          t1, 17b
21:               jal          t1, 14b
22:               jal          ra, 21b
23:               jal          t0, 2b
24:               jal          t1, 13b
25:               auipc        a4, 857560
sub_1_22:         jal          t1, 2f
0:                jal          ra, 7f
1:                jal          ra, 17f
2:                jal          ra, 12f
3:                jal          a4, 19f
4:                jal          s11, 24f
5:                jal          s2, 8f
6:                jal          ra, 26f
7:                jal          a3, 9f
8:                jal          t1, 27f
9:                jal          ra, 22f
10:               jal          s4, 3b
11:               jal          tp, 25f
12:               jal          ra, 15f
13:               jal          a2, 0b
14:               jal          t1, 23f
15:               jal          ra, 10b
16:               jal          ra, 20f
17:               jal          t5, 5b
18:               jal          ra, 6b
19:               jal          t1, 11b
20:               jal          ra, 13b
21:               jal          ra, 14b
22:               jal          ra, 1b
23:               jal          ra, 16b
24:               jal          ra, 18b
25:               jal          t1, 4b
26:               jal          t6, 21b
27:               auipc        gp, 551904
sub_1_18:         jal          t1, 6f
0:                jal          t5, 20f
1:                jal          ra, 14f
2:                jal          s4, 11f
3:                jal          t1, 4f
4:                jal          t1, 13f
5:                jal          ra, 2b
6:                jal          t2, 9f
7:                jal          ra, 8f
8:                jal          ra, 5b
9:                jal          t6, 22f
10:               jal          ra, 16f
11:               jal          tp, 19f
12:               jal          ra, 21f
13:               jal          t1, 23f
14:               jal          s4, 10b
15:               jal          ra, 0b
16:               jal          t1, 17f
17:               jal          ra, 3b
18:               jal          s7, 1b
19:               jal          ra, 12b
20:               jal          ra, 7b
21:               jal          ra, 24f
22:               jal          t1, 18b
23:               jal          ra, 15b
24:               sltu         t5, sp, s4
sub_1_1:          jal          t1, 17f
0:                jal          t1, 8f
1:                jal          ra, 12f
2:                jal          sp, 0b
3:                jal          ra, 10f
4:                jal          ra, 7f
5:                jal          ra, 9f
6:                jal          a6, 5b
7:                jal          s2, 2b
8:                jal          t1, 13f
9:                jal          ra, 11f
10:               jal          ra, 1b
11:               jal          s4, 3b
12:               jal          ra, 14f
13:               jal          ra, 18f
14:               jal          ra, 4b
15:               jal          ra, 6b
16:               jal          ra, 15b
17:               jal          ra, 16b
18:               slti         s7, s7, 1643
sub_1_5:          jal          t1, 8f
0:                jal          t1, 11f
1:                jal          gp, 10f
2:                jal          ra, 13f
3:                jal          ra, 15f
4:                jal          ra, 18f
5:                jal          ra, 1b
6:                jal          ra, 19f
7:                jal          ra, 6b
8:                jal          gp, 7b
9:                jal          t1, 3b
10:               jal          ra, 4b
11:               jal          ra, 17f
12:               jal          t1, 0b
13:               jal          a5, 14f
14:               jal          t1, 9b
15:               jal          ra, 21f
16:               jal          t1, 5b
17:               jal          t1, 16b
18:               jal          ra, 22f
19:               jal          ra, 20f
20:               jal          a3, 2b
21:               jal          sp, 12b
22:               andi         s8, s4, 1195
sub_1_8:          jal          t1, 21f
0:                jal          a4, 14f
1:                jal          ra, 22f
2:                jal          t1, 13f
3:                jal          ra, 15f
4:                jal          t1, 19f
5:                jal          ra, 2b
6:                jal          t1, 3b
7:                jal          t1, 8f
8:                jal          ra, 16f
9:                jal          a4, 4b
10:               jal          ra, 0b
11:               jal          s10, 18f
12:               jal          t1, 1b
13:               jal          s5, 12b
14:               jal          s11, 5b
15:               jal          ra, 11b
16:               jal          s7, 9b
17:               jal          ra, 20f
18:               jal          ra, 7b
19:               jal          ra, 10b
20:               jal          s0, 6b
21:               jal          ra, 17b
22:               srl          s8, t4, t0
sub_1_23:         jal          t1, 5f
0:                jal          ra, 18f
1:                jal          ra, 17f
2:                jal          ra, 13f
3:                jal          t1, 0b
4:                jal          a0, 16f
5:                jal          ra, 10f
6:                jal          ra, 15f
7:                jal          a4, 12f
8:                jal          ra, 4b
9:                jal          ra, 19f
10:               jal          tp, 8b
11:               jal          ra, 1b
12:               jal          t1, 6b
13:               jal          ra, 3b
14:               jal          ra, 11b
15:               jal          t1, 2b
16:               jal          ra, 7b
17:               jal          ra, 9b
18:               jal          ra, 14b
19:               nop
sub_1_25:         jal          t1, 13f
0:                jal          sp, 18f
1:                jal          s1, 16f
2:                jal          ra, 6f
3:                jal          sp, 20f
4:                jal          s9, 9f
5:                jal          ra, 7f
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          sp, 0b
9:                jal          ra, 19f
10:               jal          ra, 11f
11:               jal          ra, 15f
12:               jal          ra, 10b
13:               jal          ra, 4b
14:               jal          t0, 3b
15:               jal          ra, 1b
16:               jal          ra, 21f
17:               jal          sp, 14b
18:               jal          t1, 12b
19:               jal          ra, 17b
20:               jal          ra, 2b
21:               sll          s5, s2, a0
sub_1_10:         jal          t1, 8f
0:                jal          s9, 9f
1:                jal          ra, 0b
2:                jal          ra, 10f
3:                jal          ra, 6f
4:                jal          ra, 11f
5:                jal          ra, 2b
6:                jal          s1, 7f
7:                jal          ra, 4b
8:                jal          a1, 1b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               slt          t2, gp, s2
sub_1_3:          jal          t1, 2f
0:                jal          ra, 1f
1:                jal          ra, 3f
2:                jal          t1, 0b
3:                jal          ra, 6f
4:                jal          sp, 9f
5:                jal          s9, 4b
6:                jal          s7, 8f
7:                jal          s2, 10f
8:                jal          ra, 7b
9:                jal          ra, 11f
10:               jal          ra, 5b
11:               jal          ra, 12f
12:               add          t3, t3, a2
sub_1_7:          jal          t1, 9f
0:                jal          ra, 7f
1:                jal          ra, 3f
2:                jal          t1, 0b
3:                jal          t1, 6f
4:                jal          gp, 12f
5:                jal          a1, 2b
6:                jal          ra, 11f
7:                jal          t1, 4b
8:                jal          ra, 10f
9:                jal          t1, 8b
10:               jal          ra, 1b
11:               jal          ra, 5b
12:               slt          a2, s4, s0
sub_1_6:          jal          t1, 6f
0:                jal          s5, 5f
1:                jal          t1, 19f
2:                jal          t1, 7f
3:                jal          ra, 11f
4:                jal          ra, 1b
5:                jal          ra, 24f
6:                jal          gp, 27f
7:                jal          t1, 23f
8:                jal          t1, 16f
9:                jal          a2, 25f
10:               jal          t1, 12f
11:               jal          ra, 9b
12:               jal          t1, 8b
13:               jal          t1, 26f
14:               jal          t1, 28f
15:               jal          tp, 0b
16:               jal          ra, 13b
17:               jal          ra, 14b
18:               jal          ra, 20f
19:               jal          ra, 10b
20:               jal          s4, 21f
21:               jal          t1, 2b
22:               jal          ra, 3b
23:               jal          t1, 4b
24:               jal          t1, 22b
25:               jal          gp, 17b
26:               jal          ra, 15b
27:               jal          ra, 18b
28:               lui          t3, 875489
sub_1_19:         jal          t1, 6f
0:                jal          ra, 9f
1:                jal          ra, 7f
2:                jal          s9, 1b
3:                jal          tp, 13f
4:                jal          t2, 3b
5:                jal          ra, 12f
6:                jal          ra, 2b
7:                jal          ra, 11f
8:                jal          t1, 0b
9:                jal          ra, 5b
10:               jal          ra, 4b
11:               jal          a6, 8b
12:               jal          ra, 10b
13:               slt          t6, s9, t1
sub_1_9:          jal          t1, 5f
0:                jal          t1, 7f
1:                jal          ra, 0b
2:                jal          ra, 9f
3:                jal          ra, 1b
4:                jal          ra, 3b
5:                jal          s1, 10f
6:                jal          ra, 11f
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          a5, 6b
10:               jal          ra, 4b
11:               jal          ra, 12f
12:               ori          tp, s3, 1794
sub_1_21:         jal          t1, 16f
0:                jal          tp, 15f
1:                jal          ra, 13f
2:                jal          ra, 3f
3:                jal          ra, 19f
4:                jal          ra, 12f
5:                jal          t1, 7f
6:                jal          t1, 2b
7:                jal          sp, 14f
8:                jal          ra, 9f
9:                jal          ra, 1b
10:               jal          ra, 18f
11:               jal          gp, 8b
12:               jal          ra, 6b
13:               jal          t1, 20f
14:               jal          ra, 11b
15:               jal          a2, 17f
16:               jal          ra, 4b
17:               jal          ra, 10b
18:               jal          t1, 5b
19:               jal          tp, 0b
20:               sltu         s2, s9, a3
                  sll          gp, a5, a2
                  sltiu        s4, a5, -1215
                  slli         s5, s7, 21
                  bgeu         s0, s3, 11f
                  sltu         s10, t6, a4
                  slt          zero, s10, a3
                  slti         s7, a7, 1627
                  nop
                  slli         t1, t4, 14
                  beq          a1, s5, 21f
                  slli         s9, s8, 31
11:               auipc        t6, 92768
                  bltu         s7, t6, 27f
                  srl          s8, t6, t1
                  slti         a0, zero, -1532
                  nop
                  addi         a5, s6, 1282
                  bltu         a6, a4, 30f
                  lui          s10, 83211
                  xori         s1, a5, 1148
                  addi         a3, t3, 677
21:               sltiu        a1, ra, 1617
                  lui          t5, 460982
                  sltu         s2, s8, s1
                  sltu         a4, s0, a1
                  slli         s2, a5, 10
                  andi         gp, s6, -143
27:               slti         a3, s3, -1257
                  srai         gp, s10, 22
                  slli         s11, a4, 6
30:               nop
                  ori          s7, t6, -1434
                  andi         t5, t1, -1790
                  srl          a4, t0, a1
                  or           s0, ra, tp
                  auipc        s4, 586816
                  bltu         s8, a6, 46f
                  auipc        a4, 743883
                  andi         s7, t2, 2003
                  bne          t0, s6, 41f
                  bltu         a4, t6, 55f
41:               lui          s9, 279988
                  lui          a0, 47792
                  auipc        s2, 458318
                  nop
                  sltiu        a6, s1, 790
46:               sll          s9, t0, t5
                  xori         a0, s2, 1051
                  add          a2, s1, t1
                  and          s1, t0, zero
                  srli         s1, s4, 6
                  bne          s9, s5, 60f
                  sltu         a3, s6, ra
                  slti         t4, s9, -607
                  addi         a6, zero, -1861
55:               sltiu        t5, s2, 293
                  slli         s8, t2, 14
                  bge          a7, s11, 61f
                  sra          s1, a7, s10
                  beq          t5, t6, 75f
60:               sltiu        s5, tp, 292
61:               sltu         gp, zero, a2
                  andi         a5, s6, 2013
                  slli         s10, a2, 28
                  bltu         a6, t3, 68f
                  or           s1, gp, t4
                  sra          t2, gp, a4
                  blt          t3, sp, 74f
68:               addi         s7, t6, 1901
                  sll          s8, a3, a1
                  or           ra, t4, s6
                  blt          a3, a3, 79f
                  auipc        s4, 453540
                  srli         t5, s5, 3
74:               xor          s1, s2, s2
75:               auipc        t0, 52990
                  ori          s1, a6, 1223
                  nop
                  slti         gp, zero, -1352
79:               sll          a5, t5, a7
                  bltu         a5, s8, 86f
                  xor          s1, zero, t4
                  beq          a1, s1, 86f
                  sra          a3, a2, t6
                  sltiu        a3, s8, -773
                  sra          a4, s7, gp
86:               lui          t0, 889642
                  xori         sp, t1, 298
                  slt          ra, s3, s6
                  nop
                  bge          s8, s5, 107f
                  nop
                  sltiu        a2, s11, 1759
                  slt          s2, t4, s10
                  srl          t1, a2, s10
                  ori          a5, a1, -945
                  lui          a0, 881812
                  xor          a4, t3, t2
                  bne          t6, a4, 110f
                  bge          s2, s6, 106f
                  bne          s4, ra, 109f
                  xori         a1, t6, -966
                  and          a0, s11, t5
                  bge          ra, a0, 107f
                  sub          a0, a2, s7
                  slt          s2, sp, zero
106:              sltiu        s0, a4, 1023
107:              bltu         t5, zero, 112f
                  nop
109:              srl          t2, t0, t4
110:              add          s2, s11, a2
                  bgeu         s0, s5, 124f
112:              slli         s7, t6, 16
                  lui          t1, 20453
                  ori          a1, t4, -200
                  srai         a5, s1, 22
                  slti         t2, a1, -229
                  srli         a0, s1, 26
                  add          s2, a6, s0
                  lui          t2, 216836
                  xori         s8, a5, 1418
                  and          s5, a6, t1
                  slt          a1, s8, a6
                  sra          zero, s10, s6
124:              bgeu         t6, s11, 136f
                  xori         ra, gp, 1384
                  beq          t5, s3, 139f
                  beq          s6, a1, 131f
                  srli         t2, a3, 28
                  or           t2, a4, s11
                  xori         a5, s10, 1253
131:              slt          a1, s9, t5
                  bgeu         gp, sp, 135f
                  srli         gp, sp, 6
                  slt          s10, a6, a3
135:              sll          a4, t1, a5
136:              sub          zero, a3, a7
                  nop
                  bgeu         t5, s5, 142f
139:              bgeu         s0, sp, 147f
                  srli         s8, t1, 28
                  srai         s11, s6, 0
142:              slti         t6, s5, 1251
                  auipc        sp, 27965
                  slli         a2, s5, 0
                  slt          s7, s0, s10
                  addi         t1, s5, 692
147:              addi         s2, t5, -954
                  xori         t3, s10, -1905
                  xor          s9, s8, s1
                  ori          s5, t1, 49
                  slt          s8, s11, a5
                  ori          gp, s3, 787
                  andi         t4, a6, -116
                  srai         t4, s7, 0
                  sltu         s8, tp, t4
                  add          a3, sp, a5
                  slli         a6, a7, 11
                  blt          a1, s1, 175f
                  xori         a4, sp, 1203
                  andi         t0, t2, 1774
                  bne          t5, a5, 162f
162:              or           a4, s3, s9
                  lui          a0, 565806
                  sra          t1, ra, a1
                  blt          a5, gp, 170f
                  beq          s10, s5, 170f
                  slli         t0, a5, 3
                  sltu         a1, a6, a6
                  xori         s4, a7, -640
170:              srli         gp, t1, 7
                  slli         t2, s10, 5
                  bne          s10, s5, 184f
                  and          gp, s4, a3
                  slti         s11, a4, -539
175:              addi         s0, s11, -1099
                  and          t6, t3, s1
                  sltu         a0, t5, s10
                  bne          a6, s9, 191f
                  slt          t0, t5, a1
                  bge          s7, ra, 182f
                  andi         tp, s3, -1405
182:              and          s10, s1, s2
                  auipc        t4, 107821
184:              xor          a1, a6, a4
                  lui          t2, 226634
                  blt          sp, zero, 195f
                  la           ra, sub_5
                  addi         ra, ra, -932
                  add          t3, tp, s11
                  and          t0, s3, s4
                  bne          t2, s10, sub_1_j4 #branch to jump instr
                  and          s2, a4, tp
                  andi         s0, s10, -850
                  srli         a0, t6, 28
                  ori          s4, s6, -656
sub_1_j4:         jalr         t1, ra, 932 #jump sub_1 -> sub_5
                  and          s1, a4, t2
                  sltu         t5, s8, gp
                  bge          a6, s6, 192f
                  bne          s8, t1, 202f
191:              slt          a1, t3, s3
192:              xor          a0, t2, a7
                  srl          t4, s10, tp
                  ori          s0, t4, -161
195:              srai         zero, s6, 11
                  bltu         a3, s6, 209f
                  slti         t5, t2, -1889
                  sltu         t6, gp, t2
                  bne          a6, gp, 207f
                  slti         s5, s9, 1635
                  andi         a2, s5, -257
202:              slt          s2, gp, s3
                  sub          s2, t0, s3
                  and          a1, t5, s6
                  bgeu         t4, a1, 209f
                  slt          t6, a0, t5
207:              srl          a2, s3, gp
                  bgeu         s8, t6, 220f
209:              slli         a4, ra, 16
                  or           a1, a5, s10
                  sra          a5, gp, a6
                  add          ra, a0, a2
                  bltu         t5, a4, 217f
                  bge          s9, t4, 231f
                  slli         s1, s9, 20
                  bgeu         a3, tp, 217f
217:              sll          s11, t4, s6
                  auipc        s11, 382258
                  srli         s8, gp, 1
220:              add          a6, t3, s2
                  and          a2, t4, gp
                  sra          t1, tp, sp
                  srli         t5, t3, 16
                  slti         sp, s10, -156
                  sltu         t0, s1, s1
                  nop
                  or           t6, t0, tp
                  bltu         a4, a4, 237f
                  auipc        s2, 851107
                  ori          gp, s8, 958
231:              blt          a7, a2, 247f
                  sra          a3, s7, t0
                  auipc        sp, 885885
                  slli         s5, a3, 29
                  add          s5, a7, s7
                  bgeu         s9, s5, 240f
237:              sltiu        t6, ra, -200
                  lui          a2, 154352
                  or           t2, s6, sp
240:              bltu         s0, a0, 250f
                  sub          s10, a7, t5
                  sltiu        s11, s4, 234
                  bgeu         s2, a4, 250f
                  addi         s9, a0, -136
                  slt          s0, a5, s11
                  xor          t2, s7, t2
247:              nop
                  slti         s9, t1, -1103
                  sra          s10, s0, a4
250:              sll          tp, t3, a4
                  and          t4, t1, sp
                  nop
                  slti         s1, s4, -344
                  sra          a5, t5, s9
                  ori          a4, t4, -1938
                  beq          zero, s1, 260f
                  srl          t0, a3, gp
                  xori         zero, s7, -811
                  andi         tp, a4, 475
260:              lui          t1, 890286
                  addi         zero, a1, 1592
                  or           a5, a1, s11
                  blt          a7, a2, 270f
                  srai         s7, t0, 21
                  add          zero, s2, s9
                  beq          a4, gp, 283f
                  and          t1, s10, t5
                  beq          a7, a2, 274f
                  slli         a5, t1, 6
270:              sll          s1, a5, tp
                  lui          s9, 545983
                  bgeu         a3, s4, 280f
                  auipc        t0, 284854
274:              sltu         tp, a4, a2
                  auipc        t3, 700208
                  sll          s10, gp, a2
                  sll          t4, a7, s1
                  sltiu        a3, t4, 962
                  slt          a0, a1, zero
280:              bne          s1, s5, 288f
                  slt          a3, s11, a6
                  bltu         a3, a6, 295f
283:              srai         t4, s8, 1
                  or           a0, tp, a2
                  and          ra, a2, s2
                  beq          tp, zero, 301f
                  slli         a6, a4, 17
288:              sra          a0, t5, t0
                  andi         t0, s3, -1716
                  sll          s1, s5, a2
                  auipc        s2, 318255
                  bltu         a1, s6, 307f
                  srli         t2, t1, 5
                  slt          a0, s3, tp
295:              bge          s4, t4, 299f
                  sra          a0, sp, s10
                  sltiu        s0, s4, 1043
                  blt          s10, s2, 305f
299:              sltiu        a2, t2, -174
                  slti         a4, s4, -446
301:              xor          a6, a6, s6
                  bge          a4, s4, 319f
                  xori         s4, t4, -504
                  sll          gp, gp, a4
305:              sll          a0, s11, s2
                  bgeu         s0, t3, 318f
307:              or           gp, s3, s11
                  slli         a4, t3, 11
                  nop
                  addi         s1, a2, -1631
                  slt          t6, a1, gp
                  beq          a5, t1, 320f
                  slli         a0, t5, 26
                  sltu         zero, t1, ra
                  srai         a4, t0, 14
                  slti         a0, s7, 878
                  bltu         s3, s7, 325f
318:              slti         gp, t4, 919
319:              nop
320:              ori          t4, t1, 1154
                  sub          s9, s4, s3
                  sub          s10, a5, a1
                  andi         s4, t4, -923
                  slt          t0, a7, s1
325:              sra          t4, a2, s2
                  addi         a3, s7, -739
                  srl          s8, t2, a0
                  andi         a4, t5, 1993
                  addi         t5, a3, 951
                  auipc        a2, 963514
                  addi         s1, t3, -1904
                  srli         a1, a0, 13
                  andi         gp, s10, 111
                  addi         sp, s2, -988
                  and          gp, t4, t5
                  add          a2, a3, s5
                  or           s7, a5, s1
                  srai         s10, a3, 2
                  sltiu        t2, s10, 1127
                  andi         s2, s10, -394
                  slti         a4, s10, 1206
                  addi         tp, a0, 158
                  bne          t0, a3, 360f
                  blt          a2, a6, 360f
                  bltu         s9, a5, 357f
                  blt          t6, a2, 350f
                  srl          gp, s6, s1
                  bge          a1, s11, 354f
                  xor          t2, t5, s8
350:              slti         s10, gp, -25
                  or           ra, t5, a7
                  srl          zero, a2, a3
                  add          t6, t1, a7
354:              and          s9, s5, a7
                  xori         t0, zero, -1746
                  xor          a5, t3, t3
357:              bgeu         s2, tp, 366f
                  bgeu         gp, s3, 368f
                  srai         a2, s3, 9
360:              sltu         a0, tp, s6
                  xori         t4, s1, -114
                  srli         t1, a5, 15
                  srli         t6, t0, 6
                  auipc        t0, 966858
                  blt          t4, s11, 373f
366:              and          a4, s8, a0
                  sra          sp, a7, t3
368:              slt          s0, t1, sp
                  slt          s8, t2, t0
                  andi         a4, s3, 730
                  nop
                  beq          t4, s11, 387f
373:              lui          sp, 847100
                  bltu         s10, a4, 376f
                  nop
376:              slli         zero, t3, 14
                  sltu         gp, t4, t4
                  srai         a6, gp, 16
                  add          s9, gp, s4
                  bltu         a7, a7, 383f
                  xori         t4, a4, 430
                  or           t0, s8, s2
383:              sll          s5, a4, a3
                  xor          ra, tp, s5
                  slli         t4, a7, 30
                  bge          a7, sp, 387f
387:              add          s7, a2, tp
                  add          s2, t1, s7
                  and          t6, t1, t3
                  ori          s7, s0, -987
                  add          gp, a4, t6
                  bgeu         s2, s10, 396f
                  srli         s10, s0, 24
                  add          a1, a0, t3
                  bne          a4, a2, 399f
396:              bgeu         t4, s8, 400f
                  sra          tp, t3, a2
                  andi         s8, a2, -1768
399:              sll          t5, s5, ra
400:              auipc        t3, 775889
                  ori          t0, s2, 691
                  bne          s8, a0, 414f
                  xori         ra, t5, -501
                  sub          s9, a4, t4
                  bne          a5, t5, 414f
                  sll          a1, t2, s7
                  xori         t5, s0, -746
                  addi         s0, t4, 1093
                  or           s2, tp, a5
                  and          t4, s0, s5
                  lui          t1, 414061
                  slti         sp, s9, 1131
                  beq          zero, s1, 426f
414:              addi         a0, ra, 980
                  slt          a3, a2, t1
                  lui          s5, 250800
                  xor          tp, gp, s4
                  slt          a3, s4, s5
                  bge          s9, t5, 426f
                  ori          a0, gp, 757
                  bne          s11, a5, 425f
                  lui          s1, 96946
                  bge          zero, a7, 436f
                  slt          a4, t6, ra
425:              bne          a1, a5, 440f
426:              sra          a6, s5, a5
                  slli         tp, s4, 6
                  sra          a0, gp, a7
                  andi         ra, t6, -1532
                  nop
                  blt          s11, a6, 444f
                  addi         s2, s0, -1364
                  sra          a5, a7, s8
                  slt          s5, t4, t2
                  sltu         a6, gp, t0
436:              srai         t2, s0, 0
                  or           s1, t5, s0
                  slti         a0, s8, 306
                  sltu         ra, zero, sp
440:              add          s8, a2, t6
                  xor          s7, tp, s4
                  srai         a1, a3, 0
                  slti         s1, t1, 358
444:              bne          a2, s5, 449f
                  sll          t1, t2, t4
                  xori         a4, s2, 725
                  slli         sp, s2, 2
                  bge          s11, s10, 452f
449:              xori         s0, s5, 1656
                  sltiu        s1, ra, 91
                  srai         a2, t4, 0
452:              slti         s9, s7, 1626
                  srl          t5, zero, a3
                  add          t2, s1, a7
                  slt          a3, a2, zero
                  srai         s10, a5, 24
                  bne          s4, t3, 474f
                  auipc        s7, 456055
                  ori          a4, s6, -1094
                  beq          t2, zero, 464f
                  xori         t6, a2, 1029
                  blt          a5, s1, 475f
                  and          s5, t1, t0
464:              andi         s1, s5, 568
                  srl          ra, gp, t6
                  sltu         t1, s7, a6
                  beq          t5, t0, 468f
468:              sub          s9, t2, t4
                  bltu         s7, t3, 473f
                  xori         s9, s5, -228
                  nop
                  slli         zero, t0, 14
473:              sltu         a6, s9, a0
474:              sltu         s10, s7, t0
475:              addi         zero, a7, 835
                  sltiu        ra, t1, 209
                  srl          a2, a7, a6
                  bne          a4, t2, 486f
                  sra          s1, a2, t6
                  andi         t4, t3, 1966
                  ori          a0, gp, 757
                  xor          s1, t1, a4
                  sltiu        s7, s2, 989
                  sll          s8, s2, t3
                  sltiu        a0, a4, -1251
486:              sll          t4, s8, s0
                  sra          t2, sp, t3
                  srai         sp, a6, 18
                  srl          ra, tp, sp
                  bgeu         t2, t2, 498f
                  sra          a0, t1, gp
                  and          t3, s10, tp
                  and          t5, a3, zero
                  andi         s7, s5, 275
                  sltu         a6, t5, ra
                  xor          s0, a0, s3
                  beq          a6, s1, 513f
498:              xori         tp, a1, 140
                  add          gp, s8, s7
                  bne          t3, s11, 507f
                  addi         a3, t6, -386
                  auipc        a0, 490532
                  andi         s7, tp, 1866
                  srl          gp, a4, s0
                  sra          s1, s2, a7
                  srai         t5, a4, 13
507:              srl          s10, a3, sp
                  slli         gp, s8, 28
                  and          t6, t1, t2
                  bne          s2, tp, 514f
                  or           s11, a6, tp
                  ori          zero, s11, 939
513:              sra          s11, s3, t3
514:              bgeu         a3, s7, 529f
                  sll          t1, a4, gp
                  bltu         s7, s2, 520f
                  bne          a3, t2, 529f
                  add          t4, t4, t4
                  ori          t0, tp, -1592
520:              slt          s1, a7, t0
                  srai         t2, gp, 24
                  beq          a3, t1, 525f
                  slti         s1, sp, 1819
                  lui          t0, 388077
525:              sll          a4, a1, sp
                  sltiu        s10, t4, 1028
                  sll          s1, t2, t4
                  srl          a3, a4, s10
529:              or           t1, ra, a2
                  bne          t6, ra, 534f
                  auipc        t6, 2809
                  slti         t5, s9, -1410
                  lui          t6, 183105
534:              or           ra, s10, t2
                  or           s5, s11, s8
                  auipc        t2, 275646
                  sub          a5, a0, s5
                  bgeu         t2, s9, 545f
                  srli         ra, s5, 26
                  auipc        t1, 799788
                  xori         a2, ra, -528
                  slli         t0, s9, 8
                  sra          s0, a0, ra
                  xori         s2, t0, 1251
545:              and          s8, ra, t1
                  beq          t3, t0, 552f
                  beq          s10, a7, 557f
                  sltu         ra, a6, s5
                  sltu         s4, a7, s0
                  blt          s1, s9, 563f
                  sub          t2, s0, s1
552:              slt          a0, t3, a4
                  xori         a6, a2, 954
                  auipc        a6, 485191
                  lui          s2, 260095
                  blt          s4, t3, 561f
557:              slli         a2, a0, 30
                  add          t4, a5, s5
                  bge          t3, a4, 561f
                  srai         t5, a2, 20
561:              xori         a4, a7, -645
                  bge          a6, t3, 571f
563:              slti         s8, t5, -79
                  xor          tp, a7, s11
                  slli         ra, t1, 21
                  srai         s9, a2, 23
                  beq          zero, s5, 576f
                  bne          t0, s11, 572f
                  beq          gp, t2, 582f
                  slt          t5, a0, s2
571:              xori         a0, s2, 1003
572:              xori         a3, s6, -417
                  bne          s10, a0, 585f
                  bge          a1, t3, 591f
                  sra          tp, a3, a4
576:              andi         t6, s11, -907
                  slli         s9, s10, 19
                  xori         a4, s1, -242
                  and          t6, ra, a4
                  or           s2, zero, t1
                  slt          s5, t1, s8
582:              bltu         s5, t3, 597f
                  and          s1, t4, ra
                  sra          s7, a5, s10
585:              xori         t2, ra, 1547
                  sra          t2, t2, a7
                  xor          s5, a7, s0
                  srai         s5, s7, 28
                  slt          s9, t0, t3
                  sltu         a4, sp, s6
591:              sltiu        t3, t1, -562
                  lui          t3, 977364
                  slli         s10, a0, 2
                  add          a6, a6, t2
                  slli         zero, s5, 6
                  xori         s8, s7, 976
597:              srl          s10, s10, s6
                  sltu         s10, s3, a1
                  srli         s5, a7, 9
                  sltiu        tp, t0, 1406
                  sltiu        t0, t0, -1609
                  lui          a6, 330963
                  bltu         a7, zero, 611f
                  slti         tp, ra, 131
                  sltu         a4, a0, t5
                  slti         zero, tp, 1839
                  bgeu         a0, a2, 619f
                  slti         gp, t6, -833
                  slt          s9, s1, a1
                  addi         s1, a3, 710
611:              srl          t5, s1, sp
                  and          tp, s5, a0
                  addi         a2, t1, -1321
                  lui          tp, 583826
                  slti         s11, s3, -1280
                  add          a2, gp, a4
                  add          a0, a4, a0
                  and          t0, s1, s7
619:              srli         s4, a6, 3
                  add          ra, zero, t6
                  sltiu        tp, s10, -111
                  sltu         zero, s7, a7
                  srai         s11, s11, 24
                  slli         t0, ra, 22
                  sltu         s8, t2, t4
                  addi         s9, s7, -598
                  bne          a0, s1, 629f
                  slt          t0, t0, t6
629:              addi         a5, t5, 1697
                  andi         a5, sp, 743
                  slli         s8, gp, 24
                  ori          sp, a3, -200
                  and          s0, t2, s9
                  bgeu         zero, s10, 638f
                  srl          s11, a0, a0
                  srai         a0, t6, 11
                  srli         t4, a7, 16
638:              slli         s10, t6, 10
                  and          s7, t0, a1
                  srl          a2, a0, t5
                  srl          t1, s5, ra
                  slti         zero, a7, 224
                  xori         s10, s11, -1136
                  sltiu        a2, a2, -257
                  srai         s2, a1, 27
                  slti         zero, t2, -353
                  bne          ra, a3, 654f
                  slti         sp, s5, -2034
                  sltiu        t4, s5, 800
                  bne          s7, a6, 658f
                  bge          tp, a2, 664f
                  blt          a3, t1, 662f
                  sltu         sp, s1, a6
654:              sltu         t0, s10, a1
                  slli         t0, s5, 5
                  sltiu        a3, s11, 515
                  bltu         a1, s0, 673f
658:              sltu         gp, s2, s2
                  beq          a6, a6, 663f
                  bgeu         s7, gp, 665f
                  sltu         a0, t3, a7
662:              slt          a0, s6, s7
663:              srai         s11, t3, 5
664:              sra          a2, a2, a5
665:              bge          s0, s0, 680f
                  xori         tp, s6, -1873
                  bgeu         s7, s11, 671f
                  srl          tp, s8, t2
                  auipc        gp, 532737
                  andi         s11, tp, 33
671:              sub          a5, ra, t6
                  bltu         t2, a3, 680f
673:              and          t1, a6, a5
                  bgeu         a3, ra, 691f
                  slti         gp, a7, 727
sub_1_26:         jal          t1, 1f
0:                jal          gp, 6f
1:                jal          t1, 7f
2:                jal          t4, 8f
3:                jal          a3, 5f
4:                jal          ra, 12f
5:                jal          ra, 11f
6:                jal          ra, 10f
7:                jal          ra, 2b
8:                jal          a5, 0b
9:                jal          t1, 3b
10:               jal          s8, 9b
11:               jal          ra, 4b
12:               srai         a5, s3, 10
                  beq          a0, a1, 688f
                  bltu         t3, t5, 686f
                  bltu         s11, t3, 691f
                  blt          t2, zero, 688f
680:              bge          s11, a6, 693f
                  xori         t4, t2, 1732
                  beq          ra, ra, 699f
                  and          gp, t2, s5
                  slt          t1, s5, t0
                  bge          sp, s6, 697f
686:              xor          gp, s2, t2
                  and          t4, ra, a6
688:              srai         s11, sp, 16
                  sll          a3, s2, ra
                  blt          a5, a3, 696f
691:              addi         tp, s7, 722
                  slli         gp, s0, 3
693:              sub          t6, tp, s9
                  andi         gp, t5, -1772
                  sltu         s7, t0, s0
696:              ori          ra, t6, 142
697:              blt          a2, a4, 704f
                  bge          t6, t1, 702f
699:              srli         tp, sp, 0
                  srli         s10, t0, 16
                  or           s2, s1, zero
702:              sub          s11, a5, s7
                  addi         t4, s7, -1857
704:              sll          tp, a0, gp
                  sub          sp, a1, t6
                  xori         t6, t4, 783
                  beq          a2, s10, 711f
                  bltu         t4, a7, 720f
                  xori         t4, gp, -371
                  bgeu         s10, a0, 714f
711:              blt          sp, s1, 726f
                  addi         s8, t4, 1712
                  or           t4, t0, zero
714:              lui          zero, 669521
                  xor          s10, s3, s4
                  sltiu        s1, ra, -1954
                  bne          s1, t6, 718f
718:              bne          s11, s3, 726f
                  bltu         s10, s6, 722f
720:              addi         a0, a3, -65
                  xor          a3, s6, zero
722:              slli         t5, t3, 20
                  beq          ra, s2, 728f
                  nop
                  slli         t6, t5, 4
726:              auipc        t3, 681192
                  blt          s3, t6, 742f
728:              or           s5, a5, t5
                  sra          s1, t4, s10
                  add          a1, s9, sp
                  bgeu         zero, t3, 744f
                  and          s7, a2, gp
                  srl          a4, s6, s1
                  sltu         s10, s11, a6
                  slti         t3, s10, 2030
                  ori          s2, s7, -695
                  sltu         s2, s3, t5
                  andi         s8, gp, 1962
                  xor          a1, t2, s0
                  sll          t1, a7, s6
                  sltiu        s8, sp, 933
742:              srai         t5, tp, 14
                  blt          tp, a7, 747f
744:              lui          sp, 342280
                  slti         t0, s11, 2004
                  xori         s2, t1, -76
747:              slli         a5, t3, 23
                  srli         a2, s4, 0
                  addi         sp, s7, -375
                  or           zero, a5, s10
                  sll          tp, a4, a5
                  sra          ra, a7, s9
                  add          a3, sp, t5
                  bne          a5, t1, 766f
                  add          a3, s5, ra
                  srai         a5, a4, 26
                  add          t0, t2, sp
                  slt          t0, s7, a3
                  ori          a6, s4, 131
                  xor          s11, s7, t2
                  or           t3, s2, t1
                  beq          s6, a5, 770f
                  slt          s11, s6, t0
                  xor          zero, s0, zero
                  sra          s5, a2, zero
766:              xor          s1, sp, s2
                  srai         gp, t3, 29
                  bne          gp, s7, 769f
769:              sra          s10, tp, ra
770:              slti         s0, t1, 1480
                  bne          gp, gp, 784f
                  bltu         s9, t5, 788f
                  sltu         s7, a5, sp
                  beq          s7, t1, 776f
                  srai         a6, s11, 6
776:              slt          t3, s3, a6
                  bgeu         s2, a1, 784f
                  srai         s0, zero, 2
                  sll          zero, a3, t6
                  andi         s10, a6, 191
                  sltiu        tp, a0, -462
                  nop
                  nop
784:              bgeu         sp, a1, 787f
                  srl          a5, s6, a0
                  bne          s6, s6, 798f
787:              slli         t3, tp, 23
788:              slti         sp, a3, -1378
                  srli         zero, s9, 14
                  slti         t5, t0, -1613
                  andi         s9, s4, 1243
                  sltiu        a1, t4, -29
                  andi         t3, s1, 1707
                  sub          t3, t6, s3
                  bltu         a3, a1, 807f
                  auipc        a1, 652395
                  bltu         t5, s8, 801f
798:              beq          s8, t1, 815f
                  sra          s7, s2, s9
                  srai         t2, a4, 13
801:              bgeu         s7, a6, 810f
                  srli         s10, s3, 17
                  slli         t2, a2, 31
                  slti         s7, a7, 62
                  bltu         t4, s2, 813f
                  and          s9, a1, a6
807:              add          sp, tp, gp
                  bgeu         s5, sp, 821f
                  andi         t0, s9, -867
810:              add          t6, tp, tp
                  add          t5, gp, s4
                  blt          s11, a2, 820f
813:              ori          s8, a7, 1499
                  xori         s0, s1, 410
815:              sltu         a3, tp, t4
                  sub          t2, sp, a3
                  bgeu         tp, s5, 821f
                  lui          t0, 164184
                  bne          s10, a6, 823f
820:              xor          s7, a2, s9
821:              slti         a6, s7, -2002
                  addi         a3, t6, -510
823:              srli         a2, t4, 26
                  srai         s4, t2, 21
                  bltu         a1, ra, 829f
                  auipc        a2, 71910
                  slt          s1, a0, s11
                  bgeu         t6, s2, 838f
829:              ori          zero, t3, -371
                  andi         a2, t1, 315
                  srli         t0, s9, 31
                  srl          t0, t5, t3
                  xor          a4, t0, s0
                  xor          s2, t2, zero
                  nop
                  bgeu         t1, s0, 843f
                  sub          t4, s3, sp
838:              blt          s7, zero, 844f
                  addi         a1, s2, -1316
                  lui          ra, 875024
                  bltu         t6, s8, 856f
                  slt          a0, t1, s1
843:              auipc        a5, 290020
844:              sltiu        sp, t2, -178
                  srli         a4, s6, 19
                  beq          s2, ra, 863f
                  andi         t6, zero, -526
                  sltu         a3, t3, s3
                  ori          s11, s7, -1792
                  sra          s8, s2, t6
                  nop
                  bne          t3, zero, 856f
                  sltiu        s2, s1, 432
                  xor          t5, a5, s2
                  addi         t0, a3, -1279
856:              ori          ra, t0, -146
                  srl          a2, s9, s4
                  slt          a6, s7, s2
                  srai         gp, a3, 23
                  andi         a1, zero, 1255
                  andi         t5, s3, -1420
                  or           a1, t6, a3
863:              bne          s4, t5, 872f
                  add          a0, t5, t6
                  bltu         t4, zero, 869f
                  sltu         a1, s2, a7
                  or           a5, s11, a0
                  bne          t5, s1, 872f
sub_1_14:         jal          t1, 3f
0:                jal          ra, 8f
1:                jal          gp, 7f
2:                jal          ra, 16f
3:                jal          ra, 15f
4:                jal          s5, 10f
5:                jal          t5, 14f
6:                jal          ra, 1b
7:                jal          ra, 12f
8:                jal          t1, 13f
9:                jal          a2, 2b
10:               jal          t1, 6b
11:               jal          ra, 4b
12:               jal          ra, 0b
13:               jal          sp, 17f
14:               jal          ra, 11b
15:               jal          t1, 9b
16:               jal          ra, 5b
17:               auipc        a4, 893297
869:              sll          t0, tp, s11
                  nop
                  or           s4, s0, s11
872:              nop
                  beq          zero, s9, 874f
874:              auipc        gp, 510066
                  bltu         a0, ra, 887f
                  blt          zero, t0, 884f
                  blt          s1, t3, 881f
                  andi         a6, t4, 1350
                  sll          a4, t6, zero
                  auipc        a1, 809365
881:              slti         s4, s1, 87
                  xor          tp, s8, s1
                  slli         ra, zero, 22
884:              sub          t5, a5, s1
                  sltu         t6, t1, s8
                  andi         ra, s7, 911
887:              xori         sp, t2, 416
                  or           a4, zero, t0
                  slt          a2, s4, t4
                  and          t5, s3, t4
                  slt          a3, s3, ra
                  slti         ra, s4, 44
                  xori         gp, a5, -1105
                  addi         s4, a4, 951
                  add          t6, zero, tp
                  srai         sp, s11, 18
                  nop
                  sra          t6, s9, ra
                  sltu         a3, s3, a0
                  bltu         tp, a6, 910f
                  ori          s2, a4, 1877
                  auipc        s9, 32513
                  slt          a5, s1, a3
                  xor          s2, s8, s9
                  sltu         s2, t5, a2
                  andi         tp, s10, 1920
                  lui          a3, 462784
                  and          t6, t5, s5
                  andi         t4, s9, -1625
910:              ori          t2, s3, 794
                  bge          tp, a2, 924f
                  ori          t1, a5, -1586
                  nop
                  sltiu        ra, t4, 1716
                  add          s7, t2, tp
                  slti         s9, a4, -150
                  lui          t2, 399534
                  beq          sp, a0, 933f
                  slt          s5, gp, s0
                  beq          t5, tp, 937f
                  sra          s8, a1, s7
                  xori         s5, s9, -124
                  bgeu         s0, s6, 939f
924:              beq          t3, a0, 931f
                  srl          t3, a0, s4
                  auipc        s8, 910068
                  add          s1, s2, s2
                  slt          a2, a0, t4
                  addi         tp, a7, -1996
                  addi         s9, s11, -604
                  ori          zero, t0, -1272
                  sra          s5, t4, s0
                  srl          a5, a2, a1
                  la           gp, sub_5
                  slt          s1, t3, s3
                  andi         s10, a6, 122
                  auipc        s9, 191679
                  addi         gp, gp, -890
                  sll          sp, a2, s9
sub_1_j5:         jalr         t1, gp, 890 #jump sub_1 -> sub_5
                  bgeu         a2, t5, 936f
                  add          s10, s1, s4
                  auipc        s11, 580003
931:              xori         sp, s1, -34
                  bge          s5, a6, 940f
933:              sub          a4, zero, s10
                  srli         t1, a0, 18
                  xor          t6, t6, s0
936:              xori         s4, t0, -174
937:              andi         t6, zero, -958
                  sub          t1, tp, ra
939:              slli         t6, s6, 24
940:              auipc        t1, 657584
                  andi         a4, t4, 117
                  srai         s11, t3, 2
                  xori         s5, ra, -740
                  sltu         t4, s1, a2
                  slli         a5, s10, 24
                  add          s10, tp, s0
                  slt          a3, a3, a5
                  srai         s9, t4, 3
                  slt          s4, s7, s9
                  or           sp, t2, a6
                  sltiu        s10, t1, 970
                  slt          a0, t0, ra
                  sltiu        a5, a4, 899
                  auipc        t6, 188407
                  bgeu         a7, t3, 961f
                  bge          ra, t2, 971f
                  sltu         t2, s2, a4
                  xor          s11, a1, s1
                  bltu         tp, tp, 963f
                  xor          s4, t4, s2
961:              beq          ra, s4, 978f
                  sltiu        zero, s3, -668
963:              auipc        s10, 254657
                  sltiu        s9, a3, 1745
                  add          a2, zero, t2
                  and          s0, t5, s10
                  lui          t0, 993013
                  or           gp, s10, s7
                  bge          a2, t2, 971f
                  sll          tp, s2, s1
971:              lui          a4, 1020861
                  sub          s0, t1, s1
                  auipc        s8, 413870
                  bne          tp, ra, 987f
                  or           t1, t5, s9
                  ori          a3, a0, -1134
                  lui          s8, 426330
978:              ori          a5, s9, -1432
                  auipc        s11, 503593
                  nop
                  slli         tp, s7, 13
                  sra          s4, s3, a3
                  srli         a4, s10, 10
                  bltu         s1, a3, 997f
                  slt          s11, t4, s11
                  bne          a7, ra, 998f
987:              srai         sp, s4, 17
                  ori          t1, s8, 1251
                  blt          s7, s3, 998f
                  bltu         t5, a5, 997f
                  sra          a4, tp, a6
                  sltu         t0, a0, s6
                  bltu         t2, a1, 1005f
                  andi         s9, s0, -833
                  auipc        a5, 518494
                  blt          s1, s3, 1005f
997:              add          s10, t3, a2
998:              auipc        gp, 321338
                  sltiu        gp, s10, -272
                  bltu         s10, a2, 1005f
                  srli         t2, a4, 31
                  sltu         t4, tp, a1
                  bne          a4, a3, 1007f
                  or           s8, ra, zero
1005:             sltu         s5, t6, s6
                  bgeu         a1, tp, 1010f
1007:             sub          ra, s1, s10
                  beq          t1, t3, 1011f
                  slt          a2, a4, t2
1010:             sltiu        gp, a2, -1856
1011:             srli         a0, t2, 8
                  xor          t3, s2, sp
                  add          s9, sp, s6
                  sra          ra, a3, a4
                  srli         gp, s1, 10
                  sub          t0, s10, s11
                  srl          s7, t4, t0
                  bltu         s9, s6, 1033f
                  bltu         t3, ra, 1024f
                  or           a3, sp, s11
                  bgeu         a6, s7, 1030f
                  add          a3, a4, s2
                  sltiu        tp, a6, -1736
1024:             or           gp, t1, s7
                  sll          t5, s8, s2
                  lui          zero, 442150
                  and          t2, a2, s5
                  nop
                  ori          tp, a7, 1435
1030:             bgeu         a7, s4, 1037f
                  slt          a2, t5, gp
                  blt          a6, a6, 1036f
sub_1_12:         jal          t1, 3f
0:                jal          ra, 7f
1:                jal          ra, 15f
2:                jal          a0, 14f
3:                jal          ra, 10f
4:                jal          sp, 6f
5:                jal          ra, 9f
6:                jal          ra, 13f
7:                jal          t4, 4b
8:                jal          t0, 0b
9:                jal          a5, 2b
10:               jal          ra, 11f
11:               jal          ra, 5b
12:               jal          t5, 1b
13:               jal          ra, 12b
14:               jal          t0, 8b
15:               and          s1, t6, sp
1033:             nop
                  srai         t4, t6, 3
                  xori         s5, a5, -1251
1036:             blt          t0, s2, 1045f
1037:             bne          s11, s8, 1038f
1038:             auipc        sp, 189369
                  xor          a5, s9, s2
                  sra          t1, s3, sp
                  xori         a3, a0, 1128
                  srli         s10, tp, 31
                  addi         t0, s8, -781
                  slti         s11, s5, -1948
1045:             add          gp, s11, t6
                  or           s8, s3, s2
                  andi         s9, t4, 1802
                  andi         s2, t5, 883
                  addi         s5, s4, -902
                  and          sp, a0, a3
                  blt          t0, s6, 1058f
                  add          a4, sp, t1
                  or           a3, s4, s5
                  bgeu         zero, s3, 1071f
                  sll          t0, s7, t5
                  slti         a1, ra, -588
                  addi         t2, t0, 727
1058:             beq          s3, s4, 1062f
                  andi         s9, a1, -155
                  xori         s7, a6, 361
                  xori         t4, s1, 382
1062:             nop
                  bne          s5, zero, 1065f
                  srai         a3, s7, 25
1065:             sub          s11, a2, zero
                  sltu         ra, a4, a7
                  nop
                  bge          a3, zero, 1076f
                  sltu         sp, a6, s7
                  srli         gp, s8, 23
1071:             andi         s11, a3, 273
                  and          a4, t5, s7
                  andi         a1, s8, -2047
                  srai         a2, a3, 12
                  sub          ra, a4, gp
1076:             beq          s11, s10, 1091f
                  lui          a1, 910029
                  add          a0, s4, t6
                  bltu         s5, ra, 1092f
                  bltu         ra, s7, 1092f
                  addi         a5, t1, -79
                  ori          t2, s4, -1949
                  sra          t0, zero, s10
                  xor          a3, s1, zero
                  sll          s10, ra, a7
                  sub          a4, tp, sp
                  sub          t4, s9, s3
                  srai         t1, s9, 14
                  xori         s2, t4, -875
                  sra          t0, s7, s10
1091:             sra          a4, s9, t4
1092:             slt          a0, a0, a6
                  sltiu        t3, s4, 594
                  bltu         zero, t5, 1106f
                  auipc        s8, 1035923
                  ori          a4, s6, -2018
                  auipc        t3, 747495
                  nop
                  bgeu         sp, s10, 1112f
                  sltiu        a0, s5, -164
                  slt          t1, s10, s1
                  slli         t2, zero, 11
                  lui          t2, 1022314
                  lui          s5, 922225
                  and          s5, s11, a7
1106:             xori         t5, s5, 1653
                  xori         t2, s4, -501
                  slli         s8, t3, 29
                  ori          tp, s11, 1455
                  sra          s4, t4, s3
                  or           s7, a2, s7
1112:             sra          a3, t0, zero
                  sltu         a0, s0, s9
                  sltu         t1, a4, zero
                  slti         s1, s10, -1734
                  addi         s11, a2, -245
                  slt          t3, s3, a4
                  srli         t0, a3, 19
                  bne          ra, t4, 1135f
                  andi         s2, a5, -183
                  lui          s9, 285777
                  blt          s6, a4, 1125f
                  xor          s8, a0, ra
                  slti         sp, a4, 128
1125:             beq          a1, t1, 1135f
                  sltiu        a5, t0, -1431
                  andi         a3, ra, -982
                  srli         s11, a1, 20
                  bltu         s9, t6, 1135f
                  beq          t2, s1, 1134f
                  sll          s1, s10, ra
                  srl          s4, s9, a3
                  slt          t5, a5, a0
1134:             ori          a4, s11, 449
1135:             sltu         s0, a1, s4
                  bgeu         a7, zero, 1148f
                  bne          t5, zero, 1141f
                  bltu         s1, t2, 1142f
                  slt          t3, a4, s0
                  bge          s6, a5, 1153f
1141:             and          s8, s2, t5
1142:             sltu         a6, a7, a6
                  and          s5, zero, s11
                  sra          a3, a1, s11
                  lui          t1, 169750
                  bltu         a6, a0, 1163f
                  srl          s1, s6, s1
1148:             nop
                  sra          a5, s0, s4
                  sltu         a1, t1, a3
                  nop
                  srli         t1, t6, 11
1153:             bgeu         a0, s7, 1161f
                  addi         s2, a2, -1314
                  xori         t3, zero, -989
                  addi         a2, a7, 1312
                  bltu         s3, s1, 1165f
                  slt          a0, s4, s3
                  and          s9, t5, zero
                  beq          a7, sp, 1164f
1161:             andi         t6, t4, -1765
                  sltiu        tp, a0, 741
1163:             slti         a2, zero, -89
1164:             add          s0, a6, t1
1165:             bne          a6, a2, 1169f
                  and          tp, s6, t4
                  xor          a2, a0, s11
                  sltu         s1, a5, ra
1169:             addi         t6, t3, 912
                  srai         s2, a1, 13
                  srai         s4, tp, 2
                  srl          a6, a7, sp
                  bltu         s2, sp, 1182f
                  xor          s4, s10, zero
                  srai         sp, a5, 2
                  lui          s0, 460355
                  or           s4, s11, t1
                  nop
                  ori          a3, zero, 1057
                  srai         a0, t1, 5
                  bltu         s0, s6, 1188f
1182:             bgeu         s11, tp, 1195f
                  add          a0, t5, a0
                  sltu         s7, a6, sp
                  nop
                  slt          s2, ra, zero
                  bgeu         a0, a0, 1204f
1188:             xor          a3, a7, s0
                  sltiu        s1, a1, -1507
                  xor          gp, a5, a4
                  andi         a0, t5, 1299
                  andi         s1, a3, -1654
                  bne          s0, s6, 1197f
                  srli         ra, a7, 11
1195:             bne          zero, t1, 1208f
                  bge          a3, s11, 1206f
1197:             nop
                  add          s10, s0, tp
                  srl          s7, s0, s10
                  slti         a2, a2, -133
                  sltu         s0, s5, t2
                  blt          s11, t2, 1210f
                  lui          s5, 521871
1204:             add          gp, a1, s0
                  bltu         a2, ra, 1213f
1206:             sltu         t2, a1, t0
                  slt          s1, s6, t4
1208:             sll          a4, s3, t2
                  bge          s10, s4, 1224f
1210:             sll          sp, s6, a5
                  blt          a0, s0, 1220f
                  bgeu         a7, s7, 1224f
1213:             lui          s7, 817728
                  auipc        t4, 157400
                  xori         s8, s5, 1034
                  bgeu         a2, tp, 1231f
                  srl          s4, s2, s10
                  bge          s2, sp, 1219f
1219:             slt          a1, s4, zero
1220:             bgeu         t2, sp, 1224f
                  xori         t4, t0, -679
                  srai         zero, s6, 19
                  auipc        zero, 430308
1224:             nop
                  srli         a4, s7, 15
                  and          s8, t5, t6
                  blt          zero, s8, 1230f
                  slli         a5, a0, 31
                  xori         t6, t4, 1166
1230:             nop
1231:             bgeu         s1, s4, 1235f
                  sltiu        t6, s7, -449
                  slti         s5, a3, 817
                  bne          s7, a6, 1240f
1235:             ori          gp, t2, -1675
sub_1_15:         jal          t1, 7f
0:                jal          ra, 16f
1:                jal          ra, 8f
2:                jal          tp, 1b
3:                jal          t1, 6f
4:                jal          ra, 15f
5:                jal          ra, 2b
6:                jal          sp, 4b
7:                jal          t1, 9f
8:                jal          t2, 0b
9:                jal          t1, 14f
10:               jal          ra, 5b
11:               jal          ra, 10b
12:               jal          t1, 11b
13:               jal          ra, 12b
14:               jal          ra, 3b
15:               jal          ra, 13b
16:               slt          t4, zero, t6
                  xor          s1, zero, t5
                  or           t1, tp, a4
                  sub          a3, s1, tp
                  bne          a6, t4, 1244f
1240:             slt          t4, t5, s4
                  blt          s9, tp, 1253f
                  srli         t4, t5, 30
                  blt          t1, a1, 1250f
1244:             xor          s0, a7, t2
                  bne          a6, ra, 1249f
                  auipc        t5, 846585
                  add          t4, t0, s0
                  bgeu         t5, zero, 1250f
1249:             sub          gp, s9, s9
1250:             lui          sp, 433654
                  add          a6, s10, s6
                  bltu         s9, s5, 1256f
1253:             beq          a5, a0, 1261f
                  blt          a7, a7, 1266f
                  sll          a5, t6, s10
1256:             nop
                  slt          t0, s6, sp
                  or           s8, s11, t6
                  srli         tp, s2, 4
                  addi         ra, a5, 697
1261:             srai         t2, a3, 22
                  srli         a0, a4, 12
                  and          tp, t4, a1
                  srli         a1, a3, 24
                  lui          t2, 965754
1266:             bne          t2, tp, 1282f
                  xor          t4, a4, s5
                  sub          a5, a1, ra
                  and          t6, ra, s10
                  xori         a5, t1, 274
                  nop
                  srli         a1, s7, 9
                  slli         s5, s11, 11
                  blt          a5, s11, 1287f
                  xori         gp, s10, 108
                  sltiu        a0, s3, -316
                  auipc        t4, 114536
                  add          a5, a0, s10
                  and          s9, s10, s2
                  slli         t5, t1, 9
                  add          a3, s9, s5
1282:             bgeu         a1, a1, 1299f
                  slt          a2, s11, t2
                  sra          t6, a5, s6
                  lui          t3, 230886
                  srli         s1, a7, 19
1287:             srai         gp, t4, 21
                  sll          s1, s8, s7
                  nop
                  slt          a0, a2, zero
                  bgeu         s5, t5, 1306f
                  add          sp, s10, t6
                  ori          a5, zero, 6
                  lui          a2, 829509
                  srli         zero, t6, 13
                  xor          t3, gp, s4
                  slti         t5, s6, -813
                  srai         s0, a6, 7
1299:             bge          t5, t1, 1315f
                  sub          s11, t6, t6
                  bne          s1, t5, 1313f
                  sll          s7, s9, s8
                  srl          t0, s10, s2
                  and          t1, a1, zero
                  slti         tp, s9, -928
1306:             sll          a2, a2, t1
                  and          a1, tp, sp
                  sub          a1, t4, sp
                  lui          a4, 1025793
                  auipc        s5, 339578
                  xori         s0, s11, -1387
                  nop
1313:             blt          t1, s4, 1317f
                  lui          a3, 225361
1315:             xor          t6, s0, a1
                  auipc        s4, 137782
1317:             and          a2, a2, a2
                  bne          t1, s2, 1322f
                  slt          s7, a5, a0
                  lui          a1, 654914
                  andi         zero, s9, -172
sub_1_11:         jal          t1, 17f
0:                jal          s9, 7f
1:                jal          ra, 2f
2:                jal          t4, 8f
3:                jal          a3, 14f
4:                jal          ra, 18f
5:                jal          t1, 10f
6:                jal          ra, 11f
7:                jal          ra, 13f
8:                jal          ra, 22f
9:                jal          ra, 15f
10:               jal          ra, 4b
11:               jal          a0, 5b
12:               jal          ra, 21f
13:               jal          a5, 20f
14:               jal          t0, 12b
15:               jal          ra, 6b
16:               jal          t5, 19f
17:               jal          ra, 9b
18:               jal          s8, 16b
19:               jal          t1, 3b
20:               jal          a4, 1b
21:               jal          ra, 0b
22:               and          t4, t2, s3
1322:             lui          a4, 993498
                  slt          s10, a4, t0
                  bgeu         a5, t2, 1328f
                  bne          s2, zero, 1327f
                  srl          t4, a3, t4
1327:             slli         gp, a2, 12
1328:             sll          s7, s1, t2
                  srl          t6, s6, sp
                  beq          t4, t6, 1337f
                  lui          s9, 995610
                  ori          t6, a5, 616
                  lui          s2, 418424
                  xori         zero, zero, -1491
                  and          s9, a2, zero
                  bgeu         tp, tp, 1349f
1337:             bge          a2, a0, 1346f
                  lui          sp, 952001
                  andi         t5, s3, -507
                  ori          s11, ra, 521
                  sra          tp, t0, s6
                  andi         tp, s8, 1307
                  blt          a3, s7, 1353f
                  auipc        s0, 308819
                  sub          zero, a2, a6
1346:             sra          s0, a4, s7
                  srl          a6, t4, a2
                  beq          s1, s0, 1356f
1349:             slt          t6, a5, s1
                  slt          ra, s1, s6
                  slt          a4, s5, t2
                  or           s9, t0, t3
1353:             srai         t0, s9, 19
                  nop
                  srli         ra, s5, 25
1356:             blt          s4, t4, 1369f
                  sltu         zero, s10, t2
                  slt          zero, a1, s6
                  xor          s9, a3, ra
                  slti         t4, a6, 1091
                  beq          a7, t3, 1364f
                  sra          t3, t1, s6
                  xori         sp, a3, 1191
1364:             srai         t2, s10, 20
                  srl          t3, a0, ra
                  auipc        a1, 210673
                  srai         tp, a1, 23
                  blt          s6, s7, 1372f
1369:             blt          t2, s7, 1378f
                  sra          zero, zero, a4
                  and          a6, sp, zero
1372:             xor          tp, a6, s0
                  bne          a0, s5, 1378f
                  and          sp, a3, s5
                  xor          a3, a3, s2
                  add          s5, zero, sp
                  or           t6, t6, t2
1378:             sra          tp, s8, t5
                  xor          sp, a4, s6
                  xori         s7, t5, -1620
                  and          s9, s2, a5
                  lw           t1, 4(a7)
                  lui          zero, 1011823
                  xor          s10, s5, s10
                  slli         s9, a4, 22
                  addi         a7, a7, 12
                  andi         a2, sp, -1438
                  slli         a3, t3, 16
                  xor          a3, zero, gp
1991:             addi x2, x6, 1
1991:             jalr x2, x2, 0
sub_2:            xor          s11, a7, a5
                  blt          t2, zero, sub_2_stack_p
sub_2_stack_p:    addi         a7, a7, -8
                  srai         a3, s8, 24
                  ori          ra, s0, -992
                  sw           t1, 4(a7)
                  srai         ra, t5, 9
sub_2_5:          jal          t1, 15f
0:                jal          ra, 5f
1:                jal          t1, 13f
2:                jal          t1, 16f
3:                jal          s9, 19f
4:                jal          ra, 26f
5:                jal          t6, 3b
6:                jal          a5, 25f
7:                jal          t1, 1b
8:                jal          ra, 29f
9:                jal          ra, 12f
10:               jal          ra, 2b
11:               jal          t1, 4b
12:               jal          tp, 22f
13:               jal          ra, 11b
14:               jal          ra, 18f
15:               jal          ra, 7b
16:               jal          ra, 23f
17:               jal          a4, 8b
18:               jal          ra, 17b
19:               jal          ra, 14b
20:               jal          s1, 10b
21:               jal          ra, 9b
22:               jal          t1, 27f
23:               jal          s1, 6b
24:               jal          ra, 21b
25:               jal          s4, 0b
26:               jal          ra, 28f
27:               jal          t1, 20b
28:               jal          ra, 24b
29:               jal          ra, 30f
30:               xori         a4, s7, 1968
sub_2_10:         jal          t1, 7f
0:                jal          t1, 8f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          ra, 19f
4:                jal          t1, 16f
5:                jal          ra, 13f
6:                jal          ra, 14f
7:                jal          s0, 9f
8:                jal          ra, 12f
9:                jal          ra, 5b
10:               jal          ra, 18f
11:               jal          t1, 10b
12:               jal          ra, 3b
13:               jal          ra, 17f
14:               jal          ra, 0b
15:               jal          t5, 2b
16:               jal          t1, 6b
17:               jal          t1, 15b
18:               jal          t1, 1b
19:               slt          sp, t0, s7
sub_2_1:          jal          t1, 11f
0:                jal          t2, 15f
1:                jal          ra, 6f
2:                jal          t6, 5f
3:                jal          t1, 16f
4:                jal          ra, 22f
5:                jal          t1, 14f
6:                jal          a6, 25f
7:                jal          ra, 26f
8:                jal          ra, 1b
9:                jal          ra, 12f
10:               jal          s2, 4b
11:               jal          a6, 24f
12:               jal          ra, 7b
13:               jal          t1, 0b
14:               jal          t1, 9b
15:               jal          t1, 8b
16:               jal          ra, 13b
17:               jal          t1, 18f
18:               jal          a1, 19f
19:               jal          ra, 21f
20:               jal          ra, 17b
21:               jal          ra, 23f
22:               jal          ra, 20b
23:               jal          t1, 2b
24:               jal          t1, 3b
25:               jal          s1, 10b
26:               slti         t5, s2, 1814
sub_2_0:          jal          t1, 1f
0:                jal          a4, 8f
1:                jal          ra, 5f
2:                jal          t1, 19f
3:                jal          ra, 9f
4:                jal          s1, 12f
5:                jal          t0, 18f
6:                jal          t1, 14f
7:                jal          ra, 16f
8:                jal          s1, 7b
9:                jal          a6, 17f
10:               jal          ra, 6b
11:               jal          t1, 20f
12:               jal          ra, 15f
13:               jal          t1, 4b
14:               jal          ra, 0b
15:               jal          ra, 11b
16:               jal          ra, 2b
17:               jal          ra, 13b
18:               jal          ra, 10b
19:               jal          a6, 3b
20:               sub          s10, t5, s7
sub_2_7:          jal          t1, 0f
0:                jal          ra, 2f
1:                jal          t0, 14f
2:                jal          s11, 6f
3:                jal          ra, 4f
4:                jal          ra, 12f
5:                jal          ra, 8f
6:                jal          ra, 11f
7:                jal          t1, 9f
8:                jal          ra, 13f
9:                jal          t2, 5b
10:               jal          s0, 7b
11:               jal          t1, 10b
12:               jal          t1, 15f
13:               jal          ra, 1b
14:               jal          s7, 3b
15:               ori          a5, a5, -337
sub_2_4:          jal          t1, 6f
0:                jal          ra, 2f
1:                jal          a6, 4f
2:                jal          ra, 10f
3:                jal          ra, 14f
4:                jal          ra, 3b
5:                jal          t6, 15f
6:                jal          ra, 12f
7:                jal          s8, 17f
8:                jal          t1, 7b
9:                jal          s1, 5b
10:               jal          ra, 16f
11:               jal          t1, 0b
12:               jal          t1, 11b
13:               jal          ra, 19f
14:               jal          gp, 8b
15:               jal          t1, 1b
16:               jal          ra, 9b
17:               jal          ra, 18f
18:               jal          t4, 13b
19:               lui          s0, 651937
sub_2_8:          jal          t1, 1f
0:                jal          tp, 14f
1:                jal          t0, 3f
2:                jal          ra, 6f
3:                jal          sp, 16f
4:                jal          ra, 9f
5:                jal          t1, 21f
6:                jal          t0, 18f
7:                jal          ra, 2b
8:                jal          ra, 12f
9:                jal          ra, 5b
10:               jal          ra, 13f
11:               jal          s5, 19f
12:               jal          t1, 0b
13:               jal          ra, 4b
14:               jal          a6, 20f
15:               jal          ra, 11b
16:               jal          t1, 7b
17:               jal          gp, 10b
18:               jal          t0, 15b
19:               jal          t1, 8b
20:               jal          t1, 17b
21:               jal          ra, 22f
22:               srai         t5, tp, 16
sub_2_11:         jal          t1, 0f
0:                jal          ra, 6f
1:                jal          s4, 14f
2:                jal          ra, 13f
3:                jal          ra, 5f
4:                jal          ra, 12f
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          t1, 4b
8:                jal          t1, 1b
9:                jal          ra, 10f
10:               jal          t1, 11f
11:               jal          t1, 2b
12:               jal          t1, 9b
13:               jal          a3, 3b
14:               sll          gp, s1, s11
sub_2_6:          jal          t1, 10f
0:                jal          ra, 14f
1:                jal          ra, 13f
2:                jal          t1, 5f
3:                jal          ra, 0b
4:                jal          t1, 2b
5:                jal          ra, 3b
6:                jal          t0, 9f
7:                jal          t0, 12f
8:                jal          a0, 7b
9:                jal          ra, 15f
10:               jal          ra, 4b
11:               jal          t1, 8b
12:               jal          ra, 1b
13:               jal          ra, 6b
14:               jal          ra, 11b
15:               addi         a2, a6, 1105
                  sltiu        a2, a0, 454
                  nop
                  nop
                  sra          s5, tp, s0
                  sltiu        t1, a4, -1271
                  sltiu        a5, s4, -1039
                  sll          s10, t3, s9
                  bgeu         tp, zero, 9f
                  nop
9:                xor          t4, a7, a0
                  srai         s8, a6, 10
                  ori          t0, t5, -70
                  slti         s10, s8, -227
                  beq          a1, s7, 31f
                  add          t5, s2, a6
                  addi         t3, gp, 1073
                  srai         s0, t1, 10
                  srl          s11, s0, t6
                  srl          t3, s0, gp
                  xor          ra, gp, s1
                  lui          s4, 138561
                  lui          t4, 17812
                  sltu         t4, s7, t3
                  bgeu         tp, sp, 34f
                  nop
                  ori          s5, ra, -740
                  srl          s4, s6, a7
                  xor          a5, t2, t5
                  sra          a4, t4, a7
                  bge          t0, t3, 46f
                  slli         a2, a7, 10
31:               add          s8, t6, s9
                  xor          tp, t0, t6
                  sll          sp, s8, s1
34:               add          a4, s8, s11
                  nop
                  slli         t5, s3, 22
                  or           s8, tp, t5
                  nop
                  nop
                  or           t3, s7, s6
                  sll          s11, s6, a4
                  sub          zero, ra, s7
                  bltu         a2, s10, 59f
                  bgeu         t6, s2, 61f
                  sltu         s7, t1, s10
46:               srai         a0, a2, 28
                  bgeu         a2, a2, 67f
                  sll          a2, a3, s1
                  sub          zero, s8, s7
                  bge          t3, a4, 70f
                  nop
                  beq          a6, ra, 67f
                  addi         s8, s1, -2024
                  sll          t2, s2, s8
                  sub          gp, a3, gp
                  ori          ra, s5, -183
                  slt          s0, t3, t4
                  lui          s10, 932964
59:               srli         s10, s2, 22
                  srli         s2, a2, 29
61:               auipc        s2, 575621
                  sub          tp, t5, sp
                  add          s2, s0, t0
sub_2_9:          jal          t1, 15f
0:                jal          t4, 2f
1:                jal          gp, 18f
2:                jal          t1, 12f
3:                jal          a1, 9f
4:                jal          s9, 10f
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          a6, 16f
8:                jal          s4, 11f
9:                jal          ra, 14f
10:               jal          ra, 5b
11:               jal          a2, 7b
12:               jal          ra, 19f
13:               jal          ra, 4b
14:               jal          ra, 6b
15:               jal          ra, 17f
16:               jal          ra, 3b
17:               jal          tp, 13b
18:               jal          ra, 8b
19:               auipc        ra, 188980
                  sra          s8, t1, s7
                  blt          s0, s10, 79f
                  lui          a6, 408759
67:               beq          t3, s5, 68f
68:               bgeu         s7, t3, 87f
                  sltiu        s10, s11, -724
70:               sltiu        zero, t6, 1855
                  sltu         ra, a5, s4
                  sll          t2, a2, t3
                  nop
                  blt          tp, t4, 86f
                  nop
                  slt          s1, s1, t0
                  auipc        zero, 103987
                  slt          s10, s0, s8
79:               xori         t4, s2, -320
                  bltu         t6, s4, 99f
                  addi         a6, s6, 1726
                  or           tp, t2, ra
sub_2_2:          jal          t1, 4f
0:                jal          t3, 11f
1:                jal          t1, 14f
2:                jal          ra, 10f
3:                jal          s8, 2b
4:                jal          t1, 13f
5:                jal          a0, 12f
6:                jal          a0, 1b
7:                jal          t3, 19f
8:                jal          s10, 0b
9:                jal          t1, 3b
10:               jal          t3, 22f
11:               jal          t1, 24f
12:               jal          t2, 21f
13:               jal          ra, 7b
14:               jal          tp, 16f
15:               jal          a1, 20f
16:               jal          ra, 5b
17:               jal          a3, 9b
18:               jal          t1, 17b
19:               jal          ra, 6b
20:               jal          s10, 8b
21:               jal          tp, 18b
22:               jal          ra, 23f
23:               jal          ra, 15b
24:               nop
                  srl          zero, s8, s9
                  addi         s10, s7, -1962
                  slti         t5, a4, 1628
86:               lui          a4, 411059
87:               addi         zero, s6, 433
                  andi         s4, s9, -2029
                  addi         tp, a5, 165
                  blt          s10, a6, 92f
                  slt          s1, a7, s6
92:               nop
                  andi         ra, a0, -618
                  bge          s8, s4, 95f
95:               auipc        s5, 622513
                  add          t4, s3, s4
                  sra          t6, s3, gp
                  sll          a0, s2, s2
99:               srli         s1, a2, 5
                  sltu         a4, tp, s7
                  bge          a1, t0, 104f
                  sltiu        t4, a1, 925
                  bgeu         t4, a4, 123f
104:              srai         a0, s2, 0
                  sltiu        s2, t5, 356
                  sra          t1, a1, s3
                  sll          a4, s7, zero
                  lui          a6, 123100
                  sub          t0, gp, s6
                  add          a1, s10, s0
                  xor          t0, a2, t6
                  auipc        a1, 673195
                  sll          s2, s9, a7
                  bne          t1, a6, 126f
                  sub          t3, s3, s8
                  add          a1, a5, s10
                  andi         s4, s7, -691
                  xori         s5, s9, 1079
                  ori          t5, s2, 1725
                  bne          sp, s11, 127f
                  bltu         t5, t6, 128f
                  auipc        s2, 531664
123:              and          a0, s8, gp
                  sltu         a1, s2, t5
                  srli         t5, a3, 19
126:              srl          ra, s3, t2
127:              srl          s7, a2, gp
128:              addi         t3, a5, 521
                  bne          t2, a7, 134f
                  and          t3, a7, s5
                  slt          t6, s10, a2
                  or           a6, s1, t1
                  blt          t3, a5, sub_2_j7 #branch to jump instr
                  auipc        sp, 718498
                  ori          a1, zero, -469
                  auipc        a1, 935995
                  and          s1, a6, t3
                  srl          a6, s2, t2
                  andi         t1, a5, -1780
                  slt          s9, t0, t0
                  sub          sp, s5, s1
sub_2_j7:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  slli         s9, t1, 11
134:              addi         t3, s8, 1471
                  bne          s3, tp, 155f
                  bltu         s10, a4, 137f
137:              andi         a6, t4, -870
                  andi         s5, s3, 543
                  bltu         s1, a5, 142f
                  srl          s9, a4, s7
                  sra          s4, s3, t2
142:              slt          s5, a2, t5
                  or           s11, s0, gp
                  slt          s0, zero, a0
                  or           s2, a2, s3
                  or           t5, t5, s5
                  sltu         s1, s8, zero
                  bltu         s7, t2, 161f
                  slt          a4, ra, t5
                  xor          s4, t1, a2
                  slti         t2, a3, 521
                  bge          a1, t1, 155f
                  addi         t1, a5, 1509
                  add          t5, a2, t1
155:              nop
                  xor          sp, a4, t0
                  blt          s7, t1, 172f
                  xor          s7, s4, s7
                  andi         s8, a0, -1746
                  add          t5, s10, a0
161:              or           tp, s8, s8
                  addi         a2, tp, 1599
                  or           a4, a1, s5
                  slli         s5, a2, 20
                  srli         s2, ra, 20
                  slt          a5, s7, s10
                  and          a2, a6, s2
                  xori         a2, a0, 315
                  bltu         t3, s9, 171f
                  beq          s0, t3, 179f
171:              sltiu        a3, t0, -301
172:              beq          a0, s6, 190f
                  sra          t3, s5, sp
                  sll          t3, s3, s5
                  sra          sp, s6, t3
                  andi         a1, s3, -492
                  xor          a5, tp, s5
                  srl          s7, t4, t1
179:              xori         t1, s10, 880
                  or           a0, t3, s8
                  bgeu         a4, s8, 193f
                  bltu         t1, t2, 199f
                  sub          a2, t5, t5
                  auipc        a0, 795298
                  sub          t2, t2, s1
                  nop
                  ori          zero, s2, -1597
                  sub          s9, a3, a0
                  blt          a5, zero, 198f
190:              beq          t1, s4, 206f
                  srai         a6, s8, 12
                  addi         t6, t1, 1263
193:              slt          t6, s5, t0
                  bltu         gp, a1, 195f
195:              srl          tp, s11, s8
                  srli         t5, s9, 21
                  sltiu        t2, s1, 1446
198:              andi         tp, sp, -1324
199:              bgeu         a7, s9, 216f
                  bne          zero, s11, 220f
                  srl          t5, s3, t5
                  srl          a4, s9, a6
                  lui          a0, 888093
                  bgeu         s6, t0, 219f
                  blt          gp, s3, 225f
206:              srl          a4, a0, s2
                  sltiu        t6, s9, 426
                  sltu         t4, t6, tp
                  srai         ra, a6, 20
                  xor          zero, s6, a4
                  srli         s0, t1, 10
                  andi         s11, s4, 1282
                  srl          a0, a2, a7
                  sub          s8, s3, a6
                  xor          a1, a1, s9
216:              slt          s1, s8, a3
                  addi         ra, s10, -611
                  sltu         tp, t3, t3
219:              srl          s11, s9, s1
220:              srl          s7, sp, zero
                  slti         s9, t1, -1191
                  auipc        a1, 746507
                  xor          t1, s0, tp
                  xori         gp, t1, -652
225:              blt          s0, a1, 227f
                  or           s5, gp, s5
227:              and          sp, ra, t6
                  srli         a3, ra, 18
                  or           zero, sp, a5
                  and          t5, zero, s0
                  srai         s5, ra, 19
                  slti         sp, a1, -954
                  xori         zero, a3, -1841
                  sltiu        s2, s10, -577
                  srai         a2, t5, 27
                  beq          a0, s4, 243f
                  andi         s4, a0, -453
                  slt          sp, a1, a7
                  srai         zero, t4, 24
                  srai         s0, s8, 30
                  beq          a0, s7, 256f
                  bne          s2, s4, 245f
243:              andi         zero, t1, 1947
                  srl          a0, a7, a3
245:              addi         s0, s2, -1423
                  and          s9, s8, zero
                  sltu         t6, s7, a5
                  bge          tp, a4, 262f
                  sltiu        t4, zero, -1258
                  srli         s7, s0, 13
                  srl          gp, a7, s1
                  bltu         a3, s6, 254f
                  blt          a1, t0, 264f
254:              auipc        tp, 393239
                  sltiu        s2, t3, -73
256:              srl          a6, a2, a5
                  blt          zero, s10, 269f
                  add          t0, a0, t5
                  or           s1, s6, s8
                  srl          s8, s6, tp
                  sub          a2, s5, a0
262:              add          a2, t4, tp
                  srl          t0, a0, t2
264:              addi         s7, a5, -1608
                  andi         s1, gp, 335
                  add          a2, s0, a6
                  sll          t3, tp, a4
                  xori         s1, t2, -1398
269:              sltu         s0, s10, s6
                  lui          s2, 922593
                  add          s11, s1, s11
                  srai         s9, t6, 15
                  slt          s4, t1, t1
                  bne          a2, s6, 275f
275:              bne          t4, t0, 276f
276:              srai         s1, t3, 30
                  or           t2, a6, a3
                  or           t4, gp, s11
                  or           a4, t4, s6
                  srli         s8, a4, 10
                  slli         t6, a7, 11
                  sra          t4, s3, s5
                  and          s4, t3, s6
                  nop
                  bge          t4, s11, 290f
                  bge          zero, a7, 288f
                  and          a3, s5, a2
288:              ori          a4, s0, -1453
                  beq          s7, s4, 308f
290:              slt          t6, s4, a5
                  sltiu        s4, s2, -60
                  nop
                  addi         a6, s7, 1069
                  nop
                  ori          a2, zero, -411
                  sltiu        tp, t2, 1827
                  bge          s10, sp, 317f
                  sll          gp, ra, a3
                  ori          a0, s9, 8
                  andi         zero, a3, -2004
                  add          sp, s10, zero
                  beq          a5, tp, 321f
                  bgeu         s2, s5, 310f
                  sub          gp, s4, s6
                  xor          gp, t4, a2
                  ori          s8, ra, -995
                  srli         a2, a5, 17
308:              srli         a4, s11, 15
                  bltu         t6, s8, 329f
310:              xor          t0, s3, t5
                  bge          a4, s0, 314f
                  sltu         s4, a3, s11
                  sra          a4, a0, s10
314:              xor          a0, s8, a6
                  lui          s8, 527190
                  slti         t2, t3, 1204
317:              sra          t5, a4, s6
                  slti         s11, a2, 823
                  slti         s4, t5, -647
                  srli         s9, s3, 30
321:              lui          tp, 568657
                  bgeu         s7, sp, 335f
                  slt          s7, t2, s2
                  bne          t1, a0, 327f
                  xor          a4, s2, a1
                  srai         gp, t4, 25
327:              srl          a6, s10, a1
                  and          a5, zero, zero
329:              xori         ra, s8, -1563
                  or           t6, a1, t3
                  bge          s6, s2, 345f
                  ori          t5, s0, -508
                  sltiu        ra, s1, 884
                  xori         a4, s3, 139
335:              or           t2, a4, tp
                  or           s0, s8, a7
                  and          zero, a5, ra
                  bne          t5, s7, 341f
                  bge          a1, s6, 340f
340:              sltu         t2, s6, a5
341:              addi         a5, s11, 374
                  add          t3, s5, s2
                  sra          sp, t6, s11
                  sltu         s4, s6, ra
345:              sra          s9, a1, sp
                  and          s5, t5, ra
                  and          s10, s2, s9
                  and          tp, s9, sp
                  sra          t0, t6, t2
                  sra          s9, sp, s1
                  srai         s8, t2, 21
                  blt          ra, a5, 368f
                  or           a3, a4, t6
                  addi         a3, a4, 1959
                  slti         s4, gp, -1384
                  srai         t1, zero, 7
                  srl          ra, t2, a1
                  bge          t0, a2, 361f
                  srl          s5, s8, ra
                  xori         t4, a0, 1673
361:              srai         tp, t5, 20
                  sltu         s5, s2, s1
                  or           t6, a5, sp
                  slti         t3, s5, -175
                  nop
                  ori          s7, a0, -152
                  lui          a6, 56293
368:              bgeu         s6, tp, 373f
                  ori          a6, s4, -113
                  srl          t6, gp, s7
                  and          s4, s6, t0
                  blt          s0, t3, 385f
373:              bne          t4, s6, 393f
                  xori         t1, t3, -1880
                  auipc        a1, 13798
                  ori          zero, s2, 1520
                  xori         t6, s9, -940
                  srai         t5, t4, 5
                  xor          s5, a2, s6
                  sltu         t3, s7, sp
                  addi         a1, t2, -795
                  sub          tp, s11, a5
                  add          s1, a1, zero
                  slli         t1, s9, 24
385:              bltu         a1, s2, 387f
                  srl          a6, ra, s0
387:              and          s7, s11, a4
                  and          t1, t1, s10
                  sltu         t3, s6, s7
                  lui          s4, 505649
                  nop
                  srli         tp, t1, 31
393:              srli         t0, t0, 29
                  add          s10, a7, t1
                  xor          t0, gp, tp
                  slt          t1, a6, a1
                  lui          s0, 644515
                  bge          s5, t5, 413f
                  slti         t0, s7, -1300
                  srl          s0, a0, sp
                  sltiu        s1, a7, -427
                  beq          t6, s9, 413f
                  srai         ra, tp, 1
                  sltiu        gp, t5, -971
                  bgeu         s11, s6, 406f
406:              blt          s4, s9, 421f
                  xori         s4, s9, 1761
                  slli         t6, a4, 15
                  sltu         t5, s5, t5
                  or           t4, t5, t1
                  slt          s5, a1, a7
                  or           s7, t5, a6
413:              ori          t6, t4, -188
                  auipc        s5, 1017386
                  addi         a4, s1, 1804
                  beq          ra, s6, 436f
                  add          s4, s2, t5
                  andi         t0, a6, -914
                  slti         tp, sp, -643
                  srl          gp, s10, gp
421:              bne          a6, tp, 439f
                  blt          s7, s9, 429f
                  slti         s9, a1, 1851
                  srl          s11, t0, s7
                  slt          t3, s4, a4
                  bgeu         s4, s1, 438f
sub_2_3:          jal          t1, 0f
0:                jal          ra, 8f
1:                jal          ra, 5f
2:                jal          ra, 10f
3:                jal          sp, 6f
4:                jal          ra, 2b
5:                jal          t0, 7f
6:                jal          t1, 9f
7:                jal          ra, 12f
8:                jal          t1, 3b
9:                jal          t1, 11f
10:               jal          a2, 1b
11:               jal          ra, 4b
12:               addi         a0, s11, -392
                  sltiu        s9, t3, 1474
                  sltiu        t4, a1, -662
429:              or           a6, zero, s9
                  and          a0, t1, gp
                  sltu         a0, a4, t0
                  beq          s6, a7, 451f
                  slli         a4, t6, 7
                  sra          ra, ra, sp
                  ori          s4, t2, 880
436:              sub          s1, s10, t5
                  bne          a3, t0, 456f
438:              bge          a7, sp, 440f
439:              sra          tp, t0, t5
440:              slt          s10, a3, a0
                  sltiu        a5, s4, 413
                  nop
                  or           a5, t2, s3
                  addi         t4, s11, -54
                  slti         zero, t3, 846
                  sltiu        s10, s7, 368
                  slli         tp, t0, 19
                  or           t4, a0, s11
                  bgeu         s1, s11, 450f
450:              or           t1, a3, tp
451:              srli         a4, s5, 22
                  and          gp, t3, s3
                  and          s7, sp, s1
                  sra          t6, s6, t4
                  andi         a6, s4, -1407
456:              srl          t4, s11, s6
                  sra          gp, s3, t0
                  lui          t3, 182028
                  sra          s5, t4, s2
                  blt          a7, tp, 469f
                  sra          gp, a5, t0
                  sll          s9, sp, s4
                  blt          t5, s6, 470f
                  beq          gp, t1, 484f
                  sra          s11, s9, s11
                  ori          tp, t0, -2007
                  bge          t3, s4, 484f
                  slt          s4, sp, s7
469:              slt          s11, s11, s5
470:              nop
                  blt          s2, s2, 491f
                  blt          t3, t0, 489f
                  auipc        ra, 644300
                  andi         t0, a6, -502
                  beq          s8, s4, 477f
                  and          s1, a4, sp
477:              slti         s2, s3, -1650
                  bltu         ra, s4, 481f
                  sll          gp, a6, s3
                  xor          s4, a7, tp
481:              add          t3, t3, t1
                  slli         s9, gp, 26
                  sll          s5, s2, a3
484:              add          t2, s8, a5
                  and          s4, a2, a3
                  bltu         t4, a1, 498f
                  andi         s8, t0, 1204
                  nop
489:              bgeu         gp, a5, 509f
                  srli         s8, t0, 9
491:              srli         t3, a5, 14
                  xori         gp, t5, -912
                  slt          zero, ra, s3
                  auipc        t2, 483643
                  sltu         t3, s4, a3
                  slt          gp, s8, s6
                  bltu         a4, zero, 499f
498:              ori          s4, s11, -431
499:              srli         s11, s4, 16
                  slti         a2, s11, -1368
                  slt          t3, a5, a0
                  srli         a5, a1, 5
                  sltiu        zero, tp, -799
                  beq          a5, t3, 505f
505:              sra          t6, gp, zero
                  or           tp, a5, zero
                  srl          s9, t1, s0
                  add          a6, gp, zero
509:              add          t2, a2, t2
                  slti         sp, a3, 656
                  addi         tp, a7, 160
                  srai         t5, sp, 22
                  blt          a4, a4, 518f
                  bgeu         s5, a3, 533f
                  srli         a5, t3, 9
                  bne          s8, t0, 519f
                  xori         tp, s0, 1583
518:              andi         s2, a7, 1709
519:              sll          t2, t3, a6
                  xori         s4, t6, -1394
                  bge          sp, s0, 523f
                  sltu         sp, zero, s5
523:              slli         a2, a0, 18
                  srli         s10, s3, 11
                  xor          gp, t4, s3
                  bltu         s4, t5, 529f
                  bltu         sp, gp, 542f
                  auipc        s2, 397286
529:              andi         s0, ra, -795
                  lui          zero, 716540
                  bge          a5, gp, 551f
                  lui          a3, 495235
533:              bge          a2, t6, 540f
                  srli         s10, s8, 12
                  slli         t4, s7, 8
                  bgeu         s6, a3, 553f
                  slti         sp, s7, 998
                  or           s4, t0, t0
                  bne          s11, a7, 556f
540:              sltiu        s0, a5, -979
                  sub          zero, s10, t0
542:              srl          s9, t0, s5
                  bgeu         sp, tp, 559f
                  bge          a4, ra, 564f
                  xori         s2, s7, -310
                  srl          ra, s4, a1
                  slt          t0, ra, t5
                  xori         a2, s0, 683
                  lui          t3, 179143
                  slti         t6, s5, -824
551:              auipc        a6, 882749
                  add          t1, sp, s11
553:              sra          s8, a4, s10
                  lui          t4, 991539
                  sra          tp, t2, s8
556:              add          tp, s11, t3
                  xor          sp, tp, s5
                  bne          a2, s0, 565f
559:              bne          a4, t5, 572f
                  srai         a5, a5, 6
                  slti         s8, gp, 1178
                  srai         t6, t2, 17
                  andi         a1, t5, 1774
564:              srai         a6, a3, 22
565:              slli         a3, a4, 23
                  slti         t3, s0, 327
                  beq          a5, s8, 569f
                  slt          t1, gp, a6
569:              sll          s2, a0, gp
                  addi         t0, a7, -1969
                  slti         a5, t0, 104
572:              nop
                  xor          zero, s2, a7
                  beq          s8, s1, 575f
575:              sub          s1, ra, t6
                  or           a4, zero, t5
                  add          s5, s7, s9
                  xor          s10, gp, zero
                  ori          a0, a6, 1369
                  slli         a2, t3, 16
                  slli         t4, t0, 4
                  sub          s0, s11, t1
                  xor          s10, s10, s8
                  srai         a0, t0, 2
                  xor          gp, s7, tp
                  sub          s5, t3, t1
                  bge          a4, s11, 601f
                  slti         t1, s3, -793
                  bne          ra, a3, 604f
                  bgeu         s6, zero, 610f
                  xor          a4, sp, s8
                  xori         s4, s5, 513
                  slli         s8, t5, 6
                  srai         s0, ra, 16
                  ori          t3, s9, -526
                  sra          s4, s9, t1
                  andi         tp, a4, 189
                  xor          s8, s9, s7
                  sub          t4, s7, ra
                  sltiu        t5, a5, 354
601:              sltu         t3, sp, s1
                  sra          t6, a7, gp
                  sltu         t1, s0, s4
604:              slti         s9, s1, -964
                  bge          s0, s3, 612f
                  beq          a5, zero, 612f
                  xor          s8, t0, t1
                  bgeu         s5, s6, 612f
                  lui          t6, 255706
610:              srl          ra, t1, gp
                  sll          a5, gp, s4
612:              nop
                  lw           t1, 4(a7)
                  and          s7, s9, s0
                  slt          a5, s11, s1
                  addi         a7, a7, 8
                  sub          tp, t5, tp
                  auipc        t4, 156989
                  sltiu        s8, t3, -2048
                  auipc        sp, 236657
897:              addi x30, x6, 1
897:              jalr x30, x30, 0
sub_3:            or           s8, t0, t1
                  sltiu        gp, a1, -1072
                  xor          a5, zero, t0
                  slli         a3, t4, 31
                  sll          a5, t6, sp
                  addi         a7, a7, -20
                  srli         a6, zero, 12
                  xori         s7, tp, -696
                  lui          s9, 203679
                  sw           t1, 4(a7)
                  auipc        t0, 214626
sub_3_1:          jal          t1, 1f
0:                jal          ra, 5f
1:                jal          ra, 7f
2:                jal          t0, 6f
3:                jal          t0, 0b
4:                jal          t6, 8f
5:                jal          ra, 11f
6:                jal          ra, 4b
7:                jal          ra, 16f
8:                jal          ra, 15f
9:                jal          t5, 10f
10:               jal          ra, 14f
11:               jal          t1, 12f
12:               jal          tp, 9b
13:               jal          ra, 2b
14:               jal          ra, 17f
15:               jal          ra, 3b
16:               jal          a0, 13b
17:               srli         s11, s0, 20
sub_3_2:          jal          t1, 1f
0:                jal          ra, 10f
1:                jal          tp, 5f
2:                jal          ra, 9f
3:                jal          t1, 19f
4:                jal          s4, 7f
5:                jal          tp, 18f
6:                jal          t1, 13f
7:                jal          t1, 3b
8:                jal          gp, 15f
9:                jal          t1, 17f
10:               jal          ra, 8b
11:               jal          t1, 14f
12:               jal          t1, 11b
13:               jal          t1, 2b
14:               jal          t1, 4b
15:               jal          ra, 16f
16:               jal          a2, 12b
17:               jal          t0, 0b
18:               jal          s8, 6b
19:               or           s4, tp, t1
                  beq          s6, zero, 10f
                  slti         s8, s2, 1812
                  slt          t2, a1, s7
                  sra          a0, s9, sp
                  bgeu         t5, s9, 24f
                  sltiu        t3, s5, 1380
                  sra          sp, s8, a3
                  nop
                  sub          a2, s4, s0
                  sll          a3, s6, a5
10:               sltu         s5, s9, s1
                  add          a4, s8, t2
                  blt          a3, s1, 14f
                  andi         t3, s7, -820
14:               auipc        t5, 952437
                  xori         s11, a2, 1327
                  sra          s7, a2, s11
                  addi         s8, a2, -1817
                  add          s5, gp, s10
                  sll          a6, t6, gp
                  sll          a1, t6, tp
                  ori          t1, a7, -1208
                  sll          sp, s0, zero
                  ori          a0, a0, -823
24:               srai         t0, t5, 18
                  ori          zero, t3, -1432
                  xori         t1, s4, -1965
                  nop
                  slli         a0, gp, 26
                  srli         a2, t3, 2
                  bgeu         t1, t2, 34f
                  srai         s1, t6, 23
                  bge          t3, s9, 39f
                  srli         t2, s9, 30
34:               beq          s11, s10, 51f
                  srl          s2, a1, gp
                  or           t2, gp, a0
                  nop
                  addi         s11, a3, 1888
39:               sub          gp, t5, a3
                  slli         t4, t3, 14
                  sltu         s10, ra, a4
                  sra          t2, a0, a4
                  auipc        a6, 338006
                  or           t6, s1, s7
                  xori         gp, s4, 931
                  auipc        a0, 776606
                  sltiu        sp, a7, 1390
                  srl          a1, a7, a5
                  bltu         a0, t3, 59f
                  or           s1, s9, s4
51:               srl          s4, a5, t1
                  nop
                  bgeu         a0, a0, 58f
                  bgeu         t3, t0, 68f
                  srai         a3, a4, 23
                  blt          s9, t0, 57f
57:               add          a2, a3, s5
58:               bge          s6, t1, 59f
59:               addi         s8, s0, -1599
                  andi         s7, s3, 35
                  slli         t3, s6, 9
                  xor          s11, s6, t5
                  sltu         ra, s5, s11
                  sltu         s8, a2, a7
                  andi         t3, a1, 841
                  srl          a4, a2, tp
                  sub          s10, s3, s1
68:               bltu         gp, a0, 81f
                  and          s11, a0, s2
                  slli         s11, a1, 30
                  and          s9, tp, gp
                  slli         a5, a3, 8
                  and          s2, t2, a4
                  lui          t6, 361239
                  addi         a0, zero, 1138
                  sltu         a4, s6, t2
                  lui          s9, 889964
                  bne          s0, s10, 92f
                  srli         zero, ra, 24
                  sltu         a2, t6, a4
81:               nop
                  sltu         t0, s10, s10
                  lui          a6, 864120
                  sra          a6, s4, a3
                  lui          s4, 791602
                  srai         s4, ra, 21
                  slli         s10, tp, 5
                  sra          t1, a4, a0
                  sra          s7, a1, a4
                  nop
                  bge          gp, t2, 106f
92:               or           s4, t6, t3
                  add          s10, s9, s3
                  beq          zero, s8, 97f
                  blt          a4, a6, 96f
96:               xori         gp, s0, 1201
97:               sub          a4, tp, s0
                  srl          s4, s10, t1
                  sll          s8, sp, s0
                  sltiu        tp, a2, -1989
                  bge          a3, a4, 120f
                  blt          s10, s3, 106f
                  addi         t2, s8, -401
                  sltiu        ra, sp, 1623
                  sltiu        t6, t6, 894
106:              beq          gp, t6, 116f
                  nop
                  slli         zero, a4, 2
                  blt          s11, a1, 121f
                  lui          tp, 170262
                  bgeu         t4, s0, 122f
                  sltu         a3, s3, s2
                  blt          a4, s5, 116f
                  beq          a1, s10, 122f
                  sltiu        s7, s7, -129
116:              slt          tp, a0, a6
                  xori         t6, s5, 1348
                  or           sp, gp, s11
                  bgeu         s4, s7, 138f
120:              xori         t5, s11, 925
121:              srai         t6, t5, 13
122:              blt          t5, s7, 142f
                  bgeu         a6, s11, 125f
                  add          s9, s2, a4
125:              andi         tp, s0, -2002
                  andi         gp, gp, 810
                  slti         t6, t5, -957
                  sltiu        tp, s1, -988
                  slti         a4, s6, -1845
                  lui          ra, 1006826
                  bne          t6, a1, 138f
                  sltiu        gp, t3, 1761
                  beq          s10, s8, 138f
                  slti         zero, gp, -1526
                  ori          a6, sp, -170
                  bge          s8, s7, 155f
                  srai         t1, sp, 23
138:              sra          a0, a2, t2
                  xori         ra, a7, -1790
                  bgeu         zero, s11, 159f
                  nop
142:              nop
                  sra          s8, a4, s1
                  lui          s1, 619122
                  ori          sp, t1, -1511
                  bne          s9, sp, 153f
                  bgeu         a2, sp, 157f
                  nop
                  slti         a0, t6, 1304
                  or           s5, t4, t1
                  srai         s5, t4, 31
                  slt          t5, t2, s8
153:              srai         s10, s3, 3
sub_3_0:          jal          t1, 2f
0:                jal          a1, 6f
1:                jal          s5, 29f
2:                jal          tp, 14f
3:                jal          a4, 16f
4:                jal          t2, 23f
5:                jal          ra, 26f
6:                jal          t2, 5b
7:                jal          t1, 20f
8:                jal          t1, 18f
9:                jal          ra, 10f
10:               jal          s9, 0b
11:               jal          t0, 4b
12:               jal          ra, 15f
13:               jal          ra, 22f
14:               jal          ra, 9b
15:               jal          t1, 21f
16:               jal          ra, 30f
17:               jal          t1, 7b
18:               jal          t3, 11b
19:               jal          ra, 3b
20:               jal          ra, 8b
21:               jal          a2, 13b
22:               jal          ra, 28f
23:               jal          t1, 1b
24:               jal          t3, 25f
25:               jal          a0, 12b
26:               jal          ra, 17b
27:               jal          sp, 24b
28:               jal          ra, 19b
29:               jal          s8, 27b
30:               sub          t1, t4, s4
                  bltu         a4, s3, 159f
155:              bne          sp, s6, 157f
                  lui          s10, 685399
157:              sub          t1, s0, a6
                  srl          t3, s2, a0
159:              xori         s4, s7, -1767
                  beq          zero, s1, 164f
                  slti         a5, t6, 1770
                  nop
                  auipc        a2, 393678
164:              slt          s9, a0, s2
                  sra          a0, a2, s3
                  sll          t2, a0, gp
                  xori         s7, sp, 1137
                  bge          tp, zero, 169f
169:              beq          sp, t0, 178f
                  bltu         s2, s3, 178f
                  nop
                  sltu         t6, ra, t5
                  srli         tp, zero, 13
                  bge          sp, a7, 178f
                  ori          tp, s4, 521
                  auipc        t5, 416078
                  bne          s0, s11, 178f
178:              slti         t5, s5, -461
                  srli         gp, a3, 27
                  xor          t3, s7, a0
                  lw           t1, 4(a7)
                  addi         a7, a7, 20
                  and          a0, sp, a4
                  srl          s7, s8, a4
                  xor          t3, a7, t2
                  sltiu        s2, t0, -1911
                  xor          s4, a7, t4
                  sra          s7, t3, sp
                  srli         s5, a2, 3
273:              addi x1, x6, 1
273:              jalr x1, x1, 0
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
.word 0xa1c4efda, 0x7cd28963, 0xea49bfbc, 0xf18bf88f, 0x2075130e, 0xf171776b, 0x9554d874, 0x6d6390f4
.word 0x4b7d5672, 0x8256c9d6, 0xd280ce0e, 0x22a640cb, 0xb9ab8c06, 0x639849d8, 0xacbe1a08, 0x97589952
.word 0xabe0d627, 0x39881870, 0xd63a5bd9, 0x063d84fb, 0x11d3812f, 0x393b7b72, 0x74f12efe, 0x1478050e
.word 0xc49eebbe, 0x62009763, 0x58bc9a8c, 0x7defc89c, 0x935d6bb9, 0x19a19208, 0x9658bfe3, 0x6ee1b969
.word 0xff2bc59e, 0xe82325d5, 0x9df98a7b, 0xf31022cc, 0x0c4b6758, 0x41c52f31, 0x2ef5d28a, 0x4b430a5f
.word 0xcc124fbe, 0x0111e1a6, 0xb4212b8f, 0x23f3c44d, 0xe50fe6cf, 0x38424a13, 0x4f4e53fc, 0x821f1cca
.word 0x21706bbe, 0x98b78d56, 0x9488c5f8, 0x5b6b2051, 0xeee00267, 0x10937a69, 0x7e1cf506, 0xe396d89c
.word 0x920ea143, 0xeab2b3e9, 0x657c06ab, 0xa326def1, 0xded68737, 0x152b4a18, 0xc9d4fe4b, 0xd71b6926
.word 0xda607314, 0xaf3f137e, 0x936eb04e, 0xf6b7cdbf, 0x7646d2c0, 0x301ea815, 0x0248951d, 0x641d612d
.word 0x35322716, 0xa7624fe2, 0x8f0da1c9, 0x6c84b12c, 0x76170a7a, 0x8a793d49, 0x8c84d171, 0x89b64d56
.word 0x97d75abd, 0x3585b316, 0x3805667d, 0x0ebf7ac2, 0xacc789eb, 0x1f391a1c, 0xeea48bd5, 0x45aed07e
.word 0x5d7607e1, 0x15809ec8, 0xd099a343, 0x5b83365e, 0x270f26c8, 0xccb55129, 0x88007e61, 0x8840294e
.word 0xb33a4c7e, 0x21540249, 0x7d6e4378, 0x8e7a59c2, 0x407a9889, 0xbb6110f0, 0xbb308b22, 0xe7e01658
.word 0x10c580b3, 0x19408cce, 0x568ccd98, 0xf96dc6fb, 0xeedd0e85, 0x02ba9030, 0x3a54b7fb, 0xa734e4fe
.word 0x27c693b5, 0x7f84ef35, 0x2708eea0, 0x021454d1, 0x72a623f3, 0xc6cb0ad4, 0x2ed2b650, 0x9c13af06
.word 0x9342e076, 0x525de692, 0x9da4ef23, 0x32dff225, 0x16aba71f, 0x932ad1cd, 0x19c41346, 0x44e3bc5d
.word 0x971ecd69, 0xce09809e, 0x3af328b2, 0x4203b8dd, 0x2cd711cf, 0x5257f5f7, 0xe9d3c2b4, 0x34f588fd
.word 0x182e41ad, 0x1ba917fe, 0xcbf1e084, 0x0d54a983, 0x5932f914, 0x45c74397, 0xc7d22076, 0xf828c56c
.word 0x171348c9, 0x9487cf2a, 0xe131935e, 0x88920d51, 0x03468472, 0x106bca83, 0x891a2abd, 0xd36ca56f
.word 0xeedebbd3, 0x95f7b060, 0xb2eacb0b, 0x89fc59bd, 0xabfffbe5, 0x6eb9b1c3, 0x66d5d2f1, 0x22cddd97
.word 0x35db084a, 0x2c4755a2, 0x4666bce3, 0x224f9290, 0xcdb61223, 0x24383b90, 0xd5da4573, 0x6d4c156d
.word 0x20737789, 0x60e2502d, 0x1f56b2d0, 0xca78bc4c, 0x66a8a816, 0x8d205cd1, 0x90201c68, 0x1bd45f55
.word 0xf27fdbe8, 0x655d28d7, 0x95eba8f8, 0xc4b91933, 0xc5be4077, 0x75d24669, 0x9a20cffb, 0x9f8d623a
.word 0x04f40d1f, 0x7eb5c240, 0xe646f71a, 0xed7e2e95, 0x190a2dfb, 0xe02de87b, 0xcb698748, 0x1289fa6f
.word 0x509ac6d3, 0xa1212424, 0xbb0af31c, 0x7f2e674e, 0x95359b6d, 0xb61f2cc1, 0xec4d250d, 0x83db2fd3
.word 0xfc1a055c, 0x04a38241, 0xbff28f27, 0xad8406a2, 0x34591291, 0x16549b7a, 0xd68d6620, 0x37d771cf
.word 0x97d4a3cc, 0xe900c07e, 0x5f2b13ad, 0x6c2d5e4c, 0xc63f6e2e, 0x96482bd2, 0x3b768496, 0xf81c93db
.word 0xbe0f9e95, 0x59e351a0, 0x3d76881e, 0x42ffd1d0, 0xa862f05c, 0x6402cb32, 0x6b1f078d, 0x4d9583f6
.word 0x67f88dd0, 0x656b6725, 0x4c84dc8c, 0x4a1eda16, 0xbfb467c5, 0xe23abd76, 0x7216b7d8, 0x0054928c
.word 0xbd6f7e7a, 0x180a21c5, 0xbc195861, 0x826dd662, 0x0937870c, 0x2b4ef6c2, 0x3e955efc, 0xaa6053f4
.word 0x06a0c43f, 0x39727597, 0x0637ebb3, 0x32ac5dc2, 0xe34e727c, 0x1da2eda6, 0x8272111a, 0x1c66e8ee
.word 0xf090c81b, 0x83c63d3c, 0xcd248421, 0x11105fe0, 0xc15de7e2, 0x52150b33, 0x045666b9, 0x8f9cb574
.word 0x1d7a8ae5, 0x6f564353, 0xe59fc092, 0xab5dfb33, 0x526c00e8, 0x5f495c1e, 0x20be7b8b, 0x80155af4
.word 0xb4830384, 0x226d658c, 0xd1006b7b, 0x9a020b62, 0xafa75feb, 0xdac72003, 0x18664b57, 0x15662d69
.word 0x000c9dcc, 0x59253a24, 0x10555ad2, 0xc2a46c19, 0x7f47d720, 0x32606950, 0x927f54cf, 0xc68302bc
.word 0xeb3cca49, 0x825fefb2, 0x3c02b844, 0x9ca7c86d, 0xd7f179be, 0xafefcbed, 0xad0f7848, 0x95fc89f3
.word 0x9a5da3b0, 0xff208f27, 0x821305e3, 0x314fc0ee, 0xa84948e1, 0xa0035bbb, 0x7db302c6, 0x9f77fdf2
.word 0xd0843eaf, 0x6ceb14a3, 0x3867351c, 0xa32f430f, 0xf485a51c, 0xf27336be, 0x1d136d2a, 0x08db4f12
.word 0x7360aebc, 0xd9abc114, 0x433c8963, 0x6395499c, 0xd3faf7f4, 0x06bedcdf, 0x126eeb76, 0x43b5185b
.word 0x2138dab6, 0x36ff50f5, 0x46d79e24, 0x6b26ffd4, 0xc6c292d4, 0x1a6961e9, 0x8b87bd7a, 0x37722449
.word 0x5e0333e2, 0xb917feaa, 0xecdff674, 0xcb5aa1f0, 0x9abbebab, 0xfa820e2d, 0x2e84510a, 0x2cee8be1
.word 0x0b1842e4, 0xbc435fce, 0x4040ace6, 0xb279da8b, 0x54fabb6b, 0x1707c354, 0xc8928fcb, 0x37690376
.word 0xe208d265, 0xc56f00a5, 0x407b54ec, 0xbcd597f8, 0xb871374c, 0xe1e006d4, 0xc616d6a9, 0xe8b2ed0b
.word 0x61f65030, 0xe0996aa0, 0xd5ac07a1, 0x8538bd81, 0xd3664c6a, 0x5a693a22, 0x8b62677f, 0xe6e03326
.word 0x1ee1b6b3, 0x87d86208, 0xa5fd9db5, 0x8ca658ce, 0x70e516e4, 0x5b918183, 0x797f50e4, 0x8ebb8edf
.word 0x19caba6f, 0xd31ee792, 0xc482a573, 0xbd453cb0, 0x2ecd91f3, 0xffb5e501, 0x127b985f, 0x6298f0fa
.word 0xfaeaf4f2, 0xf66fa4ba, 0xad777209, 0x5dbef478, 0xd2069876, 0x71c6646f, 0xc3a59522, 0xb857ae85
.word 0xa6d071a4, 0x2956d436, 0xd83eaf23, 0x553e38cc, 0x84631bb6, 0x10b616e5, 0x22e09ced, 0x313eb2cd
.word 0x08ce707e, 0x80b9f5c9, 0x9ea966ff, 0x34588ad8, 0xb820a6c3, 0x288a3166, 0x788e5e5f, 0x5f6879da
.word 0x35aca266, 0x043c7c33, 0x2fdf406c, 0x2cde46a1, 0xbebf3539, 0x2b2de5c5, 0x4443dc2d, 0x7d66fd7b
.word 0x106f5ae4, 0x00a7d280, 0x2dbfe3c7, 0xdec80250, 0xa78da357, 0x6588efe9, 0x3b4bb034, 0x9da33176
.word 0x7a4201a5, 0xa4db7fd6, 0x34ae9337, 0x1025e567, 0x22178610, 0x0ca5369a, 0x1561514e, 0x9211abd7
.word 0xe24cb268, 0xb63138ec, 0x4c6d8aef, 0xbde57418, 0x90c3c89a, 0x1fa10644, 0xf12aaa2c, 0x6d5a08da
.word 0xb807307c, 0x728d9610, 0x86c03a4e, 0xde0f9275, 0xbc07a02e, 0x2ca94740, 0x243606b7, 0x90256734
.word 0x48cb49be, 0xc1c957b5, 0xf989a3ee, 0x13a7fe35, 0x4b031a45, 0xd0c7a648, 0x78d4713c, 0x8bf21d2a
.word 0x65f11d01, 0x1fe53744, 0xaaad3058, 0xfeb684f9, 0x0375f15b, 0xe14f6dfb, 0x6662e9c5, 0x21e70239
.word 0xd7cc0bb5, 0x5c1c3b10, 0x4bd8ef60, 0x50a86b0a, 0x5bb1c485, 0x53a11335, 0xf699c9f2, 0x3c43bd0a
.word 0x99fd7da9, 0x401f8f0c, 0x9893b487, 0xce19b8d9, 0x5e001625, 0x336af9dc, 0x717d95db, 0xc77e3c4b
.word 0x6a84aa8f, 0x8a8a8cd3, 0x4d10556e, 0xbd71d065, 0x2b4be933, 0x18f22d6d, 0x6598f8bd, 0x8d39e0f4
.word 0xe5758170, 0xf9b3eb67, 0x899cf197, 0x3149ceba, 0xfd50dffe, 0xcaf0f01d, 0x76b8cc6d, 0x078a67b9
.word 0x244784f9, 0x39502fe3, 0x295a8286, 0xcbae3c7b, 0x3e9a518f, 0x96e8db10, 0xc1e858f1, 0x657c9271
.word 0x1b5e41cc, 0xbbcbc95e, 0x108e3d64, 0xe72ca714, 0x7cd91582, 0xc529be3a, 0xdd6c4c5a, 0x7049af61
.word 0x3390a78b, 0xa0102dc4, 0x75d98065, 0xe8f3aa39
.section .region_1,"aw",@progbits;
region_1:
.word 0x5ac1a894, 0x29e59641, 0x77e2c2e4, 0x6a29e201, 0xa54fce62, 0x2978f1b1, 0x906eb820, 0xd9953093
.word 0x394a2ee1, 0x61dd2cea, 0x7b64bf4f, 0x0a93a83f, 0xc7935051, 0xd2d333c3, 0xfd633509, 0x64f10cbf
.word 0x5d4e97fd, 0x32c73faf, 0xb93b70dc, 0x039f2517, 0x43641f1d, 0x5bf1ed35, 0xc757e24d, 0x032b58f4
.word 0xe8eef72e, 0x861f4f5f, 0x872b458b, 0x0b47f6ea, 0x2c6ed7cc, 0xcf5cc532, 0xa8f206ed, 0x9200d3a8
.word 0xd6eaf3f3, 0xf5c32e56, 0x949b1cf0, 0x0d421550, 0x905c2950, 0x8c5f32ac, 0x38607e29, 0x074426fd
.word 0xc18bd833, 0x469f1379, 0x0f73b53f, 0xfa386cfe, 0xdf917037, 0xdc750bf6, 0x60df8192, 0x2d02d23e
.word 0x601b1998, 0x45ae35d3, 0xa5aa0508, 0x964429de, 0x97557777, 0xfcd1410f, 0x8b01ca46, 0xd9627c08
.word 0xd6cb58be, 0xeda1f242, 0xbdf36e63, 0x60494c53, 0xc8183596, 0x45e8e4d6, 0x409e7be6, 0x3da5e230
.word 0xf85009a4, 0xc2e19f2e, 0x39bc8032, 0x9b589d60, 0xf65ecf90, 0xebf06442, 0x8b06d847, 0x7ac0f8f3
.word 0xa04fde52, 0x33f3d9f6, 0xe1075920, 0x5efce83c, 0x0b5f2abf, 0x92c1427e, 0x36b2cfbd, 0x8b6a09eb
.word 0xd837c77e, 0x714b38da, 0xbf26091e, 0x27b993b4, 0x776290ce, 0x22a22022, 0x124beaf5, 0x7614bc1f
.word 0xb16d665c, 0xa4d54947, 0xdc4a401c, 0x49095048, 0xc621610c, 0x925dac8c, 0xca5a7ffd, 0x808961c4
.word 0xc38ef1f6, 0xa7b61226, 0xd76179ea, 0xe0dacae7, 0xa0217556, 0x0dcf045b, 0xc9dcc9dc, 0xe204cf68
.word 0x8f1bc416, 0xa4605bd3, 0xb2b23c12, 0xd7f8a813, 0x8818444b, 0xbf20508d, 0x9f3d7dda, 0xb7c36f47
.word 0xec0d4a08, 0x56bc14db, 0x48d3d999, 0x83721e39, 0x580b5bdc, 0x52372a5f, 0xca87ec06, 0x91cf5f57
.word 0x62553739, 0x8a8469f3, 0x068808ae, 0x913807a8, 0x8e05d0c4, 0x3c7f4041, 0xa79852d3, 0x101ca416
.word 0xc438c199, 0x9cd51a46, 0x1c4c2bcf, 0x14218e68, 0xb896a782, 0xab3fd156, 0x957519fa, 0x0f9f8fdb
.word 0x1ecfeada, 0x23311f07, 0x95dee094, 0x63e30d47, 0x30bfd0e0, 0xf536c577, 0xd7047582, 0xbedd2b7c
.word 0x6c0d4065, 0x386c40b6, 0xbb37aea2, 0x2f713d3a, 0xd5a432dd, 0x0070f47d, 0xab021538, 0x9a6b2cec
.word 0x15334e70, 0x1204f408, 0x792ee57c, 0xe37a42e8, 0x6783e404, 0x42e26590, 0x8abd8476, 0xb5395612
.word 0x7b927d13, 0x9bab2ddd, 0xd483a94a, 0xd864f019, 0xeef8a2a1, 0x58865a9b, 0xe0f332f7, 0x3412d7db
.word 0x25df922b, 0x9ff1982d, 0xf22a906b, 0x81865321, 0x5c6a3acb, 0x8f83a8c7, 0x035c8ef2, 0x65086b67
.word 0x238619e2, 0xdd497f4e, 0x55ec5de5, 0x09270568, 0x85edfcba, 0x6a5ca255, 0xdfc682ea, 0x98a24bf3
.word 0x52f13a3f, 0x841fd59a, 0x3eb694e5, 0x8a447531, 0x136f6a73, 0x1877d0d0, 0x454e5af2, 0x5130b1a5
.word 0x57fcad49, 0xc6953f54, 0xda3c8a89, 0x4d68d983, 0xbdad5a96, 0x7998910a, 0xaa493e23, 0x542f6ddc
.word 0x7b207846, 0xea275f8a, 0x8bb65432, 0x03c25902, 0x042a74f7, 0x81985ee2, 0x750f944f, 0x1b00b439
.word 0xeb0d176c, 0x60f34dca, 0x99da1fa5, 0x1afe279f, 0xcbd8ec9d, 0xfab961f7, 0x554ed378, 0x9d7aaaf8
.word 0x18855d08, 0x2ea98adc, 0xf9763086, 0xd2e7480e, 0xa2cb09a2, 0xa1bea99b, 0x88678144, 0xef5d953c
.word 0x4f16bb33, 0xff14bb8a, 0xc7d68f2a, 0x502890cf, 0x8dda86e1, 0x39703fcf, 0x02759ff8, 0x9a531d34
.word 0x93e7c892, 0xaa148fd5, 0x9e1a79d5, 0xd04ca5e5, 0xfd6de75c, 0x9799951c, 0x85976fac, 0xaa70f821
.word 0xda7cd3bb, 0xe1083b45, 0x8f38f871, 0xdde8c6dc, 0x8612aca7, 0xb3a1bda0, 0xb5224def, 0x7148d28a
.word 0x7bb5d7ee, 0x5c97ed11, 0x4877eab6, 0x923b14fb, 0x43b90cde, 0xb78682fc, 0x9813ab9b, 0xea20def6
.word 0xda11352b, 0xd4042ccb, 0x2c5c64f8, 0x4916fa5f, 0xe524082f, 0x60450d02, 0x62f7c433, 0xcf72ef4c
.word 0xa2641335, 0xd8bfb818, 0x1f64ddef, 0xb8ae69e4, 0x70e52195, 0x239dd5bd, 0x92328879, 0x128638af
.word 0xbf78aa88, 0x8f7b75b1, 0xd181f67b, 0xd8107915, 0x7112d956, 0xdf311676, 0xed2827fc, 0xc11e4bc6
.word 0xeeaf7c84, 0x75b02093, 0xea679ca2, 0x5fc2dfa6, 0xa202923c, 0x443cd96b, 0xb667bfd3, 0x6603dde0
.word 0x99b008c5, 0x1c236532, 0x91e66618, 0x3b1a9dba, 0x014ca3ca, 0x0ff96861, 0xb5aec9db, 0xd9809032
.word 0x56b3da05, 0x74353d0f, 0x55898719, 0x151d13dd, 0x1f3e9abb, 0x4fa2351a, 0x8a9726be, 0xc5ee8ac3
.word 0xdd3c8397, 0x37d2591f, 0x0a64bb3b, 0x64688285, 0x84fe0702, 0xe83bb805, 0xbfbbede1, 0xddaeb99a
.word 0xdf4cf6a9, 0x907a7a38, 0xa4c1be0c, 0x6f632838, 0xee59c199, 0xc020cc20, 0xac0738f4, 0x19aba3ab
.word 0x5ffb065e, 0x7961e0a2, 0x255f31b0, 0x2b3d59af, 0xdedd0ac9, 0x0338b4f0, 0x95f2f0eb, 0x7516f36d
.word 0x3ea7421c, 0xaa6655d4, 0x8bc1f75f, 0x25d512d7, 0x9992b5ea, 0x9b02484d, 0x7f095aa6, 0x0c74ad7c
.word 0x837151f8, 0x07d08420, 0x329090a3, 0x839cff83, 0x095f5c5f, 0x51c6be58, 0x7420302e, 0xf86d3be6
.word 0x0e39c35a, 0xa189ff01, 0x4d5f222e, 0x3919343e, 0x02cc90a6, 0x1e9e3552, 0x951d2265, 0x5ac79c06
.word 0x7f5315ca, 0xaaa044e2, 0x9ed15dbe, 0x0931f268, 0x186981a4, 0xcab023ff, 0xf6bb3f5c, 0x92326548
.word 0xeca28741, 0xed8af7b0, 0xb0173051, 0xcf493236, 0x1dfcd050, 0xcbacbe8f, 0x7a2f0aff, 0xbee19824
.word 0xafe72f8c, 0x39ce92a7, 0x42c7a53a, 0x7d1b53ff, 0x37e6afa2, 0xc93f70a1, 0x8443a3b6, 0xb800d508
.word 0x9ebb13c8, 0xbcd8b875, 0x9e85168f, 0x5c9d4ba3, 0x03b22ca8, 0x722d09a0, 0xc60e902a, 0xcf2f2892
.word 0xa71b281e, 0x99274eb4, 0xc679fcfc, 0x5e6f9095, 0x7206d96b, 0xe307cf80, 0xbc92fef7, 0xa4ccb0db
.word 0xf3582eb0, 0xcf0459ec, 0x0b3e5c09, 0xaf9d7160, 0xb03f9120, 0xab3369a9, 0x93f9099e, 0x54964782
.word 0xa4caf68b, 0x53792995, 0x383b501e, 0x065db15a, 0xe6717802, 0xcd925f51, 0x05bc2d35, 0xb6d68836
.word 0x1c2f3adc, 0x0bcd05a9, 0x3d46c8a0, 0xc44e02b0, 0xfbd261e1, 0x45a26680, 0x19106f31, 0xd1458f12
.word 0x23295805, 0xfe9536f2, 0x1ef82deb, 0x99f883eb, 0xb9f5a222, 0xb27739d8, 0xb04b3c8b, 0x9c452b04
.word 0x358cc35f, 0x9baab5cd, 0x0313497e, 0x4112b827, 0xe18744e1, 0x9ef990b6, 0x3034a459, 0x86199049
.word 0x55d5d544, 0x439c61ef, 0x0890a2af, 0x3a86bb13, 0x660e4ad0, 0x74728813, 0x236f6715, 0xf1be1c81
.word 0x65ae6de6, 0xd38c74a1, 0x0f596892, 0x6f240779, 0x20d6404d, 0xa0969422, 0x7326ef87, 0x1200e05f
.word 0xbb16ffb9, 0x9bbb987c, 0x1132361c, 0x940e823d, 0xe2e0f834, 0xc1cc3f90, 0x15422fc0, 0x6aed8a75
.word 0xfcb21cb9, 0x52d05e8a, 0x3361cf4d, 0x0756d4b1, 0x40f2d0f8, 0xc72049d0, 0x9db63404, 0x46afe21b
.word 0x869ed9c6, 0xf777eb3e, 0x4994965f, 0x720e9ceb, 0xd727ae67, 0xe2956b82, 0xff6399ac, 0xef2b5dcb
.word 0x7bcbde26, 0x21fefb33, 0x72a89ed2, 0x0e14aba0, 0x9fd658e9, 0x787e13be, 0x28693991, 0x54d26d71
.word 0x2f4c69d5, 0xb226f0e7, 0xf487f80f, 0x48677bb4, 0xb6403849, 0x778f2762, 0x7fa49d5b, 0x64167995
.word 0x79e3a717, 0xf248979f, 0xca2646bf, 0x3ad90469, 0x6bad0163, 0x5caf9841, 0xc85dbf6a, 0xa5cee2df
.word 0xd136a626, 0xe222ff9d, 0x5e497d6b, 0x3967d65d
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
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
                  add x22, x17, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  add x22, x17, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x27, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x27, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x27, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x27, x11, ecall_handler
                  li x11, 0x1
                  beq x27, x11, instr_fault_handler
                  li x11, 0x5
                  beq x27, x11, load_fault_handler
                  li x11, 0x7
                  beq x27, x11, store_fault_handler
                  li x11, 0xc
                  beq x27, x11, pt_fault_handler
                  li x11, 0xd
                  beq x27, x11, pt_fault_handler
                  li x11, 0xf
                  beq x27, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

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
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x17, x22, zero
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
                  add x17, x22, zero
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
                  add x17, x22, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x17, x22, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x17, x22, zero
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
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x17, x22, zero
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
