.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 1
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0xe
                  li x1, 0x0
                  li x2, 0xd63d6d6c
                  li x3, 0xd4360198
                  li x4, 0xf56d1b2e
                  li x5, 0x0
                  li x6, 0xf8f715ca
                  li x7, 0x80000000
                  li x8, 0xf1d0f85a
                  li x9, 0xa
                  li x10, 0x7f43c0e8
                  li x12, 0xfe15d350
                  li x13, 0x0
                  li x14, 0xc
                  li x15, 0x0
                  li x16, 0x6
                  li x17, 0x0
                  li x18, 0x2557d6e3
                  li x19, 0xff2e9260
                  li x20, 0x80000000
                  li x21, 0xf6166766
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x55637348
                  li x25, 0x7
                  li x26, 0xf
                  li x27, 0x0
                  li x29, 0x92d7f55
                  li x30, 0x80000000
                  li x31, 0xfb19a9ea
                  la x11, user_stack_end
main:             jal          ra, 10f
0:                jal          t1, 7f
1:                jal          a3, 6f
2:                jal          a4, 0b
3:                jal          t1, 2b
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          ra, 4b
7:                jal          ra, 13f
8:                jal          tp, 1b
9:                jal          ra, 3b
10:               jal          t1, 8b
11:               jal          t1, 12f
12:               jal          t1, 9b
13:               sub          s8, a6, a6
main_4:           jal          ra, 8f
0:                jal          ra, 7f
1:                jal          ra, 17f
2:                jal          s4, 16f
3:                jal          ra, 0b
4:                jal          t5, 15f
5:                jal          ra, 2b
6:                jal          t2, 9f
7:                jal          ra, 13f
8:                jal          sp, 5b
9:                jal          gp, 4b
10:               jal          ra, 11f
11:               jal          ra, 1b
12:               jal          ra, 10b
13:               jal          ra, 12b
14:               jal          t5, 6b
15:               jal          ra, 3b
16:               jal          ra, 14b
17:               srli         t6, a7, 7
main_1:           jal          ra, 10f
0:                jal          ra, 14f
1:                jal          ra, 7f
2:                jal          t1, 9f
3:                jal          ra, 4f
4:                jal          ra, 11f
5:                jal          s4, 17f
6:                jal          ra, 15f
7:                jal          s10, 3b
8:                jal          s1, 1b
9:                jal          ra, 16f
10:               jal          s9, 6b
11:               jal          t1, 2b
12:               jal          s11, 0b
13:               jal          t1, 8b
14:               jal          ra, 13b
15:               jal          ra, 12b
16:               jal          ra, 5b
17:               nop
main_5:           jal          ra, 6f
0:                jal          ra, 5f
1:                jal          ra, 7f
2:                jal          ra, 4f
3:                jal          ra, 15f
4:                jal          ra, 9f
5:                jal          t1, 1b
6:                jal          s0, 0b
7:                jal          s9, 12f
8:                jal          ra, 2b
9:                jal          ra, 11f
10:               jal          ra, 3b
11:               jal          a7, 13f
12:               jal          ra, 8b
13:               jal          t5, 10b
14:               jal          sp, 19f
15:               jal          s8, 16f
16:               jal          ra, 17f
17:               jal          ra, 18f
18:               jal          t1, 14b
19:               or           s5, s2, t4
main_0:           jal          ra, 1f
0:                jal          ra, 7f
1:                jal          s5, 16f
2:                jal          ra, 22f
3:                jal          t1, 14f
4:                jal          t1, 19f
5:                jal          ra, 21f
6:                jal          a5, 5b
7:                jal          ra, 3b
8:                jal          t1, 2b
9:                jal          ra, 15f
10:               jal          ra, 23f
11:               jal          t1, 17f
12:               jal          gp, 4b
13:               jal          t5, 9b
14:               jal          s7, 10b
15:               jal          ra, 12b
16:               jal          t1, 6b
17:               jal          ra, 24f
18:               jal          ra, 13b
19:               jal          ra, 0b
20:               jal          t1, 18b
21:               jal          t0, 8b
22:               jal          ra, 20b
23:               jal          s1, 11b
24:               sltu         t6, t3, a5
main_6:           jal          ra, 21f
0:                jal          ra, 15f
1:                jal          t1, 18f
2:                jal          ra, 20f
3:                jal          ra, 23f
4:                jal          t1, 11f
5:                jal          t1, 0b
6:                jal          ra, 19f
7:                jal          t1, 26f
8:                jal          s2, 22f
9:                jal          t1, 5b
10:               jal          t1, 13f
11:               jal          ra, 24f
12:               jal          a0, 6b
13:               jal          t1, 17f
14:               jal          ra, 3b
15:               jal          ra, 10b
16:               jal          t1, 14b
17:               jal          ra, 25f
18:               jal          ra, 8b
19:               jal          s5, 16b
20:               jal          ra, 9b
21:               jal          ra, 2b
22:               jal          s10, 7b
23:               jal          ra, 4b
24:               jal          ra, 1b
25:               jal          ra, 12b
26:               add          s10, tp, s1
                  blt          s5, ra, 18f
                  sltiu        t2, s4, 1662
                  srl          t2, a1, a6
                  sltu         zero, a3, a3
                  bgeu         t4, t3, 19f
                  ori          a6, zero, 1104
                  xor          a4, gp, s5
                  blt          t6, a3, 15f
                  slt          s11, t1, s9
                  sltiu        s5, a3, -113
                  bgeu         s2, a4, 23f
                  addi         s1, zero, -1687
                  sra          a3, t4, s9
                  ori          a3, zero, 1965
                  or           s4, tp, s4
15:               srl          s5, a1, s0
                  srli         s1, a5, 7
                  slli         ra, s5, 13
18:               ori          t2, s1, -813
19:               srli         s8, s6, 25
                  sra          s3, a2, s6
                  andi         t6, a5, 1986
                  srli         s2, t4, 13
23:               beq          s0, s10, 31f
                  bltu         zero, s4, 27f
                  bltu         s3, t6, 29f
                  slt          s7, a2, a5
27:               srai         s7, a6, 18
                  bltu         t4, t5, 33f
29:               bgeu         s3, s7, 34f
                  sra          t0, t1, a6
31:               slt          s6, t5, s5
                  bge          a2, s3, 33f
33:               bge          tp, s8, 40f
34:               add          tp, s2, a3
                  srai         s7, t4, 27
                  xor          s1, t6, t2
                  beq          a3, s2, 57f
                  blt          s1, s11, 41f
                  bne          t6, s5, 44f
40:               and          s1, s9, s10
41:               slt          s7, t0, gp
                  and          s8, a0, s0
                  auipc        a7, 358965
44:               srli         gp, s2, 30
                  beq          t2, t6, 62f
                  sltiu        t6, s6, 1945
                  beq          t5, s9, 52f
                  bne          s9, s9, 53f
                  bgeu         t5, s2, 61f
                  auipc        t1, 990651
                  and          gp, s7, t4
52:               srai         t1, s7, 26
53:               xor          s0, a3, s2
                  lui          gp, 222468
                  bne          s7, s9, 71f
                  srli         a2, t5, 31
57:               add          gp, s8, a3
                  auipc        gp, 932450
                  xori         tp, s10, -1282
                  ori          a0, t5, -523
61:               blt          a0, tp, 77f
62:               srli         s1, sp, 30
                  bltu         zero, s1, 67f
                  or           s5, t6, s1
                  andi         sp, a3, -831
                  sltu         zero, s2, s4
67:               addi         t0, s10, -1034
                  bltu         s11, gp, 79f
                  add          s6, s7, s2
                  blt          s5, s0, 80f
71:               srl          s5, a5, ra
                  bge          t6, a3, 73f
73:               or           a3, a5, s0
                  xori         a3, t1, -119
                  or           s5, a1, a7
                  lui          sp, 138983
77:               auipc        gp, 232968
                  bge          s4, s3, 81f
79:               add          s4, s3, s3
80:               sltiu        t1, a4, 798
81:               sra          tp, zero, sp
                  sltu         t2, t1, a4
                  sltiu        s9, s0, 1533
                  blt          s9, a3, 87f
                  nop
                  bne          s11, s2, 93f
87:               and          s8, a6, t4
                  xori         zero, s10, -232
                  bgeu         a5, t4, 105f
                  bge          a3, s11, 107f
                  sltiu        s5, s11, 411
                  auipc        a2, 667244
93:               ori          a2, s2, -1155
                  lui          s9, 769217
                  slt          a6, s6, s3
                  blt          a1, t2, 106f
                  sra          a3, t6, a6
                  ori          ra, a2, 1043
                  xori         zero, a7, 1599
                  blt          a5, t4, 107f
                  slti         s10, s7, -863
                  sll          s1, s1, a7
                  slti         s0, t6, 1770
                  sub          a7, a2, a5
105:              blt          a2, s7, 121f
106:              sltu         s4, sp, ra
107:              slli         t1, s2, 30
                  blt          s7, a3, 111f
                  beq          ra, s1, 114f
                  bltu         s2, a5, 115f
main_3:           jal          ra, 6f
0:                jal          ra, 9f
1:                jal          ra, 11f
2:                jal          t1, 8f
3:                jal          ra, 5f
4:                jal          t0, 2b
5:                jal          s1, 1b
6:                jal          ra, 10f
7:                jal          ra, 4b
8:                jal          ra, 0b
9:                jal          tp, 12f
10:               jal          t1, 3b
11:               jal          t1, 7b
12:               and          zero, t3, a3
111:              sltiu        s10, t5, -1041
                  srl          s5, s4, s8
                  sltiu        s7, a5, -529
114:              auipc        t6, 77443
115:              add          ra, a4, s10
                  slti         t1, t0, 59
                  or           a2, a1, sp
                  bge          zero, a7, 119f
                  or           a4, a2, s4
                  slti         s9, s0, -1008
                  add          t2, s4, s4
                  ori          t1, a5, -197
                  la           a0, sub_3
                  addi         a0, a0, -620
                  and          s5, t5, tp
                  slt          a3, t5, t4
main_j3:          jalr         ra, a0, 621 #jump main -> sub_3
119:              nop
                  ori          s10, s8, -154
121:              and          s9, t0, a5
                  or           s10, s9, t6
                  ori          s0, s4, 1281
                  xor          s5, a0, a6
                  sltiu        a3, a7, -312
                  sub          t0, ra, t1
                  slti         s1, a3, -1140
                  sub          s7, s10, s7
                  sltu         a2, s2, s1
                  srl          ra, t5, tp
                  blt          tp, s7, 136f
                  auipc        t2, 934233
                  sub          a6, gp, s10
                  blt          s4, s8, 141f
                  slti         s11, s6, 1920
136:              slli         gp, ra, 31
                  sra          a3, s5, s1
                  xori         s7, t2, -203
                  ori          t5, s9, -282
                  addi         s4, t0, 1880
141:              lui          s2, 321528
                  add          a3, t6, s5
                  blt          t0, s10, 155f
                  srl          a0, s2, s2
                  andi         t0, a2, -976
                  bltu         t6, t2, 150f
                  add          gp, s9, ra
                  auipc        zero, 284215
                  sltu         t6, s3, s7
150:              beq          ra, s2, 153f
                  sll          t0, t0, s8
                  sra          sp, s0, s0
153:              beq          t5, s3, 168f
                  andi         s0, a0, 1873
155:              sra          zero, a7, s1
                  sltiu        t2, a2, 2036
                  xor          sp, s5, t3
                  bne          a7, tp, 175f
                  sltu         gp, a6, t1
                  and          s10, s6, s6
                  srli         a0, t3, 3
                  bgeu         tp, s5, 166f
                  bge          zero, t3, 181f
                  add          a3, a5, s11
                  slli         a3, t4, 19
166:              srli         gp, s7, 11
                  lui          a0, 480880
168:              and          a2, t2, s3
                  andi         t5, s9, 1408
                  slli         t2, t4, 30
                  srai         s9, a6, 5
                  xor          a6, a6, s3
                  beq          s2, a7, 184f
                  xor          s11, s8, s3
175:              beq          a4, zero, 195f
                  blt          sp, t4, 184f
                  bge          s7, s10, 185f
                  srl          tp, sp, a3
                  blt          s3, s0, 184f
                  slti         t5, t2, 1665
181:              lui          gp, 699199
                  bltu         s3, s11, 187f
                  lui          s8, 514949
184:              bltu         t4, tp, 194f
185:              srai         s3, s10, 5
                  auipc        s8, 407768
187:              addi         zero, a6, 96
                  bge          t3, t5, 204f
                  sra          t5, s9, a2
                  bltu         s9, a2, 206f
                  blt          s6, t2, 204f
                  sll          s0, s0, gp
                  add          t5, t6, tp
194:              srli         gp, s9, 31
195:              sub          zero, a7, s4
                  or           a7, t0, s11
                  sub          s6, zero, t5
                  blt          t1, s3, 199f
199:              blt          s3, zero, 202f
                  auipc        zero, 953310
                  sll          s3, a6, a5
202:              slti         s5, s7, -1526
                  add          s0, a4, a4
204:              sll          s8, s0, s3
                  addi         t5, tp, 1155
206:              bltu         a1, s2, 223f
                  slt          t0, sp, t5
                  bltu         t2, t2, 218f
                  nop
                  ori          t0, a5, -1142
                  slti         s11, t3, 1141
                  blt          sp, t5, 215f
                  xori         a4, a2, 360
                  and          s2, s9, sp
215:              bne          t5, s9, 219f
                  slti         s5, s9, -1852
main_7:           jal          ra, 1f
0:                jal          ra, 7f
1:                jal          gp, 18f
2:                jal          t1, 11f
3:                jal          s4, 8f
4:                jal          s11, 20f
5:                jal          ra, 24f
6:                jal          ra, 15f
7:                jal          ra, 3b
8:                jal          t5, 19f
9:                jal          s6, 5b
10:               jal          s11, 2b
11:               jal          ra, 17f
12:               jal          ra, 13f
13:               jal          ra, 0b
14:               jal          a3, 22f
15:               jal          ra, 12b
16:               jal          tp, 23f
17:               jal          gp, 4b
18:               jal          a7, 21f
19:               jal          ra, 9b
20:               jal          t1, 16b
21:               jal          t1, 10b
22:               jal          tp, 6b
23:               jal          s6, 14b
24:               sub          s5, s4, zero
                  and          a3, a4, tp
218:              sra          a0, t5, tp
                  la           a6, sub_2
                  slli         zero, a4, 20
                  sltiu        ra, s10, 904
                  addi         a6, a6, -753
                  bge          t5, s2, main_j2 #branch to jump instr
                  srl          a3, t3, gp
                  lui          t5, 643403
                  sltiu        s6, a5, 354
main_j2:          jalr         ra, a6, 754 #jump main -> sub_2
219:              sltiu        zero, t4, -609
                  auipc        s11, 94108
                  sll          t5, a1, s11
                  bltu         t0, t2, 229f
223:              sll          s0, s1, t4
                  lui          t6, 281111
                  sltiu        t5, sp, 1302
                  lui          t0, 648073
                  add          a5, a7, t4
                  addi         a6, s2, -789
229:              slti         t5, s1, 1696
                  xor          t2, s3, a7
                  sltu         a5, a5, gp
                  nop
                  slt          a2, t4, a0
                  or           s11, s9, t6
                  bltu         s6, s9, 251f
                  la           gp, sub_1
                  addi         gp, gp, 139
                  add          a4, sp, s0
                  addi         t5, zero, -1993
                  sll          s2, s0, t5
                  srai         s9, a6, 0
                  sub          s3, zero, a7
                  bne          gp, gp, main_j1 #branch to jump instr
                  sltu         a6, s6, s1
main_j1:          jalr         ra, gp, -139 #jump main -> sub_1
                  sll          tp, s5, s11
                  lui          a2, 184134
                  xor          s0, s4, s3
                  addi         t1, s2, 179
                  blt          a1, s7, 251f
                  nop
                  and          s2, gp, a3
                  auipc        a4, 827959
                  sll          s10, t4, s3
                  lui          s4, 729818
                  nop
                  bgeu         a4, s9, 265f
                  sub          t6, t6, s5
                  ori          s11, a4, 1247
                  srl          a0, ra, s9
251:              add          s0, s7, s10
                  bltu         t2, tp, 269f
                  add          t1, s8, a7
                  blt          tp, s0, 259f
                  ori          s11, gp, -1679
                  sltiu        s3, a6, -113
                  or           a2, t2, t4
                  ori          s11, a2, -131
259:              slti         a4, s10, -1325
                  bgeu         a7, s0, 273f
                  bne          s4, tp, 264f
                  sltu         zero, tp, t6
                  sll          a5, a5, a2
264:              add          a4, s2, a1
265:              slti         s7, a6, 857
                  sltu         s5, a1, t4
                  slt          s3, s2, s10
                  srl          s0, sp, s4
269:              andi         s9, s2, -19
                  xor          s0, t5, a0
                  slti         s9, t2, 1811
                  nop
273:              bltu         gp, a0, 288f
                  ori          tp, s2, -458
                  or           gp, sp, sp
                  srli         ra, s10, 31
                  blt          s0, s1, 297f
                  blt          gp, gp, 283f
                  nop
                  bne          s2, s4, 281f
281:              andi         sp, tp, -704
                  or           a7, t2, a5
283:              slt          t6, s1, s7
                  sltu         s1, sp, gp
                  bltu         a7, s4, 295f
                  slti         a2, a3, 29
                  slli         s10, a2, 17
288:              bne          t0, tp, 300f
                  auipc        s4, 557534
                  bltu         s8, s6, 298f
                  srli         s5, a2, 21
                  srai         a5, zero, 27
                  srli         a0, a1, 20
                  bltu         s0, s5, 301f
295:              slt          s5, a0, a4
                  slti         s4, t2, 1784
297:              nop
298:              bltu         a1, s0, 299f
299:              beq          t2, s10, 309f
300:              andi         s9, a5, 704
301:              or           s4, a1, t6
                  add          s5, zero, a1
                  sltu         t0, a3, t4
                  bne          s10, s4, 307f
                  sub          s9, s4, s9
                  slti         a2, s1, 1434
307:              andi         s7, s9, 906
                  slt          a5, a3, a2
309:              bltu         s8, t2, 314f
                  srli         sp, s1, 14
                  beq          s0, t5, 327f
                  sltiu        s10, s8, -1426
                  addi         t0, t5, -2010
314:              srli         gp, a6, 4
                  lui          s11, 558101
                  lui          s6, 706605
                  sltu         s4, s10, zero
                  sltu         sp, s4, ra
                  ori          a6, t5, -83
                  blt          t1, a4, 323f
                  slt          a4, s0, a2
                  or           zero, a1, s2
323:              bge          t5, gp, 328f
                  sltu         s8, t5, t2
                  slli         a6, s5, 29
                  addi         s5, s2, 1127
327:              beq          tp, a3, 344f
328:              bgeu         a7, s11, 333f
                  bne          t6, s3, 345f
                  xori         t5, s11, -727
                  xori         s4, s9, 1543
                  sltu         a7, a2, s4
333:              bge          s9, zero, 336f
                  andi         s6, a6, -132
                  sra          gp, tp, gp
336:              add          t5, s3, s6
                  blt          ra, t0, 341f
                  and          s5, s7, a1
                  sub          a6, a2, s10
                  lui          a2, 93730
341:              or           a5, s3, a0
                  addi         s1, t1, -84
                  bltu         t5, s3, 351f
344:              auipc        gp, 301771
345:              bne          t5, s5, 353f
                  slt          s8, gp, s9
                  andi         a7, s9, 1598
                  slt          s9, a3, s4
                  srai         s1, t5, 25
                  srai         t1, t4, 28
351:              nop
                  bne          s11, tp, 359f
353:              sltu         s8, a7, s11
                  or           a4, s3, s0
                  sltiu        s5, tp, -632
                  blt          t6, s3, 369f
                  srl          s11, a1, t5
                  slli         t2, s1, 26
359:              sra          s11, s1, s11
                  bne          s10, gp, 364f
                  beq          s5, a0, 362f
362:              sltiu        s1, s10, -1383
                  nop
364:              slt          s0, s0, s3
                  srl          a4, t6, t4
                  andi         s4, sp, -1804
                  sra          gp, a1, s0
                  xori         s5, t2, -4
369:              bge          t5, t4, 372f
                  ori          s7, t5, 510
                  beq          gp, sp, 387f
372:              sltu         a0, t1, a7
                  sltu         s6, a5, a3
                  srai         s8, a6, 6
                  sll          s3, t4, s2
                  srli         a4, tp, 17
                  andi         a6, a5, -273
                  addi         tp, s4, 882
                  sltu         t6, ra, t5
                  and          ra, ra, s0
                  slli         s6, s5, 24
                  nop
                  bge          sp, a2, 391f
                  slti         a6, s8, -1697
                  bltu         a3, a4, 390f
                  bgeu         gp, a0, 403f
387:              srli         s8, s3, 27
                  auipc        tp, 626672
                  sltu         s10, tp, sp
390:              andi         s1, s8, 1350
391:              bltu         a6, s5, 396f
                  and          s3, s2, a3
                  add          s0, s6, sp
                  slti         s7, s2, -506
                  and          a6, a3, a7
396:              nop
                  sra          tp, a5, s8
                  and          s10, t4, a0
                  beq          a0, a7, 415f
                  srl          s7, s5, s5
                  bne          s9, s10, 413f
                  and          s10, gp, t4
403:              bne          t1, t1, 406f
                  andi         s6, s5, -1188
                  xor          s2, t6, a4
406:              or           t5, tp, a4
                  addi         a0, s1, 295
                  xor          s8, s11, s11
                  bltu         ra, s8, 412f
                  lui          a6, 261091
                  bge          ra, s1, 422f
412:              lui          sp, 745009
413:              ori          s7, zero, 1214
                  slti         gp, s9, 7
415:              sltu         s1, t6, a7
                  xor          s11, a6, a2
                  add          s2, ra, t3
                  sub          a5, t2, t3
                  andi         t6, a5, 851
                  srl          a5, a2, s3
                  srl          ra, a6, a1
422:              slli         a2, s8, 15
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bge          a4, t2, sub_2_stack_p
sub_2_stack_p:    addi         a1, a1, -44
                  ori          t5, sp, 1961
                  nop
                  sw           ra, 4(a1)
                  srli         s9, a6, 20
                  andi         s4, zero, -59
                  slli         t2, a6, 0
                  srl          s10, s1, t4
sub_2_8:          jal          ra, 9f
0:                jal          ra, 3f
1:                jal          gp, 10f
2:                jal          t1, 12f
3:                jal          t1, 8f
4:                jal          t1, 2b
5:                jal          sp, 15f
6:                jal          ra, 1b
7:                jal          ra, 14f
8:                jal          t1, 5b
9:                jal          ra, 7b
10:               jal          ra, 4b
11:               jal          t1, 6b
12:               jal          s0, 13f
13:               jal          ra, 0b
14:               jal          a6, 11b
15:               srl          s9, s11, s11
sub_2_12:         jal          ra, 1f
0:                jal          ra, 16f
1:                jal          s6, 11f
2:                jal          t1, 9f
3:                jal          ra, 5f
4:                jal          ra, 17f
5:                jal          t1, 13f
6:                jal          ra, 7f
7:                jal          ra, 0b
8:                jal          ra, 6b
9:                jal          t1, 8b
10:               jal          t0, 2b
11:               jal          s11, 10b
12:               jal          t1, 15f
13:               jal          ra, 14f
14:               jal          t1, 4b
15:               jal          t6, 3b
16:               jal          t1, 12b
17:               add          s5, s11, t3
sub_2_4:          jal          ra, 10f
0:                jal          s10, 27f
1:                jal          gp, 6f
2:                jal          ra, 7f
3:                jal          s0, 13f
4:                jal          s8, 2b
5:                jal          a5, 26f
6:                jal          ra, 20f
7:                jal          t0, 18f
8:                jal          ra, 14f
9:                jal          ra, 3b
10:               jal          ra, 25f
11:               jal          sp, 4b
12:               jal          s6, 23f
13:               jal          s0, 8b
14:               jal          t1, 21f
15:               jal          ra, 24f
16:               jal          a5, 11b
17:               jal          t1, 0b
18:               jal          a3, 22f
19:               jal          ra, 9b
20:               jal          t1, 12b
21:               jal          ra, 1b
22:               jal          ra, 15b
23:               jal          ra, 17b
24:               jal          ra, 19b
25:               jal          ra, 5b
26:               jal          ra, 16b
27:               sltiu        a6, ra, 1260
sub_2_10:         jal          ra, 9f
0:                jal          ra, 5f
1:                jal          sp, 2f
2:                jal          ra, 10f
3:                jal          ra, 7f
4:                jal          ra, 6f
5:                jal          ra, 4b
6:                jal          ra, 11f
7:                jal          t1, 1b
8:                jal          ra, 3b
9:                jal          t0, 8b
10:               jal          ra, 0b
11:               or           a0, a7, s3
sub_2_11:         jal          ra, 17f
0:                jal          ra, 16f
1:                jal          s1, 18f
2:                jal          ra, 5f
3:                jal          tp, 13f
4:                jal          ra, 15f
5:                jal          t0, 1b
6:                jal          ra, 3b
7:                jal          ra, 11f
8:                jal          s2, 9f
9:                jal          s7, 2b
10:               jal          ra, 0b
11:               jal          a6, 4b
12:               jal          tp, 14f
13:               jal          ra, 10b
14:               jal          ra, 6b
15:               jal          t1, 8b
16:               jal          t1, 7b
17:               jal          ra, 12b
18:               slti         t1, tp, -6
sub_2_9:          jal          ra, 14f
0:                jal          t1, 13f
1:                jal          ra, 7f
2:                jal          ra, 15f
3:                jal          t1, 5f
4:                jal          ra, 0b
5:                jal          ra, 1b
6:                jal          a6, 18f
7:                jal          ra, 17f
8:                jal          ra, 3b
9:                jal          t1, 16f
10:               jal          ra, 6b
11:               jal          s0, 9b
12:               jal          s0, 2b
13:               jal          t1, 12b
14:               jal          t1, 8b
15:               jal          sp, 11b
16:               jal          s10, 10b
17:               jal          ra, 4b
18:               srli         a7, t5, 22
sub_2_0:          jal          ra, 1f
0:                jal          s1, 7f
1:                jal          ra, 2f
2:                jal          t0, 19f
3:                jal          ra, 18f
4:                jal          t1, 0b
5:                jal          s9, 4b
6:                jal          ra, 22f
7:                jal          a0, 12f
8:                jal          a3, 3b
9:                jal          ra, 23f
10:               jal          t2, 9b
11:               jal          ra, 14f
12:               jal          ra, 11b
13:               jal          t1, 10b
14:               jal          ra, 21f
15:               jal          ra, 16f
16:               jal          ra, 6b
17:               jal          ra, 24f
18:               jal          ra, 5b
19:               jal          t1, 15b
20:               jal          ra, 8b
21:               jal          t1, 17b
22:               jal          ra, 20b
23:               jal          t1, 25f
24:               jal          t1, 13b
25:               sltu         t5, s8, t1
sub_2_3:          jal          ra, 0f
0:                jal          s2, 12f
1:                jal          t1, 17f
2:                jal          ra, 4f
3:                jal          a2, 21f
4:                jal          t1, 10f
5:                jal          ra, 20f
6:                jal          t1, 2b
7:                jal          ra, 16f
8:                jal          t0, 7b
9:                jal          a6, 6b
10:               jal          s3, 14f
11:               jal          s7, 18f
12:               jal          t1, 9b
13:               jal          s1, 11b
14:               jal          gp, 5b
15:               jal          t1, 13b
16:               jal          ra, 19f
17:               jal          ra, 22f
18:               jal          a3, 8b
19:               jal          s1, 3b
20:               jal          t0, 15b
21:               jal          t1, 1b
22:               slli         a0, t5, 0
sub_2_5:          jal          ra, 18f
0:                jal          t0, 9f
1:                jal          ra, 2f
2:                jal          gp, 17f
3:                jal          t5, 23f
4:                jal          ra, 25f
5:                jal          t1, 1b
6:                jal          ra, 29f
7:                jal          ra, 14f
8:                jal          ra, 10f
9:                jal          ra, 24f
10:               jal          ra, 26f
11:               jal          s4, 7b
12:               jal          ra, 11b
13:               jal          t1, 8b
14:               jal          sp, 6b
15:               jal          ra, 13b
16:               jal          ra, 22f
17:               jal          ra, 21f
18:               jal          sp, 20f
19:               jal          tp, 3b
20:               jal          ra, 15b
21:               jal          ra, 27f
22:               jal          s1, 0b
23:               jal          ra, 28f
24:               jal          ra, 12b
25:               jal          t1, 5b
26:               jal          s0, 4b
27:               jal          ra, 19b
28:               jal          t1, 16b
29:               auipc        t0, 938409
sub_2_1:          jal          ra, 8f
0:                jal          a4, 23f
1:                jal          gp, 17f
2:                jal          t1, 22f
3:                jal          t1, 4f
4:                jal          ra, 11f
5:                jal          tp, 16f
6:                jal          a4, 12f
7:                jal          t1, 24f
8:                jal          ra, 1b
9:                jal          t5, 20f
10:               jal          s10, 26f
11:               jal          ra, 6b
12:               jal          ra, 15f
13:               jal          t1, 9b
14:               jal          ra, 19f
15:               jal          ra, 13b
16:               jal          ra, 18f
17:               jal          ra, 5b
18:               jal          t1, 7b
19:               jal          ra, 21f
20:               jal          t1, 14b
21:               jal          t1, 25f
22:               jal          t0, 3b
23:               jal          s8, 10b
24:               jal          tp, 2b
25:               jal          sp, 0b
26:               lui          s8, 207600
                  bltu         s5, t3, 15f
                  bltu         s0, a2, 6f
                  sltu         s5, a0, a0
                  sll          a0, s10, sp
                  slti         tp, t2, 2013
                  lui          s5, 1032938
6:                slt          zero, t6, t2
                  addi         tp, t4, 740
                  andi         s0, sp, 2028
                  blt          a1, a6, 19f
                  lui          s11, 1015936
                  srl          s8, a0, t1
                  auipc        t0, 182313
                  nop
                  srai         s0, gp, 21
15:               xor          a4, s5, a7
                  addi         a0, s0, 188
                  blt          a0, s9, 33f
                  sra          s3, t2, zero
19:               sltu         gp, s11, gp
                  bgeu         s7, s0, 23f
                  auipc        s7, 543179
                  auipc        s6, 47777
23:               bltu         a3, ra, 36f
                  beq          s8, s0, 27f
                  sub          s8, s3, s10
                  sll          t0, s11, t3
27:               srai         gp, gp, 6
                  blt          s2, t2, 32f
                  slti         t2, a1, 1957
                  srai         s11, s6, 27
                  slli         a2, s3, 13
32:               addi         t2, s1, -115
33:               xor          s2, s2, a1
                  bgeu         s4, zero, 36f
                  slt          t2, t0, a0
36:               sll          t1, tp, s2
                  slti         t1, s3, 1445
                  andi         s5, s4, 1713
                  xor          t1, a6, sp
                  auipc        a6, 359974
                  sra          s4, s8, a0
                  or           s5, s11, s1
                  sra          s7, s10, a0
                  slli         t1, a2, 11
                  xor          a6, a3, ra
                  auipc        a2, 451542
                  sll          zero, t6, s3
                  sltiu        a2, a7, -768
                  auipc        t2, 423835
                  beq          a3, t5, 67f
                  ori          a5, s4, -1128
                  add          s2, a6, s11
                  bltu         t1, tp, 59f
                  addi         s6, s0, -561
                  slt          s10, a5, a3
                  nop
                  nop
                  sltiu        gp, zero, 442
59:               addi         s2, a3, -591
                  and          s7, t5, ra
                  beq          ra, a4, 71f
                  bgeu         s7, s8, 70f
                  bge          s10, s5, 72f
                  slti         s6, zero, 1781
                  bgeu         a0, s5, 74f
                  slti         gp, s2, -954
67:               sltu         tp, s5, gp
                  slti         a3, t4, 943
                  and          s6, a2, t2
70:               or           tp, a1, gp
71:               sll          zero, gp, t1
72:               nop
                  slt          a3, s6, a5
74:               bltu         a0, s0, 93f
                  ori          gp, s11, -82
                  and          s10, tp, a6
                  auipc        s11, 357006
                  blt          t3, a6, 84f
                  nop
                  andi         a6, s7, 1394
                  bltu         sp, s10, 95f
                  slli         t5, s11, 2
                  sll          s0, t5, s3
84:               sra          a0, tp, s10
                  xori         s0, s8, 96
                  nop
                  slli         gp, a5, 12
                  add          s5, t3, ra
                  slli         a3, s8, 15
                  slli         s3, a1, 16
                  nop
                  or           a5, s6, zero
93:               sltu         ra, t6, a5
                  slti         t2, t1, 1092
95:               srl          gp, s3, a4
                  xori         s10, s3, 294
                  addi         tp, s7, 1954
                  slli         t5, ra, 21
                  blt          t4, ra, 105f
                  andi         s7, t3, 234
                  blt          t5, a5, 107f
                  srli         ra, s7, 23
                  beq          t3, a4, 119f
                  srai         t2, a2, 5
105:              or           a5, a7, s10
                  addi         t6, s10, 998
107:              lui          t0, 274093
                  ori          a5, a0, -1915
                  or           s4, sp, a4
                  beq          zero, a0, 117f
                  or           t2, s8, s8
                  addi         s3, gp, 2041
                  lui          t5, 246671
                  andi         s11, tp, 369
                  bltu         s4, ra, 128f
                  sub          s5, s4, gp
117:              ori          s3, ra, -880
                  and          s9, t6, t6
119:              slt          s2, ra, s6
                  xori         ra, a2, -408
                  andi         s4, a1, 1181
                  ori          a6, s1, 1925
                  slti         s1, zero, 1389
                  bge          a2, a7, 125f
125:              blt          t4, t4, 133f
                  sra          a0, tp, t3
                  bne          s1, t5, 133f
128:              sra          a7, t4, a7
                  andi         a7, sp, -897
                  lui          a4, 714014
                  bgeu         t2, s2, 150f
sub_2_7:          jal          ra, 1f
0:                jal          tp, 5f
1:                jal          a3, 0b
2:                jal          t1, 11f
3:                jal          ra, 7f
4:                jal          gp, 16f
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          t2, 4b
8:                jal          ra, 12f
9:                jal          ra, 15f
10:               jal          s1, 14f
11:               jal          a7, 9b
12:               jal          ra, 2b
13:               jal          s11, 6b
14:               jal          ra, 13b
15:               jal          ra, 3b
16:               addi         a3, s6, -1889
                  sra          s0, a1, s8
133:              sll          a6, a5, ra
                  nop
                  bgeu         s7, a1, 141f
                  or           t1, s10, zero
                  nop
                  and          s3, zero, s1
                  xor          a2, s0, s2
                  bge          zero, ra, 149f
141:              bne          t2, zero, 145f
                  slli         s3, ra, 19
                  lui          s5, 369210
                  bne          s3, t5, 154f
145:              sub          t0, s9, s2
                  slti         t5, zero, -1758
                  blt          s2, a7, 148f
148:              bne          sp, sp, 161f
149:              srl          a6, t0, a7
150:              and          a4, s9, s5
                  or           s5, t5, a2
                  ori          s0, s7, 2007
                  sltu         a5, a5, zero
154:              blt          t2, a2, 158f
                  sltu         a2, s10, a4
                  sltu         a7, a4, t2
                  xori         gp, t6, -973
158:              slt          tp, ra, s7
                  slt          tp, s11, s5
                  blt          s2, s0, 169f
161:              bge          a4, sp, 171f
                  bge          t4, a2, 178f
                  srai         s2, a3, 20
                  sltu         t1, t5, ra
                  and          s2, s7, s5
                  bgeu         s5, a2, 169f
                  bne          s4, s9, 184f
                  sll          t6, t1, t4
169:              sltiu        s10, t6, 1772
                  sra          a2, s8, sp
171:              auipc        s1, 367116
                  slti         tp, a4, 1447
                  andi         sp, zero, 1770
                  sltu         a3, t2, gp
                  srli         s9, sp, 20
                  sltu         t1, t1, a2
                  auipc        a7, 1030918
178:              slli         s9, s0, 11
                  bne          s6, a5, 188f
                  add          a2, a6, t4
                  lui          a5, 1024469
                  beq          t6, t3, 188f
                  xori         s4, s9, -243
184:              sltu         s10, t2, s6
                  add          a3, s8, s9
                  ori          t6, s10, -1727
                  xor          a3, s9, a3
188:              bgeu         s10, a7, 195f
                  sll          a6, s0, gp
                  slt          a2, sp, t1
                  or           s4, a6, s4
                  blt          t3, s8, 198f
                  nop
                  slti         t1, s6, 157
195:              nop
                  and          t5, s11, t0
                  bltu         t5, a7, 216f
198:              bgeu         t4, a3, 204f
                  and          s8, t5, t6
                  xori         gp, t1, 1420
                  sltu         s4, tp, t0
                  slt          a2, a6, gp
                  sub          a5, tp, s8
204:              sll          a7, a6, gp
                  sll          t0, t6, s2
                  blt          t2, s7, 225f
                  beq          sp, gp, 215f
                  slti         a5, sp, -1761
                  bltu         s6, s6, 214f
                  or           t1, t2, tp
                  andi         t6, s2, -369
                  ori          t5, s5, -810
                  ori          s8, gp, -1605
214:              slli         s1, s10, 30
215:              sll          s0, s2, tp
216:              srai         a5, tp, 23
                  sra          s1, t5, s6
                  nop
                  addi         a3, s1, -1290
                  slli         s7, t4, 20
                  slli         a5, s11, 17
                  ori          t2, a3, -1884
                  slli         s6, s4, 28
                  and          s9, a5, zero
225:              slt          t0, s6, a6
                  addi         s10, a5, 569
                  bne          a1, a3, 233f
                  lui          s10, 737952
                  slt          a3, s1, sp
                  or           a2, s7, s0
                  blt          zero, a2, 239f
                  sub          s1, s9, s2
233:              slt          a7, s2, a1
                  sll          s7, s6, s11
                  slt          s2, s7, s9
                  slt          s11, s10, a4
                  bltu         a1, s5, 243f
                  andi         s9, s10, -690
239:              bge          a4, t0, 255f
                  andi         s9, tp, 1628
                  and          s6, s0, ra
                  sra          a5, a1, a3
243:              ori          a5, s1, -594
                  sltu         s7, t2, t3
                  slti         zero, t3, -491
                  bge          s10, s9, 255f
                  sll          s2, sp, a6
                  andi         t6, t1, -671
                  sub          a3, a7, s10
                  sll          s9, gp, t5
sub_2_6:          jal          ra, 26f
0:                jal          ra, 19f
1:                jal          ra, 14f
2:                jal          s11, 17f
3:                jal          a4, 6f
4:                jal          t1, 3b
5:                jal          ra, 7f
6:                jal          ra, 11f
7:                jal          t0, 1b
8:                jal          ra, 15f
9:                jal          s1, 22f
10:               jal          s1, 9b
11:               jal          ra, 2b
12:               jal          t1, 5b
13:               jal          ra, 16f
14:               jal          a4, 27f
15:               jal          ra, 21f
16:               jal          ra, 12b
17:               jal          ra, 10b
18:               jal          ra, 4b
19:               jal          t1, 24f
20:               jal          ra, 18b
21:               jal          ra, 20b
22:               jal          tp, 13b
23:               jal          ra, 25f
24:               jal          t1, 23b
25:               jal          ra, 8b
26:               jal          tp, 0b
27:               slti         s1, s0, -1237
                  andi         s11, sp, -1599
                  slti         s6, a5, -1838
                  srli         tp, s5, 10
                  lui          a6, 760164
255:              or           sp, s1, zero
                  bne          s2, a7, 271f
                  add          s3, t3, s6
                  auipc        tp, 705887
                  srl          s11, t5, t6
                  add          a6, tp, t4
                  sub          a2, t2, s6
                  srai         s11, s5, 5
                  auipc        a6, 95164
                  srl          s11, s10, s0
                  srai         s0, a6, 13
                  sltiu        s8, s3, 1817
                  xori         s3, s7, 110
                  srli         t6, s6, 27
                  bge          t2, a5, 271f
                  srl          ra, a5, a2
271:              bgeu         ra, t3, 277f
                  bltu         gp, a2, 285f
                  xor          s10, a0, s1
                  srai         s8, t2, 1
                  srl          s1, gp, t2
                  bne          s2, gp, 279f
277:              bgeu         s3, a2, 291f
                  sll          s5, s7, zero
279:              lui          s11, 668151
                  addi         a3, t1, 2041
                  or           t5, t6, a7
                  or           s1, s9, t0
                  andi         tp, t3, -234
                  sub          s10, t5, a0
285:              or           ra, t5, t1
                  lui          s8, 29176
                  srli         s10, s8, 1
                  xor          s3, s7, t2
                  xori         s4, t6, -221
                  andi         s4, t0, -630
291:              sub          a2, a6, s1
                  blt          a1, s9, 296f
                  slli         s5, a0, 25
                  xor          s4, s0, s2
                  bltu         a0, s1, 304f
296:              beq          a3, tp, 304f
                  lui          t6, 356256
                  add          s6, ra, a2
                  add          a3, ra, a2
                  bge          t4, t3, 301f
301:              add          s7, gp, t1
                  or           s11, t2, s9
                  sltiu        sp, gp, 1259
304:              srl          s7, t3, t4
                  srai         ra, t1, 3
                  bne          gp, a5, 321f
                  bge          s11, t5, 320f
                  andi         t0, sp, 1643
                  andi         a6, a2, 944
                  slli         s7, zero, 28
                  sub          a6, s0, a3
                  sltiu        a3, s1, -1902
                  add          a5, a5, a4
                  sltiu        a5, t0, -1230
                  srai         a7, t0, 20
                  lui          a5, 1001502
                  sltiu        a5, s5, -987
                  srli         a3, s3, 24
                  lui          s0, 803303
320:              xori         ra, s1, -1018
321:              bltu         a7, t1, 325f
                  slti         a4, s2, 642
                  auipc        s3, 878492
                  and          a5, s2, s11
325:              slli         s5, s11, 20
                  beq          a0, s7, 331f
                  xor          s5, ra, s2
                  bne          t2, s8, 344f
                  beq          s7, s4, 335f
                  andi         s3, s9, -1660
331:              sub          s9, t4, s3
                  sub          s1, gp, a6
sub_2_2:          jal          ra, 5f
0:                jal          ra, 6f
1:                jal          s9, 24f
2:                jal          ra, 12f
3:                jal          ra, 9f
4:                jal          s5, 17f
5:                jal          ra, 10f
6:                jal          ra, 1b
7:                jal          t1, 23f
8:                jal          ra, 18f
9:                jal          ra, 19f
10:               jal          ra, 2b
11:               jal          a6, 22f
12:               jal          t1, 16f
13:               jal          t1, 15f
14:               jal          ra, 8b
15:               jal          ra, 11b
16:               jal          ra, 7b
17:               jal          s0, 21f
18:               jal          ra, 13b
19:               jal          ra, 0b
20:               jal          ra, 4b
21:               jal          s8, 14b
22:               jal          ra, 3b
23:               jal          ra, 20b
24:               xori         a2, t5, 1388
                  beq          a5, a2, 337f
                  add          t5, t1, a3
335:              add          a6, a5, zero
                  bltu         s0, s3, 345f
337:              ori          sp, t2, 697
                  lui          s4, 666373
                  srai         s5, t6, 27
                  slli         a6, s3, 27
                  xori         tp, t0, 1375
                  bgeu         gp, s0, 348f
                  blt          s8, t4, 362f
344:              ori          s7, a5, 552
345:              addi         a5, s3, -686
                  auipc        t2, 51514
                  sra          a7, s0, t6
348:              sra          s2, s2, s0
                  add          zero, s9, s5
                  sub          s6, s0, s4
                  bltu         tp, a6, 357f
                  bge          t2, s0, 358f
                  bgeu         ra, a3, 361f
                  srl          s8, a5, s5
                  xori         s10, ra, -1077
                  xor          s2, ra, t3
357:              xor          tp, zero, s4
358:              sltiu        zero, sp, -2048
                  add          a7, s1, s3
                  beq          tp, t0, 370f
361:              bltu         s8, a6, 364f
362:              blt          s3, s3, 364f
                  sub          t2, a3, t2
364:              xor          a6, gp, a2
                  bltu         sp, s9, 382f
                  beq          t6, s11, 376f
                  sltu         a0, t6, t6
                  sll          a7, t4, t5
                  bgeu         s0, s4, 375f
370:              sub          s10, s6, s5
                  ori          a6, s11, -1652
                  xor          a3, s0, s8
                  sub          sp, s4, t5
                  or           s5, tp, t5
375:              sll          s9, a3, a0
376:              add          s6, a2, zero
                  sub          sp, zero, t4
                  beq          a2, t5, 392f
                  sll          s4, s7, a5
                  xori         s6, s11, 833
                  sltu         s0, s6, t5
382:              srli         s3, a0, 20
                  lui          a6, 203036
                  sub          sp, t2, s6
                  srli         a2, s8, 31
                  nop
                  lui          s11, 985518
                  bgeu         gp, s7, 397f
                  srli         zero, s3, 1
                  bltu         t5, a7, 397f
                  sub          s8, s0, s8
392:              nop
                  bge          a7, a0, 406f
                  bltu         t4, s0, 410f
                  bge          t3, sp, 401f
                  nop
397:              srli         a2, t2, 22
                  slt          a5, s0, sp
                  add          s1, a6, a1
                  andi         zero, a3, 1309
401:              bltu         s3, zero, 404f
                  or           s7, s1, s4
                  addi         s4, s11, 1674
404:              bltu         ra, t2, 423f
                  slti         s5, s9, -286
406:              andi         s3, a0, 883
                  or           a4, a2, a1
                  beq          s3, t5, 414f
                  sra          s1, a6, gp
410:              nop
                  lui          s3, 255604
                  srli         s3, tp, 5
                  srli         s6, s2, 30
414:              ori          gp, gp, -1932
                  srai         t0, s3, 26
                  bne          a1, s2, 422f
                  sub          a6, ra, s2
                  bltu         a3, s9, 437f
                  sltu         a3, gp, s7
                  srl          zero, s7, s7
                  xori         t2, a3, 1815
422:              and          t0, tp, s1
423:              blt          t4, t6, 426f
                  ori          s9, s5, -655
                  srl          s9, gp, s4
426:              and          s6, s5, a4
                  slt          ra, a3, ra
                  sltu         t6, sp, zero
                  beq          t0, s8, 438f
                  bgeu         s0, s3, 440f
                  ori          s3, a5, 1725
                  srl          gp, a7, a3
                  sltiu        t1, ra, 831
                  slt          s2, zero, s8
                  slti         s8, t1, -321
                  add          t2, s11, s3
437:              xori         s8, s0, -89
438:              sra          a7, a4, s6
                  auipc        t2, 546049
440:              xor          a0, a2, s0
                  bge          t2, s2, 450f
                  sub          sp, t3, zero
                  bne          t3, t5, 446f
                  srai         s8, sp, 1
                  sltiu        s11, a4, 1308
446:              slli         a7, s1, 31
                  slt          s3, t4, a3
                  blt          s9, s1, 452f
                  sltiu        zero, t5, -596
450:              ori          s11, s8, -1351
                  bge          s6, s7, 470f
452:              auipc        s6, 475399
                  auipc        s2, 529430
                  or           a2, ra, sp
                  bltu         s3, t5, 459f
                  beq          t3, s5, 462f
                  addi         t1, s6, -906
                  lui          a6, 802218
459:              auipc        a0, 606771
                  ori          a0, t4, 1831
                  sltu         t5, a2, s7
462:              or           s5, a7, t1
                  or           s6, s0, s6
                  addi         s8, t2, -1348
                  sub          s0, t1, t1
                  bltu         a6, s4, 480f
                  addi         a2, s5, -908
                  slt          s10, a6, a0
                  sll          a5, s11, sp
470:              xor          s10, a5, a0
                  or           sp, a6, t5
                  xor          s11, s5, t5
                  srl          s8, zero, sp
                  sltu         s1, t2, s5
                  xor          s10, a0, t0
                  bltu         s7, a3, 491f
                  slt          a3, t5, s8
                  bne          a2, gp, 486f
                  slli         t0, zero, 19
480:              xori         ra, s3, -1031
                  ori          s2, tp, -1547
                  lui          tp, 778763
                  sltu         a2, tp, t0
                  sub          a4, t3, tp
                  lui          a3, 776677
486:              xor          s11, s10, sp
                  slti         a3, t6, 1139
                  blt          a2, t0, 505f
                  bge          t3, a5, 495f
                  sltu         s1, s1, gp
491:              addi         sp, s2, 46
                  bgeu         a0, a0, 498f
                  slti         s9, tp, -1965
                  andi         t5, a1, -1313
495:              srli         s11, tp, 31
                  bge          s5, s8, 505f
                  xori         a3, a0, 367
498:              ori          s5, t0, 426
                  addi         s4, t6, -1157
                  srli         s3, gp, 21
                  or           ra, a2, s8
                  beq          s0, a2, 510f
                  sltiu        s11, s9, -54
                  slt          s4, a0, s6
505:              or           t1, tp, t6
                  sltiu        s3, zero, 118
                  slti         ra, s5, -265
                  xor          s11, s4, s10
                  xor          a7, s8, a7
510:              add          t5, s8, s10
                  addi         a7, tp, 1711
                  sub          s3, s9, s11
                  srai         a0, s5, 0
                  slli         ra, t2, 14
                  sltiu        sp, s4, 240
                  srai         a4, s10, 8
                  and          a3, a4, s6
                  nop
                  xori         a5, s11, 1413
                  srai         t1, s4, 0
                  andi         s6, s6, -376
                  andi         sp, tp, 1512
                  addi         t5, a6, -1281
                  nop
                  bltu         ra, s0, 532f
                  lui          s5, 34605
                  and          gp, sp, a0
                  slti         s0, ra, -1957
                  sltiu        sp, s9, 533
                  auipc        t6, 234349
                  add          a2, t2, a2
532:              nop
                  sra          s0, s5, a1
                  ori          gp, t5, 1165
                  auipc        t5, 116846
                  beq          t3, s8, 541f
                  addi         ra, a4, 844
                  slli         s10, a7, 3
                  sra          s6, s6, s1
                  bge          s0, a4, 542f
541:              addi         t0, t1, -1551
542:              srl          t6, t4, s6
                  bne          a2, s5, 544f
544:              srli         s3, s1, 9
                  bgeu         s6, a6, 561f
                  or           zero, s0, t3
                  sltu         s6, t4, s0
                  sra          a3, a6, zero
                  and          s8, t0, tp
                  sltiu        a7, s10, -1606
                  nop
                  slli         a6, s0, 30
                  bgeu         t4, s0, 569f
                  bltu         t1, s0, 564f
                  addi         s7, a1, -1700
                  srl          s3, s10, s7
                  sra          s7, s11, a1
                  auipc        a5, 538983
                  bgeu         sp, s0, 565f
                  lui          gp, 709749
561:              xor          a7, s1, t4
                  slti         tp, s2, -1663
                  andi         zero, s9, 1952
564:              srl          gp, s9, s7
565:              and          t5, zero, s4
                  ori          a4, t4, 676
                  sll          s11, a3, t1
                  blt          t1, t0, 581f
569:              srl          zero, ra, a7
                  lui          t1, 949321
                  or           s6, a6, zero
                  sub          sp, ra, s11
                  xori         zero, t0, -838
                  bge          s7, ra, 587f
                  nop
                  sra          a7, t3, zero
                  addi         s3, t3, 1002
                  andi         s5, s1, 442
                  lui          a3, 532400
                  bgeu         s3, s5, 586f
581:              sub          gp, s6, t5
                  slt          a5, s2, t2
                  bge          s5, ra, 596f
                  xor          a4, s2, s1
                  lui          s7, 342441
586:              blt          s9, a1, 595f
587:              bltu         a7, t1, 597f
                  nop
                  xor          t1, s9, t6
                  bge          s5, tp, 596f
                  sub          zero, s1, a4
                  sra          sp, t5, ra
                  srli         s8, t3, 6
                  bne          a3, zero, 603f
595:              bge          a1, zero, 597f
596:              srli         s4, t4, 6
597:              or           s2, ra, a4
                  xori         ra, a1, 452
                  and          s5, t0, s0
                  andi         a2, s5, 1009
                  sll          s2, t2, s10
                  sltiu        ra, ra, -1974
603:              blt          s5, t5, 622f
                  xori         s8, a3, 1709
                  slli         a0, t4, 11
                  bgeu         a3, a0, 612f
                  bge          a6, t0, 611f
                  bne          s11, a4, 615f
                  slt          a3, t0, a0
                  addi         t2, a2, 1719
611:              sll          sp, a5, t1
612:              xor          t1, a2, s7
                  xor          s2, ra, s6
                  xor          s7, t2, t0
615:              srl          s8, t4, s11
                  add          s11, s3, s6
                  andi         ra, s3, 186
                  bltu         t6, s9, 634f
                  slt          s2, sp, s9
                  sltiu        s0, a6, 1190
                  sra          tp, s4, tp
622:              bne          t0, a0, 628f
                  beq          tp, s2, 642f
                  lui          ra, 236825
                  andi         s1, t4, 982
                  add          s2, ra, t4
                  addi         s10, tp, 519
628:              sra          s3, t2, a4
                  bge          t5, s2, 630f
630:              srai         a0, t4, 6
                  sltiu        s8, a7, -1474
                  auipc        s9, 459514
                  lui          s0, 1028756
634:              bgeu         t1, a5, 649f
                  slti         s6, s1, 430
                  slli         a2, s11, 7
                  addi         ra, s6, -1278
                  and          s5, t0, s3
                  sltu         s0, a0, s2
                  slt          sp, t6, a6
                  srl          s4, t6, a7
642:              slt          a6, zero, t2
                  beq          s9, zero, 648f
                  srai         s3, s10, 9
                  slti         s8, s1, 1386
                  or           s10, zero, t0
                  lui          t2, 400735
648:              slti         a2, s11, -1088
649:              beq          t4, a4, 657f
                  beq          a5, a5, 666f
                  auipc        ra, 964686
                  xor          s8, gp, t2
                  srli         zero, ra, 17
                  bgeu         s7, a4, 660f
                  srai         a6, s5, 9
                  slli         a0, ra, 15
657:              bltu         t3, sp, 666f
                  slli         s0, t1, 9
                  bne          t1, a4, 676f
660:              sra          a4, s11, a7
                  bge          a4, a6, 671f
                  lui          t5, 319357
                  add          s5, a1, s4
                  nop
                  sltu         a4, t3, s0
666:              and          t5, ra, s7
                  xori         t5, gp, 1688
                  and          s4, a6, zero
                  nop
                  slti         s4, zero, -1239
671:              sra          s11, a5, a0
                  beq          s11, s10, 686f
                  add          s6, s8, s9
                  sub          s0, a5, sp
                  slt          a0, t2, t1
676:              srl          s1, t1, a7
                  bne          s3, t3, 680f
                  addi         a2, a3, -1541
                  sub          s6, s4, a1
680:              sltu         s7, a1, s1
                  srl          s4, ra, a4
                  andi         s1, s10, -1424
                  xori         gp, ra, -189
                  slli         ra, a7, 27
                  auipc        a0, 113930
sub_2_13:         jal          ra, 5f
0:                jal          ra, 1f
1:                jal          ra, 2f
2:                jal          ra, 14f
3:                jal          ra, 10f
4:                jal          t1, 15f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          a0, 8f
8:                jal          t1, 13f
9:                jal          ra, 4b
10:               jal          ra, 11f
11:               jal          ra, 12f
12:               jal          ra, 6b
13:               jal          ra, 16f
14:               jal          ra, 17f
15:               jal          ra, 18f
16:               jal          t1, 0b
17:               jal          ra, 3b
18:               ori          t2, a4, -387
686:              slli         s3, s10, 7
                  sra          s1, s11, a1
                  add          a7, s3, s5
                  sll          s2, s6, tp
                  lui          s3, 445957
                  srli         s11, gp, 13
                  ori          a5, s0, -1036
                  slli         gp, s4, 11
                  addi         tp, t4, 635
                  srli         s4, t1, 13
                  sub          a3, s4, t4
                  beq          s10, zero, 701f
                  srai         a6, a2, 15
                  beq          a2, sp, 702f
                  addi         a2, s5, 1885
701:              xor          s7, ra, t5
702:              sub          t5, s1, s7
                  sll          s6, s7, t3
                  or           s8, ra, gp
                  xor          t6, zero, s0
                  sltiu        s9, t6, 1414
                  sll          s9, ra, a4
                  bltu         t5, a6, 721f
                  beq          ra, t1, 717f
                  lui          t0, 911392
                  ori          tp, t1, 1598
                  sltu         s0, s8, t3
                  bge          gp, a4, 719f
                  slt          a5, s0, t0
                  slt          a2, a6, s5
                  or           a5, s6, sp
717:              nop
                  slli         s9, t4, 1
719:              sub          a6, a0, t6
                  sll          a4, a5, s7
721:              andi         s11, a0, 1649
                  bne          a3, a7, 728f
                  bge          a3, t0, 736f
                  bge          a6, s5, 728f
                  and          s3, s11, s10
                  slti         s4, tp, -1232
                  andi         s3, a7, 1319
728:              slli         s2, s8, 30
                  xori         s9, gp, -967
                  add          s4, a0, t0
                  add          t5, t4, a5
                  sll          s8, zero, t3
                  xor          zero, s10, tp
                  xori         s3, t6, 740
                  auipc        s11, 705908
736:              nop
                  beq          gp, a2, 738f
738:              add          a0, a6, s0
                  srl          s8, t2, a6
                  lw           ra, 4(a1)
                  sltu         a2, s0, a7
                  addi         a1, a1, 44
                  xor          s1, gp, a1
1074:             addi x18, x1, 1
1074:             jalr x18, x18, 0
sub_4:            addi         a1, a1, -48
                  sw           ra, 4(a1)
                  andi         gp, s6, -326
                  ori          t6, zero, 418
                  ori          t1, t2, -1936
                  add          tp, s10, a6
                  sltu         zero, sp, s9
                  srli         a4, a6, 29
                  srli         tp, s2, 30
                  ori          t5, t6, 461
                  and          s0, s4, ra
                  xori         gp, s1, -1472
sub_4_j6:         jal          ra, sub_5 #jump sub_4 -> sub_5
sub_4_12:         jal          ra, 12f
0:                jal          a7, 10f
1:                jal          s4, 14f
2:                jal          gp, 8f
3:                jal          a5, 13f
4:                jal          ra, 11f
5:                jal          t1, 6f
6:                jal          t5, 16f
7:                jal          ra, 2b
8:                jal          ra, 1b
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          tp, 0b
12:               jal          ra, 4b
13:               jal          t1, 15f
14:               jal          ra, 9b
15:               jal          ra, 5b
16:               sll          t1, a5, tp
sub_4_2:          jal          ra, 0f
0:                jal          s3, 24f
1:                jal          ra, 17f
2:                jal          ra, 26f
3:                jal          t1, 22f
4:                jal          s0, 15f
5:                jal          ra, 10f
6:                jal          t1, 28f
7:                jal          t1, 11f
8:                jal          gp, 27f
9:                jal          a4, 21f
10:               jal          t0, 9b
11:               jal          ra, 25f
12:               jal          ra, 2b
13:               jal          s3, 4b
14:               jal          ra, 3b
15:               jal          a2, 20f
16:               jal          t1, 18f
17:               jal          a2, 8b
18:               jal          ra, 7b
19:               jal          ra, 23f
20:               jal          t6, 6b
21:               jal          ra, 12b
22:               jal          s7, 5b
23:               jal          t1, 16b
24:               jal          t1, 14b
25:               jal          t0, 13b
26:               jal          ra, 1b
27:               jal          ra, 19b
28:               slli         tp, a3, 18
sub_4_11:         jal          ra, 8f
0:                jal          ra, 9f
1:                jal          a2, 11f
2:                jal          s9, 0b
3:                jal          ra, 6f
4:                jal          s6, 2b
5:                jal          s4, 3b
6:                jal          tp, 7f
7:                jal          t1, 1b
8:                jal          t1, 10f
9:                jal          ra, 5b
10:               jal          s1, 4b
11:               srli         a2, t2, 20
sub_4_6:          jal          ra, 9f
0:                jal          t1, 11f
1:                jal          ra, 7f
2:                jal          ra, 3f
3:                jal          s8, 15f
4:                jal          t1, 25f
5:                jal          ra, 21f
6:                jal          ra, 18f
7:                jal          t1, 19f
8:                jal          ra, 24f
9:                jal          a6, 10f
10:               jal          ra, 16f
11:               jal          s9, 14f
12:               jal          ra, 6b
13:               jal          tp, 4b
14:               jal          t1, 12b
15:               jal          ra, 20f
16:               jal          t1, 17f
17:               jal          s1, 26f
18:               jal          t0, 22f
19:               jal          t1, 5b
20:               jal          t1, 1b
21:               jal          ra, 8b
22:               jal          s4, 2b
23:               jal          ra, 27f
24:               jal          t1, 23b
25:               jal          ra, 0b
26:               jal          t1, 13b
27:               srl          s8, a7, t5
sub_4_1:          jal          ra, 17f
0:                jal          a4, 7f
1:                jal          ra, 18f
2:                jal          ra, 14f
3:                jal          t6, 9f
4:                jal          gp, 2b
5:                jal          ra, 12f
6:                jal          s3, 8f
7:                jal          ra, 15f
8:                jal          ra, 22f
9:                jal          ra, 10f
10:               jal          ra, 4b
11:               jal          s11, 13f
12:               jal          t1, 0b
13:               jal          a6, 20f
14:               jal          tp, 11b
15:               jal          a0, 1b
16:               jal          ra, 6b
17:               jal          ra, 5b
18:               jal          t1, 19f
19:               jal          ra, 3b
20:               jal          t2, 21f
21:               jal          ra, 16b
22:               nop
sub_4_4:          jal          ra, 9f
0:                jal          sp, 10f
1:                jal          ra, 4f
2:                jal          ra, 7f
3:                jal          a7, 0b
4:                jal          ra, 2b
5:                jal          a6, 8f
6:                jal          sp, 12f
7:                jal          ra, 11f
8:                jal          s3, 3b
9:                jal          ra, 5b
10:               jal          ra, 6b
11:               jal          t1, 13f
12:               jal          t1, 1b
13:               sltiu        s1, t2, 702
sub_4_3:          jal          ra, 10f
0:                jal          ra, 6f
1:                jal          tp, 15f
2:                jal          tp, 3f
3:                jal          t1, 7f
4:                jal          s3, 0b
5:                jal          ra, 12f
6:                jal          t1, 14f
7:                jal          sp, 16f
8:                jal          t1, 2b
9:                jal          ra, 8b
10:               jal          ra, 11f
11:               jal          ra, 1b
12:               jal          t1, 13f
13:               jal          t1, 4b
14:               jal          ra, 9b
15:               jal          ra, 5b
16:               sltu         t0, a1, s2
sub_4_0:          jal          ra, 6f
0:                jal          ra, 10f
1:                jal          ra, 8f
2:                jal          t1, 11f
3:                jal          tp, 4f
4:                jal          a6, 2b
5:                jal          ra, 13f
6:                jal          t0, 3b
7:                jal          ra, 0b
8:                jal          a7, 5b
9:                jal          t1, 12f
10:               jal          s4, 1b
11:               jal          tp, 9b
12:               jal          gp, 7b
13:               nop
sub_4_7:          jal          ra, 8f
0:                jal          ra, 13f
1:                jal          s5, 5f
2:                jal          t1, 7f
3:                jal          gp, 4f
4:                jal          ra, 1b
5:                jal          t6, 6f
6:                jal          t0, 14f
7:                jal          ra, 3b
8:                jal          s5, 2b
9:                jal          ra, 0b
10:               jal          tp, 15f
11:               jal          ra, 9b
12:               jal          t2, 10b
13:               jal          ra, 12b
14:               jal          t1, 11b
15:               slti         s11, t0, 392
sub_4_9:          jal          ra, 0f
0:                jal          ra, 1f
1:                jal          t1, 10f
2:                jal          s7, 11f
3:                jal          ra, 9f
4:                jal          ra, 6f
5:                jal          ra, 8f
6:                jal          ra, 13f
7:                jal          t1, 12f
8:                jal          t1, 3b
9:                jal          t1, 14f
10:               jal          ra, 2b
11:               jal          ra, 4b
12:               jal          gp, 5b
13:               jal          t1, 7b
14:               nop
sub_4_14:         jal          ra, 16f
0:                jal          ra, 18f
1:                jal          ra, 4f
2:                jal          ra, 20f
3:                jal          t6, 15f
4:                jal          ra, 0b
5:                jal          ra, 11f
6:                jal          s11, 19f
7:                jal          ra, 5b
8:                jal          ra, 3b
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          s4, 1b
12:               jal          ra, 17f
13:               jal          t1, 21f
14:               jal          ra, 6b
15:               jal          ra, 10b
16:               jal          ra, 9b
17:               jal          ra, 2b
18:               jal          ra, 13b
19:               jal          ra, 7b
20:               jal          ra, 14b
21:               sltiu        s3, t3, -1893
sub_4_13:         jal          ra, 23f
0:                jal          ra, 2f
1:                jal          ra, 15f
2:                jal          t1, 20f
3:                jal          t0, 26f
4:                jal          tp, 0b
5:                jal          ra, 8f
6:                jal          sp, 1b
7:                jal          ra, 13f
8:                jal          ra, 25f
9:                jal          gp, 5b
10:               jal          t1, 28f
11:               jal          ra, 6b
12:               jal          ra, 24f
13:               jal          t1, 17f
14:               jal          s9, 19f
15:               jal          ra, 27f
16:               jal          ra, 18f
17:               jal          ra, 3b
18:               jal          gp, 22f
19:               jal          t1, 7b
20:               jal          ra, 11b
21:               jal          t0, 12b
22:               jal          a2, 10b
23:               jal          ra, 9b
24:               jal          ra, 16b
25:               jal          t2, 21b
26:               jal          t1, 29f
27:               jal          ra, 14b
28:               jal          ra, 4b
29:               xori         s3, s3, 1479
sub_4_5:          jal          ra, 28f
0:                jal          a0, 10f
1:                jal          t1, 18f
2:                jal          ra, 14f
3:                jal          t2, 25f
4:                jal          ra, 12f
5:                jal          t1, 4b
6:                jal          ra, 17f
7:                jal          t1, 27f
8:                jal          ra, 20f
9:                jal          t1, 8b
10:               jal          a0, 16f
11:               jal          ra, 9b
12:               jal          sp, 22f
13:               jal          ra, 5b
14:               jal          s3, 1b
15:               jal          ra, 19f
16:               jal          ra, 15b
17:               jal          ra, 30f
18:               jal          ra, 13b
19:               jal          ra, 11b
20:               jal          ra, 29f
21:               jal          ra, 26f
22:               jal          ra, 24f
23:               jal          ra, 3b
24:               jal          s0, 23b
25:               jal          ra, 7b
26:               jal          ra, 2b
27:               jal          ra, 0b
28:               jal          a3, 21b
29:               jal          s9, 6b
30:               srai         s9, s9, 15
                  srli         a7, a2, 8
                  sltiu        t5, s5, 1094
                  bge          a3, t1, 17f
                  nop
                  or           gp, t3, t2
                  and          a4, a5, a0
                  nop
                  xor          tp, t3, ra
                  srai         s9, t4, 12
                  nop
                  ori          s4, a5, -468
                  lui          sp, 901248
                  sub          gp, s3, tp
                  srl          a2, s6, t3
                  sltu         s4, s9, t6
                  nop
                  bne          a0, t4, 20f
17:               sub          s5, t6, t2
                  blt          s6, t3, 22f
                  slli         t1, s4, 16
20:               xor          zero, s1, s10
                  xori         ra, s10, -299
22:               srli         s8, sp, 2
                  nop
                  add          s11, a3, a4
                  xori         s10, t6, -655
                  and          s10, t3, a7
                  slti         gp, a3, -1004
                  slt          s7, a4, a2
                  sll          s7, s9, t2
                  slt          s1, s1, a2
                  ori          t5, t3, -1089
                  or           sp, t6, ra
                  xor          zero, s6, sp
                  slt          s9, s6, a0
                  sra          a7, t2, zero
                  srl          t2, s0, a1
                  nop
                  bltu         s0, t0, 46f
                  bgeu         tp, t2, 50f
                  bgeu         a4, a6, 55f
                  auipc        gp, 916994
                  srai         s8, a7, 6
                  lui          t5, 978960
                  slti         tp, a3, -1576
                  sltu         s9, s4, s11
46:               xori         sp, t5, -54
                  or           s2, gp, s3
                  bltu         s4, s10, 52f
                  or           s8, a2, s6
50:               slt          a4, t3, t5
                  nop
52:               srl          s0, a0, t3
                  sub          a0, t5, s2
                  ori          a0, zero, 313
55:               slli         tp, s6, 25
                  bge          s2, s7, 60f
                  ori          a7, zero, -1932
                  sltu         a3, a1, t2
                  xor          s10, s7, s10
60:               srai         t0, s2, 25
                  bltu         t4, s3, 80f
                  bltu         t6, gp, 70f
                  or           a7, s8, s3
                  lui          s5, 403910
                  srl          a2, tp, a4
                  add          s5, s3, s0
                  nop
                  srai         s6, zero, 5
                  lui          s5, 393441
70:               andi         t0, s1, 1775
                  lui          s7, 1014374
                  bltu         t3, t3, 90f
                  auipc        t6, 987479
                  sra          s8, t0, s2
                  or           s10, s0, a1
                  addi         s9, a1, -192
                  srai         a3, s0, 2
                  slt          s2, s7, s5
                  slli         gp, tp, 12
80:               lui          s11, 387996
                  bltu         s7, s6, 82f
82:               beq          sp, s5, 88f
                  bltu         t3, s1, 87f
                  ori          s4, sp, -1855
                  andi         a6, a1, 17
                  srl          ra, a4, s0
87:               xor          s3, t4, zero
88:               srl          s8, t6, s8
                  blt          s0, a0, 102f
90:               slti         s10, gp, 774
                  bgeu         a6, a0, 106f
                  srl          t0, a5, t5
                  xor          s1, a6, s8
                  beq          zero, s9, 95f
95:               or           a6, a2, t4
                  bge          a2, a6, 109f
                  and          s6, a3, s9
                  addi         tp, t2, 700
                  lui          sp, 49297
                  ori          t0, s2, -982
                  beq          t4, sp, 111f
102:              blt          a3, sp, 103f
103:              sltiu        zero, ra, -1762
                  sub          s0, a6, t6
                  andi         t5, a0, 977
106:              add          t1, s10, s11
                  and          sp, s0, t6
                  xor          t2, a2, s10
109:              srli         a2, t5, 8
                  slti         t5, s0, -762
111:              beq          t6, s1, 120f
                  beq          a0, s1, 113f
113:              bgeu         a3, s7, 126f
                  sltu         t2, a3, a4
                  bge          s4, t3, 132f
                  xori         s6, a2, -1608
                  sltiu        s8, s4, 912
                  xori         s0, a2, 1273
                  ori          sp, ra, 1100
120:              nop
                  beq          a0, a1, 126f
                  andi         s7, tp, 1787
                  blt          a6, a3, 131f
                  xori         t5, s3, -878
                  srli         s7, t5, 0
126:              andi         a0, ra, -2036
                  sltiu        t1, a1, 632
                  or           s10, t0, ra
                  slti         t1, a5, 377
                  andi         a3, s5, 474
131:              addi         gp, s10, 799
132:              andi         t2, a0, 1000
                  xori         s4, t1, 1158
                  beq          s10, s10, 145f
                  sltiu        a7, s5, -1496
                  auipc        t6, 125379
                  bgeu         t0, t0, 157f
                  or           t6, ra, ra
                  ori          gp, t2, -1885
                  srl          ra, gp, t6
                  addi         s10, tp, 1286
                  sltu         a6, tp, t1
                  sra          a6, s9, t5
                  ori          t0, a3, 1906
145:              bne          a7, t0, 160f
                  auipc        a5, 615579
                  sltu         s8, a1, s3
                  lui          s8, 345281
                  sub          a6, s4, s9
                  add          a2, s8, a1
                  xor          s4, zero, s3
                  beq          gp, s3, 168f
                  sltiu        s11, s1, -1671
                  blt          a7, t3, 155f
155:              sltu         s4, sp, gp
                  blt          s3, t5, 167f
157:              ori          gp, t5, 512
                  beq          a7, a7, 166f
                  and          a0, zero, a1
160:              bgeu         s6, zero, 175f
                  and          s0, gp, s5
                  lui          t1, 870964
                  slt          zero, t3, t1
                  sub          s5, s7, s10
                  xor          s9, s6, s3
166:              sltiu        s10, t6, -1257
167:              slt          s0, a0, t2
168:              bge          t4, s9, 174f
                  xor          s2, t1, sp
                  andi         t2, gp, 1543
                  xor          s1, a7, t0
                  srai         a5, s10, 6
                  beq          s7, a2, 178f
174:              xor          a2, t0, a3
175:              and          a5, t3, t4
                  ori          s8, a1, 925
                  and          ra, a6, a5
178:              and          a7, t0, a0
                  ori          a6, s9, 45
                  nop
                  or           gp, t2, s6
                  bge          t6, s8, 186f
                  add          s8, zero, tp
                  blt          s11, ra, 188f
                  ori          a5, s3, -1571
186:              auipc        tp, 38886
                  sltu         sp, t4, s8
188:              auipc        s7, 568418
                  sll          a3, t6, s9
                  add          s5, a2, sp
                  addi         zero, s5, 1844
                  sll          t5, t1, t1
                  andi         a7, t4, 15
                  bltu         sp, t2, 204f
                  bge          s3, s5, 210f
                  bne          a4, a7, 200f
                  sra          s3, a5, tp
                  srli         sp, a0, 29
                  bge          s4, a6, 200f
200:              bne          s6, a7, 215f
                  beq          tp, s2, 202f
202:              srl          t1, zero, t4
                  sll          s10, s1, a1
204:              bge          zero, t1, 208f
                  blt          zero, sp, 218f
                  sub          s10, s4, s5
                  sltu         zero, gp, t3
208:              auipc        s7, 421465
                  bgeu         s4, t1, 225f
210:              bge          ra, t5, 228f
                  slli         s2, t6, 26
                  xor          sp, t4, a6
                  sll          s6, a0, a6
                  srli         a6, s0, 1
215:              sll          zero, s7, t2
                  bne          s1, s9, 224f
                  sll          s3, a2, s1
218:              andi         gp, t3, -732
                  blt          a0, s6, 232f
                  lui          a4, 841232
                  nop
                  xor          a7, a0, a7
                  andi         t6, gp, 895
224:              bge          s10, s6, 241f
225:              sra          zero, a1, t0
                  sll          a3, a2, s8
                  andi         s7, t5, -731
228:              xor          t0, a0, a6
                  nop
                  slti         t5, gp, -1376
                  bge          s11, s11, 239f
232:              slli         a3, tp, 18
                  sltiu        s6, zero, -1653
                  bge          t1, s9, 245f
                  lui          a2, 389054
                  auipc        zero, 579411
                  srli         a0, s7, 1
                  sltiu        a2, s8, 834
239:              bge          s1, tp, 254f
                  sltu         s3, t0, a4
241:              nop
                  slt          s6, gp, a0
                  and          s11, t5, s1
                  bne          a0, zero, 245f
245:              srli         zero, t6, 10
                  addi         t0, s4, 1628
                  nop
                  slli         s8, a3, 12
                  ori          s0, s10, 604
                  and          a6, ra, s4
                  slt          t1, a1, s5
                  slti         tp, a2, -478
                  andi         s3, tp, 830
254:              bgeu         s0, a5, 273f
                  auipc        zero, 892734
                  bge          s6, s0, 269f
                  lui          s1, 420489
                  ori          t5, t1, 592
                  slt          t5, t0, s0
                  slti         s6, t4, 83
                  add          t1, s8, a2
                  bge          a6, a4, 266f
                  add          s9, a0, a2
                  sub          t5, s6, gp
                  slti         s7, a3, -1113
266:              xori         a0, s5, 1976
                  sltu         s8, t1, gp
                  xor          s7, a7, t0
269:              or           a0, s0, t0
                  srli         t0, a4, 5
                  andi         s10, s8, 1334
                  sra          tp, t2, a0
273:              andi         s0, s10, 195
                  slli         a3, a6, 19
                  bltu         s9, t3, 284f
                  srli         ra, s3, 5
                  sra          a7, s3, zero
                  srl          s2, a3, a4
                  slli         a6, s3, 12
                  sltu         s8, t5, s11
                  srai         t2, a1, 26
                  or           tp, s0, tp
                  xor          gp, a6, s4
284:              sltiu        s8, s1, 1600
                  bge          s2, sp, 305f
                  bgeu         t1, t4, 299f
                  bltu         a2, zero, 296f
                  sltu         s0, s1, zero
                  bge          t0, s10, 309f
                  add          s7, a4, s11
                  srli         t0, zero, 12
                  bne          s1, a7, 302f
                  bge          s5, s3, 309f
                  srli         s3, s3, 16
                  ori          zero, s6, -1475
296:              slti         a6, s10, -1535
                  andi         s5, gp, -1122
                  sll          sp, t3, s0
299:              lui          a6, 289553
                  bltu         ra, s2, 301f
301:              lui          s3, 311307
302:              slli         a7, s0, 10
                  xor          s0, s10, s6
                  bne          s9, a7, 317f
305:              add          a6, gp, s7
                  xori         s6, t0, -1907
                  bne          s2, t1, 311f
                  slt          sp, a5, s5
309:              sra          a3, gp, gp
                  beq          a7, s3, 318f
311:              xor          a2, s8, s1
                  slt          zero, t3, t2
                  slt          t1, a2, s1
                  beq          s9, t2, 331f
                  auipc        a0, 798901
                  ori          s11, t1, 1199
317:              nop
318:              srl          t6, s3, t5
                  sltu         s5, s10, s1
                  srai         s3, a7, 30
                  nop
                  bgeu         s1, sp, 327f
                  bgeu         a3, a6, 324f
324:              bge          s6, s2, 328f
                  bltu         a4, s6, 331f
                  xori         s6, a6, 1334
327:              nop
328:              slti         s2, s0, 270
                  andi         a7, t1, 489
                  slli         a5, a2, 17
331:              xori         s1, ra, 2009
                  blt          zero, a6, 333f
333:              nop
                  xori         tp, a6, 1760
                  srai         s0, t5, 6
                  sltu         s3, a5, a7
                  ori          a5, a6, 1433
                  lui          s3, 388127
                  and          s3, s4, s9
                  srai         t2, s1, 19
                  sra          a2, a0, s9
                  auipc        s0, 65922
                  sub          a0, sp, t6
                  slli         zero, s10, 26
                  sltiu        t5, a6, 1203
                  srai         tp, sp, 4
                  bgeu         a2, s1, 365f
                  and          a0, s0, ra
                  lui          a2, 112898
                  srl          a3, a2, s9
                  sltu         tp, s2, s1
                  bgeu         s3, s6, 356f
                  xor          t6, t1, s7
                  slti         t2, s1, 1931
                  addi         s2, a4, -1677
356:              add          t0, s10, t0
                  slti         s7, s2, 229
                  addi         t5, a0, 1850
                  sub          s5, zero, s11
                  sltu         t2, a6, t0
                  bne          sp, a0, 369f
                  bne          t4, t2, 377f
                  andi         t1, s11, 1001
                  sltiu        gp, s10, -1135
365:              nop
                  or           t6, s11, t1
                  beq          a4, a3, 371f
                  bge          t3, t4, 383f
369:              sltu         t1, s4, a1
                  sub          tp, a1, s2
371:              sll          a2, tp, s1
                  sltiu        gp, a5, -352
                  sltu         s11, gp, gp
                  blt          s5, s2, 378f
                  nop
                  sltiu        t5, s4, 750
377:              srl          t6, s5, s9
378:              bgeu         t3, s10, 389f
                  lui          t5, 589478
                  or           a0, s5, t4
                  sltiu        a4, a2, 1954
                  bltu         a5, zero, 401f
383:              and          s10, t5, tp
                  srli         t6, s4, 22
                  xori         a2, t5, -1400
                  lui          a5, 836753
                  bgeu         gp, tp, 398f
                  lui          s1, 231987
389:              sltiu        s7, sp, 519
                  slti         s0, gp, -1128
                  xori         s5, s1, 344
                  sra          t2, s7, t6
                  sltiu        t0, t3, 1086
                  auipc        s4, 708249
                  slt          s9, a0, a2
                  addi         t0, s10, -1819
                  xori         gp, tp, 75
398:              bge          t0, t0, 399f
399:              nop
                  slti         s11, a4, -486
401:              sll          s3, t2, s2
                  srli         a4, zero, 29
                  auipc        s2, 230932
                  sltu         a0, s11, tp
                  add          a2, s10, t1
                  ori          sp, s3, 1937
                  srl          s0, a3, t0
                  bge          s2, a5, 421f
                  and          a7, t2, s8
                  auipc        s10, 903052
                  and          ra, a1, t2
                  xor          a6, s10, s0
                  sltu         a4, s2, t2
                  and          t1, s2, a3
                  or           s7, s7, s0
                  sltu         a6, zero, a4
                  add          tp, s11, a1
                  lui          a7, 805921
                  lui          a4, 479227
                  srli         s8, sp, 24
421:              sra          s10, a3, s1
                  srai         gp, t0, 0
                  beq          s11, a4, 438f
                  bltu         a1, zero, 439f
                  sll          s4, s1, s9
                  lui          s7, 1208
                  bgeu         zero, t6, 435f
                  auipc        s4, 776739
                  nop
                  sll          s5, s1, ra
                  blt          gp, t1, 442f
                  beq          s10, s2, 433f
433:              sra          a6, s8, s9
                  nop
435:              slli         sp, a3, 24
                  andi         s5, s10, 728
                  xor          s9, a1, a5
438:              add          sp, s2, t2
439:              addi         s4, s10, 1848
                  bgeu         a7, s6, 456f
                  xori         s0, t1, -456
442:              slti         t2, t3, 132
                  and          a3, t6, s5
                  sltiu        gp, t3, 398
                  sltu         t0, s1, t6
                  xor          a3, s9, a1
                  or           s1, s3, s0
                  lui          t6, 924403
                  ori          a5, gp, -154
                  and          s7, t1, a1
                  xori         s9, s7, 1318
                  sltiu        a6, t3, 1153
                  srai         zero, a6, 27
                  or           t1, a3, t0
                  srai         gp, a1, 6
456:              beq          tp, s3, 457f
457:              bne          zero, t3, 466f
                  beq          a2, s3, 462f
                  slti         t1, t6, -515
                  sra          a4, t1, a0
                  beq          tp, sp, 476f
462:              add          tp, a6, a0
                  ori          s2, s10, 335
                  and          s11, sp, t6
                  srli         t1, s9, 26
466:              nop
                  auipc        s5, 435279
                  blt          t2, s10, 481f
                  nop
                  bltu         ra, s9, 487f
                  auipc        s8, 287609
                  beq          t1, a7, 492f
                  beq          a6, s11, 477f
                  slti         a2, t1, -1880
                  blt          s0, a1, 490f
476:              srai         s3, s3, 6
477:              bltu         a1, tp, 492f
                  xor          t1, a5, a4
                  beq          a1, a5, 484f
                  srl          s4, s3, s6
481:              nop
                  auipc        s2, 735027
                  lui          s3, 51083
484:              bltu         s2, s7, 497f
                  beq          a2, a6, 504f
                  blt          zero, gp, 494f
487:              nop
                  bgeu         t1, a5, 489f
489:              blt          a1, t4, 495f
490:              or           t1, s9, a6
                  bgeu         s7, a5, 499f
492:              sltiu        s0, t3, 370
                  bgeu         tp, a2, 504f
494:              nop
495:              bne          t3, ra, 510f
                  srli         a7, t5, 4
497:              sll          t1, t1, s0
                  sltiu        s2, a0, 1997
499:              sll          gp, t6, s0
                  lui          s1, 947863
                  beq          gp, s8, 509f
                  sra          a4, tp, t5
                  or           zero, s2, a1
504:              slt          a3, t5, s8
                  bge          t0, s7, 509f
                  slt          s9, t2, t5
                  sltu         s9, s9, a1
                  and          a5, tp, s2
509:              ori          a6, gp, 768
510:              slti         zero, s11, -1119
                  xori         ra, t4, 1120
                  srli         s6, tp, 11
                  bne          t4, s7, 531f
                  sub          a6, a6, s11
                  bltu         a4, a1, 528f
                  slt          a5, t2, s11
                  add          a3, a6, t4
                  xor          a4, s10, t6
                  xori         s0, t5, 1610
                  sltiu        t0, ra, -847
                  slli         a6, t5, 2
                  srai         t6, ra, 0
                  xori         s8, a4, -1803
                  bne          a7, gp, 534f
                  add          s2, s7, s7
                  or           s10, tp, zero
                  sltiu        a4, zero, 1404
528:              blt          t3, s5, 529f
529:              sll          a6, s10, t1
                  slt          a2, t2, s9
531:              bltu         t0, a2, 535f
                  andi         a7, s8, -227
                  ori          sp, t6, -25
534:              andi         s2, a1, -540
535:              slt          gp, a3, s4
                  slti         t2, s2, -1287
                  bge          s8, s1, 541f
                  sltiu        a5, t0, 1843
                  lui          t6, 304022
                  sltu         t6, t4, s8
541:              srl          s4, s7, a0
                  beq          a3, s3, 555f
                  add          s11, t6, t4
                  xor          a2, a1, s1
                  auipc        a2, 177124
                  bltu         t0, s1, 550f
                  slti         t2, ra, -1494
                  slli         sp, t3, 16
                  ori          sp, t2, 1459
550:              bgeu         s1, a4, 554f
                  add          a7, t6, tp
                  bge          t0, t0, 553f
553:              bne          s9, s0, 566f
554:              and          a5, zero, t4
555:              sltu         a7, s4, a3
                  bltu         s4, t1, 564f
                  slt          sp, s6, s8
                  xor          a6, a1, gp
                  srli         a5, s5, 8
                  blt          s1, t0, 576f
                  xori         a2, s4, 1863
                  and          t0, a7, a1
                  bge          sp, s1, 572f
564:              or           sp, tp, t3
                  srl          t5, s3, t1
566:              and          s7, zero, t3
                  bgeu         s1, tp, 575f
                  sub          a3, a1, s8
                  add          ra, t0, gp
                  sltiu        s0, a3, 794
                  sll          s4, s7, a4
572:              nop
                  bge          s0, s3, 574f
574:              bne          t0, s9, 584f
575:              srai         a0, s6, 15
576:              andi         a2, t0, -243
                  auipc        a0, 293167
sub_4_8:          jal          ra, 8f
0:                jal          ra, 2f
1:                jal          s1, 12f
2:                jal          a3, 14f
3:                jal          ra, 9f
4:                jal          s9, 7f
5:                jal          ra, 10f
6:                jal          ra, 23f
7:                jal          ra, 5b
8:                jal          ra, 19f
9:                jal          t2, 13f
10:               jal          t1, 6b
11:               jal          ra, 20f
12:               jal          t1, 17f
13:               jal          a6, 21f
14:               jal          ra, 16f
15:               jal          ra, 4b
16:               jal          t1, 24f
17:               jal          ra, 11b
18:               jal          ra, 22f
19:               jal          s1, 3b
20:               jal          gp, 18b
21:               jal          ra, 15b
22:               jal          t1, 0b
23:               jal          ra, 1b
24:               srli         a3, a5, 19
                  or           s6, s1, s2
                  sll          sp, a0, t4
                  bltu         zero, t1, 586f
                  nop
                  auipc        s6, 289848
sub_4_10:         jal          ra, 16f
0:                jal          s1, 11f
1:                jal          ra, 6f
2:                jal          ra, 20f
3:                jal          ra, 21f
4:                jal          ra, 19f
5:                jal          t0, 0b
6:                jal          s11, 18f
7:                jal          ra, 8f
8:                jal          ra, 9f
9:                jal          ra, 4b
10:               jal          ra, 7b
11:               jal          a7, 10b
12:               jal          ra, 13f
13:               jal          ra, 15f
14:               jal          t1, 12b
15:               jal          ra, 5b
16:               jal          ra, 14b
17:               jal          ra, 1b
18:               jal          ra, 2b
19:               jal          ra, 17b
20:               jal          ra, 3b
21:               slti         t1, t4, -1323
                  sub          s10, t2, ra
584:              sltiu        a3, sp, 1155
                  srl          gp, a7, a4
586:              sra          s6, a2, tp
                  auipc        s0, 429430
                  auipc        a3, 841426
                  bgeu         a4, a0, 590f
590:              bne          a2, s6, 594f
                  slt          t0, a1, s6
                  srli         a7, t5, 4
                  slt          t2, t6, t6
594:              beq          gp, t1, 609f
                  sll          s11, a5, a3
                  slli         a0, a7, 8
                  xori         a5, s0, -410
                  slli         a3, t5, 22
                  add          a5, s5, s8
                  add          a5, a6, s0
                  nop
                  sll          s3, a5, s2
                  slt          a5, s1, sp
                  bgeu         t0, sp, 612f
                  nop
                  addi         t6, a1, -580
                  sltu         s5, t3, ra
                  bge          s7, t2, 621f
609:              sub          sp, t0, s6
                  and          s7, a2, s8
                  nop
612:              sub          s2, s0, s7
                  bge          s4, t4, 632f
                  blt          s0, s11, 619f
                  srli         t5, t0, 13
                  sra          a0, a1, a1
                  srl          s7, t5, s6
                  srl          s6, sp, s2
619:              sltu         s7, a2, t5
                  bltu         s8, t1, 624f
621:              addi         s7, a5, -1456
                  sll          a5, t5, t1
                  xor          s10, a1, s10
624:              or           t1, s4, t4
                  beq          zero, gp, 643f
                  sltu         a4, s7, s5
                  add          zero, ra, sp
                  slti         a0, s3, -1180
                  sub          zero, s9, t2
                  or           s9, a4, zero
                  xor          a3, s0, s5
632:              bne          s6, s1, 636f
                  sltiu        s5, s0, 570
                  xor          t5, s6, t2
                  srl          ra, zero, t2
636:              srl          a6, s6, t4
                  bltu         a7, s7, 652f
                  sltu         s9, s1, t4
                  sra          gp, tp, t6
                  bne          s10, s7, 655f
                  xor          a5, sp, gp
                  bgeu         s9, a0, 653f
643:              srai         gp, s9, 16
                  andi         s9, a5, -1596
                  xor          s6, s0, s6
                  xor          s8, ra, a0
                  srai         a4, a3, 12
                  sltu         zero, sp, s3
                  lui          s11, 441289
                  auipc        s3, 999257
                  bgeu         gp, t2, 652f
652:              andi         s11, s7, 854
653:              slli         t6, s8, 17
                  auipc        a4, 58732
655:              nop
                  xori         s1, s6, -1085
                  bltu         s9, s5, 668f
                  nop
                  sltiu        a2, s10, 1820
                  sltu         a3, t5, ra
                  srli         a4, sp, 8
                  lui          s2, 984080
                  auipc        s5, 489700
                  and          s3, zero, a6
                  srai         s6, t1, 4
                  nop
                  sra          t1, s3, s4
668:              lui          a6, 883453
                  blt          s10, t1, 689f
                  slti         s5, s11, -1081
                  sra          zero, s10, s7
                  slt          t6, sp, t6
                  lui          s6, 10164
                  bgeu         s1, a4, 691f
                  ori          s6, t2, 1311
                  bge          s4, s8, 691f
                  xori         t2, a7, -970
                  bne          t3, t4, 691f
                  xor          a5, a7, s9
                  blt          s3, t1, 686f
                  xori         a0, t3, 1973
                  slti         gp, s11, -708
                  bltu         s0, a0, 687f
                  addi         s6, t3, 124
                  blt          t0, s4, 695f
686:              sll          t6, a4, t3
687:              slt          t6, a0, t0
                  srl          s6, s7, t4
689:              xor          s11, t4, sp
                  andi         a5, t5, -438
691:              bltu         s10, tp, 695f
                  sltiu        sp, t0, 405
                  bge          a6, t5, 708f
                  and          ra, s3, a0
695:              srli         ra, s7, 9
                  srli         s7, t1, 15
                  xori         a6, s2, -1917
                  addi         t0, a3, 1764
                  bge          s4, t3, 708f
                  beq          a3, t6, 716f
                  add          s5, s11, t0
                  lui          s1, 449812
                  ori          ra, a5, -1359
                  slt          sp, t6, t5
                  srli         s2, a2, 14
                  slti         t5, s11, 98
                  or           sp, sp, a4
708:              bltu         a5, ra, 721f
                  slli         s7, s4, 7
                  srai         a0, t6, 4
                  and          s10, s2, a7
                  bne          a6, t6, 720f
                  sra          a6, t6, t4
                  sra          a7, a1, t2
                  sra          t6, s6, t2
716:              auipc        ra, 482783
                  bge          a5, a5, 728f
                  xor          a4, s0, t0
                  sra          s3, s0, s1
720:              srai         t1, t6, 10
721:              addi         t6, sp, -625
                  srl          t1, t0, s8
                  ori          a5, t1, -1995
                  andi         t1, s2, 1441
                  addi         a0, s2, -804
                  bltu         t6, a0, 741f
                  or           t2, t6, t1
728:              lui          s1, 22807
                  sub          s3, s9, a3
                  sra          s1, gp, a4
                  srli         s3, t6, 24
                  srli         tp, sp, 3
                  sll          t1, t4, zero
                  sltu         s7, t0, a7
                  auipc        s10, 625979
                  ori          s3, s4, 17
                  sra          s4, s6, tp
                  sub          s8, s2, s10
                  bge          a5, gp, 754f
                  slti         a0, a6, -129
741:              slt          a0, a1, s11
                  bltu         t0, t4, 746f
                  bge          gp, s1, 754f
                  xor          t0, a0, gp
                  bltu         tp, s5, 764f
746:              slli         s11, tp, 16
                  lui          a5, 509304
                  srl          gp, t0, sp
                  or           a3, sp, s5
                  srai         gp, sp, 26
                  sll          s0, s11, s9
                  add          a3, t2, a1
                  ori          a2, s1, -1972
754:              srl          s11, s1, s5
                  auipc        a6, 453148
                  bltu         s10, s9, 769f
                  slli         a4, s2, 5
                  srai         t5, tp, 13
                  srl          a7, s2, t0
                  bne          t1, t1, 764f
                  lui          s9, 1009684
                  ori          s6, gp, 1529
                  ori          t2, sp, -486
764:              auipc        a4, 273027
                  ori          a2, ra, 1820
                  xori         s5, s4, 2032
                  bne          s0, s11, 774f
                  srai         s5, a4, 28
769:              sltiu        t2, s6, -888
                  auipc        s0, 832305
                  bltu         s11, t2, 774f
                  srl          s0, a6, ra
                  sll          a3, t2, gp
774:              and          s8, s2, t2
                  and          a7, a0, s7
                  lw           ra, 4(a1)
                  srai         a2, a7, 20
                  addi         a1, a1, 48
                  auipc        s10, 87963
1123:             addi x18, x1, 0
1123:             jalr x18, x18, 0
sub_3:            addi         a1, a1, -48
                  add          s1, a1, a0
                  slli         s5, a5, 20
                  sw           ra, 4(a1)
                  xor          t5, a1, s2
sub_3_2:          jal          ra, 7f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          ra, 15f
3:                jal          s9, 11f
4:                jal          t1, 0b
5:                jal          ra, 3b
6:                jal          ra, 9f
7:                jal          t6, 13f
8:                jal          ra, 12f
9:                jal          a3, 5b
10:               jal          a6, 2b
11:               jal          ra, 14f
12:               jal          ra, 6b
13:               jal          s6, 4b
14:               jal          ra, 10b
15:               slti         a3, s9, 827
sub_3_0:          jal          ra, 15f
0:                jal          t5, 6f
1:                jal          a4, 22f
2:                jal          gp, 18f
3:                jal          t0, 26f
4:                jal          ra, 20f
5:                jal          ra, 1b
6:                jal          ra, 10f
7:                jal          t1, 3b
8:                jal          ra, 12f
9:                jal          t5, 0b
10:               jal          ra, 16f
11:               jal          ra, 13f
12:               jal          s5, 25f
13:               jal          ra, 21f
14:               jal          t0, 17f
15:               jal          ra, 14b
16:               jal          t1, 7b
17:               jal          ra, 5b
18:               jal          ra, 4b
19:               jal          s8, 27f
20:               jal          ra, 23f
21:               jal          ra, 24f
22:               jal          a2, 9b
23:               jal          ra, 19b
24:               jal          tp, 2b
25:               jal          ra, 11b
26:               jal          ra, 8b
27:               auipc        a2, 173839
sub_3_3:          jal          ra, 8f
0:                jal          ra, 14f
1:                jal          a5, 2f
2:                jal          s9, 5f
3:                jal          ra, 1b
4:                jal          a0, 12f
5:                jal          ra, 9f
6:                jal          t1, 10f
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          ra, 4b
10:               jal          ra, 3b
11:               jal          s3, 15f
12:               jal          ra, 13f
13:               jal          ra, 11b
14:               jal          t1, 7b
15:               or           s4, s1, s6
sub_3_1:          jal          ra, 6f
0:                jal          ra, 9f
1:                jal          t1, 3f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          t1, 1b
6:                jal          ra, 4b
7:                jal          t1, 10f
8:                jal          ra, 2b
9:                jal          s11, 5b
10:               or           zero, zero, s3
                  blt          a5, a6, 13f
                  srai         s5, t6, 4
                  bge          ra, gp, 10f
                  sub          a3, t6, s8
                  bgeu         a2, a5, 5f
5:                addi         a2, s9, 1678
                  xor          a6, t5, a3
                  blt          a0, zero, 16f
                  ori          t0, s9, 1534
                  bge          t6, a0, 23f
10:               sll          t1, a3, t2
                  and          zero, gp, a3
                  slli         s9, s6, 17
13:               and          t1, s9, ra
                  andi         gp, s2, 156
                  sub          s0, a4, s10
16:               nop
                  slli         tp, tp, 9
                  lui          tp, 443616
                  lui          t6, 560882
                  and          t1, t1, a7
                  addi         gp, s0, -1060
                  srl          s6, s0, a1
                  slli         s2, a3, 13
                  blt          s5, a6, sub_3_j4 #branch to jump instr
                  auipc        s6, 898774
                  slli         a6, a5, 15
sub_3_j4:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  xor          a5, a4, a3
                  sll          gp, t4, t0
                  slli         a5, s1, 23
                  slti         a3, s10, -1010
23:               sub          a2, a5, s10
                  blt          s9, a1, 37f
                  add          s1, gp, zero
                  bge          s0, s0, 40f
                  bgeu         a1, a1, 43f
                  xor          a4, s0, s7
                  xori         t2, s3, 1738
                  srai         s9, zero, 30
                  auipc        sp, 705805
                  slti         s3, t0, -753
                  bne          ra, gp, 44f
                  xor          zero, t5, t6
                  srl          ra, t5, s9
                  slti         a7, a4, 1270
37:               bltu         s3, t1, 51f
                  sub          ra, s8, gp
                  srl          s10, a3, s11
40:               xor          s7, s0, t5
                  srl          s10, s11, a6
                  bge          a4, t2, 61f
43:               ori          s9, a7, -1524
44:               blt          a4, t5, 53f
                  sltu         ra, a5, t2
                  addi         a3, a7, -1891
                  slti         s6, s4, 1071
                  andi         s2, s7, 583
                  bgeu         t5, tp, 60f
                  sll          s2, t5, t1
51:               sub          t2, a6, s1
                  bne          s1, t1, 69f
53:               bgeu         s2, s2, 67f
                  add          s2, s5, t4
                  andi         t6, t2, 1604
                  sltiu        s4, t4, -1011
                  nop
                  slti         s9, t3, -2033
                  or           a4, a0, s6
60:               bge          t6, s9, 72f
61:               srl          s0, s7, t2
                  andi         a0, t6, 1311
                  sll          a7, a7, a7
                  bne          a7, t2, 81f
                  addi         zero, a3, -1390
                  srai         tp, a7, 6
67:               xor          a4, t1, s4
                  srli         s4, s1, 28
69:               bne          tp, a0, 87f
                  sra          t2, tp, t3
                  nop
72:               bge          s3, zero, 84f
                  nop
                  sra          s5, sp, a4
                  srai         t6, s8, 18
                  srl          t1, a1, t6
                  bgeu         a0, gp, 92f
                  slli         t6, t5, 23
                  and          s8, s5, t6
                  sltu         ra, zero, t3
81:               slt          a0, ra, a5
                  slti         t1, s8, -768
                  and          s0, s1, s8
84:               lui          gp, 43285
                  slti         s11, ra, 448
                  xori         s5, s5, -1044
87:               sll          a3, ra, s2
                  bge          t0, t0, 96f
                  lui          t5, 75729
                  beq          s8, t0, 105f
                  lui          s0, 925227
92:               lui          s1, 833691
                  sltu         s5, a6, a3
                  bltu         s0, s9, 101f
                  sltiu        s2, t6, 921
96:               sub          s0, a7, gp
                  sltiu        a5, t2, 933
                  srli         a3, a0, 31
                  addi         t6, a6, -1892
                  xori         s6, t5, 1616
101:              auipc        gp, 1029232
                  bge          s11, s2, 104f
                  andi         a5, s5, -130
104:              blt          s9, t2, 108f
105:              srli         s4, tp, 30
                  srl          s5, a3, s1
                  srai         a7, a4, 4
108:              andi         tp, t4, 420
                  sltu         t0, s10, sp
                  sltiu        s3, s0, -90
                  bgeu         t2, a7, 112f
112:              and          s4, a5, s0
                  addi         gp, s10, 548
                  andi         gp, s0, 1938
                  srai         ra, t1, 16
                  nop
                  addi         t2, a3, 1615
                  slt          s3, s4, s5
                  lui          gp, 1040341
                  nop
                  srli         a7, t3, 13
                  nop
                  blt          sp, a7, 142f
                  lui          zero, 999963
                  beq          t5, a7, 134f
                  xor          t6, a4, zero
                  slti         s3, s10, -1420
                  sltu         a7, s5, s8
                  srli         t6, s11, 9
                  sltu         s8, tp, a4
                  auipc        ra, 934542
                  slli         s0, s10, 20
                  srl          t5, t2, t5
134:              slt          t5, s9, s11
                  or           t6, s3, s0
                  srli         s7, s11, 17
                  lui          s1, 708886
                  xor          a3, t0, t0
                  sra          s2, a7, t1
                  and          a5, t0, s7
                  and          gp, t2, s11
142:              add          s10, s9, s5
                  or           t5, a5, t4
                  sltu         t0, s6, s10
                  blt          t5, s3, 155f
                  bltu         s4, tp, 156f
                  sub          s9, zero, s0
                  add          a5, a0, s4
                  bltu         s10, s1, 166f
                  sll          t1, a1, s10
                  bgeu         sp, sp, 165f
                  sll          a0, t1, a7
                  xor          s0, ra, s8
                  srli         a5, zero, 11
155:              slti         a0, a7, -1044
156:              add          sp, s6, a7
                  beq          zero, t5, 158f
158:              srl          s2, t2, a5
                  srai         s5, a0, 8
                  auipc        t2, 146613
                  andi         t1, a1, 211
                  slt          t2, s5, t2
                  addi         a5, t3, 1368
                  sltu         sp, s0, a1
165:              sltiu        t1, t6, -542
166:              beq          s10, t3, 175f
                  sra          s6, s7, s5
                  nop
                  sub          sp, t0, a0
                  srli         gp, t0, 1
                  bltu         a6, s5, 181f
                  ori          a6, t5, 1575
                  bgeu         s7, a2, 188f
                  slt          s6, a5, tp
175:              bltu         s0, t1, 190f
                  auipc        s7, 807092
                  srli         a2, a1, 21
                  or           a4, zero, a6
                  sll          s1, a3, s11
                  sub          s5, s10, t5
181:              or           s4, s2, a5
                  slti         a4, s10, -551
                  xori         t5, a0, 1363
                  sub          s2, t5, a1
                  slli         s6, s8, 8
                  srai         t0, s0, 26
                  xor          a4, a4, a3
188:              ori          a2, a5, 1995
                  sra          s2, s8, s4
190:              bltu         a3, t0, 197f
                  xori         t2, s8, -1691
                  slli         s10, s11, 5
                  srli         s8, t5, 15
                  sltu         sp, s2, s4
                  bgeu         ra, t6, 196f
196:              bltu         ra, t5, 200f
197:              bge          a0, t6, 211f
                  xori         s2, s10, 244
                  ori          ra, t6, 1609
200:              slli         zero, a1, 10
                  add          s11, a2, a0
                  xor          a3, gp, s0
                  slti         s9, a0, 82
                  ori          zero, t5, -1726
                  ori          t5, s8, 1106
                  add          s11, a7, tp
                  sll          s8, tp, sp
                  add          t0, a6, s0
                  srli         s2, zero, 5
                  add          t0, zero, s6
211:              sub          a2, sp, s11
                  nop
                  sltu         a3, s7, t1
                  ori          t0, sp, 1591
                  or           sp, a3, t2
                  or           s3, s0, a3
                  sltiu        s2, s6, -231
                  xori         t5, s11, 784
                  srli         a5, t5, 3
                  lui          s5, 382870
                  lui          t0, 355703
                  xori         ra, t0, -1176
                  add          s2, s1, s10
                  ori          s1, a5, 189
                  sltu         t2, s0, s11
                  nop
sub_3_j5:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  sltiu        t6, a3, 1220
                  slti         a7, s7, 1339
                  blt          ra, s10, 232f
                  add          s2, s3, s10
                  beq          a2, ra, 232f
                  slt          s8, s0, s10
                  xor          s11, s6, t5
                  slti         s9, ra, -510
                  or           a4, a2, t1
                  andi         s0, s9, 820
                  slt          a2, a7, s9
                  srai         sp, s2, 12
                  sltu         t1, t5, s9
232:              addi         t5, t1, -1332
                  slt          s5, a6, tp
                  lw           ra, 4(a1)
                  sltiu        gp, a4, 465
                  addi         s2, t5, 514
                  nop
                  srli         s8, a0, 29
                  add          s6, s2, s6
                  addi         a1, a1, 48
                  sub          a0, a6, t5
340:              addi x23, x1, 1
340:              jalr x23, x23, 0
sub_1:            xor          s0, s9, a5
                  addi         a1, a1, -52
                  and          gp, a6, a5
                  srl          a0, a5, a7
                  xor          a2, a2, ra
                  sw           ra, 4(a1)
                  sll          a3, a7, ra
                  addi         t6, sp, -2040
sub_1_5:          jal          ra, 3f
0:                jal          t5, 10f
1:                jal          ra, 16f
2:                jal          tp, 14f
3:                jal          ra, 5f
4:                jal          t1, 12f
5:                jal          t1, 15f
6:                jal          ra, 11f
7:                jal          sp, 13f
8:                jal          a2, 2b
9:                jal          ra, 6b
10:               jal          t1, 8b
11:               jal          ra, 0b
12:               jal          ra, 1b
13:               jal          s9, 9b
14:               jal          t0, 4b
15:               jal          s6, 7b
16:               add          t2, t0, a2
sub_1_6:          jal          ra, 4f
0:                jal          s6, 8f
1:                jal          t1, 2f
2:                jal          ra, 15f
3:                jal          s2, 11f
4:                jal          tp, 7f
5:                jal          ra, 0b
6:                jal          t1, 10f
7:                jal          t0, 5b
8:                jal          ra, 13f
9:                jal          sp, 1b
10:               jal          t1, 16f
11:               jal          t1, 9b
12:               jal          tp, 3b
13:               jal          ra, 12b
14:               jal          ra, 6b
15:               jal          t2, 14b
16:               jal          ra, 17f
17:               andi         s11, a0, 1903
sub_1_9:          jal          ra, 16f
0:                jal          ra, 15f
1:                jal          ra, 5f
2:                jal          ra, 9f
3:                jal          ra, 0b
4:                jal          ra, 10f
5:                jal          t1, 11f
6:                jal          ra, 3b
7:                jal          t6, 14f
8:                jal          s1, 7b
9:                jal          ra, 4b
10:               jal          ra, 13f
11:               jal          s7, 6b
12:               jal          s6, 17f
13:               jal          ra, 12b
14:               jal          ra, 1b
15:               jal          ra, 2b
16:               jal          t1, 8b
17:               or           s0, t1, s2
sub_1_4:          jal          ra, 10f
0:                jal          a4, 2f
1:                jal          ra, 6f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          ra, 17f
5:                jal          ra, 9f
6:                jal          ra, 15f
7:                jal          s11, 16f
8:                jal          s5, 7b
9:                jal          t0, 4b
10:               jal          ra, 13f
11:               jal          t1, 14f
12:               jal          t1, 1b
13:               jal          s8, 11b
14:               jal          sp, 8b
15:               jal          ra, 3b
16:               jal          ra, 12b
17:               lui          a0, 43058
sub_1_7:          jal          ra, 16f
0:                jal          ra, 18f
1:                jal          ra, 4f
2:                jal          t2, 25f
3:                jal          a0, 15f
4:                jal          ra, 22f
5:                jal          t1, 24f
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          ra, 23f
9:                jal          ra, 2b
10:               jal          ra, 19f
11:               jal          s11, 10b
12:               jal          a6, 7b
13:               jal          ra, 8b
14:               jal          ra, 21f
15:               jal          ra, 17f
16:               jal          ra, 13b
17:               jal          s7, 14b
18:               jal          ra, 11b
19:               jal          t1, 20f
20:               jal          t1, 6b
21:               jal          ra, 1b
22:               jal          a3, 12b
23:               jal          ra, 5b
24:               jal          ra, 0b
25:               sll          s11, tp, s4
sub_1_10:         jal          ra, 19f
0:                jal          t1, 13f
1:                jal          s8, 21f
2:                jal          ra, 14f
3:                jal          sp, 9f
4:                jal          gp, 5f
5:                jal          t1, 18f
6:                jal          ra, 17f
7:                jal          t1, 4b
8:                jal          tp, 25f
9:                jal          t2, 11f
10:               jal          s9, 24f
11:               jal          gp, 26f
12:               jal          ra, 22f
13:               jal          t1, 12b
14:               jal          ra, 23f
15:               jal          a0, 10b
16:               jal          s11, 8b
17:               jal          t1, 16b
18:               jal          a3, 0b
19:               jal          ra, 1b
20:               jal          ra, 15b
21:               jal          t2, 20b
22:               jal          ra, 2b
23:               jal          a2, 6b
24:               jal          tp, 7b
25:               jal          a7, 3b
26:               andi         a6, t2, 113
sub_1_8:          jal          ra, 20f
0:                jal          ra, 18f
1:                jal          gp, 15f
2:                jal          t0, 9f
3:                jal          s2, 11f
4:                jal          s10, 19f
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          ra, 5b
8:                jal          a7, 3b
9:                jal          ra, 12f
10:               jal          s7, 6b
11:               jal          tp, 17f
12:               jal          ra, 22f
13:               jal          s5, 23f
14:               jal          ra, 1b
15:               jal          t0, 16f
16:               jal          t1, 21f
17:               jal          s5, 13b
18:               jal          t1, 10b
19:               jal          ra, 14b
20:               jal          t1, 4b
21:               jal          ra, 2b
22:               jal          ra, 0b
23:               sltiu        t5, a0, -342
sub_1_0:          jal          ra, 25f
0:                jal          ra, 10f
1:                jal          tp, 17f
2:                jal          ra, 11f
3:                jal          ra, 19f
4:                jal          ra, 15f
5:                jal          sp, 0b
6:                jal          ra, 26f
7:                jal          s0, 21f
8:                jal          ra, 22f
9:                jal          t1, 2b
10:               jal          ra, 14f
11:               jal          s4, 7b
12:               jal          ra, 18f
13:               jal          ra, 23f
14:               jal          s4, 6b
15:               jal          t0, 27f
16:               jal          ra, 12b
17:               jal          sp, 28f
18:               jal          t0, 8b
19:               jal          sp, 9b
20:               jal          t1, 24f
21:               jal          s0, 29f
22:               jal          s1, 13b
23:               jal          ra, 1b
24:               jal          ra, 3b
25:               jal          ra, 16b
26:               jal          ra, 20b
27:               jal          t0, 5b
28:               jal          a7, 4b
29:               slt          sp, t2, gp
sub_1_3:          jal          ra, 12f
0:                jal          t1, 20f
1:                jal          ra, 6f
2:                jal          s10, 18f
3:                jal          ra, 17f
4:                jal          ra, 2b
5:                jal          ra, 4b
6:                jal          ra, 19f
7:                jal          tp, 13f
8:                jal          ra, 10f
9:                jal          ra, 14f
10:               jal          ra, 0b
11:               jal          s11, 1b
12:               jal          ra, 9b
13:               jal          ra, 15f
14:               jal          ra, 5b
15:               jal          t1, 11b
16:               jal          a0, 3b
17:               jal          t1, 8b
18:               jal          ra, 7b
19:               jal          ra, 16b
20:               srai         s7, s5, 0
sub_1_11:         jal          ra, 16f
0:                jal          ra, 13f
1:                jal          ra, 14f
2:                jal          ra, 10f
3:                jal          ra, 12f
4:                jal          ra, 0b
5:                jal          ra, 6f
6:                jal          ra, 19f
7:                jal          s8, 1b
8:                jal          ra, 9f
9:                jal          ra, 15f
10:               jal          ra, 5b
11:               jal          t1, 3b
12:               jal          a0, 8b
13:               jal          t1, 2b
14:               jal          a3, 20f
15:               jal          ra, 18f
16:               jal          ra, 17f
17:               jal          gp, 11b
18:               jal          a6, 4b
19:               jal          ra, 7b
20:               and          a0, s4, s2
                  srai         s2, sp, 19
                  srli         tp, t1, 15
                  sltiu        s4, s10, 1617
                  bge          t5, sp, 18f
                  or           sp, ra, zero
                  sltu         s6, sp, s4
                  bltu         s9, tp, 8f
                  slt          s8, t6, s0
8:                blt          ra, a2, 19f
                  bgeu         t4, s3, 11f
                  blt          a2, s2, 11f
11:               slli         a5, s6, 10
                  bltu         sp, t6, 32f
                  bgeu         a6, zero, 29f
                  sll          a5, a6, s4
sub_1_12:         jal          ra, 10f
0:                jal          sp, 7f
1:                jal          ra, 5f
2:                jal          t1, 9f
3:                jal          ra, 0b
4:                jal          t1, 3b
5:                jal          a5, 6f
6:                jal          ra, 8f
7:                jal          a5, 2b
8:                jal          ra, 11f
9:                jal          a0, 1b
10:               jal          ra, 4b
11:               add          zero, a6, t3
                  xor          s3, t5, ra
                  sltiu        s3, s11, -812
                  srai         s2, a3, 6
18:               srl          t0, a4, a7
19:               andi         s0, s11, -875
                  sltiu        t5, a5, 1795
                  and          s4, gp, a7
                  srai         a5, s10, 0
                  srai         a3, s8, 20
                  slt          a2, t3, s3
                  sll          a2, sp, s4
                  bge          gp, s8, 28f
                  auipc        s7, 707472
28:               bne          t4, tp, 43f
29:               add          t6, s9, a4
                  bne          t5, sp, 42f
                  srl          s4, tp, s1
32:               andi         s1, a7, -1428
                  bge          s4, s3, 36f
                  bne          t4, a4, 44f
                  srai         s0, t4, 19
36:               auipc        t6, 511351
                  blt          s10, t0, 45f
                  sll          t2, s8, a7
                  slli         a5, t5, 27
                  srli         sp, s2, 27
                  sltu         s4, ra, sp
42:               ori          a0, s0, -108
43:               bgeu         s6, a5, 56f
44:               srai         a0, s10, 10
45:               bgeu         s2, zero, 49f
                  add          s5, s4, a6
                  slli         t5, s5, 11
                  and          a5, sp, a2
49:               sll          s5, t6, a7
                  sltu         a5, s4, a3
                  xor          a2, gp, s5
                  bgeu         s10, gp, 60f
                  sub          s10, tp, t2
                  ori          tp, t6, -817
                  sub          s0, s5, s11
56:               sltiu        sp, s10, 771
                  srai         s0, t2, 0
                  and          t1, s2, s11
                  auipc        s10, 266773
60:               xor          a3, a3, s2
                  slli         gp, t1, 6
                  nop
                  nop
                  xori         a5, t3, 1806
                  nop
                  sra          t2, a0, s3
                  sltu         a7, a4, tp
                  blt          a5, s6, 82f
                  srai         a0, gp, 17
                  sltu         s8, t4, a3
                  beq          s6, t5, 79f
                  slti         s6, a2, -945
                  bge          t2, a7, 83f
                  bltu         a7, s2, 75f
75:               xori         a3, tp, 484
                  bne          s3, s5, 91f
                  srl          t6, s10, s4
                  bltu         s8, s9, 86f
79:               sll          s5, a5, s11
                  nop
                  bne          s11, s8, 82f
82:               and          s5, s0, s3
83:               andi         sp, t5, -1420
                  bltu         s6, s2, 95f
                  slt          s10, ra, s6
86:               sub          s10, t3, a3
                  xor          tp, a3, s10
                  bge          t1, s1, 102f
                  sub          a5, a4, ra
                  bne          a5, a2, 97f
91:               auipc        s0, 950392
                  bge          a0, s10, 98f
                  addi         s0, s4, 1893
                  bltu         s7, s8, 113f
95:               srai         s10, s3, 3
                  addi         gp, sp, 1878
97:               xori         a0, s3, 494
98:               sra          a3, s7, t5
                  sra          t2, t5, a7
                  beq          zero, t1, 113f
                  bgeu         s7, ra, 117f
102:              sub          s8, t2, s3
                  slli         tp, s7, 28
                  bltu         a1, s1, 105f
105:              nop
                  sra          s6, a6, s2
                  srli         s9, ra, 30
                  beq          a0, t5, 123f
                  slli         s10, a1, 5
                  srai         s3, a5, 16
                  srli         zero, t6, 4
                  srli         s7, t5, 16
113:              bgeu         t3, s2, 121f
                  srli         s9, ra, 24
                  blt          t3, s4, 125f
                  bgeu         a2, s11, 120f
117:              lui          s11, 43
                  slti         t6, s6, -1991
                  xor          s3, t1, s11
120:              nop
121:              addi         zero, s9, -1683
                  slti         s4, a0, 1373
123:              slt          s0, t0, t3
                  bgeu         s4, t6, 127f
125:              srli         t2, t4, 10
                  addi         a6, s4, -1728
127:              add          s3, a3, s6
                  ori          t5, a5, -825
                  bne          a0, zero, 143f
                  bne          a3, s7, 142f
                  ori          s6, s6, -592
                  xori         s9, a4, -116
                  bge          t6, tp, 140f
                  sub          s6, s1, s10
                  srai         s11, gp, 28
                  lui          tp, 141804
                  and          a7, tp, s9
                  slti         s2, gp, 1414
                  sltu         s6, ra, s7
140:              bgeu         a5, a2, 153f
                  sltu         s8, t2, a5
142:              srai         sp, a5, 15
143:              srl          s7, s7, a5
                  nop
                  lui          sp, 1131
                  bgeu         s2, t3, 154f
                  add          s7, a6, a1
                  auipc        a6, 240732
                  add          t5, t3, a4
                  and          a7, a7, s8
                  srl          s4, a1, sp
                  bge          a3, a5, 154f
153:              bgeu         zero, s2, 164f
154:              sll          a7, zero, s3
                  xori         tp, s7, -1559
                  sra          a3, a4, a1
                  xor          sp, s6, t6
                  xori         gp, s0, 1348
                  add          a6, s1, s7
                  bltu         s4, s5, 171f
                  bltu         zero, t2, 174f
                  and          a3, t2, a7
                  bne          a4, s6, 165f
164:              xor          gp, s6, s5
165:              ori          t5, s4, -1553
                  ori          s0, s3, -26
                  sra          s2, t4, a2
                  slt          a7, a2, t0
                  srai         tp, a4, 22
                  and          a4, s1, ra
171:              sltiu        t5, t6, 857
                  xori         t5, t2, -1291
                  xori         a6, s6, 1218
174:              auipc        a3, 960666
                  andi         t1, a3, 504
                  sub          t5, t6, gp
                  sltiu        s0, s10, 418
                  blt          a1, s0, 186f
                  beq          zero, gp, 180f
180:              sltiu        zero, a0, 167
                  sll          t2, t5, tp
                  bge          a5, gp, 188f
                  slli         t6, s3, 1
                  sltu         a0, t1, a3
                  bge          t0, t4, 201f
186:              auipc        a0, 753803
                  srai         ra, t3, 29
188:              add          s8, s7, a3
                  sra          s4, gp, s0
                  bne          t3, zero, 210f
                  bgeu         t3, s5, 192f
192:              add          t6, a1, t6
                  lui          t1, 143016
                  sltu         s6, s4, s4
                  sub          sp, a4, s9
                  xor          t2, s9, t6
                  or           a6, t2, a7
                  andi         s9, a2, -1816
                  bge          a0, s9, 218f
                  ori          a7, ra, -365
201:              sltiu        s4, s7, -915
                  sra          s8, a7, t5
                  bne          s10, s3, 219f
                  srai         a0, ra, 28
                  ori          a6, gp, -1934
                  ori          s6, gp, 1877
                  or           sp, ra, tp
                  auipc        a6, 84406
                  slt          a3, s5, t4
210:              slti         a4, t0, 175
                  slti         s8, a0, 733
                  xor          t0, s11, s2
                  bge          t2, a4, 223f
                  blt          s2, a0, 229f
                  srl          s4, s2, t2
                  xor          s1, gp, t0
                  slt          a6, a1, s9
218:              sub          s3, s5, s0
219:              and          a0, s2, s2
                  and          s2, a5, s3
                  blt          tp, t5, 236f
                  xor          a4, s11, zero
223:              sub          s4, a5, zero
                  bgeu         s6, a0, 232f
                  or           t6, s11, t3
                  xor          t5, a1, a1
                  sll          t1, t1, s9
                  bge          s6, t3, 230f
229:              andi         tp, a7, 1166
230:              srai         a6, s10, 30
                  or           ra, t0, t2
232:              bne          a7, s3, 246f
                  slt          s11, s11, s1
                  sra          s4, t6, s3
                  slt          a3, t5, a7
236:              blt          t2, zero, 244f
                  sltiu        gp, a1, -1052
                  blt          s2, s8, 248f
                  xor          tp, a1, t5
                  sra          tp, s2, t6
                  xor          s0, a1, s5
                  sll          sp, zero, a5
                  lui          s2, 656071
244:              bge          t6, s6, 258f
                  lui          s3, 199446
246:              add          zero, s2, t2
                  slli         sp, ra, 27
248:              nop
                  xor          s11, sp, s7
                  andi         s1, t3, -865
                  sll          a4, t2, t6
                  sltu         t1, a2, t2
                  blt          a6, a0, 268f
                  and          t2, t2, gp
                  bne          s6, s2, 263f
                  sltiu        a6, s0, -1477
                  addi         sp, zero, -1031
258:              sll          s8, s11, s7
                  srli         tp, s3, 11
                  bge          a3, t5, 271f
                  beq          a7, s5, 263f
                  addi         tp, s11, -1677
263:              srli         a2, sp, 12
                  srai         s8, a7, 19
                  slli         s4, s9, 9
                  slt          t2, t6, a2
                  bltu         a7, s0, 278f
268:              auipc        s8, 14424
                  beq          a6, s11, 272f
                  or           s5, s10, s0
271:              auipc        s6, 833906
272:              bltu         t2, sp, 292f
                  xori         ra, s8, 1961
sub_1_1:          jal          ra, 1f
0:                jal          t1, 14f
1:                jal          ra, 10f
2:                jal          ra, 6f
3:                jal          t1, 12f
4:                jal          t1, 20f
5:                jal          t1, 4b
6:                jal          ra, 17f
7:                jal          s0, 8f
8:                jal          s1, 18f
9:                jal          a7, 13f
10:               jal          s4, 3b
11:               jal          t5, 15f
12:               jal          t1, 7b
13:               jal          t1, 0b
14:               jal          t0, 5b
15:               jal          ra, 19f
16:               jal          t1, 11b
17:               jal          t1, 16b
18:               jal          ra, 2b
19:               jal          s8, 9b
20:               sll          s8, t6, ra
                  sltiu        a6, sp, 718
                  sltu         s5, t5, a3
                  add          t6, t5, zero
                  auipc        zero, 324515
278:              srli         t5, s3, 29
                  auipc        gp, 923311
                  xor          zero, s4, a3
                  auipc        s9, 472092
                  nop
                  bgeu         a4, a2, 299f
                  sra          t0, t6, a5
                  sub          s9, s6, a0
                  and          s11, tp, zero
                  lui          a5, 186193
                  blt          s3, gp, 307f
                  bge          t4, a6, 299f
                  sra          t2, t4, t5
                  lui          zero, 876088
292:              add          t5, a6, a5
                  or           s9, s1, t1
                  beq          s0, s4, 296f
                  srl          t0, ra, s2
296:              sra          t1, a4, t2
                  blt          t0, s2, 311f
                  sub          s8, a5, a4
299:              srai         s3, t2, 15
                  bgeu         sp, t2, 302f
                  beq          s7, s9, 314f
302:              auipc        s10, 565857
                  beq          s0, s7, 304f
304:              bne          t0, s5, 319f
                  add          a0, s5, s1
                  andi         s6, a0, -493
307:              add          s3, s2, t4
                  bltu         s5, s7, 312f
                  addi         t5, t4, -346
                  slli         s8, zero, 18
311:              slt          t0, s1, t1
312:              sll          a2, zero, t1
                  srl          zero, sp, s11
314:              auipc        s0, 1044361
                  sltiu        s2, sp, -636
                  ori          a6, a3, -411
                  ori          s11, s1, 959
                  srli         t1, a2, 7
319:              sltiu        t6, a0, 832
                  blt          ra, t4, 333f
                  sltu         zero, t2, t0
                  bltu         zero, t2, 323f
323:              xori         zero, s0, -596
                  sltiu        t5, zero, 398
                  nop
                  and          s7, a2, t0
                  bgeu         s4, s0, 333f
                  sra          s9, a1, a5
                  bltu         s0, tp, 341f
                  beq          s9, s9, 338f
                  auipc        zero, 411571
                  or           s6, ra, t4
333:              lui          s3, 490627
                  bne          gp, a5, 342f
                  slt          a0, s11, a5
                  bgeu         a2, t6, 352f
                  srli         a7, t5, 27
338:              sll          gp, a2, s4
                  slti         a6, s10, 1225
                  bgeu         t1, s6, 347f
341:              sub          s0, t3, s9
342:              sra          sp, t6, a2
                  ori          ra, s10, 72
                  addi         a6, a0, -1594
                  lui          a0, 914634
                  auipc        t2, 722991
347:              slt          s10, s9, t2
                  bgeu         t6, a2, 349f
349:              addi         s6, t4, -1340
                  slt          s2, s9, s1
                  bge          s10, s1, 366f
352:              beq          t4, s5, 368f
                  auipc        s10, 106584
                  bltu         s5, s10, 356f
                  sra          a4, s8, a4
356:              add          t1, ra, s6
                  ori          s0, t1, 700
                  andi         s5, a0, 25
                  auipc        s4, 855434
                  srli         t1, a3, 21
                  sub          s1, t0, t1
                  beq          s0, a2, 382f
                  slt          a4, a6, t1
                  blt          t1, a0, 377f
                  blt          s11, a6, 375f
366:              srai         t2, s6, 14
                  slt          a5, a4, t3
368:              sra          s6, a2, s11
                  slli         t6, a0, 3
                  slli         a0, a6, 0
                  lui          s2, 565627
                  addi         t1, s10, -1825
                  srl          s10, ra, t4
                  andi         s3, gp, 5
375:              xor          t6, s3, s0
                  sra          t1, zero, s2
377:              srli         s5, s11, 30
                  lui          s8, 370368
                  beq          gp, s11, 390f
                  bltu         s2, s7, 390f
                  sltu         s10, t4, a1
382:              bne          gp, t0, 401f
sub_1_2:          jal          ra, 5f
0:                jal          t1, 2f
1:                jal          t1, 19f
2:                jal          a7, 13f
3:                jal          a4, 17f
4:                jal          s11, 0b
5:                jal          ra, 10f
6:                jal          ra, 20f
7:                jal          ra, 16f
8:                jal          s6, 18f
9:                jal          ra, 11f
10:               jal          t2, 14f
11:               jal          s11, 22f
12:               jal          t0, 21f
13:               jal          ra, 3b
14:               jal          ra, 1b
15:               jal          ra, 7b
16:               jal          a0, 9b
17:               jal          ra, 12b
18:               jal          a4, 4b
19:               jal          ra, 8b
20:               jal          ra, 15b
21:               jal          ra, 6b
22:               srai         s3, sp, 19
                  bne          a1, s10, 390f
                  beq          a7, t1, 385f
385:              blt          ra, sp, 387f
                  auipc        t0, 829453
387:              sltiu        s3, tp, 1107
                  addi         a6, a7, -66
                  sltu         s5, s10, zero
390:              slli         a6, s3, 26
                  slti         s4, a1, -922
                  andi         s5, a1, 1436
                  auipc        s8, 159676
                  slli         s11, t0, 6
                  sltu         s8, ra, s2
                  sra          s4, t6, a4
                  sll          zero, s5, t0
                  addi         t0, t2, -304
                  beq          s5, t1, 414f
                  bne          ra, t2, 408f
401:              auipc        s4, 697829
                  lui          a7, 516986
                  addi         s7, tp, -709
                  sub          t6, ra, s3
                  slli         a3, a3, 25
                  addi         s1, a4, -225
                  slt          s3, a5, s6
408:              andi         ra, t4, 1014
                  addi         a7, t3, -1812
                  bgeu         a5, s4, 426f
                  slli         ra, zero, 22
                  nop
                  xori         a0, t4, -1094
414:              or           a3, a0, s9
                  sub          t5, t6, tp
                  slti         s1, s7, -1079
                  or           t1, t5, t2
                  bgeu         zero, gp, 424f
                  sll          a6, t5, sp
                  addi         a7, a7, 257
                  slt          s8, s1, a4
                  or           tp, s8, t6
                  and          s0, s10, t5
424:              bltu         t4, s11, 425f
425:              and          sp, zero, s6
426:              srai         a4, t6, 4
                  and          s1, a3, s11
                  sub          s3, a5, t1
                  xori         s7, t1, -1849
                  blt          s4, t5, 438f
                  sra          s7, s11, s1
                  sub          s9, t4, gp
                  blt          a5, a0, 441f
                  xori         s4, a3, 1188
                  srl          s9, s10, s7
                  or           tp, t3, t3
                  bltu         t0, a5, 451f
438:              beq          tp, s1, 441f
                  slli         ra, ra, 10
                  addi         t5, t3, 1795
441:              slt          ra, a1, s8
                  add          tp, s11, s4
                  srai         a0, ra, 18
                  bltu         t2, s9, 448f
                  andi         s3, ra, -1406
                  bge          a5, s6, 461f
                  sltu         zero, a4, t3
448:              sltiu        gp, a4, -802
                  addi         a4, t1, 1712
                  xor          s4, s8, a3
451:              xor          s6, t4, t5
                  andi         s6, s10, 1416
                  bltu         a6, a6, 468f
                  slli         a2, s5, 13
                  or           s4, t5, tp
                  andi         s5, a0, 1673
                  and          s3, a1, ra
                  lui          s8, 879711
                  slli         gp, t3, 18
                  srai         sp, t2, 4
461:              slli         s9, s6, 10
                  blt          t2, zero, 463f
463:              sltu         t5, s5, sp
                  srai         s10, a7, 19
                  add          s3, s2, a2
                  slt          zero, s11, zero
                  xori         zero, a2, 257
468:              srli         zero, s3, 9
                  sltu         a0, gp, sp
                  bgeu         a1, a5, 472f
                  xor          ra, t6, t3
472:              sll          s6, s8, s5
                  addi         t6, s8, -1489
                  srl          ra, t0, s0
                  slli         a0, s8, 16
                  sll          t1, zero, s11
                  lui          a0, 270251
                  sll          ra, s4, t5
                  blt          a0, t0, 493f
                  slti         a5, t3, 933
                  andi         tp, s0, 814
                  slt          t6, a4, a7
                  ori          tp, tp, -1841
                  bltu         s10, t5, 496f
                  addi         s10, a6, -343
                  slti         tp, t6, 898
                  slli         a0, a0, 19
                  sltu         s9, ra, a4
                  auipc        s2, 419627
                  auipc        t2, 686038
                  auipc        a7, 596824
                  bge          t1, s6, 500f
493:              slt          s10, t0, gp
                  auipc        t1, 1018051
                  bne          s1, t3, 506f
496:              bgeu         s7, t3, 509f
                  xori         s5, s8, 1544
                  srl          a5, s8, a1
                  slli         s7, t5, 15
500:              addi         a2, a6, -1245
                  xori         t0, t2, -1177
                  andi         s5, a5, -1386
                  sra          s0, a2, a6
                  blt          s3, s8, 517f
                  blt          t3, t5, 507f
506:              sltu         a0, zero, a1
507:              blt          s5, s0, 513f
                  blt          sp, t0, 523f
509:              xori         s10, s0, -1336
                  srli         ra, s6, 20
                  slt          s7, t2, s11
                  srli         t0, a4, 12
513:              srl          s0, a4, t0
                  beq          a7, zero, 534f
                  and          t5, ra, a7
                  sra          s0, gp, s1
517:              bgeu         t3, gp, 528f
                  auipc        ra, 302077
                  blt          sp, a3, 527f
                  nop
                  sll          s1, s6, s5
                  xor          sp, s4, a7
523:              sra          s3, t6, t3
                  sra          s3, a0, tp
                  nop
                  add          t1, s1, t6
527:              sra          s2, s4, s0
528:              bltu         a2, sp, 539f
                  sltiu        s1, s3, -50
                  add          t2, t0, s7
                  sltiu        t6, s6, -394
                  slt          s9, s10, s0
                  bge          tp, t2, 537f
534:              auipc        s8, 285921
                  lui          s2, 78341
                  andi         t2, s3, 793
537:              slti         t0, s10, -658
                  srai         s4, a6, 20
539:              sltiu        t6, s4, 2003
                  srai         t6, s6, 13
                  and          ra, a3, s6
                  bltu         s6, t6, 558f
                  slli         zero, t4, 21
                  srai         s3, s0, 14
                  beq          s11, s9, 560f
                  slli         a4, a5, 25
                  or           s11, t4, s0
                  slt          s10, s6, zero
                  nop
                  sra          tp, t1, a1
                  beq          s4, a3, 553f
                  bgeu         s5, a7, 553f
553:              or           s6, s5, ra
                  bgeu         s9, a0, 562f
                  slti         ra, t1, 1872
                  sltiu        s6, t1, 317
                  sltiu        a7, a4, 602
558:              addi         s10, s7, 976
                  sll          a7, s8, tp
560:              or           s2, a4, s2
                  srai         s6, s6, 2
562:              srli         a2, sp, 20
                  add          s0, s9, s7
                  andi         s11, t5, 372
                  srli         s0, s11, 0
                  add          s8, tp, t4
                  blt          s0, s8, 574f
                  addi         t0, gp, -1560
                  or           a7, a6, a6
                  auipc        t6, 591285
                  blt          s10, sp, 572f
572:              srai         a6, a4, 13
                  xori         s0, s6, -1035
574:              sltiu        a6, t0, -1883
                  srl          gp, s2, s7
                  lui          t0, 323838
                  srli         s0, a6, 25
                  xor          t2, zero, s7
                  addi         a4, a4, -1194
                  lui          a6, 473029
                  bne          s7, t6, 589f
                  bgeu         a2, t4, 596f
                  auipc        s11, 78304
                  bltu         s11, s9, 594f
                  sll          s0, sp, s9
                  bge          s6, a5, 594f
                  and          s8, s11, t4
                  sub          s8, tp, s6
589:              blt          a1, s5, 603f
                  bne          a6, t1, 593f
                  srai         tp, s7, 23
                  bne          s8, s4, 611f
593:              sltu         s10, zero, a4
594:              xori         s7, s4, 1645
                  nop
596:              or           s11, a2, s0
                  bne          s11, s11, 610f
                  auipc        gp, 68943
                  bge          s10, a2, 614f
                  bgeu         s6, a1, 610f
                  slti         t5, s9, 1472
                  and          ra, a1, s7
603:              lui          s6, 944231
                  bge          zero, t2, 606f
                  sll          t2, sp, t0
606:              srli         a4, a5, 26
                  slti         s3, s3, 962
                  slt          s0, s0, ra
                  beq          t3, a0, 621f
610:              sltu         s0, t1, s2
611:              sll          s2, sp, a0
                  slt          a3, s11, s10
                  nop
614:              beq          s6, s1, 615f
615:              bgeu         sp, t6, 631f
                  bge          t0, t2, 622f
                  sll          a0, s11, zero
                  slti         t5, zero, -981
                  bltu         t4, tp, 629f
                  slti         s4, s0, 1415
621:              nop
622:              beq          t4, a1, 629f
                  auipc        s4, 23055
                  or           s6, tp, t5
                  blt          t2, a4, 641f
                  addi         t5, a5, -1193
                  blt          a3, t2, 628f
628:              srli         sp, ra, 8
629:              addi         tp, a4, 1813
                  srl          s4, gp, tp
631:              sltu         gp, tp, s7
                  slli         s10, s3, 19
                  xori         a6, t6, -2035
                  srai         a6, t2, 15
                  srl          t5, t1, t3
                  slt          s0, a5, t0
                  or           s8, s5, s3
                  xor          a5, s6, t2
                  or           a5, s6, s7
                  and          s7, a0, a5
641:              addi         a2, s3, -2034
                  slti         sp, a2, 1773
                  bltu         a1, a3, 657f
                  sub          t5, t5, a6
                  slti         a2, a2, -187
                  bltu         s7, t6, 654f
                  beq          a7, t5, 648f
648:              bltu         t0, a7, 651f
                  auipc        s11, 525037
                  xori         s10, a4, -819
651:              sltiu        s0, s0, -955
                  blt          a6, a0, 663f
                  sll          tp, a2, ra
654:              xor          s10, t0, t4
                  sll          a6, t0, s1
                  auipc        s7, 27075
657:              bge          a1, s8, 667f
                  srl          s10, a5, t6
                  or           t6, tp, s5
                  andi         s4, zero, 607
                  and          t5, s6, t3
                  sra          t5, ra, s11
663:              slli         t5, s11, 14
                  slti         gp, s1, -1265
                  bne          a7, a5, 670f
                  bge          s1, t5, 670f
667:              lui          t6, 760806
                  sltu         t5, s1, t2
                  xori         s10, zero, 868
670:              srl          tp, a7, s7
                  lw           ra, 4(a1)
                  slt          a5, s6, s7
                  addi         a1, a1, 52
                  sltu         s1, t5, a1
                  slti         s2, a7, -1330
                  or           a7, a0, s4
                  xor          t6, s7, ra
                  sra          s2, t5, s11
                  or           t0, t2, a4
                  add          a3, t3, t3
                  sll          s0, a0, sp
                  srli         s6, s8, 13
980:              addi x6, x1, 0
980:              jalr x6, x6, 0
sub_5:            sub          t6, ra, a7
                  ori          a6, s0, 1132
                  lui          s3, 397054
                  bne          s6, t4, sub_5_stack_p
                  srli         s2, t2, 0
sub_5_stack_p:    addi         a1, a1, -32
                  xor          s7, s2, a7
                  lui          tp, 479205
                  sub          a6, a1, t1
                  sw           ra, 4(a1)
                  sub          tp, t4, s5
                  ori          a4, s5, -45
                  srl          a7, s5, s3
sub_5_1:          jal          ra, 6f
0:                jal          a0, 9f
1:                jal          ra, 2f
2:                jal          t1, 3f
3:                jal          ra, 4f
4:                jal          ra, 11f
5:                jal          t1, 1b
6:                jal          ra, 8f
7:                jal          a6, 0b
8:                jal          ra, 5b
9:                jal          ra, 12f
10:               jal          s1, 7b
11:               jal          s5, 10b
12:               slli         a7, a1, 12
sub_5_0:          jal          ra, 5f
0:                jal          ra, 7f
1:                jal          tp, 10f
2:                jal          gp, 4f
3:                jal          ra, 1b
4:                jal          s4, 6f
5:                jal          ra, 9f
6:                jal          sp, 8f
7:                jal          t1, 3b
8:                jal          a4, 0b
9:                jal          ra, 2b
10:               auipc        s9, 965503
sub_5_2:          jal          ra, 19f
0:                jal          t1, 10f
1:                jal          ra, 7f
2:                jal          s3, 15f
3:                jal          s1, 17f
4:                jal          ra, 18f
5:                jal          ra, 21f
6:                jal          t1, 8f
7:                jal          ra, 14f
8:                jal          ra, 0b
9:                jal          ra, 2b
10:               jal          ra, 16f
11:               jal          ra, 20f
12:               jal          ra, 4b
13:               jal          t1, 3b
14:               jal          t1, 22f
15:               jal          s1, 6b
16:               jal          t1, 5b
17:               jal          gp, 12b
18:               jal          ra, 1b
19:               jal          s1, 11b
20:               jal          s1, 9b
21:               jal          t1, 13b
22:               ori          t2, s0, 1885
                  bge          t3, a3, 2f
                  bne          s3, a5, 20f
2:                or           a2, t5, s1
                  srai         a3, ra, 28
                  srai         zero, s4, 16
                  sub          t5, s2, s2
                  beq          a3, s3, 19f
                  ori          a2, s0, 800
                  sll          t0, t4, s11
                  srai         s9, s9, 3
                  sltiu        t5, gp, 434
                  and          sp, s1, s7
                  xor          s9, a1, ra
                  srli         t1, s8, 21
                  sub          tp, s8, t1
                  nop
                  srai         a7, s3, 12
                  blt          a5, zero, 23f
                  slt          t0, t5, t4
19:               or           t6, a4, s3
20:               sll          s3, a4, gp
                  xor          a7, a7, s7
                  slti         s9, s8, 878
23:               srl          sp, t0, a0
                  bltu         t6, a1, 28f
                  and          ra, t6, ra
                  bgeu         a1, t2, 27f
27:               bltu         gp, a4, 29f
28:               or           t1, s6, s1
29:               sub          s4, t0, s10
                  auipc        sp, 649931
                  srai         a7, s11, 17
                  sub          gp, s11, s2
                  sub          a4, s11, s6
                  ori          a2, s3, 279
                  srai         sp, sp, 9
                  sll          a7, a2, s10
                  srli         s11, a1, 28
                  srl          t1, s4, t5
                  auipc        a4, 286027
                  addi         t1, s1, -1005
                  or           s0, s3, a3
                  ori          s1, s10, 1978
                  sltu         s7, s1, t3
                  sltiu        s3, s4, -419
                  slli         t2, s1, 3
                  srai         gp, a0, 24
                  nop
                  nop
                  auipc        s8, 139120
                  srl          s3, sp, a5
                  srli         t2, a0, 13
                  or           a7, s10, s3
                  bge          t5, a3, 58f
                  srli         a4, s7, 31
                  xori         s5, s5, 1781
                  sltu         s9, a6, t4
                  or           a5, a1, gp
58:               blt          t0, a0, 75f
                  slti         s0, s0, 1235
                  srai         t6, a7, 13
                  andi         tp, t0, -922
                  xori         a0, gp, -229
                  and          s9, t4, t3
                  or           a3, s6, s0
                  bltu         s11, s11, 79f
                  blt          a4, a2, 80f
                  bge          s10, a1, 69f
                  slli         s9, tp, 0
69:               bne          a4, t6, 80f
                  add          a7, t4, zero
                  lui          t1, 690880
                  xori         a3, t1, 1240
                  bgeu         s2, s2, 87f
                  sltiu        a6, s6, -1586
75:               ori          gp, s0, -387
                  andi         a0, t1, -1326
                  bne          a3, t3, 91f
                  blt          a1, t4, 89f
79:               srai         t2, a1, 1
80:               addi         a4, s3, 1920
                  andi         a5, a6, -1290
                  add          sp, t1, s3
                  xor          t1, s3, s8
                  slli         zero, a3, 4
                  srai         s6, a0, 7
                  beq          s4, tp, 96f
87:               and          ra, t3, a0
                  slli         s2, t5, 31
89:               bne          s1, t3, 105f
                  addi         a5, t6, 1433
91:               srli         s0, t4, 30
                  addi         zero, s8, 703
                  and          t1, a2, a3
                  srl          a0, a7, tp
                  lui          t5, 582223
96:               sra          tp, s2, s3
                  and          s8, zero, t0
                  sltu         s7, t0, t3
                  sll          s2, t3, a1
                  sra          a6, s2, sp
                  nop
                  bge          t6, s10, 108f
                  ori          s0, a1, -1476
                  sra          s8, s3, gp
105:              or           t1, a4, s9
                  add          a5, a0, gp
                  sltu         t2, t3, a4
108:              nop
                  srai         s0, gp, 9
                  bgeu         a5, ra, 114f
                  or           a0, t1, t4
                  sltu         a3, s10, sp
                  xori         s4, s10, 100
114:              blt          s7, s5, 116f
                  sub          t1, t2, a7
116:              bne          a2, sp, 135f
                  auipc        s10, 173030
                  add          a5, s10, s9
                  sra          s6, s0, s11
                  or           s8, s1, t0
                  slti         a3, s8, -1623
                  xor          sp, s2, t6
                  addi         s5, s4, -808
                  andi         a3, a2, 1658
                  add          s2, ra, a0
                  and          t1, a3, sp
                  sltiu        s6, s9, -1966
                  lui          ra, 792517
                  nop
                  bgeu         a7, s9, 137f
                  srai         s0, a1, 5
                  sra          s8, zero, a3
                  auipc        t1, 60185
                  sub          s2, a6, t4
135:              blt          t3, s7, 152f
                  beq          t2, t1, 152f
137:              srl          zero, a3, s6
                  srli         t0, a7, 28
                  srl          a0, t3, a4
                  slti         s3, a3, 1539
                  beq          a2, gp, 142f
142:              srl          a5, sp, a3
                  andi         zero, s3, 350
                  nop
                  slti         a5, a6, 267
                  addi         s2, s3, 285
                  lui          a0, 736322
                  beq          a2, a3, 156f
                  blt          sp, s7, 156f
                  add          s6, s6, t1
                  srli         t1, t6, 18
152:              srai         s6, t2, 17
                  sll          s3, a2, s6
                  bgeu         s7, t5, 157f
                  srl          s1, ra, t4
156:              ori          a6, sp, -1860
157:              slti         s5, a3, 1686
                  auipc        t1, 51851
                  xor          a6, t1, sp
                  srai         t0, s4, 6
                  slli         gp, t6, 23
                  srli         s6, s7, 2
                  lw           ra, 4(a1)
                  xori         a7, tp, -733
                  slt          s10, a2, a1
                  addi         a1, a1, 32
                  auipc        s2, 479044
                  slti         zero, a7, -1432
232:              addi x20, x1, 1
232:              jalr x20, x20, 0
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_2:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_3:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_4:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_5:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_6:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_7:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_8:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_9:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_10:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_11:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_12:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_13:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_14:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_15:
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
                  add x28, x11, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x28, x11, zero
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x14, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x14, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x14, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x14, x24, ecall_handler
                  li x24, 0x1
                  beq x14, x24, instr_fault_handler
                  li x24, 0x5
                  beq x14, x24, load_fault_handler
                  li x24, 0x7
                  beq x14, x24, store_fault_handler
                  li x24, 0xc
                  beq x14, x24, pt_fault_handler
                  li x24, 0xd
                  beq x14, x24, pt_fault_handler
                  li x24, 0xf
                  beq x14, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x11, x28, zero
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
                  add x11, x28, zero
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
                  add x11, x28, zero
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
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x11, x28, zero
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
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x11, x28, zero
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
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x11, x28, zero
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
