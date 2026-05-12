.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 0
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x6fcf15bd
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0xf6298839
                  li x6, 0xe
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x10, 0xa
                  li x11, 0x5c122f14
                  li x12, 0xe
                  li x13, 0xb
                  li x14, 0x632fe83e
                  li x15, 0x375243e4
                  li x16, 0xe22edcfe
                  li x17, 0xf728622c
                  li x18, 0x0
                  li x19, 0xa
                  li x20, 0x3b32a473
                  li x21, 0x80000000
                  li x23, 0x9805e50f
                  li x24, 0x3
                  li x25, 0xae5f511d
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0xfc95c218
                  li x29, 0xfb119a20
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x22, user_stack_end
main:             jal          t1, 0f
0:                jal          ra, 27f
1:                jal          s2, 4f
2:                jal          ra, 5f
3:                jal          ra, 29f
4:                jal          a6, 12f
5:                jal          t1, 19f
6:                jal          t1, 7f
7:                jal          t1, 8f
8:                jal          t1, 2b
9:                jal          ra, 23f
10:               jal          ra, 17f
11:               jal          ra, 22f
12:               jal          ra, 6b
13:               jal          t1, 10b
14:               jal          ra, 26f
15:               jal          ra, 11b
16:               jal          ra, 20f
17:               jal          ra, 16b
18:               jal          ra, 25f
19:               jal          ra, 15b
20:               jal          ra, 24f
21:               jal          ra, 28f
22:               jal          ra, 30f
23:               jal          ra, 3b
24:               jal          ra, 9b
25:               jal          a0, 1b
26:               jal          t1, 21b
27:               jal          ra, 13b
28:               jal          sp, 18b
29:               jal          ra, 14b
30:               ori          t1, a3, 819
                  and          s4, a3, s9
                  xor          a3, s7, a6
                  la           a1, sub_1
                  addi         a1, a1, 600
                  or           t6, t6, ra
                  srai         s3, ra, 10
                  bltu         a6, sp, main_j1 #branch to jump instr
                  xori         s7, s7, -606
                  and          a5, s4, t2
                  slti         a4, s4, -1209
main_j1:          jalr         t1, a1, -599 #jump main -> sub_1
                  slt          s2, s2, s8
                  beq          a6, s4, 18f
                  bgeu         s11, a1, 19f
                  bne          s2, ra, 12f
                  beq          a2, s1, 7f
7:                andi         gp, s4, 1903
                  sra          a6, s4, s7
                  nop
                  sra          t5, t5, s2
                  slli         t3, a5, 18
12:               sltiu        ra, ra, 923
                  blt          a3, s5, 19f
                  add          a5, a1, t4
                  addi         s0, a7, 1357
                  add          s2, zero, a0
                  and          t5, a4, t4
18:               addi         s2, a5, 24
19:               slt          a3, tp, t1
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         s6, s6, -20
                  sw           t1, 4(s6)
                  andi         a1, ra, -1241
                  sll          t6, a1, s3
                  lui          s8, 1022266
                  auipc        t4, 866272
sub_3_9:          jal          t1, 7f
0:                jal          tp, 13f
1:                jal          t6, 3f
2:                jal          t1, 17f
3:                jal          t1, 14f
4:                jal          s8, 5f
5:                jal          ra, 2b
6:                jal          ra, 22f
7:                jal          s9, 8f
8:                jal          t6, 4b
9:                jal          ra, 15f
10:               jal          a7, 1b
11:               jal          s7, 21f
12:               jal          s7, 23f
13:               jal          s3, 16f
14:               jal          a6, 20f
15:               jal          ra, 0b
16:               jal          tp, 11b
17:               jal          ra, 9b
18:               jal          t1, 10b
19:               jal          ra, 18b
20:               jal          ra, 6b
21:               jal          gp, 19b
22:               jal          t1, 12b
23:               slti         s9, tp, -225
sub_3_3:          jal          t1, 4f
0:                jal          a0, 12f
1:                jal          t1, 3f
2:                jal          ra, 13f
3:                jal          t0, 5f
4:                jal          t1, 1b
5:                jal          t2, 6f
6:                jal          ra, 8f
7:                jal          ra, 2b
8:                jal          tp, 0b
9:                jal          t6, 14f
10:               jal          ra, 9b
11:               jal          ra, 7b
12:               jal          ra, 11b
13:               jal          ra, 10b
14:               slt          a2, s9, zero
sub_3_10:         jal          t1, 8f
0:                jal          a7, 11f
1:                jal          ra, 6f
2:                jal          s3, 3f
3:                jal          a6, 1b
4:                jal          t3, 2b
5:                jal          ra, 9f
6:                jal          ra, 0b
7:                jal          ra, 5b
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          ra, 7b
11:               auipc        s9, 210512
sub_3_6:          jal          t1, 7f
0:                jal          ra, 11f
1:                jal          ra, 12f
2:                jal          a0, 1b
3:                jal          ra, 9f
4:                jal          s4, 3b
5:                jal          ra, 4b
6:                jal          a1, 2b
7:                jal          ra, 8f
8:                jal          t1, 13f
9:                jal          a6, 0b
10:               jal          s11, 14f
11:               jal          ra, 10b
12:               jal          ra, 5b
13:               jal          a3, 6b
14:               add          s10, s4, s11
sub_3_8:          jal          t1, 8f
0:                jal          ra, 2f
1:                jal          t1, 13f
2:                jal          s3, 4f
3:                jal          ra, 5f
4:                jal          ra, 6f
5:                jal          t1, 7f
6:                jal          ra, 10f
7:                jal          tp, 12f
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               jal          ra, 9b
11:               jal          gp, 1b
12:               jal          t1, 11b
13:               auipc        s8, 586445
sub_3_2:          jal          t1, 7f
0:                jal          s4, 19f
1:                jal          ra, 23f
2:                jal          ra, 24f
3:                jal          t1, 18f
4:                jal          t1, 2b
5:                jal          t1, 13f
6:                jal          ra, 10f
7:                jal          a5, 8f
8:                jal          t1, 15f
9:                jal          t1, 16f
10:               jal          ra, 5b
11:               jal          ra, 0b
12:               jal          ra, 3b
13:               jal          ra, 9b
14:               jal          ra, 6b
15:               jal          ra, 22f
16:               jal          gp, 4b
17:               jal          t1, 14b
18:               jal          ra, 11b
19:               jal          ra, 21f
20:               jal          tp, 12b
21:               jal          t2, 17b
22:               jal          t3, 1b
23:               jal          t1, 20b
24:               addi         s4, s1, -1527
sub_3_1:          jal          t1, 7f
0:                jal          ra, 6f
1:                jal          a0, 4f
2:                jal          ra, 0b
3:                jal          t1, 1b
4:                jal          t1, 9f
5:                jal          ra, 2b
6:                jal          ra, 3b
7:                jal          ra, 5b
8:                jal          ra, 10f
9:                jal          a4, 8b
10:               sub          s2, s7, s4
                  addi         s11, t4, 1174
                  slt          t2, t0, t0
                  sra          t6, a7, t6
                  bge          sp, ra, 23f
                  sll          s0, s6, a3
                  blt          gp, gp, 15f
                  slli         s4, sp, 8
                  sll          sp, s11, s3
                  srai         s11, a3, 8
                  andi         a5, s7, 596
                  lui          a2, 483246
                  beq          a2, s2, 12f
12:               xor          s11, a1, t0
                  srli         s4, s3, 4
                  slt          a2, s7, s7
15:               and          a0, s8, s7
                  slti         t1, s8, -763
                  sub          a7, s10, zero
                  srl          t3, gp, t3
                  sub          s11, t0, t1
                  sra          t5, s6, ra
                  auipc        s8, 603939
                  add          t1, s0, t4
23:               nop
                  bge          a7, t0, 42f
                  bne          s1, s2, 29f
                  slt          s4, s2, s8
                  sltu         a5, ra, a5
                  sltiu        a2, a7, -914
29:               bge          a3, s0, 45f
                  beq          s8, tp, 43f
                  sll          s9, t2, s2
                  ori          zero, s10, -331
                  srl          s11, a3, sp
                  sltiu        t5, t3, -627
                  sub          gp, zero, ra
                  slli         a5, t3, 23
                  bltu         t0, a3, 45f
                  andi         t6, gp, -1576
                  srli         s0, sp, 26
                  sltiu        ra, s8, 284
                  sltiu        a5, a1, 1210
42:               slt          a5, t0, a2
43:               slli         a2, t2, 24
                  nop
45:               add          t4, s3, zero
                  add          s0, a6, s0
                  sub          a2, t0, t4
                  nop
                  srli         zero, t1, 14
                  and          s7, t1, s11
sub_3_5:          jal          t1, 15f
0:                jal          t1, 11f
1:                jal          ra, 10f
2:                jal          ra, 0b
3:                jal          ra, 19f
4:                jal          t1, 8f
5:                jal          t0, 9f
6:                jal          t1, 21f
7:                jal          ra, 13f
8:                jal          t1, 2b
9:                jal          t1, 22f
10:               jal          ra, 6b
11:               jal          ra, 14f
12:               jal          ra, 18f
13:               jal          ra, 1b
14:               jal          t5, 7b
15:               jal          s3, 3b
16:               jal          ra, 12b
17:               jal          ra, 20f
18:               jal          a6, 5b
19:               jal          ra, 17b
20:               jal          a6, 4b
21:               jal          ra, 16b
22:               sub          t5, s6, s0
                  lui          s4, 262099
                  sra          t5, s3, s7
                  ori          s0, s1, -1998
                  bge          s8, a2, 59f
                  sub          a5, s7, s8
                  sub          ra, s10, s0
                  lui          t5, 485930
                  nop
59:               srl          s8, s9, ra
                  bltu         s2, s10, 68f
                  sltiu        s2, t1, 142
                  srl          tp, s0, zero
                  srli         a1, a5, 6
                  sub          t5, gp, s5
                  xori         s9, t1, -273
                  bne          s0, s11, 84f
                  or           s0, t6, s2
68:               srl          s4, a7, s6
                  srai         a5, s3, 27
                  xor          t5, zero, a7
                  srai         a2, t0, 4
                  sra          t2, a6, s6
                  xor          t1, t0, s3
                  slti         sp, a7, -1331
                  andi         t5, s5, -49
                  nop
                  sll          t0, a0, t5
                  sll          t2, a2, ra
                  bge          a2, t3, 98f
                  and          s8, s7, s9
                  auipc        sp, 186236
                  xori         a2, zero, 1033
                  bltu         s5, t5, 84f
84:               beq          s9, s11, 94f
                  beq          t0, t3, 89f
                  sltiu        a3, t3, -309
                  bge          a4, s1, 105f
                  auipc        gp, 440410
89:               nop
                  add          a2, a1, t4
                  ori          t2, a7, 1888
                  and          a1, s0, s3
                  srli         s3, a1, 31
94:               addi         s0, a7, -1252
                  bne          a2, t1, 104f
                  slti         sp, a1, 700
                  bge          a5, a4, 102f
98:               slt          s10, s7, t0
                  slt          t1, a1, s6
                  bge          t1, s0, 110f
                  beq          t0, s1, 112f
102:              add          t2, zero, gp
                  and          s3, a4, s6
104:              slt          t0, a7, s4
105:              xori         s7, tp, 1563
                  xori         ra, a1, -311
                  bltu         t4, t1, 123f
                  xor          a1, s6, s11
                  sltiu        a7, s4, 1107
110:              bne          ra, gp, 129f
                  or           t5, t2, t5
112:              sltu         s4, t0, t5
                  auipc        t5, 905602
                  xor          t0, s2, a6
                  slli         t3, s11, 20
                  sll          s7, s3, s1
                  xori         s3, s1, -1098
                  slt          s3, t6, t4
                  bne          a7, t0, 132f
                  srai         zero, t5, 23
                  srli         ra, t0, 0
                  slli         t4, a4, 7
123:              or           t5, gp, s3
                  sltiu        s9, s7, 1059
                  beq          s5, s10, 129f
                  slli         t4, a5, 6
                  bge          s8, s10, 135f
                  srl          a1, sp, a6
129:              addi         a0, s0, 1316
                  srl          s8, t1, sp
                  srl          s3, t3, s11
132:              sra          t2, a1, t2
                  bge          s8, s11, 149f
                  lui          s9, 703974
135:              ori          s8, tp, 1260
                  srai         s3, s8, 2
                  xori         t4, t1, 1509
                  srl          s4, t5, t5
                  beq          s1, s6, 144f
                  sltu         t0, tp, s6
                  ori          s0, s1, -1756
                  nop
                  slli         t2, t4, 4
144:              bne          t3, s8, 158f
                  auipc        tp, 635953
                  lui          zero, 452597
                  add          a7, tp, s1
                  and          a4, t6, tp
149:              sltiu        t4, a5, 679
                  andi         a1, gp, -691
                  srli         t1, a1, 14
                  lui          s4, 410276
                  andi         s3, gp, -1464
                  bge          t5, s8, 158f
                  sltiu        sp, s3, -833
                  sltiu        t2, a7, -368
                  nop
158:              addi         a5, gp, 786
                  nop
                  nop
                  add          s9, a6, t3
                  slt          tp, s1, s9
                  and          s7, sp, t6
                  nop
                  bne          zero, t5, 181f
                  bltu         s2, a4, 167f
167:              sltu         s8, a1, t5
                  bltu         s4, t1, 182f
                  slt          t2, t6, s11
                  slti         s9, a7, 1124
sub_3_7:          jal          t1, 7f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          s3, 5f
3:                jal          ra, 12f
4:                jal          ra, 11f
5:                jal          t1, 15f
6:                jal          t6, 13f
7:                jal          ra, 9f
8:                jal          sp, 2b
9:                jal          ra, 6b
10:               jal          a1, 4b
11:               jal          ra, 0b
12:               jal          tp, 1b
13:               jal          ra, 14f
14:               jal          tp, 3b
15:               sltu         s2, s1, s5
                  xori         a3, a1, -494
                  sll          sp, a3, ra
                  bne          s3, ra, 182f
                  auipc        s9, 54226
                  or           gp, a1, t3
                  andi         s4, a0, 285
                  slt          tp, t0, tp
                  or           a2, t1, s2
                  slt          t2, t0, t5
                  srl          a0, a7, t0
181:              xori         sp, a1, 1147
182:              or           s4, s8, zero
                  beq          ra, s8, 188f
                  and          a5, ra, s3
                  andi         s0, sp, -1005
                  sltiu        t6, s6, -1909
                  bltu         s5, a2, 205f
188:              and          a6, gp, a4
                  beq          zero, t2, 202f
                  or           a2, t5, t3
                  auipc        s9, 682387
                  nop
                  or           gp, t5, s3
                  slt          s2, s10, a6
                  srai         a7, s0, 28
                  sra          s9, a0, a7
                  sltiu        a2, s7, 1271
                  add          s7, s3, ra
                  nop
                  xor          t0, a5, s7
                  slti         a0, zero, -1616
202:              xor          s3, s11, a0
                  sub          s9, a3, a3
                  srai         a6, t3, 5
205:              nop
                  sltiu        t0, s4, 1439
                  xori         s0, t1, 1962
                  nop
                  bltu         a7, t1, 225f
                  sra          s4, t1, a0
                  srli         a7, t0, 10
                  add          t3, s5, gp
                  lui          s3, 115620
                  ori          s11, t4, -344
                  slti         s10, t4, -564
                  xori         a4, t5, 1310
                  srl          s8, s8, t2
                  sub          s10, s8, gp
                  andi         s9, s6, 1673
                  srl          s0, s7, t5
                  add          s11, t1, t6
                  sltiu        t5, t3, -209
                  slli         a7, s5, 19
                  xori         a2, s3, -399
225:              nop
                  bne          a4, s3, 230f
                  slt          s7, s9, s8
                  slli         sp, t5, 2
                  xori         a1, s9, -970
230:              or           a2, t5, s11
                  slt          t3, a1, s3
                  srli         t3, a1, 28
                  and          s3, t0, s0
                  addi         t4, s4, 764
                  auipc        a4, 657507
                  sltu         a4, t0, s6
                  bltu         a4, s0, 241f
                  beq          t5, sp, 256f
                  sub          ra, s11, a1
                  or           s3, s1, ra
241:              slt          t2, tp, a4
                  bne          sp, a5, 252f
                  srli         s3, s11, 7
                  bgeu         a6, s4, 262f
                  auipc        s7, 650581
                  addi         t1, sp, 1778
                  srai         ra, s2, 28
                  bgeu         a3, a2, 256f
                  ori          tp, tp, -171
                  sub          t3, a6, s5
                  addi         a2, t0, 61
252:              bltu         t6, s3, 271f
                  add          t0, a5, a3
                  slti         a2, a7, 1644
                  bne          t6, tp, 260f
256:              sll          a0, gp, s0
                  sll          ra, s0, t0
                  sltu         a3, ra, a6
                  blt          a6, a3, 264f
260:              srli         t3, s2, 19
                  beq          s1, s2, 277f
262:              srl          s0, s3, t0
                  sub          s0, ra, s6
264:              sltu         gp, s10, t4
                  beq          a4, s9, 281f
                  srli         a5, s6, 0
                  sltu         a6, a5, s8
                  or           s3, s1, s8
                  andi         t0, a2, 1617
                  srai         gp, s0, 16
271:              srai         s9, t1, 3
                  srai         a4, s6, 29
                  or           ra, s5, s0
                  or           s3, s3, t5
                  add          t0, t2, s6
                  srli         ra, tp, 24
277:              xor          s9, a1, gp
                  and          a3, t1, t3
                  bne          s11, a5, 283f
                  addi         s2, s0, -1049
281:              bltu         a5, s5, 285f
                  nop
283:              lui          a5, 300708
                  bge          zero, s3, 300f
285:              srl          a2, s7, ra
                  bne          s8, zero, 294f
                  xor          a5, a4, a5
                  srli         a5, a2, 5
                  sub          s7, s4, zero
                  bltu         t3, s1, 298f
                  or           a0, a7, t3
                  andi         a3, s2, 199
                  auipc        a2, 236426
294:              bgeu         t2, a5, 314f
                  bge          tp, tp, 305f
                  andi         t2, a6, -781
                  ori          a1, t2, 1436
298:              lui          s3, 444988
                  andi         t6, a3, -282
300:              xori         s9, a0, -1614
                  slti         s0, s10, 1737
                  xori         t6, s8, 1103
                  add          a1, s7, a1
                  sltiu        a6, s1, -1056
305:              addi         sp, a5, -2018
                  ori          gp, t2, -325
                  and          t0, a2, a1
                  srli         t0, s8, 26
                  xor          t5, s2, gp
                  sra          t1, s3, t2
                  andi         a3, a6, -275
                  sub          a1, gp, a4
                  sra          sp, t6, t2
314:              and          t4, s10, s4
                  nop
                  bne          a3, s6, 326f
                  andi         a5, t0, 1202
                  bge          s6, a0, 331f
                  beq          ra, s5, 330f
                  sltiu        tp, s0, 1210
                  sra          t1, s7, a1
                  slt          s2, s7, t0
                  nop
                  slli         t0, a1, 31
                  sll          a0, s7, s10
326:              sra          t2, a5, a5
                  nop
                  sltu         a2, t3, ra
                  blt          a1, ra, 330f
330:              bge          ra, gp, 349f
331:              srl          t4, s4, a6
                  sub          tp, t4, s5
                  bltu         a1, s10, 343f
                  bne          s9, s5, 343f
                  sltiu        t1, t2, -1012
                  srl          s11, t0, s3
                  bne          s7, a1, 345f
                  srl          zero, s6, s9
                  add          zero, s2, t3
                  srl          t4, t0, s6
                  srl          s7, s6, s9
                  srl          sp, s1, s4
343:              blt          t5, gp, 353f
                  xor          a2, t0, t4
345:              srli         t4, s9, 25
                  xor          t4, s10, s9
                  nop
                  and          s0, a1, s1
349:              andi         s4, s3, -1491
                  bltu         ra, s6, 361f
                  bltu         s10, s1, 356f
                  sltiu        s10, tp, 396
353:              ori          a5, s3, 1948
                  beq          s0, zero, 355f
355:              sltiu        a3, s11, 814
356:              bgeu         s9, t2, 360f
                  srl          t2, ra, t2
                  sll          tp, s5, s10
                  nop
360:              auipc        ra, 154808
361:              slli         t0, s11, 28
                  bgeu         s10, sp, 366f
                  or           a4, a0, s10
                  slli         a0, s5, 4
                  nop
366:              addi         s3, s1, 2018
                  lui          a1, 269815
                  slli         zero, s6, 2
                  add          s8, s3, a4
                  bltu         a1, s0, 390f
                  slt          s11, a3, s3
                  lui          s2, 482098
                  and          sp, a6, s1
                  xor          a6, s4, ra
                  and          a6, tp, s4
                  bltu         s11, s0, 392f
sub_3_0:          jal          t1, 11f
0:                jal          ra, 6f
1:                jal          s10, 7f
2:                jal          ra, 12f
3:                jal          tp, 10f
4:                jal          t0, 13f
5:                jal          ra, 3b
6:                jal          ra, 4b
7:                jal          ra, 5b
8:                jal          ra, 1b
9:                jal          s9, 8b
10:               jal          ra, 14f
11:               jal          ra, 0b
12:               jal          t5, 9b
13:               jal          a1, 2b
14:               sltiu        s3, sp, -20
                  bge          s11, a7, 395f
                  addi         s3, gp, 719
                  and          t6, a1, t6
                  bne          s1, t4, 399f
                  auipc        a3, 852712
                  sll          s8, t3, tp
                  add          a3, t0, a2
                  srl          t2, s3, a7
                  andi         a6, s7, 914
                  nop
                  slti         ra, tp, 1986
                  addi         s9, s5, -988
                  blt          t6, s4, 405f
390:              xor          s3, s4, s3
                  bltu         s9, a1, 396f
392:              ori          zero, a4, 1821
                  sltu         a6, s2, s0
                  nop
395:              sltu         s4, s9, ra
396:              beq          a0, t1, 412f
                  sltu         t0, tp, a7
                  bltu         zero, t4, 417f
399:              sra          s3, s1, tp
                  lui          ra, 928336
                  slli         s9, t0, 3
                  andi         t0, t0, 1596
                  srl          a1, a5, zero
                  add          ra, t3, s9
405:              blt          gp, s7, 413f
                  slt          s4, gp, s11
                  sltu         s2, t1, t5
                  slli         s4, tp, 17
                  sltu         s4, t2, t1
                  sra          t5, a0, a0
                  sll          s4, ra, sp
412:              sltu         a6, s6, a7
413:              and          s7, gp, s7
                  slti         a3, s1, 954
                  bltu         a5, s1, 428f
                  nop
417:              add          t0, s2, a6
                  lui          a3, 722112
                  ori          a0, s8, 819
                  sub          t5, a3, t3
                  addi         s11, a4, -1477
                  srl          ra, s1, t5
                  bgeu         t6, s6, 441f
                  xori         sp, s9, -11
                  xor          s4, s9, s6
                  bgeu         s5, t4, 430f
                  srli         s0, s5, 5
428:              bgeu         s10, s5, 441f
                  sltiu        t1, t6, -982
430:              beq          tp, t4, 434f
                  sltu         a2, a7, t5
                  add          a0, a1, s5
                  blt          s2, sp, 451f
434:              bge          gp, a5, 435f
435:              srl          s2, gp, s0
                  sra          s11, tp, s3
                  sltu         s10, t1, t4
                  and          t5, t0, a3
                  blt          a0, zero, 453f
                  sub          sp, s0, s11
441:              slt          t1, s5, s11
                  srai         a0, ra, 31
                  or           sp, s11, tp
                  srli         t1, t2, 6
                  add          s4, t1, gp
                  bltu         a5, t5, 451f
                  and          s8, a6, t5
                  sub          a3, t0, s11
                  sll          s11, s2, a3
                  xor          s7, t3, t2
451:              sltiu        s0, s6, 1334
                  andi         a3, s5, -1954
453:              xor          sp, t5, a4
                  sltiu        s9, s0, -591
                  lui          t6, 188733
                  bge          gp, a6, 472f
                  nop
                  and          gp, a6, a1
                  sltu         ra, s11, s11
                  or           a7, t2, s9
                  bltu         t6, s5, 471f
                  bne          sp, s2, 470f
                  or           s8, s10, s3
                  or           s2, s11, t0
                  auipc        a5, 84678
                  srai         sp, s4, 23
                  sll          t6, zero, s10
                  auipc        s0, 850920
                  bge          s9, s9, 477f
470:              beq          s5, ra, 483f
471:              slli         t4, s6, 29
472:              srai         s9, s5, 31
                  addi         tp, s11, -1111
                  xor          a2, s4, s0
                  bgeu         s3, gp, 485f
                  nop
477:              bltu         s5, ra, 481f
                  blt          a0, a7, 483f
                  bgeu         tp, t1, 497f
                  add          a6, tp, s7
481:              andi         ra, s1, -993
                  beq          a7, s2, 495f
483:              sll          t5, t6, s0
                  slti         sp, s6, 465
485:              andi         s4, a0, -1117
                  xor          t0, s0, s10
                  srl          t4, a2, t0
                  auipc        s7, 364656
                  xori         ra, s1, -814
                  bge          s10, s4, 501f
                  add          t6, s0, s1
                  sll          tp, a3, s3
                  bge          zero, sp, 512f
                  bne          s6, s3, 510f
495:              slti         a3, ra, 1156
                  slti         t5, tp, -1553
497:              sltiu        t0, zero, -475
                  blt          t3, s3, 516f
                  srl          s3, s5, tp
                  bge          t2, s9, 516f
501:              add          ra, s6, t1
                  bgeu         zero, s2, 507f
                  sub          a0, a0, gp
                  and          a2, s5, a5
                  bltu         a7, a7, 510f
                  slti         tp, s2, 1051
507:              nop
                  add          s8, t1, t1
                  slti         a0, s11, 103
510:              xori         s8, s6, 2037
                  and          s0, s2, t6
512:              bne          zero, s4, 532f
                  sll          s10, s11, t3
                  blt          a0, s7, 533f
                  srli         tp, s1, 1
516:              add          t0, a6, s3
                  nop
                  lui          t4, 249328
                  andi         t5, gp, -1291
                  sub          s10, s10, zero
                  sltiu        s3, gp, -568
                  lui          a5, 520886
                  sll          s4, tp, t0
                  srl          a1, s6, t1
                  xori         t1, s6, 1680
                  slti         s11, a1, -1638
                  and          t5, s10, t6
                  ori          t0, t1, 252
                  ori          t2, s11, 121
                  sra          t6, tp, s9
                  bgeu         s1, s1, 541f
532:              nop
533:              bgeu         a4, a6, 549f
                  ori          a3, gp, -256
                  xori         t0, sp, 1768
                  or           s4, s10, s5
                  sub          s3, tp, t0
                  sra          a7, t5, tp
                  slli         t6, s3, 22
                  slli         t1, t3, 31
541:              slt          a7, s9, s10
                  slli         s10, a6, 7
                  xor          s8, s11, zero
                  add          s10, s2, ra
                  sltu         sp, a6, s9
                  or           t2, a0, s7
                  or           a6, tp, t6
                  andi         a6, t5, 757
549:              nop
                  beq          a6, a2, 560f
                  slli         a5, t4, 8
sub_3_4:          jal          t1, 2f
0:                jal          s2, 9f
1:                jal          ra, 8f
2:                jal          ra, 0b
3:                jal          t0, 11f
4:                jal          t5, 6f
5:                jal          ra, 3b
6:                jal          s11, 1b
7:                jal          ra, 10f
8:                jal          t1, 7b
9:                jal          t1, 4b
10:               jal          ra, 5b
11:               auipc        gp, 129766
                  andi         t5, s1, 250
                  nop
                  nop
                  andi         t4, a1, -1039
                  bne          t5, sp, 557f
557:              sltiu        t0, s5, 368
                  bge          sp, t3, 562f
                  srai         s0, s0, 10
560:              add          sp, t3, s11
                  auipc        t5, 802677
562:              sltiu        t6, s0, 2017
                  xor          t6, zero, s0
                  bge          t4, s6, 582f
                  slt          s3, s4, t4
                  slti         s0, a5, -820
                  lui          gp, 95184
                  sub          tp, ra, t0
                  and          gp, s6, a4
                  slt          s7, a3, s1
                  ori          a1, s8, -615
                  srl          s2, a4, gp
                  sll          a4, s5, ra
                  bge          s5, a5, 590f
                  andi         ra, t2, 433
                  lui          t2, 537913
                  bgeu         tp, t5, 585f
                  bgeu         a0, s0, 582f
                  slti         s9, s10, -1881
                  or           a5, s11, tp
                  bne          s3, s2, 589f
582:              and          t0, s0, sp
                  sub          a6, sp, a3
                  bge          t6, zero, 590f
585:              nop
                  and          s9, tp, s8
                  andi         s3, a4, 624
                  bne          t2, s7, 589f
589:              nop
590:              lui          gp, 962568
                  lw           t1, 4(s6)
                  ori          s9, t3, 1429
                  lui          t0, 827405
                  slli         a1, s7, 11
                  addi         s6, s6, 20
                  sra          t3, a7, s4
796:              addi x8, x6, 0
796:              jalr x8, x8, 0
sub_5:            addi         s6, s6, -52
                  xori         a7, t3, 1290
                  xori         s2, a4, -347
                  add          s3, t6, s3
                  ori          tp, s7, -483
                  ori          a3, a2, 831
                  sw           t1, 4(s6)
                  sltiu        s10, t3, 891
                  slli         a5, s2, 2
sub_5_20:         jal          t1, 11f
0:                jal          ra, 9f
1:                jal          s8, 4f
2:                jal          t1, 6f
3:                jal          ra, 0b
4:                jal          ra, 14f
5:                jal          sp, 15f
6:                jal          t1, 16f
7:                jal          ra, 12f
8:                jal          ra, 1b
9:                jal          t1, 5b
10:               jal          ra, 8b
11:               jal          s0, 7b
12:               jal          t0, 2b
13:               jal          t3, 17f
14:               jal          ra, 13b
15:               jal          a0, 10b
16:               jal          s2, 3b
17:               sll          a2, t2, t1
sub_5_22:         jal          t1, 5f
0:                jal          ra, 7f
1:                jal          a4, 8f
2:                jal          tp, 17f
3:                jal          t1, 4f
4:                jal          ra, 2b
5:                jal          ra, 15f
6:                jal          ra, 9f
7:                jal          ra, 12f
8:                jal          ra, 13f
9:                jal          s7, 14f
10:               jal          t4, 1b
11:               jal          a3, 16f
12:               jal          t1, 6b
13:               jal          ra, 3b
14:               jal          t6, 10b
15:               jal          s3, 11b
16:               jal          s11, 0b
17:               andi         t6, zero, 238
sub_5_19:         jal          t1, 1f
0:                jal          s8, 3f
1:                jal          ra, 10f
2:                jal          ra, 0b
3:                jal          a1, 8f
4:                jal          ra, 14f
5:                jal          t1, 11f
6:                jal          ra, 4b
7:                jal          ra, 6b
8:                jal          ra, 5b
9:                jal          s7, 2b
10:               jal          ra, 9b
11:               jal          ra, 12f
12:               jal          t1, 13f
13:               jal          a0, 7b
14:               andi         a1, zero, -50
sub_5_12:         jal          t1, 9f
0:                jal          a0, 13f
1:                jal          ra, 14f
2:                jal          gp, 25f
3:                jal          t1, 20f
4:                jal          t1, 24f
5:                jal          ra, 28f
6:                jal          ra, 23f
7:                jal          t1, 4b
8:                jal          ra, 3b
9:                jal          ra, 7b
10:               jal          t2, 2b
11:               jal          s2, 6b
12:               jal          sp, 10b
13:               jal          ra, 5b
14:               jal          s0, 17f
15:               jal          s8, 21f
16:               jal          ra, 11b
17:               jal          ra, 27f
18:               jal          t1, 15b
19:               jal          ra, 8b
20:               jal          ra, 12b
21:               jal          a7, 1b
22:               jal          tp, 18b
23:               jal          t1, 19b
24:               jal          t1, 26f
25:               jal          s7, 0b
26:               jal          ra, 22b
27:               jal          ra, 16b
28:               addi         tp, t0, -623
sub_5_18:         jal          t1, 16f
0:                jal          t0, 6f
1:                jal          t1, 4f
2:                jal          ra, 10f
3:                jal          ra, 11f
4:                jal          tp, 21f
5:                jal          t1, 15f
6:                jal          ra, 22f
7:                jal          t1, 17f
8:                jal          t1, 18f
9:                jal          ra, 7b
10:               jal          ra, 5b
11:               jal          ra, 14f
12:               jal          ra, 8b
13:               jal          s8, 2b
14:               jal          ra, 13b
15:               jal          ra, 1b
16:               jal          ra, 20f
17:               jal          ra, 0b
18:               jal          ra, 9b
19:               jal          tp, 3b
20:               jal          t1, 19b
21:               jal          sp, 12b
22:               slli         t2, s11, 6
sub_5_3:          jal          t1, 6f
0:                jal          a4, 4f
1:                jal          sp, 5f
2:                jal          s11, 13f
3:                jal          gp, 9f
4:                jal          ra, 1b
5:                jal          a1, 14f
6:                jal          ra, 0b
7:                jal          ra, 2b
8:                jal          a1, 12f
9:                jal          ra, 17f
10:               jal          t1, 11f
11:               jal          ra, 18f
12:               jal          s9, 15f
13:               jal          ra, 16f
14:               jal          ra, 7b
15:               jal          a4, 3b
16:               jal          ra, 8b
17:               jal          t1, 10b
18:               sll          a4, s4, a5
sub_5_2:          jal          t1, 12f
0:                jal          ra, 9f
1:                jal          ra, 10f
2:                jal          a6, 17f
3:                jal          a1, 5f
4:                jal          ra, 13f
5:                jal          t0, 7f
6:                jal          t6, 16f
7:                jal          t1, 14f
8:                jal          s7, 2b
9:                jal          s10, 6b
10:               jal          a4, 18f
11:               jal          ra, 4b
12:               jal          ra, 11b
13:               jal          t1, 8b
14:               jal          ra, 1b
15:               jal          ra, 0b
16:               jal          t1, 3b
17:               jal          a4, 15b
18:               slt          t0, s6, t0
sub_5_17:         jal          t1, 3f
0:                jal          t0, 8f
1:                jal          tp, 2f
2:                jal          t1, 12f
3:                jal          ra, 21f
4:                jal          t4, 17f
5:                jal          gp, 14f
6:                jal          s7, 22f
7:                jal          t1, 15f
8:                jal          s8, 10f
9:                jal          ra, 13f
10:               jal          ra, 20f
11:               jal          ra, 24f
12:               jal          t1, 23f
13:               jal          sp, 16f
14:               jal          ra, 9b
15:               jal          ra, 5b
16:               jal          t1, 0b
17:               jal          gp, 7b
18:               jal          a3, 4b
19:               jal          s3, 18b
20:               jal          t1, 11b
21:               jal          ra, 1b
22:               jal          ra, 19b
23:               jal          ra, 6b
24:               slli         t5, a3, 26
sub_5_7:          jal          t1, 13f
0:                jal          t4, 5f
1:                jal          ra, 9f
2:                jal          ra, 11f
3:                jal          ra, 4f
4:                jal          ra, 16f
5:                jal          gp, 3b
6:                jal          a7, 14f
7:                jal          t1, 10f
8:                jal          a6, 7b
9:                jal          ra, 0b
10:               jal          a5, 18f
11:               jal          s7, 15f
12:               jal          s3, 17f
13:               jal          a0, 1b
14:               jal          t1, 2b
15:               jal          ra, 8b
16:               jal          t1, 12b
17:               jal          t1, 6b
18:               sll          s8, t5, s6
sub_5_23:         jal          t1, 24f
0:                jal          s7, 14f
1:                jal          ra, 5f
2:                jal          a1, 7f
3:                jal          a2, 17f
4:                jal          ra, 2b
5:                jal          ra, 20f
6:                jal          t1, 0b
7:                jal          ra, 6b
8:                jal          ra, 16f
9:                jal          s10, 25f
10:               jal          gp, 4b
11:               jal          ra, 9b
12:               jal          ra, 23f
13:               jal          ra, 26f
14:               jal          ra, 15f
15:               jal          ra, 21f
16:               jal          ra, 27f
17:               jal          a6, 19f
18:               jal          a5, 1b
19:               jal          ra, 13b
20:               jal          t1, 12b
21:               jal          ra, 28f
22:               jal          t1, 11b
23:               jal          ra, 10b
24:               jal          ra, 8b
25:               jal          ra, 3b
26:               jal          s0, 18b
27:               jal          t1, 22b
28:               srl          a1, a5, gp
sub_5_8:          jal          t1, 1f
0:                jal          t3, 11f
1:                jal          ra, 12f
2:                jal          t4, 8f
3:                jal          ra, 19f
4:                jal          ra, 26f
5:                jal          s10, 2b
6:                jal          t1, 18f
7:                jal          sp, 15f
8:                jal          ra, 10f
9:                jal          ra, 27f
10:               jal          ra, 25f
11:               jal          ra, 14f
12:               jal          ra, 3b
13:               jal          sp, 9b
14:               jal          t1, 22f
15:               jal          gp, 21f
16:               jal          s11, 6b
17:               jal          t1, 5b
18:               jal          ra, 4b
19:               jal          gp, 16b
20:               jal          ra, 7b
21:               jal          ra, 13b
22:               jal          ra, 20b
23:               jal          ra, 17b
24:               jal          t2, 23b
25:               jal          ra, 0b
26:               jal          ra, 24b
27:               add          s4, s8, s10
sub_5_21:         jal          t1, 13f
0:                jal          ra, 11f
1:                jal          t1, 14f
2:                jal          t1, 1b
3:                jal          a7, 7f
4:                jal          a6, 3b
5:                jal          ra, 8f
6:                jal          ra, 12f
7:                jal          ra, 10f
8:                jal          t1, 4b
9:                jal          s2, 2b
10:               jal          sp, 0b
11:               jal          ra, 9b
12:               jal          t1, 5b
13:               jal          a2, 6b
14:               andi         t6, s6, 7
sub_5_4:          jal          t1, 23f
0:                jal          tp, 7f
1:                jal          ra, 19f
2:                jal          ra, 22f
3:                jal          ra, 6f
4:                jal          ra, 13f
5:                jal          t1, 9f
6:                jal          s11, 15f
7:                jal          ra, 2b
8:                jal          t1, 17f
9:                jal          ra, 3b
10:               jal          ra, 4b
11:               jal          t1, 14f
12:               jal          ra, 10b
13:               jal          ra, 5b
14:               jal          s7, 24f
15:               jal          ra, 0b
16:               jal          t1, 12b
17:               jal          ra, 21f
18:               jal          t1, 20f
19:               jal          ra, 8b
20:               jal          ra, 16b
21:               jal          ra, 11b
22:               jal          ra, 1b
23:               jal          t1, 18b
24:               sltiu        t2, gp, -1306
sub_5_1:          jal          t1, 6f
0:                jal          t5, 2f
1:                jal          s7, 12f
2:                jal          ra, 5f
3:                jal          ra, 9f
4:                jal          t1, 0b
5:                jal          ra, 7f
6:                jal          ra, 11f
7:                jal          ra, 8f
8:                jal          t4, 3b
9:                jal          t1, 1b
10:               jal          ra, 4b
11:               jal          ra, 10b
12:               srl          a2, s4, gp
sub_5_10:         jal          t1, 1f
0:                jal          ra, 20f
1:                jal          t1, 3f
2:                jal          ra, 21f
3:                jal          ra, 14f
4:                jal          ra, 11f
5:                jal          ra, 24f
6:                jal          ra, 12f
7:                jal          s0, 22f
8:                jal          ra, 18f
9:                jal          t1, 2b
10:               jal          s9, 7b
11:               jal          ra, 0b
12:               jal          t1, 25f
13:               jal          a1, 8b
14:               jal          ra, 17f
15:               jal          s3, 16f
16:               jal          ra, 26f
17:               jal          a4, 19f
18:               jal          t6, 4b
19:               jal          ra, 10b
20:               jal          ra, 6b
21:               jal          t1, 5b
22:               jal          t1, 9b
23:               jal          ra, 15b
24:               jal          t6, 13b
25:               jal          ra, 23b
26:               slt          a2, t0, s4
sub_5_13:         jal          t1, 12f
0:                jal          t4, 3f
1:                jal          ra, 22f
2:                jal          sp, 11f
3:                jal          sp, 4f
4:                jal          s9, 15f
5:                jal          a7, 23f
6:                jal          t1, 18f
7:                jal          ra, 0b
8:                jal          s2, 19f
9:                jal          s10, 14f
10:               jal          s0, 20f
11:               jal          ra, 21f
12:               jal          s11, 2b
13:               jal          ra, 28f
14:               jal          ra, 8b
15:               jal          ra, 26f
16:               jal          t1, 6b
17:               jal          ra, 24f
18:               jal          ra, 13b
19:               jal          a0, 25f
20:               jal          t1, 1b
21:               jal          s9, 7b
22:               jal          ra, 16b
23:               jal          t1, 10b
24:               jal          ra, 27f
25:               jal          ra, 5b
26:               jal          ra, 17b
27:               jal          ra, 9b
28:               nop
sub_5_9:          jal          t1, 3f
0:                jal          t1, 7f
1:                jal          ra, 2f
2:                jal          t1, 4f
3:                jal          ra, 10f
4:                jal          t1, 0b
5:                jal          t1, 1b
6:                jal          ra, 8f
7:                jal          t0, 9f
8:                jal          a5, 5b
9:                jal          ra, 11f
10:               jal          ra, 6b
11:               slt          a7, t5, s10
sub_5_11:         jal          t1, 8f
0:                jal          ra, 6f
1:                jal          a7, 11f
2:                jal          t1, 7f
3:                jal          ra, 18f
4:                jal          t0, 9f
5:                jal          a2, 1b
6:                jal          ra, 20f
7:                jal          ra, 14f
8:                jal          ra, 3b
9:                jal          t1, 16f
10:               jal          ra, 4b
11:               jal          a5, 0b
12:               jal          t1, 2b
13:               jal          ra, 19f
14:               jal          ra, 5b
15:               jal          ra, 17f
16:               jal          a1, 13b
17:               jal          ra, 12b
18:               jal          a4, 10b
19:               jal          ra, 15b
20:               and          a7, s4, a5
                  bltu         s10, a0, 7f
                  sub          t1, gp, s9
                  sub          s2, a0, t4
                  addi         s9, t6, 256
                  slti         zero, t4, -1270
                  srl          a1, a1, t5
                  add          t0, s11, s10
7:                xori         s4, a1, -698
                  lui          a5, 969315
                  nop
                  bgeu         t4, a5, 21f
                  andi         tp, s4, 571
                  slt          a1, t3, t2
                  xor          t5, a5, s1
                  bltu         s5, s7, 15f
15:               bne          s5, s10, 34f
                  andi         t4, s10, -72
                  sll          t5, s1, t4
                  lui          s8, 314547
                  slti         a6, s3, 2022
                  blt          a6, t1, 27f
21:               sub          s2, s2, s7
                  slt          s10, t4, a7
                  xor          a3, t3, a3
                  sltiu        a7, t4, -1683
                  bge          a2, a1, 38f
                  bne          s1, zero, 37f
27:               sltiu        a7, t2, 2018
                  sll          zero, zero, a0
                  srai         a0, sp, 24
                  add          tp, s1, s3
                  beq          t1, s7, 49f
                  srl          s8, tp, t4
                  srl          s3, t5, t4
34:               ori          t4, t0, -2019
                  beq          a6, s5, 44f
                  bgeu         s3, s3, 51f
37:               bne          s1, ra, 57f
38:               andi         t5, s9, 624
                  lui          a1, 782450
                  addi         s7, s1, -879
                  slt          a7, s6, s3
                  bge          s4, s6, 56f
                  addi         s10, s6, -2010
44:               srl          t3, a5, t6
                  srai         a6, s0, 25
                  slti         a2, s8, -768
                  nop
                  slt          tp, a0, s9
49:               bltu         s10, a7, 51f
                  bltu         gp, t4, 66f
51:               srli         a2, a4, 13
                  sll          zero, a2, s3
                  slt          a3, s0, sp
                  addi         s2, s10, 710
                  srli         s8, s0, 17
56:               add          s9, zero, t5
57:               bltu         s0, gp, 67f
                  bgeu         a6, s3, 74f
                  sll          s2, s1, s3
                  slt          s2, s3, s7
                  slti         s10, s2, -67
                  or           t5, s6, a7
                  bgeu         t3, s3, 79f
                  sltu         s2, s7, s1
                  slt          a6, a6, s5
66:               sra          a5, s11, a6
67:               slli         t0, t5, 9
                  ori          t1, zero, -504
                  srai         ra, a4, 14
                  slt          s11, t2, s9
                  sub          s4, s1, a2
                  sltiu        ra, t3, 766
                  sll          a2, a5, gp
74:               sltiu        a2, t0, -1851
                  slli         a5, a5, 8
                  xor          a4, t5, t5
                  bne          a4, s11, 93f
                  sra          gp, t0, s9
79:               srli         gp, a0, 22
                  nop
                  srai         a4, a0, 10
                  srli         a4, t2, 8
                  slti         gp, a0, 434
                  nop
                  and          s7, s5, tp
                  addi         tp, s10, 1557
                  xori         t4, t6, 170
                  srai         zero, tp, 25
                  sltu         t3, s4, gp
                  and          s11, s0, a5
                  beq          a2, s1, 101f
                  bne          a4, s3, 112f
93:               slti         s7, t5, -536
                  nop
                  bgeu         s4, s11, 108f
                  srl          t2, a6, a0
                  srli         s2, a1, 28
                  auipc        a5, 468861
                  add          a5, s2, tp
                  bge          s8, a7, 108f
101:              bge          t0, a4, 107f
                  blt          a1, zero, 103f
103:              sll          a7, gp, t4
                  sll          s7, s9, a3
                  xori         t2, s0, 1567
                  auipc        s4, 107327
107:              slt          a1, tp, t6
108:              bltu         s11, s8, 125f
                  xori         t3, s2, -1222
                  slt          t2, s7, a1
                  bltu         a0, t4, 128f
112:              lui          s4, 201506
                  srai         s0, s10, 16
                  add          a7, a6, a3
                  blt          s3, a3, 123f
                  sltu         s3, a2, a1
                  addi         t4, s2, -1779
                  bge          a1, s4, 132f
                  sub          a1, s1, s3
                  add          zero, t5, t4
                  ori          t2, a1, -2026
                  add          t5, ra, t4
123:              sltu         a0, t4, a1
                  xor          s2, tp, s3
125:              ori          zero, a5, -1687
                  blt          s0, s7, 139f
                  xor          a5, tp, a4
128:              bne          s10, a0, 144f
                  slti         gp, s2, 1722
                  beq          s3, t4, 132f
                  bne          a3, t0, 151f
132:              or           a0, t1, a6
                  auipc        t0, 146190
                  bgeu         s2, s4, 145f
                  bge          s2, a3, 149f
                  lui          s2, 414548
                  blt          s4, a0, 150f
                  add          zero, a1, tp
139:              sub          t5, a0, a6
                  andi         a0, s3, -513
                  lui          a7, 706945
                  nop
                  add          a4, s1, tp
144:              srai         s0, s6, 19
145:              ori          s7, ra, -475
                  xori         t1, sp, -1776
                  andi         t4, sp, -971
                  bne          s8, t2, 161f
149:              slt          a6, s8, t5
150:              bge          s5, s3, 158f
151:              srli         a3, s10, 23
                  bgeu         t1, a1, 168f
                  xor          s8, s7, a1
                  add          a2, s8, tp
                  srai         s9, a6, 22
                  xori         a2, s10, 609
                  xor          s4, gp, s2
158:              sltiu        t0, a3, -1079
                  slli         s11, s9, 29
                  sltiu        s8, t5, 1136
161:              slli         t4, s7, 17
                  slli         t1, a5, 27
                  srli         s0, t2, 31
                  bgeu         s6, s8, 182f
                  bne          s7, a5, 172f
                  lui          s3, 317620
                  slli         t2, a7, 9
168:              lui          a7, 410737
                  srli         t6, t1, 3
                  srai         a7, s7, 12
                  blt          a2, t3, 178f
172:              auipc        s10, 859700
                  sub          t5, zero, t2
                  and          t5, zero, t0
                  slli         a1, t0, 14
                  srl          a5, t5, a0
                  srai         s9, s4, 21
178:              ori          a7, s0, 670
                  xori         s4, s8, -773
                  blt          t5, a0, 197f
                  slt          s0, t4, t1
182:              srli         t5, a5, 27
                  beq          a1, zero, 198f
                  srli         t6, s10, 31
                  bne          ra, s3, 199f
                  auipc        t4, 29581
                  andi         gp, s8, -79
                  sub          s9, s9, s5
                  auipc        zero, 694050
                  andi         t1, s2, -1643
                  slli         a2, a1, 17
                  nop
                  srli         t1, a4, 5
                  srl          t1, s6, s0
                  ori          s11, a4, 3
                  sub          gp, s9, s3
197:              beq          gp, t5, 206f
198:              bgeu         s3, s7, 208f
199:              bgeu         s11, a5, 200f
200:              addi         s0, a3, -368
                  blt          s4, s11, 218f
                  bltu         s5, s6, 218f
                  sub          s10, s2, gp
                  srli         a6, a0, 19
                  srai         zero, zero, 9
206:              lui          s8, 867614
                  bgeu         s2, ra, 223f
208:              and          s0, a5, s5
                  srl          gp, s2, a7
                  xori         sp, a1, 318
                  lui          t1, 34382
                  bge          s11, s10, 232f
                  slli         a2, a7, 20
                  sll          ra, s1, s3
                  bltu         s8, t6, 234f
                  sll          s2, s8, a6
                  sub          a4, zero, gp
218:              or           t5, a7, a6
                  sub          s11, s9, gp
                  sra          s8, a5, t1
                  sll          t1, s9, tp
                  beq          a6, s7, 235f
223:              ori          t4, tp, -680
                  srai         s11, a5, 11
                  srai         s7, t0, 0
                  nop
                  ori          a5, t6, -1592
                  add          t1, s5, a0
                  xori         s7, s5, 547
                  addi         a5, s4, -1261
                  add          s11, a2, t0
232:              andi         tp, a4, -1274
                  slli         a2, s5, 10
234:              slli         a2, t4, 18
235:              and          s3, s10, t4
                  sltu         a0, s8, s11
                  sub          t3, s4, t1
                  sra          a3, a3, s5
                  sll          s2, s0, s7
                  slti         s0, tp, 16
                  xori         a0, s7, 1022
                  addi         sp, s5, -943
                  srl          s4, a4, s8
                  slli         a5, t5, 12
                  xori         s8, a5, 1564
                  auipc        t1, 507611
                  beq          s8, t0, 255f
                  bltu         s4, a2, 258f
                  srli         tp, s9, 22
                  sltu         zero, a3, s7
                  ori          s8, t4, 679
                  sltu         t3, s1, zero
                  slti         a1, s1, -1206
                  srl          s9, t1, a2
255:              addi         a0, s7, 1052
                  slti         s9, t5, 405
                  sll          t1, a4, s0
258:              bltu         t0, t5, 269f
                  srli         a2, sp, 17
                  bgeu         t0, a5, 261f
261:              bgeu         t6, a1, 267f
                  xor          a2, s8, t5
                  sub          s11, s3, s10
                  ori          a5, t3, 281
                  auipc        s3, 1024889
                  and          a0, ra, t1
267:              srli         sp, s2, 7
                  beq          sp, t6, 284f
269:              bne          t6, s9, 285f
                  slli         a5, s1, 8
                  slli         t1, t5, 13
                  bge          a7, s3, 282f
                  beq          s3, s7, 283f
                  and          ra, s3, s10
                  slti         zero, t2, -1800
                  bltu         sp, t3, 292f
                  ori          t0, t4, -1820
                  sll          t2, a0, a0
                  sltu         s10, a5, s3
                  slt          s4, zero, s8
                  slti         a5, sp, 1012
282:              sltu         s7, a5, a5
283:              srli         s11, t2, 27
284:              xor          a6, t3, a3
285:              lui          a7, 40911
                  nop
                  nop
                  andi         a2, s10, 904
                  or           tp, t0, ra
                  slt          ra, s1, t4
                  and          s3, s4, s11
292:              or           s11, t2, s3
                  add          s8, s3, t1
                  sub          s7, a1, a5
                  sll          sp, sp, s2
                  slti         t2, s8, 1025
                  add          a4, s7, s9
                  xori         t1, s2, -68
                  blt          s8, s5, 310f
                  bge          s10, s2, 317f
                  blt          a4, t2, 310f
                  addi         a1, t1, -1573
                  bne          s11, tp, 316f
                  auipc        s8, 708487
                  sra          t5, t2, a2
                  bne          t3, s8, 325f
                  add          s10, s4, s10
                  bltu         a1, t0, 314f
                  nop
310:              beq          s2, s1, 327f
                  ori          t4, t0, 1276
                  slti         s11, a1, 1973
                  or           a6, a1, s5
314:              srai         s4, s2, 14
                  addi         s11, tp, 789
316:              lui          a6, 676493
317:              sltu         a1, a2, s6
                  and          t4, ra, t5
                  andi         s3, s0, 1691
                  or           s4, s10, a3
                  andi         s2, s0, -645
                  ori          t6, a5, 475
                  addi         s8, gp, -1243
                  add          sp, s7, t6
325:              slti         t2, ra, -1680
                  andi         t0, s7, -567
327:              sltiu        s11, gp, 38
                  beq          a0, s3, 344f
                  xor          s9, t2, a1
                  or           a5, s0, s2
                  slti         t2, s3, 110
                  slli         s10, s9, 19
                  add          tp, t1, gp
                  blt          t6, s0, 335f
335:              or           a2, s2, s8
                  slt          a7, s0, a1
                  blt          t3, a1, 357f
                  sltiu        a7, t6, 1044
                  bne          a1, a0, 346f
                  sub          s7, s2, s9
                  nop
                  addi         a7, t4, 1678
                  bgeu         a6, s8, 351f
344:              addi         a3, s4, -1092
                  andi         ra, a4, -1657
346:              slli         t4, s10, 28
                  bgeu         a6, s4, 361f
                  add          s0, a4, s1
                  bge          s10, a0, 365f
                  lui          s4, 546100
351:              bne          sp, a0, 366f
                  sra          s0, s8, t4
                  xor          s9, s3, s5
                  slli         s4, gp, 16
                  sra          a4, s2, s9
                  sub          tp, s7, a2
357:              nop
                  sltu         s4, s8, s8
                  slli         s7, a0, 21
                  sltu         t6, s0, s2
361:              bne          t2, t2, 368f
                  add          a7, s6, s7
                  add          a6, t6, s0
                  or           s2, ra, s11
365:              sltiu        t4, a2, -1008
366:              slli         a2, sp, 23
                  ori          a4, a0, -469
sub_5_14:         jal          t1, 3f
0:                jal          t1, 1f
1:                jal          ra, 8f
2:                jal          ra, 4f
3:                jal          t6, 2b
4:                jal          tp, 7f
5:                jal          ra, 6f
6:                jal          ra, 10f
7:                jal          sp, 0b
8:                jal          ra, 9f
9:                jal          ra, 5b
10:               srli         t6, t0, 14
368:              beq          s7, ra, 384f
                  sltiu        ra, s1, -1459
                  blt          s8, t3, 390f
                  bgeu         s1, s10, 379f
                  slt          a4, a2, a6
                  srai         a6, a0, 31
                  ori          s11, t0, -1930
                  xor          s3, a5, sp
                  ori          s3, a2, -31
                  bge          s0, ra, 379f
                  xor          t0, s6, t4
379:              auipc        tp, 599942
                  beq          a1, s8, 391f
                  beq          t2, s9, 394f
                  bgeu         t3, s6, 400f
                  srai         s4, t6, 20
384:              sltu         t3, ra, sp
                  bne          zero, a4, 401f
                  xori         t6, a7, 488
                  lui          a4, 430570
                  bltu         zero, s2, 402f
                  xor          a2, s2, zero
390:              srli         s7, s9, 27
391:              bltu         t1, a4, 392f
392:              and          s3, a3, s3
                  lui          s2, 911822
394:              sll          s4, s10, t0
                  ori          a4, t3, 1147
                  beq          t3, a7, 409f
                  add          s7, s1, s3
                  bgeu         a5, a4, 417f
                  bge          s1, a6, 407f
400:              sra          s3, a0, t0
401:              xori         gp, t3, -1767
402:              and          a0, s7, t2
                  andi         s7, t1, -1443
                  add          t5, s2, s11
                  slt          a5, s11, t2
                  slli         t2, t6, 19
407:              bge          t5, s8, 423f
                  slt          s11, s4, a1
409:              sub          ra, gp, s2
                  srl          s2, tp, s11
                  sltiu        gp, a0, -1383
                  andi         t3, s2, 1474
                  sll          a6, s5, a1
                  nop
                  andi         zero, s1, 1722
                  xori         a5, gp, 1959
417:              andi         s7, s3, 253
                  srai         t3, s6, 19
                  slti         s7, t6, 1183
                  sub          a1, t3, t6
                  add          a3, s6, t4
                  bltu         t1, a3, 442f
423:              srli         t5, a1, 2
                  bge          ra, s1, 441f
                  xor          s4, t6, gp
                  xori         t0, zero, -303
                  add          s11, a7, t6
                  blt          a4, s3, 444f
                  slli         ra, s8, 21
                  beq          s4, a1, 437f
                  ori          s10, t4, 1060
                  bne          s3, a3, 448f
                  blt          s7, t1, 453f
                  nop
                  srli         t0, s1, 1
                  srl          s10, a7, s10
437:              slti         a2, tp, 720
                  sltiu        a2, t6, 133
                  nop
                  sltiu        t0, s7, 1174
441:              beq          t5, tp, 451f
442:              sub          gp, a0, s7
                  nop
444:              auipc        t0, 2932
                  sra          a4, a4, s9
                  bne          s9, a1, 452f
                  add          a6, s0, a1
448:              or           a0, s11, zero
                  srli         gp, s9, 25
                  blt          t0, s0, 463f
451:              auipc        s2, 653724
452:              bgeu         a1, sp, 453f
453:              add          s11, a2, s3
                  sltiu        gp, s9, 1928
                  bgeu         s7, t1, 462f
                  bge          s1, gp, 464f
                  and          a1, t6, t2
                  andi         s9, s10, -1345
                  bge          s8, t0, 470f
                  sltu         t4, a0, t1
                  addi         t5, a2, 481
462:              andi         t3, s4, 320
463:              sltu         s10, t5, a7
464:              ori          s0, t5, -775
                  sltiu        tp, s2, -418
                  sltu         t5, a0, gp
                  sra          t3, s4, tp
                  srai         a2, s11, 8
                  addi         a4, a4, -347
470:              srai         a4, s5, 5
                  sll          s2, s8, s11
                  and          t2, s8, a4
                  sltu         a7, s4, s8
                  and          a1, s3, a3
                  bltu         tp, s3, 493f
                  auipc        s9, 913083
                  srl          a6, s3, t2
                  xor          a2, a2, gp
                  and          a5, t2, sp
                  bltu         a7, tp, 496f
                  sll          s0, s3, a6
                  or           a4, t3, t4
                  sll          t5, t1, s10
                  xori         s10, s7, -1247
                  lui          tp, 11387
                  slli         a1, a4, 16
                  add          s8, t6, t2
                  blt          s6, ra, 497f
                  xori         a5, a4, -1992
                  xor          s2, s0, s7
                  bne          a4, a1, 492f
492:              xor          t1, zero, t3
493:              and          a5, a7, s9
                  sra          a5, a7, gp
                  xor          t1, sp, s3
496:              sub          s7, t0, s8
497:              xor          s0, s8, sp
                  andi         a2, t1, 1608
                  sltiu        a2, a1, -832
                  sub          a2, a0, a5
                  addi         gp, t2, 1664
                  auipc        t1, 1045927
                  nop
                  lui          a3, 781069
                  sub          a4, a0, gp
                  lui          t5, 753880
                  srai         s3, s1, 6
                  and          ra, t1, s4
                  bgeu         t1, t2, 523f
                  slti         s2, a0, -1935
                  beq          s8, s2, 524f
                  sltiu        t3, a7, 61
                  ori          sp, t5, -1549
                  sll          s3, t0, t2
                  auipc        tp, 217059
                  blt          sp, s11, 527f
                  sub          a0, s3, t0
                  bltu         a3, t4, 533f
                  add          s10, t6, a4
                  bgeu         s3, s0, 534f
                  sltiu        gp, gp, -484
                  sltu         s0, s2, a3
523:              bne          t1, t6, 539f
524:              bne          t2, s9, 526f
                  sub          a1, a7, t5
526:              bgeu         t1, s7, 539f
527:              ori          t1, s5, -249
                  ori          s8, a2, 1242
                  and          s11, gp, a6
                  bgeu         t5, t6, 540f
                  bltu         tp, sp, 548f
                  srai         ra, s5, 28
533:              lui          tp, 685718
534:              ori          a0, t4, -1553
                  bge          s1, t1, 544f
                  lui          a1, 297693
                  addi         zero, s4, 1949
                  sltu         a4, t2, t0
539:              add          a5, t3, ra
540:              slt          t5, s9, s3
                  bgeu         a1, a6, 549f
                  andi         s9, sp, -422
                  sra          a2, a4, s9
544:              srli         ra, gp, 24
                  blt          zero, s9, 553f
                  slti         t1, s9, 1696
                  bltu         a7, zero, 553f
548:              andi         t2, s0, -1528
549:              slt          tp, t2, s2
                  blt          s7, s9, 568f
                  ori          s2, a5, 1577
                  sltu         zero, s2, s4
553:              slt          t0, s9, a7
                  addi         a5, s11, -2044
                  and          t6, t3, s11
                  slt          s8, a0, sp
                  bge          t0, a5, 577f
                  andi         t0, a4, -320
                  beq          t1, a5, 574f
                  and          s2, zero, gp
                  blt          s7, a2, 577f
                  srai         a3, t6, 20
                  add          a2, a6, ra
                  bgeu         s9, a6, 575f
                  slli         a5, s11, 25
                  bltu         a5, s4, 582f
                  or           s4, s11, a1
568:              srli         s8, ra, 27
                  nop
                  xor          gp, s2, gp
                  bgeu         t0, t2, 578f
                  bne          a1, zero, 586f
                  sltiu        a6, gp, -218
574:              andi         s4, s1, 1762
575:              sra          s3, zero, a4
                  xor          a7, s8, a0
577:              srai         gp, s7, 22
578:              andi         a2, a2, 895
                  sra          t2, ra, s3
                  srl          a4, a1, tp
                  slti         a7, a4, 900
582:              addi         a6, t6, 592
                  bgeu         s9, a4, 596f
                  add          s10, a2, a4
                  or           t1, sp, t1
586:              beq          t3, s8, 602f
                  sll          a2, ra, a5
                  xori         ra, ra, 1997
                  srli         gp, t4, 9
                  sltu         t1, s3, tp
                  bgeu         s10, a1, 604f
                  srl          sp, gp, a0
                  bge          t0, a6, 607f
                  srli         t5, t5, 4
                  andi         t6, t4, 1968
596:              add          ra, s3, s3
                  and          t0, t6, t0
                  xori         s3, a1, 1370
                  sra          s11, a6, a3
                  slli         sp, s6, 20
                  lui          s4, 199530
602:              bge          gp, a3, 612f
                  add          t1, s5, a5
604:              or           a0, t1, tp
                  bge          s8, s11, 615f
                  sll          t6, s0, s7
607:              beq          t6, t1, 620f
                  sll          s0, sp, t5
                  andi         s7, a6, 1217
                  srli         s4, zero, 27
                  srli         s10, tp, 14
612:              srli         s7, a1, 27
                  or           s10, t2, s6
                  srai         tp, gp, 18
615:              slli         s11, s6, 9
                  srli         s8, s3, 22
                  and          a3, s4, a2
                  lui          tp, 704200
                  xor          t5, s3, s9
620:              bltu         s7, zero, 639f
                  or           a1, sp, gp
                  sll          s8, s5, zero
                  sltu         a7, t6, s11
                  xor          gp, tp, s5
                  bltu         t4, a3, 632f
                  sltu         sp, a7, t6
                  lui          a7, 881228
                  bgeu         a2, a0, 648f
                  sltu         a4, tp, s2
                  srai         s11, gp, 30
                  sltu         ra, s7, s5
632:              bgeu         t3, a2, 648f
                  lui          t2, 470669
                  bne          a2, s11, 635f
635:              slt          s7, t4, a0
                  bge          t4, a0, 647f
                  sub          t1, s3, s5
                  bltu         ra, a2, 655f
639:              bgeu         s2, ra, 655f
                  slt          gp, s8, s6
                  or           t4, s5, t1
                  xor          a0, t0, sp
                  srli         a1, a0, 2
                  sra          s7, s5, t3
                  slli         a3, a2, 29
                  srl          s3, ra, t2
647:              sltu         a0, tp, s11
648:              bgeu         a1, a0, 665f
                  bne          s11, t6, 650f
650:              or           a7, s10, zero
                  sub          ra, s0, a7
                  slti         s8, ra, -485
                  beq          tp, a2, 655f
                  xori         ra, ra, -65
655:              slt          a0, s1, zero
                  slt          s7, a0, a1
                  slt          a5, s11, t0
                  ori          s7, s10, 750
                  sra          s0, s9, a1
                  xor          a3, t4, s10
                  srli         t3, t1, 17
                  xori         s0, a2, 441
                  addi         s11, s4, -1273
                  sub          s8, ra, t3
665:              sltiu        a1, t3, 819
                  beq          t6, t3, 685f
                  lui          a4, 47376
                  andi         t2, a6, 294
                  andi         s9, s8, 881
                  add          a1, a3, s7
                  bne          s1, zero, 680f
                  slti         s7, zero, 301
                  slli         s10, s5, 1
                  slli         gp, tp, 16
                  srli         sp, t0, 12
                  xor          ra, t4, a5
                  bge          t0, s0, 684f
                  xor          s11, s6, t3
                  bge          s7, t3, 692f
680:              srai         a1, t5, 7
                  srl          t5, a4, s5
                  slt          t1, a0, t4
                  nop
684:              nop
685:              slti         t5, a0, -882
                  auipc        s0, 462866
                  sll          a3, s8, a7
                  sub          ra, t5, s10
                  slli         gp, s4, 11
                  bne          a4, s5, 691f
691:              addi         t6, t0, -145
692:              bgeu         s8, gp, 705f
                  add          s10, s9, s2
                  nop
                  slti         a7, gp, 1451
                  andi         t5, a3, -529
                  xori         a3, t5, 211
                  srli         a3, a6, 27
                  sltiu        gp, s11, 1831
                  addi         a1, t6, -1395
                  blt          t1, s8, 721f
                  lui          t5, 932614
                  beq          t4, a2, 710f
                  srai         s2, s6, 9
705:              sltiu        s11, s3, 1207
                  bgeu         s10, s8, 723f
                  slt          s2, s3, s3
                  add          a3, t3, a1
                  auipc        t4, 851840
710:              srai         s4, t2, 28
                  xori         t0, s2, -893
                  nop
                  andi         t3, a7, -842
                  blt          zero, s9, 724f
                  bltu         s2, a0, 731f
                  slli         a0, s11, 4
                  auipc        t3, 668581
                  sub          s9, gp, t6
                  bltu         s8, a2, 720f
720:              sltiu        t2, a2, -1729
721:              slti         tp, sp, 806
                  bgeu         sp, ra, 740f
723:              sub          ra, s3, t4
724:              srl          a6, t3, s11
                  slli         t1, a2, 18
                  slli         s11, s6, 20
sub_5_5:          jal          t1, 20f
0:                jal          ra, 21f
1:                jal          ra, 4f
2:                jal          t3, 25f
3:                jal          t1, 9f
4:                jal          ra, 18f
5:                jal          t1, 17f
6:                jal          t1, 0b
7:                jal          sp, 3b
8:                jal          ra, 7b
9:                jal          ra, 10f
10:               jal          ra, 22f
11:               jal          ra, 2b
12:               jal          t1, 19f
13:               jal          ra, 8b
14:               jal          t1, 5b
15:               jal          ra, 6b
16:               jal          ra, 26f
17:               jal          t1, 24f
18:               jal          ra, 11b
19:               jal          ra, 15b
20:               jal          t1, 13b
21:               jal          a6, 1b
22:               jal          a7, 12b
23:               jal          ra, 16b
24:               jal          a6, 23b
25:               jal          s8, 14b
26:               srai         s9, s8, 26
                  ori          a6, a3, -1110
                  sltiu        a4, s7, -1513
                  xori         t4, t1, -1407
                  auipc        a7, 385294
731:              srai         s0, a1, 19
                  xor          s2, a3, s6
                  andi         a6, s7, 749
                  lui          s4, 291617
                  andi         ra, a3, -1749
                  sub          s0, s11, s8
                  addi         a7, s2, 1224
                  slt          tp, tp, ra
                  slti         tp, s5, -106
740:              xor          sp, s7, s5
                  addi         a6, sp, -1602
                  ori          s11, s11, 132
                  and          s0, a5, s7
                  addi         a6, a3, 1098
                  sub          a2, s8, a4
                  sra          t6, a6, s9
                  srai         zero, a0, 4
                  slti         s3, gp, 1215
                  bgeu         s4, t6, 755f
                  sltiu        s9, a2, -1929
                  bgeu         s5, a0, 764f
                  addi         sp, t2, 1969
                  addi         t2, ra, -296
                  bgeu         a5, a3, 756f
755:              sltu         s11, t2, s1
756:              addi         t1, t4, 464
                  beq          zero, s7, 768f
                  or           a1, a0, tp
                  bne          tp, s4, 773f
                  slti         s8, ra, -1846
                  srl          s8, t6, gp
                  add          a7, t6, t5
                  nop
764:              and          a7, ra, t5
                  bne          s8, s4, 779f
                  slli         s2, a6, 7
                  sub          a1, s10, t3
768:              blt          s4, s1, 784f
                  nop
                  srli         s11, s10, 27
                  slli         ra, s1, 5
                  xor          s3, sp, s0
773:              sltu         a6, a7, tp
                  xori         ra, a0, -1301
                  srli         t6, ra, 0
                  bne          s7, t1, 796f
                  and          s0, t5, t6
                  bgeu         a6, gp, 794f
779:              slt          s7, ra, s7
                  sra          a6, s0, a5
                  and          t0, t4, s9
                  ori          s7, ra, 1520
                  srli         t5, a0, 14
784:              and          t2, a2, s9
                  andi         t0, a6, 1494
                  andi         gp, t3, -584
                  srai         s0, s3, 3
                  slt          a4, s3, s4
                  bltu         tp, s10, 797f
                  and          t6, a0, s0
                  xor          s2, a2, s0
                  sltiu        s0, a5, -261
sub_5_16:         jal          t1, 15f
0:                jal          ra, 9f
1:                jal          tp, 19f
2:                jal          ra, 7f
3:                jal          ra, 4f
4:                jal          t4, 8f
5:                jal          t1, 12f
6:                jal          ra, 3b
7:                jal          ra, 26f
8:                jal          ra, 2b
9:                jal          t1, 20f
10:               jal          ra, 5b
11:               jal          ra, 0b
12:               jal          t1, 18f
13:               jal          a7, 16f
14:               jal          a0, 22f
15:               jal          ra, 17f
16:               jal          ra, 25f
17:               jal          t1, 11b
18:               jal          ra, 13b
19:               jal          sp, 10b
20:               jal          ra, 24f
21:               jal          ra, 23f
22:               jal          ra, 21b
23:               jal          sp, 1b
24:               jal          ra, 14b
25:               jal          s9, 6b
26:               jal          ra, 27f
27:               srli         s0, zero, 0
                  sll          a7, a6, tp
794:              sll          t0, s4, a6
                  slli         ra, s2, 0
796:              slti         tp, a0, 577
797:              bltu         t3, a3, 813f
                  ori          s0, a2, -811
                  lui          a3, 447104
                  and          a1, s5, s8
                  sub          gp, s10, s6
                  nop
                  and          s2, s5, s5
                  sll          s3, s4, s4
                  or           t0, tp, t4
                  ori          zero, t6, 191
                  xor          t4, s0, s2
                  slli         s10, s9, 29
                  sll          s2, s3, s7
                  beq          ra, gp, 820f
                  or           s9, a2, t3
                  sra          a4, a2, gp
813:              andi         s2, a0, 1147
                  bgeu         s9, s2, 830f
                  srli         ra, s6, 5
                  lui          t0, 964146
                  lui          a5, 433629
                  add          s2, zero, t4
                  and          s4, tp, s10
820:              bltu         s3, s3, 835f
                  beq          t4, t3, 829f
                  bgeu         s6, s3, 833f
                  sub          t4, t3, gp
                  slt          s10, gp, s0
                  add          a0, a4, s11
                  bne          sp, zero, 843f
                  bge          a4, a4, 843f
                  srl          gp, t0, s10
829:              nop
830:              auipc        s0, 311296
                  slti         a1, a4, 624
                  slt          s7, a3, gp
833:              blt          a2, t3, 835f
                  bltu         s5, t4, 848f
835:              sra          a1, s0, t1
                  or           s11, s4, a4
                  srli         s9, t6, 14
                  sll          zero, a0, s11
                  slt          t2, s5, ra
                  bltu         s6, sp, 847f
                  xori         s4, ra, 889
                  bltu         a7, a2, 850f
843:              sll          t6, s8, a4
                  bltu         t1, sp, 854f
                  sra          s4, t2, s11
                  sra          a5, s11, tp
847:              sll          a7, a3, s1
848:              srai         t4, tp, 26
                  bltu         ra, a2, 864f
850:              sub          t0, s5, zero
                  sltiu        s10, a1, 1360
                  or           s2, a1, a5
                  bltu         s11, s5, 862f
854:              addi         s11, s6, 1314
                  blt          s3, s0, 869f
                  srli         t0, s0, 21
                  andi         t1, gp, -1531
                  andi         s7, t6, 1791
                  slti         s10, gp, 1686
                  slli         a4, s3, 12
                  and          s10, s11, gp
862:              slti         s10, s7, 525
                  srl          tp, a3, t4
864:              slti         t5, sp, 641
                  lui          ra, 845566
                  sltu         s8, a5, t2
                  nop
                  blt          a7, s6, 879f
869:              sub          s11, t3, s11
                  nop
                  srli         a4, t2, 14
                  slli         s9, a6, 9
                  srli         a4, t6, 17
                  bltu         s0, s8, 887f
                  auipc        t5, 98924
                  slli         t1, a3, 14
                  sltu         s10, s7, t2
                  blt          s6, t4, 884f
879:              xori         ra, s1, -1236
                  bge          a1, t5, 897f
                  or           zero, s2, s3
                  beq          a5, s3, 893f
                  or           a5, s7, s9
884:              or           a2, s11, s9
                  or           s7, t1, s8
                  andi         t6, t1, -926
887:              add          ra, s9, s4
                  bge          gp, sp, 901f
                  bge          a4, a0, 896f
                  sltu         s2, a5, a6
                  srl          s0, t3, s9
                  bge          s2, zero, 893f
893:              xori         t0, tp, -1121
                  bgeu         s8, a1, 914f
                  slli         s10, t1, 22
896:              blt          s9, zero, 914f
897:              sub          tp, a7, tp
                  andi         s7, s11, -1894
                  bgeu         t5, t3, 915f
                  andi         s2, ra, 885
901:              add          a4, a5, s7
                  add          t0, s10, tp
                  auipc        a2, 789735
                  auipc        s9, 703330
                  srli         zero, s8, 7
                  srli         t1, s6, 20
                  bltu         a3, a6, 908f
908:              lui          ra, 577862
                  bge          a6, t3, 917f
                  bgeu         s4, ra, 927f
                  sub          a7, a2, s0
                  and          t0, t5, gp
                  bge          a0, s8, 929f
914:              auipc        a6, 18187
915:              sltiu        a4, s9, 1164
                  and          a4, a0, a5
917:              srli         a5, a0, 12
                  slti         s4, zero, 2047
                  and          a7, s0, s2
                  slt          s0, s8, a6
                  lui          s10, 233374
                  sll          gp, a1, ra
                  sll          a5, t5, s5
                  srli         a0, a6, 29
                  or           ra, s6, t3
                  srl          t2, s11, a1
927:              srli         s9, s5, 4
                  or           tp, t4, t4
929:              srai         s11, a4, 9
                  bge          t1, a4, 946f
                  xori         a2, a3, 603
                  sra          s7, gp, s2
                  xor          a7, a7, sp
                  auipc        a1, 678946
                  bltu         s3, gp, 948f
                  slli         s10, s9, 23
                  blt          s6, s7, 956f
                  srl          s0, s10, s3
                  beq          s2, t5, 959f
                  beq          t4, gp, 950f
                  sub          s9, s0, ra
                  sra          s9, a7, zero
                  ori          s11, t3, 417
                  sltu         a5, t6, t6
                  bge          s8, t3, 961f
946:              or           s0, t0, s9
                  beq          t5, a0, 958f
948:              slti         s2, t0, -634
                  srli         s7, a5, 13
950:              addi         zero, t4, -804
                  sltu         t4, sp, s9
                  nop
                  add          s3, a4, s5
                  and          a0, a6, s6
                  bne          a5, t2, 965f
956:              add          a7, t1, a7
                  or           a3, s5, s11
958:              bne          a1, s4, 971f
959:              srl          s2, a3, s1
                  or           s4, zero, gp
961:              and          s8, t6, ra
                  xor          s11, t3, a4
                  andi         s3, s11, 1042
                  sub          ra, tp, a3
965:              bgeu         a7, a0, 976f
                  nop
                  sub          tp, t3, zero
                  lui          s3, 614337
                  bgeu         s3, t6, 986f
                  xori         a4, t1, 381
971:              slt          s7, a1, a2
                  and          ra, s3, s9
                  xori         s10, a3, -854
                  xori         s2, zero, 9
                  xor          a2, t0, s4
976:              nop
                  sltiu        s8, s5, -1610
                  addi         t5, t2, -528
                  beq          s7, a2, 999f
                  xor          a5, s4, s1
                  nop
                  auipc        tp, 250064
                  slli         a5, t6, 24
                  add          t4, s3, t1
                  sll          s3, t1, s4
986:              lui          a2, 907872
                  bgeu         a2, a0, 989f
                  andi         a4, sp, 989
989:              bge          s3, s11, 1008f
                  srai         s4, tp, 0
                  sub          a7, a1, a0
                  nop
                  slti         s7, a5, -983
                  srai         s11, t2, 7
                  sra          s2, sp, s6
                  sll          a1, tp, s5
                  srl          a3, s1, s3
                  slt          a0, a5, a2
999:              or           s2, t4, s2
                  sltu         t0, s3, t2
                  srli         s0, t6, 31
                  xori         zero, a5, -937
                  and          s3, t3, sp
                  beq          t2, t2, 1020f
sub_5_15:         jal          t1, 24f
0:                jal          t0, 18f
1:                jal          a5, 0b
2:                jal          t0, 23f
3:                jal          ra, 2b
4:                jal          ra, 11f
5:                jal          t1, 6f
6:                jal          ra, 20f
7:                jal          t1, 13f
8:                jal          ra, 26f
9:                jal          ra, 10f
10:               jal          t1, 3b
11:               jal          ra, 25f
12:               jal          s9, 15f
13:               jal          sp, 5b
14:               jal          ra, 17f
15:               jal          ra, 9b
16:               jal          ra, 21f
17:               jal          s2, 28f
18:               jal          s4, 22f
19:               jal          ra, 1b
20:               jal          ra, 19b
21:               jal          t1, 8b
22:               jal          a2, 16b
23:               jal          ra, 7b
24:               jal          ra, 12b
25:               jal          ra, 29f
26:               jal          t1, 27f
27:               jal          s8, 14b
28:               jal          t6, 4b
29:               or           t6, s5, t1
                  and          t1, t1, s4
                  xori         a2, s11, 1829
                  nop
1008:             sub          s7, t2, a6
                  srai         s7, s2, 18
                  or           a5, s5, ra
                  srl          a0, s10, s4
                  sltiu        tp, s10, -1729
                  srli         a3, t5, 12
                  nop
                  srl          t6, a3, s6
                  blt          t1, a2, 1032f
                  beq          a1, t3, 1024f
                  ori          s3, a3, 249
                  auipc        sp, 296405
1020:             bge          s9, s4, 1027f
                  nop
                  lui          s9, 964512
                  bltu         s8, s4, 1039f
1024:             sltiu        sp, a0, -1305
                  slti         s2, s5, -1283
                  or           a0, s3, a7
1027:             ori          a6, t5, -873
                  slt          s9, a5, t2
                  bne          a5, zero, 1039f
                  sltu         a5, a1, a7
                  sub          t5, s11, s2
1032:             sub          t2, s4, s2
                  slti         t5, t4, 437
                  ori          a3, a2, 312
                  srli         t2, ra, 10
                  xori         t6, s11, -99
                  sltu         s2, ra, t4
                  lui          s3, 961980
1039:             bge          a6, s7, 1045f
                  srl          a1, s10, t4
                  xori         a0, s0, 1489
                  srli         t0, gp, 19
                  slt          a0, s2, s10
                  srli         s9, tp, 29
1045:             sub          ra, s3, s3
                  slli         t4, a7, 4
                  slli         t5, a2, 24
                  bge          sp, s1, 1066f
                  xori         tp, t4, -1558
                  nop
                  ori          t3, t6, -1484
                  or           s4, a6, s5
                  sltiu        tp, s11, 396
                  or           s9, s9, s7
                  slt          s7, t6, t2
                  bge          s0, t5, 1073f
                  ori          a0, gp, -25
                  beq          s1, sp, 1071f
                  addi         t6, sp, 2041
                  xori         s11, t6, -368
                  slti         s11, a4, 247
                  ori          s7, s2, 968
                  bne          s1, a7, 1083f
                  bge          a3, a3, 1072f
                  srl          t5, t2, tp
1066:             ori          s4, t3, -657
                  srl          t0, t5, t1
                  ori          s8, t1, -883
                  nop
                  addi         a1, s1, 690
1071:             and          s9, s2, t1
1072:             srai         s2, t3, 0
1073:             slti         s2, s0, -1547
                  xor          s3, s10, t5
                  add          a1, s0, t3
                  addi         s4, s11, 356
                  bgeu         a2, s11, 1078f
1078:             bltu         t0, t5, 1093f
                  sltu         zero, t4, a0
                  srli         t6, s2, 16
                  srli         t1, s10, 17
                  bltu         t4, s2, 1095f
1083:             bne          a4, s6, 1091f
                  auipc        s3, 751632
                  bltu         s7, t4, 1099f
                  slli         a2, t5, 12
                  beq          t0, a3, 1096f
sub_5_6:          jal          t1, 6f
0:                jal          ra, 8f
1:                jal          ra, 2f
2:                jal          ra, 9f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          a2, 4b
6:                jal          ra, 7f
7:                jal          s4, 0b
8:                jal          ra, 1b
9:                jal          t1, 3b
10:               sll          t5, s3, t0
                  xori         s2, t5, -1544
                  slli         a0, s1, 29
                  or           s4, zero, s0
1091:             or           t3, sp, t3
                  addi         s3, s0, 377
1093:             sltu         s0, s5, t3
                  srl          a1, t5, s10
1095:             sra          s4, s0, t5
1096:             srl          t1, a1, t1
                  xori         s2, s8, 76
                  slli         a0, s3, 19
1099:             slli         tp, a6, 8
                  andi         s8, a5, -1297
                  bne          s6, a0, 1117f
                  ori          ra, a5, 442
                  nop
                  beq          gp, sp, 1120f
                  bge          a6, t1, 1119f
                  sltiu        t2, a7, 725
                  sltu         s9, gp, t4
                  add          sp, s10, a7
                  sub          ra, sp, s7
                  sll          a2, a7, sp
                  slt          a1, s10, t5
                  auipc        a7, 811835
                  sll          t1, a0, sp
                  xor          a0, t5, s8
                  srai         t2, t4, 7
                  ori          t1, ra, -231
1117:             and          gp, sp, s4
                  bge          s3, s2, 1119f
1119:             sub          a1, a0, t4
1120:             sra          zero, gp, a2
                  or           s8, a3, t3
                  sll          t6, s6, s9
                  sltu         t3, s8, gp
                  bgeu         s11, t3, 1140f
                  lui          a1, 43839
                  ori          a4, s2, -277
                  sub          a6, s2, t0
                  xori         gp, t1, -1479
                  beq          sp, t6, 1142f
                  nop
                  bge          t3, a2, 1141f
                  auipc        t2, 424472
                  bgeu         s3, a6, 1150f
                  bge          s5, t6, 1140f
                  slt          ra, tp, sp
                  ori          a4, s0, -1086
                  bgeu         s0, a2, 1156f
                  bge          t6, a2, 1146f
                  nop
1140:             beq          s10, a5, 1154f
1141:             bge          sp, zero, 1143f
1142:             blt          gp, s6, 1158f
1143:             bge          tp, s0, 1144f
1144:             nop
                  slt          a4, a6, a1
1146:             bne          zero, s0, 1162f
                  or           t6, s0, t0
                  sra          tp, a0, a7
                  sll          tp, s11, t2
1150:             sltu         a4, s4, t0
                  auipc        t5, 778196
                  xori         a6, ra, 116
                  sub          s7, a4, t2
1154:             bltu         s9, s11, 1165f
                  nop
1156:             sra          s2, s4, ra
                  ori          t0, a7, -2009
1158:             sra          t3, t2, t2
                  sub          s0, s1, a7
                  lui          a0, 332390
                  xori         t6, a5, -237
1162:             ori          t4, sp, -1678
                  srl          a6, t0, s8
                  sltiu        s8, t0, 957
1165:             add          s0, s8, t4
                  slt          t4, a5, t2
                  xori         s3, a7, 367
sub_5_0:          jal          t1, 7f
0:                jal          t5, 9f
1:                jal          ra, 19f
2:                jal          a1, 17f
3:                jal          ra, 4f
4:                jal          t5, 10f
5:                jal          ra, 2b
6:                jal          ra, 15f
7:                jal          t1, 13f
8:                jal          ra, 0b
9:                jal          sp, 1b
10:               jal          ra, 18f
11:               jal          ra, 5b
12:               jal          t1, 16f
13:               jal          ra, 12b
14:               jal          s2, 11b
15:               jal          t1, 8b
16:               jal          s7, 14b
17:               jal          ra, 3b
18:               jal          ra, 6b
19:               slt          t5, a5, s2
                  sltiu        a1, s4, 11
                  bne          s3, t6, 1176f
                  xor          t4, a3, zero
                  andi         s8, ra, 1316
                  xor          s3, t5, a4
                  bge          zero, s9, 1191f
                  beq          a6, a0, 1188f
                  srai         a2, t3, 22
1176:             sltiu        a0, s5, 589
                  xor          s2, s0, t1
                  sra          s3, s2, tp
                  xori         t5, sp, -826
                  bne          t1, s4, 1189f
                  bne          a2, t3, 1201f
                  xori         sp, t1, 94
                  auipc        s3, 1002832
                  slt          ra, a2, t6
                  or           a7, t4, zero
                  sra          t3, s6, t4
                  lui          s4, 575161
1188:             srl          ra, s6, s2
1189:             bltu         a2, a1, 1204f
                  sub          a4, a0, sp
1191:             sltiu        s4, tp, 1388
                  srli         a7, a6, 6
                  andi         gp, a7, 769
                  addi         a0, tp, -319
                  addi         s7, sp, -1084
                  bne          s4, s3, 1209f
                  bltu         ra, t4, 1205f
                  srai         s2, s1, 0
                  blt          s9, s3, 1206f
                  auipc        gp, 871773
1201:             slt          a7, s1, a2
                  bge          s6, s0, 1210f
                  nop
1204:             bltu         ra, tp, 1210f
1205:             bgeu         s9, tp, 1210f
1206:             andi         a7, gp, 1710
                  blt          t5, a7, 1210f
                  slli         a3, a2, 16
1209:             slli         a4, a2, 14
1210:             xori         ra, s9, -2035
                  lw           t1, 4(s6)
                  sll          s8, t3, a4
                  addi         s6, s6, 52
                  sltiu        zero, tp, 783
                  slti         gp, a6, -483
1760:             addi x24, x6, 1
1760:             jalr x24, x24, 0
sub_4:            or           a6, t4, a3
                  andi         ra, s1, -1947
                  bgeu         ra, s0, sub_4_stack_p
                  xor          ra, a1, s3
                  addi         t2, s9, 1973
sub_4_stack_p:    addi         s6, s6, -60
                  sll          t0, a1, s6
                  sw           t1, 4(s6)
                  srl          a6, t0, a0
                  xor          s2, s1, s7
                  add          a4, s7, s9
                  andi         s4, s5, -135
sub_4_0:          jal          t1, 2f
0:                jal          ra, 18f
1:                jal          ra, 10f
2:                jal          ra, 7f
3:                jal          ra, 22f
4:                jal          ra, 11f
5:                jal          t1, 15f
6:                jal          ra, 1b
7:                jal          ra, 6b
8:                jal          a2, 3b
9:                jal          ra, 23f
10:               jal          t1, 14f
11:               jal          ra, 16f
12:               jal          t1, 8b
13:               jal          ra, 20f
14:               jal          ra, 4b
15:               jal          ra, 17f
16:               jal          t1, 12b
17:               jal          s4, 21f
18:               jal          tp, 9b
19:               jal          t4, 13b
20:               jal          t1, 5b
21:               jal          gp, 0b
22:               jal          ra, 19b
23:               add          s11, s3, a1
                  sra          t5, s3, t5
                  sll          t4, gp, zero
                  nop
                  bltu         s0, a6, 10f
                  and          s11, a4, t5
                  srli         s7, t6, 18
                  bne          s9, s10, 14f
                  srai         t0, a1, 17
                  slli         a4, s0, 18
                  bltu         a4, t3, 10f
10:               srai         s3, a6, 13
                  bne          zero, s9, 30f
                  and          s8, a6, t4
                  blt          t1, ra, 18f
14:               sub          a6, t2, tp
                  bgeu         a5, t4, 23f
                  auipc        tp, 257456
                  slt          a7, t0, t6
18:               addi         t2, gp, 123
                  sltu         t2, a5, t5
                  sub          s2, t3, t1
                  xor          t0, sp, a3
                  sra          t3, a0, s10
23:               add          s7, s3, a6
                  sra          a6, s10, t0
                  xor          t4, a6, t4
                  xori         s8, t4, 616
                  sltiu        sp, ra, 1887
                  and          a6, a7, t2
                  srli         t5, a1, 1
30:               and          t2, a7, a4
                  auipc        s11, 390115
                  auipc        a4, 357811
                  auipc        a5, 737981
                  bge          s2, s8, 45f
                  addi         s7, t3, -1200
                  slti         t1, a4, 1747
                  blt          a4, s6, 40f
                  ori          t1, a2, 1349
                  srl          a1, t3, s0
40:               blt          tp, a5, 51f
                  sll          s8, s7, s6
                  andi         s11, a0, 386
                  or           a4, ra, s8
                  sltu         s3, s11, s10
45:               andi         gp, s0, -588
                  bgeu         tp, t3, 51f
                  lui          a0, 447886
                  add          s7, t4, s1
                  andi         sp, s10, 1588
                  srli         s4, t2, 3
51:               auipc        sp, 126947
                  xor          t4, t2, s9
                  or           t2, ra, t6
                  srli         tp, s0, 9
                  nop
                  slli         s11, a5, 19
                  lw           t1, 4(s6)
                  sltiu        t4, ra, -1452
                  add          ra, s2, s7
                  addi         t2, s1, 730
                  addi         s6, s6, 60
                  sll          tp, ra, sp
                  sll          s7, t1, s7
101:              addi x10, x6, 1
101:              jalr x10, x10, 0
sub_2:            srai         s3, s2, 21
                  bltu         tp, ra, sub_2_stack_p
                  nop
                  slt          s0, s8, s1
                  sub          s0, t5, t4
sub_2_stack_p:    addi         s6, s6, -12
                  sra          s9, s1, t1
                  sw           t1, 4(s6)
                  sub          s8, s10, a3
                  addi         tp, t5, 866
                  slli         s11, a2, 19
                  la           s8, sub_4
                  slli         a0, t4, 3
                  sub          a4, s2, s4
                  lui          s3, 47795
                  addi         s8, s8, 83
                  bge          sp, sp, sub_2_j4 #branch to jump instr
                  lui          a4, 262685
sub_2_j4:         jalr         t1, s8, -83 #jump sub_2 -> sub_4
                  and          t3, zero, s1
                  or           t2, a3, s6
                  sub          t0, s2, t3
                  sltiu        s0, a6, 1414
                  la           ra, sub_5
                  add          s9, s1, s6
                  add          sp, a2, s0
                  auipc        s9, 819487
                  and          t6, s2, s11
                  addi         ra, ra, -884
                  nop
sub_2_j5:         jalr         t1, ra, 885 #jump sub_2 -> sub_5
                  sra          s9, s7, s4
                  lui          s11, 72080
                  slli         s11, t0, 12
                  add          s3, a6, s10
                  srai         zero, t5, 13
                  or           s10, s1, gp
                  and          t0, s9, zero
                  slti         a0, tp, -1424
                  ori          a3, s3, -1320
                  srai         t0, a4, 30
sub_2_j6:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  xori         s2, gp, 1682
                  nop
                  sra          s8, a6, s11
                  la           a7, sub_4
                  addi         a7, a7, 801
                  slti         t3, s11, -953
                  srli         t2, s3, 31
                  bltu         t4, a4, sub_2_j7 #branch to jump instr
                  srl          t1, s8, a6
                  add          s4, a1, a0
                  sub          t1, t2, a3
                  xori         a3, gp, -838
                  slt          s2, sp, t5
sub_2_j7:         jalr         t1, a7, -801 #jump sub_2 -> sub_4
sub_2_0:          jal          t1, 5f
0:                jal          ra, 7f
1:                jal          s3, 11f
2:                jal          t1, 8f
3:                jal          ra, 15f
4:                jal          s3, 2b
5:                jal          t1, 13f
6:                jal          ra, 16f
7:                jal          ra, 4b
8:                jal          sp, 9f
9:                jal          t1, 12f
10:               jal          ra, 14f
11:               jal          t1, 0b
12:               jal          t1, 10b
13:               jal          t1, 1b
14:               jal          ra, 3b
15:               jal          t1, 6b
16:               addi         a4, a7, -1660
                  bne          a6, s11, 16f
                  ori          s7, s6, -332
                  slt          s0, a1, t6
                  bne          a3, sp, 9f
                  srl          s11, s2, t3
                  beq          a3, s11, 10f
                  bge          zero, s9, 10f
                  add          t1, s8, zero
                  srli         a6, a6, 22
9:                srai         a2, t1, 10
10:               lui          t4, 1002633
                  sra          a3, t4, a6
                  blt          a1, a3, 15f
                  xor          sp, a2, t6
                  ori          a3, a0, 1371
15:               srai         s10, s2, 29
16:               and          s11, t2, s2
                  srli         t6, s5, 0
                  bne          a5, s1, 36f
                  bgeu         a2, a1, 27f
                  slli         tp, s1, 9
                  sll          a1, t3, a0
                  srli         gp, t0, 26
                  bltu         s0, s3, 35f
                  auipc        a7, 262140
                  bge          t0, a5, 36f
                  slt          t5, a4, zero
27:               slti         ra, t0, -1007
                  xori         s8, gp, -1650
                  slt          s0, t3, t1
                  auipc        a7, 566069
                  and          ra, sp, s10
                  bltu         s3, tp, 45f
                  and          t5, t1, s1
                  slli         gp, a1, 0
35:               xori         s4, a2, 1323
36:               srai         s2, t3, 27
                  or           a4, s3, t4
                  slli         t2, t4, 24
                  add          s2, s8, s8
                  sra          t4, s8, s1
                  srl          a7, sp, a0
                  bge          ra, s7, 59f
                  sub          a2, s7, s4
                  lui          t3, 197466
45:               sra          gp, s1, t1
                  slti         sp, ra, -753
                  or           a4, a2, a1
                  bltu         a5, t3, 63f
                  add          sp, s2, s9
                  sub          zero, t0, s2
                  xori         a1, t4, 850
                  andi         t6, s6, 852
                  and          s7, s7, s4
                  slli         s3, s9, 10
                  xor          t3, a1, t2
                  nop
                  ori          s8, a7, -1419
                  sltu         t5, s1, s5
59:               srli         a2, s8, 26
                  andi         s3, s7, -1728
                  slli         t0, s0, 25
                  nop
63:               andi         s0, a2, 1359
                  addi         sp, t2, -1135
                  srli         t1, s2, 30
                  slti         t6, t6, 525
                  addi         sp, ra, -1323
                  bltu         a6, tp, 79f
                  beq          s1, t6, 74f
                  sltu         s11, s2, t1
                  slti         s7, s0, -2003
                  ori          zero, s10, 1073
                  sub          tp, gp, s10
74:               auipc        t3, 365744
                  srli         ra, t3, 6
                  beq          a7, s7, 84f
                  srli         s10, a3, 31
                  beq          t1, tp, 84f
79:               ori          s3, s3, -816
                  auipc        a4, 111138
                  sra          sp, a4, s5
                  bne          a2, a0, 84f
                  andi         tp, s9, 24
84:               srli         a3, a4, 12
                  andi         gp, s1, -1618
                  slt          s9, gp, a6
                  slti         a3, gp, -1934
                  nop
                  lw           t1, 4(s6)
                  and          t4, t3, t1
                  andi         a6, tp, -866
                  addi         s6, s6, 12
                  add          t6, t2, tp
                  or           a6, t6, a7
169:              addi x30, x6, 0
169:              jalr x30, x30, 0
sub_1:            addi         s6, s6, -44
                  or           a4, a5, sp
                  sub          s8, t2, a4
                  or           s7, s6, s6
                  or           a4, a7, s10
                  sw           t1, 4(s6)
                  slti         s4, s2, -1010
                  srai         s0, t1, 14
                  bge          zero, tp, sub_1_j3 #branch to jump instr
                  srai         a5, s10, 19
                  nop
                  andi         sp, s11, -1253
                  nop
                  or           gp, gp, s2
                  addi         a7, gp, -399
                  nop
                  and          s10, t2, s5
                  xor          s10, tp, s7
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
sub_1_13:         jal          t1, 18f
0:                jal          ra, 5f
1:                jal          ra, 13f
2:                jal          ra, 16f
3:                jal          ra, 9f
4:                jal          ra, 0b
5:                jal          ra, 7f
6:                jal          gp, 12f
7:                jal          ra, 2b
8:                jal          ra, 14f
9:                jal          gp, 6b
10:               jal          ra, 15f
11:               jal          ra, 8b
12:               jal          t1, 4b
13:               jal          t0, 10b
14:               jal          t1, 1b
15:               jal          ra, 3b
16:               jal          t1, 19f
17:               jal          t1, 11b
18:               jal          t1, 17b
19:               sltiu        a1, s4, 520
sub_1_4:          jal          t1, 7f
0:                jal          ra, 1f
1:                jal          t1, 20f
2:                jal          ra, 8f
3:                jal          ra, 26f
4:                jal          ra, 23f
5:                jal          t1, 27f
6:                jal          ra, 3b
7:                jal          gp, 12f
8:                jal          ra, 9f
9:                jal          ra, 29f
10:               jal          s10, 2b
11:               jal          tp, 13f
12:               jal          t3, 11b
13:               jal          s2, 15f
14:               jal          ra, 16f
15:               jal          t1, 19f
16:               jal          s11, 17f
17:               jal          ra, 4b
18:               jal          ra, 24f
19:               jal          ra, 10b
20:               jal          ra, 21f
21:               jal          ra, 25f
22:               jal          sp, 0b
23:               jal          ra, 28f
24:               jal          t4, 14b
25:               jal          ra, 18b
26:               jal          sp, 30f
27:               jal          ra, 6b
28:               jal          ra, 5b
29:               jal          t1, 22b
30:               and          s8, s9, s10
sub_1_11:         jal          t1, 21f
0:                jal          ra, 18f
1:                jal          ra, 10f
2:                jal          ra, 6f
3:                jal          ra, 13f
4:                jal          t1, 16f
5:                jal          ra, 17f
6:                jal          ra, 26f
7:                jal          t1, 12f
8:                jal          gp, 7b
9:                jal          t1, 3b
10:               jal          ra, 14f
11:               jal          ra, 27f
12:               jal          ra, 23f
13:               jal          ra, 2b
14:               jal          ra, 8b
15:               jal          ra, 0b
16:               jal          ra, 19f
17:               jal          ra, 9b
18:               jal          t1, 11b
19:               jal          ra, 20f
20:               jal          t1, 1b
21:               jal          ra, 4b
22:               jal          a2, 25f
23:               jal          ra, 5b
24:               jal          ra, 22b
25:               jal          ra, 15b
26:               jal          t3, 24b
27:               xori         t2, tp, 72
sub_1_17:         jal          t1, 17f
0:                jal          ra, 29f
1:                jal          t5, 13f
2:                jal          ra, 16f
3:                jal          ra, 9f
4:                jal          ra, 10f
5:                jal          t1, 27f
6:                jal          sp, 20f
7:                jal          t1, 24f
8:                jal          ra, 25f
9:                jal          t0, 28f
10:               jal          t1, 5b
11:               jal          ra, 0b
12:               jal          ra, 8b
13:               jal          ra, 3b
14:               jal          ra, 23f
15:               jal          tp, 6b
16:               jal          ra, 11b
17:               jal          ra, 26f
18:               jal          t1, 12b
19:               jal          a4, 4b
20:               jal          ra, 19b
21:               jal          t1, 7b
22:               jal          tp, 14b
23:               jal          ra, 2b
24:               jal          ra, 22b
25:               jal          ra, 1b
26:               jal          ra, 18b
27:               jal          a6, 21b
28:               jal          s4, 15b
29:               xori         t0, s10, 400
sub_1_6:          jal          t1, 15f
0:                jal          ra, 2f
1:                jal          t1, 10f
2:                jal          s7, 12f
3:                jal          ra, 26f
4:                jal          t5, 22f
5:                jal          ra, 16f
6:                jal          ra, 20f
7:                jal          s4, 1b
8:                jal          ra, 0b
9:                jal          ra, 13f
10:               jal          ra, 6b
11:               jal          a3, 25f
12:               jal          ra, 4b
13:               jal          ra, 3b
14:               jal          ra, 19f
15:               jal          ra, 8b
16:               jal          ra, 21f
17:               jal          ra, 18f
18:               jal          t1, 7b
19:               jal          ra, 5b
20:               jal          ra, 24f
21:               jal          ra, 11b
22:               jal          gp, 14b
23:               jal          t1, 9b
24:               jal          t1, 23b
25:               jal          t4, 17b
26:               xor          s2, s11, zero
sub_1_7:          jal          t1, 9f
0:                jal          a0, 4f
1:                jal          ra, 2f
2:                jal          ra, 6f
3:                jal          ra, 21f
4:                jal          ra, 12f
5:                jal          t1, 17f
6:                jal          a4, 24f
7:                jal          ra, 16f
8:                jal          ra, 3b
9:                jal          ra, 0b
10:               jal          ra, 20f
11:               jal          ra, 7b
12:               jal          ra, 22f
13:               jal          ra, 1b
14:               jal          ra, 11b
15:               jal          t0, 14b
16:               jal          gp, 18f
17:               jal          sp, 13b
18:               jal          ra, 5b
19:               jal          a2, 15b
20:               jal          a3, 8b
21:               jal          t1, 23f
22:               jal          ra, 10b
23:               jal          ra, 19b
24:               lui          a7, 11586
sub_1_1:          jal          t1, 12f
0:                jal          ra, 2f
1:                jal          t1, 20f
2:                jal          tp, 5f
3:                jal          s10, 4f
4:                jal          t3, 17f
5:                jal          ra, 23f
6:                jal          t1, 3b
7:                jal          ra, 22f
8:                jal          ra, 14f
9:                jal          t1, 11f
10:               jal          t0, 0b
11:               jal          tp, 10b
12:               jal          ra, 7b
13:               jal          t1, 15f
14:               jal          t1, 9b
15:               jal          sp, 25f
16:               jal          t2, 13b
17:               jal          a3, 18f
18:               jal          ra, 24f
19:               jal          ra, 1b
20:               jal          t1, 26f
21:               jal          t1, 6b
22:               jal          ra, 21b
23:               jal          s7, 16b
24:               jal          s8, 8b
25:               jal          ra, 19b
26:               auipc        s0, 877528
sub_1_2:          jal          t1, 2f
0:                jal          t1, 1f
1:                jal          ra, 8f
2:                jal          ra, 4f
3:                jal          ra, 0b
4:                jal          ra, 10f
5:                jal          ra, 11f
6:                jal          ra, 7f
7:                jal          gp, 3b
8:                jal          ra, 5b
9:                jal          ra, 6b
10:               jal          ra, 9b
11:               jal          t1, 12f
12:               lui          s11, 383809
sub_1_19:         jal          t1, 5f
0:                jal          ra, 14f
1:                jal          t5, 13f
2:                jal          ra, 11f
3:                jal          t1, 8f
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          sp, 1b
7:                jal          t1, 2b
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               jal          t1, 4b
11:               jal          t1, 12f
12:               jal          ra, 6b
13:               jal          ra, 10b
14:               sltu         tp, t3, t2
sub_1_15:         jal          t1, 2f
0:                jal          a5, 13f
1:                jal          t1, 17f
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          ra, 22f
5:                jal          t1, 12f
6:                jal          ra, 9f
7:                jal          ra, 20f
8:                jal          a6, 14f
9:                jal          t1, 3b
10:               jal          t1, 0b
11:               jal          ra, 23f
12:               jal          gp, 21f
13:               jal          ra, 11b
14:               jal          ra, 7b
15:               jal          ra, 8b
16:               jal          t1, 15b
17:               jal          sp, 19f
18:               jal          ra, 16b
19:               jal          sp, 4b
20:               jal          ra, 5b
21:               jal          ra, 10b
22:               jal          ra, 18b
23:               slt          s4, a0, t5
sub_1_8:          jal          t1, 10f
0:                jal          a3, 13f
1:                jal          ra, 12f
2:                jal          ra, 15f
3:                jal          t1, 1b
4:                jal          sp, 2b
5:                jal          ra, 11f
6:                jal          ra, 18f
7:                jal          ra, 6b
8:                jal          a7, 7b
9:                jal          s3, 0b
10:               jal          ra, 17f
11:               jal          ra, 20f
12:               jal          t1, 16f
13:               jal          ra, 14f
14:               jal          t1, 4b
15:               jal          t1, 19f
16:               jal          ra, 8b
17:               jal          ra, 9b
18:               jal          t1, 5b
19:               jal          t1, 3b
20:               xori         s9, a0, 1841
sub_1_12:         jal          t1, 8f
0:                jal          t0, 10f
1:                jal          s8, 15f
2:                jal          a7, 7f
3:                jal          ra, 5f
4:                jal          ra, 23f
5:                jal          ra, 21f
6:                jal          ra, 12f
7:                jal          ra, 3b
8:                jal          t4, 24f
9:                jal          t1, 13f
10:               jal          tp, 22f
11:               jal          s2, 9b
12:               jal          ra, 20f
13:               jal          gp, 19f
14:               jal          t1, 6b
15:               jal          ra, 18f
16:               jal          tp, 11b
17:               jal          s9, 4b
18:               jal          s7, 25f
19:               jal          ra, 26f
20:               jal          s10, 1b
21:               jal          ra, 0b
22:               jal          ra, 14b
23:               jal          s9, 16b
24:               jal          s4, 2b
25:               jal          ra, 17b
26:               srli         s3, s3, 0
sub_1_18:         jal          t1, 20f
0:                jal          s7, 15f
1:                jal          ra, 6f
2:                jal          ra, 22f
3:                jal          ra, 21f
4:                jal          ra, 9f
5:                jal          ra, 12f
6:                jal          t1, 10f
7:                jal          t1, 1b
8:                jal          ra, 24f
9:                jal          s8, 27f
10:               jal          t1, 0b
11:               jal          t0, 25f
12:               jal          t1, 18f
13:               jal          ra, 3b
14:               jal          ra, 8b
15:               jal          ra, 2b
16:               jal          ra, 7b
17:               jal          a2, 23f
18:               jal          gp, 11b
19:               jal          a6, 17b
20:               jal          ra, 14b
21:               jal          ra, 26f
22:               jal          ra, 5b
23:               jal          ra, 4b
24:               jal          ra, 13b
25:               jal          a2, 19b
26:               jal          ra, 16b
27:               addi         a7, s0, -599
sub_1_9:          jal          t1, 10f
0:                jal          a0, 5f
1:                jal          t1, 16f
2:                jal          ra, 13f
3:                jal          ra, 11f
4:                jal          ra, 9f
5:                jal          ra, 15f
6:                jal          ra, 8f
7:                jal          t1, 6b
8:                jal          t3, 3b
9:                jal          s0, 2b
10:               jal          ra, 7b
11:               jal          ra, 4b
12:               jal          s10, 14f
13:               jal          a4, 12b
14:               jal          ra, 0b
15:               jal          ra, 1b
16:               add          zero, a0, s3
sub_1_10:         jal          t1, 8f
0:                jal          ra, 17f
1:                jal          ra, 15f
2:                jal          ra, 23f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          t1, 19f
6:                jal          t5, 25f
7:                jal          ra, 24f
8:                jal          ra, 22f
9:                jal          s0, 14f
10:               jal          t1, 18f
11:               jal          ra, 13f
12:               jal          ra, 6b
13:               jal          t1, 20f
14:               jal          a7, 1b
15:               jal          t1, 12b
16:               jal          ra, 11b
17:               jal          ra, 7b
18:               jal          a1, 9b
19:               jal          ra, 26f
20:               jal          t1, 10b
21:               jal          a3, 16b
22:               jal          ra, 3b
23:               jal          t1, 21b
24:               jal          ra, 2b
25:               jal          ra, 4b
26:               slti         a6, gp, -551
sub_1_0:          jal          t1, 11f
0:                jal          t1, 1f
1:                jal          t1, 14f
2:                jal          ra, 13f
3:                jal          t1, 17f
4:                jal          ra, 8f
5:                jal          a6, 7f
6:                jal          tp, 10f
7:                jal          t1, 0b
8:                jal          ra, 16f
9:                jal          ra, 15f
10:               jal          ra, 3b
11:               jal          tp, 12f
12:               jal          t1, 5b
13:               jal          gp, 9b
14:               jal          ra, 2b
15:               jal          t2, 4b
16:               jal          ra, 6b
17:               auipc        s8, 1013410
sub_1_3:          jal          t1, 0f
0:                jal          a5, 2f
1:                jal          gp, 3f
2:                jal          a7, 7f
3:                jal          t1, 10f
4:                jal          ra, 1b
5:                jal          ra, 12f
6:                jal          s3, 13f
7:                jal          ra, 4b
8:                jal          t1, 14f
9:                jal          a3, 5b
10:               jal          ra, 11f
11:               jal          ra, 6b
12:               jal          ra, 8b
13:               jal          t1, 9b
14:               srai         sp, a1, 28
                  slli         a0, t1, 21
                  slti         ra, s2, -1335
                  and          a0, a5, t2
                  slt          a2, a4, s0
                  beq          a2, a3, 8f
                  andi         a6, s6, 1338
                  or           a5, t3, s8
                  blt          s5, s11, 13f
8:                and          zero, a2, a4
                  or           ra, a2, ra
                  xor          a3, a1, s11
                  blt          s5, s3, 30f
                  beq          s9, tp, 21f
13:               lui          a0, 134220
                  add          s8, t5, s6
                  andi         a0, s8, 898
                  add          a0, a7, ra
                  sub          t2, s8, t5
                  beq          gp, a3, 23f
                  nop
                  sub          s9, s0, s5
21:               add          a7, a5, s4
                  add          a3, s0, t0
23:               sltu         ra, s4, t6
                  slti         s11, ra, -381
                  bltu         a4, t2, 27f
                  slli         s7, s8, 27
27:               bne          a1, zero, 39f
                  auipc        tp, 900468
                  bge          t6, t1, 31f
30:               slt          a3, s9, s5
sub_1_16:         jal          t1, 4f
0:                jal          t3, 11f
1:                jal          ra, 22f
2:                jal          ra, 23f
3:                jal          t0, 24f
4:                jal          ra, 14f
5:                jal          ra, 0b
6:                jal          ra, 3b
7:                jal          ra, 15f
8:                jal          ra, 9f
9:                jal          s9, 19f
10:               jal          tp, 5b
11:               jal          a6, 17f
12:               jal          ra, 13f
13:               jal          ra, 10b
14:               jal          t1, 16f
15:               jal          ra, 20f
16:               jal          gp, 1b
17:               jal          ra, 27f
18:               jal          t0, 2b
19:               jal          ra, 12b
20:               jal          ra, 18b
21:               jal          s4, 7b
22:               jal          ra, 21b
23:               jal          ra, 25f
24:               jal          t1, 8b
25:               jal          t1, 6b
26:               jal          ra, 28f
27:               jal          t1, 26b
28:               and          a5, a5, t5
31:               xor          s9, a6, s4
                  lui          t6, 801549
                  bge          tp, t0, 39f
                  sll          s2, s7, a4
                  and          a7, a2, t5
                  or           t5, ra, a4
                  bge          s3, t3, 42f
                  srl          s0, t6, gp
39:               lui          ra, 151299
                  slli         gp, t5, 16
                  andi         s7, s6, 1088
42:               beq          t4, s8, 60f
                  beq          zero, a3, 49f
                  andi         a0, a4, 2025
                  sub          s11, a2, s8
                  bgeu         s6, a1, 61f
                  addi         ra, gp, -1672
                  slti         a4, a0, 1503
49:               sltu         tp, ra, s10
                  srli         a5, a7, 26
                  slti         a2, t3, -614
                  auipc        zero, 513130
                  addi         t3, a5, 1401
                  slti         a2, s10, -513
                  xor          t5, a6, s0
                  sltiu        t0, gp, -780
                  and          a0, a0, a6
                  nop
                  srli         t5, s5, 30
60:               or           s0, a0, a2
61:               slli         a3, s6, 6
                  bgeu         ra, gp, 78f
                  nop
                  bge          a5, s6, 72f
                  and          s9, s4, s7
                  nop
                  bgeu         s11, ra, 85f
                  blt          a4, s7, 74f
                  bgeu         a6, a4, 82f
                  lui          s10, 90031
                  slti         a4, s2, 1210
72:               ori          t5, t1, 656
                  bge          s9, s1, 91f
74:               or           s9, t0, s10
                  slti         a7, a1, -79
                  bgeu         a3, s8, 95f
                  srli         tp, t4, 20
78:               sra          t3, t1, zero
                  sltu         t6, t3, gp
                  bltu         s7, t0, 100f
                  addi         a1, a1, -2043
82:               or           t6, t0, s5
                  auipc        a2, 473314
                  slti         t4, s5, 556
85:               ori          t3, s2, -757
                  slti         zero, t6, -1792
                  sll          gp, t3, t1
                  auipc        s4, 1047396
                  sll          s10, a0, a7
                  slt          a2, s10, s2
91:               xor          s11, a6, s5
                  blt          a0, a2, 104f
                  sltu         zero, a4, s0
                  and          a6, s2, s8
95:               xor          ra, s7, s9
                  and          s4, t6, zero
                  xor          a1, s2, a5
                  nop
                  ori          s0, a7, -1774
100:              sll          s4, s11, s6
                  bgeu         s7, t1, 119f
                  bltu         t6, a1, 109f
                  slt          a6, t2, a4
104:              bge          tp, gp, 121f
                  or           t0, t3, t1
                  ori          s7, t0, 1369
                  srai         zero, a2, 28
                  sll          gp, s1, ra
109:              auipc        a3, 571343
                  lui          s7, 502910
                  slti         a4, sp, -302
                  blt          ra, a5, 131f
                  srli         a4, a1, 0
                  xori         sp, a5, -1667
                  bltu         a5, s10, 135f
                  bne          s2, s2, 134f
                  and          sp, a5, t1
                  bne          tp, s8, 129f
119:              xor          a4, a5, t3
                  sll          s10, a7, s0
121:              srl          a1, a2, a5
                  sra          a0, s2, a5
                  xori         a3, s2, 1515
                  auipc        a3, 46033
                  ori          t4, s1, 1602
                  sltu         a5, zero, a4
                  sra          t3, s0, s9
                  sll          a2, t6, sp
129:              sra          t3, a0, s11
                  add          s0, s4, a2
131:              srl          a5, a7, s7
                  slt          s11, s6, s0
                  srl          s4, s7, a5
sub_1_14:         jal          t1, 6f
0:                jal          t1, 14f
1:                jal          ra, 7f
2:                jal          t1, 0b
3:                jal          ra, 1b
4:                jal          tp, 2b
5:                jal          t1, 9f
6:                jal          t1, 13f
7:                jal          ra, 10f
8:                jal          t6, 15f
9:                jal          ra, 8b
10:               jal          t1, 5b
11:               jal          ra, 4b
12:               jal          ra, 11b
13:               jal          t1, 12b
14:               jal          ra, 3b
15:               srli         tp, s3, 28
134:              or           a6, s3, s2
135:              slti         a2, t4, -1641
                  bge          s10, t0, 156f
                  ori          t4, sp, -1100
                  sltu         s0, tp, a3
                  beq          t6, tp, 151f
                  andi         zero, zero, 1437
                  bne          t3, t2, 161f
                  auipc        s9, 985079
                  sltu         s4, zero, s8
                  and          s2, s1, a6
                  bgeu         ra, sp, 152f
                  ori          s11, s6, 1103
                  bltu         tp, t5, 166f
                  nop
                  sltiu        a3, t4, 761
                  ori          s3, s3, -97
151:              xor          s0, a1, t5
152:              xor          a4, t6, a2
                  lui          a3, 463648
                  bgeu         s8, a2, 172f
                  or           a1, s7, t6
156:              slli         sp, a7, 28
                  sltiu        ra, t5, -1508
                  sltiu        a5, s1, -1729
                  bgeu         a4, t1, 171f
                  add          t1, s6, t3
161:              xori         a1, t2, 399
                  srai         s2, zero, 27
                  bge          s3, s4, 180f
                  add          s4, a1, s11
                  slli         a6, s9, 4
166:              addi         a7, a6, -1155
                  lui          s7, 306760
                  sltiu        ra, s0, -137
                  nop
                  sltiu        s10, s9, 309
171:              auipc        t6, 320934
172:              sltu         t3, a1, a4
                  xor          a2, t5, s11
                  add          t0, a0, s3
                  slli         gp, t5, 31
                  nop
                  beq          s10, s10, 195f
                  lui          a1, 33568
                  blt          s10, s7, 194f
180:              sltu         sp, a1, ra
                  bge          a1, a3, 186f
                  bltu         t6, t6, 200f
                  srai         gp, s9, 30
                  xori         zero, a6, -1283
                  srl          s3, s8, a3
186:              nop
                  bgeu         s7, s11, 203f
                  ori          ra, t4, 1233
                  srai         a5, tp, 27
                  slli         s11, s7, 27
                  srl          t2, t1, tp
                  ori          s0, t3, -619
                  sll          a1, s2, a1
194:              ori          s4, gp, 941
195:              or           s2, t0, gp
                  srl          a2, a6, t3
                  sltu         ra, s5, t3
                  xori         a4, gp, -371
                  sub          t0, a1, s10
200:              sltiu        a7, gp, 375
                  and          t4, s10, a1
                  slli         a4, a6, 14
203:              sll          s3, t3, t1
                  and          s7, s9, a4
                  beq          sp, a2, 211f
                  srl          s4, gp, zero
                  sltu         s0, gp, a1
                  blt          ra, s1, 226f
                  sub          t1, t1, a3
                  bgeu         t1, s1, 221f
211:              srai         tp, a3, 5
                  sltu         a1, tp, s0
                  blt          a0, a6, 233f
                  auipc        ra, 154533
                  srai         sp, t1, 2
                  bge          t2, a2, 224f
                  xor          s11, t2, t5
                  srli         a3, s8, 31
                  srai         t6, s7, 26
                  addi         a5, gp, 807
221:              ori          t2, s9, 991
                  slt          a3, s5, s9
                  bgeu         t5, tp, 242f
224:              and          a4, s4, ra
                  nop
226:              and          t0, s7, t2
                  andi         a3, tp, -1498
                  and          t2, a1, s0
                  bltu         t2, gp, 235f
                  bge          t6, a7, 250f
                  or           tp, sp, a5
                  bltu         t2, t5, 234f
233:              bgeu         a7, t1, 246f
234:              beq          s8, t6, 252f
235:              srli         t5, s9, 3
                  and          s2, s10, a1
                  ori          s8, t4, 1996
                  and          s11, s0, t5
                  bne          s0, s5, 248f
                  slt          t1, tp, s4
                  sltiu        s7, s8, 1191
242:              lui          a2, 894738
                  andi         s3, s9, -1266
                  srl          s11, s2, s0
                  and          a5, a7, a5
246:              auipc        a3, 307632
                  addi         t1, s9, -1453
248:              addi         s9, t6, 265
                  and          zero, t3, sp
250:              xori         s9, s8, 1101
                  add          t5, ra, ra
252:              nop
                  beq          a4, sp, 272f
                  and          a7, a7, t6
                  ori          s8, s10, 330
                  bgeu         s11, t3, 258f
                  add          a0, s4, a7
258:              ori          t2, s9, 58
                  ori          t0, s2, 243
                  xori         s8, s3, -441
                  or           s10, t2, gp
                  bne          t5, ra, 267f
                  sra          sp, t3, s5
                  bgeu         t4, s10, 268f
                  add          a7, sp, a6
                  ori          a4, a1, 1689
267:              srli         ra, s5, 5
268:              add          s2, a2, t4
                  add          tp, t3, t3
                  slti         s7, gp, -1820
                  auipc        s0, 1045668
272:              sub          a1, s5, t3
                  slt          s8, ra, s10
                  bltu         gp, s6, 280f
                  sll          s4, s9, s3
                  slli         s8, s8, 13
                  sra          ra, a0, t0
                  or           s0, s8, s5
                  srli         a4, a2, 6
280:              sltiu        gp, s10, 575
                  or           t2, a2, s5
                  auipc        s10, 291380
                  auipc        s2, 1030973
                  andi         t4, tp, -702
                  bgeu         s6, t3, 291f
                  bltu         s3, a4, 291f
                  add          s4, s1, s4
                  auipc        s0, 963883
                  and          a1, t2, t1
                  sll          a7, s4, a1
291:              sra          a0, a5, gp
                  sll          zero, t1, s9
                  sltiu        tp, a5, -639
                  addi         a0, s7, 971
                  andi         a6, gp, 1761
                  addi         a4, t2, 568
                  blt          t4, a0, 305f
                  bgeu         t0, s0, 309f
                  and          sp, tp, s1
                  andi         s11, s3, 818
                  auipc        s9, 723069
                  srl          s2, ra, a3
                  ori          tp, sp, 609
                  bne          t4, s2, 309f
305:              and          s0, t2, s11
                  addi         a3, s1, -863
                  bgeu         a5, a1, 314f
                  add          ra, a2, a1
309:              or           s3, s8, s4
                  andi         t2, a2, 270
                  srai         t2, a7, 13
                  auipc        t6, 716267
                  auipc        s0, 622649
314:              sltu         a1, t6, a4
                  srli         zero, a7, 21
                  xori         t4, t4, -536
                  addi         s8, a5, -1312
                  sltu         a5, t3, a5
                  xor          s2, gp, s3
                  bne          a2, ra, 324f
                  slli         sp, a0, 30
                  sltu         s4, t1, a7
                  beq          s8, t6, 336f
324:              or           t6, a6, zero
                  blt          s6, a0, 331f
                  auipc        a6, 447059
                  xor          t5, s10, s6
                  slti         a3, t2, 1622
                  xori         s0, s10, -984
                  sll          t2, gp, sp
331:              sll          zero, a6, s11
                  and          gp, s8, s1
                  srai         s11, s3, 19
                  sltu         t5, a7, s10
                  lui          s11, 524803
336:              sltu         s7, a0, a5
                  andi         s4, t0, 2027
                  add          a4, t3, s9
                  sltiu        t1, s11, 1855
                  lui          s10, 23999
                  slti         t3, a2, 1626
                  sra          a7, sp, gp
                  sltiu        s4, a4, 1989
                  or           t5, t3, a7
                  sltu         a6, a7, a7
                  bltu         t0, s10, 364f
                  or           s0, s1, s11
                  bge          sp, a7, 350f
                  sll          s9, t2, t6
350:              xori         ra, a1, 201
                  blt          s4, s11, 369f
                  and          t4, s4, s0
                  sltu         t0, s11, s8
                  xori         s8, a7, -284
                  beq          sp, a2, 367f
                  sll          t6, t3, s9
                  xor          t2, gp, s3
                  sub          t6, ra, t1
                  ori          ra, sp, 1545
                  bltu         a2, t0, 366f
                  bge          ra, s8, 381f
                  slti         tp, s10, 1837
                  srli         t4, s11, 14
364:              sll          t6, t3, t4
                  auipc        a2, 22432
366:              srl          a3, s1, s0
367:              sra          s8, t1, s1
                  slti         s9, s8, -1292
369:              nop
                  blt          s2, s10, 390f
                  addi         a2, a4, 1319
                  auipc        s3, 173438
                  srli         s9, t0, 12
                  or           a5, s5, gp
                  bgeu         s2, s2, 377f
                  slt          zero, s1, t5
377:              xor          t4, t6, s4
                  sltiu        s7, s5, 473
                  slti         a6, s7, -1840
                  bge          t6, s5, 399f
381:              add          s3, a0, s7
                  srai         s9, s4, 29
                  sra          s11, t2, s7
                  lui          a2, 656888
                  and          s8, s1, t1
                  sltu         a7, s7, s11
                  xor          sp, t5, s5
                  auipc        a1, 36266
                  add          a4, s10, s3
390:              slt          a6, s10, a0
                  srai         t6, t4, 31
                  or           sp, sp, s8
                  bne          t3, s11, 411f
                  andi         a6, a6, -745
                  slt          t4, s3, a5
                  sub          t5, t2, t3
                  xori         t2, gp, 1578
                  slli         a0, a5, 6
399:              bge          s3, a1, 419f
                  bge          t0, a4, 416f
sub_1_5:          jal          t1, 19f
0:                jal          s3, 9f
1:                jal          a7, 15f
2:                jal          ra, 4f
3:                jal          t1, 2b
4:                jal          ra, 14f
5:                jal          a4, 8f
6:                jal          sp, 1b
7:                jal          ra, 12f
8:                jal          ra, 10f
9:                jal          ra, 7b
10:               jal          t1, 21f
11:               jal          t0, 13f
12:               jal          t1, 11b
13:               jal          sp, 23f
14:               jal          ra, 16f
15:               jal          s2, 17f
16:               jal          ra, 18f
17:               jal          tp, 5b
18:               jal          s9, 22f
19:               jal          gp, 6b
20:               jal          ra, 3b
21:               jal          ra, 20b
22:               jal          a5, 0b
23:               sra          a3, a6, a4
                  auipc        a2, 146765
                  slli         a0, s3, 23
                  xor          a3, a7, t0
                  xor          s11, tp, s11
                  lui          s4, 687753
                  blt          s9, s4, 412f
                  add          t4, t1, a2
                  or           tp, a5, a6
                  xor          s8, s9, t5
                  slti         s3, a1, 1461
411:              auipc        s9, 632024
412:              sltu         ra, zero, s7
                  auipc        ra, 428600
                  sltiu        tp, a7, 2007
                  ori          a3, t2, 1114
416:              slti         t2, t5, -1003
                  srli         s10, s9, 11
                  sltiu        s11, s8, 1191
419:              blt          t2, a2, 437f
                  addi         s10, t1, -375
                  sub          a2, t6, s6
                  xori         s11, gp, -382
                  sltu         a0, a2, a4
                  ori          ra, a5, 1260
                  bltu         a6, a7, 444f
                  bgeu         a4, sp, 445f
                  blt          s9, a5, 439f
                  srli         gp, t6, 29
                  srli         t3, t6, 6
                  sll          a3, t4, a6
                  nop
                  slti         t5, s3, -10
                  bne          ra, s0, 451f
                  ori          t2, sp, -1449
                  blt          t0, a1, 444f
                  bltu         sp, s2, 453f
437:              lui          t4, 943306
                  xori         t4, t4, 482
439:              or           a2, t1, tp
                  slti         s11, t1, -695
                  sra          gp, zero, ra
                  slli         t3, s7, 15
                  bge          t0, a3, 449f
444:              srai         zero, gp, 12
445:              add          a0, t5, a6
                  sub          a3, a2, s3
                  or           s4, t2, t5
                  and          t6, t0, s5
449:              slli         gp, t1, 5
                  blt          a2, a6, 465f
451:              sll          s0, s2, t1
                  srl          t6, t2, a3
453:              or           a1, s7, t5
                  lui          a7, 799844
                  sltu         s0, s9, a2
                  ori          t6, t4, -1674
                  andi         sp, a3, 18
                  add          t5, s9, s5
                  and          t2, s2, s8
                  and          s11, s2, s10
                  bltu         s0, s1, 479f
                  bne          zero, s6, 474f
                  sltu         s8, t6, t2
                  sltiu        a6, t4, 201
465:              add          s9, s7, a4
                  or           a5, a4, t6
                  blt          ra, t5, 472f
                  srli         t3, s9, 1
                  and          ra, s1, s9
                  lui          t2, 831284
                  srl          a1, a2, t6
472:              srli         t3, t6, 15
                  xori         s9, s3, 1598
474:              add          zero, ra, t1
                  xor          t2, s0, s8
                  ori          a5, s2, 1147
                  and          s10, s5, s6
                  xor          a0, a3, a1
479:              slli         a5, s0, 30
                  bltu         t3, t5, 485f
                  bltu         s10, a2, 487f
                  add          a0, s2, zero
                  slt          a2, a6, s4
                  auipc        zero, 774589
485:              auipc        t0, 828990
                  slti         a5, gp, -800
487:              add          s0, s5, t3
                  sltiu        a5, s1, 896
                  blt          a3, a0, 496f
                  sltiu        s7, a4, -9
                  slli         t5, s5, 27
                  slli         sp, a0, 7
                  nop
                  or           t6, s2, s5
                  xori         t4, a5, -329
496:              sll          tp, s2, t2
                  bgeu         s8, t6, 499f
                  sltiu        t6, t0, 114
499:              or           s10, t2, s5
                  sltu         a7, sp, s8
                  addi         s10, s7, -229
                  sll          s8, s8, a5
                  auipc        t5, 46427
                  slt          s10, s11, a6
                  bltu         s6, s9, 518f
                  srl          t5, t1, zero
                  sltiu        t4, a2, 405
                  xori         s2, t2, 1247
                  srl          t0, s9, t4
                  and          a7, a4, s10
                  ori          s0, a2, -1912
                  slt          sp, s6, a6
                  sltiu        s8, t1, 359
                  or           a3, s5, sp
                  sub          a7, a7, t4
                  xori         a5, s9, -1610
                  ori          sp, a5, -1256
518:              bne          s3, tp, 538f
                  nop
                  andi         s0, a6, -1281
                  srl          a6, t4, zero
                  bgeu         t6, s9, 542f
                  sltu         s8, s2, a5
                  auipc        a0, 395935
                  sub          sp, a2, t4
                  bge          a3, s9, 532f
                  auipc        s11, 249184
                  ori          s8, s6, -1367
                  addi         zero, a5, 1927
                  slti         s8, gp, -1848
                  bgeu         s4, a4, 546f
532:              bge          ra, s0, 541f
                  xori         t2, t4, -1366
                  srl          a0, s1, a5
                  andi         t6, s10, -1486
                  bne          s3, s1, 547f
                  andi         a4, t4, 2033
538:              slti         zero, s0, 1882
                  sll          s7, s0, a7
                  slti         zero, s1, -1051
541:              beq          a1, t3, 559f
542:              andi         t4, s4, -1732
                  sra          s4, a7, t1
                  or           s7, s8, s11
                  sltiu        t3, s2, -1771
546:              sra          t3, zero, t4
547:              xori         a5, s3, 1686
                  sltiu        s7, tp, 1772
                  bgeu         t0, a1, 569f
                  auipc        a2, 1025697
                  addi         sp, s6, -1092
                  blt          t6, a6, 571f
                  slti         a3, s5, -1076
                  xor          t4, s7, t1
                  sub          a2, t1, s2
                  sltiu        s11, a1, 1443
                  slt          t1, tp, a5
                  srai         t6, a2, 14
559:              lui          t4, 131659
                  sll          a7, a6, a6
                  srai         a6, s3, 31
                  sra          s11, t6, t0
                  add          t6, s11, s1
                  srli         a0, zero, 23
                  and          a2, s5, s8
                  addi         a7, t6, -384
                  sltu         zero, s7, a2
                  slti         a0, s4, -1798
569:              slli         a7, sp, 1
                  auipc        sp, 877859
571:              sub          tp, s11, a3
                  srli         a6, a2, 21
                  beq          a1, t0, 591f
                  blt          tp, s8, 592f
                  beq          s6, a4, 579f
                  slt          t1, s10, sp
                  srai         t3, zero, 9
                  slli         t4, s11, 15
579:              sub          a5, s10, s10
                  srl          sp, s11, a2
                  slt          t3, a3, s4
                  slti         a0, s8, 729
                  auipc        s10, 891899
                  xori         a5, t4, 502
                  auipc        zero, 863213
                  ori          s3, s6, -1070
                  slti         t0, a6, 1797
                  slli         a4, zero, 14
                  auipc        s11, 313591
                  bgeu         a5, s11, 596f
591:              srl          a7, a6, s11
592:              xori         t2, t1, 1963
                  auipc        s9, 214744
                  andi         t6, t0, -253
                  bltu         a6, t3, 614f
596:              bltu         s6, s7, 615f
                  lui          zero, 976070
                  sltiu        s0, a7, -647
                  add          a7, a3, tp
                  sll          a7, t0, s8
                  or           s2, s7, gp
                  xori         a6, t0, 311
                  bgeu         gp, s4, 621f
                  sltu         zero, a0, a7
                  andi         t3, a7, -1187
                  ori          ra, a3, 792
                  blt          a2, s11, 623f
                  or           s2, t6, s11
                  bgeu         ra, s11, 626f
                  sra          zero, s0, a2
                  srai         tp, s11, 25
                  srli         t5, t3, 14
                  blt          s2, s8, 619f
614:              ori          a2, a7, -1902
615:              ori          a3, a5, 66
                  add          s3, s8, s11
                  add          a7, a3, gp
                  bgeu         a5, s2, 630f
619:              and          t5, s9, a4
                  srli         tp, gp, 1
621:              sltiu        gp, s7, -318
                  srai         t5, t3, 5
623:              beq          s5, s2, 631f
                  beq          gp, t1, 626f
                  bltu         t6, t4, 641f
626:              srl          s3, t6, sp
                  addi         a5, s3, -1085
                  andi         a0, s3, -1839
                  nop
630:              sltu         s3, t4, a7
631:              add          a7, t3, s0
                  blt          tp, t4, 638f
                  and          s4, a3, a3
                  add          t3, a6, tp
                  xor          s3, s8, a7
                  ori          t5, s11, -1897
                  xor          s8, a6, s5
638:              xor          a5, t4, a5
                  addi         a2, s10, -272
                  andi         a7, t6, 174
641:              sra          s11, t0, s7
                  bltu         a0, s11, 646f
                  and          t1, a5, t5
                  addi         s9, a4, 784
                  addi         gp, a5, 1695
646:              andi         sp, s3, -1557
                  add          a3, t4, s10
                  andi         s7, s11, -107
                  ori          a5, s4, -1706
                  bge          s5, s2, 656f
                  lui          s11, 152014
                  srai         s3, t2, 17
                  sltiu        t6, s3, 676
                  srai         tp, s10, 7
                  bge          a3, s5, 666f
656:              sub          t3, a4, sp
                  srl          s11, s4, a7
                  ori          t1, s6, 1442
                  and          s9, s3, t2
                  slli         s10, t3, 18
                  sltu         a6, s11, t5
                  slti         a4, s7, 234
                  and          a2, s8, a5
                  blt          t5, tp, 676f
                  bge          t5, t5, 680f
666:              addi         gp, t1, -1334
                  blt          a5, s5, 685f
                  sll          ra, gp, s4
                  bltu         t6, s0, 676f
                  sll          a5, s10, s11
                  slti         s11, t1, -705
                  sltiu        a2, sp, 1636
                  sub          s2, s8, t0
                  or           s10, s4, t4
                  srl          gp, a5, gp
676:              slti         s9, t2, 1631
                  xori         sp, t3, 1555
                  auipc        s3, 110627
                  xori         gp, a4, 21
680:              bne          sp, t6, 699f
                  sltu         t1, s4, a6
                  srl          t0, s3, t6
                  or           t1, s0, t0
                  sltu         a4, sp, s8
685:              srl          ra, a7, s3
                  add          s8, s1, t5
                  auipc        t2, 542969
                  andi         zero, a4, 1711
                  or           a1, t0, s2
                  or           gp, s8, a3
                  sll          zero, a1, s10
                  and          s4, s11, a0
                  andi         zero, s2, -1935
                  bne          t6, t3, 707f
                  beq          s0, a5, 714f
                  slti         ra, a3, -1458
                  slti         a3, gp, -1246
                  srli         t4, s2, 21
699:              sltu         a1, a2, t1
                  xor          t1, s0, s5
                  addi         t2, t0, 1449
                  andi         a4, sp, 1211
                  andi         a6, s8, 661
                  xor          a0, t2, a2
                  xori         a1, s3, -339
                  sll          t1, t2, t0
707:              sltu         t3, t2, a6
                  slt          a7, s4, s11
                  lui          s0, 330225
                  slli         t5, a3, 11
                  sltiu        a6, s2, -608
                  sltu         a0, s11, s10
                  auipc        t2, 122240
714:              and          zero, s4, sp
                  srai         a4, s8, 18
                  slli         s9, s5, 16
                  srai         sp, s11, 7
                  bge          s11, gp, 723f
                  nop
                  sltiu        a7, s8, -1825
                  bge          ra, t0, 741f
                  xori         t1, t2, 1680
723:              bltu         t6, t4, 728f
                  srai         s2, s11, 14
                  sltiu        s2, a7, -282
                  sll          a3, t4, ra
                  bltu         s4, t4, 739f
728:              blt          s10, s6, 734f
                  sltiu        a6, tp, 412
                  xori         s11, a3, -1749
                  beq          s9, tp, 739f
                  addi         a6, s4, 1896
                  bge          a6, a6, 753f
734:              bltu         t3, a2, 754f
                  srli         s9, s9, 8
                  xor          a5, ra, a0
                  sub          t3, a3, zero
                  bltu         a2, t2, 756f
739:              sltiu        s4, zero, -222
                  ori          gp, s4, -1798
741:              bgeu         a6, s6, 759f
                  andi         sp, s7, -228
                  sll          zero, t1, a7
                  bgeu         s1, a4, 762f
                  ori          a4, t1, -102
                  blt          a4, t3, 748f
                  slli         s3, tp, 13
748:              lui          a5, 92548
                  add          s8, t6, s1
                  bge          t3, zero, 759f
                  xori         t2, s7, -1557
                  auipc        s10, 114207
753:              ori          t1, t3, -1185
754:              slti         t4, s1, 491
                  addi         a2, t3, 274
756:              bgeu         s1, a5, 773f
                  srl          a6, s9, s5
                  sub          t0, s11, a5
759:              beq          a0, zero, 777f
                  xori         tp, t1, -1105
                  bge          s8, tp, 767f
762:              bltu         a1, t6, 764f
                  addi         a6, s7, -1867
764:              bne          s0, s0, 783f
                  blt          zero, t2, 778f
                  slti         s4, s3, -685
767:              slli         a1, s7, 20
                  sra          s3, s3, t6
                  blt          t5, t5, 775f
                  sra          t4, t6, a5
                  bge          t0, zero, 773f
                  beq          zero, t4, 784f
773:              sll          s7, a3, s5
                  slli         s3, s5, 31
775:              bge          a5, gp, 783f
                  auipc        a3, 168967
777:              nop
778:              add          a7, t3, a0
                  add          t1, a2, t4
                  srl          s4, a4, a6
                  bltu         t2, a1, 798f
                  sub          gp, s1, gp
783:              or           t6, s2, s9
784:              sll          a3, a5, t2
                  sltiu        a6, t6, -983
                  srai         s2, t3, 17
                  slli         sp, s3, 21
                  srli         t3, zero, 0
                  srai         ra, sp, 15
                  srli         s11, s0, 1
                  sll          t4, s10, s0
                  bne          s8, t1, 810f
                  slli         t0, t1, 20
                  slti         t4, s2, -1140
                  slli         s9, zero, 12
                  bgeu         s6, s11, 803f
                  slli         s11, t2, 2
798:              xor          a6, s2, s9
                  bge          a3, a5, 818f
                  bgeu         t0, s9, 812f
                  add          a3, s5, a6
                  slli         a1, s6, 5
803:              add          zero, gp, t6
                  bge          sp, s5, 808f
                  andi         s10, s1, 219
                  sub          a0, t4, t5
                  nop
808:              and          sp, a7, ra
                  slli         t1, s8, 0
810:              ori          s10, a5, 2036
                  bge          s11, a7, 829f
812:              andi         a1, s10, 1724
                  bne          s1, tp, 818f
                  or           a7, a5, a6
                  sltiu        s11, t5, -1374
                  srl          a3, t6, s0
                  sub          a5, a1, zero
818:              srli         s8, t3, 7
                  and          t4, s10, a2
                  xor          gp, s2, gp
                  srai         ra, a1, 4
                  bge          s7, a3, 840f
                  sltiu        t5, t0, -178
                  auipc        ra, 368149
                  bne          t1, t2, 844f
                  slt          a4, a1, a1
                  slt          a7, s6, a5
                  xori         a0, a4, -1106
                  slti         s11, a6, 1324
                  slli         t0, t3, 24
                  sub          a7, zero, a2
                  la           tp, sub_2
                  slli         s10, s9, 8
                  slti         s4, a3, 109
                  addi         tp, tp, 396
                  bne          s8, s10, sub_1_j2 #branch to jump instr
                  addi         t6, s2, 958
                  sltiu        sp, sp, 1508
sub_1_j2:         jalr         t1, tp, -395 #jump sub_1 -> sub_2
                  xori         s0, gp, 262
829:              slt          s10, s3, t3
                  nop
                  bgeu         s11, a2, 837f
                  sll          s4, a0, s1
                  add          a1, s8, s7
                  sub          t6, sp, s0
                  bge          t1, tp, 854f
                  addi         a1, ra, 28
837:              srai         s3, s11, 9
                  beq          s0, s4, 844f
                  auipc        t5, 582655
840:              or           a7, t0, s9
                  auipc        s7, 283740
                  auipc        s0, 800517
                  srai         t2, a6, 5
844:              sltu         a7, ra, t6
                  xori         t3, a7, 665
                  beq          s10, a2, 855f
                  slti         sp, gp, -195
                  slti         s8, t3, -2040
                  ori          t0, tp, -753
                  lui          tp, 74868
                  auipc        s11, 432352
                  sub          s7, t3, t1
                  addi         t4, s9, 580
854:              ori          a1, a1, 52
855:              auipc        s11, 779747
                  and          t4, t6, a5
                  lui          a1, 134498
                  bge          a7, s7, 876f
                  blt          tp, s10, 874f
                  ori          a7, t3, -1076
                  xor          s9, s4, gp
                  bge          a1, s6, 880f
                  sll          s3, ra, tp
                  blt          gp, t0, 870f
                  nop
                  sub          a3, t2, s4
                  srl          t5, ra, s6
                  add          t4, a6, t2
                  ori          gp, s5, -224
870:              lui          gp, 297598
                  blt          s6, s3, 891f
                  addi         a3, s3, -1952
                  bge          zero, s5, 884f
874:              and          t5, a5, s11
                  sltiu        gp, t3, 246
876:              add          zero, a1, t1
                  addi         a2, zero, 106
                  sltiu        t5, a2, -651
                  nop
880:              bgeu         zero, s3, 885f
                  nop
                  bgeu         s9, a6, 902f
                  beq          t1, gp, 903f
884:              blt          s1, s3, 900f
885:              or           s10, tp, s2
                  slti         t5, s10, 1703
                  bne          s7, s10, 889f
                  or           sp, a1, s4
889:              lui          t6, 778904
                  bltu         a4, a6, 896f
891:              add          t5, a7, t0
                  bgeu         a6, s5, 912f
                  bne          s10, t3, 895f
                  sltiu        sp, a5, -179
895:              sll          a4, s5, s2
896:              bltu         s0, t4, 914f
                  and          s4, s5, s2
                  xori         s3, t3, -838
                  bltu         s11, t0, 904f
900:              bge          a7, zero, 916f
                  andi         a1, s7, -1903
902:              auipc        a0, 861815
903:              slli         sp, s11, 19
904:              sub          s10, s9, ra
                  sltiu        s3, gp, -932
                  sll          t3, s11, s1
                  bltu         s8, s1, 926f
                  bne          a2, a6, 926f
                  bge          s2, t4, 913f
                  srli         s3, t6, 16
                  beq          s9, a5, 926f
912:              bge          t6, zero, 930f
913:              slt          zero, s0, a4
914:              blt          t2, s5, 920f
                  xor          ra, s11, t1
916:              sltu         t5, s2, t6
                  slli         s11, a5, 26
                  sll          a6, a5, s10
                  sub          s4, t1, a2
920:              sltu         s8, s7, zero
                  srai         s8, t5, 17
                  bne          s11, s5, 942f
                  andi         s11, ra, 308
                  bge          s1, gp, 933f
                  sltiu        t6, a2, 495
926:              sltu         s11, t0, s1
                  andi         s8, t3, -76
                  sltu         a5, s5, a6
                  andi         t6, ra, -1783
930:              add          t5, a2, s1
                  beq          t6, t6, 943f
                  bne          t3, a6, 940f
933:              xor          s11, sp, s8
                  add          t4, a7, a2
                  slli         a5, s7, 15
                  beq          a5, t2, 941f
                  bne          a3, t3, 955f
                  sra          s2, s9, t2
                  andi         a3, s2, 1375
940:              nop
941:              add          t4, a3, a1
942:              srli         t2, a3, 3
943:              beq          s8, ra, 960f
                  and          tp, a6, t2
                  blt          t0, s4, 964f
                  sltu         s11, tp, a0
                  bgeu         a3, t5, 953f
                  beq          s6, a0, 966f
                  slti         s4, t5, 44
                  slti         a5, s5, -1438
                  sltu         a0, s4, s2
                  xori         a7, t3, 652
953:              srli         a5, a2, 8
                  xori         s11, s11, 1893
955:              beq          t4, s3, 961f
                  xori         a2, t5, -635
                  beq          s11, a6, 964f
                  sltu         s4, t2, a6
                  srli         s11, a5, 0
960:              bltu         gp, s6, 962f
961:              slti         s9, a7, -1765
962:              slli         s2, t2, 11
                  sltiu        sp, a7, 1501
964:              sll          t4, s3, a4
                  bne          t1, s1, 984f
966:              bltu         s9, zero, 977f
                  xori         ra, s3, -1833
                  add          s0, s0, t6
                  bltu         a3, s3, 982f
                  bne          s9, s9, 982f
                  ori          zero, t2, -1193
                  sltu         a5, a6, t1
                  bgeu         a3, ra, 993f
                  bltu         s10, ra, 983f
                  or           t6, t5, s7
                  andi         t6, a7, 628
977:              andi         a1, a7, -1728
                  slti         a3, a3, 1596
                  sra          ra, a5, t6
                  slli         a6, t5, 6
                  add          a3, t6, t5
982:              auipc        t2, 388552
983:              sltu         t1, a6, s6
984:              nop
                  sub          t5, a7, a1
                  add          s3, a3, t2
                  and          a1, a2, tp
                  srai         t4, s2, 22
                  add          s4, t1, a3
                  srai         a5, s0, 22
                  sltu         s3, a0, a1
                  srai         s10, s3, 8
993:              slli         t5, sp, 12
                  bltu         s4, t1, 1006f
                  add          s3, s4, ra
                  srai         s4, tp, 6
                  nop
                  addi         a2, a0, 1688
                  auipc        tp, 256463
                  sra          s0, t2, s4
                  lui          a5, 699992
                  ori          t6, s0, 1034
                  bgeu         a6, t2, 1023f
                  slli         s7, gp, 7
                  blt          t1, a6, 1009f
1006:             sll          ra, a5, gp
                  beq          s11, a0, 1025f
                  srli         ra, s6, 25
1009:             sltiu        s0, t6, -620
                  beq          s8, a2, 1015f
                  sll          s2, s4, s9
                  lui          sp, 1032272
                  bne          a5, a4, 1031f
                  slli         ra, t3, 6
1015:             or           a3, t1, s10
                  srli         a4, s2, 22
                  addi         a6, a0, 1419
                  ori          s10, zero, 1879
                  nop
                  ori          a7, s2, 932
                  and          s10, s9, a3
                  bge          a3, s3, 1040f
1023:             and          s2, s7, a4
                  lui          a0, 315315
1025:             srai         a1, ra, 27
                  nop
                  sll          ra, a4, ra
                  bge          t1, a5, 1040f
                  and          ra, s11, a6
                  bltu         t1, sp, 1032f
1031:             sltu         t5, a4, sp
1032:             srl          a5, s5, ra
                  nop
                  bge          s9, s11, 1040f
                  bgeu         a1, sp, 1040f
                  bgeu         s7, s6, 1040f
                  or           tp, zero, s3
                  nop
                  bne          s3, a0, 1040f
1040:             and          s11, t3, s8
                  slti         s4, t5, 711
                  lw           t1, 4(s6)
                  andi         s11, a3, -752
                  sra          zero, s2, gp
                  addi         a0, t5, 8
                  addi         s6, s6, 44
                  sra          ra, s5, t3
                  ori          s11, ra, -1341
                  sra          a4, ra, a1
                  srai         t5, t6, 14
                  and          s3, t0, a4
1565:             addi x17, x6, 1
1565:             jalr x17, x17, 0
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
.word 0x180c649e, 0x9d5e4846, 0x98f86a5b, 0x7387e5e3, 0xda5af6ac, 0xc7d824d2, 0x9efcf460, 0x8b606094
.word 0xa7981685, 0xe88f9f75, 0x44eb70cd, 0x662eec76, 0xa3abeabe, 0x2f05c0f0, 0x68565ed3, 0x6c462df5
.word 0xf5f64888, 0x7b48e7b8, 0x404f4ebc, 0x8faa137c, 0x2944be54, 0xe708a44a, 0xe1305f81, 0x63e8cbfb
.word 0xd85d6189, 0x6f367362, 0x793e25ea, 0x2dc5b650, 0xc49cfa89, 0x851d41c5, 0xe91ce2c2, 0x25d33a37
.word 0x719fa899, 0xba70141f, 0x0d5c17f2, 0x9bc09249, 0x07bd3729, 0x33a2126f, 0x4a576322, 0x56ba992f
.word 0x4a58b20b, 0x01094ec8, 0x650a7ea6, 0xf7668b54, 0x5e99c723, 0x226f1295, 0x4e5ff496, 0x59fafb57
.word 0xd0ba22f0, 0xcee108b4, 0x6e7fedc2, 0xf2d44352, 0xe2a0bc6d, 0xd315892c, 0xf3eddc56, 0x69cb9bef
.word 0x3234f26f, 0xd32de813, 0xd2d913d1, 0x908616b2, 0x86abb56f, 0x24a2345c, 0x022eef3e, 0xf4d7420c
.word 0x7541f4b0, 0x2a99c84c, 0x7ea6b054, 0x9049adb9, 0xc6d261d6, 0xb2d77225, 0x554884c3, 0xc3b724e5
.word 0x01e9d28b, 0xee2847d3, 0xf7823eaf, 0xfbf73cbc, 0x228f93d0, 0x962f8391, 0x503772cf, 0xd93d76cb
.word 0xa23204d2, 0xf6a27a4e, 0x84cfb852, 0x2ba12e41, 0x96fc565f, 0xa3c55450, 0x1108091a, 0xbb620379
.word 0x6015db5d, 0xd3ec9cc5, 0x69635b9e, 0x004a56a8, 0x170ca9a9, 0xf4335fad, 0x45339ac9, 0x46a37e01
.word 0x2ab2f479, 0xb3565cb2, 0x3ab0cef9, 0xe4292cd2, 0x6297f7f5, 0x4ec93a80, 0x61b240b1, 0xa7e67eef
.word 0xb391b7ff, 0xe505930e, 0x6ed3d0d7, 0x1320faa0, 0x20c6cf03, 0x4e642850, 0xf6ba906c, 0x800c9ec2
.word 0x55f210c6, 0x0e9201ab, 0x339bd0bb, 0xf31b8924, 0x076fda90, 0x6f616fb0, 0x87e758cc, 0xfa2e0a60
.word 0x61a05903, 0x5986de05, 0xe7c9d967, 0xa315cc39, 0x0a2a5d4d, 0xe1c93d2c, 0xbc8a6bd2, 0x8e3ff9d2
.word 0x67f333b8, 0x3f5b26d8, 0x1c86e7db, 0x920c47d0, 0xcd6bc29c, 0xb5b4f19b, 0x6cf8fdd3, 0xaadd3804
.word 0xbd72f344, 0x4c9eaffe, 0xe52028a9, 0x281707d1, 0x1cdcb12d, 0xb0d1cc14, 0x48ba6b7e, 0x04d252a7
.word 0xf3e19a50, 0x0932552f, 0x429d07a7, 0x92c3431d, 0x4a3c12e4, 0x8f1b5684, 0x0bed999e, 0x3d2fa59a
.word 0xbcded42e, 0x1beb8e85, 0x3ca736eb, 0x552a758a, 0x67a4b35c, 0xa56fc4cc, 0xd9660bda, 0x08a96cb5
.word 0x6670cd60, 0xfcbd34e6, 0x4034e264, 0x24bb8d95, 0xaee0804b, 0xdeaa6cf9, 0x4da875fe, 0xff52ae7e
.word 0x871ca0e3, 0x30c40aab, 0x78e3a461, 0xfa5a3b02, 0x955ba8aa, 0x7edcfb19, 0x4adb3ee7, 0x7eab33b7
.word 0xbab66afc, 0x6e379b5a, 0x3e87ac5c, 0x351fb52a, 0x46497889, 0x2ab3596a, 0x5071aba7, 0x5f3a69ae
.word 0xb8711351, 0x1de22924, 0x5d469b7c, 0xe7a15888, 0x8d49f995, 0xf04b2707, 0xa95a423e, 0xb07dc224
.word 0x24484cf3, 0x8a0e3793, 0xc86d7c1c, 0x1ad582e1, 0x7bba00d3, 0x8a6cf5c8, 0xf0560a46, 0x544eb6aa
.word 0xe13425f6, 0x0e885dcb, 0x710cee08, 0x62f2eb1d, 0x924b99b5, 0xefc5d859, 0x13ec7bf0, 0x9c4972ad
.word 0x89b76c78, 0xb8fbfe81, 0xf214cdd9, 0x5104982e, 0x31901e93, 0x6746d0cd, 0x0675f6a9, 0x11b0d7f8
.word 0x69881e3b, 0x38fc1ebe, 0xeff01b00, 0xf3732720, 0xecbf9fd7, 0x9c79aaaf, 0x831d696b, 0xee1865e1
.word 0x23419a10, 0x585ff05e, 0x15eb6b5e, 0x5bda3b99, 0xfacc400c, 0xa573897b, 0x29591c43, 0x7d974674
.word 0xfdc75dc2, 0xd2273d46, 0xa46ce94b, 0x61036c72, 0x9a86548e, 0xe58c431b, 0x8f59513d, 0x49ff1dc0
.word 0x6a7ba2c3, 0x5575f56f, 0x81ea57c5, 0xad4c1b63, 0x479961c9, 0x53584827, 0x93589f22, 0xef3857e1
.word 0xa1b6a10a, 0xde7d031b, 0xd8dee0b0, 0x0c57ea78, 0xeb5c21a6, 0x7d684a14, 0x6a1629ed, 0x5f4e86d9
.word 0x295dd360, 0xa949680d, 0xc0876240, 0x7bc4a982, 0x08cb425a, 0x67758362, 0xeb2d64c8, 0xd7423e4c
.word 0x3558f29b, 0xc85cfc38, 0xf2df3314, 0x48b72e3e, 0xaa4adee4, 0x2651d855, 0xc80aacc5, 0xfc653c62
.word 0x5dc326ff, 0x3500a5ab, 0x93602a90, 0x758a1116, 0xd1771d7b, 0x45b998f6, 0xcf154bb1, 0x79c16289
.word 0x9cca61d7, 0x2adc1d08, 0xd997d1d3, 0x81269162, 0xfcaab269, 0x267d48af, 0x8dd34f5e, 0x1ef39ddc
.word 0x4281fdd1, 0x22268f17, 0x56e8df6c, 0xedc8789f, 0x076209d3, 0x3192ef0c, 0xc73e9fd5, 0x6fbcc407
.word 0x7791dcd6, 0x3206748b, 0xdfca85e5, 0x8537089f, 0x86a5d976, 0x860a796a, 0xb9a5278b, 0x9e755624
.word 0xf8d8bde3, 0xc47f746f, 0x0b0cae8c, 0x74c6c777, 0xb4521314, 0xbf8294ef, 0x180e43c2, 0x61d103f1
.word 0x3f35cfc8, 0x05782b18, 0xa30a1f4c, 0x3209445e, 0x70f648fd, 0xaa090298, 0x7eae1680, 0x568f9c62
.word 0xe71dc5c7, 0x8e3a797b, 0x5311d1e4, 0x9dcfe567, 0xdcd4ce76, 0x2452a781, 0xb622af1d, 0x92dfd9d3
.word 0xbfde472d, 0xae905dd2, 0x590067e4, 0x71cde803, 0x5c19b0a5, 0x03c99446, 0xd0d7a5b8, 0xdea1ec23
.word 0x8453b1f5, 0xdeb87691, 0x746f70e9, 0x562af2e1, 0x90333da2, 0x2d8972f8, 0xa8a85f6f, 0x8b8a275e
.word 0x95f164e2, 0x0ce08e23, 0x47cb39cd, 0x4d23d826, 0x2e3a1aa1, 0xef665c7a, 0xb99f7ff6, 0xe49dfd8c
.word 0x61d6d929, 0xa4b33207, 0xa36db71e, 0xc4d4fa00, 0xf607390d, 0x06c807a2, 0xb4f40f0e, 0x947f8934
.word 0x6122da79, 0x70df9267, 0x2176203a, 0x18ad0708, 0x18d3fdb3, 0x18afeab9, 0x61813fca, 0xc3fcf047
.word 0x158f7bef, 0x604aeab2, 0xb201820d, 0xe6c4be3d, 0x9759cba4, 0x4b2295b2, 0x4917676b, 0xc3d1995e
.word 0xfaab12b6, 0x2a17a7d0, 0x7e3ae975, 0x7bbb748e, 0xe2274e26, 0x8ee30925, 0x2493fa44, 0x78c88cc4
.word 0x5bb68425, 0x1332ca7f, 0xb8f66fdd, 0x6d3e1f40, 0x666c0fa3, 0x84974426, 0x22e1bf13, 0x8a543869
.word 0xddb8ecea, 0x9c735896, 0x310b2802, 0xd0a81031, 0xed31f47e, 0x374bb78a, 0x0d3b1cf1, 0xd27a458c
.word 0xdaaaee9b, 0xbf1594a8, 0x618700b0, 0x6eb609fe, 0x5817c2e5, 0x54b51dd9, 0x9c369620, 0x3cb8db4a
.word 0x08a2b6b0, 0x41380a30, 0x5618aa52, 0xc785e78d, 0xece4b103, 0x817384b9, 0x2f350231, 0x93075e56
.word 0x64cabb36, 0xaa988fac, 0x01b91772, 0x7379ebba, 0x3256ab9d, 0xe48f39b7, 0x8ad0386d, 0x0432b656
.word 0x867b4bdf, 0xa470a34f, 0xda6063da, 0x6f35ab26, 0x29ed5e06, 0x77420f1f, 0xda80eaeb, 0x47021635
.word 0xa90686d2, 0xdfaff540, 0x7544ada4, 0x87e82d4d, 0x27e537e4, 0xe4844dbe, 0x0f90d263, 0x5244006d
.word 0xedd800ee, 0x1a7daa15, 0x4c551ae6, 0xdf9ab84e, 0xa192a52d, 0x8de192a5, 0x759986ba, 0xa5346790
.word 0x4d1c2b4b, 0x7366ffb7, 0x5a1f5092, 0x3179a541, 0x49327b10, 0x457fecf7, 0x90782244, 0xc348c7a6
.word 0x0fd7538c, 0xbab66cb3, 0x844abe16, 0xb5c43746, 0xeaa5534d, 0x1bb1b8e3, 0xf7962bb2, 0xf4434dbb
.word 0xf06d0ed7, 0x68c8378d, 0x99fc53ea, 0x05da7617, 0x75bc01e5, 0x4c4059aa, 0x84f47a0e, 0x6f5e9be9
.word 0x645f493d, 0xb24cabec, 0x576e55a4, 0x97053166, 0x3dff2125, 0xa75557b3, 0xa2442c53, 0x2be89f65
.word 0x76c643ad, 0xf24a6208, 0x89a6ce0d, 0xf2603a4e, 0x0d4e5a67, 0xd1e4e498, 0x0871bf1e, 0xc2fb8e2f
.word 0xd96783b5, 0x3bf79e92, 0x5f277274, 0xf679158e, 0xe9a269d4, 0xe846f968, 0xd4380782, 0xe3317dce
.word 0x49192da7, 0xcc284ab1, 0x7ead78f1, 0x809b80ed
.section .region_1,"aw",@progbits;
region_1:
.word 0x97597620, 0x828e838d, 0xe20a5fd9, 0x08098ec7, 0x5541c775, 0x42555462, 0x963a2d12, 0x20774c31
.word 0x570e434b, 0xac99313e, 0x5d9b367a, 0x6c32f87f, 0xf43dadb7, 0x51947adf, 0x9ce4f586, 0x6603d337
.word 0x761e6e41, 0x06f5a840, 0xfae07b43, 0x36b95131, 0x050dde0f, 0xbfb702b2, 0xc254e82e, 0x4855a9fe
.word 0x410d3637, 0xbb333f19, 0x33b26531, 0x7626c190, 0x8d09a60d, 0x51fe6d01, 0x5b2a3a21, 0x9c65610b
.word 0x20ce1ba6, 0x28ffc097, 0x7eed8d47, 0x0ed87d05, 0x01e0460c, 0x85d47c3e, 0x7ee61c3f, 0x3bdfea61
.word 0x7344887c, 0x90313d06, 0x52ae70c5, 0xbad6b136, 0xe89a222c, 0x1e3d9be4, 0xfc3650d2, 0x058b9d3a
.word 0x58c0a239, 0xd5dcce73, 0x894d5d30, 0x66f5f2d9, 0xc5e559a0, 0x1fb81c35, 0xb68a2bca, 0x6a1f029d
.word 0xa0d1e2a3, 0x93bb8931, 0xd387a604, 0xbfffd3c7, 0xcf3a4a20, 0xdf3892d8, 0x257d1fc8, 0x51641284
.word 0x3dcaa4e8, 0x251a879d, 0x2a297272, 0xab506dd0, 0x0e783243, 0x01f20c16, 0xe0e326fb, 0xe36b4609
.word 0xee072764, 0x62e08447, 0x9e8c751c, 0x7c4ea5c7, 0xaa0902a9, 0x067ea0b4, 0xa21931a2, 0x4545dfb9
.word 0x57183b4a, 0x69cee643, 0xc8b26a05, 0xaa6df5f0, 0xa20c70f2, 0x0142a31b, 0x5cb04351, 0x752d72b0
.word 0xcde66fff, 0x86da4f43, 0xe2dc063d, 0x66962b10, 0x24073aeb, 0xc755753a, 0x5e8112df, 0xea372583
.word 0x27ad9a73, 0x722c5c44, 0x83bea9c9, 0xf5e0f7ea, 0x20cc47d6, 0xdcb61b90, 0xddbea093, 0x47626507
.word 0xeca54d37, 0x64841c3f, 0x5bf86b76, 0x6d499cce, 0xb9868cba, 0x5a208396, 0x71c7c5c2, 0x17594029
.word 0x33caef29, 0x9178fa19, 0x4a082e6d, 0x41879064, 0x99cf683b, 0x343f42b9, 0xcf6f3e9c, 0xb33069c0
.word 0x73b1eac9, 0x6d3e68ae, 0x238b6c44, 0xec463c13, 0x4b62d54d, 0x004ee221, 0xad3e3884, 0xdb3d6d69
.word 0xa5cd3ff9, 0x35767e14, 0x7a249a13, 0xa8ef3b27, 0x7dcdbc52, 0xa47b088d, 0x568b5157, 0x7ec3e0da
.word 0x6970247d, 0x10017c6d, 0xf98108c6, 0x82d1df46, 0xf07c8a5c, 0xe3aa454c, 0x72119649, 0xe367cad5
.word 0xcd2f189c, 0x189fcf30, 0x8590ed4b, 0x83626b29, 0x4f545fa1, 0xcd583a5a, 0x32f05b30, 0xb6371aed
.word 0x6940d3eb, 0x1d522109, 0x41174f08, 0x6dbf4d92, 0xbfa7fa11, 0xf3f5e3c4, 0xe8427316, 0x93a1a663
.word 0x51497e7d, 0x79df2604, 0xdd8fae7d, 0x74961fdc, 0xc822c95d, 0x95426fcc, 0xbf761801, 0x0b8e68f1
.word 0x55867a95, 0x1eaa6eb8, 0x88e242fc, 0x83706c99, 0x966dad96, 0xc7d15898, 0xff753d18, 0x9854fdbd
.word 0xc4d2df18, 0x42713431, 0xd729632b, 0x8b8f2fc8, 0xe6900cee, 0xf55b6bf3, 0xb019774a, 0x5b20b7cf
.word 0x14a985ea, 0x39664f49, 0x4508d67d, 0x3be2d8a4, 0x37271cd5, 0xfe3354b2, 0x31469ad0, 0x1cf21296
.word 0x7f2bc5bd, 0xb2bfeb86, 0x2d4fcc85, 0x60dd997e, 0x635e575e, 0x36ad6637, 0x05f9d8c8, 0xf0675b6a
.word 0x68ab2d2b, 0x2c0bc3bb, 0x6a73da08, 0xe0d6e2ee, 0x586c7876, 0x83ba580c, 0x0e141eb4, 0xdfed5848
.word 0x5baee8d8, 0x37de485d, 0xad622938, 0x78092b31, 0xb1e724ac, 0x551fda9f, 0x2dbdc53c, 0xcb7bd0b5
.word 0x04f1af92, 0x313b00b3, 0xc4ee9036, 0xe4bb2c0b, 0xfddaa063, 0x2a8c514e, 0x4a8eff88, 0xf937d358
.word 0x8687d340, 0xacb1ac11, 0x11257631, 0x9449f957, 0xcd02fdb5, 0x42de0707, 0x772f9dee, 0x2c59f669
.word 0x8ba4e492, 0xbc24eae7, 0x7655c75b, 0x1c6583c6, 0x8c634cb2, 0x951e5132, 0x2ccd2e07, 0x9d182ab2
.word 0x62af1596, 0x80607f1e, 0xcdee6036, 0xac2da62b, 0x86910497, 0xe7fed03a, 0x0892d739, 0x4fab7074
.word 0xd5de6af2, 0xd4aac97e, 0x3b8460df, 0x632dd0e1, 0xc28af16c, 0xb707b45b, 0xd71e5e5a, 0xa7990d9c
.word 0xf7d845d8, 0x05b45cce, 0x8848c705, 0x6e31d6c1, 0xbdfa72f2, 0x551fe306, 0x72052d2f, 0xa3013067
.word 0x89ec9d40, 0xe52af1a8, 0x1d29fbcf, 0xc7108759, 0x158f74e4, 0x808a8f93, 0xdd8dfda4, 0x1cc82ff3
.word 0x88166cc9, 0x33d0c691, 0x5d8df1a8, 0x663f6015, 0xb2022634, 0x5147d341, 0x375cea43, 0x1d4838bb
.word 0xd0da7030, 0xe20a5d32, 0xbd1b4777, 0x1848b30b, 0x925420e6, 0xcaafe735, 0x6ee3476e, 0x22082a78
.word 0x5a9f9d73, 0xb8382f75, 0x3931aa09, 0x95d653ae, 0x4c98a596, 0xb85ad9e0, 0xe103d681, 0xfd4ec256
.word 0x96e290d8, 0xbe48d90c, 0x0948b82f, 0x45120642, 0x2ff24871, 0x17dc5209, 0x5c4e82eb, 0x6bfe840b
.word 0xb022fa85, 0xf25399f8, 0xfd693b5f, 0xffbd9510, 0x2e7c69eb, 0x9fcbe536, 0x812acd60, 0x81078e4d
.word 0xd31fe04b, 0x63cd7e8a, 0xbce94c30, 0x2b0c7bd1, 0x8e846b1d, 0xd6783712, 0x2c762e93, 0x14d3e52f
.word 0x95b3cb1a, 0x9aadffc4, 0x88d53a93, 0x8a47170e, 0x6df6b022, 0x81312fe4, 0xfd5af006, 0x1641473d
.word 0x7ccb8069, 0xfe151914, 0x3d440deb, 0x2dee7220, 0xfad6b9ce, 0xec9094a0, 0xe44b019e, 0x20c8fc78
.word 0x0b275834, 0x53b649af, 0x8c59840c, 0xaa2792db, 0xe4262ead, 0xcefca7b9, 0x3f30aaa0, 0xbbfdd839
.word 0x98a51a59, 0x79145acb, 0xf3871b31, 0xd3cc2335, 0xbd843909, 0x8ed7289e, 0xd4d9d309, 0x3479c6eb
.word 0x3f773ae8, 0x3fc47a42, 0x203cccc8, 0xa02568b8, 0xf986b1c0, 0x68d2dfdd, 0x48daffba, 0xaa1faee5
.word 0xd8fc1abd, 0x7e142b5f, 0x1bf8472f, 0x688895bd, 0xfa58d7e0, 0xac5226ff, 0x02738c4f, 0xdbdc60b3
.word 0xdbdcd7ba, 0xb5efd6d3, 0x3471232c, 0xcce2b12b, 0xea414836, 0x929c8cfb, 0xa0b70a97, 0xd0e2933b
.word 0x1f3f19d3, 0x52277ced, 0x30d77e8a, 0x0a1d4633, 0x783e5824, 0xef61c2cc, 0x420e2592, 0x5710a001
.word 0x4e3dcc8b, 0x7d6e5d94, 0xe28847f2, 0x949ba801, 0xb1a3bdaa, 0xe4397dd9, 0x1239174d, 0x883de8f2
.word 0xd02240f0, 0x61a5bae5, 0xfc2940ac, 0x26ca24a2, 0xc9433ff1, 0x73afbe00, 0xf22f9eda, 0xdf977976
.word 0x0569b8c7, 0x26941665, 0xb3afb78b, 0x3ddf8d57, 0x8dbbd570, 0x80aefd2a, 0x38ef7c71, 0xa744b59e
.word 0x9934c4ca, 0x425b6858, 0x26d0d76d, 0x6df528e7, 0xd7bc42b4, 0x88b3f887, 0x2a7ff5c9, 0xc388706e
.word 0x082b7136, 0xbf040a03, 0xc1e1630c, 0x2f35b1d4, 0xb91d74fd, 0x2f9cd342, 0x22b0964e, 0x29a3fae6
.word 0xe2e2b18a, 0x1457c821, 0xe9751cc1, 0x1b4b8475, 0x36d4ce89, 0xec0a2bc5, 0x3dc986d7, 0x2c4b0fad
.word 0xaff4976c, 0x89d40034, 0x722b1338, 0xe36f7ba2, 0xf0e05779, 0xcaccee8f, 0x9b690a0a, 0x389d5653
.word 0x55171630, 0x024d6363, 0x7c091e7e, 0x23c3b07a, 0xefa57763, 0xade33d27, 0x9fe13afc, 0x800a1d9e
.word 0x721bd699, 0x657234f0, 0xe600f959, 0x62c8b9ac, 0x1a35f38e, 0x237b0e0a, 0xd4f3e518, 0x59a7fee8
.word 0x94c19e46, 0x8b9a1219, 0x0718791e, 0x17fbe9e9, 0xb48714de, 0x80b82dfb, 0x76b30ca3, 0xe35103b0
.word 0xeb4f10da, 0xe60c07d4, 0x3130cc84, 0x0c3d5799, 0x5f702f40, 0x72e755c5, 0x2497be71, 0xb24d3819
.word 0x44131d13, 0x5a77c286, 0xdbd5ef09, 0x2733c057, 0x99da7995, 0x942e2df0, 0x517898f3, 0x5b8e640e
.word 0x4860d859, 0xa95839ee, 0x5ae91605, 0x3fb0d3c0, 0x7a58c5b7, 0x4b61df3c, 0x1ee49000, 0xaa73641b
.word 0x0cd5ba5d, 0xd6169c7e, 0xdc81408e, 0x26844ac7, 0xad83463d, 0x5f9930e8, 0x50995729, 0x48f4b81a
.word 0xe4f4b905, 0x26fe8e02, 0x33775af3, 0xe97a61bd
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x9, x22, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x6, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x6, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x6, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x6, x14, ecall_handler
                  li x14, 0x1
                  beq x6, x14, instr_fault_handler
                  li x14, 0x5
                  beq x6, x14, load_fault_handler
                  li x14, 0x7
                  beq x6, x14, store_fault_handler
                  li x14, 0xc
                  beq x6, x14, pt_fault_handler
                  li x14, 0xd
                  beq x6, x14, pt_fault_handler
                  li x14, 0xf
                  beq x6, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x22, x9, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
