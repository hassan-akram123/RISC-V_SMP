.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0xf03bb992
                  li x3, 0x0
                  li x4, 0x6
                  li x5, 0x5627a8e5
                  li x6, 0x0
                  li x7, 0x50374873
                  li x8, 0xfbb0e7b2
                  li x9, 0x8
                  li x10, 0xf9faa093
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0xfed27e5d
                  li x14, 0x9
                  li x15, 0x80000000
                  li x16, 0x73b298bd
                  li x17, 0x4
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x1
                  li x22, 0x80000000
                  li x23, 0xf80b2143
                  li x24, 0x0
                  li x25, 0x7512754
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x58e42ed1
                  li x29, 0x5
                  li x30, 0x0
                  la x31, user_stack_end
main:             jal          ra, 4f
0:                jal          t1, 6f
1:                jal          ra, 14f
2:                jal          t1, 8f
3:                jal          t1, 2b
4:                jal          ra, 12f
5:                jal          a0, 13f
6:                jal          a2, 1b
7:                jal          ra, 10f
8:                jal          ra, 9f
9:                jal          t1, 0b
10:               jal          ra, 5b
11:               jal          ra, 15f
12:               jal          a1, 3b
13:               jal          ra, 11b
14:               jal          ra, 7b
15:               jal          ra, 16f
16:               lui          s1, 305423
main_8:           jal          ra, 4f
0:                jal          ra, 11f
1:                jal          ra, 2f
2:                jal          t5, 5f
3:                jal          ra, 0b
4:                jal          t2, 7f
5:                jal          a1, 10f
6:                jal          ra, 8f
7:                jal          t1, 3b
8:                jal          ra, 12f
9:                jal          t5, 1b
10:               jal          ra, 6b
11:               jal          s7, 9b
12:               sra          a7, s7, sp
main_2:           jal          ra, 11f
0:                jal          ra, 25f
1:                jal          ra, 13f
2:                jal          ra, 12f
3:                jal          a7, 18f
4:                jal          ra, 23f
5:                jal          t0, 14f
6:                jal          ra, 0b
7:                jal          t1, 6b
8:                jal          t1, 17f
9:                jal          ra, 16f
10:               jal          tp, 4b
11:               jal          t1, 8b
12:               jal          t3, 20f
13:               jal          ra, 9b
14:               jal          ra, 27f
15:               jal          ra, 26f
16:               jal          ra, 22f
17:               jal          ra, 19f
18:               jal          ra, 5b
19:               jal          ra, 10b
20:               jal          gp, 15b
21:               jal          t1, 3b
22:               jal          ra, 7b
23:               jal          ra, 1b
24:               jal          s3, 21b
25:               jal          a4, 2b
26:               jal          ra, 24b
27:               slti         a4, a1, 1843
main_14:          jal          ra, 5f
0:                jal          t1, 11f
1:                jal          ra, 22f
2:                jal          ra, 18f
3:                jal          sp, 10f
4:                jal          t4, 1b
5:                jal          ra, 15f
6:                jal          ra, 16f
7:                jal          ra, 13f
8:                jal          s6, 14f
9:                jal          ra, 2b
10:               jal          sp, 21f
11:               jal          t1, 12f
12:               jal          ra, 7b
13:               jal          a1, 8b
14:               jal          ra, 4b
15:               jal          ra, 20f
16:               jal          ra, 3b
17:               jal          ra, 0b
18:               jal          t1, 19f
19:               jal          ra, 6b
20:               jal          t0, 9b
21:               jal          t3, 17b
22:               sub          t2, s6, s9
main_19:          jal          ra, 11f
0:                jal          ra, 12f
1:                jal          ra, 4f
2:                jal          ra, 9f
3:                jal          t1, 0b
4:                jal          ra, 7f
5:                jal          ra, 10f
6:                jal          tp, 5b
7:                jal          ra, 6b
8:                jal          t4, 14f
9:                jal          ra, 13f
10:               jal          t1, 3b
11:               jal          ra, 2b
12:               jal          tp, 8b
13:               jal          ra, 1b
14:               srl          s6, t0, t5
main_4:           jal          ra, 10f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          s6, 14f
3:                jal          ra, 15f
4:                jal          s7, 5f
5:                jal          s8, 13f
6:                jal          gp, 11f
7:                jal          t1, 1b
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          ra, 12f
11:               jal          ra, 9b
12:               jal          s7, 0b
13:               jal          ra, 6b
14:               jal          a3, 7b
15:               and          t0, t4, t6
main_0:           jal          ra, 1f
0:                jal          a1, 13f
1:                jal          ra, 3f
2:                jal          s6, 12f
3:                jal          ra, 4f
4:                jal          t1, 9f
5:                jal          t1, 14f
6:                jal          ra, 5b
7:                jal          ra, 6b
8:                jal          ra, 7b
9:                jal          t1, 10f
10:               jal          ra, 2b
11:               jal          a2, 0b
12:               jal          ra, 11b
13:               jal          s6, 8b
14:               jal          ra, 15f
15:               nop
main_10:          jal          ra, 3f
0:                jal          ra, 8f
1:                jal          t1, 18f
2:                jal          ra, 9f
3:                jal          s3, 7f
4:                jal          ra, 0b
5:                jal          tp, 13f
6:                jal          t1, 12f
7:                jal          ra, 15f
8:                jal          t1, 6b
9:                jal          a5, 14f
10:               jal          ra, 5b
11:               jal          a0, 20f
12:               jal          ra, 19f
13:               jal          ra, 17f
14:               jal          ra, 11b
15:               jal          ra, 4b
16:               jal          tp, 10b
17:               jal          s7, 1b
18:               jal          a4, 2b
19:               jal          ra, 16b
20:               sra          t5, s9, sp
main_6:           jal          ra, 1f
0:                jal          ra, 13f
1:                jal          s9, 6f
2:                jal          s7, 14f
3:                jal          ra, 5f
4:                jal          s8, 0b
5:                jal          a3, 2b
6:                jal          s4, 11f
7:                jal          s10, 4b
8:                jal          t1, 3b
9:                jal          a0, 10f
10:               jal          ra, 12f
11:               jal          ra, 9b
12:               jal          ra, 7b
13:               jal          s10, 8b
14:               slt          a0, s2, a7
main_11:          jal          ra, 17f
0:                jal          ra, 11f
1:                jal          ra, 16f
2:                jal          s1, 4f
3:                jal          ra, 15f
4:                jal          a2, 19f
5:                jal          t1, 12f
6:                jal          t2, 7f
7:                jal          t1, 13f
8:                jal          tp, 1b
9:                jal          sp, 0b
10:               jal          s8, 2b
11:               jal          ra, 10b
12:               jal          ra, 3b
13:               jal          t1, 20f
14:               jal          ra, 18f
15:               jal          ra, 8b
16:               jal          gp, 6b
17:               jal          t1, 9b
18:               jal          ra, 5b
19:               jal          a4, 14b
20:               sub          s9, s2, a4
main_13:          jal          ra, 14f
0:                jal          s10, 5f
1:                jal          s0, 4f
2:                jal          ra, 23f
3:                jal          ra, 15f
4:                jal          ra, 2b
5:                jal          sp, 7f
6:                jal          t1, 11f
7:                jal          t1, 12f
8:                jal          ra, 13f
9:                jal          tp, 10f
10:               jal          ra, 3b
11:               jal          sp, 18f
12:               jal          ra, 16f
13:               jal          t1, 17f
14:               jal          ra, 21f
15:               jal          ra, 19f
16:               jal          ra, 22f
17:               jal          ra, 0b
18:               jal          s4, 8b
19:               jal          ra, 6b
20:               jal          ra, 1b
21:               jal          t1, 9b
22:               jal          s3, 20b
23:               or           zero, s10, gp
main_16:          jal          ra, 0f
0:                jal          ra, 12f
1:                jal          ra, 14f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          ra, 1b
5:                jal          ra, 7f
6:                jal          ra, 3b
7:                jal          t1, 8f
8:                jal          ra, 15f
9:                jal          ra, 4b
10:               jal          ra, 13f
11:               jal          ra, 2b
12:               jal          ra, 11b
13:               jal          ra, 6b
14:               jal          ra, 5b
15:               slli         s7, a3, 30
main_1:           jal          ra, 18f
0:                jal          ra, 15f
1:                jal          ra, 20f
2:                jal          t1, 7f
3:                jal          ra, 6f
4:                jal          ra, 13f
5:                jal          ra, 22f
6:                jal          s3, 17f
7:                jal          s10, 8f
8:                jal          ra, 19f
9:                jal          s0, 16f
10:               jal          a2, 1b
11:               jal          ra, 5b
12:               jal          sp, 24f
13:               jal          ra, 12b
14:               jal          t1, 21f
15:               jal          ra, 25f
16:               jal          ra, 23f
17:               jal          ra, 26f
18:               jal          t1, 9b
19:               jal          t1, 11b
20:               jal          gp, 2b
21:               jal          a5, 3b
22:               jal          ra, 14b
23:               jal          ra, 0b
24:               jal          t1, 10b
25:               jal          ra, 4b
26:               add          a7, a2, s8
main_15:          jal          ra, 6f
0:                jal          ra, 2f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          ra, 0b
4:                jal          gp, 8f
5:                jal          t1, 4b
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          ra, 1b
9:                jal          ra, 5b
10:               xor          s9, a2, s7
main_17:          jal          ra, 7f
0:                jal          t0, 23f
1:                jal          t1, 16f
2:                jal          ra, 0b
3:                jal          ra, 14f
4:                jal          a2, 3b
5:                jal          sp, 6f
6:                jal          ra, 10f
7:                jal          ra, 5b
8:                jal          ra, 18f
9:                jal          s5, 21f
10:               jal          ra, 20f
11:               jal          s1, 9b
12:               jal          ra, 1b
13:               jal          a4, 15f
14:               jal          ra, 12b
15:               jal          ra, 8b
16:               jal          ra, 13b
17:               jal          t1, 4b
18:               jal          t1, 19f
19:               jal          t1, 2b
20:               jal          ra, 11b
21:               jal          a2, 22f
22:               jal          t1, 17b
23:               auipc        s4, 868664
                  xor          s1, s5, t3
                  lui          ra, 472653
                  slt          a0, gp, s9
                  srl          a0, s2, t1
                  bltu         gp, s10, 23f
                  slli         s6, s9, 13
                  xori         s1, a4, -1482
                  slti         a6, t5, -538
                  srai         a2, a4, 7
                  sltiu        s8, t3, -1142
                  xori         t5, t3, -1248
                  slli         sp, t1, 17
                  sltiu        s7, s10, -345
                  ori          gp, s2, 1326
                  sll          s8, a0, a2
                  auipc        a6, 863376
                  slt          a4, a5, s9
                  bgeu         t0, t4, 24f
                  slti         t2, t6, -1942
                  sltu         a5, t2, a3
                  nop
                  srli         zero, a6, 17
                  and          tp, a3, a1
23:               srai         a6, t0, 24
24:               xori         t5, t2, -1443
                  srl          ra, t2, t3
                  add          s9, sp, t5
                  add          s3, ra, s0
                  sltiu        tp, t4, -1333
                  sltu         a3, t3, s11
                  srl          s3, tp, s8
                  auipc        a7, 160498
                  srl          s8, t6, t5
                  srli         tp, s8, 10
                  nop
                  and          ra, a7, a1
                  srli         a5, s3, 9
                  bltu         a0, s10, 54f
                  srai         tp, gp, 1
                  xor          s3, t5, gp
                  srli         a3, a7, 25
                  bge          a3, sp, 53f
                  sll          s4, gp, a4
                  add          a7, s0, t6
                  ori          a3, s3, -1252
                  sra          s7, a7, s10
                  lui          ra, 102405
                  srli         s1, a5, 0
                  xori         s3, t5, 1735
                  srli         a7, s11, 16
                  beq          t4, t4, 55f
                  sltu         s8, t4, tp
                  ori          s6, a5, 20
53:               sll          s0, a3, sp
54:               or           a2, s7, zero
55:               blt          s7, s9, 58f
                  slti         a4, t6, -1341
                  slli         s7, sp, 14
58:               bltu         s11, s4, 65f
                  sll          a1, s2, a6
                  ori          s0, t6, 1440
                  add          a5, tp, tp
                  add          a6, t1, a0
                  sltu         s4, s1, tp
                  bne          t0, a2, 75f
65:               srli         t1, t0, 19
                  ori          s6, a4, 1580
                  bne          t5, a7, 74f
                  lui          t2, 67953
                  slt          s0, tp, s0
                  sll          t5, s4, a4
                  nop
                  lui          s1, 751354
                  xor          tp, t5, t6
74:               lui          a4, 247458
75:               bgeu         tp, t6, 77f
                  slti         a6, a0, -750
77:               auipc        zero, 395915
                  srai         t0, a0, 10
                  slti         s3, s7, 863
                  sub          t2, ra, a3
                  addi         a2, a3, 1577
                  sltiu        a6, a1, 1788
                  nop
                  slt          s8, ra, t6
                  slti         s5, zero, 452
                  lui          a3, 12514
                  bltu         gp, a5, 94f
                  srli         t3, a7, 19
                  srli         a5, t3, 15
                  sub          s4, a7, a6
                  lui          sp, 909767
                  auipc        s5, 671270
                  sub          a4, a1, s4
94:               bge          s3, t4, 111f
                  slt          a2, a0, s0
                  slti         a4, zero, -587
                  bge          a6, t1, 108f
                  addi         zero, s8, 1882
                  bge          s8, sp, 100f
100:              sltu         a4, zero, s1
                  xori         s3, t5, 931
                  xori         a7, t1, -607
                  or           zero, s6, sp
                  bge          a5, s3, 121f
                  blt          a3, gp, 125f
                  slt          s3, a0, sp
                  bne          sp, s0, 120f
108:              slt          a7, s5, s9
                  ori          a1, s8, 896
                  slti         a7, s1, 827
111:              blt          a0, a5, 127f
                  and          t1, tp, a3
                  sll          gp, s2, tp
                  srl          a2, s6, a7
                  xor          s10, gp, a7
                  bltu         t0, tp, 127f
                  slli         a0, ra, 2
                  nop
                  beq          t1, t1, 139f
120:              bne          s0, s7, 124f
121:              andi         s7, s1, 1802
                  and          s4, a6, t0
                  slti         s7, a5, -206
124:              sltiu        zero, sp, 315
125:              bgeu         s10, s1, 136f
                  addi         t1, t6, -1567
127:              xori         s1, s7, 674
                  xori         sp, s4, -1594
                  beq          s10, s5, 142f
                  xori         t5, tp, -217
                  ori          a6, t0, -1986
                  slli         a3, zero, 13
                  bltu         t2, t6, 142f
                  srai         sp, s7, 21
                  auipc        gp, 814175
136:              slli         a7, s5, 17
                  sltiu        t4, a7, 983
                  sra          s6, s3, s9
139:              srai         a0, s10, 31
                  slt          t1, a1, a0
                  sltiu        t0, s11, 1380
142:              andi         s10, s6, -1162
                  slt          s6, ra, s11
                  andi         a2, t3, -946
                  sub          a7, s4, t3
                  blt          s4, s6, 160f
                  srli         a2, t3, 8
                  auipc        s9, 924634
                  slli         s4, s4, 1
                  addi         t4, t0, -1747
                  and          a5, a7, a7
                  and          s0, s8, a0
                  sra          t2, a3, tp
                  nop
                  slt          a3, s8, a2
                  beq          t3, a1, 176f
                  sub          t5, t2, a0
                  sll          a6, t3, ra
                  bge          s10, t3, 166f
160:              addi         a5, t1, -1374
                  beq          t1, t1, 172f
                  sra          s4, sp, a1
                  auipc        gp, 64325
                  bne          gp, s2, 182f
                  nop
166:              add          s3, a2, a2
                  blt          t3, s10, 171f
                  sltu         gp, s2, s3
                  addi         a2, s5, -1242
                  lui          a6, 780307
171:              srli         a3, s3, 25
172:              andi         s7, sp, 1837
                  bne          ra, a1, 177f
                  auipc        s8, 377940
                  blt          t4, t1, 192f
176:              srai         s7, s3, 21
177:              sra          t0, s9, s10
                  bgeu         a1, a3, 189f
                  beq          a3, a7, 197f
                  beq          a6, t5, 187f
                  srli         s8, a1, 19
182:              lui          t2, 635138
                  and          t4, sp, a5
                  sll          a4, a7, ra
                  bltu         a5, t0, 186f
186:              slt          tp, t5, s1
187:              slti         sp, s6, 1576
                  sub          t3, s7, s3
189:              nop
                  slli         sp, a7, 17
                  or           s7, a1, zero
192:              srai         a2, t4, 7
                  sub          s7, s2, s3
                  srai         s1, s8, 1
                  beq          s3, s2, 206f
                  srli         t2, a1, 4
197:              or           a3, t1, s11
                  xor          t4, t5, ra
                  slli         s6, s9, 0
                  slt          t1, t5, t0
                  xori         s10, s10, 615
                  blt          s0, t4, 206f
                  slli         ra, a6, 5
                  bge          ra, a2, 217f
                  nop
206:              sll          s1, s8, s9
                  slt          s4, s1, a7
                  lui          s5, 600317
                  addi         t3, gp, 28
                  and          s0, tp, zero
                  and          a0, s1, t3
                  nop
                  slt          a2, t3, t3
                  sll          ra, t4, a6
                  slt          a1, a1, t6
                  sub          a5, sp, s1
217:              bge          t4, a6, 220f
                  add          a0, s9, s1
                  beq          s10, t6, 226f
220:              slli         t1, a7, 15
                  slli         zero, t3, 11
                  or           s6, s7, s1
                  add          s4, s6, a0
                  beq          tp, gp, 229f
                  lui          s0, 719315
226:              bltu         tp, a6, 246f
                  slti         sp, a6, -1804
                  blt          s0, s3, 247f
229:              beq          t1, t1, 231f
                  andi         s5, s6, -1062
231:              and          a1, a4, a5
                  slti         a6, a6, -1249
                  blt          a1, s9, 240f
                  srli         s5, a7, 21
                  bne          t4, s4, 255f
                  add          a7, t0, t3
                  add          s4, s11, t1
                  bgeu         s0, ra, 245f
                  sll          a3, s11, a7
240:              and          a5, sp, t5
                  beq          s6, a2, 257f
                  bgeu         t6, t6, 251f
                  sll          a4, s1, s6
                  and          s10, s9, s7
245:              slt          a6, s1, a4
246:              nop
247:              auipc        t5, 203215
                  sltu         s10, s4, s0
                  nop
                  sltu         a2, s5, s6
251:              bge          a4, a1, 258f
                  nop
                  slti         a3, a4, 453
                  xori         gp, a6, -655
255:              or           gp, s5, a4
                  srli         t1, s9, 11
257:              slti         t0, a3, -1071
258:              slti         s5, s7, -668
                  and          t1, a2, t6
                  srl          a1, s11, s5
                  or           tp, s10, s6
                  sll          a0, s4, s0
                  ori          s3, s8, -546
                  sltiu        tp, a3, -363
                  xor          s0, a6, s1
                  sltiu        tp, s3, -1072
                  or           s9, a0, s0
                  lui          s5, 885135
                  sltiu        sp, t2, 1606
                  xori         s3, s1, 636
                  sltu         s9, t1, t2
                  sltu         s5, t3, a3
                  nop
                  sll          s7, t1, s7
                  srai         s4, s8, 1
                  slli         a6, s3, 10
                  or           t3, s10, s1
                  srli         t0, a2, 18
                  bne          s0, a7, 293f
                  bgeu         zero, a2, 291f
                  sub          ra, s10, s9
                  andi         t1, t0, -435
                  srli         sp, t4, 25
                  srl          t2, a0, a4
                  add          a0, a3, sp
                  auipc        sp, 65713
                  ori          s6, t4, 1679
                  bltu         s10, a5, 299f
                  xori         s5, s3, -1379
                  bltu         a7, t2, 302f
291:              addi         a1, s6, 1277
                  andi         a5, tp, -242
293:              xor          s4, s3, a2
                  slt          zero, t3, s5
                  bgeu         s7, s5, 308f
                  andi         a0, s9, -1519
                  bge          a0, t3, 308f
                  slt          s8, a3, t6
299:              nop
                  sltiu        ra, a6, -34
                  sra          a0, zero, a7
302:              slt          a5, a7, a5
                  beq          t0, tp, 320f
                  srai         a4, zero, 8
                  andi         s6, t1, -1912
                  lui          t1, 843817
                  bltu         s4, s3, 327f
308:              srai         s4, a6, 10
                  slli         t1, gp, 5
                  xori         gp, zero, -1649
                  bge          gp, s10, 328f
                  slli         a2, a4, 26
                  slli         a4, s7, 16
                  srl          ra, s7, s7
                  sll          t5, s7, s2
                  slti         a3, gp, -540
                  slt          t3, t6, a2
                  and          a0, t5, s6
                  slti         s6, gp, -251
320:              and          s5, s8, s4
                  or           a2, a7, t0
                  srai         s3, s9, 31
                  xori         a3, a3, -1827
                  sltu         a2, a0, s4
                  addi         s1, t4, 477
                  slti         t0, s9, 1476
327:              sub          s9, s2, s9
328:              auipc        a4, 700114
                  srl          s1, s0, s3
                  bge          a7, a2, 347f
                  sub          s0, a1, gp
                  xor          s6, a3, zero
                  blt          s8, a6, 352f
                  andi         t0, s2, -1482
                  sub          a3, ra, s7
                  andi         s0, a5, 960
                  ori          a6, t2, -1687
                  andi         s7, sp, 1286
                  slt          s3, sp, t1
                  blt          t0, s4, 342f
                  andi         a1, s4, -617
342:              srli         s7, sp, 20
                  addi         a5, s1, 844
                  sltiu        a4, sp, -1044
                  sll          zero, a0, a2
                  bge          t4, sp, 363f
347:              srai         t3, t0, 19
                  and          s9, sp, s4
                  srli         a5, s8, 1
                  bltu         s7, a0, 364f
                  nop
352:              slt          s10, s3, s7
                  sltu         gp, a0, t3
                  sltiu        ra, t4, -1506
                  slli         tp, a1, 26
                  addi         ra, a3, 184
                  andi         s6, ra, 807
                  bltu         s3, sp, 369f
                  or           zero, a1, a2
                  auipc        t0, 473795
                  slt          t0, s7, t0
                  addi         a2, a3, 761
363:              sll          a2, s8, a1
364:              auipc        a0, 312849
                  nop
                  srai         tp, zero, 7
                  sra          s3, a5, t6
                  sub          s10, gp, s3
369:              auipc        a6, 247491
                  srai         t0, s10, 7
                  andi         zero, s6, 1865
                  ori          a5, s2, 266
                  sltiu        s8, gp, -329
                  xor          s10, s8, a1
                  or           a0, tp, s3
                  and          a0, s0, t0
                  sltiu        t0, a7, -1140
                  sll          zero, s8, t5
                  srli         a2, s8, 23
                  and          t0, s0, t0
                  and          s6, s5, tp
                  srli         s4, a1, 2
                  xori         sp, t2, -1632
main_18:          jal          ra, 9f
0:                jal          t1, 16f
1:                jal          ra, 10f
2:                jal          ra, 30f
3:                jal          ra, 17f
4:                jal          tp, 13f
5:                jal          t1, 21f
6:                jal          t1, 29f
7:                jal          a5, 27f
8:                jal          t1, 14f
9:                jal          s6, 23f
10:               jal          t1, 11f
11:               jal          t1, 19f
12:               jal          ra, 26f
13:               jal          ra, 6b
14:               jal          a6, 3b
15:               jal          t1, 22f
16:               jal          ra, 7b
17:               jal          t0, 4b
18:               jal          s8, 20f
19:               jal          t1, 24f
20:               jal          a7, 25f
21:               jal          sp, 1b
22:               jal          t1, 2b
23:               jal          t3, 0b
24:               jal          s4, 12b
25:               jal          ra, 5b
26:               jal          ra, 8b
27:               jal          ra, 18b
28:               jal          ra, 15b
29:               jal          ra, 28b
30:               xori         a4, a5, -1476
                  slli         s3, t3, 14
                  ori          gp, s10, 648
                  blt          t1, a5, 402f
                  lui          t0, 222856
                  blt          t3, s11, 399f
                  slti         tp, t5, 712
                  addi         a5, t2, 2019
                  slli         a5, a4, 11
                  or           s4, a2, t0
                  sltu         s3, s2, zero
                  add          s7, a3, s8
                  bgeu         a2, t2, 407f
                  auipc        a0, 407689
                  and          s10, tp, a7
                  sll          s9, s11, a3
399:              sll          s5, a6, s5
                  sltiu        a7, a6, 525
                  xor          zero, sp, tp
402:              slt          t0, a6, s4
                  bgeu         tp, t2, 410f
                  sltu         s1, s0, t1
                  slt          gp, ra, zero
                  add          s1, s7, a2
407:              srai         a3, s0, 6
                  srli         s5, s5, 12
                  addi         zero, s11, -1533
410:              bne          a4, s7, 413f
                  or           t5, a5, tp
                  bne          t2, s5, 432f
413:              sltiu        gp, s3, -1696
                  addi         a1, s3, 673
                  add          t1, zero, s8
                  sub          s10, t0, s10
                  bne          a1, gp, 428f
                  beq          s2, t6, 438f
                  srai         t2, t4, 23
                  xori         t2, a4, 1745
                  beq          s5, s11, 434f
                  and          a2, s10, a6
                  bge          a5, ra, 424f
424:              xor          s5, s5, s1
                  addi         t3, s5, -1374
                  slti         s5, t4, -11
                  slt          s4, s8, s9
428:              bltu         s8, s5, 433f
                  andi         s5, a0, 716
                  xori         t2, s1, -1589
                  and          s5, s1, s7
432:              ori          s7, t5, 1077
433:              sltiu        t3, s9, 1809
434:              or           s0, gp, s1
                  or           s0, t0, s7
                  sltu         sp, s11, tp
                  addi         s8, t2, 1914
438:              slt          a7, s1, zero
                  andi         s3, a3, -497
                  andi         gp, a3, -1304
                  auipc        sp, 569020
                  bge          t3, gp, 453f
                  bne          s3, s3, 456f
                  srl          a1, s4, t5
                  srl          zero, t0, a3
                  srai         t5, a0, 5
                  slli         s9, s5, 29
                  bgeu         t0, s6, 455f
                  srl          a6, a5, s7
                  blt          t1, gp, 457f
                  bltu         s2, s11, 462f
                  slli         s5, zero, 19
453:              or           s4, s10, zero
                  addi         a5, s11, 601
main_7:           jal          ra, 2f
0:                jal          ra, 17f
1:                jal          ra, 20f
2:                jal          t1, 9f
3:                jal          ra, 11f
4:                jal          ra, 5f
5:                jal          ra, 21f
6:                jal          t1, 28f
7:                jal          t1, 18f
8:                jal          tp, 14f
9:                jal          ra, 7b
10:               jal          s0, 24f
11:               jal          a0, 26f
12:               jal          t5, 4b
13:               jal          ra, 23f
14:               jal          s10, 10b
15:               jal          a3, 27f
16:               jal          a2, 22f
17:               jal          ra, 12b
18:               jal          s4, 15b
19:               jal          t1, 8b
20:               jal          ra, 0b
21:               jal          ra, 13b
22:               jal          t1, 19b
23:               jal          ra, 6b
24:               jal          ra, 3b
25:               jal          ra, 16b
26:               jal          a0, 1b
27:               jal          tp, 25b
28:               sll          tp, s4, t5
455:              blt          t1, s2, 462f
456:              andi         s6, tp, 1921
457:              blt          a1, a7, 466f
                  bgeu         t5, tp, 476f
                  xori         tp, s4, 1490
                  bge          s9, s5, 480f
                  srli         s8, s1, 1
462:              bltu         s0, s9, 466f
                  auipc        ra, 812155
                  bge          t5, s4, 471f
                  or           sp, s8, a4
466:              auipc        s8, 565979
                  add          zero, s1, s3
                  bne          a2, sp, 472f
main_5:           jal          ra, 2f
0:                jal          t1, 16f
1:                jal          ra, 7f
2:                jal          ra, 12f
3:                jal          t1, 0b
4:                jal          ra, 5f
5:                jal          a0, 14f
6:                jal          tp, 9f
7:                jal          ra, 13f
8:                jal          ra, 3b
9:                jal          ra, 10f
10:               jal          ra, 4b
11:               jal          t3, 15f
12:               jal          gp, 1b
13:               jal          ra, 11b
14:               jal          t1, 8b
15:               jal          t1, 6b
16:               lui          t3, 507841
                  addi         s8, s11, 1513
                  and          gp, t1, sp
471:              sub          a7, sp, t0
472:              bgeu         a7, s6, 489f
                  blt          s9, a1, 490f
                  bne          a7, s4, 485f
                  sltiu        s8, t6, -2033
476:              slli         t0, a6, 25
                  bgeu         s8, s3, 484f
                  add          s0, a6, zero
                  andi         t5, s7, 1724
480:              slt          gp, t3, t1
                  auipc        a6, 629258
                  sra          s1, t4, s2
                  or           a4, t1, s11
484:              slti         gp, s11, -1311
485:              srl          t4, s7, s6
                  srli         s5, s6, 2
                  or           t5, a4, s11
                  bltu         s1, s3, 508f
489:              slti         s1, s7, 766
490:              or           s5, s6, a7
                  bgeu         s10, a2, 500f
                  xor          tp, s2, t2
                  bge          ra, t4, 506f
                  sll          a1, a1, t5
                  sltiu        a7, a1, -1060
                  srl          t1, s3, sp
                  auipc        a2, 86302
                  or           a3, t0, s4
                  addi         a1, t2, -1638
500:              sra          t0, t4, s0
                  sub          s4, t4, t0
                  bge          t5, s11, 519f
                  beq          a2, s3, 517f
                  bne          a7, t2, 515f
                  lui          t4, 510868
506:              sltu         t4, s5, s10
                  bltu         s0, t5, 514f
508:              sll          a1, a2, tp
                  beq          t1, s9, 516f
                  bge          s5, a6, 511f
511:              and          a0, tp, sp
                  bge          ra, ra, 524f
                  beq          a1, s8, 526f
514:              bltu         s0, a6, 521f
515:              slli         s0, s5, 19
516:              blt          gp, s10, 527f
517:              srl          s1, s3, a6
                  and          s1, t3, s6
519:              bne          a5, gp, 530f
                  ori          sp, t0, 1031
521:              sub          s9, s7, t3
                  add          a3, s7, t0
                  sltiu        s6, s11, -1769
524:              nop
                  ori          a4, zero, 1623
526:              xor          s0, s6, a2
527:              and          t1, t1, a5
                  srli         s9, sp, 19
                  sltiu        s6, a2, 679
530:              bgeu         s1, s7, 548f
                  bge          t3, t1, 551f
                  bne          a0, t1, 536f
                  auipc        a5, 112322
                  srl          t0, a0, s4
                  sra          t1, gp, s7
536:              xor          s5, a6, t1
                  or           s9, s4, t3
                  bne          s0, t4, 542f
                  sll          s8, s4, a6
                  beq          s8, a1, 547f
                  nop
542:              slli         s1, s9, 4
                  add          s1, s7, s1
                  sub          t3, s7, s2
                  srli         t3, s1, 9
                  srl          a4, s1, s2
547:              or           s8, s10, s6
548:              lui          s3, 431310
                  sll          a4, t1, zero
                  bge          sp, s9, 569f
551:              slt          s7, a4, t6
                  lui          sp, 284019
                  auipc        a7, 457203
                  beq          s6, t1, 570f
                  srli         s6, t6, 29
                  sltiu        s10, a1, 1591
                  slli         s1, a3, 1
                  xori         a2, a1, -1043
                  xor          s3, s7, a1
                  srl          t4, a2, s6
                  sub          a2, s9, t6
                  srai         s7, s5, 26
                  srli         a3, s3, 0
                  bgeu         s2, s6, 569f
                  sub          t3, t5, t5
                  srli         ra, s3, 12
                  sll          a2, s5, a7
                  bge          s10, t3, 579f
569:              sra          s9, t2, a6
570:              slli         s10, tp, 18
                  ori          t5, t6, -141
                  slt          s9, s0, s7
                  lui          s3, 917734
                  and          t0, s1, t5
                  srl          t1, a7, ra
                  or           t5, s6, s9
                  nop
                  auipc        t4, 728809
                  sll          t3, s0, a6
                  la           a7, sub_1
                  slt          s6, s11, t2
                  srl          a1, sp, s3
                  addi         a7, a7, -187
                  srai         sp, s4, 18
main_j2:          jalr         ra, a7, 187 #jump main -> sub_1
                  srl          s4, s3, t3
                  sub          a1, t4, s10
                  sltu         a6, s0, a6
                  bgeu         a4, t1, 579f
                  sll          t0, s2, s9
                  srai         a1, t2, 17
579:              beq          a0, a0, 599f
                  bge          a2, s9, 582f
                  beq          a1, s11, 598f
582:              xori         t3, ra, 993
                  bge          sp, ra, 592f
                  srl          s10, t2, zero
                  bne          s2, t5, 586f
586:              or           s0, t3, t1
                  bge          s3, a7, 594f
                  sltiu        s9, s6, 982
                  ori          t3, s1, -1070
                  bltu         s4, a4, 607f
                  bltu         t3, a5, 598f
592:              xor          a6, s2, t5
                  srai         sp, a0, 28
594:              slt          a2, a5, a1
                  and          t3, s0, a0
                  auipc        t1, 51032
                  lui          a6, 519394
598:              lui          a5, 505891
599:              ori          s9, a3, 1527
                  slt          a2, t4, a1
                  srli         tp, s3, 8
                  sub          a5, t6, t4
                  bltu         s6, gp, 616f
                  sltiu        t4, ra, -1911
                  lui          s10, 466006
                  slli         tp, a2, 0
607:              srl          a7, s4, a7
                  auipc        s6, 227880
                  sll          t0, sp, s5
                  sll          zero, a4, s11
                  nop
                  blt          a5, s11, 629f
                  slli         s10, a7, 9
                  slli         t1, a1, 13
                  auipc        t5, 598235
                  andi         s7, t6, 651
                  srl          t5, ra, s10
                  sub          s10, s10, a6
                  la           a3, sub_1
                  srli         a5, s11, 22
                  addi         a3, a3, 280
                  addi         s5, a4, 112
main_j1:          jalr         ra, a3, -280 #jump main -> sub_1
                  srai         s1, a6, 22
616:              srl          s6, t3, gp
                  bge          a4, s7, 624f
                  lui          s0, 554561
                  srl          t1, s9, s6
                  blt          t4, sp, 636f
                  sll          t1, s11, s5
                  beq          t3, a6, 633f
                  bltu         t4, s7, 627f
624:              beq          s3, t0, 643f
                  sra          ra, t6, a7
                  nop
627:              xor          a7, sp, zero
                  bltu         a6, sp, 633f
629:              sltu         t2, t5, a1
                  slti         a1, a3, -1669
                  and          t2, t6, zero
                  bne          s2, s2, 643f
633:              sub          s8, s5, zero
                  nop
                  bge          a1, a6, 655f
636:              slt          s5, t5, ra
                  or           gp, s10, a3
                  and          zero, t5, t1
                  lui          t2, 564670
                  beq          a4, s3, 647f
                  slt          gp, s0, s6
                  auipc        s9, 995441
643:              nop
                  bne          t1, a7, 662f
                  bge          sp, s4, 652f
                  xori         t1, s5, 1041
647:              bne          a0, t6, 661f
                  beq          t3, a7, 661f
                  srli         t0, s5, 18
                  srli         a1, s1, 4
                  srli         a2, sp, 11
652:              slti         a2, s6, -1697
                  blt          gp, s8, 664f
                  srli         s8, s2, 27
655:              add          gp, ra, s0
                  slli         s10, sp, 2
                  auipc        a2, 979271
                  sltiu        s5, t5, -966
                  bne          gp, t4, 679f
                  srai         s8, s6, 21
661:              bge          t0, s4, 681f
662:              lui          s0, 460153
                  sll          a5, t4, s2
664:              andi         a5, t1, -599
                  bltu         s8, s0, 676f
                  sltu         t0, s1, s1
                  and          a2, a6, s2
                  blt          t5, s8, 685f
                  bltu         s11, t2, 680f
                  bltu         a1, zero, 674f
                  srli         t1, a3, 10
                  sll          s7, s5, a3
                  xor          ra, s5, s3
674:              slli         gp, s2, 27
                  auipc        a2, 245973
676:              slt          sp, s2, s7
                  srai         s6, zero, 3
                  auipc        t3, 931891
679:              sltiu        t2, s2, -465
680:              slli         a0, a5, 15
681:              bltu         a5, t5, 693f
                  slt          s3, zero, s9
                  xori         t2, a3, -1399
                  or           ra, tp, s4
685:              slti         a7, t5, -1506
                  blt          sp, t0, 689f
                  andi         t4, t4, 416
                  sll          tp, a3, a5
689:              blt          s1, s6, 691f
                  andi         a6, a1, 302
691:              slt          a5, a4, s5
                  slt          s1, s6, a5
693:              nop
                  beq          s10, t1, 705f
                  bge          s6, zero, 698f
                  ori          ra, t6, 428
                  srl          a7, a6, a3
698:              add          s8, t3, a2
                  sll          a7, gp, s0
                  or           t4, s1, a3
                  blt          sp, a7, 708f
                  addi         a1, s3, -6
                  xor          s5, s9, s2
                  add          zero, s3, t6
705:              slt          t3, s9, s6
                  blt          zero, ra, 711f
                  andi         a5, s3, -1645
708:              xori         a6, t4, 1827
                  andi         s9, t6, 348
                  add          s9, s4, t3
711:              bne          s6, t1, 713f
                  and          zero, a3, s1
713:              slli         s1, zero, 30
                  xori         s7, a4, 103
                  lui          a0, 770011
                  bltu         sp, a5, 729f
                  blt          s8, s4, 724f
                  blt          a3, zero, 734f
                  bgeu         s6, sp, 730f
                  bne          s11, s4, 731f
                  beq          a0, s2, 732f
                  bge          a4, t1, 742f
                  sltu         a0, t0, t1
724:              slti         a4, t4, -173
                  slt          s10, t4, a2
                  slli         a1, s10, 17
                  ori          a6, t0, 1187
                  slti         a4, a3, -136
main_12:          jal          ra, 14f
0:                jal          ra, 26f
1:                jal          a6, 15f
2:                jal          t5, 7f
3:                jal          t0, 22f
4:                jal          t1, 1b
5:                jal          sp, 13f
6:                jal          t1, 18f
7:                jal          t1, 10f
8:                jal          ra, 4b
9:                jal          a1, 12f
10:               jal          t1, 0b
11:               jal          t2, 19f
12:               jal          ra, 11b
13:               jal          t4, 23f
14:               jal          gp, 25f
15:               jal          s8, 2b
16:               jal          ra, 24f
17:               jal          t1, 3b
18:               jal          ra, 5b
19:               jal          ra, 16b
20:               jal          s0, 17b
21:               jal          ra, 9b
22:               jal          ra, 8b
23:               jal          tp, 20b
24:               jal          ra, 6b
25:               jal          t0, 21b
26:               sra          a5, s4, ra
729:              lui          s0, 376201
730:              slt          a1, t1, t6
731:              srl          t5, s0, a6
732:              slt          s0, t3, s10
                  srli         s8, t1, 26
734:              slt          t1, s7, a2
                  beq          zero, t2, 753f
                  add          a4, s4, a4
                  ori          t5, s1, 710
                  beq          s4, s4, 758f
                  xori         t2, t6, 1599
                  nop
                  sub          a7, t3, a2
742:              sub          s7, sp, sp
                  addi         a2, t2, 1745
                  slti         s6, t4, -673
                  nop
                  beq          t5, t6, 750f
                  slt          s6, a5, a0
                  ori          t0, t0, -1008
                  xor          s6, s2, s4
750:              srl          a4, a2, zero
                  srl          a1, s7, s7
                  srli         s7, t4, 5
753:              srai         tp, t6, 30
                  ori          a6, a7, -1882
                  slli         a0, t1, 2
                  nop
                  sll          s8, gp, s10
758:              sltiu        s5, t2, -1430
                  xori         a3, a3, -167
                  slt          a2, t4, a5
                  ori          t3, gp, -1104
                  ori          s10, t2, 424
                  or           s0, s6, a2
                  bltu         s10, a7, 777f
                  or           a6, ra, t5
                  xor          s9, t5, t2
                  sll          ra, a1, a6
                  bge          a4, gp, 772f
                  and          a1, s2, s8
                  blt          t5, s1, 777f
                  sltu         s7, a5, s0
772:              bge          a1, s0, 781f
                  add          a2, s10, ra
                  and          t1, s7, ra
                  sub          t3, s9, a6
                  sub          s6, s10, a6
777:              or           gp, zero, t4
                  sltu         s0, a3, t4
                  add          ra, tp, s10
                  bge          sp, s11, 791f
781:              srai         sp, gp, 31
                  xori         sp, s9, -1232
                  auipc        a1, 310621
                  bltu         zero, s1, 803f
                  srl          s3, t2, s11
                  bgeu         s10, sp, 803f
                  sll          a7, t4, t2
                  and          s8, ra, t3
                  andi         s10, s9, 422
                  lui          a4, 272059
791:              bgeu         s0, tp, 798f
                  sltiu        s10, t3, 23
                  auipc        s7, 637692
                  bltu         a6, a3, 806f
                  and          gp, a5, s7
                  blt          s7, a3, 803f
                  sltiu        t4, sp, 1455
798:              bltu         a4, s10, 818f
                  addi         zero, t3, 770
                  sub          s5, a5, s5
                  and          gp, a6, s1
                  bge          t5, t2, 819f
803:              xori         gp, tp, -1406
                  bne          s9, sp, 805f
805:              sll          sp, a0, tp
806:              andi         t0, a3, -131
                  lui          a6, 830140
                  addi         t3, gp, 1412
                  add          t3, tp, s0
                  srli         t2, t2, 7
                  srli         s0, t0, 8
                  bne          t6, t5, 829f
                  sra          t4, s1, zero
                  slli         a0, t2, 27
                  addi         gp, s5, 187
                  bne          t3, t4, 830f
                  nop
818:              srai         t1, t6, 11
819:              addi         a7, zero, 532
                  sra          a5, tp, t4
                  andi         s8, s10, -776
                  add          a1, s8, s3
                  xor          a5, t0, t6
                  bltu         t0, t2, 843f
                  blt          t1, a5, 828f
                  slli         gp, zero, 26
                  addi         tp, a3, 1861
828:              blt          a5, sp, 839f
829:              and          a0, s4, s1
830:              andi         s6, t3, -297
                  nop
                  beq          s5, s10, 839f
                  auipc        s8, 983881
                  beq          gp, s10, 850f
                  bltu         tp, a3, 852f
                  srl          a2, a4, t4
                  sll          a1, a7, a4
                  and          gp, s4, s5
839:              and          s7, s6, s2
                  auipc        t1, 978137
                  xori         s5, s4, 1507
                  sltu         a0, a5, t0
843:              sra          s3, t6, a1
                  bne          t2, s4, 862f
                  bgeu         t4, tp, 849f
                  nop
                  srai         t0, ra, 19
                  sll          a4, s7, t2
849:              slti         a3, t0, -895
850:              sll          s4, s8, t2
                  xor          t0, s5, a4
852:              xor          t5, a0, a5
                  srai         s6, t0, 3
                  sll          t0, a5, a7
                  sltiu        s9, a5, 1675
                  bltu         ra, s4, 876f
                  sra          t0, t0, t0
                  xor          ra, s3, a4
                  addi         t0, a6, 1056
                  xori         zero, gp, -1822
                  nop
862:              bne          s6, s9, 882f
                  auipc        s5, 839836
                  beq          s10, tp, 878f
                  sll          tp, zero, sp
                  add          a3, zero, zero
                  srli         ra, t1, 10
                  sltu         s8, s10, a2
                  and          t2, a5, s8
                  sltiu        s10, a6, 1438
                  lui          a3, 313867
                  ori          a6, s4, -23
                  sltu         t2, s2, t2
                  auipc        sp, 101824
                  bne          a0, sp, 880f
876:              bgeu         s5, a2, 883f
                  add          s3, gp, s7
878:              srli         s10, tp, 16
                  srai         s6, zero, 2
880:              sub          t3, t5, s11
                  srli         s9, s11, 14
882:              bgeu         sp, s9, 889f
883:              srli         t0, a3, 7
                  bne          tp, ra, 891f
                  bgeu         s0, s4, 896f
                  addi         a5, tp, -1658
                  slti         s5, a1, -18
                  srli         t4, t2, 9
889:              xor          s10, s6, s5
                  andi         t3, a1, -250
891:              slti         t2, a7, 866
                  ori          gp, s10, -1473
                  srai         t5, s3, 6
                  sra          a2, a7, t5
                  slli         t2, s8, 15
896:              nop
                  nop
                  addi         sp, s0, -930
                  ori          t5, a6, 1138
                  addi         s10, s7, 482
                  slt          zero, t2, s5
                  xor          s3, s8, s0
                  xor          s3, ra, a7
                  bge          s0, t6, 921f
                  bltu         s10, t6, 918f
                  addi         gp, t1, 1343
                  bgeu         t3, a4, 918f
                  lui          a1, 433706
                  sltiu        a2, s3, 1990
                  srl          a2, a5, a3
                  sltu         s9, s11, s10
                  lui          s3, 836624
                  srl          a0, a5, s6
                  bltu         s3, t4, 934f
                  slt          s9, t3, s1
                  ori          gp, t0, 239
                  nop
918:              xori         s5, s7, -1300
                  nop
                  lui          s1, 592428
921:              ori          gp, s1, -595
                  bltu         a5, t4, 935f
                  srai         t3, s6, 10
                  nop
                  srai         s8, s0, 0
                  nop
                  sub          t4, a6, t4
                  sll          s5, tp, s2
                  srai         s0, zero, 20
                  and          zero, t6, s8
                  add          s3, gp, a6
                  srai         s10, sp, 23
                  or           s7, s7, s5
934:              xor          a2, s7, s4
935:              bgeu         gp, t3, 937f
                  slti         a1, s10, 1148
937:              addi         s10, t4, -767
                  sub          s8, a2, a6
                  slt          s0, tp, s2
                  sltiu        t1, s3, 1922
                  xori         s7, t4, 548
                  bge          s8, s1, 946f
                  slt          zero, t4, a4
                  bge          s3, s1, 961f
                  andi         ra, s8, 683
946:              sll          t5, a5, tp
                  sub          gp, s3, s3
                  andi         a2, t3, -1818
                  xor          a5, gp, a5
                  addi         t5, s0, 823
                  beq          s10, a4, 962f
                  bltu         ra, s11, 963f
                  lui          a1, 919066
                  xori         s0, s10, 1063
                  addi         s1, gp, -966
                  srl          s4, s6, t0
                  sra          sp, s0, t0
                  bge          t3, s1, 967f
                  slli         t3, t0, 11
                  sltu         gp, t4, t4
961:              beq          t4, t3, 973f
962:              srli         ra, s10, 30
963:              and          s3, a1, t4
                  sra          s7, zero, t1
                  bge          s3, tp, 966f
966:              slti         a0, s3, -193
967:              sll          a2, s0, s11
main_3:           jal          ra, 12f
0:                jal          ra, 14f
1:                jal          gp, 7f
2:                jal          ra, 1b
3:                jal          s1, 4f
4:                jal          s0, 6f
5:                jal          ra, 0b
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          ra, 3b
9:                jal          ra, 20f
10:               jal          ra, 8b
11:               jal          t0, 16f
12:               jal          t1, 9b
13:               jal          ra, 18f
14:               jal          sp, 17f
15:               jal          t1, 2b
16:               jal          ra, 19f
17:               jal          ra, 11b
18:               jal          tp, 21f
19:               jal          ra, 10b
20:               jal          t1, 15b
21:               slt          s6, s3, s3
                  bgeu         s3, ra, 975f
                  slli         s8, gp, 5
                  add          s7, a5, a2
                  slli         t0, s6, 1
                  addi         a5, s5, -286
973:              ori          a0, s6, -1797
                  or           t4, s6, tp
975:              blt          a3, tp, 984f
                  sltiu        s0, s2, 1141
                  slt          s7, a2, s1
                  srl          a3, s0, a1
                  sub          a1, s9, s1
                  srl          zero, s1, s5
                  srli         a1, t1, 8
                  addi         t2, a1, 532
                  addi         t3, tp, 1096
984:              slti         s7, s11, 646
                  sltu         a0, a3, s0
                  srai         ra, t0, 15
                  bge          sp, s11, 991f
                  sltu         s5, gp, sp
                  blt          a2, a2, 1009f
                  or           zero, s0, t3
991:              slli         t2, a6, 9
                  srl          sp, s7, s3
                  sub          s4, a0, a4
                  xor          a2, s3, s11
                  lui          s0, 194008
                  andi         s6, s0, -782
                  sltu         ra, s3, s1
                  ori          s3, s9, -224
                  bne          t4, a4, 1010f
                  slt          s3, s2, zero
                  add          t5, s3, zero
                  xori         sp, s2, -160
                  lui          a6, 746820
                  srai         a6, t6, 11
                  and          t1, s9, t2
                  bgeu         a3, t6, 1010f
                  sltiu        s0, a7, 1262
                  bge          a3, s2, 1015f
1009:             sra          s7, a5, a2
1010:             andi         s3, s3, 1306
                  srl          a1, s10, a1
                  bge          a2, t6, 1015f
                  bltu         s5, s7, 1015f
                  srli         a0, s2, 24
1015:             nop
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            add          s10, s5, a3
                  addi         t6, t6, -44
                  sll          gp, zero, sp
                  andi         s5, s0, -1135
                  auipc        t0, 372889
                  add          a0, t1, zero
                  sltu         s6, s3, tp
                  slti         s5, t0, -1339
                  sw           ra, 4(t6)
                  srl          t1, s5, s4
                  slti         s1, gp, 338
                  srai         s3, s9, 22
                  la           a1, sub_2
                  addi         a1, a1, -62
                  and          s8, s11, a5
                  addi         t0, a7, -1047
                  ori          t0, s3, 1513
                  sltu         sp, t3, s7
sub_1_j3:         jalr         ra, a1, 63 #jump sub_1 -> sub_2
                  addi         s0, s2, -672
                  auipc        t0, 149586
                  lui          s3, 807786
                  srl          s5, s0, t0
                  srli         s8, s1, 2
                  sltu         t1, s4, s10
                  bgeu         ra, t1, 14f
                  ori          s8, s9, 310
                  auipc        s10, 391591
                  sltiu        ra, s6, -398
                  bgeu         s1, t6, 14f
                  sra          sp, t0, s2
                  auipc        a7, 937420
                  andi         a2, a0, -875
14:               xori         s6, t5, -392
                  srli         a6, a5, 0
                  lw           ra, 4(t6)
                  xor          a5, s0, s7
                  ori          t0, ra, 1494
                  addi         t6, t6, 44
                  srli         a3, s2, 17
                  slli         a5, s5, 29
                  srai         t1, a3, 18
                  sra          s1, sp, a4
                  addi         sp, t4, 65
44:               addi x12, x1, 1
44:               jalr x12, x12, 0
sub_5:            bge          sp, s8, sub_5_stack_p
                  lui          t4, 250287
                  slt          t1, s6, tp
sub_5_stack_p:    addi         t6, t6, -48
                  or           s3, t1, s10
                  sw           ra, 4(t6)
                  srli         a3, ra, 6
                  xori         s10, s0, 764
                  sltu         a1, t3, s8
sub_5_2:          jal          ra, 7f
0:                jal          sp, 22f
1:                jal          ra, 25f
2:                jal          t1, 3f
3:                jal          ra, 11f
4:                jal          ra, 23f
5:                jal          t4, 2b
6:                jal          t1, 8f
7:                jal          ra, 9f
8:                jal          ra, 19f
9:                jal          t2, 20f
10:               jal          t2, 18f
11:               jal          t1, 6b
12:               jal          s6, 26f
13:               jal          s5, 15f
14:               jal          ra, 16f
15:               jal          gp, 0b
16:               jal          ra, 12b
17:               jal          tp, 4b
18:               jal          s10, 21f
19:               jal          ra, 1b
20:               jal          t1, 14b
21:               jal          a1, 27f
22:               jal          ra, 24f
23:               jal          s3, 5b
24:               jal          ra, 10b
25:               jal          t3, 13b
26:               jal          t1, 17b
27:               sub          s5, s1, s10
sub_5_1:          jal          ra, 15f
0:                jal          ra, 6f
1:                jal          t5, 7f
2:                jal          tp, 3f
3:                jal          ra, 10f
4:                jal          t1, 20f
5:                jal          a4, 12f
6:                jal          t1, 4b
7:                jal          ra, 14f
8:                jal          t1, 0b
9:                jal          t1, 13f
10:               jal          ra, 16f
11:               jal          t1, 5b
12:               jal          ra, 22f
13:               jal          ra, 23f
14:               jal          a5, 11b
15:               jal          tp, 1b
16:               jal          ra, 17f
17:               jal          ra, 8b
18:               jal          ra, 9b
19:               jal          ra, 21f
20:               jal          ra, 19b
21:               jal          ra, 18b
22:               jal          ra, 2b
23:               xori         s0, a4, 1785
sub_5_6:          jal          ra, 3f
0:                jal          t1, 5f
1:                jal          ra, 9f
2:                jal          ra, 1b
3:                jal          ra, 11f
4:                jal          t1, 6f
5:                jal          ra, 4b
6:                jal          ra, 7f
7:                jal          ra, 10f
8:                jal          ra, 13f
9:                jal          s5, 0b
10:               jal          ra, 12f
11:               jal          a7, 2b
12:               jal          s4, 14f
13:               jal          t1, 15f
14:               jal          t1, 8b
15:               xor          a5, a1, tp
sub_5_5:          jal          ra, 19f
0:                jal          t5, 13f
1:                jal          t1, 21f
2:                jal          ra, 0b
3:                jal          sp, 8f
4:                jal          s3, 20f
5:                jal          t1, 11f
6:                jal          ra, 18f
7:                jal          ra, 6b
8:                jal          t5, 22f
9:                jal          ra, 15f
10:               jal          ra, 3b
11:               jal          ra, 1b
12:               jal          ra, 2b
13:               jal          ra, 5b
14:               jal          ra, 4b
15:               jal          t1, 14b
16:               jal          sp, 7b
17:               jal          t1, 23f
18:               jal          ra, 12b
19:               jal          t1, 16b
20:               jal          ra, 17b
21:               jal          ra, 10b
22:               jal          t1, 9b
23:               and          a7, t5, a1
sub_5_9:          jal          ra, 2f
0:                jal          t1, 13f
1:                jal          ra, 5f
2:                jal          a4, 9f
3:                jal          ra, 19f
4:                jal          t1, 12f
5:                jal          ra, 10f
6:                jal          ra, 17f
7:                jal          t1, 6b
8:                jal          ra, 15f
9:                jal          ra, 11f
10:               jal          t1, 3b
11:               jal          t1, 4b
12:               jal          ra, 18f
13:               jal          ra, 7b
14:               jal          t5, 8b
15:               jal          tp, 16f
16:               jal          t0, 1b
17:               jal          s3, 14b
18:               jal          ra, 0b
19:               andi         s1, t1, 1229
sub_5_8:          jal          ra, 3f
0:                jal          ra, 16f
1:                jal          t1, 17f
2:                jal          t1, 13f
3:                jal          t1, 9f
4:                jal          sp, 0b
5:                jal          t1, 4b
6:                jal          tp, 1b
7:                jal          gp, 15f
8:                jal          ra, 14f
9:                jal          s8, 8b
10:               jal          s0, 5b
11:               jal          ra, 2b
12:               jal          ra, 7b
13:               jal          ra, 10b
14:               jal          s9, 11b
15:               jal          s0, 6b
16:               jal          s3, 12b
17:               slt          s4, gp, a2
sub_5_0:          jal          ra, 14f
0:                jal          ra, 5f
1:                jal          ra, 19f
2:                jal          ra, 25f
3:                jal          ra, 20f
4:                jal          t0, 15f
5:                jal          gp, 7f
6:                jal          t0, 1b
7:                jal          t0, 11f
8:                jal          ra, 24f
9:                jal          s10, 3b
10:               jal          ra, 8b
11:               jal          ra, 21f
12:               jal          a6, 4b
13:               jal          s4, 16f
14:               jal          tp, 17f
15:               jal          a7, 22f
16:               jal          ra, 18f
17:               jal          ra, 13b
18:               jal          ra, 23f
19:               jal          t3, 0b
20:               jal          ra, 12b
21:               jal          t2, 2b
22:               jal          ra, 10b
23:               jal          ra, 9b
24:               jal          t0, 6b
25:               and          zero, t1, t0
sub_5_10:         jal          ra, 8f
0:                jal          t1, 6f
1:                jal          tp, 17f
2:                jal          t1, 25f
3:                jal          tp, 13f
4:                jal          t1, 0b
5:                jal          ra, 20f
6:                jal          sp, 21f
7:                jal          ra, 2b
8:                jal          ra, 23f
9:                jal          ra, 4b
10:               jal          s0, 11f
11:               jal          s9, 15f
12:               jal          ra, 5b
13:               jal          tp, 26f
14:               jal          ra, 16f
15:               jal          ra, 19f
16:               jal          ra, 10b
17:               jal          ra, 14b
18:               jal          s4, 3b
19:               jal          ra, 24f
20:               jal          ra, 18b
21:               jal          t1, 7b
22:               jal          t1, 9b
23:               jal          t1, 22b
24:               jal          ra, 12b
25:               jal          ra, 1b
26:               srai         a5, ra, 31
sub_5_7:          jal          ra, 4f
0:                jal          ra, 2f
1:                jal          t1, 5f
2:                jal          ra, 8f
3:                jal          ra, 6f
4:                jal          ra, 0b
5:                jal          ra, 10f
6:                jal          a1, 1b
7:                jal          t1, 11f
8:                jal          t1, 3b
9:                jal          t1, 7b
10:               jal          t1, 12f
11:               jal          t5, 13f
12:               jal          t4, 9b
13:               sub          t1, t5, t0
sub_5_3:          jal          ra, 25f
0:                jal          ra, 10f
1:                jal          ra, 8f
2:                jal          s5, 24f
3:                jal          ra, 4f
4:                jal          ra, 21f
5:                jal          ra, 18f
6:                jal          ra, 20f
7:                jal          t3, 11f
8:                jal          ra, 29f
9:                jal          ra, 3b
10:               jal          ra, 2b
11:               jal          ra, 17f
12:               jal          ra, 0b
13:               jal          t1, 28f
14:               jal          ra, 15f
15:               jal          ra, 27f
16:               jal          t0, 23f
17:               jal          ra, 9b
18:               jal          ra, 7b
19:               jal          t1, 6b
20:               jal          t1, 5b
21:               jal          ra, 14b
22:               jal          t2, 1b
23:               jal          gp, 13b
24:               jal          t1, 26f
25:               jal          ra, 12b
26:               jal          ra, 16b
27:               jal          ra, 22b
28:               jal          ra, 19b
29:               auipc        t3, 234139
                  lui          gp, 234460
                  bne          s9, s2, 10f
                  bgeu         a3, t2, 18f
                  andi         t4, a3, -955
                  sltiu        ra, s8, -1514
                  slli         t1, a2, 6
                  ori          s10, s1, 698
                  bge          a1, t2, 19f
                  sub          t3, a2, gp
                  bne          tp, a2, 11f
10:               sra          tp, t3, s3
11:               xori         a3, s1, -1679
                  blt          a3, t0, 23f
                  slli         t4, a0, 31
                  srli         s4, t1, 26
                  nop
                  slt          zero, s8, a1
                  xor          a5, s4, a0
18:               bgeu         zero, s5, 38f
19:               sll          s9, ra, t1
                  srli         s10, t3, 0
                  ori          s3, ra, 464
                  bne          a4, t4, 36f
23:               blt          s0, t5, 27f
                  slt          t0, ra, t0
                  auipc        s5, 928954
                  xori         t4, s8, -1476
27:               bne          s5, s3, 29f
                  add          t5, a6, a2
29:               sra          s6, a6, s1
                  sltiu        t0, zero, 315
                  bltu         s2, s9, 41f
                  xori         s6, a1, 800
                  sltu         gp, t4, a7
                  slli         tp, s6, 29
                  or           gp, t4, t5
36:               sltiu        sp, s0, 1162
                  sra          s1, s7, s6
38:               slli         a6, t2, 15
                  or           a4, s0, t2
                  xori         t4, t5, -823
41:               nop
                  sll          a1, s5, s2
                  slli         gp, t0, 7
                  sltiu        a3, gp, -433
                  beq          tp, ra, 48f
                  sltu         sp, s5, zero
                  add          s4, tp, s9
48:               beq          ra, zero, 50f
                  and          ra, t0, s10
50:               and          s9, t4, s10
                  and          s9, s9, a5
                  slti         s1, s8, -970
                  nop
                  slli         a3, s9, 13
                  slli         s0, t6, 7
                  xori         tp, s6, 577
                  srl          s5, t5, s10
                  add          gp, tp, s2
                  nop
                  sltiu        ra, t4, 88
                  beq          s9, t5, 78f
                  sltiu        t0, t5, -1854
                  ori          a0, s8, -1667
                  ori          t1, gp, -72
                  slti         s7, a0, -291
                  beq          t6, a1, 83f
                  sub          s4, t2, ra
                  and          a3, ra, s8
                  blt          s2, t0, 82f
                  srli         a5, t2, 28
                  ori          s8, a4, -385
                  sltiu        a3, s11, 523
                  bge          t3, a6, 82f
                  beq          s1, s3, 77f
                  sll          s5, a5, s7
                  bne          t2, s0, 94f
77:               auipc        a1, 685373
78:               bne          t6, gp, 98f
                  xor          t5, sp, a0
                  ori          tp, a5, -1472
                  sll          s1, a2, tp
82:               blt          ra, s7, 102f
83:               bge          sp, s6, 89f
                  xori         a6, t5, -1998
                  or           t0, ra, a4
                  bgeu         a1, ra, 94f
                  srli         t5, s2, 2
                  bgeu         t0, s6, 100f
89:               slli         t2, t4, 26
                  bne          a7, t2, 108f
                  srai         sp, s7, 30
                  xori         ra, a4, -118
                  xori         s0, s9, 1067
94:               or           s6, t6, tp
                  xor          s4, t2, a1
                  srl          zero, s1, t2
                  sra          t1, tp, s6
98:               auipc        a0, 226913
                  beq          s7, s1, 117f
100:              srli         a2, t2, 1
                  beq          s9, s4, 112f
102:              slli         gp, s7, 5
                  lui          s5, 728141
                  srl          s1, s9, s4
                  sub          t2, a3, t4
                  ori          a5, s2, 1793
                  sltiu        s8, s4, -718
108:              xor          a3, t0, s8
                  blt          a7, s7, 120f
                  or           t2, t4, s4
                  or           ra, t1, s5
112:              sltiu        a4, a4, -837
                  slli         a3, sp, 18
                  blt          t6, s5, 116f
                  add          a4, t6, s2
116:              andi         ra, gp, -319
117:              slli         t2, a0, 2
                  slt          t2, t2, s11
                  or           a0, a1, s2
120:              srai         t2, s0, 13
                  xor          s9, s5, a6
                  blt          s1, a7, 124f
                  sll          t2, t1, s8
124:              beq          a4, s2, 144f
                  srl          a3, t0, gp
                  sltu         a1, s1, a4
                  addi         a5, s0, 475
                  bltu         s11, a0, 148f
                  slti         s1, a1, 1170
                  andi         s4, s3, -260
                  sub          a6, s11, zero
                  auipc        t5, 406343
                  lui          s7, 941401
                  or           s4, t2, t6
                  addi         s7, t3, -1812
                  srl          s10, s11, a2
                  slli         s9, t5, 10
                  bne          s9, s10, 156f
                  xori         s1, a5, -1463
                  sltiu        s1, s11, -1152
                  sll          s7, s1, ra
                  beq          a0, a5, 154f
                  srai         s1, tp, 26
144:              xori         s5, t3, 1791
                  blt          s5, s0, 155f
                  slti         s3, s11, 392
                  xori         a0, zero, 1637
148:              sll          sp, a1, s5
                  lui          s5, 624346
                  or           ra, a4, s9
                  srl          s6, s9, t3
                  sltu         s3, zero, a5
                  lui          s1, 674274
154:              auipc        s8, 139217
155:              auipc        t1, 420064
156:              srai         a4, s0, 1
                  and          a0, t0, a6
                  xori         t5, t5, 2018
                  srai         zero, t1, 17
                  addi         s5, zero, 1933
                  xori         s6, a0, 1685
                  sltiu        s10, s7, 2039
                  sra          s5, tp, s3
                  bne          t1, s8, 166f
                  sub          s7, gp, t3
166:              bne          a5, a5, 175f
                  beq          s9, a2, 178f
                  bge          s5, s5, 188f
                  bgeu         a4, s4, 171f
                  blt          ra, s4, 172f
171:              sra          s7, s4, a3
172:              xor          s1, a1, a6
                  add          a5, s7, s4
                  xor          t4, a7, s7
175:              srli         a5, ra, 6
                  bltu         zero, zero, 179f
                  srli         s10, a4, 20
178:              xori         a2, t0, 1918
179:              add          s7, t3, ra
                  bge          s9, gp, 183f
                  slti         s6, s0, -836
                  beq          a0, s6, 184f
183:              srai         s3, s11, 29
184:              slli         a6, ra, 11
                  and          t1, t1, s1
                  and          s7, s5, a6
                  andi         a4, a2, -1584
188:              sub          s8, s10, s1
                  auipc        s8, 195894
                  slt          a5, a0, s7
                  sra          t4, sp, s4
                  sra          s0, sp, s5
                  sub          s5, t5, a5
                  srli         gp, a6, 0
                  lui          a4, 85929
                  sltiu        s0, s9, -252
                  srl          s8, a1, gp
                  slli         s7, tp, 15
                  bge          s10, a3, 217f
                  addi         t2, s2, 1881
                  blt          a4, s9, 205f
                  srli         a3, s7, 31
                  andi         s3, a1, 1756
                  addi         a0, s5, 835
205:              xori         a4, a1, -1033
                  xori         tp, a1, 84
                  bltu         t2, gp, 213f
sub_5_4:          jal          ra, 0f
0:                jal          ra, 5f
1:                jal          ra, 9f
2:                jal          a7, 1b
3:                jal          t0, 4f
4:                jal          ra, 7f
5:                jal          a4, 8f
6:                jal          s10, 11f
7:                jal          t1, 6b
8:                jal          ra, 10f
9:                jal          gp, 3b
10:               jal          t3, 2b
11:               srai         t1, a2, 3
                  auipc        t1, 1005997
                  sll          a2, gp, s8
                  sll          t4, s11, a6
                  xori         s8, a6, 1087
                  srai         zero, t1, 16
213:              beq          a6, t0, 229f
                  bgeu         ra, s1, 226f
                  srl          a2, s8, s9
                  bgeu         a4, s11, 234f
217:              addi         a4, t0, 673
                  sll          t0, a1, t6
                  slti         a2, a1, 1547
                  add          t5, a0, a3
                  beq          a0, t6, 223f
                  and          tp, t0, zero
223:              add          s6, t4, a2
                  addi         t1, s3, -1542
                  sll          zero, s7, sp
226:              srli         t2, a3, 25
                  srai         s1, t2, 25
                  lui          t2, 947766
229:              sll          a3, s2, s4
                  add          s3, s0, t0
                  or           a0, t2, a3
                  bne          s7, a3, 241f
                  addi         s3, t6, -1236
234:              sltiu        a4, s6, 27
                  nop
                  srli         s5, a6, 12
                  blt          s9, s7, 251f
                  blt          t3, t5, 255f
                  sll          s3, s8, s2
                  slti         s10, s11, -1162
241:              srli         gp, s8, 25
                  xori         s1, s9, -1370
                  xori         s3, s11, 38
                  nop
                  nop
                  or           t4, t1, s9
                  bge          t6, ra, 260f
                  slli         s3, a5, 5
                  beq          s1, s1, 266f
                  sltu         t5, t2, sp
251:              sra          t2, t1, t5
                  sltu         t5, t5, a3
                  srl          a0, zero, s5
                  nop
255:              bltu         a7, zero, 275f
                  sub          t5, a1, t3
                  slt          s0, t3, tp
                  ori          s10, a5, 1095
                  srai         a2, t3, 28
260:              blt          t3, s8, 271f
                  slt          a5, a5, s1
                  and          a3, t6, t0
                  add          s7, a5, s1
                  addi         a0, a0, -214
                  slti         a4, a0, 188
266:              sub          t5, t5, t4
                  bltu         s5, a3, 278f
                  lui          a1, 908331
                  auipc        a4, 857946
                  auipc        s3, 675033
271:              andi         s5, t2, -617
                  slti         a5, a0, -271
                  slti         a5, gp, -37
                  blt          t6, a6, 294f
275:              slt          s3, a7, s7
                  slt          t2, s5, a3
                  bltu         s6, t2, 285f
278:              sll          zero, a0, sp
                  andi         s0, t4, 61
                  add          tp, s0, sp
                  sltu         a6, s6, s4
                  bge          t0, s11, 293f
                  beq          a3, t2, 294f
                  auipc        s6, 83423
285:              addi         s0, sp, 119
                  sub          s1, tp, s5
                  add          s5, s7, sp
                  bge          s7, s3, 294f
                  lui          a7, 90631
                  andi         ra, a1, -612
                  xori         s6, s7, 793
                  ori          s7, s3, 208
293:              and          s8, gp, sp
294:              sltiu        a2, a4, 1660
                  slt          sp, a7, a5
                  srl          t2, s0, s10
                  bgeu         s11, a7, 315f
                  xor          sp, s4, s10
                  ori          t2, tp, 1301
                  sltiu        t0, t2, -1384
                  addi         s8, t6, -791
                  lui          t3, 805628
                  lui          s5, 390098
                  bge          t5, s0, 321f
                  bgeu         a1, a5, 307f
                  srai         t3, s2, 28
307:              srl          zero, a5, ra
                  bgeu         s11, s5, 326f
                  slti         sp, t3, 893
                  xori         a0, a4, 167
                  or           t4, s4, s11
                  andi         s1, s8, 1883
                  nop
                  addi         zero, s6, -557
315:              beq          a6, s9, 324f
                  nop
                  lui          s8, 810688
                  add          ra, s11, t5
                  auipc        a5, 604811
                  slt          ra, a2, ra
321:              sll          a1, s0, sp
                  or           s5, a0, gp
                  xori         a3, t6, -111
324:              xori         s5, t0, 809
                  andi         s0, a0, -653
326:              slli         sp, a3, 20
                  auipc        tp, 438768
                  srai         s6, t4, 29
                  bgeu         a3, t4, 332f
                  slti         tp, a1, 737
                  sll          s8, s3, zero
332:              bgeu         ra, t4, 346f
                  add          t4, s9, s4
                  bne          t0, t0, 342f
                  slti         a6, ra, 497
                  sra          a2, t6, a6
                  or           a6, sp, t1
                  xor          a5, s2, tp
                  xori         t5, a2, 133
                  sltu         ra, t0, t1
                  bgeu         s10, s7, 353f
342:              and          s5, s9, s9
                  bge          ra, s9, 363f
                  beq          t6, t4, 357f
                  sub          sp, s0, s4
346:              slt          a6, s6, a6
                  slli         s5, t2, 14
                  bne          s3, a2, 360f
                  sra          s3, a4, ra
                  slti         tp, t3, -2021
                  blt          s3, s8, 371f
                  srli         a7, s3, 19
353:              slti         a4, sp, 1475
                  srl          s3, s5, a0
                  lui          s0, 983137
                  sra          a4, a4, tp
357:              ori          a1, s6, 248
                  sra          t4, t3, a4
                  srli         s5, a6, 18
360:              auipc        a6, 257787
                  bne          s3, t4, 363f
                  bne          sp, s11, 378f
363:              bltu         t1, a2, 365f
                  and          t5, zero, s10
365:              sra          t2, t1, s8
                  sub          s9, t2, a3
                  xori         s0, s2, 1079
                  lui          s3, 430055
                  or           t2, a1, t4
                  srl          a3, a3, s6
371:              and          t3, sp, t0
                  srli         s6, a3, 3
                  srai         t3, s9, 20
                  sll          s6, tp, a2
                  and          s8, a2, ra
                  srli         zero, a6, 3
                  beq          s6, s7, 379f
378:              blt          s10, ra, 388f
379:              andi         t5, a5, 374
                  sra          a4, t4, s3
                  nop
                  bgeu         s10, s10, 402f
                  bgeu         t5, t0, 392f
                  xori         s9, s0, -1439
                  sra          s3, gp, t3
                  xor          a0, a2, s9
                  lui          a5, 103287
388:              addi         gp, a7, 220
                  lui          a6, 154484
                  bgeu         s6, t4, 392f
                  lui          sp, 842569
392:              sltu         a4, ra, ra
                  sub          ra, t1, t2
                  xori         t1, ra, 355
                  lui          gp, 179187
                  andi         a1, t5, 695
                  addi         a4, s3, -1044
                  slli         s1, s6, 16
                  lui          t1, 461928
                  sll          gp, a2, t5
                  andi         a6, s6, 48
402:              srl          s0, s10, gp
                  or           gp, a0, s6
                  srli         s10, s8, 25
                  sltiu        t4, t6, 2044
                  bltu         t2, ra, 424f
                  andi         a5, sp, -1145
                  sltiu        a7, s7, 1092
                  add          s6, t2, s7
                  bltu         s6, a1, 427f
                  sub          s5, s3, t2
                  lui          a1, 409116
                  srai         s1, s4, 4
                  nop
                  bltu         a3, t6, 419f
                  add          tp, s8, s9
                  ori          s7, s9, -104
                  blt          a1, ra, 429f
419:              ori          s6, s7, 1284
                  ori          a5, a7, 620
                  lui          a6, 790437
                  srli         s1, s10, 12
                  bge          t0, a7, 443f
424:              and          ra, a7, a0
                  andi         t0, t6, 1299
                  add          s1, a4, zero
427:              andi         s0, s11, 194
                  nop
429:              xor          ra, a4, a3
                  sll          s1, s6, s6
                  xor          t4, sp, t6
                  sub          a3, a3, s3
                  slti         s7, s7, 277
                  beq          a0, t3, 437f
                  srli         t4, s4, 20
                  slt          s1, s4, s8
437:              addi         t4, ra, -503
                  bgeu         t1, ra, 446f
                  srli         a0, t1, 22
                  slti         s3, sp, 1869
                  add          a1, s1, a3
                  sll          s8, s0, s2
443:              sub          t0, s7, t2
                  xori         gp, a0, 995
                  slt          s10, s11, a2
446:              ori          sp, s1, -1048
                  srai         tp, s2, 25
                  srl          sp, a2, a5
                  sll          zero, a5, s2
                  and          s5, a7, a7
                  sltu         t4, s3, tp
                  ori          a4, s9, -1629
                  bgeu         a2, s10, 455f
                  lui          t0, 648524
455:              sll          a0, a1, a5
                  add          t0, a3, gp
                  bge          gp, a7, 459f
                  lui          s9, 843534
459:              nop
                  sra          t1, a2, s3
                  bgeu         t5, s6, 474f
                  sltiu        a2, s8, -1208
                  srai         a5, s6, 26
                  sll          t4, s0, s10
                  bgeu         a7, s9, 483f
                  bgeu         s5, s11, 480f
                  addi         s8, sp, -348
                  addi         t2, sp, 1327
                  bge          a6, sp, 473f
                  or           a4, t6, t1
                  sltiu        t2, s6, 451
                  beq          gp, t1, 481f
473:              srli         t5, a1, 30
474:              srli         tp, s6, 8
                  andi         s5, gp, 228
                  sll          s0, a6, a4
                  sltu         s0, gp, s6
                  add          s6, t3, a5
                  srl          s6, s10, s5
480:              blt          gp, s2, 490f
481:              srl          a6, ra, a1
                  srli         t1, a1, 3
483:              srai         t3, a3, 0
                  slt          a7, zero, t4
                  slli         a2, s11, 1
                  and          t0, a4, t2
                  sra          t4, a5, s1
                  srl          s4, s3, t0
                  bne          s8, t0, 509f
490:              and          s4, sp, t0
                  beq          t1, t0, 508f
                  add          sp, ra, ra
                  srl          s0, a5, t2
                  sra          s0, s10, gp
                  srli         s7, t6, 31
                  slli         sp, s1, 1
                  srai         a1, t0, 29
                  xori         t1, t6, 888
                  nop
                  bne          tp, a2, 520f
                  srai         s3, s4, 31
                  bne          s8, t5, 522f
                  or           ra, s4, a7
                  sub          t4, s11, t6
                  nop
                  bge          s11, s3, 508f
                  srl          s3, s8, s3
508:              andi         sp, a1, -1201
509:              andi         ra, sp, 1803
                  bne          a2, s4, 522f
                  addi         tp, t1, 1754
                  slt          s4, gp, gp
                  sltu         zero, a6, tp
                  sub          a2, gp, a5
                  bgeu         s9, s2, 533f
                  beq          t3, t1, 534f
                  andi         t3, t0, 237
                  addi         zero, s3, 296
                  lui          a5, 910369
520:              bne          a4, s2, 526f
                  sltiu        t5, a3, -1151
522:              sltiu        a3, t3, -1251
                  srli         a2, s5, 13
                  slti         t5, s1, -1497
                  blt          s5, t0, 527f
526:              ori          t3, a0, 1127
527:              or           a3, a1, s2
                  bltu         s10, ra, 545f
                  bgeu         s9, a4, 549f
                  add          s5, a4, s1
                  srai         s3, a6, 1
                  sll          gp, s10, a3
533:              srli         zero, t1, 12
534:              slt          gp, t6, s2
                  sra          a1, a4, s2
                  srli         s7, a5, 22
                  slli         t1, s10, 12
                  sll          t2, s0, s10
                  bgeu         t6, t5, 542f
                  bgeu         s0, a5, 549f
                  bgeu         s5, a3, 552f
542:              sll          a0, s6, s4
                  slli         a4, a3, 28
                  sub          ra, sp, a1
545:              sltiu        a5, s9, -1163
                  beq          t1, s3, 558f
                  bgeu         s0, s9, 558f
                  slt          t4, s2, a2
549:              bge          s3, gp, 552f
                  sra          s8, a3, s4
                  nop
552:              slt          a4, s8, s0
                  sub          a5, s1, s4
                  addi         a5, t5, 106
                  xori         t3, s0, 513
                  srai         a4, a4, 17
                  slli         a7, a5, 28
558:              auipc        s7, 1005507
                  srai         s0, a6, 23
                  andi         t0, s11, 111
                  bge          ra, t5, 577f
                  blt          tp, zero, 573f
                  slt          s0, t3, s0
                  nop
                  ori          gp, t1, 435
                  add          a6, tp, s3
                  srli         s7, a0, 12
                  srli         s1, t5, 31
                  xori         zero, gp, -508
                  addi         t4, a0, 437
                  srai         t1, s7, 5
                  addi         a3, a0, -1722
573:              bltu         a7, s6, 575f
                  bge          a0, s4, 576f
575:              srli         s9, gp, 4
576:              bge          s9, s0, 592f
577:              bltu         s5, a3, 586f
                  slt          a4, gp, s9
                  and          gp, s9, sp
                  srai         s10, s4, 7
                  or           t1, zero, s2
                  bgeu         tp, s11, 598f
                  bltu         zero, s4, 598f
                  srli         gp, t5, 19
                  add          a6, a2, a6
586:              xori         s7, s8, 287
                  auipc        a2, 541756
                  bge          s1, a7, 597f
                  sltiu        ra, t5, 942
                  xori         s4, sp, -425
                  sll          s5, s10, a6
592:              slli         s4, s2, 11
                  nop
                  slti         ra, s10, -89
                  bne          a5, ra, 598f
                  ori          s1, a3, 1562
597:              xor          sp, a3, ra
598:              srl          s5, s11, s5
                  lw           ra, 4(t6)
                  xor          t3, s3, tp
                  addi         t6, t6, 48
                  nop
                  add          gp, a5, t6
                  srl          t0, a6, a3
                  nop
865:              addi x4, x1, 0
865:              jalr x4, x4, 0
sub_3:            srli         t4, a6, 14
                  addi         t6, t6, -56
                  srli         t4, t4, 9
                  sw           ra, 4(t6)
                  sltu         s3, s3, zero
                  nop
                  sra          s10, t4, a4
                  ori          s0, t4, 1238
                  or           a2, s9, s4
                  sltu         sp, s9, s7
                  add          t3, a0, s6
                  nop
                  slti         sp, sp, 940
                  sll          t5, t0, ra
                  add          s1, a5, t0
                  ori          zero, s4, 431
                  bltu         a2, s5, 14f
                  slti         s3, t1, -1176
                  srli         s3, tp, 25
                  sll          tp, sp, s1
                  sll          t5, gp, a6
14:               nop
                  and          zero, a2, t6
                  addi         s3, s0, -1882
                  lui          s10, 409365
                  lw           ra, 4(t6)
                  sub          t5, zero, s10
                  addi         t6, t6, 56
                  sll          a5, s10, s1
                  nop
                  or           s10, s0, gp
31:               addi x10, x1, 0
31:               jalr x10, x10, 0
sub_4:            slti         t5, ra, -245
                  addi         t6, t6, -56
                  srli         a7, s1, 15
                  addi         s8, t3, -1305
                  sw           ra, 4(t6)
                  slt          a4, s3, s10
                  andi         s0, s1, 813
                  ori          s6, s1, 1123
                  sub          tp, t6, a7
                  and          sp, s8, gp
sub_4_13:         jal          ra, 21f
0:                jal          ra, 2f
1:                jal          ra, 15f
2:                jal          gp, 23f
3:                jal          ra, 5f
4:                jal          ra, 1b
5:                jal          t1, 18f
6:                jal          ra, 16f
7:                jal          t1, 4b
8:                jal          ra, 19f
9:                jal          t4, 13f
10:               jal          ra, 8b
11:               jal          ra, 20f
12:               jal          ra, 14f
13:               jal          ra, 12b
14:               jal          t1, 3b
15:               jal          ra, 22f
16:               jal          t1, 9b
17:               jal          ra, 11b
18:               jal          t1, 0b
19:               jal          ra, 24f
20:               jal          t1, 6b
21:               jal          t1, 17b
22:               jal          ra, 10b
23:               jal          s5, 7b
24:               and          a0, a5, s2
sub_4_9:          jal          ra, 19f
0:                jal          t1, 1f
1:                jal          ra, 11f
2:                jal          ra, 5f
3:                jal          ra, 14f
4:                jal          ra, 12f
5:                jal          ra, 10f
6:                jal          t3, 0b
7:                jal          ra, 8f
8:                jal          t0, 22f
9:                jal          t5, 16f
10:               jal          ra, 20f
11:               jal          s4, 23f
12:               jal          s0, 3b
13:               jal          gp, 2b
14:               jal          ra, 21f
15:               jal          ra, 24f
16:               jal          a4, 17f
17:               jal          ra, 4b
18:               jal          s10, 7b
19:               jal          sp, 6b
20:               jal          a4, 9b
21:               jal          a0, 15b
22:               jal          t3, 13b
23:               jal          s9, 18b
24:               srai         ra, a1, 7
sub_4_19:         jal          ra, 23f
0:                jal          ra, 14f
1:                jal          ra, 11f
2:                jal          s8, 20f
3:                jal          sp, 8f
4:                jal          t1, 13f
5:                jal          ra, 24f
6:                jal          ra, 16f
7:                jal          t1, 2b
8:                jal          sp, 0b
9:                jal          ra, 5b
10:               jal          a5, 3b
11:               jal          ra, 7b
12:               jal          ra, 1b
13:               jal          t1, 18f
14:               jal          t1, 4b
15:               jal          t1, 28f
16:               jal          t4, 26f
17:               jal          t1, 27f
18:               jal          s5, 19f
19:               jal          tp, 12b
20:               jal          a1, 9b
21:               jal          ra, 25f
22:               jal          t1, 6b
23:               jal          t1, 29f
24:               jal          t5, 30f
25:               jal          t1, 17b
26:               jal          t1, 10b
27:               jal          ra, 22b
28:               jal          ra, 21b
29:               jal          t1, 15b
30:               slt          s5, s6, ra
sub_4_10:         jal          ra, 7f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          s5, 0b
3:                jal          a7, 6f
4:                jal          t1, 11f
5:                jal          ra, 1b
6:                jal          ra, 12f
7:                jal          ra, 15f
8:                jal          gp, 5b
9:                jal          a7, 14f
10:               jal          ra, 16f
11:               jal          ra, 9b
12:               jal          ra, 17f
13:               jal          ra, 3b
14:               jal          ra, 13b
15:               jal          ra, 2b
16:               jal          ra, 4b
17:               srl          zero, s10, s11
sub_4_2:          jal          ra, 4f
0:                jal          ra, 9f
1:                jal          ra, 6f
2:                jal          ra, 15f
3:                jal          gp, 25f
4:                jal          ra, 3b
5:                jal          ra, 17f
6:                jal          t1, 10f
7:                jal          a4, 13f
8:                jal          a6, 27f
9:                jal          ra, 12f
10:               jal          ra, 14f
11:               jal          ra, 8b
12:               jal          ra, 20f
13:               jal          t1, 2b
14:               jal          t1, 11b
15:               jal          s0, 23f
16:               jal          ra, 5b
17:               jal          ra, 0b
18:               jal          ra, 19f
19:               jal          ra, 24f
20:               jal          s0, 26f
21:               jal          ra, 7b
22:               jal          a3, 21b
23:               jal          s9, 16b
24:               jal          tp, 22b
25:               jal          ra, 18b
26:               jal          t1, 1b
27:               sll          s7, t1, s3
sub_4_0:          jal          ra, 20f
0:                jal          gp, 16f
1:                jal          t1, 9f
2:                jal          ra, 3f
3:                jal          ra, 21f
4:                jal          gp, 10f
5:                jal          a0, 2b
6:                jal          t1, 5b
7:                jal          ra, 17f
8:                jal          ra, 1b
9:                jal          ra, 12f
10:               jal          ra, 13f
11:               jal          t1, 18f
12:               jal          ra, 7b
13:               jal          ra, 8b
14:               jal          ra, 0b
15:               jal          ra, 4b
16:               jal          ra, 11b
17:               jal          gp, 14b
18:               jal          ra, 19f
19:               jal          ra, 6b
20:               jal          ra, 15b
21:               sltu         a4, gp, a6
sub_4_5:          jal          ra, 6f
0:                jal          ra, 8f
1:                jal          t1, 2f
2:                jal          t1, 10f
3:                jal          t2, 5f
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          ra, 3b
7:                jal          t1, 4b
8:                jal          t4, 1b
9:                jal          t1, 0b
10:               addi         sp, s5, 1832
sub_4_17:         jal          ra, 9f
0:                jal          t1, 15f
1:                jal          t1, 11f
2:                jal          ra, 20f
3:                jal          ra, 0b
4:                jal          t0, 18f
5:                jal          ra, 6f
6:                jal          sp, 8f
7:                jal          ra, 4b
8:                jal          ra, 7b
9:                jal          ra, 5b
10:               jal          ra, 2b
11:               jal          ra, 12f
12:               jal          ra, 14f
13:               jal          s5, 10b
14:               jal          a3, 17f
15:               jal          ra, 16f
16:               jal          s4, 13b
17:               jal          ra, 3b
18:               jal          ra, 19f
19:               jal          ra, 1b
20:               sub          s4, a0, s11
sub_4_3:          jal          ra, 17f
0:                jal          t1, 12f
1:                jal          ra, 9f
2:                jal          ra, 14f
3:                jal          ra, 20f
4:                jal          ra, 15f
5:                jal          ra, 22f
6:                jal          s10, 13f
7:                jal          t1, 1b
8:                jal          ra, 18f
9:                jal          ra, 8b
10:               jal          ra, 2b
11:               jal          t0, 3b
12:               jal          t1, 21f
13:               jal          s10, 23f
14:               jal          ra, 16f
15:               jal          ra, 10b
16:               jal          ra, 6b
17:               jal          ra, 7b
18:               jal          gp, 0b
19:               jal          ra, 4b
20:               jal          ra, 19b
21:               jal          gp, 5b
22:               jal          ra, 11b
23:               nop
sub_4_4:          jal          ra, 19f
0:                jal          t1, 27f
1:                jal          a5, 25f
2:                jal          s8, 5f
3:                jal          ra, 22f
4:                jal          ra, 12f
5:                jal          ra, 1b
6:                jal          ra, 15f
7:                jal          s8, 28f
8:                jal          ra, 11f
9:                jal          sp, 4b
10:               jal          t1, 8b
11:               jal          a5, 14f
12:               jal          ra, 6b
13:               jal          a0, 7b
14:               jal          gp, 26f
15:               jal          t1, 10b
16:               jal          ra, 20f
17:               jal          ra, 21f
18:               jal          s3, 9b
19:               jal          a0, 16b
20:               jal          ra, 2b
21:               jal          t1, 13b
22:               jal          t1, 23f
23:               jal          ra, 24f
24:               jal          gp, 17b
25:               jal          t1, 18b
26:               jal          ra, 0b
27:               jal          a2, 3b
28:               sltu         s1, s8, s8
sub_4_1:          jal          ra, 13f
0:                jal          ra, 10f
1:                jal          s10, 14f
2:                jal          t1, 7f
3:                jal          t1, 20f
4:                jal          ra, 8f
5:                jal          ra, 0b
6:                jal          t1, 2b
7:                jal          ra, 11f
8:                jal          ra, 19f
9:                jal          t1, 12f
10:               jal          ra, 3b
11:               jal          s3, 1b
12:               jal          ra, 17f
13:               jal          tp, 18f
14:               jal          ra, 5b
15:               jal          s5, 6b
16:               jal          ra, 9b
17:               jal          s5, 15b
18:               jal          s8, 4b
19:               jal          ra, 16b
20:               ori          s1, s1, -1665
sub_4_20:         jal          ra, 4f
0:                jal          gp, 20f
1:                jal          ra, 21f
2:                jal          gp, 23f
3:                jal          ra, 8f
4:                jal          a1, 16f
5:                jal          s6, 17f
6:                jal          gp, 1b
7:                jal          t1, 9f
8:                jal          t1, 14f
9:                jal          s10, 13f
10:               jal          t1, 2b
11:               jal          ra, 15f
12:               jal          tp, 5b
13:               jal          ra, 10b
14:               jal          ra, 0b
15:               jal          t1, 12b
16:               jal          t1, 3b
17:               jal          ra, 7b
18:               jal          t0, 6b
19:               jal          ra, 18b
20:               jal          t1, 22f
21:               jal          ra, 11b
22:               jal          a7, 19b
23:               sll          a7, s1, s8
sub_4_21:         jal          ra, 6f
0:                jal          ra, 7f
1:                jal          tp, 4f
2:                jal          a6, 3f
3:                jal          t1, 13f
4:                jal          ra, 15f
5:                jal          t1, 11f
6:                jal          ra, 2b
7:                jal          t1, 10f
8:                jal          t0, 12f
9:                jal          ra, 1b
10:               jal          ra, 14f
11:               jal          t1, 0b
12:               jal          ra, 9b
13:               jal          ra, 5b
14:               jal          t1, 8b
15:               slt          a6, s2, ra
sub_4_12:         jal          ra, 6f
0:                jal          ra, 7f
1:                jal          ra, 0b
2:                jal          t1, 12f
3:                jal          s3, 5f
4:                jal          a7, 9f
5:                jal          ra, 10f
6:                jal          t1, 8f
7:                jal          ra, 11f
8:                jal          t1, 1b
9:                jal          ra, 2b
10:               jal          ra, 4b
11:               jal          ra, 3b
12:               ori          s8, s9, -1072
sub_4_11:         jal          ra, 16f
0:                jal          t1, 18f
1:                jal          s7, 5f
2:                jal          ra, 22f
3:                jal          s10, 21f
4:                jal          ra, 0b
5:                jal          ra, 12f
6:                jal          a4, 9f
7:                jal          ra, 20f
8:                jal          t0, 17f
9:                jal          ra, 23f
10:               jal          ra, 19f
11:               jal          ra, 7b
12:               jal          t1, 14f
13:               jal          ra, 2b
14:               jal          t1, 6b
15:               jal          a1, 11b
16:               jal          ra, 8b
17:               jal          ra, 24f
18:               jal          sp, 3b
19:               jal          s7, 13b
20:               jal          ra, 1b
21:               jal          ra, 25f
22:               jal          tp, 4b
23:               jal          s6, 10b
24:               jal          sp, 15b
25:               srl          ra, a5, s1
sub_4_6:          jal          ra, 10f
0:                jal          ra, 20f
1:                jal          ra, 4f
2:                jal          ra, 3f
3:                jal          t1, 8f
4:                jal          ra, 0b
5:                jal          sp, 13f
6:                jal          s8, 11f
7:                jal          ra, 6b
8:                jal          t1, 18f
9:                jal          ra, 19f
10:               jal          ra, 2b
11:               jal          ra, 14f
12:               jal          gp, 9b
13:               jal          ra, 16f
14:               jal          gp, 22f
15:               jal          ra, 7b
16:               jal          ra, 15b
17:               jal          ra, 12b
18:               jal          s3, 21f
19:               jal          t1, 5b
20:               jal          ra, 17b
21:               jal          t1, 1b
22:               srai         a4, s0, 11
sub_4_8:          jal          ra, 8f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          t1, 7f
3:                jal          ra, 9f
4:                jal          t1, 5f
5:                jal          ra, 6f
6:                jal          ra, 0b
7:                jal          s3, 1b
8:                jal          t2, 2b
9:                jal          ra, 4b
10:               xor          a4, tp, s3
sub_4_18:         jal          ra, 11f
0:                jal          t1, 1f
1:                jal          tp, 9f
2:                jal          ra, 5f
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          ra, 4b
6:                jal          ra, 0b
7:                jal          t1, 2b
8:                jal          ra, 10f
9:                jal          ra, 3b
10:               jal          a2, 13f
11:               jal          ra, 12f
12:               jal          t1, 6b
13:               jal          ra, 14f
14:               srai         s7, a6, 17
sub_4_22:         jal          ra, 11f
0:                jal          ra, 10f
1:                jal          ra, 2f
2:                jal          ra, 13f
3:                jal          t2, 0b
4:                jal          ra, 15f
5:                jal          ra, 1b
6:                jal          t1, 4b
7:                jal          s4, 3b
8:                jal          t1, 6b
9:                jal          t1, 7b
10:               jal          ra, 8b
11:               jal          ra, 5b
12:               jal          ra, 16f
13:               jal          ra, 14f
14:               jal          ra, 9b
15:               jal          ra, 12b
16:               and          s6, s3, s3
sub_4_14:         jal          ra, 14f
0:                jal          t3, 4f
1:                jal          sp, 7f
2:                jal          t1, 0b
3:                jal          ra, 2b
4:                jal          ra, 9f
5:                jal          ra, 18f
6:                jal          ra, 1b
7:                jal          a4, 5b
8:                jal          t1, 6b
9:                jal          gp, 10f
10:               jal          ra, 15f
11:               jal          ra, 3b
12:               jal          t1, 19f
13:               jal          ra, 16f
14:               jal          ra, 13b
15:               jal          ra, 17f
16:               jal          ra, 8b
17:               jal          t1, 12b
18:               jal          tp, 11b
19:               slli         t4, a3, 2
                  slli         s7, s0, 26
                  sltiu        ra, s1, 1819
                  srai         t5, s2, 31
                  sltu         zero, s5, a4
                  srl          t2, s4, a4
                  bge          a3, s1, 23f
                  bltu         s7, a6, 16f
                  or           t0, t6, s9
                  srli         a6, s0, 10
                  bge          s3, gp, 14f
                  sltu         zero, t6, s8
                  or           s8, t5, t0
                  bge          sp, t4, 14f
                  addi         t2, s6, -1785
14:               beq          s6, tp, 24f
                  auipc        gp, 907392
16:               and          s8, a1, s9
                  sltu         sp, t1, s2
                  bltu         s7, s11, 36f
                  bgeu         a0, s0, 36f
                  and          tp, s3, s8
                  addi         gp, a6, 221
                  and          a4, sp, s3
23:               auipc        a1, 78188
24:               bgeu         t6, sp, 38f
                  bltu         a4, s10, 32f
                  nop
                  ori          a1, a4, -34
                  beq          s1, s0, 43f
                  auipc        s3, 218186
                  or           gp, t4, s3
                  auipc        s0, 640851
32:               sra          a0, t3, t5
                  sra          a4, s8, t6
                  slli         zero, a7, 26
                  add          ra, s10, s9
36:               sltu         ra, a4, zero
                  slt          s7, s3, s8
38:               sub          s5, t5, a6
                  srl          a7, a2, s4
                  slli         t4, s7, 25
                  xori         s7, zero, -935
                  or           t5, t2, a4
43:               beq          t1, s2, 46f
                  srli         t2, a3, 30
                  sll          s5, s8, a1
46:               andi         a0, t2, 131
                  srli         s7, ra, 11
                  add          t2, t4, sp
                  sltu         a2, a7, s1
                  ori          s7, t2, -415
                  sll          s1, t3, a2
                  srl          s0, s4, gp
                  slti         a0, t0, 30
                  sra          t5, s3, s11
                  sub          s4, s6, s3
                  addi         a1, a6, 1731
                  addi         a6, a0, -1965
                  blt          sp, s2, 68f
                  slt          t3, t5, t2
                  lui          a0, 693071
                  xor          t2, s2, s9
                  sltu         gp, tp, s5
                  beq          s2, a3, 65f
                  sll          ra, a0, t2
65:               lui          ra, 255382
                  sll          s1, a1, s7
                  lui          s7, 29691
68:               bge          s2, t6, 72f
                  or           tp, t3, s10
                  slt          t2, a3, tp
                  bne          a1, s8, 83f
72:               nop
                  and          t5, a4, a6
                  bgeu         t2, t2, 80f
                  and          a2, s2, tp
                  ori          tp, s4, -390
                  xor          t0, t6, s4
                  andi         s1, a7, 776
                  slli         t3, ra, 16
80:               beq          t0, zero, 83f
                  bgeu         t6, s3, 82f
82:               srli         a3, ra, 10
83:               srai         s5, s3, 2
                  bne          zero, t2, 90f
                  nop
                  sltiu        sp, s0, 1930
                  bltu         s9, s11, 106f
                  add          a1, a4, t4
                  slti         sp, s8, -220
90:               slti         t4, s2, 1279
                  bge          a1, sp, 96f
                  bge          t3, s1, 105f
                  or           a6, gp, a0
                  bgeu         s10, zero, 114f
                  slti         t5, a7, -1675
96:               bne          a4, a1, 98f
                  blt          t5, a4, 113f
98:               bltu         zero, s5, 102f
                  sub          a1, t1, ra
                  slt          gp, t1, a6
                  and          s1, s0, s1
102:              auipc        s6, 882303
                  sra          a7, s3, t2
                  add          a7, s8, t3
105:              blt          tp, ra, 120f
106:              bltu         gp, t5, 123f
                  bne          s11, s10, 108f
108:              add          t2, s4, s2
                  sub          a2, a6, tp
                  bltu         s2, sp, 116f
                  bltu         s5, s11, 113f
                  or           a1, a3, s9
113:              sltiu        zero, s7, -1122
114:              lui          s7, 501458
                  lui          s5, 777718
116:              ori          s5, tp, -870
                  nop
                  andi         t0, s2, -1850
                  sll          t2, s11, t3
120:              or           t4, a7, a0
                  xor          gp, t5, t2
                  srai         a3, s8, 28
123:              slti         s5, a5, 1663
                  slti         t1, s8, -2036
                  xor          zero, a3, zero
                  slli         a1, a4, 15
                  sra          a5, s9, s4
                  and          sp, t0, s9
                  beq          s4, a2, 132f
                  bne          a4, a1, 137f
                  srli         ra, s4, 25
132:              srai         a6, a5, 2
                  ori          t1, s7, -1359
                  srai         sp, a6, 17
                  srl          t0, a4, t1
                  blt          s1, s3, 148f
137:              srai         gp, a7, 24
                  ori          s5, ra, -1017
                  sltu         t1, t1, s9
                  auipc        s6, 1001949
                  beq          t0, s2, 147f
                  bne          a2, sp, 143f
143:              beq          a3, a4, 153f
                  ori          a4, a5, 1782
                  sltiu        t4, a0, 60
                  sra          a0, a2, tp
147:              or           s7, t6, gp
148:              bne          s3, t2, 163f
                  and          a0, s8, a1
                  bge          s1, s7, 152f
                  srl          t1, zero, s11
152:              sub          a5, s2, s5
153:              srli         ra, t2, 3
                  sltu         a5, s4, s11
                  sltu         s6, s5, s0
                  xori         ra, tp, 873
                  add          s10, sp, t1
                  srai         sp, t3, 27
                  sll          t3, sp, s5
                  sltu         a6, s8, s11
                  ori          t4, t1, 471
                  bge          a5, s5, 176f
163:              sll          tp, a4, t0
                  ori          s7, ra, 733
                  sll          t0, a3, s4
                  sltiu        a7, a4, -372
                  or           s8, t2, ra
                  sltiu        zero, s7, 1485
                  beq          s5, a5, 186f
                  addi         t4, a2, -257
                  ori          s7, zero, 53
                  sub          a0, s6, s0
                  srli         t0, a6, 4
                  beq          t1, zero, 192f
                  slt          a6, sp, s2
176:              bge          a4, ra, 177f
177:              add          s6, s5, s5
                  bne          s5, a2, 188f
                  sltu         s0, s11, t4
                  srli         zero, s11, 7
                  srai         ra, t6, 13
                  auipc        zero, 184948
                  bgeu         s3, s1, 202f
                  sltiu        a0, s3, 1143
                  sltu         t2, s2, s5
186:              slt          s3, s0, a3
                  slti         s0, s2, -419
188:              sltu         gp, s4, tp
                  srli         t0, s10, 25
                  bge          s7, a1, 194f
                  xor          s6, s0, sp
sub_4_7:          jal          ra, 5f
0:                jal          t1, 1f
1:                jal          gp, 13f
2:                jal          ra, 3f
3:                jal          ra, 4f
4:                jal          ra, 12f
5:                jal          ra, 10f
6:                jal          t1, 2b
7:                jal          gp, 0b
8:                jal          ra, 6b
9:                jal          t1, 11f
10:               jal          t0, 15f
11:               jal          t1, 8b
12:               jal          ra, 14f
13:               jal          ra, 17f
14:               jal          ra, 16f
15:               jal          ra, 9b
16:               jal          t1, 7b
17:               slt          s3, t4, a6
192:              sub          s3, gp, a5
                  slli         gp, t0, 5
194:              slti         s3, t4, 812
                  srai         t3, t6, 12
                  srl          a4, s0, t1
                  sltiu        a1, a1, 702
                  srai         s5, a6, 4
                  bgeu         t3, s1, 204f
                  srai         s5, s0, 7
                  add          s0, s3, t2
202:              nop
                  sltiu        t5, s4, -452
204:              srai         a2, s6, 29
                  bgeu         t0, s5, 220f
                  sltiu        s10, s8, 744
                  add          sp, a6, a2
                  lui          a5, 1041372
                  xori         s1, s9, -1673
                  sra          a7, t4, s10
                  or           a5, ra, t3
                  add          t1, a1, s5
                  auipc        a6, 298660
                  add          a5, a3, s0
                  bge          tp, gp, 219f
                  sll          sp, t0, a1
                  bgeu         t3, s10, 235f
                  ori          s9, t2, 1678
219:              xori         a5, t2, -1458
220:              lui          t3, 128816
                  auipc        s5, 141115
                  sub          a6, sp, t4
                  ori          sp, a6, 950
                  xori         sp, s1, 840
                  nop
                  auipc        a7, 300713
                  bltu         s0, a2, 230f
                  slti         t3, a7, -858
                  bgeu         gp, s1, 249f
230:              lui          t1, 646276
                  blt          tp, s4, 237f
                  lui          s5, 409182
                  srai         a6, tp, 5
                  bne          s6, gp, 247f
235:              srli         s7, zero, 15
                  addi         t0, s7, 849
237:              slt          s3, s7, t3
                  andi         s5, s6, -1727
                  bne          s7, s7, 249f
                  ori          s8, a1, 733
                  addi         a0, s4, -443
                  slli         s8, s1, 3
                  slti         s4, t2, 13
                  sltu         a0, a0, s8
                  bltu         a7, t4, 247f
                  sltu         a2, s8, s4
247:              addi         s10, tp, -532
                  addi         sp, s8, 721
249:              sub          zero, t5, t2
                  bgeu         s0, a0, 266f
                  beq          a6, s7, 268f
                  andi         a2, s3, -645
                  bltu         s0, s8, 258f
                  andi         t5, t1, -139
                  bne          a7, a2, 261f
                  xori         a1, s6, -1725
                  bltu         s8, t0, 262f
258:              auipc        s7, 921568
                  sll          s5, s2, s3
                  ori          s1, t0, 1195
261:              srai         ra, a2, 1
262:              slli         a6, a2, 11
                  sub          s6, s10, zero
                  sra          a7, ra, a2
                  auipc        ra, 211009
266:              addi         s3, t0, -337
                  nop
268:              add          t1, tp, s2
                  blt          s0, a7, 287f
                  bltu         a3, ra, 276f
                  slli         a4, s3, 8
                  ori          tp, t4, 622
                  sra          a0, t0, s2
                  beq          s4, t2, 280f
                  bgeu         t4, s7, 281f
276:              and          sp, s4, t4
                  slti         a2, s8, 866
                  sll          s6, s6, s9
                  sll          s4, t5, t0
280:              lui          a2, 805105
281:              srl          a0, a6, a6
                  addi         s1, a7, -1290
                  slti         t4, s2, -891
                  srai         t2, s1, 0
                  sltu         t0, s8, s2
                  xor          a5, a7, ra
287:              slt          s0, s10, a3
                  ori          gp, s5, 1642
                  xor          ra, a5, sp
                  auipc        s6, 167060
                  bne          t3, s8, 295f
                  sltiu        a5, zero, -1237
                  slt          a2, t1, a4
                  slli         s7, a2, 24
295:              xori         s10, t0, 1639
                  sub          t0, sp, s9
                  nop
                  sltiu        t1, s11, -499
                  srai         t2, a4, 21
                  add          t0, a3, t4
                  blt          a5, gp, 318f
                  sll          sp, s11, s0
                  beq          a7, t0, 315f
                  blt          s1, s7, 306f
                  lui          a4, 762166
306:              bltu         t2, sp, 308f
                  bge          t2, s2, 317f
308:              srli         t2, sp, 16
                  sltu         gp, s6, a1
                  sltiu        s4, a6, 1418
                  nop
                  add          a6, a5, a5
                  slli         a3, a3, 24
                  sra          a2, t1, tp
315:              addi         a4, s0, 211
                  slli         s8, t0, 4
317:              xor          t4, s4, t1
318:              blt          a2, s9, 332f
                  slli         s6, s4, 28
                  bge          a1, s11, 339f
sub_4_15:         jal          ra, 2f
0:                jal          a0, 18f
1:                jal          ra, 9f
2:                jal          a5, 3f
3:                jal          ra, 20f
4:                jal          ra, 16f
5:                jal          s7, 17f
6:                jal          gp, 8f
7:                jal          t1, 0b
8:                jal          ra, 12f
9:                jal          ra, 7b
10:               jal          t1, 1b
11:               jal          t1, 19f
12:               jal          t1, 11b
13:               jal          tp, 21f
14:               jal          gp, 10b
15:               jal          ra, 6b
16:               jal          t1, 14b
17:               jal          sp, 22f
18:               jal          t1, 13b
19:               jal          a3, 4b
20:               jal          t1, 15b
21:               jal          s1, 5b
22:               ori          s5, t2, 1834
                  bge          a4, a5, 326f
                  ori          t4, a2, 1264
                  slli         a1, a5, 7
                  bne          s11, a1, 325f
325:              xor          a5, s11, gp
326:              blt          t4, a0, 329f
                  bne          t3, s10, 343f
                  or           t5, s3, s9
329:              lui          zero, 181091
                  srl          a0, s1, s7
                  slti         t1, t2, -1391
332:              sltiu        s0, a0, 315
                  addi         a7, gp, 31
                  sra          sp, s2, sp
                  sltiu        a5, t1, 1266
                  nop
                  sltiu        t1, t1, 65
                  andi         s6, a3, -235
339:              slt          a2, t4, t3
                  slti         s6, s10, -1120
                  add          t4, gp, t0
                  bge          s0, t5, 344f
343:              srli         s7, a3, 10
344:              add          t2, s9, t2
                  sra          s3, s9, a2
sub_4_16:         jal          ra, 17f
0:                jal          a1, 3f
1:                jal          ra, 18f
2:                jal          ra, 6f
3:                jal          ra, 8f
4:                jal          ra, 10f
5:                jal          s10, 15f
6:                jal          s7, 7f
7:                jal          s8, 5b
8:                jal          t1, 12f
9:                jal          t1, 16f
10:               jal          ra, 20f
11:               jal          sp, 14f
12:               jal          ra, 13f
13:               jal          t0, 1b
14:               jal          t2, 2b
15:               jal          ra, 19f
16:               jal          ra, 11b
17:               jal          s10, 9b
18:               jal          ra, 4b
19:               jal          t1, 0b
20:               jal          ra, 21f
21:               add          s3, t0, a1
                  sra          a5, t1, t1
                  addi         s7, ra, 1893
                  xori         s8, a6, 1029
                  andi         t4, t5, 1135
                  xor          tp, t5, a7
                  sltiu        t1, sp, -1844
                  slti         a0, s3, -1563
                  srl          ra, a3, t2
                  srli         a6, s11, 17
                  andi         gp, t4, 1772
                  and          a4, s9, t4
                  srl          a3, s4, t6
                  slli         a1, s7, 19
                  slt          s6, s1, s8
                  sll          s5, s8, t6
                  sra          a6, a1, s9
                  sltu         a5, s2, zero
                  ori          s6, t3, -226
                  srl          s6, a3, t2
                  bltu         a1, a6, 378f
                  beq          a0, s1, 383f
                  srli         s6, s5, 9
                  srl          a3, a0, a4
                  slti         zero, s0, -2017
                  srli         a6, s1, 27
                  slti         zero, s4, -669
                  la           s6, sub_5
                  srl          s1, a0, t3
                  sltiu        a6, s4, -1010
                  or           t2, s6, ra
                  addi         s6, s6, 234
                  bltu         t4, s1, sub_4_j7 #branch to jump instr
                  and          a2, s7, a6
sub_4_j7:         jalr         ra, s6, -234 #jump sub_4 -> sub_5
                  bgeu         t4, gp, 381f
                  bne          s11, s8, 387f
                  sltiu        sp, s2, 3
                  slli         a4, zero, 3
                  srl          s5, t4, t5
                  ori          sp, t1, 1036
                  beq          ra, a3, 397f
378:              xori         sp, s7, 1900
                  sra          s8, t1, s11
                  sll          a0, s1, s1
381:              srl          t1, t3, a5
                  add          a3, s1, s0
383:              nop
                  or           a1, t5, s9
                  xori         t1, s9, -275
                  andi         gp, a2, -1544
387:              sra          a4, t2, t2
                  slli         t2, ra, 18
                  sll          t0, ra, a4
                  xori         t3, t5, -1925
                  slli         ra, a6, 25
                  beq          t5, ra, 396f
                  sltiu        t5, t1, -1616
                  and          a6, s0, s11
                  sra          a5, sp, t5
396:              and          a0, s1, s4
397:              andi         a0, ra, 1490
                  slt          tp, s8, s6
                  bgeu         ra, s6, 402f
                  ori          gp, a7, 1811
                  bltu         s1, t1, 411f
402:              lui          s8, 87561
                  sra          s6, a5, t6
                  sub          a0, sp, a1
                  sltiu        t1, a5, 862
                  lui          t4, 386635
                  sub          s3, t4, s7
                  sra          ra, t3, s4
                  srl          s3, a3, a4
                  sltu         a3, s6, a1
411:              addi         t3, s4, 1986
                  auipc        s3, 783738
                  xori         s3, t1, 223
                  lui          t0, 832103
                  auipc        s10, 616017
                  andi         a1, t4, 1210
                  lui          t5, 1024542
                  sltiu        a4, tp, 1166
                  add          s10, sp, s8
                  sll          a1, t2, ra
                  blt          s11, s3, 439f
                  srl          s7, a7, t2
                  sra          t0, s8, a1
                  sra          t1, s4, t1
                  slt          a4, t6, sp
                  beq          s0, s7, 433f
                  sltiu        a2, s10, -281
                  srl          s1, t1, t1
                  sra          a0, s6, s2
                  nop
                  sra          ra, s6, sp
                  and          a5, s2, s8
433:              bltu         t1, a3, 434f
434:              sub          a1, t1, sp
                  blt          s4, t6, 450f
                  bltu         a7, gp, 438f
                  slli         a2, t1, 7
438:              sll          s1, s5, s4
439:              xor          t0, t2, a6
                  addi         s0, t0, -1744
                  bgeu         a3, ra, 454f
                  xori         a1, t1, 414
                  or           a2, s2, s5
                  bgeu         tp, s2, 454f
                  sra          t1, t0, s8
                  slti         t5, s7, -1541
                  sub          t5, s8, t2
                  add          a0, t2, s4
                  sltu         s1, a4, a1
450:              xori         s4, t4, -533
                  srli         s7, gp, 13
                  slt          s4, zero, t2
                  srl          t1, sp, s4
454:              ori          a7, s7, -812
                  or           a4, s7, a7
                  bgeu         a3, s3, 468f
                  beq          zero, t1, 462f
                  andi         t5, t5, 1325
                  beq          tp, ra, 477f
                  bne          gp, s8, 470f
                  add          s3, s5, sp
462:              blt          s2, s6, 467f
                  beq          s9, ra, 480f
                  and          a7, a7, s0
                  xori         a7, s4, -196
                  sll          tp, a6, s1
467:              slti         s7, t3, -1793
468:              ori          s7, s9, 1407
                  sub          s0, t4, t1
470:              xor          t1, s7, a3
                  bltu         t4, s4, 472f
472:              add          a3, t3, s6
                  bgeu         s9, t2, 491f
                  blt          a2, s2, 490f
                  beq          s4, s5, 481f
                  srai         t5, t1, 15
477:              bne          a4, a7, 497f
                  add          a3, a0, a3
                  blt          s3, t6, 486f
480:              sub          s10, s6, s9
481:              bne          s5, a7, 482f
482:              slt          s10, s6, s1
                  sll          a6, s11, t6
                  auipc        a7, 1044902
                  sub          t1, tp, a2
486:              ori          s5, s2, 612
                  sra          t0, zero, s2
                  sll          s3, t2, s5
                  slt          s8, s0, a5
490:              bne          t3, s7, 496f
491:              lui          a6, 220493
                  bge          t0, t0, 502f
                  nop
                  add          s3, s1, s4
                  bgeu         s5, a3, 499f
496:              srl          s8, a4, zero
497:              ori          t5, t1, -859
                  sltu         a2, s11, t0
499:              bge          t4, a3, 501f
                  sltu         a5, a5, ra
501:              sltu         a2, s11, a4
502:              srai         a7, s7, 26
                  sltiu        zero, s3, 788
                  slli         zero, t3, 20
                  sub          a5, a3, s2
                  bge          gp, sp, 523f
                  slti         s8, s1, -1193
                  sltu         sp, a2, s11
                  bltu         a4, s0, 511f
                  xor          s4, tp, s4
511:              add          s9, t4, s4
                  sltiu        s1, s10, 1592
                  srl          sp, t1, t2
                  sub          t1, t6, t4
                  srai         t2, a4, 19
                  andi         a5, s1, -467
                  sub          s7, s6, s6
                  addi         s3, s11, -1820
                  slt          a2, s5, t1
                  srl          a0, s10, s10
                  and          a2, s9, t5
                  ori          t1, a5, -1139
523:              srai         t3, s9, 27
                  or           tp, t6, zero
                  bgeu         s3, s4, 528f
                  add          s1, a3, t2
                  slli         a0, s8, 31
528:              sll          t2, a0, a2
                  bgeu         s10, gp, 544f
                  slli         t2, zero, 18
                  nop
                  auipc        sp, 662412
                  auipc        a3, 335012
                  blt          a6, t6, 549f
                  auipc        s0, 976010
                  ori          a2, s9, -1730
                  bltu         a4, s6, 541f
                  add          s1, s8, s4
                  sltiu        a5, s4, -612
                  and          tp, s10, s11
541:              add          sp, a1, t5
                  andi         a5, s8, 1623
                  sltiu        zero, s8, -1547
544:              sub          t1, s2, s1
                  bne          t6, a5, 559f
                  sra          sp, zero, t1
                  bne          s2, s10, 550f
                  xor          a3, a3, s3
549:              lui          t1, 907824
550:              add          ra, s0, ra
                  add          a1, s3, a3
                  sltu         s6, s0, s7
                  addi         a3, a5, 1111
                  auipc        t5, 926394
                  srli         a2, a3, 30
                  xor          t4, tp, s3
                  and          a2, s2, a2
                  lui          a1, 1034714
559:              slli         a5, s5, 12
                  and          s0, tp, s3
                  xori         t4, s11, -1050
                  sra          s3, zero, s6
                  bgeu         a5, a7, 582f
                  slli         a7, s1, 20
                  bge          a6, s1, 571f
                  xor          s6, s9, gp
                  bgeu         s1, s1, 573f
                  srai         a4, t3, 23
                  srli         t3, s1, 11
                  sra          ra, a5, t0
571:              add          sp, s10, a2
                  xori         s3, t1, 269
573:              slli         a2, a2, 25
                  ori          t4, a2, 35
                  ori          s6, s9, 1272
                  bgeu         s7, t3, 591f
                  andi         s10, t0, -406
                  add          s1, t0, t6
                  sltu         zero, t5, a3
                  bne          s0, a7, 597f
                  srl          t2, t5, gp
582:              sltiu        s3, s8, -1056
                  srl          a7, t4, tp
                  bge          a6, t2, 589f
                  ori          tp, s5, 132
                  bne          a3, t2, 606f
                  srai         sp, sp, 29
                  sll          s9, gp, t3
589:              auipc        s9, 137422
                  bltu         t3, sp, 596f
591:              srai         gp, s7, 8
                  bltu         s6, s6, 594f
                  andi         s10, ra, -542
594:              srl          a7, s6, t5
                  sltu         t4, zero, t6
596:              and          a2, tp, s8
597:              bge          t0, a0, 600f
                  srai         t3, t1, 11
                  slli         tp, s2, 5
600:              sltu         s6, t3, a0
                  addi         s6, s8, -979
                  slti         t3, s10, -102
                  slt          s7, gp, s9
                  sltiu        s8, a2, -652
                  slli         t2, s11, 17
606:              sll          s0, s1, t2
                  addi         t4, t5, 618
                  auipc        s3, 696216
                  xori         ra, s3, 203
                  srl          t2, tp, s2
                  xori         a0, t3, 124
                  slti         tp, t5, -1984
                  nop
                  xor          a5, zero, a5
                  srl          s10, t0, s6
                  sra          s7, t6, s4
                  bgeu         a4, s7, 627f
                  slt          a2, s3, tp
                  nop
                  srl          t2, zero, t0
                  xori         s5, a7, 1540
                  blt          s8, t2, 632f
                  auipc        s8, 146654
                  add          a1, ra, a2
                  nop
                  andi         s3, t4, -1685
627:              ori          s3, tp, 195
                  add          s9, a7, sp
                  srli         s7, a4, 13
                  or           t2, s9, ra
                  srl          a0, s3, s10
632:              bgeu         gp, t4, 648f
                  sltiu        s7, t5, 1649
                  beq          a7, a6, 651f
                  addi         t2, ra, -909
                  addi         a4, s9, 1682
                  add          sp, t5, a7
                  and          s8, a1, t1
                  blt          t0, a7, 652f
                  andi         s0, zero, 1214
                  bgeu         s7, a3, 646f
                  srl          t4, a1, a4
                  auipc        a6, 796416
                  blt          s7, t5, 646f
                  add          a5, a5, s6
646:              bltu         s10, t3, 656f
                  blt          s7, a2, 661f
648:              bltu         a5, a4, 655f
                  srl          t1, s2, a6
                  and          s10, a2, a2
651:              bgeu         tp, s4, 652f
652:              sltiu        sp, s2, -1409
                  slt          ra, a5, a7
                  bltu         zero, s11, 660f
655:              and          t4, a2, s8
656:              lui          a7, 269922
                  or           s8, a4, sp
                  sltiu        s10, t0, -1824
                  slli         ra, s7, 28
660:              srli         a5, t6, 29
661:              addi         t5, t2, 1305
                  bge          a1, t1, 665f
                  slti         ra, a2, 164
                  bltu         ra, t3, 683f
665:              srai         a1, t0, 6
                  and          t2, tp, tp
                  sltiu        a5, s9, 618
                  bltu         t1, a2, 672f
                  bgeu         t5, a1, 687f
                  sltiu        s4, zero, -1572
                  sltiu        s8, t6, 423
672:              srl          s4, t6, s4
                  nop
                  sltiu        t2, a6, 673
                  srl          s4, s5, s3
                  sll          s1, s3, s3
                  xori         tp, s6, -297
                  blt          s4, s11, 696f
                  sll          a3, tp, sp
                  sll          t2, gp, t0
                  add          t0, tp, tp
                  andi         t4, t0, 793
683:              sub          t4, a3, s9
                  srai         s10, s5, 19
                  srl          s5, s2, a2
                  sll          a2, tp, zero
687:              srai         gp, t6, 21
                  sra          s6, a5, a4
                  xori         tp, s2, -356
                  sll          t4, zero, t6
                  addi         s7, sp, 1397
                  sll          a0, s7, gp
                  slti         s1, s10, -499
                  lui          a0, 506724
                  slt          a1, a6, s11
696:              or           zero, s7, a3
                  and          t5, s4, t0
                  andi         a2, s6, -1298
                  and          a0, a4, a2
                  sltu         a6, a2, a2
                  addi         ra, a3, -366
                  xori         a0, t0, 1843
                  sra          s10, ra, t5
                  bgeu         a4, a3, 706f
                  auipc        s6, 627431
706:              slti         s5, gp, 490
                  slti         sp, s9, 282
                  or           s10, tp, t3
                  andi         a7, gp, 1215
                  slti         s1, s10, -1324
                  blt          a4, tp, 726f
                  bge          s3, s6, 716f
                  addi         a3, a0, -924
                  srl          gp, zero, ra
                  addi         t5, t1, -712
716:              lui          a5, 230757
                  bltu         a0, s10, 718f
718:              srli         s1, t2, 28
                  slti         t5, a7, 1926
                  lui          a5, 789293
                  bltu         ra, gp, 733f
                  sltiu        t1, s0, 302
                  bltu         s7, a4, 724f
724:              lui          a3, 224311
                  xori         t2, t0, 596
726:              bne          zero, gp, 728f
                  sra          a4, a5, s9
728:              sra          s7, t3, s0
                  lui          s5, 163131
                  bge          a4, s11, 734f
                  sra          tp, s3, a4
                  bltu         t4, s11, 735f
733:              xor          tp, a3, s3
734:              add          a0, t2, a2
735:              auipc        s4, 528017
                  sll          tp, s11, a3
                  slti         t3, s10, -1758
                  ori          a2, s3, -626
                  xor          a4, s5, s6
                  sra          t5, s11, a6
                  sra          a4, s3, t5
                  beq          a2, s8, 749f
                  srli         s7, t6, 5
                  sra          a4, s8, s9
                  sll          a0, s7, t2
                  bge          sp, t4, 752f
                  sltu         a3, ra, s11
                  sra          s9, s1, s11
749:              slli         zero, s10, 29
                  sll          t3, s6, t0
                  srl          a4, t1, s4
752:              bge          tp, s11, 755f
                  blt          t6, a1, 755f
                  slti         s0, gp, 618
755:              lui          ra, 634618
                  addi         a6, s8, -895
                  sltiu        s8, s11, -1067
                  slt          a1, t4, a1
                  nop
                  auipc        s4, 825436
                  xor          a4, s5, t0
                  xor          s4, s10, t3
                  slt          s0, s1, ra
                  srai         s8, s4, 12
                  srli         t4, s1, 4
                  auipc        a2, 234489
                  slti         s9, gp, 1602
                  slli         a5, a7, 23
                  addi         a4, t6, 276
                  add          s7, a4, sp
                  addi         gp, zero, 56
                  sra          s6, a0, t5
                  slt          zero, s6, s4
                  xori         t2, s9, -684
                  sra          s5, zero, t1
                  xor          t4, zero, s3
                  andi         a5, t2, 1982
                  slli         tp, gp, 2
                  sub          a0, s2, s7
                  xori         a2, t1, 2026
                  auipc        tp, 301661
                  srli         t1, s11, 17
                  bne          s8, gp, 796f
                  addi         zero, a1, 54
                  lui          t0, 492028
                  beq          a0, a5, 801f
                  bne          t2, t6, 802f
                  auipc        s9, 598078
                  srl          s1, a3, t5
                  srl          ra, a0, s3
                  slli         t1, s0, 25
                  andi         sp, a5, 504
                  auipc        t0, 309809
                  xori         s9, gp, 838
                  bne          s7, s10, 805f
796:              srli         a5, a7, 28
                  sll          sp, t3, s11
                  or           a2, s1, t4
                  lui          t0, 314470
                  sub          a5, s0, s9
801:              and          s1, a7, s1
802:              bltu         a5, t1, 807f
                  srli         a4, t2, 0
                  lui          s5, 483030
                  xori         s0, s0, -1758
                  xori         s5, ra, -1098
                  sra          s1, a7, s7
                  or           s0, a0, s10
                  or           zero, a7, s5
                  sltu         t3, s7, t4
sub_4_j8:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  nop
                  blt          s8, s2, 823f
805:              or           a3, t2, t4
                  srl          t2, t2, s11
807:              addi         t2, t3, 305
                  slli         ra, s8, 11
                  srai         a7, a6, 16
                  bltu         s8, t2, 828f
                  blt          t1, s8, 817f
                  or           t2, a6, t0
                  bltu         s4, a2, 830f
                  slli         s4, gp, 22
                  bne          s6, a1, 825f
                  andi         sp, zero, -1247
817:              lui          s3, 837786
                  slti         ra, s8, 1858
                  blt          t3, a7, 825f
                  slli         ra, a5, 12
                  slli         t4, t4, 29
                  slti         s4, s4, 873
823:              add          t5, s10, ra
                  bne          t1, ra, 829f
825:              blt          s3, s1, 845f
                  and          t5, s7, s11
                  sub          t3, s11, s4
828:              addi         s3, s9, -390
829:              nop
830:              srai         gp, t4, 12
                  andi         a4, s9, 574
                  addi         s9, tp, -92
                  sll          a6, a7, s7
                  nop
                  auipc        gp, 851877
                  bltu         s5, s11, 840f
                  sra          a1, a4, s7
                  srai         s3, s7, 30
                  addi         s4, t3, 967
840:              srl          s3, s11, s6
                  auipc        t4, 835724
                  auipc        a3, 515227
                  and          gp, s10, s0
                  sll          s8, a4, s5
845:              andi         t0, s2, -1790
                  bgeu         s6, s5, 847f
847:              xori         sp, a0, -1711
                  sltu         sp, ra, a3
                  beq          t2, s1, 859f
                  srli         s0, t5, 7
                  andi         t5, a5, 852
                  slt          s3, s10, a7
                  sltiu        a1, s10, -337
                  add          s0, a3, s0
                  bgeu         s5, a6, 869f
                  srl          s10, ra, a3
                  srl          a7, a0, s3
                  and          s6, s2, s7
859:              slti         a6, s6, -327
                  bgeu         tp, s6, 878f
                  beq          a4, ra, 863f
                  srl          sp, a4, t4
863:              blt          s6, a0, 875f
                  nop
                  xori         ra, t3, 1640
                  bltu         t3, gp, 882f
                  lui          t2, 597538
                  nop
869:              ori          t3, t0, 1185
                  blt          s1, a6, 887f
                  xor          s7, sp, s7
                  sll          sp, s3, ra
                  xor          s4, tp, gp
                  add          t3, a1, t6
875:              ori          sp, t4, -223
                  bge          a3, s4, 880f
                  andi         s7, s7, -1177
878:              or           ra, s6, tp
                  nop
880:              xori         t4, s10, 569
                  andi         ra, tp, 1396
882:              nop
                  nop
                  sltiu        t1, s0, 240
                  blt          t5, a5, 902f
                  bgeu         a3, s2, 889f
887:              sll          a4, t2, a2
                  bltu         t6, a3, 904f
889:              xor          s8, s1, t0
                  bltu         a5, t5, 907f
                  add          a7, a0, a0
                  bltu         t4, a5, 893f
893:              sra          a1, s0, s5
                  addi         t5, s10, 168
                  or           gp, s2, a7
                  slt          s8, a5, tp
                  andi         s8, a0, 114
                  add          t0, s1, t2
                  andi         s0, t5, -1280
                  sll          t4, s1, s3
                  lui          s0, 925136
902:              sltiu        a3, a0, -901
                  blt          s11, a6, 913f
904:              addi         ra, t0, -1029
                  sll          a4, s10, a5
                  and          s4, a6, s9
907:              nop
                  xori         s1, s8, 194
                  add          s9, s8, a7
                  sltiu        ra, a0, 1843
                  lui          s1, 577269
                  srli         a5, t6, 2
913:              sltu         t4, t5, t6
                  xor          a2, s3, a4
                  slt          s8, s2, gp
                  sltiu        t5, s3, 1076
                  srli         s5, sp, 5
                  sll          a1, a3, s3
                  ori          s9, s11, 1434
                  bge          t3, ra, 935f
                  srli         s3, zero, 10
                  sll          a4, s1, s4
                  slti         a7, zero, -1864
                  xor          a4, s2, gp
                  srl          a0, s4, sp
                  ori          s6, t2, 609
                  beq          a5, a3, 941f
                  bne          a4, s9, 934f
                  blt          a6, s2, 947f
                  or           s10, s10, s11
                  srli         ra, a1, 20
                  sra          s10, s10, s11
                  blt          a0, a6, 943f
934:              xor          a7, tp, s9
935:              sub          zero, a4, gp
                  xor          t2, gp, tp
                  slt          t1, a7, s5
                  blt          gp, t5, 940f
                  ori          ra, a7, 874
940:              slti         t1, a6, -1130
941:              sra          t2, t1, s4
                  lui          t3, 110002
943:              sub          t1, s11, s7
                  auipc        tp, 546768
                  bne          s3, t2, 947f
                  nop
947:              sub          a5, s8, s10
                  srl          a4, a5, a7
                  sub          a5, zero, tp
                  bne          s10, s10, 965f
                  sra          a6, s6, s0
                  sra          s10, tp, tp
                  addi         sp, s8, 1998
                  bne          s1, a0, 974f
                  andi         tp, t0, 1126
                  sltiu        a5, a2, 1772
                  bge          t0, a6, 964f
                  ori          sp, s2, -1235
                  sra          gp, s11, tp
                  beq          a7, t4, 973f
                  blt          s2, a0, 962f
962:              nop
                  add          s1, s4, gp
964:              and          s6, s7, a2
965:              slt          sp, a1, s1
                  sltiu        t1, a4, 1817
                  blt          a6, s1, 971f
                  slt          t0, s7, ra
                  and          t1, s1, a0
                  bgeu         tp, a0, 975f
971:              sltu         s8, a6, t3
                  sra          gp, s0, a3
973:              andi         s4, s5, -1925
974:              addi         a4, s0, 310
975:              bgeu         t2, s11, 981f
                  lui          ra, 599100
                  bge          t6, a3, 989f
                  beq          a1, a5, 988f
                  nop
                  add          a3, a6, s11
981:              srli         t2, s11, 10
                  andi         sp, s4, 1244
                  andi         ra, a3, 1546
                  sub          zero, sp, t6
                  bgeu         s7, sp, 991f
                  sltu         t4, tp, a6
                  bgeu         t5, t2, 992f
988:              lui          s9, 482744
989:              sltu         s3, s7, t3
                  bne          s0, a6, 993f
991:              srl          s0, a1, a5
992:              xor          a5, s6, t4
993:              slli         s1, a6, 29
                  bgeu         s6, sp, 1013f
                  srli         gp, s11, 30
                  and          s10, a4, s8
                  slli         t2, tp, 24
                  slt          a6, a7, a4
                  srli         t0, a5, 12
                  sub          t2, t1, s10
                  slli         s1, t6, 18
                  beq          a7, s5, 1020f
                  bne          s5, a7, 1005f
                  or           s1, t1, t6
1005:             blt          s0, s2, 1025f
                  sltu         s8, a1, s9
                  slt          gp, gp, t4
                  xor          s4, a1, t5
                  sra          zero, gp, a3
                  slt          s5, s7, t4
                  bge          a0, gp, 1013f
                  nop
1013:             bgeu         s9, t6, 1017f
                  bltu         s7, a5, 1019f
                  and          sp, s10, t3
                  bge          gp, s5, 1018f
1017:             ori          zero, t1, -608
1018:             auipc        t0, 447837
1019:             bge          s8, a6, 1025f
1020:             beq          t2, a0, 1021f
1021:             xori         s5, s6, -1621
                  slli         s6, a4, 7
                  sll          a6, a1, s2
                  sll          t3, a6, s7
1025:             nop
                  auipc        zero, 942723
                  and          s6, zero, gp
                  bltu         s6, tp, 1038f
                  andi         zero, s4, 1817
                  auipc        gp, 110368
                  ori          a0, t2, 202
                  slti         zero, s4, -1446
                  addi         s5, t1, 1247
                  bltu         t3, a7, 1037f
                  slli         a0, t5, 3
                  bgeu         t5, sp, 1055f
1037:             sltiu        sp, s5, 1030
1038:             sll          s5, t2, t6
                  auipc        s3, 638827
                  andi         a3, a3, 1027
                  bne          s9, tp, 1059f
                  slt          s8, a7, t0
                  nop
                  or           ra, s0, ra
                  blt          s0, s10, 1057f
                  sra          t5, t5, t4
                  beq          s8, t5, 1057f
                  auipc        s0, 850277
                  beq          ra, s5, 1063f
                  srai         a6, t2, 10
                  xor          a1, sp, t3
                  add          s1, ra, t2
                  srl          sp, a0, t0
                  beq          s3, gp, 1072f
1055:             andi         a0, tp, 1212
                  beq          s10, ra, 1066f
1057:             or           s6, sp, t1
                  bge          s7, gp, 1065f
1059:             srai         a4, s3, 26
                  slli         a3, s7, 3
                  sltiu        s1, t3, 1374
                  srl          s9, t2, a2
1063:             bne          ra, a2, 1078f
                  bne          t3, ra, 1067f
1065:             sra          ra, s1, t2
1066:             beq          sp, s7, 1083f
1067:             auipc        s7, 29188
                  sltiu        sp, tp, 409
                  srli         gp, a0, 3
                  bltu         a0, a3, 1086f
                  xor          a6, s9, t2
1072:             lui          t2, 1033538
                  slli         a6, s0, 6
                  bge          a2, s3, 1078f
                  xor          t2, a4, t0
                  slti         a5, s0, -1313
                  addi         a0, a7, 28
1078:             blt          s0, t6, 1093f
                  and          sp, s8, sp
                  bne          s7, s5, 1085f
                  sltiu        s0, s10, -1031
                  bltu         s6, a5, 1083f
1083:             slt          s4, t0, a7
                  or           s0, a0, s0
1085:             xori         s7, a3, -497
1086:             sub          s6, gp, s8
                  ori          t0, a4, 641
                  beq          a6, tp, 1094f
                  sub          s8, a0, s1
                  sra          t3, s2, s3
                  slt          t1, s10, s6
                  add          tp, s2, t6
1093:             slli         s5, s5, 14
1094:             sll          s10, zero, s7
                  nop
                  slt          a5, s5, a7
                  xor          s4, t5, t5
                  slli         sp, s7, 24
                  srai         t4, s0, 4
                  and          gp, sp, t5
                  sub          sp, s5, t3
                  and          a2, ra, s9
                  bltu         s0, t1, 1120f
                  nop
                  beq          a3, ra, 1111f
                  slt          a5, s2, t5
                  ori          s3, s0, -1052
                  srl          a4, s0, s4
                  bne          t6, a1, 1111f
                  srai         s0, s11, 19
1111:             addi         a4, a0, -1223
                  add          a1, a2, s11
                  blt          t5, s2, 1126f
                  bgeu         a4, a3, 1118f
                  or           gp, ra, s0
                  sltu         s0, s0, t5
                  auipc        t3, 378405
1118:             bgeu         s5, s11, 1123f
                  bgeu         t1, a4, 1138f
1120:             addi         s7, t3, 273
                  srli         ra, s2, 21
                  or           tp, s7, s6
1123:             srl          t4, s6, s0
                  xor          zero, s1, s6
                  ori          s8, t0, 351
1126:             andi         a3, tp, 476
                  xor          tp, s2, t6
                  auipc        s1, 835982
                  sltiu        s3, a1, 809
                  slt          s5, s0, a6
                  bltu         s7, s10, 1149f
                  add          a5, tp, s1
                  ori          s9, t6, -203
                  addi         a6, s5, 1301
                  bltu         a1, s7, 1139f
                  sub          zero, s10, s7
                  sltu         s4, s4, a1
1138:             sra          s8, t1, a2
1139:             slli         a4, s0, 1
                  slti         s1, sp, 78
                  and          s0, s10, a6
                  nop
                  xor          a7, t6, a3
                  bltu         a4, s5, 1160f
                  sub          s8, s8, gp
                  ori          a4, a1, -1629
                  bgeu         s8, a7, 1157f
                  xori         s0, s9, -29
1149:             bne          t3, s8, 1151f
                  srli         a5, a7, 2
1151:             srl          t0, s2, ra
                  blt          s2, s9, 1162f
                  slti         ra, s8, 372
                  slt          t4, ra, a4
                  blt          t0, s6, 1162f
                  and          a5, s2, a7
1157:             beq          t2, gp, 1160f
                  srl          a3, s3, s6
                  slti         t3, a6, 695
1160:             lui          a5, 239809
                  bge          a7, s8, 1162f
1162:             srai         s0, s7, 2
                  lw           ra, 4(t6)
                  add          s5, a0, t0
                  addi         t6, t6, 56
                  sub          s7, sp, t2
                  slti         s4, s4, 1031
                  xor          s7, s11, s6
                  slti         a6, a7, -501
                  sra          a6, t1, t3
                  sub          t0, a0, ra
1706:             addi x30, x1, 1
1706:             jalr x30, x30, 0
sub_2:            srai         a6, t1, 8
                  slli         a0, s4, 15
                  srl          sp, s2, t6
                  sltu         a2, s3, s7
                  addi         t6, t6, -44
                  xori         t2, zero, 672
                  and          s10, s4, s9
                  slt          s10, s0, t2
                  sw           ra, 4(t6)
                  xori         s10, s4, 1276
                  slt          s9, t6, s10
                  slt          tp, t6, t0
                  auipc        t4, 347984
                  sll          a6, a3, s0
                  slli         s3, s7, 30
                  sra          s7, a3, s2
                  lui          a4, 1035193
                  srl          a4, sp, a2
                  slti         t3, sp, 1407
sub_2_j4:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  srli         t3, s9, 4
                  xori         t2, a2, 83
                  nop
                  srl          ra, t2, a0
                  xor          s7, t4, s1
                  addi         t5, s8, -458
sub_2_j5:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  la           ra, sub_3
                  sra          s10, t5, gp
                  addi         ra, ra, 105
                  blt          s8, t4, sub_2_j6 #branch to jump instr
                  srli         a4, zero, 15
                  sub          s5, s7, s2
                  sltiu        t1, a1, 1501
                  xor          s9, a5, t1
                  slti         tp, s3, 1142
sub_2_j6:         jalr         ra, ra, -105 #jump sub_2 -> sub_3
sub_2_2:          jal          ra, 7f
0:                jal          ra, 13f
1:                jal          t1, 4f
2:                jal          t1, 10f
3:                jal          t1, 5f
4:                jal          t1, 2b
5:                jal          a2, 6f
6:                jal          ra, 8f
7:                jal          tp, 9f
8:                jal          ra, 12f
9:                jal          ra, 3b
10:               jal          t1, 11f
11:               jal          ra, 0b
12:               jal          ra, 1b
13:               slli         t4, a7, 2
sub_2_1:          jal          ra, 0f
0:                jal          ra, 1f
1:                jal          ra, 12f
2:                jal          ra, 8f
3:                jal          ra, 5f
4:                jal          s10, 14f
5:                jal          ra, 4b
6:                jal          ra, 15f
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 16f
10:               jal          t1, 3b
11:               jal          ra, 17f
12:               jal          ra, 7b
13:               jal          t1, 6b
14:               jal          ra, 11b
15:               jal          ra, 2b
16:               jal          sp, 13b
17:               add          a5, s2, s11
sub_2_0:          jal          ra, 9f
0:                jal          t1, 14f
1:                jal          t2, 20f
2:                jal          t1, 5f
3:                jal          ra, 21f
4:                jal          t5, 7f
5:                jal          a2, 0b
6:                jal          ra, 15f
7:                jal          tp, 6b
8:                jal          ra, 11f
9:                jal          t1, 8b
10:               jal          ra, 16f
11:               jal          t1, 17f
12:               jal          ra, 1b
13:               jal          s10, 4b
14:               jal          ra, 19f
15:               jal          s8, 10b
16:               jal          ra, 3b
17:               jal          ra, 12b
18:               jal          t0, 22f
19:               jal          t1, 18b
20:               jal          ra, 13b
21:               jal          t1, 2b
22:               xor          a1, a0, a1
                  srl          s4, t5, s10
                  bltu         t6, a7, 8f
                  slti         s7, a0, -19
                  ori          a0, s11, -461
                  bgeu         s7, tp, 24f
                  slti         a3, s3, 177
                  addi         a3, t6, 180
                  addi         t4, s6, 180
8:                xor          s0, a6, t5
                  bltu         a3, t3, 21f
                  nop
                  bne          a0, t6, 13f
                  xor          t2, s8, a3
13:               and          s4, s11, gp
                  srli         s9, s10, 24
                  srai         t3, gp, 30
                  nop
                  bge          s0, a4, 37f
                  andi         a4, s7, 977
                  beq          s9, s2, 38f
                  bltu         a3, t3, 37f
21:               srai         t0, t1, 3
                  srli         a6, ra, 4
                  xor          ra, t5, a2
24:               bgeu         a4, s11, 44f
                  and          t3, zero, t6
                  and          tp, s4, s10
                  bge          t2, s1, 36f
                  sltiu        a0, gp, 1012
                  add          s0, a0, a3
                  andi         t5, sp, 1032
                  or           ra, t1, t3
                  xori         zero, t6, -1689
                  srl          a4, s8, a4
                  sll          a2, ra, t4
                  xori         s3, ra, 1122
36:               sub          ra, a6, s5
37:               sll          a2, a2, t5
38:               nop
                  xori         a2, s3, 1162
                  srai         a6, a5, 20
                  sltiu        s8, a2, -1314
                  sltu         s1, zero, s4
                  sra          a5, tp, s10
44:               sra          t3, s3, s5
                  bgeu         t6, a5, 56f
                  sra          t3, a2, a5
                  bgeu         s0, a4, 62f
                  sub          a3, ra, a1
                  bgeu         s9, ra, 50f
50:               auipc        a6, 552494
                  bne          t6, a4, 67f
                  srai         a5, t4, 26
                  sll          s3, s1, t3
                  srl          s9, zero, tp
                  srli         t2, s9, 18
56:               beq          sp, a3, 68f
                  sltiu        t4, a3, 943
                  srai         t0, a2, 24
                  bgeu         t1, a6, 73f
                  ori          tp, a0, 2027
                  addi         t2, gp, -346
62:               srli         a1, a4, 24
                  lui          s1, 249678
                  bne          a5, t5, 72f
                  bgeu         s0, s2, 83f
                  auipc        a7, 353383
67:               srai         zero, s5, 27
68:               bltu         s9, a1, 73f
                  andi         s6, tp, 1851
                  and          ra, s7, s6
                  sub          s1, s10, t0
72:               blt          a1, s11, 90f
73:               andi         sp, a2, -460
                  sltu         t5, sp, a4
                  sub          t1, s8, t3
                  ori          t3, s5, -95
                  sll          a0, sp, a4
                  andi         s8, s5, 763
                  slti         gp, s2, 1488
                  bgeu         t1, s11, 91f
                  ori          zero, sp, -4
                  sltiu        a0, t2, -734
83:               auipc        t4, 230582
                  bltu         s8, t5, 88f
                  sltu         t5, t4, t2
                  xori         a6, a5, -389
                  auipc        t0, 608512
88:               sub          t1, sp, t0
                  bgeu         t2, t1, 107f
90:               srai         t2, t5, 5
91:               slli         a4, s9, 30
                  xor          t2, a6, s8
                  sltu         s7, s1, t6
                  slt          s10, s4, a4
                  srl          s5, s7, gp
                  slt          t0, a6, s10
                  xor          t5, t2, s4
                  srli         a3, s5, 2
                  xor          s6, ra, s5
                  lui          a3, 254861
                  or           s10, ra, a2
                  xor          ra, s5, t5
                  add          t0, a5, t0
                  addi         gp, a5, 268
                  bne          a6, tp, 124f
                  lui          s5, 858234
107:              beq          s9, t6, 109f
                  blt          a1, t0, 123f
109:              sub          t5, s3, s8
                  xori         s9, s11, 264
                  slti         s4, sp, 1671
                  sll          a4, t6, gp
                  bgeu         s5, a0, 114f
114:              slti         s4, t6, 1009
                  bne          sp, a6, 126f
                  andi         tp, s3, -2014
                  sub          s8, a7, s9
                  ori          t0, s3, 681
                  and          a1, a1, a5
                  srl          t4, a4, t1
                  srl          a0, zero, s11
                  xori         gp, s4, 1191
123:              bltu         a1, a5, 141f
124:              nop
                  slti         ra, s7, 1442
126:              bne          t3, tp, 135f
                  sltu         ra, s3, s1
                  sltu         s10, zero, ra
                  bge          s0, t2, 137f
                  sll          a6, t6, s2
                  sll          t5, zero, t0
                  or           t2, s9, tp
                  slt          gp, t3, a5
                  bne          t6, s8, 138f
135:              and          gp, a5, tp
                  slti         a4, t3, -1334
137:              xori         a1, s2, -555
138:              lui          s5, 999062
                  slli         a7, s5, 31
                  xor          s3, t3, sp
141:              xori         a7, a7, 229
                  addi         a4, s1, 964
                  blt          s11, t6, 163f
                  bne          s9, a3, 155f
                  sra          s10, a3, a7
                  or           s1, t3, a0
                  auipc        t1, 576426
                  or           s6, t4, s8
                  nop
                  slli         s3, s11, 3
                  addi         s5, ra, -99
                  bge          a4, t0, 167f
                  or           a3, s8, a6
                  sltu         s8, s4, a5
155:              or           a3, s10, a1
                  auipc        a7, 74093
                  bltu         sp, ra, 171f
                  sub          t1, a2, s9
                  addi         ra, zero, -284
                  sltu         t0, s3, a3
                  sub          a4, zero, s6
                  beq          s0, s8, 174f
163:              srl          sp, s2, t4
                  auipc        a2, 290050
                  add          t0, s0, s8
                  bltu         sp, s5, 185f
167:              beq          s8, a6, 174f
                  or           t5, a4, s3
                  sra          s3, zero, s11
                  srli         s1, a0, 29
171:              auipc        a6, 942393
                  add          s7, a0, a0
                  blt          a3, t2, 187f
174:              bge          t2, a6, 182f
                  xori         s1, s3, -937
                  sltiu        sp, s4, -877
                  nop
                  nop
                  srai         a1, sp, 24
                  bge          s5, a5, 181f
181:              sll          t5, s1, s2
182:              bge          sp, a3, 187f
                  sub          t2, gp, a6
                  slt          s8, s4, t2
185:              nop
                  xor          gp, zero, s6
187:              sub          gp, a4, s4
                  lw           ra, 4(t6)
                  xor          tp, a2, s0
                  addi         t6, t6, 44
                  nop
                  sltiu        a1, a0, -1030
                  srli         s9, a5, 13
289:              addi x14, x1, 1
289:              jalr x14, x14, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x18, x31, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x13, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x13, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x13, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x13, x11, ecall_handler
                  li x11, 0x1
                  beq x13, x11, instr_fault_handler
                  li x11, 0x5
                  beq x13, x11, load_fault_handler
                  li x11, 0x7
                  beq x13, x11, store_fault_handler
                  li x11, 0xc
                  beq x13, x11, pt_fault_handler
                  li x11, 0xd
                  beq x13, x11, pt_fault_handler
                  li x11, 0xf
                  beq x13, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x31, x18, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
