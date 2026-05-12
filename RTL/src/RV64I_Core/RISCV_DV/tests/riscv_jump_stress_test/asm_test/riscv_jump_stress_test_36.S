.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0xb10c68c6
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0x7dff8648
                  li x6, 0xfbfca5e9
                  li x7, 0xf3c0ac0a
                  li x8, 0x9
                  li x9, 0x80000000
                  li x10, 0x9fd033f7
                  li x11, 0x1
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0xb
                  li x16, 0x80000000
                  li x17, 0xf3f81a6a
                  li x18, 0x80000000
                  li x19, 0x4
                  li x20, 0x95fece94
                  li x21, 0xf732db87
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x8
                  li x27, 0x2
                  li x29, 0x3
                  li x31, 0x6
                  la x30, user_stack_end
main:             la           t4, sub_2
                  auipc        t6, 665969
                  ori          a0, s7, 1185
                  slti         sp, s2, -1845
                  addi         t4, t4, 987
                  auipc        t6, 982465
                  sub          ra, gp, s7
                  beq          a7, s6, main_j2 #branch to jump instr
                  andi         a1, s9, 480
main_j2:          jalr         a2, t4, -987 #jump main -> sub_2
main_0:           jal          a2, 5f
0:                jal          s7, 2f
1:                jal          t1, 9f
2:                jal          ra, 8f
3:                jal          sp, 1b
4:                jal          ra, 0b
5:                jal          t1, 6f
6:                jal          ra, 4b
7:                jal          a6, 10f
8:                jal          t0, 3b
9:                jal          s9, 7b
10:               sltiu        ra, sp, -947
main_1:           jal          a2, 1f
0:                jal          t1, 3f
1:                jal          t1, 4f
2:                jal          gp, 14f
3:                jal          t6, 6f
4:                jal          ra, 0b
5:                jal          a6, 12f
6:                jal          t1, 8f
7:                jal          s7, 2b
8:                jal          s7, 5b
9:                jal          ra, 11f
10:               jal          sp, 13f
11:               jal          ra, 10b
12:               jal          ra, 9b
13:               jal          ra, 7b
14:               sltiu        a2, s3, -1630
main_2:           jal          a2, 8f
0:                jal          ra, 1f
1:                jal          t1, 4f
2:                jal          ra, 12f
3:                jal          ra, 11f
4:                jal          ra, 6f
5:                jal          ra, 9f
6:                jal          ra, 14f
7:                jal          t1, 0b
8:                jal          a1, 2b
9:                jal          s0, 13f
10:               jal          ra, 5b
11:               jal          s4, 15f
12:               jal          s5, 10b
13:               jal          a4, 7b
14:               jal          t1, 3b
15:               xori         t2, a5, -115
main_4:           jal          a2, 9f
0:                jal          ra, 14f
1:                jal          ra, 0b
2:                jal          a5, 17f
3:                jal          ra, 20f
4:                jal          t1, 11f
5:                jal          t1, 10f
6:                jal          ra, 1b
7:                jal          ra, 19f
8:                jal          ra, 6b
9:                jal          t0, 12f
10:               jal          ra, 16f
11:               jal          ra, 18f
12:               jal          t1, 13f
13:               jal          t1, 2b
14:               jal          ra, 5b
15:               jal          t1, 7b
16:               jal          ra, 4b
17:               jal          t1, 15b
18:               jal          ra, 21f
19:               jal          ra, 3b
20:               jal          t1, 8b
21:               add          t6, zero, s2
                  sltiu        a3, s9, 885
                  nop
                  lui          s0, 1011974
                  addi         sp, s7, 1347
                  nop
                  xori         s3, t5, -855
                  add          s7, a2, a2
                  bgeu         ra, s7, 19f
                  sltiu        zero, a7, 756
                  srl          s5, t4, t6
                  addi         a1, s8, 107
                  and          s6, s0, t4
                  addi         gp, tp, 1754
main_5:           jal          a2, 3f
0:                jal          ra, 2f
1:                jal          s9, 0b
2:                jal          a7, 5f
3:                jal          ra, 10f
4:                jal          t1, 7f
5:                jal          t1, 13f
6:                jal          ra, 12f
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          ra, 11f
10:               jal          t4, 9b
11:               jal          ra, 4b
12:               jal          s4, 1b
13:               auipc        s11, 265016
                  sltiu        a4, s1, 1223
                  lui          zero, 488580
                  add          a1, s7, sp
                  and          a5, t2, s9
                  sll          gp, a0, a3
                  or           s5, s7, a3
19:               blt          s6, gp, 36f
                  addi         s2, s10, 95
                  nop
                  slti         s5, t4, -1143
                  sll          s1, a1, t3
                  add          s9, t0, s9
                  add          a7, s8, t2
                  add          tp, s2, t0
                  ori          s11, sp, -72
                  or           a0, t5, a7
                  sltu         a0, s11, t3
                  blt          s8, s7, 45f
                  bne          s1, s5, 39f
                  slli         a1, t4, 28
                  and          gp, t1, a7
                  sltiu        s3, t5, -1404
                  srl          s2, s0, sp
36:               sltiu        a6, s7, 748
                  addi         a2, gp, 78
                  sub          sp, t2, s11
39:               sltu         t2, gp, a1
                  beq          s9, s6, 42f
                  sltiu        t2, s3, -1007
42:               andi         a7, t0, 924
                  bge          s5, s10, 53f
                  or           sp, tp, t3
45:               addi         a3, s0, 1374
                  sltiu        s2, t2, 301
                  slti         t4, s9, 1777
                  slt          a4, gp, s9
                  sub          s2, ra, t6
                  xori         a2, t1, -264
                  addi         a7, gp, -123
                  and          a4, s10, a3
53:               bgeu         s5, a2, 55f
                  or           s2, s3, t4
55:               andi         a4, a7, -73
                  srai         t1, s6, 30
                  ori          zero, s11, -1596
                  bltu         s0, a7, 67f
                  beq          tp, t0, 74f
                  xori         t1, t2, 1805
                  srl          a4, a6, a7
                  bltu         t2, s9, 68f
                  srai         a1, t1, 30
                  xor          zero, t3, a1
                  andi         s3, s5, -532
                  addi         a1, t1, -170
67:               srli         a2, a4, 11
68:               beq          a7, a1, 79f
                  sltiu        a3, a1, -2020
                  sltiu        s8, s5, 1912
                  addi         s1, t0, 2046
                  addi         zero, t4, -2006
                  sltiu        a4, t6, 1878
74:               beq          s7, s2, 93f
                  srai         a1, t0, 18
                  auipc        s6, 781140
                  srli         a6, a4, 10
                  srli         s1, ra, 27
79:               sll          a6, s7, a5
                  xori         a2, s4, -885
                  beq          s10, a3, 87f
                  sltiu        a7, s7, -1152
                  sltiu        a4, s8, -652
                  bge          t4, s4, 102f
                  sltu         a1, s8, a1
                  blt          a0, s1, 94f
87:               blt          gp, a5, 104f
                  sub          t4, a7, zero
                  and          a4, t0, s0
                  sltu         t4, s0, sp
                  ori          a4, s3, -1796
                  slti         t1, tp, 666
93:               bltu         s6, s2, 99f
94:               slli         t0, s8, 20
                  and          t0, s1, a7
                  srl          a6, a2, ra
                  addi         s1, s0, -371
                  srl          a5, gp, t0
99:               sll          tp, t1, a2
                  or           t0, sp, s2
                  or           s7, zero, t6
102:              sltu         s4, t0, a4
                  nop
104:              srai         a2, a0, 6
                  srli         t1, a5, 26
                  lui          t1, 1026766
                  slli         t0, s1, 12
                  and          s5, t1, a5
                  srai         a2, s1, 21
                  beq          s11, s9, 111f
111:              nop
                  sltu         a7, s0, s0
                  slli         a2, s4, 13
                  slti         t6, t3, 56
                  srli         s9, a7, 15
                  bne          s11, s7, 126f
                  bltu         s9, s11, 136f
                  sltiu        s6, s4, -1721
                  nop
                  sltu         s2, a5, a5
                  srli         s5, a6, 18
                  nop
                  beq          zero, s5, 133f
                  bne          sp, a1, 133f
                  or           s3, t6, s4
126:              sltu         s5, s10, s1
                  srai         sp, a7, 16
                  srli         a0, a4, 4
                  sll          tp, s4, t5
                  srli         s3, s2, 17
                  bltu         s10, t5, 133f
                  and          tp, t3, a1
133:              slt          tp, a4, s9
                  sltu         s9, s2, a5
                  bgeu         s9, t4, 152f
136:              auipc        t2, 990145
                  sll          a3, a5, s8
                  addi         s8, t4, -275
                  bgeu         a7, t1, 156f
                  bgeu         t4, s5, 143f
                  bgeu         s5, t6, 161f
                  srl          s1, s10, t0
143:              lui          s5, 304326
                  bltu         a4, ra, 151f
                  beq          a5, t4, 150f
                  ori          s9, s7, -1622
                  srl          a0, s9, zero
                  addi         a2, s5, -573
                  addi         a6, s10, 377
150:              nop
151:              or           s9, a0, s3
152:              bltu         s1, t0, 171f
                  ori          t4, t4, -1206
                  add          s7, s4, a5
                  srai         t1, s6, 6
156:              add          zero, a5, s9
                  auipc        t1, 373575
                  auipc        s3, 575265
                  add          s11, s7, t4
                  sll          a0, gp, s5
161:              xor          s11, t1, t0
                  or           t0, s2, s3
                  bge          a2, a1, 182f
                  ori          s9, sp, 1082
                  nop
                  ori          zero, s3, -687
                  ori          sp, a2, 824
                  sub          ra, t4, s4
                  ori          s9, zero, 721
                  sltu         a6, s4, t3
171:              add          zero, a6, s9
                  sltu         a6, s10, s7
                  bne          t6, s8, 190f
                  auipc        t0, 149359
                  sltiu        ra, s6, -1034
                  and          ra, t2, s6
                  add          t6, t3, t5
                  lui          s9, 819485
                  beq          ra, s6, 185f
                  bne          ra, s10, 190f
                  sll          gp, s2, a6
182:              bgeu         ra, s5, 201f
                  sll          a6, s3, a6
                  andi         t2, t2, -1991
185:              beq          s4, t2, 205f
                  and          s1, s4, s0
                  andi         s0, s10, 1227
                  lui          t0, 212467
                  bne          t2, s3, 191f
190:              sltiu        a2, tp, 1713
191:              auipc        a6, 873985
                  slti         a2, sp, 328
                  srl          ra, t2, s10
                  andi         s5, a6, -1623
                  sltiu        tp, a3, 1190
                  auipc        s7, 614429
                  bltu         a7, zero, 206f
                  or           t0, a1, s10
                  and          a4, s7, a0
                  bgeu         a2, s7, 210f
201:              ori          s7, tp, -137
                  addi         a6, t1, 1869
                  blt          a2, s1, 222f
                  bgeu         a7, s7, 207f
205:              nop
206:              or           gp, t3, a4
207:              blt          s5, tp, 212f
                  xor          a5, a4, s11
                  sra          s9, s5, s6
210:              sltiu        s3, t3, -1451
                  bgeu         gp, tp, 228f
212:              or           t0, zero, a2
                  srl          s6, a4, tp
                  sub          s11, s2, s6
                  andi         a6, sp, 1489
                  and          s8, s3, t6
                  sltiu        gp, s6, 1460
                  andi         s9, t3, 1386
                  xor          t4, t3, s2
                  sltiu        s6, a1, -1218
                  srai         a4, a6, 11
222:              slli         s4, s8, 22
                  bne          tp, t4, 234f
                  lui          s4, 581316
main_3:           jal          a2, 16f
0:                jal          t1, 26f
1:                jal          gp, 23f
2:                jal          s9, 14f
3:                jal          s1, 5f
4:                jal          gp, 0b
5:                jal          s11, 12f
6:                jal          ra, 21f
7:                jal          s4, 17f
8:                jal          t1, 3b
9:                jal          t0, 7b
10:               jal          a3, 13f
11:               jal          t0, 2b
12:               jal          ra, 15f
13:               jal          ra, 20f
14:               jal          ra, 24f
15:               jal          ra, 11b
16:               jal          s4, 10b
17:               jal          ra, 18f
18:               jal          t1, 25f
19:               jal          ra, 8b
20:               jal          ra, 22f
21:               jal          ra, 4b
22:               jal          ra, 19b
23:               jal          ra, 6b
24:               jal          s11, 9b
25:               jal          a1, 1b
26:               sltiu        zero, s10, -1332
                  andi         zero, s5, 1149
                  slli         t2, gp, 30
                  xori         a2, t6, -1841
228:              blt          s2, a7, 238f
                  srl          zero, t4, s11
                  sltiu        s6, t6, -440
                  bgeu         a5, s5, 249f
                  and          a1, s1, zero
                  ori          a0, s4, 618
234:              ori          a4, a6, 752
                  bge          zero, s7, 236f
236:              srai         a2, s8, 16
                  andi         s11, s6, -270
238:              and          a2, a6, t6
                  srl          a7, s0, gp
                  srai         s4, s7, 6
                  beq          s6, t3, 243f
                  sltiu        s7, s10, -1729
243:              or           s3, s6, s11
                  sltu         t0, a3, s3
                  sltu         t2, t0, s2
                  srai         gp, s5, 30
                  sltu         ra, gp, t5
                  beq          s9, tp, 265f
249:              bge          t1, a4, 255f
                  andi         t0, s9, 1210
                  bge          zero, s0, 259f
                  bne          t5, s0, 264f
                  sra          s7, a5, a0
                  sra          a3, tp, a2
255:              blt          a0, s1, 272f
                  or           a5, t0, s2
                  slli         t1, t1, 27
                  nop
259:              srai         s9, t0, 25
                  and          a4, a5, ra
                  andi         t2, a5, 1350
                  sltiu        t6, s8, 1137
                  la           s8, sub_1
                  addi         s8, s8, -687
                  add          a2, s3, t4
                  bltu         s9, a7, main_j1 #branch to jump instr
                  srli         s2, t1, 31
                  slt          t1, t6, s9
                  srli         t1, t6, 31
                  nop
                  srli         a7, t5, 29
                  sltu         t1, a4, s1
                  sll          s3, ra, t5
                  xor          tp, t2, sp
main_j1:          jalr         a2, s8, 687 #jump main -> sub_1
                  ori          t6, a4, 378
                  sra          t6, a0, a7
264:              bne          s3, s1, 266f
265:              auipc        s7, 800037
266:              srli         a6, t6, 3
                  xor          zero, s8, tp
                  beq          zero, s1, 274f
                  auipc        t1, 520096
                  sra          a4, s9, t1
                  and          sp, s5, s2
272:              bltu         s3, t2, 279f
                  xor          sp, zero, t1
274:              slt          ra, t4, a3
                  sltu         a2, s0, tp
                  andi         s7, s3, -1667
                  sub          t1, t3, t2
                  bge          a6, s0, 293f
279:              add          s7, gp, s7
                  sltiu        s8, s7, -62
                  slt          s9, sp, t6
                  srai         t0, s5, 21
                  beq          s8, t4, 298f
                  lui          a2, 897052
                  xori         ra, s2, 1570
                  xor          a3, s1, t2
                  bltu         t5, s4, 295f
                  slli         s7, s10, 26
                  blt          t6, a1, 298f
                  srl          a2, s4, s8
                  blt          t5, t2, 297f
                  srl          t6, s6, t2
293:              slli         t4, s7, 6
                  add          s7, a1, s1
295:              auipc        a0, 810253
                  srai         gp, a1, 2
297:              nop
298:              auipc        a7, 660309
                  addi         t0, s4, -498
                  slt          a4, t2, t1
                  ori          sp, s3, 866
                  slli         a6, s2, 1
                  srl          a5, s2, s5
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            and          ra, t0, t3
                  xor          a3, s7, s6
                  addi         t5, t5, -12
                  sw           a2, 4(t5)
                  slt          t4, a4, a5
                  xori         s6, a2, 1729
sub_5_28:         jal          a2, 4f
0:                jal          ra, 1f
1:                jal          t1, 8f
2:                jal          ra, 5f
3:                jal          a4, 10f
4:                jal          ra, 6f
5:                jal          ra, 3b
6:                jal          s0, 0b
7:                jal          t1, 2b
8:                jal          ra, 9f
9:                jal          t1, 7b
10:               andi         t1, s7, 1202
sub_5_4:          jal          a2, 0f
0:                jal          ra, 21f
1:                jal          ra, 15f
2:                jal          tp, 1b
3:                jal          ra, 6f
4:                jal          t1, 10f
5:                jal          t4, 11f
6:                jal          ra, 8f
7:                jal          ra, 22f
8:                jal          s8, 9f
9:                jal          ra, 5b
10:               jal          t0, 14f
11:               jal          a6, 19f
12:               jal          tp, 2b
13:               jal          ra, 20f
14:               jal          ra, 16f
15:               jal          ra, 23f
16:               jal          t1, 13b
17:               jal          t1, 7b
18:               jal          ra, 12b
19:               jal          ra, 17b
20:               jal          ra, 18b
21:               jal          ra, 3b
22:               jal          ra, 4b
23:               sltu         t2, t5, t3
sub_5_10:         jal          a2, 3f
0:                jal          ra, 11f
1:                jal          s0, 21f
2:                jal          ra, 1b
3:                jal          ra, 14f
4:                jal          ra, 6f
5:                jal          ra, 22f
6:                jal          ra, 13f
7:                jal          ra, 18f
8:                jal          a6, 4b
9:                jal          ra, 7b
10:               jal          t6, 5b
11:               jal          ra, 12f
12:               jal          ra, 16f
13:               jal          ra, 15f
14:               jal          ra, 19f
15:               jal          ra, 2b
16:               jal          s9, 8b
17:               jal          ra, 10b
18:               jal          t1, 17b
19:               jal          ra, 0b
20:               jal          t0, 9b
21:               jal          a4, 20b
22:               slt          a6, s8, a5
sub_5_24:         jal          a2, 20f
0:                jal          s6, 7f
1:                jal          ra, 16f
2:                jal          ra, 0b
3:                jal          a6, 8f
4:                jal          sp, 12f
5:                jal          t1, 1b
6:                jal          t1, 14f
7:                jal          t1, 3b
8:                jal          ra, 18f
9:                jal          ra, 2b
10:               jal          ra, 6b
11:               jal          tp, 19f
12:               jal          ra, 22f
13:               jal          ra, 10b
14:               jal          t1, 21f
15:               jal          ra, 5b
16:               jal          ra, 11b
17:               jal          sp, 15b
18:               jal          s3, 4b
19:               jal          ra, 13b
20:               jal          ra, 17b
21:               jal          ra, 9b
22:               srl          a0, s10, s10
sub_5_0:          jal          a2, 2f
0:                jal          ra, 12f
1:                jal          s4, 18f
2:                jal          ra, 17f
3:                jal          ra, 6f
4:                jal          ra, 7f
5:                jal          ra, 11f
6:                jal          gp, 14f
7:                jal          ra, 13f
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               jal          s3, 3b
11:               jal          t1, 9b
12:               jal          ra, 4b
13:               jal          a6, 16f
14:               jal          t0, 1b
15:               jal          gp, 0b
16:               jal          ra, 5b
17:               jal          t1, 15b
18:               jal          sp, 19f
19:               or           a7, s2, a7
sub_5_5:          jal          a2, 4f
0:                jal          a2, 14f
1:                jal          ra, 15f
2:                jal          t1, 8f
3:                jal          a5, 19f
4:                jal          a5, 9f
5:                jal          ra, 3b
6:                jal          t1, 18f
7:                jal          ra, 13f
8:                jal          gp, 11f
9:                jal          ra, 17f
10:               jal          t1, 20f
11:               jal          t0, 0b
12:               jal          a3, 2b
13:               jal          ra, 5b
14:               jal          ra, 10b
15:               jal          sp, 7b
16:               jal          ra, 6b
17:               jal          t1, 16b
18:               jal          ra, 1b
19:               jal          ra, 12b
20:               srl          a7, a5, s1
sub_5_23:         jal          a2, 2f
0:                jal          t1, 21f
1:                jal          t1, 17f
2:                jal          s0, 20f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          ra, 0b
6:                jal          ra, 8f
7:                jal          t0, 15f
8:                jal          ra, 3b
9:                jal          ra, 11f
10:               jal          ra, 18f
11:               jal          t1, 22f
12:               jal          ra, 6b
13:               jal          ra, 1b
14:               jal          s0, 16f
15:               jal          tp, 14b
16:               jal          t0, 9b
17:               jal          ra, 4b
18:               jal          s5, 19f
19:               jal          gp, 12b
20:               jal          ra, 7b
21:               jal          t1, 23f
22:               jal          t1, 13b
23:               srl          t0, s8, t6
sub_5_29:         jal          a2, 7f
0:                jal          t1, 4f
1:                jal          a7, 3f
2:                jal          s5, 10f
3:                jal          ra, 0b
4:                jal          tp, 9f
5:                jal          t6, 8f
6:                jal          sp, 1b
7:                jal          a7, 5b
8:                jal          ra, 6b
9:                jal          ra, 2b
10:               sll          ra, t4, t3
sub_5_1:          jal          a2, 23f
0:                jal          ra, 21f
1:                jal          ra, 24f
2:                jal          t1, 28f
3:                jal          t0, 29f
4:                jal          ra, 16f
5:                jal          s11, 9f
6:                jal          ra, 2b
7:                jal          ra, 14f
8:                jal          t1, 18f
9:                jal          ra, 20f
10:               jal          t1, 26f
11:               jal          t1, 3b
12:               jal          ra, 7b
13:               jal          ra, 0b
14:               jal          s9, 4b
15:               jal          ra, 25f
16:               jal          s9, 13b
17:               jal          a3, 19f
18:               jal          t1, 12b
19:               jal          ra, 22f
20:               jal          t0, 15b
21:               jal          ra, 10b
22:               jal          ra, 5b
23:               jal          t6, 27f
24:               jal          ra, 11b
25:               jal          s1, 6b
26:               jal          sp, 1b
27:               jal          t1, 17b
28:               jal          t1, 8b
29:               sll          s5, s5, s7
sub_5_15:         jal          a2, 3f
0:                jal          ra, 14f
1:                jal          ra, 17f
2:                jal          tp, 9f
3:                jal          ra, 10f
4:                jal          ra, 0b
5:                jal          ra, 16f
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          sp, 7b
9:                jal          t1, 11f
10:               jal          ra, 4b
11:               jal          ra, 18f
12:               jal          ra, 8b
13:               jal          s2, 1b
14:               jal          a6, 15f
15:               jal          ra, 6b
16:               jal          ra, 2b
17:               jal          ra, 12b
18:               sll          s5, s4, t2
sub_5_25:         jal          a2, 7f
0:                jal          t1, 8f
1:                jal          t6, 0b
2:                jal          ra, 17f
3:                jal          ra, 1b
4:                jal          ra, 3b
5:                jal          s0, 11f
6:                jal          ra, 9f
7:                jal          s8, 12f
8:                jal          t1, 10f
9:                jal          s7, 13f
10:               jal          t1, 18f
11:               jal          sp, 6b
12:               jal          s2, 2b
13:               jal          gp, 15f
14:               jal          t0, 5b
15:               jal          t1, 4b
16:               jal          t0, 14b
17:               jal          ra, 16b
18:               sll          s2, s8, a4
sub_5_11:         jal          a2, 12f
0:                jal          a3, 11f
1:                jal          t1, 5f
2:                jal          t1, 14f
3:                jal          a3, 13f
4:                jal          ra, 10f
5:                jal          t6, 4b
6:                jal          ra, 0b
7:                jal          ra, 16f
8:                jal          ra, 15f
9:                jal          ra, 8b
10:               jal          ra, 2b
11:               jal          s5, 3b
12:               jal          ra, 9b
13:               jal          s11, 1b
14:               jal          ra, 7b
15:               jal          t0, 6b
16:               or           a4, s5, s5
sub_5_12:         jal          a2, 10f
0:                jal          t1, 13f
1:                jal          t1, 8f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          t1, 1b
5:                jal          s11, 9f
6:                jal          ra, 15f
7:                jal          ra, 11f
8:                jal          t1, 16f
9:                jal          t4, 0b
10:               jal          ra, 14f
11:               jal          s5, 6b
12:               jal          s8, 5b
13:               jal          ra, 4b
14:               jal          t0, 7b
15:               jal          ra, 2b
16:               addi         t4, a1, -1740
sub_5_19:         jal          a2, 25f
0:                jal          t1, 13f
1:                jal          ra, 8f
2:                jal          s11, 19f
3:                jal          s7, 10f
4:                jal          ra, 3b
5:                jal          t2, 26f
6:                jal          ra, 23f
7:                jal          ra, 16f
8:                jal          gp, 15f
9:                jal          ra, 14f
10:               jal          t1, 11f
11:               jal          ra, 5b
12:               jal          t1, 22f
13:               jal          t1, 17f
14:               jal          ra, 12b
15:               jal          s7, 20f
16:               jal          ra, 18f
17:               jal          ra, 24f
18:               jal          ra, 6b
19:               jal          t1, 4b
20:               jal          ra, 21f
21:               jal          ra, 2b
22:               jal          ra, 0b
23:               jal          ra, 1b
24:               jal          t1, 7b
25:               jal          gp, 9b
26:               and          s0, s8, t0
sub_5_20:         jal          a2, 12f
0:                jal          s4, 6f
1:                jal          t0, 13f
2:                jal          ra, 9f
3:                jal          ra, 7f
4:                jal          a4, 15f
5:                jal          s2, 0b
6:                jal          t1, 18f
7:                jal          ra, 5b
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          t1, 3b
11:               jal          ra, 14f
12:               jal          s2, 17f
13:               jal          a7, 11b
14:               jal          ra, 16f
15:               jal          ra, 1b
16:               jal          ra, 19f
17:               jal          t2, 8b
18:               jal          ra, 2b
19:               sll          tp, a0, a0
sub_5_7:          jal          a2, 6f
0:                jal          ra, 11f
1:                jal          ra, 16f
2:                jal          t1, 5f
3:                jal          a4, 0b
4:                jal          a3, 14f
5:                jal          ra, 8f
6:                jal          ra, 15f
7:                jal          ra, 13f
8:                jal          ra, 12f
9:                jal          ra, 7b
10:               jal          ra, 3b
11:               jal          ra, 2b
12:               jal          t1, 1b
13:               jal          ra, 4b
14:               jal          s9, 10b
15:               jal          t1, 9b
16:               auipc        ra, 832170
sub_5_30:         jal          a2, 13f
0:                jal          t1, 14f
1:                jal          ra, 6f
2:                jal          tp, 5f
3:                jal          ra, 10f
4:                jal          t1, 17f
5:                jal          ra, 12f
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          t1, 15f
9:                jal          t1, 8b
10:               jal          t1, 18f
11:               jal          ra, 19f
12:               jal          t4, 1b
13:               jal          ra, 7b
14:               jal          ra, 16f
15:               jal          ra, 2b
16:               jal          ra, 4b
17:               jal          t1, 11b
18:               jal          ra, 0b
19:               addi         s6, t5, -1816
sub_5_26:         jal          a2, 6f
0:                jal          ra, 28f
1:                jal          ra, 16f
2:                jal          ra, 13f
3:                jal          t1, 30f
4:                jal          t1, 23f
5:                jal          tp, 11f
6:                jal          t1, 29f
7:                jal          ra, 14f
8:                jal          s5, 24f
9:                jal          t2, 17f
10:               jal          t1, 15f
11:               jal          ra, 0b
12:               jal          s0, 25f
13:               jal          t1, 3b
14:               jal          ra, 9b
15:               jal          ra, 19f
16:               jal          s6, 8b
17:               jal          t0, 26f
18:               jal          t2, 21f
19:               jal          t0, 18b
20:               jal          ra, 22f
21:               jal          ra, 12b
22:               jal          a4, 10b
23:               jal          t1, 1b
24:               jal          s1, 2b
25:               jal          sp, 7b
26:               jal          ra, 5b
27:               jal          s9, 20b
28:               jal          t1, 4b
29:               jal          s8, 27b
30:               and          s2, a2, a5
sub_5_17:         jal          a2, 1f
0:                jal          ra, 3f
1:                jal          t1, 6f
2:                jal          ra, 10f
3:                jal          t1, 4f
4:                jal          ra, 2b
5:                jal          ra, 9f
6:                jal          s8, 8f
7:                jal          a1, 0b
8:                jal          s1, 5b
9:                jal          ra, 7b
10:               srai         a4, tp, 25
sub_5_16:         jal          a2, 3f
0:                jal          t1, 17f
1:                jal          s6, 5f
2:                jal          ra, 19f
3:                jal          ra, 18f
4:                jal          ra, 7f
5:                jal          ra, 15f
6:                jal          ra, 11f
7:                jal          a7, 13f
8:                jal          t0, 14f
9:                jal          ra, 12f
10:               jal          ra, 2b
11:               jal          ra, 8b
12:               jal          a6, 10b
13:               jal          ra, 20f
14:               jal          ra, 4b
15:               jal          t1, 6b
16:               jal          t1, 0b
17:               jal          ra, 9b
18:               jal          ra, 16b
19:               jal          a0, 1b
20:               srl          gp, zero, s1
sub_5_3:          jal          a2, 8f
0:                jal          ra, 3f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          a7, 12f
4:                jal          t1, 13f
5:                jal          ra, 0b
6:                jal          s6, 14f
7:                jal          ra, 5b
8:                jal          s2, 17f
9:                jal          ra, 15f
10:               jal          t1, 16f
11:               jal          ra, 7b
12:               jal          t0, 6b
13:               jal          ra, 2b
14:               jal          ra, 10b
15:               jal          s9, 1b
16:               jal          ra, 18f
17:               jal          t1, 9b
18:               nop
sub_5_14:         jal          a2, 9f
0:                jal          ra, 6f
1:                jal          s1, 22f
2:                jal          ra, 14f
3:                jal          ra, 11f
4:                jal          t4, 15f
5:                jal          ra, 0b
6:                jal          t0, 7f
7:                jal          a1, 1b
8:                jal          s11, 13f
9:                jal          ra, 23f
10:               jal          ra, 24f
11:               jal          ra, 5b
12:               jal          t1, 4b
13:               jal          t0, 18f
14:               jal          ra, 12b
15:               jal          s6, 3b
16:               jal          t1, 17f
17:               jal          ra, 8b
18:               jal          ra, 10b
19:               jal          t1, 16b
20:               jal          ra, 19b
21:               jal          ra, 20b
22:               jal          s11, 21b
23:               jal          gp, 2b
24:               nop
sub_5_13:         jal          a2, 16f
0:                jal          ra, 11f
1:                jal          ra, 6f
2:                jal          ra, 14f
3:                jal          ra, 10f
4:                jal          t1, 12f
5:                jal          ra, 13f
6:                jal          ra, 21f
7:                jal          ra, 1b
8:                jal          t6, 0b
9:                jal          ra, 20f
10:               jal          t1, 5b
11:               jal          gp, 7b
12:               jal          ra, 18f
13:               jal          sp, 2b
14:               jal          ra, 8b
15:               jal          ra, 19f
16:               jal          t1, 9b
17:               jal          t1, 15b
18:               jal          ra, 17b
19:               jal          ra, 3b
20:               jal          ra, 4b
21:               addi         ra, a5, 1537
sub_5_9:          jal          a2, 3f
0:                jal          ra, 21f
1:                jal          t2, 5f
2:                jal          t1, 24f
3:                jal          ra, 14f
4:                jal          t1, 9f
5:                jal          ra, 18f
6:                jal          t0, 2b
7:                jal          ra, 23f
8:                jal          ra, 13f
9:                jal          ra, 0b
10:               jal          ra, 19f
11:               jal          ra, 1b
12:               jal          t1, 10b
13:               jal          ra, 11b
14:               jal          ra, 16f
15:               jal          sp, 20f
16:               jal          ra, 15b
17:               jal          ra, 6b
18:               jal          ra, 4b
19:               jal          s9, 7b
20:               jal          ra, 22f
21:               jal          tp, 17b
22:               jal          ra, 12b
23:               jal          ra, 8b
24:               srli         zero, a6, 27
                  ori          a3, t5, -254
                  sra          s8, t1, s8
                  sltu         a4, t3, zero
                  or           s3, s6, tp
                  add          ra, a1, a7
                  srli         s2, s7, 10
                  slti         a6, a6, -62
                  srli         s5, gp, 8
                  nop
                  xori         a3, t1, -1411
                  ori          t2, t6, -534
                  auipc        tp, 58054
                  and          a2, sp, s11
                  and          t0, a1, t0
                  slti         zero, a1, -804
                  srai         s3, a4, 7
                  srl          gp, sp, a3
                  lui          s11, 130197
                  slli         s11, gp, 5
sub_5_18:         jal          a2, 22f
0:                jal          ra, 2f
1:                jal          ra, 16f
2:                jal          ra, 20f
3:                jal          gp, 23f
4:                jal          ra, 8f
5:                jal          ra, 10f
6:                jal          t1, 14f
7:                jal          a6, 15f
8:                jal          a7, 24f
9:                jal          t1, 0b
10:               jal          ra, 11f
11:               jal          t1, 26f
12:               jal          ra, 21f
13:               jal          ra, 19f
14:               jal          s2, 17f
15:               jal          sp, 5b
16:               jal          s8, 9b
17:               jal          ra, 12b
18:               jal          t6, 1b
19:               jal          t1, 7b
20:               jal          t1, 25f
21:               jal          ra, 3b
22:               jal          t1, 4b
23:               jal          ra, 13b
24:               jal          ra, 18b
25:               jal          ra, 6b
26:               sltiu        zero, gp, -399
                  slt          s3, a2, s10
                  srli         a0, ra, 11
                  bge          s7, t1, 22f
22:               bge          s9, a5, 28f
                  slli         t1, t2, 12
                  addi         t0, a3, 558
                  xor          t1, t1, zero
                  and          s3, a4, zero
                  sra          t0, s11, s4
28:               bge          t6, s3, 41f
                  lui          s9, 97196
                  bne          a6, a3, 46f
                  sub          t6, s5, s3
                  add          t4, s3, zero
                  sra          s8, zero, a2
                  srl          s2, s1, a1
                  add          s1, s6, a0
                  andi         s9, ra, 1800
                  srli         sp, t3, 26
                  or           a7, a7, sp
                  sltiu        s3, a4, -731
                  auipc        s0, 648840
41:               blt          a7, s0, 50f
                  ori          t1, s2, 573
                  auipc        t4, 685686
                  sltu         s0, t4, t3
                  or           s8, tp, s9
46:               or           a3, s3, s4
                  sltiu        gp, a4, 1826
                  and          a7, s10, tp
                  sltiu        s4, s4, -1487
50:               lui          t0, 792646
                  sltiu        a7, t2, -426
                  sltu         gp, gp, s10
                  slt          tp, t6, s1
                  bge          s7, gp, 68f
                  sltiu        s3, s3, 1159
                  nop
                  srli         gp, a1, 15
                  lui          a6, 551351
                  blt          s7, s9, 79f
                  bne          s8, sp, 73f
                  ori          ra, a3, 1969
                  slli         gp, gp, 29
                  or           s9, sp, a4
                  slt          tp, s10, t1
                  or           a0, a7, zero
                  slli         sp, sp, 25
                  xori         a5, a1, -1037
68:               srli         t6, s10, 24
                  xori         s7, s6, -1218
                  sra          t4, s6, s6
                  beq          tp, t1, 77f
                  lui          s3, 724837
73:               sltu         t6, sp, s1
                  addi         a7, s2, -409
                  addi         s3, s10, -1740
                  sub          tp, s4, s3
77:               srl          s0, t4, s7
                  addi         a3, t2, -812
79:               bne          a6, t2, 96f
                  bgeu         a4, s5, 100f
                  sltiu        a7, s0, -65
                  sltiu        t1, s8, -1704
                  sltiu        a0, s6, 1453
                  lui          s4, 381925
                  bgeu         sp, s4, 89f
                  slti         s2, s3, 1150
                  andi         a5, s7, 952
                  sltu         a0, s0, a3
89:               slti         a0, t2, -1591
                  srli         a6, a6, 22
                  beq          a0, s6, 106f
                  srai         a2, a2, 14
                  auipc        s9, 850881
                  auipc        a2, 102162
                  and          ra, s11, s9
96:               sltiu        gp, t4, -626
                  and          sp, a1, s3
                  srai         t0, sp, 16
                  ori          t4, gp, 935
100:              sltu         a2, s7, t1
                  srai         sp, sp, 5
                  xori         t2, ra, 217
                  lui          sp, 977667
                  sltiu        s8, zero, -641
                  lui          a1, 498844
106:              srai         s8, s4, 16
                  ori          t6, a0, -636
                  slli         a3, s4, 17
                  nop
                  addi         t4, t1, 1378
                  bgeu         zero, s6, 121f
                  sub          a3, a1, zero
                  srai         s5, s2, 14
                  bgeu         a7, s8, 124f
                  srl          gp, a0, t5
                  slt          t1, a7, t2
                  or           s4, tp, sp
                  nop
                  beq          a3, zero, 135f
                  bge          ra, a3, 130f
121:              xor          a1, ra, t4
                  addi         zero, a4, 1424
                  or           tp, sp, a1
124:              addi         t2, gp, -1370
                  slt          a4, a0, a6
                  xori         tp, t2, 676
                  nop
                  blt          t2, s8, 141f
                  sll          t2, ra, gp
130:              xori         s11, t3, 1652
                  auipc        s7, 713881
                  auipc        a6, 335017
                  slli         t6, s3, 27
                  xor          s11, s5, a6
135:              andi         a2, s3, -577
                  addi         s7, a5, 1601
                  beq          a1, a7, 143f
                  srl          a0, zero, a2
                  bgeu         s1, s5, 157f
                  bge          t3, ra, 155f
141:              blt          s2, s4, 142f
142:              bge          t3, t2, 154f
143:              bne          s1, zero, 150f
                  sltu         tp, a3, t0
                  add          a3, s10, tp
                  auipc        s9, 131251
                  auipc        ra, 754141
                  srl          tp, a1, t4
                  srai         a2, s9, 19
150:              slli         s1, a3, 27
                  sub          t6, s8, a4
                  bge          s1, ra, 159f
                  or           s2, sp, a4
154:              auipc        s6, 602980
155:              sll          a4, a7, s6
                  auipc        ra, 44251
157:              bltu         t3, s5, 159f
                  srl          a1, s4, a0
159:              srli         t0, s10, 20
                  addi         t2, s5, 159
                  addi         a1, s0, -1117
                  slti         a0, t6, 1377
                  slt          a5, a3, s4
                  sra          ra, a4, t5
                  sra          a3, s2, a5
                  slt          t0, s8, sp
                  sltiu        a0, a7, -1316
                  slli         ra, t4, 14
                  xori         a7, t0, -1012
                  sra          s2, s7, s11
                  ori          s2, sp, 1401
                  ori          t2, a3, -1764
                  beq          a0, s5, 177f
                  sll          a2, s9, a3
                  slt          s8, gp, a2
                  slli         t0, s9, 1
177:              srai         a0, t6, 6
                  srai         t4, a7, 31
                  sub          s9, ra, sp
                  xor          s3, a6, t0
                  slli         s3, s7, 21
                  blt          zero, a5, 195f
                  lui          s1, 445461
                  srli         a7, s2, 24
                  blt          a3, t1, 205f
                  sra          s3, a6, a4
                  srl          s3, t0, s3
                  ori          a6, s6, 1195
                  bge          s8, s6, 209f
                  sltu         t1, s11, ra
                  xor          sp, tp, s3
                  bltu         t1, a6, 202f
                  sltu         a0, sp, tp
                  blt          s11, s8, 212f
195:              srl          ra, s11, s2
                  sltiu        a5, zero, 1110
                  lui          ra, 278500
                  slli         tp, a6, 9
                  srai         ra, s6, 2
                  srai         ra, t1, 23
                  slli         t2, s11, 13
202:              sub          a4, s10, a0
                  xor          a1, a5, a5
                  sltu         s0, t3, s8
205:              bgeu         a0, t6, 206f
206:              or           t2, a2, a3
                  and          s0, ra, s11
                  addi         a1, a2, -1966
209:              andi         a6, s11, -863
                  srai         a0, a3, 14
                  sub          a3, sp, a2
212:              auipc        a7, 840905
                  srli         s0, a4, 23
                  srli         a5, a3, 29
                  slli         tp, gp, 6
                  andi         tp, s3, -1360
                  sltu         a2, t3, a2
                  blt          s8, a7, 238f
                  and          a0, a0, s3
                  xori         a6, a7, -1554
                  xori         tp, s7, 816
                  blt          s10, s7, 232f
                  blt          s8, s7, 235f
                  blt          s1, s8, 237f
                  auipc        t2, 382496
                  xori         a0, a2, 740
                  addi         a5, sp, -939
                  andi         a0, a3, -789
                  slti         sp, a3, 917
                  slli         gp, sp, 18
                  and          s3, t1, tp
232:              sltu         a6, s4, s2
                  xor          t6, sp, a4
                  sll          s4, ra, s1
235:              bgeu         s0, s6, 242f
                  bne          s4, t3, 237f
237:              srli         s1, t2, 28
238:              sltiu        s9, ra, 141
                  addi         tp, s4, -636
                  bge          a2, a4, 244f
                  xor          a5, s2, a2
242:              blt          sp, a7, 256f
                  blt          s0, a7, 249f
244:              sra          s7, sp, a6
                  bge          a7, ra, 254f
                  slt          a0, sp, s2
                  nop
                  sra          a0, t6, a4
249:              xori         s6, ra, 1286
                  ori          s8, s8, -319
                  sra          zero, t0, s8
                  bge          a0, a0, 267f
                  slti         a5, t6, -2032
254:              beq          tp, t1, 274f
                  ori          t4, s1, -1022
256:              srai         gp, s7, 5
                  sltu         a7, s8, s8
                  srli         a5, a4, 23
                  and          s3, t4, sp
                  nop
                  srai         sp, s10, 14
                  or           s4, ra, a6
                  srai         a7, t2, 18
                  xor          a7, a0, a4
                  or           s5, a5, s10
                  sltu         s7, t4, ra
267:              sub          t0, a2, t3
                  sltu         a3, t2, t5
                  bgeu         a7, a0, 284f
                  bne          t2, t1, 290f
                  blt          s11, s9, 291f
                  auipc        s0, 545708
                  beq          s8, t0, 279f
274:              bgeu         s2, a7, 287f
                  sub          s2, s7, a3
                  slli         s4, a2, 17
                  blt          s6, t3, 281f
                  andi         s3, s3, -1072
279:              bge          s4, t0, 289f
                  and          s8, s7, t1
281:              ori          a0, s10, -1137
                  xori         a1, s9, 1789
                  slti         a6, a7, -275
284:              bge          zero, a4, 291f
                  andi         t4, s0, 763
                  ori          t4, gp, 310
287:              srl          t6, zero, zero
                  beq          a7, a0, 290f
289:              bgeu         s11, a6, 305f
290:              xori         a4, t1, 371
291:              slti         ra, a3, -6
                  or           t0, t4, a6
                  xori         sp, t6, 864
                  xori         a5, a3, -1503
                  slt          s0, a3, s11
                  auipc        a0, 900776
                  and          s6, t6, gp
                  slli         tp, t5, 26
                  addi         a5, s7, -95
                  auipc        s8, 22210
                  srli         zero, s11, 16
                  slli         s5, a0, 2
                  nop
                  ori          a0, a5, -1656
305:              slli         t6, a5, 27
                  lui          a2, 615800
                  xor          a2, s1, s7
                  slli         a2, sp, 31
                  addi         s4, s0, 409
                  xor          t0, a3, s6
                  slli         s5, s7, 21
                  and          s2, zero, a0
                  sub          s1, s2, s11
                  sltiu        s3, zero, 1667
                  auipc        t2, 642026
                  blt          t1, s4, 329f
                  and          t2, sp, a1
                  sltiu        t6, s0, -1737
                  nop
                  or           a7, t5, t6
                  blt          a7, s6, 337f
                  srai         tp, s0, 22
                  xor          t6, s6, ra
                  srli         s6, a3, 9
                  bltu         a4, t5, 342f
                  srl          zero, s8, t0
                  bltu         s4, s10, 333f
                  sltu         t1, s3, a4
329:              bne          s7, a3, 342f
                  slli         zero, a5, 31
                  sll          t1, s5, t4
                  xori         t4, t1, 702
333:              sll          a7, a3, s0
                  srai         a4, s10, 28
                  bge          t0, s3, 337f
                  auipc        s11, 114961
337:              srl          s9, zero, a2
                  addi         t1, s1, 306
                  or           s7, zero, a3
                  and          a6, s9, s4
                  blt          s8, sp, 354f
342:              andi         s4, t4, 70
                  add          s0, s1, tp
                  sub          s8, t6, ra
                  srl          s0, a7, t3
                  nop
                  bgeu         a5, t3, 353f
                  xori         s8, zero, 1559
                  slt          s2, sp, s9
                  slt          a5, t0, s10
                  sltiu        gp, s4, -739
                  slli         s4, s10, 2
353:              and          gp, s6, t1
354:              slli         tp, s8, 16
                  beq          t6, a3, 371f
                  nop
                  and          t0, t6, s0
                  sra          a3, a0, s10
                  blt          a0, a1, 379f
                  srli         s9, s7, 22
                  sll          t4, s9, a3
                  bge          s1, t2, 382f
                  xor          t0, sp, a4
                  beq          t2, ra, 370f
                  bne          s8, t3, 369f
                  xor          s2, s1, t6
                  beq          a1, t1, 380f
                  srli         a4, a2, 4
369:              slli         a2, sp, 17
370:              or           a5, zero, a4
371:              xori         s1, t3, 392
                  bgeu         a3, t4, 385f
                  sra          t1, s7, s3
                  srli         s2, t0, 19
                  sltiu        t6, tp, 1754
                  and          s5, ra, t4
                  bge          s4, s2, 387f
                  nop
379:              sltiu        s1, s6, 1275
380:              slt          a0, s10, tp
                  xor          s4, s0, sp
382:              xori         t4, a6, -253
                  bgeu         t3, t6, 398f
                  bge          s9, s11, 391f
385:              xori         tp, t1, 748
                  addi         t6, s11, -1089
387:              andi         sp, s8, 1575
                  ori          s3, s4, -1106
                  srai         zero, s4, 4
                  andi         a5, a4, -1293
391:              slti         a1, tp, 759
                  xori         t1, a3, -823
                  sltiu        zero, sp, -773
                  srl          a3, sp, s7
                  ori          zero, s1, -1196
                  sll          a7, s5, s0
                  sltiu        s0, s5, -845
398:              lui          t0, 97493
                  sub          s1, a1, zero
                  and          sp, s9, t3
                  sltu         a3, s3, a2
                  sltu         sp, zero, a6
                  sll          sp, s8, s2
                  bne          a5, t3, 424f
                  lui          s0, 741691
                  xor          a2, a3, a6
                  slt          t4, a0, s5
                  beq          a6, a7, 418f
                  sltiu        a7, ra, -1607
                  and          s1, s7, s1
                  addi         t2, s5, -277
                  sub          a7, a6, s0
                  slt          t2, s8, sp
                  srl          s8, s11, a1
                  srai         s4, tp, 1
                  sll          a7, t5, a0
                  sub          t1, t4, tp
418:              sra          gp, s5, t1
                  andi         s2, zero, 333
                  sll          s8, a5, sp
                  addi         t1, s3, 1978
                  nop
                  bltu         s11, t6, 424f
424:              sltiu        s7, s8, 648
                  bne          s7, t4, 437f
                  sltu         s3, s4, s5
                  sub          t4, s9, ra
                  or           s2, ra, a3
                  bltu         a1, s3, 444f
                  bltu         a3, t4, 448f
                  ori          a6, s0, 584
                  srli         a5, s11, 21
                  auipc        a2, 523653
                  lui          s11, 232806
                  lui          s3, 588371
                  srl          sp, t6, s5
437:              sltiu        s8, zero, -689
                  addi         gp, a2, -1990
                  slti         a1, s4, 284
                  sltiu        s7, tp, -709
                  bge          a3, s4, 445f
                  lui          s8, 281548
                  beq          t4, gp, 444f
444:              srli         s4, s11, 18
445:              slli         a1, t4, 30
                  or           s2, a3, a3
                  sra          a0, s2, s6
448:              srli         t6, s10, 28
                  beq          a2, a4, 462f
                  srai         a6, a3, 7
                  sltiu        s0, t3, -848
                  bge          tp, t5, 472f
                  and          zero, t1, a4
                  srai         a7, s6, 20
                  sll          zero, ra, s1
                  andi         sp, t3, 1388
                  slt          s11, ra, t0
                  and          s8, a2, a5
                  sra          t0, s10, s8
sub_5_27:         jal          a2, 8f
0:                jal          ra, 10f
1:                jal          ra, 0b
2:                jal          a2, 12f
3:                jal          t1, 1b
4:                jal          t1, 15f
5:                jal          ra, 4b
6:                jal          ra, 3b
7:                jal          ra, 13f
8:                jal          t1, 2b
9:                jal          ra, 11f
10:               jal          ra, 9b
11:               jal          ra, 5b
12:               jal          s2, 14f
13:               jal          t1, 6b
14:               jal          sp, 7b
15:               jal          a3, 16f
16:               slt          a5, s11, t0
                  lui          a7, 623165
                  bne          s3, tp, 471f
462:              blt          s8, ra, 478f
                  ori          a6, a5, -1422
                  slli         s0, tp, 17
                  ori          zero, s3, -451
                  bge          s2, t5, 472f
                  bltu         s8, t5, 481f
                  sra          s2, tp, a0
                  sltiu        a7, sp, -1345
                  bge          a0, a3, 487f
471:              andi         s5, tp, 1746
472:              sll          a5, a4, s7
                  xori         a4, a5, -1025
                  bge          s8, s9, 483f
                  xor          s5, s9, a0
                  sra          sp, a5, s5
                  sub          sp, s6, s11
478:              and          a1, s2, s5
                  bgeu         s9, s3, 486f
                  xori         a4, ra, -804
481:              sltu         t4, zero, a5
                  sltiu        sp, t3, -297
483:              slt          gp, a4, s11
                  sltiu        s1, t0, 2024
                  slt          s9, a4, ra
486:              addi         a3, a0, 520
487:              srai         s7, a0, 31
                  srli         t6, t3, 17
                  ori          s4, gp, -2007
                  bltu         s0, s2, 491f
491:              sltu         s7, a5, s10
                  bge          a7, a2, 505f
                  add          zero, tp, s10
                  srli         a4, a7, 23
                  and          ra, t4, s8
                  sltu         s8, s8, a1
                  blt          t1, gp, 517f
                  nop
                  and          s3, t4, zero
                  bgeu         gp, s3, 515f
                  andi         t0, s6, 1716
                  xor          t6, t6, t0
                  bne          t2, s11, 515f
                  auipc        s2, 524395
505:              bne          s9, t0, 525f
                  bge          t3, s11, 526f
                  addi         a3, s5, -2008
                  xori         s0, ra, 929
                  bltu         s10, a0, 515f
                  auipc        s6, 694544
                  sub          s4, a2, a3
                  bge          s9, t4, 516f
                  sra          t2, s10, a5
                  srl          a1, s4, s5
515:              srl          a7, t5, s3
516:              slti         s4, t4, 1265
517:              srl          a7, a4, t2
                  bge          s4, s6, 531f
                  srli         s1, t4, 20
                  slt          a3, a5, a1
                  sub          a3, t3, t6
                  slt          t2, a3, a6
                  srl          a7, t0, a1
                  blt          s1, t0, 544f
525:              sll          s0, s7, t2
526:              srl          s9, a5, sp
                  sltiu        s4, s1, -1974
                  lui          s5, 781293
                  or           s2, t5, s6
                  bltu         a2, s0, 536f
531:              or           t2, t3, a0
                  andi         a2, s7, 802
                  or           a5, zero, a0
                  sub          s6, t1, a1
                  auipc        t6, 503161
536:              srai         a2, t5, 4
                  add          a3, s4, t1
                  srli         a3, s3, 7
                  andi         t0, s3, 1757
                  sll          s7, s2, a6
                  beq          sp, a7, 548f
                  sub          t1, s11, ra
                  slti         a5, s8, 1278
544:              sltiu        s6, t4, 467
                  slli         s6, gp, 6
                  and          s8, a5, a4
                  slti         s8, s9, 516
548:              slti         sp, a6, -1639
                  nop
                  bne          s1, t5, 552f
                  srl          a2, tp, t3
552:              bgeu         s8, a3, 568f
                  add          s4, s4, a5
                  xor          a0, t0, a5
                  sltiu        s3, s7, -1260
                  andi         s0, a1, -1772
                  andi         a4, a2, 959
                  sll          s1, s3, t5
                  bltu         a0, s3, 572f
                  bne          a0, s5, 578f
                  sra          a2, ra, t2
                  bgeu         a4, zero, 568f
                  slli         zero, a0, 1
                  or           s9, a2, a4
                  nop
                  srai         s9, t1, 3
                  sub          ra, a4, s4
568:              bne          ra, s3, 578f
                  bgeu         zero, a4, 586f
                  bltu         sp, t3, 579f
                  bgeu         a1, t0, 581f
572:              andi         ra, tp, 1385
                  bltu         a7, t1, 589f
                  and          a6, a1, a0
                  add          zero, a3, a0
                  sltu         s2, s11, a5
                  blt          gp, a6, 591f
578:              bne          s11, s4, 593f
579:              nop
                  sra          a6, s11, a1
581:              srli         ra, t1, 25
                  slti         tp, s0, 860
                  beq          gp, s10, 596f
                  slti         ra, a3, 1368
                  srai         s6, tp, 2
586:              bltu         a1, t2, 596f
                  sltu         a0, s8, sp
                  bgeu         s11, zero, 595f
589:              sltiu        t0, t3, -2012
                  or           t4, s9, s9
591:              blt          a3, a0, 595f
                  or           zero, s3, s8
593:              xor          a4, s9, s5
                  lui          s6, 26458
595:              and          s2, s11, gp
596:              bltu         s1, t3, 597f
597:              bne          t6, s0, 601f
                  sub          a7, s1, a4
                  auipc        s9, 524343
                  srai         t0, t3, 12
601:              bne          tp, ra, 610f
                  sll          s4, t4, a7
                  slli         tp, s7, 31
                  sll          s4, t2, a4
                  bne          a1, a2, 618f
                  addi         s3, s4, -18
                  xori         sp, t6, 1281
                  auipc        s4, 238063
                  or           t4, t4, t4
610:              bgeu         a3, tp, 630f
                  srai         s1, s1, 0
                  sltu         a7, a1, a2
                  nop
                  sub          s7, s6, ra
                  bltu         s3, a0, 625f
                  nop
                  andi         s3, s11, -1401
618:              beq          s5, s6, 631f
                  or           s9, s11, s7
                  sltu         ra, s4, a1
                  or           s1, a3, t2
                  ori          s6, zero, 2008
                  ori          s2, gp, 310
                  blt          a1, s11, 639f
625:              nop
                  add          a2, s5, s5
                  ori          a1, t0, 990
                  ori          s7, a2, -1390
                  slti         s1, t1, 443
630:              ori          gp, a7, -866
631:              sra          tp, zero, s9
                  lui          t2, 99293
                  bne          a7, a7, 647f
                  srai         a2, ra, 24
                  nop
                  sltiu        s1, tp, 1883
                  xor          a6, t2, s10
                  bge          s7, s9, 651f
639:              add          zero, ra, t5
                  slli         a4, t4, 7
                  sltiu        a7, a0, 1327
                  ori          s9, a0, 1846
                  beq          t0, s11, 649f
                  srli         s5, s7, 7
                  bgeu         t4, t0, 646f
646:              ori          s2, t0, 1026
647:              xori         a2, sp, -1969
                  xori         a4, s7, 1931
649:              srl          a3, t5, sp
                  bne          t3, sp, 656f
651:              slt          a6, sp, s6
                  ori          s5, s7, -1119
                  sltiu        a3, a5, -1715
                  ori          a0, a1, 1265
                  sltu         sp, t0, s3
656:              andi         t2, t3, -939
                  nop
                  sra          s7, a0, s11
                  bgeu         s0, sp, 665f
                  bne          a7, a3, 667f
                  sltiu        t6, a4, -1600
                  slt          a7, a2, s4
                  and          t4, t0, t6
                  or           a7, t1, s9
665:              bne          t6, a5, 675f
                  lui          tp, 889724
667:              slti         a3, t4, 1218
                  slt          gp, a4, s0
                  beq          t0, ra, 682f
                  and          s3, t4, t6
                  bgeu         s11, s0, 691f
                  slt          a5, tp, t1
                  slt          t6, a7, t3
                  srli         t6, a0, 14
675:              bgeu         t0, s10, 687f
                  beq          a5, t5, 691f
                  sll          t6, s0, sp
                  or           s9, a2, s1
                  xori         s9, tp, -960
                  sltiu        ra, sp, -232
                  bltu         s0, tp, 701f
682:              sra          a6, s6, s7
                  or           t0, a0, s6
                  bgeu         sp, t4, 702f
                  srai         a4, a4, 18
                  slti         a1, t1, -205
687:              blt          s10, sp, 703f
                  add          t0, s5, s2
                  bgeu         s7, s2, 696f
                  ori          t6, s9, -1090
691:              blt          t6, s4, 708f
                  srai         s1, s4, 0
                  and          gp, s0, t1
                  beq          t0, t1, 710f
                  andi         t6, tp, 836
696:              sub          ra, s9, s0
                  sltu         t4, s11, a7
                  sltiu        t1, s2, 77
                  sra          s4, t0, sp
                  slt          s11, t3, s2
701:              add          s9, a2, t3
702:              beq          t2, s11, 704f
703:              xor          ra, s0, t3
704:              xori         sp, a2, 3
                  srli         s2, s5, 26
                  beq          a5, gp, 716f
                  sub          s9, t2, s4
708:              sltu         zero, a4, t5
                  bltu         s2, s5, 710f
710:              lui          t0, 149361
                  auipc        s8, 227603
                  lui          a0, 802914
                  sra          zero, t3, s2
                  srai         s11, tp, 27
                  bge          t3, s11, 735f
716:              sltu         s7, ra, s8
                  or           a3, s7, s3
                  sltu         t2, s8, tp
                  bltu         s6, a7, 723f
                  auipc        sp, 205249
                  nop
                  lui          s4, 587437
723:              slti         s7, a5, -75
                  srl          s0, s2, t5
                  sltiu        s1, t6, -248
                  sub          a5, s4, gp
                  blt          s9, t5, 747f
                  blt          tp, t6, 734f
                  srli         a5, a5, 22
                  bltu         t1, s4, 739f
                  nop
                  auipc        s1, 129240
                  auipc        s6, 464570
734:              or           s4, s6, t2
735:              or           t1, s5, gp
                  xori         s8, s11, 347
                  bgeu         t4, t1, 752f
                  beq          s5, gp, 739f
739:              and          t4, s7, s1
                  sra          s3, s1, tp
                  slli         a6, ra, 25
                  lui          a2, 225338
                  srai         sp, a7, 4
                  andi         zero, s7, -1798
                  srli         s11, a0, 25
                  nop
747:              beq          t4, t5, 763f
                  or           t0, a1, a3
                  bgeu         s2, s10, 762f
                  srl          a7, sp, t4
                  and          s0, a1, t0
752:              bge          t6, s9, 764f
                  bgeu         s0, s10, 767f
                  ori          s5, zero, -1386
                  blt          a6, t0, 768f
                  or           a1, a0, s2
                  sltiu        t6, s7, -622
                  srai         tp, t0, 18
                  xor          s8, s0, a6
                  srl          t2, t2, s5
                  sra          s0, a0, a7
762:              sltu         tp, sp, t3
763:              xori         tp, s11, 1835
764:              bgeu         s3, zero, 777f
                  slt          s1, a3, a0
                  auipc        zero, 511861
767:              andi         gp, s10, 318
768:              bgeu         a0, a6, 775f
                  bltu         a6, s5, 775f
                  sll          s6, t6, sp
                  add          a2, s0, s2
                  slti         t6, s8, 1267
                  ori          a7, s2, 1690
                  blt          a0, t6, 789f
775:              sra          gp, t1, gp
                  sub          s8, a7, s7
777:              srai         s4, a7, 17
                  sltiu        tp, s7, 790
                  add          s7, s8, t4
                  sra          a0, tp, t6
                  srai         a5, t3, 2
                  ori          sp, s6, -303
                  auipc        ra, 671535
                  bgeu         s11, s0, 800f
                  sltiu        t2, t1, 901
                  or           a6, s4, s1
                  ori          s9, s3, -1531
                  sll          a0, a0, a6
789:              sra          a2, t5, a3
                  xor          sp, s6, a4
                  sra          s11, t2, t0
                  srai         zero, s3, 19
                  bgeu         tp, t4, 794f
794:              xor          s11, s6, s0
                  sltu         t0, s0, a7
                  andi         s0, s11, 186
                  sltu         t6, s4, a5
                  nop
                  xori         zero, t3, 1766
800:              and          gp, s5, t6
                  slt          t0, t5, t1
                  xori         a5, a4, -1965
                  srli         a3, s10, 5
                  sltiu        t6, t2, 1305
                  sltiu        a4, s7, -689
                  lui          s6, 50708
                  beq          a3, zero, 809f
                  sra          s9, s11, a5
809:              bgeu         sp, gp, 826f
                  add          a7, zero, t0
                  srl          s9, s0, t1
                  bge          s3, t0, 832f
                  ori          s11, s5, -329
                  nop
                  and          t1, t3, t6
                  xor          s4, sp, s7
                  andi         a4, a5, 1110
                  lui          t6, 244222
                  sll          s9, a1, tp
                  srai         s1, s10, 3
                  bge          t1, s10, 827f
                  xor          a0, a7, a2
                  and          a0, s7, s3
                  sltu         t2, gp, t2
                  xor          t4, a5, t1
826:              slt          t2, s10, s7
827:              sll          tp, a2, t0
                  slti         s8, zero, 325
                  lui          a5, 173847
                  bne          a7, s3, 843f
                  srli         s5, s7, 31
832:              bltu         a7, s1, 852f
                  bltu         a3, a0, 840f
                  slli         tp, s1, 7
                  bge          s0, s5, 845f
                  bne          s9, a0, 846f
                  sltu         a5, a4, s11
                  bltu         s1, t4, 848f
                  bge          a1, s10, 857f
840:              bne          s11, tp, 860f
                  slli         ra, t3, 30
                  addi         tp, s1, -1178
843:              slti         a0, t2, 127
                  slt          a3, tp, t4
845:              nop
846:              and          s2, s7, s1
                  srli         a1, s11, 10
848:              srl          sp, s6, sp
                  bgeu         a0, s8, 853f
                  and          a0, s0, a6
                  srli         s4, s6, 25
852:              bne          a6, a1, 856f
853:              lui          a3, 236568
                  nop
                  ori          ra, a2, 215
856:              slli         s8, t1, 14
857:              slli         gp, s6, 7
                  slli         s2, a5, 12
                  xor          a7, s8, s8
860:              srai         s2, a1, 6
                  ori          a0, a2, 106
                  xori         a0, zero, 518
                  and          s2, s6, s1
                  slti         s0, s6, 334
                  lui          s3, 164319
                  bne          tp, zero, 879f
                  bne          s11, a2, 882f
                  or           t0, gp, s8
                  slti         t6, s11, 2011
                  add          s1, t4, s10
                  bne          t5, t1, 875f
                  xor          s7, zero, s1
                  or           a2, s2, t2
                  and          gp, t6, a7
875:              beq          t6, gp, 879f
                  addi         tp, t2, -717
                  srli         a6, s1, 0
                  xori         tp, tp, 929
879:              sra          zero, a1, s6
                  xori         s4, t1, 1381
                  nop
882:              or           s7, a6, sp
                  and          t1, a2, s5
                  sltu         s5, a5, a2
                  ori          t0, s4, -1872
                  srai         s0, t6, 4
                  xor          t1, t0, gp
                  blt          a7, a7, 900f
                  sll          zero, gp, a7
                  beq          tp, s11, 896f
                  slti         s9, a1, 318
                  ori          a1, s2, -229
                  bltu         a4, t0, 913f
                  srai         s7, s5, 15
                  auipc        a4, 387596
896:              and          zero, t1, t1
                  sltiu        ra, s8, -431
                  sra          a0, s0, a4
                  lui          zero, 702712
900:              sltu         zero, zero, zero
                  lui          a3, 517452
                  srli         t4, t3, 9
                  sltu         ra, gp, t1
                  auipc        s8, 613852
                  ori          t0, t2, 1537
                  sltiu        s4, a0, -1904
                  and          s2, a5, s8
                  bltu         t4, a7, 925f
                  beq          t2, s4, 910f
910:              srl          a5, a2, s0
                  bge          a2, t1, 917f
                  blt          s4, t1, 928f
913:              srli         s0, a5, 3
                  blt          t2, s6, 915f
915:              and          a6, sp, s7
                  sltiu        a2, s9, -971
917:              sub          s2, t3, zero
                  beq          s5, s6, 928f
                  sltu         tp, s7, t3
                  bltu         t2, zero, 930f
                  sra          zero, t4, s7
                  andi         a5, t6, 1266
                  bge          s0, s6, 936f
                  add          sp, s7, tp
925:              add          t1, zero, gp
                  beq          s8, t5, 932f
                  bne          a0, s11, 934f
928:              slti         s3, a6, 269
                  auipc        zero, 761985
930:              nop
                  srai         s1, s6, 8
932:              nop
                  lui          t2, 122185
934:              or           s6, t1, a0
                  xori         t6, t6, 640
936:              sra          s3, s3, s2
                  bgeu         s3, s3, 955f
                  beq          s3, t1, 945f
                  bgeu         t2, t4, 959f
                  srli         s6, a4, 19
                  bne          a7, s4, 954f
                  sra          t2, a2, ra
                  and          s0, a2, s1
                  srli         a7, t5, 2
945:              bltu         s2, s9, 954f
                  sra          s4, t3, t1
                  srli         a3, gp, 1
                  slti         s2, s0, -503
                  srl          a3, s0, s1
                  auipc        t2, 625394
                  srai         sp, t3, 31
                  sll          a6, a4, s5
                  xori         a4, t2, 1660
954:              slt          gp, a6, s10
955:              bltu         a4, a4, 971f
                  slli         s9, tp, 2
                  nop
                  slt          a0, a7, s4
959:              sll          a6, a5, t1
                  beq          t3, t0, 975f
                  add          s0, a4, a7
                  blt          a4, t4, 976f
                  and          s5, t4, ra
                  blt          s8, ra, 984f
                  lui          s11, 807978
                  sra          sp, t6, a0
                  nop
                  bge          a5, t2, 988f
                  sra          s0, s2, a6
                  sra          t2, zero, t4
971:              sra          a3, t6, a3
                  blt          t1, s4, 982f
                  xor          s1, ra, a7
                  sll          s7, a3, s1
975:              nop
976:              slt          a5, s11, s1
                  srli         s3, a7, 8
                  auipc        a1, 333798
                  slli         t0, tp, 9
                  xor          ra, a0, s4
                  sra          s2, s9, s7
982:              sltiu        s9, a1, -662
                  beq          t4, t1, 985f
984:              sltu         tp, s9, sp
985:              sll          ra, a0, t3
                  addi         s0, a3, 441
                  add          tp, s11, sp
988:              sll          s1, zero, a0
                  beq          s11, t3, 1002f
                  sltu         t1, a6, t5
                  bge          s9, a3, 1006f
                  bgeu         s3, a0, 1012f
                  srai         s4, a1, 27
                  add          a2, a3, a7
                  srli         t1, sp, 24
                  slt          sp, a4, t3
                  slli         gp, a0, 1
                  lui          sp, 420138
                  nop
                  bltu         s5, s11, 1002f
                  beq          s10, s6, 1002f
1002:             lui          a1, 614500
                  sub          a2, zero, t0
                  sll          a4, ra, a7
                  sra          t4, s1, s7
1006:             ori          a6, s0, -732
                  andi         s0, s9, -1263
                  sub          a2, s6, sp
                  andi         s8, s10, -1221
                  bgeu         s11, t1, 1017f
                  and          a6, s0, gp
1012:             addi         ra, a5, -527
                  srai         t1, s9, 22
                  lui          s9, 391540
                  blt          s3, s7, 1025f
                  sltu         a6, t0, tp
1017:             bge          s9, t6, 1035f
                  slli         t4, t2, 18
                  nop
                  sub          s11, a2, t5
                  sltiu        a3, s3, -1939
                  bgeu         tp, ra, 1028f
                  nop
                  bge          tp, ra, 1034f
1025:             slti         s6, s5, -1954
                  ori          t6, gp, 1792
                  sltiu        gp, s7, 372
1028:             blt          s10, gp, 1034f
                  or           a7, t4, a4
                  srli         a7, t3, 10
                  bltu         s8, t3, 1044f
                  and          a6, t0, s6
                  sub          tp, s2, a7
1034:             slli         a7, t2, 10
1035:             andi         t4, t5, 1679
                  bge          t4, s10, 1056f
                  bge          s3, ra, 1050f
                  sll          s6, sp, s3
                  ori          s1, s11, -73
                  andi         gp, s10, 140
                  and          gp, t5, s7
                  and          sp, a6, t5
                  slt          t4, a7, s9
1044:             ori          t0, a5, 492
                  srli         a6, a7, 28
                  bge          s11, s9, 1062f
                  xor          a0, zero, s6
                  slti         s9, s0, 2007
                  slt          a0, s7, t1
1050:             beq          s0, s4, 1060f
                  ori          a4, a0, -1387
                  bltu         s9, a2, 1066f
                  auipc        s4, 936888
                  xori         s2, s7, -861
                  sub          t2, a5, s0
1056:             srli         s9, t1, 3
                  bne          a4, s2, 1077f
                  blt          t6, s8, 1073f
                  and          sp, s2, t3
1060:             slli         s8, t4, 16
                  addi         s3, t0, 1079
1062:             sra          a5, s2, t1
                  lui          t2, 423460
                  andi         s8, s3, -209
                  bltu         a2, s6, 1078f
1066:             sltu         zero, gp, a5
                  srl          t2, t3, t1
                  bltu         sp, s4, 1069f
1069:             srai         t4, sp, 20
                  and          s1, ra, t6
                  blt          t5, sp, 1087f
                  srli         a4, s8, 25
1073:             lui          tp, 938188
                  ori          a6, a7, 1482
                  srai         s11, s9, 0
                  nop
1077:             xori         t2, a1, -120
1078:             sll          s9, a1, ra
                  add          s9, t6, a1
                  bne          a6, s7, 1086f
                  bge          s2, s6, 1085f
                  slt          t0, t5, s9
                  auipc        a1, 586318
                  sltu         zero, sp, t6
1085:             slt          s2, ra, t0
1086:             sltu         a0, t6, a1
1087:             xori         a5, s9, -336
                  xor          s11, s0, a6
                  sub          a4, s4, s1
                  bge          a1, tp, 1110f
                  andi         s0, t1, 5
                  lui          t0, 115450
                  bge          tp, a2, 1102f
                  slli         a4, t3, 28
                  bltu         t1, a4, 1102f
                  addi         s5, sp, 889
                  ori          s8, s4, -262
                  bgeu         t3, t4, 1111f
                  bltu         t6, s2, 1116f
                  sra          zero, t5, t5
                  auipc        t0, 992515
1102:             slt          s3, a7, s9
                  sra          s8, a0, gp
                  srl          t6, tp, ra
                  sltiu        a2, zero, 1864
                  srl          t6, s6, a5
                  sltu         a7, gp, s4
                  srli         s3, a1, 1
                  xori         gp, s10, -905
sub_5_2:          jal          a2, 5f
0:                jal          s6, 3f
1:                jal          t2, 10f
2:                jal          ra, 4f
3:                jal          t6, 9f
4:                jal          t1, 13f
5:                jal          ra, 15f
6:                jal          ra, 16f
7:                jal          gp, 6b
8:                jal          ra, 12f
9:                jal          ra, 11f
10:               jal          ra, 0b
11:               jal          ra, 8b
12:               jal          ra, 14f
13:               jal          ra, 7b
14:               jal          ra, 2b
15:               jal          t1, 1b
16:               srl          a1, s9, a7
1110:             slli         a3, s4, 15
1111:             xori         s6, s6, -851
                  blt          gp, t4, 1116f
                  blt          t4, a6, 1125f
                  blt          t4, s9, 1121f
                  bne          a1, tp, 1127f
1116:             nop
                  or           s7, ra, s1
                  sltiu        tp, zero, -1947
                  nop
                  bne          s1, s4, 1133f
1121:             sra          s5, s1, t2
                  xor          s4, gp, s2
                  and          s1, zero, s11
                  bltu         t0, s8, 1137f
1125:             add          t6, t5, ra
                  bgeu         s2, s6, 1142f
1127:             srli         ra, s5, 24
                  xori         t2, s2, -644
                  srai         s6, tp, 21
                  srl          a5, s11, t4
                  slli         t1, t2, 5
                  sll          zero, t3, a1
1133:             ori          a6, s6, 462
                  bge          s1, a7, 1135f
1135:             srli         s7, sp, 24
                  srai         a5, t1, 1
1137:             ori          s1, s1, 854
                  beq          tp, s5, 1156f
                  bge          s2, a7, 1148f
                  blt          t6, a6, 1150f
                  srl          s2, a3, s5
1142:             srai         s5, a5, 24
                  ori          a6, s3, -1956
                  slli         a0, a6, 13
                  bge          tp, s2, 1158f
                  sub          s3, s10, a3
                  xori         s7, t5, -352
1148:             addi         s1, a2, 1465
                  auipc        s2, 698965
1150:             sll          s7, t3, tp
                  bge          a1, sp, 1153f
                  blt          s2, a4, 1156f
1153:             beq          sp, s6, 1163f
                  slti         a2, s3, -150
                  bgeu         a4, t3, 1175f
1156:             sub          s5, a5, s4
                  bltu         t0, s0, 1172f
1158:             xori         s5, a3, 273
                  beq          a4, s9, 1165f
                  xori         s2, t3, 361
                  auipc        t1, 627930
                  sltiu        t1, s5, 1160
1163:             bge          s9, s10, 1164f
1164:             and          s1, s2, gp
1165:             xori         a4, s9, 1083
                  xor          s2, s11, a4
                  srl          t1, s1, s10
                  sub          s6, s7, s4
                  slti         s3, t1, -1136
sub_5_21:         jal          a2, 13f
0:                jal          ra, 9f
1:                jal          ra, 2f
2:                jal          tp, 3f
3:                jal          ra, 8f
4:                jal          ra, 16f
5:                jal          t1, 24f
6:                jal          t1, 20f
7:                jal          s4, 1b
8:                jal          sp, 26f
9:                jal          ra, 21f
10:               jal          tp, 12f
11:               jal          ra, 6b
12:               jal          t1, 0b
13:               jal          ra, 4b
14:               jal          t6, 25f
15:               jal          s2, 11b
16:               jal          t1, 18f
17:               jal          ra, 23f
18:               jal          t2, 15b
19:               jal          t1, 22f
20:               jal          ra, 10b
21:               jal          t1, 14b
22:               jal          s8, 5b
23:               jal          ra, 7b
24:               jal          ra, 17b
25:               jal          s9, 19b
26:               nop
                  sltiu        s8, a5, -1247
                  auipc        t1, 391566
1172:             bge          s4, s7, 1188f
                  bne          a4, tp, 1179f
                  srli         a1, s0, 11
1175:             slt          t0, s6, s10
                  srl          s2, s1, s1
                  slli         a0, s4, 11
                  sub          t2, a2, t2
1179:             lui          zero, 481536
                  sub          a4, s3, s3
                  bgeu         s0, a2, 1187f
                  xor          tp, a1, s4
                  srli         a1, t6, 1
                  xor          a2, a2, gp
                  beq          sp, ra, 1192f
                  andi         a1, s2, 959
1187:             srli         ra, a6, 0
1188:             srli         s8, zero, 14
                  add          a5, t4, s10
sub_5_22:         jal          a2, 15f
0:                jal          ra, 27f
1:                jal          t1, 29f
2:                jal          ra, 0b
3:                jal          ra, 6f
4:                jal          ra, 2b
5:                jal          ra, 16f
6:                jal          t1, 22f
7:                jal          ra, 5b
8:                jal          tp, 9f
9:                jal          t1, 7b
10:               jal          ra, 11f
11:               jal          ra, 20f
12:               jal          t1, 28f
13:               jal          t1, 23f
14:               jal          t0, 24f
15:               jal          s2, 13b
16:               jal          ra, 18f
17:               jal          ra, 8b
18:               jal          ra, 3b
19:               jal          ra, 21f
20:               jal          s2, 19b
21:               jal          t1, 26f
22:               jal          gp, 12b
23:               jal          s2, 14b
24:               jal          ra, 4b
25:               jal          ra, 10b
26:               jal          t1, 1b
27:               jal          ra, 17b
28:               jal          ra, 25b
29:               and          s8, s4, s9
                  bltu         s1, a3, 1205f
                  lui          t4, 137613
sub_5_8:          jal          a2, 0f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          ra, 10f
3:                jal          t1, 9f
4:                jal          ra, 11f
5:                jal          ra, 2b
6:                jal          ra, 3b
7:                jal          t1, 1b
8:                jal          ra, 5b
9:                jal          t1, 8b
10:               jal          t1, 4b
11:               srai         a2, gp, 1
1192:             andi         s7, s1, 1695
                  lui          s2, 199941
                  lui          a5, 929222
                  add          t4, s8, gp
                  add          s11, t2, a3
                  and          t1, t3, s4
                  xori         s4, t1, 846
                  sra          s8, s0, a1
                  sll          s6, a7, s7
                  slli         t1, s0, 9
                  bgeu         t0, a5, 1206f
                  slli         tp, zero, 26
                  bgeu         s5, a1, 1217f
1205:             srl          sp, s6, a4
1206:             andi         s8, ra, 1155
                  slt          tp, t2, ra
                  sltiu        a2, s9, -646
                  bge          tp, s9, 1226f
                  srl          s9, s8, t4
                  sltu         a3, t1, a3
                  add          s8, s7, s1
                  xori         a4, sp, -426
                  srl          a6, s6, t5
                  slt          zero, gp, s10
                  add          tp, a6, s3
1217:             xori         a2, s7, -1915
                  bgeu         a0, a7, 1232f
                  blt          t4, a2, 1239f
                  blt          zero, t2, 1230f
                  add          t1, s1, a7
                  xor          a5, s9, t4
                  sub          a3, sp, t6
                  srli         a3, t6, 3
                  sub          s2, a5, sp
1226:             slti         sp, t6, 385
                  or           s2, t1, zero
                  or           a5, zero, s7
                  xor          ra, t4, s9
1230:             srli         s7, a2, 30
                  bgeu         s4, gp, 1251f
1232:             or           t4, a7, t4
                  sub          t0, s4, t0
                  nop
                  bne          t5, gp, 1255f
                  bge          s8, s11, 1246f
                  sub          ra, a2, t5
                  srl          tp, sp, a7
1239:             sltu         t4, a4, a4
                  sltiu        tp, ra, -1321
                  srl          t6, t6, ra
                  bne          s11, s5, 1255f
                  slti         s6, t5, 788
                  blt          a5, tp, 1257f
                  sltiu        zero, a0, 1822
1246:             sltu         s1, s11, tp
                  sll          s4, a2, s11
                  srli         sp, s1, 11
                  xori         s3, t2, -648
                  sub          zero, a0, s1
1251:             bltu         s1, s5, 1257f
                  srl          t2, a6, a4
                  sltiu        t4, s8, 995
                  srai         t1, ra, 1
1255:             xori         t4, s2, 160
                  bgeu         s0, a2, 1262f
1257:             auipc        a0, 285794
                  sra          sp, s1, t3
                  nop
                  bne          tp, s1, 1275f
                  andi         zero, a1, -98
1262:             andi         t6, s3, 909
                  sltu         s11, s7, s11
                  slti         s3, a7, -430
                  slti         gp, a5, -742
                  addi         s2, t0, -1039
                  srl          t6, a1, s10
                  beq          t6, a3, 1284f
                  xor          t0, t6, s7
                  slti         tp, s11, -1134
                  auipc        a0, 596988
sub_5_6:          jal          a2, 14f
0:                jal          t4, 2f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          s5, 12f
4:                jal          ra, 7f
5:                jal          ra, 1b
6:                jal          ra, 15f
7:                jal          t2, 5b
8:                jal          ra, 9f
9:                jal          ra, 13f
10:               jal          s7, 0b
11:               jal          t1, 3b
12:               jal          a3, 4b
13:               jal          t1, 10b
14:               jal          ra, 11b
15:               xor          s11, zero, t3
                  sub          t6, s5, s9
                  bgeu         s6, tp, 1293f
                  bge          s0, a6, 1294f
1275:             blt          a4, t4, 1276f
1276:             addi         tp, gp, 1472
                  sra          s4, t2, t0
                  xori         s11, zero, -369
                  auipc        gp, 376967
                  slt          a6, s2, t2
                  sll          t1, s2, tp
                  addi         tp, zero, 1131
                  sltu         s2, s6, s9
1284:             beq          sp, t1, 1288f
                  bge          s10, s1, 1292f
                  add          t0, s0, tp
                  bgeu         s10, s6, 1300f
1288:             srl          a7, gp, s9
                  xor          t6, a3, s3
                  bltu         a3, s11, 1302f
                  slli         s6, t4, 23
1292:             xor          s1, s2, a0
1293:             beq          t2, s8, 1308f
1294:             srl          s11, s0, t5
                  add          s1, t0, a1
                  or           t0, s0, s6
                  slli         t6, t6, 22
                  ori          s8, sp, 1209
                  bge          s10, a2, 1315f
1300:             bgeu         s11, s8, 1317f
                  sra          s3, s7, a3
1302:             slli         s4, t5, 7
                  add          t4, s8, s8
                  or           tp, s4, t2
                  ori          a0, s3, -1306
                  xor          s5, t3, sp
                  slt          s0, t1, t0
1308:             andi         a6, s10, 1569
                  and          s3, a1, zero
                  bne          gp, t1, 1324f
                  srli         t0, a2, 5
                  sll          s6, t5, s3
                  sltiu        zero, a2, 434
                  xor          a6, s2, s10
1315:             srl          s5, s10, a7
                  slti         tp, t4, 207
1317:             andi         s8, t4, -200
                  bltu         s4, a1, 1324f
                  sra          tp, gp, ra
                  sltiu        a0, t2, -271
                  slti         s11, s10, -259
                  bltu         s5, t3, 1323f
1323:             auipc        zero, 916086
1324:             xori         t0, a0, 2002
                  and          gp, s11, s11
                  bltu         a5, s5, 1336f
                  blt          tp, s9, 1347f
                  nop
                  andi         s11, t2, 1365
                  xor          a2, a5, s3
                  beq          t6, s8, 1335f
                  bltu         a2, t2, 1350f
                  slti         s9, s11, 2025
                  bgeu         a7, t6, 1336f
1335:             lui          a2, 349752
1336:             sltu         zero, t1, s8
                  beq          a7, s11, 1344f
                  ori          s0, a1, 1610
                  xor          t4, t5, a2
                  slt          a3, zero, a6
                  slti         s7, t3, 1579
                  xor          t4, t5, s0
                  nop
1344:             or           zero, zero, s10
                  sltu         s5, s11, gp
                  srl          s4, t5, s2
1347:             blt          s6, s3, 1357f
                  sltu         t1, a0, s10
                  sltu         zero, s7, s1
1350:             or           a7, s5, a2
                  beq          a5, s11, 1371f
                  beq          s7, s8, 1365f
                  sltu         t6, s11, t5
                  xori         s1, s11, 70
                  sub          t1, zero, a0
                  ori          s7, t0, -986
1357:             beq          a3, t6, 1366f
                  ori          gp, a2, -1225
                  sll          s8, a4, a1
                  xori         s1, s3, -1867
                  add          a5, t1, a7
                  ori          a3, s2, 440
                  bltu         ra, s1, 1383f
                  slt          ra, s5, s4
1365:             sub          s2, s3, t4
1366:             or           t6, tp, a2
                  sll          t1, a4, s11
                  sll          s7, s5, ra
                  slli         s8, s6, 7
                  bne          a2, a3, 1376f
1371:             blt          s11, a6, 1375f
                  slti         s1, s8, 1267
                  slli         a1, a2, 25
                  sltu         sp, s10, tp
1375:             xor          s3, s11, s9
1376:             lui          a1, 971989
                  and          s5, a2, s8
                  sra          t6, s5, t0
                  slli         a4, a7, 14
                  bgeu         a7, s1, 1386f
                  slti         s9, gp, -1086
                  sub          s8, s1, t4
1383:             slli         gp, a3, 11
                  lui          gp, 1023175
                  slt          t0, s3, s10
1386:             sltiu        s7, s2, -496
                  lui          s6, 462452
                  slti         s7, s3, -472
                  bge          a2, a2, 1409f
                  nop
                  sltiu        sp, sp, 1287
                  srli         s8, s0, 6
                  ori          a5, a7, -804
                  sub          t4, s2, a4
                  sll          s6, s8, t0
                  ori          tp, a1, -360
                  ori          s11, gp, -1596
                  sll          t6, a6, a4
                  sltiu        a4, s11, -145
                  slli         t6, s4, 4
                  addi         s9, s5, -866
                  slt          a4, a2, a2
                  lui          s0, 246340
                  slli         s0, a3, 9
                  ori          s1, ra, -340
                  srli         a5, s4, 9
                  add          tp, t1, t2
                  srai         tp, zero, 27
1409:             bge          t2, s7, 1429f
                  addi         s11, a3, -1878
                  sub          t4, t3, t6
                  slt          a1, t5, gp
                  addi         s5, a3, 413
                  auipc        s1, 975054
                  ori          t6, t0, -1189
                  srl          s2, s9, s5
                  slt          a6, t0, tp
                  sltu         a5, s1, t4
                  auipc        s9, 19828
                  bge          s7, ra, 1435f
                  blt          s6, t5, 1438f
                  bltu         t1, a1, 1423f
1423:             or           s5, t5, a3
                  slli         s0, a7, 26
                  bltu         s1, s7, 1441f
                  sltiu        a3, a5, -26
                  bne          s2, s10, 1437f
                  lui          tp, 33134
1429:             bltu         a2, t0, 1442f
                  or           s11, a7, zero
                  sra          s3, s10, t2
                  nop
                  srl          a0, s3, gp
                  add          zero, t5, s5
1435:             srli         s0, s2, 25
                  slt          a5, a4, s4
1437:             sub          tp, t3, s9
1438:             blt          sp, s11, 1448f
                  addi         a2, gp, 146
                  andi         a5, a2, 109
1441:             bgeu         s8, s1, 1448f
1442:             bne          zero, s10, 1455f
                  or           t2, s9, s1
                  or           s3, a3, a6
                  slt          a5, t4, t6
                  xori         s8, s0, 1224
                  addi         a2, s4, 1421
1448:             srli         s3, s5, 10
                  addi         gp, t2, 512
                  or           s0, ra, s1
                  nop
                  auipc        a5, 469952
                  slti         a2, t6, 1358
                  srai         t4, s11, 28
1455:             srai         gp, gp, 2
                  bltu         a1, s10, 1458f
                  bne          t1, sp, 1472f
1458:             srl          s11, a3, ra
                  sll          a0, a1, a5
                  bne          s4, a1, 1476f
                  sll          a4, a1, s1
                  srl          t6, a7, t1
                  ori          sp, t3, -582
                  bge          a3, s6, 1482f
                  andi         a5, s11, 803
                  nop
                  xor          a1, a5, s7
                  bltu         t1, t6, 1480f
                  sltu         s6, s8, a6
                  sll          a0, a3, a5
                  ori          s8, s10, -451
1472:             blt          s7, tp, 1485f
                  xori         a2, t1, 916
                  srl          gp, s10, a7
                  slt          zero, t6, s10
1476:             xori         s5, s9, -397
                  beq          a2, a4, 1491f
                  bne          s0, s2, 1488f
                  xor          s2, zero, s2
1480:             srai         a5, gp, 12
                  srli         zero, zero, 3
1482:             srl          s8, t2, sp
                  srl          a5, gp, s2
                  slti         s4, t2, -1778
1485:             beq          a1, s5, 1491f
                  slti         a1, s5, -1926
                  srli         s5, a2, 7
1488:             lui          s8, 367450
                  blt          s7, t6, 1493f
                  sll          a4, a0, tp
1491:             lui          s3, 589406
                  slli         tp, s7, 1
1493:             srli         s7, s11, 3
                  bltu         a3, s4, 1507f
                  andi         sp, s3, -104
                  bgeu         t5, ra, 1505f
                  srli         s1, a1, 9
                  add          s7, s8, s2
                  blt          sp, s2, 1519f
                  ori          ra, t4, 1445
                  lui          s7, 186012
                  auipc        s0, 490928
                  beq          t0, s10, 1504f
1504:             andi         s11, s11, 1450
1505:             slti         t4, s4, 1415
                  sltu         ra, ra, zero
1507:             andi         s9, s10, 174
                  andi         zero, a6, 1983
                  or           s5, tp, ra
                  bltu         s10, t2, 1517f
                  beq          s1, s7, 1526f
                  andi         s0, s1, -121
                  xori         a5, a0, 909
                  sub          sp, t4, s5
                  srli         s7, a7, 27
                  bgeu         t4, a6, 1517f
1517:             addi         s2, s9, -157
                  add          t6, t4, t0
1519:             xori         a4, s10, -314
                  ori          tp, a2, 1862
                  auipc        s6, 890259
                  sra          t4, zero, s8
                  nop
                  bne          ra, gp, 1534f
                  sra          gp, t2, sp
1526:             srli         s4, s1, 13
                  bltu         s3, s10, 1539f
                  sltu         a4, s4, s3
                  beq          t0, tp, 1538f
                  andi         a2, a0, 1806
                  or           s11, t6, t0
                  bltu         t5, s9, 1552f
                  nop
1534:             bge          s7, t2, 1540f
                  addi         t0, a1, -368
                  sll          a7, ra, t4
                  bge          a4, sp, 1547f
1538:             bge          s1, t6, 1551f
1539:             slti         zero, a7, -1177
1540:             bge          t2, s6, 1553f
                  andi         a0, t1, 773
                  add          s11, ra, a5
                  or           s1, s8, t1
                  sltu         t6, s9, t0
                  nop
                  slti         s7, s9, 125
1547:             sltu         zero, tp, a6
                  slt          a2, t1, t3
                  slti         a2, tp, -648
                  srl          s2, s6, s4
1551:             sltiu        s5, a1, 1204
1552:             bne          s5, t2, 1568f
1553:             bne          s4, a7, 1560f
                  sra          a5, t4, a0
                  beq          tp, s5, 1568f
                  sll          s4, ra, t3
                  slti         s8, a4, -1284
                  sub          zero, s9, s9
                  srl          t1, gp, t1
1560:             addi         s5, a6, 1784
                  slli         t2, a4, 8
                  nop
                  srli         a3, t4, 28
                  blt          a0, s1, 1568f
                  srai         a2, ra, 5
                  sltiu        a6, a5, 2033
                  xor          a3, t6, s1
1568:             addi         a7, s3, 1307
                  and          t4, tp, t4
                  sll          s0, ra, s9
                  lw           a2, 4(t5)
                  slt          zero, s11, s7
                  add          sp, ra, s2
                  addi         t1, t5, 422
                  sub          zero, s11, ra
                  add          ra, s5, t5
                  addi         t5, t5, 12
                  xor          ra, a1, s7
2259:             addi x14, x12, 0
2259:             jalr x14, x14, 0
sub_3:            blt          s7, tp, sub_3_stack_p
                  srl          t6, gp, s4
                  or           s0, s11, s10
                  or           a4, s1, t0
sub_3_stack_p:    addi         t5, t5, -8
                  sw           a2, 4(t5)
                  sltiu        gp, a4, -1151
                  bne          a2, t0, 4f
                  bgeu         a1, a5, 18f
                  nop
                  slt          tp, a3, a3
4:                bltu         t5, s8, 15f
                  ori          s8, a1, -1860
                  lui          a2, 337443
                  srl          t2, a2, a7
                  bne          s0, s6, 14f
                  slli         a5, t3, 31
                  auipc        ra, 172990
                  slti         s6, s8, 1682
                  srai         s0, s3, 5
                  srai         s8, s2, 1
14:               bgeu         s9, tp, 22f
15:               bne          s1, s5, 34f
                  lui          a0, 91861
                  sltu         a2, s1, t0
18:               xor          s0, a6, tp
                  blt          gp, sp, 26f
sub_3_0:          jal          a2, 7f
0:                jal          ra, 1f
1:                jal          t1, 27f
2:                jal          ra, 30f
3:                jal          ra, 22f
4:                jal          a6, 19f
5:                jal          t1, 9f
6:                jal          ra, 14f
7:                jal          ra, 11f
8:                jal          t6, 4b
9:                jal          ra, 0b
10:               jal          t1, 12f
11:               jal          ra, 16f
12:               jal          s2, 15f
13:               jal          ra, 5b
14:               jal          t1, 17f
15:               jal          ra, 26f
16:               jal          t1, 23f
17:               jal          ra, 21f
18:               jal          ra, 3b
19:               jal          t1, 6b
20:               jal          t1, 28f
21:               jal          t1, 24f
22:               jal          ra, 8b
23:               jal          t1, 13b
24:               jal          tp, 25f
25:               jal          ra, 20b
26:               jal          ra, 18b
27:               jal          t1, 10b
28:               jal          t4, 29f
29:               jal          ra, 2b
30:               andi         sp, s11, 1688
                  and          s1, s5, s10
                  slli         s3, a7, 13
22:               and          s2, gp, s5
                  srl          t4, s2, t3
                  or           a1, sp, s3
                  srl          gp, t2, a5
26:               slti         t4, s6, 202
                  and          a7, s5, s5
                  sltu         a0, t5, s8
                  or           s11, s5, s7
                  srl          a1, a1, t6
                  srl          t2, a1, sp
                  add          s2, ra, a7
                  xor          s0, tp, t5
34:               bne          s1, ra, 49f
                  srl          a7, s2, ra
                  bge          a4, t2, 38f
                  nop
38:               sltiu        s5, s8, -1558
                  bne          ra, gp, 51f
                  sub          s2, t1, s6
                  srli         zero, a3, 30
                  add          s4, t6, ra
                  srli         t2, gp, 16
                  and          zero, t1, a0
                  and          s9, gp, a7
                  lui          s8, 128859
                  sra          s6, a0, s0
                  bne          t1, t0, 62f
49:               ori          t2, t0, 316
                  auipc        a4, 271672
51:               xori         t0, s2, 1443
                  srai         s4, t5, 17
                  sltiu        t2, tp, 897
                  sll          s4, t4, s8
                  slli         sp, ra, 19
                  addi         a7, t2, 745
                  auipc        a4, 341701
                  slt          a6, a0, a5
                  beq          t2, s9, 61f
                  xori         s9, a2, -203
61:               and          s6, ra, sp
62:               and          s4, s3, tp
                  srl          a6, s2, s3
                  xori         t2, a3, -899
                  nop
                  sltu         s7, ra, s10
                  xor          ra, a3, s0
                  or           s3, a4, a6
                  srli         t6, a6, 25
                  ori          t4, a2, 641
                  slti         t0, s1, 1553
                  srai         s9, t1, 16
                  sltu         s5, gp, gp
                  nop
                  lw           a2, 4(t5)
                  slt          s6, s8, tp
                  addi         t5, t5, 8
                  sub          s9, t1, s0
118:              addi x15, x12, 1
118:              jalr x15, x15, 0
sub_4:            nop
                  addi         t5, t5, -24
                  sw           a2, 4(t5)
                  auipc        s7, 440448
                  or           gp, a2, s11
sub_4_0:          jal          a2, 8f
0:                jal          ra, 14f
1:                jal          t1, 3f
2:                jal          s2, 10f
3:                jal          t1, 13f
4:                jal          ra, 7f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          s2, 11f
10:               jal          tp, 4b
11:               jal          ra, 5b
12:               jal          ra, 0b
13:               jal          s6, 9b
14:               lui          s4, 328077
                  srl          t2, a0, t4
                  nop
                  sub          s3, t6, s0
                  xori         s3, a1, 701
                  sltu         s4, s9, gp
                  beq          t6, s2, 15f
                  or           s1, s6, s11
                  slti         s2, s11, -1127
                  add          s8, t5, sp
                  bne          a6, sp, 18f
                  auipc        s11, 36046
                  slti         zero, t3, 348
                  srai         sp, t4, 16
                  sll          s11, a0, a1
                  srai         t6, s8, 23
15:               xori         a5, tp, -448
                  addi         s2, s0, -88
                  or           s1, s7, s6
18:               and          tp, s7, s8
                  or           s4, zero, a6
                  andi         t1, a6, 753
                  slti         s7, a4, -250
                  add          s1, s3, a5
                  sltiu        a4, s9, -1760
                  srli         t1, gp, 22
                  bne          a2, s5, 36f
                  or           s5, s3, a2
                  sra          s9, s9, a5
                  sub          t2, s11, a6
                  srl          s8, t3, t2
                  andi         zero, ra, 431
                  bltu         s0, s6, 37f
                  slti         s2, s10, -68
                  srl          t2, t6, a6
                  srl          a7, sp, t6
                  xor          a7, a7, gp
36:               srli         a3, s3, 21
37:               nop
                  sltiu        s8, t2, -1350
                  and          s7, s5, a4
                  srli         tp, zero, 15
                  bltu         s3, a7, 56f
                  sltu         a1, t6, t0
                  bgeu         ra, t4, 45f
                  sub          s8, t4, a7
45:               sub          t2, tp, s0
                  slt          s9, a5, a1
                  auipc        s1, 107563
                  sub          t0, s6, s9
                  slti         a2, t2, 1485
                  nop
                  add          zero, t2, t3
                  nop
                  lui          t2, 644768
                  sltu         t4, t6, zero
                  addi         s2, t6, 2016
56:               sll          s7, a2, gp
                  andi         s5, s9, 668
                  auipc        s1, 200294
                  addi         a3, s4, -974
                  sltu         s9, a1, ra
                  ori          t0, s8, 1453
                  sltiu        s2, t3, 926
                  lw           a2, 4(t5)
                  srl          s8, a5, s0
                  xori         s9, s6, -1579
                  srai         s7, ra, 16
                  addi         t5, t5, 24
                  srl          zero, s0, t6
90:               addi x11, x12, 0
90:               jalr x11, x11, 0
sub_1:            beq          s0, ra, sub_1_stack_p
sub_1_stack_p:    addi         t5, t5, -44
                  lui          s3, 479849
                  sll          t1, s8, a6
                  sw           a2, 4(t5)
                  auipc        s9, 1022231
sub_1_6:          jal          a2, 15f
0:                jal          s1, 23f
1:                jal          s9, 12f
2:                jal          ra, 18f
3:                jal          a4, 24f
4:                jal          ra, 22f
5:                jal          ra, 19f
6:                jal          ra, 1b
7:                jal          t1, 3b
8:                jal          ra, 17f
9:                jal          a5, 7b
10:               jal          ra, 5b
11:               jal          ra, 9b
12:               jal          gp, 13f
13:               jal          ra, 0b
14:               jal          ra, 6b
15:               jal          ra, 14b
16:               jal          ra, 21f
17:               jal          a1, 10b
18:               jal          ra, 20f
19:               jal          ra, 4b
20:               jal          ra, 11b
21:               jal          t1, 2b
22:               jal          t0, 16b
23:               jal          ra, 8b
24:               nop
sub_1_0:          jal          a2, 15f
0:                jal          t1, 1f
1:                jal          t1, 22f
2:                jal          s5, 24f
3:                jal          t1, 2b
4:                jal          t1, 6f
5:                jal          sp, 4b
6:                jal          t1, 0b
7:                jal          ra, 19f
8:                jal          ra, 10f
9:                jal          ra, 26f
10:               jal          t1, 25f
11:               jal          a1, 7b
12:               jal          ra, 27f
13:               jal          ra, 17f
14:               jal          a0, 21f
15:               jal          t1, 14b
16:               jal          ra, 13b
17:               jal          a1, 9b
18:               jal          ra, 20f
19:               jal          ra, 3b
20:               jal          ra, 12b
21:               jal          s6, 5b
22:               jal          t1, 23f
23:               jal          ra, 8b
24:               jal          t1, 18b
25:               jal          s2, 16b
26:               jal          ra, 11b
27:               xor          ra, tp, s4
sub_1_1:          jal          a2, 9f
0:                jal          t0, 14f
1:                jal          ra, 23f
2:                jal          ra, 19f
3:                jal          t1, 11f
4:                jal          t1, 21f
5:                jal          ra, 24f
6:                jal          a0, 22f
7:                jal          t1, 12f
8:                jal          ra, 6b
9:                jal          s2, 25f
10:               jal          s9, 20f
11:               jal          s6, 7b
12:               jal          t1, 13f
13:               jal          ra, 10b
14:               jal          a0, 5b
15:               jal          ra, 16f
16:               jal          s4, 1b
17:               jal          s7, 18f
18:               jal          ra, 0b
19:               jal          ra, 15b
20:               jal          s4, 4b
21:               jal          ra, 8b
22:               jal          ra, 26f
23:               jal          t1, 17b
24:               jal          t1, 3b
25:               jal          ra, 2b
26:               addi         a7, a0, 1129
sub_1_3:          jal          a2, 12f
0:                jal          t1, 14f
1:                jal          ra, 21f
2:                jal          s6, 9f
3:                jal          ra, 25f
4:                jal          s11, 19f
5:                jal          t1, 23f
6:                jal          t1, 20f
7:                jal          ra, 27f
8:                jal          s3, 26f
9:                jal          ra, 18f
10:               jal          ra, 1b
11:               jal          ra, 13f
12:               jal          t1, 10b
13:               jal          ra, 5b
14:               jal          s2, 7b
15:               jal          ra, 4b
16:               jal          t1, 0b
17:               jal          s2, 3b
18:               jal          t1, 8b
19:               jal          ra, 17b
20:               jal          ra, 11b
21:               jal          ra, 24f
22:               jal          t1, 6b
23:               jal          ra, 16b
24:               jal          t1, 2b
25:               jal          s3, 22b
26:               jal          ra, 15b
27:               and          s3, a5, s7
sub_1_2:          jal          a2, 9f
0:                jal          ra, 5f
1:                jal          ra, 10f
2:                jal          t2, 12f
3:                jal          ra, 6f
4:                jal          ra, 2b
5:                jal          ra, 16f
6:                jal          ra, 14f
7:                jal          ra, 3b
8:                jal          ra, 18f
9:                jal          ra, 17f
10:               jal          s9, 15f
11:               jal          ra, 1b
12:               jal          gp, 7b
13:               jal          t0, 8b
14:               jal          ra, 0b
15:               jal          a1, 13b
16:               jal          tp, 19f
17:               jal          ra, 11b
18:               jal          ra, 4b
19:               addi         s0, a3, 230
sub_1_5:          jal          a2, 19f
0:                jal          ra, 9f
1:                jal          t1, 10f
2:                jal          ra, 12f
3:                jal          ra, 22f
4:                jal          sp, 11f
5:                jal          t1, 15f
6:                jal          s7, 23f
7:                jal          s8, 3b
8:                jal          s1, 14f
9:                jal          ra, 17f
10:               jal          ra, 8b
11:               jal          s6, 7b
12:               jal          ra, 13f
13:               jal          ra, 4b
14:               jal          sp, 2b
15:               jal          a0, 20f
16:               jal          ra, 6b
17:               jal          ra, 21f
18:               jal          gp, 1b
19:               jal          t0, 18b
20:               jal          t1, 16b
21:               jal          ra, 5b
22:               jal          s3, 0b
23:               sltu         a0, a0, a7
sub_1_7:          jal          a2, 20f
0:                jal          ra, 15f
1:                jal          t1, 9f
2:                jal          ra, 3f
3:                jal          a0, 5f
4:                jal          t1, 8f
5:                jal          t1, 1b
6:                jal          t1, 21f
7:                jal          t1, 12f
8:                jal          t1, 10f
9:                jal          t1, 30f
10:               jal          a5, 27f
11:               jal          a5, 14f
12:               jal          t1, 28f
13:               jal          ra, 24f
14:               jal          s9, 17f
15:               jal          t6, 18f
16:               jal          ra, 11b
17:               jal          ra, 29f
18:               jal          ra, 6b
19:               jal          t1, 13b
20:               jal          s9, 7b
21:               jal          ra, 25f
22:               jal          a0, 4b
23:               jal          t1, 19b
24:               jal          t1, 22b
25:               jal          ra, 2b
26:               jal          t1, 23b
27:               jal          ra, 0b
28:               jal          sp, 16b
29:               jal          ra, 26b
30:               and          s6, zero, a6
sub_1_4:          jal          a2, 8f
0:                jal          ra, 13f
1:                jal          ra, 9f
2:                jal          ra, 15f
3:                jal          ra, 0b
4:                jal          t1, 10f
5:                jal          t4, 1b
6:                jal          t1, 17f
7:                jal          ra, 5b
8:                jal          ra, 4b
9:                jal          t1, 12f
10:               jal          ra, 7b
11:               jal          t1, 16f
12:               jal          a4, 3b
13:               jal          ra, 2b
14:               jal          ra, 11b
15:               jal          ra, 14b
16:               jal          a7, 6b
17:               slt          a0, a1, a1
                  srai         sp, s9, 14
                  srl          s8, a4, s4
                  andi         tp, s7, 1081
                  add          s11, a7, t4
                  or           s3, t5, t3
                  xori         sp, a2, 162
                  xor          s3, a6, s10
                  andi         t0, gp, -872
                  auipc        s0, 599328
                  sll          a7, t4, a7
                  xor          a3, s3, zero
                  or           zero, s6, s4
                  blt          s8, a6, 19f
                  and          a2, a4, gp
                  srli         t0, s4, 9
                  slt          s3, s6, gp
                  beq          a4, t6, 26f
                  blt          tp, a4, 26f
                  add          s5, s4, s8
19:               auipc        a4, 729018
                  bltu         a6, ra, 26f
                  srli         s5, s0, 17
                  andi         s4, sp, -266
                  srli         a0, ra, 14
                  bne          a6, sp, 43f
                  andi         ra, ra, -1940
26:               bne          tp, ra, 27f
27:               nop
                  blt          a4, s5, 45f
                  sltu         t0, s1, ra
                  sub          a7, a3, sp
                  slti         sp, gp, -389
                  slt          zero, s6, t4
                  bgeu         s6, a4, 46f
                  bne          zero, s7, 44f
                  nop
                  srl          s7, s4, ra
                  addi         ra, a7, -1845
                  sra          t1, s0, t1
                  bltu         t1, s9, 43f
                  sltu         s3, sp, s3
                  bne          a6, s0, 60f
                  bge          s0, s5, 59f
43:               add          s11, tp, a3
44:               or           t4, s0, s4
45:               sltu         sp, s7, sp
46:               slt          gp, s8, s1
                  bne          t4, t5, 62f
                  srl          s5, t4, tp
                  blt          t1, t4, 59f
                  slli         a7, t6, 20
                  slti         sp, a2, -1368
                  slt          s0, gp, s0
                  slti         a6, s0, 99
                  lui          s9, 415622
                  slt          a3, t1, s11
                  xor          s3, a5, s10
                  or           t0, s11, t5
                  sub          sp, t3, t0
59:               sll          s6, sp, t3
60:               beq          s11, s9, 70f
                  srli         t6, s1, 0
62:               slli         t1, s3, 19
                  nop
                  sub          s8, a2, a4
                  slli         sp, a7, 31
                  and          s7, t4, sp
                  sltu         a6, ra, s0
                  auipc        s1, 910074
                  sltiu        t4, ra, -741
70:               slti         gp, t4, 568
                  slli         s6, s2, 27
                  sra          t0, a0, a3
                  slt          a4, t1, a5
                  and          ra, zero, t6
                  slt          zero, gp, s5
                  srai         s1, s5, 28
                  slli         gp, s11, 7
                  lui          t0, 861837
                  slt          s4, s8, gp
                  srai         zero, s1, 9
                  bgeu         a5, ra, 94f
                  sub          s4, s11, s6
                  srl          a0, t2, s6
                  bge          t0, a1, 101f
                  srli         s0, a3, 21
                  add          zero, t0, t6
                  srl          zero, s10, s6
                  bgeu         a0, sp, 105f
                  slti         a3, a3, 687
                  nop
                  bne          a4, t0, 103f
                  slt          a1, t6, s1
                  slli         a7, t0, 26
94:               sra          a4, a3, t0
                  bne          t2, a6, 109f
                  and          a6, t2, s5
                  and          t2, s8, s11
                  sltiu        s3, zero, -734
                  sub          t6, s0, s4
                  sll          s4, s10, s10
101:              add          t0, s1, zero
                  srai         s8, t5, 16
103:              bne          t5, s11, 113f
                  andi         s7, s10, -663
105:              srl          a6, t0, s2
                  addi         s3, s0, 429
                  slti         a0, s5, 855
                  ori          s6, a5, -1290
109:              slt          ra, t4, s3
                  xori         s1, s2, 21
                  sltu         a2, s6, s6
                  sltiu        s8, s6, 1435
113:              xori         a1, ra, 1510
                  andi         s9, a5, 79
                  xori         s7, a1, -504
                  auipc        ra, 729146
                  auipc        s6, 865226
                  blt          s8, s8, 135f
                  slt          t4, a6, s5
                  and          gp, ra, a4
                  lui          sp, 961701
                  add          zero, a3, s1
                  or           s5, s9, s2
                  slti         a4, s9, -1764
                  bne          zero, s11, 145f
                  ori          t1, s4, -45
                  sltiu        s4, a2, -1009
                  lui          a4, 577925
                  andi         s4, s11, 1639
                  auipc        t0, 200777
                  auipc        sp, 918018
                  sltiu        zero, t4, -1974
                  add          a6, a7, s8
                  bgeu         t5, a3, 151f
135:              xori         a1, s3, 63
                  slti         a5, s4, -839
                  slt          a5, s3, ra
                  sltu         zero, sp, s11
                  xor          a7, s1, t5
                  bgeu         a3, s2, 154f
                  srai         s8, t3, 8
                  bltu         s4, sp, 153f
                  bgeu         a5, s8, 148f
                  and          s0, a2, t2
145:              srl          s2, t4, zero
                  nop
                  srl          ra, s0, a2
148:              sll          s1, zero, gp
                  sub          s4, s6, t0
                  slli         s1, s2, 12
151:              ori          t6, sp, -101
                  slti         a5, zero, -215
153:              bltu         t2, t0, 157f
154:              xor          s11, ra, s7
                  addi         a5, a4, 1346
                  bne          s9, s9, 161f
157:              nop
                  srli         s3, gp, 7
                  slli         a3, t2, 21
                  slti         s7, s11, -1990
161:              sltiu        s2, s5, 1218
                  xori         s0, a1, -1770
                  nop
                  lui          a2, 278976
                  sltiu        s5, s6, 1558
                  slti         a0, s11, -487
                  slti         a0, a3, 1078
                  ori          tp, t2, -737
                  sltiu        s0, t0, 213
                  and          t2, s5, s3
                  sltiu        a7, a6, 391
                  bltu         a4, t1, 179f
                  add          s0, t6, sp
                  slli         s11, a7, 26
                  sub          s5, t2, t3
                  bgeu         s5, a3, 193f
                  sltiu        s11, a6, -1054
                  bgeu         t2, zero, 195f
179:              lui          s7, 827274
                  slti         a7, a0, 216
                  slli         t1, a6, 17
                  xori         a2, a4, -783
                  blt          t2, sp, 193f
                  and          zero, ra, s1
                  srl          a6, s1, a1
                  slt          ra, s2, s4
                  lui          s8, 207450
                  srai         t2, sp, 10
                  or           tp, t6, t3
                  sub          t0, s9, s3
                  slli         a0, t4, 31
                  beq          a6, s11, 205f
193:              sltiu        s2, a5, -1655
                  add          sp, t2, s6
195:              lui          a6, 569554
                  srl          a3, s8, gp
                  sll          zero, ra, s11
                  andi         a3, ra, -1272
                  srai         sp, s5, 28
                  and          s3, a5, a1
                  slt          s8, sp, s1
                  auipc        a5, 426024
                  sll          a3, a4, s1
                  and          a0, zero, a6
205:              and          tp, a1, t6
                  sltiu        s8, gp, 751
                  srli         gp, s10, 0
                  slli         a2, s8, 9
                  or           tp, a1, t1
                  slt          s11, s4, a7
                  beq          a3, t2, 226f
                  addi         t4, zero, 259
                  bge          a2, a6, 217f
                  bge          s11, tp, 221f
                  sltu         s8, a2, s6
                  andi         a5, a2, 958
217:              srai         s7, s0, 12
                  slt          s1, s3, a4
                  slt          s11, s10, s3
                  bgeu         t5, t1, 237f
221:              ori          a1, a4, -1130
                  sra          a1, s0, zero
                  add          a3, a2, t6
                  srai         s4, a1, 5
                  sub          t4, gp, s4
226:              sub          a2, s7, t3
                  lui          s6, 655836
                  nop
                  slli         s6, t0, 7
                  auipc        a7, 972754
                  slt          s8, a5, s3
                  bltu         a0, t5, 241f
                  xor          s11, s10, s5
                  srai         t0, s8, 19
                  blt          sp, s4, 249f
                  andi         a6, a2, 886
237:              srai         t1, t6, 31
                  srli         a4, s9, 29
                  srl          s9, s6, t4
                  bgeu         s2, s8, 253f
241:              beq          s9, s0, 246f
                  bge          ra, a5, 247f
                  sltiu        a5, a4, 1006
                  andi         t2, a6, 184
                  bltu         s6, a3, 255f
246:              xori         ra, zero, 2017
247:              sub          s0, a5, gp
                  beq          ra, t1, 265f
249:              bge          s10, t2, 268f
                  andi         t1, t5, 1248
                  slt          ra, a2, t4
                  slli         s2, s10, 8
253:              blt          s4, t6, 265f
                  xor          a6, s7, zero
255:              sltu         sp, t6, s7
                  slt          t2, t3, t2
                  add          s11, a3, s4
                  addi         t2, a0, 1443
                  sll          a0, t6, a2
                  sra          t0, s5, tp
                  ori          ra, s3, 1918
                  and          a4, gp, t6
                  addi         t4, s1, -1863
                  srai         s0, s0, 21
                  or           a1, a3, s3
                  bne          s2, s8, sub_1_j3 #branch to jump instr
                  xori         t2, gp, -1666
                  xor          t6, ra, zero
sub_1_j3:         jal          a2, sub_4 #jump sub_1 -> sub_4
                  beq          t4, a5, 268f
                  srl          zero, t4, a1
                  bltu         t0, s7, 264f
                  slti         gp, s3, 1663
                  addi         t2, s4, 1145
                  add          tp, s1, t0
264:              or           gp, a7, s4
265:              addi         a2, a1, 61
                  xor          tp, a4, s4
                  beq          sp, s10, 284f
268:              sll          zero, s2, t0
                  srai         t4, s1, 22
                  andi         s1, s4, -484
                  srai         zero, a4, 23
                  sltiu        s6, t1, -1816
                  blt          a1, s7, 283f
                  slti         s11, a1, -361
                  addi         sp, s7, -297
                  ori          s6, sp, 74
                  sub          s3, s10, t2
                  add          a3, s10, s6
                  sltiu        sp, s6, -1276
                  sra          a0, s10, s5
                  blt          t5, a2, 292f
                  blt          s5, a5, 302f
283:              add          s3, ra, a4
284:              sll          zero, s7, ra
                  auipc        s1, 487378
                  auipc        a3, 567043
                  ori          s7, t0, -907
                  bgeu         t2, s9, 298f
                  srai         a6, a4, 29
                  sltiu        s8, t5, 397
                  sll          a3, s8, s3
292:              slt          a4, a0, ra
                  addi         s6, a3, -1886
                  auipc        s9, 665712
                  auipc        s11, 253186
                  or           a7, s5, a7
                  bne          zero, s5, 304f
298:              andi         ra, t3, 551
                  addi         s9, t4, 391
                  bgeu         s0, s8, 317f
                  sltu         s2, t3, t1
302:              auipc        t4, 427379
                  add          tp, sp, ra
304:              sltu         s8, a4, s5
                  srli         gp, t3, 20
                  slt          a3, s6, sp
                  slt          s0, gp, a3
                  addi         t1, s4, -1222
                  sltiu        s4, tp, -790
                  srli         a2, s1, 14
                  nop
                  auipc        zero, 60309
                  sltu         a7, a7, s11
                  nop
                  sltiu        sp, a0, -1495
                  xori         sp, t6, -601
317:              sltiu        s3, tp, 1522
                  sll          t2, gp, t2
                  bltu         s6, a7, 333f
                  slt          gp, ra, a2
                  blt          s5, s4, 327f
                  sub          a4, s1, a6
                  beq          a1, a6, 324f
324:              or           s4, t4, t0
                  blt          s11, t2, 344f
                  sltu         a3, sp, t1
327:              bltu         s7, s8, 332f
                  and          a4, tp, a7
                  bltu         t2, s4, 346f
                  beq          s0, s11, 347f
                  sll          a2, t4, s10
332:              bltu         s5, a6, 351f
333:              nop
                  add          s0, t3, t1
                  nop
                  srai         a1, s1, 29
                  addi         s11, s1, -497
                  sll          s7, a0, gp
                  slt          a6, gp, sp
                  slti         gp, s6, 981
                  bne          s4, t5, 358f
                  sltu         s4, t1, a6
                  slt          s6, a4, t5
344:              srl          s2, sp, s11
                  slti         sp, s1, 1489
346:              sltiu        a3, s3, -1607
347:              slt          a3, t0, tp
                  slti         a4, s11, -1778
                  xori         a7, a7, -324
                  beq          s8, tp, 369f
351:              srai         a2, ra, 27
                  bgeu         s7, t6, 369f
                  slti         tp, s4, -1828
                  sra          gp, t0, gp
                  or           a3, a1, tp
                  slti         s9, s10, -1965
                  bne          sp, s5, 367f
358:              xori         t6, s3, 603
                  slli         zero, a4, 8
                  bgeu         sp, t1, 370f
                  sub          t4, zero, t5
                  xori         ra, s4, 1633
                  bltu         gp, s2, 373f
                  slti         a0, s7, -719
                  bltu         t0, s7, 376f
                  beq          t4, a0, 367f
367:              and          s0, a1, a3
                  srl          a2, a2, t5
369:              bne          t0, a0, 381f
370:              slti         s8, ra, -1698
                  srai         a4, sp, 17
                  sra          t0, t1, a2
373:              slti         t1, t2, -1022
                  ori          a0, t3, 1961
                  beq          a1, sp, 379f
376:              sltiu        a5, t0, 471
                  slli         s4, a0, 16
                  auipc        a5, 362030
379:              sub          zero, tp, a0
                  xor          t4, s2, a0
381:              sltiu        t6, s9, -123
                  add          a1, tp, ra
                  bltu         a2, s8, 396f
                  bge          zero, t1, 394f
                  or           a5, s1, a4
                  slli         a3, s0, 30
                  sub          a5, ra, s9
                  bgeu         t4, a2, 393f
                  andi         a7, s4, 1767
                  sra          a7, s7, s8
                  add          s7, s9, sp
                  bne          s1, s6, 405f
393:              bgeu         s5, t4, 407f
394:              ori          s0, a0, -1071
                  and          s8, s6, s7
396:              add          a5, t0, s2
                  ori          s4, sp, -819
                  nop
                  slti         a3, t1, 753
                  bltu         s1, t3, 407f
                  xor          a1, s2, t5
                  bge          a2, t0, 411f
                  srli         a1, s2, 19
                  xor          t0, a7, s10
405:              srl          a2, s1, a4
                  slti         s8, s1, -1709
407:              andi         s3, s5, -2036
                  beq          zero, a2, 420f
                  lui          s8, 535380
                  slti         a2, tp, -1570
411:              srli         zero, a7, 11
                  beq          a6, s3, 419f
                  slti         s11, a2, -822
                  or           t4, s0, t0
                  beq          s1, s0, 420f
                  andi         a6, t5, 887
                  ori          t0, t5, 86
                  sub          s9, t1, s1
419:              bgeu         s5, a4, 420f
420:              auipc        a2, 95525
                  sub          s1, a6, s9
                  lw           a2, 4(t5)
                  srli         t6, s3, 18
                  slti         ra, s3, -167
                  sub          a0, t1, a7
                  addi         t5, t5, 44
                  sra          t1, s6, s1
                  sltiu        gp, gp, 218
                  srl          s1, t5, t3
                  srl          s0, a4, t0
                  sub          a7, a0, s7
                  srl          s2, t2, s0
660:              addi x20, x12, 1
660:              jalr x20, x20, 0
sub_2:            addi         t5, t5, -8
                  auipc        s3, 515179
                  addi         gp, a0, -228
                  sw           a2, 4(t5)
                  add          s8, t6, t6
sub_2_8:          jal          a2, 16f
0:                jal          t1, 1f
1:                jal          ra, 13f
2:                jal          t2, 22f
3:                jal          ra, 23f
4:                jal          tp, 6f
5:                jal          t1, 18f
6:                jal          ra, 0b
7:                jal          a0, 3b
8:                jal          ra, 2b
9:                jal          tp, 14f
10:               jal          ra, 15f
11:               jal          t1, 10b
12:               jal          ra, 8b
13:               jal          ra, 20f
14:               jal          ra, 7b
15:               jal          t0, 21f
16:               jal          ra, 11b
17:               jal          a3, 9b
18:               jal          ra, 4b
19:               jal          gp, 5b
20:               jal          t1, 17b
21:               jal          ra, 12b
22:               jal          ra, 19b
23:               ori          t1, a4, 728
sub_2_7:          jal          a2, 12f
0:                jal          ra, 5f
1:                jal          sp, 11f
2:                jal          t1, 10f
3:                jal          ra, 13f
4:                jal          tp, 14f
5:                jal          gp, 8f
6:                jal          ra, 3b
7:                jal          t1, 1b
8:                jal          t1, 9f
9:                jal          ra, 7b
10:               jal          ra, 6b
11:               jal          s1, 2b
12:               jal          t0, 0b
13:               jal          t1, 4b
14:               sra          a6, t5, s7
sub_2_1:          jal          a2, 1f
0:                jal          t1, 13f
1:                jal          t1, 9f
2:                jal          t1, 15f
3:                jal          ra, 0b
4:                jal          t1, 16f
5:                jal          ra, 8f
6:                jal          s7, 5b
7:                jal          t1, 12f
8:                jal          sp, 14f
9:                jal          t0, 3b
10:               jal          ra, 4b
11:               jal          sp, 7b
12:               jal          t1, 17f
13:               jal          ra, 6b
14:               jal          sp, 10b
15:               jal          s6, 11b
16:               jal          t1, 18f
17:               jal          t1, 19f
18:               jal          t1, 2b
19:               and          s2, s9, s8
sub_2_5:          jal          a2, 13f
0:                jal          t1, 18f
1:                jal          gp, 8f
2:                jal          ra, 16f
3:                jal          s0, 5f
4:                jal          ra, 11f
5:                jal          ra, 19f
6:                jal          t0, 12f
7:                jal          ra, 4b
8:                jal          sp, 14f
9:                jal          ra, 17f
10:               jal          ra, 2b
11:               jal          ra, 0b
12:               jal          ra, 9b
13:               jal          ra, 10b
14:               jal          s9, 3b
15:               jal          ra, 7b
16:               jal          t1, 6b
17:               jal          ra, 15b
18:               jal          s1, 1b
19:               add          tp, s0, s9
sub_2_2:          jal          a2, 1f
0:                jal          ra, 6f
1:                jal          t1, 10f
2:                jal          ra, 0b
3:                jal          ra, 11f
4:                jal          ra, 5f
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          ra, 4b
8:                jal          ra, 12f
9:                jal          a3, 3b
10:               jal          ra, 9b
11:               jal          t1, 2b
12:               addi         t4, ra, 1652
sub_2_9:          jal          a2, 7f
0:                jal          ra, 4f
1:                jal          ra, 0b
2:                jal          t1, 12f
3:                jal          t2, 1b
4:                jal          s7, 2b
5:                jal          t2, 14f
6:                jal          ra, 13f
7:                jal          ra, 10f
8:                jal          t1, 5b
9:                jal          ra, 3b
10:               jal          t2, 9b
11:               jal          ra, 6b
12:               jal          s1, 11b
13:               jal          s5, 8b
14:               srli         a1, s4, 22
sub_2_4:          jal          a2, 1f
0:                jal          t1, 9f
1:                jal          ra, 0b
2:                jal          s8, 7f
3:                jal          ra, 5f
4:                jal          ra, 3b
5:                jal          ra, 10f
6:                jal          t1, 2b
7:                jal          a0, 11f
8:                jal          t1, 6b
9:                jal          ra, 4b
10:               jal          gp, 8b
11:               or           s2, t5, s4
sub_2_3:          jal          a2, 22f
0:                jal          t4, 3f
1:                jal          gp, 4f
2:                jal          ra, 13f
3:                jal          t1, 18f
4:                jal          ra, 9f
5:                jal          ra, 14f
6:                jal          ra, 1b
7:                jal          ra, 21f
8:                jal          ra, 2b
9:                jal          sp, 16f
10:               jal          ra, 20f
11:               jal          gp, 15f
12:               jal          s7, 23f
13:               jal          s2, 19f
14:               jal          s11, 11b
15:               jal          a0, 17f
16:               jal          s5, 8b
17:               jal          ra, 6b
18:               jal          s6, 5b
19:               jal          a0, 10b
20:               jal          s7, 12b
21:               jal          t1, 0b
22:               jal          t1, 7b
23:               sll          a5, a6, gp
sub_2_6:          jal          a2, 12f
0:                jal          t0, 3f
1:                jal          ra, 27f
2:                jal          ra, 19f
3:                jal          t1, 8f
4:                jal          ra, 26f
5:                jal          t1, 22f
6:                jal          ra, 4b
7:                jal          t1, 18f
8:                jal          ra, 11f
9:                jal          ra, 20f
10:               jal          ra, 2b
11:               jal          gp, 25f
12:               jal          ra, 1b
13:               jal          ra, 24f
14:               jal          a1, 0b
15:               jal          t1, 6b
16:               jal          ra, 7b
17:               jal          ra, 14b
18:               jal          ra, 21f
19:               jal          t1, 13b
20:               jal          t0, 28f
21:               jal          ra, 17b
22:               jal          a1, 23f
23:               jal          ra, 16b
24:               jal          a1, 15b
25:               jal          ra, 9b
26:               jal          a4, 5b
27:               jal          ra, 10b
28:               xori         a3, s9, -1471
sub_2_0:          jal          a2, 10f
0:                jal          t1, 3f
1:                jal          a5, 11f
2:                jal          t1, 8f
3:                jal          gp, 5f
4:                jal          sp, 2b
5:                jal          t4, 1b
6:                jal          s11, 0b
7:                jal          ra, 9f
8:                jal          ra, 7b
9:                jal          ra, 6b
10:               jal          sp, 4b
11:               nop
                  or           s6, s1, t0
                  srli         a6, s2, 4
                  slti         t0, s6, 719
                  sra          t0, t0, s7
                  slt          a4, t4, s0
                  and          s1, t2, s3
                  nop
                  bltu         a1, a5, 24f
                  bgeu         t3, t4, 17f
                  ori          s6, t4, 1553
                  sltiu        t2, a5, 854
                  xor          a6, zero, gp
                  auipc        t2, 838081
                  auipc        a1, 305992
                  and          s0, a0, t4
                  slti         a6, s2, 1277
                  slt          s2, s8, s6
17:               or           t1, s4, a7
                  slti         s4, a7, -1716
                  ori          ra, a7, -617
                  add          a7, t0, sp
                  slt          tp, t1, s8
                  xori         s1, s1, -1136
                  sub          s0, a6, a6
24:               xor          zero, s3, t6
                  srl          a6, t3, a5
                  ori          s7, a1, 287
                  addi         s4, a4, 434
                  srai         s2, s1, 6
                  srai         s5, s1, 21
                  add          sp, s8, ra
                  srli         a6, sp, 17
                  or           sp, s5, s10
                  sll          a2, ra, a0
                  blt          t6, s4, 43f
                  srai         a2, s3, 3
                  xor          a0, ra, s2
                  blt          s10, tp, 43f
                  or           s6, sp, s4
                  slti         s1, sp, 1817
                  nop
                  slt          t6, s8, s4
                  xori         s3, s2, 591
43:               blt          t6, a4, 45f
                  addi         a2, gp, 769
45:               sub          tp, sp, s9
                  nop
                  xori         s1, s1, 1759
                  srl          s3, s2, s7
                  sltiu        s1, gp, 298
                  slti         gp, t4, -1423
                  srl          t0, s7, a3
                  bltu         a7, s7, 60f
                  slt          a3, t5, s11
                  blt          a1, s10, 70f
                  sra          t6, a2, s11
                  auipc        a1, 596353
                  addi         s2, t2, 1307
                  slti         a7, a6, -1422
                  ori          a2, t5, 1548
60:               bltu         a3, s4, 61f
61:               sll          s8, ra, t4
                  bne          a0, gp, 64f
                  slli         a1, t4, 19
64:               xori         a1, s3, -1244
                  auipc        a3, 200923
                  xor          t6, a0, t3
                  xor          zero, a5, s11
                  bge          t6, s7, 85f
                  xor          s11, gp, s11
70:               xor          ra, s9, zero
                  sra          s2, s3, gp
                  add          a7, t3, sp
                  nop
                  bge          a7, t2, 84f
                  blt          t0, tp, 91f
                  lui          gp, 510739
                  srai         s4, a5, 28
                  lui          t1, 702478
                  bge          s8, t6, 80f
80:               bge          s6, s8, 88f
                  bgeu         s4, a7, 98f
                  add          t4, a5, t1
                  srli         s2, t1, 29
84:               xor          s11, t6, a4
85:               sltiu        s3, t2, -558
                  srli         a4, gp, 0
                  xor          a2, zero, t0
88:               nop
                  and          t1, t2, s5
                  xor          tp, a4, t0
91:               srl          s8, ra, s10
                  auipc        s4, 598189
                  ori          a7, t2, 423
                  or           a3, sp, a0
                  sub          sp, s2, s7
                  sll          t1, sp, gp
                  slt          ra, tp, a5
98:               srl          s8, s6, s0
                  sub          a2, t3, t3
                  sltu         t1, s10, s11
                  blt          zero, t6, 118f
                  slti         s7, tp, 1438
                  srli         a5, sp, 24
                  sll          s6, s0, t1
                  slti         tp, s2, 645
                  sltiu        s5, a1, -1284
                  slti         s3, t5, -1648
                  sub          s11, s5, sp
                  beq          a7, gp, 117f
                  nop
                  xor          s3, s7, a6
                  bgeu         tp, a4, 126f
                  slt          t6, s5, a1
                  nop
                  ori          t0, s9, 1295
                  xori         a5, t2, 1179
117:              sll          s11, a2, s8
118:              andi         a3, t6, 511
                  bltu         zero, zero, 139f
                  sll          sp, t6, t3
                  bltu         a3, a7, 123f
                  blt          t4, s7, 130f
123:              sra          zero, s10, sp
                  bltu         t1, a6, 137f
                  slt          a2, s11, sp
126:              lui          a4, 432741
                  lui          s1, 625228
                  blt          tp, s10, 148f
                  sra          a1, a3, t4
130:              srai         s11, s0, 23
                  ori          s0, tp, 868
                  blt          t3, gp, 151f
                  bgeu         s4, a6, 134f
134:              ori          ra, s9, 1937
                  xori         ra, a4, 1348
                  bltu         a2, tp, 138f
137:              add          s8, s4, a6
138:              lui          s7, 624704
139:              bne          t4, s11, 158f
                  slti         a6, a4, -656
                  sltiu        a1, a3, -905
                  sll          ra, s1, a3
                  auipc        t6, 858609
                  sll          s3, gp, t1
                  bltu         a6, s11, 153f
                  add          sp, s2, s7
                  sub          ra, s0, s6
148:              xori         a0, a0, -990
                  slli         s11, s5, 14
                  slti         s6, s0, 540
151:              addi         a0, s4, -836
                  nop
153:              srli         s4, s1, 27
                  beq          t5, a5, 173f
                  lui          a6, 1013209
                  bltu         sp, s4, 165f
                  lui          a7, 139199
158:              lui          a6, 221915
                  nop
                  bne          s6, tp, 176f
                  xori         s7, a3, -443
                  slt          a1, s0, s3
                  sltiu        s6, t6, -1769
                  or           ra, s10, gp
165:              sra          t0, s0, zero
                  sll          t0, a6, s10
                  srai         s11, t3, 29
                  sltiu        s3, s8, -805
                  sra          s4, a5, ra
                  srai         t6, zero, 28
                  add          t4, s8, s7
                  sll          s5, s5, s1
173:              or           s1, a7, a1
                  add          s9, a6, a6
                  xori         t6, t4, -678
176:              srli         a2, s5, 1
                  lui          a4, 170038
                  auipc        t4, 470647
                  xori         s8, tp, 465
                  sltiu        s0, a4, 823
                  lui          t0, 381534
                  sll          a4, t1, s7
                  and          t6, s1, a1
                  srli         zero, s6, 0
                  bne          a2, s3, 204f
                  nop
                  sra          s2, s3, s4
                  or           s11, s3, s0
                  srl          a5, a4, t0
                  srai         s5, gp, 7
                  srl          a4, s10, a1
                  bne          s3, t0, 194f
                  slt          t1, s4, t0
194:              srai         s6, t2, 12
                  sub          t1, a0, tp
                  slt          a6, t0, t1
                  auipc        zero, 664762
                  auipc        a0, 516917
                  andi         s1, s2, -51
                  add          t0, a5, s4
                  ori          tp, s11, 278
                  nop
                  add          t6, tp, a7
204:              bltu         a4, s11, 221f
                  nop
                  srl          s4, a5, a2
                  bgeu         a2, gp, 227f
                  or           t1, ra, zero
                  add          zero, s2, t4
                  xor          s4, t6, s1
                  andi         s0, a0, -864
                  addi         a4, s6, 1802
                  beq          a1, ra, sub_2_j4 #branch to jump instr
                  xori         s11, s3, -1966
                  nop
                  andi         s4, a2, 679
                  sltiu        gp, s5, -865
                  slti         s3, a2, -318
                  nop
                  ori          s4, a3, -277
sub_2_j4:         jal          a2, sub_3 #jump sub_2 -> sub_3
                  ori          t0, t3, -718
                  slti         s0, a1, 1938
                  sltiu        t6, a3, 1739
                  nop
                  bne          s8, a1, 218f
                  slti         zero, ra, -1560
218:              sub          s7, s8, t5
                  bge          s1, t4, 232f
                  bgeu         s1, s9, 228f
221:              auipc        ra, 428203
                  add          s7, t5, sp
                  add          s5, t3, s1
                  sub          s9, s8, a6
                  add          t0, a3, t0
                  addi         s4, s11, 1038
227:              slli         s6, s4, 17
228:              auipc        a5, 583865
                  xor          t4, s9, s5
                  lui          s5, 600026
                  sltu         s0, t1, tp
232:              srli         t1, a7, 14
                  beq          a5, gp, 247f
                  bltu         s11, tp, 242f
                  and          s4, s9, a7
                  nop
                  sra          ra, t3, s10
                  sub          t0, gp, t3
                  bne          s4, a4, 247f
                  sltu         t2, s10, zero
                  srli         s1, s1, 0
242:              andi         s3, t5, 591
                  andi         t4, gp, 1685
                  addi         zero, s7, 1223
                  xor          gp, ra, a1
                  beq          t5, s10, 247f
247:              lui          a0, 557277
                  srai         a0, a7, 3
                  bltu         s3, zero, 250f
250:              srai         s2, s2, 8
                  blt          a7, s0, 260f
                  and          t4, t2, a3
                  xori         a2, s6, 1704
                  slt          s11, t0, sp
                  srai         a4, t3, 24
                  sltu         t6, tp, a6
                  xori         a3, t1, 1129
                  addi         a6, gp, -875
                  ori          s7, t0, 1646
260:              ori          a2, t0, -1703
                  add          s3, t0, a2
                  and          a4, s2, a3
                  beq          s9, s6, 279f
                  sra          a1, s5, sp
                  andi         t4, t0, -453
                  slti         t6, sp, 1610
                  beq          t6, a2, 273f
                  slt          zero, a0, ra
sub_2_10:         jal          a2, 22f
0:                jal          tp, 19f
1:                jal          gp, 0b
2:                jal          gp, 5f
3:                jal          s6, 21f
4:                jal          gp, 12f
5:                jal          ra, 15f
6:                jal          t1, 20f
7:                jal          ra, 4b
8:                jal          ra, 14f
9:                jal          ra, 23f
10:               jal          t1, 18f
11:               jal          t1, 10b
12:               jal          t1, 26f
13:               jal          t1, 24f
14:               jal          ra, 17f
15:               jal          ra, 6b
16:               jal          s8, 9b
17:               jal          t1, 1b
18:               jal          gp, 25f
19:               jal          t1, 2b
20:               jal          s6, 3b
21:               jal          s2, 11b
22:               jal          t1, 16b
23:               jal          t1, 7b
24:               jal          s6, 8b
25:               jal          ra, 27f
26:               jal          ra, 13b
27:               sub          ra, t0, s7
                  sra          zero, s3, tp
                  sltiu        s2, t3, 243
                  srl          a7, t5, gp
                  bgeu         a3, s5, 289f
273:              sltiu        s2, s3, -1819
                  bge          t2, t1, 276f
                  sub          s8, s1, t2
276:              bge          s10, s0, 296f
                  and          gp, s11, s1
                  and          a3, s0, sp
279:              xori         t0, s2, -1018
                  beq          s9, a0, 290f
                  ori          s3, gp, 1005
                  add          a4, sp, ra
                  bne          zero, zero, 291f
                  xori         s9, a5, -95
                  sll          s3, s11, s6
                  slt          s3, tp, s0
                  srli         t6, t4, 20
                  bgeu         gp, a5, 307f
289:              sub          t2, s7, s2
290:              sra          s8, a0, t1
291:              srai         a4, s3, 5
                  add          s6, t1, s6
                  andi         s4, a5, -1286
                  slt          s4, zero, s2
                  bltu         t1, t3, 312f
296:              add          s2, gp, s8
                  bgeu         a5, gp, 314f
                  bltu         s11, ra, 300f
                  srl          t4, s2, a3
300:              xor          a7, s3, a4
                  srl          s0, s2, t5
                  sra          s2, ra, tp
                  xori         a4, tp, 984
                  srli         t4, a5, 4
                  xori         s11, t3, 1508
                  beq          gp, a2, 325f
307:              srli         a7, ra, 8
                  lui          a7, 431591
                  srli         sp, t4, 5
                  sub          a4, s5, tp
                  sltiu        a5, s10, -1659
312:              slti         zero, a2, -1577
                  bne          sp, t6, 321f
314:              bgeu         s0, a1, 315f
315:              sltiu        a0, t2, -764
                  bge          s10, a0, 325f
                  auipc        a1, 267653
                  andi         a5, a7, 1906
                  srli         a0, a6, 26
                  bne          s6, a0, 329f
321:              sltiu        ra, a4, -1312
                  bge          s6, sp, 324f
                  bne          s9, s10, 331f
324:              and          s6, t5, t5
325:              srai         a7, a4, 22
                  srai         a0, t6, 6
                  slt          s7, s10, a0
                  bge          s2, s5, 337f
329:              sll          s8, s6, s9
                  sltiu        gp, s0, -254
331:              sub          a0, s9, a5
                  slti         a6, a0, -1196
                  auipc        s7, 558946
                  sll          a4, s10, tp
                  slli         a1, a0, 26
                  sub          t2, s7, t4
337:              sll          sp, zero, a3
                  sltu         s2, ra, s5
                  sub          t6, zero, t1
                  srai         s1, s3, 18
                  addi         s2, a7, -538
                  srai         a2, sp, 24
                  andi         zero, a0, 1327
                  add          a6, a0, a5
                  sub          s4, s7, zero
                  slt          s5, s10, gp
                  bgeu         s10, s3, 360f
                  xor          t0, s0, t5
                  sltiu        gp, s9, 1623
                  beq          s6, s1, 351f
351:              bne          s3, s7, 367f
                  sra          s5, gp, t4
                  add          t6, a0, s7
                  sll          s5, a5, a0
                  la           a1, sub_5
                  srl          t6, s5, s7
                  lui          t6, 502406
                  auipc        t2, 374084
                  slti         zero, a2, -1919
                  addi         a1, a1, 243
                  add          t4, s4, a7
                  andi         a6, sp, 309
sub_2_j5:         jalr         a2, a1, -243 #jump sub_2 -> sub_5
                  ori          s2, sp, 1747
                  xor          tp, tp, tp
                  sll          s4, s1, zero
                  slti         t0, s11, 1542
                  beq          sp, t1, 367f
                  auipc        sp, 997456
                  addi         t1, t2, 610
360:              srl          a4, t3, t4
                  sltiu        tp, s5, -1287
                  xor          a2, a3, zero
                  sub          t2, s9, a4
                  or           s9, a3, a7
                  slti         t1, t3, 1112
                  sll          zero, s10, gp
367:              sltiu        s6, t4, -852
                  bge          t1, s8, 388f
                  bgeu         t0, s0, 375f
                  andi         t4, s7, 1174
                  srai         sp, t3, 31
                  srli         s6, a2, 17
                  srli         s6, s1, 5
                  blt          ra, s0, 375f
375:              bltu         gp, t5, 383f
                  beq          sp, s7, 396f
                  auipc        t4, 171162
                  lui          t0, 854651
                  auipc        s6, 486139
                  beq          s0, a7, 389f
                  auipc        tp, 543576
                  bgeu         t1, s8, 399f
383:              bgeu         ra, s4, 391f
                  beq          t0, s8, 403f
                  sltiu        t6, s5, -1083
                  or           a2, t6, ra
                  sltu         s2, a0, s7
388:              bgeu         t4, sp, 390f
389:              bgeu         s9, a2, 391f
390:              srl          t0, a6, ra
391:              addi         s8, t4, -1226
                  and          a0, a0, gp
                  xori         s8, s0, 470
                  slt          t6, s6, a2
                  bge          sp, t3, 411f
396:              slti         s5, zero, -1932
                  bgeu         tp, s5, 398f
398:              bltu         a1, sp, 407f
399:              lui          s1, 1032629
                  sltiu        t4, gp, -75
                  sub          s7, tp, a4
                  nop
403:              srli         t4, s8, 20
                  slt          zero, a4, t5
                  slti         s8, t5, 85
                  beq          s9, t1, 423f
407:              lui          s3, 193672
                  slli         s8, a7, 4
                  bge          sp, s2, 428f
                  xor          gp, a1, s9
411:              beq          a0, gp, 428f
                  slt          zero, t2, s0
                  bltu         t6, t4, 421f
                  bne          s1, t1, 416f
                  addi         s8, s9, 489
416:              nop
                  lui          a7, 352757
                  xor          t4, s10, ra
                  sub          s1, a7, t1
                  blt          zero, t0, 434f
421:              addi         s5, s3, -675
                  slt          a5, s6, s4
423:              bltu         sp, s7, 431f
                  slti         t1, tp, 765
                  srl          a5, s0, s1
                  srli         a0, a0, 5
                  bltu         a6, tp, 446f
428:              sub          gp, zero, a6
                  sra          s3, t5, s9
                  auipc        s4, 499606
431:              bgeu         a6, t6, 448f
                  xori         a0, gp, -1615
                  or           s8, tp, t3
434:              srli         ra, s6, 21
                  bgeu         t3, s0, 443f
                  slli         ra, s6, 8
                  sub          s0, t6, s1
                  auipc        s1, 980630
                  nop
                  nop
                  or           sp, a6, t1
                  beq          s8, s8, 450f
443:              bge          t6, s5, 449f
                  sub          gp, t5, a6
                  sub          s3, t0, t1
446:              ori          a7, a3, 1775
                  slti         a7, gp, 1301
448:              slti         s4, t6, 1965
449:              sltu         a7, gp, t3
450:              lui          t2, 212132
                  lui          t1, 845079
                  ori          s0, a5, -1662
                  lui          a5, 114062
                  addi         zero, zero, -420
                  andi         s11, sp, 691
                  srl          a1, t5, s1
                  andi         s1, a2, -126
                  xor          a1, a4, a1
                  andi         a6, t6, -274
                  slti         s1, s0, -419
                  ori          s7, s3, -1861
                  bge          s6, t3, 476f
                  blt          tp, t3, 465f
                  sra          a3, t3, s9
465:              sub          a3, a5, a6
                  srl          s3, zero, s9
                  srli         ra, s1, 1
                  sra          a5, t3, a1
                  bge          s1, s3, 477f
                  and          s9, t3, a1
                  or           a6, t0, s5
                  bne          a6, a2, 489f
                  slti         s4, a7, 1278
                  beq          s9, gp, 483f
                  srai         s11, a6, 15
476:              or           sp, s2, zero
477:              sra          a3, s5, sp
                  slli         tp, t0, 10
                  lui          t2, 1000160
                  sll          sp, a4, s5
                  auipc        tp, 926901
                  lui          s1, 320744
483:              srai         t2, s6, 4
                  bge          s5, a2, 492f
                  auipc        s1, 603394
                  sltiu        tp, t1, -397
                  addi         t0, s7, 198
                  sub          s9, t1, t4
489:              addi         zero, s1, -1137
                  xor          s2, zero, a5
                  blt          t4, tp, 501f
492:              slt          s9, t2, a3
                  slti         s5, a4, -701
                  blt          a2, t1, 511f
                  blt          tp, t2, 515f
                  lui          sp, 331439
                  bne          zero, s0, 513f
                  bne          s5, gp, 507f
                  bltu         s11, s6, 501f
                  beq          s1, s10, 501f
501:              ori          zero, s9, 1902
                  srl          s0, t5, s1
                  andi         s0, a1, 1507
                  ori          t2, s2, 909
                  blt          s5, s6, 524f
                  srl          s6, t3, zero
507:              beq          t6, a7, 524f
                  slt          t1, t4, t3
                  slti         a5, a6, 1319
                  blt          a6, a4, 529f
511:              beq          gp, tp, 531f
                  nop
513:              addi         a7, t6, -614
                  sra          a7, a0, s5
515:              addi         gp, t4, 1743
                  srai         s5, s11, 2
                  blt          s7, t1, 526f
                  lui          gp, 692853
                  xori         s11, s8, -683
                  auipc        s5, 979026
                  bltu         t1, s8, 537f
                  bgeu         s10, s7, 530f
                  beq          s7, gp, 536f
524:              sltiu        s3, s0, -1804
                  addi         a4, t6, -1981
526:              srl          sp, s10, zero
                  sra          s6, s9, ra
                  slt          s4, s11, a6
529:              lui          t4, 998794
530:              lui          t6, 454700
531:              slti         a5, a2, 1181
                  blt          t3, s1, 551f
                  bltu         tp, s0, 534f
534:              blt          a3, s10, 535f
535:              auipc        ra, 178077
536:              nop
537:              ori          zero, s1, -360
                  add          t2, t0, a0
                  sra          s4, s3, s10
                  nop
                  sll          s0, a4, t5
                  slli         s0, a0, 19
                  or           s1, s1, ra
                  srli         t2, sp, 7
                  sub          s9, ra, s4
                  add          t2, s7, s0
                  sub          s2, a3, s0
                  or           s7, a3, t6
                  sub          s1, s11, a3
                  xor          a0, s0, s6
551:              bge          a1, a1, 553f
                  bltu         s3, s11, 554f
553:              andi         t6, a0, -1450
554:              sub          s7, a3, s8
                  slt          ra, t6, a6
                  add          gp, zero, t3
                  sra          s0, a1, zero
                  slt          a2, a6, t0
                  blt          a3, t0, 574f
                  sltiu        gp, a4, -1744
                  bgeu         tp, t2, 569f
                  sltiu        t6, a7, -1592
                  bltu         zero, t0, 571f
                  sra          a4, s2, t5
                  srl          s2, s11, s6
                  slt          t6, ra, ra
                  slt          tp, t2, s0
                  or           s9, a1, t2
569:              nop
                  sub          s1, a3, t1
571:              ori          t2, a1, 597
                  bgeu         s5, gp, 574f
                  auipc        sp, 322538
574:              ori          s5, s9, 1817
                  ori          s2, a2, 503
                  lw           a2, 4(t5)
                  srl          s4, gp, a4
                  andi         t6, s6, 1631
                  addi         t5, t5, 8
                  sra          s4, a7, t5
                  xor          s1, s11, sp
                  sll          s6, a6, a6
                  auipc        s11, 386206
                  srl          s2, sp, a2
                  slt          ra, t3, s10
835:              addi x15, x12, 1
835:              jalr x15, x15, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x28, x30, zero
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x15, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x15, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x15, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x15, x8, ecall_handler
                  li x8, 0x1
                  beq x15, x8, instr_fault_handler
                  li x8, 0x5
                  beq x15, x8, load_fault_handler
                  li x8, 0x7
                  beq x15, x8, store_fault_handler
                  li x8, 0xc
                  beq x15, x8, pt_fault_handler
                  li x8, 0xd
                  beq x15, x8, pt_fault_handler
                  li x8, 0xf
                  beq x15, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x30, x28, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x28, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x28, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x30, x28, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x30, x28, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x30, x28, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
