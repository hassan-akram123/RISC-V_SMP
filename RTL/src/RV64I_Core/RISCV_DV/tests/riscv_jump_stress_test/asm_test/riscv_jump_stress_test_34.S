.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0xf6bd13f6
                  li x1, 0x0
                  li x2, 0x877c764b
                  li x3, 0x80000000
                  li x4, 0xf5683e0a
                  li x5, 0xffa310a4
                  li x6, 0x7268e7a1
                  li x7, 0x64d1d634
                  li x8, 0x0
                  li x9, 0xd6baca5
                  li x10, 0x80000000
                  li x12, 0x39b479a2
                  li x14, 0xf0c4b9e7
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xee142b34
                  li x18, 0x2
                  li x19, 0xff722b6a
                  li x20, 0x0
                  li x21, 0xf73cd776
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x437bde73
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x9
                  li x28, 0xa7da5299
                  li x29, 0x6
                  li x30, 0xaed5c5c2
                  li x31, 0x8
                  la x13, user_stack_end
main:             jal          ra, 16f
0:                jal          s0, 14f
1:                jal          gp, 7f
2:                jal          a6, 11f
3:                jal          t1, 4f
4:                jal          ra, 10f
5:                jal          t0, 6f
6:                jal          ra, 3b
7:                jal          t1, 5b
8:                jal          ra, 20f
9:                jal          a6, 21f
10:               jal          ra, 25f
11:               jal          s10, 24f
12:               jal          ra, 13f
13:               jal          ra, 0b
14:               jal          ra, 17f
15:               jal          t0, 19f
16:               jal          t3, 18f
17:               jal          ra, 1b
18:               jal          t1, 9b
19:               jal          ra, 22f
20:               jal          tp, 12b
21:               jal          t4, 23f
22:               jal          s3, 8b
23:               jal          ra, 2b
24:               jal          ra, 15b
25:               ori          s10, s11, -469
main_4:           jal          ra, 18f
0:                jal          tp, 17f
1:                jal          ra, 4f
2:                jal          ra, 12f
3:                jal          a6, 9f
4:                jal          ra, 11f
5:                jal          ra, 10f
6:                jal          s8, 5b
7:                jal          a5, 14f
8:                jal          ra, 1b
9:                jal          t1, 15f
10:               jal          gp, 13f
11:               jal          t1, 22f
12:               jal          ra, 6b
13:               jal          ra, 21f
14:               jal          ra, 19f
15:               jal          ra, 7b
16:               jal          t2, 8b
17:               jal          ra, 20f
18:               jal          ra, 0b
19:               jal          ra, 2b
20:               jal          gp, 3b
21:               jal          ra, 16b
22:               slli         a2, a5, 11
main_11:          jal          ra, 5f
0:                jal          ra, 15f
1:                jal          t6, 6f
2:                jal          s11, 4f
3:                jal          gp, 14f
4:                jal          t1, 3b
5:                jal          t0, 16f
6:                jal          t1, 9f
7:                jal          ra, 10f
8:                jal          s8, 1b
9:                jal          sp, 0b
10:               jal          t1, 13f
11:               jal          t3, 12f
12:               jal          s7, 8b
13:               jal          s7, 11b
14:               jal          ra, 17f
15:               jal          t1, 2b
16:               jal          s2, 7b
17:               auipc        gp, 426349
main_12:          jal          ra, 0f
0:                jal          s2, 16f
1:                jal          ra, 23f
2:                jal          t1, 1b
3:                jal          ra, 20f
4:                jal          sp, 9f
5:                jal          t1, 11f
6:                jal          ra, 10f
7:                jal          sp, 18f
8:                jal          t1, 25f
9:                jal          t1, 14f
10:               jal          t1, 8b
11:               jal          ra, 24f
12:               jal          t0, 6b
13:               jal          sp, 7b
14:               jal          ra, 12b
15:               jal          t1, 21f
16:               jal          s2, 2b
17:               jal          ra, 13b
18:               jal          t1, 4b
19:               jal          ra, 5b
20:               jal          ra, 22f
21:               jal          ra, 3b
22:               jal          t1, 17b
23:               jal          ra, 19b
24:               jal          sp, 15b
25:               slli         a5, s0, 14
main_7:           jal          ra, 10f
0:                jal          ra, 13f
1:                jal          s8, 4f
2:                jal          t1, 1b
3:                jal          ra, 21f
4:                jal          ra, 15f
5:                jal          t1, 16f
6:                jal          tp, 8f
7:                jal          ra, 9f
8:                jal          ra, 20f
9:                jal          a4, 6b
10:               jal          ra, 14f
11:               jal          ra, 0b
12:               jal          sp, 7b
13:               jal          s5, 19f
14:               jal          ra, 11b
15:               jal          ra, 3b
16:               jal          ra, 12b
17:               jal          ra, 18f
18:               jal          ra, 5b
19:               jal          t1, 17b
20:               jal          t1, 2b
21:               addi         t1, t1, 793
main_3:           jal          ra, 21f
0:                jal          ra, 27f
1:                jal          ra, 16f
2:                jal          t1, 25f
3:                jal          t6, 13f
4:                jal          s9, 23f
5:                jal          a0, 7f
6:                jal          ra, 26f
7:                jal          a6, 19f
8:                jal          ra, 20f
9:                jal          ra, 8b
10:               jal          ra, 17f
11:               jal          t1, 6b
12:               jal          t6, 0b
13:               jal          ra, 11b
14:               jal          ra, 4b
15:               jal          s9, 18f
16:               jal          t1, 15b
17:               jal          t2, 9b
18:               jal          ra, 22f
19:               jal          t1, 2b
20:               jal          tp, 5b
21:               jal          ra, 24f
22:               jal          t3, 3b
23:               jal          ra, 1b
24:               jal          a5, 10b
25:               jal          ra, 12b
26:               jal          t1, 28f
27:               jal          ra, 14b
28:               lui          s9, 974474
main_6:           jal          ra, 2f
0:                jal          ra, 3f
1:                jal          ra, 16f
2:                jal          ra, 5f
3:                jal          t1, 13f
4:                jal          ra, 11f
5:                jal          ra, 15f
6:                jal          s0, 8f
7:                jal          ra, 1b
8:                jal          gp, 17f
9:                jal          t4, 10f
10:               jal          s8, 18f
11:               jal          t1, 6b
12:               jal          ra, 7b
13:               jal          ra, 14f
14:               jal          ra, 12b
15:               jal          ra, 0b
16:               jal          t1, 4b
17:               jal          s9, 9b
18:               andi         s6, sp, -1534
main_5:           jal          ra, 15f
0:                jal          s9, 26f
1:                jal          s6, 10f
2:                jal          t1, 0b
3:                jal          s6, 19f
4:                jal          ra, 28f
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          ra, 20f
8:                jal          t1, 21f
9:                jal          t1, 13f
10:               jal          ra, 16f
11:               jal          ra, 22f
12:               jal          ra, 7b
13:               jal          ra, 8b
14:               jal          ra, 23f
15:               jal          ra, 29f
16:               jal          t1, 2b
17:               jal          ra, 14b
18:               jal          a0, 12b
19:               jal          ra, 4b
20:               jal          ra, 30f
21:               jal          ra, 18b
22:               jal          s0, 17b
23:               jal          ra, 9b
24:               jal          ra, 27f
25:               jal          ra, 6b
26:               jal          ra, 11b
27:               jal          ra, 25b
28:               jal          t1, 1b
29:               jal          tp, 24b
30:               add          s8, s7, s2
main_9:           jal          ra, 12f
0:                jal          ra, 11f
1:                jal          t1, 0b
2:                jal          s5, 9f
3:                jal          ra, 18f
4:                jal          ra, 8f
5:                jal          ra, 4b
6:                jal          a6, 5b
7:                jal          tp, 2b
8:                jal          ra, 15f
9:                jal          t0, 16f
10:               jal          t1, 7b
11:               jal          ra, 3b
12:               jal          t1, 17f
13:               jal          ra, 6b
14:               jal          t6, 1b
15:               jal          ra, 19f
16:               jal          ra, 14b
17:               jal          ra, 10b
18:               jal          tp, 13b
19:               slti         a0, gp, 1242
main_10:          jal          ra, 9f
0:                jal          ra, 8f
1:                jal          t1, 0b
2:                jal          t1, 18f
3:                jal          ra, 11f
4:                jal          t1, 16f
5:                jal          t0, 7f
6:                jal          ra, 19f
7:                jal          t1, 2b
8:                jal          ra, 15f
9:                jal          ra, 5b
10:               jal          t1, 20f
11:               jal          ra, 13f
12:               jal          ra, 3b
13:               jal          s1, 1b
14:               jal          t1, 4b
15:               jal          ra, 17f
16:               jal          ra, 10b
17:               jal          t1, 14b
18:               jal          ra, 6b
19:               jal          ra, 12b
20:               nop
                  auipc        zero, 331250
                  xori         s10, t5, 873
                  addi         t1, s5, 1045
                  nop
                  andi         s0, t0, 1440
                  sltiu        sp, ra, -257
                  addi         s6, zero, -1896
                  sltiu        s11, a3, 1088
                  ori          ra, tp, -1490
                  bgeu         ra, s7, 17f
                  beq          t4, zero, 25f
                  beq          s9, t4, 13f
                  xor          s0, a1, zero
13:               xori         t3, s3, 2028
                  ori          s6, s1, -807
                  bltu         a0, t0, 21f
                  srli         t6, a7, 18
17:               bge          t1, a0, 20f
                  sra          a6, s11, a5
                  nop
20:               add          t0, s2, t4
21:               lui          t1, 13440
                  sltiu        s8, s0, -1750
main_1:           jal          ra, 6f
0:                jal          ra, 11f
1:                jal          ra, 5f
2:                jal          sp, 9f
3:                jal          ra, 4f
4:                jal          t1, 1b
5:                jal          t1, 0b
6:                jal          ra, 12f
7:                jal          t1, 15f
8:                jal          t6, 3b
9:                jal          gp, 7b
10:               jal          ra, 2b
11:               jal          t1, 14f
12:               jal          ra, 13f
13:               jal          t1, 8b
14:               jal          t1, 10b
15:               auipc        a0, 732278
                  xor          t6, ra, s11
                  nop
25:               andi         s11, t0, 1973
                  slti         gp, a2, -335
                  sltu         t0, s1, sp
                  blt          a0, t3, 29f
29:               srli         a7, s8, 14
                  bne          a5, a4, 40f
                  and          s6, s7, s10
                  auipc        gp, 430038
                  auipc        s3, 45052
                  xor          s11, t5, sp
                  auipc        t2, 135873
                  srl          s10, a4, tp
                  add          s1, s3, t5
                  slli         a6, a3, 30
                  slti         t1, s10, 1821
40:               sltiu        s2, s3, 976
                  sll          zero, a1, t2
                  sltiu        a5, s3, -1994
                  bltu         t5, a3, 54f
                  slti         s3, zero, 311
                  lui          s11, 904403
                  slti         t2, t3, -565
                  sub          s10, t5, a1
                  bgeu         s11, t5, 65f
                  sll          s0, t2, a1
                  nop
                  srli         tp, s11, 24
                  xor          a5, s8, s3
                  slli         sp, s8, 6
54:               auipc        sp, 714467
                  xor          s4, a1, a5
                  bgeu         s2, t4, 61f
                  sltu         t2, a3, a6
                  add          zero, t4, a6
                  lui          s1, 128136
                  slli         s9, t3, 19
61:               or           t6, a0, s0
                  auipc        t0, 157756
                  bgeu         sp, s4, 67f
                  slli         t4, t5, 30
65:               sra          s6, t6, a6
                  bgeu         t3, a6, 67f
67:               bltu         tp, a7, 74f
                  andi         a4, a3, 1182
                  andi         gp, a6, 2019
                  bltu         s0, s8, 86f
                  add          t1, a4, s2
                  andi         sp, a1, -345
                  srli         gp, a1, 24
74:               sra          s4, sp, s4
                  bge          s11, tp, 94f
                  bgeu         s5, t6, 77f
77:               nop
                  lui          t0, 669064
                  bne          t4, tp, 83f
                  xori         t4, a4, 1070
                  beq          a4, s1, 88f
                  ori          s4, a0, 826
83:               xor          a5, s0, a6
                  andi         zero, s10, -830
                  or           s1, a2, a4
86:               srai         t6, s3, 2
                  lui          a7, 323838
88:               ori          s3, s8, 517
                  sll          sp, s11, t5
                  bge          s4, a3, 96f
                  and          s1, t0, a6
                  sltu         a0, zero, s8
                  slt          zero, a6, gp
94:               addi         a2, sp, 213
                  bne          sp, a6, 102f
96:               srai         s1, a2, 10
                  sltiu        s7, ra, 865
                  xori         s7, ra, 1923
                  nop
                  auipc        t3, 394565
                  srl          t2, a5, s8
102:              lui          a4, 687537
                  nop
                  bgeu         a6, s2, 108f
                  auipc        s11, 930412
                  bltu         t2, sp, 124f
                  srai         t4, s9, 14
108:              srli         ra, s0, 11
                  blt          t3, a7, 117f
                  sub          s8, a5, t0
                  ori          ra, t1, -138
                  andi         s3, t0, 1752
                  or           a4, a0, t2
                  sll          t4, t2, sp
                  blt          sp, t0, 129f
                  srl          s11, s4, s9
117:              srai         zero, gp, 10
                  xori         s6, s4, -1513
                  add          t0, t0, t3
                  or           t2, s2, a2
                  sltiu        sp, t3, -936
                  srai         t2, t6, 15
                  ori          a6, t6, 1389
124:              srli         s7, zero, 4
                  sll          s9, s9, a1
                  slti         s5, t6, 2019
                  slli         s5, a4, 18
                  xor          s2, ra, t3
129:              lui          s0, 317116
                  bgeu         a2, t0, 133f
                  andi         s9, sp, -1125
                  and          a0, s2, s9
133:              xor          s9, s11, s6
                  xori         t0, zero, -2031
                  sll          s9, a5, tp
                  bge          a7, a7, 150f
                  ori          s5, s7, 663
                  srli         t1, a2, 1
                  bge          s3, s4, 152f
                  slt          a4, tp, t5
                  sra          t3, s1, s6
                  blt          a7, a4, 157f
                  andi         t0, a1, -1250
                  srai         a0, s0, 7
                  nop
                  and          a0, t3, s2
                  srl          a5, a4, a2
                  or           ra, s0, s8
                  bne          ra, s4, 167f
150:              srl          s4, gp, a0
                  blt          t0, s7, 170f
152:              blt          sp, s9, 165f
                  xori         s8, s4, -1174
                  add          t4, a7, a7
                  sub          t1, gp, t4
                  slti         tp, s4, 1021
157:              slt          s10, a3, a7
                  slt          t2, t0, s2
                  sltiu        a0, s4, 1781
                  addi         s8, a4, 779
                  xori         a7, s9, -104
                  xori         a6, a1, 1588
                  bne          s2, sp, 177f
                  bgeu         s11, s2, 171f
165:              bge          s5, s11, 171f
                  ori          s6, t3, -1294
167:              blt          s4, s8, 183f
                  bltu         a7, t5, 171f
                  andi         zero, gp, -21
170:              beq          a1, t1, 171f
171:              nop
                  bltu         a6, ra, 191f
                  ori          gp, s8, 1626
                  bgeu         s8, a7, 192f
                  add          s9, s3, a3
                  sra          s0, t6, a4
177:              bgeu         s6, s7, 185f
                  bne          t5, t5, 189f
                  slt          s9, s8, gp
                  nop
                  nop
                  bne          s9, s6, 189f
183:              slti         t3, s11, -271
                  bne          s9, sp, 199f
185:              add          zero, t4, sp
                  nop
                  add          s5, s6, s0
                  andi         s8, zero, 1576
189:              and          s10, t5, s6
                  nop
191:              nop
192:              beq          gp, a5, 195f
                  sltiu        t3, a3, -1841
                  bltu         t2, s3, 201f
195:              sll          a2, s2, s3
                  nop
                  bltu         t6, s7, 198f
198:              or           tp, t4, ra
199:              sll          a0, a7, s2
                  add          t1, s6, a3
201:              sub          s7, t5, a7
                  sll          s8, s9, t5
                  xor          t1, a7, a6
                  srli         s6, t0, 9
                  addi         s10, a7, 1988
                  beq          a1, s2, 224f
                  srli         gp, gp, 18
                  slti         s10, s1, 99
                  lui          t0, 141395
                  srli         t2, s0, 5
                  slli         s3, a5, 27
                  srli         t6, gp, 25
                  add          a2, s11, s0
                  andi         ra, t4, -492
                  and          t6, s0, tp
                  slti         zero, s0, -1063
                  and          gp, s4, a2
                  srai         a4, s0, 9
                  bltu         s6, t3, 224f
                  slli         s5, gp, 20
                  ori          a2, s2, 1756
                  sra          s5, s1, a4
                  bltu         a4, t3, 238f
224:              srli         s3, t1, 13
                  bltu         t3, s11, 226f
226:              sub          t0, a1, s7
                  lui          ra, 368059
                  srli         tp, t2, 2
                  srl          s10, a2, s9
                  xori         t0, t6, -1827
                  auipc        s3, 417913
                  slt          a2, zero, s5
                  slti         gp, a5, -1973
                  andi         s3, a3, -644
                  add          ra, s9, zero
                  srli         t3, t6, 8
                  blt          t0, s2, 247f
238:              addi         s4, a2, 1924
                  add          t4, s8, s2
                  sltu         a5, ra, s4
                  andi         ra, s4, 1355
                  auipc        t0, 155116
                  sub          sp, t2, s11
                  srai         s9, t5, 1
                  srli         s1, s7, 19
                  nop
247:              bgeu         a1, t0, 253f
                  srai         sp, s5, 7
                  bltu         a3, t6, 268f
                  sltiu        a4, s1, -979
                  slti         s10, s3, 786
                  sltu         t4, s6, s4
253:              bge          s0, s8, 257f
                  slli         t2, s5, 12
                  auipc        s1, 333479
                  auipc        s1, 666384
257:              bne          sp, a3, 259f
                  nop
259:              slt          s8, t5, s2
                  blt          s8, a6, 264f
                  sub          tp, a1, a0
                  bne          a0, a3, 266f
                  bge          t2, s1, 280f
264:              addi         s5, a1, -1887
                  srli         a4, s0, 19
266:              add          a7, s1, t6
                  xori         a4, s8, 968
268:              sub          s0, s11, a6
                  slt          a5, s7, s9
                  nop
                  bgeu         t6, s4, 285f
                  sra          ra, s6, s4
                  blt          a5, a6, 281f
                  bltu         s5, zero, 292f
                  xori         s6, t3, 1501
                  sltu         a7, s6, a1
                  bne          t5, s4, 292f
                  slli         s5, s10, 18
                  andi         t1, a3, -1306
280:              ori          s3, a4, -821
281:              add          t0, s8, s6
                  nop
                  xor          s10, s10, a1
                  bge          s7, a7, 297f
285:              sltiu        gp, t5, 1449
                  bgeu         t4, s0, 304f
                  srl          s0, sp, t6
                  srai         s1, a0, 12
                  bne          s8, t4, 308f
                  beq          s1, t4, 297f
                  nop
292:              xor          t3, a5, gp
                  sltu         a4, s1, s1
                  blt          s11, a5, 300f
                  slli         a0, t5, 31
                  sub          t1, a4, s3
297:              addi         s1, t5, -493
                  and          s8, a0, t3
                  and          gp, gp, s9
300:              and          a0, zero, s5
                  srli         s7, tp, 29
                  sra          ra, t6, a4
                  xor          ra, t1, t5
304:              srl          a6, s5, a0
                  sltu         s11, s4, sp
                  sra          t2, a3, a7
                  blt          a2, a5, 308f
                  ori          a4, s1, 1144
                  srl          a4, s8, a4
                  sra          t3, s0, t2
                  srai         s1, s6, 23
                  la           s9, sub_1
                  addi         s9, s9, -174
                  bge          t5, ra, main_j1 #branch to jump instr
                  srl          s11, s7, ra
                  nop
                  sub          a7, t1, t6
                  sltu         gp, s2, s3
                  sltu         t1, t0, a2
                  xori         s0, a3, 1934
main_j1:          jalr         ra, s9, 174 #jump main -> sub_1
308:              bge          a3, a4, 314f
                  srl          a2, s10, t1
                  xor          a2, ra, t5
                  nop
                  nop
                  srl          s6, s1, s3
314:              slli         s3, a3, 12
                  slt          s3, gp, s6
                  sra          s10, a0, tp
                  slti         tp, s8, -330
                  slti         a2, s0, -1743
                  or           ra, sp, tp
                  ori          zero, s2, 126
                  srli         s6, a6, 7
                  srl          t1, s3, s4
                  sltu         s8, s6, s5
                  nop
                  slt          t4, s4, s8
                  ori          s11, t4, 1786
                  ori          a4, a4, 231
                  blt          ra, s4, 331f
                  and          s7, t3, zero
                  auipc        t1, 634635
331:              bgeu         s11, s11, 339f
                  sll          s11, s5, a4
                  bgeu         s6, t2, 341f
                  bgeu         a3, s3, 337f
                  sub          s3, t1, t5
                  bltu         s3, a1, 343f
337:              beq          t4, s7, 342f
                  xor          t4, a6, s10
339:              slt          t6, a5, t0
                  xor          a7, s2, a4
341:              srl          a5, s2, a7
                  srai         s6, sp, 25
                  la           s10, sub_1
                  srl          s0, t1, s2
                  or           t6, s9, s3
                  auipc        a5, 258177
                  srai         s1, a3, 12
                  or           ra, s1, t3
                  slli         a0, a2, 25
                  addi         s10, s10, 904
                  sll          s7, s2, s8
                  lui          a5, 978195
                  lui          t2, 139841
main_j2:          jalr         ra, s10, -904 #jump main -> sub_1
342:              bge          a4, a5, 343f
343:              beq          tp, s10, 358f
                  xori         gp, s0, -1959
                  ori          s11, t0, 160
                  nop
                  bgeu         tp, s3, 354f
                  bgeu         t4, a7, 359f
                  add          a5, s10, s3
                  slt          s8, a7, sp
                  sub          t4, s9, gp
                  or           s10, a7, s10
                  lui          t0, 21727
354:              srai         a0, sp, 17
                  srai         s0, s3, 28
                  sra          s6, ra, s5
                  bne          s10, ra, 376f
358:              add          s10, t1, s10
359:              nop
                  srai         t2, ra, 26
                  sltu         s7, t2, a1
                  bltu         a0, tp, 366f
                  lui          t3, 571002
                  srl          s10, gp, s4
                  slli         a7, s7, 30
366:              slli         a2, a3, 31
                  xor          s10, t6, s9
                  slti         s0, s11, 1586
                  xor          s5, tp, gp
                  sub          s6, s7, s9
                  lui          ra, 915219
                  blt          a6, s3, 388f
                  slli         a5, t1, 30
                  bgeu         a1, s0, 388f
                  addi         t0, s9, 180
376:              slt          s3, a0, t4
                  xor          t3, s10, t1
                  bge          t5, a7, 388f
                  andi         s1, tp, 1116
                  nop
                  sltiu        s7, s10, -1900
                  sub          s7, s10, s3
                  and          a4, s8, a0
                  bne          s4, a2, 401f
                  bge          t5, s1, 386f
386:              blt          t4, t0, 390f
                  auipc        s8, 654489
388:              bltu         t1, s2, 402f
                  srli         a5, t2, 25
390:              and          s4, a2, t2
                  srli         a5, zero, 13
                  bgeu         a3, t5, 396f
                  xor          s11, ra, a0
                  srai         s8, ra, 26
                  sltiu        s4, s0, 682
396:              nop
                  srl          a6, a1, a7
                  srl          s2, t1, a1
                  blt          a3, tp, 401f
                  sub          a0, t3, s3
401:              sltu         s1, s11, ra
402:              srl          t3, s4, s1
                  sub          t6, s10, s3
                  bgeu         t5, t3, 422f
                  sltiu        zero, s0, -1580
                  add          t6, t5, ra
                  blt          a0, s6, 420f
                  xori         t1, t1, 381
                  slt          s6, a1, s3
                  beq          zero, s0, 425f
                  nop
                  bge          a5, s6, 427f
                  bgeu         s11, t0, 416f
                  slti         a7, a6, 1703
                  and          s9, tp, s11
416:              sll          s0, a2, ra
                  bne          s6, s8, 433f
                  sll          a2, a0, t5
                  sltu         s9, a3, gp
420:              ori          a2, ra, -1861
                  sub          s7, s4, a3
422:              auipc        a5, 563782
                  and          s2, s2, a2
                  and          s8, t0, a1
425:              bne          s2, s8, 431f
                  bltu         gp, s5, 430f
427:              slti         s3, zero, 102
                  lui          tp, 764109
                  slti         a6, s3, -1184
430:              lui          a0, 264729
431:              add          s5, s8, t0
                  srl          a2, a1, t1
433:              addi         s3, s7, 279
                  slt          s0, t1, s10
                  srai         a7, s11, 25
                  bne          t4, a3, 440f
                  addi         s9, a2, -1331
                  bltu         s2, s0, 441f
                  sltu         t3, s5, a4
440:              add          s1, s8, ra
441:              and          s9, s9, a2
                  nop
                  sra          s6, a4, s1
                  srl          s5, a0, a2
                  ori          s9, s10, -452
                  sll          tp, s4, t3
                  or           s1, t0, a2
                  sll          gp, a3, s6
                  auipc        s10, 362520
                  sll          t6, s0, s1
                  lui          s7, 152994
                  or           s2, s2, ra
                  srai         s8, t4, 10
                  slti         a7, s0, 1641
                  andi         t0, s2, -927
                  slti         s9, ra, -886
                  slli         s10, gp, 10
                  ori          t3, t0, 1899
                  sltiu        zero, s8, 1075
                  sltiu        a6, a3, -1274
                  bge          a1, ra, 462f
462:              nop
                  beq          s2, a3, 471f
                  and          s5, s3, s8
                  sltiu        zero, s11, -1833
                  srai         t1, s10, 19
                  ori          t3, sp, -2046
                  bgeu         t4, gp, 475f
                  bgeu         a4, a0, 477f
                  bgeu         s8, s4, 475f
471:              bgeu         a0, a0, 472f
472:              slt          s8, gp, t2
                  bge          s9, t4, 487f
                  srli         a0, t2, 20
475:              ori          s10, a7, 1419
                  slli         zero, t1, 25
477:              sll          s9, a1, s9
                  or           s9, s0, s2
                  bgeu         s2, a2, 485f
main_0:           jal          ra, 10f
0:                jal          ra, 24f
1:                jal          gp, 17f
2:                jal          ra, 20f
3:                jal          ra, 5f
4:                jal          ra, 12f
5:                jal          ra, 16f
6:                jal          ra, 22f
7:                jal          ra, 18f
8:                jal          a4, 0b
9:                jal          ra, 7b
10:               jal          t0, 9b
11:               jal          ra, 8b
12:               jal          ra, 19f
13:               jal          ra, 14f
14:               jal          ra, 21f
15:               jal          sp, 1b
16:               jal          t1, 23f
17:               jal          sp, 4b
18:               jal          ra, 2b
19:               jal          t1, 3b
20:               jal          ra, 15b
21:               jal          ra, 6b
22:               jal          ra, 11b
23:               jal          sp, 13b
24:               ori          s9, gp, 676
                  add          s0, a2, s8
                  beq          t6, a5, 495f
                  beq          t0, a6, 489f
main_8:           jal          ra, 22f
0:                jal          t1, 13f
1:                jal          s8, 11f
2:                jal          ra, 20f
3:                jal          ra, 24f
4:                jal          ra, 21f
5:                jal          ra, 9f
6:                jal          ra, 19f
7:                jal          s3, 23f
8:                jal          a7, 10f
9:                jal          ra, 4b
10:               jal          ra, 6b
11:               jal          ra, 18f
12:               jal          ra, 8b
13:               jal          ra, 7b
14:               jal          t1, 17f
15:               jal          ra, 27f
16:               jal          ra, 28f
17:               jal          t1, 26f
18:               jal          t1, 25f
19:               jal          a5, 5b
20:               jal          a7, 12b
21:               jal          ra, 3b
22:               jal          ra, 14b
23:               jal          s9, 15b
24:               jal          ra, 16b
25:               jal          t1, 2b
26:               jal          ra, 0b
27:               jal          t1, 1b
28:               jal          ra, 29f
29:               or           s2, s6, tp
                  nop
                  xor          s7, s10, t0
485:              slt          s11, s5, tp
                  andi         s1, a5, 874
487:              auipc        t0, 780157
                  srai         t6, s0, 11
489:              slt          t4, ra, a5
                  srli         tp, a1, 9
                  xori         t3, a2, 1397
                  blt          a6, s2, 496f
                  add          s5, s7, s4
                  sltu         s3, tp, s4
495:              bgeu         a2, s9, 514f
496:              or           s6, t5, sp
                  xor          t3, s1, s1
                  slli         s0, a1, 26
                  slti         a4, tp, 525
                  lui          ra, 864048
                  slti         s10, a1, 1254
                  blt          s9, s10, 519f
                  sub          s6, a1, a4
                  addi         t1, t4, -1951
                  lui          s1, 994204
                  blt          a0, s8, 517f
                  srai         s9, gp, 22
                  srai         a7, a3, 14
                  srl          tp, s7, a7
                  andi         ra, s6, 484
                  xor          t6, a1, sp
                  sltu         s11, s7, sp
                  sra          a6, s8, a1
514:              beq          s0, s2, 532f
                  ori          a5, s7, 1445
                  srli         s11, t5, 22
517:              srai         a2, s3, 29
                  srl          s9, a3, t6
519:              beq          s2, s9, 520f
520:              addi         s0, a0, -472
                  sltiu        s10, s1, 440
                  add          a6, a4, s7
                  bge          s0, t2, 533f
                  beq          t5, ra, 526f
                  bge          sp, a1, 544f
526:              slli         s11, s1, 4
                  srli         s4, ra, 7
                  beq          ra, s6, 535f
                  andi         s5, s5, 1761
                  bltu         a6, t6, 541f
                  nop
532:              blt          s2, t5, 537f
533:              bne          t4, s6, 540f
                  slt          s10, a1, s8
535:              sltu         t4, t3, a7
                  add          a0, gp, tp
537:              xor          t1, s4, a2
                  lui          s7, 386088
                  sltiu        s0, s10, 1753
540:              auipc        s8, 450778
541:              and          s3, ra, s11
                  sltiu        s7, t5, 552
                  nop
544:              auipc        t1, 433017
                  auipc        t4, 957596
                  bgeu         s9, s1, 549f
                  bge          s3, sp, 562f
                  xor          a5, s4, t4
549:              andi         s10, a3, 1675
                  srai         s1, a3, 4
                  beq          t3, t3, 569f
                  srl          gp, s3, a4
                  ori          sp, t3, 1096
                  bgeu         a4, s6, 561f
                  auipc        t6, 500431
                  srai         a6, s6, 0
                  sll          s4, s8, s0
                  andi         s10, s10, -1627
                  addi         s3, s10, 1421
                  or           s11, s9, t3
561:              bgeu         s4, t2, 575f
562:              srai         s11, t2, 9
                  nop
                  slti         a4, zero, 1170
                  andi         a5, t0, -1491
                  srai         s1, s11, 12
                  blt          s11, a6, 570f
                  sltiu        t4, sp, -2006
569:              bltu         s5, a0, 576f
570:              auipc        s8, 659757
                  sra          zero, a2, s5
                  lui          s8, 759305
                  ori          s8, ra, 792
                  or           a2, sp, a2
575:              or           ra, s11, t4
576:              andi         s3, sp, -1332
                  sltu         t4, s7, tp
                  bge          a0, t6, 582f
                  or           s8, a0, s8
                  ori          a5, t5, 18
                  bne          s2, a4, 594f
582:              srli         s0, t3, 7
                  lui          a0, 268368
                  srli         a5, a0, 17
                  bge          t0, t3, 603f
                  sltiu        t3, s9, 1844
                  sra          s1, a2, gp
                  sub          s2, a3, a4
                  sra          a4, sp, t1
                  or           t1, s4, t3
                  nop
                  beq          s6, t0, 596f
                  lui          a7, 436250
594:              slli         a4, a1, 3
                  lui          s5, 729150
596:              sll          a0, ra, s2
                  srai         t6, s4, 4
                  blt          a2, a1, 614f
                  lui          s2, 521313
                  bgeu         s5, t4, 619f
                  bltu         s2, a5, 602f
602:              sra          t4, a2, s5
603:              and          s9, s1, a3
                  nop
                  bgeu         a4, t6, 615f
                  nop
                  sub          a7, s10, t6
                  srli         t0, s8, 23
                  or           t1, s7, ra
                  slt          s7, a3, t1
                  slli         a5, s1, 5
                  slli         t2, a7, 27
                  addi         a2, tp, 1594
614:              srl          s0, ra, s10
615:              beq          s7, s5, 629f
                  sll          a5, zero, ra
                  or           s11, a1, s0
                  nop
619:              andi         t1, s1, -1060
                  add          gp, s4, s10
                  xori         a6, s7, -668
                  slti         s0, s4, -936
                  srli         t1, a7, 16
                  ori          t4, s7, 1618
                  sltiu        t1, t6, -585
                  bgeu         a6, ra, 628f
                  sub          t3, s7, t3
628:              xor          a7, t3, s11
629:              lui          s7, 775494
                  srl          gp, a4, t4
                  xor          s8, s7, t5
                  beq          s10, s9, 647f
                  bne          a4, a7, 650f
                  bne          a5, a0, 640f
                  slt          t3, a2, s1
                  srl          t0, t3, t5
                  srl          t6, t4, s3
                  sltiu        s6, s4, -416
                  slti         t2, s10, 1616
640:              nop
                  bgeu         t0, sp, 660f
                  sltiu        s6, s7, -1991
                  add          t4, s8, s9
                  nop
                  andi         sp, s10, 1075
                  sll          s3, t0, sp
647:              nop
                  or           t0, zero, a4
                  addi         s4, s2, 745
650:              bge          s2, s5, 658f
                  slli         gp, s11, 18
                  sll          sp, t5, a4
                  or           t2, s4, s3
                  and          a5, t3, s3
                  bgeu         s7, gp, 663f
                  bge          s1, s8, 662f
                  addi         a6, sp, -121
658:              slli         t4, s11, 30
                  auipc        a7, 972267
660:              bgeu         t6, a4, 661f
661:              slti         t4, s6, 1196
662:              and          ra, s5, ra
663:              xor          t1, a7, gp
                  beq          s10, s11, 668f
                  or           ra, sp, a3
                  sltiu        t2, ra, -286
                  sll          ra, ra, zero
668:              bltu         t2, s0, 669f
669:              or           t2, a1, t6
                  andi         t1, a7, -693
                  srl          s1, gp, a7
                  sra          s5, s9, a1
                  beq          a1, s9, 690f
                  slli         s4, t6, 26
                  beq          sp, a6, 679f
                  bgeu         a1, a7, 691f
                  sub          s6, s1, s9
                  sltu         t0, t2, sp
679:              auipc        t6, 331785
                  nop
                  slt          s7, s4, s2
                  and          s7, t6, s3
                  bltu         s3, a5, 691f
                  srl          t3, t2, t1
                  sra          s9, zero, s4
                  beq          s8, s5, 694f
                  slli         s3, gp, 13
                  srli         s4, t4, 16
                  srai         a0, s10, 4
690:              or           a0, a0, zero
691:              or           s10, a4, tp
                  srli         sp, s3, 27
                  bgeu         t1, s0, 694f
694:              sll          s10, s10, a7
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            and          t1, s10, sp
                  sub          s5, sp, s9
                  srai         a0, s4, 26
                  addi         a3, a3, -28
                  sra          s0, s0, a2
                  add          a5, t5, t5
                  sw           ra, 4(a3)
                  srl          s4, a7, zero
                  sltu         a7, gp, t3
                  slti         t6, zero, 690
                  srai         s10, sp, 22
                  la           s7, sub_3
                  sltiu        t6, t0, 1983
                  addi         s7, s7, 946
                  lui          s3, 755729
                  beq          t6, s1, sub_2_j5 #branch to jump instr
                  srai         t0, s2, 21
                  srli         a4, s3, 1
                  andi         s3, t4, 265
                  add          s5, s4, gp
                  srli         s11, s4, 9
                  addi         s0, t6, -593
sub_2_j5:         jalr         ra, s7, -946 #jump sub_2 -> sub_3
sub_2_0:          jal          ra, 11f
0:                jal          t1, 4f
1:                jal          s6, 23f
2:                jal          ra, 22f
3:                jal          tp, 5f
4:                jal          t1, 21f
5:                jal          ra, 10f
6:                jal          tp, 14f
7:                jal          ra, 24f
8:                jal          ra, 12f
9:                jal          ra, 16f
10:               jal          t1, 0b
11:               jal          ra, 18f
12:               jal          t2, 3b
13:               jal          ra, 8b
14:               jal          t3, 19f
15:               jal          ra, 13b
16:               jal          ra, 6b
17:               jal          ra, 25f
18:               jal          ra, 9b
19:               jal          ra, 20f
20:               jal          ra, 7b
21:               jal          t1, 1b
22:               jal          ra, 17b
23:               jal          ra, 2b
24:               jal          gp, 15b
25:               srai         s9, t0, 26
sub_2_6:          jal          ra, 5f
0:                jal          t1, 18f
1:                jal          t1, 23f
2:                jal          ra, 0b
3:                jal          s9, 4f
4:                jal          ra, 1b
5:                jal          ra, 16f
6:                jal          t1, 14f
7:                jal          s1, 21f
8:                jal          t3, 27f
9:                jal          s4, 13f
10:               jal          ra, 24f
11:               jal          ra, 3b
12:               jal          t1, 17f
13:               jal          ra, 15f
14:               jal          ra, 26f
15:               jal          sp, 22f
16:               jal          s11, 25f
17:               jal          t1, 9b
18:               jal          ra, 6b
19:               jal          sp, 7b
20:               jal          t1, 12b
21:               jal          tp, 8b
22:               jal          t1, 19b
23:               jal          t1, 28f
24:               jal          t1, 11b
25:               jal          gp, 20b
26:               jal          ra, 10b
27:               jal          tp, 2b
28:               sra          s1, gp, tp
sub_2_2:          jal          ra, 13f
0:                jal          ra, 6f
1:                jal          t1, 11f
2:                jal          a0, 16f
3:                jal          ra, 9f
4:                jal          t0, 15f
5:                jal          ra, 14f
6:                jal          ra, 12f
7:                jal          t2, 1b
8:                jal          t1, 17f
9:                jal          ra, 19f
10:               jal          t1, 4b
11:               jal          ra, 5b
12:               jal          ra, 8b
13:               jal          s6, 2b
14:               jal          sp, 10b
15:               jal          ra, 3b
16:               jal          ra, 0b
17:               jal          ra, 18f
18:               jal          ra, 7b
19:               xori         tp, a5, 1680
sub_2_5:          jal          ra, 10f
0:                jal          ra, 11f
1:                jal          a2, 12f
2:                jal          sp, 14f
3:                jal          gp, 1b
4:                jal          ra, 6f
5:                jal          t1, 13f
6:                jal          ra, 9f
7:                jal          t2, 5b
8:                jal          ra, 3b
9:                jal          ra, 8b
10:               jal          ra, 4b
11:               jal          ra, 2b
12:               jal          ra, 7b
13:               jal          s6, 0b
14:               sub          s11, a0, sp
sub_2_4:          jal          ra, 19f
0:                jal          t1, 12f
1:                jal          t4, 8f
2:                jal          ra, 10f
3:                jal          ra, 23f
4:                jal          s8, 15f
5:                jal          a7, 6f
6:                jal          ra, 4b
7:                jal          a2, 18f
8:                jal          ra, 16f
9:                jal          ra, 3b
10:               jal          sp, 22f
11:               jal          s3, 0b
12:               jal          ra, 21f
13:               jal          s4, 11b
14:               jal          t1, 17f
15:               jal          t1, 20f
16:               jal          ra, 7b
17:               jal          ra, 1b
18:               jal          t2, 5b
19:               jal          t1, 14b
20:               jal          ra, 2b
21:               jal          ra, 24f
22:               jal          t1, 9b
23:               jal          ra, 13b
24:               sub          s3, tp, s9
                  srai         a0, t2, 18
                  addi         t6, s5, 1044
                  bgeu         s2, t4, 3f
3:                sll          t6, a4, s6
                  sra          a6, t2, s0
                  sltiu        a6, s7, 1137
                  xori         ra, s6, -574
                  andi         s4, a4, 989
                  add          t0, a7, s10
                  sll          s3, a7, t1
                  srli         s0, a1, 0
                  ori          sp, a7, -501
                  sll          a4, s2, a3
                  beq          s0, tp, 27f
                  nop
                  srai         s8, tp, 22
                  ori          s6, a4, -1784
                  lui          a2, 929008
                  addi         a6, t6, -226
                  nop
                  nop
                  slli         s6, t2, 28
                  srai         s9, sp, 25
                  beq          t2, a1, 36f
                  or           a2, ra, s8
                  srai         s3, s3, 2
                  andi         a7, sp, 637
27:               beq          ra, s7, 29f
                  srai         a6, a1, 2
29:               sub          a6, t0, s10
                  srl          ra, a5, t0
                  xor          a5, s9, s3
                  sltu         ra, a1, sp
                  add          s0, sp, a6
                  slt          a4, zero, t0
                  sltu         a4, t0, a1
36:               slti         s5, a6, 917
                  bne          a2, s10, 42f
                  or           s2, s3, s11
                  ori          a4, t0, 1637
                  ori          s10, s4, 266
                  bne          t6, t1, 60f
42:               sll          s7, a3, zero
                  slti         s4, a3, 1044
                  add          a4, t5, a0
                  ori          t6, s2, -1131
                  slti         s5, s2, 1213
                  sll          ra, zero, a1
                  or           s3, t4, t4
                  or           t1, t1, a6
                  sra          zero, s7, s2
                  beq          s10, t3, 67f
                  slti         s0, tp, -1797
                  andi         s7, a4, 1506
                  sra          s5, t3, tp
                  slti         s2, a2, 1199
                  srli         zero, s11, 14
                  xori         zero, s1, -1620
                  sub          s7, tp, zero
                  addi         zero, s0, 186
60:               srai         a0, tp, 13
                  bltu         s8, a1, 63f
                  sub          t1, s4, s4
63:               bge          sp, a1, 64f
64:               add          s7, t2, gp
                  xor          s6, s3, a3
                  xori         s3, zero, 1093
67:               slt          s4, a3, s7
                  slli         sp, a7, 20
                  or           s7, a6, s1
                  add          ra, s10, gp
                  add          s11, a1, a1
                  and          s0, a3, a1
                  sra          a2, t4, a2
                  sltiu        s6, s10, -1998
                  sltiu        tp, s3, 599
                  xori         s7, s11, 2004
                  lui          s10, 893034
                  addi         s9, zero, -544
                  srli         a0, t2, 10
                  sltu         a5, a6, zero
                  addi         s7, ra, 1870
                  sltiu        s11, s0, 535
                  blt          s7, s7, 84f
84:               sltu         t2, s5, a5
                  sra          t1, a3, a6
                  sll          gp, a6, s11
                  beq          zero, ra, 90f
                  lui          t3, 115854
                  lui          s2, 115741
90:               slt          t0, s7, s11
                  xori         tp, t3, 968
                  beq          s5, t0, 112f
                  addi         t4, s8, -1366
                  blt          a1, t5, 106f
                  nop
                  slti         s11, ra, 1606
                  slt          t0, t1, s6
                  sub          t6, s10, a0
                  srli         gp, a7, 15
                  sltu         sp, ra, gp
                  auipc        s10, 811060
                  srl          t1, s8, t1
                  xori         sp, s5, -1185
                  slt          s8, s2, s2
                  ori          s5, t4, 254
106:              beq          a0, t0, 118f
                  sub          t2, tp, t4
                  slt          a7, s8, a4
                  sltiu        a6, t4, -475
                  sra          s1, s5, s9
                  srai         gp, a1, 1
112:              auipc        gp, 154845
                  or           a5, t1, a2
                  addi         zero, s5, 1093
                  sltiu        a0, s11, -957
                  srl          s1, a1, s9
                  xor          zero, tp, a1
118:              bltu         s3, tp, 135f
                  beq          s9, s10, 135f
                  andi         tp, s3, -1210
                  slti         s5, s7, 1960
                  nop
                  slli         a7, a1, 15
                  slt          t6, s11, t4
                  slti         s7, gp, 1607
                  bne          t6, s5, 138f
                  and          a2, t6, tp
                  srl          a4, sp, a0
                  bltu         a4, a7, 134f
                  bne          gp, tp, 137f
                  bge          t0, s11, 149f
                  or           s10, a0, s0
                  xor          a7, s6, s9
134:              srli         s3, s5, 15
135:              add          a2, s10, a1
                  xori         s1, t6, -789
137:              sltiu        s2, t4, 443
138:              ori          s0, a0, -452
                  slli         s4, sp, 0
                  slti         a6, a0, -1195
                  addi         s0, s2, -1002
                  sra          a4, s2, s2
                  srl          s0, s5, a7
                  xor          s1, a4, ra
                  xori         t6, a2, 606
                  andi         s9, a5, -1316
                  andi         a7, s5, 481
                  addi         s6, zero, 1041
149:              add          s10, s8, tp
                  bne          a5, a2, 155f
                  slt          a5, a7, a4
                  srl          a7, t1, t5
                  bge          s0, a3, 158f
                  sra          a5, t5, t3
155:              bltu         s10, ra, 175f
                  beq          t2, ra, 161f
                  sra          t3, t4, a2
158:              slli         gp, zero, 25
                  srai         a2, s7, 16
                  nop
161:              auipc        a5, 969347
                  blt          s4, t1, 166f
                  slt          s8, a7, a1
                  and          s4, a2, t0
                  or           s4, s2, t0
166:              sltiu        zero, s4, 1048
                  addi         t2, t1, -980
                  nop
                  addi         tp, t0, 293
                  auipc        a0, 391308
                  sltiu        sp, s4, -2048
                  lui          s3, 55329
                  lui          a5, 928574
                  andi         a2, s3, 2023
175:              sltiu        t1, s0, -518
                  or           tp, s2, s8
                  slti         s9, zero, -209
                  bgeu         a0, a6, 185f
                  andi         s1, t6, 961
                  add          s4, sp, t2
                  xor          s7, s11, a0
                  add          t1, t6, sp
                  nop
                  slt          s7, s0, a7
185:              andi         s0, s3, -217
                  sltiu        s3, t3, -226
                  bge          zero, s10, 192f
                  bge          t4, a3, 195f
                  beq          s2, a7, 200f
                  bltu         t6, t0, 196f
sub_2_1:          jal          ra, 0f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          ra, 4f
3:                jal          t0, 7f
4:                jal          ra, 6f
5:                jal          ra, 11f
6:                jal          t1, 5b
7:                jal          ra, 2b
8:                jal          t3, 1b
9:                jal          ra, 3b
10:               jal          ra, 9b
11:               addi         a2, s11, 2024
                  ori          ra, a4, 475
192:              or           a0, s10, a3
                  beq          a7, s0, 195f
                  blt          t6, t6, 214f
195:              srli         s11, s10, 9
196:              lui          s0, 694874
                  and          t6, s0, s10
                  and          s10, s0, s3
                  lui          s10, 317598
200:              bne          gp, a7, 213f
                  nop
                  auipc        a5, 51531
                  add          gp, tp, s7
                  xori         t3, t6, -1954
                  slti         t2, t4, -1637
                  bge          a4, s4, 207f
207:              xori         a7, t4, 1352
                  sub          t0, t6, s8
                  bgeu         zero, a5, 216f
                  xori         s0, a0, -524
                  and          s5, a5, s2
                  sll          ra, sp, a3
213:              slt          s5, t4, sp
214:              and          tp, t2, t3
                  srl          s7, t1, s11
216:              auipc        t2, 190838
                  and          ra, s2, s6
                  nop
                  bne          a3, t3, 226f
                  xori         t0, a6, 1119
                  auipc        t2, 705439
                  bltu         s3, s5, 240f
                  slti         s5, s9, -319
                  sll          t4, a2, tp
                  nop
226:              srl          a0, s8, a7
                  sltiu        sp, s7, -1022
                  slti         t1, t6, -499
                  sltu         ra, t1, t3
                  addi         t2, s10, -2046
                  srli         a6, ra, 5
                  sltu         s11, a4, t4
                  and          t1, s9, s0
                  slti         t2, s6, 1249
                  bgeu         a4, ra, 251f
                  or           s9, s8, t6
                  sub          s6, s3, s3
                  xori         t4, a5, -1207
                  auipc        s0, 41460
240:              bne          s5, s8, 245f
                  ori          sp, zero, -381
                  xori         s7, s11, 1588
                  sltiu        a5, s5, -322
                  xori         a5, t4, -1838
245:              slti         s0, a7, -1337
                  srai         s11, t0, 3
                  sltiu        s2, a0, -1243
                  xori         a4, s11, 1015
                  bne          t5, t6, 254f
                  blt          sp, gp, 262f
251:              auipc        s9, 931562
                  lui          s8, 1007869
                  bne          s1, s7, 256f
254:              sltiu        a5, s7, -184
                  sra          t1, s8, ra
256:              blt          t3, a0, 260f
                  auipc        s2, 288166
                  slt          s9, t6, gp
                  bge          a6, a3, 271f
260:              bge          a6, a3, 261f
261:              ori          a2, t4, -1719
262:              bgeu         s5, a4, 273f
                  bne          t6, a0, 264f
sub_2_3:          jal          ra, 3f
0:                jal          tp, 18f
1:                jal          s2, 20f
2:                jal          ra, 13f
3:                jal          ra, 15f
4:                jal          ra, 23f
5:                jal          t1, 16f
6:                jal          ra, 0b
7:                jal          tp, 2b
8:                jal          a6, 19f
9:                jal          ra, 4b
10:               jal          t4, 9b
11:               jal          s5, 24f
12:               jal          ra, 14f
13:               jal          s1, 10b
14:               jal          ra, 5b
15:               jal          tp, 12b
16:               jal          ra, 21f
17:               jal          a6, 1b
18:               jal          t1, 25f
19:               jal          ra, 22f
20:               jal          sp, 6b
21:               jal          ra, 11b
22:               jal          t1, 7b
23:               jal          t1, 17b
24:               jal          ra, 8b
25:               jal          s10, 26f
26:               jal          t1, 27f
27:               srli         t6, t4, 26
264:              lui          t2, 326053
                  bge          s11, s3, 281f
                  slti         gp, t0, -275
                  sub          s4, s6, s6
                  slt          s3, t6, s6
                  sltiu        s4, s5, 2000
                  or           t2, s7, a1
271:              bltu         s0, a7, 276f
                  sltiu        t3, t2, 1625
273:              xor          sp, s3, a1
                  ori          tp, s7, 1179
                  lui          s9, 579389
276:              bne          s2, s8, 281f
                  bge          t6, s9, 291f
                  sltu         t1, ra, s9
                  sll          a6, a4, t2
                  srai         t2, zero, 20
281:              nop
                  sltiu        t4, s0, 1456
                  srl          gp, ra, tp
                  sll          ra, zero, s4
                  auipc        t1, 401025
                  bgeu         a0, s6, 288f
                  xor          s10, a5, s9
288:              beq          a5, ra, 293f
                  sltu         s9, s8, ra
                  xor          s10, sp, a5
291:              or           t2, s10, s10
                  sltu         s6, t2, a1
293:              lui          s3, 740880
                  slti         s0, a1, 67
                  bge          s6, a6, 312f
                  slti         a5, a7, 713
                  xor          t6, s7, t5
                  auipc        a5, 931362
                  ori          s2, s7, -2045
                  slt          s7, t1, t0
                  slli         s4, a4, 9
                  or           t4, ra, s9
                  add          t1, t5, s10
                  slti         t1, sp, -1143
                  blt          a0, a6, 317f
                  or           t4, t3, s0
                  addi         s11, s11, -1534
                  or           s6, gp, t5
                  bltu         t2, t4, 329f
                  xori         t3, a4, -1724
                  add          t1, gp, a0
312:              addi         s8, s3, 1610
                  slti         s2, tp, -719
                  sltu         s8, a5, t1
                  and          t4, a7, s0
                  bgeu         gp, a2, 321f
317:              slti         tp, t2, 607
                  slli         s8, zero, 19
                  auipc        a2, 338895
                  sra          a6, s9, t3
321:              slti         zero, t3, -1318
                  bge          a5, a3, 341f
                  blt          s0, s2, 329f
                  xori         t1, t4, -782
                  and          s4, s10, a4
                  bltu         s0, s5, 333f
                  sltu         t2, s7, a7
                  beq          s9, t5, 340f
329:              sra          t3, t2, a7
                  ori          zero, t3, -58
                  srli         sp, t3, 25
                  slti         sp, a3, -1049
333:              xor          t6, a3, t4
                  srli         a6, s5, 3
                  auipc        t2, 280487
                  blt          s8, t4, 349f
                  srai         s9, s2, 3
                  sltu         sp, s0, a0
                  andi         gp, gp, -1950
340:              sltu         sp, a0, a4
341:              xor          s7, a0, a4
                  slli         a6, s0, 27
                  srl          s6, s6, a4
                  srai         a2, t1, 5
                  slti         s2, t5, 123
                  bgeu         a5, t4, 349f
                  or           a4, t6, s0
                  sra          s2, t4, t4
349:              xori         s2, a7, 1067
                  lw           ra, 4(a3)
                  addi         s3, t6, 1127
                  addi         a3, a3, 28
                  ori          t2, zero, 1387
                  lui          t4, 70114
                  sra          zero, t0, t2
                  xori         s0, s2, -1177
                  slli         t0, a5, 1
                  nop
544:              addi x2, x1, 1
544:              jalr x2, x2, 0
sub_4:            addi         tp, s2, -26
                  sra          s9, a2, s2
                  and          sp, t1, a1
                  ori          t1, a0, 1310
                  add          a6, a5, tp
                  bltu         a6, t0, sub_4_stack_p
                  sll          a2, s10, s1
                  andi         s9, a0, -763
sub_4_stack_p:    addi         a3, a3, -60
                  xori         gp, tp, 1253
                  sw           ra, 4(a3)
                  or           zero, t5, s2
                  xor          a7, t6, a7
sub_4_32:         jal          ra, 5f
0:                jal          t1, 20f
1:                jal          ra, 13f
2:                jal          gp, 7f
3:                jal          ra, 21f
4:                jal          ra, 12f
5:                jal          t0, 14f
6:                jal          tp, 24f
7:                jal          ra, 8f
8:                jal          s5, 22f
9:                jal          ra, 19f
10:               jal          sp, 9b
11:               jal          ra, 17f
12:               jal          t1, 15f
13:               jal          t1, 10b
14:               jal          t1, 3b
15:               jal          ra, 18f
16:               jal          a4, 1b
17:               jal          s0, 4b
18:               jal          t1, 0b
19:               jal          ra, 2b
20:               jal          a5, 16b
21:               jal          ra, 23f
22:               jal          t1, 6b
23:               jal          ra, 11b
24:               slt          t0, a2, t1
sub_4_16:         jal          ra, 10f
0:                jal          s5, 1f
1:                jal          t1, 9f
2:                jal          ra, 5f
3:                jal          t2, 7f
4:                jal          s3, 8f
5:                jal          ra, 0b
6:                jal          sp, 12f
7:                jal          ra, 2b
8:                jal          t1, 13f
9:                jal          ra, 4b
10:               jal          s5, 6b
11:               jal          a6, 3b
12:               jal          ra, 11b
13:               sltu         t6, t1, a4
sub_4_19:         jal          ra, 1f
0:                jal          t1, 10f
1:                jal          ra, 26f
2:                jal          s11, 23f
3:                jal          ra, 16f
4:                jal          a6, 8f
5:                jal          t1, 3b
6:                jal          gp, 13f
7:                jal          a7, 27f
8:                jal          ra, 19f
9:                jal          ra, 22f
10:               jal          s11, 29f
11:               jal          ra, 5b
12:               jal          tp, 6b
13:               jal          t1, 30f
14:               jal          ra, 25f
15:               jal          t1, 4b
16:               jal          ra, 18f
17:               jal          tp, 11b
18:               jal          t1, 0b
19:               jal          tp, 7b
20:               jal          ra, 2b
21:               jal          t1, 17b
22:               jal          t1, 12b
23:               jal          ra, 14b
24:               jal          ra, 20b
25:               jal          s4, 28f
26:               jal          t1, 21b
27:               jal          t6, 24b
28:               jal          s6, 9b
29:               jal          ra, 15b
30:               addi         a4, t0, -1356
sub_4_12:         jal          ra, 7f
0:                jal          ra, 5f
1:                jal          s2, 11f
2:                jal          t1, 17f
3:                jal          ra, 15f
4:                jal          t1, 12f
5:                jal          ra, 10f
6:                jal          t1, 18f
7:                jal          ra, 0b
8:                jal          s3, 13f
9:                jal          s11, 19f
10:               jal          ra, 8b
11:               jal          t4, 3b
12:               jal          t1, 14f
13:               jal          ra, 2b
14:               jal          t1, 9b
15:               jal          ra, 16f
16:               jal          ra, 6b
17:               jal          t4, 1b
18:               jal          ra, 4b
19:               sltu         s6, s11, t5
sub_4_13:         jal          ra, 1f
0:                jal          t0, 6f
1:                jal          t1, 19f
2:                jal          gp, 16f
3:                jal          ra, 7f
4:                jal          ra, 2b
5:                jal          ra, 14f
6:                jal          t1, 27f
7:                jal          ra, 20f
8:                jal          ra, 15f
9:                jal          s9, 21f
10:               jal          t0, 5b
11:               jal          ra, 23f
12:               jal          ra, 26f
13:               jal          t1, 25f
14:               jal          t3, 9b
15:               jal          ra, 3b
16:               jal          ra, 12b
17:               jal          s10, 0b
18:               jal          ra, 22f
19:               jal          ra, 17b
20:               jal          a0, 10b
21:               jal          ra, 11b
22:               jal          ra, 4b
23:               jal          s5, 18b
24:               jal          ra, 8b
25:               jal          ra, 24b
26:               jal          ra, 28f
27:               jal          s9, 13b
28:               sra          s3, s2, s6
sub_4_30:         jal          ra, 13f
0:                jal          ra, 11f
1:                jal          s6, 27f
2:                jal          ra, 22f
3:                jal          t0, 0b
4:                jal          s1, 10f
5:                jal          ra, 26f
6:                jal          ra, 3b
7:                jal          ra, 20f
8:                jal          s7, 24f
9:                jal          ra, 4b
10:               jal          sp, 6b
11:               jal          t1, 19f
12:               jal          sp, 25f
13:               jal          a6, 18f
14:               jal          t1, 17f
15:               jal          t1, 9b
16:               jal          a6, 29f
17:               jal          ra, 28f
18:               jal          s6, 8b
19:               jal          ra, 12b
20:               jal          t1, 1b
21:               jal          ra, 5b
22:               jal          ra, 15b
23:               jal          ra, 2b
24:               jal          s5, 23b
25:               jal          s7, 21b
26:               jal          a0, 14b
27:               jal          ra, 16b
28:               jal          t1, 7b
29:               slti         s5, s4, -358
sub_4_26:         jal          ra, 16f
0:                jal          ra, 10f
1:                jal          t1, 15f
2:                jal          ra, 18f
3:                jal          ra, 11f
4:                jal          ra, 6f
5:                jal          ra, 13f
6:                jal          ra, 24f
7:                jal          ra, 2b
8:                jal          t1, 20f
9:                jal          t6, 21f
10:               jal          ra, 3b
11:               jal          s2, 19f
12:               jal          t1, 22f
13:               jal          ra, 17f
14:               jal          a5, 4b
15:               jal          t1, 12b
16:               jal          t2, 23f
17:               jal          tp, 8b
18:               jal          a7, 14b
19:               jal          ra, 1b
20:               jal          a6, 9b
21:               jal          ra, 7b
22:               jal          ra, 5b
23:               jal          t1, 0b
24:               srli         t1, t0, 16
sub_4_29:         jal          ra, 11f
0:                jal          a2, 3f
1:                jal          t1, 17f
2:                jal          t6, 6f
3:                jal          t1, 4f
4:                jal          t0, 10f
5:                jal          t6, 12f
6:                jal          ra, 20f
7:                jal          t4, 0b
8:                jal          tp, 22f
9:                jal          ra, 2b
10:               jal          t6, 1b
11:               jal          ra, 14f
12:               jal          ra, 9b
13:               jal          tp, 8b
14:               jal          ra, 24f
15:               jal          t1, 23f
16:               jal          a2, 15b
17:               jal          t6, 18f
18:               jal          ra, 5b
19:               jal          sp, 7b
20:               jal          a4, 13b
21:               jal          ra, 25f
22:               jal          ra, 16b
23:               jal          s10, 21b
24:               jal          t2, 19b
25:               sltu         s0, s10, sp
sub_4_11:         jal          ra, 10f
0:                jal          t1, 20f
1:                jal          ra, 13f
2:                jal          ra, 18f
3:                jal          ra, 7f
4:                jal          ra, 21f
5:                jal          ra, 17f
6:                jal          sp, 14f
7:                jal          ra, 19f
8:                jal          a5, 16f
9:                jal          s2, 24f
10:               jal          t0, 12f
11:               jal          t1, 27f
12:               jal          t1, 23f
13:               jal          s9, 4b
14:               jal          ra, 11b
15:               jal          ra, 5b
16:               jal          ra, 22f
17:               jal          ra, 29f
18:               jal          t1, 0b
19:               jal          ra, 9b
20:               jal          ra, 1b
21:               jal          ra, 15b
22:               jal          t1, 28f
23:               jal          t2, 6b
24:               jal          t1, 8b
25:               jal          t1, 2b
26:               jal          ra, 3b
27:               jal          ra, 26b
28:               jal          ra, 25b
29:               sra          s0, s1, a7
sub_4_6:          jal          ra, 5f
0:                jal          s3, 13f
1:                jal          t1, 24f
2:                jal          ra, 15f
3:                jal          ra, 26f
4:                jal          s8, 19f
5:                jal          s3, 7f
6:                jal          s2, 28f
7:                jal          ra, 25f
8:                jal          ra, 2b
9:                jal          ra, 8b
10:               jal          ra, 16f
11:               jal          t1, 18f
12:               jal          ra, 1b
13:               jal          ra, 21f
14:               jal          ra, 9b
15:               jal          t1, 27f
16:               jal          ra, 22f
17:               jal          ra, 23f
18:               jal          ra, 20f
19:               jal          t0, 3b
20:               jal          ra, 17b
21:               jal          t1, 12b
22:               jal          tp, 6b
23:               jal          ra, 0b
24:               jal          ra, 4b
25:               jal          ra, 14b
26:               jal          t1, 10b
27:               jal          ra, 11b
28:               addi         zero, t4, 1709
sub_4_22:         jal          ra, 9f
0:                jal          t1, 11f
1:                jal          s7, 13f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          t1, 0b
5:                jal          ra, 3b
6:                jal          t1, 5b
7:                jal          s9, 16f
8:                jal          ra, 4b
9:                jal          tp, 12f
10:               jal          ra, 15f
11:               jal          ra, 14f
12:               jal          ra, 1b
13:               jal          ra, 10b
14:               jal          t2, 2b
15:               jal          t1, 8b
16:               slt          s4, s6, ra
sub_4_31:         jal          ra, 10f
0:                jal          ra, 14f
1:                jal          t1, 16f
2:                jal          ra, 5f
3:                jal          s1, 1b
4:                jal          t1, 6f
5:                jal          a0, 18f
6:                jal          t1, 21f
7:                jal          a2, 12f
8:                jal          ra, 17f
9:                jal          ra, 0b
10:               jal          t1, 19f
11:               jal          ra, 4b
12:               jal          ra, 9b
13:               jal          t2, 22f
14:               jal          t1, 2b
15:               jal          ra, 11b
16:               jal          sp, 20f
17:               jal          t1, 13b
18:               jal          sp, 8b
19:               jal          gp, 15b
20:               jal          ra, 7b
21:               jal          gp, 3b
22:               srli         s6, a1, 18
sub_4_0:          jal          ra, 4f
0:                jal          t0, 2f
1:                jal          ra, 9f
2:                jal          ra, 10f
3:                jal          a2, 15f
4:                jal          ra, 14f
5:                jal          ra, 1b
6:                jal          s6, 11f
7:                jal          ra, 5b
8:                jal          ra, 16f
9:                jal          ra, 8b
10:               jal          a4, 7b
11:               jal          ra, 13f
12:               jal          ra, 0b
13:               jal          ra, 12b
14:               jal          tp, 3b
15:               jal          ra, 6b
16:               sltiu        s2, a0, -897
sub_4_25:         jal          ra, 9f
0:                jal          ra, 13f
1:                jal          ra, 4f
2:                jal          ra, 1b
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          ra, 0b
6:                jal          t1, 15f
7:                jal          t0, 6b
8:                jal          ra, 7b
9:                jal          s4, 3b
10:               jal          ra, 14f
11:               jal          ra, 12f
12:               jal          ra, 2b
13:               jal          ra, 11b
14:               jal          sp, 8b
15:               nop
sub_4_27:         jal          ra, 9f
0:                jal          t4, 2f
1:                jal          t1, 13f
2:                jal          s7, 8f
3:                jal          ra, 19f
4:                jal          ra, 21f
5:                jal          a7, 15f
6:                jal          t1, 17f
7:                jal          s7, 4b
8:                jal          t1, 5b
9:                jal          t1, 14f
10:               jal          t1, 0b
11:               jal          ra, 12f
12:               jal          t1, 18f
13:               jal          t1, 16f
14:               jal          ra, 1b
15:               jal          t1, 3b
16:               jal          s7, 10b
17:               jal          ra, 11b
18:               jal          t1, 20f
19:               jal          t1, 6b
20:               jal          ra, 23f
21:               jal          ra, 22f
22:               jal          ra, 24f
23:               jal          ra, 7b
24:               sltiu        s11, a7, 594
sub_4_17:         jal          ra, 4f
0:                jal          t1, 1f
1:                jal          gp, 7f
2:                jal          t1, 8f
3:                jal          gp, 11f
4:                jal          s11, 9f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          a2, 3b
8:                jal          ra, 10f
9:                jal          ra, 6b
10:               jal          ra, 5b
11:               xor          s10, zero, zero
sub_4_21:         jal          ra, 12f
0:                jal          a7, 19f
1:                jal          ra, 18f
2:                jal          t1, 13f
3:                jal          t1, 10f
4:                jal          ra, 17f
5:                jal          ra, 1b
6:                jal          ra, 11f
7:                jal          t1, 8f
8:                jal          gp, 6b
9:                jal          a2, 2b
10:               jal          s4, 0b
11:               jal          t1, 4b
12:               jal          ra, 15f
13:               jal          t4, 5b
14:               jal          s6, 7b
15:               jal          ra, 16f
16:               jal          ra, 14b
17:               jal          s2, 9b
18:               jal          t1, 3b
19:               srai         tp, zero, 10
sub_4_2:          jal          ra, 3f
0:                jal          ra, 4f
1:                jal          t1, 15f
2:                jal          t1, 11f
3:                jal          ra, 5f
4:                jal          ra, 26f
5:                jal          ra, 16f
6:                jal          a2, 14f
7:                jal          t1, 1b
8:                jal          ra, 24f
9:                jal          ra, 2b
10:               jal          s8, 25f
11:               jal          gp, 19f
12:               jal          a5, 23f
13:               jal          ra, 17f
14:               jal          ra, 10b
15:               jal          ra, 9b
16:               jal          ra, 7b
17:               jal          ra, 21f
18:               jal          s7, 12b
19:               jal          s9, 13b
20:               jal          a5, 8b
21:               jal          sp, 18b
22:               jal          s7, 20b
23:               jal          t1, 22b
24:               jal          t1, 6b
25:               jal          a0, 0b
26:               srl          tp, t1, s8
sub_4_5:          jal          ra, 10f
0:                jal          ra, 6f
1:                jal          s2, 25f
2:                jal          ra, 5f
3:                jal          t2, 20f
4:                jal          ra, 27f
5:                jal          ra, 29f
6:                jal          ra, 4b
7:                jal          ra, 21f
8:                jal          ra, 24f
9:                jal          ra, 17f
10:               jal          a6, 1b
11:               jal          s8, 18f
12:               jal          ra, 13f
13:               jal          ra, 30f
14:               jal          ra, 3b
15:               jal          ra, 2b
16:               jal          ra, 15b
17:               jal          s0, 26f
18:               jal          a7, 16b
19:               jal          t1, 0b
20:               jal          ra, 23f
21:               jal          ra, 28f
22:               jal          ra, 8b
23:               jal          ra, 9b
24:               jal          ra, 12b
25:               jal          ra, 11b
26:               jal          ra, 22b
27:               jal          t1, 14b
28:               jal          ra, 19b
29:               jal          s7, 7b
30:               andi         a2, s0, -962
sub_4_15:         jal          ra, 24f
0:                jal          ra, 8f
1:                jal          t1, 22f
2:                jal          ra, 3f
3:                jal          gp, 29f
4:                jal          a6, 2b
5:                jal          t1, 18f
6:                jal          t1, 12f
7:                jal          t1, 28f
8:                jal          ra, 14f
9:                jal          s4, 4b
10:               jal          t1, 23f
11:               jal          t1, 16f
12:               jal          ra, 17f
13:               jal          a7, 27f
14:               jal          ra, 7b
15:               jal          s9, 19f
16:               jal          t1, 13b
17:               jal          a5, 11b
18:               jal          ra, 15b
19:               jal          ra, 10b
20:               jal          s11, 21f
21:               jal          t1, 1b
22:               jal          ra, 5b
23:               jal          ra, 25f
24:               jal          ra, 20b
25:               jal          ra, 6b
26:               jal          t1, 9b
27:               jal          t1, 0b
28:               jal          ra, 26b
29:               ori          t3, t3, 1000
sub_4_23:         jal          ra, 8f
0:                jal          ra, 10f
1:                jal          ra, 12f
2:                jal          t1, 20f
3:                jal          t1, 6f
4:                jal          ra, 16f
5:                jal          t1, 4b
6:                jal          ra, 24f
7:                jal          s7, 15f
8:                jal          t1, 11f
9:                jal          ra, 7b
10:               jal          ra, 23f
11:               jal          t1, 18f
12:               jal          ra, 0b
13:               jal          ra, 17f
14:               jal          ra, 3b
15:               jal          ra, 21f
16:               jal          tp, 1b
17:               jal          s9, 9b
18:               jal          tp, 13b
19:               jal          ra, 22f
20:               jal          t1, 19b
21:               jal          ra, 2b
22:               jal          a0, 5b
23:               jal          ra, 14b
24:               srai         s10, t5, 17
sub_4_24:         jal          ra, 15f
0:                jal          gp, 4f
1:                jal          ra, 29f
2:                jal          ra, 14f
3:                jal          a5, 16f
4:                jal          ra, 5f
5:                jal          ra, 25f
6:                jal          ra, 3b
7:                jal          ra, 21f
8:                jal          ra, 10f
9:                jal          s4, 18f
10:               jal          s6, 13f
11:               jal          s9, 22f
12:               jal          s1, 23f
13:               jal          s5, 7b
14:               jal          t2, 11b
15:               jal          t1, 24f
16:               jal          ra, 20f
17:               jal          ra, 19f
18:               jal          s6, 1b
19:               jal          ra, 28f
20:               jal          ra, 12b
21:               jal          ra, 9b
22:               jal          s8, 27f
23:               jal          ra, 2b
24:               jal          t0, 0b
25:               jal          ra, 6b
26:               jal          ra, 30f
27:               jal          ra, 17b
28:               jal          t1, 8b
29:               jal          ra, 26b
30:               andi         s10, a1, -701
sub_4_8:          jal          ra, 18f
0:                jal          ra, 14f
1:                jal          ra, 9f
2:                jal          ra, 5f
3:                jal          ra, 13f
4:                jal          t1, 8f
5:                jal          a5, 0b
6:                jal          ra, 21f
7:                jal          s0, 19f
8:                jal          ra, 25f
9:                jal          ra, 17f
10:               jal          ra, 2b
11:               jal          t1, 4b
12:               jal          t2, 20f
13:               jal          s5, 23f
14:               jal          gp, 6b
15:               jal          t1, 16f
16:               jal          t1, 24f
17:               jal          ra, 15b
18:               jal          ra, 10b
19:               jal          t1, 1b
20:               jal          ra, 22f
21:               jal          ra, 12b
22:               jal          t1, 11b
23:               jal          ra, 26f
24:               jal          t1, 3b
25:               jal          ra, 7b
26:               addi         s9, s2, -595
sub_4_14:         jal          ra, 9f
0:                jal          s2, 4f
1:                jal          t1, 6f
2:                jal          s5, 7f
3:                jal          ra, 5f
4:                jal          ra, 2b
5:                jal          s7, 1b
6:                jal          s7, 8f
7:                jal          ra, 10f
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               sra          s2, ra, s7
sub_4_4:          jal          ra, 20f
0:                jal          t1, 7f
1:                jal          sp, 0b
2:                jal          ra, 11f
3:                jal          ra, 21f
4:                jal          t1, 1b
5:                jal          ra, 8f
6:                jal          ra, 16f
7:                jal          ra, 6b
8:                jal          t1, 12f
9:                jal          ra, 5b
10:               jal          t1, 2b
11:               jal          s10, 17f
12:               jal          ra, 19f
13:               jal          t0, 4b
14:               jal          ra, 13b
15:               jal          a2, 10b
16:               jal          ra, 15b
17:               jal          t6, 18f
18:               jal          ra, 9b
19:               jal          tp, 3b
20:               jal          s5, 14b
21:               xor          a5, a1, s2
                  beq          s0, a0, 11f
                  beq          s7, s4, 12f
                  ori          sp, s3, -1991
                  or           s0, t2, t4
                  add          sp, s7, sp
                  srl          s4, t5, s5
                  or           a7, s0, t5
                  nop
                  sll          s5, t0, a6
                  andi         s3, a6, -1568
                  xor          t4, s9, a4
11:               sltu         gp, ra, zero
12:               bge          s1, a1, 25f
                  bge          s3, sp, 29f
                  or           gp, ra, zero
                  addi         zero, s8, 1066
                  auipc        s6, 876445
                  and          a0, s2, a4
                  srl          a0, t1, s2
                  and          s10, s8, s9
                  slt          zero, a4, s7
                  slt          s6, a3, t6
                  or           sp, t0, s11
                  lui          t2, 673975
                  lui          ra, 779883
25:               sltu         s11, ra, a6
                  xori         t1, a3, 1202
                  sub          s2, t5, t5
                  bltu         t0, a0, 31f
29:               sra          a6, s6, s3
                  or           a4, t3, t4
31:               sltu         a4, s1, t1
                  beq          t4, t0, 50f
                  bne          s10, gp, 34f
34:               bne          s2, t1, 49f
                  sll          a7, s9, t2
                  xor          s7, s0, a7
sub_4_10:         jal          ra, 14f
0:                jal          ra, 15f
1:                jal          ra, 8f
2:                jal          t1, 9f
3:                jal          ra, 4f
4:                jal          ra, 13f
5:                jal          tp, 0b
6:                jal          t1, 7f
7:                jal          ra, 2b
8:                jal          t1, 6b
9:                jal          ra, 11f
10:               jal          t1, 16f
11:               jal          ra, 5b
12:               jal          ra, 1b
13:               jal          t1, 12b
14:               jal          s7, 3b
15:               jal          s11, 10b
16:               slli         t2, s7, 0
                  slti         s0, t2, -743
                  srai         t1, s6, 15
                  bne          a1, t5, 51f
                  sltiu        t3, t6, 1911
                  sltiu        s1, a1, -1959
                  addi         ra, t1, -911
                  bgeu         s0, t2, 46f
                  xori         s2, sp, -1636
                  xor          t1, s1, tp
46:               nop
                  sltiu        gp, t2, -1831
                  sub          t4, gp, sp
49:               slti         s1, s9, 2041
50:               ori          s8, tp, -534
51:               andi         gp, a5, -528
                  slli         zero, s0, 7
                  bgeu         sp, s3, 54f
54:               slt          sp, s8, ra
                  sra          a4, a4, s4
                  addi         t1, s2, -1184
                  sub          s9, a5, s7
                  xori         zero, t5, 69
                  lui          s1, 365178
                  andi         zero, a1, -2044
                  beq          s2, ra, 71f
                  slli         t4, t5, 21
                  slli         s9, s9, 16
                  auipc        s1, 251374
                  slti         zero, s0, 1700
                  nop
                  xori         a5, s4, 1310
                  andi         a7, s4, 1235
                  sub          a6, t1, s6
                  addi         a5, s9, -704
71:               sltu         s9, s10, a5
                  addi         s4, s5, -2042
                  bne          tp, s2, 81f
                  add          s4, s10, s3
                  auipc        gp, 459990
                  sltiu        s6, a3, 828
                  sltiu        a4, a7, 1912
                  sra          a5, t4, s0
                  sltu         t4, t4, s8
                  and          t3, a3, a2
81:               bne          t1, a0, 94f
                  slt          t6, t2, t3
                  andi         t0, s11, 1926
                  lui          s2, 975023
                  srl          s2, s3, a0
                  ori          t6, t0, 1744
                  bltu         s3, t0, 90f
                  and          s1, s5, t5
                  sltiu        t1, a7, 1259
90:               auipc        a0, 39014
sub_4_3:          jal          ra, 10f
0:                jal          s2, 6f
1:                jal          ra, 8f
2:                jal          s3, 13f
3:                jal          ra, 0b
4:                jal          ra, 11f
5:                jal          ra, 4b
6:                jal          s4, 1b
7:                jal          t1, 2b
8:                jal          ra, 9f
9:                jal          ra, 15f
10:               jal          ra, 7b
11:               jal          t1, 14f
12:               jal          t1, 16f
13:               jal          t1, 3b
14:               jal          ra, 12b
15:               jal          t1, 5b
16:               auipc        t4, 304835
                  bge          t2, a3, 103f
                  auipc        s1, 215975
                  xor          t6, tp, a2
94:               addi         s7, s10, 1526
                  addi         t3, s11, 1541
                  beq          a2, t5, 107f
                  bge          s6, t2, 103f
                  bne          s9, a1, 116f
                  bge          s11, a6, 101f
                  andi         s2, s4, -177
101:              and          zero, t5, a7
                  blt          t4, s8, 121f
103:              add          s8, a6, s2
                  beq          s6, a2, 119f
                  xor          a5, s4, ra
                  sub          zero, a0, s4
107:              bltu         s5, s9, 123f
                  sltiu        t6, a7, 399
                  bne          s9, zero, 125f
                  addi         a0, sp, 575
                  sltu         s0, s7, s0
                  nop
                  sltiu        t1, s2, 1244
                  srli         s7, t3, 10
                  slli         tp, a4, 14
116:              beq          s2, zero, 130f
                  andi         s5, ra, -1906
                  sltiu        s10, t3, 17
119:              andi         t4, s7, 1503
                  bge          a7, t6, 126f
121:              or           gp, gp, s10
                  sltu         tp, a2, s1
123:              bge          s3, tp, 140f
                  xori         s2, a2, 92
125:              add          s8, s11, a7
126:              sltu         t4, s6, s10
                  xor          s6, ra, t6
                  bne          s7, t0, 139f
                  slt          s3, a0, s2
130:              ori          t1, gp, -724
                  bge          s9, s4, 151f
                  blt          a4, t5, 151f
                  sub          gp, a2, t5
                  bge          t5, t3, 150f
                  add          a6, s8, t4
                  sub          s6, a0, s7
                  slti         t0, tp, 1985
                  blt          t2, s11, 149f
139:              srli         sp, sp, 31
140:              bltu         t0, a1, 152f
                  nop
                  sll          t1, s0, s2
                  auipc        s2, 313250
                  lui          t4, 162115
                  sra          s11, gp, gp
                  slti         a6, a1, -1998
                  bltu         a1, s6, 160f
                  bne          t6, s8, 166f
149:              addi         s2, tp, -1713
150:              bge          t3, zero, 165f
151:              bgeu         t3, a2, 157f
152:              xor          t4, t2, s9
                  bne          a6, a3, 171f
                  bgeu         a1, a2, 155f
155:              srli         s11, t2, 16
                  lui          zero, 920859
157:              sltiu        s0, s3, -1882
                  sra          a7, s10, s11
                  sltiu        t1, s10, -1409
160:              bltu         t2, gp, 163f
                  srl          a4, a0, t2
                  lui          t3, 294175
163:              srli         gp, a2, 12
                  bge          ra, s4, 170f
165:              xor          gp, s5, a5
166:              srl          a4, t1, s9
                  slli         gp, s1, 11
                  sra          s1, a6, a6
                  bgeu         t3, s5, 185f
170:              auipc        s1, 835300
171:              lui          a6, 674953
                  slli         s8, t3, 31
                  srli         a2, s4, 19
                  srli         a6, t6, 22
                  srl          s7, a1, a1
                  sltu         s11, s7, t3
                  addi         s6, sp, -692
                  and          s4, zero, gp
                  sub          t6, sp, t5
                  add          t4, s10, a1
                  xor          s3, s11, a1
                  bge          a7, s2, 184f
                  and          t6, s0, t0
184:              auipc        a4, 935847
185:              sltiu        sp, a0, -715
                  sub          s1, a7, a3
                  sltu         a4, t0, a4
                  sltiu        a5, a3, -950
                  blt          s4, a5, 208f
                  beq          a4, s10, 193f
                  xor          zero, t1, tp
                  bge          a0, s9, 193f
193:              or           sp, s1, a7
                  sra          s4, a7, s0
                  slt          t1, s4, a1
                  nop
                  slti         s9, s0, -1174
                  and          zero, s7, s1
                  sltiu        a7, s0, -550
                  sub          ra, a2, s2
                  add          s5, a5, a5
                  bne          s3, s8, 216f
                  nop
                  xori         s4, s9, -531
                  sra          s7, s0, a2
                  and          zero, s3, sp
                  blt          a6, ra, 222f
208:              sll          gp, s6, s11
                  beq          t1, t5, 228f
                  xor          ra, a0, s9
                  bge          a4, a2, 228f
                  xor          zero, a2, gp
                  srl          s2, ra, t3
                  sltu         a2, a6, a0
                  bltu         a1, t6, 235f
216:              sll          t2, sp, gp
                  ori          sp, gp, 558
                  auipc        ra, 1014296
                  ori          zero, t1, 126
                  srl          a2, s2, t2
                  lui          s10, 794976
222:              bge          a0, a3, 233f
                  beq          s1, zero, 231f
                  ori          zero, s0, 388
                  xori         a4, s1, 305
                  add          a7, a2, s1
                  xori         t4, s1, -860
228:              auipc        t2, 269835
                  sltiu        a4, s7, -1789
                  blt          s9, gp, 242f
231:              addi         zero, a5, 25
                  bge          a7, s11, 245f
233:              srli         s7, a6, 24
                  xor          a5, sp, tp
235:              ori          a0, s6, 566
                  bgeu         sp, s0, 247f
                  nop
                  sra          t3, zero, a4
                  slti         t4, s8, 206
                  sub          t1, s5, a2
                  bne          a1, s10, 251f
242:              xor          a2, t3, a2
                  nop
                  bge          t5, a7, 255f
245:              bge          s0, t4, 261f
                  slt          t6, s4, s5
247:              ori          zero, t6, 621
                  srai         t6, a2, 31
                  add          s10, t1, s6
                  nop
251:              auipc        s5, 596718
                  sltiu        s9, s0, 658
                  slli         s7, sp, 29
                  srai         s2, a0, 21
255:              srai         t2, a1, 31
                  sub          gp, s8, t5
                  slt          s0, a5, t5
                  add          ra, a1, t1
                  sll          gp, a3, t5
                  sub          t6, s6, gp
261:              and          s1, t2, s5
                  slt          a5, t2, t4
                  auipc        a4, 821929
                  add          s7, a3, t6
                  lui          s1, 316400
                  or           sp, a1, s11
                  ori          tp, s11, 1780
                  srl          s1, t4, zero
                  srai         gp, a7, 9
                  xor          s7, t6, a4
                  sub          tp, t6, a1
                  srai         a2, a6, 9
                  xor          s3, a4, a1
                  bge          a7, s1, 277f
                  sltiu        a7, gp, -931
                  bltu         a1, tp, 292f
277:              srl          t2, tp, s8
                  srl          a2, a7, t3
                  sltiu        s0, a7, 2016
                  slt          t1, s11, t3
                  lui          zero, 943222
                  and          a6, s10, s4
                  nop
                  xori         t2, a1, 898
                  auipc        t4, 1000765
                  add          a2, s7, s6
                  xor          gp, t0, ra
                  xor          a4, gp, s5
                  beq          a6, s11, 304f
                  xor          ra, gp, s5
                  bge          t5, tp, 309f
292:              beq          s0, a2, 312f
                  xori         t0, s10, -686
                  auipc        t2, 561239
                  bge          t3, t3, 310f
                  srai         t1, s8, 29
                  beq          s11, zero, 298f
298:              and          t3, t0, t4
                  ori          t2, t3, -127
                  bne          t4, s4, 306f
                  or           s0, s3, s0
                  xor          t3, a0, a2
                  bne          tp, a3, 313f
304:              sra          s4, s5, t6
                  bgeu         s6, t6, 316f
306:              blt          t3, a2, 318f
                  sltu         a4, t5, s1
                  auipc        tp, 346658
309:              srli         tp, t6, 16
310:              slti         a0, t2, 1740
                  sltu         t1, s10, a6
312:              sub          s8, s10, t6
313:              or           s10, a7, a4
                  addi         s6, t2, -1744
                  srai         s3, s11, 19
316:              auipc        tp, 902519
                  nop
318:              addi         t2, a7, 1567
                  ori          s11, t1, 187
                  lui          s0, 978363
                  bge          a1, s11, 340f
                  slt          a4, t3, t2
                  slti         s11, s9, 1934
                  bne          s1, a6, 340f
                  bge          a4, t0, 328f
                  sra          s11, s7, zero
                  blt          gp, s9, 333f
328:              auipc        t1, 1047743
                  or           a5, t6, t3
                  bge          zero, gp, 343f
                  blt          a2, s10, 339f
                  slt          s9, t2, a4
333:              sll          s3, t3, t1
                  slti         s11, gp, -100
                  sltu         s7, a4, t2
                  bne          s10, s6, 339f
                  sra          s8, a5, ra
                  add          s0, s4, a3
339:              slt          s6, a2, s3
340:              sltu         s0, s5, s7
                  bltu         ra, s6, 342f
342:              srai         s11, t2, 3
343:              ori          a2, s0, -2001
                  auipc        s0, 94190
                  lui          t1, 678999
                  nop
                  bne          s0, t1, 358f
                  slt          s7, zero, a5
                  addi         s8, a2, -610
                  sltu         a6, s2, a4
                  blt          a2, a7, 368f
                  bltu         a0, s6, 370f
                  sll          s7, s5, zero
                  nop
                  bge          a5, t6, 358f
sub_4_28:         jal          ra, 20f
0:                jal          ra, 21f
1:                jal          ra, 7f
2:                jal          ra, 0b
3:                jal          s9, 22f
4:                jal          ra, 11f
5:                jal          ra, 2b
6:                jal          ra, 9f
7:                jal          t1, 26f
8:                jal          a7, 16f
9:                jal          ra, 8b
10:               jal          sp, 14f
11:               jal          s5, 5b
12:               jal          t1, 3b
13:               jal          ra, 12b
14:               jal          s11, 4b
15:               jal          t1, 18f
16:               jal          s11, 25f
17:               jal          ra, 6b
18:               jal          ra, 23f
19:               jal          ra, 24f
20:               jal          t1, 13b
21:               jal          ra, 15b
22:               jal          t1, 17b
23:               jal          t1, 1b
24:               jal          ra, 10b
25:               jal          t1, 19b
26:               and          a6, tp, a6
                  blt          s7, a7, 367f
                  bge          s5, a7, 370f
358:              add          s9, s11, a4
                  nop
                  bge          sp, t2, 372f
                  sub          s2, t1, t6
                  nop
                  srai         sp, s1, 3
                  beq          a6, t5, 378f
                  beq          sp, s11, 367f
                  slti         s2, t1, -1225
367:              bge          a5, s8, 386f
368:              sltu         a7, t2, s7
                  bge          a6, a5, 385f
370:              bge          s1, a0, 381f
                  lui          s10, 1042174
372:              srai         a2, t4, 15
                  slti         s2, a5, -2003
                  xor          s8, s2, a0
                  srli         t3, a7, 13
                  srli         s3, a0, 29
                  or           s6, t6, t2
378:              add          a4, t3, s8
                  bge          sp, tp, 382f
                  auipc        t6, 357773
381:              sll          s4, t5, s6
382:              srl          a0, sp, s1
                  slt          a4, a3, s9
                  srai         s5, s8, 13
385:              lui          a4, 582277
386:              xori         s9, s1, 364
                  sub          t3, s9, gp
                  sub          t0, s0, a1
                  xor          a6, s6, a6
                  and          t0, a7, t6
                  addi         t1, s2, -407
                  sll          ra, a0, tp
                  srli         s9, s7, 25
                  sltu         s10, s6, gp
                  xor          sp, s9, a3
                  slt          sp, a0, sp
                  srl          ra, a5, sp
                  srl          t6, a1, s2
                  lui          s5, 78695
                  bge          t4, sp, 410f
                  blt          t3, zero, 414f
                  bgeu         zero, ra, 404f
                  sra          s10, t1, t2
404:              bltu         s1, s5, 417f
                  sra          tp, a1, s8
                  srl          t6, s2, a5
                  sltiu        sp, gp, 151
                  sltiu        s6, s0, 334
                  bltu         t0, a0, 412f
410:              srli         s10, s3, 3
                  bgeu         s6, zero, 422f
412:              bgeu         s10, ra, 427f
                  srl          a5, ra, gp
414:              slli         t4, t6, 29
                  sll          s1, t1, s3
                  addi         t0, a1, -1927
417:              and          s10, a1, a2
                  sub          t3, a2, a0
                  xori         ra, a5, -754
                  sltiu        s4, sp, 358
                  srli         ra, s10, 12
422:              srli         t3, a7, 25
                  srli         t2, s7, 0
                  xor          s3, a3, s1
                  bne          a4, s10, 445f
                  ori          s5, a3, -250
427:              sll          s10, t2, t0
                  sra          t0, a6, s2
                  bgeu         a4, a1, 441f
                  bge          tp, a6, 431f
431:              srli         s9, s0, 4
                  ori          t2, s8, 1211
                  blt          t0, t4, 452f
                  sltu         t3, t2, s8
                  bltu         s8, a6, 453f
                  bne          t3, a2, 447f
                  slt          s1, s8, t3
                  or           ra, s11, s7
                  addi         s1, a4, -1998
                  sltu         t3, gp, s6
441:              sltu         s10, tp, s1
                  xori         t4, s10, 1522
                  srai         s7, s4, 4
                  ori          tp, zero, -345
445:              sub          s9, s3, ra
                  sltu         s1, a5, t0
447:              addi         a7, s9, 1452
                  ori          a4, a4, -1503
                  srai         a7, t1, 17
                  sltiu        s10, s3, -1936
                  lui          s7, 730040
452:              xor          s9, a1, a4
453:              slt          s7, s8, a7
                  xori         s0, a5, 812
                  xori         s0, t3, -1382
                  ori          t2, t5, -1461
                  xori         t2, ra, 765
                  sub          sp, t4, s3
                  sll          a0, s2, s6
                  nop
                  bgeu         s3, t0, 472f
                  xori         gp, a5, 1547
                  sub          t4, s9, s4
                  ori          s10, s2, -621
                  bgeu         s10, s11, 481f
                  blt          s6, s11, 484f
                  srl          t3, tp, s3
                  slli         tp, s3, 21
                  srai         t3, s0, 1
                  sub          s2, s9, a1
                  bge          t2, a2, 479f
472:              bge          s7, s7, 489f
                  sltiu        a7, a3, -1596
                  or           t0, a0, t0
                  nop
                  bge          s2, s4, 491f
                  srl          a4, s5, t2
                  slti         a6, a3, 356
479:              blt          s6, s1, 485f
                  sub          s11, a7, tp
481:              bgeu         s0, a2, 493f
                  bge          a2, a1, 483f
483:              slti         s4, a2, 234
484:              slli         tp, sp, 19
485:              lui          s8, 368688
                  bgeu         zero, s6, 502f
                  add          t1, t4, t2
                  or           s9, t1, t6
489:              add          t3, s1, a3
                  slt          s10, s1, s10
491:              srli         s8, t5, 8
                  slti         a5, s4, 467
493:              srl          sp, t4, t5
                  bne          t4, s8, 500f
                  lui          a4, 567866
                  xori         t0, tp, 73
                  or           s9, a2, ra
                  beq          a4, a4, 512f
                  bgeu         a1, t1, 515f
500:              slti         a5, s11, 1612
                  sub          t0, s5, s2
502:              lui          t4, 1028187
                  srl          s9, t4, t5
                  nop
                  srli         s8, tp, 2
                  andi         s0, tp, -1947
                  sub          a2, s9, s2
                  srai         sp, a3, 26
                  ori          s7, s0, -67
                  andi         s9, tp, -1701
                  ori          s5, zero, -524
512:              addi         t1, s10, 597
                  xori         a4, a7, 371
                  srai         t4, a7, 28
515:              sltiu        zero, s3, 1738
                  xori         s6, s4, -1058
                  xor          a2, a0, s11
                  lui          ra, 155888
                  sub          t0, a1, s7
                  auipc        a2, 330502
                  bltu         a3, a1, 524f
                  sll          s9, gp, s8
                  bgeu         s10, t0, 542f
524:              srai         s5, s9, 31
                  ori          s5, s7, 1336
                  and          a4, t0, a6
                  add          a0, s7, ra
                  xor          tp, a4, ra
                  and          s2, t2, zero
                  sltiu        a6, t1, 520
                  srl          s7, s2, tp
                  sub          a5, s1, s0
                  bne          ra, a6, 544f
                  srli         s8, s1, 1
                  bne          t5, t0, 551f
                  auipc        sp, 384055
                  blt          t1, t3, 550f
                  add          a2, a5, s10
                  add          s7, s5, a1
                  xori         s6, s2, 506
                  blt          a1, a3, 552f
542:              srl          s8, gp, gp
                  bge          a2, s9, 558f
544:              blt          t5, a4, 550f
                  andi         s11, t3, -1523
                  bne          tp, s8, 557f
                  blt          t3, s2, 564f
                  bge          s7, s4, 556f
                  andi         a5, t0, 1248
550:              blt          s6, zero, 564f
551:              sltu         tp, s9, s7
552:              lui          ra, 318804
                  xor          s9, a7, s0
                  beq          s2, s11, 573f
                  add          a6, a4, s5
556:              sub          s11, t5, a3
557:              and          t1, gp, a1
558:              slti         s7, s7, -1868
                  or           a5, t0, s1
                  slt          a6, s7, s9
                  xori         a7, tp, -1662
                  lui          a6, 190211
                  andi         s9, t2, 1977
564:              sub          s2, ra, s5
                  auipc        s3, 949833
                  sltiu        s8, t1, -1768
                  sltiu        t0, a5, 33
                  xor          a7, s6, a2
                  and          t4, gp, a5
                  bltu         t6, a4, 588f
                  beq          t5, a2, 589f
                  andi         t2, s11, 1325
573:              bne          s5, a3, 585f
                  slt          t4, s6, s5
                  blt          s2, a5, 585f
                  sll          s9, s1, s8
                  srl          s5, s11, s7
                  bgeu         s6, t3, 590f
                  or           tp, a4, a3
                  sltu         a0, a3, s10
                  xor          a7, s8, t0
                  sltiu        s3, a0, 1737
                  sltiu        a7, a1, -1815
                  bltu         t6, s1, 600f
585:              ori          t2, s10, -32
                  srli         s9, tp, 19
                  addi         tp, a1, -1352
588:              addi         a0, a2, 1333
589:              blt          s10, zero, 608f
590:              srl          t2, t3, s6
                  addi         s6, s4, -1479
                  auipc        s1, 881726
                  sltu         t6, s9, a1
                  srl          s2, tp, a6
                  srli         s1, t1, 12
                  sra          zero, t0, s3
                  sra          a5, s11, s2
                  slti         t3, s3, -479
                  addi         a5, zero, 870
600:              andi         s0, a5, -976
                  xor          s7, s4, ra
                  srai         s1, s9, 13
                  xor          t1, ra, t5
                  xor          t0, t0, s5
                  bne          zero, tp, 620f
                  srli         a4, t3, 27
                  bltu         s2, s2, 623f
608:              slt          gp, a2, t0
                  srl          a4, s2, t2
                  xori         ra, ra, -1663
                  slti         s9, a5, 1991
                  sll          t3, t6, s8
                  addi         t2, s1, 109
                  bgeu         sp, tp, 617f
                  slt          t0, ra, s10
                  sltiu        a2, t4, -63
617:              slli         t3, t6, 27
                  xor          sp, s10, s2
                  bne          t0, a3, 620f
620:              nop
                  slti         s7, s1, -1789
                  sll          s3, s5, t2
623:              nop
                  or           t3, a3, t6
                  sub          s0, s2, s5
                  srli         t0, s9, 28
                  nop
                  add          zero, s10, t0
                  xori         s3, s2, 1813
                  and          zero, s5, s5
sub_4_18:         jal          ra, 18f
0:                jal          ra, 20f
1:                jal          t1, 6f
2:                jal          ra, 9f
3:                jal          ra, 7f
4:                jal          t1, 5f
5:                jal          ra, 15f
6:                jal          t1, 17f
7:                jal          gp, 23f
8:                jal          ra, 22f
9:                jal          ra, 19f
10:               jal          ra, 11f
11:               jal          ra, 4b
12:               jal          ra, 13f
13:               jal          ra, 2b
14:               jal          ra, 1b
15:               jal          ra, 3b
16:               jal          sp, 21f
17:               jal          a6, 10b
18:               jal          ra, 0b
19:               jal          ra, 16b
20:               jal          t1, 12b
21:               jal          ra, 8b
22:               jal          s3, 14b
23:               addi         s4, gp, 1338
                  andi         s5, t1, -1734
                  bltu         t4, t4, 643f
                  or           s10, a2, a6
                  bge          tp, s5, 654f
                  sll          s8, gp, s7
                  bltu         a4, t0, 639f
                  lui          s8, 331272
                  srai         t4, s6, 28
639:              beq          t0, s1, 652f
                  sltu         a5, a6, a3
                  bne          s3, s6, 652f
                  sll          sp, tp, t6
643:              andi         s0, s9, -1308
                  and          a5, t6, a6
                  beq          t2, a4, 646f
646:              lui          s10, 593293
                  lui          sp, 296209
                  srli         zero, zero, 0
                  sub          a6, t0, s9
                  bge          s2, s1, 656f
                  bge          tp, a1, 653f
652:              lui          s3, 196288
653:              sll          a5, a3, s11
654:              bltu         s10, t0, 657f
                  beq          t4, tp, 661f
656:              ori          a6, s11, 86
657:              sub          a6, s11, t1
                  xor          s8, s2, a6
                  blt          t6, t1, 669f
                  andi         t2, a4, -1950
661:              lui          s4, 325174
                  srl          s6, t1, t4
                  xor          s4, a2, zero
                  slt          a2, t6, a3
                  xor          a5, sp, gp
                  srli         s9, a5, 24
                  auipc        s0, 820538
                  xor          s6, s8, a3
669:              bltu         s6, a5, 670f
670:              bgeu         a7, a5, 682f
                  sltu         a7, a4, t4
                  and          t2, s0, a0
                  sll          s4, t0, s10
                  srl          zero, t3, s3
                  auipc        s1, 870763
                  srl          t2, s3, s3
                  lui          s4, 121154
                  bne          s9, s8, 681f
                  xor          s11, a0, a0
                  slt          sp, ra, s11
681:              nop
682:              srli         a0, a0, 27
                  add          a5, s3, tp
                  xor          a4, a3, t0
                  addi         t1, t4, -652
                  sltiu        a7, s5, -1178
                  or           a0, t6, a2
                  xor          s2, gp, t1
                  lui          s7, 520986
                  xori         s0, s11, -408
                  slli         gp, s3, 8
                  bne          t4, s8, 708f
                  srl          s11, s6, a6
                  add          t2, t0, tp
                  srli         s0, t5, 15
                  sub          sp, a5, s8
                  blt          a6, s8, 710f
                  add          s1, s7, s7
                  sltu         a6, s9, a2
                  nop
                  xor          zero, a6, a4
                  nop
                  sltu         t4, a4, zero
                  addi         gp, t1, 819
                  or           s5, t3, a1
                  sltu         s11, s0, t1
                  lui          s0, 577726
708:              blt          tp, s10, 727f
                  beq          s0, s6, 717f
710:              bne          a5, s11, 722f
                  blt          s5, t2, 713f
                  ori          s4, s5, -75
713:              srli         s6, t3, 7
                  andi         s4, s0, 750
                  bge          s11, s2, 726f
                  ori          s3, t4, -291
717:              andi         t1, t4, -639
                  sub          s3, t5, tp
                  sltiu        s9, a3, -1981
                  lui          s1, 420817
                  bge          s6, a3, 722f
722:              bge          a6, s2, 740f
                  or           a7, a5, zero
                  lui          a7, 69824
                  xori         s4, a2, -1267
726:              sltu         a5, a1, s0
727:              sltiu        t3, a1, 192
                  xor          s11, t2, sp
                  ori          s8, s5, 1439
                  lui          s5, 831076
                  slt          s1, t5, s4
                  slli         t6, s8, 11
                  ori          s11, t6, 103
                  sub          a6, s0, t0
                  bge          t1, a4, 746f
                  sub          t2, s5, t0
                  lui          s7, 685218
                  add          s2, s0, s2
sub_4_7:          jal          ra, 16f
0:                jal          ra, 1f
1:                jal          ra, 6f
2:                jal          ra, 5f
3:                jal          s9, 17f
4:                jal          ra, 10f
5:                jal          t1, 7f
6:                jal          ra, 14f
7:                jal          ra, 9f
8:                jal          t1, 13f
9:                jal          t1, 19f
10:               jal          t1, 15f
11:               jal          gp, 18f
12:               jal          ra, 4b
13:               jal          ra, 0b
14:               jal          ra, 2b
15:               jal          sp, 11b
16:               jal          t1, 20f
17:               jal          t1, 21f
18:               jal          ra, 3b
19:               jal          t1, 12b
20:               jal          t1, 8b
21:               or           s8, s4, a3
                  bne          s4, a1, 752f
740:              auipc        s0, 366645
                  bge          t6, t3, 752f
                  addi         s8, sp, -787
                  bgeu         t5, t5, 759f
                  lui          s8, 558831
                  andi         zero, gp, 1611
746:              bgeu         s5, s5, 761f
                  addi         t2, zero, 581
                  srai         a5, t4, 16
                  bltu         a1, s6, 763f
                  slti         s8, s10, 1282
                  sra          s4, s2, a6
752:              and          a7, s11, zero
                  slt          a0, a6, s6
                  nop
                  bge          tp, s8, 775f
                  nop
                  bne          s0, s1, 776f
                  addi         s11, s0, -395
759:              sub          t0, s3, t4
                  sltiu        s10, t2, -2025
761:              sltiu        s9, sp, -1920
                  or           s9, t4, t1
763:              bne          s7, a3, 780f
                  bne          s5, ra, 779f
                  auipc        tp, 749523
                  bgeu         a2, zero, 782f
                  sltu         a7, s10, a6
                  sltiu        s4, a7, -1037
                  addi         s4, s5, 1751
                  sltiu        s11, s5, 906
                  sra          s6, a1, s9
                  addi         a7, tp, -510
                  sra          a4, gp, s3
                  slli         s4, gp, 0
775:              slti         t0, s6, -535
776:              slti         gp, a5, -1910
                  slli         s0, s2, 18
                  auipc        a4, 244026
779:              slt          a4, a7, t0
780:              sub          s1, a1, s8
                  sub          s11, t1, s9
782:              sra          a6, t6, s1
                  andi         s1, a0, 479
                  xor          s5, a3, s5
                  srli         a0, s10, 30
                  sltiu        a7, s10, -1534
                  xor          a0, s8, sp
                  slti         gp, a0, 633
                  addi         s3, s9, 1750
                  xori         s11, s8, -174
                  add          s9, a0, t3
                  sltu         t2, s10, sp
                  ori          s10, t6, 1671
                  bne          s5, a6, 812f
                  xor          s6, s7, a1
                  xori         a4, s8, 741
                  lui          sp, 213955
                  addi         a0, t6, 114
                  bltu         sp, s7, 805f
                  add          a7, t5, s10
                  sra          t2, t1, s7
                  srai         s9, s4, 14
                  and          a5, t1, t4
                  beq          t5, t6, 807f
805:              bge          s9, s8, 808f
                  beq          t0, t3, 817f
807:              srl          t2, s10, a6
808:              sra          t1, s0, gp
                  auipc        s11, 586893
                  xori         t6, a3, 1330
                  sll          s11, s8, s3
812:              slti         t3, ra, 1284
                  bne          a0, a0, 829f
                  slti         a0, t6, 1168
                  srl          zero, s3, zero
                  xori         gp, t1, 433
817:              srli         a2, t3, 4
                  sltiu        s5, a1, -156
                  slt          s10, zero, s7
                  slt          s9, a0, s5
                  lui          t2, 674497
                  slti         s8, a3, -553
                  srai         ra, a4, 5
                  ori          t6, s11, -722
                  beq          t5, s4, 826f
826:              sltu         s3, a6, zero
                  xori         s8, s0, 1720
                  slt          ra, t2, t1
829:              srai         t6, zero, 2
                  srai         t1, gp, 2
                  srai         a2, s5, 17
                  auipc        s4, 513752
                  bne          tp, zero, 850f
sub_4_9:          jal          ra, 10f
0:                jal          gp, 2f
1:                jal          ra, 15f
2:                jal          s4, 19f
3:                jal          ra, 21f
4:                jal          ra, 12f
5:                jal          ra, 1b
6:                jal          s10, 4b
7:                jal          ra, 5b
8:                jal          a4, 9f
9:                jal          ra, 16f
10:               jal          ra, 6b
11:               jal          s3, 0b
12:               jal          ra, 18f
13:               jal          ra, 22f
14:               jal          t1, 17f
15:               jal          ra, 11b
16:               jal          a6, 14b
17:               jal          s3, 3b
18:               jal          t1, 20f
19:               jal          a6, 13b
20:               jal          tp, 8b
21:               jal          ra, 7b
22:               sltiu        a7, a3, -252
                  sltiu        s11, s0, 592
                  and          zero, a2, a6
                  sll          s5, ra, zero
                  sll          t2, t5, s10
                  addi         s6, a7, -760
                  addi         t2, t3, 153
                  lui          a4, 248167
                  add          s1, s6, a6
                  auipc        ra, 650569
                  sra          a7, s2, s1
                  sra          a2, tp, s8
                  bne          s2, zero, 855f
                  blt          t4, s9, 847f
847:              srli         s3, gp, 3
                  xor          s2, s9, s6
                  ori          s1, a0, -928
850:              bne          a5, s8, 866f
                  bgeu         a3, a1, 859f
                  blt          a3, ra, 865f
                  bge          s3, a7, 867f
                  srai         s2, s2, 6
855:              xor          t4, s7, s1
                  bne          a2, a4, 859f
                  slti         s10, s10, 890
                  add          s1, a5, s1
859:              slli         t3, a0, 0
                  sub          t0, a7, a1
                  or           t0, s11, t6
                  sll          tp, s5, t2
                  nop
                  blt          a6, s6, 875f
865:              srl          t3, s2, t1
866:              srai         s7, sp, 13
867:              add          a7, a7, s9
                  srli         a0, s7, 28
                  beq          tp, zero, 875f
                  bge          tp, a2, 882f
                  bne          a1, a0, 886f
                  and          s7, s0, s5
                  ori          s4, s2, 1335
                  sub          a5, ra, t2
875:              sltu         t0, a6, s0
                  addi         t4, a7, 352
                  ori          s6, s8, -338
                  xor          a0, a2, t0
                  sll          s11, s0, a0
                  bge          s10, t2, 891f
                  sub          a5, s10, sp
882:              ori          a0, s5, -1093
                  slti         s9, sp, 205
                  auipc        s2, 149143
                  andi         zero, t0, 1458
886:              bgeu         s0, a6, 889f
                  sub          a6, a4, s11
                  sub          s7, a2, ra
889:              bge          s6, t2, 907f
                  or           t1, t0, t4
891:              blt          s3, s3, 903f
                  sll          a2, zero, s4
                  auipc        a2, 41032
                  sll          s8, s5, t5
                  xor          s2, s4, t1
                  slti         a7, a4, -812
                  bltu         a4, t5, 908f
                  beq          s11, a6, 909f
                  srai         s11, a1, 28
                  srai         t2, a0, 16
                  sub          s3, t3, a7
                  sll          a4, a5, t5
903:              srli         s10, t1, 31
                  sll          a5, t3, s4
                  srl          s9, t6, a2
                  srli         sp, a2, 9
907:              and          t1, a0, ra
908:              addi         tp, a5, -798
909:              bgeu         s1, a6, 915f
                  addi         s9, a3, -2041
                  xor          s2, a2, t4
                  slti         a7, s7, -1865
                  addi         s10, tp, -1985
                  and          t1, s5, s5
915:              bge          a0, s11, 918f
                  srli         a6, t6, 4
                  xori         t1, a5, -88
918:              nop
                  xor          s5, s9, a0
                  slti         s8, s9, -1982
                  sltiu        s6, s5, -1430
                  beq          zero, t6, 941f
                  bne          a0, t3, 942f
                  add          t2, t1, s0
                  or           s6, t2, ra
                  bltu         s11, a1, 941f
                  lui          s5, 498897
                  bne          t4, s6, 941f
                  bltu         t4, s6, 949f
                  srai         s10, a1, 9
                  or           zero, s8, s3
                  sll          t0, s10, sp
                  srl          s1, t4, a1
                  nop
                  or           sp, a1, s8
                  slti         a6, t3, 1904
                  sub          s5, a7, a6
                  nop
                  xori         gp, s5, 36
                  add          a5, t3, a0
941:              srli         s6, s1, 12
942:              xori         s8, s9, 177
                  or           a7, s3, a0
                  blt          t0, tp, 962f
                  sub          s4, s8, t3
                  xor          a0, t6, sp
                  slt          t4, s3, s2
                  andi         ra, a4, -485
949:              slt          a4, tp, tp
                  xori         s5, s2, 1997
                  and          a0, s1, a7
                  add          a6, s7, s3
                  slt          t4, s2, zero
                  xori         a0, s5, -643
                  auipc        s5, 29777
                  bne          s11, s2, 958f
                  xor          tp, s1, zero
958:              blt          s5, s7, 974f
                  blt          s2, s9, 971f
                  slt          sp, s10, gp
                  bgeu         tp, sp, 974f
962:              add          ra, a5, s3
                  sra          zero, s6, a2
                  sltiu        a5, a5, 427
                  nop
                  xor          t1, t6, t2
                  sltu         gp, a0, ra
                  xor          ra, t5, s11
                  sra          s10, s4, s7
                  sra          ra, s3, t0
971:              or           s3, s4, sp
                  slti         s11, tp, 1531
                  sltu         t6, a4, t4
974:              slli         a4, s1, 20
                  lui          s5, 260187
                  slt          t4, s7, s5
                  addi         a0, s10, -1149
                  slti         t2, a3, 1667
                  xor          s10, a5, s5
                  lui          t2, 663603
                  slt          s11, a5, tp
                  bne          s6, t1, 984f
                  slti         t4, s10, 832
984:              bltu         s4, t0, 985f
985:              beq          s0, t5, 988f
                  add          t4, s10, a0
                  andi         s7, gp, 386
988:              sub          s8, a2, sp
                  sll          s6, t5, a2
                  xor          s7, t3, s1
                  andi         a6, zero, -531
                  ori          s3, a4, -1603
                  sub          s0, t0, sp
                  sltu         s7, s0, a3
                  sra          t6, tp, a1
                  blt          s4, t3, 1014f
                  add          a4, s11, t3
                  andi         s0, gp, -1784
                  sltiu        a4, a3, 1728
                  sltu         a6, a4, gp
                  beq          t5, sp, 1002f
1002:             or           s11, s9, s1
                  bltu         a1, a2, 1017f
                  bne          t6, a7, 1015f
                  slti         a2, t4, 897
                  andi         t3, a6, -44
                  add          t1, a5, s5
                  slt          t1, s3, s8
                  add          a6, s4, s6
                  and          s3, a7, s11
                  slli         sp, t4, 26
                  andi         t0, a6, 1477
                  or           t6, t0, t4
1014:             xor          a0, s3, s8
1015:             lui          zero, 743987
                  lui          zero, 12829
1017:             xor          tp, a7, a0
                  auipc        t0, 945863
                  and          a2, s2, t0
                  auipc        sp, 184691
                  auipc        s0, 902446
                  bge          s4, s0, 1040f
                  xori         t1, a1, -1022
                  and          t1, t1, a2
                  beq          t3, a2, 1044f
                  slt          s3, a7, zero
                  sub          ra, t2, gp
                  srli         t4, s0, 27
                  xor          s0, a0, t6
                  addi         a2, a3, -1289
                  andi         a2, zero, -1539
                  xor          gp, t0, s0
                  bgeu         s4, s9, 1050f
                  bge          s6, a3, 1049f
                  add          s0, t5, s7
                  sra          a2, sp, t6
                  slt          s7, s6, a7
                  sll          a4, s4, s8
                  bge          a7, gp, 1047f
1040:             or           a5, t2, gp
                  addi         t4, s7, -737
                  sltiu        t4, zero, 1412
                  bge          a3, a5, 1063f
1044:             srai         s3, a6, 23
                  srl          zero, t6, ra
                  sra          a4, a1, s7
1047:             andi         sp, s6, 1996
                  and          a0, s2, t1
1049:             bne          a2, s5, 1060f
1050:             slli         t6, gp, 22
                  bge          s3, a7, 1057f
                  slli         s1, s6, 30
                  beq          a6, a6, 1066f
                  slt          s3, s6, t3
                  sub          s6, s3, t4
                  slti         s8, s0, 133
1057:             andi         s11, a3, 1457
                  addi         ra, a4, 561
                  slti         a7, s10, -1663
1060:             slti         s7, s0, 1166
                  nop
                  bne          s7, s7, 1077f
1063:             sltu         s8, a4, ra
                  and          s10, t6, zero
                  nop
1066:             bgeu         a1, zero, 1078f
                  slt          gp, t2, zero
                  ori          s11, s3, -938
                  blt          t3, t3, 1079f
                  slli         s5, a7, 9
                  xori         s7, t0, 1434
                  slli         t0, sp, 0
                  bne          a0, s2, 1089f
                  bltu         a6, s0, 1090f
                  srl          s0, s7, a2
                  slt          t2, a1, t1
1077:             sltiu        s4, a1, 853
1078:             and          s11, s0, tp
1079:             slli         s6, s0, 8
                  or           s1, s7, t3
                  bltu         tp, s2, 1100f
                  slt          s8, sp, s0
                  bge          s8, s7, 1099f
                  slli         a4, s0, 11
                  sll          ra, sp, t6
                  bge          s0, t4, 1089f
                  bgeu         a6, s4, 1090f
                  add          s6, s0, s5
1089:             srli         t6, s8, 14
1090:             blt          a7, s8, 1101f
                  srai         s0, t3, 27
                  addi         zero, s1, -1214
                  sll          t0, gp, t5
                  xor          s1, a0, s10
                  nop
                  auipc        a6, 958665
                  ori          t0, s5, 843
                  ori          a5, s0, -10
1099:             lui          s8, 223262
1100:             sltu         s3, a4, s5
1101:             andi         s5, a7, 975
                  sra          t2, s0, t6
                  blt          s11, a7, 1109f
                  slt          a6, t2, t0
sub_4_1:          jal          ra, 10f
0:                jal          ra, 3f
1:                jal          ra, 6f
2:                jal          ra, 0b
3:                jal          ra, 5f
4:                jal          t3, 12f
5:                jal          t1, 1b
6:                jal          a2, 7f
7:                jal          ra, 9f
8:                jal          t1, 2b
9:                jal          s5, 11f
10:               jal          ra, 8b
11:               jal          t1, 4b
12:               auipc        s6, 198336
                  bne          gp, a5, 1116f
                  slli         s2, tp, 18
                  xori         t3, s1, -996
                  bge          ra, a3, 1127f
1109:             auipc        zero, 536574
                  sltu         a5, t5, a2
                  and          a4, tp, s0
                  blt          sp, a6, 1123f
                  nop
                  bge          s0, t0, 1125f
                  srl          tp, s5, s0
1116:             sub          s0, gp, s9
                  add          s9, s8, t5
                  bgeu         t0, sp, 1119f
1119:             auipc        zero, 27822
                  addi         t4, s0, -1538
                  nop
                  beq          a4, tp, 1138f
1123:             xori         sp, t4, -1135
                  xori         t1, t0, -1396
1125:             sll          a0, s3, a4
                  sra          a5, s11, a7
1127:             blt          s4, zero, 1138f
                  bgeu         s11, s1, 1146f
                  addi         s6, tp, 1948
                  sltiu        s1, a3, -1954
                  slli         a0, s10, 16
                  slli         a7, s4, 28
                  sltiu        s3, a5, -456
                  bltu         tp, a6, 1136f
                  slli         t1, a2, 28
1136:             xor          a2, s10, t6
                  or           s2, t2, a2
1138:             auipc        a0, 189476
                  nop
                  bne          s9, tp, 1152f
                  addi         s7, ra, 1424
                  and          s0, s9, t1
                  xori         s1, s1, 617
                  bne          t2, t2, 1163f
                  bne          a3, a3, 1158f
1146:             xor          s8, s6, s4
                  srli         a7, s2, 8
                  bne          sp, tp, 1154f
                  addi         a4, sp, -1493
                  bltu         t4, a6, 1166f
                  bgeu         s10, a5, 1166f
1152:             addi         a6, t6, 1830
                  or           s10, s7, a4
1154:             blt          t1, t5, 1167f
                  add          s0, s5, a5
                  sll          s6, a6, a1
                  bne          s10, s0, 1163f
1158:             nop
                  xori         t0, a1, -1670
                  and          s2, t6, s10
                  slli         a7, s11, 10
                  add          a7, t1, s7
1163:             andi         s5, a1, -1992
                  ori          s3, s3, 1129
                  srai         s5, s11, 22
1166:             sltu         t4, s1, s0
1167:             bne          sp, a2, 1182f
                  srai         s6, ra, 12
                  xori         tp, t5, 2045
                  or           s10, s10, tp
                  or           a5, sp, s1
                  lui          a5, 905809
                  bne          t5, s8, 1187f
                  bne          t2, a0, 1175f
1175:             srl          s4, t2, t3
                  add          s11, s8, a7
                  nop
                  blt          ra, s8, 1181f
                  sra          t6, t1, a1
                  sltu         t4, a7, gp
1181:             beq          gp, zero, 1184f
1182:             srai         t1, a3, 26
                  beq          t0, s1, 1193f
1184:             nop
                  sltiu        ra, a2, -445
                  bltu         a4, a1, 1197f
1187:             beq          tp, t3, 1203f
                  sltiu        s0, s2, 837
                  sra          t0, s7, s6
                  auipc        ra, 140774
                  sltiu        a4, t0, 1077
                  bne          a4, a3, 1209f
1193:             srl          s9, t2, t2
                  lui          s11, 211799
                  and          zero, s2, s6
                  add          s5, a5, t0
1197:             blt          a5, a2, 1217f
                  srli         s5, s5, 8
                  bgeu         s3, sp, 1211f
                  bltu         a4, zero, 1218f
                  sll          s4, t5, s1
                  srai         s11, s8, 5
1203:             srai         a6, tp, 8
                  and          t4, s0, s4
                  sub          a4, t1, t4
                  slti         gp, sp, 1309
                  bltu         s0, a4, 1215f
                  bgeu         a5, a4, 1211f
1209:             bne          t0, gp, 1224f
                  bltu         t3, s7, 1226f
1211:             beq          t5, t1, 1217f
                  bltu         t5, ra, 1223f
                  andi         t0, s11, -1529
                  bgeu         zero, t1, 1225f
1215:             slti         s6, t2, 1109
                  add          zero, a3, tp
1217:             sub          ra, a1, s10
1218:             bltu         t2, s7, 1237f
                  or           s5, s6, t5
                  sll          a4, s1, a2
                  sub          s3, s6, s4
                  blt          ra, s8, 1233f
1223:             bne          t3, sp, 1241f
1224:             srli         a2, s8, 18
1225:             xori         t2, zero, -1966
1226:             slti         a4, s4, -977
                  bge          s4, s7, 1229f
                  slti         s3, s9, -1195
1229:             slt          zero, ra, t3
                  andi         s1, s1, 1271
                  ori          s0, t6, 816
                  addi         s9, a0, 1458
1233:             auipc        s5, 859749
                  srai         t0, s0, 15
                  sltiu        t6, t6, -678
                  sltiu        t4, s10, -5
1237:             xor          t3, a3, s7
                  bgeu         t0, a2, 1239f
1239:             bgeu         gp, t3, 1253f
                  srl          s6, s8, a2
1241:             sltiu        s5, s1, 37
                  srai         t3, s2, 16
                  or           s10, s3, a7
                  xor          sp, a1, s8
                  xori         s0, a5, -1148
                  nop
                  and          s10, s10, sp
                  or           t6, sp, s5
                  sra          s3, ra, s8
                  or           a2, s11, a7
                  slli         s9, s8, 31
                  andi         a6, tp, 380
1253:             xori         s10, a5, -1194
                  auipc        s4, 171805
                  sltu         a4, a4, t0
                  srli         s10, a0, 14
                  xor          t6, a7, zero
                  sra          s7, s4, t2
                  srai         tp, t5, 13
                  sll          tp, s9, s11
                  beq          tp, t5, 1279f
                  slli         s11, s4, 7
                  sltu         a5, s2, a6
                  slti         a2, s1, 1003
                  or           t1, ra, a6
                  andi         t2, s9, -1703
                  slli         t1, a6, 30
                  andi         s1, s7, 456
                  xori         s7, a2, -1648
                  slt          s7, t6, s6
                  beq          t3, t0, 1283f
                  slli         t0, s7, 13
                  srai         t2, tp, 15
                  sltiu        a5, s1, -292
                  sra          s1, s2, t3
                  xori         a4, s11, 1962
                  slli         gp, a3, 2
                  bne          s6, a1, 1293f
1279:             slt          t4, t2, s5
                  beq          a5, a2, 1290f
                  srai         t6, t4, 10
                  sltiu        s1, ra, -1281
1283:             xor          s10, s4, a1
                  bgeu         a5, a2, 1304f
                  srai         t0, t6, 23
                  srai         s6, t3, 8
                  sub          s3, s10, s7
                  ori          a7, s3, 681
                  sltu         s4, s0, s4
1290:             slt          s2, t0, t5
                  nop
                  andi         a6, t5, 1374
1293:             sltiu        t2, s11, 1665
                  lui          a2, 89363
                  beq          a5, s0, 1308f
                  sub          ra, tp, s5
                  slt          s11, s4, s1
                  nop
                  srli         a5, t4, 31
                  addi         s0, s8, -1687
                  srl          a0, s2, a7
                  srl          a5, a3, a1
                  srli         s7, t3, 23
1304:             bge          a6, s10, 1320f
                  nop
                  xor          s1, s8, s10
                  sll          t4, t2, t1
1308:             or           s9, s7, s11
                  sltu         sp, tp, a5
                  slti         s7, a4, -111
                  srli         t2, t3, 30
                  srai         s0, a2, 28
                  andi         s6, s1, 867
                  bge          t4, s3, 1315f
1315:             bne          ra, zero, 1326f
                  add          a2, t1, t3
                  and          s11, s7, a6
                  bne          s9, a2, 1326f
                  srli         s0, s2, 29
1320:             auipc        s3, 315080
                  xori         s8, a7, -1067
                  sll          a6, s6, t4
                  srl          tp, a4, a1
                  sltu         zero, sp, t1
                  slti         sp, s8, -1540
1326:             lui          a7, 612234
                  addi         a6, s11, -692
                  sll          sp, t2, s9
                  nop
                  sra          t1, s11, tp
                  or           s10, s1, a4
                  sll          sp, a0, t4
                  sra          a0, s7, t6
                  andi         s3, a6, 1856
                  bltu         s1, t0, 1348f
                  slli         s11, a4, 22
                  srli         a5, tp, 1
                  add          a7, a0, s0
                  beq          a6, a5, 1345f
                  add          a6, t5, s1
                  sra          a0, t6, sp
                  srli         s4, a4, 23
                  andi         t6, a3, 107
                  and          t6, ra, a1
1345:             and          ra, a5, t4
                  add          a5, t0, t5
                  sra          s4, t3, s5
1348:             slt          t4, a5, zero
                  lui          s7, 307571
                  beq          sp, a4, 1367f
                  bge          s7, ra, 1354f
                  auipc        sp, 762878
                  bge          s6, t0, 1369f
1354:             addi         t0, a1, -251
                  add          a6, s0, t4
                  beq          s2, a1, 1359f
                  xori         s4, s0, -1570
                  srai         sp, sp, 2
1359:             srai         a6, sp, 31
                  beq          zero, zero, 1372f
                  sra          s10, t6, s0
                  add          tp, s11, s11
                  srl          a4, s3, t3
                  or           ra, a3, s1
                  sltu         a0, s3, a3
                  srai         s0, s7, 8
1367:             auipc        s2, 597541
                  or           s10, s8, s2
1369:             lui          s9, 660489
                  lui          s0, 200650
                  sub          t3, a5, s1
1372:             sll          s3, s10, zero
                  or           t0, a0, a1
                  sll          s1, a1, s3
                  sltu         a5, s3, t3
                  srai         zero, t0, 4
                  xor          gp, s7, s10
                  sll          a6, t5, gp
                  xori         s6, s1, 1134
                  xor          t2, s10, t2
                  slli         s0, s7, 6
                  bgeu         s8, a2, 1401f
                  bge          zero, a3, 1386f
                  slt          t3, s11, a7
                  sltiu        s6, t0, -1429
1386:             srai         a7, tp, 23
                  bltu         sp, a6, 1390f
                  bgeu         s5, a2, 1394f
                  bltu         a7, a3, 1405f
1390:             xori         s7, a0, -1175
                  slli         t3, t2, 2
                  add          s8, sp, t3
                  nop
1394:             sll          s0, a3, t3
                  beq          t1, t0, 1411f
                  srl          a2, a0, t0
                  srai         s2, ra, 30
                  sub          s9, a6, sp
                  auipc        s2, 706809
                  beq          s0, t5, 1410f
1401:             sll          s6, a3, gp
                  sll          t3, a4, t6
                  srl          s8, s2, a2
                  sll          zero, zero, s11
1405:             lui          gp, 170796
                  blt          a5, a0, 1409f
                  bne          a6, tp, 1408f
1408:             srai         tp, tp, 22
1409:             nop
1410:             bne          s10, a4, 1430f
1411:             xori         s7, t5, 774
                  sltiu        sp, a6, 747
                  sltiu        s3, zero, 1692
                  slti         s8, a3, 1183
                  slt          tp, s6, s10
                  sub          t0, s9, s1
                  blt          zero, s1, 1431f
                  auipc        a4, 560283
                  srai         zero, a0, 25
                  slt          a5, t6, a1
                  xori         s11, a0, -600
                  add          zero, gp, a7
                  addi         a5, t6, -1851
                  bne          s5, t5, 1435f
                  bne          zero, a3, 1443f
                  srai         gp, a6, 22
                  sltiu        s11, a2, 902
                  srli         t6, t3, 13
                  srl          s11, s2, a3
1430:             bgeu         s4, a2, 1447f
1431:             lui          t4, 742266
                  addi         s3, s4, 991
                  bne          t3, s10, 1445f
                  bltu         t0, a0, 1449f
1435:             sub          gp, t2, s1
                  bgeu         t5, a4, 1448f
                  slli         t6, gp, 10
                  slti         a2, s11, 996
                  or           t2, s7, s4
                  sltiu        s1, a3, -1649
                  sltu         s11, t4, t4
                  bne          ra, s0, 1444f
1443:             srai         ra, a2, 27
1444:             slli         s1, s10, 26
1445:             or           t4, s11, a6
                  sra          gp, s8, ra
1447:             blt          a6, s9, 1448f
1448:             beq          sp, gp, 1463f
1449:             addi         t2, s11, -1101
                  bltu         t3, a1, 1456f
                  or           s2, sp, tp
                  sra          a6, s5, s4
                  beq          t2, s9, 1466f
                  slt          s7, a0, t6
                  bne          t6, t2, 1466f
1456:             and          tp, a2, s11
                  bgeu         t6, zero, 1473f
                  srai         s4, s7, 26
                  slli         t0, t4, 6
                  sra          s8, a3, s3
sub_4_20:         jal          ra, 10f
0:                jal          ra, 4f
1:                jal          ra, 2f
2:                jal          t1, 13f
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          ra, 9f
6:                jal          ra, 0b
7:                jal          ra, 11f
8:                jal          ra, 3b
9:                jal          ra, 12f
10:               jal          ra, 1b
11:               jal          ra, 14f
12:               jal          ra, 6b
13:               jal          ra, 5b
14:               auipc        t6, 990250
                  sra          s4, sp, a5
                  bgeu         s5, s4, 1470f
1463:             slt          s9, s11, s9
                  addi         s7, a7, -1284
                  or           s3, t6, t0
1466:             addi         t4, sp, 1864
                  sub          sp, s3, ra
                  sra          s1, t5, t0
                  srl          gp, t0, s1
1470:             auipc        a7, 446585
                  addi         s4, ra, -256
                  bltu         a7, s10, 1483f
1473:             bne          t4, a7, 1476f
                  sll          t3, tp, a6
                  lui          tp, 416605
1476:             srli         a5, zero, 17
                  slli         s0, t6, 24
                  or           a5, a1, s5
                  nop
                  beq          ra, t1, 1499f
                  srai         t6, a2, 9
                  addi         s0, t5, -1506
1483:             sll          s7, sp, a1
                  bltu         s0, sp, 1495f
                  addi         t4, s4, -1403
                  lui          s6, 370167
                  sll          a5, t2, zero
                  sltu         t1, s11, ra
                  or           s4, ra, s8
                  xori         s0, a7, -173
                  slli         a7, t5, 6
                  blt          s10, s10, 1511f
                  srai         s2, sp, 8
                  slt          ra, a0, s0
1495:             sltu         tp, t6, s11
                  bne          t6, s0, 1509f
                  srai         a7, s8, 30
                  sltiu        s2, a5, 998
1499:             srli         a6, a0, 6
                  srai         t4, t4, 5
                  slt          ra, s2, s4
                  sll          a7, s4, s5
                  auipc        zero, 214686
                  and          s8, t4, s3
                  bgeu         a2, a7, 1523f
                  bne          zero, s4, 1512f
                  bgeu         s10, s7, 1522f
                  or           a6, tp, s9
1509:             xori         s11, s10, 228
                  srai         a4, t6, 0
1511:             add          s11, t1, a3
1512:             beq          a1, t3, 1525f
                  or           ra, a7, s5
                  slti         s7, zero, -1651
                  ori          a2, s6, -1618
                  xor          s10, a5, s0
                  or           a0, s2, gp
                  bltu         s4, t1, 1530f
                  slli         sp, ra, 4
                  or           t1, s4, s4
                  lui          t6, 106097
1522:             bgeu         gp, sp, 1534f
1523:             sra          s6, t2, t6
                  and          s5, s7, s5
1525:             bltu         s7, t3, 1536f
                  slt          a6, s11, s7
                  bge          s6, a5, 1540f
                  ori          t0, tp, -1207
                  bge          gp, s10, 1540f
1530:             slli         s4, t6, 4
                  sltiu        s9, a0, 1960
                  ori          s4, zero, -1986
                  bge          tp, s4, 1543f
1534:             slt          t1, t0, s8
                  lui          s11, 208569
1536:             lui          a5, 258659
                  sltu         a2, t2, s8
                  slli         gp, s1, 10
                  xori         ra, s2, -1205
1540:             xor          a4, a6, s5
                  ori          s10, s10, -1701
                  nop
1543:             blt          s3, t3, 1546f
                  srl          a6, a1, zero
                  srl          s6, t5, a5
1546:             sub          a5, s5, gp
                  xori         s9, a5, -1167
                  srai         s4, a1, 29
                  blt          gp, t3, 1565f
                  sra          tp, a6, s6
                  bne          s10, gp, 1567f
                  beq          sp, s11, 1571f
                  srai         t1, s6, 17
                  srli         t2, gp, 19
                  xori         a7, a1, -420
                  xor          ra, s9, s8
                  sltiu        sp, a1, 583
                  auipc        s11, 393890
                  slti         t6, gp, 1877
                  andi         ra, s2, 40
                  slli         sp, t1, 24
                  xor          a5, t2, t4
                  sltu         a6, s1, s1
                  bne          s2, t1, 1581f
1565:             bge          gp, zero, 1584f
                  lui          s1, 929643
1567:             or           a4, s3, s9
                  nop
                  beq          tp, ra, 1572f
                  or           t0, s7, s9
1571:             ori          s1, t6, 1548
1572:             slt          t6, t4, ra
                  or           a7, sp, gp
                  sra          s3, a1, s9
                  and          sp, a2, t0
                  bge          t6, sp, 1594f
                  sll          s4, s3, zero
                  nop
                  ori          tp, t4, 1592
                  bne          a4, a7, 1582f
1581:             sltiu        s2, a4, -1504
1582:             xori         t3, sp, 1728
                  srli         a0, ra, 21
1584:             and          zero, s0, t5
                  sll          t1, a2, s3
                  bge          a7, t1, 1592f
                  addi         s6, tp, -653
                  xor          s11, a6, zero
                  or           s1, a7, sp
                  and          a2, a3, t2
                  slti         s9, t3, 1862
1592:             sra          s10, a4, a5
                  srai         s0, a7, 14
1594:             addi         s11, zero, 1082
                  lui          s3, 209518
                  bge          t4, sp, 1614f
                  sra          ra, a5, t1
                  srli         s9, s6, 23
                  auipc        s10, 408394
                  or           t6, a4, t5
                  bgeu         a5, a3, 1621f
                  xori         s8, a6, 253
                  sltiu        s6, t4, 1713
                  blt          gp, t5, 1618f
                  srli         t0, t3, 9
                  xori         sp, sp, 895
                  ori          t6, tp, -908
                  sll          a7, a4, s4
                  andi         s2, t2, 1738
                  auipc        s9, 1034947
                  andi         s0, s4, -954
                  bgeu         a2, s1, 1628f
                  xori         t1, t3, 473
1614:             bgeu         s2, tp, 1615f
1615:             sltiu        s2, ra, -1158
                  bltu         zero, t4, 1619f
                  bltu         s10, a6, 1625f
1618:             srai         t1, sp, 29
1619:             auipc        a4, 751749
                  bgeu         s1, t2, 1631f
1621:             auipc        s10, 738784
                  bgeu         s10, t4, 1633f
                  sra          s10, a5, a4
                  auipc        s3, 687679
1625:             xori         t6, t1, -645
                  slt          s11, a0, a3
                  srli         s2, t6, 26
1628:             xori         sp, t0, 1754
                  nop
                  sll          s9, a4, t1
1631:             slti         s1, a7, 288
                  bgeu         tp, a5, 1647f
1633:             and          s2, t2, t6
                  sra          s1, s0, t0
                  addi         s11, s1, 1537
                  blt          t6, a2, 1637f
1637:             nop
                  xori         s4, s9, 1870
                  or           a5, a1, gp
                  sltu         s8, s6, s4
                  add          t0, t6, s0
                  addi         s11, a2, -595
                  xori         t6, t6, -1708
                  beq          sp, s3, 1647f
                  auipc        s7, 703469
                  add          s7, a7, t3
1647:             sub          s9, sp, a0
                  bltu         a0, t5, 1664f
                  auipc        a6, 555876
                  andi         t2, s0, -1658
                  slt          s4, t1, a6
                  bltu         t2, a5, 1655f
                  sltiu        s9, t6, -71
                  andi         a0, s2, -125
1655:             xor          t4, t2, s6
                  bne          s4, s11, 1665f
                  slli         a4, t4, 30
                  bgeu         s5, tp, 1665f
                  bge          gp, a1, 1665f
                  sub          s2, s4, a6
                  beq          s9, s1, 1665f
                  ori          t2, s2, 243
                  beq          tp, s0, 1665f
1664:             and          t4, s7, a4
1665:             slt          a0, a3, a3
                  lw           ra, 4(a3)
                  sltu         s8, t2, a3
                  and          t6, ra, s5
                  addi         s11, zero, -1658
                  addi         a3, a3, 60
                  slli         a5, gp, 18
                  xori         s7, s2, -40
2470:             addi x19, x1, 1
2470:             jalr x19, x19, 0
sub_3:            slt          t1, a1, s9
                  sll          gp, s1, s4
                  auipc        a6, 162745
                  addi         a3, a3, -32
                  auipc        a2, 1040061
                  sw           ra, 4(a3)
                  sltu         a4, s1, s10
                  and          s3, t0, t2
                  xor          s9, a0, s10
                  la           a7, sub_4
                  srai         tp, t4, 16
                  addi         s7, a0, 509
                  or           s5, t1, gp
                  add          a5, s3, a7
                  addi         a7, a7, 599
                  or           s10, a4, t0
sub_3_j6:         jalr         ra, a7, -598 #jump sub_3 -> sub_4
                  lui          zero, 394030
                  auipc        gp, 157853
                  or           t4, sp, a2
                  slli         s3, s5, 8
                  ori          s5, a1, 1346
                  nop
                  srli         s0, t6, 16
                  slti         t4, t1, -1248
                  sub          t1, zero, tp
sub_3_j7:         jal          ra, sub_4 #jump sub_3 -> sub_4
sub_3_0:          jal          ra, 2f
0:                jal          ra, 6f
1:                jal          ra, 8f
2:                jal          ra, 1b
3:                jal          a7, 9f
4:                jal          ra, 10f
5:                jal          s0, 4b
6:                jal          ra, 3b
7:                jal          ra, 0b
8:                jal          ra, 7b
9:                jal          ra, 5b
10:               sra          s0, a0, s3
sub_3_2:          jal          ra, 15f
0:                jal          ra, 17f
1:                jal          t1, 2f
2:                jal          ra, 16f
3:                jal          t1, 19f
4:                jal          a7, 8f
5:                jal          ra, 0b
6:                jal          t1, 14f
7:                jal          ra, 10f
8:                jal          a4, 9f
9:                jal          t1, 1b
10:               jal          ra, 3b
11:               jal          ra, 13f
12:               jal          sp, 23f
13:               jal          t4, 4b
14:               jal          t0, 20f
15:               jal          ra, 7b
16:               jal          ra, 18f
17:               jal          s11, 24f
18:               jal          sp, 5b
19:               jal          t1, 22f
20:               jal          ra, 25f
21:               jal          ra, 12b
22:               jal          ra, 11b
23:               jal          t1, 6b
24:               jal          t1, 21b
25:               jal          ra, 26f
26:               ori          s6, sp, 289
sub_3_3:          jal          ra, 7f
0:                jal          ra, 6f
1:                jal          ra, 14f
2:                jal          t1, 8f
3:                jal          ra, 0b
4:                jal          ra, 3b
5:                jal          ra, 2b
6:                jal          t1, 9f
7:                jal          t1, 11f
8:                jal          ra, 10f
9:                jal          ra, 12f
10:               jal          ra, 13f
11:               jal          t1, 5b
12:               jal          t0, 1b
13:               jal          ra, 4b
14:               jal          tp, 15f
15:               addi         a2, t3, -1029
sub_3_4:          jal          ra, 17f
0:                jal          ra, 9f
1:                jal          t1, 20f
2:                jal          ra, 8f
3:                jal          a6, 11f
4:                jal          t1, 1b
5:                jal          ra, 15f
6:                jal          t3, 4b
7:                jal          t1, 13f
8:                jal          ra, 16f
9:                jal          t2, 2b
10:               jal          t1, 0b
11:               jal          s10, 10b
12:               jal          ra, 23f
13:               jal          ra, 14f
14:               jal          t1, 21f
15:               jal          t1, 18f
16:               jal          ra, 5b
17:               jal          ra, 6b
18:               jal          t1, 22f
19:               jal          ra, 12b
20:               jal          t1, 7b
21:               jal          ra, 3b
22:               jal          ra, 19b
23:               lui          t6, 557238
sub_3_1:          jal          ra, 9f
0:                jal          ra, 2f
1:                jal          ra, 0b
2:                jal          t0, 14f
3:                jal          a7, 5f
4:                jal          ra, 13f
5:                jal          t1, 4b
6:                jal          ra, 12f
7:                jal          s6, 11f
8:                jal          ra, 6b
9:                jal          sp, 10f
10:               jal          t4, 7b
11:               jal          t1, 3b
12:               jal          ra, 1b
13:               jal          ra, 8b
14:               addi         s1, s5, 1941
                  xor          s1, s3, a6
                  sltu         ra, s2, ra
                  bgeu         s9, t0, 8f
                  bltu         s10, t2, 10f
                  xori         t0, s5, -1548
                  slt          a6, t0, a0
                  bgeu         s11, s5, 18f
                  xor          t6, a5, s1
8:                or           t2, sp, s6
                  bltu         a7, s6, 20f
10:               bgeu         s9, s8, 27f
                  srli         a6, tp, 1
                  srli         t2, t1, 20
                  ori          s1, s6, 1793
                  add          a6, a2, tp
                  bltu         s9, s1, 29f
                  sll          a5, s6, t2
                  srai         s7, t1, 0
18:               bge          tp, s9, 22f
                  sub          gp, a6, s11
20:               bge          s0, s1, 21f
                  srl          a6, s1, s8
                  la           s7, sub_5
                  and          t6, t4, a1
                  addi         s7, s7, 565
                  add          s1, gp, a7
                  nop
                  sra          s0, t4, t5
                  sltu         t0, s7, s5
                  srai         a6, t5, 27
                  addi         s4, ra, -353
sub_3_j8:         jalr         ra, s7, -565 #jump sub_3 -> sub_5
21:               srli         t1, tp, 23
22:               and          s1, t0, ra
                  bgeu         t5, a0, 26f
                  sra          t2, t5, a0
                  or           a0, zero, s3
26:               bge          a3, zero, 46f
27:               andi         gp, s7, -680
                  addi         s10, a3, 835
29:               bltu         s7, ra, 47f
                  add          a2, tp, s10
                  srl          a4, a0, s2
                  andi         s10, t1, -377
                  ori          gp, s8, 1313
                  beq          t6, s4, 43f
                  sub          a2, a3, a4
                  sra          s4, a6, t0
                  lui          a0, 233304
                  sll          s3, s6, s11
                  srai         a0, t1, 6
                  xori         a7, t6, -114
                  ori          s8, t4, 1247
                  and          s10, t1, s2
43:               beq          a0, a2, 52f
                  sll          s5, s0, a7
                  nop
46:               xor          zero, ra, a7
47:               slt          a4, t4, t3
                  nop
                  sra          t3, s1, a3
                  bne          zero, s1, 69f
                  sll          t6, t4, t6
52:               slti         sp, a0, 405
                  bltu         t4, a1, 65f
                  add          s0, s3, t0
                  srai         a7, tp, 31
                  andi         s5, a6, -1891
                  xori         a5, s0, 1443
                  lui          t1, 525162
                  addi         s8, s2, 1006
                  nop
                  and          a5, t5, t3
                  auipc        s11, 26809
                  ori          s8, s11, -94
                  or           tp, a1, s3
65:               sra          t2, zero, s8
                  xori         tp, t4, 224
                  bltu         s5, a3, 75f
                  bltu         t3, gp, 81f
69:               bltu         a6, a1, 80f
                  xor          s6, s2, t3
                  bltu         a7, s11, 80f
                  srl          s1, tp, s3
                  or           a5, a4, tp
                  srai         s3, s10, 14
75:               xor          zero, s2, sp
                  and          sp, t2, gp
                  beq          sp, a1, 87f
                  sll          t0, t2, gp
                  bgeu         a7, s10, 96f
80:               srai         tp, s2, 15
81:               bltu         sp, a4, 85f
                  or           ra, s1, s6
                  srl          sp, a7, s3
                  slt          t2, s6, a1
85:               and          t4, t6, sp
                  ori          a0, s6, -806
87:               srl          a7, a5, s3
                  and          tp, a5, zero
                  blt          s2, gp, 101f
                  srai         a7, s3, 10
                  add          a7, a3, a3
                  slli         s9, ra, 29
                  beq          a5, s7, 99f
                  add          s2, a4, t6
                  sltu         t1, a4, t1
96:               lui          s10, 704616
                  srai         s11, gp, 24
                  xor          s9, t1, t4
99:               ori          s6, a7, -1168
                  srli         s10, t1, 30
101:              sltiu        s4, a2, 30
                  srai         tp, zero, 3
                  xor          t0, a6, t2
                  xori         s8, s6, -304
                  slli         t4, s10, 10
                  and          t6, a7, s8
                  xori         s5, s8, 1737
                  xor          s10, s11, s8
                  or           gp, s8, s4
                  add          s3, s4, t6
                  sltiu        a6, tp, -827
                  slli         s10, a1, 23
                  sltiu        s4, s8, 1963
                  srai         s9, ra, 5
                  beq          s4, s8, 133f
                  add          gp, s11, s10
                  andi         a5, s3, -524
                  xor          s11, s11, a4
                  srli         s5, zero, 30
                  xor          s5, t1, s2
                  bne          a5, s5, 132f
                  addi         a5, s7, -1
                  nop
                  xori         s9, s2, -1893
                  ori          s10, t2, 1378
                  xor          a4, a1, sp
                  blt          t3, a2, 130f
                  srai         a4, s0, 10
                  addi         s7, zero, 890
130:              sub          a6, t3, zero
                  and          s11, zero, s9
132:              xori         a5, ra, 1644
133:              sra          a0, s11, s5
                  sltu         t0, s3, s6
                  auipc        s8, 323343
                  add          s11, s10, s9
                  sltu         a7, tp, s11
                  add          s2, a7, s1
                  bltu         a1, a4, 147f
                  sll          ra, s6, tp
                  blt          t4, a1, 150f
                  bne          a1, a6, 148f
                  ori          s3, t3, 1205
                  srai         s2, a4, 27
                  andi         s6, a7, 659
                  addi         s1, s10, 220
147:              and          t1, a6, s11
148:              srai         a4, s0, 27
                  srli         s3, ra, 1
150:              or           s2, t3, a5
                  or           s1, t2, tp
                  and          t0, t0, a6
                  slt          a0, s1, s7
                  bgeu         s7, ra, 166f
                  slti         ra, t2, -1880
                  bge          s9, s9, 163f
                  srl          a7, t1, s3
                  sra          a2, a6, sp
                  or           a7, t4, a5
                  xor          ra, t1, a3
                  xor          s4, s1, s5
                  bne          s10, s6, 166f
163:              slti         a5, s11, 777
                  xor          a0, s0, t0
                  bne          s2, t4, 174f
166:              srl          a6, t3, t1
                  srai         ra, t5, 26
                  add          a5, s10, a6
                  srai         zero, t2, 18
                  or           s7, a7, a1
                  slti         sp, s9, 1437
                  xori         a7, t0, -260
                  bgeu         s11, t3, 182f
174:              srai         tp, t1, 6
                  xori         a5, s5, 1137
                  bltu         a7, s9, 196f
                  and          s9, s9, s6
                  beq          a4, zero, 187f
                  and          sp, a4, s6
                  and          a0, a6, zero
                  slt          t1, t4, t2
182:              xori         s5, s1, 1787
                  and          a5, s4, t2
                  bltu         s6, t4, 192f
                  addi         gp, s10, -419
                  nop
187:              srai         s6, s10, 30
                  addi         sp, a3, 1094
                  sltiu        s8, t3, -629
                  nop
                  xor          s8, t5, t1
192:              blt          t0, sp, 195f
                  slli         a7, s10, 6
                  slli         gp, a6, 26
195:              xori         s6, a1, -1658
196:              lui          s0, 871017
                  slt          a6, a7, t4
                  xori         s1, s4, -453
                  sltu         s0, gp, tp
                  sll          s6, s1, a5
                  or           s0, s1, s6
                  auipc        s7, 734130
                  bge          s9, tp, 214f
                  srli         sp, s1, 6
                  lui          t4, 205369
                  add          t4, s3, t2
                  bltu         s3, ra, 217f
                  auipc        s7, 526231
                  auipc        s1, 372027
                  add          s6, t1, s0
                  andi         s10, gp, 1068
                  addi         ra, s8, -114
                  bge          zero, s7, 232f
214:              sltiu        s8, s9, -335
                  srai         zero, a3, 29
                  bgeu         s10, t0, 228f
217:              sltiu        a2, a5, 1712
                  slt          s10, t1, a5
                  slli         zero, s4, 23
                  slt          tp, s9, s4
                  bgeu         s11, s6, 229f
                  blt          sp, a1, 228f
                  srli         ra, gp, 23
                  srli         s8, s3, 17
                  add          s11, t4, a4
                  slli         s11, s1, 16
                  beq          a0, s11, 241f
228:              auipc        tp, 106824
229:              nop
                  sra          s1, s6, s1
                  srl          t3, a3, t0
232:              srai         t3, t6, 5
                  sub          s5, s9, s0
                  srli         s8, s2, 22
                  and          a6, s11, s9
                  srl          s7, a6, s2
                  addi         a2, t4, -1015
                  sltu         t2, s10, a0
                  auipc        s2, 288839
                  lui          s4, 996224
241:              slti         ra, s1, -501
                  bne          t4, s6, 254f
                  srli         t1, a7, 26
                  sra          s4, t6, gp
                  andi         a5, gp, 1301
                  lui          a0, 158391
                  lui          a5, 522924
                  sll          s3, a0, zero
                  sll          s9, s10, ra
                  and          s10, t3, t4
                  srl          a5, s10, t1
                  xor          t2, sp, s7
                  addi         t2, a1, -1136
254:              slti         s6, s10, 1529
                  ori          t4, t0, 1689
                  sll          t1, t0, s8
                  xori         t3, t2, -363
                  lw           ra, 4(a3)
                  andi         s10, s3, 530
                  addi         s7, s11, -106
                  ori          s3, s9, -16
                  andi         a7, gp, -1361
                  srli         t6, a7, 23
                  addi         a3, a3, 32
                  sltiu        s11, s1, 818
                  slli         s6, t0, 5
403:              addi x4, x1, 0
403:              jalr x4, x4, 0
sub_1:            or           s10, s11, t0
                  bge          s4, a0, sub_1_stack_p
                  slti         a2, a7, 1660
sub_1_stack_p:    addi         a3, a3, -24
                  sw           ra, 4(a3)
                  nop
                  ori          s3, s2, 916
                  la           a0, sub_2
                  srli         s1, t2, 14
                  xor          t2, s2, ra
                  and          s4, s9, s4
                  addi         a0, a0, 737
                  nop
                  andi         t6, s10, -1340
                  bne          ra, s2, sub_1_j3 #branch to jump instr
                  sll          a7, s7, s7
sub_1_j3:         jalr         ra, a0, -736 #jump sub_1 -> sub_2
                  srl          t3, t3, a5
                  xori         a6, t4, 920
                  sub          zero, s7, a6
                  la           s11, sub_2
                  slti         tp, s10, 572
                  addi         s11, s11, -168
                  ori          t0, s8, 551
                  sltiu        ra, gp, -1235
                  ori          t0, sp, -841
                  slt          s8, a0, a0
                  sltiu        sp, sp, 1456
sub_1_j4:         jalr         ra, s11, 169 #jump sub_1 -> sub_2
                  addi         a2, s9, -871
                  add          s0, s5, t2
                  sub          s9, s2, sp
                  nop
                  sltiu        t4, t6, 954
                  or           t6, a5, zero
                  srli         a5, a0, 16
                  srli         t3, s3, 29
                  srl          t0, s10, ra
                  sll          a4, t1, s4
                  srai         a7, s9, 4
                  addi         a2, a3, 108
                  or           tp, a0, a0
                  beq          tp, zero, 14f
14:               xori         a6, s9, -173
                  ori          t2, t0, 429
                  or           s0, a3, ra
                  lw           ra, 4(a3)
                  srai         s10, t5, 2
                  addi         a3, a3, 24
                  srli         t2, a2, 10
50:               addi x18, x1, 0
50:               jalr x18, x18, 0
sub_5:            and          s3, a3, s4
                  bgeu         t3, gp, sub_5_stack_p
                  srli         s4, t1, 17
                  xor          s7, t1, sp
sub_5_stack_p:    addi         a3, a3, -56
                  and          s0, s4, s10
                  sltu         s8, a5, t5
                  xor          s5, s5, a6
                  sw           ra, 4(a3)
                  sra          s9, s4, a1
                  auipc        s4, 231221
                  or           a5, s6, sp
                  slli         s2, a4, 25
                  beq          ra, s9, 3f
                  sltu         ra, t5, sp
3:                beq          s10, a5, 18f
                  sltiu        t3, a1, -455
                  xor          ra, ra, t6
                  add          s7, s3, t1
                  xor          s7, s10, s11
                  slt          s1, s7, s11
                  srai         s6, s0, 4
                  sltu         ra, a5, gp
                  srli         s7, t6, 0
                  sll          a2, zero, zero
                  sub          s1, t4, s5
                  lui          s7, 335944
                  bge          a1, s11, 18f
                  bltu         zero, s3, 18f
                  slli         s4, s3, 0
18:               auipc        s3, 765156
                  and          s2, a5, a5
                  lw           ra, 4(a3)
                  slli         sp, a5, 19
                  nop
                  addi         a3, a3, 56
                  addi         t2, a2, -1975
37:               addi x3, x1, 0
37:               jalr x3, x3, 0
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
.word 0x6976380f, 0x049d8730, 0xcc84f90a, 0xfe5b618e, 0xf876ba33, 0x1b92dd15, 0x6a8b5877, 0xceb8d01d
.word 0x2bcb716a, 0x71fc61cc, 0x9e419e08, 0xd23777b3, 0x95357efc, 0x66eef735, 0x5746ad1c, 0xa3ee758c
.word 0x3ce1970b, 0xb22431ff, 0x20f1c0b3, 0x583e1927, 0xb79506f1, 0xfc2b40f8, 0x3f2f01e0, 0xb25281b2
.word 0x0fb4a785, 0xa73f2da4, 0x25eae444, 0xa8244ef8, 0x911817a4, 0xee89f251, 0x3da46df9, 0x5ca65b07
.word 0x900f9cef, 0x0f56418f, 0x96d70bdc, 0x7fa72d6d, 0x84e4428d, 0x54984d2c, 0x4e223763, 0x4a2e2c58
.word 0x54b303a9, 0xb37844be, 0xb6ece4a6, 0xb63f50a0, 0xc02217ca, 0x65266161, 0xef0a978a, 0x80170510
.word 0xeedec7a9, 0x3cf311d4, 0x3593dd5f, 0x1b1bec64, 0x482c1736, 0xe08cb6fb, 0x122d3841, 0xeee80709
.word 0x6cf0955f, 0x61a24931, 0x1c917fed, 0x271287d0, 0xbff81cef, 0x2cd05fd3, 0x4c61ea40, 0xb58ccec4
.word 0xf7c0efff, 0xba82e96d, 0xe249a1da, 0xbc2da0e5, 0x6c284d4c, 0xbcf571c1, 0x71c94021, 0x2057b035
.word 0x2275e87f, 0xade4ef1c, 0x0eb25a0a, 0xaaed82a0, 0x3dd4abd1, 0xce341e82, 0xeabfa0c9, 0xbf4e9ca5
.word 0x71e6dd4d, 0xcacb6044, 0xc94b357a, 0x4db34a5a, 0x505e2da6, 0x00105c9e, 0x23cd205d, 0xfe8be185
.word 0xf550c394, 0xdbc3a006, 0x13c5eab2, 0x2d31d348, 0x26063215, 0x2b64ed8d, 0xc13ed27d, 0x0033c339
.word 0x1fdcc542, 0xa04e0ffd, 0xfb24890d, 0x1987a2d1, 0x22692a76, 0x7ff4b937, 0x7b73615f, 0x30e89ab1
.word 0xd46f5288, 0x5808a6b4, 0xc2debf80, 0xa7ab467d, 0xefba5acc, 0xfc577eb8, 0x40c9c01c, 0xae89634a
.word 0x3bdbfa05, 0xc9f47c24, 0xd9070adf, 0x3f03dd07, 0x0e29a460, 0x2ee8670e, 0xbdac6094, 0xcc531f0a
.word 0x36037e2f, 0x0d1708a8, 0xae6ad172, 0x436c59dd, 0xdcbc30ca, 0x887c7e23, 0x0d13ebbe, 0x27a5323b
.word 0xa644d576, 0x5c5a975e, 0x4d8be442, 0xe3d1374f, 0xa8cab50b, 0x7d4738d0, 0x64cbacbd, 0x2b122a0c
.word 0x9ce73d61, 0x4b6a8d2a, 0x62dc08b1, 0x5e8a1f1e, 0xbf01fa27, 0x231138c8, 0x40c80af6, 0x6c63632a
.word 0x6eaed81d, 0x8aa927a4, 0xf7ccea5e, 0x42a89331, 0xde0544cd, 0xb5ed29e4, 0x546c392c, 0xe25b7b09
.word 0x1b2da8f3, 0xc63021fc, 0xbb013bd7, 0xf4b100af, 0x3af5d9c7, 0x55cd4d24, 0xdce1f43d, 0x115ecd28
.word 0x91255502, 0x5c16cd3d, 0x8ea1929a, 0x190d7954, 0x370c56ce, 0x04e8b8b4, 0xf6df53f2, 0x9bb4f0db
.word 0x324cafd1, 0xa0ab3999, 0x70a6bcd6, 0x63d3a1d2, 0x2c57b9c4, 0xbfdcabf0, 0xe1c1810d, 0x6056ac69
.word 0xbfebe959, 0x162120b2, 0xb328c7e0, 0x3b0d7f4a, 0xcd98b189, 0x8e07481f, 0x62bc454e, 0xf9200c2d
.word 0x501a3e94, 0x7e66d693, 0x1769e5c8, 0xad84d8c9, 0xc0296fe9, 0x5ce60a3d, 0xa4b3263d, 0x0a3febab
.word 0x90d3270a, 0xfec5a5a0, 0xc656c623, 0x46b07448, 0x8eb51262, 0xca4fad0c, 0xd9d87149, 0x5866ea97
.word 0x8df6a596, 0x965af89e, 0x35404493, 0x0dc46566, 0xa7d7562a, 0x6a15aaeb, 0x9f18060e, 0x86948cd4
.word 0x3898a958, 0x162470a4, 0x9a2ec3be, 0x4865c621, 0x12ee5854, 0xf47f078c, 0xe39da509, 0x84721273
.word 0xaba9adbe, 0xa695c954, 0xfe80404d, 0x239c44d7, 0x6bcb575c, 0xb0363204, 0x8aed5adb, 0xd79ffdde
.word 0x5fa220f4, 0x5e1c343a, 0xea4ead50, 0xce150fca, 0x44e32952, 0x24e99b8d, 0xec65e341, 0x610d01c0
.word 0x2328643f, 0xaff398c7, 0x6c51c82d, 0x55e1d2ce, 0x6af2b697, 0x3e0d0b03, 0xa06aaadf, 0x6e53a0ef
.word 0xb2069f41, 0x5d9e7b2e, 0x4bd53ae9, 0x1683a3d7, 0xabed7567, 0x73ec6c45, 0x5201110a, 0x314a0c21
.word 0x87857526, 0xfae789d2, 0x8cbc9832, 0xf344c907, 0x681e81ed, 0x9aee1b85, 0x1ee87f3d, 0x46e570b5
.word 0x0dc10616, 0x77c5d0d3, 0xa3379098, 0x0ff389c6, 0x6435be92, 0x7003e8c1, 0xb8063b32, 0x19bfc5ad
.word 0x8268ef84, 0x9c84a9d1, 0x6adae9dd, 0x170a5607, 0xe6ee2186, 0x73f26e90, 0xdf94eea2, 0x37751c6c
.word 0x5c1f5e9d, 0xfe329089, 0x5e81532d, 0xc164f2d9, 0xc91ed232, 0xb1c85757, 0xf71220bb, 0x6f244b88
.word 0xd3c7a6fe, 0xf9569765, 0x68467934, 0x5c5e34ad, 0xa83f52f4, 0xca407cab, 0x6a765930, 0x405f0b87
.word 0xa9c7d1c4, 0x6e69d634, 0x47c590a2, 0x387cf328, 0xb8ab3659, 0xab51c415, 0x4bb921cb, 0x55755c08
.word 0xea81c4af, 0x455a8c6c, 0xd50cfba9, 0x903de45f, 0xe56de81e, 0x2a6008a2, 0xdd50cc12, 0x08625c7a
.word 0x0345a1c2, 0xa9503dca, 0xa1a6c35c, 0xfa7afc09, 0xdd2f9a07, 0x53ea965e, 0x1f4f31f6, 0x41556acc
.word 0x6df4124f, 0x41287b9f, 0x9971e771, 0xc107ab71, 0x495e6586, 0xaf9a3d04, 0xdd4e9d7b, 0x8d7303fd
.word 0x4c765cc6, 0x38f92b72, 0x3fb17712, 0x2093a1c0, 0xa32b3c3e, 0xccf3eea6, 0x93649453, 0xb908426f
.word 0x28b6532a, 0x3971189c, 0x8a27db22, 0x1de4b0f6, 0x46cbd549, 0xcc1e4b40, 0x5fae090c, 0xbb7f1731
.word 0x2f4cf753, 0x1c3cee23, 0xe31a2a9d, 0xdced044b, 0x31cb3110, 0xea9e6bc7, 0x58b38bb4, 0x0843ca5e
.word 0x9ca366ed, 0x1e92a270, 0x11346b10, 0xf84dd80e, 0xf246c86f, 0x67ea3035, 0x28125982, 0xa9afc849
.word 0x1282e514, 0x6cea6eb7, 0x55abbe6e, 0x5fe37efb, 0x7965af00, 0x37617477, 0x22e873af, 0x56ff38ac
.word 0x2ad60f37, 0x4a10faaa, 0xc3fd9843, 0x683b38af, 0x6f4e2c0f, 0x1a724a99, 0xa6bf5633, 0xf08488a2
.word 0xed34e520, 0x99c9c89d, 0xe19f219f, 0x75725774, 0xee115169, 0x23cc3262, 0xe09133b0, 0x4b62a366
.word 0x43b10df8, 0xf912ff8d, 0x56b4f553, 0x97cc5e6a, 0x7347fdd1, 0xd49d39fb, 0xb8f5b36d, 0xf27d5253
.word 0x639d4916, 0xe5485859, 0xae02452b, 0x4a156576, 0x124b078c, 0x40b9d73d, 0xccd49973, 0xe005170a
.word 0xbcd3d760, 0xb4fcd8d1, 0xcc5957bb, 0x22e0ac60, 0x30d5150b, 0x7dd72c6c, 0x292e4b7b, 0xd11f6301
.word 0x01fac57e, 0x1668dbba, 0x1e1930ed, 0xc775c292, 0x238af085, 0x3f771e6d, 0xad12bd68, 0xc2c9932e
.word 0x6eaaf586, 0x500349bf, 0x2114f015, 0x2addc47b, 0x21c91579, 0x4712b644, 0x1ea961d0, 0xe45848ec
.word 0x30c27614, 0x846d7d47, 0xaeebca34, 0xeeda32f9, 0xd2731c45, 0x6ac88d52, 0x67d829d7, 0xf90d4a8e
.word 0xf643e5c2, 0x8dadd92e, 0xea02fbcb, 0xe94de826, 0x506605a2, 0x9a33f3b3, 0x283aa950, 0xeda9b08e
.word 0xd45d8c61, 0xc0d452c3, 0xe4a66f45, 0x07989ba9, 0x870c5483, 0xe4329e59, 0xdb02ab58, 0xa76c30dd
.word 0x5c574e2e, 0xe96462d1, 0x11b18f58, 0x4c5dccc1, 0xe640185c, 0x0ebd7416, 0x2fd11552, 0x0c408ff8
.word 0xb5d31ef6, 0x151ff672, 0x57cd0581, 0xdbe12d34, 0x740e383b, 0xc907257c, 0x3284f7e3, 0xd91092e8
.word 0x48ea12e3, 0x77aafe5c, 0x3abe8fd0, 0x28b5b8fe, 0x46ed1125, 0x32f06db8, 0xca86125b, 0x4042bc67
.word 0xa0f53783, 0x0bdd5545, 0x16becfae, 0xeddfbc5d, 0x63ef46fa, 0xb751b93e, 0x79055e74, 0x6a729ff7
.word 0xea55c2cb, 0x69719bf3, 0xfbe9d977, 0x01e0ff77, 0x958d1fca, 0x3d4191b3, 0x4ff1a35a, 0xb1da55dc
.word 0x8241f390, 0x7b278220, 0xe2569236, 0x9955be98, 0x55c7754c, 0x4bc0d3cc, 0xcbe8eb42, 0xbc8c3acc
.word 0xe2c61448, 0xa8125b81, 0xd483452e, 0xd10e53e7, 0xfe9f226f, 0x6d1c3db5, 0x97e135e6, 0x6e44a629
.word 0x14962d4c, 0x70d2b9c4, 0xb6fd847e, 0x5d78b57a
.section .region_1,"aw",@progbits;
region_1:
.word 0x8c7c2d9b, 0x3d5d8125, 0xa317c972, 0x17d9d4d5, 0x63eb030b, 0x59944d57, 0xc21d5057, 0x161d8744
.word 0x01690944, 0xd75b8c46, 0x98015412, 0xfd81a42b, 0x35e2d197, 0xfa23caf9, 0x9944857e, 0x25e18334
.word 0x723b60d3, 0x723f0215, 0x7abfe504, 0x54931024, 0x9a8e802a, 0x9bd2d224, 0x930dc511, 0x0a77dc14
.word 0xe183b5a9, 0xa1e9154b, 0x7563a398, 0x0a807807, 0xca1890a8, 0xeb18dc55, 0x3113e19b, 0xc31e6df0
.word 0x412db5cd, 0x0d080dec, 0x23573e67, 0x3f88531b, 0x3c14b124, 0xaec2eef3, 0x58a7af45, 0xebd2c711
.word 0x11590ff2, 0xeae02e5f, 0xb28e3380, 0x927f3417, 0xcb1fbb5c, 0x31a62a55, 0x0c7d151d, 0x126add91
.word 0xe32ca05e, 0xda053cc8, 0x84a2aa5a, 0x320b51a7, 0x1dabb25c, 0xe7123175, 0x48edcf35, 0x46b48b76
.word 0x6d988efb, 0xa5987b25, 0x817b3d65, 0x46293a00, 0x15aab0a4, 0x95d99025, 0x8817fb25, 0x318c881a
.word 0x88be63d6, 0x3c029126, 0x4880a317, 0x9a3cfa44, 0x437dc5d0, 0x377ef76d, 0x0ff29e4f, 0xf3a2751b
.word 0xf8c361be, 0xa4bcd5fd, 0xfbc01ac5, 0x2ce57a2a, 0x51bb350c, 0x9ed08b72, 0xa1ba6bce, 0x91e67165
.word 0xfed0f92d, 0x710d74f5, 0xf0429adf, 0x98245ab5, 0x8fd9f741, 0x499f7aa4, 0x7b8e91ab, 0x40046dbb
.word 0x5950a29a, 0x99028ce2, 0x922a3755, 0x25485ea5, 0x06b315d3, 0x89a9ff27, 0x86f5583d, 0x29ae6c35
.word 0xa5937139, 0xe1ff8412, 0xe0a35577, 0x14ade481, 0x64262074, 0xf3039b5f, 0xc42a89d5, 0x9082b468
.word 0x3db2da21, 0xfe27239b, 0xd7b0d7fb, 0xd85691c4, 0xb18399ce, 0x9747843c, 0xc414816a, 0x95db6ea7
.word 0xbc71d192, 0x60e0ab88, 0xc32b93ca, 0x6f465028, 0x2978c638, 0xd43b9e11, 0xa7c0c68c, 0x0d83f27d
.word 0x5eaf9537, 0x13cde19e, 0x777f2a7a, 0x4ab759bd, 0xcdfd6489, 0x6bc01765, 0xae1c259e, 0xe2dad548
.word 0xdb386414, 0x7f843b14, 0x93b90263, 0xeac1a167, 0xa9d7a25c, 0x8f1ed2d3, 0xd3e2a9d1, 0xa9c84fc8
.word 0x899e45d8, 0xfb6db748, 0x8b724f0d, 0xc58f515e, 0xcdbacf73, 0x333f282b, 0x0fa27d7b, 0xeb5337f1
.word 0x4fb9e0e1, 0xd49b8cf4, 0xde5fe7f3, 0x46a28c01, 0xa1933fed, 0xabf5f9d5, 0x06c442e5, 0x70ed0b3a
.word 0x376c6f1e, 0x0414f72b, 0x954236d3, 0xd22d0fcf, 0xad09714e, 0x49a31adf, 0x76df3c2f, 0x26a5b597
.word 0x9cf0e8ff, 0x2ca492d1, 0xbfc628a0, 0x6b8c82a1, 0x9e6137c3, 0xc9fea045, 0xe41fb9b7, 0xd364a887
.word 0x5c1ef1b0, 0x9e440258, 0x37fdb0e1, 0xa77fe402, 0xbd62bc95, 0x5072cdb0, 0x436dfaec, 0x74a7484b
.word 0xaf2e4f59, 0xe6968e72, 0x8903573c, 0x86aa852d, 0x27fc0654, 0xbe37e651, 0x717f66e0, 0xbab57898
.word 0x25fcef9f, 0x64fa7090, 0x1b5332f4, 0x27f6e511, 0xb6f2b870, 0x8958ef98, 0xb728dc29, 0x530ebf7e
.word 0x36cadd14, 0xa118384f, 0xaf0db464, 0x4cf2de73, 0xd385c3ec, 0xcf9e3e78, 0xbef8af0a, 0x2fcba820
.word 0x13ddc415, 0xda72d408, 0xfe1034e9, 0x7e304fde, 0x0a54b78a, 0xe5e43165, 0xfd7c43ed, 0xa0da704e
.word 0x0214d899, 0xf8cc0b55, 0x2bed33df, 0xd2a9528f, 0x4feb77ea, 0xabcc3785, 0xfbe4737b, 0xb7069edf
.word 0xf1d74836, 0x9c7bf802, 0xf737cd9d, 0x4bc1f0cb, 0xbd1c183c, 0x549d24f0, 0x92baf15e, 0xdf4887a6
.word 0x2969401b, 0xeb5b377b, 0x09d30d3e, 0x248095f0, 0xeafc441f, 0xadba43da, 0x905fbf64, 0x37cb4060
.word 0xfd751ea0, 0x03e76af5, 0xf0d5095e, 0x129bba99, 0xa24e1bf6, 0x979ebe5b, 0x3b695600, 0x9ae6921d
.word 0x786d36f7, 0x224d4925, 0xbb62fa88, 0x1564d378, 0x9fe67033, 0xf9c75fc8, 0x71a851ae, 0x608c247d
.word 0x33a463fd, 0x611f2def, 0xabd9fea3, 0xabb551d5, 0x88067368, 0x9dc3eb31, 0x17b0ab59, 0x42d8a722
.word 0x51424cd1, 0x545f93f5, 0xa0286669, 0x903a4f60, 0x72f5b08b, 0xa661ddfb, 0x4715a23f, 0x349e935f
.word 0x5fdab102, 0x82ce44dc, 0x63bfd575, 0x15582d74, 0xa1250137, 0x4985ee5d, 0x9d4c0e3d, 0x6b12cdf7
.word 0x8b5d9fd5, 0xf98851e3, 0x043ce5e9, 0xfabc8f56, 0x4461e1e9, 0x8573cc7f, 0x5ee608b3, 0xd9f1ba8d
.word 0x096f3bcc, 0x1a919213, 0x5e33deed, 0xb01f6d20, 0x09105832, 0x8808d2af, 0xc1092a24, 0xb5bce894
.word 0x4513b006, 0x51c7a5c7, 0xb93cf0d9, 0x7e269017, 0x189c1f94, 0x5f5f6be9, 0x5dc104cc, 0xdb762b34
.word 0xf6d2a785, 0x53c39732, 0x6fa41729, 0x689b43a7, 0xdd974828, 0x7d8f0b0f, 0xa4a3e62a, 0x83d2ecef
.word 0xfb73438d, 0xb5fcbb15, 0xec3fb8fc, 0x84f38521, 0xaac75e39, 0xb0ab77d1, 0x4b6fec2c, 0xac0f9071
.word 0x65baca8a, 0x890520fa, 0x33e540e7, 0x6bcd392f, 0x25c48b86, 0x719c77c8, 0xa9b64346, 0xc2e71e14
.word 0x89ae6f01, 0x263d65a0, 0xae83a6bc, 0xa8f6fae2, 0x58fba51b, 0xa392c9ad, 0xd08988c8, 0x089b0135
.word 0x4e6eb318, 0xdeb0acf7, 0x590a73df, 0xe4ae1fe2, 0x31e35e0b, 0xd7d7c460, 0x93a466c6, 0x294eaf86
.word 0x972e6549, 0x1c5bd267, 0x862b56a5, 0xffc8b4fa, 0xfd0aca40, 0x73fa901d, 0xba88a41d, 0x922ecebe
.word 0x64999d95, 0x6ad46ea7, 0x1fe1b87c, 0x305344dd, 0xf28e3644, 0xc1b5ce37, 0xb291e535, 0xbfdf0358
.word 0x7a7006fc, 0x30aa258a, 0x3832f468, 0x60167c81, 0x8bf88b2b, 0x7b655495, 0xe77c4850, 0x3afcf176
.word 0xe46d6726, 0xc32d4c28, 0x3a11260c, 0xfc20714c, 0x15b604cc, 0x26435f98, 0x827b0591, 0x2665e193
.word 0xd1003c1e, 0xbd14cb4f, 0x66e0c29b, 0x56c84487, 0x6e568d49, 0x30dcbe7b, 0xf01e3869, 0xb1dd6eb1
.word 0x56c6602f, 0xc7e5319c, 0xa46f3100, 0x27f8ab12, 0x16620302, 0x41371a4e, 0x421e237f, 0x656adeb0
.word 0x6c003e97, 0x3addb5c9, 0x1f564afe, 0x8f731a86, 0x2aab6549, 0x51d515b7, 0x7e56f148, 0xdb645760
.word 0x90ed32ad, 0x11df13b1, 0xdb8dd87d, 0xcaf5fb5b, 0x6a972c71, 0x0dab363f, 0x00ca157b, 0x69e777f5
.word 0x4738dcb5, 0x11a0aa3e, 0xcf67d0a4, 0xa84080bb, 0xed002e25, 0x17678f80, 0x2add557e, 0xbeaa7429
.word 0xfc8929e4, 0x136eef4e, 0x4cb61cc0, 0xf8e4d904, 0x00e97691, 0xd945ce4a, 0xe3a25064, 0xe206ff9e
.word 0xae344e91, 0xf965bc4f, 0xc3153fbc, 0xdbd185ba, 0xb88b7c35, 0xcdd18157, 0x4054dc10, 0x698f0ff7
.word 0x467e67cf, 0x86c7dfd8, 0xa1d8653d, 0x7d298fed, 0x81dcba0a, 0xa9b4ed29, 0x33960b56, 0x82cacd01
.word 0x78ed283e, 0xbc0826af, 0x0f2981ee, 0x436e1251, 0x367b3a3e, 0xbb10029a, 0x6e56d09b, 0x0149da86
.word 0xf9f86776, 0x877db42e, 0x0c23ea8e, 0x3fb07cd8, 0x7c6f646c, 0x4534263e, 0x8388d52f, 0x9803d1e2
.word 0x2a8c8cbf, 0xd5c14766, 0x0afa1f1c, 0xf63674cc, 0x9ecb2395, 0x43257a82, 0x68b7c3df, 0x660671ac
.word 0xa0ba8443, 0x2e013cc5, 0x1e205c07, 0x1f53104c, 0x498d3696, 0xb7ae90e5, 0x69609dc9, 0x3b9ac7c4
.word 0x64e97e45, 0x23aafcfa, 0xfbf6583f, 0x0b13ef91, 0xcb1e024b, 0xf188c4e6, 0xcc78c68f, 0x5f01209d
.word 0x378a6d79, 0x27961297, 0x1d854122, 0x0953ea09, 0x39024b29, 0x9092e33f, 0x38f8e89c, 0x89318666
.word 0x3ee61f2e, 0x824fefc4, 0x7415f114, 0x2c2813ea, 0x0783cb3f, 0x602b2f89, 0x83f9b0ef, 0x13440c61
.word 0x4d585a78, 0x2d393bd7, 0x486a61c8, 0xbf85ed26, 0x1a8e9030, 0xc7d39ff2, 0x8fca0ca0, 0xfe1a4d1a
.word 0x373c0625, 0x8f32d96c, 0xd23e9f8f, 0x32d4a265
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x11, x13, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x2, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x2, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x2, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x2, x4, ecall_handler
                  li x4, 0x1
                  beq x2, x4, instr_fault_handler
                  li x4, 0x5
                  beq x2, x4, load_fault_handler
                  li x4, 0x7
                  beq x2, x4, store_fault_handler
                  li x4, 0xc
                  beq x2, x4, pt_fault_handler
                  li x4, 0xd
                  beq x2, x4, pt_fault_handler
                  li x4, 0xf
                  beq x2, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x13, x11, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x11, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x11, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x13, x11, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x13, x11, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x13, x11, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
