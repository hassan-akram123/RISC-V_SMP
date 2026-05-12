.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x6
                  li x2, 0x6e94a7e5
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x7
                  li x7, 0xfab99e7b
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0xf4bdbac3
                  li x11, 0x80000000
                  li x12, 0x23801c2b
                  li x13, 0x7
                  li x14, 0x7
                  li x15, 0x0
                  li x16, 0xf6be6bae
                  li x17, 0x80000000
                  li x18, 0x4
                  li x19, 0x899c9432
                  li x20, 0xf9676b9f
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xf
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0xe9c64add
                  li x31, 0xb
                  la x25, user_stack_end
main:             jal          a2, 2f
0:                jal          ra, 11f
1:                jal          ra, 16f
2:                jal          ra, 23f
3:                jal          gp, 26f
4:                jal          ra, 21f
5:                jal          a6, 7f
6:                jal          gp, 1b
7:                jal          ra, 20f
8:                jal          ra, 24f
9:                jal          t1, 5b
10:               jal          s6, 18f
11:               jal          ra, 9b
12:               jal          ra, 15f
13:               jal          t0, 0b
14:               jal          ra, 6b
15:               jal          ra, 25f
16:               jal          t1, 13b
17:               jal          t1, 14b
18:               jal          ra, 17b
19:               jal          ra, 3b
20:               jal          t1, 12b
21:               jal          ra, 19b
22:               jal          ra, 10b
23:               jal          ra, 22b
24:               jal          ra, 4b
25:               jal          s1, 8b
26:               nop
main_3:           jal          a2, 8f
0:                jal          s6, 14f
1:                jal          s2, 10f
2:                jal          ra, 1b
3:                jal          ra, 5f
4:                jal          t1, 13f
5:                jal          ra, 2b
6:                jal          s10, 4b
7:                jal          t1, 11f
8:                jal          ra, 6b
9:                jal          ra, 0b
10:               jal          ra, 9b
11:               jal          ra, 3b
12:               jal          t1, 7b
13:               jal          a0, 12b
14:               slli         t2, t5, 16
main_6:           jal          a2, 1f
0:                jal          ra, 3f
1:                jal          ra, 5f
2:                jal          a4, 7f
3:                jal          t1, 8f
4:                jal          ra, 6f
5:                jal          ra, 2b
6:                jal          ra, 9f
7:                jal          t1, 10f
8:                jal          ra, 11f
9:                jal          t1, 0b
10:               jal          ra, 12f
11:               jal          t1, 13f
12:               jal          sp, 4b
13:               lui          t3, 916190
main_1:           jal          a2, 4f
0:                jal          a0, 8f
1:                jal          a5, 5f
2:                jal          ra, 14f
3:                jal          t1, 10f
4:                jal          ra, 6f
5:                jal          s0, 13f
6:                jal          t1, 1b
7:                jal          t0, 0b
8:                jal          t1, 12f
9:                jal          ra, 3b
10:               jal          a4, 2b
11:               jal          t1, 9b
12:               jal          t1, 11b
13:               jal          ra, 7b
14:               slli         s3, s11, 4
main_0:           jal          a2, 2f
0:                jal          ra, 17f
1:                jal          ra, 16f
2:                jal          t1, 5f
3:                jal          t1, 1b
4:                jal          s0, 3b
5:                jal          sp, 10f
6:                jal          ra, 12f
7:                jal          ra, 6b
8:                jal          ra, 18f
9:                jal          ra, 14f
10:               jal          sp, 4b
11:               jal          s3, 0b
12:               jal          ra, 8b
13:               jal          ra, 15f
14:               jal          t1, 7b
15:               jal          ra, 11b
16:               jal          ra, 13b
17:               jal          ra, 19f
18:               jal          ra, 20f
19:               jal          t1, 9b
20:               slli         ra, tp, 13
main_2:           jal          a2, 5f
0:                jal          t0, 3f
1:                jal          s6, 0b
2:                jal          s6, 4f
3:                jal          ra, 10f
4:                jal          a1, 9f
5:                jal          sp, 8f
6:                jal          ra, 2b
7:                jal          t1, 11f
8:                jal          gp, 1b
9:                jal          t1, 7b
10:               jal          ra, 6b
11:               sll          a5, a3, a2
main_7:           jal          a2, 8f
0:                jal          t0, 6f
1:                jal          ra, 5f
2:                jal          ra, 13f
3:                jal          gp, 21f
4:                jal          a3, 14f
5:                jal          t1, 18f
6:                jal          t2, 26f
7:                jal          t1, 9f
8:                jal          ra, 16f
9:                jal          s7, 10f
10:               jal          sp, 27f
11:               jal          ra, 15f
12:               jal          sp, 11b
13:               jal          t0, 24f
14:               jal          t1, 17f
15:               jal          ra, 0b
16:               jal          ra, 3b
17:               jal          t1, 1b
18:               jal          ra, 29f
19:               jal          gp, 20f
20:               jal          t1, 28f
21:               jal          ra, 7b
22:               jal          ra, 12b
23:               jal          t1, 22b
24:               jal          t0, 23b
25:               jal          t4, 19b
26:               jal          sp, 4b
27:               jal          ra, 25b
28:               jal          ra, 2b
29:               srl          gp, gp, t3
main_8:           jal          a2, 16f
0:                jal          s4, 22f
1:                jal          a3, 20f
2:                jal          sp, 1b
3:                jal          ra, 18f
4:                jal          ra, 17f
5:                jal          ra, 25f
6:                jal          a7, 28f
7:                jal          t1, 3b
8:                jal          a0, 26f
9:                jal          t4, 15f
10:               jal          ra, 8b
11:               jal          s0, 19f
12:               jal          t1, 2b
13:               jal          a0, 11b
14:               jal          ra, 0b
15:               jal          ra, 12b
16:               jal          ra, 21f
17:               jal          ra, 6b
18:               jal          t1, 10b
19:               jal          ra, 23f
20:               jal          s5, 4b
21:               jal          ra, 5b
22:               jal          ra, 13b
23:               jal          ra, 27f
24:               jal          ra, 14b
25:               jal          t1, 7b
26:               jal          ra, 24b
27:               jal          ra, 9b
28:               ori          zero, gp, 1152
                  andi         s1, a0, -1932
                  srli         a7, t6, 28
                  xori         s2, s4, -840
                  add          t1, t0, zero
                  addi         s5, t2, 1675
                  ori          t3, s1, 1557
                  srli         s10, a2, 24
                  slti         t3, s5, 228
                  bgeu         a6, a6, 23f
                  slt          s10, s9, s8
                  lui          a7, 547404
                  srai         t4, s9, 26
                  bltu         a5, s8, 27f
                  add          s6, s0, t1
                  auipc        s5, 811168
                  sra          s3, s10, t3
                  bge          s1, t1, 32f
                  sltu         t6, gp, zero
                  blt          s11, zero, 34f
                  sra          t2, s4, ra
                  bge          a1, s5, 31f
                  slli         a2, a6, 1
                  slti         zero, ra, 1748
23:               srai         a6, a0, 9
                  andi         t3, a7, -1378
                  slli         s1, tp, 6
                  bltu         a0, s10, 34f
27:               srai         a6, t3, 6
                  add          t1, a0, t0
                  lui          t6, 877321
                  addi         ra, s11, -479
31:               bge          s2, s0, 34f
32:               and          s4, s11, ra
                  bge          tp, s4, 46f
34:               sll          sp, t6, sp
                  xori         t4, zero, -1849
                  sltiu        s0, tp, -943
                  srli         gp, s10, 15
                  ori          sp, t0, 557
                  or           s7, t1, gp
main_11:          jal          a2, 15f
0:                jal          ra, 3f
1:                jal          s7, 0b
2:                jal          s7, 10f
3:                jal          ra, 11f
4:                jal          t1, 2b
5:                jal          ra, 22f
6:                jal          ra, 26f
7:                jal          t1, 16f
8:                jal          a1, 30f
9:                jal          a5, 23f
10:               jal          a2, 24f
11:               jal          ra, 18f
12:               jal          gp, 27f
13:               jal          ra, 19f
14:               jal          ra, 29f
15:               jal          ra, 12b
16:               jal          t1, 13b
17:               jal          ra, 20f
18:               jal          ra, 5b
19:               jal          ra, 17b
20:               jal          ra, 6b
21:               jal          t0, 25f
22:               jal          a3, 8b
23:               jal          ra, 1b
24:               jal          t1, 7b
25:               jal          ra, 14b
26:               jal          gp, 9b
27:               jal          ra, 28f
28:               jal          a6, 21b
29:               jal          t1, 4b
30:               add          a4, s6, tp
                  bltu         a1, s5, 43f
                  nop
                  sub          a4, s4, t4
43:               bgeu         a6, a3, 59f
                  sra          s4, tp, a5
                  slli         a7, t1, 16
46:               bne          zero, t3, 63f
                  bne          tp, a3, 61f
                  bge          s2, s1, 49f
49:               bltu         a3, t2, 63f
                  sra          a0, s5, a6
                  addi         s5, s11, 1196
                  slti         t1, s8, 1765
                  lui          t4, 1032557
                  addi         t1, gp, 103
                  sra          a2, a4, s7
                  beq          sp, t6, 62f
                  sll          s5, s6, a5
                  blt          t6, s6, 65f
59:               addi         a6, t3, -685
                  nop
61:               or           t2, t2, s8
62:               lui          a1, 577475
63:               sra          s11, a5, s5
main_10:          jal          a2, 2f
0:                jal          ra, 3f
1:                jal          ra, 10f
2:                jal          t1, 4f
3:                jal          ra, 8f
4:                jal          ra, 15f
5:                jal          ra, 0b
6:                jal          ra, 1b
7:                jal          ra, 13f
8:                jal          t1, 6b
9:                jal          ra, 18f
10:               jal          ra, 11f
11:               jal          t1, 7b
12:               jal          t1, 17f
13:               jal          sp, 12b
14:               jal          s5, 5b
15:               jal          t1, 14b
16:               jal          t0, 9b
17:               jal          t1, 16b
18:               auipc        s10, 206835
                  add          s6, a2, gp
65:               add          zero, s8, gp
                  add          a2, t3, s1
                  sra          a5, s8, zero
                  srai         t2, sp, 31
                  slli         gp, s4, 16
                  slti         t4, s7, -1532
                  ori          t5, a3, 666
                  xor          t0, t4, s9
                  srli         t1, a1, 28
                  sll          gp, t5, t1
                  xor          a4, s3, a6
                  bge          a5, a2, 90f
                  sltu         s1, s7, ra
                  and          a1, t6, a2
                  sltu         s0, zero, s6
                  bge          s6, s9, 88f
                  bge          zero, a4, 100f
                  slti         a7, zero, 167
                  xor          t3, s4, t5
                  slt          t4, s6, zero
                  and          s0, a1, a5
                  sll          a7, t1, s9
                  add          a1, s8, a2
88:               bge          sp, a3, 90f
                  addi         ra, t2, -1080
90:               andi         s0, s2, -434
                  sub          t3, a0, s2
                  addi         s2, a1, 872
                  blt          s5, t0, 106f
                  srli         s4, t2, 18
                  addi         sp, s9, -53
                  nop
                  ori          t3, s2, -797
                  sltu         gp, t2, t2
                  and          a5, s1, s4
100:              auipc        a4, 1048045
                  bne          s0, t1, 119f
                  xori         sp, zero, 70
                  srai         s3, t0, 22
                  blt          s2, s0, 105f
105:              slt          s6, sp, s3
106:              nop
                  bne          t0, s9, 109f
                  addi         a2, s8, -1421
109:              addi         gp, s3, 1422
                  srai         t1, t4, 27
                  add          a7, s4, t0
                  auipc        t5, 222419
                  nop
                  addi         s5, a0, 55
                  andi         a7, t6, 1343
                  sltu         t4, a2, a7
                  add          a2, t4, s7
                  srli         a0, s6, 5
119:              or           a5, a7, t0
                  lui          gp, 90909
                  sra          a2, t1, s6
                  xori         a7, tp, 927
                  bgeu         tp, sp, 139f
                  lui          sp, 13156
                  sll          t4, zero, a5
                  andi         s7, s6, 493
                  xori         t6, s9, 537
                  beq          s3, s2, 139f
                  bne          zero, s6, 146f
                  sll          s7, sp, a0
                  bltu         a7, s2, 133f
                  bgeu         t3, t6, 145f
133:              bne          sp, s10, 143f
                  sll          zero, gp, t6
                  bne          zero, a1, 143f
                  addi         s7, zero, 806
                  beq          zero, a7, 151f
                  xori         t2, s8, 142
139:              andi         a4, t5, -1949
                  ori          s7, zero, 1257
                  blt          gp, s8, 144f
                  beq          s10, t5, 150f
143:              slt          t1, a6, a0
144:              lui          s0, 999183
145:              srai         s10, a5, 23
146:              ori          s7, tp, -93
                  sltu         a1, t5, s10
                  ori          a5, s0, -1505
                  bge          a5, s7, 162f
150:              sra          a7, t4, s0
151:              slli         s5, t6, 1
                  or           a1, a0, gp
                  addi         a1, s5, -441
                  and          s0, zero, s0
                  add          s3, t4, sp
                  srli         s6, t6, 11
                  slti         t5, s0, -1928
                  nop
                  slt          t5, t1, s4
                  bgeu         s4, s7, 162f
                  addi         a2, zero, 995
162:              sltiu        t5, t0, -25
                  andi         sp, zero, 655
                  add          s0, s6, tp
                  bgeu         s5, s7, 167f
                  bne          t1, gp, 168f
167:              sltu         s6, a7, t4
168:              ori          ra, a4, 431
                  andi         s2, s8, 868
                  bltu         a3, a7, 184f
                  xori         s4, s9, -835
                  sll          s4, tp, s10
                  or           t4, t5, gp
                  srl          s0, t0, zero
                  sltiu        t5, t6, 285
                  sub          s10, tp, a3
                  bge          t1, zero, 194f
                  beq          s8, t6, 189f
                  srli         s0, s4, 25
                  sll          a7, t3, a1
                  add          s4, gp, t3
                  andi         t3, s8, 585
                  bge          s10, a6, 190f
184:              andi         gp, s7, 195
                  slli         a0, tp, 24
                  or           a0, a1, gp
                  sltiu        a2, a1, 1432
                  andi         a5, s5, 535
                  la           sp, sub_1
                  sub          a1, a1, s4
                  addi         sp, sp, 975
                  sll          t2, s0, a4
main_j1:          jalr         a2, sp, -975 #jump main -> sub_1
                  addi         a5, zero, 1341
                  slt          sp, t4, s7
                  bge          s6, a7, 203f
                  and          a0, s1, a0
189:              and          gp, t2, zero
190:              andi         t6, ra, -454
                  srai         s5, t3, 20
                  addi         t5, gp, -1385
                  bge          a1, s9, 209f
194:              or           a3, a1, zero
                  auipc        a5, 657315
                  blt          gp, a7, 207f
                  or           s11, a3, s10
                  auipc        a2, 416126
                  sra          s4, s5, s0
                  or           a3, s5, t1
                  sltu         a1, s1, a2
                  srai         s3, t6, 24
203:              xori         t5, s4, -1076
                  and          a3, a0, t5
                  nop
                  auipc        t5, 1014218
207:              sll          sp, t1, s9
                  srai         s10, gp, 19
209:              blt          t3, a5, 224f
                  srli         a7, s3, 3
                  sltu         t6, tp, s4
                  sltiu        t6, a2, 420
                  slli         a0, s4, 21
                  andi         a4, s10, -2046
                  bne          zero, a7, 232f
                  srl          s0, s5, a1
                  ori          a3, s10, 1070
                  add          sp, s11, s5
                  or           s7, a6, s5
                  sll          t5, a3, s3
                  andi         s0, s11, -529
                  ori          t1, a3, -788
                  lui          s1, 602213
224:              addi         s3, t0, -1549
                  sra          s7, sp, t5
                  bltu         a0, t6, 239f
                  srai         gp, s9, 30
                  slli         s6, a5, 20
                  add          t5, a2, a5
                  sll          a1, s9, t0
                  sll          a1, a3, a0
232:              bne          t2, a4, 248f
                  sra          s5, s10, ra
                  or           a1, a1, a0
                  sltu         t0, s5, a4
                  xori         s5, a7, -337
                  ori          s10, s0, 1005
                  xor          t2, t0, s5
239:              slti         s2, ra, -358
                  xori         s3, a5, 1597
                  bgeu         a5, s7, 257f
                  bge          s11, t5, 243f
243:              blt          a1, gp, 244f
244:              xori         s10, s4, -506
                  sub          zero, sp, ra
                  lui          t1, 239309
                  blt          ra, a0, 266f
248:              sltu         a7, a1, s6
                  add          a4, a2, tp
                  srl          a2, s6, s2
main_4:           jal          a2, 5f
0:                jal          a4, 7f
1:                jal          t0, 8f
2:                jal          ra, 10f
3:                jal          ra, 4f
4:                jal          t4, 14f
5:                jal          a6, 1b
6:                jal          a1, 13f
7:                jal          ra, 6b
8:                jal          ra, 11f
9:                jal          ra, 2b
10:               jal          ra, 3b
11:               jal          ra, 12f
12:               jal          sp, 0b
13:               jal          a0, 9b
14:               srai         t0, s5, 0
                  bltu         zero, s9, 261f
                  slt          s6, zero, t4
                  srl          a7, zero, s11
                  auipc        a2, 645196
                  bge          s9, s6, 261f
                  blt          s0, s11, 269f
257:              srai         a7, s2, 15
                  beq          t3, s8, 272f
                  sra          zero, sp, a5
                  blt          t5, t5, 263f
261:              beq          s10, t5, 276f
                  sltiu        a1, t3, -990
263:              lui          sp, 157346
                  sra          a0, s8, s1
                  sll          a5, t2, a2
266:              bgeu         t5, gp, 284f
                  slti         zero, s3, 1657
                  add          s3, sp, t3
269:              srli         a0, ra, 28
                  beq          a5, ra, 273f
                  bne          ra, s4, 284f
272:              bgeu         s4, a6, 283f
273:              xori         t4, s6, 1403
                  srai         a6, t3, 9
                  slli         s1, a0, 3
276:              srl          s6, a2, a7
                  bge          t4, a0, 291f
                  xor          t5, s6, sp
                  or           s7, a5, a2
                  and          t0, a4, s2
                  srli         ra, s0, 29
                  sltiu        a5, t3, -363
283:              bgeu         s9, s8, 291f
284:              xori         ra, a0, -1365
                  bge          zero, ra, 296f
                  nop
                  bltu         s4, t1, 306f
                  slli         t4, a7, 0
                  sub          t6, gp, t4
                  xor          t4, s4, a5
291:              ori          t4, a5, 1552
                  and          s0, a2, a4
                  ori          t4, a7, -765
                  nop
                  sltiu        a1, t3, -169
296:              sub          a6, s3, s10
                  auipc        t3, 756091
                  ori          t6, t0, 647
                  bltu         a2, sp, 301f
                  add          a7, s1, t1
301:              srli         s5, t1, 27
                  bltu         t3, t4, 315f
                  and          s5, t5, s1
                  srai         a3, ra, 1
                  srli         t2, s11, 27
306:              slt          a1, gp, zero
                  slti         t3, t5, 822
                  xori         a1, s2, 920
                  bgeu         s11, zero, 324f
                  sltiu        a2, s9, -1331
                  blt          a1, t3, 327f
                  beq          gp, s5, 329f
                  sltu         s4, s3, a4
                  slt          a3, t5, a3
315:              xori         a5, s5, -912
                  srai         a5, s9, 20
                  and          t6, t1, t1
                  bge          s3, s9, 319f
319:              andi         a5, s9, 1468
                  srl          a6, a4, t5
                  bltu         s9, a6, 335f
                  sltu         s6, a0, s10
                  bltu         s2, a1, 326f
324:              bgeu         s6, tp, 326f
                  sra          ra, a0, a6
326:              bne          a6, s2, 340f
327:              lui          s10, 807940
                  beq          s3, t5, 345f
329:              or           a1, s8, zero
                  slti         a7, a0, -1852
                  xor          a6, t1, s3
                  slli         a4, s10, 18
                  and          t1, s4, s2
                  andi         t3, s5, -251
335:              bne          a1, t5, 341f
                  bge          s3, s0, 346f
                  auipc        s7, 403256
                  bltu         zero, s2, 354f
                  and          t5, s11, a3
340:              blt          t1, t1, 341f
341:              slti         s10, t0, 1221
                  sltiu        t6, s1, -1059
                  sltiu        a7, s3, 1654
                  sub          a5, s2, sp
345:              bltu         t3, s6, 353f
346:              nop
                  slt          s6, gp, t6
                  slli         t5, tp, 4
                  add          s1, a6, s2
                  add          t2, t2, t2
                  ori          t3, t5, 87
                  srl          t2, a7, a3
353:              bge          sp, a2, 360f
354:              bge          t0, s1, 370f
                  xori         a2, s4, 1158
                  srai         s7, s9, 5
                  lui          ra, 627734
                  slli         s0, zero, 30
                  bge          s0, t0, 377f
360:              add          s3, a0, t1
                  bge          sp, s3, 377f
                  blt          s3, a6, 377f
                  srl          s11, s0, s1
                  add          s6, t4, a4
                  xori         s0, t3, 99
                  sltiu        a6, t2, 1569
                  slt          s4, tp, t3
                  add          ra, t0, s5
                  xori         a0, zero, -422
370:              ori          a2, t6, -1379
                  slli         t0, t6, 6
                  bltu         s5, t2, 374f
                  lui          s10, 158902
374:              lui          gp, 39058
                  srai         sp, zero, 18
                  or           a7, gp, a1
377:              xor          sp, t2, t5
                  blt          a6, t1, 391f
                  ori          s3, t3, -891
                  andi         a2, a4, 1198
                  sra          t4, s1, zero
                  blt          t4, a2, 390f
                  bge          zero, sp, 398f
                  ori          s0, t1, 1324
                  beq          t4, t5, 399f
                  ori          a7, a1, -1078
                  sltu         a3, t5, a1
                  bge          t3, s9, 395f
                  andi         s1, a7, 1709
390:              and          a2, s6, s5
391:              add          s4, a2, ra
                  add          a2, sp, s5
                  addi         t5, s7, 1585
                  bgeu         t2, t4, 409f
395:              slti         s11, s1, -370
                  slt          s11, t6, t3
                  bge          t6, s6, 411f
398:              srl          a7, ra, tp
399:              slti         a2, s2, 222
                  bge          t6, a3, 401f
401:              auipc        gp, 924517
                  srl          sp, a1, a3
                  xori         s1, s2, -1436
                  xor          t3, sp, s11
                  blt          s1, zero, 424f
                  srl          zero, a2, s5
                  bgeu         s3, s10, 424f
                  slli         t3, a2, 24
409:              slti         a4, t0, -602
                  blt          a7, t4, 426f
411:              sll          a4, a1, sp
                  add          s5, a2, t4
                  slt          s1, a4, a6
                  nop
                  auipc        a2, 258933
                  blt          t6, s6, 434f
                  sll          t2, s10, s5
                  sltiu        a2, a2, 1127
                  bltu         a1, s5, 422f
                  lui          a7, 999677
                  addi         a4, a4, -904
422:              blt          s4, zero, 435f
                  sub          s3, s11, t5
424:              or           t4, zero, s3
                  sltu         s0, t3, a6
426:              srl          s11, s10, a2
                  sra          t6, s0, s1
                  srli         s4, s11, 2
                  blt          t3, s6, 440f
                  lui          s6, 414823
                  slti         s2, a3, -1608
                  and          a2, a1, sp
                  srli         zero, tp, 0
434:              sra          t5, a2, t0
435:              beq          t1, t1, 448f
                  and          s10, zero, sp
                  bgeu         s2, a4, 453f
                  sra          gp, a7, zero
                  bne          t4, tp, 441f
440:              sltiu        t3, a3, -1011
441:              andi         t1, a2, 470
                  addi         sp, s4, 1675
                  slli         s5, s7, 28
                  nop
                  and          t5, sp, a0
                  slti         s10, a0, 466
                  bgeu         gp, s4, 457f
448:              srai         t0, s10, 8
                  lui          a4, 880479
                  or           s3, a1, t0
                  or           a1, t0, t3
                  slti         s3, s6, -1277
453:              andi         s2, t0, 774
                  and          a0, s7, sp
                  xor          zero, t2, s9
                  lui          s1, 316570
457:              add          s2, s4, a7
                  auipc        gp, 243851
                  xori         t4, t4, 1320
                  sra          a4, a3, s10
                  auipc        a0, 869478
                  srli         a3, a2, 23
                  lui          t5, 426119
                  sra          zero, t6, a3
                  beq          s7, t4, 478f
                  bgeu         t4, a1, 472f
                  xori         zero, a4, 141
                  xor          a7, s11, ra
                  or           a6, a6, s5
                  sub          t2, gp, s6
                  slli         a0, sp, 26
472:              lui          s7, 98608
                  and          gp, s4, a1
                  srai         s11, t5, 29
                  bltu         t5, tp, 491f
                  bne          s9, a0, 479f
                  slti         t1, ra, 1164
478:              sltiu        t3, t6, 691
479:              ori          sp, sp, -1498
                  or           s6, tp, zero
                  sll          t6, a5, s5
                  sra          s3, t0, s0
                  ori          s7, a7, 1088
                  auipc        t4, 518875
                  slt          a0, a2, tp
                  srai         t2, s7, 29
                  srli         gp, s3, 15
                  srli         a7, a3, 13
                  slt          a3, s1, t3
                  sra          t4, s1, a7
491:              slt          s3, s8, s0
                  srli         ra, a4, 28
                  auipc        sp, 241537
                  xor          s7, tp, tp
                  srl          t4, a4, a7
                  add          s4, s7, a2
                  add          s1, t1, a3
                  srl          ra, a6, a0
                  nop
                  bltu         s6, t3, 514f
                  slli         t4, t6, 19
                  srai         a6, a0, 28
                  sra          a5, s9, tp
                  bgeu         s0, s4, 506f
                  slt          s2, a6, tp
506:              andi         a4, a6, -1857
                  bgeu         zero, tp, 524f
                  sltu         s2, t0, s3
                  bltu         s11, tp, 510f
510:              bgeu         gp, t2, 521f
                  ori          s4, zero, 2044
                  slt          a3, s3, s3
                  srli         s10, a2, 11
514:              beq          a1, s4, 516f
                  xor          ra, s4, t2
516:              or           s2, t4, s5
                  or           s10, s9, t6
                  xori         t6, t5, -60
                  slt          sp, a3, s2
                  sll          zero, tp, a1
521:              srai         s7, s8, 4
                  srai         s7, s10, 0
                  slti         s10, s3, 1379
524:              andi         zero, a2, 175
                  bgeu         a5, t2, 533f
                  beq          t1, s9, 542f
                  slli         s6, a6, 7
                  ori          s4, a2, 1145
                  or           t5, a1, s1
                  srli         s11, s5, 7
                  sltu         s0, tp, zero
                  sll          a7, s0, t3
533:              srai         ra, a3, 24
                  sltu         gp, t3, s7
                  bgeu         zero, t1, 553f
                  and          s7, a7, a0
                  bgeu         t2, s10, 538f
538:              srl          s7, a1, gp
                  slti         s10, s3, -435
                  addi         s4, t2, 641
                  xori         t1, a0, 1243
542:              addi         a3, a5, 64
                  srli         ra, t3, 20
                  andi         s2, s5, -1028
                  xor          a5, t6, s10
                  srai         a5, t6, 20
                  and          zero, s3, s0
                  sub          t0, s4, s9
                  sra          t6, t6, a1
                  sltiu        s3, a5, 1477
                  slti         s5, s9, 1276
                  bne          s7, s2, 554f
553:              auipc        t3, 948480
554:              ori          a5, gp, 1780
                  slti         a1, s1, -1802
                  bge          s10, a4, 559f
                  nop
                  sra          a3, tp, tp
559:              addi         a3, s2, -1323
                  bltu         t5, s3, 571f
                  sltu         s0, a7, a2
                  andi         a6, s7, 1938
                  sub          s6, s10, t5
                  sltiu        s4, a2, 1479
                  sltiu        a5, s10, 1189
                  ori          sp, s10, 1314
                  andi         s7, s8, 1287
                  bltu         a7, s9, 576f
                  and          s5, s7, s10
main_9:           jal          a2, 11f
0:                jal          ra, 3f
1:                jal          t1, 13f
2:                jal          ra, 16f
3:                jal          t1, 22f
4:                jal          t2, 24f
5:                jal          a0, 19f
6:                jal          t2, 25f
7:                jal          t1, 6b
8:                jal          ra, 12f
9:                jal          t6, 10f
10:               jal          ra, 8b
11:               jal          t1, 21f
12:               jal          ra, 2b
13:               jal          ra, 9b
14:               jal          t1, 23f
15:               jal          t1, 17f
16:               jal          ra, 20f
17:               jal          ra, 1b
18:               jal          ra, 14b
19:               jal          a0, 0b
20:               jal          t3, 18b
21:               jal          ra, 5b
22:               jal          t1, 4b
23:               jal          ra, 7b
24:               jal          t1, 15b
25:               ori          a3, a4, -874
                  andi         t6, s8, -1397
571:              sra          a5, a5, s5
                  auipc        a1, 543713
                  sltiu        t2, zero, -148
                  sltu         a3, s1, a6
                  xor          a1, s9, s6
576:              lui          t4, 908812
                  xor          a6, a0, s9
                  bne          a0, s9, 594f
                  add          zero, a4, sp
                  srl          t0, s5, t5
                  bgeu         s1, s3, 583f
                  srli         a6, a1, 13
583:              xor          s7, tp, t6
                  slt          s10, s7, t0
                  srai         gp, t1, 8
                  lui          a1, 406789
                  blt          ra, t2, 595f
                  beq          s9, a1, 590f
                  xor          s5, a1, ra
590:              addi         a5, a3, -1367
                  bge          s10, a0, 604f
                  slt          s0, sp, sp
                  sltiu        t2, sp, -1822
594:              add          s6, a3, s8
595:              nop
                  auipc        a4, 849273
                  bgeu         s1, t6, 613f
                  srli         s5, t1, 11
                  lui          zero, 793556
                  auipc        zero, 89970
                  xor          gp, a4, a5
                  xori         a6, s5, -1965
                  srli         t2, s2, 8
604:              sltiu        a4, a5, 814
                  auipc        t4, 932443
                  sub          t0, tp, s6
                  srai         s5, t4, 12
                  slti         t6, ra, 853
                  sub          s11, a5, s4
                  bne          s2, s8, 616f
                  andi         t0, t4, -427
                  auipc        a4, 215747
613:              bge          s4, gp, 616f
                  slti         t5, a0, 947
                  srl          s1, t0, t0
616:              xor          sp, zero, a3
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         s9, s9, -16
                  slt          s0, s4, gp
                  sw           a2, 4(s9)
                  sub          ra, t3, t6
                  and          s10, t0, s2
sub_5_5:          jal          a2, 14f
0:                jal          s5, 1f
1:                jal          ra, 23f
2:                jal          t1, 0b
3:                jal          ra, 11f
4:                jal          s7, 22f
5:                jal          t1, 15f
6:                jal          s10, 18f
7:                jal          ra, 25f
8:                jal          t1, 20f
9:                jal          ra, 2b
10:               jal          ra, 13f
11:               jal          ra, 21f
12:               jal          t1, 9b
13:               jal          ra, 24f
14:               jal          ra, 8b
15:               jal          ra, 7b
16:               jal          ra, 3b
17:               jal          a4, 10b
18:               jal          ra, 4b
19:               jal          ra, 12b
20:               jal          gp, 19b
21:               jal          ra, 5b
22:               jal          t1, 16b
23:               jal          t4, 17b
24:               jal          ra, 6b
25:               or           s10, s4, s8
sub_5_0:          jal          a2, 3f
0:                jal          ra, 12f
1:                jal          ra, 24f
2:                jal          ra, 21f
3:                jal          sp, 10f
4:                jal          s10, 11f
5:                jal          ra, 27f
6:                jal          ra, 23f
7:                jal          ra, 25f
8:                jal          ra, 18f
9:                jal          t1, 14f
10:               jal          ra, 2b
11:               jal          ra, 1b
12:               jal          a2, 9b
13:               jal          ra, 8b
14:               jal          ra, 22f
15:               jal          ra, 13b
16:               jal          ra, 5b
17:               jal          t1, 26f
18:               jal          ra, 16b
19:               jal          ra, 20f
20:               jal          a2, 15b
21:               jal          ra, 6b
22:               jal          ra, 4b
23:               jal          ra, 19b
24:               jal          t2, 28f
25:               jal          t1, 0b
26:               jal          t1, 7b
27:               jal          gp, 17b
28:               srl          s6, ra, a2
sub_5_3:          jal          a2, 17f
0:                jal          ra, 2f
1:                jal          ra, 21f
2:                jal          ra, 13f
3:                jal          ra, 14f
4:                jal          t1, 26f
5:                jal          s7, 15f
6:                jal          t1, 22f
7:                jal          t0, 8f
8:                jal          ra, 9f
9:                jal          gp, 12f
10:               jal          ra, 16f
11:               jal          ra, 1b
12:               jal          ra, 4b
13:               jal          a2, 20f
14:               jal          ra, 23f
15:               jal          ra, 11b
16:               jal          ra, 0b
17:               jal          t0, 24f
18:               jal          ra, 19f
19:               jal          t1, 5b
20:               jal          t1, 7b
21:               jal          ra, 10b
22:               jal          t1, 3b
23:               jal          s3, 25f
24:               jal          ra, 6b
25:               jal          t1, 18b
26:               auipc        ra, 899008
sub_5_6:          jal          a2, 0f
0:                jal          ra, 16f
1:                jal          ra, 24f
2:                jal          ra, 12f
3:                jal          sp, 1b
4:                jal          sp, 7f
5:                jal          t1, 15f
6:                jal          a2, 4b
7:                jal          ra, 26f
8:                jal          ra, 9f
9:                jal          s0, 10f
10:               jal          ra, 17f
11:               jal          s3, 19f
12:               jal          ra, 28f
13:               jal          ra, 14f
14:               jal          t1, 22f
15:               jal          a3, 2b
16:               jal          t3, 20f
17:               jal          ra, 13b
18:               jal          s4, 23f
19:               jal          t1, 21f
20:               jal          t1, 3b
21:               jal          a7, 6b
22:               jal          ra, 25f
23:               jal          a2, 11b
24:               jal          ra, 27f
25:               jal          sp, 5b
26:               jal          s0, 29f
27:               jal          t1, 8b
28:               jal          ra, 18b
29:               xor          t5, t5, t5
sub_5_1:          jal          a2, 10f
0:                jal          ra, 26f
1:                jal          ra, 7f
2:                jal          t1, 3f
3:                jal          ra, 19f
4:                jal          t1, 24f
5:                jal          t1, 8f
6:                jal          ra, 23f
7:                jal          ra, 13f
8:                jal          ra, 0b
9:                jal          t1, 2b
10:               jal          ra, 17f
11:               jal          s4, 21f
12:               jal          ra, 22f
13:               jal          ra, 25f
14:               jal          ra, 16f
15:               jal          t1, 12b
16:               jal          ra, 9b
17:               jal          t1, 27f
18:               jal          s2, 28f
19:               jal          s7, 1b
20:               jal          s7, 29f
21:               jal          t0, 20b
22:               jal          a2, 14b
23:               jal          ra, 4b
24:               jal          ra, 15b
25:               jal          t1, 11b
26:               jal          s10, 6b
27:               jal          ra, 18b
28:               jal          ra, 5b
29:               ori          t3, s9, 1578
                  slli         t3, s5, 15
                  sra          a0, s1, s8
                  bge          a5, a5, 6f
                  sra          s5, a2, ra
                  bltu         ra, s1, 5f
5:                bgeu         s3, a3, 12f
6:                bltu         a2, s1, 21f
                  or           s1, s10, s4
                  bge          s11, a5, 14f
                  blt          a0, a1, 21f
                  sra          t4, a2, a0
                  auipc        s2, 192333
12:               sltiu        t0, a3, 1416
                  auipc        s7, 828678
14:               slti         t3, a4, 1949
                  slti         t3, a6, 1136
                  sub          a1, a2, a6
                  addi         t6, t3, 630
                  auipc        gp, 31280
                  sll          ra, a5, a2
                  slli         t6, t3, 14
21:               bltu         t0, zero, 30f
                  slti         s10, s8, 634
                  lui          s4, 342018
                  slti         a7, a0, -691
                  add          s11, t4, t3
                  srl          s11, t0, a0
                  srli         t5, s4, 2
                  sra          s1, s11, t0
                  sub          a1, a0, t3
30:               sltu         s5, s6, s4
                  xor          s3, a2, zero
                  bgeu         a0, a4, 42f
                  slt          t3, t6, s0
                  or           s2, s11, t1
                  lui          a5, 672906
                  sra          a0, a1, s8
                  srli         a5, s1, 12
                  srl          s1, a4, a3
                  sll          s1, s4, a3
                  sltu         t4, t3, sp
                  auipc        zero, 502156
42:               addi         s7, s1, -104
                  sub          t3, zero, s1
                  slt          a3, s6, a5
                  slli         a3, gp, 22
                  slli         s6, t1, 4
                  or           sp, gp, a5
                  srl          s3, zero, t2
                  slti         s4, s5, -359
                  addi         s7, sp, 2018
                  slli         gp, t4, 7
                  srai         s10, s9, 19
                  bgeu         a5, tp, 54f
54:               blt          s3, s0, 61f
                  addi         a5, a0, 199
                  ori          s7, gp, 62
                  xori         t1, s3, -328
                  nop
                  sltu         s11, t4, a6
                  blt          s4, t0, 62f
61:               sll          t6, a0, s11
62:               srl          a4, t2, s7
                  bge          s7, a0, 69f
                  slt          s5, s4, t6
                  bltu         a5, s2, 81f
                  slli         zero, sp, 31
                  beq          s3, s6, 74f
                  xor          s6, s0, s1
69:               sll          t1, s5, s3
                  andi         s4, t1, -17
                  bge          a4, t4, 77f
                  beq          a3, t3, 89f
                  xori         a2, a6, -1606
74:               beq          ra, s3, 88f
                  slli         s0, a6, 28
                  lui          t6, 191825
77:               bltu         s9, t4, 87f
                  beq          s11, t1, 85f
                  srli         a1, zero, 31
                  xori         a1, tp, 1725
81:               srai         s1, a0, 5
                  bgeu         a6, s8, 98f
                  bgeu         s8, t4, 103f
                  slt          t5, t5, a0
85:               andi         t5, s2, -1238
                  srai         a4, s1, 13
87:               xori         s7, t5, -645
88:               add          a7, t5, s2
89:               sltu         zero, a7, s0
                  sltiu        a5, a5, 840
                  xori         t6, t4, 1323
                  and          t2, a0, t3
                  nop
                  slli         a6, a1, 8
                  bge          s9, a2, 106f
                  nop
                  sltu         t1, a6, a1
98:               bgeu         t0, a7, 102f
                  bltu         s8, t0, 110f
                  xor          a3, t1, ra
                  srai         sp, s2, 7
102:              srli         s5, tp, 12
103:              sra          ra, s8, a0
                  or           s3, sp, t3
                  srai         a2, sp, 16
106:              andi         s1, a6, -1318
                  bge          tp, t2, 113f
                  bltu         t6, a2, 112f
                  or           t2, t1, s7
110:              slt          ra, ra, t6
                  xori         t4, s4, 864
112:              xor          zero, s2, a2
113:              or           a0, s6, s8
                  auipc        s6, 880133
                  addi         s7, a1, -915
                  sll          s7, a4, t3
                  bltu         a7, a5, 131f
                  lui          t3, 239558
                  addi         t4, zero, 1989
                  blt          a2, a4, 138f
                  xori         s4, s1, 1863
                  xori         t1, a2, -187
                  addi         s6, s4, -1845
                  bltu         s5, a7, 142f
                  xor          s4, gp, sp
                  beq          s11, gp, 139f
                  ori          gp, a4, 1955
                  blt          s8, a2, 142f
                  bgeu         tp, s8, 147f
                  sub          zero, a7, t4
131:              sltu         s0, a2, s3
                  bne          s11, s3, 134f
                  srai         gp, t1, 30
134:              bge          t2, a5, 140f
                  slli         zero, t5, 15
                  slt          a6, a3, s3
                  sra          gp, t4, t5
138:              auipc        a0, 99720
139:              add          s4, a5, s8
140:              nop
                  srli         s1, t5, 31
142:              sra          t0, tp, s10
                  sltu         zero, t0, s4
                  add          s11, s4, t6
                  bge          s3, s1, 149f
                  bltu         s1, s7, 161f
147:              andi         s2, gp, 348
                  sltu         ra, a3, tp
149:              auipc        a3, 942019
                  bltu         s1, s8, 156f
                  sltiu        sp, sp, -1590
                  add          s3, t3, tp
                  beq          a6, t4, 173f
                  addi         a4, s10, 2012
                  sltiu        a5, s5, -1000
156:              sra          a6, s5, t6
                  lui          a7, 706204
                  srl          s11, a6, a7
                  srli         s5, zero, 15
                  blt          s10, s6, 172f
161:              nop
                  sll          t4, s8, zero
                  xor          t5, s1, a2
                  andi         zero, a1, -575
                  andi         t0, s2, -476
                  andi         a4, a3, 1970
                  xor          a4, ra, s7
                  ori          t1, t6, -1633
                  lui          gp, 565688
                  or           t2, a3, a5
                  srli         t3, t3, 22
172:              bltu         a5, a7, 182f
173:              nop
                  slt          t2, s4, t0
                  bne          s3, s6, 189f
                  sltu         s0, s10, s9
                  and          a6, a6, ra
                  slti         s7, t0, 911
                  srli         a1, a7, 17
                  srl          gp, a4, gp
                  xor          t4, a2, s7
182:              nop
                  and          t6, sp, s10
                  sltu         s1, zero, s4
                  bge          t6, a2, 201f
                  addi         t0, s2, -85
                  beq          t2, s11, 194f
                  bge          s1, t5, 194f
189:              xori         a6, a4, -434
                  lui          a0, 529580
                  bltu         a4, s3, 204f
                  srai         a4, a3, 28
                  lui          s6, 735292
194:              lui          s3, 674625
                  or           a3, s11, s3
                  andi         s7, s3, 1452
                  auipc        ra, 929972
                  blt          s10, a1, 202f
                  ori          a1, t1, -1910
                  sub          s6, s1, t1
201:              srli         gp, a7, 9
202:              xori         a6, a5, -1461
                  or           s10, ra, t4
204:              bge          a0, s0, 214f
                  nop
                  xori         t2, zero, -1343
                  srl          a5, t4, a1
                  sltiu        a0, t0, -529
                  bne          tp, a7, 216f
                  srl          t1, s10, a1
                  beq          zero, s9, 227f
                  slli         t5, a6, 0
                  add          a3, a3, a4
214:              xor          s0, t3, s9
                  nop
216:              xor          t6, s5, s8
                  nop
                  sra          a2, t4, tp
                  slli         t6, a0, 5
                  andi         ra, t2, 1200
                  bgeu         zero, a3, 222f
222:              slti         s6, s11, 1150
                  sra          t0, a0, t2
                  addi         a6, t0, -610
                  sll          a4, s7, s11
                  ori          t2, t0, 124
227:              ori          a1, ra, -554
                  and          t3, t5, s8
                  bltu         s6, gp, 235f
                  srli         t3, t3, 29
                  lui          a3, 798541
                  bne          s8, a5, 241f
                  srl          a6, s2, a4
                  or           a7, t5, ra
235:              sll          s4, a5, s2
                  beq          s0, sp, 243f
                  srl          s1, t0, s10
                  blt          t2, s5, 245f
                  addi         a5, a1, -1214
                  slt          s3, t5, t6
241:              sltiu        a7, s8, 1584
                  xori         a5, s6, 1428
243:              or           a0, s6, tp
                  ori          s1, s6, -1663
245:              blt          s2, t3, 256f
                  sra          t0, t0, s1
                  andi         a5, tp, -262
                  beq          s1, a3, 266f
                  slli         a2, s9, 19
                  sll          t6, t0, a4
                  or           t6, tp, s10
                  xori         gp, s6, -1167
                  sltiu        t4, sp, 225
                  sltu         t0, t6, t1
                  slt          s7, a2, ra
256:              auipc        t5, 468405
                  auipc        gp, 36362
                  ori          a6, t6, 97
                  auipc        t3, 328806
                  andi         a7, a1, 370
                  slti         a6, s7, 106
                  bgeu         t5, gp, 263f
263:              srli         a2, a2, 16
                  and          a2, ra, gp
                  ori          a6, tp, 788
266:              slt          s7, a5, t2
                  bge          s5, t1, 271f
                  bltu         s0, t1, 285f
                  blt          s2, s8, 280f
                  andi         a4, a1, -164
271:              xori         a3, zero, 1579
                  slti         t6, t6, 1061
                  sub          a0, s8, s1
                  bgeu         s0, a4, 281f
                  xori         s10, a4, 1414
                  srl          t0, s10, t3
                  auipc        a5, 521213
                  slti         zero, t5, 805
                  blt          s7, s4, 280f
280:              sub          t1, s11, t2
281:              bltu         a2, a6, 298f
                  xor          a3, s4, a4
                  sll          a0, s6, a0
                  andi         s4, s5, 1447
285:              addi         a5, s8, -130
                  ori          a3, a0, 144
                  addi         gp, a0, -1597
                  and          s11, s7, t2
                  blt          sp, s8, 293f
                  bne          s10, zero, 296f
                  srli         a4, t2, 4
                  srl          s6, t4, s1
293:              sltiu        t1, t5, 912
                  blt          s7, s11, 309f
                  sll          t5, a6, s8
296:              xori         t1, zero, 804
                  bgeu         sp, ra, 313f
298:              sll          s4, s7, a5
                  or           s3, s0, tp
                  bltu         a5, a2, 306f
                  slti         t1, gp, -1778
                  sll          ra, a7, a2
                  and          s11, s6, t4
                  xor          a3, t5, t2
                  srl          s10, a0, zero
306:              blt          s8, sp, 317f
                  srli         s4, s11, 26
                  beq          s6, s7, 312f
309:              auipc        ra, 845558
                  sltu         s3, t2, gp
                  bne          s1, s11, 324f
312:              slt          s2, s0, a0
313:              sll          a0, a5, s0
                  ori          gp, t0, 1042
                  sltiu        a3, t2, -1999
                  beq          ra, tp, 334f
317:              ori          s4, a0, -176
                  lui          s2, 86362
                  add          a4, t6, s10
                  addi         ra, zero, -214
                  beq          s11, t6, 328f
                  sub          t0, a2, a5
                  auipc        t5, 993853
324:              blt          s11, zero, 340f
                  srl          a4, a7, a6
                  andi         t0, s0, -1520
                  slli         s5, a7, 7
328:              slt          s3, s11, a6
                  beq          a4, ra, 335f
                  bne          t6, a0, 344f
                  slli         a5, s6, 21
                  sltu         t6, t5, s2
                  and          a6, s2, a4
334:              or           t0, zero, a0
335:              bne          t3, s5, 345f
                  srli         a0, s0, 26
                  sltu         a6, s2, a5
                  bne          s7, t6, 345f
                  and          s1, zero, t3
340:              lui          s10, 738993
                  sltu         a4, s2, s9
                  andi         s1, a2, -1332
                  bne          a4, t0, 344f
344:              sltiu        a7, a5, 1932
345:              srai         t5, a0, 18
                  add          s1, a5, s0
                  srl          a2, t2, s11
                  add          s2, a0, s3
                  bgeu         t5, s4, 353f
                  xor          s11, t1, tp
                  bge          s6, a5, 371f
                  add          t0, sp, a1
sub_5_2:          jal          a2, 3f
0:                jal          s11, 20f
1:                jal          ra, 2f
2:                jal          t1, 16f
3:                jal          ra, 22f
4:                jal          a0, 18f
5:                jal          t1, 17f
6:                jal          ra, 15f
7:                jal          t1, 6b
8:                jal          a1, 0b
9:                jal          ra, 1b
10:               jal          t1, 23f
11:               jal          ra, 12f
12:               jal          ra, 10b
13:               jal          t4, 24f
14:               jal          a7, 13b
15:               jal          s7, 21f
16:               jal          ra, 19f
17:               jal          ra, 14b
18:               jal          t5, 11b
19:               jal          t0, 7b
20:               jal          t1, 5b
21:               jal          ra, 8b
22:               jal          ra, 4b
23:               jal          ra, 9b
24:               slli         t3, s3, 8
353:              xor          a6, s1, zero
                  srl          t5, t4, t2
                  blt          t5, s6, 362f
                  add          s11, s10, s4
                  lui          a2, 107883
                  bge          t1, t4, 372f
                  slli         a6, a3, 24
                  ori          ra, t5, 1847
                  sub          a2, zero, a5
362:              srai         a3, s4, 17
                  bgeu         s5, t3, 381f
                  sub          t2, gp, s11
                  slt          a7, t3, tp
                  bge          s10, s1, 376f
                  slti         s11, a0, -1357
                  add          a5, t4, a2
                  slt          a2, s3, t5
                  bgeu         a2, a3, 379f
371:              xor          s11, a1, s0
372:              and          a0, t2, s4
                  sltu         a2, s3, t2
                  ori          zero, a0, -662
                  bgeu         t6, a1, 383f
376:              bne          s10, a6, 383f
                  bltu         tp, a2, 379f
                  bgeu         t5, s8, 383f
379:              sll          a3, s8, t3
                  bgeu         t3, t1, 383f
sub_5_4:          jal          a2, 2f
0:                jal          ra, 8f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          a0, 9f
4:                jal          s5, 10f
5:                jal          sp, 0b
6:                jal          t1, 11f
7:                jal          ra, 1b
8:                jal          s4, 6b
9:                jal          ra, 13f
10:               jal          sp, 7b
11:               jal          ra, 12f
12:               jal          a2, 4b
13:               or           t6, a1, t5
381:              srli         a2, gp, 23
                  blt          t6, a1, 383f
383:              sub          s11, s10, a0
                  xor          a6, sp, s6
                  lw           a2, 4(s9)
                  addi         s9, s9, 16
                  xori         s4, zero, 1341
                  addi         zero, a2, -485
                  slli         s0, sp, 28
                  sltiu        t6, s2, 1113
                  nop
585:              addi x22, x12, 1
585:              jalr x22, x22, 0
sub_3:            auipc        s4, 393637
                  addi         s9, s9, -44
                  sw           a2, 4(s9)
                  sltiu        a6, t4, -350
                  xor          a1, a5, t4
                  la           a2, sub_5
                  srli         a7, a6, 0
                  sra          t4, s6, ra
                  addi         a2, a2, -907
                  nop
                  slt          t3, a6, t2
                  xori         a0, t5, -267
                  xori         s3, t0, -138
                  auipc        t6, 571675
                  andi         a5, a6, 951
                  auipc        s10, 529658
sub_3_j6:         jalr         a2, a2, 907 #jump sub_3 -> sub_5
sub_3_1:          jal          a2, 8f
0:                jal          ra, 12f
1:                jal          ra, 13f
2:                jal          t1, 26f
3:                jal          s2, 19f
4:                jal          t1, 9f
5:                jal          ra, 20f
6:                jal          ra, 16f
7:                jal          ra, 5b
8:                jal          gp, 22f
9:                jal          a1, 1b
10:               jal          ra, 15f
11:               jal          ra, 2b
12:               jal          a5, 11b
13:               jal          ra, 21f
14:               jal          ra, 10b
15:               jal          ra, 6b
16:               jal          ra, 17f
17:               jal          ra, 18f
18:               jal          s10, 7b
19:               jal          ra, 23f
20:               jal          t0, 0b
21:               jal          ra, 14b
22:               jal          ra, 25f
23:               jal          t1, 24f
24:               jal          t0, 27f
25:               jal          ra, 4b
26:               jal          ra, 3b
27:               add          s0, t4, s7
sub_3_0:          jal          a2, 24f
0:                jal          t0, 10f
1:                jal          ra, 4f
2:                jal          t0, 21f
3:                jal          ra, 28f
4:                jal          ra, 12f
5:                jal          ra, 7f
6:                jal          ra, 27f
7:                jal          ra, 6b
8:                jal          s6, 1b
9:                jal          s11, 0b
10:               jal          ra, 25f
11:               jal          ra, 16f
12:               jal          gp, 30f
13:               jal          t1, 3b
14:               jal          ra, 23f
15:               jal          ra, 2b
16:               jal          ra, 15b
17:               jal          ra, 11b
18:               jal          t5, 5b
19:               jal          ra, 8b
20:               jal          a4, 19b
21:               jal          a0, 29f
22:               jal          ra, 20b
23:               jal          gp, 22b
24:               jal          t1, 13b
25:               jal          ra, 14b
26:               jal          ra, 17b
27:               jal          ra, 9b
28:               jal          ra, 26b
29:               jal          t1, 18b
30:               and          a2, s9, a1
sub_3_2:          jal          a2, 0f
0:                jal          ra, 17f
1:                jal          ra, 15f
2:                jal          sp, 20f
3:                jal          a1, 18f
4:                jal          t1, 1b
5:                jal          ra, 3b
6:                jal          ra, 2b
7:                jal          a7, 4b
8:                jal          s5, 11f
9:                jal          ra, 5b
10:               jal          ra, 6b
11:               jal          s2, 16f
12:               jal          ra, 19f
13:               jal          s6, 14f
14:               jal          ra, 8b
15:               jal          ra, 9b
16:               jal          t1, 10b
17:               jal          ra, 12b
18:               jal          a5, 13b
19:               jal          t0, 7b
20:               add          s5, a6, s2
                  sub          a2, zero, a5
                  sll          t6, s1, s11
                  srli         s10, t5, 27
                  or           a7, t6, s9
                  nop
                  slti         t2, s10, 1211
                  slli         s7, a7, 19
                  or           a5, t2, s9
                  beq          s4, s5, 16f
                  lui          zero, 648708
                  slti         a3, t0, 980
                  bgeu         t2, t0, 29f
                  slli         s7, a3, 10
                  lui          a4, 652965
                  auipc        a4, 152409
                  ori          t5, s5, 618
16:               beq          s4, s9, 30f
                  srli         ra, t5, 12
                  xor          a6, s6, a5
                  bgeu         t0, t0, 26f
                  srli         s7, a1, 26
                  bgeu         gp, t2, 31f
                  slli         s4, a7, 27
                  auipc        a1, 1018728
                  sltiu        t1, s6, -1368
                  or           t5, t1, a7
26:               bne          a1, s7, 27f
27:               sub          a1, s6, t3
                  nop
29:               slt          s3, s2, a1
30:               bne          s4, s6, 42f
31:               srli         t5, ra, 6
                  slt          t4, zero, s0
                  lui          sp, 607212
                  sltiu        s5, s4, -1035
                  addi         s7, s0, 1430
                  srli         t3, t2, 18
                  bgeu         s10, t5, 51f
                  slti         t5, t3, 2037
                  bge          a4, s6, 58f
                  sltu         t1, s11, a1
                  srli         a3, t3, 24
42:               blt          a1, t6, 60f
                  srai         s5, t5, 30
                  srai         a2, s2, 17
                  or           s4, t4, a0
                  sub          s0, t1, a7
                  and          s10, s8, t4
                  srai         a5, tp, 23
                  beq          s3, s8, 60f
                  blt          a0, a1, 58f
51:               xor          zero, a4, t6
                  bltu         s9, t6, 67f
                  sltu         t0, s1, t4
                  bge          a3, s6, 70f
                  bne          t2, a7, 70f
                  beq          tp, s1, 72f
                  sll          a3, s7, a1
58:               bgeu         a6, a5, 61f
                  slti         s5, a0, 801
60:               bltu         s7, t1, 74f
61:               srl          a7, a1, zero
                  ori          zero, s4, 112
                  ori          s4, a5, -82
                  xor          s3, a5, s4
                  srli         a2, t5, 19
                  and          s0, s5, sp
67:               sll          gp, s10, zero
                  sll          s10, a5, a3
                  slt          sp, gp, a2
70:               sltiu        s4, t0, 1534
                  bltu         s8, s0, 84f
72:               lui          a5, 213763
                  auipc        s5, 977386
74:               andi         s0, t2, 1672
                  slt          a5, s2, t4
                  andi         a1, a7, -1811
                  sltu         s10, s11, t5
                  blt          t3, t6, 84f
                  sll          s1, s4, sp
                  bgeu         t0, a6, 93f
                  bge          a2, a5, 89f
                  sltu         s0, s6, gp
                  or           s6, t4, s8
84:               blt          s7, s11, 103f
                  sub          a4, s11, s10
                  blt          t6, s9, 101f
                  sltu         s2, s5, a1
                  bne          t1, s4, 89f
89:               sltu         t2, s11, t3
                  lui          gp, 250933
                  sra          a6, t0, zero
                  bne          s2, t6, 95f
93:               sra          t6, a0, tp
                  slti         s0, a0, -802
95:               addi         s6, s1, 1419
                  slli         a7, t1, 28
                  ori          s1, s7, -1533
                  srl          s1, s5, s6
                  sltu         t2, s8, t3
                  slt          s2, a4, s8
101:              sub          ra, a6, s4
                  andi         a1, a4, -99
103:              blt          a1, s7, 106f
                  sll          s0, s6, s8
                  or           a1, a6, a0
106:              add          gp, a7, ra
                  add          a5, ra, gp
                  ori          s6, a7, 1001
                  and          t3, t5, s0
                  nop
                  nop
                  blt          sp, t3, 114f
                  sra          s11, t2, t2
114:              xori         s1, s10, -825
                  sltiu        s0, s2, 2022
                  slti         a1, a6, -1382
                  bge          s3, s11, 119f
                  slli         gp, ra, 8
119:              addi         a6, s1, -1747
                  auipc        s1, 91440
                  blt          a0, a5, 126f
                  sra          s2, a4, s2
                  bgeu         zero, a0, 138f
                  sltu         ra, t4, s3
                  and          s6, s1, sp
126:              or           ra, s2, t4
                  bne          sp, a4, 146f
                  sra          s2, zero, s11
                  srai         s10, s0, 7
                  slt          s11, s10, s6
                  xori         a4, s7, -1539
                  lui          t2, 229648
                  addi         t1, s4, -1663
                  sub          a3, s3, s3
                  sltu         s3, t1, tp
                  sltu         t4, t0, s3
                  xor          t6, gp, t6
138:              or           s4, t0, a6
                  bge          s5, s3, 140f
140:              bltu         a6, s5, 153f
                  bgeu         s4, tp, 144f
                  xor          a2, t3, s5
                  bne          a6, t2, 154f
144:              bne          a7, a6, 146f
                  srl          zero, s0, a4
146:              blt          s10, a6, 164f
                  nop
                  srl          s2, a6, a6
                  sll          a7, s6, s4
                  xor          s1, a0, t0
                  bltu         t5, s0, 154f
                  and          ra, s2, s2
153:              srl          a0, s0, a7
154:              xori         s2, a3, 822
                  bge          s5, s1, 162f
                  bgeu         s2, a0, 171f
                  andi         s4, t5, -967
                  bne          a7, t3, 174f
                  and          t3, s8, t4
                  xori         t4, s5, 1835
                  and          s11, a1, a3
162:              addi         s0, s7, -648
                  andi         sp, s10, -1085
164:              bgeu         s1, t0, 165f
165:              sltu         t6, t2, s7
                  beq          s5, s6, 179f
                  andi         s5, t1, -387
                  sltiu        zero, a3, -1327
                  or           s0, ra, s7
                  srl          s4, gp, gp
171:              bge          t4, t0, 179f
                  and          s4, t2, tp
                  sra          ra, t1, s2
174:              or           gp, s3, ra
                  blt          a5, t2, 179f
                  or           a7, a3, s4
                  and          s11, t4, t5
                  addi         a3, t2, -1811
179:              srli         s4, a2, 21
                  lw           a2, 4(s9)
                  lui          s5, 672510
                  slti         a3, ra, -749
                  sltu         a1, sp, a4
                  and          t4, zero, t5
                  xor          t1, s0, t3
                  addi         s9, s9, 44
                  srl          ra, t0, a6
                  srli         t1, s8, 16
289:              addi x26, x12, 0
289:              jalr x26, x26, 0
sub_1:            xori         s2, s11, -317
                  bne          s11, a7, sub_1_stack_p
                  slti         t1, s8, 695
sub_1_stack_p:    addi         s9, s9, -8
                  nop
                  auipc        t6, 247301
                  srai         t2, a1, 2
                  or           t5, t1, s11
                  sll          sp, s1, a3
                  sltiu        s11, s11, -1192
                  sw           a2, 4(s9)
                  sltu         s0, gp, s7
                  lui          s2, 769552
                  and          s3, s11, a6
                  nop
                  sll          a4, s7, sp
                  andi         s1, sp, 1517
                  srl          ra, s3, t3
                  ori          s11, a1, 389
sub_1_j5:         jal          a2, sub_3 #jump sub_1 -> sub_3
sub_1_12:         jal          a2, 12f
0:                jal          t1, 14f
1:                jal          s10, 2f
2:                jal          ra, 16f
3:                jal          ra, 4f
4:                jal          t3, 1b
5:                jal          a1, 15f
6:                jal          t1, 19f
7:                jal          ra, 5b
8:                jal          a7, 10f
9:                jal          gp, 20f
10:               jal          ra, 17f
11:               jal          t0, 0b
12:               jal          ra, 6b
13:               jal          a2, 3b
14:               jal          sp, 9b
15:               jal          s10, 8b
16:               jal          ra, 11b
17:               jal          ra, 13b
18:               jal          ra, 7b
19:               jal          ra, 18b
20:               slli         t1, t3, 10
sub_1_9:          jal          a2, 13f
0:                jal          sp, 3f
1:                jal          t1, 0b
2:                jal          s7, 9f
3:                jal          t1, 15f
4:                jal          ra, 10f
5:                jal          t4, 1b
6:                jal          t1, 12f
7:                jal          ra, 6b
8:                jal          ra, 17f
9:                jal          t1, 8b
10:               jal          ra, 7b
11:               jal          s11, 4b
12:               jal          gp, 5b
13:               jal          t1, 16f
14:               jal          t1, 11b
15:               jal          s0, 2b
16:               jal          t1, 14b
17:               slli         t6, s7, 19
sub_1_13:         jal          a2, 4f
0:                jal          ra, 15f
1:                jal          t1, 18f
2:                jal          ra, 9f
3:                jal          ra, 10f
4:                jal          s11, 13f
5:                jal          s0, 14f
6:                jal          gp, 1b
7:                jal          ra, 5b
8:                jal          t1, 12f
9:                jal          t1, 17f
10:               jal          ra, 8b
11:               jal          ra, 19f
12:               jal          ra, 7b
13:               jal          ra, 16f
14:               jal          s0, 11b
15:               jal          t1, 2b
16:               jal          a2, 6b
17:               jal          a2, 20f
18:               jal          ra, 3b
19:               jal          ra, 0b
20:               slt          t2, s7, t6
sub_1_5:          jal          a2, 4f
0:                jal          ra, 11f
1:                jal          ra, 15f
2:                jal          ra, 1b
3:                jal          s2, 9f
4:                jal          ra, 10f
5:                jal          t1, 13f
6:                jal          a3, 8f
7:                jal          ra, 5b
8:                jal          gp, 7b
9:                jal          ra, 12f
10:               jal          ra, 3b
11:               jal          ra, 2b
12:               jal          a5, 6b
13:               jal          t5, 0b
14:               jal          ra, 16f
15:               jal          s7, 14b
16:               add          a4, sp, t3
sub_1_16:         jal          a2, 4f
0:                jal          ra, 20f
1:                jal          s11, 11f
2:                jal          gp, 13f
3:                jal          ra, 2b
4:                jal          t1, 27f
5:                jal          t0, 3b
6:                jal          a2, 9f
7:                jal          a7, 10f
8:                jal          t1, 30f
9:                jal          ra, 12f
10:               jal          ra, 28f
11:               jal          gp, 26f
12:               jal          t1, 25f
13:               jal          s11, 23f
14:               jal          ra, 21f
15:               jal          s0, 24f
16:               jal          ra, 8b
17:               jal          ra, 6b
18:               jal          ra, 17b
19:               jal          a6, 14b
20:               jal          t1, 1b
21:               jal          t1, 22f
22:               jal          t1, 18b
23:               jal          a3, 16b
24:               jal          ra, 19b
25:               jal          t1, 0b
26:               jal          ra, 7b
27:               jal          s4, 15b
28:               jal          s11, 29f
29:               jal          ra, 5b
30:               sra          s1, a0, sp
sub_1_7:          jal          a2, 22f
0:                jal          t1, 26f
1:                jal          s7, 27f
2:                jal          ra, 8f
3:                jal          ra, 2b
4:                jal          ra, 20f
5:                jal          s11, 18f
6:                jal          t5, 0b
7:                jal          gp, 24f
8:                jal          ra, 23f
9:                jal          a1, 7b
10:               jal          t1, 19f
11:               jal          ra, 14f
12:               jal          gp, 9b
13:               jal          ra, 11b
14:               jal          sp, 5b
15:               jal          ra, 13b
16:               jal          sp, 1b
17:               jal          ra, 10b
18:               jal          s6, 21f
19:               jal          ra, 4b
20:               jal          ra, 15b
21:               jal          a6, 6b
22:               jal          ra, 12b
23:               jal          ra, 28f
24:               jal          t1, 25f
25:               jal          t1, 17b
26:               jal          ra, 16b
27:               jal          ra, 3b
28:               srai         a7, a7, 6
sub_1_24:         jal          a2, 23f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          t1, 21f
3:                jal          ra, 17f
4:                jal          s7, 6f
5:                jal          s4, 8f
6:                jal          a3, 19f
7:                jal          a1, 24f
8:                jal          t1, 2b
9:                jal          ra, 12f
10:               jal          t3, 0b
11:               jal          ra, 13f
12:               jal          ra, 4b
13:               jal          t1, 15f
14:               jal          t1, 1b
15:               jal          ra, 3b
16:               jal          ra, 9b
17:               jal          s7, 18f
18:               jal          ra, 10b
19:               jal          ra, 22f
20:               jal          s0, 16b
21:               jal          ra, 14b
22:               jal          t2, 25f
23:               jal          a1, 5b
24:               jal          sp, 20b
25:               and          s2, t6, t3
sub_1_3:          jal          a2, 17f
0:                jal          ra, 11f
1:                jal          ra, 10f
2:                jal          t0, 8f
3:                jal          ra, 12f
4:                jal          t1, 2b
5:                jal          a7, 19f
6:                jal          ra, 13f
7:                jal          t1, 14f
8:                jal          t2, 21f
9:                jal          t1, 5b
10:               jal          t1, 9b
11:               jal          ra, 7b
12:               jal          t1, 22f
13:               jal          t1, 15f
14:               jal          t1, 3b
15:               jal          ra, 4b
16:               jal          t1, 0b
17:               jal          t1, 1b
18:               jal          ra, 6b
19:               jal          ra, 18b
20:               jal          ra, 16b
21:               jal          ra, 20b
22:               addi         a7, t1, -487
sub_1_14:         jal          a2, 13f
0:                jal          ra, 4f
1:                jal          t1, 10f
2:                jal          t1, 17f
3:                jal          ra, 5f
4:                jal          sp, 2b
5:                jal          t1, 8f
6:                jal          ra, 14f
7:                jal          ra, 12f
8:                jal          ra, 18f
9:                jal          a7, 11f
10:               jal          a4, 16f
11:               jal          sp, 3b
12:               jal          s4, 19f
13:               jal          gp, 1b
14:               jal          t1, 15f
15:               jal          s3, 7b
16:               jal          ra, 9b
17:               jal          gp, 6b
18:               jal          a0, 0b
19:               srli         gp, s6, 14
sub_1_18:         jal          a2, 11f
0:                jal          ra, 13f
1:                jal          t1, 22f
2:                jal          ra, 23f
3:                jal          t1, 8f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          ra, 14f
7:                jal          t0, 10f
8:                jal          s6, 19f
9:                jal          ra, 15f
10:               jal          ra, 0b
11:               jal          ra, 20f
12:               jal          t1, 3b
13:               jal          gp, 6b
14:               jal          ra, 17f
15:               jal          t1, 16f
16:               jal          ra, 1b
17:               jal          ra, 4b
18:               jal          ra, 2b
19:               jal          ra, 24f
20:               jal          s0, 18b
21:               jal          s0, 7b
22:               jal          ra, 12b
23:               jal          gp, 21b
24:               xor          a6, tp, ra
sub_1_8:          jal          a2, 15f
0:                jal          t1, 16f
1:                jal          ra, 23f
2:                jal          t0, 0b
3:                jal          t1, 2b
4:                jal          s5, 17f
5:                jal          t1, 10f
6:                jal          ra, 22f
7:                jal          ra, 27f
8:                jal          t1, 11f
9:                jal          t1, 4b
10:               jal          ra, 18f
11:               jal          s2, 28f
12:               jal          ra, 25f
13:               jal          ra, 7b
14:               jal          gp, 20f
15:               jal          ra, 6b
16:               jal          t1, 24f
17:               jal          t1, 13b
18:               jal          s5, 8b
19:               jal          s5, 29f
20:               jal          ra, 1b
21:               jal          ra, 12b
22:               jal          t0, 9b
23:               jal          t1, 19b
24:               jal          ra, 5b
25:               jal          t1, 26f
26:               jal          ra, 3b
27:               jal          ra, 21b
28:               jal          t3, 14b
29:               addi         a5, a5, 1685
sub_1_1:          jal          a2, 6f
0:                jal          ra, 9f
1:                jal          ra, 10f
2:                jal          sp, 1b
3:                jal          ra, 5f
4:                jal          s11, 0b
5:                jal          ra, 7f
6:                jal          t1, 3b
7:                jal          ra, 4b
8:                jal          t1, 2b
9:                jal          t5, 8b
10:               add          a2, s11, s6
sub_1_23:         jal          a2, 9f
0:                jal          a4, 2f
1:                jal          t1, 0b
2:                jal          ra, 4f
3:                jal          ra, 12f
4:                jal          t1, 14f
5:                jal          s2, 11f
6:                jal          ra, 10f
7:                jal          ra, 5b
8:                jal          ra, 1b
9:                jal          a3, 6b
10:               jal          ra, 7b
11:               jal          t1, 3b
12:               jal          ra, 13f
13:               jal          t1, 8b
14:               srl          s6, ra, s3
sub_1_22:         jal          a2, 1f
0:                jal          t1, 4f
1:                jal          t1, 3f
2:                jal          ra, 11f
3:                jal          ra, 12f
4:                jal          t0, 5f
5:                jal          ra, 13f
6:                jal          ra, 7f
7:                jal          ra, 8f
8:                jal          ra, 9f
9:                jal          t1, 2b
10:               jal          ra, 6b
11:               jal          ra, 0b
12:               jal          ra, 10b
13:               or           a5, s10, t2
sub_1_0:          jal          a2, 5f
0:                jal          ra, 9f
1:                jal          ra, 6f
2:                jal          ra, 7f
3:                jal          ra, 0b
4:                jal          ra, 1b
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          gp, 3b
8:                jal          s2, 11f
9:                jal          ra, 12f
10:               jal          ra, 2b
11:               jal          t1, 13f
12:               jal          sp, 4b
13:               and          ra, tp, ra
sub_1_17:         jal          a2, 3f
0:                jal          ra, 8f
1:                jal          ra, 14f
2:                jal          ra, 16f
3:                jal          t5, 5f
4:                jal          ra, 1b
5:                jal          t1, 13f
6:                jal          t1, 2b
7:                jal          t1, 9f
8:                jal          t1, 7b
9:                jal          ra, 10f
10:               jal          ra, 4b
11:               jal          ra, 0b
12:               jal          s6, 6b
13:               jal          ra, 11b
14:               jal          gp, 15f
15:               jal          ra, 12b
16:               srl          s0, gp, s0
sub_1_15:         jal          a2, 4f
0:                jal          ra, 12f
1:                jal          gp, 0b
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          s2, 11f
5:                jal          ra, 3b
6:                jal          t1, 15f
7:                jal          ra, 10f
8:                jal          t4, 6b
9:                jal          sp, 1b
10:               jal          ra, 13f
11:               jal          ra, 8b
12:               jal          t1, 5b
13:               jal          t1, 14f
14:               jal          t0, 16f
15:               jal          ra, 9b
16:               and          s11, s2, s7
sub_1_19:         jal          a2, 4f
0:                jal          ra, 21f
1:                jal          t1, 10f
2:                jal          ra, 23f
3:                jal          ra, 28f
4:                jal          t1, 11f
5:                jal          t1, 27f
6:                jal          ra, 26f
7:                jal          t3, 6b
8:                jal          ra, 22f
9:                jal          ra, 12f
10:               jal          ra, 19f
11:               jal          t1, 13f
12:               jal          sp, 17f
13:               jal          ra, 14f
14:               jal          t1, 7b
15:               jal          ra, 2b
16:               jal          ra, 8b
17:               jal          ra, 3b
18:               jal          t1, 9b
19:               jal          ra, 0b
20:               jal          t1, 25f
21:               jal          ra, 15b
22:               jal          t1, 1b
23:               jal          ra, 5b
24:               jal          ra, 18b
25:               jal          t1, 16b
26:               jal          sp, 20b
27:               jal          gp, 24b
28:               xor          t6, t5, tp
sub_1_2:          jal          a2, 16f
0:                jal          t1, 19f
1:                jal          s2, 2f
2:                jal          a0, 18f
3:                jal          ra, 11f
4:                jal          ra, 14f
5:                jal          ra, 20f
6:                jal          t0, 4b
7:                jal          ra, 17f
8:                jal          ra, 3b
9:                jal          a2, 13f
10:               jal          ra, 12f
11:               jal          t1, 9b
12:               jal          gp, 21f
13:               jal          gp, 10b
14:               jal          t1, 5b
15:               jal          ra, 6b
16:               jal          ra, 1b
17:               jal          t4, 8b
18:               jal          gp, 7b
19:               jal          sp, 22f
20:               jal          ra, 0b
21:               jal          t4, 15b
22:               jal          ra, 23f
23:               srl          a7, a4, t6
sub_1_21:         jal          a2, 10f
0:                jal          ra, 3f
1:                jal          ra, 13f
2:                jal          ra, 11f
3:                jal          ra, 1b
4:                jal          ra, 19f
5:                jal          s7, 15f
6:                jal          ra, 14f
7:                jal          t1, 2b
8:                jal          ra, 4b
9:                jal          ra, 7b
10:               jal          ra, 17f
11:               jal          s2, 12f
12:               jal          ra, 6b
13:               jal          ra, 5b
14:               jal          t0, 22f
15:               jal          ra, 9b
16:               jal          a6, 20f
17:               jal          t1, 18f
18:               jal          t1, 0b
19:               jal          ra, 16b
20:               jal          ra, 21f
21:               jal          ra, 23f
22:               jal          ra, 8b
23:               sltu         s6, s4, sp
sub_1_20:         jal          a2, 10f
0:                jal          sp, 13f
1:                jal          t0, 5f
2:                jal          gp, 0b
3:                jal          ra, 4f
4:                jal          gp, 16f
5:                jal          t3, 6f
6:                jal          ra, 7f
7:                jal          ra, 14f
8:                jal          ra, 11f
9:                jal          t5, 3b
10:               jal          sp, 1b
11:               jal          t1, 9b
12:               jal          ra, 8b
13:               jal          ra, 17f
14:               jal          ra, 12b
15:               jal          ra, 2b
16:               jal          t1, 15b
17:               xor          s2, s3, sp
                  slt          a1, ra, s7
                  xor          s1, s3, s1
                  sub          t6, s3, s2
                  bne          t2, a1, 21f
                  nop
                  srli         s2, a1, 27
                  slli         a5, a5, 4
                  srai         s1, s5, 16
                  srl          s7, s5, s8
                  or           s7, a6, t6
                  bge          s10, ra, 16f
                  auipc        a1, 183750
                  add          a2, t4, t6
                  slti         a0, ra, -61
                  sra          a3, t4, t2
                  xor          a0, tp, t5
16:               ori          s6, t2, -822
                  slti         sp, a0, -1311
                  srl          s0, s9, a5
                  sltiu        t3, t1, -1238
                  lui          s10, 820421
21:               sltu         s11, t6, a6
                  ori          t5, t4, 1876
                  sra          t4, a7, s5
                  bltu         a2, t4, 33f
                  beq          zero, zero, 44f
                  nop
                  sltu         a6, a6, gp
                  beq          ra, a0, 30f
                  and          a0, sp, ra
30:               nop
                  xori         t3, s8, 1078
                  sltu         sp, gp, s7
33:               bltu         t5, s10, 39f
                  slli         sp, s0, 28
                  auipc        t4, 938518
                  sltu         s2, t4, a0
                  lui          gp, 650695
                  bne          s4, t4, 45f
39:               srli         s7, s0, 31
                  srli         a2, s8, 16
                  sra          s3, t2, s4
                  auipc        a5, 936364
                  sll          t6, ra, a5
44:               bltu         a6, ra, 60f
45:               andi         s7, ra, 967
                  xori         a5, s1, 506
                  add          s7, a7, zero
                  slti         ra, a3, -1892
                  blt          a4, a4, 66f
                  sub          a3, s4, s7
                  sll          sp, t4, s10
                  bgeu         a2, s2, 67f
                  srai         t4, s0, 26
                  addi         a0, sp, 576
                  blt          a2, gp, 74f
                  slti         a5, a1, 1423
                  xori         a2, a7, -117
                  sll          s10, a6, t2
                  sltu         t5, a2, t5
60:               and          sp, s0, a4
                  add          gp, zero, s1
                  auipc        t1, 685974
                  or           s0, s8, s5
                  sra          s11, s6, a3
                  ori          t0, ra, 968
66:               or           s5, zero, s5
67:               slt          ra, s4, t3
                  xori         s4, sp, -1787
                  or           a0, s4, s1
                  sra          s2, t1, t2
                  srl          t0, s2, t5
                  beq          s7, t2, 89f
                  nop
74:               nop
                  sub          s4, a1, a5
                  addi         s1, s9, -788
                  addi         s10, s2, 429
                  srli         t1, t0, 17
                  xor          a4, a4, a7
                  sltu         s6, s0, a6
                  nop
                  or           s6, a4, s5
                  sltu         t3, s2, a4
                  auipc        a7, 806960
                  sltu         s6, t0, s4
                  sll          s7, zero, a6
                  srli         t4, ra, 22
                  blt          s4, tp, 107f
89:               bgeu         a0, ra, 90f
90:               add          t1, s11, t5
                  xori         zero, s9, 992
                  slt          t1, t1, t5
                  sltu         a3, t4, t0
                  or           s10, s5, t0
                  la           t4, sub_2
                  addi         gp, t2, 1416
                  lui          t5, 685336
                  slt          s7, ra, s11
                  srli         a1, a3, 4
                  addi         t4, t4, -831
                  and          a6, a5, sp
                  auipc        a2, 246438
                  slli         t0, s9, 11
                  bne          t3, a5, sub_1_j2 #branch to jump instr
                  ori          a5, a4, -1942
sub_1_j2:         jalr         a2, t4, 831 #jump sub_1 -> sub_2
                  slli         sp, t0, 0
                  sub          s10, s3, t3
                  or           a7, a3, a5
                  bne          t2, s9, 112f
                  slti         s0, sp, 1987
                  bgeu         t6, t1, 105f
                  bgeu         a5, a0, 107f
                  xor          s1, s6, t0
                  sub          a7, t0, s9
                  bge          a5, s6, 118f
                  beq          a1, tp, 114f
105:              bltu         a0, s11, 120f
                  xor          t1, ra, t1
107:              and          a7, s9, s0
                  bne          s10, a7, 118f
                  andi         s5, s11, 1812
                  andi         t6, a6, 1871
                  bgeu         a4, a2, 127f
112:              andi         a0, a2, -1117
                  and          t5, s10, s9
114:              bge          t0, a0, 125f
                  srl          gp, a5, ra
                  lui          s2, 772993
                  srai         s0, a2, 5
118:              addi         s0, s6, -1159
                  bgeu         a5, s0, 129f
120:              beq          sp, s4, 129f
                  bge          s6, s11, 140f
                  bltu         t2, t6, 134f
                  srai         zero, t3, 5
                  xori         t0, s3, -1125
125:              add          zero, a0, gp
                  bgeu         a1, t0, 128f
127:              srai         s11, t0, 7
128:              bne          sp, a0, 130f
129:              nop
130:              ori          a6, zero, -1247
                  sll          s11, a0, t1
                  bgeu         zero, a2, 136f
                  slti         s11, a4, 763
134:              xori         s3, s4, -1144
                  bgeu         s3, s2, 150f
136:              lui          s10, 743133
                  auipc        s2, 952544
                  sub          ra, s10, s2
                  xor          s4, s6, a7
140:              sll          a5, s11, gp
                  slt          s10, t4, tp
                  slli         a0, s9, 1
                  slli         a0, s0, 4
                  beq          gp, a1, 150f
                  auipc        s6, 32270
                  or           t5, tp, t2
                  nop
                  bgeu         a0, a6, 165f
                  beq          t5, t3, 160f
150:              bgeu         s10, ra, 157f
                  srl          s0, t2, s5
                  srli         a2, ra, 14
                  andi         a7, s10, -16
                  ori          a7, t5, -1951
                  xor          a4, tp, s3
                  auipc        s10, 181609
157:              srai         t1, s6, 19
                  bgeu         s10, a4, 173f
                  blt          s8, a4, 161f
160:              add          sp, s4, a1
161:              andi         sp, tp, 1321
                  srl          t1, t4, a5
                  addi         t1, s11, -1466
                  sub          a3, s6, s10
165:              xori         t5, tp, 349
                  andi         a7, t4, -830
                  srai         a3, s1, 13
                  lui          s4, 295787
                  sltu         a6, s2, a2
                  slt          s0, s4, t4
                  sltiu        t4, t5, -1253
                  andi         s6, s8, -405
173:              xor          s6, t4, a1
                  bltu         gp, t1, 175f
175:              sll          t3, tp, gp
                  slli         t1, s8, 23
                  sra          t3, a3, zero
                  or           a1, a7, a4
                  sltu         gp, a3, s5
                  srl          gp, sp, s11
                  bgeu         t2, s5, 190f
                  srai         zero, a3, 24
                  xori         sp, s10, -1657
                  sll          t0, s6, s2
                  srli         a4, s5, 27
                  srli         gp, ra, 12
                  ori          s2, s7, 1252
                  and          a1, t3, s8
                  lui          s2, 792456
190:              andi         t1, a6, 912
                  bgeu         a0, zero, 193f
                  lui          t4, 704011
193:              sll          a6, a4, zero
                  addi         t1, s9, -1349
                  srai         a6, s6, 17
                  bge          s4, t4, 215f
                  slt          t0, t1, a4
                  beq          t1, a6, 217f
                  beq          a0, s0, 208f
                  auipc        s6, 230644
                  srl          t0, a0, t4
                  bltu         s1, ra, 217f
                  sltu         t2, a4, s0
                  srli         a0, t2, 16
                  srli         t3, zero, 6
                  and          a3, s2, s2
                  xor          a7, s4, t2
208:              blt          s0, a7, 224f
                  srai         t1, t2, 12
                  blt          s6, zero, 216f
                  bltu         ra, s4, 229f
                  andi         s4, ra, 480
                  lui          s4, 478022
                  addi         zero, t2, 467
215:              srl          t3, s11, tp
216:              auipc        a7, 321024
217:              bgeu         s6, a7, 234f
                  and          zero, s7, a2
                  slli         s0, s10, 21
                  sltiu        s10, a6, 476
                  sltu         s2, s10, t3
                  sll          a5, s11, ra
                  bgeu         tp, a5, 227f
224:              and          a1, t0, gp
                  lui          s4, 360118
                  sltu         t0, zero, a2
227:              slt          a7, a2, gp
                  bge          t0, ra, 238f
229:              bgeu         s5, t1, 248f
                  slli         a5, s3, 21
                  slli         a1, ra, 24
                  or           t4, s6, t3
                  slti         a7, a7, -491
234:              srli         t4, tp, 11
                  addi         a2, s4, -1776
                  sltiu        sp, a4, 1400
                  bne          a4, t3, 239f
238:              bltu         a1, a6, 248f
239:              srli         zero, t3, 7
                  beq          a6, s2, 247f
                  xor          a0, a2, a3
                  sll          s4, zero, a2
                  bge          s10, s4, 259f
                  xor          a2, t0, sp
                  srli         t2, s10, 8
                  ori          t2, t1, 1945
247:              add          s2, t5, t0
248:              srl          t4, a0, t2
                  sll          a4, ra, a2
                  nop
                  bne          s10, s4, 257f
                  sra          a3, a2, a5
                  ori          t5, t6, 949
                  srl          s1, sp, a7
                  sub          sp, zero, a1
                  xor          s3, a7, a3
257:              srl          t1, a1, t6
                  sll          ra, sp, zero
259:              sltu         t1, s1, t2
                  srai         s5, a4, 29
                  nop
                  slt          a4, a1, a6
                  sll          t2, t0, s4
                  auipc        t6, 777175
                  sltu         a3, t5, s7
                  xori         s1, s0, 1993
                  beq          gp, ra, 277f
                  lui          t4, 495279
                  bltu         tp, t0, 284f
                  or           gp, a7, s1
                  srli         t1, a1, 0
                  sltiu        s3, s8, -2022
sub_1_4:          jal          a2, 19f
0:                jal          ra, 3f
1:                jal          ra, 22f
2:                jal          ra, 7f
3:                jal          sp, 12f
4:                jal          ra, 18f
5:                jal          t0, 13f
6:                jal          a0, 1b
7:                jal          ra, 6b
8:                jal          ra, 24f
9:                jal          t1, 16f
10:               jal          ra, 5b
11:               jal          sp, 14f
12:               jal          ra, 23f
13:               jal          ra, 9b
14:               jal          s5, 17f
15:               jal          s10, 20f
16:               jal          gp, 11b
17:               jal          a5, 8b
18:               jal          s5, 10b
19:               jal          s4, 21f
20:               jal          ra, 4b
21:               jal          ra, 0b
22:               jal          a3, 15b
23:               jal          ra, 2b
24:               srli         a1, s2, 5
                  bgeu         zero, a6, 285f
                  bltu         t5, s2, 293f
                  bltu         a2, s2, 290f
                  srli         s11, s1, 15
277:              lui          t1, 317461
                  slt          t1, s1, a5
                  sub          s4, s8, sp
                  and          t6, s4, s4
                  xori         sp, t4, -1661
                  sra          s7, s4, a7
                  sll          t2, gp, a1
284:              add          a5, tp, t0
285:              xori         a1, a0, 1674
                  slti         a5, t4, -910
                  auipc        a1, 441304
                  srl          t1, t6, t4
                  or           a6, s9, s6
290:              srli         a0, t0, 11
                  bltu         a1, s6, 308f
                  auipc        s7, 625977
293:              or           s4, a4, s7
                  add          t2, t0, s8
                  bne          t0, a0, 314f
                  sub          t4, a3, s8
                  sltiu        s1, a0, -1171
                  auipc        t1, 41839
                  bltu         s6, tp, 315f
                  beq          s2, a2, 301f
301:              bge          sp, gp, 311f
                  sll          s6, s10, s6
                  slli         s4, a5, 10
                  srai         t0, gp, 29
                  srai         s10, s4, 17
                  srai         s3, a7, 2
                  lui          s4, 942676
308:              sra          s2, s10, t3
                  addi         t5, t4, -1023
                  sll          a5, gp, a7
311:              sra          s5, s6, s4
                  sub          zero, a0, gp
                  addi         a0, s9, 733
314:              auipc        t1, 1025768
315:              slti         s10, s11, 1191
                  srl          s5, a1, zero
                  bltu         s5, ra, 327f
                  sltiu        a6, a0, 1695
                  sltiu        gp, a3, -212
                  sra          t5, t6, tp
                  beq          s3, a2, 336f
                  sub          t0, t3, s3
                  slt          t3, a0, t4
                  slt          s0, t5, tp
                  sra          a4, t4, gp
                  srl          a4, t0, a1
327:              xori         s2, s7, 269
                  ori          t1, s2, -74
sub_1_10:         jal          a2, 11f
0:                jal          s4, 8f
1:                jal          ra, 9f
2:                jal          t1, 1b
3:                jal          t4, 15f
4:                jal          t1, 2b
5:                jal          t1, 14f
6:                jal          ra, 3b
7:                jal          gp, 5b
8:                jal          ra, 16f
9:                jal          ra, 10f
10:               jal          t3, 7b
11:               jal          t1, 12f
12:               jal          ra, 4b
13:               jal          ra, 6b
14:               jal          ra, 13b
15:               jal          ra, 0b
16:               sltu         s10, s5, a7
                  add          s7, s9, a3
                  lui          s10, 858979
                  sub          s7, t1, s1
                  add          s3, t6, gp
                  blt          tp, sp, 340f
                  ori          a1, ra, -735
                  beq          t2, s3, 354f
336:              slli         s7, a0, 31
                  xori         t5, a4, -1511
                  auipc        t1, 949019
                  andi         s2, gp, -14
340:              nop
                  slti         t3, s0, 1881
                  sra          t2, s4, sp
                  bge          a2, gp, 349f
                  and          s7, ra, s8
                  sltu         zero, t3, a4
                  or           t1, t5, gp
                  blt          a2, s6, 351f
                  xori         t4, a6, -630
349:              xori         s11, a6, 568
                  beq          gp, s11, 367f
351:              sra          a5, s2, ra
                  bgeu         s3, s8, 367f
                  bne          a0, t1, 363f
354:              nop
                  bltu         t0, a0, 364f
                  auipc        ra, 112219
                  srli         t0, s5, 18
                  lui          s5, 58563
                  sra          s10, tp, gp
                  slti         t4, t0, -1931
                  slt          t3, a6, ra
                  ori          a0, s5, 158
363:              bge          a2, s7, 369f
364:              srai         s0, s6, 20
                  bgeu         s10, s10, 367f
                  slli         a0, t4, 14
367:              add          a4, t5, s7
                  slt          s10, a0, a4
369:              beq          t2, t5, 387f
                  or           s10, t4, tp
                  slt          t5, s1, s2
                  sra          s0, zero, a5
                  xor          s2, a7, a7
                  sra          a1, t1, s9
                  beq          ra, s5, 391f
                  add          s6, zero, t2
                  sub          t0, s7, t3
                  blt          t4, a1, 390f
                  sltu         a0, a7, s8
                  andi         sp, t4, 1776
                  sltu         s5, s1, s9
                  or           s10, s3, a0
                  auipc        a5, 393587
                  lui          a2, 508814
                  addi         s6, ra, -73
                  auipc        zero, 119951
387:              lui          s0, 582207
                  xori         s6, a2, 1880
                  nop
390:              srai         s7, t1, 6
391:              andi         t5, s1, 236
                  addi         a1, t5, 1246
                  blt          s0, s0, 404f
                  beq          a0, a1, 396f
                  slli         s7, a3, 4
396:              beq          s0, t4, 398f
                  bne          a6, t4, 416f
398:              xori         ra, a6, -1870
                  sll          s10, s7, s7
                  slli         a7, a4, 10
                  bge          s0, a3, 410f
                  nop
                  sltiu        t5, t4, -515
404:              sltiu        t6, a2, -1823
                  andi         sp, s1, -811
                  sub          s3, t4, t4
                  xori         s3, t2, -1831
                  slt          s10, a4, a4
                  srai         sp, s7, 10
410:              sll          s2, a3, a2
                  slti         s4, s10, -1800
                  sra          s3, s2, s7
                  sltu         zero, a4, t6
                  sub          s3, t1, s0
                  xori         t4, s10, -575
416:              sltiu        zero, a1, 412
                  slti         t5, a2, -1681
                  slli         s3, ra, 1
                  blt          tp, s1, 426f
                  bge          t4, t5, 435f
                  bge          t0, t4, 440f
                  auipc        t0, 515914
                  slti         gp, s2, -403
                  auipc        t3, 147252
                  slti         gp, ra, 568
426:              sltiu        s4, sp, 399
                  bne          zero, ra, 433f
                  bge          s6, s3, 445f
                  srli         s1, s5, 0
                  lui          s7, 338828
                  slti         s2, t4, 1284
                  xori         s2, ra, -881
433:              sra          sp, s4, t4
                  auipc        a0, 98117
435:              xor          s0, t6, s2
                  nop
                  lui          s5, 489332
                  srl          zero, s1, t6
                  srl          t1, a5, s9
440:              sltiu        zero, s0, -1280
                  andi         a1, sp, -114
                  addi         t3, s9, 1209
                  beq          a7, a0, 449f
                  srai         sp, t2, 13
445:              sltiu        a1, t3, -325
                  sub          a4, a6, a7
                  ori          sp, a3, -1705
                  slt          s3, t5, s0
449:              slli         t0, t0, 4
                  bge          t0, s9, 460f
                  nop
                  slt          s10, s10, a2
                  sltiu        t5, s0, 1743
                  sltu         s3, a2, a7
                  ori          s11, t3, -171
                  srai         t2, sp, 14
                  bltu         t5, s9, 475f
                  srl          sp, a2, s7
                  sra          a5, s5, a0
460:              ori          s10, a1, -1179
                  sll          s5, a1, gp
                  bne          s10, t4, 473f
                  lui          t2, 831221
                  or           zero, tp, a7
                  srl          t3, s1, a3
                  blt          s3, gp, 473f
                  auipc        s11, 589244
                  sra          s5, s8, s5
                  bltu         a5, t2, 488f
                  nop
                  sltu         t6, zero, a2
                  slli         s3, s10, 23
473:              srl          a1, s8, sp
                  ori          gp, s3, -1503
475:              andi         s7, tp, -836
                  srai         s1, ra, 28
                  xor          a6, a6, s11
                  or           s5, ra, zero
                  bltu         a2, s11, 489f
                  and          s3, a6, t6
                  xori         s7, a1, -588
                  bne          s0, s6, 484f
                  addi         gp, t6, 1526
484:              and          t4, s9, zero
                  and          t5, a7, s10
                  sra          s5, sp, t3
                  and          s11, zero, t1
488:              slt          ra, gp, s9
489:              srl          t6, zero, s9
                  add          s2, s3, a3
                  andi         t2, gp, -1998
                  srai         gp, ra, 27
                  add          s7, s1, s5
                  srai         s7, t6, 23
                  srl          zero, s4, a4
                  slt          a5, s4, s7
                  sll          t6, t3, tp
                  lui          ra, 196750
                  xori         s3, s7, -1856
                  nop
                  andi         sp, t5, 359
                  sltu         ra, a5, s10
                  slt          t1, ra, t5
                  beq          s5, t0, 514f
                  auipc        sp, 492116
                  bgeu         t6, a1, 525f
                  sub          t0, t2, s1
                  addi         a3, a0, -1579
                  ori          a7, t5, -18
                  auipc        s3, 669648
                  sll          a1, t3, a0
                  bge          a7, gp, 527f
                  srl          t0, s7, s1
514:              blt          tp, s2, 523f
                  srli         s5, t3, 0
                  ori          a2, a5, 630
                  srai         a2, a2, 12
                  and          a1, t2, s2
                  ori          a4, s4, 1741
                  sra          a1, a2, s4
                  xori         a5, ra, -538
                  bne          a1, s6, 524f
523:              xor          sp, s9, tp
524:              bltu         s5, s0, 541f
525:              sra          s1, a3, a1
                  srai         t6, s1, 4
527:              sra          ra, s10, t4
                  sltiu        ra, a0, -1596
                  nop
                  addi         t1, zero, 802
                  slt          t1, a5, a2
                  ori          a7, s9, 2030
                  bgeu         t4, a4, sub_1_j4 #branch to jump instr
                  sltiu        s7, tp, -117
sub_1_j4:         jal          a2, sub_4 #jump sub_1 -> sub_4
                  ori          t4, s2, -23
                  slti         s7, a6, 1442
                  xori         ra, s8, 1048
                  slt          ra, t5, a4
                  xor          a1, t0, s9
                  xor          s11, a2, t0
                  andi         a5, t2, 1992
                  sll          zero, t5, a6
                  sub          t4, tp, s1
                  andi         t4, t3, 80
                  xori         a4, s1, 554
                  srl          s10, ra, s9
                  bltu         s3, s0, 546f
541:              srl          a0, t5, s10
                  bltu         s10, t1, 554f
                  bne          t0, s6, 562f
                  andi         a7, s6, 1554
                  andi         t6, zero, 708
546:              nop
                  or           s0, t3, t1
                  sll          s6, s7, s5
                  srai         a2, t2, 12
                  addi         a6, s7, -876
                  bge          t5, t5, 566f
                  sltiu        t2, s4, -1307
                  beq          s7, t4, 572f
554:              beq          s3, a6, 563f
                  bge          s8, a1, 556f
556:              sltiu        sp, a1, -662
                  sll          s3, gp, s1
                  slt          s3, ra, s8
                  xor          t1, a4, s8
                  addi         s4, s11, -992
                  lui          s10, 364680
562:              sra          t1, ra, t1
563:              bge          a5, a2, 567f
                  blt          t1, t3, 566f
                  bge          a3, a3, 581f
566:              ori          s0, s6, -1863
567:              addi         zero, s10, -1130
                  blt          tp, t0, 584f
                  sll          a5, t3, a0
                  bne          s6, a4, 576f
                  srl          s7, a0, a0
572:              srli         a4, s2, 20
                  auipc        s2, 833754
                  srl          zero, s7, s4
                  xor          a3, a4, s6
576:              xori         t5, t6, -994
                  xor          t1, a3, t0
                  bltu         a4, s6, 585f
                  bge          sp, s3, 594f
                  sub          s4, a2, s0
581:              or           a6, a4, t0
                  sll          a5, s4, s7
                  auipc        sp, 536671
584:              nop
585:              sub          a1, s7, s11
                  sub          s5, s9, t3
                  auipc        zero, 468467
                  beq          a2, a2, 603f
                  bne          s8, s4, 598f
                  lui          a0, 875238
                  addi         s1, s3, -623
                  sltu         s1, gp, sp
                  slt          zero, t6, s11
594:              bltu         a0, s11, 604f
                  slli         a0, a5, 10
                  ori          a1, s10, -233
                  auipc        ra, 132679
598:              beq          a5, s4, 613f
                  bgeu         a7, sp, 605f
                  bge          ra, s9, 616f
                  sltu         s0, t2, t4
                  addi         a2, a5, -465
603:              bgeu         s10, s1, 622f
604:              sltiu        ra, t4, 1015
605:              bgeu         s7, a1, 622f
                  add          s2, t4, t4
                  xor          a0, ra, s2
                  slti         ra, a6, -1176
                  and          s11, zero, t5
                  xor          t0, ra, tp
                  sll          s3, s1, s3
                  slli         sp, s2, 21
613:              blt          t1, s9, 628f
                  sra          t6, a4, s0
                  blt          s11, s1, 616f
616:              and          t0, t4, s7
                  addi         sp, s2, 1507
                  bgeu         s2, t3, 637f
                  slli         t1, t5, 31
                  addi         gp, sp, 888
                  slti         s1, s8, -1214
622:              slt          t4, s1, s4
                  sra          t1, s5, t3
                  ori          ra, t1, -1807
                  srli         ra, t1, 8
                  slli         s7, tp, 13
                  srl          s6, a6, t2
628:              bge          s7, t2, 634f
                  and          s3, a4, gp
                  sltiu        a2, a1, 1353
                  add          s1, t5, t4
                  srli         s4, zero, 29
                  srl          a5, s7, s10
634:              slti         gp, s5, -1430
                  or           a6, s6, s11
                  bne          t6, t6, 648f
637:              srai         zero, sp, 28
                  bne          s7, s9, 640f
                  andi         s1, s6, 794
640:              ori          sp, a6, -1727
                  slli         ra, a4, 31
                  sltu         sp, a6, sp
                  slli         t0, s5, 24
                  add          ra, a5, a6
                  addi         t5, s3, 672
                  slli         s3, sp, 13
                  sltu         s0, s10, a6
648:              andi         t5, s0, 1169
                  srli         a7, sp, 22
                  bge          t1, a0, 669f
                  sll          t5, a1, s7
                  lui          ra, 471527
                  slti         t2, a0, 1929
                  sltu         gp, s4, a2
                  sub          ra, t2, a5
                  srli         a4, s11, 25
                  srl          t1, a0, t6
                  slti         t1, s9, 1740
                  nop
                  srli         t6, s7, 2
                  bne          s8, a0, 679f
                  ori          zero, s6, -975
                  auipc        s7, 836549
                  slti         a3, a7, -375
                  lui          a3, 74968
                  srli         s6, s2, 27
                  srai         a6, t6, 4
                  slti         a3, a3, 1369
669:              nop
                  sll          sp, t3, a7
                  slti         s4, t3, -113
                  addi         t5, a2, 1062
                  bltu         s7, s8, 688f
                  bgeu         a1, s0, 691f
                  sra          s7, t1, a6
                  addi         t0, s1, -170
                  auipc        sp, 688329
                  sll          zero, s4, s9
679:              sub          a6, t6, a2
                  bne          s4, a7, 686f
                  sub          s6, s6, a7
                  bltu         ra, s1, 701f
                  and          s6, s2, a5
                  blt          gp, gp, 691f
                  sltiu        s6, a7, -228
686:              slt          t4, tp, s10
                  add          t4, a5, s9
688:              srli         a2, s11, 6
                  xor          a2, a4, tp
                  lui          sp, 333376
691:              srai         a6, tp, 9
                  srai         zero, s1, 17
                  add          a4, a1, s7
                  xori         a6, s3, 124
                  xori         s4, s7, 986
                  srl          s1, a5, s8
sub_1_j3:         jal          a2, sub_4 #jump sub_1 -> sub_4
                  slt          s3, t0, t6
                  lui          s11, 796038
                  srl          t5, sp, s3
                  beq          s9, s1, 705f
                  sll          t4, s3, sp
                  srl          s1, s1, t3
                  srai         s6, s2, 31
                  sltu         t0, zero, s8
                  srli         s1, t4, 10
701:              sltu         t1, t1, sp
                  slti         t0, s6, 86
                  bge          s5, a0, 707f
                  xori         s0, t6, 1012
705:              sra          s11, a1, a0
                  add          s4, a7, a4
707:              sltiu        gp, s4, -1165
                  slti         a6, s8, 1368
                  beq          s11, a2, 716f
                  slli         a4, t4, 20
                  sltu         a2, t3, ra
                  ori          t5, s11, 1977
                  sltu         a1, a1, s9
                  xori         s10, a4, -215
                  slt          t0, t4, t0
716:              xor          ra, s3, sp
                  bgeu         a2, a1, 719f
                  srli         a6, s2, 26
719:              srli         a7, s11, 30
                  nop
                  or           t3, s5, a1
                  bgeu         a4, s2, 731f
                  nop
                  or           s3, s5, s7
                  andi         a5, t2, -1100
                  or           t4, a3, s1
                  addi         a3, a4, 86
                  srai         s5, t6, 15
                  andi         t4, a0, -665
                  xor          a7, s11, s11
731:              beq          s10, s9, 741f
                  sub          sp, s11, s11
                  bne          s11, s10, 748f
                  srl          gp, s8, s2
                  bgeu         s10, a1, 737f
                  xori         s6, s8, -1932
737:              and          t2, s7, t2
                  xori         ra, t5, -2048
                  or           s10, a7, tp
                  slti         s7, s8, -257
741:              addi         a6, s7, 9
                  lui          s6, 528624
                  bne          ra, t3, 759f
                  addi         t0, a2, 1234
                  lui          a4, 690304
                  ori          sp, s2, -420
                  addi         zero, t4, 619
748:              sub          s3, a1, s0
                  srai         s10, a0, 26
                  slti         t2, s9, -450
                  slli         s2, a0, 2
                  slt          s10, s1, sp
                  slli         t0, a7, 31
                  nop
                  nop
                  blt          gp, t6, 767f
                  andi         s2, t4, 392
                  sub          gp, gp, t3
759:              bne          t5, t6, 776f
                  bgeu         a5, t2, 762f
                  sltiu        zero, s2, -776
762:              auipc        sp, 951866
                  add          ra, t6, t2
                  and          a4, t2, t0
                  bgeu         s8, s7, 767f
                  bltu         s8, s7, 772f
767:              bltu         tp, s9, 768f
768:              bne          s4, tp, 774f
                  bgeu         t2, t6, 784f
                  srl          a1, s3, t5
                  ori          s1, s10, -435
772:              addi         s5, a0, -542
                  slli         s7, a7, 30
774:              slti         a1, tp, 1788
                  bltu         a0, zero, 790f
776:              sra          a6, a7, t6
                  bltu         s5, t5, 783f
                  nop
                  beq          s6, t2, 795f
                  lui          s0, 200539
                  sra          a6, t6, ra
                  nop
783:              sltiu        s0, sp, 1109
784:              sltu         a5, sp, a0
                  or           a1, t3, t2
                  xori         a6, s3, -1935
                  sub          s1, t0, a5
                  xor          t4, s1, a7
                  ori          gp, a6, -163
790:              bgeu         t2, t3, 792f
                  beq          t4, t5, 809f
792:              sra          t4, s11, s0
                  srai         s10, a7, 9
                  srai         s11, a4, 11
795:              beq          t3, a6, 805f
                  srli         s6, a1, 7
                  and          s2, s3, zero
                  srai         a7, a1, 8
                  slti         a2, a6, 1160
                  slti         t5, s2, 933
                  add          s2, a3, s6
                  srai         zero, tp, 18
                  bgeu         a2, a0, 822f
                  bgeu         s2, t3, 816f
805:              srl          a4, a1, s8
                  srl          s5, t0, t5
                  bge          t3, t3, 826f
                  or           t3, s1, t5
809:              add          t1, t3, sp
                  lui          a7, 605205
                  auipc        s6, 744137
                  and          a0, a4, a6
                  bltu         tp, a3, 823f
                  bge          s8, s4, 829f
                  or           t5, a0, s1
816:              sltiu        zero, s1, -338
                  sub          gp, tp, tp
                  srli         ra, s4, 17
                  auipc        a5, 171655
                  or           a1, t5, s10
                  auipc        s5, 70526
822:              bgeu         s8, ra, 829f
823:              bge          s4, t3, 832f
                  srl          s10, a7, s2
                  lui          a7, 822190
826:              slti         s2, s5, -339
                  srai         a1, gp, 6
                  srai         a5, a7, 21
829:              andi         zero, t6, 847
                  srli         s1, s9, 27
                  add          s10, a3, gp
832:              beq          s9, tp, 839f
                  andi         s1, t2, 5
                  and          ra, sp, zero
                  srli         s5, a2, 26
                  auipc        s11, 684766
                  blt          a7, zero, 841f
                  sll          t0, a3, t4
839:              slti         a0, a5, 1378
                  or           a0, s8, a4
841:              andi         a1, zero, 248
                  xor          sp, s1, t3
                  bltu         a4, s3, 852f
                  bge          s6, s10, 863f
                  slti         a0, t4, 1134
                  and          sp, s11, a7
                  xor          s2, t2, t1
                  bge          a5, a5, 858f
                  auipc        zero, 346838
                  srai         a6, s8, 11
                  xor          a0, s3, t4
852:              slli         a7, ra, 18
                  srl          t6, a5, ra
                  xori         s3, a6, -983
                  srai         s3, t4, 21
                  srli         s4, a0, 15
                  ori          a4, a0, 573
858:              sll          zero, s6, s0
                  or           s7, t5, a5
                  srai         a5, sp, 20
                  auipc        a3, 637424
                  xori         a6, s9, -349
863:              srli         a1, s8, 15
                  nop
                  srl          a1, a1, zero
                  srl          a4, sp, s6
                  sltu         t0, a5, gp
                  srli         a1, t3, 8
                  lui          t4, 415518
                  srl          t3, t5, t1
                  sltiu        s5, s10, -466
                  slti         a2, a1, -143
                  slli         a0, zero, 12
                  ori          s7, t1, 1792
                  sub          t1, s1, s5
                  auipc        s6, 687252
                  srai         t2, a6, 12
                  bgeu         zero, a1, 897f
                  bge          gp, ra, 890f
                  nop
                  sll          t2, gp, s8
                  xori         s3, s1, -1337
                  sra          s10, a0, a2
                  bne          t6, a5, 900f
                  slt          s1, t5, a5
                  slti         s1, tp, 1480
                  blt          s2, s3, 904f
                  nop
                  lui          a5, 441242
890:              srl          a3, a6, s6
                  bltu         s1, a7, 906f
                  ori          s2, sp, -1144
                  srli         t1, s11, 5
                  srli         s2, a5, 19
                  or           a7, s9, a4
                  add          t4, t5, a5
897:              nop
                  andi         sp, t3, 686
                  auipc        a3, 232922
900:              xor          s11, s4, s7
                  xori         s2, s9, 781
                  and          s3, t2, a7
                  sub          s7, a0, s7
904:              xori         s2, s6, 859
                  andi         a1, gp, -217
906:              sra          t3, ra, s1
                  sltu         t1, t2, s8
                  blt          t3, ra, 915f
                  add          a0, s10, a3
                  add          a4, t6, t6
                  slt          t5, t6, ra
                  beq          ra, s5, 914f
                  slti         t0, gp, -279
914:              srli         zero, s10, 6
915:              srai         t6, t5, 8
                  add          t3, s5, s7
                  srl          a2, s8, a2
                  slt          s2, a2, gp
                  sll          s6, ra, a7
                  slli         a4, a6, 28
                  srli         s7, tp, 7
                  slt          s3, s10, s9
                  xor          zero, s9, ra
                  addi         t0, s3, -1699
                  andi         gp, a1, 410
                  sltiu        a7, a6, 669
                  slti         s3, t5, 1580
                  bge          s4, s7, 934f
                  auipc        s5, 115212
                  beq          s8, s3, 949f
                  bge          t1, s11, 943f
                  auipc        a7, 104873
                  sra          a1, s11, s9
934:              xori         s4, t5, 187
                  ori          a4, s8, -1641
                  auipc        sp, 93764
                  sltu         a1, s2, a2
                  nop
                  add          gp, t0, a6
                  sltiu        s4, s6, -1360
                  and          s3, a4, t3
                  xori         s4, s4, -1395
943:              srli         s5, t1, 6
                  or           s0, gp, t3
                  and          t1, sp, ra
                  slti         t3, a4, 138
                  blt          s8, t5, 956f
                  ori          t3, s10, 548
949:              bltu         a5, sp, 968f
                  sub          a7, s1, s10
                  srl          s11, a5, s6
                  slt          zero, s0, sp
                  sltiu        s5, a3, 1466
                  bltu         s5, a2, 964f
                  sub          t4, a0, t1
956:              slt          a4, s0, s10
                  auipc        s10, 46881
                  or           ra, s4, s2
                  lui          a6, 831066
                  sub          t1, gp, s4
                  srli         t3, t5, 15
                  andi         ra, ra, -1496
                  slli         t0, t4, 5
964:              sra          t3, t5, s4
                  and          a7, s9, tp
                  ori          ra, s1, 1128
                  sll          zero, a1, s10
968:              sra          s3, ra, t1
                  lui          s11, 790890
                  bgeu         a5, s4, 972f
                  ori          zero, a1, -945
972:              addi         a2, s7, 1513
                  ori          a5, s2, 208
                  sltiu        s10, a2, -410
                  bne          s10, s3, 992f
                  srli         gp, s11, 11
                  slli         s7, s5, 16
                  xor          s1, t2, s7
                  sltiu        a2, a6, -1328
                  ori          a5, a6, -248
                  andi         s7, s4, -309
                  srli         a0, a1, 8
                  or           a0, a0, s3
                  and          a4, t2, t0
                  sub          sp, s0, a0
                  sltu         a4, a6, t2
                  addi         a4, t2, 527
                  or           t0, ra, s1
                  sub          s4, s5, s0
                  srai         t3, t3, 12
                  sub          gp, a2, s4
992:              slti         s7, s0, 651
                  bge          s0, sp, 999f
                  srai         zero, s3, 8
                  sub          t2, tp, s9
                  ori          t5, t2, -926
                  andi         s7, ra, 552
                  sub          a5, tp, s10
999:              or           ra, t2, s10
                  lui          a4, 501476
                  xori         a4, ra, 1620
                  slli         a7, zero, 11
                  slti         t3, s5, 1724
                  sltu         a0, t6, a0
                  sltiu        a3, s1, 437
                  beq          t0, a2, 1017f
                  bgeu         ra, sp, 1017f
                  sra          a6, a2, s7
sub_1_25:         jal          a2, 1f
0:                jal          t1, 9f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          t1, 6f
4:                jal          t1, 15f
5:                jal          ra, 8f
6:                jal          a7, 7f
7:                jal          ra, 13f
8:                jal          t1, 0b
9:                jal          ra, 19f
10:               jal          ra, 21f
11:               jal          ra, 12f
12:               jal          ra, 3b
13:               jal          t1, 17f
14:               jal          ra, 5b
15:               jal          ra, 16f
16:               jal          t1, 20f
17:               jal          t1, 18f
18:               jal          t1, 14b
19:               jal          sp, 4b
20:               jal          ra, 2b
21:               or           a0, a6, gp
                  bne          t2, a3, 1028f
                  add          a5, a4, a4
                  sll          t1, t4, s11
                  or           s3, ra, s8
                  srl          sp, t6, s7
                  slli         s3, a4, 11
                  blt          t2, t3, 1019f
                  xori         t4, s0, -905
1017:             add          t2, s9, t1
                  slt          t3, t6, s2
1019:             and          s0, t4, gp
                  blt          s9, s8, 1021f
1021:             blt          sp, t6, 1038f
                  slt          s6, a0, s7
                  sra          t2, t1, t3
                  sll          s10, s6, sp
                  blt          a5, a2, 1027f
                  bge          s4, s4, 1035f
1027:             slt          a3, sp, a4
1028:             bne          t0, t4, 1043f
                  srai         s0, s4, 25
                  or           a3, s5, t6
                  ori          s0, s0, -95
                  bgeu         a2, a4, 1038f
                  sra          ra, s5, t6
                  xori         s2, t4, 1312
1035:             srai         a0, a6, 29
                  andi         zero, s5, 650
                  ori          s2, s8, -1720
1038:             nop
                  sltu         t6, t2, a3
                  lui          a4, 388108
                  or           a3, zero, s6
                  bltu         tp, a3, 1049f
1043:             srl          s1, s3, sp
                  slti         t6, gp, -1082
                  lui          s6, 742831
                  and          a2, t5, t4
                  auipc        s7, 336917
                  beq          a3, s0, 1058f
1049:             sltiu        a5, s2, 1544
                  sll          sp, a7, gp
                  sra          a4, s5, s0
                  srai         s4, t3, 16
                  or           zero, t1, s9
                  or           s6, s1, t2
                  addi         s3, t2, -1294
                  bltu         a5, zero, 1071f
                  srli         a1, a7, 20
1058:             srai         t6, a1, 6
                  sltu         s0, t6, zero
                  sltiu        s3, s0, 1888
                  sltiu        gp, a4, -733
                  bne          a5, ra, 1077f
                  xor          s5, t4, s11
                  bne          s1, s6, 1082f
sub_1_26:         jal          a2, 21f
0:                jal          t1, 23f
1:                jal          ra, 4f
2:                jal          t1, 24f
3:                jal          ra, 0b
4:                jal          a0, 10f
5:                jal          ra, 11f
6:                jal          t1, 12f
7:                jal          ra, 6b
8:                jal          gp, 3b
9:                jal          t1, 14f
10:               jal          ra, 18f
11:               jal          t1, 17f
12:               jal          sp, 16f
13:               jal          ra, 19f
14:               jal          ra, 20f
15:               jal          t1, 22f
16:               jal          ra, 2b
17:               jal          t1, 8b
18:               jal          ra, 7b
19:               jal          t1, 1b
20:               jal          ra, 5b
21:               jal          ra, 15b
22:               jal          ra, 9b
23:               jal          a1, 13b
24:               sra          t0, t5, zero
                  sll          a6, s3, gp
                  sltu         s4, s7, s5
                  blt          a6, gp, 1083f
                  sltiu        a1, s3, 519
                  auipc        s1, 82899
                  srl          s2, s11, a3
1071:             auipc        a4, 589190
                  srli         gp, a1, 16
                  slti         a3, s7, -1203
                  slli         s6, s8, 2
                  sra          t4, t2, t3
                  addi         s2, ra, -1460
1077:             slli         t1, s2, 21
                  addi         s7, s2, -1035
                  srl          a7, a2, s9
                  addi         t5, t0, 341
                  bltu         s9, gp, 1097f
1082:             sra          t5, s8, ra
1083:             auipc        t1, 496686
                  addi         a2, a1, -908
                  slt          a6, t1, s1
                  add          a4, t4, s6
                  srai         gp, s1, 10
                  bge          s10, s7, 1103f
                  sltu         t5, a7, gp
                  blt          s6, s6, 1109f
                  blt          tp, s2, 1106f
                  sra          s4, s5, s4
                  bge          s7, s10, 1102f
                  sll          sp, s9, t0
                  srl          s6, zero, zero
                  nop
1097:             beq          s5, ra, 1116f
                  ori          sp, a2, -458
                  andi         s6, tp, -348
                  slti         s0, a2, 1247
                  auipc        t0, 367647
1102:             lui          t3, 146927
1103:             sub          t3, a3, t2
                  srl          a7, t4, s3
                  blt          s6, s9, 1121f
1106:             lui          s11, 426258
                  bgeu         s5, a7, 1124f
                  andi         a0, s8, 280
1109:             blt          a0, s2, 1121f
                  srl          s6, ra, t6
                  auipc        s2, 610970
                  sub          gp, t0, a7
                  slt          gp, s11, s4
                  bgeu         a5, sp, 1133f
                  sltu         s11, s5, t6
1116:             ori          a7, t4, -687
                  slti         s4, s6, -607
                  add          s5, s5, s9
                  srl          zero, a4, t0
                  bgeu         a5, t0, 1122f
1121:             addi         s5, ra, -831
1122:             xor          t5, a2, s10
                  add          ra, s9, t2
1124:             slti         t3, t1, 1563
                  xor          s5, s6, s5
                  add          s4, s10, a5
                  blt          a4, s4, 1134f
                  bltu         a3, s3, 1130f
                  bltu         s0, s0, 1139f
1130:             srai         t6, s9, 10
                  srli         t3, t0, 0
                  andi         t5, s2, -1252
1133:             add          t4, zero, s9
1134:             srai         s10, a4, 14
                  bltu         a0, s5, 1145f
                  andi         a3, s3, 1445
                  xor          a2, a0, s6
                  add          ra, a3, s3
1139:             addi         s0, t3, 1322
                  sra          s4, sp, ra
                  sub          t4, t2, s0
                  bne          s2, sp, 1151f
                  add          zero, tp, a3
                  bne          a0, s0, 1154f
1145:             bne          a5, a1, 1151f
                  sra          s4, s5, tp
                  slt          s6, a0, a7
                  bne          tp, a6, 1154f
                  bgeu         t1, s6, 1160f
                  slt          t3, s10, s1
1151:             blt          s8, s9, 1157f
                  lui          a1, 879126
                  sltiu        ra, t4, 1946
1154:             bltu         s10, a2, 1173f
                  sltu         s3, s1, t0
                  nop
1157:             or           a5, s1, gp
                  lui          s10, 100226
                  slti         s11, s11, 413
1160:             srli         a5, tp, 20
                  nop
                  and          a4, s0, a3
                  slt          s0, a4, t5
                  xor          t4, tp, a7
                  srai         t5, s4, 11
                  ori          s1, a3, -1445
                  xori         s7, a2, 1765
                  nop
                  slt          s5, a3, s4
                  nop
                  blt          a4, a3, 1175f
                  andi         s1, t6, -1993
1173:             sltu         t6, s2, a3
                  nop
1175:             lui          s2, 124030
                  beq          s0, t0, 1191f
                  bne          a2, t4, 1192f
                  and          t6, s8, s9
                  beq          a5, s2, 1181f
                  bgeu         t0, sp, 1187f
1181:             bltu         s9, t5, 1196f
                  slti         t0, t6, -843
                  lui          t0, 754320
                  or           sp, s7, t2
                  sra          a6, t6, a3
                  xori         a3, a1, -854
1187:             sltiu        a4, t0, 51
                  nop
                  add          sp, s8, s5
                  ori          zero, t0, -1088
1191:             srli         t2, s7, 23
1192:             slli         a3, t1, 21
                  sltiu        s1, tp, -1832
                  slt          zero, t2, s0
                  nop
1196:             srli         s5, a3, 20
                  srai         t5, gp, 20
                  ori          t2, a3, -1000
                  nop
                  sltiu        sp, zero, -678
                  bgeu         s11, s8, 1219f
                  bgeu         t6, a6, 1221f
                  auipc        ra, 826492
                  slt          a1, s8, t4
                  xor          s6, t1, s2
                  srl          ra, a5, s1
                  ori          a7, t6, -1029
                  bne          a6, s10, 1224f
                  srai         a0, s9, 26
                  ori          t5, t5, -1317
                  add          ra, a7, t1
sub_1_6:          jal          a2, 2f
0:                jal          ra, 13f
1:                jal          ra, 6f
2:                jal          ra, 5f
3:                jal          t1, 12f
4:                jal          t1, 8f
5:                jal          t4, 9f
6:                jal          ra, 10f
7:                jal          t1, 0b
8:                jal          ra, 7b
9:                jal          t6, 11f
10:               jal          ra, 4b
11:               jal          t1, 3b
12:               jal          t1, 1b
13:               slti         a3, ra, 979
                  add          s0, s4, s2
                  add          t2, a7, s3
                  ori          a6, a4, 72
                  addi         a0, t3, -166
                  andi         a3, s0, -1300
                  sltu         t3, t5, s11
                  xori         zero, sp, -2034
1219:             blt          sp, a3, 1220f
1220:             add          s4, t2, s3
1221:             or           t0, s0, s8
                  srl          s7, s5, zero
                  beq          a5, t0, 1240f
1224:             andi         a1, s10, -1221
                  xor          a0, s8, t3
                  srl          t0, a7, a7
                  sll          s10, a3, tp
                  slt          t3, s11, sp
                  ori          s1, s8, 553
                  bne          a6, s4, 1236f
                  srai         a4, t0, 1
                  xori         t4, a2, -125
                  or           a2, s0, t1
                  srai         sp, s8, 21
                  slti         t6, t3, 1448
1236:             blt          a6, s6, 1245f
                  slli         s1, a7, 22
                  nop
                  bge          s0, a7, 1255f
1240:             addi         s1, t5, -625
                  add          a2, s9, a5
                  blt          a6, s4, 1249f
                  lui          a0, 578722
                  srli         a5, a0, 13
1245:             auipc        t2, 435396
                  srl          a7, t6, t3
                  add          t2, gp, t4
                  auipc        s7, 70827
1249:             beq          s9, t0, 1261f
                  bgeu         a4, a0, 1269f
                  xor          t5, s2, gp
                  nop
                  slli         a3, t2, 2
                  nop
1255:             add          a7, a3, zero
                  slt          s0, s1, s0
                  srai         s1, gp, 25
                  andi         zero, t4, -108
                  slt          t0, s4, a2
                  addi         s1, s0, 1811
1261:             slt          ra, s7, a3
                  bne          t0, s11, 1281f
                  blt          s8, a6, 1280f
                  srl          a4, zero, s10
                  srai         s2, s1, 6
                  bgeu         a7, s9, 1275f
                  slli         t5, s1, 6
                  xori         t5, tp, 235
1269:             slt          s1, s3, t6
                  ori          a6, s0, -1776
                  auipc        zero, 261640
                  xori         sp, s10, 767
                  xor          a4, s10, a2
                  slli         t5, t3, 8
1275:             bge          s5, t5, 1281f
                  sltu         a0, t4, s5
                  andi         a4, zero, -1350
                  sra          sp, s11, ra
                  srli         a4, a2, 19
1280:             auipc        a1, 652237
1281:             xor          ra, s1, s6
                  bne          s11, s11, 1283f
1283:             xor          t1, s2, s2
                  bgeu         s0, a6, 1299f
                  addi         t1, t2, -1745
                  auipc        s4, 682017
                  ori          s3, a2, -1851
                  add          s1, t1, s8
                  slti         a3, s11, -552
                  srai         a0, s9, 14
                  sltiu        ra, t4, -1842
                  or           s0, a3, s0
                  bne          t0, gp, 1303f
                  nop
                  srl          t5, gp, s9
                  slli         zero, a2, 5
                  beq          a3, t6, 1316f
                  bltu         s3, a2, 1304f
1299:             and          a3, a5, s0
                  bne          s5, t2, 1315f
                  bgeu         a1, s0, 1305f
                  sub          s10, a3, s8
1303:             or           a6, t0, a0
1304:             xori         s7, s4, -1019
1305:             bltu         a7, t4, 1312f
                  ori          a0, s11, -1409
                  sub          sp, s11, gp
                  sub          t3, zero, s11
                  srai         a2, ra, 24
                  blt          s7, s3, 1327f
                  ori          ra, a6, 1775
1312:             sltiu        s10, a1, 7
                  andi         a4, a5, -994
                  xori         a2, s4, -1066
1315:             sll          a3, a5, s8
1316:             addi         s6, s10, -1702
                  bne          s10, t5, 1332f
                  sltu         a2, s5, a1
                  xor          t4, a6, s0
                  beq          a6, s9, 1330f
                  andi         ra, gp, 519
                  and          s3, a7, s4
                  addi         s4, t3, 330
                  bgeu         ra, tp, 1339f
                  addi         s7, s2, -1459
                  slli         gp, s5, 7
1327:             sltiu        gp, zero, -81
                  xori         a2, s11, 1952
                  xori         sp, t2, -449
1330:             sll          gp, t3, a3
                  nop
1332:             blt          a2, s9, 1351f
                  andi         s4, t3, 443
sub_1_11:         jal          a2, 4f
0:                jal          gp, 3f
1:                jal          s4, 2f
2:                jal          ra, 5f
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          t1, 9f
6:                jal          t4, 1b
7:                jal          t1, 6b
8:                jal          gp, 0b
9:                jal          ra, 10f
10:               addi         s7, t3, -496
                  slti         t3, a3, 1753
                  srl          a5, s4, s5
                  srl          s10, ra, a5
                  srai         a3, gp, 8
                  bge          zero, tp, 1348f
1339:             slli         s5, t1, 7
                  ori          a4, s10, -1857
                  sltiu        a6, s9, -2045
                  srl          sp, s8, s10
                  bne          a5, s5, 1345f
                  srl          s5, s4, s4
1345:             bgeu         a7, s3, 1347f
                  sub          a2, t6, a5
1347:             slli         a2, s4, 25
1348:             add          t2, s8, s6
                  andi         sp, t3, -1486
                  ori          gp, gp, 1507
1351:             sub          a2, s10, s0
                  addi         t0, s10, 900
                  sub          a0, a1, t4
                  lw           a2, 4(s9)
                  andi         a4, s10, 681
                  addi         s9, s9, 8
                  srai         t0, a0, 1
                  srli         s0, s3, 28
                  slt          t2, s7, s6
                  sltiu        t6, t5, 1705
1993:             addi x29, x12, 1
1993:             jalr x29, x29, 0
sub_4:            andi         gp, s10, -1717
                  srai         t6, a5, 16
                  nop
                  beq          s0, s6, sub_4_stack_p
                  and          s1, a1, gp
                  slt          s11, s8, a6
                  auipc        s5, 519131
sub_4_stack_p:    addi         s9, s9, -52
                  sw           a2, 4(s9)
                  srl          a7, t6, a0
sub_4_0:          jal          a2, 16f
0:                jal          ra, 13f
1:                jal          ra, 8f
2:                jal          s6, 10f
3:                jal          t1, 0b
4:                jal          ra, 20f
5:                jal          ra, 23f
6:                jal          t0, 11f
7:                jal          t1, 21f
8:                jal          ra, 14f
9:                jal          ra, 18f
10:               jal          t5, 1b
11:               jal          s1, 3b
12:               jal          s3, 4b
13:               jal          ra, 9b
14:               jal          t0, 7b
15:               jal          ra, 5b
16:               jal          t1, 2b
17:               jal          ra, 12b
18:               jal          a0, 19f
19:               jal          ra, 15b
20:               jal          s0, 6b
21:               jal          a0, 22f
22:               jal          ra, 17b
23:               lui          ra, 460754
sub_4_1:          jal          a2, 11f
0:                jal          ra, 9f
1:                jal          a4, 16f
2:                jal          s4, 19f
3:                jal          s4, 7f
4:                jal          ra, 0b
5:                jal          ra, 8f
6:                jal          t5, 15f
7:                jal          ra, 1b
8:                jal          ra, 3b
9:                jal          t1, 17f
10:               jal          t1, 12f
11:               jal          a5, 10b
12:               jal          ra, 13f
13:               jal          t1, 6b
14:               jal          ra, 5b
15:               jal          ra, 14b
16:               jal          ra, 18f
17:               jal          s10, 2b
18:               jal          ra, 4b
19:               addi         t1, a1, -1053
sub_4_2:          jal          a2, 1f
0:                jal          ra, 22f
1:                jal          ra, 26f
2:                jal          ra, 0b
3:                jal          t0, 25f
4:                jal          t1, 10f
5:                jal          t5, 18f
6:                jal          ra, 11f
7:                jal          ra, 19f
8:                jal          t0, 6b
9:                jal          ra, 13f
10:               jal          t5, 20f
11:               jal          t1, 24f
12:               jal          ra, 7b
13:               jal          t1, 12b
14:               jal          s3, 3b
15:               jal          ra, 14b
16:               jal          t1, 15b
17:               jal          ra, 23f
18:               jal          s11, 9b
19:               jal          t1, 4b
20:               jal          t1, 27f
21:               jal          sp, 5b
22:               jal          ra, 8b
23:               jal          a3, 2b
24:               jal          a5, 21b
25:               jal          ra, 17b
26:               jal          gp, 16b
27:               add          s2, t1, gp
                  addi         a6, s7, -650
                  bge          t3, s11, 11f
                  srai         s6, a0, 8
                  lui          a6, 447663
                  or           gp, t5, t0
                  bltu         a6, t3, 11f
                  beq          t0, a4, 9f
                  xori         a3, t0, -118
                  srai         s5, t5, 19
9:                nop
                  andi         s7, s6, 1744
11:               srl          t2, a5, ra
                  add          a2, s2, t1
                  or           t5, t6, sp
                  auipc        t2, 855047
                  lui          a5, 45621
                  beq          a5, a4, 24f
                  slt          t4, t4, a6
                  bne          a6, a6, 28f
                  nop
                  sll          s10, a5, gp
                  bne          tp, a1, 36f
                  lui          t3, 827390
                  sltu         t5, a2, a0
24:               lui          a3, 588179
                  bltu         gp, t2, 43f
                  andi         s3, sp, 1409
                  sltiu        a1, t4, -186
28:               and          t5, t1, a5
                  lui          t0, 654380
                  sltiu        s2, a4, -266
                  bltu         s10, t2, 39f
                  srl          t0, a5, t5
                  slti         t3, s7, 824
                  blt          s5, a3, 43f
                  or           a3, s10, s3
36:               xori         a5, t4, 14
                  srli         t3, t4, 4
                  slt          a4, sp, a1
39:               slli         s6, a5, 8
                  ori          a0, a2, -1349
                  xor          t0, t2, a2
                  and          t0, s7, s6
43:               srai         a5, t1, 12
                  bne          s4, a5, 59f
                  srl          s7, t3, t1
                  blt          a5, s3, 59f
                  lui          s11, 184788
                  xori         a4, s1, -1779
                  xor          s2, t0, tp
                  bgeu         t1, t1, 61f
                  sltiu        a7, s5, -176
                  slti         ra, a4, -158
                  sll          sp, s8, s1
                  lui          s11, 699373
                  ori          t3, s10, -776
                  srai         t2, s5, 26
                  bge          s8, s10, 65f
                  sra          s4, s6, gp
59:               ori          s6, s1, -335
                  beq          s0, t6, 78f
61:               bgeu         s2, zero, 76f
                  nop
                  sra          a2, t0, s11
                  or           s1, t1, t6
65:               bgeu         s11, s1, 67f
                  xori         s6, a7, 1965
67:               beq          s6, a5, 81f
                  beq          s3, t4, 79f
                  xor          a1, a4, s8
                  sub          t1, t0, t2
                  ori          t1, a2, 1868
                  lui          ra, 166273
                  srli         sp, t5, 1
                  blt          a0, s10, 92f
                  bne          a4, gp, 91f
76:               sll          a5, a1, s11
                  slt          a4, t5, t0
78:               bltu         t5, s9, 97f
79:               srl          gp, t6, s1
                  sltu         s10, gp, s5
81:               bgeu         gp, t2, 92f
                  blt          t6, gp, 97f
                  srli         a3, s7, 7
                  bge          s8, t6, 90f
                  slt          zero, sp, s11
                  bltu         s2, sp, 93f
                  lui          a0, 866629
                  ori          a5, s7, -1725
                  slti         s3, tp, 1113
90:               srli         t4, s8, 1
91:               beq          ra, s7, 111f
92:               ori          s1, s4, -305
93:               xori         s1, a2, -195
                  srl          gp, zero, s2
                  srai         s6, a0, 3
                  bne          a1, t5, 112f
97:               srai         a6, s7, 11
                  sra          a4, a5, t5
                  blt          s10, a1, 118f
                  addi         a3, t1, -541
                  auipc        t4, 410218
                  ori          s2, ra, -560
                  lui          s10, 200018
                  sltiu        s6, t3, 425
                  bgeu         a0, s7, 106f
106:              beq          sp, gp, 115f
                  sltiu        gp, gp, -801
                  slti         a1, s9, 256
                  srl          s1, s0, t6
                  srai         t3, t5, 7
111:              bne          a5, a5, 127f
112:              srl          a1, s6, t5
                  sub          zero, t0, zero
                  add          s6, t1, a5
115:              sll          a0, ra, s8
                  sra          s11, zero, sp
                  sltiu        t4, a6, 1380
118:              auipc        t4, 892400
                  bge          sp, s0, 127f
                  slti         s7, t4, 1962
                  sltu         a1, s8, s6
                  and          a1, s1, a6
                  addi         t5, ra, -652
                  bge          s5, s3, 125f
125:              blt          t0, a4, 138f
                  bgeu         t0, s2, 129f
127:              sltiu        s6, s4, 316
                  nop
129:              lui          a0, 127926
                  bltu         s11, s2, 150f
                  blt          s11, s9, 149f
                  blt          a1, zero, 143f
                  sll          s2, ra, a6
                  srai         zero, s6, 7
                  sra          a6, a7, a2
                  beq          t3, zero, 151f
                  sra          a7, tp, s10
138:              andi         t4, s8, -1109
                  sll          s10, t1, t3
                  slli         s5, s5, 6
                  bgeu         t4, s4, 143f
                  xori         t0, a2, -1379
143:              blt          s0, a4, 161f
                  bne          t3, ra, 154f
                  andi         a6, s7, -1373
                  bne          s4, t0, 155f
                  and          t3, a6, sp
                  sra          t0, sp, sp
149:              ori          t6, a2, 1028
150:              ori          sp, s5, 844
151:              srli         a6, s4, 3
                  auipc        s5, 992506
                  slt          s0, t6, s5
154:              srli         t5, t4, 10
155:              bge          t6, a6, 166f
                  srai         gp, a0, 21
                  beq          t0, s3, 165f
                  blt          a2, a4, 169f
                  xori         a7, t5, -945
                  nop
161:              xor          s5, s5, s10
                  bge          t3, s6, 169f
                  or           a3, s0, zero
                  srl          a1, a4, a5
165:              slti         s11, s0, -1417
166:              bltu         t6, s5, 169f
                  srai         sp, a2, 2
                  bne          a1, s3, 169f
169:              srli         s4, a1, 12
                  andi         s7, s2, 1288
                  lw           a2, 4(s9)
                  addi         s9, s9, 52
                  or           t1, t4, t1
                  srli         a1, a6, 9
                  srl          gp, t6, s10
261:              addi x13, x12, 0
261:              jalr x13, x13, 0
sub_2:            sltu         a3, t6, zero
                  addi         s9, s9, -64
                  sw           a2, 4(s9)
                  slt          a0, ra, s10
                  sll          t2, t3, zero
                  addi         t2, a0, -943
                  andi         a3, a6, -183
                  andi         ra, tp, 194
                  sra          t4, sp, s5
                  srai         a4, a4, 20
sub_2_4:          jal          a2, 3f
0:                jal          t1, 10f
1:                jal          ra, 8f
2:                jal          ra, 13f
3:                jal          ra, 12f
4:                jal          t1, 16f
5:                jal          a7, 7f
6:                jal          ra, 14f
7:                jal          ra, 2b
8:                jal          ra, 6b
9:                jal          t6, 17f
10:               jal          t4, 1b
11:               jal          ra, 9b
12:               jal          ra, 4b
13:               jal          t1, 15f
14:               jal          ra, 11b
15:               jal          sp, 18f
16:               jal          ra, 0b
17:               jal          ra, 5b
18:               lui          t2, 642900
sub_2_3:          jal          a2, 7f
0:                jal          a1, 2f
1:                jal          ra, 9f
2:                jal          ra, 14f
3:                jal          t1, 5f
4:                jal          t1, 6f
5:                jal          gp, 8f
6:                jal          t1, 15f
7:                jal          gp, 13f
8:                jal          ra, 11f
9:                jal          ra, 12f
10:               jal          t1, 0b
11:               jal          ra, 1b
12:               jal          t1, 4b
13:               jal          ra, 10b
14:               jal          t1, 3b
15:               and          s1, s9, zero
sub_2_1:          jal          a2, 18f
0:                jal          t1, 26f
1:                jal          ra, 19f
2:                jal          gp, 16f
3:                jal          ra, 5f
4:                jal          ra, 0b
5:                jal          s11, 10f
6:                jal          s2, 3b
7:                jal          t1, 20f
8:                jal          ra, 22f
9:                jal          ra, 6b
10:               jal          ra, 4b
11:               jal          t1, 27f
12:               jal          gp, 8b
13:               jal          ra, 17f
14:               jal          a4, 28f
15:               jal          a5, 9b
16:               jal          s2, 15b
17:               jal          ra, 24f
18:               jal          ra, 1b
19:               jal          t5, 14b
20:               jal          t1, 21f
21:               jal          ra, 13b
22:               jal          ra, 2b
23:               jal          ra, 30f
24:               jal          t6, 25f
25:               jal          ra, 23b
26:               jal          ra, 29f
27:               jal          sp, 7b
28:               jal          ra, 12b
29:               jal          ra, 11b
30:               slt          a6, zero, a0
sub_2_2:          jal          a2, 10f
0:                jal          s5, 7f
1:                jal          ra, 5f
2:                jal          ra, 12f
3:                jal          t1, 13f
4:                jal          t1, 6f
5:                jal          ra, 9f
6:                jal          s5, 11f
7:                jal          t1, 14f
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          a4, 4b
11:               jal          a5, 1b
12:               jal          ra, 0b
13:               jal          ra, 15f
14:               jal          ra, 8b
15:               sltiu        a7, ra, 387
                  add          a1, s1, a5
                  sra          t5, a7, t0
                  beq          s1, t0, 4f
                  srl          a1, t5, a7
4:                slli         a5, s6, 14
                  lui          ra, 1044226
                  sll          a3, t3, t6
                  or           a2, s4, t2
                  auipc        s0, 179260
                  xori         t5, ra, -590
                  slti         sp, a6, 1710
                  srl          a3, s7, s10
                  add          a1, t2, s11
                  sub          s11, a4, s0
                  srli         sp, a5, 5
                  bge          a6, ra, 19f
                  srli         s6, s3, 5
                  sll          s11, t4, ra
                  andi         gp, s2, -962
19:               nop
                  sub          s5, sp, a0
                  slti         s2, a4, 1677
                  slt          s4, a1, s0
                  add          s5, a6, a5
                  bltu         t4, tp, 39f
                  andi         a5, t4, -928
                  slli         s6, a0, 22
                  blt          a5, s8, 46f
                  srai         s10, s1, 23
                  sub          s3, a2, t5
                  sub          a2, gp, s1
                  sltu         a7, a7, a5
                  bne          s6, s2, 43f
                  xori         a1, s10, 966
                  add          t0, t5, a4
                  add          s5, a1, a5
                  auipc        ra, 689113
                  xori         s6, t2, -1845
                  nop
39:               bltu         ra, gp, 47f
                  sra          t2, t5, s0
                  sra          t4, s9, s0
                  bge          s11, s0, 56f
43:               bgeu         sp, s3, 45f
                  bge          s6, tp, 50f
45:               sltu         t3, zero, s10
46:               beq          t3, s7, 50f
47:               slli         a5, s9, 19
sub_2_0:          jal          a2, 19f
0:                jal          s6, 2f
1:                jal          ra, 7f
2:                jal          ra, 18f
3:                jal          ra, 17f
4:                jal          ra, 1b
5:                jal          a3, 12f
6:                jal          s0, 0b
7:                jal          a3, 13f
8:                jal          t1, 20f
9:                jal          t1, 8b
10:               jal          a1, 5b
11:               jal          ra, 4b
12:               jal          t1, 11b
13:               jal          s10, 9b
14:               jal          ra, 15f
15:               jal          ra, 3b
16:               jal          ra, 10b
17:               jal          sp, 16b
18:               jal          ra, 14b
19:               jal          t5, 6b
20:               add          t0, s4, s6
                  lui          s3, 909277
                  bltu         gp, s11, 57f
50:               slt          ra, s9, zero
                  sll          s4, t3, s1
                  add          t6, t0, s3
                  beq          t5, a6, 71f
                  sll          a4, s7, s10
                  sll          gp, s1, s3
56:               ori          s1, t0, 1262
57:               auipc        s1, 483184
                  and          s7, t0, sp
                  xor          t2, s1, s2
                  or           sp, zero, t2
                  slli         a1, zero, 4
                  nop
                  ori          a2, s11, 631
                  sra          t5, s4, s10
                  srli         gp, a5, 19
                  add          s10, s0, ra
                  or           sp, s8, s0
                  sll          t5, s0, t4
                  slli         a0, s8, 17
                  lui          s6, 84468
71:               and          s0, t0, t5
                  and          a4, t1, tp
                  add          ra, s7, s7
                  sltu         a4, s8, t6
                  beq          a6, zero, 94f
                  andi         t2, a7, 342
                  slli         t2, s10, 17
                  ori          s4, s2, -2022
                  addi         t2, s5, -439
                  sltu         s0, s8, zero
                  srl          s3, t0, s6
                  beq          s4, s3, 98f
                  nop
                  xor          gp, s1, a4
                  bne          gp, t4, 93f
                  sltiu        t3, t4, -1508
                  nop
                  or           t6, a4, s5
                  bgeu         s10, zero, 108f
                  xori         t3, s9, 241
                  andi         s6, s3, -1485
                  and          a1, s5, t4
93:               slti         s3, ra, 1063
94:               add          a2, t0, gp
                  slli         s11, s1, 30
                  slt          s5, s9, t0
                  sltu         t0, s9, a3
98:               xori         s2, s5, -357
                  auipc        a4, 100918
                  sltu         a1, a4, t0
                  beq          s2, t2, 117f
                  sub          s0, s3, s8
                  beq          t3, s7, 111f
                  or           sp, s7, s4
                  bgeu         t0, s3, 108f
                  and          s6, s0, s3
                  or           s1, s7, ra
108:              addi         t5, s1, -105
                  xor          a7, t6, tp
                  sltiu        a1, s6, 1576
111:              sltiu        gp, zero, 1999
                  blt          s7, a2, 128f
                  srai         zero, s7, 11
                  bltu         a2, tp, 128f
                  xori         a0, a0, -370
                  srai         s1, a4, 6
117:              bgeu         t2, t0, 125f
                  ori          a4, s8, -244
                  andi         a3, tp, 1446
                  bgeu         s8, s2, 134f
                  sll          s4, t3, zero
                  add          s1, a2, s3
                  srai         s6, s1, 23
                  ori          s10, s3, -1662
125:              blt          t5, t4, 134f
                  auipc        s0, 277182
                  sltiu        t5, s2, -910
128:              xor          s1, a1, ra
                  sll          s1, t2, t0
                  bgeu         s4, zero, 137f
                  sll          a3, a4, t1
                  sltiu        a7, sp, -675
                  and          a4, ra, gp
134:              sltu         s11, s0, s4
                  blt          s3, t5, 151f
                  srli         s11, t1, 31
137:              addi         s11, s5, -1980
                  lui          s6, 899154
                  and          a6, a6, s7
                  srai         a3, s4, 24
                  ori          a0, a0, 1837
                  ori          s3, sp, -188
                  sltu         s2, a5, s1
                  slli         t4, zero, 10
                  sltiu        a6, s3, 1569
                  bne          s1, gp, 149f
                  xori         a2, s8, -864
                  bge          gp, t0, 168f
149:              and          t5, zero, s0
                  bge          a4, ra, 169f
151:              bne          a2, s8, 158f
                  sll          a7, t0, s6
                  nop
                  srai         t0, t3, 13
                  bltu         a3, gp, 163f
                  sltu         s4, t0, s4
                  ori          a7, a5, 1011
158:              auipc        a5, 742522
                  srai         a1, a0, 26
                  sltu         t3, ra, t3
                  or           a2, a7, zero
                  sltiu        a1, a5, -1911
163:              srl          s6, s10, gp
                  and          a2, s8, s5
                  or           t3, s8, a2
                  addi         s5, tp, 1635
                  bne          ra, s6, 171f
168:              auipc        s4, 273054
169:              and          a5, a7, s2
                  bgeu         gp, gp, 184f
171:              sub          gp, t2, s10
                  xori         a5, s10, -1564
                  andi         a1, t3, 106
                  sra          t2, sp, tp
                  srli         s7, a2, 21
                  xor          t0, t0, a2
                  slt          s10, a6, s7
                  srai         s3, t5, 29
                  andi         t1, s10, -1120
                  bge          t5, gp, 194f
                  beq          a0, a4, 196f
                  bgeu         t6, a3, 189f
                  xor          s10, a2, t6
184:              sltu         a7, zero, t4
                  sltu         s5, t2, s6
                  slli         t3, s4, 24
                  sltu         ra, t2, s2
                  sltiu        a7, s3, 210
189:              slli         a2, a6, 16
                  bge          s10, t1, 209f
                  slt          s5, t3, sp
                  sltu         t0, ra, s5
                  srai         s1, s5, 14
194:              sll          a4, sp, s2
                  auipc        a2, 798980
196:              xor          ra, t4, t6
                  ori          a1, a7, 1828
                  sub          t3, ra, t3
                  sub          sp, gp, a2
                  add          a0, sp, sp
                  xor          a5, s7, s5
                  srl          t4, a1, gp
                  beq          zero, a1, 221f
                  slli         a4, t5, 30
                  and          zero, t2, zero
                  xor          s0, t0, s6
                  add          zero, s5, s4
                  bne          t5, s11, 216f
209:              bge          s2, t5, 211f
                  andi         t5, t1, 431
211:              slti         a5, t2, -1713
                  beq          zero, a2, 231f
                  add          s5, a5, ra
                  ori          t2, a2, -869
                  slti         t5, tp, 1133
216:              sltiu        t0, s9, -1788
                  ori          s10, a1, 2042
                  nop
                  bgeu         t6, s6, 221f
                  addi         t4, t3, -1616
221:              sltiu        s6, s9, -55
                  xori         a2, t1, -1524
                  srl          sp, ra, s3
                  lui          t5, 240533
                  bne          s5, s2, 231f
                  srl          ra, t4, t3
                  blt          a1, s1, 243f
                  srai         a4, a6, 2
                  srli         s3, s6, 1
                  sltiu        sp, t3, 800
231:              nop
                  srl          t4, t5, t0
                  srli         gp, s6, 31
                  srl          t0, s4, a3
                  andi         s7, a6, 1456
                  slt          s11, gp, a2
                  add          a4, s9, t6
                  xor          t5, s7, tp
                  slt          a1, s8, s4
                  sll          t5, a5, ra
                  srl          s1, zero, a0
                  sra          t5, s7, s1
243:              nop
                  lui          s0, 124600
                  and          t3, zero, s9
                  srli         s11, a4, 6
                  xor          s3, t4, a6
                  slli         t2, s3, 5
                  sub          s1, t6, s10
                  beq          a3, s10, 258f
                  srl          a3, a7, s11
                  bgeu         t3, s11, 268f
                  ori          s10, a3, -1999
                  sra          s7, a0, t2
                  sltiu        a5, s4, -1262
                  xori         s11, s0, 836
                  add          s4, a4, a6
258:              addi         t4, a0, 644
                  andi         a0, s5, -1006
                  or           t4, s8, a3
                  sra          a7, s2, s7
                  slli         s7, a0, 27
                  andi         a5, a4, -255
                  bge          s3, t1, 275f
                  srai         a0, s5, 7
                  sltiu        a6, a3, -805
                  slt          s10, s5, a2
268:              xor          s11, s5, t1
                  slti         t5, s10, 918
                  and          a7, s2, t5
                  add          s1, s6, s1
                  and          s7, s4, t2
                  sll          s7, s6, a1
                  slti         a6, s7, 1469
275:              sra          a0, t3, a6
                  bne          s4, a2, 291f
                  srl          s4, sp, ra
                  slli         s1, s6, 15
                  bgeu         zero, zero, 287f
                  sll          a4, t5, ra
                  sltiu        a4, t2, -23
                  sra          s0, a2, a5
                  lui          a2, 747179
                  srl          s5, t2, a6
                  xor          t6, gp, s11
                  and          sp, a1, t3
287:              sltu         s0, t1, s0
                  srl          t2, s2, ra
                  blt          tp, a5, 291f
                  sub          zero, t1, sp
291:              sltiu        ra, t6, 1574
                  nop
                  lw           a2, 4(s9)
                  addi         s9, s9, 64
                  sltiu        s7, s10, 645
                  srai         s3, a6, 17
415:              addi x18, x12, 0
415:              jalr x18, x18, 0
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
.word 0xea9861f0, 0x1fdfccb8, 0xf62e78d6, 0xe13dfad9, 0xc8b5424c, 0x3a813515, 0x7271a0a2, 0xd5e407c7
.word 0x51e733b2, 0x63b2e8e2, 0x05d92656, 0xb2b8a43f, 0x07836f80, 0xa790b8a4, 0x71bd5712, 0xffc0fe90
.word 0x4c101779, 0x1726a265, 0x4053521b, 0x4e4e15e9, 0x85a72858, 0xf3482267, 0x3a3ca218, 0x353f2648
.word 0x20b57cf5, 0x8c5ec56d, 0xa19a620e, 0x103245c8, 0x25d6a7e2, 0x43781732, 0x9ff6e678, 0x116fec03
.word 0xf6c05745, 0x5f87cd2a, 0x2253f515, 0xa689fad4, 0x332d991d, 0xe48be550, 0x23f7a3b2, 0xe93da17a
.word 0x12db8411, 0xe5980407, 0x31f86963, 0x04bd8633, 0xf849df67, 0x4ffc5300, 0xd917c703, 0x63221ace
.word 0xb6739b4a, 0xbf1ed253, 0xdf6a65cc, 0xc6ba4437, 0xe4071a2b, 0x9ee3331e, 0x590d8066, 0x1998779d
.word 0xbdf6dd7c, 0x46347d8b, 0xfd36bce6, 0x6a49d171, 0x0de6d435, 0xfb7c88c3, 0x4da49bbb, 0xd41aef12
.word 0xf814279a, 0x55cd98ab, 0xf5a6b318, 0x01a80f2d, 0x1e118cf0, 0xabb3b060, 0xdd55869a, 0x0ba27a56
.word 0xbb3a16e0, 0xfc13d3e5, 0xe8296459, 0xbd290025, 0xdc4df1da, 0x102256c5, 0xfc0c2efe, 0xe1978941
.word 0x5818f1c3, 0x7adaab9e, 0x78aa7023, 0x35c1deee, 0x35796573, 0x5b299af8, 0x6d8baf5a, 0x6ddd3f75
.word 0x6f5099d6, 0x8ce02ab6, 0xabd0baa5, 0xc3375eed, 0xd3f7a3e6, 0x818ced31, 0xab5e546d, 0xb86b9a26
.word 0xfe189df2, 0xcf89dca5, 0xd7587f27, 0x60374c5e, 0x5dc5d427, 0x3b453c08, 0x4f3710a6, 0x347fc2ed
.word 0xdf475075, 0xff325d90, 0x5bf24bea, 0x789c23f3, 0xc06bc78a, 0x161d25af, 0x42d58193, 0xe5461eb7
.word 0xac1e7c1d, 0xb4710090, 0xbd2f9bab, 0xcee88772, 0xaf39ef79, 0x8ee8e9db, 0x03c12729, 0x34848caf
.word 0xa8911baa, 0x206ec124, 0x47994892, 0x12393368, 0xd8894b89, 0x10f50962, 0xa3d555aa, 0xf3768e20
.word 0xc57e1ea2, 0x78fb19f6, 0x96fd817f, 0xce8039df, 0x99c06f3d, 0x55b26e92, 0x558533c5, 0x2872079a
.word 0x5807ead9, 0x46431fcd, 0x9302306c, 0xfc3c5a84, 0xf818e9d8, 0x8acd1da3, 0xccad4a5d, 0xa48703d6
.word 0x6cb43140, 0xe7403091, 0x39fd91bf, 0x8986a31b, 0x39f086df, 0xbb68dc99, 0x29598722, 0x880c43ca
.word 0x25735944, 0x9b087670, 0x88007b09, 0x6e816bb6, 0xdc7bdae4, 0x75cf7c69, 0xc90d8b1a, 0xd59a5486
.word 0x68e11157, 0x3eadfeb2, 0xf687810c, 0x4b7334ab, 0x5532c7a2, 0xef0c308a, 0x1004122a, 0x2919a96f
.word 0x8a592cd1, 0xd5aa8cb1, 0x06a9c3ab, 0x4ac04fd1, 0x432808d1, 0x9646ee95, 0x5e48036e, 0x50f5b81f
.word 0xfbdd5d5a, 0x6040d028, 0x1d0a39d9, 0xa2904819, 0x00bbccf6, 0x4610e9bc, 0xd99b995a, 0xc44d509c
.word 0x88618717, 0x6a0cc603, 0x3a9e0226, 0x13a5dfae, 0xd61d0179, 0xbe581a74, 0x04fa0437, 0xc7391dc4
.word 0x3961ea56, 0xd07530b4, 0xda9e8812, 0x1bbc3541, 0x2651c11e, 0x68e200b9, 0xf0b06117, 0x332809c6
.word 0x3d126837, 0x75251871, 0xe0977680, 0x0f4a0f0a, 0x90e6939a, 0xa6c20263, 0x9a54406e, 0x0f47ff29
.word 0xbd1b7d7a, 0x548e8b51, 0xec0006ae, 0xb9035b7b, 0x843f3064, 0x73cc7637, 0x71786b07, 0x68ba732c
.word 0x2d93dfb1, 0xca243bf7, 0x92f23695, 0xf9818f0c, 0xc70e8652, 0x0bb7d064, 0x911d3853, 0x6efcce62
.word 0x700775db, 0x1818aa93, 0x3742da98, 0x8e81d351, 0x34a2e496, 0xea81ce6c, 0xf8c0bbab, 0x8b1a3a88
.word 0x6b894b5b, 0x142f6735, 0xb3b6d7fb, 0xf86bdd26, 0x45a0c974, 0x5b99303a, 0x522ed0ef, 0xcf7f96d8
.word 0xe4d0a630, 0xd9595c3c, 0xcab1158f, 0x5f2fe537, 0x000509cd, 0xe3dcc2ad, 0x3bc0d91b, 0xbdd7a5ba
.word 0x1659f5fe, 0x2dff3fe9, 0xcc0cfbc7, 0x53da8daa, 0x1467212d, 0x795bda2b, 0x72a6a291, 0xb647e479
.word 0x901d3699, 0x2e3aa518, 0xbcec0f2d, 0xc721ccd6, 0x2763f09e, 0x7a0f803f, 0xcf863aa6, 0x96d276e3
.word 0x4c6e5029, 0x97ac2cc3, 0xc7720de2, 0x4e594c6d, 0x17c3fe59, 0x16db44c4, 0xc4e7a643, 0x548ad7d9
.word 0x1f37bc61, 0x12f591b6, 0x9ad83d48, 0xa40db4b0, 0x76dffcc3, 0x74db50d4, 0x681e710b, 0x80c749e4
.word 0x557241c1, 0x3504b3b3, 0x8c6f877f, 0xbf8d1db0, 0xe1179f30, 0x621803bd, 0xbfd93d1c, 0x39e2b84d
.word 0x0aa979b1, 0x4a32d64d, 0xa6cb812c, 0xa3c3f17e, 0x8486860a, 0x30b7dbd8, 0x636581bf, 0xee29f6e4
.word 0x714a3fb0, 0x77ffca0b, 0x11e13cb6, 0xeae2eb99, 0xc4d5fa81, 0x2d88b181, 0x820b7650, 0x304f1bdb
.word 0xf07f6cef, 0xc5b18983, 0x4187e0a3, 0xdfd5761e, 0x68ee9b37, 0xe94e64a2, 0xb99ceace, 0x5cf8219b
.word 0x6235e776, 0x5a883267, 0xc0bce80d, 0xa2487b8d, 0xa22bf089, 0xaa940820, 0xf56f5a04, 0xb5659860
.word 0x0f0729d5, 0xc229eb9e, 0x61d99515, 0x66a04244, 0x316af301, 0x1a288fed, 0x74c95375, 0xda36cfd8
.word 0x9f969025, 0x3b2402f5, 0xef870484, 0x68922827, 0x3a4de8fb, 0x1d33fe96, 0x569634c4, 0x7494dc7f
.word 0x9c4c7c9e, 0xf4d00d89, 0xce693df7, 0x7f15d1d5, 0x520ae539, 0x8748a215, 0xd3c87610, 0x1d9a66bb
.word 0x2ecc09f7, 0x2c58041a, 0x5dfd1319, 0xc772ddde, 0x0171e0c4, 0x04ea31ff, 0xfe50a086, 0xca337933
.word 0x3745f282, 0x4ecb678a, 0x79949ea7, 0xd57e2b27, 0x11d16353, 0x6a60601c, 0xe6cea194, 0xae94af21
.word 0xb69cb894, 0xf203b5c9, 0x75b29675, 0x0ade2287, 0x187e2ee8, 0x0be86990, 0x2d9c36fc, 0x89ff028f
.word 0x0fb6a7e2, 0x2493358e, 0xf07cc2cc, 0x18e461d7, 0xdf3d16b6, 0x9e979d20, 0x718eb7d3, 0x74c3f10c
.word 0xe60db45b, 0x9bef26dd, 0x0cd44176, 0x2c46492c, 0x81b1222f, 0x682b4111, 0xe492abb1, 0x60b495f5
.word 0x9ccd820f, 0x116a3ada, 0x4f499dc1, 0x54709eee, 0x5d68496c, 0x023a843f, 0xe9b60e1a, 0x8c0662a0
.word 0xb0aa814b, 0x93f5e1ed, 0x4bb4b795, 0xe7edc39b, 0x996ec324, 0xc8f1f64d, 0x469bf93f, 0x81b2404f
.word 0x2e75aa78, 0xd3480247, 0xa23e2d27, 0x7b5f255d, 0x321946ff, 0x512dad79, 0x19c82e7f, 0xfe821f3b
.word 0xb6480722, 0xc12e2ee2, 0x28b77bc9, 0xf586eebf, 0x8466e429, 0x930b3293, 0x2dbf5d71, 0x45d89ee4
.word 0x36f8c47e, 0x390395f4, 0x07c68b66, 0x633f03df, 0x2a3a7e99, 0x9b484056, 0x0c1e937c, 0xcf24977d
.word 0x17ea0166, 0x83ea3ed9, 0xbd466238, 0xa1efb7d6, 0xa811f8e8, 0xe42267a7, 0x7b26cb3e, 0x8a0cdf18
.word 0x7b38bf5c, 0xf42cb7f2, 0x0fd80d3f, 0x61e0b7b1, 0xa60e43b1, 0x938903b1, 0x909163a5, 0x5848e3f4
.word 0x079b16f9, 0xa7e007aa, 0xf65a80eb, 0x728bd7e4, 0xb37fe4ee, 0xdf86b7db, 0xac0ed3ab, 0xaf4818fc
.word 0x4cde0b37, 0xa5880c94, 0xb5f26bb7, 0x5ff5ff49, 0x72e3bbee, 0xfb0cbc37, 0x4df9989f, 0x97e99e76
.word 0x670ea529, 0xd281e20f, 0xc2b146e5, 0x0a6bf7e6, 0x1cd4832c, 0xe75b6c13, 0x5acf7b87, 0xf99f67e3
.word 0xf56988e8, 0x0c115cd1, 0x2eb47a3e, 0x6418d40b, 0x1e85e778, 0x4ec9257f, 0xe37e9ba6, 0x16dca0ca
.word 0xb30f3dea, 0x3c183929, 0xcf60abc4, 0x60b6356d, 0xc5771269, 0x936747c8, 0x5a9f2ef3, 0x609ea05e
.word 0x3410032f, 0x51004c32, 0xe6ad512a, 0x3d08d239, 0x25838363, 0x57e558bb, 0xddc4fde8, 0x76b0fb3c
.word 0x21fedda5, 0xcb77996e, 0x6019b718, 0x5e131d1b, 0x7f9e7b0d, 0x5e59b066, 0x99be244d, 0x002697b5
.word 0x9a8d4af4, 0x0b02fda5, 0xc27df74d, 0x12d395da
.section .region_1,"aw",@progbits;
region_1:
.word 0x1ddecb76, 0x4c5d1148, 0x1765e801, 0x614e6014, 0x55e3866f, 0xdeed96b1, 0xb4a78368, 0xbb656bbd
.word 0x8d67480c, 0x5e8cce56, 0xa9ff3da6, 0xb8059fa8, 0xaccdc912, 0x536bc1cc, 0xfb93eb1b, 0x2df9e0db
.word 0x4fec23a8, 0x2d24437a, 0xe80ca6db, 0x939a5763, 0xb166eaf8, 0x463be657, 0xa91342b9, 0xfd5a3a7e
.word 0x2d27055e, 0x5cb8e770, 0x97b21d07, 0xb812b583, 0x5c137619, 0x05a93709, 0xd1cf1555, 0xb8b2262b
.word 0x2e7316f5, 0x5ef0127f, 0x8c99a548, 0xb3d04811, 0x224a3644, 0xb91036a2, 0x4bee27d3, 0x9e13cae0
.word 0x3701148e, 0x7dda4ff3, 0xbcfef6f9, 0x45c09526, 0x44714447, 0x11dc7164, 0x76f24967, 0xcf611227
.word 0xe45ad678, 0x4a97b484, 0xe2886fad, 0xce73582a, 0x0fb97d04, 0x03fde637, 0x1758d9bf, 0x55566195
.word 0x52b4c1fe, 0xd3a73f6c, 0xc2933dd5, 0xa3bc097b, 0xce36c9d2, 0x67b5daf2, 0x052789cb, 0x4695c5a5
.word 0x3b4dedc8, 0xca9bbe41, 0x5305de39, 0x57e524bc, 0x51e7faaa, 0xe8c5f48b, 0x75dc5552, 0x8801e9c1
.word 0x887fbfad, 0x69fd0bf0, 0x354a587e, 0x2fd2e1ef, 0x342d9650, 0x55d4aa1b, 0xe389d010, 0x9625196a
.word 0xcfe81ff5, 0x6f655d73, 0x77297c4d, 0x470c9a02, 0xbb5d50a4, 0xc60aea7e, 0x63d516d7, 0x43294b94
.word 0xb63704de, 0x4770c223, 0x8b8f33a7, 0x7f56e70a, 0x022107eb, 0x729c60df, 0xf1eeffd0, 0x64532a8a
.word 0x23ac6975, 0x37ddd4cc, 0xda8e643e, 0x2cabf80e, 0x0c76c12e, 0xc13f62e4, 0xbfbde167, 0x0a99aa6f
.word 0xbbf3ec2e, 0x865ca7e0, 0x371e3518, 0x7605b295, 0x469084b1, 0xeb4d07c6, 0xd2290137, 0x53b77e6d
.word 0xc74e8741, 0xeba3da97, 0x67442257, 0x26ea8d17, 0xc807301c, 0xbacf2566, 0x9b8fa9af, 0x0e6e6329
.word 0x745f5690, 0xafa020ed, 0xf0714ee1, 0x588783fd, 0xbd22139a, 0xda6addd3, 0x2c56e7db, 0xf85031e0
.word 0x0718c9c2, 0x209897e9, 0x3463dbf5, 0x8fb4698f, 0xccb78861, 0x6da62ef9, 0x3e9132c8, 0x1634e654
.word 0x3d74e3e2, 0x18167e77, 0xc0a58cea, 0x7b4470bb, 0xc4462d5c, 0xc7eaa5de, 0x97c4712a, 0x4ee92633
.word 0x80118d3d, 0xa34e93c2, 0xce924326, 0x8c6d8f4a, 0xfd3a0da7, 0x37a211d4, 0xec421f30, 0x95912336
.word 0x9b5d4e3d, 0x15e63af2, 0x39dadb3e, 0xd06b2a4a, 0xe1db25dc, 0xcb83a0e7, 0x2bf21afe, 0xf9b41e0a
.word 0xd35bf5aa, 0x7e898c8a, 0xacca0a44, 0x97671746, 0x70edcab4, 0xa9acba2b, 0x88246dd9, 0xc72ba900
.word 0x0d2af662, 0x5c294b44, 0xbf7fb0cc, 0xdefe985b, 0x23577907, 0x2e9b3d0b, 0x66b31df0, 0xc060d303
.word 0x8d4037c3, 0x3259c713, 0x9856b2bf, 0xd15409f4, 0x6b6fb196, 0xf0d85a85, 0xdf2df63f, 0x58d741ba
.word 0x1738357f, 0x081ee55a, 0xaf9eba3f, 0x706d8eec, 0xa78994f7, 0x57812013, 0x4097dcfc, 0x04956652
.word 0xc488b395, 0x469b682f, 0x0961e4a5, 0xb2cc832d, 0xa9b865b4, 0x585a6701, 0xd83511b4, 0x528354c0
.word 0x482a01d9, 0xf0696aa8, 0xdf15a4af, 0x188c3f23, 0x3a0c9bde, 0x11c84b54, 0x62927820, 0x1e3aabe4
.word 0x445b8b4c, 0x07cb0780, 0x61f30426, 0x257c7b86, 0x9de13022, 0x5a27a1cc, 0x88dfa1f6, 0x5e2139fb
.word 0xe0b9fb28, 0x482e5879, 0x929dcc7d, 0x52318642, 0xcf6a9d4f, 0x437895a9, 0x2b84cf21, 0x310b54e5
.word 0x3d4166ec, 0x5cc706a1, 0xdc7098f2, 0x1c128f3c, 0xec9b70c2, 0x75706bb8, 0xf9ac8af8, 0x77550e6a
.word 0x6131fbb4, 0xe85f10d1, 0xfcf2b8f0, 0x12fe1b28, 0x3a00c84c, 0xbe90494b, 0xf3655521, 0x63c9ef27
.word 0x9d708847, 0xf8812ace, 0x5c314845, 0xca584b9a, 0x12737ae2, 0x25bf5197, 0xf89946e7, 0x274ce3fd
.word 0xebd6a1b5, 0x58e2c699, 0x2237c544, 0x6e072f5d, 0x79891f8c, 0x333e0a4b, 0x3706148a, 0x01cfa8e7
.word 0xd679e676, 0x5333652c, 0x1c2fa974, 0x40b54c52, 0x51761504, 0xe26de706, 0x86325e2a, 0xc5eb9653
.word 0x861b60d0, 0x79fdcae8, 0x8a77d682, 0x48c8c63d, 0x9ed43859, 0x4785abcd, 0x7c53b304, 0x5510ea59
.word 0x03cf60a1, 0x203ff9d2, 0x1b337721, 0x2d2975b5, 0x340b3aaf, 0xc290091b, 0xc3f0346d, 0x2926ed1a
.word 0x0f2b5644, 0x4e8441cd, 0x5956d0d4, 0x3c70f40d, 0x3b2f78ac, 0x05d03e66, 0xf577bad5, 0xaffac156
.word 0x16e9475b, 0x6c629e80, 0xdb7d0e63, 0x39dee5a8, 0x759f0bf3, 0x31f9cfa7, 0x6b9efcfc, 0x134035ac
.word 0x70280b37, 0x8d441283, 0x712ebe3b, 0x1de8cdb2, 0xc01fe49e, 0xc1e2e688, 0x7ee50e30, 0xcb986e08
.word 0xf9a7b1d9, 0x6abac4a7, 0xba375463, 0x848158e3, 0x898edd7b, 0x20bfb91b, 0x4cd4ef33, 0xac40463f
.word 0x70bd3e51, 0x6effce35, 0xc984848d, 0x0c5bf5d5, 0xe423a697, 0x2f632617, 0x89b025a3, 0x90018280
.word 0x1d25a754, 0x23d97f6b, 0x7baa7480, 0xb1f965fa, 0x6313d624, 0x52391be9, 0x1a91de6b, 0xfcdebe5d
.word 0xd67f0b73, 0x3be99c71, 0x5b0ea733, 0xbf37e273, 0xb7137a44, 0x22d8d063, 0x76a3c8f2, 0xe40e9e08
.word 0x42ea5eaf, 0x9e8b80dc, 0xbdbd118e, 0xae0337f7, 0x92d2c224, 0x4d6b4e49, 0xbd143628, 0x67a754a1
.word 0xafa093b4, 0x3542c231, 0x03f8dade, 0x4e8b15af, 0x2d668113, 0xae1fe62c, 0x0310bdbe, 0xd922d480
.word 0x30262060, 0x477ba690, 0xf4475d95, 0xd819c257, 0x7f6f2df0, 0x055eaa45, 0x166cd63d, 0x08a68ee6
.word 0x6d3171cf, 0x8cd30c85, 0xd2e7f5df, 0x0d5eb7aa, 0x8cfe34f9, 0xfdb93f45, 0x56730324, 0x1a417c2b
.word 0x061177c5, 0x31a1222e, 0xaf9e085f, 0x1bfe2ef6, 0xc547f7cb, 0xb02bc142, 0x22cdf5cf, 0x77a1017c
.word 0x00d1dcb4, 0x6b81387b, 0xe7e82093, 0x7d981bc9, 0x5ebfd08c, 0xf361dc0f, 0x71992df3, 0xdf790901
.word 0x7c367a8f, 0x0e9c004b, 0xe97cad9a, 0x1f83c1bc, 0xeed67a38, 0x7c510b51, 0xd751e4dc, 0x4f213ed5
.word 0x1aa90d6e, 0x697cc35a, 0x73718c1c, 0x7a8bc866, 0x8eec438b, 0x3b76e6fd, 0xf487df86, 0x9ad62cec
.word 0x87e43c4b, 0x8d6e50fe, 0x5933d185, 0xb9098b4b, 0x38e9359c, 0x6eb83be4, 0xf8825759, 0xd8b7e5cc
.word 0xb8392b3b, 0xc325d90a, 0x16e137d7, 0x1cc62e45, 0x4c28f2e6, 0x04301481, 0xc68452f9, 0xc1b92ddf
.word 0xe868cf4f, 0xbb76a33a, 0x6b54e74c, 0xd87f672b, 0x2fc5d68b, 0xf3a96bf9, 0x5072daca, 0xcc4d7ace
.word 0xeb7467ae, 0x813ac0ed, 0xa3e9c864, 0xf8e7d411, 0x05e822fe, 0x70d32fea, 0x646789bc, 0x76044f7a
.word 0xf2c05b00, 0x41c750d0, 0x73ede740, 0x2c8feef3, 0x637dd6fd, 0x319ce5a0, 0x0a8cd796, 0xcebf8f71
.word 0x06065a9e, 0x11e703eb, 0x1bf2b313, 0xded9246b, 0xcde16fd8, 0x56f51d14, 0xecf1a45a, 0x5452b8cf
.word 0x0cedb4de, 0xff48a9ab, 0xdcc04fa4, 0xd67cb424, 0xb453c50f, 0x8686202b, 0x4b1c9f2b, 0x9e3e3ddd
.word 0xf038cae9, 0x8868e5e1, 0x3a4156b3, 0x346b89bb, 0xfded7ef2, 0x4fd8a850, 0x86f7c335, 0x5c442381
.word 0x11279e34, 0xac00a7dc, 0x6ac63b54, 0xcc9f4e95, 0xd3770be9, 0x88f46829, 0x77128981, 0x400c1db8
.word 0x46818767, 0x7f12eab7, 0xebaf52d9, 0xa4878aa1, 0xffaa3e27, 0x182070cd, 0x59dcaf39, 0x34a33050
.word 0x0ce3b471, 0xbc2fee1b, 0x13311cd9, 0x82426df2, 0x35157701, 0x040b53d1, 0xc90c3171, 0x53bb51a2
.word 0x72c5c12e, 0x772a539f, 0x751f32ff, 0x0f229c07, 0x1ea5175b, 0xec262755, 0x6654eb60, 0x89b9130c
.word 0x451e2b1a, 0xe7791369, 0xcb17abd2, 0xcc7d02b2
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x24, x25, zero
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x22, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x22, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x22, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x22, x17, ecall_handler
                  li x17, 0x1
                  beq x22, x17, instr_fault_handler
                  li x17, 0x5
                  beq x22, x17, load_fault_handler
                  li x17, 0x7
                  beq x22, x17, store_fault_handler
                  li x17, 0xc
                  beq x22, x17, pt_fault_handler
                  li x17, 0xd
                  beq x22, x17, pt_fault_handler
                  li x17, 0xf
                  beq x22, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x25, x24, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x24, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x24, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x25, x24, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x25, x24, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x25, x24, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
