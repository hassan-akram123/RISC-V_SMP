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
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x8ee32c82
                  li x2, 0x80000000
                  li x3, 0x46766743
                  li x4, 0xfc896472
                  li x5, 0x5
                  li x6, 0x1
                  li x7, 0xb76125e9
                  li x8, 0xa1d0db28
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xf814ad58
                  li x12, 0xfe926872
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xd
                  li x16, 0xfcf011ee
                  li x17, 0xf4cf0d3a
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x6
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x75a38ffe
                  li x31, 0xfc86b984
                  la x25, user_stack_end
main:             jal          gp, 5f
0:                jal          ra, 4f
1:                jal          t1, 19f
2:                jal          ra, 28f
3:                jal          t1, 0b
4:                jal          t1, 11f
5:                jal          t1, 15f
6:                jal          t1, 3b
7:                jal          ra, 17f
8:                jal          ra, 1b
9:                jal          a2, 23f
10:               jal          t2, 25f
11:               jal          ra, 16f
12:               jal          a3, 27f
13:               jal          t0, 18f
14:               jal          s8, 21f
15:               jal          sp, 2b
16:               jal          gp, 9b
17:               jal          s5, 13b
18:               jal          t0, 6b
19:               jal          ra, 14b
20:               jal          s4, 26f
21:               jal          a6, 10b
22:               jal          ra, 12b
23:               jal          t0, 29f
24:               jal          ra, 7b
25:               jal          t1, 20b
26:               jal          t1, 24b
27:               jal          ra, 8b
28:               jal          t1, 22b
29:               sltiu        a7, t0, -333
main_1:           jal          gp, 13f
0:                jal          t1, 16f
1:                jal          t2, 17f
2:                jal          ra, 3f
3:                jal          ra, 15f
4:                jal          a0, 11f
5:                jal          s3, 14f
6:                jal          t1, 7f
7:                jal          ra, 1b
8:                jal          gp, 12f
9:                jal          ra, 6b
10:               jal          t1, 0b
11:               jal          ra, 18f
12:               jal          a7, 2b
13:               jal          ra, 9b
14:               jal          ra, 10b
15:               jal          ra, 5b
16:               jal          ra, 4b
17:               jal          a1, 8b
18:               jal          ra, 19f
19:               slli         a2, s11, 13
main_3:           jal          gp, 6f
0:                jal          ra, 11f
1:                jal          a4, 4f
2:                jal          ra, 0b
3:                jal          ra, 5f
4:                jal          ra, 7f
5:                jal          s5, 8f
6:                jal          ra, 3b
7:                jal          t2, 9f
8:                jal          ra, 16f
9:                jal          ra, 13f
10:               jal          t0, 2b
11:               jal          tp, 1b
12:               jal          a3, 17f
13:               jal          ra, 15f
14:               jal          ra, 10b
15:               jal          ra, 12b
16:               jal          ra, 14b
17:               sub          a5, t3, t3
main_5:           jal          gp, 9f
0:                jal          t1, 23f
1:                jal          s8, 25f
2:                jal          t1, 16f
3:                jal          t1, 17f
4:                jal          t1, 5f
5:                jal          ra, 0b
6:                jal          ra, 10f
7:                jal          gp, 4b
8:                jal          a3, 27f
9:                jal          ra, 22f
10:               jal          ra, 20f
11:               jal          ra, 1b
12:               jal          t1, 11b
13:               jal          sp, 8b
14:               jal          t6, 2b
15:               jal          a2, 6b
16:               jal          s8, 13b
17:               jal          ra, 19f
18:               jal          ra, 21f
19:               jal          ra, 7b
20:               jal          ra, 12b
21:               jal          t1, 26f
22:               jal          ra, 3b
23:               jal          t1, 18b
24:               jal          s1, 14b
25:               jal          t1, 24b
26:               jal          ra, 15b
27:               slli         a3, t4, 29
main_4:           jal          gp, 2f
0:                jal          s11, 1f
1:                jal          ra, 3f
2:                jal          ra, 10f
3:                jal          t1, 13f
4:                jal          ra, 16f
5:                jal          a7, 12f
6:                jal          t1, 8f
7:                jal          ra, 15f
8:                jal          ra, 4b
9:                jal          a3, 17f
10:               jal          ra, 0b
11:               jal          ra, 7b
12:               jal          t1, 6b
13:               jal          t0, 14f
14:               jal          ra, 5b
15:               jal          t1, 9b
16:               jal          t1, 11b
17:               sra          a4, s2, s10
main_2:           jal          gp, 12f
0:                jal          gp, 26f
1:                jal          t2, 25f
2:                jal          t1, 19f
3:                jal          ra, 23f
4:                jal          ra, 27f
5:                jal          s3, 16f
6:                jal          ra, 4b
7:                jal          ra, 20f
8:                jal          a6, 11f
9:                jal          ra, 3b
10:               jal          ra, 8b
11:               jal          ra, 15f
12:               jal          a5, 17f
13:               jal          a1, 5b
14:               jal          tp, 22f
15:               jal          ra, 13b
16:               jal          ra, 21f
17:               jal          s6, 1b
18:               jal          t0, 2b
19:               jal          ra, 24f
20:               jal          t1, 9b
21:               jal          ra, 6b
22:               jal          ra, 10b
23:               jal          t1, 18b
24:               jal          t1, 14b
25:               jal          ra, 0b
26:               jal          s6, 7b
27:               xori         s1, t6, -1805
                  srli         t1, s11, 18
                  sltu         t6, a7, t2
                  sra          sp, t1, s6
                  sub          s5, t1, s8
                  nop
                  addi         s6, t2, -119
                  sll          s8, s8, a4
                  xor          s3, ra, s2
                  slt          zero, a7, a2
                  sra          t2, a7, t0
                  srl          s0, s9, s11
                  xori         a3, t3, -2019
                  auipc        a5, 317190
                  sltiu        s10, a2, -989
                  bgeu         s0, s8, 29f
                  add          t3, s10, s0
                  xori         s1, s6, -295
                  srl          t0, s4, a2
                  beq          s9, sp, 34f
                  sltu         a6, s6, t5
                  ori          s8, s11, -1324
                  xori         tp, s6, -953
                  sltu         zero, a3, a1
                  slt          s6, s11, a2
                  slti         s2, zero, -1865
                  and          ra, s0, s4
                  addi         a5, s7, 610
                  bltu         sp, s11, 32f
                  and          s1, s8, s5
29:               addi         t3, a3, -1871
                  xor          a1, t0, t0
                  andi         t1, t0, -668
32:               slti         a4, a3, -1794
                  blt          s3, s3, 46f
34:               sltu         a1, a6, t5
                  sra          gp, tp, s3
                  bne          s3, zero, 43f
                  nop
                  slti         s7, s0, 303
                  sltu         a1, t2, s9
                  xori         s4, a0, -1583
                  or           tp, t3, t5
                  sra          a6, gp, sp
43:               srai         s2, gp, 28
                  bgeu         t1, a3, 60f
                  slli         s7, a5, 6
46:               sub          zero, s0, sp
                  bgeu         a7, s3, 64f
                  srl          tp, s10, s10
                  slti         s7, t1, -1807
                  beq          gp, s8, 65f
                  slt          a6, t4, sp
                  bge          s10, t5, 66f
                  lui          s10, 350329
                  bgeu         s11, s11, 60f
                  srli         s2, s7, 26
                  ori          ra, a1, -99
                  andi         s1, t0, 736
                  lui          s5, 153794
                  xor          sp, s4, s11
60:               bne          s3, a2, 76f
                  andi         tp, zero, 499
                  bne          t4, s1, 81f
                  and          s7, a2, a5
64:               slti         zero, t3, -1989
65:               bgeu         t1, s9, 81f
66:               and          s5, t1, tp
                  la           t3, sub_2
                  srli         a7, s11, 13
                  addi         t3, t3, 173
                  slt          a7, s11, s8
                  bge          s8, a5, main_j1 #branch to jump instr
                  srl          ra, s3, s3
                  sltu         t1, s7, t5
                  slt          s10, a4, zero
                  slt          t6, s10, a4
                  xor          gp, sp, a1
                  slt          t2, a0, s5
main_j1:          jalr         gp, t3, -173 #jump main -> sub_2
                  bltu         s11, s11, 87f
                  slti         a2, a0, -1889
                  nop
                  xori         t1, s3, 1425
                  sub          s11, t6, gp
                  or           a5, s4, a4
                  andi         s2, a2, -616
                  and          s1, s7, t2
                  srli         gp, s9, 29
76:               andi         zero, a0, -534
                  addi         s0, s6, -1610
                  lui          s0, 707992
                  sll          t3, t1, a7
                  sub          s1, s1, a2
81:               slt          s11, s0, a1
                  bltu         a1, a5, 92f
                  nop
                  xori         a2, a2, -355
                  srai         s3, s7, 2
                  sltiu        s8, s10, 2040
87:               blt          ra, s0, 102f
                  slti         s8, gp, 132
                  sltiu        tp, a6, 633
                  sll          t3, s11, s10
                  srli         a5, t6, 24
92:               bltu         s1, t0, 101f
                  srli         s2, s2, 1
                  lui          tp, 865321
                  bltu         t3, s3, 108f
                  bne          tp, a2, 104f
                  nop
                  auipc        a2, 615056
                  ori          a6, s11, 748
                  sltiu        a0, a7, -876
101:              srli         s11, a5, 21
102:              bge          a3, s3, 105f
                  sll          a4, gp, a4
104:              slli         s7, t5, 25
105:              slt          s6, t0, s0
                  bne          gp, s0, 123f
                  sll          a5, a1, a5
108:              bne          a4, a6, 125f
                  add          a4, a0, a4
                  xori         s8, s7, -434
                  sub          s11, s7, s9
                  ori          zero, ra, -1762
                  nop
                  sub          s7, t0, s7
                  bltu         s8, a2, 134f
                  srl          a7, s1, t4
                  slti         sp, s10, -1640
                  nop
                  auipc        s4, 745986
                  srl          t1, t4, sp
                  srl          s1, t3, zero
                  la           s4, sub_1
                  xori         s8, a2, -967
                  addi         s4, s4, 996
                  bltu         s2, a6, main_j2 #branch to jump instr
                  lui          sp, 652602
                  sltiu        t1, a6, 1088
                  addi         tp, a3, 1784
                  ori          t3, a5, -1078
                  slt          t1, t6, tp
                  sll          a0, a5, t6
main_j2:          jalr         gp, s4, -996 #jump main -> sub_1
                  slti         s5, s8, -1640
                  ori          t2, a2, -1777
                  sltu         a3, a1, gp
123:              beq          sp, a1, 136f
                  ori          tp, ra, -473
125:              bgeu         s5, s5, 134f
                  nop
                  xori         t6, a6, -1527
                  blt          a4, s0, 136f
                  andi         s6, zero, -1595
                  srai         s2, sp, 31
                  sra          t6, s9, s8
                  blt          s4, t4, 133f
133:              bne          s1, s4, 149f
134:              slti         s1, ra, -822
                  slti         tp, tp, 1103
136:              xori         s11, t2, -1777
                  bne          a1, t1, 139f
                  slti         a4, s2, 1331
139:              bgeu         s2, a3, 158f
                  srli         s2, tp, 30
                  ori          t2, s0, 733
                  slt          s7, t5, t6
                  xori         a0, a1, -1898
                  slli         s1, t3, 6
                  andi         a2, a1, 1453
                  lui          s2, 573676
                  slti         t3, a5, -1149
                  ori          a3, s10, -1294
149:              or           a6, s9, s7
                  sll          zero, ra, s2
                  bgeu         a7, t0, 171f
                  addi         s5, a5, 84
                  xor          sp, s6, t4
                  bltu         t0, s3, 161f
                  ori          s6, a3, 585
                  bge          zero, t5, 159f
                  andi         s1, zero, -615
158:              sll          a5, t2, t2
159:              bne          sp, s7, 178f
                  ori          s7, s10, 1746
161:              srai         s4, a1, 2
                  xor          a3, s1, s11
                  slli         s5, s5, 25
                  beq          t0, tp, 178f
                  slt          s3, t0, s3
                  sra          s10, a2, s1
                  slti         a6, s7, -1410
                  sltu         t3, t4, s5
                  slti         t1, a5, 336
                  slli         zero, t1, 21
171:              slti         t2, a3, 1658
                  slti         t2, a3, -464
                  bge          s0, gp, 188f
                  and          t3, s10, s9
                  sra          ra, s4, s7
                  add          a1, s1, t0
                  xor          t6, s5, t1
178:              slli         s6, s1, 8
                  ori          s4, t5, -1427
                  lui          a2, 964366
                  bne          t1, tp, 200f
                  sltu         ra, s7, t0
                  ori          a2, gp, 409
                  sll          s0, a7, a6
                  bltu         a1, s3, 202f
                  or           a3, t5, s1
                  slti         s0, a7, 1454
188:              srai         s2, s2, 16
                  sltiu        a7, a0, 504
                  add          a3, t0, tp
                  sub          s2, t0, t0
                  slli         s11, s8, 28
                  slti         t0, a2, -358
                  srl          s2, sp, a0
                  bltu         s1, a3, 212f
                  sub          a0, s4, t0
                  srli         a4, a4, 14
                  xori         zero, t0, 1087
                  blt          a1, zero, 207f
200:              addi         s2, t0, 1524
                  sltu         s0, a7, tp
202:              srai         t6, t6, 4
                  beq          t5, s9, 213f
                  ori          t3, t4, 976
                  beq          zero, a4, 213f
                  sltu         tp, s3, sp
207:              slt          a3, s5, s7
                  slti         s8, s9, -1763
                  slt          s8, s11, t0
                  sltiu        a6, s1, -347
                  sltu         a1, s8, s4
212:              xor          t3, a5, gp
213:              andi         s7, s0, 744
                  auipc        s10, 395937
                  andi         a5, a6, 1250
                  addi         zero, t1, 1352
                  srli         s1, s6, 0
                  slli         tp, a3, 17
                  bltu         a7, s0, 228f
                  sltu         s3, s4, a5
                  blt          a3, s10, 240f
                  or           a7, s9, s8
                  addi         t6, s2, 81
                  sltu         s5, s10, a6
                  bne          t6, s0, 241f
                  addi         s7, s5, 313
                  srl          sp, zero, s11
228:              sra          s1, s6, gp
                  bge          s11, a1, 230f
230:              or           sp, t1, t0
                  sra          s10, a5, s8
                  bge          t0, t5, 241f
                  srli         zero, s11, 29
                  or           sp, t1, s3
                  xor          a1, a6, t0
                  slti         t3, s2, 1707
                  bge          tp, s6, 250f
                  ori          a4, s11, 1856
                  sra          a2, s2, t2
240:              nop
241:              bge          s7, s3, 256f
                  bltu         a1, a7, 257f
                  xor          s7, ra, a2
                  ori          s6, ra, -344
                  nop
                  lui          a0, 318067
                  ori          s3, s6, -1532
                  lui          t1, 663987
                  and          s3, s5, s11
250:              or           s3, s6, sp
                  beq          t3, a6, 264f
                  slt          a5, t6, s0
                  srl          t3, t0, s11
                  bne          t3, a7, 270f
                  bltu         a5, t5, 268f
256:              xori         t2, s7, 1991
257:              slti         s6, t2, 1849
                  bne          a7, s0, 260f
                  sltu         zero, t4, t2
260:              slt          a5, t1, sp
                  srli         s2, a0, 26
                  slt          a7, zero, a5
                  sltiu        t6, a0, 2037
264:              sra          s6, a6, a4
                  beq          s9, s6, 281f
                  auipc        t6, 229741
                  lui          a1, 606773
268:              srai         a2, s0, 13
                  sra          s2, a0, a7
270:              xor          t2, a2, ra
                  xor          a1, a1, s3
                  srl          s3, s9, a6
                  ori          s7, s4, -254
                  srli         a0, sp, 16
                  srl          zero, t5, a3
                  sltu         sp, s4, s5
                  srl          a5, s5, s0
                  add          a2, s9, a6
                  xor          a3, t0, s2
                  xori         t1, a2, 1368
281:              bltu         zero, s11, 287f
                  ori          a0, t4, 1419
                  srli         a4, t1, 26
                  or           s1, tp, s8
                  ori          s8, a6, 747
                  xori         t6, a5, 276
287:              xor          a6, sp, s8
                  sub          s4, t6, t3
                  bge          t1, s5, 305f
                  andi         t6, t4, -1059
                  and          s8, s6, s8
                  srl          s4, a7, t6
                  sltu         gp, a3, zero
                  andi         a0, sp, -735
                  and          t0, s3, a2
                  slli         a2, a0, 16
                  blt          gp, s11, 313f
                  bgeu         t2, a6, 314f
                  bne          s2, s1, 304f
                  bltu         a0, s5, 301f
301:              xor          s11, a7, a4
                  srli         t6, ra, 0
                  sltu         a2, s0, t4
304:              auipc        tp, 432818
305:              xori         t3, a5, 1724
                  addi         s7, t2, -931
                  bltu         t4, a0, 314f
                  xori         sp, t4, 613
                  srl          t3, s6, a4
                  add          a2, t1, gp
                  sra          a2, a2, s7
                  slt          tp, zero, s7
313:              srl          s11, s8, a7
314:              addi         s5, gp, -1383
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bne          zero, s0, sub_2_stack_p
sub_2_stack_p:    addi         s9, s9, -52
                  addi         s3, zero, 1864
                  sw           gp, 4(s9)
                  slti         s2, s0, -907
                  auipc        t1, 540647
                  and          a0, s8, s9
                  srai         ra, sp, 22
                  add          a2, s4, tp
                  slli         a5, a0, 2
                  slt          s7, s9, a4
                  auipc        s10, 926169
                  sltu         a6, s1, s10
                  sub          s3, t6, gp
sub_2_j5:         jal          gp, sub_5 #jump sub_2 -> sub_5
sub_2_10:         jal          gp, 6f
0:                jal          t1, 1f
1:                jal          ra, 10f
2:                jal          t1, 0b
3:                jal          s0, 2b
4:                jal          ra, 3b
5:                jal          gp, 7f
6:                jal          ra, 5b
7:                jal          t1, 12f
8:                jal          ra, 13f
9:                jal          ra, 8b
10:               jal          t2, 9b
11:               jal          s4, 4b
12:               jal          t0, 11b
13:               xor          s7, s2, zero
sub_2_0:          jal          gp, 1f
0:                jal          ra, 12f
1:                jal          ra, 0b
2:                jal          t1, 11f
3:                jal          ra, 4f
4:                jal          ra, 14f
5:                jal          t1, 8f
6:                jal          t1, 15f
7:                jal          ra, 13f
8:                jal          ra, 9f
9:                jal          ra, 2b
10:               jal          s10, 16f
11:               jal          s10, 3b
12:               jal          t1, 6b
13:               jal          t1, 5b
14:               jal          ra, 10b
15:               jal          t1, 7b
16:               slti         t6, a2, 1282
sub_2_5:          jal          gp, 7f
0:                jal          ra, 16f
1:                jal          ra, 9f
2:                jal          ra, 3f
3:                jal          ra, 15f
4:                jal          a6, 1b
5:                jal          ra, 11f
6:                jal          t0, 2b
7:                jal          t1, 12f
8:                jal          sp, 10f
9:                jal          ra, 0b
10:               jal          a4, 18f
11:               jal          ra, 13f
12:               jal          s11, 17f
13:               jal          s8, 8b
14:               jal          tp, 4b
15:               jal          ra, 5b
16:               jal          tp, 6b
17:               jal          a2, 14b
18:               xor          s8, s7, s1
sub_2_13:         jal          gp, 17f
0:                jal          a3, 5f
1:                jal          tp, 8f
2:                jal          t1, 0b
3:                jal          ra, 15f
4:                jal          ra, 9f
5:                jal          ra, 1b
6:                jal          ra, 12f
7:                jal          ra, 4b
8:                jal          s3, 7b
9:                jal          t1, 14f
10:               jal          s4, 3b
11:               jal          ra, 18f
12:               jal          t3, 11b
13:               jal          ra, 10b
14:               jal          ra, 13b
15:               jal          ra, 6b
16:               jal          ra, 2b
17:               jal          ra, 16b
18:               srai         ra, a5, 3
sub_2_1:          jal          gp, 7f
0:                jal          t1, 6f
1:                jal          ra, 13f
2:                jal          s5, 1b
3:                jal          t1, 8f
4:                jal          ra, 9f
5:                jal          ra, 3b
6:                jal          ra, 10f
7:                jal          ra, 4b
8:                jal          a6, 12f
9:                jal          ra, 5b
10:               jal          ra, 2b
11:               jal          t6, 0b
12:               jal          t1, 11b
13:               jal          ra, 14f
14:               sub          a0, s2, s7
sub_2_8:          jal          gp, 2f
0:                jal          a7, 14f
1:                jal          t1, 18f
2:                jal          s10, 16f
3:                jal          ra, 5f
4:                jal          t1, 20f
5:                jal          t1, 22f
6:                jal          ra, 1b
7:                jal          ra, 17f
8:                jal          ra, 11f
9:                jal          t0, 21f
10:               jal          t0, 13f
11:               jal          ra, 15f
12:               jal          a0, 10b
13:               jal          ra, 23f
14:               jal          t1, 9b
15:               jal          ra, 0b
16:               jal          t1, 12b
17:               jal          t1, 19f
18:               jal          ra, 7b
19:               jal          ra, 3b
20:               jal          t1, 24f
21:               jal          ra, 4b
22:               jal          ra, 8b
23:               jal          t1, 6b
24:               slli         s2, s11, 5
sub_2_7:          jal          gp, 15f
0:                jal          ra, 11f
1:                jal          ra, 2f
2:                jal          t1, 0b
3:                jal          t1, 13f
4:                jal          ra, 18f
5:                jal          ra, 9f
6:                jal          ra, 8f
7:                jal          t1, 14f
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               jal          tp, 16f
11:               jal          a2, 12f
12:               jal          t1, 19f
13:               jal          sp, 1b
14:               jal          ra, 4b
15:               jal          ra, 17f
16:               jal          ra, 7b
17:               jal          sp, 10b
18:               jal          a4, 6b
19:               lui          s11, 361418
sub_2_14:         jal          gp, 18f
0:                jal          t1, 2f
1:                jal          ra, 4f
2:                jal          s5, 10f
3:                jal          a2, 19f
4:                jal          ra, 8f
5:                jal          ra, 9f
6:                jal          ra, 5b
7:                jal          t1, 12f
8:                jal          t1, 11f
9:                jal          s8, 7b
10:               jal          ra, 6b
11:               jal          t1, 3b
12:               jal          ra, 16f
13:               jal          ra, 17f
14:               jal          tp, 13b
15:               jal          ra, 1b
16:               jal          ra, 14b
17:               jal          ra, 15b
18:               jal          ra, 0b
19:               slti         zero, a6, -1362
sub_2_9:          jal          gp, 5f
0:                jal          t1, 17f
1:                jal          ra, 11f
2:                jal          ra, 19f
3:                jal          s1, 7f
4:                jal          t1, 26f
5:                jal          ra, 2b
6:                jal          ra, 25f
7:                jal          t1, 23f
8:                jal          sp, 16f
9:                jal          ra, 8b
10:               jal          t1, 12f
11:               jal          ra, 4b
12:               jal          s10, 24f
13:               jal          ra, 27f
14:               jal          tp, 13b
15:               jal          ra, 10b
16:               jal          ra, 15b
17:               jal          ra, 6b
18:               jal          ra, 1b
19:               jal          ra, 21f
20:               jal          a7, 3b
21:               jal          t1, 20b
22:               jal          ra, 0b
23:               jal          ra, 14b
24:               jal          ra, 22b
25:               jal          ra, 18b
26:               jal          t1, 28f
27:               jal          ra, 9b
28:               slti         s7, t4, -814
sub_2_4:          jal          gp, 1f
0:                jal          ra, 12f
1:                jal          ra, 8f
2:                jal          tp, 0b
3:                jal          a6, 4f
4:                jal          ra, 11f
5:                jal          ra, 2b
6:                jal          a3, 3b
7:                jal          t1, 9f
8:                jal          t1, 6b
9:                jal          ra, 5b
10:               jal          t1, 7b
11:               jal          ra, 10b
12:               slt          s7, a1, s1
sub_2_6:          jal          gp, 9f
0:                jal          ra, 22f
1:                jal          a5, 25f
2:                jal          ra, 11f
3:                jal          ra, 13f
4:                jal          ra, 15f
5:                jal          ra, 20f
6:                jal          ra, 0b
7:                jal          ra, 5b
8:                jal          ra, 2b
9:                jal          t6, 21f
10:               jal          t1, 28f
11:               jal          s10, 26f
12:               jal          t1, 17f
13:               jal          ra, 4b
14:               jal          t1, 23f
15:               jal          ra, 12b
16:               jal          sp, 18f
17:               jal          ra, 14b
18:               jal          t1, 10b
19:               jal          t1, 7b
20:               jal          a5, 6b
21:               jal          ra, 19b
22:               jal          ra, 8b
23:               jal          s5, 24f
24:               jal          t1, 27f
25:               jal          ra, 16b
26:               jal          ra, 3b
27:               jal          ra, 1b
28:               sll          a1, s1, t6
sub_2_2:          jal          gp, 4f
0:                jal          ra, 3f
1:                jal          sp, 6f
2:                jal          ra, 16f
3:                jal          t1, 1b
4:                jal          ra, 8f
5:                jal          s3, 12f
6:                jal          ra, 14f
7:                jal          t1, 0b
8:                jal          ra, 11f
9:                jal          ra, 15f
10:               jal          ra, 2b
11:               jal          t1, 9b
12:               jal          t0, 10b
13:               jal          t1, 5b
14:               jal          ra, 13b
15:               jal          s2, 7b
16:               sra          a1, a1, s0
                  nop
                  slli         s5, s11, 4
                  sll          a6, zero, s5
                  slti         t2, s5, 948
                  sltiu        s7, s11, 468
                  add          s8, s6, s10
                  sltu         s2, s6, s0
                  sltiu        t3, ra, -1080
                  bgeu         t6, a3, 11f
                  and          t6, s2, t1
                  xor          s7, tp, zero
11:               sltiu        s2, a7, 1600
                  bge          t3, a7, 13f
13:               sra          s4, t1, sp
                  slti         s7, t0, -793
                  bne          s4, a1, 26f
                  sub          a5, t6, s11
                  and          a3, a3, t6
                  nop
                  andi         s4, a4, -1298
                  add          a5, a5, s8
                  sub          a0, t3, s3
                  xori         t1, a1, -919
                  sltu         s0, s6, a0
                  blt          tp, s9, 26f
                  xor          a1, tp, gp
26:               andi         s5, s2, 1846
                  sub          gp, gp, t3
                  and          ra, zero, t5
                  srli         ra, gp, 7
                  srli         s0, a4, 26
                  sltiu        ra, t0, -1242
                  add          s10, a6, s1
                  bge          tp, s7, 42f
                  andi         tp, s5, 1756
                  xor          s5, ra, s10
                  add          a3, a6, s4
sub_2_12:         jal          gp, 7f
0:                jal          gp, 16f
1:                jal          ra, 18f
2:                jal          a4, 14f
3:                jal          ra, 9f
4:                jal          ra, 8f
5:                jal          a1, 17f
6:                jal          ra, 12f
7:                jal          t1, 4b
8:                jal          ra, 0b
9:                jal          a7, 15f
10:               jal          tp, 21f
11:               jal          t1, 20f
12:               jal          t1, 2b
13:               jal          ra, 1b
14:               jal          ra, 5b
15:               jal          a0, 19f
16:               jal          s6, 11b
17:               jal          t1, 13b
18:               jal          t1, 3b
19:               jal          ra, 10b
20:               jal          ra, 6b
21:               slli         s8, a6, 13
                  sub          s5, a3, s0
                  or           a1, sp, t0
                  sub          t3, a2, s8
                  srai         s5, a2, 14
                  lui          s8, 953411
42:               add          s6, s6, ra
                  auipc        a3, 86644
                  srl          s1, t3, zero
                  addi         s7, a6, -2007
                  slli         a1, t6, 16
                  nop
                  blt          a2, a6, 49f
49:               sra          t0, t1, t6
                  add          t1, a2, s2
                  add          sp, a1, t5
                  slti         s0, zero, -60
                  bltu         a4, s4, 72f
                  sll          s1, s8, s3
                  srli         t2, s10, 23
                  bge          s6, s6, 68f
                  blt          a6, t3, 68f
                  sub          a4, a5, t0
                  bne          s0, t4, 63f
                  srli         s3, tp, 21
                  slli         s5, s0, 11
                  or           s0, ra, s1
63:               beq          s8, s11, 67f
                  slli         t6, t2, 13
                  add          a0, t1, a6
                  slli         t0, s8, 21
67:               auipc        s10, 246781
68:               xor          a2, a5, t3
                  srl          s10, a5, t6
                  srli         a2, t4, 7
                  sra          a5, s9, s2
72:               srl          s7, sp, zero
                  sltiu        t6, gp, -577
                  add          t2, zero, a4
                  and          s7, s11, a2
                  add          a6, s11, t6
                  sra          s10, s3, tp
sub_2_11:         jal          gp, 13f
0:                jal          ra, 20f
1:                jal          t1, 3f
2:                jal          ra, 17f
3:                jal          ra, 10f
4:                jal          a3, 18f
5:                jal          s7, 11f
6:                jal          ra, 15f
7:                jal          ra, 1b
8:                jal          sp, 7b
9:                jal          gp, 2b
10:               jal          s2, 24f
11:               jal          ra, 26f
12:               jal          ra, 14f
13:               jal          ra, 23f
14:               jal          s3, 16f
15:               jal          t1, 4b
16:               jal          t1, 8b
17:               jal          a4, 5b
18:               jal          ra, 12b
19:               jal          s6, 21f
20:               jal          a6, 25f
21:               jal          t1, 6b
22:               jal          a3, 9b
23:               jal          a4, 0b
24:               jal          ra, 22b
25:               jal          sp, 19b
26:               sra          sp, a0, a4
                  bne          s9, a5, 88f
                  and          t6, sp, s7
                  addi         s3, s3, -1964
                  xori         s8, tp, 753
                  beq          tp, s9, 88f
                  sll          s3, s2, zero
                  bgeu         t6, s4, 102f
                  and          zero, s0, sp
                  sll          a2, t1, ra
                  slli         t2, sp, 19
88:               ori          s2, t2, 1365
                  andi         s3, s4, 273
                  or           s8, a0, s1
                  slli         s0, a5, 9
                  beq          t4, t4, 98f
                  sra          sp, zero, a2
                  addi         s2, t5, -1164
                  xor          a5, t3, s7
                  srai         s7, s5, 5
                  sltiu        t2, zero, 954
sub_2_3:          jal          gp, 9f
0:                jal          s10, 2f
1:                jal          a5, 3f
2:                jal          ra, 6f
3:                jal          a3, 0b
4:                jal          t1, 8f
5:                jal          ra, 7f
6:                jal          t1, 11f
7:                jal          ra, 10f
8:                jal          ra, 12f
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               jal          s4, 4b
12:               jal          t6, 13f
13:               jal          ra, 14f
14:               ori          s6, s7, -1481
98:               sll          t3, ra, t1
                  auipc        s6, 87937
                  srl          a4, ra, t5
                  xor          t2, a2, ra
102:              bltu         a0, s3, 116f
                  xori         gp, a6, -1074
                  bgeu         s9, tp, 124f
                  andi         a0, t0, 1204
                  srli         t1, ra, 4
                  sub          a7, ra, s1
                  sub          s4, ra, a7
                  bltu         t6, a4, 117f
                  and          t2, a6, s5
                  slti         a6, a6, -1592
                  blt          s11, s8, 120f
                  bge          a4, ra, 126f
                  auipc        a7, 176566
                  sll          a7, ra, t0
116:              nop
117:              sra          a0, t6, gp
                  sltu         sp, t1, zero
                  bltu         t6, s7, 121f
120:              beq          a7, t4, 128f
121:              blt          s4, ra, 128f
                  auipc        a0, 560764
                  slti         s6, sp, -661
124:              bge          s8, a1, 140f
                  addi         a6, s6, -1963
126:              srl          t1, t2, a1
                  sub          tp, t1, s0
128:              sltiu        s7, t2, 295
                  srl          tp, sp, t4
                  sltiu        s10, a7, -786
                  nop
                  add          a5, sp, a2
                  blt          s4, t5, 145f
                  sltu         s1, t3, a2
                  bltu         a5, s0, 136f
136:              xor          a1, a7, a0
                  slti         t3, s8, 799
                  lui          a2, 344929
                  lui          gp, 1000980
140:              ori          t2, a0, -1939
                  xor          s10, s1, t5
                  bge          t4, t5, 148f
                  slli         s7, t6, 6
                  srl          a0, a4, tp
145:              bltu         a7, t1, 151f
                  srl          t0, s10, t1
                  sltu         s2, a5, s7
148:              srai         s0, sp, 20
                  lui          t6, 991621
                  srl          s5, a6, s5
151:              or           a4, gp, t2
                  add          s5, t1, t6
                  sub          sp, s11, s5
                  and          a2, s3, s9
                  bgeu         s5, s0, 166f
                  xori         sp, s2, -898
                  auipc        gp, 522796
                  bne          s8, s3, 164f
                  sltiu        a1, gp, -1072
                  add          a2, t0, s5
                  nop
                  sltiu        s4, s2, -393
                  slli         s10, s3, 22
164:              nop
                  slt          a5, t3, s11
166:              and          s5, tp, sp
                  sub          zero, zero, t5
                  sltiu        s3, a1, -1840
                  blt          a4, a7, 175f
                  sub          a2, t3, t1
                  addi         s8, a5, 894
                  nop
                  slt          t3, s2, tp
                  bgeu         a3, t5, 190f
175:              bge          a3, a4, 184f
                  srai         s4, a2, 1
                  xori         t1, a1, 489
                  and          s2, a0, t1
                  andi         a6, s1, 939
                  bltu         a2, a6, 188f
                  slti         s10, zero, -828
                  srli         s10, s5, 7
                  blt          zero, a1, 189f
184:              xori         a5, sp, -2016
                  andi         t2, tp, -1289
                  xor          t1, sp, s3
                  bgeu         gp, s1, 197f
188:              blt          t6, s8, 202f
189:              bgeu         s4, ra, 200f
190:              bne          s1, s7, 202f
                  auipc        t3, 902680
                  bge          zero, s6, 212f
                  beq          tp, s1, 211f
                  addi         t3, a2, 49
                  auipc        s6, 758740
                  srl          s8, a2, s3
197:              andi         t2, a2, -760
                  nop
                  xori         a7, t2, 2034
200:              sub          a4, gp, s2
                  bltu         sp, s0, 204f
202:              srli         a4, gp, 23
                  xori         t6, zero, -466
204:              nop
                  addi         t2, s3, 384
                  slti         s11, a1, 1795
                  sll          a6, t6, a3
                  blt          ra, tp, 216f
                  add          ra, a6, t4
                  xor          s0, a1, a0
211:              sltiu        a6, s0, 911
212:              srai         s0, a4, 5
                  slti         gp, a3, 336
                  lui          t6, 744324
                  or           s2, t0, a3
216:              andi         t3, s6, 1052
                  sltu         ra, t3, ra
                  addi         a1, sp, -779
                  lui          s3, 152274
                  xor          s2, s11, sp
                  add          s0, a4, s4
                  or           s11, t5, s7
                  xori         a1, a4, -730
                  srl          a1, sp, a2
                  srl          s7, a4, t6
                  nop
                  slli         t0, t2, 16
                  srli         t0, t2, 5
                  auipc        s6, 612881
                  sra          s0, zero, s9
                  and          a5, t2, t4
                  slti         s10, t1, -232
                  srai         s3, s11, 6
                  beq          a3, a5, 235f
235:              xor          a6, s0, a3
                  srai         t0, t0, 9
                  xor          s2, t6, s9
                  xor          s1, s1, t2
                  or           s5, s2, s4
                  nop
                  andi         a2, t2, 1651
                  slli         s6, a6, 9
                  sub          t2, zero, ra
                  slt          gp, t2, t5
                  add          a4, gp, a0
                  slt          a3, s3, s1
                  xori         a5, a0, -877
                  and          s4, a6, t5
                  sub          a0, a1, a3
                  lui          a0, 929955
                  bgeu         s2, t3, 252f
252:              lui          a2, 625298
                  bgeu         a3, a6, 257f
                  slti         t0, t3, -87
                  nop
                  slti         s5, t0, 569
257:              srli         s2, zero, 15
                  bge          a4, a0, 269f
                  and          a5, s9, s8
                  blt          s8, t0, 272f
                  xor          s8, s8, t6
                  xori         zero, s9, 476
                  andi         gp, a7, 463
                  xor          a6, a6, t6
                  slli         tp, s0, 5
                  or           t0, s1, s6
                  bge          a6, s4, 269f
                  ori          gp, a3, 128
269:              sll          t1, s5, s4
                  xori         s4, a2, 1805
                  xori         a4, ra, -567
272:              nop
                  xori         a0, s2, -1754
                  blt          t3, s6, 276f
                  andi         a4, s11, -1314
276:              slt          s7, zero, s1
                  sltu         t6, s7, a3
                  bltu         tp, a7, 284f
                  lui          a0, 133732
                  auipc        a3, 828107
                  sll          sp, s1, s0
                  lui          t2, 21364
                  bltu         a6, gp, 289f
284:              sll          t6, t4, t1
                  blt          a1, t6, 298f
                  sub          sp, t4, a2
                  beq          s11, tp, 298f
                  bge          ra, t0, 307f
289:              add          s1, ra, t2
                  srai         s4, a1, 8
                  ori          s0, s5, 84
                  sltiu        a7, s7, -2003
                  beq          s4, s3, 297f
                  sra          a5, a1, t0
                  sll          a7, a3, t6
                  sll          a1, s6, s4
297:              xor          a4, t2, s0
298:              andi         tp, s1, 372
                  ori          s11, s2, 767
                  slli         a4, s0, 24
                  sra          sp, a3, t4
                  xor          s11, ra, a4
                  bne          a3, zero, 311f
                  bne          s3, t4, 310f
                  sra          zero, s9, t6
                  sra          a1, ra, a5
307:              add          s8, gp, t6
                  srli         t3, s10, 18
                  addi         a5, s0, -1060
310:              sltu         a3, t0, s4
311:              auipc        zero, 303164
                  sll          s0, a0, s5
                  slli         s11, s10, 25
                  blt          tp, zero, 315f
315:              sub          s10, s2, a4
                  addi         ra, zero, 1875
                  auipc        sp, 989631
                  andi         a3, s3, 135
                  auipc        s10, 401835
                  xor          s7, zero, t5
                  bne          s9, a1, 328f
                  srai         a0, s4, 17
                  xor          s1, s10, s1
                  xor          s3, s5, s10
                  auipc        s2, 383291
                  ori          s4, t2, -905
                  bne          s7, gp, 331f
328:              srai         s5, s9, 20
                  sltiu        t0, t2, -1512
                  srli         ra, a7, 29
331:              bge          s3, s9, 337f
                  slti         t1, t1, 1602
                  or           s6, t5, t2
                  xor          s11, s10, tp
                  ori          a5, s6, -278
                  and          s8, t0, s9
337:              ori          s3, sp, -1410
                  or           t6, t3, s1
                  or           tp, t2, t1
                  auipc        t3, 183917
                  slt          s3, t0, a1
                  srli         s4, s6, 30
                  addi         t3, sp, 1714
                  sub          t3, gp, zero
                  xori         a7, s0, 1317
                  lui          s11, 141491
                  and          a7, zero, a0
                  srli         s11, t3, 26
                  auipc        a6, 581905
                  srl          a7, t0, s10
                  lui          s11, 44577
                  andi         s1, a7, 1832
                  bgeu         t0, t3, 371f
                  bge          a0, a0, 374f
                  srl          s8, a6, gp
                  andi         a2, s6, 585
                  bgeu         s6, ra, 358f
358:              sra          a0, s2, sp
                  nop
                  bltu         t5, t0, 368f
                  lui          a2, 762265
                  slt          gp, t0, s9
                  add          t2, a4, zero
                  and          t6, s1, s4
                  slt          s2, a0, s2
                  xor          ra, t4, t6
                  sub          s7, a7, t3
368:              or           sp, s9, s6
                  sra          a3, a4, s10
                  andi         a7, a3, 1215
371:              xori         t1, a5, -1538
                  and          s0, zero, s7
                  slli         s4, t0, 3
374:              auipc        s4, 337309
                  sub          a0, t6, sp
                  xori         t2, a2, -693
                  xor          s1, t1, a4
                  sltu         s8, s8, s10
                  ori          tp, s8, 455
                  addi         s7, ra, 241
                  sll          a5, a3, s7
                  sub          s11, s7, gp
                  and          s0, s8, a3
                  and          s1, s11, s5
                  andi         s10, a6, 295
                  bgeu         a2, a5, 387f
387:              sltu         sp, a1, ra
                  sll          a0, t0, t3
                  add          s10, a0, a7
                  srli         t2, s2, 13
                  xori         ra, a6, -200
                  sltu         s10, s7, s8
                  srl          a2, t4, ra
                  bgeu         s9, s4, 402f
                  sub          gp, tp, ra
                  sub          s11, a1, t6
                  xori         a2, t6, 118
                  bge          s3, t1, 404f
                  and          a6, a4, s10
                  bltu         a3, s9, 412f
                  srli         s11, t3, 6
402:              addi         s2, a0, 11
                  beq          t2, a5, 410f
404:              sra          a5, t0, t6
                  srli         a4, s11, 13
                  blt          s7, sp, 412f
                  sltu         s1, t4, a0
                  slti         t2, t0, 1037
                  nop
410:              slt          s7, t1, a1
                  or           s0, gp, s8
412:              slli         a1, t1, 4
                  add          t0, s6, a7
                  and          s10, s6, s7
                  beq          s7, tp, 426f
                  slt          a4, a7, t6
                  nop
                  ori          a0, t1, 357
                  sltiu        a1, t4, 385
                  ori          t1, tp, -806
                  and          s7, s4, a4
                  addi         t1, gp, 751
                  srli         gp, s8, 9
                  slti         s0, t0, 1183
                  nop
426:              sll          t6, s7, a6
                  nop
                  addi         t6, s3, -1446
                  and          ra, t2, s3
                  srli         s0, s0, 18
                  slti         s8, a0, 445
                  sltu         s7, t1, a0
                  lui          ra, 945860
                  or           a2, s7, sp
                  xori         sp, tp, 1105
                  addi         ra, a6, 628
                  ori          t3, a7, 564
                  bge          s6, s6, 449f
                  addi         s2, a1, 617
                  or           t1, s9, s7
                  srli         ra, a6, 3
                  sub          s10, s5, s6
                  blt          s9, s9, 455f
                  bgeu         s4, s7, 454f
                  xori         t1, s5, 1832
                  bne          s1, a7, 452f
                  srai         s3, s5, 24
                  sltu         t6, a0, a7
449:              auipc        t2, 92732
                  beq          tp, a7, 451f
451:              slli         t1, s2, 22
452:              xori         a7, s8, 746
                  sll          s4, s4, a5
454:              andi         s0, t1, 668
455:              xori         tp, t5, 1965
                  add          ra, zero, t2
                  addi         tp, tp, 1836
                  andi         s11, t3, -112
                  blt          a1, gp, 472f
                  addi         s10, a5, -1
                  srai         s3, s6, 16
                  bne          sp, a7, 473f
                  bne          s6, t3, 472f
                  add          s10, a4, s9
                  nop
                  nop
                  ori          s6, t5, -1227
                  xori         a7, t0, -1629
                  bgeu         s9, a4, 472f
                  beq          t3, gp, 478f
                  andi         s0, s9, 1321
472:              bne          sp, a4, 474f
473:              sub          s3, ra, s1
474:              sub          t6, s5, a7
                  sltiu        s3, t4, -275
                  ori          s4, s5, -193
                  la           s10, sub_4
                  sltiu        s8, sp, 1017
                  addi         s10, s10, 782
                  and          s11, s7, s6
                  andi         s8, a0, -1264
                  blt          t4, zero, sub_2_j6 #branch to jump instr
                  sll          zero, t5, s2
                  nop
                  sra          s7, gp, s6
sub_2_j6:         jalr         gp, s10, -782 #jump sub_2 -> sub_4
                  xor          zero, a2, ra
478:              sll          a7, s11, a0
                  ori          s8, gp, 71
                  bltu         ra, a7, 496f
                  xor          gp, s11, sp
                  nop
                  slli         a7, a6, 8
                  bltu         s10, gp, 486f
                  slti         a0, s2, 160
486:              slt          a0, t6, t4
                  nop
                  sltiu        s3, a1, 1031
                  andi         gp, s0, -1603
                  sub          s1, a3, s1
                  bgeu         a1, sp, 497f
                  xor          ra, s4, t3
                  bgeu         a4, t4, 507f
                  srai         a0, a5, 14
                  slt          zero, sp, s3
496:              add          s8, a2, s9
497:              ori          t2, a3, 1271
                  bltu         gp, s10, 502f
                  bltu         gp, a0, 518f
                  and          s3, t0, tp
                  sub          t1, s6, a2
502:              sltu         s11, s7, s7
                  and          a1, t0, t0
                  or           s7, s9, t3
                  srli         a2, a5, 21
                  bgeu         a5, s7, 517f
507:              bge          gp, t3, 511f
                  sra          s3, t0, s3
                  sub          a2, s5, t6
                  xori         s3, a1, 478
511:              or           zero, gp, a6
                  srai         s8, s9, 19
                  beq          ra, a7, 523f
                  slt          a7, t6, gp
                  bltu         s10, gp, 516f
516:              slt          s6, t5, a7
517:              sll          s7, s1, s5
518:              sltu         s7, s11, t5
                  bge          a1, s6, 525f
                  bltu         t4, t5, 531f
                  sltu         a1, t6, a5
                  sltu         t3, t0, s2
523:              addi         s8, ra, -228
                  beq          t5, s2, 538f
525:              sll          a5, s0, zero
                  bltu         t2, ra, 528f
                  add          gp, s1, s5
528:              add          ra, t4, s7
                  beq          s9, zero, 540f
                  or           s4, t6, ra
531:              slt          s1, a6, sp
                  sra          t1, zero, a4
                  sltu         s11, sp, s4
                  sub          s6, t6, ra
                  blt          t6, tp, 538f
                  bltu         a1, a2, 538f
                  lui          a3, 15720
538:              sub          s0, s8, t5
                  srli         a0, a2, 2
540:              addi         ra, a1, 1941
                  slli         a5, s8, 25
                  xor          s11, s7, s9
                  nop
                  bge          t6, s10, 545f
545:              or           s3, a5, s7
                  bne          t6, s8, 555f
                  nop
                  addi         zero, s3, -16
                  sra          ra, s10, s0
                  ori          a2, t5, -1087
                  srai         t3, s4, 0
                  srai         a4, s3, 7
                  sltu         gp, s0, s3
                  slt          a0, s4, t1
555:              auipc        s0, 326786
                  sltiu        s2, a0, 332
                  ori          a0, t0, -182
                  ori          s6, t4, 146
                  lui          t6, 541688
                  bgeu         s0, zero, 568f
                  xori         s4, gp, -1802
                  slli         s3, ra, 10
                  andi         t3, t1, -1726
                  slt          a2, s9, s6
                  beq          t4, t5, 578f
                  sub          s11, s8, s8
                  sltiu        gp, t2, 1282
568:              sll          t6, s0, t2
                  add          a0, t4, a0
                  srli         t0, s5, 30
                  ori          s4, zero, -841
                  bne          t1, a1, 576f
                  slt          t3, s1, s3
                  beq          s7, t0, 582f
                  bne          s8, s5, 581f
576:              sltu         sp, s6, s9
                  slti         t2, t2, 1678
578:              sltu         t0, s2, s7
                  and          a5, t0, tp
                  bgeu         t6, t0, 598f
581:              xori         s7, s3, 300
582:              or           a2, sp, t5
                  addi         a3, t3, 973
                  xor          a7, a1, t6
                  srai         gp, sp, 23
                  bgeu         a4, a6, 602f
                  srl          s8, s4, t1
                  sll          s2, a4, a3
                  lui          t0, 551700
                  or           s1, a4, a3
                  xor          t6, ra, s10
                  sltiu        s1, s11, -1363
                  andi         t6, s10, -602
                  lui          a0, 365737
                  slli         s8, t4, 19
                  slli         gp, a5, 1
                  add          a2, s8, zero
598:              sub          a4, s0, t0
                  beq          s10, gp, 611f
                  bltu         t2, a1, 608f
                  and          ra, sp, a0
602:              sltiu        a3, t3, -1091
                  ori          t0, s1, 1001
                  ori          a4, t1, 1255
                  lui          s0, 504097
                  slt          s6, a6, s3
                  sll          a0, s1, tp
608:              or           t3, t6, s5
                  srli         tp, s0, 27
                  srl          s3, s10, t4
611:              sub          s7, s11, s11
                  xor          a3, s10, s11
                  lui          a0, 501020
                  slli         s10, t1, 11
                  srai         sp, t1, 9
                  and          s10, t4, sp
                  sub          s6, ra, a3
                  add          a1, a5, s10
                  srli         s1, a7, 26
                  addi         ra, t1, -1969
                  srai         tp, t4, 24
                  srai         ra, t3, 14
                  bgeu         sp, t2, 635f
                  bne          s4, a4, 631f
                  sltiu        a7, tp, -1757
                  bgeu         t3, a4, 632f
                  nop
                  ori          a2, a1, 1368
                  slti         s1, t0, 1599
                  slt          s3, t6, a5
631:              bne          t3, t0, 651f
632:              add          s4, s11, s0
                  beq          t0, s7, 634f
634:              ori          ra, a3, -1870
635:              bge          gp, s6, 641f
                  addi         s5, t1, 769
                  and          tp, zero, s5
                  add          a1, a6, a6
                  xor          s7, s11, a2
                  slli         t0, a4, 7
641:              sltu         s4, a3, a0
                  and          s0, a2, a1
                  and          s6, t1, gp
                  bne          s1, t5, 663f
                  ori          a2, sp, -1136
                  ori          t0, s7, -555
                  xor          a4, t5, a4
                  beq          t4, t0, 654f
                  andi         s11, a2, 1053
                  bgeu         s5, s5, 663f
651:              xor          s10, s3, a4
                  sltiu        a4, sp, -1651
                  beq          a1, t3, 661f
654:              bgeu         s0, t4, 666f
                  bltu         a7, tp, 659f
                  addi         a0, t2, -1875
                  slli         sp, s11, 2
                  or           a5, s9, s7
659:              bne          s2, s8, 675f
                  and          t0, s7, s6
661:              bge          s0, s0, 665f
                  slt          a3, s4, sp
663:              srl          s8, s0, ra
                  slt          a1, gp, s10
665:              sltu         a0, s11, s2
666:              blt          tp, t5, 678f
                  slti         s3, a2, -1259
                  sra          t3, sp, tp
                  and          s0, a1, s1
                  srl          a2, s0, s1
                  sra          tp, zero, t0
                  slt          t6, s10, t5
                  nop
                  and          a6, s10, s6
675:              auipc        s10, 638778
                  slt          a4, gp, t3
                  blt          s6, s2, 683f
678:              beq          s11, a0, 681f
                  slti         a4, s8, 797
                  srli         s4, t0, 19
681:              addi         ra, t1, 1180
                  xori         ra, s1, 478
683:              slli         a1, s11, 25
                  sub          s1, a6, s1
                  srai         t3, t4, 6
                  nop
                  auipc        s10, 943451
                  bne          s5, ra, 694f
                  slli         a4, tp, 0
                  nop
                  srai         s1, gp, 2
                  srl          t2, a6, tp
                  beq          s6, s7, 711f
694:              auipc        s7, 1015638
                  slt          s0, s2, a6
                  addi         s11, a5, 1244
                  blt          t0, s11, 711f
                  slt          a6, a2, a7
                  nop
                  addi         zero, a5, 964
                  sltu         t6, s7, a3
                  srai         s1, sp, 25
                  ori          s6, s3, 534
                  srl          s4, a5, t2
                  slti         t3, a6, 1497
                  slt          a7, s0, s5
                  bgeu         s5, s6, 715f
                  slti         t1, s10, -922
                  blt          t5, s5, 717f
                  srli         s4, s2, 26
711:              nop
                  sub          t6, a3, s3
                  andi         s0, s10, -1764
                  xori         zero, s9, 1746
715:              bge          a0, s6, 722f
                  bge          ra, a2, 717f
717:              ori          t0, a1, -1542
                  beq          s1, a2, 729f
                  addi         a1, s7, -1308
                  srl          s1, a3, a7
                  slli         a7, a1, 29
722:              ori          a4, ra, -25
                  beq          t3, t3, 732f
                  srai         s8, ra, 23
                  bgeu         a7, gp, 727f
                  addi         tp, s11, 2013
727:              ori          t6, zero, -1688
                  andi         a7, gp, 745
729:              sra          ra, a7, ra
                  sltiu        ra, a0, 689
                  bge          s4, s2, 742f
732:              slt          t2, s3, t2
                  lui          s11, 894604
                  slti         s10, a6, -1069
                  sub          a2, s11, s6
                  slti         t0, s8, 724
                  sll          gp, a7, a0
                  xori         a4, zero, 994
                  blt          a5, a1, 758f
                  blt          a4, t3, 741f
741:              xor          s8, s9, a5
742:              bne          t4, s1, 743f
743:              srai         gp, s5, 1
                  slti         s1, t1, -1794
                  srl          s1, a5, tp
                  andi         s8, zero, -646
                  nop
                  xor          t1, s3, s7
                  srai         t3, t3, 29
                  nop
                  bltu         s2, tp, 753f
                  and          s3, a7, a5
753:              auipc        t1, 642309
                  sll          s10, t0, t6
                  xori         s5, s11, -564
                  sll          t1, a4, a4
                  bgeu         s1, a3, 777f
758:              bgeu         s5, a4, 764f
                  lui          s0, 923201
                  andi         s4, t1, -1825
                  bltu         a6, s4, 771f
                  addi         s5, s10, 1550
                  bge          t6, tp, 769f
764:              bgeu         s4, t5, 775f
                  addi         s1, a3, -203
                  bge          s8, t1, 772f
                  auipc        s3, 619057
                  sltiu        ra, ra, 200
769:              bgeu         s2, s9, 773f
                  and          s1, a5, ra
771:              sltu         s0, s2, sp
772:              bgeu         a3, a5, 779f
773:              bltu         a6, s7, 793f
                  ori          t2, zero, 1101
775:              srai         s6, s3, 31
                  bne          a1, gp, 787f
777:              ori          t0, s9, 431
                  sra          tp, t5, tp
779:              nop
                  slti         s11, ra, -988
                  sll          a2, ra, a2
                  add          a2, t6, s3
                  xori         a0, t6, -633
                  srl          s11, ra, t5
                  or           s6, s10, zero
                  bge          s8, ra, 789f
787:              nop
                  addi         a1, t2, 210
789:              nop
                  sub          a0, s4, a7
                  xor          s1, s7, a7
                  or           s4, t6, a3
sub_2_15:         jal          gp, 6f
0:                jal          ra, 9f
1:                jal          s10, 19f
2:                jal          ra, 14f
3:                jal          a2, 0b
4:                jal          ra, 29f
5:                jal          ra, 10f
6:                jal          ra, 26f
7:                jal          t1, 27f
8:                jal          ra, 4b
9:                jal          s5, 20f
10:               jal          t1, 11f
11:               jal          ra, 1b
12:               jal          ra, 30f
13:               jal          ra, 17f
14:               jal          ra, 8b
15:               jal          sp, 21f
16:               jal          t1, 12b
17:               jal          t1, 16b
18:               jal          ra, 3b
19:               jal          ra, 15b
20:               jal          ra, 23f
21:               jal          t1, 2b
22:               jal          s6, 28f
23:               jal          a6, 13b
24:               jal          t1, 7b
25:               jal          s10, 18b
26:               jal          ra, 22b
27:               jal          ra, 5b
28:               jal          ra, 24b
29:               jal          ra, 25b
30:               srli         sp, a4, 8
793:              nop
                  beq          sp, a1, 805f
                  andi         s2, a1, 864
                  bne          s4, gp, 810f
                  and          s0, s0, ra
                  nop
                  sll          s2, a4, ra
                  and          a6, a5, a5
                  bgeu         a3, a3, 810f
                  slt          s7, s1, a7
                  srli         t1, s11, 27
                  and          s2, t5, s0
805:              srl          s5, a1, sp
                  bge          t1, s2, 810f
                  sll          s1, t3, s8
                  addi         s11, zero, 1781
                  add          t0, s1, sp
810:              auipc        s2, 239479
                  addi         zero, s8, 408
                  lw           gp, 4(s9)
                  addi         s9, s9, 52
                  sltu         s4, s10, t3
                  sra          s8, s2, s5
1189:             addi x27, x3, 0
1189:             jalr x27, x27, 0
sub_5:            bltu         t4, s7, sub_5_stack_p
sub_5_stack_p:    addi         s9, s9, -8
                  srli         t2, gp, 26
                  sw           gp, 4(s9)
                  slli         s11, a2, 8
                  sub          a5, a4, a6
sub_5_11:         jal          gp, 2f
0:                jal          tp, 7f
1:                jal          t1, 6f
2:                jal          t1, 8f
3:                jal          ra, 12f
4:                jal          a3, 0b
5:                jal          t1, 1b
6:                jal          t0, 3b
7:                jal          s1, 5b
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          t1, 11f
11:               jal          ra, 9b
12:               nop
sub_5_12:         jal          gp, 0f
0:                jal          ra, 5f
1:                jal          sp, 17f
2:                jal          t1, 14f
3:                jal          ra, 12f
4:                jal          s5, 6f
5:                jal          a1, 16f
6:                jal          ra, 24f
7:                jal          ra, 4b
8:                jal          t1, 15f
9:                jal          ra, 11f
10:               jal          tp, 19f
11:               jal          ra, 22f
12:               jal          tp, 8b
13:               jal          ra, 10b
14:               jal          t0, 18f
15:               jal          ra, 1b
16:               jal          t1, 3b
17:               jal          t1, 2b
18:               jal          ra, 21f
19:               jal          ra, 9b
20:               jal          t1, 13b
21:               jal          ra, 20b
22:               jal          t1, 23f
23:               jal          ra, 7b
24:               and          s6, a2, t6
sub_5_0:          jal          gp, 12f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          tp, 7f
3:                jal          tp, 10f
4:                jal          ra, 9f
5:                jal          sp, 15f
6:                jal          t1, 3b
7:                jal          ra, 1b
8:                jal          ra, 5b
9:                jal          ra, 8b
10:               jal          ra, 14f
11:               jal          ra, 6b
12:               jal          ra, 13f
13:               jal          ra, 11b
14:               jal          ra, 0b
15:               sltu         t6, t6, a6
sub_5_19:         jal          gp, 5f
0:                jal          gp, 4f
1:                jal          ra, 10f
2:                jal          ra, 0b
3:                jal          t0, 8f
4:                jal          ra, 11f
5:                jal          t1, 1b
6:                jal          s3, 3b
7:                jal          ra, 9f
8:                jal          ra, 2b
9:                jal          ra, 6b
10:               jal          ra, 7b
11:               slti         a3, a6, 1964
sub_5_7:          jal          gp, 0f
0:                jal          s0, 23f
1:                jal          ra, 6f
2:                jal          t1, 14f
3:                jal          s8, 21f
4:                jal          ra, 26f
5:                jal          t1, 1b
6:                jal          ra, 16f
7:                jal          ra, 17f
8:                jal          ra, 13f
9:                jal          t1, 25f
10:               jal          t1, 9b
11:               jal          t1, 28f
12:               jal          ra, 20f
13:               jal          gp, 5b
14:               jal          ra, 19f
15:               jal          ra, 22f
16:               jal          t1, 3b
17:               jal          ra, 24f
18:               jal          ra, 2b
19:               jal          a1, 4b
20:               jal          ra, 10b
21:               jal          sp, 15b
22:               jal          t1, 18b
23:               jal          t1, 27f
24:               jal          t1, 30f
25:               jal          t2, 29f
26:               jal          ra, 7b
27:               jal          gp, 11b
28:               jal          t1, 12b
29:               jal          tp, 8b
30:               nop
sub_5_22:         jal          gp, 13f
0:                jal          ra, 2f
1:                jal          s10, 14f
2:                jal          tp, 3f
3:                jal          t3, 19f
4:                jal          ra, 29f
5:                jal          ra, 28f
6:                jal          ra, 16f
7:                jal          t1, 24f
8:                jal          s2, 20f
9:                jal          t1, 25f
10:               jal          t1, 7b
11:               jal          s6, 12f
12:               jal          ra, 1b
13:               jal          ra, 11b
14:               jal          ra, 21f
15:               jal          ra, 27f
16:               jal          ra, 15b
17:               jal          s3, 5b
18:               jal          ra, 4b
19:               jal          ra, 23f
20:               jal          t0, 18b
21:               jal          ra, 17b
22:               jal          s6, 10b
23:               jal          sp, 26f
24:               jal          a6, 0b
25:               jal          t1, 30f
26:               jal          gp, 6b
27:               jal          t1, 8b
28:               jal          ra, 22b
29:               jal          ra, 9b
30:               addi         a1, t1, 1149
sub_5_17:         jal          gp, 9f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          ra, 6f
4:                jal          ra, 2b
5:                jal          ra, 8f
6:                jal          ra, 4b
7:                jal          ra, 1b
8:                jal          ra, 11f
9:                jal          gp, 7b
10:               jal          ra, 12f
11:               jal          t0, 0b
12:               ori          ra, s6, 1232
sub_5_13:         jal          gp, 5f
0:                jal          ra, 4f
1:                jal          ra, 6f
2:                jal          ra, 3f
3:                jal          s4, 11f
4:                jal          s8, 8f
5:                jal          t1, 7f
6:                jal          ra, 2b
7:                jal          ra, 10f
8:                jal          ra, 9f
9:                jal          ra, 1b
10:               jal          ra, 0b
11:               sltu         t2, t1, t4
sub_5_14:         jal          gp, 12f
0:                jal          ra, 21f
1:                jal          ra, 20f
2:                jal          sp, 24f
3:                jal          t0, 14f
4:                jal          t1, 17f
5:                jal          ra, 19f
6:                jal          tp, 16f
7:                jal          ra, 8f
8:                jal          ra, 15f
9:                jal          ra, 10f
10:               jal          ra, 22f
11:               jal          ra, 18f
12:               jal          ra, 9b
13:               jal          a7, 7b
14:               jal          t0, 1b
15:               jal          ra, 4b
16:               jal          gp, 0b
17:               jal          ra, 25f
18:               jal          ra, 6b
19:               jal          ra, 13b
20:               jal          s5, 2b
21:               jal          ra, 3b
22:               jal          s8, 11b
23:               jal          t1, 5b
24:               jal          ra, 23b
25:               sltiu        a0, a7, 97
sub_5_9:          jal          gp, 8f
0:                jal          s4, 10f
1:                jal          sp, 9f
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          ra, 0b
5:                jal          ra, 2b
6:                jal          t0, 7f
7:                jal          ra, 3b
8:                jal          t1, 5b
9:                jal          t1, 4b
10:               xor          sp, t2, s5
sub_5_20:         jal          gp, 1f
0:                jal          ra, 6f
1:                jal          ra, 7f
2:                jal          ra, 8f
3:                jal          ra, 0b
4:                jal          gp, 5f
5:                jal          ra, 10f
6:                jal          ra, 11f
7:                jal          gp, 4b
8:                jal          ra, 3b
9:                jal          ra, 2b
10:               jal          t6, 9b
11:               srl          gp, zero, t5
sub_5_18:         jal          gp, 9f
0:                jal          ra, 3f
1:                jal          ra, 0b
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          ra, 8f
5:                jal          t1, 4b
6:                jal          t1, 13f
7:                jal          t1, 17f
8:                jal          t1, 10f
9:                jal          t2, 14f
10:               jal          ra, 2b
11:               jal          t2, 6b
12:               jal          a2, 16f
13:               jal          ra, 5b
14:               jal          a6, 11b
15:               jal          t1, 18f
16:               jal          t1, 15b
17:               jal          tp, 1b
18:               slt          t6, s6, a3
sub_5_23:         jal          gp, 26f
0:                jal          sp, 12f
1:                jal          t6, 6f
2:                jal          t2, 17f
3:                jal          ra, 20f
4:                jal          s10, 1b
5:                jal          t1, 27f
6:                jal          s2, 22f
7:                jal          ra, 10f
8:                jal          t6, 3b
9:                jal          gp, 7b
10:               jal          a2, 23f
11:               jal          ra, 16f
12:               jal          a5, 11b
13:               jal          tp, 14f
14:               jal          ra, 28f
15:               jal          s5, 8b
16:               jal          ra, 2b
17:               jal          ra, 15b
18:               jal          ra, 24f
19:               jal          ra, 5b
20:               jal          ra, 19b
21:               jal          t1, 18b
22:               jal          ra, 13b
23:               jal          t1, 25f
24:               jal          t2, 4b
25:               jal          ra, 0b
26:               jal          ra, 9b
27:               jal          ra, 21b
28:               sltu         a7, a5, t2
sub_5_16:         jal          gp, 11f
0:                jal          t1, 7f
1:                jal          s7, 3f
2:                jal          tp, 5f
3:                jal          ra, 9f
4:                jal          t1, 8f
5:                jal          a2, 12f
6:                jal          t1, 0b
7:                jal          ra, 2b
8:                jal          ra, 10f
9:                jal          s10, 4b
10:               jal          s7, 6b
11:               jal          ra, 1b
12:               slt          a4, a4, s6
sub_5_10:         jal          gp, 12f
0:                jal          t1, 7f
1:                jal          tp, 20f
2:                jal          a0, 23f
3:                jal          ra, 15f
4:                jal          t0, 6f
5:                jal          ra, 18f
6:                jal          t1, 25f
7:                jal          a3, 14f
8:                jal          s1, 4b
9:                jal          t1, 1b
10:               jal          t1, 2b
11:               jal          ra, 19f
12:               jal          ra, 5b
13:               jal          t1, 22f
14:               jal          t1, 10b
15:               jal          t1, 13b
16:               jal          t1, 9b
17:               jal          t0, 21f
18:               jal          t1, 0b
19:               jal          t6, 3b
20:               jal          ra, 11b
21:               jal          ra, 24f
22:               jal          t1, 8b
23:               jal          s8, 17b
24:               jal          t1, 26f
25:               jal          s7, 27f
26:               jal          t1, 16b
27:               xor          s8, s0, s9
sub_5_21:         jal          gp, 15f
0:                jal          s1, 8f
1:                jal          a4, 12f
2:                jal          ra, 6f
3:                jal          ra, 21f
4:                jal          gp, 14f
5:                jal          ra, 23f
6:                jal          ra, 3b
7:                jal          ra, 19f
8:                jal          ra, 13f
9:                jal          ra, 29f
10:               jal          s10, 27f
11:               jal          t0, 2b
12:               jal          tp, 17f
13:               jal          t1, 28f
14:               jal          s2, 20f
15:               jal          a5, 1b
16:               jal          ra, 7b
17:               jal          t6, 0b
18:               jal          t1, 4b
19:               jal          gp, 5b
20:               jal          t1, 25f
21:               jal          ra, 26f
22:               jal          t6, 18b
23:               jal          ra, 11b
24:               jal          a2, 10b
25:               jal          t0, 24b
26:               jal          a2, 9b
27:               jal          s11, 16b
28:               jal          ra, 22b
29:               srli         s5, s3, 23
sub_5_5:          jal          gp, 20f
0:                jal          t1, 7f
1:                jal          a5, 23f
2:                jal          ra, 11f
3:                jal          t1, 25f
4:                jal          a0, 8f
5:                jal          ra, 18f
6:                jal          s0, 22f
7:                jal          t1, 24f
8:                jal          t1, 0b
9:                jal          ra, 6b
10:               jal          a2, 21f
11:               jal          s6, 1b
12:               jal          ra, 14f
13:               jal          ra, 17f
14:               jal          t1, 15f
15:               jal          s11, 27f
16:               jal          sp, 13b
17:               jal          t1, 10b
18:               jal          ra, 28f
19:               jal          t1, 29f
20:               jal          ra, 9b
21:               jal          ra, 12b
22:               jal          ra, 5b
23:               jal          ra, 26f
24:               jal          s10, 2b
25:               jal          t1, 19b
26:               jal          a7, 3b
27:               jal          s10, 4b
28:               jal          ra, 16b
29:               lui          a7, 1042363
sub_5_6:          jal          gp, 5f
0:                jal          tp, 21f
1:                jal          ra, 14f
2:                jal          ra, 8f
3:                jal          t1, 20f
4:                jal          t1, 1b
5:                jal          ra, 6f
6:                jal          ra, 17f
7:                jal          ra, 0b
8:                jal          a5, 11f
9:                jal          t1, 7b
10:               jal          t1, 4b
11:               jal          ra, 3b
12:               jal          t0, 13f
13:               jal          ra, 15f
14:               jal          ra, 12b
15:               jal          t1, 19f
16:               jal          t1, 18f
17:               jal          gp, 2b
18:               jal          t1, 10b
19:               jal          ra, 22f
20:               jal          s6, 9b
21:               jal          t2, 16b
22:               nop
                  sltiu        t2, s2, -63
                  xor          s8, t3, s0
                  sub          s2, s4, s7
                  bge          a0, t1, 4f
4:                ori          a1, a0, -844
                  srli         s11, a5, 30
                  slt          s4, t6, sp
                  nop
                  nop
                  sub          a1, t1, a7
                  xori         zero, t4, -2005
                  blt          s1, s4, 12f
12:               andi         a5, ra, -938
                  add          s6, a3, s5
                  addi         zero, t0, 250
                  srai         t0, t1, 20
                  slli         t3, a6, 2
                  andi         t0, a0, -196
                  bne          t5, s11, 27f
                  sra          s7, t3, a7
                  slt          t6, a2, a2
                  nop
                  slli         s2, s5, 19
                  xori         s8, s4, -1746
                  andi         s3, s3, 843
                  srli         s3, a2, 11
                  sltu         s10, gp, a0
27:               slti         a3, s6, 1661
                  nop
                  nop
                  sltu         s8, sp, t3
                  srl          a3, a7, tp
                  slli         s0, s6, 27
                  and          a1, s10, a4
                  andi         t2, t0, 1104
                  auipc        s8, 176461
                  blt          a3, s2, 50f
                  srai         t0, t5, 2
                  blt          s3, a2, 55f
                  sltiu        a3, s3, -288
                  nop
                  nop
                  blt          a0, s10, 49f
                  slti         a1, t4, 565
                  bgeu         t5, sp, 55f
                  and          t3, sp, sp
                  auipc        s8, 288213
                  srl          s10, s0, ra
                  and          a0, s0, t1
49:               auipc        a7, 924610
50:               add          t2, a7, s4
                  nop
                  sll          s1, s5, s9
                  ori          a4, t6, 1647
                  or           a0, s2, a0
55:               xor          s4, t2, s6
                  bge          s8, t5, 74f
                  lui          t1, 59448
                  and          s0, a0, t1
                  nop
                  srli         s0, s10, 0
                  bltu         s5, s2, 75f
                  xori         s11, s4, 1070
                  sll          a3, sp, t4
                  slli         gp, sp, 29
                  sra          t6, s6, tp
                  nop
                  lui          tp, 765592
                  and          t1, t4, a4
                  bne          a7, a4, 88f
                  lui          s0, 974488
                  nop
                  addi         s7, a2, 379
                  addi         a5, s7, 694
74:               blt          s8, gp, 88f
75:               srli         t0, a0, 26
                  nop
                  sra          a3, s2, s5
                  and          s11, ra, s4
                  slti         t2, a3, -82
                  nop
                  lui          zero, 949659
                  bgeu         t3, s8, 98f
                  slt          s6, s6, s2
                  andi         s7, s6, -747
                  sub          s4, t4, t4
                  sra          t2, a5, a4
                  srli         s6, ra, 6
88:               xori         s3, t4, 885
                  nop
                  auipc        gp, 873914
                  addi         a3, s1, 1607
                  xori         t1, s2, 1838
                  sltiu        a4, s7, -1892
                  add          s6, s9, sp
                  blt          gp, t6, 102f
                  xor          s8, t1, t4
                  blt          a0, t3, 102f
98:               slli         a4, s8, 31
                  bltu         gp, a3, 105f
sub_5_3:          jal          gp, 1f
0:                jal          ra, 5f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          gp, 0b
4:                jal          ra, 3b
5:                jal          t3, 12f
6:                jal          ra, 9f
7:                jal          s5, 11f
8:                jal          ra, 7b
9:                jal          ra, 13f
10:               jal          s11, 2b
11:               jal          ra, 4b
12:               jal          ra, 10b
13:               srl          sp, t5, ra
                  bgeu         a4, a4, 112f
                  auipc        s4, 1008830
102:              slli         s3, s6, 24
                  slt          zero, t3, s6
                  bge          s11, s5, 117f
105:              or           t2, t6, ra
                  srl          gp, t5, s8
                  bltu         a4, s9, 116f
                  auipc        s3, 31530
                  or           ra, t4, t4
                  slli         s8, zero, 18
                  andi         a7, a5, -1648
112:              auipc        t2, 623786
                  bgeu         a1, a1, 118f
                  sub          ra, s4, a7
                  or           tp, a1, s4
116:              beq          s6, a2, 134f
117:              bge          s5, s2, 128f
118:              sll          s3, s5, s6
                  sub          a7, t2, s3
                  or           s10, t3, s0
                  bge          ra, t0, 126f
                  bgeu         a1, a5, 132f
                  addi         s8, a6, 1762
                  sltu         s1, s1, a1
                  beq          s5, t0, 139f
126:              sra          s10, zero, a3
                  bne          ra, t6, 131f
128:              ori          ra, s3, 710
                  addi         s4, a0, 1830
                  slti         a0, s0, -131
131:              andi         a2, ra, 167
132:              addi         t3, a4, 615
                  sltiu        zero, a0, 1132
134:              srli         t0, zero, 21
                  sra          sp, t3, zero
                  auipc        t0, 307352
                  xori         t0, tp, 985
                  slli         a7, s2, 21
139:              and          a1, a0, a7
                  sra          s1, t2, s1
                  sra          a6, gp, a0
                  nop
                  sltiu        t2, s10, -1224
                  auipc        s2, 1033063
                  bne          s6, tp, 155f
                  bgeu         s3, a6, 153f
                  bge          s4, s1, 149f
                  beq          t2, s5, 164f
149:              slti         s5, t1, -1536
                  slli         sp, t4, 28
                  bgeu         t5, t0, 169f
                  and          s5, s6, tp
153:              srli         t1, t0, 27
                  andi         a3, gp, 1552
155:              srl          sp, s1, t6
                  srli         zero, s8, 23
                  and          a5, s11, gp
                  beq          zero, a4, 165f
                  sltiu        t3, a2, -402
                  bgeu         sp, a0, 171f
                  or           t6, t6, a5
                  bne          a3, tp, 179f
                  srli         a1, gp, 21
164:              auipc        tp, 488954
165:              andi         tp, a0, -1309
                  srai         a1, sp, 24
                  sltu         ra, s11, gp
                  nop
169:              addi         s5, s11, -586
                  or           a2, ra, a0
171:              xor          t0, s3, a0
                  xor          t0, a4, s5
                  ori          s2, ra, 1192
                  slli         zero, a7, 30
                  and          s7, tp, zero
                  xor          s5, t1, a3
                  sra          s6, zero, s8
                  srl          t1, a1, a2
179:              blt          t2, s7, 198f
                  ori          a0, t2, -1875
                  lui          ra, 493151
                  bge          s11, a4, 200f
                  sra          a0, tp, a0
                  auipc        s8, 854561
                  addi         t3, t4, 584
                  lui          s2, 195457
                  srli         s0, s5, 2
                  blt          s4, t6, 194f
                  bne          a0, s10, 198f
                  slti         a6, tp, 1721
                  addi         a0, s8, -117
                  srli         gp, s2, 0
                  blt          a0, zero, 194f
194:              beq          t6, t6, 206f
                  srl          s1, a5, s0
                  slli         s8, s9, 24
                  sltiu        a7, zero, -296
198:              andi         s3, s2, 757
                  ori          s8, a4, 9
200:              andi         zero, gp, 1685
                  sltu         a5, sp, s9
                  and          s3, ra, t2
                  auipc        s11, 820449
                  xor          ra, a2, a0
                  andi         s5, s10, 457
206:              bge          s2, t6, 216f
                  bge          s10, s7, 214f
                  srl          t1, a4, t2
                  slti         a2, s8, 923
                  xori         s10, a5, 879
                  bgeu         a4, a1, 225f
                  sub          t0, a7, s6
                  bgeu         ra, s6, 222f
214:              bgeu         s2, a7, 227f
                  and          t1, s6, s9
216:              add          ra, s0, a0
                  xor          t0, a1, t5
                  slti         a3, t2, 1094
                  andi         s0, s11, 556
                  add          s5, t0, s1
                  nop
222:              xori         a1, s8, -1998
                  slti         s6, a0, 1907
                  auipc        sp, 145933
225:              srl          gp, s11, s9
                  blt          s2, a7, 231f
227:              srli         t1, gp, 24
                  srl          s8, s1, s5
                  sltiu        t6, s1, -180
                  nop
231:              srli         a7, zero, 22
                  srai         a2, a7, 13
                  xor          s1, a6, s4
                  xori         s3, a1, 444
                  srai         zero, t3, 19
                  blt          s2, a0, 250f
                  addi         t6, zero, 82
                  sltiu        t0, gp, 1372
                  sltu         ra, a1, t3
                  srl          s7, s3, a5
                  beq          s8, s3, 259f
                  slt          s3, t4, t5
                  sltu         t2, a6, tp
                  slti         s5, a7, -1939
                  slli         sp, a3, 15
                  andi         s1, zero, -1588
                  andi         a2, s4, -1981
                  blt          gp, a1, 262f
                  xori         a2, s1, -370
250:              sltiu        s7, s8, 54
                  nop
                  slt          s0, t2, a6
                  bge          sp, t6, 254f
254:              xori         zero, s0, 206
                  sub          s3, a0, s6
                  slt          t2, s10, s11
                  xori         a3, a1, -34
                  srai         s4, a1, 11
259:              bne          tp, a6, 275f
                  or           s1, s6, t4
                  lui          s10, 416468
262:              xor          t6, t5, s4
                  slt          a6, s2, s6
                  lui          a7, 428536
                  sltu         s0, t2, s1
                  sll          t1, s0, s9
                  sll          s0, a3, ra
                  lui          s8, 1021646
                  blt          a2, t3, 287f
                  slli         s2, sp, 26
                  srai         a2, s5, 8
                  xori         t3, a6, -2015
                  bge          a1, t0, 278f
                  xor          t6, a1, a6
275:              ori          t3, t3, 269
                  bltu         t0, t2, 290f
                  xori         a2, t4, -1630
278:              sltu         s3, s9, a7
                  bgeu         s1, s6, 283f
                  or           s5, t1, zero
                  ori          gp, a3, -1326
                  andi         s0, gp, -287
sub_5_15:         jal          gp, 4f
0:                jal          s10, 13f
1:                jal          ra, 8f
2:                jal          ra, 15f
3:                jal          a1, 20f
4:                jal          ra, 5f
5:                jal          s4, 11f
6:                jal          ra, 18f
7:                jal          ra, 17f
8:                jal          ra, 7b
9:                jal          ra, 26f
10:               jal          s8, 2b
11:               jal          s3, 12f
12:               jal          ra, 0b
13:               jal          s10, 21f
14:               jal          ra, 9b
15:               jal          t1, 23f
16:               jal          t0, 22f
17:               jal          a7, 3b
18:               jal          ra, 10b
19:               jal          ra, 16b
20:               jal          a0, 19b
21:               jal          t3, 1b
22:               jal          t1, 24f
23:               jal          t1, 14b
24:               jal          ra, 25f
25:               jal          t1, 6b
26:               sll          tp, s11, a2
283:              ori          a2, a2, 1000
                  beq          s5, ra, 300f
                  beq          s6, s6, 287f
                  slli         s0, a1, 8
287:              slli         ra, s10, 29
                  auipc        s0, 597242
                  bltu         s4, t1, 300f
290:              bltu         gp, a0, 295f
                  nop
                  sltu         s11, s4, zero
                  sub          a3, a3, s10
                  bge          a5, a1, 301f
295:              beq          a7, t6, 305f
                  ori          a1, tp, 509
                  sra          s7, a7, t5
                  auipc        a1, 171805
                  slt          a4, s2, t1
300:              nop
301:              sub          a5, gp, s2
                  slli         t6, s0, 21
                  slti         a1, a2, 1983
                  and          gp, sp, s11
305:              xori         s6, a5, 352
                  addi         a3, ra, 804
                  sra          t2, s6, gp
                  slti         t0, t2, 1967
                  lui          s7, 925278
                  srl          s2, t6, s4
                  xor          zero, s6, s5
                  srai         s8, s7, 9
                  slli         sp, a5, 19
                  sra          a3, s3, a2
                  srli         s3, t1, 29
                  xor          tp, t5, s10
                  srai         a7, ra, 25
                  bgeu         s11, t2, 319f
319:              sra          a7, a5, t5
                  bgeu         s9, s7, 337f
                  slt          a6, s8, a1
                  srli         t1, t1, 3
                  xor          ra, sp, a0
                  bltu         s10, a0, 331f
                  bne          tp, a5, 335f
                  nop
                  auipc        a2, 773583
                  sltu         t1, a7, s1
                  or           s6, gp, s4
                  xor          ra, a7, ra
331:              slli         a6, t3, 21
                  slti         ra, t5, -1110
                  srai         t1, t3, 11
                  slti         gp, a6, 493
335:              bltu         t6, t4, 339f
                  beq          zero, t5, 354f
337:              srli         a4, t3, 8
                  ori          tp, sp, 2022
339:              beq          ra, s7, 344f
                  slti         t0, a4, 160
                  slt          s7, s3, a0
                  srl          t0, t4, a1
                  sll          s6, tp, gp
344:              bge          t4, a4, 362f
                  blt          a2, t1, 361f
                  slti         a4, gp, -1297
                  sll          t0, t3, t6
                  sll          ra, s10, s11
                  ori          zero, s6, 1566
                  sub          tp, t3, t2
                  beq          t5, a7, 365f
                  or           a7, s7, a0
                  add          s3, s6, a1
354:              bne          t3, ra, 373f
                  slt          t6, s2, t4
                  and          tp, ra, s7
                  sltiu        s5, a1, 277
                  bne          a3, s1, 368f
                  sll          a3, s2, t4
                  lui          t3, 880083
361:              bgeu         tp, s5, 373f
362:              andi         s3, ra, -1109
                  srli         t0, t1, 8
                  addi         a3, a6, 647
365:              sltiu        zero, s4, -1067
                  xori         t1, tp, 1549
                  add          s11, a1, t6
368:              slt          s11, s8, a6
                  addi         sp, a5, 301
                  and          a1, s0, t2
                  andi         a1, s7, -910
                  sra          s4, a6, ra
373:              auipc        t2, 701681
                  beq          t0, s9, 381f
                  ori          sp, s3, -1852
                  sltiu        a6, s0, 1871
                  xor          s3, zero, s10
                  sltu         ra, s1, a5
                  or           a2, t1, t0
                  sub          s11, gp, s5
381:              add          s4, s8, a1
                  blt          s11, s8, 391f
                  srl          s2, s7, s1
                  bgeu         s5, t2, 395f
                  ori          s3, s0, 633
                  ori          s3, a6, 355
                  blt          gp, t1, 394f
                  or           s8, s10, a0
                  bltu         t0, a5, 402f
                  xori         a1, t3, 212
391:              or           s2, a3, a3
                  auipc        s5, 9664
                  slti         s8, t3, -1615
394:              bgeu         sp, a2, 399f
395:              xor          a6, s11, ra
                  sra          tp, sp, t1
                  sll          a1, t2, ra
                  sltu         a2, t5, a2
399:              bne          t3, s1, 415f
                  slti         a5, s7, -1502
                  bge          gp, t5, 412f
402:              slti         a3, t4, -1800
                  and          a3, t6, zero
                  addi         zero, s3, 162
                  slt          a4, s4, t6
                  srli         s4, a5, 22
                  slti         s7, t4, 1943
                  slt          a0, s6, a7
                  sltu         s5, t4, a4
                  sra          s7, s11, t4
                  srai         s5, t1, 20
412:              slli         t6, a3, 12
                  xor          zero, a7, tp
                  blt          a3, t3, 416f
415:              xori         t2, s7, 1574
416:              sra          s3, s0, ra
                  sltu         s7, s9, a1
                  auipc        t2, 237306
                  bne          a2, a2, 420f
420:              sra          s7, t1, s4
                  srl          a4, t4, a7
                  beq          s1, ra, 436f
                  beq          a5, a1, 432f
                  beq          s7, s10, 438f
                  slt          s6, s3, s8
                  bltu         s2, s1, 432f
                  beq          t4, t0, 441f
                  sra          a0, t0, t2
                  or           t0, t3, zero
                  beq          t2, t4, 435f
                  andi         t3, a0, 258
432:              or           t2, s2, a5
                  slli         a5, ra, 24
                  add          a4, s3, s9
435:              slti         t3, t3, 112
436:              nop
                  ori          s1, zero, 686
438:              sub          s8, a0, t2
                  sra          tp, tp, gp
                  bltu         t3, s4, 458f
441:              beq          t5, t0, 445f
                  lui          a4, 509625
                  bge          s4, s4, 452f
                  blt          s11, s7, 455f
445:              srl          tp, t0, ra
                  ori          t0, t1, -1718
                  bne          t0, s2, 458f
                  ori          s3, tp, -313
                  slti         t0, s8, 1910
                  slli         t3, t3, 28
                  bge          sp, s11, 456f
452:              addi         s4, a4, 1300
                  bne          s6, tp, 465f
                  slti         a1, s8, 2045
455:              bne          s9, s2, 457f
456:              and          a3, gp, a6
457:              srai         a3, t1, 14
458:              slt          t2, a0, sp
                  nop
                  srl          gp, t5, a0
                  bltu         sp, t4, 477f
                  auipc        sp, 201377
                  or           a1, a5, s1
                  blt          t4, a7, 481f
465:              blt          t2, a3, 481f
                  or           a1, s11, ra
                  beq          a0, s5, 485f
                  srai         a3, gp, 24
                  slti         t6, s1, 297
                  bltu         t1, s3, 480f
                  xori         s6, s9, -237
                  slti         s3, t6, 1354
                  srai         a3, s8, 31
                  and          s1, s1, s8
                  xor          s2, s1, zero
                  auipc        gp, 832372
477:              lui          a2, 646930
                  srli         a0, t3, 9
                  andi         s6, t6, -1793
480:              bgeu         t4, s4, 481f
481:              srai         a6, s1, 18
                  sll          s0, s4, t3
                  beq          s9, s10, 501f
                  sra          t1, a1, s4
485:              slti         s1, a3, 1084
                  bge          t6, s3, 491f
                  sub          a6, s1, t2
                  sltiu        a3, s9, -715
                  auipc        a3, 914807
                  or           s4, t5, a2
491:              blt          t4, a4, 500f
                  and          ra, gp, t1
                  sltiu        s2, a1, -1740
                  srli         s2, s0, 11
                  bne          t0, s0, 505f
                  blt          a1, s11, 510f
                  xori         s4, t1, -1293
                  srai         a3, t1, 3
                  blt          t0, s3, 505f
500:              beq          s5, t2, 519f
501:              sll          s4, s8, s0
                  or           tp, a1, t3
                  slti         sp, s7, 1906
                  xor          ra, t6, s4
505:              beq          a0, s3, 518f
                  sll          s10, sp, s0
                  sll          sp, t1, gp
                  bge          s6, s3, 515f
                  bge          a2, a5, 516f
510:              slt          s11, s11, s8
                  xor          s11, t3, s11
                  bltu         s1, s10, 519f
                  sub          s3, a2, s6
                  bne          ra, a5, 519f
515:              bltu         a7, ra, 529f
516:              srl          a5, s1, a7
                  lui          s4, 959306
518:              or           s5, s6, t4
519:              addi         s8, ra, -1304
                  and          s3, a7, s3
                  slt          t3, a1, s4
                  sll          t6, zero, s5
                  auipc        tp, 336378
                  andi         tp, a6, -1505
                  xori         s8, a1, -1527
                  auipc        s2, 248292
                  addi         a1, t1, -1851
                  andi         a4, t2, -1189
529:              srai         a6, s5, 2
                  sltiu        a0, s2, -1183
                  srl          gp, s11, sp
                  srai         a1, t5, 25
                  bge          ra, t3, 551f
                  sll          s5, s3, s9
                  addi         tp, t6, -154
                  srai         a3, a0, 21
                  sll          a2, a0, s1
                  sll          s7, s0, a2
                  srai         a3, s0, 6
                  auipc        a5, 160028
                  nop
                  and          a3, t2, tp
                  addi         a6, t1, -1040
                  andi         gp, s2, -2042
                  addi         ra, s4, 1985
                  addi         gp, s6, -1700
                  bne          s4, s1, 548f
sub_5_4:          jal          gp, 7f
0:                jal          ra, 14f
1:                jal          t1, 12f
2:                jal          t1, 27f
3:                jal          t1, 1b
4:                jal          ra, 18f
5:                jal          ra, 0b
6:                jal          ra, 24f
7:                jal          s10, 2b
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          s6, 20f
11:               jal          ra, 23f
12:               jal          ra, 11b
13:               jal          a7, 22f
14:               jal          ra, 9b
15:               jal          ra, 10b
16:               jal          ra, 8b
17:               jal          s11, 6b
18:               jal          t1, 19f
19:               jal          ra, 28f
20:               jal          ra, 21f
21:               jal          ra, 4b
22:               jal          a1, 16b
23:               jal          t1, 26f
24:               jal          s5, 13b
25:               jal          t1, 17b
26:               jal          t6, 5b
27:               jal          ra, 25b
28:               slti         s1, t2, 1579
548:              ori          a2, s2, 870
                  slli         s0, a1, 20
                  nop
551:              bge          s9, ra, 565f
                  srli         s3, t6, 28
                  srl          s11, a1, s3
                  bne          t2, t2, 568f
                  auipc        s2, 630045
                  ori          a5, a2, 1676
                  add          t3, zero, zero
                  nop
                  sra          a6, ra, a6
                  nop
                  srai         a1, a7, 7
                  addi         s5, s2, -1237
                  bne          a2, s3, 581f
                  xor          ra, a4, a3
565:              addi         s10, s0, 280
                  add          t1, s4, ra
                  sltiu        t2, t5, 1154
568:              sltiu        sp, tp, 955
                  and          s0, s6, t2
                  nop
                  xori         s5, s1, 993
                  blt          s0, a5, 590f
                  andi         t2, gp, 655
                  bgeu         s9, a6, 587f
                  slli         t6, a4, 28
                  srl          gp, s7, s5
                  lui          t2, 3599
                  srai         a6, s7, 21
                  bgeu         a2, tp, 584f
                  srl          t0, a2, t1
581:              lui          s3, 475725
                  sltiu        zero, zero, 1768
                  bne          a6, s3, 592f
584:              or           t3, tp, s10
                  xor          a4, a2, s8
                  andi         s7, s11, 792
587:              andi         s1, a0, -1780
                  add          gp, gp, t1
                  beq          ra, s11, 593f
590:              slti         t0, t5, -1102
                  addi         t3, ra, 571
592:              or           sp, s7, s7
593:              lui          t6, 439254
                  srl          s6, t5, t3
                  beq          s9, a6, 611f
                  xor          a2, t3, t0
                  srli         ra, t2, 27
                  sub          a6, s3, s2
                  lui          t1, 298700
                  srai         sp, a2, 3
                  and          s5, a2, a1
                  srli         t6, a4, 22
                  xori         s5, sp, -1619
                  andi         s11, s3, 366
                  srai         s11, s0, 17
sub_5_8:          jal          gp, 1f
0:                jal          ra, 11f
1:                jal          t1, 8f
2:                jal          ra, 4f
3:                jal          ra, 9f
4:                jal          t1, 10f
5:                jal          t1, 13f
6:                jal          a6, 2b
7:                jal          s0, 5b
8:                jal          t0, 3b
9:                jal          ra, 6b
10:               jal          ra, 12f
11:               jal          t2, 7b
12:               jal          ra, 0b
13:               sll          gp, s6, t1
                  nop
                  sltu         gp, a5, tp
                  srl          a5, s4, s5
                  bltu         t1, t2, 610f
610:              srl          zero, a0, a6
611:              nop
                  slt          s6, s11, s7
                  slt          t2, t0, zero
                  sll          s0, gp, a4
                  ori          a5, gp, 1950
                  ori          tp, a4, -354
                  bge          s10, t3, 627f
                  slti         t6, a4, -1288
                  bltu         s7, a1, 633f
                  slli         s7, gp, 22
                  bgeu         t6, sp, 635f
                  bne          t4, t4, 629f
                  xori         a3, s9, 1102
                  slli         s8, ra, 28
                  beq          a4, t4, 632f
                  add          t0, s4, a7
627:              blt          t4, t4, 638f
                  lui          a6, 246336
629:              nop
                  auipc        a2, 397955
                  blt          s6, a3, 650f
632:              sub          t3, a7, s5
633:              beq          s8, t1, 642f
                  beq          s6, ra, 645f
635:              bltu         s0, s6, 649f
                  or           a3, a1, s3
                  nop
638:              sll          a5, zero, a7
                  bgeu         t4, a0, 655f
                  sub          a6, t5, s2
                  sub          t0, s8, t3
642:              nop
                  nop
                  sra          s11, t5, s11
645:              slti         t0, s0, -1358
                  ori          s7, s1, -942
                  nop
                  sltu         s11, s10, s2
649:              beq          s9, t5, 661f
650:              lui          sp, 613775
                  srli         t1, sp, 7
                  nop
                  sub          s11, s10, t1
                  bne          a1, s8, 671f
655:              beq          gp, s6, 657f
                  andi         s10, a6, -730
657:              beq          t3, a4, 675f
                  lui          s3, 949922
                  srl          a7, s5, t0
                  slli         gp, a6, 0
661:              bgeu         s6, tp, 668f
                  blt          t4, t2, 672f
                  beq          tp, t6, 664f
664:              ori          s6, t0, -1732
                  addi         s6, ra, -1303
                  sra          s7, t2, t3
                  sub          s2, t2, a4
668:              auipc        s6, 455859
                  bltu         a2, a5, 674f
                  sra          a2, a5, s11
671:              sltiu        s1, s8, -1263
672:              bltu         s0, s8, 678f
                  bgeu         ra, t6, 687f
674:              sub          ra, sp, s10
675:              xor          a2, t3, s11
                  bge          s7, s7, 681f
                  andi         sp, a6, 154
678:              beq          t4, a1, 687f
                  srli         s0, a4, 13
                  andi         a4, tp, 1853
681:              slli         s4, gp, 1
                  and          t3, a4, s7
                  xor          s11, s2, t6
                  beq          sp, s10, 693f
                  slli         s11, a6, 26
                  sltiu        s6, ra, 1322
687:              srai         a1, s11, 21
                  auipc        tp, 413639
                  ori          gp, t6, 891
                  bge          a4, t4, 697f
                  srl          a4, s6, a0
                  xor          gp, s0, s9
693:              bne          a7, s11, 700f
                  sra          a6, s7, tp
                  sra          s7, s6, t6
                  sub          s10, a1, s3
697:              srai         t2, t3, 1
                  auipc        zero, 109098
                  addi         s5, t1, -954
700:              srai         s10, s10, 31
                  bgeu         s6, s7, 720f
                  sltu         zero, s3, zero
                  bge          gp, gp, 717f
                  ori          tp, t0, 351
                  slti         a1, t4, -117
                  blt          ra, a6, 707f
707:              bne          s5, s0, 713f
                  sll          tp, a1, s3
                  beq          tp, s11, 727f
                  lui          s0, 649711
                  xor          s8, s9, t4
                  slli         t2, tp, 28
713:              lui          s11, 806539
                  bne          a5, t1, 721f
                  auipc        ra, 73825
                  srli         sp, t5, 15
717:              and          a6, s7, t2
                  sra          a5, s3, t3
                  xor          s5, t1, a0
720:              auipc        a5, 436693
721:              or           a6, sp, s8
                  blt          a5, tp, 727f
                  sra          s3, a3, s4
                  slti         t6, s2, -588
                  slti         a2, s11, -1269
                  slli         ra, t6, 16
727:              sub          s7, s6, a1
                  beq          a7, s0, 742f
                  addi         a5, s1, -245
                  sltu         zero, t4, zero
                  bgeu         a6, ra, 744f
                  srl          s11, s7, a1
                  srli         a3, s9, 21
                  lui          ra, 393638
                  sll          a1, s10, s5
                  sltu         s1, s8, t5
                  add          a3, t1, t1
                  auipc        a7, 816318
                  slli         s0, a1, 9
                  sub          s11, ra, a4
                  auipc        s1, 495989
742:              lui          a6, 104840
                  nop
744:              slli         s8, a0, 28
                  sra          t3, s10, t0
                  slti         sp, s6, -1248
                  srli         t6, s1, 16
                  sltiu        a1, gp, 1945
                  slt          s8, a6, s2
                  blt          t4, s6, 751f
751:              nop
                  sra          t0, a7, a4
                  addi         a5, t0, 485
                  or           a0, s6, t4
                  lui          s7, 609037
                  nop
                  xori         gp, s11, 149
                  srl          tp, s5, t4
                  bltu         a6, a0, 770f
                  xor          t0, s0, a2
                  sub          s7, t1, s3
                  bltu         s6, s1, 767f
                  addi         s3, a1, -232
                  srl          s7, s3, zero
                  or           a5, s8, s2
                  blt          zero, s2, 783f
767:              bge          a1, s5, 771f
                  srl          t2, tp, gp
                  slt          a0, s6, a1
770:              and          s6, tp, a1
771:              blt          t0, tp, 787f
                  bgeu         t6, t1, 784f
                  xor          s4, s3, gp
                  bge          s3, t2, 792f
                  bge          ra, s4, 786f
                  ori          a5, t4, -1006
                  nop
                  blt          s8, a1, 792f
                  bge          a3, ra, 795f
                  srai         a0, s0, 7
                  andi         s10, s1, -1547
                  slt          s8, tp, t1
783:              ori          s5, zero, 746
784:              add          t6, a6, s5
                  sra          t1, s0, a5
786:              nop
787:              addi         s11, t3, -306
                  xor          s3, tp, s3
                  beq          a4, a7, 791f
                  xori         t3, s4, 321
791:              or           s4, a7, ra
792:              xor          a5, t0, t5
                  and          a1, s11, sp
                  and          s1, s10, t5
795:              srai         ra, zero, 2
                  and          a5, t5, t2
                  addi         t1, s6, -1767
                  nop
                  sltu         t0, a0, a4
                  sltiu        a0, s11, 1401
                  ori          t6, a0, 588
                  sub          s11, a5, s7
                  sub          a1, a0, gp
                  sltu         t3, t5, s0
                  lui          a2, 1007457
                  xori         a2, a5, -1108
                  ori          s10, s4, 1247
                  sltiu        ra, s9, -227
                  sltiu        s1, t2, 1797
                  slt          s7, s2, sp
                  bne          s4, s4, 821f
                  blt          a1, a3, 822f
                  sltiu        t0, s6, -886
                  or           a6, a2, a3
                  blt          s3, tp, 833f
                  srai         a7, s4, 31
                  beq          s1, s5, 822f
                  blt          ra, s7, 832f
                  slt          s4, a4, a5
                  bge          a6, s2, 834f
821:              xor          s8, a3, s7
822:              bge          s11, a6, 840f
                  sub          a7, s5, zero
                  bltu         t1, s11, 842f
                  bne          a7, s10, 832f
                  ori          s1, tp, -87
                  srai         a0, t3, 1
                  xor          a5, t6, t0
                  blt          a2, s9, 845f
                  bge          a6, t3, 842f
                  auipc        a7, 268053
832:              slti         s0, s8, 1633
833:              andi         a7, t2, -477
834:              ori          s5, t1, 284
                  sra          s6, s0, a2
                  andi         s2, s3, 703
                  andi         s1, s7, 1031
                  auipc        s11, 580421
                  sltu         s2, a3, sp
840:              slt          sp, t6, t6
                  nop
842:              slt          a4, a7, a6
                  slli         s1, t4, 2
sub_5_1:          jal          gp, 11f
0:                jal          ra, 28f
1:                jal          sp, 9f
2:                jal          ra, 27f
3:                jal          tp, 17f
4:                jal          ra, 24f
5:                jal          a6, 30f
6:                jal          ra, 1b
7:                jal          s5, 13f
8:                jal          a7, 20f
9:                jal          ra, 14f
10:               jal          ra, 21f
11:               jal          t6, 18f
12:               jal          s8, 10b
13:               jal          sp, 2b
14:               jal          ra, 5b
15:               jal          ra, 0b
16:               jal          ra, 29f
17:               jal          t1, 6b
18:               jal          a3, 25f
19:               jal          t1, 7b
20:               jal          s2, 12b
21:               jal          sp, 15b
22:               jal          a4, 26f
23:               jal          s4, 4b
24:               jal          ra, 16b
25:               jal          ra, 8b
26:               jal          ra, 23b
27:               jal          t1, 3b
28:               jal          ra, 22b
29:               jal          ra, 19b
30:               xori         a3, s11, 523
                  bltu         s11, gp, 853f
845:              bne          a1, t3, 846f
846:              lui          zero, 172960
                  sltiu        t3, a2, 1758
                  xor          sp, a5, s8
                  auipc        s7, 478469
                  blt          t4, t1, 855f
                  beq          a0, t0, 860f
                  lui          s0, 333912
853:              bltu         a5, s2, 867f
                  nop
855:              bgeu         s1, a1, 860f
                  bge          ra, gp, 872f
                  addi         a7, s6, 474
                  slli         s0, a4, 1
                  or           a1, t6, a3
860:              addi         t1, s9, -313
                  sra          a0, a6, s8
                  addi         tp, a4, 1233
                  bltu         a1, a2, 865f
                  add          s10, a0, a3
865:              sub          zero, t2, s11
                  sra          a4, s8, s8
867:              sltiu        s8, a0, -243
                  add          s3, t1, ra
                  bge          s7, s11, 882f
                  slt          sp, t5, s6
                  or           gp, s11, ra
872:              bgeu         t3, s10, 886f
                  slli         a4, s9, 5
                  slti         s1, s1, 1773
                  blt          zero, t2, 889f
                  bne          a3, s4, 894f
                  bge          a6, t1, 896f
                  bne          s9, a4, 882f
                  sub          s2, a1, a4
                  xor          zero, s11, t5
                  addi         ra, s8, 1538
882:              bge          t6, a3, 893f
                  beq          t5, t3, 888f
                  slti         a3, t1, -238
                  add          a0, t6, t5
886:              and          s6, s11, a0
                  andi         a7, s8, -8
888:              addi         s11, a2, 2002
889:              and          a7, s9, s10
                  srl          gp, a0, sp
                  sltu         t3, s3, a7
                  or           a1, a7, s7
893:              sub          a7, a4, tp
894:              nop
                  xori         tp, tp, 76
896:              nop
                  slti         s0, s3, -1996
                  bne          a1, t6, 908f
                  bltu         a3, s9, 910f
                  nop
                  srl          a6, t0, s2
                  slli         s1, s0, 17
                  ori          a2, t4, 1075
                  ori          gp, a4, 829
                  slti         a3, a7, -9
                  beq          a0, t4, 913f
                  or           s6, s5, s4
908:              srli         a5, a6, 25
                  slli         a1, s0, 24
910:              bge          t6, ra, 920f
                  blt          a5, zero, 912f
912:              and          a1, t6, a6
913:              blt          s6, s6, 920f
                  xor          s10, s0, s2
                  addi         a7, s4, 1251
                  bne          t2, s9, 922f
                  lui          a7, 976077
                  andi         a2, t4, -1677
                  srl          ra, t5, zero
920:              auipc        s11, 123354
                  andi         zero, a6, -1255
922:              ori          t0, t6, -1647
                  sra          t3, s8, s3
                  bne          a1, zero, 941f
                  sub          a7, zero, s5
                  sltu         a1, a1, s6
                  auipc        a0, 696776
                  srai         a0, a2, 3
                  bgeu         s9, s11, 934f
                  nop
                  andi         t6, a6, 280
                  slli         s10, a6, 13
                  sltu         s3, s6, t3
934:              xor          s5, zero, a7
                  slli         ra, t4, 29
                  bne          t3, a5, 946f
                  slt          tp, sp, sp
                  slt          a3, sp, t6
                  sltiu        a6, s10, 1413
                  sll          t2, sp, zero
941:              lui          s2, 190908
                  add          zero, s7, t3
                  addi         a3, s5, 257
                  xor          sp, s11, ra
                  andi         sp, s10, 5
946:              andi         s6, s7, -310
                  sltu         sp, a5, zero
                  or           a3, s8, s5
                  beq          a3, t1, 965f
                  srli         a2, t1, 27
                  sll          s10, t3, zero
                  lui          s3, 391252
                  slti         s7, t2, -1738
                  nop
                  andi         a7, s11, -1120
                  slt          a3, t6, tp
                  sub          s11, t4, s10
                  srl          a0, s8, t0
                  xor          s3, zero, a0
                  slti         s10, s3, -1463
                  srl          a0, tp, s3
                  beq          s9, a7, 980f
                  sltu         s8, t6, s11
                  bltu         s4, sp, 973f
965:              bge          a4, a6, 984f
                  srai         t3, t5, 2
                  sltiu        a4, s8, -696
                  bltu         a4, s1, 969f
969:              lui          a7, 14048
                  bge          t6, s11, 988f
                  slli         s10, zero, 31
                  blt          s2, a3, 986f
973:              xori         s11, s8, -807
                  srai         t3, gp, 25
                  addi         t2, s0, 1228
                  sltu         a6, s5, a0
                  srl          s5, t6, a3
                  sltu         s7, a3, a2
                  xor          gp, s10, s2
980:              sll          t3, s7, t4
                  andi         s4, t4, 476
                  sltu         a2, s6, sp
                  slli         s7, s0, 1
984:              sub          zero, a1, a4
                  srai         s3, ra, 24
986:              slli         s4, s9, 2
                  bltu         s8, s10, 994f
988:              sra          a0, s9, s0
                  srl          s5, ra, a2
                  blt          t2, t3, 1001f
                  sub          s8, a4, a3
                  sltu         zero, t1, t5
                  and          a2, s6, t1
994:              ori          a0, a6, -727
                  and          a1, ra, s11
                  bgeu         t6, s8, 1001f
                  bne          a1, t1, 1001f
                  nop
                  bne          t1, a6, 1006f
                  and          s0, s7, tp
1001:             slti         zero, s0, 1063
                  slti         s2, s2, -1168
                  bltu         s4, s2, 1016f
                  lui          gp, 165696
                  bltu         s3, a0, 1022f
1006:             sra          tp, s1, t5
                  bgeu         s7, s1, 1021f
                  srl          s10, t6, ra
                  bge          tp, gp, 1018f
                  sltu         a6, a1, a4
                  bne          t5, s5, 1029f
                  bltu         a0, t6, 1022f
                  sra          gp, sp, s10
                  xor          t2, t4, s9
                  bge          a0, s8, 1031f
1016:             and          s10, sp, s11
                  blt          s2, s7, 1022f
1018:             nop
                  bge          s0, a1, 1033f
                  lui          t3, 514645
1021:             add          tp, s7, a1
1022:             bgeu         t3, a0, 1024f
                  and          a2, tp, t6
1024:             nop
                  xori         zero, s0, 117
                  xori         a4, s4, -682
                  bne          a0, a1, 1034f
                  blt          s1, a3, 1040f
1029:             nop
                  and          s2, t1, s10
1031:             bne          s7, s8, 1042f
                  ori          s7, a1, 473
1033:             xori         gp, t1, -1169
1034:             or           a1, t1, a7
                  sub          a1, ra, t3
                  or           s4, s11, t6
                  sltiu        s7, t0, 279
                  slli         t1, s4, 10
                  slt          a0, s9, s4
1040:             srai         a0, s0, 13
                  andi         t2, s6, -685
1042:             xor          a5, a7, gp
                  bne          s2, t3, 1044f
1044:             slt          s10, zero, ra
                  sub          a5, s3, t3
                  addi         s1, a3, 528
                  slti         t1, s9, 1399
                  andi         a6, s10, -1509
                  lui          s0, 605816
                  addi         ra, s7, 1649
                  bne          a3, gp, 1057f
                  nop
                  auipc        t1, 293328
                  addi         a7, s0, 816
                  nop
                  bne          a2, s0, 1070f
1057:             sltu         a7, a6, t6
                  slti         s10, tp, 132
                  nop
                  lui          a2, 52816
                  and          t1, t0, t5
                  add          a1, t2, a7
                  ori          s10, t3, 1484
                  slt          t0, ra, s6
                  sll          sp, sp, a7
                  bgeu         s8, t5, 1080f
                  auipc        a6, 455313
                  beq          s1, t5, 1079f
                  and          gp, s4, s9
1070:             xor          a4, t4, t0
                  bgeu         tp, a7, 1076f
                  srl          a0, s10, s1
                  andi         ra, s6, -1105
                  bne          a3, s7, 1079f
                  blt          t1, a0, 1084f
1076:             auipc        ra, 489859
                  sub          t3, a4, s0
                  ori          t2, t2, 1819
1079:             lui          t3, 38975
1080:             or           a2, s9, t6
                  and          s10, t4, t3
                  bne          s8, a7, 1083f
1083:             xori         a3, s8, 1144
1084:             sra          t2, t1, tp
                  bge          tp, a3, 1097f
                  or           a5, a4, a3
                  andi         s3, s4, 472
                  andi         s3, s2, -196
                  auipc        a4, 23750
                  addi         zero, t3, -171
                  slti         s2, s3, 1796
                  srli         t1, t0, 2
                  srai         t0, a3, 10
                  slli         s5, sp, 1
                  slti         a0, s3, -1768
                  xor          sp, a7, s2
1097:             sll          t3, s11, a0
                  bge          a7, zero, 1111f
                  andi         tp, a3, -911
                  or           t3, s8, s9
                  ori          a0, s2, 521
                  or           a1, zero, t1
                  lui          s7, 558141
                  sra          a3, s4, s11
                  slt          s7, s9, t2
                  bgeu         tp, t2, 1123f
                  and          a0, s2, t1
                  bne          t6, t6, 1126f
                  srli         a7, a1, 12
                  xori         s1, ra, 1303
1111:             sltu         s0, t3, s9
                  bltu         t3, a1, 1119f
                  or           s6, s2, s8
                  blt          s7, ra, 1121f
                  srli         s1, s11, 18
                  sll          s7, s10, tp
                  sltiu        t6, s11, 204
                  sub          s4, t1, tp
1119:             sub          sp, t4, a0
                  beq          s4, a7, 1138f
1121:             sltiu        s0, t0, -332
                  and          a6, s11, a1
1123:             andi         gp, t1, -1175
                  sra          t6, t4, a4
                  sra          t1, sp, t2
1126:             slli         t0, s0, 9
                  srli         s7, a6, 5
                  add          s10, s1, a5
                  srai         t0, s6, 6
                  or           sp, s0, a1
                  bgeu         gp, s1, 1145f
                  andi         a6, a0, 280
                  xor          s11, t5, s6
                  slti         s7, a1, 547
                  bltu         s2, s10, 1149f
                  bge          t2, s9, 1155f
                  slt          a1, s11, a6
1138:             ori          s8, s6, -1550
                  sra          t0, t1, t3
                  sra          s4, s11, a0
                  addi         a7, s2, 559
                  blt          s7, a1, 1143f
1143:             xor          s4, t0, s4
                  bltu         gp, a6, 1150f
1145:             sltu         a1, a5, s1
                  sub          t0, tp, a6
                  add          ra, a3, sp
                  addi         t0, gp, -1971
1149:             xor          t2, s9, s11
1150:             bltu         a7, a1, 1164f
                  slli         s3, s0, 6
                  bgeu         s11, s11, 1168f
                  lui          s5, 761409
                  xori         s4, s10, -249
1155:             or           ra, s0, s3
                  xor          t1, t1, a1
                  ori          s5, tp, -1816
                  xor          t0, a7, s11
                  xor          a3, s6, a3
                  lui          a7, 155061
sub_5_2:          jal          gp, 13f
0:                jal          s0, 18f
1:                jal          ra, 0b
2:                jal          ra, 5f
3:                jal          ra, 9f
4:                jal          t1, 10f
5:                jal          s10, 17f
6:                jal          a4, 3b
7:                jal          gp, 8f
8:                jal          ra, 12f
9:                jal          t1, 4b
10:               jal          ra, 23f
11:               jal          ra, 6b
12:               jal          sp, 26f
13:               jal          ra, 24f
14:               jal          t1, 22f
15:               jal          ra, 14b
16:               jal          ra, 2b
17:               jal          ra, 20f
18:               jal          ra, 19f
19:               jal          ra, 15b
20:               jal          ra, 7b
21:               jal          ra, 25f
22:               jal          sp, 11b
23:               jal          t1, 16b
24:               jal          sp, 21b
25:               jal          ra, 1b
26:               slti         s2, gp, -1378
                  bge          t4, s8, 1163f
                  bgeu         s9, s4, 1172f
1163:             slt          a3, s7, a1
1164:             bgeu         s0, a7, 1174f
                  auipc        s7, 4182
                  xor          a3, a1, s4
                  or           zero, s4, s10
1168:             bne          s8, s1, 1184f
                  slt          s11, s4, t1
                  addi         t1, s10, -1
                  sra          s2, tp, a4
1172:             nop
                  slti         t0, s1, -1137
1174:             srl          a3, t3, s1
                  bltu         ra, a3, 1186f
                  xori         a2, tp, 780
                  sll          s5, t0, s3
                  sltiu        s10, s8, -638
                  ori          t0, a5, -1224
                  slli         s8, s0, 30
                  beq          s8, s7, 1185f
                  srai         s1, a3, 16
                  auipc        s2, 825056
1184:             sra          s4, t1, a1
1185:             blt          a5, t6, 1194f
1186:             andi         t0, a3, -622
                  srl          sp, s6, a1
                  blt          a4, t1, 1195f
                  bgeu         a0, sp, 1194f
                  beq          a0, zero, 1208f
                  sltu         gp, s6, s10
                  sltiu        a4, s4, -964
                  sub          gp, s9, s1
1194:             slti         zero, s2, -414
1195:             slti         t3, s9, -1905
                  bgeu         tp, a6, 1202f
                  srl          s2, t0, s2
                  srli         zero, a5, 14
                  slli         tp, s3, 8
                  srai         s7, a3, 10
                  sll          s1, t0, t5
1202:             bgeu         s8, s6, 1215f
                  bltu         a3, zero, 1208f
                  bne          t4, s8, 1215f
                  lui          s10, 555344
                  bge          a7, s4, 1210f
                  slli         ra, a0, 7
1208:             nop
                  sra          zero, s1, t4
1210:             and          s0, t0, a7
                  or           s5, t0, sp
                  bge          s2, s7, 1215f
                  srl          gp, a5, t0
                  auipc        s1, 85899
1215:             add          a2, t0, t4
                  sra          s2, t5, a2
                  lw           gp, 4(s9)
                  lui          s2, 466031
                  slti         s0, s8, 1444
                  addi         s9, s9, 8
                  srai         zero, s7, 13
                  auipc        s7, 496313
1769:             addi x24, x3, 0
1769:             jalr x24, x24, 0
sub_1:            addi         s9, s9, -44
                  slt          t2, sp, s11
                  sw           gp, 4(s9)
                  srai         a5, ra, 0
                  srai         a0, s2, 19
                  lui          s7, 703086
                  bltu         t0, t0, sub_1_j3 #branch to jump instr
                  sltu         zero, s6, sp
                  auipc        ra, 562607
                  xor          s4, t2, gp
                  nop
                  sltu         s6, t4, s10
                  ori          s4, t1, -1824
                  xori         a7, a5, -519
                  andi         a3, a7, -1601
                  slli         s5, s7, 7
                  srli         t3, s3, 10
sub_1_j3:         jal          gp, sub_5 #jump sub_1 -> sub_5
                  slt          s0, s2, zero
                  slli         t2, s11, 2
                  la           a4, sub_3
                  auipc        a7, 465104
                  addi         a4, a4, 466
                  ori          t1, ra, 1140
                  nop
                  bltu         zero, s9, sub_1_j4 #branch to jump instr
                  or           gp, sp, t3
                  slt          s0, t3, a3
                  addi         a3, s5, 535
sub_1_j4:         jalr         gp, a4, -466 #jump sub_1 -> sub_3
sub_1_0:          jal          gp, 24f
0:                jal          t1, 23f
1:                jal          a4, 11f
2:                jal          ra, 14f
3:                jal          ra, 25f
4:                jal          s7, 16f
5:                jal          t1, 8f
6:                jal          t1, 15f
7:                jal          ra, 2b
8:                jal          ra, 4b
9:                jal          t1, 21f
10:               jal          ra, 26f
11:               jal          ra, 13f
12:               jal          ra, 18f
13:               jal          t1, 7b
14:               jal          a1, 12b
15:               jal          ra, 19f
16:               jal          t1, 29f
17:               jal          t1, 22f
18:               jal          ra, 9b
19:               jal          s5, 27f
20:               jal          t1, 30f
21:               jal          s5, 10b
22:               jal          ra, 0b
23:               jal          a5, 1b
24:               jal          t1, 28f
25:               jal          tp, 20b
26:               jal          ra, 5b
27:               jal          t6, 3b
28:               jal          t1, 17b
29:               jal          t0, 6b
30:               sll          s6, a6, t3
                  bltu         a0, s1, 17f
                  lui          tp, 270010
                  bge          a0, t2, 20f
                  beq          a3, t4, 11f
                  auipc        s4, 1040108
                  slti         s1, a6, -415
                  auipc        s5, 937877
                  slt          s6, s6, a0
                  xori         s2, ra, 1650
                  beq          s0, s9, 16f
                  sltu         s5, a5, s4
11:               bltu         a7, a1, 13f
                  addi         sp, t6, 691
13:               srai         s5, s5, 16
                  auipc        a2, 973402
                  auipc        t2, 831122
16:               sub          s10, s1, s6
17:               nop
                  sll          t3, a1, ra
                  andi         s8, a3, -583
20:               lui          t1, 389134
                  sltiu        t0, a2, 602
                  andi         s2, sp, -841
                  ori          s2, s1, 1988
                  nop
                  xori         a5, ra, 135
                  blt          ra, s4, 38f
                  sra          a0, sp, s10
                  bge          t1, t3, 39f
                  andi         s0, a7, -1380
                  xor          s6, s7, t4
                  andi         s8, t5, 1022
                  srl          s3, sp, t5
                  add          t1, s1, s0
                  ori          s11, s2, -1718
                  sra          t1, a6, t6
                  bgeu         a2, t2, 38f
                  bgeu         zero, a7, 46f
38:               nop
39:               or           gp, t0, t5
                  bne          a0, tp, 60f
                  srai         sp, a7, 17
                  xor          ra, s6, s1
                  xori         a1, a2, 257
                  sltu         a1, s11, s4
                  add          a6, s3, s3
46:               bne          sp, s4, 51f
                  add          ra, s8, s0
                  srai         s7, s4, 27
                  sltu         tp, s4, s0
                  sub          zero, a6, t2
51:               beq          zero, s11, 61f
                  nop
                  blt          a6, s8, 61f
                  xori         a5, a7, -381
                  addi         t6, ra, 194
                  andi         a3, a0, 718
                  srli         gp, zero, 20
                  srl          t6, s2, t4
                  sltu         t3, a3, ra
60:               sra          s11, sp, t1
61:               sra          s10, s8, a6
                  or           s6, s5, a3
                  slli         s8, a3, 22
                  lw           gp, 4(s9)
                  addi         s9, s9, 44
                  and          a1, s10, sp
129:              addi x2, x3, 0
129:              jalr x2, x2, 0
sub_3:            or           s11, s9, t2
                  srli         a3, t4, 31
                  addi         s9, s9, -24
                  srli         t0, t4, 6
                  sw           gp, 4(s9)
                  slt          t2, sp, s4
                  slli         t1, s9, 1
                  and          a6, a7, t1
sub_3_0:          jal          gp, 12f
0:                jal          t1, 4f
1:                jal          ra, 6f
2:                jal          ra, 0b
3:                jal          t1, 11f
4:                jal          t1, 1b
5:                jal          t0, 14f
6:                jal          ra, 3b
7:                jal          t1, 5b
8:                jal          ra, 13f
9:                jal          sp, 10f
10:               jal          ra, 2b
11:               jal          t1, 8b
12:               jal          t1, 9b
13:               jal          ra, 7b
14:               jal          ra, 15f
15:               auipc        s2, 431778
sub_3_8:          jal          gp, 16f
0:                jal          t0, 9f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          gp, 2b
4:                jal          s1, 13f
5:                jal          t3, 4b
6:                jal          a5, 21f
7:                jal          ra, 8f
8:                jal          ra, 18f
9:                jal          s5, 20f
10:               jal          t1, 19f
11:               jal          a1, 3b
12:               jal          ra, 5b
13:               jal          ra, 22f
14:               jal          a5, 0b
15:               jal          s8, 1b
16:               jal          t1, 14b
17:               jal          ra, 7b
18:               jal          t1, 6b
19:               jal          a6, 12b
20:               jal          t1, 17b
21:               jal          t1, 15b
22:               addi         a6, t0, 1124
sub_3_5:          jal          gp, 4f
0:                jal          ra, 6f
1:                jal          ra, 3f
2:                jal          ra, 19f
3:                jal          ra, 10f
4:                jal          ra, 11f
5:                jal          a1, 13f
6:                jal          t1, 2b
7:                jal          sp, 17f
8:                jal          ra, 20f
9:                jal          s7, 1b
10:               jal          ra, 8b
11:               jal          t1, 5b
12:               jal          s10, 9b
13:               jal          t1, 14f
14:               jal          ra, 7b
15:               jal          ra, 18f
16:               jal          a3, 12b
17:               jal          ra, 15b
18:               jal          a2, 0b
19:               jal          ra, 16b
20:               srli         s5, a6, 27
sub_3_4:          jal          gp, 2f
0:                jal          ra, 17f
1:                jal          ra, 18f
2:                jal          ra, 9f
3:                jal          ra, 11f
4:                jal          sp, 12f
5:                jal          ra, 3b
6:                jal          ra, 13f
7:                jal          ra, 10f
8:                jal          ra, 16f
9:                jal          ra, 15f
10:               jal          ra, 5b
11:               jal          t1, 6b
12:               jal          ra, 14f
13:               jal          ra, 19f
14:               jal          a0, 7b
15:               jal          ra, 1b
16:               jal          ra, 4b
17:               jal          s7, 8b
18:               jal          ra, 0b
19:               ori          a3, t3, 1882
sub_3_3:          jal          gp, 21f
0:                jal          tp, 11f
1:                jal          t1, 14f
2:                jal          s7, 23f
3:                jal          gp, 0b
4:                jal          s2, 20f
5:                jal          t1, 19f
6:                jal          t3, 13f
7:                jal          a1, 6b
8:                jal          t1, 2b
9:                jal          ra, 12f
10:               jal          ra, 17f
11:               jal          a5, 16f
12:               jal          ra, 5b
13:               jal          s6, 22f
14:               jal          ra, 3b
15:               jal          ra, 10b
16:               jal          ra, 4b
17:               jal          t1, 1b
18:               jal          ra, 9b
19:               jal          ra, 8b
20:               jal          a3, 18b
21:               jal          ra, 7b
22:               jal          ra, 15b
23:               sra          sp, zero, t0
sub_3_2:          jal          gp, 11f
0:                jal          s0, 13f
1:                jal          sp, 10f
2:                jal          ra, 9f
3:                jal          ra, 5f
4:                jal          ra, 8f
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          a5, 14f
8:                jal          ra, 12f
9:                jal          t1, 1b
10:               jal          ra, 15f
11:               jal          t2, 6b
12:               jal          ra, 3b
13:               jal          s2, 2b
14:               jal          ra, 0b
15:               ori          s0, s9, -1525
sub_3_7:          jal          gp, 24f
0:                jal          a1, 28f
1:                jal          t1, 7f
2:                jal          t1, 4f
3:                jal          s8, 11f
4:                jal          ra, 27f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          sp, 26f
8:                jal          ra, 9f
9:                jal          ra, 22f
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          ra, 1b
13:               jal          ra, 23f
14:               jal          ra, 10b
15:               jal          ra, 21f
16:               jal          ra, 8b
17:               jal          ra, 16b
18:               jal          ra, 20f
19:               jal          ra, 25f
20:               jal          sp, 17b
21:               jal          ra, 13b
22:               jal          t1, 6b
23:               jal          ra, 14b
24:               jal          t1, 18b
25:               jal          sp, 12b
26:               jal          t1, 15b
27:               jal          ra, 19b
28:               sub          zero, a7, zero
sub_3_9:          jal          gp, 7f
0:                jal          t1, 17f
1:                jal          s7, 8f
2:                jal          a6, 20f
3:                jal          t1, 2b
4:                jal          t1, 6f
5:                jal          s4, 12f
6:                jal          ra, 9f
7:                jal          ra, 1b
8:                jal          tp, 0b
9:                jal          s8, 5b
10:               jal          t1, 16f
11:               jal          ra, 3b
12:               jal          ra, 19f
13:               jal          a0, 18f
14:               jal          t6, 13b
15:               jal          ra, 10b
16:               jal          ra, 11b
17:               jal          ra, 4b
18:               jal          ra, 15b
19:               jal          ra, 14b
20:               lui          a0, 21015
sub_3_6:          jal          gp, 0f
0:                jal          ra, 6f
1:                jal          ra, 16f
2:                jal          ra, 8f
3:                jal          t1, 4f
4:                jal          s2, 11f
5:                jal          ra, 15f
6:                jal          a2, 3b
7:                jal          ra, 12f
8:                jal          t1, 1b
9:                jal          ra, 14f
10:               jal          t1, 2b
11:               jal          t1, 7b
12:               jal          ra, 9b
13:               jal          ra, 5b
14:               jal          a0, 13b
15:               jal          ra, 10b
16:               auipc        s3, 361844
sub_3_1:          jal          gp, 23f
0:                jal          ra, 20f
1:                jal          ra, 2f
2:                jal          a2, 15f
3:                jal          a5, 24f
4:                jal          ra, 0b
5:                jal          s6, 7f
6:                jal          ra, 3b
7:                jal          ra, 4b
8:                jal          ra, 10f
9:                jal          ra, 6b
10:               jal          t1, 5b
11:               jal          s11, 1b
12:               jal          ra, 8b
13:               jal          gp, 16f
14:               jal          t1, 11b
15:               jal          ra, 18f
16:               jal          ra, 26f
17:               jal          ra, 25f
18:               jal          t1, 19f
19:               jal          s3, 17b
20:               jal          a6, 9b
21:               jal          a1, 22f
22:               jal          ra, 13b
23:               jal          sp, 12b
24:               jal          ra, 14b
25:               jal          ra, 21b
26:               xori         s0, s3, 80
                  beq          t5, s9, 4f
                  slli         s2, s0, 15
                  or           t6, a7, t6
                  sltiu        s5, t2, -22
4:                and          a0, a2, ra
                  and          sp, t1, a5
                  ori          s1, t3, 268
                  slti         s1, s4, 1124
                  nop
                  sub          s6, a0, t2
                  xor          t6, s7, a4
                  lui          s2, 579641
                  addi         s1, t6, 45
                  nop
                  sltiu        zero, zero, -626
                  srl          t6, a5, a4
                  xor          s2, s10, a7
                  sll          s3, s8, t2
                  srai         s7, s1, 1
                  sll          s8, a5, a1
                  and          s7, a4, t6
                  addi         a4, t4, -1753
                  or           a0, a6, s3
                  add          t3, s11, s5
                  srai         t3, gp, 7
                  sub          zero, t4, t6
                  add          t1, s2, a4
                  blt          a1, s3, 35f
                  sub          t1, a5, gp
                  srl          s11, tp, t4
                  srai         s7, t4, 14
                  slli         t6, t2, 22
                  bgeu         gp, a1, 42f
                  bge          t5, a4, 46f
                  srai         t2, s8, 7
35:               srli         t2, t6, 10
                  add          a3, t4, a0
                  bne          s2, s6, 55f
                  bne          a7, a4, 42f
                  bgeu         a3, a2, 54f
                  ori          tp, s3, 1772
                  sltiu        t3, a0, 403
42:               slt          s2, s9, t5
                  slti         s8, a2, -1052
                  slli         s6, t5, 19
                  bne          t6, s2, 50f
46:               sll          t2, s10, a7
                  or           t6, a3, s7
                  add          s10, a6, a2
                  add          s1, s10, t5
50:               slli         tp, a6, 15
                  blt          s7, gp, 62f
                  and          tp, a5, a5
                  beq          s9, t1, 62f
54:               sub          s11, s4, s0
55:               sra          t1, s2, s5
                  srai         s7, t1, 29
                  auipc        s11, 620152
                  andi         s8, s11, -855
                  andi         t1, t0, 2016
                  bgeu         s3, zero, 70f
                  ori          s5, s10, 653
62:               xor          s11, t5, a5
                  lui          t0, 1040405
                  blt          s7, tp, 76f
                  srai         s1, t1, 18
                  srl          s0, a2, s7
                  xori         sp, gp, -1103
                  auipc        s4, 355819
                  bgeu         s9, a3, 88f
70:               bne          a7, a2, 76f
                  bne          ra, s11, 80f
                  bgeu         zero, s7, 89f
                  slt          t2, a1, s10
                  andi         ra, s10, -1549
                  srai         tp, s0, 5
76:               bltu         a1, a6, 80f
                  bge          a7, s9, 89f
                  srli         s11, a6, 22
                  sra          s0, t0, t3
80:               srai         s7, t4, 29
                  bgeu         s0, sp, 94f
                  auipc        a7, 2787
                  nop
                  slli         s2, s4, 11
                  nop
                  or           s8, t6, a3
                  bltu         t6, a5, 102f
88:               sltu         a2, sp, t6
89:               sra          s11, s2, t5
                  slli         s3, ra, 25
                  sll          a1, a6, t5
                  addi         tp, tp, 590
                  lui          t6, 93439
94:               sltu         s3, s4, a0
                  srli         a1, a1, 16
                  sub          zero, t5, sp
                  auipc        s6, 1025070
                  bgeu         zero, s9, 106f
                  beq          t1, s4, 100f
100:              andi         s8, ra, 1268
                  bltu         sp, s2, 106f
102:              sltiu        s6, a4, 617
                  bltu         tp, s10, 110f
                  sll          a4, a1, tp
                  srai         tp, t0, 1
106:              add          zero, t3, t5
                  bltu         sp, t3, 127f
                  xori         a7, t6, 229
                  srai         zero, a5, 2
110:              slli         s5, s2, 11
                  slti         gp, a7, -787
                  slti         s3, a1, 1789
                  blt          a6, tp, 122f
                  srl          a3, a4, a2
                  sra          s1, a1, s4
                  bgeu         t6, t6, 121f
                  addi         t0, s0, 1035
                  blt          s9, s2, 129f
                  add          s5, gp, s8
                  and          a0, s11, a2
121:              or           a5, s6, t1
122:              sltu         s11, s10, s10
                  slli         a6, sp, 21
                  beq          a0, t2, 128f
                  nop
                  ori          a3, sp, 711
127:              sltiu        s2, gp, 323
128:              slt          a5, a2, t5
129:              nop
                  bltu         a4, a7, 150f
                  xori         t1, s0, -1704
                  auipc        a6, 169549
                  beq          s6, s3, 143f
                  xor          s7, t6, t4
                  xori         gp, s6, -120
                  lui          s2, 575887
                  auipc        a2, 851271
                  and          a5, zero, t0
                  sub          t1, s11, a7
                  ori          zero, t1, -279
                  ori          a2, zero, -1300
                  slt          t6, s6, gp
143:              sra          tp, t0, s5
                  sltiu        a7, t5, 1398
                  sub          t2, tp, a6
                  andi         t2, s6, 153
                  sltu         t0, t4, s6
                  sub          gp, a2, s3
                  xor          s5, a1, s8
150:              bltu         a0, s1, 159f
                  sub          a7, s2, a1
                  srai         a3, s4, 11
                  addi         t6, s9, -1941
                  sltiu        s2, t3, 1927
                  or           a6, s5, a1
                  sll          t0, gp, a4
                  sltiu        s5, s6, -913
                  xor          s11, ra, a6
159:              sltiu        ra, t4, 2045
                  ori          a7, ra, 1
                  bge          t3, a4, 165f
                  lui          s8, 464967
                  ori          a0, a7, -1570
                  auipc        gp, 865357
165:              beq          tp, t4, 182f
                  xori         a5, s0, 1534
                  sub          a7, a6, a6
                  bge          t3, s11, 176f
                  ori          zero, t3, 271
                  sll          s10, s5, s6
                  nop
                  srai         a5, t3, 7
                  sltu         a5, s6, a2
                  srli         s8, t4, 7
                  srl          s2, ra, t6
176:              ori          a2, s11, -1586
                  nop
                  slt          s11, a1, t0
                  addi         gp, gp, 1426
                  srl          zero, a0, gp
                  srai         s2, t5, 0
182:              auipc        t0, 961025
                  srai         a3, s10, 18
                  sll          t2, t2, s10
                  srl          gp, zero, s1
                  sub          s10, tp, sp
                  blt          s1, a0, 200f
                  slli         a4, t1, 13
                  sltiu        tp, a0, -244
                  and          s11, a4, zero
                  bgeu         s3, s7, 210f
                  and          s7, s11, a7
                  auipc        s5, 424529
                  nop
                  and          s7, s10, zero
                  lui          s0, 140561
                  srl          s8, s7, t4
                  beq          t6, s0, 218f
                  nop
200:              nop
                  srl          s4, a1, s2
                  slt          s3, s10, s1
                  blt          s7, s6, 223f
                  srai         a3, s2, 2
                  bltu         t2, t1, 216f
                  andi         t3, a1, 193
                  beq          t5, a2, 213f
                  srli         zero, t1, 10
                  srl          t0, a3, s1
210:              and          s6, s3, s3
                  blt          t1, a3, 226f
                  xor          s10, s0, tp
213:              nop
                  bltu         sp, t5, 229f
                  andi         t2, a5, 495
216:              srai         t3, ra, 17
                  beq          t2, s0, 235f
218:              sub          s10, sp, t0
                  bge          sp, s3, 231f
                  bgeu         a6, zero, 227f
                  andi         t6, a3, 1604
                  bltu         t6, s10, 230f
223:              slt          t0, s10, a5
                  srl          s0, a1, a7
                  bge          a5, s6, 234f
226:              ori          a7, t6, 1297
227:              srli         a0, zero, 22
                  srl          s10, s1, s1
229:              srli         s4, t2, 19
230:              xor          t1, s4, s8
231:              xor          a1, s10, t0
                  xori         s2, t3, -1286
                  slti         s0, gp, -389
234:              srai         s6, t5, 24
235:              blt          s6, t1, 245f
                  sra          t6, sp, a4
                  nop
                  bge          t6, s1, 249f
                  auipc        t1, 1032120
                  slli         s3, s11, 27
                  nop
                  xor          s4, s11, s7
                  srai         a4, a2, 18
                  sll          s10, s6, ra
245:              srli         s8, s7, 14
                  sra          s7, t0, s8
                  ori          s2, s0, -1821
                  sltiu        t3, a3, 900
249:              slli         zero, s10, 8
                  bne          a1, tp, 259f
                  slti         sp, a1, -226
                  auipc        a3, 567780
                  lui          a5, 954981
                  or           s3, s1, ra
                  sub          a4, s10, a1
                  blt          t5, zero, 268f
                  beq          t3, t0, 261f
                  xor          a0, a7, s3
259:              sltu         s8, t0, a2
                  sub          s8, s6, a6
261:              srl          a4, a4, t0
                  auipc        a5, 1040025
                  slti         a4, tp, -744
                  andi         t1, s5, -190
                  srl          a5, t3, s6
                  slt          a2, a4, t3
                  ori          a4, t1, -941
268:              blt          t0, a6, 273f
                  bge          t1, s6, 282f
                  sltiu        s6, a2, -1680
                  slli         tp, t1, 2
                  lui          a0, 662872
273:              slti         a5, s11, -1763
                  bgeu         s3, s1, 278f
                  sll          a1, s2, a4
                  sltiu        s10, zero, -1585
                  or           gp, t0, a5
278:              sra          s10, s2, a2
                  and          s3, s11, t0
                  srai         a7, a4, 15
                  sltiu        t3, t5, 1671
282:              sltiu        a7, s3, -123
                  andi         s0, s6, 65
                  slti         gp, s8, -633
                  bgeu         tp, a7, 290f
                  auipc        s4, 623070
                  bge          t4, t4, 288f
288:              sltiu        a1, t2, -1008
                  andi         a7, t2, -877
290:              slli         a5, s6, 19
                  sltu         a5, tp, sp
                  srli         s8, a6, 2
                  sltiu        t6, t5, -793
                  or           a7, a4, a4
                  add          a2, s8, s2
                  slt          a2, s5, s1
                  bge          a2, s2, 302f
                  srl          s5, s4, s8
                  addi         t3, t6, -1050
                  andi         s2, t4, 495
                  srai         a3, s3, 27
302:              add          a2, a4, s4
                  sltiu        a4, t2, -1472
                  xori         sp, s2, -954
                  or           s5, s1, a2
                  xori         a2, s8, -1717
                  bne          t1, s7, 311f
                  nop
                  bgeu         t3, a7, 313f
                  bne          s7, a5, 329f
311:              sltu         a4, a3, zero
                  srli         ra, s6, 26
313:              andi         a4, a5, 1140
                  slt          s1, sp, a0
                  lui          s6, 611067
                  slt          s2, ra, s6
                  sub          t3, s0, t4
                  blt          a6, s0, 327f
                  sltiu        s6, s6, -1646
                  nop
                  lui          s5, 853376
                  andi         a6, t4, -2006
                  sltu         a6, s9, s1
                  beq          s0, t2, 332f
                  slt          s3, t1, s0
                  slli         s7, s0, 10
327:              srli         a0, zero, 13
                  xor          a2, t5, a1
329:              bge          t0, gp, 338f
                  slti         s0, a7, 654
                  bge          a1, t1, 338f
332:              xor          t0, s3, t2
                  sub          t2, t4, a3
                  srai         t6, s4, 23
                  beq          s3, gp, 344f
                  bne          t0, s0, 347f
                  srli         s0, s2, 18
338:              auipc        gp, 498779
                  srli         t1, s2, 7
                  add          t2, ra, s9
                  beq          sp, a5, 359f
                  slt          a1, a1, s4
                  lui          a4, 212378
344:              bne          s7, t6, 359f
                  srl          a2, s6, s8
                  and          a4, t0, a1
347:              and          a1, a5, a4
                  and          ra, s11, t3
                  slt          zero, s6, a6
                  andi         s6, s0, -1437
                  nop
                  add          t2, t1, s1
                  xor          zero, s11, s3
                  slti         s2, s3, -1906
                  auipc        tp, 992839
                  or           a1, a0, t1
                  andi         a3, t1, 133
                  xori         a1, a1, 1450
359:              or           t1, a3, t3
                  auipc        s5, 366921
                  add          a3, a5, s4
                  blt          a4, gp, 382f
                  sra          s1, a1, ra
                  auipc        a7, 223708
                  sltu         s6, a4, a0
                  andi         s8, s3, 456
                  nop
                  ori          s5, t4, 377
                  bge          sp, t3, 374f
                  sub          t2, s8, s8
                  bge          t1, s10, 381f
                  ori          s1, t6, -1743
                  add          a2, s11, ra
374:              blt          s1, s8, 379f
                  lui          s1, 517289
                  ori          tp, s6, 2031
                  sltiu        s10, s4, -1829
                  srai         s11, s8, 22
379:              nop
                  bgeu         t1, s4, 392f
381:              blt          t5, s0, 385f
382:              blt          tp, t4, 388f
                  srli         a6, a3, 6
                  bge          t2, ra, 399f
385:              xor          sp, ra, t4
                  srl          a1, gp, t4
                  bltu         a7, t0, 407f
388:              slt          s3, tp, s1
                  sll          a5, t2, zero
                  sub          gp, s8, t4
                  xori         s8, t3, -1368
392:              sll          tp, t6, s10
                  blt          ra, t5, 406f
                  ori          t0, s4, -1378
                  add          a0, t6, zero
                  sltiu        s8, tp, 1884
                  nop
                  srli         a5, a4, 20
399:              sltu         s4, s7, zero
                  srli         t2, a0, 31
                  addi         s7, t4, -1263
                  srl          s6, a3, s2
                  srai         t3, t4, 5
                  slli         a6, gp, 5
                  xor          s6, s3, t5
406:              sra          ra, s11, s9
407:              srli         t3, s3, 25
                  slt          s10, gp, a3
                  bltu         s9, t6, 421f
                  srl          s4, s6, s5
                  lui          t1, 571362
                  xor          t6, s11, a0
                  srli         sp, a1, 2
                  bge          gp, t5, 424f
                  ori          ra, sp, 1682
                  and          a1, s2, s1
                  auipc        a4, 848007
                  slt          s10, s0, s1
                  slt          a7, s8, s1
                  slt          t6, s5, a4
421:              sltiu        sp, tp, 478
                  slt          a1, s8, a5
                  sub          a3, s0, s3
424:              sll          t0, s4, s0
                  srl          s10, s7, a3
                  bgeu         t0, s5, 439f
                  bne          s4, s4, 431f
                  slti         a7, s3, -864
                  nop
                  and          ra, a6, s2
431:              sll          a0, t1, t0
                  slli         s5, ra, 27
                  nop
                  sub          t0, t6, tp
                  sub          t2, s1, s3
                  sll          sp, a1, s2
                  sra          s0, a6, t5
                  slli         s6, t5, 9
439:              bge          tp, s4, 450f
                  bltu         a4, a2, 441f
441:              srl          zero, ra, ra
                  slti         gp, a5, 1519
                  add          s2, s6, s9
                  beq          s8, t3, 452f
                  lui          s8, 978614
                  or           a4, tp, s2
                  ori          a2, t2, -578
                  slti         zero, s3, -302
                  bgeu         t4, a2, 466f
450:              add          s0, t0, t6
                  bgeu         a2, t0, 456f
452:              sltu         a3, sp, t2
                  srl          s4, t6, s4
                  slli         s11, s10, 9
                  bltu         s8, tp, 459f
456:              sltu         a4, gp, t0
                  auipc        s1, 65306
                  srli         s0, s9, 16
459:              slli         gp, s4, 15
                  sub          s1, zero, a0
                  slti         a2, t4, -1415
                  addi         t1, s9, -2015
                  slt          s8, t5, a1
                  slli         s1, zero, 14
                  ori          t3, t6, 1026
466:              sub          a7, a3, s3
                  bge          a6, s7, 480f
                  srli         gp, a2, 18
                  sub          zero, tp, t0
                  sll          s1, s9, a1
                  srl          a3, a6, a2
                  xori         sp, s7, -600
                  beq          t1, t4, 478f
                  slt          s4, tp, gp
                  auipc        s11, 761017
                  slti         t1, s9, -1746
                  sll          s10, s2, sp
478:              lui          t6, 699059
                  xor          a5, tp, s2
480:              srli         tp, t3, 18
                  srl          t3, s9, s5
                  sll          a2, zero, s10
                  sll          s6, s10, zero
                  sltiu        a2, tp, -86
                  and          a7, s10, t4
                  sra          s2, s2, s8
                  blt          t3, s8, 496f
                  beq          a1, sp, 496f
                  srli         a7, s2, 9
                  blt          a5, s3, 510f
                  slti         s7, s4, 572
                  srai         a0, zero, 22
                  andi         ra, s6, -1168
                  xori         s8, s5, -1200
                  bgeu         a1, a4, 506f
496:              srai         s8, sp, 23
                  andi         t2, s10, -487
                  sra          s11, s1, s6
                  nop
                  sra          s0, ra, a3
                  bge          s3, t6, 506f
                  sltiu        t3, t1, -2016
                  sltu         a5, s11, a3
                  sub          s7, a6, s5
                  slli         s7, a3, 20
506:              sub          s8, t3, a2
                  bgeu         t6, a4, 520f
                  srl          s7, t4, t3
                  xori         s5, s11, 770
510:              blt          a7, s6, 518f
                  sltu         t2, a1, s5
                  slt          ra, t2, ra
                  slli         s5, a3, 1
                  srl          s11, a3, ra
                  nop
                  ori          s3, s8, -1689
                  and          a6, tp, a2
518:              nop
                  bge          s4, t0, 531f
520:              sra          s11, gp, s5
                  bne          s0, a5, 525f
                  srli         a2, s2, 11
                  sltu         a4, a7, t3
                  slli         ra, a3, 11
525:              bge          t3, t3, 536f
                  slt          t0, t1, s4
                  addi         s1, tp, -1118
                  slt          sp, a0, a5
                  add          s8, a2, s2
                  bltu         s9, a7, 531f
531:              srl          t2, a7, a4
                  sub          s6, s6, s3
                  auipc        s6, 946533
                  nop
                  addi         tp, a0, 602
536:              bgeu         s11, a0, 542f
                  bne          s3, a1, 543f
                  and          t1, a7, s7
                  auipc        s6, 290499
                  lui          s4, 744355
                  beq          s10, a1, 543f
542:              lui          ra, 949916
543:              srai         a6, s9, 24
                  srli         zero, s11, 10
                  lw           gp, 4(s9)
                  sltu         s4, s0, s0
                  slt          s8, s1, s2
                  xori         a6, a4, -769
                  andi         a1, a1, -1997
                  srli         t1, t6, 18
                  addi         s9, s9, 24
                  auipc        s4, 719263
785:              addi x26, x3, 0
785:              jalr x26, x26, 0
sub_4:            auipc        a0, 247090
                  bltu         s0, s9, sub_4_stack_p
sub_4_stack_p:    addi         s9, s9, -48
                  lui          zero, 586176
                  sw           gp, 4(s9)
                  and          s6, s2, s7
                  slti         tp, s8, 1905
                  slt          a5, t4, a6
sub_4_0:          jal          gp, 13f
0:                jal          s8, 10f
1:                jal          ra, 11f
2:                jal          a0, 18f
3:                jal          ra, 12f
4:                jal          ra, 6f
5:                jal          t2, 19f
6:                jal          ra, 20f
7:                jal          t1, 15f
8:                jal          ra, 17f
9:                jal          t1, 4b
10:               jal          ra, 7b
11:               jal          t1, 9b
12:               jal          ra, 8b
13:               jal          ra, 2b
14:               jal          t1, 3b
15:               jal          t1, 1b
16:               jal          ra, 5b
17:               jal          t2, 16b
18:               jal          s10, 14b
19:               jal          a2, 0b
20:               srai         a2, s0, 16
                  slli         s4, s5, 16
                  and          s10, t0, a0
                  auipc        ra, 861800
                  andi         s4, t1, 1863
                  bltu         t4, zero, 24f
                  bne          s4, a5, 24f
                  bltu         s4, s0, 11f
                  slti         s4, a5, -874
                  lui          a1, 358150
                  bltu         tp, gp, 28f
                  ori          s10, s0, -660
11:               srai         a3, s0, 0
                  xori         s0, s11, -206
                  srli         s10, s9, 30
                  bge          s8, a6, 16f
                  slti         a0, ra, -650
16:               slt          s6, t3, a4
                  lui          a6, 251436
                  andi         a7, ra, 931
                  srli         s11, t2, 9
                  andi         s10, a4, -1381
                  xor          a7, zero, a3
                  bltu         s4, s11, 42f
                  sltu         s10, a6, s4
24:               slti         s4, t2, -76
                  lui          a2, 103820
                  add          a5, t0, s8
                  xori         s11, t2, -148
28:               sltu         a4, gp, s5
                  andi         s7, s8, -1521
                  ori          a4, s1, -1395
                  slli         s1, s9, 12
                  sltu         s7, ra, t6
                  bltu         a5, a4, 40f
                  slli         s8, a4, 25
                  sltiu        s5, s0, 1511
                  bltu         t4, ra, 51f
                  add          sp, zero, a7
                  ori          t3, t4, -973
                  xor          s2, tp, t6
40:               sltiu        s4, t6, 1746
                  bne          sp, t1, 43f
42:               bgeu         a4, t1, 47f
43:               lui          a5, 982591
                  slti         s7, t2, -418
                  slti         s8, a0, -1068
                  sll          gp, a3, t2
47:               addi         t0, t5, 53
                  or           s11, ra, s3
                  sltu         sp, t2, t6
                  addi         a6, s6, -1827
51:               srai         t0, s8, 24
                  lw           gp, 4(s9)
                  sub          a6, s3, t4
                  addi         s9, s9, 48
                  sub          s11, a3, s5
                  sll          zero, tp, t4
87:               addi x5, x3, 1
87:               jalr x5, x5, 0
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
                  add x30, x25, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x31, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x31, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x31, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x31, x26, ecall_handler
                  li x26, 0x1
                  beq x31, x26, instr_fault_handler
                  li x26, 0x5
                  beq x31, x26, load_fault_handler
                  li x26, 0x7
                  beq x31, x26, store_fault_handler
                  li x26, 0xc
                  beq x31, x26, pt_fault_handler
                  li x26, 0xd
                  beq x31, x26, pt_fault_handler
                  li x26, 0xf
                  beq x31, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x25, x30, zero
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
                  add x25, x30, zero
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
                  add x25, x30, zero
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
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x25, x30, zero
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
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x25, x30, zero
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
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x25, x30, zero
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
