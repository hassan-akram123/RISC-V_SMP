.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 0
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
                  li x0, 0x23a21326
                  li x1, 0x3
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0xd
                  li x5, 0xfbfc0242
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0xea15f160
                  li x11, 0xbe1ae2dc
                  li x12, 0x80000000
                  li x13, 0xfa18e476
                  li x14, 0x8
                  li x15, 0xfff410bd
                  li x16, 0x0
                  li x17, 0xfac73a03
                  li x18, 0x0
                  li x19, 0x2
                  li x20, 0x5
                  li x22, 0x1
                  li x23, 0xf13136d8
                  li x24, 0xc
                  li x25, 0x0
                  li x26, 0xf3acde43
                  li x27, 0xf3687fb7
                  li x28, 0x6de73082
                  li x30, 0xf0774f67
                  li x31, 0xa832e9d
                  la x29, user_stack_end
main:             jal          t6, 12f
0:                jal          t1, 17f
1:                jal          a4, 8f
2:                jal          a3, 1b
3:                jal          t1, 13f
4:                jal          t1, 5f
5:                jal          t5, 14f
6:                jal          t1, 16f
7:                jal          a7, 3b
8:                jal          t0, 9f
9:                jal          t1, 10f
10:               jal          t1, 11f
11:               jal          t1, 0b
12:               jal          tp, 4b
13:               jal          s6, 15f
14:               jal          s2, 6b
15:               jal          s4, 2b
16:               jal          a6, 7b
17:               add          t1, a1, t6
main_6:           jal          t6, 16f
0:                jal          t1, 12f
1:                jal          a3, 15f
2:                jal          t1, 7f
3:                jal          t1, 19f
4:                jal          s9, 6f
5:                jal          gp, 17f
6:                jal          a5, 10f
7:                jal          t2, 9f
8:                jal          s4, 11f
9:                jal          t6, 14f
10:               jal          gp, 5b
11:               jal          t1, 13f
12:               jal          t1, 8b
13:               jal          s7, 4b
14:               jal          t3, 1b
15:               jal          t1, 20f
16:               jal          a0, 18f
17:               jal          a1, 2b
18:               jal          t1, 3b
19:               jal          a7, 0b
20:               srli         t2, gp, 17
main_4:           jal          t6, 21f
0:                jal          a1, 19f
1:                jal          t1, 20f
2:                jal          sp, 10f
3:                jal          a3, 1b
4:                jal          a5, 14f
5:                jal          a3, 2b
6:                jal          s1, 4b
7:                jal          tp, 18f
8:                jal          gp, 9f
9:                jal          t1, 23f
10:               jal          t1, 15f
11:               jal          t3, 3b
12:               jal          t1, 6b
13:               jal          t0, 5b
14:               jal          gp, 0b
15:               jal          s2, 8b
16:               jal          t1, 11b
17:               jal          t0, 13b
18:               jal          s3, 16b
19:               jal          t1, 7b
20:               jal          t1, 17b
21:               jal          t1, 22f
22:               jal          s9, 12b
23:               andi         t6, s9, -1587
main_11:          jal          t6, 2f
0:                jal          t5, 10f
1:                jal          tp, 6f
2:                jal          t6, 15f
3:                jal          s4, 5f
4:                jal          t1, 1b
5:                jal          a6, 8f
6:                jal          s11, 3b
7:                jal          t1, 14f
8:                jal          gp, 17f
9:                jal          t1, 4b
10:               jal          t5, 16f
11:               jal          s1, 9b
12:               jal          tp, 19f
13:               jal          t0, 7b
14:               jal          t1, 20f
15:               jal          t1, 18f
16:               jal          s11, 12b
17:               jal          t1, 13b
18:               jal          sp, 0b
19:               jal          sp, 11b
20:               ori          a5, s7, -536
main_1:           jal          t6, 6f
0:                jal          s3, 3f
1:                jal          t1, 8f
2:                jal          t1, 0b
3:                jal          s1, 5f
4:                jal          t1, 2b
5:                jal          a2, 1b
6:                jal          s0, 4b
7:                jal          t0, 9f
8:                jal          t1, 7b
9:                jal          t1, 10f
10:               jal          a4, 11f
11:               addi         a7, a2, -1244
main_3:           jal          t6, 9f
0:                jal          s10, 13f
1:                jal          t1, 2f
2:                jal          a0, 10f
3:                jal          s9, 1b
4:                jal          t1, 11f
5:                jal          t1, 4b
6:                jal          t1, 7f
7:                jal          s7, 3b
8:                jal          s9, 5b
9:                jal          a6, 6b
10:               jal          tp, 8b
11:               jal          s11, 12f
12:               jal          s3, 0b
13:               ori          a4, s11, -68
main_14:          jal          t6, 10f
0:                jal          t5, 18f
1:                jal          s8, 13f
2:                jal          t1, 16f
3:                jal          gp, 15f
4:                jal          t1, 14f
5:                jal          gp, 11f
6:                jal          t1, 8f
7:                jal          t2, 17f
8:                jal          t1, 21f
9:                jal          t6, 4b
10:               jal          s7, 19f
11:               jal          t0, 6b
12:               jal          t1, 22f
13:               jal          t1, 20f
14:               jal          t2, 5b
15:               jal          t1, 7b
16:               jal          t1, 3b
17:               jal          t1, 9b
18:               jal          t1, 12b
19:               jal          t0, 1b
20:               jal          t1, 2b
21:               jal          s10, 0b
22:               or           t5, a6, a5
main_10:          jal          t6, 2f
0:                jal          t1, 13f
1:                jal          tp, 6f
2:                jal          t1, 7f
3:                jal          gp, 11f
4:                jal          gp, 9f
5:                jal          t1, 0b
6:                jal          t2, 8f
7:                jal          t1, 3b
8:                jal          s1, 12f
9:                jal          t1, 14f
10:               jal          t6, 5b
11:               jal          a4, 10b
12:               jal          tp, 4b
13:               jal          t1, 1b
14:               lui          a4, 249617
main_0:           jal          t6, 6f
0:                jal          t1, 1f
1:                jal          s2, 11f
2:                jal          a0, 7f
3:                jal          s2, 0b
4:                jal          t5, 9f
5:                jal          a6, 14f
6:                jal          gp, 13f
7:                jal          s4, 5b
8:                jal          t1, 15f
9:                jal          s11, 3b
10:               jal          tp, 12f
11:               jal          a7, 8b
12:               jal          a7, 4b
13:               jal          gp, 10b
14:               jal          tp, 16f
15:               jal          a5, 2b
16:               xori         s2, a0, 1677
main_15:          jal          t6, 5f
0:                jal          t1, 20f
1:                jal          t1, 3f
2:                jal          a3, 22f
3:                jal          t1, 9f
4:                jal          t0, 0b
5:                jal          a5, 11f
6:                jal          a6, 14f
7:                jal          t1, 10f
8:                jal          t5, 1b
9:                jal          t1, 15f
10:               jal          t3, 12f
11:               jal          t1, 8b
12:               jal          t1, 21f
13:               jal          t1, 7b
14:               jal          t1, 13b
15:               jal          sp, 16f
16:               jal          t1, 19f
17:               jal          t1, 2b
18:               jal          t1, 17b
19:               jal          t1, 4b
20:               jal          t1, 6b
21:               jal          t0, 18b
22:               jal          a4, 23f
23:               jal          t1, 24f
24:               xor          s9, t2, s3
main_13:          jal          t6, 18f
0:                jal          t1, 3f
1:                jal          t1, 17f
2:                jal          a4, 5f
3:                jal          a6, 19f
4:                jal          t5, 7f
5:                jal          s9, 4b
6:                jal          t1, 21f
7:                jal          t2, 0b
8:                jal          s3, 6b
9:                jal          t1, 2b
10:               jal          t1, 13f
11:               jal          t1, 1b
12:               jal          sp, 16f
13:               jal          t5, 12b
14:               jal          s10, 11b
15:               jal          a1, 9b
16:               jal          s7, 14b
17:               jal          t0, 8b
18:               jal          a2, 15b
19:               jal          t6, 20f
20:               jal          t1, 10b
21:               srli         t2, a6, 3
main_7:           jal          t6, 12f
0:                jal          gp, 13f
1:                jal          t0, 2f
2:                jal          t0, 5f
3:                jal          t0, 6f
4:                jal          t0, 7f
5:                jal          t2, 9f
6:                jal          t3, 11f
7:                jal          t1, 8f
8:                jal          t1, 1b
9:                jal          sp, 0b
10:               jal          t1, 3b
11:               jal          t1, 4b
12:               jal          t1, 10b
13:               xor          a2, s9, a4
main_9:           jal          t6, 24f
0:                jal          t2, 22f
1:                jal          t2, 21f
2:                jal          tp, 3f
3:                jal          t6, 11f
4:                jal          t1, 25f
5:                jal          t1, 7f
6:                jal          s0, 23f
7:                jal          t1, 1b
8:                jal          gp, 9f
9:                jal          t1, 16f
10:               jal          s4, 20f
11:               jal          t3, 18f
12:               jal          t1, 2b
13:               jal          a1, 6b
14:               jal          t1, 0b
15:               jal          a7, 5b
16:               jal          t1, 12b
17:               jal          t1, 4b
18:               jal          s1, 13b
19:               jal          s10, 15b
20:               jal          tp, 19b
21:               jal          t0, 14b
22:               jal          sp, 8b
23:               jal          t1, 17b
24:               jal          sp, 10b
25:               xor          zero, s11, gp
                  xor          s11, s4, s7
                  xor          s2, zero, s9
                  srli         t2, s3, 9
                  auipc        t5, 963126
                  sltiu        s4, a7, 844
                  addi         a6, a6, -1471
                  nop
                  slt          s1, a5, s5
                  srai         a0, ra, 29
                  bgeu         s7, s6, 20f
                  slti         gp, s6, 756
                  and          s1, t1, t1
                  bltu         a2, s9, 18f
                  andi         a6, a3, -1309
                  sub          s1, s2, s7
                  slti         zero, t2, 1307
                  ori          zero, a7, 450
                  bgeu         s5, gp, 36f
18:               srl          s2, ra, a1
                  bge          t5, a2, 26f
20:               sub          a0, a1, s5
                  sub          s3, t5, t6
                  srli         t2, a7, 7
                  and          s0, a0, ra
                  add          s4, sp, a1
                  sra          s4, s10, sp
26:               blt          a1, a6, 44f
                  blt          a4, tp, 44f
                  sltiu        t1, a5, 1117
                  sll          sp, sp, s6
                  sltiu        t2, a2, 723
                  bne          s1, gp, 47f
                  sra          a0, t3, s7
                  or           t5, a0, a1
                  bgeu         s7, a7, 53f
                  sra          a5, s8, s8
36:               srli         a5, sp, 28
                  auipc        s4, 44288
                  sub          a7, a3, s7
                  or           zero, s4, s0
                  sub          a6, t1, s2
                  xor          a6, a6, tp
                  srli         s4, s10, 30
                  bne          s11, s9, 57f
44:               sll          s10, t1, s6
                  xori         s1, s3, 1575
                  bge          tp, s1, 66f
47:               srl          a1, t0, s10
                  add          sp, s1, t2
                  srai         s3, s9, 7
                  sltu         s9, t6, sp
                  slli         a2, t6, 23
                  srai         s11, s0, 30
53:               blt          s2, s5, 65f
                  add          s2, tp, s8
                  srli         t5, a6, 18
                  slt          s9, t1, sp
57:               slt          t6, a4, t4
                  sltiu        sp, s0, 1854
                  xor          a0, s7, s6
                  sltiu        s8, t6, -151
                  bne          zero, a0, 64f
                  sra          s2, t1, a7
                  xor          s0, s0, t1
64:               slt          a4, s9, t0
65:               bge          t3, t3, 79f
66:               add          a1, a6, s10
                  lui          s1, 288382
                  xori         s9, ra, 315
                  addi         s6, t3, -685
                  xori         s0, s8, -656
                  add          s6, a1, s5
                  ori          s1, t2, 351
                  bgeu         s5, a1, 80f
                  blt          t5, tp, 85f
                  sltu         zero, a0, s7
                  beq          s11, t4, 91f
                  bge          s3, a6, 93f
                  slt          sp, s9, zero
79:               bge          sp, a4, 99f
80:               bltu         t5, a5, 95f
                  sra          s1, s2, a2
                  bne          sp, s3, 96f
                  nop
                  auipc        s11, 967754
85:               xori         a2, a4, -1276
                  auipc        a4, 245337
                  blt          s3, s2, 106f
                  bltu         t4, s4, 101f
                  addi         t2, t3, -1861
                  bne          t0, s0, 108f
91:               auipc        s2, 392213
                  sltu         s9, a3, sp
93:               srai         s6, zero, 2
                  bne          t4, a3, 100f
95:               slli         s6, s4, 25
96:               xori         a7, a6, -721
                  ori          gp, a3, 1867
                  sll          s0, a6, s2
99:               xori         s2, s5, 724
100:              nop
101:              andi         s7, a7, -1165
                  andi         t2, t4, 454
                  bne          t5, s5, 120f
                  and          s11, a0, t1
                  sltu         t1, s8, s9
106:              lui          s0, 427709
                  sltiu        t2, tp, 1235
108:              sub          a1, t5, a1
                  beq          t3, t2, 114f
                  srai         s8, zero, 1
                  slt          s4, a0, s2
                  or           t0, ra, s2
                  auipc        a5, 295984
114:              bne          t0, s3, 128f
                  nop
                  srli         s0, a0, 25
                  sub          t1, ra, a5
                  sra          a4, gp, tp
                  slli         gp, tp, 13
120:              srli         s6, gp, 14
                  lui          t3, 763684
                  nop
                  ori          a0, s5, 1549
                  lui          a0, 446995
                  slti         a4, s7, 593
                  sltiu        t0, a6, 1679
                  bltu         t1, a2, 137f
128:              auipc        a4, 758829
                  slt          t2, s3, a1
                  add          s9, t0, s8
                  bne          a6, t1, 139f
                  or           sp, tp, s7
                  sub          s2, zero, s9
                  auipc        s0, 382427
                  xori         s4, s10, -1423
                  andi         tp, a1, -653
137:              blt          t4, a0, 141f
                  sra          s8, t2, t6
139:              or           zero, s4, s7
                  srai         sp, a0, 19
141:              bne          t3, a0, 160f
                  bne          t2, t1, 159f
                  blt          a7, a1, 151f
                  sltiu        s6, s5, -959
                  ori          s6, a1, 771
                  ori          s3, t4, 1665
                  xori         t3, s4, -153
                  beq          s2, s2, 158f
                  auipc        a3, 572828
                  slti         t1, s7, 1213
151:              slt          a2, s4, s3
                  bltu         ra, a6, 155f
                  slti         zero, s11, -155
                  bne          t3, ra, 160f
155:              ori          a7, zero, 1060
                  and          s1, t0, gp
                  beq          gp, a5, 176f
158:              blt          t5, ra, 178f
                  la           a1, sub_1
                  lui          tp, 420031
                  sub          zero, s6, s1
                  and          a7, s1, s0
                  srli         t3, t6, 2
                  addi         a1, a1, 454
                  slti         s7, s7, 348
                  slt          s7, t0, s5
                  beq          t6, ra, main_j1 #branch to jump instr
                  addi         a3, a4, 332
main_j1:          jalr         t6, a1, -454 #jump main -> sub_1
159:              sll          t2, t5, sp
160:              auipc        t1, 794843
                  lui          t5, 688431
                  sub          tp, t1, a2
                  andi         a2, t6, 655
                  auipc        a7, 1020051
                  bgeu         t0, s2, 172f
                  sra          a1, s3, a7
                  add          zero, t4, a7
                  addi         s0, tp, 1476
                  add          t5, gp, t5
                  or           s3, a7, s7
                  ori          s7, a4, 877
172:              slli         t0, s1, 1
                  ori          zero, t3, 1289
                  nop
                  andi         a1, t6, -416
176:              sltiu        gp, s2, 428
                  auipc        tp, 403412
178:              sra          s2, a1, t0
                  srai         t0, s3, 8
                  slti         a1, a2, 1457
                  sub          s7, tp, t3
                  bgeu         tp, t2, 186f
                  xori         a0, t2, -802
                  and          a4, s7, s4
                  slt          s9, a0, s3
186:              xori         t5, t0, -449
                  bltu         s1, a1, 194f
                  and          a7, t6, t0
                  or           a3, t4, s4
                  srli         t0, t2, 10
                  slli         a4, s0, 13
                  nop
                  xor          a2, a2, s11
194:              andi         gp, a1, 942
                  and          a0, s5, a7
                  add          s0, s1, a5
                  sltu         s9, s3, s0
                  auipc        a0, 682162
                  srl          t0, t5, a6
                  add          s9, a0, sp
                  sra          t0, s4, t4
                  sltu         a0, a6, t6
                  auipc        s8, 212866
                  srl          s11, gp, s10
                  bne          t1, ra, 219f
                  srai         a3, t5, 20
                  sra          a3, t4, s8
                  bgeu         t4, a4, 222f
                  beq          sp, s11, 226f
                  xori         s3, gp, 1823
                  add          t6, t0, a6
                  bne          t2, t5, 232f
                  sltu         s3, a5, s7
                  lui          s0, 726416
                  lui          tp, 432508
                  bge          s9, s11, 222f
                  sub          s7, gp, t4
                  add          s3, s11, t6
219:              add          a7, t2, s11
                  slt          t6, a0, s10
                  ori          s0, a5, -1627
222:              or           s3, s1, t1
                  xor          t5, a3, s10
                  xor          s10, gp, ra
                  xori         a2, t4, 417
226:              srli         s2, sp, 15
                  blt          s7, gp, 245f
                  add          a6, gp, a1
                  sltiu        s7, s1, -385
                  sll          s10, t3, s2
                  sra          t1, gp, s10
232:              xori         s1, t3, 1124
                  ori          s3, a4, 514
                  blt          s0, t2, 247f
                  nop
                  srli         t5, a0, 0
                  slt          s7, s0, t0
                  blt          tp, s5, 256f
                  add          s2, a7, s9
                  sltiu        zero, t5, -796
                  slti         a3, a5, -1885
                  blt          tp, t1, 258f
                  sltu         gp, t6, ra
                  bltu         s7, a7, 258f
245:              beq          gp, s0, 250f
                  xor          s0, s1, s6
247:              beq          s11, a3, 262f
                  bne          gp, a0, 263f
                  lui          a0, 69410
250:              bge          tp, s11, 264f
                  srli         gp, a4, 18
                  beq          t6, s0, 263f
                  sltiu        s2, s9, 724
                  sra          s1, a6, a2
                  blt          a3, t2, 266f
256:              addi         zero, a7, -1848
                  or           s0, a5, s11
258:              sub          t0, s5, s5
                  add          a3, t6, a6
                  sltu         s1, t4, a5
                  bne          a1, t6, 273f
262:              sltu         a2, tp, t4
263:              and          t6, s9, s4
264:              bltu         s3, ra, 283f
                  srl          t6, ra, a3
266:              sll          t1, t1, a3
                  nop
                  bgeu         t6, s7, 284f
                  sltu         sp, gp, s6
                  sltu         gp, t4, t2
                  srli         a3, s5, 27
                  andi         a1, t0, 69
273:              xori         a1, a2, 1210
                  bne          s9, s6, 285f
                  sll          s2, s0, s2
                  slti         s10, t0, 891
                  bge          s10, s10, 283f
                  bne          tp, ra, 284f
                  nop
                  lui          a1, 850966
                  andi         s11, s6, -121
                  slti         a2, s1, 794
283:              sra          a6, s10, ra
284:              srai         s10, a1, 15
285:              sra          t5, gp, s3
                  nop
                  sltu         t6, t6, t5
                  and          s10, s5, t6
                  lui          t6, 544331
                  nop
                  sll          s1, t1, s7
                  auipc        t3, 28456
main_5:           jal          t6, 0f
0:                jal          s0, 13f
1:                jal          t6, 11f
2:                jal          a2, 10f
3:                jal          t1, 7f
4:                jal          t0, 9f
5:                jal          a4, 8f
6:                jal          t1, 12f
7:                jal          s3, 14f
8:                jal          t1, 6b
9:                jal          t1, 3b
10:               jal          t1, 5b
11:               jal          t3, 2b
12:               jal          t1, 4b
13:               jal          a1, 1b
14:               sltu         t6, t6, s8
                  ori          a6, t4, -1835
                  bltu         zero, s7, 305f
                  bne          s10, s4, 315f
                  or           s11, a5, t3
                  add          t5, zero, s10
                  or           s10, sp, s6
                  bgeu         t5, t1, 318f
                  auipc        gp, 471322
                  slt          s7, t0, gp
                  or           s2, t4, t5
                  bltu         a5, s8, 320f
                  slt          s2, t2, sp
305:              or           s7, s7, t5
                  bne          s0, ra, 324f
                  nop
                  ori          s0, s5, 1936
                  bltu         t0, zero, 326f
                  srli         s7, s10, 10
                  addi         t0, s2, -72
                  srli         s10, zero, 27
                  sll          t2, t1, s9
                  sub          a1, a0, zero
315:              xori         s4, a3, -601
                  xori         s10, s3, -1008
                  sub          s11, s5, s0
318:              sltiu        t3, zero, -1233
                  blt          s11, s2, 339f
320:              bge          s7, t3, 334f
                  add          a4, t3, s9
                  sub          s11, s4, t4
                  ori          s9, a7, -560
324:              addi         t0, sp, 303
                  addi         a4, t3, -1552
326:              bne          sp, a3, 342f
                  lui          s8, 764744
                  lui          a3, 346376
                  slli         s10, t4, 16
                  nop
                  addi         s6, s10, -469
                  xor          s6, t0, s4
                  srl          s4, sp, tp
334:              blt          s1, tp, 342f
                  addi         a4, t5, -146
                  beq          t3, ra, 349f
                  addi         a3, a4, 427
                  beq          s9, ra, 354f
339:              slti         s2, gp, 1035
                  bltu         s4, s9, 350f
                  sltiu        a0, gp, -290
342:              blt          ra, s9, 354f
                  bge          t4, s8, 362f
                  sll          t6, s1, a3
                  bltu         a4, s0, 359f
                  sub          gp, gp, s5
                  srai         s11, s9, 16
                  add          s1, a6, t3
349:              srl          a4, s9, t3
350:              addi         a6, s2, -1348
                  xor          s9, t4, t6
                  sltiu        a2, a1, -312
                  add          a3, s10, t3
354:              xor          a6, s2, s5
                  sltiu        t3, a4, -528
                  xori         a3, s9, -1257
                  add          s2, s8, s3
                  addi         s0, s6, 1399
359:              auipc        a4, 179747
                  bgeu         s6, tp, 374f
                  xor          tp, s7, zero
362:              srli         t3, s10, 22
                  andi         tp, t5, 1404
                  xor          zero, s3, s4
                  xor          s8, a1, t5
                  sll          a0, a1, a4
                  sll          a4, s11, zero
                  slli         sp, s11, 22
                  ori          s6, a1, 1306
                  bgeu         s5, s0, 388f
                  blt          a2, ra, 378f
                  slli         zero, zero, 11
                  bgeu         s2, t0, 378f
374:              sltiu        s3, t3, -1694
                  xor          a5, s11, t1
                  auipc        a6, 178128
                  auipc        a3, 1001704
378:              sltu         s11, a7, a5
                  bgeu         a4, s4, 383f
                  nop
                  srli         tp, t6, 16
                  slli         a5, t3, 10
383:              slt          s6, zero, t6
                  slt          t3, t6, tp
                  srli         t6, t4, 14
                  nop
                  lui          s3, 1012773
388:              bltu         zero, a5, 403f
                  srli         s11, a1, 30
                  or           zero, a4, t3
                  bne          t3, t4, 405f
                  srl          a1, a4, s5
                  slli         s4, sp, 31
                  srai         s8, gp, 23
                  bltu         tp, s3, 398f
                  slti         s8, s8, 1537
                  xor          s8, a2, s7
398:              bgeu         s7, gp, 413f
                  andi         a4, s9, -1562
                  addi         t2, t5, -693
                  slti         a4, s0, 829
                  ori          s1, t0, 176
403:              addi         t0, s11, -995
                  slt          t6, t1, t6
405:              and          a4, t0, s0
                  auipc        t2, 463819
                  bltu         s4, t4, 426f
                  slti         s10, t0, -116
                  bge          a0, t3, 416f
                  sltu         gp, a0, sp
                  andi         t0, s9, 1587
                  sltiu        sp, sp, -1197
413:              xor          t6, s4, a0
                  lui          a7, 172898
                  bge          t2, a4, 427f
416:              slti         s7, t4, 657
                  bgeu         a6, tp, 431f
                  xori         a3, s5, -272
                  sra          a7, a3, t6
                  bltu         t5, a6, 434f
                  srli         s7, s8, 18
                  srai         s8, a7, 12
                  srl          s11, s11, a6
                  andi         s10, a0, 1052
                  addi         t2, t0, 1252
426:              auipc        sp, 794230
427:              sltiu        a4, sp, 1094
                  blt          zero, ra, 447f
                  addi         s8, s1, 1982
                  xori         s0, s3, -1386
431:              and          s10, a4, a1
main_12:          jal          t6, 2f
0:                jal          s10, 9f
1:                jal          t1, 19f
2:                jal          s2, 22f
3:                jal          tp, 1b
4:                jal          t1, 6f
5:                jal          a6, 24f
6:                jal          a6, 11f
7:                jal          t0, 20f
8:                jal          a6, 5b
9:                jal          tp, 25f
10:               jal          t1, 4b
11:               jal          t1, 21f
12:               jal          s2, 3b
13:               jal          a3, 23f
14:               jal          t0, 8b
15:               jal          s8, 10b
16:               jal          t1, 7b
17:               jal          s4, 18f
18:               jal          t1, 12b
19:               jal          t1, 0b
20:               jal          tp, 14b
21:               jal          s9, 17b
22:               jal          s7, 13b
23:               jal          t3, 16b
24:               jal          t1, 15b
25:               andi         s2, t0, 1263
                  nop
                  andi         s0, sp, -1308
434:              sltu         s3, s11, sp
                  slli         s1, s8, 20
                  nop
                  ori          s3, a6, 1896
                  add          a4, s11, ra
                  bltu         a5, s9, 443f
                  addi         a4, s5, -1750
                  beq          zero, t5, 461f
                  bltu         t1, s5, 457f
443:              or           a1, s3, s7
                  bne          s8, s9, 462f
                  blt          zero, a4, 462f
                  blt          gp, a4, 456f
447:              srl          t2, t5, s2
                  srli         gp, s6, 30
                  add          s2, a5, ra
                  sltiu        a1, s11, 1229
                  addi         s7, a3, 1777
                  sltiu        s8, a0, 594
                  addi         t0, a6, 819
                  add          s1, tp, s11
                  and          a0, a4, s8
456:              srai         a2, t6, 30
457:              and          s7, t4, a3
                  bge          t0, a4, 466f
                  sll          tp, gp, s0
                  sra          s1, a7, t6
461:              nop
462:              sub          t1, a6, t6
                  bge          s10, a3, 474f
                  nop
                  bgeu         a3, a1, 470f
466:              sltu         t2, a1, gp
                  addi         sp, a5, 2030
                  lui          a2, 244595
                  blt          s6, s0, 475f
470:              auipc        a3, 28598
                  addi         a4, a2, 55
                  srl          s2, t1, t4
                  bge          a3, t4, 487f
474:              bgeu         s5, s3, 489f
475:              ori          s11, s1, 1591
                  srl          s4, t0, sp
                  auipc        a5, 590687
                  srli         s6, t6, 30
                  sll          s11, s5, a0
                  xor          zero, s10, sp
                  bgeu         sp, sp, 494f
                  slli         s9, s8, 23
                  auipc        s11, 329847
                  auipc        a0, 176072
                  blt          s9, a0, 501f
                  sra          s1, ra, s4
487:              srl          t6, t4, t6
                  addi         a7, a7, -772
489:              srli         gp, t4, 15
                  srai         t0, ra, 24
                  sltu         t2, a0, s8
                  auipc        t0, 327275
                  slti         s3, t6, 1156
494:              nop
                  addi         s10, a0, 1379
                  srai         a4, s11, 5
                  lui          a6, 211846
                  bne          gp, a0, 505f
                  ori          s1, tp, -1411
                  bne          t5, s2, 514f
501:              addi         a2, t5, 682
                  nop
                  bgeu         t3, a5, 522f
                  or           a1, s0, s8
505:              addi         t0, s1, 109
                  auipc        s7, 807623
                  bne          s4, s0, 510f
                  slli         t6, a4, 10
                  slt          s10, t1, s7
510:              ori          s4, a6, -1685
                  srli         s9, s3, 0
                  srl          a6, s4, s7
                  or           s10, s5, t6
514:              or           a1, a2, t4
                  lui          s4, 694591
                  bgeu         s1, s5, 536f
                  andi         t3, s8, -278
                  srl          s11, s11, s7
                  lui          sp, 747500
                  or           t2, s7, s7
                  nop
522:              and          s8, a3, s11
                  or           s3, t6, t6
                  andi         a5, t0, 1229
                  bge          a7, s3, 536f
main_8:           jal          t6, 15f
0:                jal          sp, 5f
1:                jal          sp, 17f
2:                jal          s0, 24f
3:                jal          t1, 21f
4:                jal          t1, 6f
5:                jal          t1, 23f
6:                jal          a1, 7f
7:                jal          t1, 1b
8:                jal          sp, 22f
9:                jal          t1, 18f
10:               jal          t6, 3b
11:               jal          gp, 25f
12:               jal          s11, 28f
13:               jal          a7, 19f
14:               jal          t1, 2b
15:               jal          t1, 13b
16:               jal          a2, 26f
17:               jal          s1, 12b
18:               jal          t1, 10b
19:               jal          a3, 4b
20:               jal          t1, 27f
21:               jal          t0, 20b
22:               jal          gp, 14b
23:               jal          s6, 29f
24:               jal          s9, 9b
25:               jal          t1, 16b
26:               jal          t1, 8b
27:               jal          a7, 0b
28:               jal          t0, 11b
29:               nop
                  bne          s8, s2, 544f
                  srai         t3, s10, 8
                  slti         s7, s4, -520
                  sll          tp, s7, a5
                  srli         s11, a3, 30
                  sltu         s1, zero, sp
                  bge          t6, a4, 548f
                  srai         s1, a2, 1
                  andi         a4, sp, 1090
                  sltu         s1, a0, a2
536:              nop
                  and          s6, a7, t2
                  add          t6, a4, t0
                  beq          s6, tp, 556f
                  slt          t5, s0, a2
                  sltiu        a0, t0, 685
                  slt          tp, s5, s9
                  sltiu        s9, t4, -1221
544:              ori          a5, s9, -433
                  andi         s3, s8, -1957
                  bgeu         t1, sp, 565f
                  sra          s11, s9, t5
548:              srai         s6, s11, 22
                  sra          a0, s10, s0
                  srl          t1, s1, s4
                  slti         gp, s2, -964
                  lui          a0, 337322
                  lui          t6, 63599
                  sltiu        zero, a7, -488
                  addi         s4, s9, 1592
556:              nop
                  xori         a5, t6, 813
                  bltu         t4, a7, 564f
                  nop
                  sub          s11, t5, sp
                  or           t2, a6, s5
                  lui          s9, 72129
                  sll          t2, t4, a4
564:              addi         t3, a2, -2018
565:              nop
                  and          a4, a1, zero
                  srl          tp, ra, s5
                  srli         s3, s1, 12
                  slti         a3, t2, -118
                  auipc        t0, 670551
                  nop
                  nop
                  srli         a7, t4, 24
                  bne          a0, gp, 581f
                  nop
                  ori          s10, t2, 869
                  bltu         s9, s0, 581f
                  xori         t0, gp, 1641
                  slli         s1, a3, 14
                  slli         s9, tp, 13
581:              lui          s1, 950665
                  sra          a0, t4, s7
                  and          s3, s0, zero
                  nop
                  and          s2, s1, a0
                  srai         s1, a1, 20
                  nop
                  blt          s4, a4, 594f
                  sltu         s3, s3, s6
                  sub          gp, s10, s3
                  srl          a6, s10, s1
                  bge          s4, s8, 609f
                  or           a1, a5, t4
594:              beq          tp, s9, 608f
                  xori         t6, t5, -344
                  blt          a3, s9, 613f
                  addi         gp, t1, -1492
                  sltu         s0, a6, a5
                  bltu         sp, t2, 609f
                  and          zero, a7, t2
                  bge          gp, t3, 620f
                  sll          t0, t0, a2
                  sll          s4, s10, s5
                  srai         t6, a2, 3
                  bgeu         t3, t5, 625f
                  bge          t2, a4, 620f
                  srl          t3, a3, a1
608:              auipc        a7, 876199
609:              slli         s6, ra, 31
                  sll          a5, t2, a6
                  blt          t5, s6, 630f
                  xor          s7, a0, s3
613:              sltu         s10, t1, t5
                  addi         sp, a1, 736
                  slti         sp, s1, 1739
                  and          s7, s3, t3
                  beq          s9, s0, 620f
                  srai         zero, t2, 15
                  bltu         tp, s11, 630f
620:              and          sp, s2, s1
                  srl          gp, zero, s1
                  addi         t2, a4, -1879
                  srai         t6, a3, 6
                  ori          t1, t6, -1148
625:              slli         s11, s0, 28
                  srl          a1, s1, ra
                  and          s0, s7, t6
                  auipc        a6, 497672
                  srai         zero, sp, 6
630:              addi         s3, s1, 1385
                  and          s10, s3, t4
                  srl          a4, t4, a7
                  sra          a1, a3, zero
                  sub          a4, s2, t2
                  nop
                  add          tp, s10, gp
                  beq          s1, s6, 652f
                  xori         a6, s1, 1434
                  slt          s6, t5, tp
                  and          s0, t6, s0
                  bgeu         tp, t1, 657f
                  srl          gp, zero, a7
                  srli         s10, ra, 11
                  xori         s1, t5, 1251
                  slt          s1, a5, t3
                  srai         s8, a0, 0
                  lui          s1, 790865
                  blt          s3, t6, 662f
                  bltu         t5, s10, 654f
                  xor          a4, s8, t0
                  bltu         ra, s2, 669f
652:              sub          a6, s0, zero
                  srl          s4, t1, sp
654:              sub          a5, s10, s10
                  nop
                  and          a6, s0, t6
657:              srl          tp, s2, zero
                  srl          a1, t0, s2
                  xori         a6, s1, 1347
                  bge          s6, a0, 667f
                  xori         s7, a2, -515
662:              srai         a3, t5, 23
                  xori         s2, s9, -1585
                  ori          s4, s9, 683
                  slti         a2, t5, 1232
                  add          a1, a0, t4
667:              sltiu        sp, s6, -388
                  bgeu         zero, s4, 674f
669:              srl          a4, s7, s5
                  lui          s1, 564541
                  blt          ra, s1, 685f
                  beq          t1, t6, 687f
                  lui          s10, 1014260
674:              srl          s9, s3, gp
                  slt          s11, s3, a6
                  sub          a6, s5, s11
                  sltiu        a1, t4, -812
                  lui          a7, 802983
                  slt          t0, t0, sp
                  sra          tp, tp, s7
                  beq          s8, s1, 697f
                  and          t6, t5, t1
                  ori          s4, t3, -240
                  sltu         s11, t0, a6
685:              sra          t5, s9, s1
                  andi         a7, s9, -634
687:              lui          t0, 887343
                  nop
                  slli         t6, s3, 3
                  xor          a1, a1, s5
                  srli         s0, s2, 13
                  sub          t3, sp, gp
                  xor          zero, s7, a5
                  slti         t0, a1, -1672
                  auipc        gp, 598229
                  addi         s2, s5, -747
697:              bge          a1, a3, 709f
                  nop
                  beq          a7, a5, 710f
                  bge          a0, s9, 713f
                  bne          a7, t0, 720f
                  or           sp, s9, a6
                  beq          t5, s3, 723f
                  bgeu         s5, t1, 722f
                  blt          s1, s7, 713f
                  slli         t1, ra, 10
                  sll          s6, tp, t6
                  bne          tp, s11, 715f
709:              andi         a5, s4, -580
710:              auipc        gp, 517342
                  bltu         t3, ra, 727f
                  blt          a1, a4, 732f
713:              srai         s4, t0, 10
                  beq          t5, s3, 720f
715:              addi         a6, t3, 115
                  srl          tp, a0, t6
                  sltiu        sp, s3, 1462
                  bgeu         a4, s1, 731f
                  srli         t5, s1, 22
720:              beq          s10, s0, 728f
                  srai         s9, t0, 2
722:              slli         s2, s11, 20
723:              lui          a1, 827569
                  sltiu        a0, t3, 1433
                  srai         tp, gp, 19
                  sub          a4, a7, t5
727:              xori         s7, s0, -971
728:              sra          a5, s2, s6
                  beq          t1, a3, 747f
                  xor          s2, t0, s4
731:              andi         t1, s2, -1686
732:              blt          s8, a4, 739f
                  ori          sp, s5, 85
                  bltu         s8, t6, 749f
                  bne          s4, s7, 754f
                  bge          s5, t2, 740f
                  xor          tp, s2, s4
                  and          s8, t6, s9
739:              srai         s0, s6, 4
740:              slti         s4, zero, -908
                  andi         s10, t1, 465
                  blt          t4, s11, 760f
                  lui          gp, 180303
                  xori         s10, s7, 1954
                  or           s6, a0, t1
                  bltu         s10, s5, 758f
747:              xor          s4, t0, ra
                  add          s6, s9, s1
749:              lui          a2, 112181
                  addi         t6, t6, 918
                  and          a0, tp, sp
                  or           s9, s5, s2
                  bltu         s10, s6, 764f
754:              xori         zero, a1, -1423
                  bgeu         a6, a1, 765f
                  slli         s11, zero, 28
                  sub          s0, a6, a1
758:              bge          a0, s0, 772f
                  sub          s3, s4, a2
760:              andi         t0, s3, 591
                  bge          s4, s4, 768f
                  slti         s11, a6, 1327
                  srli         t0, a4, 21
764:              srai         a3, a5, 10
765:              xori         s4, a6, 1448
                  xor          a2, tp, gp
                  xor          s9, a3, s3
768:              ori          s9, a6, -1136
                  bltu         t2, s2, 786f
                  srai         s11, a4, 7
                  beq          s6, s0, 785f
772:              slli         t3, t1, 19
                  nop
                  beq          sp, s6, 779f
                  xor          s3, s11, s3
                  addi         t5, a7, -1007
                  sltu         t3, a1, t6
                  bltu         a6, tp, 798f
779:              bltu         s11, zero, 782f
                  sltiu        t3, a2, -964
                  srai         t3, s8, 10
782:              beq          zero, t2, 799f
                  add          t2, gp, s2
                  xor          s6, a7, t4
785:              sra          t2, zero, s6
786:              bgeu         a2, a6, 805f
                  sra          t0, t6, s9
                  ori          gp, a0, 737
                  sll          a0, t2, t6
                  beq          a6, t5, 804f
                  sub          a7, s0, a5
                  slti         a0, s0, 377
                  srl          s7, a3, a6
                  sra          s0, a5, sp
                  slli         t5, gp, 9
                  beq          gp, s10, 807f
                  sltiu        zero, a7, -535
798:              lui          a1, 190029
799:              sub          s9, a1, t2
                  auipc        s0, 693560
                  sra          t1, t4, zero
                  nop
                  nop
804:              beq          a5, a0, 807f
805:              srl          a4, a7, s9
                  slli         a6, s10, 6
807:              srl          s4, s7, a1
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         t4, t4, -48
                  xor          zero, s5, a6
                  xor          s11, tp, t1
                  sw           t6, 4(t4)
                  xori         a3, a0, -1314
sub_4_4:          jal          t6, 18f
0:                jal          t1, 11f
1:                jal          t1, 15f
2:                jal          t1, 16f
3:                jal          t1, 10f
4:                jal          s2, 20f
5:                jal          t1, 0b
6:                jal          t1, 25f
7:                jal          t1, 8f
8:                jal          a7, 3b
9:                jal          t1, 19f
10:               jal          t1, 5b
11:               jal          t1, 13f
12:               jal          s0, 14f
13:               jal          t1, 4b
14:               jal          t5, 9b
15:               jal          gp, 28f
16:               jal          a5, 27f
17:               jal          t1, 6b
18:               jal          t0, 2b
19:               jal          t3, 26f
20:               jal          s3, 12b
21:               jal          s8, 22f
22:               jal          a2, 24f
23:               jal          t1, 17b
24:               jal          t1, 7b
25:               jal          s7, 21b
26:               jal          t1, 1b
27:               jal          s3, 23b
28:               sra          a3, t6, s6
sub_4_2:          jal          t6, 4f
0:                jal          s9, 1f
1:                jal          t1, 13f
2:                jal          t1, 11f
3:                jal          t1, 0b
4:                jal          a5, 14f
5:                jal          t1, 2b
6:                jal          s3, 16f
7:                jal          s9, 10f
8:                jal          t1, 19f
9:                jal          sp, 3b
10:               jal          t1, 21f
11:               jal          t1, 15f
12:               jal          s6, 17f
13:               jal          tp, 12b
14:               jal          t3, 18f
15:               jal          t1, 7b
16:               jal          gp, 5b
17:               jal          t1, 8b
18:               jal          a4, 9b
19:               jal          sp, 20f
20:               jal          a0, 6b
21:               and          t5, t3, s8
sub_4_0:          jal          t6, 15f
0:                jal          s6, 5f
1:                jal          t1, 12f
2:                jal          a4, 16f
3:                jal          t1, 27f
4:                jal          s8, 6f
5:                jal          s1, 19f
6:                jal          gp, 28f
7:                jal          a2, 11f
8:                jal          t1, 7b
9:                jal          t0, 14f
10:               jal          gp, 9b
11:               jal          a2, 4b
12:               jal          s7, 17f
13:               jal          tp, 20f
14:               jal          tp, 23f
15:               jal          s9, 25f
16:               jal          t1, 30f
17:               jal          t0, 18f
18:               jal          gp, 3b
19:               jal          s7, 8b
20:               jal          t1, 26f
21:               jal          t3, 24f
22:               jal          gp, 1b
23:               jal          t0, 13b
24:               jal          t0, 29f
25:               jal          s0, 10b
26:               jal          t1, 0b
27:               jal          s11, 2b
28:               jal          t1, 21b
29:               jal          t1, 22b
30:               slti         s3, a4, -1953
sub_4_3:          jal          t6, 6f
0:                jal          a1, 8f
1:                jal          t1, 9f
2:                jal          t6, 5f
3:                jal          t1, 4f
4:                jal          t1, 10f
5:                jal          sp, 11f
6:                jal          s3, 3b
7:                jal          t1, 2b
8:                jal          t1, 1b
9:                jal          t1, 7b
10:               jal          s7, 0b
11:               xori         s4, a4, 877
                  auipc        t6, 488681
                  srl          s2, s6, s6
                  andi         t2, s11, -1151
                  sra          t6, s8, gp
                  nop
                  andi         s9, a0, -1702
                  or           s9, sp, s10
                  sltiu        s9, ra, -1589
                  sra          tp, a7, s4
                  sra          t2, t5, a3
                  xor          a6, s2, t5
                  srl          a6, t0, t2
                  add          t0, t6, s3
                  bgeu         s2, s0, 17f
                  sll          a3, t5, a5
                  srli         s0, t5, 3
                  bgeu         t1, ra, 21f
17:               ori          zero, s2, -681
                  xori         t3, s5, 1583
                  andi         s1, a5, -1879
                  sub          s7, s2, tp
21:               slt          t2, s8, a2
                  auipc        t2, 198487
                  auipc        s11, 620763
                  bge          t0, t4, 26f
                  sltiu        a5, ra, -903
26:               bge          s7, s0, 39f
                  lui          t5, 106186
                  sub          s6, zero, a6
                  srli         a5, s4, 25
                  slt          t5, s4, a7
                  srai         a2, s4, 7
                  bge          s0, a0, 39f
                  sra          t2, tp, a7
                  nop
                  nop
                  xori         a0, s7, -823
                  and          s11, sp, a1
                  slt          s8, gp, t2
39:               bgeu         s3, t0, 54f
                  sll          s3, a5, s5
                  blt          t2, s9, 55f
                  lui          s9, 614240
                  addi         s11, tp, 988
                  srl          t1, ra, a1
                  bltu         s11, s2, 57f
                  sub          s9, s0, a1
                  bltu         a1, a3, 51f
                  sub          s8, sp, t4
                  sll          s0, t4, s9
                  slti         a1, s6, -1715
51:               sltu         a2, s7, s1
                  add          tp, t3, sp
                  srli         a4, s1, 0
54:               srl          s8, t5, s8
55:               add          s0, a1, tp
                  lui          s0, 816732
57:               andi         a1, a7, 623
                  auipc        a5, 329878
                  slt          t3, gp, s7
                  beq          a6, ra, 64f
                  andi         t2, s5, 436
                  blt          s7, s10, 71f
                  add          t1, t1, a6
64:               bgeu         t1, s11, 79f
                  nop
                  nop
                  lui          s2, 1008995
                  lui          s2, 155197
                  sltu         t3, t5, tp
                  lui          t0, 337969
71:               sltu         a7, s10, a6
                  lui          t2, 648479
                  xor          zero, s0, s0
                  sll          s7, a4, s7
                  xor          a3, t6, s10
                  srai         s1, s3, 27
                  sltu         s4, a0, a1
                  xor          a2, t6, s11
79:               sll          s3, gp, a0
                  ori          a3, sp, -1601
                  sltu         s6, s10, s6
                  bne          a1, ra, 88f
                  bne          a4, t2, 89f
                  xor          s11, a2, t0
                  lui          s6, 954990
                  ori          t5, a3, -973
                  beq          s8, s11, 94f
88:               bne          a7, t1, 99f
89:               bge          s4, gp, 97f
                  sub          s7, s7, s4
                  or           t5, s7, s0
                  bne          a2, zero, 111f
                  sll          t2, t1, a0
94:               slt          s9, sp, s2
                  bne          t1, a0, 106f
                  sra          t2, s4, t4
97:               sltiu        zero, s11, -18
                  sltu         t5, s9, a4
99:               bgeu         s7, s3, 116f
                  lui          gp, 790309
                  beq          s2, a0, 107f
                  bltu         a3, s2, 117f
                  lui          zero, 937029
                  nop
                  or           t6, a7, ra
106:              sub          t2, a0, a0
107:              and          s9, t6, s10
                  auipc        a3, 217485
                  srl          t0, a2, s6
                  sub          s1, t5, a2
111:              bltu         sp, t3, 130f
                  slti         t6, t1, 962
                  ori          sp, s0, -1160
                  slli         t0, s11, 11
                  add          a0, t0, t3
116:              slli         s11, a6, 4
117:              add          t0, s4, s2
                  slli         t5, sp, 25
                  or           s10, a7, s11
                  addi         gp, sp, -729
                  xori         gp, s1, 1902
                  or           zero, s5, a0
                  sra          a2, s10, s10
                  add          s0, t1, zero
                  bgeu         t3, a2, 126f
126:              xor          s8, sp, t5
                  lui          t5, 987242
                  bgeu         s3, t4, 138f
                  bne          s11, s8, 134f
130:              bgeu         s5, s10, 140f
                  bne          gp, t2, 140f
                  auipc        tp, 265919
                  srli         t0, a7, 28
134:              bltu         t6, ra, 139f
                  sltiu        a2, s9, 432
                  blt          a1, a1, 143f
                  sub          s11, t6, a6
138:              srl          zero, a5, s0
139:              slti         t5, s11, 1760
140:              sltu         a3, s4, a2
                  sub          s4, a3, a5
                  srli         a2, s1, 16
143:              ori          t3, a7, 1512
                  sltiu        a1, a5, -165
                  sll          s3, a6, s7
                  add          s1, sp, t5
                  ori          zero, s5, 1463
                  sra          a1, t2, s10
                  xor          s8, sp, t1
                  and          sp, s11, s1
                  sll          gp, s3, sp
                  xori         s10, s7, 1668
                  xor          t2, s6, s1
                  sltu         zero, s4, a5
                  srai         s2, sp, 16
                  sll          s9, t2, s7
                  beq          s4, a2, 172f
                  slt          s6, s5, a1
                  andi         a4, t1, -1966
                  nop
                  addi         s3, gp, 613
                  ori          tp, t1, 566
                  srai         t2, a0, 15
                  srli         t5, t5, 15
                  srl          s9, a5, s1
                  beq          s6, t0, 183f
                  srai         t6, a5, 14
                  lui          a5, 248357
                  nop
                  add          s1, gp, a2
                  xori         s6, s9, 595
172:              sub          s7, s11, a5
                  addi         a3, zero, -494
                  add          a5, gp, s11
                  blt          sp, sp, 180f
                  and          t6, a5, a4
                  andi         t6, s8, -402
                  bge          a3, t2, 193f
                  add          s10, s3, a0
180:              sltiu        t3, a1, 988
                  srli         s0, a6, 11
                  slli         a6, gp, 0
183:              lui          s3, 786476
                  and          a2, s7, sp
                  beq          t3, t3, 199f
                  addi         a0, ra, 110
                  srl          a5, s0, s8
                  auipc        t6, 549766
                  beq          s1, a7, 193f
                  or           zero, t1, t5
                  srl          s0, ra, t6
                  blt          a1, a6, 200f
193:              bltu         s3, zero, 203f
                  slt          t2, a2, a0
                  auipc        t0, 311704
                  srl          s8, a2, s7
                  andi         s0, s2, -371
                  sra          s9, s0, t6
199:              slli         t6, ra, 24
200:              xori         zero, s2, 585
                  srai         s2, ra, 30
                  bne          s3, a6, 204f
203:              srai         s9, s7, 9
204:              slli         t3, s11, 6
                  bltu         sp, ra, 224f
                  addi         t0, t4, -292
                  sltu         t0, t0, gp
                  or           s6, s5, s3
                  sltu         a3, t3, t3
                  ori          a1, t3, 481
                  bne          s4, a3, 215f
                  blt          t1, s1, 218f
                  add          t2, s10, s0
                  ori          t5, s3, -1388
215:              bge          t3, t0, 228f
                  sra          s3, s11, s9
                  sltu         gp, t1, s9
218:              srl          t0, s7, s5
                  and          s8, a3, s4
                  sltu         t0, s8, tp
                  and          s4, t4, s10
                  srai         t2, t4, 10
                  bne          a6, gp, 234f
224:              bge          a4, s1, 239f
                  and          a5, s7, s4
                  sltu         a7, s10, s10
                  sub          a2, a5, t1
228:              addi         tp, t5, -1804
                  lui          a5, 944788
                  bne          t1, t6, 234f
                  and          s3, s5, s2
                  srli         t2, a4, 13
                  bne          a2, gp, 252f
234:              bltu         t5, s4, 243f
                  bge          t1, ra, 240f
                  sltiu        zero, gp, -752
sub_4_1:          jal          t6, 13f
0:                jal          gp, 7f
1:                jal          t1, 14f
2:                jal          a4, 20f
3:                jal          tp, 0b
4:                jal          t1, 18f
5:                jal          a4, 3b
6:                jal          t1, 16f
7:                jal          t0, 1b
8:                jal          t1, 10f
9:                jal          t1, 4b
10:               jal          a5, 22f
11:               jal          a4, 25f
12:               jal          t2, 23f
13:               jal          t1, 19f
14:               jal          t1, 11b
15:               jal          t1, 17f
16:               jal          t1, 12b
17:               jal          t1, 21f
18:               jal          t1, 2b
19:               jal          t1, 8b
20:               jal          t2, 6b
21:               jal          s10, 5b
22:               jal          a6, 24f
23:               jal          t1, 15b
24:               jal          a5, 9b
25:               addi         sp, t3, -919
                  slt          s9, s2, t0
                  sltu         a7, s5, s11
239:              bgeu         gp, a7, 245f
240:              srl          s9, s6, s5
                  nop
                  andi         s2, sp, 1299
243:              bgeu         s0, a4, 253f
                  sra          a0, gp, a4
245:              srai         a3, a6, 8
                  xori         t0, gp, 1723
                  bgeu         t5, s6, 254f
                  sltiu        s3, a5, 1312
                  bltu         ra, t0, 250f
250:              auipc        s4, 683458
                  addi         t0, s1, -836
252:              srl          s7, a0, a2
253:              xori         gp, s4, -1265
254:              bge          a7, a6, 261f
                  ori          s1, ra, 1007
                  slti         t2, a3, 756
                  andi         a3, a2, 109
                  xor          s4, a7, s9
                  sltiu        s0, s5, 1157
                  beq          a0, a5, 272f
261:              bltu         s9, s10, 272f
                  add          s3, s4, s3
                  sltiu        t6, sp, -181
                  lui          a7, 272365
                  sltiu        s9, s10, 1332
                  sltiu        t3, a2, -580
                  beq          t1, s2, 273f
                  ori          s3, a5, 441
                  auipc        a6, 746451
                  sra          a0, s5, a7
                  auipc        t0, 679809
272:              or           s10, a4, s8
273:              ori          s2, s1, -1664
                  ori          s4, s0, -1512
                  slt          s9, a6, s0
                  sltiu        t2, zero, 1616
                  auipc        s7, 190942
                  addi         s2, s0, -76
                  nop
                  lw           t6, 4(t4)
                  ori          a5, tp, -1966
                  addi         t4, t4, 48
                  andi         a4, a2, 128
414:              addi x15, x31, 0
414:              jalr x15, x15, 0
sub_1:            beq          s5, s0, sub_1_stack_p
                  nop
sub_1_stack_p:    addi         t4, t4, -16
                  add          s2, s11, t2
                  sw           t6, 4(t4)
                  sub          t3, t5, t6
                  auipc        s8, 720044
sub_1_8:          jal          t6, 1f
0:                jal          t1, 11f
1:                jal          a6, 8f
2:                jal          t1, 6f
3:                jal          t1, 7f
4:                jal          sp, 10f
5:                jal          a3, 3b
6:                jal          t3, 0b
7:                jal          s10, 4b
8:                jal          t5, 9f
9:                jal          t1, 5b
10:               jal          gp, 2b
11:               and          s9, s7, s4
sub_1_10:         jal          t6, 22f
0:                jal          t1, 28f
1:                jal          a1, 14f
2:                jal          t3, 10f
3:                jal          t1, 12f
4:                jal          a7, 7f
5:                jal          s7, 13f
6:                jal          t1, 24f
7:                jal          s8, 8f
8:                jal          t1, 20f
9:                jal          t1, 18f
10:               jal          s3, 1b
11:               jal          t1, 4b
12:               jal          t0, 5b
13:               jal          t1, 15f
14:               jal          s9, 25f
15:               jal          t1, 19f
16:               jal          t1, 9b
17:               jal          t1, 6b
18:               jal          t6, 27f
19:               jal          t1, 23f
20:               jal          s3, 2b
21:               jal          t1, 17b
22:               jal          t1, 16b
23:               jal          a7, 21b
24:               jal          t1, 26f
25:               jal          sp, 3b
26:               jal          t1, 0b
27:               jal          t1, 11b
28:               ori          sp, t6, -2018
sub_1_3:          jal          t6, 9f
0:                jal          s7, 7f
1:                jal          t2, 13f
2:                jal          gp, 17f
3:                jal          t1, 14f
4:                jal          sp, 1b
5:                jal          sp, 10f
6:                jal          t1, 12f
7:                jal          a3, 15f
8:                jal          t1, 2b
9:                jal          t1, 22f
10:               jal          t0, 21f
11:               jal          s7, 16f
12:               jal          t1, 23f
13:               jal          gp, 18f
14:               jal          t0, 20f
15:               jal          s1, 11b
16:               jal          t1, 4b
17:               jal          a6, 5b
18:               jal          tp, 6b
19:               jal          t0, 24f
20:               jal          t1, 8b
21:               jal          s1, 0b
22:               jal          s2, 3b
23:               jal          s2, 19b
24:               sltiu        s0, s2, 1746
sub_1_6:          jal          t6, 0f
0:                jal          t1, 8f
1:                jal          gp, 9f
2:                jal          t1, 13f
3:                jal          a3, 2b
4:                jal          t3, 3b
5:                jal          a2, 6f
6:                jal          s0, 11f
7:                jal          sp, 5b
8:                jal          t0, 12f
9:                jal          t5, 10f
10:               jal          s3, 4b
11:               jal          t1, 1b
12:               jal          t2, 7b
13:               slli         s4, gp, 2
sub_1_5:          jal          t6, 6f
0:                jal          s2, 10f
1:                jal          a0, 4f
2:                jal          s6, 9f
3:                jal          t1, 0b
4:                jal          s3, 5f
5:                jal          s11, 2b
6:                jal          a4, 1b
7:                jal          t1, 3b
8:                jal          t1, 7b
9:                jal          t1, 8b
10:               sltu         s6, zero, s5
sub_1_4:          jal          t6, 2f
0:                jal          t1, 9f
1:                jal          t2, 7f
2:                jal          t0, 5f
3:                jal          t1, 13f
4:                jal          t1, 3b
5:                jal          s10, 14f
6:                jal          t1, 1b
7:                jal          t1, 11f
8:                jal          t1, 4b
9:                jal          t1, 12f
10:               jal          t0, 0b
11:               jal          t1, 10b
12:               jal          t1, 15f
13:               jal          s2, 16f
14:               jal          a7, 6b
15:               jal          t1, 8b
16:               sll          gp, a5, s8
sub_1_1:          jal          t6, 8f
0:                jal          a3, 23f
1:                jal          s8, 5f
2:                jal          a3, 12f
3:                jal          t1, 14f
4:                jal          s8, 11f
5:                jal          s4, 6f
6:                jal          t3, 22f
7:                jal          s6, 18f
8:                jal          s1, 16f
9:                jal          t1, 13f
10:               jal          sp, 1b
11:               jal          a3, 21f
12:               jal          t6, 17f
13:               jal          sp, 3b
14:               jal          t1, 4b
15:               jal          a4, 20f
16:               jal          t1, 10b
17:               jal          tp, 19f
18:               jal          t1, 15b
19:               jal          a0, 0b
20:               jal          gp, 2b
21:               jal          t0, 7b
22:               jal          t1, 9b
23:               xori         s2, t4, 1974
sub_1_2:          jal          t6, 4f
0:                jal          t1, 19f
1:                jal          s4, 8f
2:                jal          t1, 10f
3:                jal          t1, 12f
4:                jal          tp, 1b
5:                jal          s7, 11f
6:                jal          t1, 17f
7:                jal          gp, 15f
8:                jal          t0, 5b
9:                jal          tp, 7b
10:               jal          tp, 3b
11:               jal          t1, 13f
12:               jal          t1, 6b
13:               jal          t1, 9b
14:               jal          t1, 18f
15:               jal          a7, 2b
16:               jal          sp, 14b
17:               jal          a5, 16b
18:               jal          t1, 0b
19:               auipc        s3, 1000356
sub_1_7:          jal          t6, 7f
0:                jal          s7, 3f
1:                jal          t1, 2f
2:                jal          t1, 12f
3:                jal          a5, 6f
4:                jal          a6, 10f
5:                jal          t1, 1b
6:                jal          t1, 5b
7:                jal          s4, 4b
8:                jal          t1, 0b
9:                jal          s7, 13f
10:               jal          sp, 9b
11:               jal          t1, 8b
12:               jal          t1, 14f
13:               jal          a4, 11b
14:               slti         a5, a5, 1863
sub_1_0:          jal          t6, 4f
0:                jal          sp, 9f
1:                jal          s4, 5f
2:                jal          gp, 7f
3:                jal          t0, 8f
4:                jal          t1, 0b
5:                jal          t1, 13f
6:                jal          t6, 12f
7:                jal          t0, 11f
8:                jal          s0, 2b
9:                jal          t1, 3b
10:               jal          t1, 6b
11:               jal          sp, 10b
12:               jal          s11, 1b
13:               srli         a4, s2, 1
                  sub          s8, t3, s2
                  sltiu        s8, t1, -169
                  sltu         s10, s5, tp
                  srl          t1, s8, sp
                  lui          t3, 599860
                  auipc        gp, 1018120
                  slti         s8, a6, -708
                  sltiu        a7, zero, 1322
                  and          t6, s0, s8
                  sub          a5, tp, a7
                  xor          zero, s9, s6
                  bge          s1, t6, 14f
                  lui          s4, 281613
                  srli         gp, s9, 29
14:               auipc        t5, 736554
                  auipc        t6, 661296
                  andi         s4, s11, 675
                  sll          t3, tp, s6
                  and          s2, t3, s4
                  auipc        a6, 52802
                  sll          s9, a7, a0
                  slli         t6, s0, 15
                  bge          s10, t5, 37f
sub_1_9:          jal          t6, 5f
0:                jal          t1, 2f
1:                jal          t0, 8f
2:                jal          sp, 9f
3:                jal          t1, 4f
4:                jal          t1, 0b
5:                jal          gp, 1b
6:                jal          t5, 11f
7:                jal          s8, 6b
8:                jal          a1, 12f
9:                jal          s6, 7b
10:               jal          t6, 13f
11:               jal          a5, 16f
12:               jal          t0, 10b
13:               jal          t1, 14f
14:               jal          t1, 15f
15:               jal          gp, 3b
16:               and          sp, s11, a3
                  sra          t2, s0, t4
                  srli         t5, a0, 30
                  slt          s7, t0, a4
                  lui          a4, 86919
                  slli         s2, s1, 6
                  beq          t4, s10, 37f
                  or           s1, s0, s2
                  sll          s1, t2, a3
                  sll          s11, a4, s0
                  sub          s1, t5, gp
                  bge          t1, a6, 42f
                  slti         s3, t3, 558
                  slti         t5, a3, 1269
                  sll          t0, s5, a4
37:               srai         s1, s11, 11
                  addi         a0, s5, -955
                  sra          t1, zero, a6
                  and          t2, s2, s2
                  sltiu        s7, zero, -1619
42:               ori          s1, s0, 650
                  andi         a2, t5, -1144
                  slt          a1, s11, s5
                  add          a3, s4, a2
                  bgeu         s3, a4, 51f
                  beq          t3, t6, 58f
                  slt          a4, t4, t3
                  ori          sp, s9, 1507
                  srli         s0, a1, 28
51:               srl          tp, gp, s8
                  sub          s1, t0, t3
                  bltu         t2, s3, 64f
                  auipc        s0, 328187
                  addi         t0, s5, 252
                  or           t5, s4, s11
                  bge          s5, a0, 61f
58:               add          a0, s3, s7
                  sub          t1, s7, t1
                  beq          t4, t2, 70f
61:               sll          t6, a2, a1
                  andi         t3, a5, 353
                  sub          t1, t0, s3
64:               auipc        tp, 313073
                  addi         s3, t2, 1863
                  sll          t5, a6, s7
                  bgeu         a1, gp, 75f
                  sltu         a3, sp, s1
                  slti         t1, sp, 6
70:               auipc        a7, 434198
                  slli         a5, a7, 11
                  andi         s3, s4, -217
                  andi         s7, s3, -126
                  and          s6, s2, s7
75:               add          s6, s7, a5
                  sll          a2, t2, s6
                  slt          a5, t0, gp
                  andi         a1, s5, 1448
                  bge          t3, s2, 91f
                  bgeu         a2, t1, 92f
                  sra          a7, t1, s9
                  sub          a1, a1, s4
                  sra          s9, s8, a0
                  srli         a3, gp, 18
                  bltu         t5, t0, 99f
                  srli         s9, s4, 21
                  addi         zero, s7, -862
                  slti         a0, a3, -842
                  auipc        a1, 235435
                  and          a2, s0, a7
91:               sll          a6, s8, s2
92:               sub          a6, a1, t4
                  bgeu         s4, tp, 103f
                  sll          a4, a1, a6
                  nop
                  sll          s6, s0, s7
                  or           a1, t5, a2
                  lui          sp, 49212
99:               and          s9, a5, t6
                  slti         s11, a0, 1951
                  ori          t3, t1, 2008
                  lui          t5, 164261
103:              nop
                  srl          t5, s8, gp
                  lui          sp, 931038
                  bge          zero, sp, 110f
                  nop
                  srl          a0, s1, tp
                  andi         s2, t1, -609
110:              sltu         a1, t4, s8
                  and          s11, t1, a7
                  or           zero, ra, a2
                  nop
                  srli         a5, gp, 26
                  ori          a3, a3, 89
                  bne          t3, t2, 127f
                  bgeu         s8, s10, 126f
                  sra          t6, s8, a2
                  bltu         t1, t3, 135f
                  beq          t3, a0, 128f
                  sltu         t1, s2, s5
                  sub          s1, s6, a5
                  add          sp, s3, s0
                  bltu         t4, t0, 127f
                  add          t2, t6, s9
126:              andi         t0, s4, 1197
127:              lui          t2, 68234
128:              sub          a3, ra, s2
                  slti         s9, t4, -1121
                  auipc        s0, 711306
                  bltu         t4, zero, 145f
                  sra          zero, a0, t4
                  xor          s1, a2, t3
                  bltu         ra, s6, 142f
135:              blt          s9, a6, 154f
                  srai         zero, s5, 20
                  andi         s9, s3, -1373
                  bne          a1, a7, 158f
                  nop
                  lui          t1, 484844
                  and          s8, t5, t0
142:              andi         s9, a7, 320
                  lui          zero, 244631
                  slli         a4, s10, 1
145:              blt          s3, s4, 161f
                  bge          t5, a5, 166f
                  or           s0, sp, t0
                  xori         a0, s2, -853
                  bne          s1, s2, 165f
                  xor          t5, a4, t2
                  sltiu        s4, a2, 155
                  xori         gp, t0, -1402
                  addi         s2, t0, -894
154:              beq          s8, t1, 161f
                  lui          a5, 707009
                  xori         t3, a6, 1115
                  xor          a5, t0, s0
158:              srl          a1, gp, a4
                  sltiu        t6, t2, 57
                  slt          s9, s3, sp
161:              beq          s5, s4, 173f
                  bgeu         s11, sp, 174f
                  slti         a7, s2, 1055
                  bltu         a1, tp, 176f
165:              lui          s3, 996739
166:              sltu         a3, a3, sp
                  bne          s8, zero, 181f
                  sra          t1, t0, a1
                  nop
                  blt          s11, a6, 185f
                  auipc        gp, 314138
                  sll          gp, s1, a7
173:              slli         s0, a5, 18
174:              blt          s7, sp, 190f
                  srai         a3, s8, 19
176:              blt          a7, s11, 196f
                  add          a1, s0, s5
                  bgeu         s6, s5, 181f
                  beq          ra, s2, 189f
                  srai         a7, s7, 15
181:              xor          zero, a4, a3
                  lui          a0, 710420
                  sltu         s11, s3, zero
                  sub          gp, ra, t3
185:              xori         s10, a6, 1181
                  srl          a1, t2, t6
                  slti         s4, gp, 1551
                  srai         a7, t0, 20
189:              srl          s2, s4, a4
190:              bltu         tp, ra, 198f
                  xor          s1, s0, s11
                  xori         t3, t2, 163
                  sra          s10, zero, t0
                  ori          zero, t3, 1094
                  and          s7, a7, t3
196:              or           s9, gp, s3
                  sub          a5, s10, gp
198:              sll          a3, ra, a6
                  nop
                  nop
                  srli         s9, sp, 9
                  xori         t2, t1, -845
                  or           t6, s8, s5
                  lui          s7, 752221
                  slli         tp, a7, 31
                  nop
                  beq          sp, s9, 215f
                  add          a4, a0, a6
                  sra          t3, t1, a1
                  bne          s5, s8, 221f
                  xor          s1, t6, s8
                  blt          a2, a0, 224f
                  slti         t1, ra, 42
                  sll          s1, t6, s7
215:              sub          t6, s8, t1
                  addi         t6, t6, 90
                  addi         t0, s6, -440
                  bge          s3, t6, 237f
                  nop
                  srli         t0, t3, 19
221:              slli         zero, s3, 12
                  srl          zero, s1, s0
                  auipc        s6, 293461
224:              srli         s0, a5, 9
                  srai         zero, a4, 20
                  sub          gp, a5, t2
                  blt          s6, s6, 234f
                  slt          t5, s0, s9
                  slti         s6, sp, 1294
                  srli         a6, a0, 7
                  slt          t0, s0, s4
                  sltu         s10, a3, s2
                  sra          s11, t1, tp
234:              and          a6, a6, t6
                  lui          t3, 1034635
                  bgeu         a5, s11, 240f
237:              auipc        a4, 639722
                  or           t5, s3, a3
                  or           a2, s4, t4
240:              slli         t1, tp, 31
                  sra          s11, s1, a5
                  sub          s9, t0, a2
                  ori          s2, s6, -1193
                  slti         tp, s4, 1274
                  nop
                  or           gp, s4, s0
                  srl          zero, a4, a5
                  srai         sp, a4, 26
                  add          s8, s11, sp
                  addi         s8, s6, 343
                  srl          a0, t2, a5
                  bne          gp, s8, 263f
                  beq          s0, t4, 257f
                  lui          s1, 93167
                  srli         s10, s6, 9
                  slt          t2, s10, t0
257:              sra          s9, t1, t6
                  andi         gp, s7, -2008
                  and          t1, sp, a2
                  srai         tp, a1, 29
                  slt          a4, a5, a0
                  sra          s0, t4, a3
263:              nop
                  bgeu         sp, a0, 273f
                  srli         t5, t0, 11
                  and          a0, t1, s1
                  bltu         a4, t3, 277f
                  bne          s9, t4, 271f
                  slli         s11, s3, 31
                  sll          tp, s9, s5
271:              bge          t1, t1, 280f
                  srli         a1, t2, 5
273:              sra          s0, zero, s0
                  sll          a5, a7, t4
                  addi         a5, s4, -852
                  add          s2, t1, s8
277:              addi         t3, s8, -234
                  slli         s1, t6, 25
                  addi         a1, s2, 405
280:              sra          a3, s2, t1
                  auipc        a5, 452484
                  nop
                  srl          t0, s4, a3
                  and          a4, t1, s1
                  nop
                  bgeu         s6, t6, 298f
                  sltu         s11, a3, t3
                  or           t3, a1, t4
                  bne          gp, s4, 300f
                  beq          s4, t6, 310f
                  srai         gp, t0, 1
                  srai         t2, a1, 23
                  sra          s11, s7, s1
                  slti         a4, t6, -23
                  auipc        s4, 861424
                  bgeu         s5, a3, 310f
                  bgeu         t6, s8, 309f
298:              blt          a2, s0, 314f
                  sltu         a4, t6, ra
300:              slti         zero, a6, 645
                  auipc        s9, 757581
                  add          a4, ra, s11
                  sll          t6, t4, s2
                  lui          s4, 83296
                  blt          s5, a6, 314f
                  bltu         t2, s10, 314f
                  blt          sp, s3, 323f
                  slli         s8, a5, 3
309:              beq          s4, s4, 314f
310:              bge          s3, a7, 330f
                  add          t6, s0, s1
                  slti         s8, s2, 709
                  ori          s8, s2, 300
314:              sltiu        s1, t0, -1625
                  ori          s11, t2, -804
                  bltu         t3, tp, 325f
                  and          s1, t6, ra
                  andi         s7, t4, 1833
                  srai         s9, s4, 30
                  nop
                  xor          sp, s9, tp
                  ori          t6, s3, 1509
323:              auipc        t2, 660770
                  xor          a1, sp, s0
325:              sub          tp, ra, t5
                  sll          tp, a6, a2
                  bne          a2, a0, 338f
                  xori         s2, s2, -858
                  bgeu         s5, s4, 338f
330:              beq          gp, a2, 333f
                  or           t0, t4, s6
                  bne          t5, s8, 340f
                  sll          t5, s5, t5
                  auipc        s9, 333502
                  sub          s2, s0, gp
                  la           s6, sub_2
                  addi         s6, s6, -755
                  add          a6, s6, t2
                  srli         a0, a1, 28
                  auipc        t0, 942054
                  nop
sub_1_j2:         jalr         t6, s6, 755 #jump sub_1 -> sub_2
333:              ori          s2, s4, 1860
                  or           a7, a0, gp
                  nop
                  auipc        a6, 299798
                  slli         s6, a6, 22
338:              and          a5, s1, s3
                  bne          a1, tp, 344f
340:              or           a0, s1, a1
                  bge          s6, ra, 357f
                  beq          gp, sp, 357f
                  blt          s10, s1, 353f
344:              xori         s10, s1, -1707
                  sltiu        s7, t4, -1430
                  sltiu        s9, s4, -199
                  srli         t2, s9, 7
                  andi         a7, ra, -1936
                  bge          t6, t2, 365f
                  srl          s6, s5, a5
                  srli         a3, s1, 14
                  nop
353:              addi         a5, s1, -91
                  sra          s11, s9, s8
                  lui          a4, 291608
                  slli         s0, gp, 0
357:              xor          a2, t6, s10
                  auipc        a5, 227159
                  blt          s7, s4, 371f
                  sll          a7, t2, s9
                  slt          t1, s6, a2
                  and          s2, a1, s2
                  sra          s11, s8, s5
                  xor          s1, s4, s6
365:              bne          s8, a1, 377f
                  sltiu        zero, s0, 478
                  lui          s6, 103429
                  bge          a5, t6, 376f
                  bge          s4, a2, 377f
                  bge          s5, t2, 380f
371:              lui          s7, 733424
                  slli         a5, sp, 27
                  beq          a7, t5, 384f
                  slti         tp, s11, 1455
                  bltu         s0, s8, 378f
376:              lui          s10, 827302
377:              bge          a6, a7, 386f
378:              addi         gp, s1, -1351
                  ori          s11, s6, 1393
380:              bge          gp, t1, 384f
                  sub          gp, s7, t4
                  bge          a3, s9, 389f
                  auipc        s0, 983295
384:              blt          t2, t0, 388f
                  srai         sp, s4, 21
386:              sll          a5, s8, t0
                  ori          a2, t3, 477
388:              bltu         sp, gp, 408f
389:              srli         a2, s9, 1
                  srl          a5, t1, zero
                  sub          s6, tp, s5
                  andi         a0, s8, -230
                  sll          s4, s0, s2
                  and          t3, t4, t3
                  nop
                  auipc        t0, 699290
                  sub          a7, a0, sp
                  bge          s8, zero, 409f
                  slli         a6, a5, 31
                  ori          t6, s10, 29
                  auipc        s3, 830256
                  sub          s6, s7, s4
                  bltu         ra, a1, 415f
                  and          a6, a7, sp
                  srli         a6, t3, 27
                  addi         s10, s10, -1761
                  sub          tp, s8, ra
408:              lui          s11, 348660
409:              slli         t0, s5, 12
                  bne          s3, gp, 424f
                  sltu         tp, tp, a6
                  sra          s2, t1, s4
                  slti         a0, a3, -704
                  bge          a0, a3, 428f
415:              srli         a0, s3, 27
                  sll          s0, a1, s9
                  srai         s0, t1, 22
                  or           s1, s10, zero
                  and          a7, a3, tp
                  lui          t3, 82482
                  andi         t6, s4, -1176
                  slli         a1, t0, 22
                  add          t5, s1, zero
424:              andi         a5, s5, 1952
                  xor          s9, s2, s3
                  lui          s6, 153363
                  andi         s8, s7, 1330
428:              bltu         a0, a6, 444f
                  sltu         a3, s10, t0
                  and          gp, s7, s8
                  bne          t2, s4, 443f
                  sll          s9, s10, s4
                  sub          s2, s9, t5
                  ori          gp, a7, 985
                  and          a2, s2, a1
                  srai         s0, s1, 27
                  slli         s9, t6, 24
                  slli         t5, zero, 26
                  slti         a1, a5, -2025
                  and          sp, tp, s0
                  sra          s3, s1, t6
                  xori         a6, t2, -78
443:              bne          s4, a4, 462f
444:              slt          s11, t3, a5
                  nop
                  sub          t6, s9, gp
                  and          a7, s4, sp
                  addi         s7, tp, -470
                  slti         a5, a4, 1420
                  xor          zero, s10, a7
                  srai         a5, a2, 17
                  sra          s1, s1, a7
                  xori         a4, zero, 1709
                  slti         a2, s11, 1105
                  slli         a2, t0, 19
                  slli         t5, s9, 21
                  or           a0, a3, ra
                  and          a1, s4, t5
                  blt          t3, s4, 463f
                  xori         t3, a7, 834
                  slli         s2, t4, 19
462:              sra          a3, zero, s10
463:              srai         s2, tp, 28
                  lui          t5, 398084
                  or           gp, s10, a7
                  nop
                  sub          a3, t0, t1
                  sltiu        a5, s8, -1844
                  slt          a3, sp, a7
                  auipc        a4, 508311
                  and          s6, sp, s1
                  xori         s3, t4, 1050
                  bgeu         t1, a3, 484f
                  lui          a2, 70621
                  lui          zero, 183179
                  blt          s4, s11, 485f
                  bne          a0, ra, 491f
                  srai         a4, t3, 4
                  sra          t0, a1, s0
                  bne          tp, tp, 492f
                  beq          s9, a7, 500f
                  sra          s1, t3, s10
                  bge          s2, a7, 497f
484:              slti         t5, t1, -1816
485:              bltu         sp, a2, 493f
                  add          sp, t4, t4
                  slti         a5, a6, -1899
                  and          a1, a0, a2
                  sub          zero, a4, a6
                  sra          s1, t4, s8
491:              slli         s10, t1, 11
492:              bgeu         s5, s5, 503f
493:              addi         s8, t0, -679
                  bltu         s4, a1, 514f
                  slli         a3, a3, 3
                  sra          t5, s11, s4
497:              and          a3, a7, s0
                  bltu         a1, s0, 501f
                  sra          zero, s2, s9
500:              add          a0, a6, a0
501:              sub          a7, a3, a1
                  beq          a6, t5, 518f
503:              bltu         tp, s1, 523f
                  sra          s9, tp, s11
                  and          a7, s0, s7
                  sub          tp, s6, s10
                  sub          a4, s4, ra
                  blt          s1, t0, 524f
                  nop
                  bgeu         t1, s10, 519f
                  blt          t0, t1, 519f
                  andi         t2, t1, 1601
                  bge          t1, s6, 529f
514:              sra          a0, a5, s5
                  nop
                  srli         s2, s1, 9
                  auipc        a2, 465681
518:              sltu         t1, t5, s4
519:              bne          a3, s4, 529f
                  add          s11, sp, tp
                  sub          s10, s0, s8
                  andi         s8, s4, -198
523:              ori          zero, s10, -180
524:              add          a0, t1, a6
                  lui          a1, 840746
                  sub          s9, t2, a0
                  add          s1, t0, tp
                  add          sp, s11, t0
529:              sra          s8, s11, s7
                  bge          t0, s8, 545f
                  andi         sp, a7, -481
                  sltu         s9, a1, gp
                  sltu         t2, s1, zero
                  or           s0, t5, t1
                  slli         gp, a4, 3
                  ori          s1, s8, 88
                  xori         s9, t6, -933
                  xor          sp, s8, a7
                  slt          a2, a5, a4
                  bge          s4, a6, 547f
                  bge          zero, gp, 552f
                  blt          ra, t4, 554f
                  bge          a0, a3, 555f
                  sll          sp, a4, t0
545:              srli         s6, s11, 26
                  sub          s8, sp, s9
547:              xor          tp, s4, s6
                  slli         a4, t4, 8
                  sll          t0, a1, s3
                  bltu         tp, a6, 562f
                  xori         s0, a3, -485
552:              lui          a6, 492324
                  add          a1, s5, s4
554:              auipc        s11, 492316
555:              bne          s6, tp, 564f
                  xori         a0, a4, -1096
                  andi         s1, a1, -1216
                  bltu         t6, sp, 561f
                  andi         a4, zero, 431
                  sltiu        s8, s0, 4
561:              auipc        t5, 72561
562:              nop
                  xori         s8, sp, -1429
564:              bne          a2, sp, 569f
                  bge          t4, t3, 569f
                  bge          tp, s5, 576f
                  andi         gp, s9, -776
                  auipc        a6, 622125
569:              bge          t2, a2, 577f
                  sub          s7, a2, a2
                  sra          t6, a7, t2
                  blt          a5, s3, 580f
                  or           sp, s10, s9
                  slli         s8, t5, 19
                  bgeu         a4, a7, 584f
576:              slti         a3, s4, -1890
577:              bltu         s2, s7, 584f
                  auipc        t0, 758260
                  bge          s5, s2, 584f
580:              sltu         a6, t6, s3
                  xor          a1, a3, s4
                  add          a6, s7, s5
                  sltiu        a0, sp, 860
584:              addi         a3, t3, -1043
                  auipc        gp, 452372
                  lui          s2, 604749
                  sll          a4, s9, sp
                  lw           t6, 4(t4)
                  slli         s6, s11, 9
                  addi         tp, gp, 22
                  sll          t2, t5, s0
                  addi         t4, t4, 16
                  srl          a0, tp, a6
820:              addi x6, x31, 1
820:              jalr x6, x6, 0
sub_2:            sltiu        t2, gp, -1873
                  beq          s10, t0, sub_2_stack_p
                  sltiu        a3, gp, 1582
                  xori         t3, a3, 1941
                  andi         t1, tp, -442
sub_2_stack_p:    addi         t4, t4, -28
                  sw           t6, 4(t4)
                  slli         a2, t0, 23
                  addi         a2, a2, 756
                  sra          a0, a3, s5
                  sll          s9, s8, t6
                  xori         s1, t5, 1318
                  sub          t0, a6, t1
                  sltu         s8, s7, a3
                  sltu         a2, sp, s11
                  srl          t6, t2, s10
                  srai         t3, t1, 26
                  sra          s1, a6, s4
sub_2_j3:         jal          t6, sub_3 #jump sub_2 -> sub_3
sub_2_0:          jal          t6, 24f
0:                jal          t1, 11f
1:                jal          t1, 2f
2:                jal          a7, 14f
3:                jal          s11, 19f
4:                jal          a2, 7f
5:                jal          s2, 3b
6:                jal          gp, 0b
7:                jal          a3, 6b
8:                jal          s2, 20f
9:                jal          a6, 16f
10:               jal          a2, 25f
11:               jal          t1, 12f
12:               jal          s1, 9b
13:               jal          s8, 15f
14:               jal          s4, 4b
15:               jal          t1, 1b
16:               jal          t1, 10b
17:               jal          t2, 18f
18:               jal          t0, 5b
19:               jal          t1, 8b
20:               jal          s8, 21f
21:               jal          s3, 22f
22:               jal          t1, 23f
23:               jal          sp, 13b
24:               jal          t1, 17b
25:               xori         s9, zero, -1712
sub_2_2:          jal          t6, 2f
0:                jal          s0, 18f
1:                jal          t1, 14f
2:                jal          t1, 7f
3:                jal          t0, 26f
4:                jal          t1, 16f
5:                jal          tp, 29f
6:                jal          t1, 10f
7:                jal          gp, 13f
8:                jal          t1, 1b
9:                jal          gp, 6b
10:               jal          t1, 15f
11:               jal          t1, 25f
12:               jal          a0, 30f
13:               jal          sp, 21f
14:               jal          gp, 4b
15:               jal          t1, 20f
16:               jal          t0, 3b
17:               jal          a5, 8b
18:               jal          s9, 5b
19:               jal          a0, 27f
20:               jal          s3, 12b
21:               jal          t1, 23f
22:               jal          t1, 11b
23:               jal          t1, 24f
24:               jal          t3, 17b
25:               jal          t1, 9b
26:               jal          sp, 28f
27:               jal          t1, 22b
28:               jal          s11, 0b
29:               jal          t1, 19b
30:               lui          a1, 1021100
sub_2_1:          jal          t6, 19f
0:                jal          gp, 20f
1:                jal          a5, 18f
2:                jal          sp, 22f
3:                jal          t1, 24f
4:                jal          t1, 21f
5:                jal          s1, 10f
6:                jal          t1, 8f
7:                jal          tp, 16f
8:                jal          a5, 7b
9:                jal          t1, 2b
10:               jal          a4, 9b
11:               jal          sp, 15f
12:               jal          s1, 14f
13:               jal          t1, 11b
14:               jal          s2, 0b
15:               jal          s8, 4b
16:               jal          t1, 3b
17:               jal          t2, 23f
18:               jal          t1, 5b
19:               jal          t0, 17b
20:               jal          s8, 1b
21:               jal          t1, 12b
22:               jal          t0, 6b
23:               jal          a3, 13b
24:               xor          a2, s11, s8
                  srai         t1, a7, 5
                  sra          a3, a7, t0
                  bgeu         a7, t3, 3f
3:                nop
                  srl          s3, t2, a5
                  slti         t1, a6, -342
                  xor          a7, s1, tp
                  sltu         s3, ra, ra
                  beq          a1, t4, 28f
                  andi         a4, t2, 1703
                  slti         t5, s4, 912
                  lui          s11, 489241
                  xor          a2, t1, s1
                  blt          a7, sp, 15f
                  addi         s1, s0, -1206
15:               or           s4, ra, s6
                  andi         a3, s9, 1248
                  srai         s1, a5, 6
                  slt          gp, t2, a5
                  add          s1, gp, s6
                  srl          s6, tp, ra
                  srli         s4, a4, 16
                  blt          s7, a6, 32f
                  beq          a4, s4, 32f
                  sltiu        s3, t2, 1142
                  sltu         t6, a2, t1
                  andi         s7, s0, 1887
                  slti         gp, s9, 1181
28:               srai         s9, a0, 8
                  srl          t3, s10, a0
                  addi         a4, ra, 443
                  ori          a1, s10, 1222
32:               add          s8, t0, s8
                  sll          a5, s11, t3
                  sub          s9, tp, tp
                  blt          t5, s10, 42f
                  sltu         s7, a4, t3
                  add          s1, t4, gp
                  srl          sp, t5, s3
                  nop
                  auipc        a2, 367374
                  srai         t1, a3, 29
42:               slt          t2, gp, a7
                  slt          s1, s11, s7
                  andi         s1, t2, -638
                  blt          sp, t5, 64f
                  bge          a2, t0, 57f
                  srl          t0, s6, ra
                  add          sp, zero, s8
                  andi         s9, s3, 869
                  srai         tp, a1, 18
                  slti         s1, t3, 1799
                  sltu         sp, t4, s9
                  slti         t2, s4, -982
                  slti         zero, s0, -1298
                  slt          zero, a4, s5
                  slli         gp, a7, 1
57:               or           a0, gp, s10
                  lui          gp, 963721
                  slli         s2, a7, 11
                  sltu         s0, s10, sp
                  blt          s10, s8, 70f
                  nop
                  slti         t1, t5, 938
64:               bne          a1, sp, 67f
                  auipc        a1, 889809
                  bge          s10, s10, 69f
67:               sub          t5, a7, s9
                  auipc        s2, 861725
69:               and          s2, tp, a7
70:               sub          s1, a1, s6
                  slti         a6, s6, -647
                  sra          a0, t3, t2
                  sltu         a1, s3, zero
                  slti         gp, t5, 86
                  addi         a6, a7, -1460
                  srl          a5, a4, a7
                  slt          s8, a6, s9
                  slli         a4, ra, 7
                  add          t1, s0, s8
                  bge          s1, t4, 82f
                  slti         s9, s11, -677
82:               sra          s2, sp, gp
                  slt          t1, s11, a5
                  xori         t6, t6, -833
                  addi         s8, gp, 1959
                  add          a3, a6, a2
                  sll          t3, s3, s1
                  addi         a2, s0, -831
                  slli         s1, ra, 6
                  srl          a0, s7, t0
                  bge          s6, zero, 109f
                  srai         s2, s10, 28
                  addi         a0, a4, -314
                  slt          t1, s0, s2
                  and          t3, s7, a3
                  blt          a4, sp, 108f
                  xor          t0, s0, s1
                  or           a2, a1, s8
                  bgeu         s9, a6, 103f
                  add          zero, zero, t2
                  sltu         s1, s8, t0
                  bltu         s4, s11, 105f
103:              blt          s4, sp, 123f
                  bgeu         sp, a4, 108f
105:              lui          s7, 478028
                  srl          zero, s10, gp
                  auipc        a7, 739164
108:              nop
109:              sll          s6, s0, t2
                  xor          t1, ra, s3
                  add          t5, a7, a6
                  slti         t2, s1, 1514
                  xor          s1, zero, s9
                  sub          t6, s2, a4
                  srai         t2, s4, 13
                  beq          t0, s6, 126f
                  bge          s8, s1, 129f
                  bge          a0, t5, 123f
                  xori         a1, t3, 1809
                  sltiu        t5, s1, 1285
                  sltiu        t6, t4, -131
                  bltu         t1, t5, 137f
123:              beq          s9, s9, 126f
                  xor          t1, t6, s5
                  add          s10, t0, t5
126:              bne          t0, s1, 143f
                  add          a5, s10, s1
                  and          a6, t2, s6
129:              auipc        s3, 666046
                  sltu         t5, t0, s0
                  beq          tp, ra, 144f
                  srli         s6, s5, 19
                  addi         s4, s7, -2039
                  and          a2, s3, s7
                  slli         s8, s11, 14
                  sll          s3, tp, t3
137:              andi         s9, t5, 549
                  ori          zero, s3, 2010
                  sub          a4, a5, t5
                  and          t6, s5, ra
                  bltu         s6, t6, 149f
                  xori         s7, t3, 1762
143:              nop
144:              sub          a4, s4, t6
                  slt          tp, s7, a2
                  xori         t5, a0, -2023
                  xori         t3, s8, -594
                  xori         s9, a1, 736
149:              sltu         gp, zero, s0
                  srai         tp, t3, 1
                  bge          s3, a1, 171f
                  sltiu        a7, s7, 2030
                  sub          a0, a7, zero
                  lui          a4, 499013
                  nop
                  lui          s10, 803148
                  lui          t3, 575829
                  sltu         t0, t0, gp
                  sltiu        a3, s10, -179
                  bltu         s5, s1, 173f
                  slt          s11, t2, s4
                  xori         s0, s6, -1366
                  and          a3, t4, t1
                  sltu         s11, a3, s11
                  sub          s7, sp, sp
                  srli         s9, s5, 1
                  add          a5, t1, t1
                  bne          t4, sp, 171f
                  srli         s3, a7, 4
                  srai         a5, t4, 22
171:              srai         s7, a4, 22
                  srai         s10, t6, 8
173:              bne          a4, t1, 176f
                  bgeu         a7, tp, 176f
                  blt          a0, a2, 176f
176:              add          a5, t0, t6
                  slli         tp, tp, 14
                  lw           t6, 4(t4)
                  add          zero, s0, s6
                  nop
                  and          t5, s11, t2
                  ori          a2, a4, 1986
                  addi         t4, t4, 28
                  or           t0, t2, tp
289:              addi x30, x31, 1
289:              jalr x30, x30, 0
sub_3:            sub          s2, t1, t5
                  addi         t4, t4, -52
                  auipc        s0, 578264
                  addi         s11, s2, 1890
                  and          s1, a1, t0
                  or           s10, t0, gp
                  add          a6, s10, t4
                  sltu         t3, a1, s9
                  lui          t1, 947065
                  sltu         s3, s4, a7
                  sw           t6, 4(t4)
                  sub          a6, t1, t4
sub_3_10:         jal          t6, 14f
0:                jal          tp, 20f
1:                jal          t1, 0b
2:                jal          t1, 11f
3:                jal          s7, 23f
4:                jal          a4, 24f
5:                jal          t0, 10f
6:                jal          tp, 19f
7:                jal          s0, 27f
8:                jal          gp, 30f
9:                jal          t0, 18f
10:               jal          t1, 6b
11:               jal          t1, 26f
12:               jal          s8, 28f
13:               jal          t1, 1b
14:               jal          a0, 2b
15:               jal          t6, 21f
16:               jal          gp, 7b
17:               jal          s6, 9b
18:               jal          a4, 5b
19:               jal          a6, 12b
20:               jal          t3, 17b
21:               jal          t1, 13b
22:               jal          t1, 16b
23:               jal          gp, 25f
24:               jal          t1, 15b
25:               jal          t2, 4b
26:               jal          t0, 29f
27:               jal          s9, 8b
28:               jal          t1, 22b
29:               jal          t1, 3b
30:               xori         s1, s0, -1018
sub_3_4:          jal          t6, 0f
0:                jal          tp, 9f
1:                jal          s0, 8f
2:                jal          t1, 6f
3:                jal          t1, 1b
4:                jal          s0, 3b
5:                jal          s9, 2b
6:                jal          t1, 10f
7:                jal          t1, 4b
8:                jal          t1, 5b
9:                jal          t1, 7b
10:               slli         gp, s7, 27
sub_3_5:          jal          t6, 16f
0:                jal          t0, 4f
1:                jal          t2, 12f
2:                jal          t1, 28f
3:                jal          t1, 7f
4:                jal          t1, 11f
5:                jal          t1, 27f
6:                jal          gp, 15f
7:                jal          a2, 20f
8:                jal          t1, 14f
9:                jal          t2, 25f
10:               jal          s1, 0b
11:               jal          t1, 13f
12:               jal          t1, 19f
13:               jal          t1, 21f
14:               jal          s1, 26f
15:               jal          gp, 18f
16:               jal          s1, 17f
17:               jal          t1, 5b
18:               jal          s10, 1b
19:               jal          t1, 10b
20:               jal          t1, 8b
21:               jal          tp, 24f
22:               jal          t1, 23f
23:               jal          a1, 6b
24:               jal          t1, 9b
25:               jal          t1, 3b
26:               jal          s3, 2b
27:               jal          t1, 22b
28:               srl          tp, a3, a0
sub_3_12:         jal          t6, 15f
0:                jal          tp, 13f
1:                jal          s8, 2f
2:                jal          t1, 7f
3:                jal          s2, 16f
4:                jal          a3, 19f
5:                jal          tp, 10f
6:                jal          t1, 12f
7:                jal          t1, 6b
8:                jal          t1, 20f
9:                jal          t1, 17f
10:               jal          t1, 14f
11:               jal          t1, 8b
12:               jal          s9, 0b
13:               jal          t1, 5b
14:               jal          t6, 11b
15:               jal          t1, 18f
16:               jal          tp, 9b
17:               jal          t1, 4b
18:               jal          t1, 3b
19:               jal          t1, 1b
20:               slli         a3, s10, 17
sub_3_8:          jal          t6, 10f
0:                jal          t1, 13f
1:                jal          a7, 6f
2:                jal          s2, 11f
3:                jal          s4, 12f
4:                jal          tp, 3b
5:                jal          t6, 4b
6:                jal          gp, 8f
7:                jal          gp, 5b
8:                jal          t1, 2b
9:                jal          s3, 1b
10:               jal          t1, 9b
11:               jal          t1, 7b
12:               jal          gp, 0b
13:               xor          s7, t2, s0
sub_3_7:          jal          t6, 12f
0:                jal          t1, 6f
1:                jal          s3, 4f
2:                jal          s8, 7f
3:                jal          gp, 9f
4:                jal          a7, 3b
5:                jal          t1, 11f
6:                jal          a2, 21f
7:                jal          s7, 15f
8:                jal          gp, 0b
9:                jal          s0, 20f
10:               jal          t1, 8b
11:               jal          t1, 10b
12:               jal          t0, 17f
13:               jal          s9, 19f
14:               jal          gp, 2b
15:               jal          t1, 16f
16:               jal          s4, 13b
17:               jal          t6, 18f
18:               jal          t1, 14b
19:               jal          t1, 1b
20:               jal          s3, 5b
21:               andi         s11, s8, 1216
sub_3_13:         jal          t6, 19f
0:                jal          t1, 10f
1:                jal          t5, 8f
2:                jal          a5, 4f
3:                jal          t0, 18f
4:                jal          t1, 9f
5:                jal          a1, 11f
6:                jal          t1, 0b
7:                jal          t1, 17f
8:                jal          s10, 13f
9:                jal          s4, 1b
10:               jal          t3, 5b
11:               jal          t1, 7b
12:               jal          tp, 2b
13:               jal          tp, 3b
14:               jal          t1, 15f
15:               jal          t1, 16f
16:               jal          t0, 12b
17:               jal          t1, 20f
18:               jal          tp, 6b
19:               jal          t1, 14b
20:               sub          a7, s8, ra
sub_3_1:          jal          t6, 23f
0:                jal          t1, 27f
1:                jal          s7, 14f
2:                jal          t1, 15f
3:                jal          s10, 19f
4:                jal          t1, 6f
5:                jal          t2, 13f
6:                jal          a7, 9f
7:                jal          a1, 25f
8:                jal          t1, 5b
9:                jal          s0, 12f
10:               jal          t1, 24f
11:               jal          s1, 18f
12:               jal          t1, 3b
13:               jal          sp, 0b
14:               jal          a2, 17f
15:               jal          s4, 26f
16:               jal          tp, 20f
17:               jal          t0, 7b
18:               jal          sp, 28f
19:               jal          t1, 2b
20:               jal          s9, 1b
21:               jal          tp, 22f
22:               jal          t0, 11b
23:               jal          tp, 16b
24:               jal          t1, 21b
25:               jal          s8, 4b
26:               jal          t1, 8b
27:               jal          s4, 10b
28:               ori          a3, s11, -463
sub_3_6:          jal          t6, 25f
0:                jal          gp, 4f
1:                jal          a2, 10f
2:                jal          a2, 0b
3:                jal          tp, 17f
4:                jal          sp, 6f
5:                jal          t1, 14f
6:                jal          t1, 19f
7:                jal          t6, 18f
8:                jal          t1, 27f
9:                jal          t1, 1b
10:               jal          t1, 8b
11:               jal          s9, 24f
12:               jal          t5, 23f
13:               jal          sp, 11b
14:               jal          a5, 26f
15:               jal          a1, 5b
16:               jal          t1, 7b
17:               jal          t5, 15b
18:               jal          s7, 9b
19:               jal          a3, 13b
20:               jal          gp, 3b
21:               jal          s2, 16b
22:               jal          a3, 2b
23:               jal          gp, 21b
24:               jal          t1, 12b
25:               jal          t1, 20b
26:               jal          gp, 22b
27:               addi         a3, a2, 849
sub_3_2:          jal          t6, 3f
0:                jal          s7, 22f
1:                jal          a1, 2f
2:                jal          t1, 24f
3:                jal          t1, 18f
4:                jal          t1, 19f
5:                jal          t1, 7f
6:                jal          a3, 9f
7:                jal          tp, 20f
8:                jal          a0, 17f
9:                jal          t1, 21f
10:               jal          sp, 15f
11:               jal          a7, 16f
12:               jal          s8, 0b
13:               jal          s0, 23f
14:               jal          sp, 6b
15:               jal          t5, 13b
16:               jal          s6, 14b
17:               jal          sp, 25f
18:               jal          t2, 1b
19:               jal          t1, 8b
20:               jal          t1, 10b
21:               jal          s7, 5b
22:               jal          s4, 4b
23:               jal          t1, 12b
24:               jal          a5, 11b
25:               sll          a6, a1, t5
sub_3_0:          jal          t6, 5f
0:                jal          gp, 9f
1:                jal          t5, 8f
2:                jal          t1, 12f
3:                jal          t1, 7f
4:                jal          t1, 11f
5:                jal          s1, 3b
6:                jal          t1, 4b
7:                jal          s4, 1b
8:                jal          t6, 10f
9:                jal          s4, 2b
10:               jal          t1, 6b
11:               jal          s8, 0b
12:               sltiu        t5, a6, 2027
sub_3_9:          jal          t6, 21f
0:                jal          t1, 2f
1:                jal          t1, 16f
2:                jal          s10, 12f
3:                jal          t2, 8f
4:                jal          a7, 5f
5:                jal          t1, 17f
6:                jal          s3, 23f
7:                jal          a0, 3b
8:                jal          s6, 9f
9:                jal          t0, 6b
10:               jal          a2, 15f
11:               jal          tp, 7b
12:               jal          tp, 18f
13:               jal          t1, 10b
14:               jal          t1, 20f
15:               jal          a7, 25f
16:               jal          s9, 14b
17:               jal          s6, 13b
18:               jal          t1, 19f
19:               jal          s11, 24f
20:               jal          t1, 11b
21:               jal          t1, 0b
22:               jal          t1, 4b
23:               jal          t1, 22b
24:               jal          t1, 1b
25:               add          gp, sp, s9
sub_3_11:         jal          t6, 23f
0:                jal          t1, 7f
1:                jal          a6, 9f
2:                jal          s8, 6f
3:                jal          t1, 0b
4:                jal          s10, 3b
5:                jal          sp, 14f
6:                jal          t1, 13f
7:                jal          sp, 22f
8:                jal          t1, 21f
9:                jal          s10, 11f
10:               jal          t1, 17f
11:               jal          s8, 8b
12:               jal          tp, 20f
13:               jal          t1, 16f
14:               jal          a3, 4b
15:               jal          t0, 2b
16:               jal          t1, 1b
17:               jal          a4, 12b
18:               jal          t1, 10b
19:               jal          s1, 15b
20:               jal          t1, 19b
21:               jal          t1, 24f
22:               jal          tp, 18b
23:               jal          t1, 5b
24:               and          a6, t5, s6
                  sltu         t1, s6, a4
                  sub          a5, s10, a6
                  slti         a4, a5, -2011
                  ori          s0, a1, 414
                  nop
                  bge          t0, s9, 7f
                  xor          s3, t6, a3
7:                ori          s11, a4, 1412
                  xor          t2, s5, s2
                  xor          s2, ra, a1
                  add          zero, a3, t1
                  slli         t1, s11, 0
                  and          s2, s2, a7
                  sra          t5, s9, s9
                  slli         s4, sp, 25
                  blt          zero, a1, 29f
                  srli         t2, zero, 18
                  addi         a0, a0, 1606
                  srai         a6, t1, 27
                  sll          t6, a6, t6
                  bge          s4, s8, 37f
                  sll          a5, s3, a3
                  sub          a1, a0, s9
                  lui          zero, 133440
                  auipc        t3, 605801
                  sltu         a1, s3, s7
                  slt          t1, gp, s9
                  slt          s3, a2, s8
                  slt          a0, t5, s3
29:               andi         a4, ra, -370
                  xor          s7, s7, a4
                  addi         s9, s4, 1129
                  srai         s1, gp, 8
                  bne          s8, s1, 39f
                  slti         tp, t1, -1031
                  add          a2, s11, t6
                  xor          t5, a7, tp
37:               add          a6, s7, s1
                  xori         zero, zero, 1357
39:               bgeu         a4, gp, 47f
                  bge          s3, s6, 44f
                  sra          s3, s10, zero
                  blt          s2, t6, 51f
                  slli         a6, a6, 0
44:               sll          t2, ra, t3
                  auipc        t0, 560397
                  andi         s4, a4, -255
47:               bge          a0, zero, 53f
                  add          t0, a3, s10
                  beq          s2, tp, 66f
                  beq          gp, tp, 61f
51:               srli         t2, s1, 10
                  bge          s3, a1, 68f
53:               blt          s6, s3, 71f
                  slt          t6, s6, t6
                  srai         s9, t3, 21
                  nop
                  auipc        s0, 520976
                  xor          tp, t5, t4
                  beq          a2, s10, 75f
                  bltu         a0, s8, 66f
61:               slt          a7, t5, a0
                  bltu         s1, s1, 79f
                  srai         tp, s2, 28
                  ori          t5, s9, -459
                  slt          s0, t3, s0
66:               sltu         s3, a7, a6
                  xori         a3, a7, 133
68:               sltiu        a3, a5, 1922
                  xori         t5, s0, -1181
                  andi         a1, t0, -604
71:               slt          s1, t5, s2
                  bltu         s10, s11, 76f
                  sub          s3, a2, t2
                  bltu         ra, s6, 82f
75:               xori         s3, s4, 1749
76:               blt          a4, a3, 86f
                  xor          t3, t1, s8
                  sltiu        t5, a0, 2010
79:               xor          t5, s5, tp
                  sra          t3, s6, a6
                  slt          a7, s2, t1
82:               xor          t5, s3, a2
                  srli         s7, a2, 23
                  bge          a7, s11, 93f
                  srli         s7, s7, 19
86:               bne          s7, s6, 98f
                  sltu         a2, t5, sp
                  add          t0, t2, a4
                  srli         a3, ra, 3
                  bgeu         t1, a1, 95f
                  addi         s10, a5, 1691
                  bgeu         s3, a1, 95f
93:               srli         s9, a4, 24
                  sltiu        a1, s7, 2022
95:               xor          tp, sp, a2
                  addi         t5, t6, -468
                  slt          s8, s2, s5
98:               srai         a2, t5, 9
                  blt          t0, s0, 108f
                  sltu         s9, a7, s2
                  xor          s8, a4, t6
                  slt          a5, s10, t3
                  sltu         a6, t2, a1
                  slti         gp, gp, 752
                  add          s4, a6, s1
                  srli         a3, t6, 13
                  sub          a1, s2, zero
108:              xori         t5, a5, 1430
                  sub          s4, s5, t5
                  andi         a5, ra, -68
                  sltiu        s4, zero, -1501
                  bltu         s10, tp, 116f
                  addi         s6, a0, -1430
                  slt          s0, a0, a6
                  bge          t5, s9, 117f
116:              auipc        sp, 634309
117:              add          s4, a6, a4
                  sltu         s8, a6, sp
                  lui          zero, 813523
                  bgeu         a2, s7, 124f
                  srl          s10, s3, t4
                  bge          a3, t1, 128f
                  slt          s1, t2, tp
124:              ori          tp, sp, -75
                  add          s11, t5, a7
                  srl          t1, t2, sp
                  or           t5, s0, s10
128:              slt          s9, s6, t3
                  addi         s6, t5, 511
                  bne          t6, s10, 149f
                  sub          s6, a6, s0
                  lui          a5, 78472
                  lui          s7, 876052
                  slli         tp, t6, 21
                  nop
                  bgeu         t5, a7, 140f
                  auipc        tp, 459235
                  and          t3, zero, a2
                  srai         s7, s1, 0
140:              xor          s0, a6, t0
                  beq          t4, s10, 148f
                  or           a2, a2, s9
                  srl          t5, s4, t4
                  slti         a3, a4, -1906
                  slti         s1, tp, 839
                  srai         s8, a1, 23
                  ori          t0, t5, 219
148:              bltu         t6, t4, 150f
149:              andi         s7, s3, -1605
150:              srl          s9, a1, a2
                  srli         t6, s1, 9
                  lui          a4, 1026591
                  ori          s10, a7, 1972
                  bltu         t5, s8, 159f
                  and          a6, sp, s4
                  srai         a0, s3, 22
                  srl          a3, t4, a5
                  slti         t1, a2, 1781
159:              bne          t2, t2, 165f
                  blt          a1, a7, 176f
                  sra          a1, t4, tp
                  srl          a4, a0, a6
                  slti         s1, a4, -1142
                  nop
165:              add          a5, t0, a2
                  and          s3, s6, s10
                  sltu         a0, sp, t0
                  sltu         t6, s2, s2
                  slli         a1, a2, 5
                  and          t1, a0, s6
                  ori          a0, t5, -1058
                  sltu         a0, s2, s11
                  slt          s9, zero, sp
                  slt          t6, s8, s7
                  bltu         a3, s5, 181f
176:              or           tp, zero, s7
                  sll          s9, s9, s10
                  ori          t2, a5, -341
                  srli         s9, a5, 2
                  add          s6, a5, ra
181:              add          a7, s10, t2
                  sub          s9, a0, t2
                  addi         a3, s3, 861
                  auipc        a3, 631376
                  or           s6, a6, t6
                  sltiu        s9, s1, -1361
                  and          a0, a4, t4
                  addi         t3, ra, 319
                  slli         a7, a5, 5
                  add          a0, s6, s11
                  and          a5, s9, ra
                  srai         a3, s3, 7
                  sra          s10, t3, s7
                  bne          s8, a4, 201f
                  sub          t1, tp, s4
                  slli         s7, s10, 12
                  sll          s6, t4, t3
                  bltu         t3, s8, 202f
                  bge          s5, t3, 208f
                  andi         s0, a3, 1069
201:              bne          t1, s6, 204f
202:              sltiu        s2, s4, -1519
                  sll          s9, tp, t6
204:              blt          t2, a5, 214f
                  sub          a7, a6, t0
                  bgeu         s6, s3, 224f
                  sra          a4, s10, zero
208:              sltu         t1, s4, zero
                  xori         s7, a3, 1742
                  beq          t4, a3, 212f
                  bltu         a1, t0, 220f
212:              sltu         t3, sp, zero
                  blt          s7, s3, 221f
214:              xori         zero, a2, 931
                  sltiu        s9, s5, -1470
                  lui          s0, 430069
                  bltu         s6, s4, 221f
                  sltiu        t0, t4, -841
                  sltu         t5, s1, s3
220:              bge          zero, t6, 237f
221:              sltu         t1, s5, t0
                  addi         t5, a5, 538
                  bne          t1, s5, 229f
224:              bltu         ra, t1, 240f
                  slti         gp, t4, 1853
                  xori         s1, a3, 620
                  add          a2, a1, s7
                  ori          t3, a4, 109
229:              bltu         s5, t3, 246f
                  xori         s0, a4, 50
                  ori          gp, t2, 1645
                  srli         a5, s10, 24
                  lui          s0, 881548
                  slli         s8, t4, 14
                  bne          a2, s5, 244f
                  srai         t5, gp, 27
237:              and          a3, zero, a0
                  or           tp, t1, t5
                  add          s4, t4, t6
240:              or           t3, s8, s11
                  auipc        a7, 570873
                  addi         t6, a2, 624
                  sub          t3, zero, a7
244:              ori          gp, s1, 1455
                  blt          s0, s5, 253f
246:              sub          a1, s7, a3
                  andi         s6, a4, 272
                  add          t1, t0, a4
                  slti         s8, s10, 597
                  slt          s9, zero, t3
                  and          a4, s10, s6
                  andi         s11, s11, 1679
253:              sll          a3, gp, s9
                  ori          a6, a3, 525
                  srl          sp, s9, t3
                  sra          s10, a1, a0
                  andi         tp, s2, 517
                  bge          a2, a1, 272f
                  nop
                  sra          s0, s11, s8
                  bltu         a7, s6, 278f
                  or           s10, t3, s0
                  bne          t3, s0, 275f
                  or           s9, t4, s5
                  slli         t1, s3, 10
                  slli         s1, s0, 15
                  bne          a5, s2, 271f
                  bgeu         s11, a0, 274f
                  bltu         s5, gp, 288f
                  srli         t5, s10, 16
271:              bgeu         a6, sp, 275f
272:              bltu         t1, s0, 283f
                  slt          t5, s9, a1
274:              slti         a0, a5, 964
275:              auipc        sp, 9359
                  sub          s0, s8, s4
                  addi         s10, a5, -1479
278:              xori         s7, s2, -22
                  srli         s10, s7, 28
                  nop
                  bge          a4, s4, 285f
                  auipc        t0, 14636
283:              srli         a6, t6, 26
                  addi         t0, s8, -626
285:              bge          t4, s4, 294f
                  ori          t6, s11, 46
                  sra          t6, t2, a7
288:              xori         s2, s9, 215
                  sltiu        a0, ra, -1390
                  srl          s10, t0, s10
                  add          a5, s2, t6
                  sra          gp, s1, a3
                  nop
294:              bgeu         a2, a6, 300f
                  auipc        t5, 705652
                  sub          t2, a4, s9
                  bne          t4, s3, 301f
                  bgeu         t6, s6, 303f
                  srai         t3, s2, 13
300:              ori          s10, tp, -1068
301:              add          a7, t0, a3
                  bge          a5, s10, 309f
303:              sra          s7, a1, s1
                  andi         s6, s4, 700
                  bne          s7, s2, 322f
                  ori          a1, s3, -1515
                  srl          s10, a6, s11
                  andi         tp, s3, -1907
309:              add          s7, a7, s9
                  and          s2, ra, s0
                  xor          s10, s7, gp
                  blt          s4, t4, 329f
                  sltu         s6, s6, s10
                  slt          s6, t3, a7
                  nop
                  and          t1, t0, t4
                  sub          sp, s7, s10
                  ori          a1, s4, -950
                  slt          s10, tp, s8
                  nop
                  and          t6, a2, t5
322:              xor          a5, t1, s4
                  sltu         s7, s1, t3
                  ori          t0, t5, -1028
                  addi         s7, s9, 584
                  sltiu        a6, t6, -1164
                  xori         s4, sp, -1202
                  bgeu         a6, s3, 332f
329:              bne          s11, a7, 337f
                  xori         gp, a2, -1402
                  xor          s8, a2, a6
332:              ori          a0, s11, 1476
                  sltu         a4, t6, s10
                  xor          t3, s5, t4
                  blt          t1, t6, 344f
                  add          t0, t1, ra
337:              add          s4, s8, a3
                  lui          s10, 134992
                  lui          s4, 748440
                  sub          t2, s6, sp
                  sltiu        s4, s11, 1204
                  nop
                  bge          t0, t2, 351f
344:              slt          s7, a7, t3
                  nop
                  xori         s10, a7, 1797
                  or           s2, s1, s9
                  xori         t1, s2, 1190
                  or           s7, a3, t4
                  xor          a7, a5, s4
351:              sltiu        a4, s8, 127
                  xori         s9, s8, -1318
                  sub          s8, a7, t5
                  ori          a2, t5, -1393
                  sll          t5, ra, a1
                  beq          s2, a2, 360f
                  bgeu         sp, t5, 361f
                  andi         zero, s8, -1229
                  lui          s7, 195238
360:              srli         s3, t3, 15
361:              srli         s3, ra, 20
                  lui          gp, 627549
                  sub          gp, ra, a4
                  bne          s8, tp, 368f
                  bltu         s5, sp, 374f
                  xori         t1, gp, -1611
                  and          s6, a5, a3
368:              slti         a1, t2, 1334
                  add          a5, s1, gp
                  sltiu        sp, s3, 1129
                  addi         s1, s5, -1161
                  srl          s3, sp, t6
                  srai         s7, s10, 8
374:              srai         a3, s0, 2
                  beq          s10, t5, 389f
                  srl          gp, a6, a1
                  sll          a5, a7, a4
                  la           a3, sub_5
                  ori          a6, a7, -648
                  add          a6, a1, a5
                  add          s9, a1, a5
                  srai         s1, a2, 1
                  addi         a3, a3, 116
                  sll          s1, s1, s8
                  blt          s5, s11, sub_3_j4 #branch to jump instr
                  and          a4, a2, a5
sub_3_j4:         jalr         t6, a3, -116 #jump sub_3 -> sub_5
                  srli         t3, s3, 25
                  bne          a2, gp, 391f
                  sll          a7, a7, gp
                  auipc        t1, 84905
                  and          s8, a5, a7
                  bgeu         t3, gp, 401f
                  xor          zero, t6, a4
                  blt          s8, gp, 396f
                  sltiu        a3, t6, -1905
                  srli         s8, a4, 27
                  auipc        sp, 490455
389:              and          a0, t5, tp
                  nop
391:              sub          s10, t6, s11
                  bgeu         s5, sp, 408f
                  slli         s11, s11, 9
                  add          a4, a4, t3
                  auipc        sp, 440114
396:              sub          t0, a5, s1
                  sltiu        s8, a1, 1782
                  sra          s0, t3, a4
                  addi         s0, s10, -1266
                  add          tp, a1, s2
401:              bge          s2, t5, 407f
                  sltiu        zero, t0, 396
                  bge          t3, s3, 406f
                  sra          t0, a6, s3
                  slti         a5, s1, -544
406:              add          tp, s1, t1
407:              sra          zero, a4, a3
408:              bltu         a5, a5, 424f
                  lui          a7, 940672
                  auipc        a4, 523692
                  addi         s8, s9, 1835
                  bgeu         t2, a6, 429f
                  ori          t6, s6, 1864
                  bne          gp, s9, 424f
                  beq          t4, s8, 421f
                  sll          sp, s6, t1
                  blt          t3, a4, 419f
                  xori         a0, t2, -857
419:              ori          a0, s10, -238
                  andi         sp, t2, -1528
421:              srl          s4, a5, s8
                  sll          zero, t6, t2
                  beq          a6, s1, 442f
424:              sub          s4, a4, s0
                  slti         t0, t4, -639
                  srl          s7, a2, a7
                  auipc        s11, 953357
                  bge          t5, s8, 434f
429:              sra          s10, tp, s10
                  bltu         t1, t0, 432f
                  bgeu         s4, t3, 448f
432:              andi         t1, t5, -995
                  lui          s10, 783166
434:              addi         s7, ra, -675
                  slt          s8, a4, gp
                  sltiu        tp, a3, 1015
                  sltiu        s10, s6, 611
                  ori          s1, a2, -1837
                  or           s9, gp, t1
                  bne          t4, a4, 448f
                  srl          a7, sp, a6
442:              sll          t3, t0, tp
                  lui          a6, 509100
                  xori         s0, t3, 337
                  xor          s2, a3, a3
                  bgeu         s5, s5, 449f
                  or           a4, ra, a6
448:              beq          a4, s1, 465f
449:              ori          gp, a7, -1675
                  xor          s9, s7, t5
                  sra          a4, s7, a4
                  ori          sp, a1, 1295
                  auipc        t2, 212616
                  sltu         s3, s4, a0
                  bne          a5, t4, 459f
                  ori          a7, a5, -1221
                  sub          s4, s11, t6
                  srl          s8, gp, a6
459:              bge          a1, s6, 469f
                  and          a2, a3, s7
                  auipc        s11, 10595
                  sltu         t5, t1, s1
                  sra          s8, s9, s9
                  beq          gp, a1, 482f
465:              or           t3, s4, a2
                  sll          a6, s11, s2
                  add          a7, tp, t4
                  ori          s2, s8, -931
469:              bge          t6, t5, 477f
                  sra          t3, s4, s1
                  bge          s0, zero, 477f
                  sub          s0, a0, t2
                  bltu         t0, gp, 482f
                  andi         s3, a6, 148
                  xori         a0, t3, -1231
                  sra          s3, zero, s11
477:              srl          t1, a3, s6
                  srli         s3, a5, 29
                  xori         a3, sp, -1546
                  sub          t6, s8, s1
                  bge          s10, s1, 497f
482:              srl          t3, sp, s11
                  sub          s0, a3, t3
                  beq          t4, s2, 503f
                  beq          t4, t5, 489f
                  slli         a7, t5, 8
                  xori         a0, a7, -860
                  blt          t6, t4, 492f
489:              srli         a5, a2, 19
                  bltu         a1, tp, 499f
                  xor          a0, t5, sp
492:              and          a6, s3, t0
                  blt          s0, a0, 499f
                  slti         t5, t3, 1314
                  sltu         s9, sp, s2
                  sra          t3, s4, s2
497:              auipc        s11, 10411
                  beq          s6, s2, 500f
499:              auipc        t0, 261378
500:              xori         a5, t4, -1814
                  or           t1, t1, s1
                  slt          gp, s11, s2
503:              lui          s3, 139390
                  sub          a7, t5, a3
                  slti         s3, t5, -977
                  auipc        s1, 161878
                  sub          t0, s0, t6
                  sll          gp, ra, t2
                  bltu         gp, s0, 515f
                  andi         s8, s6, -2045
                  bne          a1, a6, 515f
                  slti         a2, a6, -1695
                  auipc        s11, 956401
                  srai         zero, s2, 6
515:              ori          a3, s9, 1577
                  slli         s11, s8, 10
                  srli         t3, a2, 3
                  slt          t1, a0, a7
                  bgeu         s1, a1, 531f
                  srl          a0, t0, s7
                  addi         gp, s7, -392
                  srl          s6, t1, a1
                  xor          s9, s5, s3
                  blt          a6, a7, 533f
                  slt          a4, a5, a0
                  sub          s7, a3, t1
                  sra          a2, sp, a1
                  blt          s6, s6, 539f
                  bltu         s5, a4, 536f
                  srli         t0, s5, 2
531:              srai         a2, s4, 27
                  and          s2, ra, gp
533:              sltu         a6, s6, t3
                  add          s11, s4, ra
                  xor          a3, ra, t4
536:              slti         s6, a1, -1510
                  sll          s6, s4, s0
                  nop
539:              slli         sp, s9, 25
                  bge          a6, s2, 545f
                  sub          a1, tp, s0
                  ori          s10, s6, -480
                  slti         s1, tp, 1916
                  bge          a4, s9, 560f
545:              srl          a2, t2, s0
                  srl          a1, a1, s7
                  srli         s4, gp, 17
                  beq          t0, a0, 552f
                  slli         t5, s0, 8
                  bge          t4, a2, 556f
                  andi         s2, t1, 1754
552:              auipc        s10, 811068
                  and          s11, s5, s10
                  auipc        t0, 62203
                  slt          s0, s0, ra
556:              auipc        gp, 521902
                  add          s0, s5, s1
                  sltiu        a7, s6, 1782
                  lui          s0, 80758
560:              lui          t6, 850187
                  sra          t5, gp, sp
                  sltiu        sp, s8, 216
                  auipc        a5, 1022532
                  bgeu         t0, tp, 581f
                  xor          s11, s5, a1
                  slli         a7, a6, 11
                  srai         a4, s4, 23
                  slli         s7, a5, 29
                  or           s10, s10, s4
                  bne          a3, s8, 572f
                  srai         a2, t6, 17
572:              lui          s2, 156602
                  sra          a6, t0, s4
                  srli         s9, a7, 6
                  srl          a6, ra, a3
                  bgeu         gp, t6, 590f
                  sll          s7, s10, t1
                  sra          s0, a7, s5
                  and          s10, a3, a6
                  add          a5, s1, a2
581:              sub          a3, a5, gp
                  slli         s3, s9, 28
                  srl          a2, t6, ra
                  sltu         t5, s7, t5
                  ori          s11, s8, 561
                  sll          t3, gp, s3
                  bne          gp, a4, 591f
                  slli         s11, a3, 12
sub_3_3:          jal          t6, 3f
0:                jal          t1, 6f
1:                jal          t1, 11f
2:                jal          t1, 18f
3:                jal          t1, 20f
4:                jal          a2, 7f
5:                jal          s11, 13f
6:                jal          t1, 17f
7:                jal          gp, 23f
8:                jal          t1, 4b
9:                jal          t1, 12f
10:               jal          t1, 19f
11:               jal          s10, 9b
12:               jal          gp, 2b
13:               jal          s0, 14f
14:               jal          t1, 0b
15:               jal          t1, 1b
16:               jal          a7, 21f
17:               jal          s8, 22f
18:               jal          a5, 5b
19:               jal          s1, 16b
20:               jal          a5, 10b
21:               jal          t1, 15b
22:               jal          a2, 8b
23:               sll          a2, a7, t4
                  slt          a0, s11, t5
590:              xori         s0, a5, 820
591:              ori          t0, a3, -335
                  bne          a5, s10, 606f
                  srli         s8, s8, 12
                  add          s9, t1, t0
                  or           t5, a4, a1
                  or           a5, s4, t6
                  nop
                  srl          s7, a2, t3
                  beq          s8, zero, 604f
                  slti         t3, s1, -1035
                  or           s4, t4, s6
                  slli         s4, t6, 28
                  slli         s1, s5, 3
604:              sub          a4, ra, s5
                  slt          s8, tp, a5
606:              srai         a2, a0, 4
                  srai         zero, a1, 10
                  lui          sp, 222037
                  sltu         a6, s1, s2
                  beq          t2, s3, 619f
                  addi         a2, ra, -1290
                  srai         a5, s7, 21
                  sll          a1, s6, t2
                  sub          a2, s11, s0
                  slti         a5, a4, 155
                  bge          t5, a6, 622f
                  bgeu         a3, s6, 627f
                  beq          gp, zero, 624f
619:              ori          s0, s6, -49
                  add          s9, s4, s10
                  nop
622:              addi         sp, t6, -650
                  andi         sp, a0, 1073
624:              and          a4, s3, s9
                  bne          a0, t1, 631f
                  and          s8, t6, a4
627:              bge          a4, s9, 631f
                  ori          a4, s9, -1773
                  la           s7, sub_4
                  srl          gp, t1, a6
                  sltiu        s6, s5, -1851
                  addi         s7, s7, 717
                  srai         a3, s1, 29
                  lui          a7, 532775
                  bne          a2, t0, sub_3_j5 #branch to jump instr
                  srai         t0, s10, 14
                  and          s2, a1, a7
sub_3_j5:         jalr         t6, s7, -717 #jump sub_3 -> sub_4
                  sll          t3, t2, a3
                  bge          t3, s4, 637f
631:              ori          t5, t4, -1496
                  addi         s9, a4, 415
                  ori          t2, s9, 189
                  slti         s11, a1, 1898
                  slt          t5, a6, s4
                  addi         s1, t6, -491
637:              or           t2, a0, a2
                  srli         t2, tp, 13
                  andi         s7, t1, -116
                  sra          s3, a5, t3
                  xor          s2, s9, t2
                  beq          s4, t0, 644f
                  sltu         a5, sp, t6
644:              or           tp, t3, a3
                  ori          a3, t3, 2005
                  srl          s8, ra, ra
                  sltu         t0, a2, s5
                  sra          zero, s3, t3
                  slti         s0, s9, -1122
                  andi         s0, s6, -1375
                  auipc        s9, 970186
                  sltiu        t6, a7, 1978
                  nop
                  sltu         s4, zero, s10
                  sra          sp, s3, s10
                  sltu         a0, ra, tp
                  auipc        t2, 743995
                  andi         s11, a1, 1937
                  nop
                  sub          a4, s10, s3
                  bltu         a7, t2, 679f
                  srai         t5, s1, 24
                  nop
                  blt          a7, s5, 672f
                  sltu         a3, s5, a7
                  nop
                  sra          s7, s8, s10
                  auipc        s11, 296264
                  xori         gp, s2, -1170
                  auipc        a7, 202760
                  beq          s6, a1, 690f
672:              srl          a7, s3, t2
                  andi         s10, t4, 985
                  sll          a1, s4, s9
                  auipc        s7, 206872
                  srl          t5, a1, t6
                  sra          a1, t5, a2
                  beq          s6, t1, 694f
679:              slt          s8, t0, s7
                  bne          s1, t0, 697f
                  xori         a3, s8, 1209
                  lui          s2, 653995
                  srli         a1, s4, 25
                  sra          t6, a7, a6
                  slti         t5, s5, 1233
                  bltu         s5, s4, 690f
                  andi         tp, s11, -966
                  srl          gp, gp, a3
                  andi         a4, ra, -101
690:              slt          a5, t4, a3
                  beq          s4, t0, 708f
                  srli         s7, a0, 16
                  sra          t0, s0, tp
694:              srli         s8, t4, 17
                  auipc        t0, 971945
                  ori          t2, s8, -628
697:              andi         s1, t1, 1069
                  nop
                  bne          s4, a3, 702f
                  slt          a0, t3, t2
                  nop
702:              or           t5, t4, s11
                  sltiu        a0, s6, 1228
                  nop
                  sra          s10, a5, a3
                  srai         t1, t0, 27
                  xor          zero, a4, s6
708:              beq          a4, a0, 714f
                  blt          s11, t0, 714f
                  lui          a5, 760704
                  sra          a1, t1, a0
                  add          t2, tp, a7
                  bge          sp, a2, 714f
714:              srl          t3, t0, s10
                  lw           t6, 4(t4)
                  sra          t0, s10, sp
                  srli         zero, zero, 3
                  addi         t4, t4, 52
                  or           s6, tp, gp
                  add          s9, a6, t3
                  srli         a5, s5, 1
                  slti         s0, t4, 1923
                  slli         t0, s9, 31
1090:             addi x14, x31, 1
1090:             jalr x14, x14, 0
sub_5:            slli         a0, t5, 28
                  addi         s1, s1, -1822
                  srai         a0, s6, 25
                  srli         s8, s3, 24
                  xori         a4, s11, 1240
                  lui          s9, 97268
                  addi         t4, t4, -8
                  sltiu        a5, t1, -92
                  sw           t6, 4(t4)
                  xori         sp, t5, -2041
sub_5_6:          jal          t6, 5f
0:                jal          t1, 3f
1:                jal          s1, 9f
2:                jal          tp, 15f
3:                jal          t1, 18f
4:                jal          a3, 10f
5:                jal          t1, 7f
6:                jal          s11, 0b
7:                jal          t1, 11f
8:                jal          a2, 1b
9:                jal          t1, 14f
10:               jal          a1, 2b
11:               jal          t1, 16f
12:               jal          t1, 4b
13:               jal          t1, 12b
14:               jal          t1, 17f
15:               jal          s7, 8b
16:               jal          t5, 13b
17:               jal          s9, 6b
18:               nop
sub_5_2:          jal          t6, 12f
0:                jal          t1, 4f
1:                jal          t1, 5f
2:                jal          t6, 7f
3:                jal          tp, 2b
4:                jal          tp, 3b
5:                jal          a5, 9f
6:                jal          tp, 11f
7:                jal          s0, 8f
8:                jal          s11, 1b
9:                jal          t1, 13f
10:               jal          tp, 0b
11:               jal          t2, 10b
12:               jal          sp, 6b
13:               nop
sub_5_7:          jal          t6, 12f
0:                jal          t1, 18f
1:                jal          t1, 3f
2:                jal          t1, 9f
3:                jal          t1, 7f
4:                jal          t1, 2b
5:                jal          a6, 13f
6:                jal          s2, 8f
7:                jal          gp, 14f
8:                jal          tp, 10f
9:                jal          t1, 17f
10:               jal          s10, 4b
11:               jal          t1, 5b
12:               jal          t1, 11b
13:               jal          t1, 16f
14:               jal          t1, 6b
15:               jal          t1, 0b
16:               jal          t1, 1b
17:               jal          t0, 15b
18:               jal          s0, 19f
19:               auipc        t5, 1010301
sub_5_5:          jal          t6, 12f
0:                jal          sp, 5f
1:                jal          a2, 9f
2:                jal          gp, 1b
3:                jal          a6, 6f
4:                jal          a0, 11f
5:                jal          t1, 15f
6:                jal          t0, 8f
7:                jal          t5, 10f
8:                jal          tp, 13f
9:                jal          sp, 4b
10:               jal          a4, 2b
11:               jal          s7, 16f
12:               jal          s2, 3b
13:               jal          s4, 0b
14:               jal          t1, 7b
15:               jal          t0, 14b
16:               srai         tp, t5, 11
                  srl          t3, tp, gp
                  add          s10, a2, ra
                  andi         s1, s4, 639
                  slt          a3, s5, s9
                  xor          tp, t5, s2
                  slti         a6, a4, -664
                  srli         a2, s6, 19
                  beq          s2, s11, 19f
                  srl          a5, t3, a7
                  bne          s8, s1, 21f
                  addi         a0, s3, 1974
                  srli         a7, t0, 22
                  sll          s2, gp, s7
                  bne          a0, s9, 31f
                  andi         a4, s6, -590
                  xor          a7, a0, a0
sub_5_4:          jal          t6, 5f
0:                jal          t1, 22f
1:                jal          s10, 3f
2:                jal          tp, 18f
3:                jal          sp, 9f
4:                jal          t1, 1b
5:                jal          a2, 11f
6:                jal          s11, 17f
7:                jal          t1, 15f
8:                jal          sp, 19f
9:                jal          t1, 12f
10:               jal          a6, 8b
11:               jal          a5, 4b
12:               jal          s9, 7b
13:               jal          t1, 20f
14:               jal          t5, 23f
15:               jal          t1, 13b
16:               jal          s1, 10b
17:               jal          t1, 14b
18:               jal          t0, 0b
19:               jal          t1, 6b
20:               jal          t0, 21f
21:               jal          t1, 2b
22:               jal          a7, 16b
23:               sub          s2, t4, s8
                  slt          gp, s6, s0
                  xori         a0, a1, 1497
                  sltu         t6, a1, t1
19:               slt          a1, t3, s11
                  and          a7, a5, a2
21:               slt          t2, s7, s11
                  bne          s6, a6, 35f
                  addi         s6, tp, 604
                  beq          a6, t2, 41f
                  sra          t5, a4, t4
                  xor          t6, s8, a5
                  xor          s8, gp, s7
                  slt          s6, s8, t6
                  sra          s3, a5, s0
                  bne          s9, s8, 42f
31:               sub          zero, a6, t3
                  bge          t6, t3, 48f
                  xor          s7, t6, a2
                  bne          s4, s1, 47f
35:               xor          t2, s7, t0
                  bne          t3, t6, 45f
                  addi         a6, t2, 693
                  andi         a3, t4, -1192
                  bne          a1, t2, 50f
                  addi         s0, tp, -776
41:               sltu         a0, a1, s5
42:               nop
                  blt          s8, s6, 51f
                  srai         s11, sp, 18
45:               srl          a0, s0, s11
                  add          gp, s4, a4
47:               slli         s3, gp, 6
48:               bge          t1, s3, 67f
                  slli         a5, s6, 18
50:               andi         a2, a7, 335
51:               sltiu        a4, s8, 1474
                  srl          a0, t6, sp
                  slli         t2, s9, 19
                  sltu         s8, sp, s9
                  sltiu        tp, gp, -383
                  xori         s10, a6, -1711
                  sltiu        tp, t0, 944
                  srl          t5, t4, s0
                  blt          t1, zero, 66f
                  lui          s0, 278615
                  slli         t3, s9, 9
                  bltu         s7, s10, 77f
                  srai         t1, s4, 9
                  srl          s9, s0, s2
                  slti         sp, gp, 1962
66:               beq          s10, a3, 82f
67:               sltiu        a0, s2, 37
                  slti         tp, tp, -1446
                  sub          s0, t3, s2
                  slli         a3, s1, 6
                  bne          tp, a4, 91f
                  sltiu        s4, s8, -1802
                  ori          t6, t6, -1939
                  lui          zero, 950513
                  bne          t6, sp, 95f
                  sltu         a2, s7, s1
77:               xor          tp, gp, s9
                  auipc        s6, 989391
                  or           zero, a5, t5
                  xori         a4, s9, -1802
                  ori          s1, s7, 1958
82:               slti         a4, a3, 1973
                  srai         t2, s6, 16
                  nop
                  srli         s10, gp, 27
                  nop
                  sra          s2, t0, t1
                  srli         zero, a7, 31
                  sltiu        t1, a5, -671
                  xori         sp, s3, 1013
91:               or           s6, s5, s10
                  blt          ra, s6, 111f
                  bltu         a2, s3, 95f
                  bltu         s1, s0, 108f
95:               xori         s3, s11, -266
                  bne          s2, a4, 102f
                  xor          t6, t4, s5
                  bltu         a2, s3, 111f
                  auipc        s4, 470010
                  addi         t6, a6, 662
                  blt          t5, s3, 104f
102:              slti         s2, zero, 1570
                  bltu         a0, s9, 110f
104:              nop
                  add          a1, s3, a5
                  lui          a5, 435858
                  bne          a0, s5, 118f
108:              auipc        s7, 833404
                  auipc        zero, 1004868
110:              auipc        gp, 218722
111:              bne          a6, a6, 130f
                  sub          a1, s7, t3
                  blt          tp, a5, 130f
                  slti         s1, zero, 1758
                  blt          zero, a2, 124f
                  xor          t1, a3, ra
                  or           t6, s4, gp
118:              sltu         a1, a4, a5
                  srli         a6, s2, 10
                  xor          s7, a5, tp
                  sltu         gp, s11, s4
                  srl          a2, t5, a6
                  lui          a3, 372131
124:              bltu         ra, a5, 129f
                  beq          ra, gp, 144f
                  xori         t2, s10, 1835
                  and          a7, s4, t4
                  sra          tp, sp, a6
sub_5_0:          jal          t6, 4f
0:                jal          s9, 5f
1:                jal          tp, 6f
2:                jal          s3, 19f
3:                jal          a2, 8f
4:                jal          t0, 7f
5:                jal          t1, 20f
6:                jal          t1, 13f
7:                jal          s9, 17f
8:                jal          t1, 15f
9:                jal          s7, 16f
10:               jal          t1, 18f
11:               jal          t1, 3b
12:               jal          t1, 10b
13:               jal          t1, 11b
14:               jal          a6, 1b
15:               jal          a4, 12b
16:               jal          t1, 0b
17:               jal          t1, 2b
18:               jal          tp, 9b
19:               jal          gp, 14b
20:               auipc        zero, 744980
129:              sltiu        t0, t5, -352
130:              slt          t1, s6, s7
                  srli         a6, a0, 15
                  slli         gp, a0, 31
                  sltu         s3, s0, sp
                  add          s1, s10, s1
                  nop
                  ori          s11, sp, -402
                  slli         s6, ra, 31
                  sltu         t3, gp, gp
sub_5_1:          jal          t6, 7f
0:                jal          a4, 10f
1:                jal          t1, 9f
2:                jal          s8, 6f
3:                jal          t5, 5f
4:                jal          t1, 2b
5:                jal          s6, 12f
6:                jal          a3, 11f
7:                jal          tp, 8f
8:                jal          s0, 1b
9:                jal          t1, 0b
10:               jal          a2, 4b
11:               jal          s2, 3b
12:               slt          a3, t6, tp
                  lui          s6, 866208
                  nop
                  sll          s2, t3, a6
                  xori         a4, s8, 1480
                  slli         a4, s5, 27
144:              auipc        s9, 841035
                  srl          s1, tp, s11
                  addi         zero, gp, 1775
                  bgeu         t5, s7, 167f
                  slli         zero, a1, 22
                  blt          a0, s9, 154f
                  bne          s10, s9, 169f
                  slt          s3, s5, sp
                  or           s1, s10, a6
                  and          s6, s7, a0
154:              slli         sp, s4, 2
                  bne          t0, t6, 170f
                  blt          s7, s0, 173f
                  sll          t1, zero, a6
                  slti         zero, zero, -1947
                  andi         t6, a3, 1037
                  sll          t5, t2, t5
                  ori          s11, a5, -66
                  slt          t6, zero, a2
                  xori         s9, s3, -83
                  bgeu         s9, s4, 176f
                  bgeu         a3, sp, 185f
                  slli         s3, a6, 30
167:              or           zero, t3, a7
                  bgeu         a2, t1, 186f
169:              and          a1, s6, ra
170:              addi         t3, t0, 1476
                  and          a4, a1, t2
                  add          s11, a7, s7
173:              sra          t0, s9, ra
                  sra          s6, a6, t6
                  sra          s3, t5, s10
176:              sub          t2, t5, s3
                  sra          s2, s0, a3
                  srai         s11, t0, 25
                  xori         a4, s9, 1847
                  add          tp, a3, a6
                  andi         s10, zero, 1102
                  addi         s4, a1, 2020
                  lui          a2, 6785
                  add          t3, gp, t4
185:              srli         a4, a3, 13
186:              sltu         a3, t6, a6
                  nop
                  sltiu        s6, s2, -806
                  sltiu        gp, sp, 667
                  nop
                  slti         t5, s6, 1902
                  slli         s1, gp, 23
                  slti         t3, t3, -190
                  sub          a6, s6, t4
                  sltiu        t2, t4, -1451
                  addi         s3, t6, -1818
                  sltu         t3, t0, t2
                  sub          s7, s7, ra
                  sub          s6, a1, s11
                  or           s4, t4, t6
                  srai         s0, t3, 17
                  bne          s5, a0, 215f
                  slli         s10, s10, 29
                  sra          a1, t5, s7
                  slli         s9, t5, 12
                  blt          s4, sp, 220f
                  xor          a4, s1, a4
                  xor          s9, t3, a7
                  slt          s9, t3, s6
                  srl          s6, s10, s7
                  beq          a6, s8, 220f
                  slt          a2, a2, s10
                  slt          t3, s4, sp
                  srl          s11, t6, s5
215:              bge          s6, t6, 218f
                  slti         s8, s4, 1385
                  nop
218:              addi         s6, gp, 1820
                  bltu         s7, s0, 226f
220:              sub          a1, s10, sp
                  nop
                  beq          s4, zero, 238f
                  bne          s5, a3, 235f
                  sra          s2, t0, a1
                  xor          s8, a1, zero
226:              xor          s8, s11, s7
                  ori          t3, s10, 1429
                  xor          gp, s6, s2
                  srl          a4, t2, t2
                  bgeu         gp, s6, 242f
                  bltu         tp, s11, 239f
                  ori          sp, a7, -632
                  xori         s1, s0, 1692
                  srli         s9, a2, 11
235:              bltu         s10, t0, 254f
                  add          a2, s2, a0
                  blt          s9, s4, 254f
238:              nop
239:              sltiu        s1, zero, 666
                  srl          t6, a0, sp
                  bltu         tp, a5, 252f
242:              addi         a6, zero, -1664
                  nop
                  addi         a5, gp, 1691
                  sra          gp, a7, ra
                  add          t0, t3, t3
                  bge          tp, ra, 258f
                  and          s2, s5, a5
                  sltu         s6, s8, s7
                  xor          s3, t0, t5
                  or           a1, s9, t6
252:              addi         s1, tp, -1029
                  ori          t2, t0, 1280
254:              srai         s9, t1, 18
                  sll          a6, t0, zero
                  bne          s2, gp, 258f
                  bne          a5, s8, 273f
258:              xor          s8, s3, s11
sub_5_3:          jal          t6, 17f
0:                jal          s7, 8f
1:                jal          s0, 11f
2:                jal          gp, 16f
3:                jal          t1, 15f
4:                jal          s0, 5f
5:                jal          s8, 12f
6:                jal          s8, 3b
7:                jal          a1, 6b
8:                jal          t3, 1b
9:                jal          t1, 10f
10:               jal          t1, 18f
11:               jal          t1, 14f
12:               jal          s11, 2b
13:               jal          t1, 7b
14:               jal          t1, 4b
15:               jal          t1, 20f
16:               jal          s10, 13b
17:               jal          t0, 19f
18:               jal          t1, 21f
19:               jal          t2, 0b
20:               jal          t1, 9b
21:               add          a3, tp, s10
                  bge          a1, s3, 268f
                  lui          a2, 185037
                  addi         t6, s1, 775
                  slt          s8, a4, a0
                  add          a1, ra, s3
                  bge          a2, s0, 283f
                  xori         a2, t4, -1476
                  blt          s11, zero, 285f
                  beq          t3, s3, 280f
268:              auipc        s6, 1026213
                  xor          s6, s8, a7
                  srl          s11, a1, ra
                  add          t3, ra, s10
                  srli         t5, ra, 15
273:              sra          a7, s0, a1
                  blt          gp, t2, 281f
                  slt          s2, sp, s1
                  andi         a2, a1, 1126
                  sltiu        s10, t1, -1401
                  sltiu        t2, a3, 836
                  beq          a4, gp, 285f
280:              slti         t3, a2, -1876
281:              srai         a4, a7, 11
                  blt          a4, t0, 295f
283:              xori         s0, sp, 272
                  bltu         t1, a7, 298f
285:              ori          s10, s4, -457
                  blt          t0, s8, 288f
                  srli         gp, t1, 26
288:              nop
                  ori          s9, t2, -1264
                  blt          t2, s0, 307f
                  add          a1, a6, a1
                  srli         t5, a1, 15
                  sra          s2, t5, s6
                  sra          s9, s11, tp
295:              sra          s1, t2, s5
                  slt          t2, t1, t1
                  xori         a6, ra, 1242
298:              addi         t5, tp, -1433
                  bne          a5, t1, 312f
                  blt          zero, t6, 320f
                  add          s6, a2, s1
                  andi         s3, a3, 752
                  addi         t2, s1, 745
                  sltu         tp, s11, s5
                  ori          s4, t3, 348
                  add          s11, ra, s1
307:              addi         a0, t2, -1378
                  sra          zero, zero, s4
                  ori          s3, s8, 1032
                  blt          s8, s8, 329f
                  slti         a1, t1, -171
312:              sll          s4, s1, t2
                  sll          s8, a7, s3
                  andi         s7, s5, 1783
                  bge          a3, a6, 328f
                  sll          a2, sp, a5
                  bgeu         a6, a5, 336f
                  bltu         a1, a2, 337f
                  sltu         s6, sp, a3
320:              srli         a6, tp, 25
                  bltu         a1, s1, 333f
                  sub          sp, s9, s10
                  slt          gp, t3, zero
                  bne          a5, tp, 343f
                  bgeu         s0, a3, 334f
                  auipc        s11, 847546
                  bge          s3, t5, 335f
328:              nop
329:              or           a4, t4, a0
                  sra          s0, s5, a5
                  sub          tp, t5, gp
                  xor          sp, s10, t4
333:              bne          s10, s10, 348f
334:              bge          s2, s11, 354f
335:              auipc        a1, 9371
336:              slti         a5, a7, 1709
337:              addi         sp, s4, -1482
                  bgeu         a3, t6, 347f
                  srai         s4, t0, 7
                  slti         s7, s8, 1190
                  srai         t3, t4, 0
                  blt          a4, a1, 354f
343:              sra          s10, ra, a5
                  srai         a5, s10, 8
                  beq          a5, tp, 356f
                  xor          s11, s4, s7
347:              sll          a6, t1, a0
348:              and          s6, a4, a1
                  addi         s10, gp, -1449
                  sra          t1, s10, a4
                  beq          a3, zero, 358f
                  xori         t0, zero, 1116
                  bltu         s0, a5, 359f
354:              xori         t5, t2, 344
                  srli         t5, s1, 20
356:              srli         gp, t2, 7
                  sltiu        s6, a7, -198
358:              xori         s9, s8, -1885
359:              bne          s4, a7, 372f
                  bltu         s4, s5, 376f
                  slli         t5, t1, 4
                  sub          a3, s0, t4
                  andi         tp, t5, 1916
                  srli         a5, ra, 21
                  add          s0, t5, a2
                  bgeu         a4, s2, 383f
                  ori          t6, tp, 1287
                  and          t2, a6, ra
                  sra          t0, s4, t2
                  andi         s4, s9, -531
                  slli         s1, a7, 17
372:              sra          s8, a0, t3
                  or           s7, a4, t1
                  auipc        s3, 787708
                  slt          t6, a1, sp
376:              slli         t3, t1, 16
                  sub          t1, t1, s1
                  sltiu        a6, sp, 928
                  xori         t5, s3, 915
                  auipc        a3, 98926
                  andi         s0, s5, 1499
                  addi         s8, a2, -133
383:              sltu         a2, a0, sp
                  sll          a5, s6, s9
                  srli         a0, t1, 0
                  ori          a5, s10, 907
                  beq          a3, tp, 392f
                  ori          a6, a7, -1275
                  add          a0, a2, s5
                  lui          a1, 635135
                  blt          a3, s5, 407f
392:              andi         s4, s1, -566
                  bltu         s9, s6, 396f
                  auipc        a3, 308781
                  slti         zero, s8, -543
396:              bltu         t5, s11, 408f
                  sltu         s11, a5, a6
                  sub          a6, t5, t1
                  xor          s10, s6, s6
                  sra          a7, s5, s1
                  sll          tp, gp, a5
                  addi         a6, a5, 274
                  sltiu        a7, s11, -352
                  xor          t6, s7, s1
                  bge          tp, t6, 412f
                  slli         tp, s9, 4
407:              srli         a4, a3, 11
408:              or           a2, a5, s3
                  srli         s7, t4, 1
                  xori         s11, a6, -1206
                  sll          t6, a1, s10
412:              bltu         a2, a4, 430f
                  bge          t6, ra, 424f
                  sltu         s11, a7, a4
                  sltiu        a5, t0, 1891
                  srai         tp, a5, 7
                  sltiu        tp, s11, 449
                  addi         a1, t1, 1811
                  or           a3, a1, s8
                  bge          s2, t3, 429f
                  andi         a1, s3, -831
                  sltiu        s6, a0, -1176
                  slli         s1, s2, 20
424:              and          sp, s6, t5
                  or           s4, ra, s7
                  srl          a1, ra, a2
                  srl          t1, s2, a7
                  slli         s6, zero, 8
429:              auipc        t5, 493027
430:              srli         t6, a3, 9
                  bge          s8, t0, 435f
                  sltiu        s1, s5, 403
                  srli         a6, a1, 12
                  sltiu        s1, s8, -425
435:              sra          tp, t4, s3
                  and          s7, t0, t5
                  lw           t6, 4(t4)
                  sra          a2, a4, a1
                  auipc        t3, 1035566
                  addi         t4, t4, 8
                  xori         s6, a1, 1495
                  srai         s8, s4, 15
                  and          a5, a1, t4
                  srli         s11, s8, 16
613:              addi x9, x31, 1
613:              jalr x9, x9, 0
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
.word 0xfd6a8c75, 0x6f79ca4e, 0x255c62f4, 0x4b6a5894, 0xaaf4d8e0, 0xe9844051, 0x748649f2, 0xf57c95c5
.word 0xc5685e60, 0x6e9c8555, 0x63d070c3, 0x2f861ee8, 0xfe9d567f, 0xa2b5831b, 0x2c9ded58, 0x9583b9b9
.word 0x60b827cb, 0x4b039e5b, 0xc706ee9d, 0x9d3ebed6, 0xc572eae7, 0xe1fc876b, 0x81750391, 0x6287d2ec
.word 0x75961c98, 0xffb86640, 0xbb9b4354, 0xa5047ae6, 0x3b4d46d8, 0xd5208360, 0x1b55ea85, 0xffefed02
.word 0x7207086d, 0x8af5eeb8, 0xf41d86bd, 0xbb5400e3, 0x6cb58eb6, 0x2f71d9ac, 0xea0de771, 0x78aa21f6
.word 0x9f6442b8, 0x19d704f8, 0x0eb772b1, 0xd6263b7b, 0x4828524a, 0x2ea75934, 0xcb5cb026, 0x3ca493d2
.word 0x54d4febf, 0xa1315105, 0x142155c9, 0x43ffd051, 0x3934e65e, 0x80adc89b, 0x98c7affb, 0x8679f62e
.word 0x67917999, 0xa40c25a3, 0x6b08d34d, 0x314fa7cc, 0x2a33daba, 0x95a918cf, 0x2cf60c20, 0x6d816abe
.word 0xdcdac97a, 0x78ba6c41, 0xafc4d3db, 0x0e3fde50, 0x6fde0683, 0x64232f46, 0x335ff84f, 0x4fcd11d0
.word 0xd9ee3ecb, 0xd30e6ac7, 0x849287a9, 0xbbb3620c, 0x4911754c, 0x345df49f, 0x97aa6e7d, 0xf9f5b853
.word 0x09994634, 0x2756faeb, 0x9724a8b4, 0xf87140ab, 0x4e43188c, 0x4a6f9c67, 0x4d5db33c, 0x4931b559
.word 0x85254ae5, 0x65b8aa64, 0x49c9baad, 0x42b9b432, 0xb526c27f, 0xf0582435, 0x7c313f55, 0xd6dbe400
.word 0x20206813, 0x9f0c1a02, 0x37003063, 0x76b4b2f0, 0x56bff28b, 0xf9ac619f, 0x33c60473, 0x07c3b533
.word 0x237e6818, 0xf7f215c5, 0x60e78633, 0xef47aa07, 0x0f04ffc4, 0xdeb398f8, 0x1c2f39ca, 0x7e3ccf6c
.word 0xbf71a75e, 0x4aa76f0a, 0x8947ed54, 0x9d7b5759, 0x2c22f284, 0x96769e05, 0xf3f95a36, 0x5c6fdf56
.word 0x7d90d0d6, 0xf5d6db7c, 0x89d42b88, 0x9b70dff7, 0x9a7559c0, 0xb620ddb2, 0x309416fa, 0x50e936a7
.word 0x3de1ab22, 0xd502a732, 0x69d84e89, 0xd71dcb45, 0x3f705eee, 0x5e7a205d, 0xbc09d003, 0x578f260b
.word 0x5ccf080f, 0xdd168a81, 0x6c778b06, 0x4ef019f3, 0x0c0d9de2, 0xcf03bb89, 0xac73bf31, 0xc086e6e2
.word 0x5dadd8ca, 0x11723610, 0x5a2adfe8, 0x6185e941, 0x873f1fad, 0xd158f176, 0x31a0a8ec, 0xf34787c7
.word 0x34450b19, 0x8a5a8d38, 0x893f06b9, 0x649fbbab, 0x1241d24f, 0x9bc33f57, 0x1d60679a, 0x77c71ad0
.word 0x1b632ede, 0x5ea4fe68, 0xf4ee8a8d, 0x1beddbe2, 0x10fdae09, 0xa5f34d68, 0x99824b72, 0x6d1ffffc
.word 0x4ef91e34, 0xa333996d, 0x303b663e, 0xa091b2c3, 0xdf58b64d, 0xa62989be, 0xe4cf7f03, 0xec0e0095
.word 0xec598f34, 0xb94ee0a1, 0x7feb96a3, 0xb0e383c7, 0xbdb9ad9f, 0x73617bbb, 0x37fa4ba1, 0x26032891
.word 0xd9894a92, 0x7f6d616f, 0xef51a1cb, 0xa72783d6, 0xce7ed8df, 0x32fd3d67, 0xe8a30874, 0xcbdeb294
.word 0x929316a8, 0x0710fc58, 0xd41d7e54, 0x6a920085, 0x7ba773ed, 0x3213ea5d, 0x3f4bd290, 0xf1ec06fd
.word 0xe6c22d9e, 0xe77498a3, 0x958d4772, 0xdd21bcd7, 0x415d1bca, 0xde914996, 0xf1dd91a3, 0x2b0174ad
.word 0x0ef68d79, 0x2ee7b615, 0x2b648789, 0x814bf3cc, 0xf5d48d78, 0x1e564585, 0x652d8b13, 0x5ba93aad
.word 0x6d720d64, 0x35d69605, 0x214f526c, 0x1419f294, 0xa1d55090, 0x5289fec7, 0xfa3c3d45, 0xcc920bbc
.word 0xea27e532, 0x8d088712, 0x923fbbcf, 0xc602708e, 0xd641b64d, 0xac8cca12, 0x7d8e3dd3, 0x0be39498
.word 0xf69faf33, 0x9532ec51, 0x97b1e099, 0x1514726d, 0xff063561, 0xebb746c1, 0x72951ed4, 0x800648c8
.word 0xd1470c06, 0xfe6f7bb2, 0x7d79ac63, 0x0f20db82, 0x7860d86a, 0x8530a7b6, 0xb99846a0, 0x4fda9c18
.word 0x08bc29cd, 0xa813abca, 0x1dcf9ecc, 0xd310bb5c, 0xe1672188, 0xf58fc55a, 0x566171d0, 0x480e522e
.word 0xe0810fc4, 0x3ceab5e3, 0x69db4e6c, 0x7fbd1680, 0x1ab2c423, 0x6a286faa, 0x8c995dd8, 0xe642e444
.word 0xe82fb327, 0x0492d0b2, 0x32e09bdf, 0x19aa470f, 0xbbe77eaa, 0x5355783b, 0x9d16ea7b, 0x7d769963
.word 0x72a71908, 0x99476718, 0x5a9d6d53, 0x2863a7e1, 0x7c2e7761, 0xfdbbe4e9, 0x23ed2a2b, 0x7eeadbef
.word 0x3c0e0f31, 0x37ef9d22, 0x8057502c, 0xaa4fe62d, 0xfcf3f670, 0x45b5fb34, 0x9b34d9b4, 0x772eb07a
.word 0x0a24d68f, 0x06f6b586, 0xd9f4af66, 0xcc30ae26, 0xaf749dfe, 0x8cd56b5d, 0x74dc659d, 0x6fdd7642
.word 0x5e1ef548, 0xc10b1361, 0x486d0646, 0xd13657db, 0x54db0f5c, 0xbb18b1b3, 0xfface9c7, 0x9095d4ff
.word 0x045783ba, 0x8214ce3c, 0x171c875c, 0x921e3faf, 0x3c92f191, 0x67be6ba7, 0xe625dd24, 0x09f8e1ae
.word 0xe5c9fa42, 0xdcd646c1, 0x56e93fb4, 0x3ff8a174, 0x613f02b5, 0xa5073f48, 0x9a475082, 0x04a200b6
.word 0x9bf5ad8c, 0x6154ab5f, 0x86c10efe, 0x615b773c, 0x895738c5, 0x214dbc82, 0xdcf70859, 0xff2a147c
.word 0xbc6ae057, 0x186c50ed, 0x18821e68, 0x848bf4d9, 0x8e5cb97e, 0xcad30149, 0xd4bc0e11, 0x1078a657
.word 0x35d284bd, 0xde2e0570, 0x0c22a65e, 0x2b7db2bf, 0x37134bf1, 0x9f4fe5f2, 0x44b35f0d, 0xcec10983
.word 0x2073acad, 0xb4b87d11, 0x3cc5ae99, 0xc55cb93c, 0x6ba2ab37, 0xd78b7bce, 0x3a22e499, 0x7f4e2fa9
.word 0x3efbc84d, 0x78440f37, 0x841b14f6, 0x7a7c789b, 0xb52d2641, 0xd6015e5d, 0x28b53657, 0xb084861e
.word 0x17ceda95, 0xf6a76916, 0x3d5eb652, 0x39b39fe5, 0x8b9af1da, 0x41e5e496, 0x7e79e065, 0x0af302f3
.word 0x2ed2efc4, 0x7fb5ee91, 0x37530f6f, 0x83b916e2, 0xc5abaefa, 0x8cd37516, 0x3284de21, 0x1170c3b6
.word 0x1cc3b097, 0xd0ae086c, 0xc467553a, 0x516507cd, 0xebf1697e, 0x98f34f47, 0x785c917c, 0x6a28110f
.word 0xb766022d, 0x0256f3b5, 0x8ccd506d, 0x62a5fce6, 0xbe186e7c, 0x2a3d4cf6, 0x86c75527, 0xc80817f5
.word 0x9a89aaeb, 0xdfea70c8, 0x164f0f01, 0x5725cfa6, 0xc8f79b32, 0xf14ef401, 0x7062430c, 0x3556e899
.word 0x989fd94c, 0x3852d489, 0x29fabf0a, 0xb6d5a76e, 0xc723cc1c, 0xaa9c8dfa, 0x12fee433, 0x78e1720d
.word 0x374f40ee, 0x88aa8779, 0x32681fb5, 0xa1ecdde3, 0x2ea16d0b, 0xef8c2a5f, 0x813f4edf, 0xe5ebf597
.word 0x428f1161, 0x7216d84e, 0xbbac2af4, 0xfabcc29a, 0x99a466d4, 0xa657ec09, 0xe96956ab, 0x5e38158d
.word 0x43ae8647, 0x5eda4200, 0x559c1fc0, 0x9a20aed1, 0xb7e70209, 0xc4e41eac, 0x16dd89a6, 0xe657a0d4
.word 0x4682516f, 0xf4a2b96f, 0xd24cdb97, 0x275a8f7d, 0x752ff045, 0xd7b2f10f, 0x8d4be219, 0x7fb10d2a
.word 0xa9b73a13, 0x1b65202c, 0xeb27e7e2, 0x8c466987, 0x3e629692, 0xf41292f3, 0x953fcd48, 0xd0ed8d9f
.word 0xb20a29b4, 0x82b2a1d4, 0x0f470679, 0xceeeb96e, 0x9094831b, 0x362ffe04, 0x16c22333, 0x21eb1e40
.word 0xbe476bf0, 0xc2f487e4, 0xb9161062, 0xd194e350, 0x2b069a68, 0x8b2e945b, 0x16b61e9f, 0x5683f0af
.word 0x0c25e447, 0xd442fdb7, 0xbc4825c3, 0xb9a20047, 0xc9117b09, 0x1c833d09, 0x962e9290, 0x87684461
.word 0xcaa0aac9, 0x2496218a, 0xf75169e9, 0xafae1648, 0x370eea9c, 0x28500941, 0x5e680118, 0x1e18e882
.word 0x797765a2, 0x193249e2, 0x8c0849ce, 0x61f28bfc, 0xe1242376, 0x0c2c2529, 0xe99f48be, 0xa10c1782
.word 0xbffff552, 0x0f4e89c3, 0x486a4654, 0x4455e352, 0x1a39427a, 0xce7a4178, 0xb8f9ee14, 0x58e55ca2
.word 0x800b3589, 0xb768c5be, 0xcb155a85, 0x621fe831
.section .region_1,"aw",@progbits;
region_1:
.word 0xa1b9382e, 0xe26264a2, 0x4bc9961f, 0x7a1ad92e, 0x284db348, 0x171d2788, 0xe41960e1, 0xefb2e9cb
.word 0x3a216715, 0x7fddd86f, 0x738c640f, 0x2e3f2d5a, 0x5b6071b1, 0x682c2056, 0xbbeb182a, 0xcaaa7364
.word 0xb50702be, 0x10241f64, 0x241891d6, 0x5da4a530, 0xe958d9ba, 0xcc74e8fa, 0x5ce8ff61, 0xed7d974e
.word 0xf2cc5e4f, 0x87531546, 0x51cb6c75, 0x7cd1b20f, 0x62b31de6, 0x9e89fff2, 0x2e65d7cc, 0x05aa61dd
.word 0x8bdb32c2, 0x6151b83c, 0xe90973a4, 0xb4be373c, 0x8af291b8, 0x300537a0, 0xe6d3f08a, 0x6993c2cf
.word 0x89fc24ae, 0xd560a3cf, 0xbda3cbf5, 0xcd67c328, 0x8df81c3d, 0xf21de894, 0xbe201534, 0x56db8493
.word 0x06cd10d2, 0x0862abcc, 0xb630aa89, 0x0ad93af7, 0xee3f8d6f, 0xc5ddfd57, 0x8f5d3c82, 0x36471bc9
.word 0xf370cae3, 0x5bbda0d8, 0x0b5d7d20, 0x5bd96c8e, 0xe46b84c9, 0xfcf8ce48, 0x66b85d6c, 0x1da799cc
.word 0x932b386d, 0x9b6fc028, 0xda808841, 0x8f828f55, 0x7f1c9fac, 0x9372580b, 0xbd1309f0, 0xa7345af4
.word 0x26aa65a2, 0x1cc78f2b, 0x00cb7b7b, 0x5232595a, 0xd3a17cc1, 0xf65ff81c, 0x40ade3be, 0x35eccd7e
.word 0xac1a0c7c, 0xb49b21ff, 0x577dcfab, 0x20968268, 0xa2257514, 0x1c728a32, 0xa863e061, 0x2f010009
.word 0xaf6d27eb, 0x73cbfda3, 0x6053b688, 0x2c9fe05d, 0xcd139488, 0x021ec112, 0xcbd5a4fb, 0xe3a01c05
.word 0xa6241932, 0x4ea07d43, 0xd79af3d9, 0x259a0a8d, 0x467a451d, 0x282f2bde, 0x574521b2, 0x15d36784
.word 0xa2a54d7a, 0x1d41a8d4, 0x98b3bd4e, 0xadd25c25, 0x7dc0eb16, 0x1782757d, 0xee38bfb0, 0x2693bccf
.word 0x59f5ea96, 0x8af48a5d, 0xd57b755e, 0x63a11e49, 0x9eac393d, 0x47509bf6, 0xf70fd291, 0xe21ae9b0
.word 0xd70b9497, 0xb13c153f, 0xd208bcd0, 0x5932a6ae, 0x43b165d3, 0xef36e296, 0x33572cd8, 0x8d3e3fcf
.word 0x674ebf15, 0x71bc2ea6, 0x46690fba, 0xaa41ed19, 0x5fa391be, 0x0bffa81d, 0xf999a120, 0xf152a009
.word 0x8e9fd36f, 0x2b0562b8, 0x5cf692c6, 0x5626f3a8, 0xc6c02e73, 0x436ef61a, 0x9018c215, 0x05927003
.word 0x6dbf9ba7, 0x9bd68cbc, 0xde47619d, 0xfdcc4682, 0x2c3d326d, 0x691ac233, 0xb60db271, 0xf4a6186a
.word 0x82350cfc, 0xef2a10ce, 0xfe00a884, 0x71b82a93, 0xdc0057c3, 0x9ea880b5, 0x03cc2198, 0x049f5881
.word 0x5bd86bcd, 0xa74898d8, 0x59cc41d6, 0xfe3be994, 0xf8b8cde0, 0x74f1dacf, 0x5eee1318, 0x8dd0f717
.word 0x8184097c, 0x0715d44a, 0xf6d2846e, 0xb4229ce7, 0x55f6a30a, 0x6ae441e8, 0x955ab913, 0x2c0a03a5
.word 0xb0d0f8dd, 0xada5888a, 0xed92da63, 0xb27fc80a, 0x65514890, 0x28aecd42, 0xfe239132, 0xe1de30b1
.word 0xf951c8be, 0x2e1a7fc9, 0x3d07ffbd, 0xccc29c9a, 0xb114d9fa, 0x506017f4, 0xfdf64649, 0x1015e84d
.word 0x7ca8048f, 0xc4d72ec1, 0x717b0b69, 0x2d521bb4, 0x67e970ac, 0xfc609094, 0xc26211ee, 0x7de5bba6
.word 0x65414448, 0xae715a96, 0x4d6fda75, 0x0b38a364, 0xa0ffb3c0, 0x827cf7ab, 0xe0b7ea96, 0xd215d50b
.word 0x40b4c7e1, 0x6d03bf13, 0x0544a1de, 0x9f539b13, 0xf13d9a3d, 0xf702ae74, 0x38310007, 0xef52ad1b
.word 0xfb0ef4b5, 0x524538fc, 0x59039207, 0xd9d50574, 0xace9d5d8, 0xff6842b4, 0x8d9cbb00, 0xf2abcd5d
.word 0x9be7d027, 0x3e7b5b82, 0x685db90c, 0x08340ac9, 0xe0116ff1, 0x779dfb36, 0xe784b583, 0xde3b45b2
.word 0x0508de13, 0x97d9553d, 0x372cfb06, 0x8d633f04, 0xea857ee9, 0x51a42fa6, 0xeec77aa2, 0x1533c2c9
.word 0xd63e329a, 0xa7b933bc, 0xbd00838b, 0x8c044b44, 0xa36535bc, 0xb8641474, 0x863e793f, 0x0056b4fc
.word 0x7192a6e2, 0x0830beb7, 0xf1f1aa10, 0x8b3da1e6, 0x0507730c, 0xa157df0a, 0xfeb40395, 0xc23f3259
.word 0x08c4f967, 0x8004f244, 0x26300480, 0x223976e0, 0x0a5ab431, 0xfd52e419, 0xaa074a4c, 0x498d5cd3
.word 0xaca59948, 0x7502dfbf, 0xe5561e23, 0x3e5ec5a6, 0x526590b1, 0x2244c45b, 0x2a8052bd, 0xeff5fa6e
.word 0x69642285, 0x066fb4f5, 0x839303b1, 0xce369e07, 0xb6d72b95, 0x48216491, 0xb29e849a, 0xc40a3ed6
.word 0x9a8f3d4f, 0xbe0bf889, 0x8caef041, 0x3eff87a9, 0x963bea69, 0x0cda21a3, 0xcc41e874, 0x7ad9a3a0
.word 0x4d539da6, 0xdda285a9, 0x769d8c71, 0x2d4f3134, 0x42242c32, 0x718d2e83, 0xcb023b43, 0xeaeb5308
.word 0xbb13eedf, 0xce45e254, 0x34b4c947, 0x40b6beb5, 0xac9e5a5f, 0x4fbf137c, 0x559ecac9, 0x81d6970a
.word 0x09b056f5, 0x7f7f1121, 0x2dd80fe2, 0x3cb1b4a7, 0x72abd556, 0xdc4cc8fd, 0xdaf62dcf, 0xb70431e5
.word 0x5bf52d5a, 0x67819b6e, 0xa44d0b8b, 0x0b19a368, 0xf7522565, 0x8da64e75, 0xf48fca36, 0x6a9f1cff
.word 0x131e8c4b, 0xaad750c6, 0x32ea018e, 0xcc45a33e, 0x09729253, 0xbf9555e7, 0x6ba9ed93, 0x902af2f1
.word 0x7f4c2936, 0x8738b937, 0xa426a882, 0x9cde4817, 0xf38c76ae, 0x684b918f, 0x57c2d5a3, 0xf2bf264d
.word 0xb5ca0281, 0x6a3445e6, 0xaa4cc328, 0xf4bf4def, 0xf6c7cc10, 0x4c9039fb, 0x0cdd26ea, 0x40a6c5e6
.word 0x776feaf1, 0xf9ed02d6, 0x1cf1803f, 0x83542c76, 0x95e018dc, 0xf983085f, 0x0b63e784, 0x496a7f13
.word 0x2bcf1d5b, 0x1329a75b, 0x1ca1311a, 0x03d02f44, 0x780d6ed4, 0xe3bab264, 0x92a54bdc, 0xaa8d4220
.word 0xf044db5c, 0x1bf080f0, 0xde9d4f31, 0xc941440e, 0x1e828ef0, 0xe3dfe022, 0x33024369, 0x66041082
.word 0x2a09f204, 0x13a4de22, 0xcbfea375, 0x75d7dd0c, 0x873c58a6, 0x59c53a18, 0x74025b42, 0x70a686ba
.word 0xb5e26bb8, 0xf8a34393, 0xc5d9fdcf, 0xf2855d9f, 0x12995b21, 0xc6d6068c, 0xa4452cdf, 0x0ec568af
.word 0x3c0e067a, 0x1f9092f2, 0x7ab9799e, 0xdf22fc02, 0x7e6b85ad, 0xe97f38ae, 0x6e3178dd, 0x33c61d47
.word 0xd3f3d9e7, 0xbc368548, 0x788819a6, 0xa2add6b9, 0x482442cf, 0x9c61c6f7, 0xb9999c37, 0x28ab75a2
.word 0x572b47a8, 0x44c87b70, 0xb8b971eb, 0x4512c5f6, 0x54169f85, 0xeca8f13d, 0x49f7f3c9, 0x278f8e72
.word 0xd8b4ff49, 0xf99fa78a, 0xde4d365f, 0x055616d6, 0x0a651469, 0x3e8149eb, 0xbb0abf65, 0xcaa9f656
.word 0xfbd55fa4, 0xffe07b20, 0xc75383dc, 0xbc4cddc0, 0xb3a884c0, 0x2dfd6e99, 0xfc43cb73, 0x58b85d34
.word 0x6837f8cc, 0xa8321380, 0x61493e4c, 0x3e8be1cd, 0x851cedbc, 0x18ac1062, 0xd6b60bf9, 0xd31a39a0
.word 0xb904c4cd, 0x85c84bcc, 0x94a606d0, 0xfc7a0298, 0x75274f44, 0x7582a3de, 0xcc89cd64, 0xbb7cb954
.word 0xebffae90, 0x1f648c74, 0x535f5b65, 0x373b67b5, 0xbb93159f, 0x800760e5, 0x6ffa468a, 0xfc712a98
.word 0x579ae738, 0x494d179c, 0x92a7cebb, 0xb9b20644, 0xd93d8720, 0xe69e2ede, 0x83c9e213, 0xb8ebc56c
.word 0x69d3f67b, 0xa31447a0, 0xe58fdf27, 0x7701c7f5, 0x5eabc812, 0x0074d799, 0xd1612d42, 0x25b04e88
.word 0x6008339f, 0x04de8ad4, 0x5766c3a2, 0x86fe9d13, 0xff9f48de, 0x7e3b654b, 0x7f96dc55, 0xd3bcd16d
.word 0x7f0f1ef5, 0x93c51ca6, 0x3507bf96, 0xc81046ac, 0x647cfc70, 0xe19f7e26, 0x6a7e4b36, 0x970933c1
.word 0xbfeccb0e, 0x67b30448, 0x579b79db, 0x882a2603, 0x3588b7e8, 0xce4e598f, 0xedee4e12, 0xdc319e70
.word 0x61580752, 0x88daf2ad, 0xacda675d, 0x66f7f1ee, 0x998b4cd8, 0x1148903a, 0xa39d319c, 0x4e4de198
.word 0xfc09c21a, 0x95822e4e, 0x44695903, 0xd0db514d
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
                  add x21, x29, zero
                  csrr x4, 0x300 # MSTATUS
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 31
                  bne x4, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x4, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x4, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x4, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x4, x16, ecall_handler
                  li x16, 0x1
                  beq x4, x16, instr_fault_handler
                  li x16, 0x5
                  beq x4, x16, load_fault_handler
                  li x16, 0x7
                  beq x4, x16, store_fault_handler
                  li x16, 0xc
                  beq x4, x16, pt_fault_handler
                  li x16, 0xd
                  beq x4, x16, pt_fault_handler
                  li x16, 0xf
                  beq x4, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

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
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x29, x21, zero
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
                  add x29, x21, zero
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
                  add x29, x21, zero
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
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x29, x21, zero
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
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x29, x21, zero
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
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x29, x21, zero
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
