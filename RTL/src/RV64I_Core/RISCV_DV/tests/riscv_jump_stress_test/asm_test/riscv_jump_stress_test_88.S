.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x12, kernel_stack_end

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
                  li x0, 0xe
                  li x1, 0x80000000
                  li x2, 0xfb642bca
                  li x3, 0x80000000
                  li x5, 0xc65cff47
                  li x6, 0x0
                  li x7, 0x1e541b4c
                  li x8, 0xff9c1704
                  li x9, 0xf7ac066e
                  li x10, 0x80000000
                  li x11, 0xb
                  li x13, 0xda1c2205
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0xf3d38960
                  li x17, 0xfc5a0a4c
                  li x18, 0xf
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0xf3c0293d
                  li x22, 0x181f2869
                  li x23, 0xceb33c43
                  li x24, 0x0
                  li x25, 0x4
                  li x26, 0x1a23fcec
                  li x27, 0x0
                  li x28, 0xf904fe2f
                  li x29, 0x2
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x4, user_stack_end
main:             ori          s0, a5, -1674
                  add          s9, s9, t2
                  addi         t0, t5, -616
                  la           gp, sub_2
                  sltiu        s7, s8, 899
                  xori         sp, s3, -297
                  or           ra, s2, s7
                  xor          a4, a1, t3
                  add          s9, zero, s5
                  sltu         t5, t5, a2
                  addi         gp, gp, 720
                  bltu         zero, a0, main_j2 #branch to jump instr
                  sll          s5, a2, s11
main_j2:          jalr         a3, gp, -719 #jump main -> sub_2
                  la           gp, sub_2
                  xor          a6, t6, ra
                  addi         gp, gp, -383
                  nop
                  slt          a3, s7, a5
                  slli         s6, ra, 25
                  xor          t4, t0, gp
                  bne          a3, tp, main_j3 #branch to jump instr
                  auipc        s6, 369485
                  sub          s8, s0, s6
main_j3:          jalr         a3, gp, 384 #jump main -> sub_2
main_0:           jal          a3, 8f
0:                jal          ra, 10f
1:                jal          t1, 3f
2:                jal          ra, 22f
3:                jal          s2, 2b
4:                jal          t1, 20f
5:                jal          ra, 13f
6:                jal          ra, 4b
7:                jal          ra, 15f
8:                jal          ra, 16f
9:                jal          t0, 23f
10:               jal          t0, 17f
11:               jal          t4, 26f
12:               jal          t1, 21f
13:               jal          s8, 12b
14:               jal          ra, 18f
15:               jal          ra, 24f
16:               jal          sp, 0b
17:               jal          t6, 1b
18:               jal          ra, 30f
19:               jal          a7, 11b
20:               jal          sp, 28f
21:               jal          s4, 25f
22:               jal          s3, 7b
23:               jal          ra, 6b
24:               jal          t1, 19b
25:               jal          ra, 29f
26:               jal          sp, 9b
27:               jal          t0, 5b
28:               jal          s6, 27b
29:               jal          t4, 14b
30:               auipc        s5, 673758
                  auipc        t0, 959138
                  srl          s0, a4, a1
                  srli         s9, s11, 7
                  srai         s5, t6, 14
                  and          s4, t4, gp
                  beq          s1, t3, 15f
                  lui          t0, 226646
                  and          s7, s7, gp
                  xori         s9, gp, 1464
                  srli         a3, t1, 23
                  sll          t5, t4, s9
                  addi         sp, s9, -1177
                  andi         s7, gp, -163
                  nop
                  lui          a1, 802040
15:               lui          s6, 849782
                  bne          a5, sp, 21f
                  la           a6, sub_1
                  xori         s6, a5, 1065
                  andi         t3, s11, 1244
                  sra          a4, a0, a0
                  addi         a6, a6, 455
                  blt          s11, s3, main_j1 #branch to jump instr
                  sll          gp, t6, zero
                  or           sp, a2, s11
                  xori         t0, s10, 2014
                  srli         t3, a2, 0
main_j1:          jalr         a3, a6, -454 #jump main -> sub_1
                  nop
                  andi         s8, a5, 589
                  ori          a1, s7, 1720
                  bgeu         s0, a5, 21f
21:               ori          a0, s8, -678
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         a4, s6, 205
                  slli         t0, a7, 21
                  sll          t1, s3, t1
                  auipc        a1, 101305
                  bgeu         a2, t0, sub_1_stack_p
                  srli         a1, s0, 21
                  sra          s2, sp, a6
sub_1_stack_p:    addi         tp, tp, -48
                  lui          t4, 64641
                  sw           a3, 4(tp)
                  auipc        s3, 1043911
                  addi         s3, sp, -1506
                  sltiu        s5, a3, -1307
                  slt          a7, sp, a7
                  ori          a0, a1, 354
                  slti         a6, t6, -1048
                  addi         s6, zero, -879
                  srl          sp, tp, t4
                  or           s5, s11, s2
                  sltiu        a7, a4, -2000
sub_1_j4:         jal          a3, sub_3 #jump sub_1 -> sub_3
                  blt          s10, a7, 10f
                  addi         a1, s5, -1605
                  nop
                  beq          zero, a4, 10f
                  or           s11, s4, s9
                  add          t6, t1, s4
                  bne          t0, t0, 10f
                  add          s11, a1, t2
                  srli         a6, t5, 2
                  bgeu         gp, a0, 10f
10:               addi         a1, sp, -8
                  auipc        s9, 521875
                  xor          t5, t4, zero
                  lw           a3, 4(tp)
                  addi         tp, tp, 48
                  xori         sp, s10, 491
                  ori          sp, tp, 1468
                  slti         a6, a0, -2044
39:               addi x27, x13, 0
39:               jalr x27, x27, 0
sub_5:            beq          a2, s9, sub_5_stack_p
                  srli         a0, t6, 5
                  or           s0, t3, s4
sub_5_stack_p:    addi         tp, tp, -44
                  sw           a3, 4(tp)
                  srli         a6, a2, 2
                  auipc        t4, 763820
                  srai         a4, s6, 25
                  add          t5, a1, s6
sub_5_8:          jal          a3, 17f
0:                jal          t1, 29f
1:                jal          s0, 27f
2:                jal          ra, 22f
3:                jal          ra, 21f
4:                jal          a3, 25f
5:                jal          a7, 3b
6:                jal          ra, 16f
7:                jal          t1, 1b
8:                jal          ra, 7b
9:                jal          ra, 11f
10:               jal          s10, 14f
11:               jal          t1, 2b
12:               jal          gp, 18f
13:               jal          ra, 12b
14:               jal          t1, 24f
15:               jal          t1, 10b
16:               jal          ra, 15b
17:               jal          ra, 4b
18:               jal          t1, 19f
19:               jal          ra, 8b
20:               jal          gp, 26f
21:               jal          gp, 28f
22:               jal          ra, 20b
23:               jal          a5, 5b
24:               jal          a7, 13b
25:               jal          ra, 9b
26:               jal          t6, 6b
27:               jal          t1, 23b
28:               jal          t1, 0b
29:               srl          s7, tp, a1
sub_5_1:          jal          a3, 9f
0:                jal          a3, 12f
1:                jal          ra, 11f
2:                jal          s11, 17f
3:                jal          a1, 2b
4:                jal          t1, 0b
5:                jal          ra, 10f
6:                jal          sp, 15f
7:                jal          sp, 13f
8:                jal          t1, 6b
9:                jal          ra, 7b
10:               jal          ra, 1b
11:               jal          t1, 3b
12:               jal          s7, 14f
13:               jal          ra, 4b
14:               jal          ra, 5b
15:               jal          ra, 18f
16:               jal          t1, 8b
17:               jal          gp, 16b
18:               slli         t3, s7, 7
sub_5_7:          jal          a3, 11f
0:                jal          t1, 14f
1:                jal          t1, 2f
2:                jal          ra, 13f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          t0, 1b
8:                jal          ra, 16f
9:                jal          ra, 0b
10:               jal          ra, 7b
11:               jal          t1, 15f
12:               jal          ra, 3b
13:               jal          sp, 6b
14:               jal          a5, 12b
15:               jal          ra, 10b
16:               ori          a6, a0, -1321
sub_5_3:          jal          a3, 4f
0:                jal          t1, 1f
1:                jal          ra, 18f
2:                jal          ra, 15f
3:                jal          t6, 6f
4:                jal          t3, 12f
5:                jal          ra, 17f
6:                jal          ra, 7f
7:                jal          ra, 22f
8:                jal          gp, 23f
9:                jal          ra, 20f
10:               jal          ra, 25f
11:               jal          ra, 21f
12:               jal          s7, 2b
13:               jal          t1, 0b
14:               jal          t1, 11b
15:               jal          ra, 27f
16:               jal          ra, 28f
17:               jal          ra, 29f
18:               jal          s7, 3b
19:               jal          ra, 9b
20:               jal          gp, 26f
21:               jal          s11, 13b
22:               jal          ra, 24f
23:               jal          t1, 19b
24:               jal          s1, 5b
25:               jal          s7, 8b
26:               jal          ra, 14b
27:               jal          t1, 16b
28:               jal          ra, 10b
29:               and          gp, s8, zero
sub_5_6:          jal          a3, 9f
0:                jal          ra, 5f
1:                jal          ra, 10f
2:                jal          t1, 1b
3:                jal          ra, 8f
4:                jal          s3, 15f
5:                jal          a5, 12f
6:                jal          t1, 2b
7:                jal          ra, 11f
8:                jal          t1, 13f
9:                jal          t1, 6b
10:               jal          a4, 4b
11:               jal          ra, 28f
12:               jal          a7, 7b
13:               jal          t1, 23f
14:               jal          sp, 3b
15:               jal          s5, 24f
16:               jal          t1, 22f
17:               jal          ra, 0b
18:               jal          t1, 25f
19:               jal          s0, 20f
20:               jal          t0, 17b
21:               jal          t6, 14b
22:               jal          s10, 26f
23:               jal          ra, 27f
24:               jal          gp, 21b
25:               jal          ra, 19b
26:               jal          ra, 18b
27:               jal          t0, 16b
28:               sltu         a0, t6, s3
sub_5_5:          jal          a3, 7f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          t1, 9f
3:                jal          t1, 6f
4:                jal          t1, 1b
5:                jal          s9, 3b
6:                jal          ra, 13f
7:                jal          ra, 4b
8:                jal          ra, 0b
9:                jal          t1, 14f
10:               jal          a3, 5b
11:               jal          ra, 12f
12:               jal          ra, 8b
13:               jal          t1, 11b
14:               ori          a1, t0, 1577
sub_5_0:          jal          a3, 13f
0:                jal          t1, 4f
1:                jal          ra, 11f
2:                jal          t1, 7f
3:                jal          ra, 15f
4:                jal          t3, 3b
5:                jal          ra, 2b
6:                jal          ra, 17f
7:                jal          ra, 9f
8:                jal          t5, 0b
9:                jal          ra, 14f
10:               jal          t4, 6b
11:               jal          s6, 5b
12:               jal          ra, 1b
13:               jal          ra, 8b
14:               jal          ra, 19f
15:               jal          s1, 16f
16:               jal          s8, 10b
17:               jal          gp, 12b
18:               jal          t1, 20f
19:               jal          a0, 18b
20:               addi         t3, t5, -62
sub_5_4:          jal          a3, 1f
0:                jal          t1, 13f
1:                jal          t1, 3f
2:                jal          ra, 4f
3:                jal          s0, 17f
4:                jal          ra, 0b
5:                jal          t1, 2b
6:                jal          ra, 15f
7:                jal          t0, 14f
8:                jal          s5, 20f
9:                jal          gp, 8b
10:               jal          ra, 12f
11:               jal          t0, 5b
12:               jal          t4, 16f
13:               jal          s7, 18f
14:               jal          ra, 9b
15:               jal          ra, 7b
16:               jal          ra, 11b
17:               jal          ra, 10b
18:               jal          s0, 19f
19:               jal          ra, 6b
20:               addi         s6, t3, 680
                  srli         t1, a4, 30
                  sltiu        a4, t6, 387
                  blt          t0, s1, 22f
                  addi         t0, s9, -857
                  lui          s6, 329810
                  bge          a0, t6, 24f
                  xor          s2, t2, t3
                  andi         s1, s9, -642
                  srl          s10, s10, ra
                  sra          s4, t0, a0
                  xori         s7, a1, -842
                  auipc        s4, 1035925
                  nop
                  slli         s9, s4, 14
                  addi         s0, gp, 1228
                  or           ra, sp, s2
                  addi         a4, t4, 829
                  slti         s9, s7, -1844
                  xori         s1, a7, 1506
                  bge          t1, t4, 34f
                  srl          s7, a2, a1
                  sltu         a0, s10, s3
22:               srl          t6, s3, t1
                  sll          s0, s10, a5
24:               addi         s0, s2, 2033
                  sra          t5, t6, t3
                  ori          s8, s8, -590
                  sltiu        s5, s11, -461
                  nop
                  bgeu         a1, a2, 43f
                  bne          s0, t2, 50f
                  addi         s1, t2, -149
                  blt          s8, a5, 39f
                  slti         s3, tp, -791
34:               bgeu         s8, s0, 43f
                  addi         s10, s9, 590
                  srli         t1, gp, 17
                  sra          ra, a1, a3
                  sltu         s1, gp, s9
39:               sltu         ra, s5, a2
                  sltiu        a0, gp, -1106
                  srli         s3, a4, 7
                  slli         s7, sp, 11
43:               srl          gp, s3, s11
                  and          a7, a4, gp
                  srai         s10, t2, 10
                  beq          a2, t0, 57f
                  beq          s9, s8, 49f
                  xor          s0, s1, t4
49:               nop
50:               bne          t2, gp, 57f
                  srl          sp, s9, s10
                  sltiu        s5, a3, 113
                  or           s7, t0, t1
                  auipc        t0, 717241
                  sltiu        a4, a6, 971
                  srai         t1, s5, 9
57:               bge          zero, t3, 68f
                  sltu         t0, s2, a0
                  slt          s10, t1, gp
                  sub          a6, t2, a3
                  beq          gp, a7, 71f
                  blt          s11, t1, 67f
                  xor          t0, a3, s8
                  add          a7, s8, sp
                  or           sp, s0, ra
                  sll          s9, t1, s7
67:               or           a1, gp, a6
68:               slt          t5, s8, gp
                  bge          t0, t5, 75f
                  sra          a4, tp, s6
71:               beq          gp, t6, 83f
                  lui          t3, 180827
                  sra          s0, t0, s10
                  bltu         s0, s3, 94f
75:               and          t4, t1, ra
                  addi         s2, s11, 1716
                  bgeu         a6, t4, 89f
                  sra          ra, a4, a4
                  srai         s11, s9, 9
                  auipc        t0, 175672
                  sltu         ra, a5, t0
                  srli         a3, t3, 23
83:               xor          s0, a5, t1
                  xori         s10, gp, 1797
                  xori         s9, s4, -1709
                  srli         a0, sp, 20
                  bge          t5, a5, 96f
                  bne          zero, s2, 94f
89:               auipc        a7, 295340
                  slti         s2, s8, -1826
                  lui          s2, 588546
                  or           s7, s7, tp
                  ori          t4, s0, 978
94:               srli         s7, s10, 28
                  xor          a1, s11, t6
96:               bne          s9, a2, 103f
                  slt          a0, a5, tp
                  bne          sp, s7, 116f
                  slti         a3, t6, 1885
                  slti         a6, t4, -388
                  blt          t5, s9, 111f
                  blt          s8, t2, 110f
103:              add          t0, s1, t3
                  blt          t1, s11, 114f
                  sltu         ra, zero, s8
                  sltiu        sp, t4, 1311
                  bltu         t0, s0, 113f
                  blt          a4, sp, 124f
                  andi         t5, s6, 522
110:              sub          t3, t0, gp
111:              sltiu        s5, ra, 499
                  nop
113:              ori          ra, s2, -850
114:              sra          s2, ra, zero
                  bltu         s5, s3, 124f
116:              xori         s1, t2, 1253
                  slli         gp, gp, 13
                  srl          s8, gp, gp
                  ori          s10, a4, -1263
                  lui          t1, 117436
                  slt          s2, t2, zero
                  slti         a4, a2, -332
                  slti         s8, a3, 1765
124:              auipc        s7, 596017
                  bgeu         a0, s1, 144f
                  sub          t5, s4, s4
                  and          t5, ra, s3
                  beq          a5, a0, 135f
                  slt          s9, ra, t2
                  bgeu         s0, a6, 142f
                  nop
                  bltu         a4, a2, 139f
                  slti         t1, a7, -1698
                  sll          s10, a3, s9
135:              nop
                  nop
                  nop
                  auipc        a3, 1046950
139:              slt          ra, a3, s0
                  bge          s4, a7, 149f
                  and          s2, s2, t6
142:              andi         a4, t6, 1427
                  sub          a4, s1, a7
144:              sltu         s5, s11, s7
                  andi         s3, s4, -1441
                  sub          a4, t0, a0
                  add          a1, s10, a5
                  nop
149:              srai         s11, s7, 24
                  bgeu         t1, a5, 158f
                  srl          s6, a3, s6
                  auipc        a6, 69390
                  sra          sp, a4, t2
                  addi         a5, a0, -1360
                  sltu         s2, s11, s6
                  srli         a0, a4, 30
                  xori         t6, s0, -1157
158:              bne          t0, s10, 163f
                  srli         t1, s9, 5
                  lui          s2, 828554
                  auipc        a7, 348094
                  sra          s8, a2, s7
163:              bne          s5, a7, 175f
                  srai         t5, s7, 19
                  beq          s6, s1, 171f
                  and          sp, ra, s0
                  slti         s10, s3, -1670
                  srli         t5, t1, 17
                  add          a3, s7, gp
                  lui          s10, 589311
171:              auipc        a6, 871552
                  bgeu         t0, a1, 191f
                  blt          s5, sp, 185f
                  nop
175:              addi         s2, t3, -1171
                  slti         t3, s3, 808
                  blt          t2, gp, 187f
                  lui          a7, 942794
                  bge          s9, t3, 190f
                  addi         gp, s11, -1849
                  blt          s5, t4, 201f
                  xori         zero, a2, 1036
                  xori         t0, a6, -1722
                  nop
185:              xori         a4, zero, -295
                  sltiu        t5, ra, -1163
187:              srl          t5, a7, s6
                  srli         t6, s9, 29
                  andi         zero, s0, 1695
190:              add          t5, s4, a6
191:              srl          a7, a0, a7
                  xor          a6, gp, t0
                  sltiu        s10, s5, -968
                  bge          a7, s6, 201f
                  ori          s0, s4, -1783
                  nop
                  sll          s7, t6, ra
                  sltu         s6, a7, gp
                  bgeu         s3, s11, 211f
                  beq          s1, a0, 207f
201:              srli         s4, t5, 4
                  slti         a0, s3, -930
                  srai         s4, a3, 5
                  srai         a6, a3, 2
                  bge          a5, s10, 221f
                  slt          a0, a2, a4
207:              xori         s6, a5, 421
sub_5_2:          jal          a3, 5f
0:                jal          ra, 16f
1:                jal          s2, 8f
2:                jal          ra, 10f
3:                jal          a0, 9f
4:                jal          ra, 11f
5:                jal          t1, 15f
6:                jal          ra, 1b
7:                jal          ra, 14f
8:                jal          ra, 13f
9:                jal          t1, 17f
10:               jal          ra, 6b
11:               jal          s11, 7b
12:               jal          ra, 0b
13:               jal          ra, 4b
14:               jal          a6, 3b
15:               jal          ra, 12b
16:               jal          t4, 2b
17:               sll          s0, gp, t6
                  addi         s1, s5, 226
                  bne          s7, s9, 229f
                  lui          t5, 315291
211:              bge          t3, s9, 221f
                  srai         t3, s1, 15
                  lui          s5, 697086
                  beq          s6, t1, 233f
                  slli         t5, s11, 4
                  andi         s6, s9, -488
                  srl          a5, t4, sp
                  sub          a4, s1, s1
                  sra          s0, s2, s7
                  sra          s5, s0, a4
221:              sll          s6, zero, t4
                  slti         s7, sp, 1191
                  auipc        a4, 689608
                  slt          s5, s1, t2
                  sra          s9, a6, s4
                  add          s7, s11, s4
                  slli         s10, ra, 28
                  xori         ra, a7, 27
229:              addi         sp, a6, -949
                  andi         s10, s1, -159
                  beq          s5, a4, 245f
                  auipc        s2, 141236
233:              bltu         a7, t0, 239f
                  xori         s8, s1, -141
                  lui          s6, 351143
                  slti         t0, t2, -1313
                  sll          a0, t5, t4
                  lui          t4, 314031
239:              slt          gp, s0, s8
                  sra          s10, t3, t0
                  srai         sp, s9, 2
                  srl          a0, t3, a1
                  lui          t6, 251234
                  slt          sp, a0, s2
245:              and          s3, tp, a5
                  srli         s7, s7, 27
                  blt          a6, s3, 265f
                  bne          ra, a1, 268f
                  nop
                  sub          s2, gp, t1
                  beq          zero, a3, 258f
                  blt          s11, zero, 263f
                  sltiu        a7, gp, -293
                  sll          sp, s5, t5
                  beq          s5, t6, 265f
                  sltu         gp, s0, t0
                  lui          t0, 810902
258:              bgeu         s10, gp, 267f
                  xor          s11, a1, a0
                  beq          s5, s0, 269f
                  lui          gp, 372362
                  slti         t0, a6, -507
263:              sub          s11, t4, ra
                  slti         t3, s0, -122
265:              auipc        t1, 891371
                  sltiu        a3, s2, 40
267:              xori         s6, ra, -1480
268:              add          s9, a2, s3
269:              slt          a0, t5, s5
                  slli         t4, s5, 23
                  srl          a7, s1, s7
                  sltu         s9, s1, t4
                  nop
                  xor          a5, a3, ra
                  add          gp, sp, t4
                  lui          a0, 787083
                  auipc        t3, 718261
                  add          s4, s5, a7
                  and          t6, t4, s0
                  slli         s9, a5, 28
                  sra          sp, a3, t5
                  or           s8, t0, a7
                  sltu         s8, a5, s8
                  sll          s0, s11, t0
                  sltu         a0, s10, s9
                  add          a1, s6, a1
                  slt          a5, t4, t4
                  or           s1, s7, a5
                  srai         s11, a6, 2
                  add          ra, s11, t3
                  and          t1, a1, s7
                  slli         s2, t6, 8
                  addi         zero, t4, 186
                  xori         a5, a0, -1617
                  beq          s8, t6, 301f
                  bgeu         gp, s9, 311f
                  sra          s6, tp, s8
                  sltiu        s7, a1, 442
                  add          a7, s0, s9
                  slli         s6, a5, 21
301:              blt          t0, zero, 303f
                  auipc        s2, 249323
303:              bge          t4, tp, 323f
                  bne          tp, t4, 322f
                  sra          zero, tp, s11
                  bne          s0, s9, 316f
                  bltu         ra, s2, 316f
                  srli         a7, s8, 5
                  slti         a7, a1, 3
                  bltu         sp, tp, 321f
311:              add          a4, t3, s5
                  and          s1, s7, a5
                  sltu         s11, a1, s9
                  nop
                  slli         zero, tp, 10
316:              bne          a1, a1, 331f
                  slti         a3, t2, 260
                  bge          a7, s0, 324f
                  sltu         s4, gp, a1
                  add          t4, s4, a7
321:              beq          a7, zero, 328f
322:              srl          s7, a1, t6
323:              and          a4, t2, ra
324:              sll          s0, s10, sp
                  sub          a4, a1, s10
                  slt          t3, s11, s11
                  xori         ra, tp, 1622
328:              xori         s10, t4, 333
                  and          t0, zero, s6
                  srli         ra, s3, 3
331:              srl          t1, s9, sp
                  sll          zero, a5, t5
                  ori          a7, s2, 44
                  slt          s4, t3, a0
                  andi         a7, t1, 1420
                  srl          s8, gp, a6
                  srai         a7, a2, 1
                  xori         s0, a0, 389
                  or           t4, s11, s10
                  beq          a4, s11, 351f
                  lui          a4, 226743
                  nop
                  sltu         s6, t3, a4
                  sub          a3, s6, s0
                  lui          gp, 990914
                  bge          s5, s6, 353f
                  slli         s1, s10, 26
                  ori          t5, s9, -2000
                  slt          s0, t1, a0
                  and          s2, ra, a1
351:              slti         s11, t4, -730
                  bltu         t6, s2, 364f
353:              bltu         t1, s0, 365f
                  xori         sp, gp, 1415
                  bne          s0, sp, 365f
                  andi         t0, s11, -1082
                  nop
                  slt          a6, s0, ra
                  auipc        a0, 257440
                  add          a6, s8, s1
                  andi         s10, t5, -1665
                  and          s6, t1, a5
                  slli         a4, a7, 27
364:              nop
365:              sltiu        s5, t3, -1041
                  bltu         s0, a7, 372f
                  andi         a1, s7, 1033
                  bge          t0, t6, 374f
                  addi         s0, t4, -300
                  bgeu         s8, tp, 377f
                  xor          s9, a4, s7
372:              sll          a6, s2, a2
                  srai         s6, tp, 29
374:              xori         s7, t1, 926
                  srli         t4, a3, 24
                  or           s4, t2, s8
377:              srl          t3, s6, a3
                  srli         s8, gp, 30
                  lui          a3, 491194
                  sltu         a4, a0, t4
                  sltiu        s7, a3, -1069
                  xori         a3, s9, 396
                  bltu         a7, t0, 403f
                  bne          a0, t6, 398f
                  nop
                  andi         s7, a2, 1021
                  srai         s4, t5, 16
                  slti         a6, a3, -1805
                  auipc        a5, 561970
                  srli         s8, a5, 12
                  addi         s7, s1, 1770
                  add          s0, s2, s9
                  sub          t5, a3, s5
                  bne          a5, s3, 414f
                  bge          t0, a7, 411f
                  addi         a5, zero, 928
                  ori          gp, a0, 1394
398:              beq          t2, t2, 408f
                  bgeu         s4, a6, 401f
                  bgeu         t3, a3, 407f
401:              xori         s3, t1, 741
                  ori          s6, s8, 1866
403:              bgeu         t5, s0, 422f
                  andi         a3, a1, -218
                  auipc        s3, 60182
                  auipc        s4, 63252
407:              blt          s8, sp, 419f
408:              nop
                  add          t4, zero, s2
                  add          s11, a0, s3
411:              add          a1, a3, a3
                  slti         t1, a3, 941
                  slt          zero, s5, s2
414:              xori         s2, tp, 764
                  srli         a7, s0, 1
                  ori          sp, tp, -2043
                  srli         s10, t3, 26
                  nop
419:              or           s3, tp, a1
                  slli         t0, a5, 16
                  blt          a2, s0, 426f
422:              slt          s2, zero, a2
                  blt          t2, t2, 432f
                  sltu         t3, tp, s2
                  addi         t5, zero, -1790
426:              srai         s7, s9, 0
                  xori         s4, s10, 1289
                  sltiu        s2, t5, -96
                  and          t6, a2, a1
                  nop
                  blt          s8, t6, 439f
432:              sltu         s2, sp, s8
                  slt          s8, t1, t6
                  add          t3, s7, t2
                  blt          s11, a0, 454f
                  srli         sp, t0, 10
                  bge          t0, s4, 446f
                  bne          s7, t3, 453f
439:              bltu         s11, tp, 445f
                  srl          sp, s10, s10
                  slt          t3, s0, t1
                  sll          s9, t2, a5
                  sub          s5, s4, t0
                  and          gp, s10, a7
445:              bgeu         s10, s2, 454f
446:              slt          s11, s5, t5
                  xor          s10, t4, t1
                  blt          a6, s0, 467f
                  andi         s9, sp, -1104
                  ori          s9, t3, 398
                  beq          a6, s4, 459f
                  srli         t0, s3, 28
453:              bgeu         ra, t4, 460f
454:              slt          ra, s1, t5
                  slli         s0, zero, 4
                  bne          a7, s8, 463f
                  slli         a7, s0, 6
                  andi         a4, zero, 1691
459:              add          a7, s9, s2
460:              slti         t1, a6, 1956
                  bne          ra, gp, 467f
                  sltu         t4, tp, s9
463:              slli         s8, s2, 14
                  slli         a4, s1, 30
                  and          t6, t2, a7
                  sra          t6, a0, s1
467:              slli         s9, s7, 28
                  and          t3, a6, gp
                  sra          gp, a1, t0
                  andi         s8, s8, 938
                  andi         a5, s0, 167
                  lw           a3, 4(tp)
                  xor          t0, tp, s5
                  slli         gp, s9, 13
                  addi         tp, tp, 44
                  nop
                  srli         t0, a5, 5
696:              addi x17, x13, 1
696:              jalr x17, x17, 0
sub_4:            nop
                  sra          s4, t3, s0
                  addi         tp, tp, -16
                  xor          ra, t6, s1
                  sra          t1, zero, a7
                  srai         a4, s10, 28
                  sw           a3, 4(tp)
                  sra          sp, sp, s11
sub_4_4:          jal          a3, 7f
0:                jal          ra, 4f
1:                jal          ra, 2f
2:                jal          t1, 12f
3:                jal          s6, 5f
4:                jal          ra, 6f
5:                jal          t1, 8f
6:                jal          t1, 11f
7:                jal          ra, 9f
8:                jal          t0, 10f
9:                jal          ra, 3b
10:               jal          ra, 0b
11:               jal          ra, 1b
12:               sra          t0, t0, t0
sub_4_26:         jal          a3, 8f
0:                jal          s7, 7f
1:                jal          s9, 17f
2:                jal          ra, 15f
3:                jal          s3, 18f
4:                jal          t6, 11f
5:                jal          t0, 2b
6:                jal          t1, 1b
7:                jal          ra, 16f
8:                jal          t6, 0b
9:                jal          ra, 4b
10:               jal          a0, 13f
11:               jal          ra, 3b
12:               jal          t1, 19f
13:               jal          ra, 14f
14:               jal          ra, 9b
15:               jal          t0, 12b
16:               jal          t1, 6b
17:               jal          ra, 10b
18:               jal          t1, 5b
19:               srli         a0, a2, 0
sub_4_10:         jal          a3, 6f
0:                jal          s2, 9f
1:                jal          t1, 11f
2:                jal          t1, 10f
3:                jal          t1, 0b
4:                jal          t1, 1b
5:                jal          t1, 16f
6:                jal          t1, 13f
7:                jal          t5, 15f
8:                jal          a7, 3b
9:                jal          ra, 12f
10:               jal          ra, 5b
11:               jal          ra, 8b
12:               jal          ra, 14f
13:               jal          ra, 7b
14:               jal          sp, 2b
15:               jal          ra, 4b
16:               and          s3, a6, a7
sub_4_38:         jal          a3, 22f
0:                jal          t3, 12f
1:                jal          a0, 30f
2:                jal          ra, 4f
3:                jal          ra, 16f
4:                jal          t1, 28f
5:                jal          ra, 6f
6:                jal          t0, 24f
7:                jal          s2, 25f
8:                jal          ra, 7b
9:                jal          ra, 1b
10:               jal          ra, 20f
11:               jal          sp, 26f
12:               jal          t0, 13f
13:               jal          t0, 5b
14:               jal          ra, 8b
15:               jal          a1, 0b
16:               jal          a4, 27f
17:               jal          t1, 19f
18:               jal          ra, 9b
19:               jal          ra, 3b
20:               jal          ra, 17b
21:               jal          sp, 14b
22:               jal          ra, 11b
23:               jal          a5, 21b
24:               jal          t1, 23b
25:               jal          ra, 29f
26:               jal          gp, 2b
27:               jal          ra, 18b
28:               jal          ra, 15b
29:               jal          ra, 10b
30:               lui          t0, 138946
sub_4_12:         jal          a3, 12f
0:                jal          ra, 1f
1:                jal          ra, 11f
2:                jal          ra, 16f
3:                jal          sp, 14f
4:                jal          ra, 5f
5:                jal          a7, 0b
6:                jal          t0, 17f
7:                jal          ra, 8f
8:                jal          t1, 9f
9:                jal          gp, 4b
10:               jal          ra, 7b
11:               jal          t1, 6b
12:               jal          ra, 13f
13:               jal          ra, 15f
14:               jal          ra, 10b
15:               jal          s11, 2b
16:               jal          s4, 3b
17:               sub          s5, s1, t4
sub_4_36:         jal          a3, 7f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          ra, 1b
3:                jal          ra, 6f
4:                jal          ra, 10f
5:                jal          t1, 0b
6:                jal          ra, 8f
7:                jal          a5, 9f
8:                jal          ra, 5b
9:                jal          sp, 3b
10:               nop
sub_4_35:         jal          a3, 21f
0:                jal          ra, 3f
1:                jal          s0, 10f
2:                jal          t1, 4f
3:                jal          ra, 7f
4:                jal          s1, 14f
5:                jal          t1, 19f
6:                jal          sp, 11f
7:                jal          t6, 26f
8:                jal          gp, 2b
9:                jal          ra, 20f
10:               jal          s4, 9b
11:               jal          ra, 17f
12:               jal          sp, 15f
13:               jal          ra, 18f
14:               jal          ra, 27f
15:               jal          sp, 0b
16:               jal          ra, 5b
17:               jal          t0, 25f
18:               jal          gp, 28f
19:               jal          t1, 30f
20:               jal          ra, 22f
21:               jal          s0, 29f
22:               jal          t1, 8b
23:               jal          ra, 12b
24:               jal          a4, 16b
25:               jal          a6, 1b
26:               jal          ra, 6b
27:               jal          ra, 13b
28:               jal          ra, 24b
29:               jal          t1, 23b
30:               xori         t5, ra, -1138
sub_4_37:         jal          a3, 11f
0:                jal          t1, 12f
1:                jal          sp, 8f
2:                jal          ra, 16f
3:                jal          ra, 2b
4:                jal          t1, 1b
5:                jal          ra, 15f
6:                jal          ra, 25f
7:                jal          t1, 24f
8:                jal          ra, 6b
9:                jal          ra, 23f
10:               jal          t1, 4b
11:               jal          ra, 14f
12:               jal          ra, 26f
13:               jal          t1, 18f
14:               jal          s11, 3b
15:               jal          t3, 9b
16:               jal          gp, 7b
17:               jal          ra, 5b
18:               jal          t1, 0b
19:               jal          ra, 17b
20:               jal          sp, 19b
21:               jal          ra, 13b
22:               jal          ra, 10b
23:               jal          ra, 22b
24:               jal          ra, 20b
25:               jal          ra, 21b
26:               sra          s11, t5, sp
sub_4_8:          jal          a3, 19f
0:                jal          ra, 10f
1:                jal          ra, 13f
2:                jal          a6, 22f
3:                jal          ra, 4f
4:                jal          t0, 25f
5:                jal          ra, 2b
6:                jal          t0, 0b
7:                jal          s3, 8f
8:                jal          ra, 21f
9:                jal          s0, 20f
10:               jal          ra, 1b
11:               jal          t1, 16f
12:               jal          a6, 15f
13:               jal          s0, 24f
14:               jal          ra, 5b
15:               jal          ra, 14b
16:               jal          ra, 7b
17:               jal          ra, 23f
18:               jal          ra, 11b
19:               jal          ra, 6b
20:               jal          t1, 18b
21:               jal          t1, 17b
22:               jal          s7, 9b
23:               jal          sp, 3b
24:               jal          ra, 12b
25:               sll          a1, t3, a1
sub_4_29:         jal          a3, 21f
0:                jal          t1, 2f
1:                jal          t1, 3f
2:                jal          t1, 23f
3:                jal          s10, 6f
4:                jal          gp, 14f
5:                jal          s5, 11f
6:                jal          ra, 8f
7:                jal          ra, 24f
8:                jal          s5, 5b
9:                jal          s1, 7b
10:               jal          ra, 1b
11:               jal          t5, 4b
12:               jal          t1, 17f
13:               jal          gp, 22f
14:               jal          ra, 12b
15:               jal          ra, 16f
16:               jal          ra, 18f
17:               jal          s3, 13b
18:               jal          s4, 20f
19:               jal          ra, 10b
20:               jal          t1, 9b
21:               jal          ra, 0b
22:               jal          ra, 15b
23:               jal          gp, 19b
24:               nop
sub_4_23:         jal          a3, 6f
0:                jal          t3, 7f
1:                jal          ra, 0b
2:                jal          ra, 13f
3:                jal          ra, 5f
4:                jal          t1, 11f
5:                jal          ra, 8f
6:                jal          t1, 4b
7:                jal          s2, 3b
8:                jal          ra, 9f
9:                jal          gp, 10f
10:               jal          ra, 12f
11:               jal          ra, 1b
12:               jal          ra, 2b
13:               slli         a1, s11, 31
sub_4_27:         jal          a3, 19f
0:                jal          a0, 4f
1:                jal          ra, 25f
2:                jal          ra, 13f
3:                jal          ra, 22f
4:                jal          ra, 16f
5:                jal          s0, 3b
6:                jal          ra, 24f
7:                jal          ra, 14f
8:                jal          ra, 5b
9:                jal          ra, 17f
10:               jal          t1, 1b
11:               jal          ra, 18f
12:               jal          ra, 15f
13:               jal          ra, 7b
14:               jal          t0, 12b
15:               jal          ra, 6b
16:               jal          ra, 10b
17:               jal          ra, 0b
18:               jal          ra, 8b
19:               jal          s0, 21f
20:               jal          ra, 9b
21:               jal          ra, 11b
22:               jal          a4, 23f
23:               jal          ra, 2b
24:               jal          ra, 20b
25:               nop
sub_4_25:         jal          a3, 10f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          t1, 9f
6:                jal          t0, 11f
7:                jal          s10, 3b
8:                jal          t1, 2b
9:                jal          a5, 7b
10:               jal          ra, 4b
11:               ori          s4, s0, -1207
sub_4_5:          jal          a3, 1f
0:                jal          gp, 17f
1:                jal          t0, 2f
2:                jal          ra, 5f
3:                jal          s11, 6f
4:                jal          t1, 3b
5:                jal          ra, 13f
6:                jal          ra, 11f
7:                jal          a5, 12f
8:                jal          ra, 7b
9:                jal          ra, 8b
10:               jal          ra, 0b
11:               jal          t1, 10b
12:               jal          ra, 16f
13:               jal          s11, 9b
14:               jal          t0, 4b
15:               jal          ra, 14b
16:               jal          ra, 15b
17:               sltiu        s10, s3, 1494
sub_4_24:         jal          a3, 2f
0:                jal          a7, 10f
1:                jal          ra, 12f
2:                jal          t1, 16f
3:                jal          ra, 6f
4:                jal          ra, 14f
5:                jal          t1, 7f
6:                jal          a1, 9f
7:                jal          t1, 1b
8:                jal          ra, 11f
9:                jal          ra, 17f
10:               jal          ra, 4b
11:               jal          ra, 3b
12:               jal          a4, 0b
13:               jal          a7, 15f
14:               jal          s3, 13b
15:               jal          ra, 8b
16:               jal          a0, 5b
17:               jal          ra, 18f
18:               ori          a0, s6, 1823
sub_4_40:         jal          a3, 23f
0:                jal          t1, 16f
1:                jal          ra, 11f
2:                jal          ra, 26f
3:                jal          ra, 0b
4:                jal          s1, 3b
5:                jal          s0, 6f
6:                jal          ra, 8f
7:                jal          ra, 24f
8:                jal          t1, 13f
9:                jal          ra, 5b
10:               jal          t1, 25f
11:               jal          ra, 17f
12:               jal          s2, 15f
13:               jal          t1, 19f
14:               jal          ra, 20f
15:               jal          s5, 1b
16:               jal          t0, 9b
17:               jal          t1, 2b
18:               jal          t1, 22f
19:               jal          ra, 14b
20:               jal          ra, 10b
21:               jal          ra, 7b
22:               jal          ra, 21b
23:               jal          ra, 18b
24:               jal          t1, 4b
25:               jal          t1, 12b
26:               lui          a3, 776856
sub_4_16:         jal          a3, 16f
0:                jal          t1, 9f
1:                jal          a6, 0b
2:                jal          t1, 22f
3:                jal          t1, 23f
4:                jal          t6, 11f
5:                jal          s7, 13f
6:                jal          ra, 8f
7:                jal          ra, 20f
8:                jal          ra, 7b
9:                jal          ra, 15f
10:               jal          t1, 12f
11:               jal          t1, 26f
12:               jal          ra, 19f
13:               jal          t1, 14f
14:               jal          ra, 6b
15:               jal          ra, 4b
16:               jal          ra, 2b
17:               jal          ra, 28f
18:               jal          ra, 21f
19:               jal          ra, 18b
20:               jal          ra, 25f
21:               jal          ra, 5b
22:               jal          ra, 3b
23:               jal          t6, 17b
24:               jal          t1, 29f
25:               jal          ra, 27f
26:               jal          ra, 24b
27:               jal          t1, 1b
28:               jal          ra, 10b
29:               srl          ra, t2, t6
sub_4_22:         jal          a3, 14f
0:                jal          sp, 8f
1:                jal          t1, 10f
2:                jal          ra, 29f
3:                jal          a5, 27f
4:                jal          t6, 15f
5:                jal          ra, 25f
6:                jal          t6, 17f
7:                jal          ra, 24f
8:                jal          ra, 3b
9:                jal          t3, 11f
10:               jal          s4, 16f
11:               jal          t1, 6b
12:               jal          s9, 13f
13:               jal          ra, 7b
14:               jal          s5, 23f
15:               jal          a5, 9b
16:               jal          t1, 20f
17:               jal          t1, 5b
18:               jal          t5, 21f
19:               jal          ra, 22f
20:               jal          s1, 0b
21:               jal          s2, 26f
22:               jal          a3, 2b
23:               jal          t1, 4b
24:               jal          ra, 1b
25:               jal          ra, 28f
26:               jal          ra, 12b
27:               jal          ra, 19b
28:               jal          ra, 18b
29:               sll          sp, t6, sp
sub_4_30:         jal          a3, 1f
0:                jal          ra, 2f
1:                jal          t0, 12f
2:                jal          ra, 9f
3:                jal          ra, 23f
4:                jal          ra, 15f
5:                jal          s3, 19f
6:                jal          t1, 0b
7:                jal          a6, 22f
8:                jal          s4, 20f
9:                jal          s7, 25f
10:               jal          ra, 17f
11:               jal          t1, 10b
12:               jal          ra, 11b
13:               jal          ra, 16f
14:               jal          t1, 7b
15:               jal          t1, 13b
16:               jal          t1, 14b
17:               jal          s2, 24f
18:               jal          t0, 5b
19:               jal          t1, 26f
20:               jal          ra, 4b
21:               jal          gp, 6b
22:               jal          t1, 21b
23:               jal          sp, 8b
24:               jal          s9, 3b
25:               jal          ra, 18b
26:               sltiu        t6, s10, -444
sub_4_2:          jal          a3, 2f
0:                jal          ra, 10f
1:                jal          sp, 3f
2:                jal          ra, 18f
3:                jal          s1, 17f
4:                jal          ra, 9f
5:                jal          t1, 1b
6:                jal          t1, 25f
7:                jal          s5, 28f
8:                jal          ra, 5b
9:                jal          s3, 30f
10:               jal          t1, 6b
11:               jal          sp, 19f
12:               jal          ra, 24f
13:               jal          a1, 7b
14:               jal          ra, 20f
15:               jal          ra, 26f
16:               jal          ra, 4b
17:               jal          ra, 29f
18:               jal          a6, 0b
19:               jal          t1, 12b
20:               jal          ra, 27f
21:               jal          t1, 23f
22:               jal          ra, 21b
23:               jal          a4, 16b
24:               jal          ra, 15b
25:               jal          gp, 14b
26:               jal          ra, 22b
27:               jal          ra, 13b
28:               jal          ra, 8b
29:               jal          t1, 11b
30:               slti         s7, a4, -716
sub_4_31:         jal          a3, 20f
0:                jal          ra, 1f
1:                jal          a3, 2f
2:                jal          ra, 21f
3:                jal          ra, 17f
4:                jal          ra, 3b
5:                jal          a3, 19f
6:                jal          ra, 12f
7:                jal          ra, 8f
8:                jal          ra, 9f
9:                jal          ra, 6b
10:               jal          ra, 18f
11:               jal          ra, 15f
12:               jal          ra, 14f
13:               jal          s10, 4b
14:               jal          ra, 10b
15:               jal          ra, 7b
16:               jal          ra, 11b
17:               jal          a7, 0b
18:               jal          sp, 5b
19:               jal          t1, 13b
20:               jal          sp, 16b
21:               lui          s7, 234562
sub_4_9:          jal          a3, 26f
0:                jal          ra, 14f
1:                jal          a5, 24f
2:                jal          ra, 17f
3:                jal          ra, 18f
4:                jal          t1, 28f
5:                jal          t1, 19f
6:                jal          ra, 1b
7:                jal          ra, 21f
8:                jal          ra, 20f
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          t0, 9b
12:               jal          t1, 23f
13:               jal          t1, 3b
14:               jal          t1, 12b
15:               jal          t1, 11b
16:               jal          ra, 2b
17:               jal          ra, 10b
18:               jal          ra, 8b
19:               jal          t1, 4b
20:               jal          gp, 22f
21:               jal          ra, 15b
22:               jal          s8, 6b
23:               jal          t1, 25f
24:               jal          gp, 16b
25:               jal          ra, 29f
26:               jal          t1, 27f
27:               jal          ra, 13b
28:               jal          ra, 7b
29:               srai         a4, s7, 5
sub_4_1:          jal          a3, 14f
0:                jal          t0, 10f
1:                jal          s9, 12f
2:                jal          ra, 8f
3:                jal          ra, 9f
4:                jal          t1, 2b
5:                jal          t1, 16f
6:                jal          t1, 18f
7:                jal          ra, 1b
8:                jal          t1, 3b
9:                jal          ra, 17f
10:               jal          s2, 6b
11:               jal          gp, 13f
12:               jal          ra, 15f
13:               jal          a0, 7b
14:               jal          s11, 0b
15:               jal          ra, 19f
16:               jal          ra, 4b
17:               jal          sp, 11b
18:               jal          ra, 5b
19:               nop
sub_4_11:         jal          a3, 5f
0:                jal          ra, 3f
1:                jal          ra, 6f
2:                jal          t1, 0b
3:                jal          t6, 8f
4:                jal          a5, 9f
5:                jal          t0, 2b
6:                jal          ra, 7f
7:                jal          ra, 10f
8:                jal          ra, 4b
9:                jal          s2, 1b
10:               srli         s3, ra, 18
sub_4_20:         jal          a3, 17f
0:                jal          ra, 11f
1:                jal          s1, 13f
2:                jal          ra, 24f
3:                jal          ra, 15f
4:                jal          t1, 18f
5:                jal          t1, 9f
6:                jal          gp, 8f
7:                jal          ra, 20f
8:                jal          ra, 22f
9:                jal          ra, 12f
10:               jal          ra, 2b
11:               jal          ra, 10b
12:               jal          t1, 19f
13:               jal          a4, 26f
14:               jal          t1, 6b
15:               jal          sp, 21f
16:               jal          sp, 25f
17:               jal          t1, 5b
18:               jal          t1, 14b
19:               jal          ra, 3b
20:               jal          a4, 1b
21:               jal          ra, 23f
22:               jal          ra, 7b
23:               jal          a5, 0b
24:               jal          t1, 16b
25:               jal          ra, 4b
26:               xori         zero, s8, -2004
sub_4_32:         jal          a3, 11f
0:                jal          s9, 2f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          ra, 7f
4:                jal          ra, 6f
5:                jal          ra, 1b
6:                jal          gp, 10f
7:                jal          a3, 4b
8:                jal          ra, 12f
9:                jal          ra, 13f
10:               jal          ra, 8b
11:               jal          ra, 0b
12:               jal          ra, 9b
13:               andi         t3, s5, -1364
sub_4_28:         jal          a3, 7f
0:                jal          t1, 25f
1:                jal          ra, 21f
2:                jal          t1, 6f
3:                jal          s4, 20f
4:                jal          t0, 13f
5:                jal          s9, 22f
6:                jal          ra, 9f
7:                jal          ra, 15f
8:                jal          t1, 5b
9:                jal          ra, 23f
10:               jal          ra, 24f
11:               jal          sp, 12f
12:               jal          t1, 0b
13:               jal          ra, 1b
14:               jal          ra, 11b
15:               jal          ra, 10b
16:               jal          ra, 18f
17:               jal          t0, 3b
18:               jal          t1, 8b
19:               jal          ra, 4b
20:               jal          ra, 2b
21:               jal          ra, 16b
22:               jal          ra, 26f
23:               jal          s1, 14b
24:               jal          ra, 19b
25:               jal          ra, 28f
26:               jal          ra, 27f
27:               jal          t1, 17b
28:               sub          s6, s10, s10
sub_4_7:          jal          a3, 7f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          t1, 9f
5:                jal          ra, 6f
6:                jal          t1, 10f
7:                jal          sp, 0b
8:                jal          t1, 11f
9:                jal          s6, 13f
10:               jal          ra, 12f
11:               jal          gp, 1b
12:               jal          ra, 8b
13:               srl          t5, t6, t0
sub_4_13:         jal          a3, 9f
0:                jal          ra, 11f
1:                jal          s8, 19f
2:                jal          t1, 0b
3:                jal          ra, 6f
4:                jal          gp, 18f
5:                jal          t1, 4b
6:                jal          s10, 10f
7:                jal          ra, 1b
8:                jal          ra, 13f
9:                jal          t1, 2b
10:               jal          gp, 15f
11:               jal          ra, 8b
12:               jal          a0, 20f
13:               jal          ra, 17f
14:               jal          ra, 5b
15:               jal          t6, 12b
16:               jal          ra, 7b
17:               jal          t1, 16b
18:               jal          sp, 3b
19:               jal          t6, 14b
20:               sll          t5, a7, ra
sub_4_3:          jal          a3, 9f
0:                jal          t1, 24f
1:                jal          ra, 17f
2:                jal          t1, 3f
3:                jal          ra, 7f
4:                jal          ra, 10f
5:                jal          ra, 18f
6:                jal          ra, 8f
7:                jal          s6, 6b
8:                jal          ra, 22f
9:                jal          t1, 25f
10:               jal          a7, 5b
11:               jal          a0, 13f
12:               jal          ra, 16f
13:               jal          ra, 23f
14:               jal          ra, 26f
15:               jal          t5, 12b
16:               jal          s6, 20f
17:               jal          ra, 11b
18:               jal          ra, 1b
19:               jal          ra, 21f
20:               jal          ra, 19b
21:               jal          ra, 2b
22:               jal          ra, 14b
23:               jal          s3, 0b
24:               jal          t0, 15b
25:               jal          ra, 4b
26:               andi         a1, a0, 1095
                  srl          s2, s3, s11
                  bltu         sp, a4, 11f
                  bne          a0, a6, 9f
                  srai         a3, zero, 29
                  sub          t6, a3, s9
                  auipc        gp, 498507
                  bltu         zero, a0, 17f
                  sltiu        t0, a1, 479
                  sra          s5, s7, s8
9:                blt          s2, t1, 11f
                  and          a5, a1, t4
11:               slti         ra, t6, 809
                  nop
                  sltu         sp, s8, s5
                  srl          s1, zero, t3
                  sltiu        s8, s6, -1367
                  srai         s5, s4, 11
17:               auipc        a0, 1003533
                  srai         s8, t3, 4
                  bge          s3, zero, 39f
                  and          s9, tp, a1
                  bge          s8, s2, 28f
                  add          a3, t3, s2
                  srli         sp, a5, 5
                  bge          a5, a2, 39f
                  srai         s1, gp, 28
                  sltiu        t5, t6, -1174
                  nop
28:               slli         ra, a5, 23
                  bge          s8, s6, 43f
                  sltu         s3, gp, t4
                  nop
                  slli         s9, ra, 6
                  sltu         t5, tp, s4
                  bne          s7, a1, 47f
                  sra          s3, ra, t5
sub_4_15:         jal          a3, 9f
0:                jal          t1, 4f
1:                jal          ra, 5f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          t1, 16f
5:                jal          ra, 8f
6:                jal          t1, 22f
7:                jal          ra, 13f
8:                jal          ra, 10f
9:                jal          s7, 14f
10:               jal          t1, 2b
11:               jal          t1, 15f
12:               jal          ra, 21f
13:               jal          ra, 18f
14:               jal          ra, 3b
15:               jal          t1, 6b
16:               jal          t0, 20f
17:               jal          sp, 23f
18:               jal          t1, 17b
19:               jal          s0, 11b
20:               jal          ra, 19b
21:               jal          t1, 0b
22:               jal          t1, 1b
23:               sltiu        s10, s0, -978
                  add          s2, s8, a0
                  and          a7, a2, a6
                  nop
39:               slli         s10, s7, 31
                  srl          ra, a6, s9
                  sub          s9, s8, tp
                  bltu         s2, s6, 53f
43:               blt          t2, s6, 51f
                  slli         s7, t3, 10
                  auipc        s7, 574754
                  andi         gp, a6, 1023
47:               srli         t5, s9, 23
                  add          t5, t3, gp
                  sltu         s3, s5, s7
                  slti         s9, s8, 47
51:               sll          a3, t1, s1
                  bge          a5, s7, 55f
53:               bgeu         s2, t0, 73f
                  sra          t0, s8, t1
55:               auipc        s8, 446780
                  srai         s4, t2, 31
                  addi         gp, ra, 11
                  lui          t0, 555030
                  xor          a3, a6, zero
                  sltu         s10, s4, a3
                  slti         s10, s1, -433
                  and          a3, sp, s2
                  srai         s3, t2, 11
                  sll          s4, a2, tp
                  bne          a4, t5, 67f
                  sltiu        a4, s7, -1015
67:               slli         t0, s11, 14
                  srai         t5, s4, 1
                  add          s7, s0, t5
                  beq          a5, a6, 79f
                  bne          a7, sp, 78f
                  bgeu         s2, a4, 76f
73:               and          zero, s3, s11
                  add          s2, t3, a6
                  blt          s0, s4, 88f
76:               and          gp, s7, s11
                  lui          zero, 686578
78:               sra          s1, a1, zero
79:               srli         s2, a2, 28
                  sra          a6, ra, a1
                  ori          s6, s4, 1322
                  blt          t6, zero, 99f
                  srai         a6, t4, 13
                  nop
                  add          s9, gp, a6
                  xor          gp, a3, a2
                  nop
88:               and          a1, t5, s8
                  slli         t4, t3, 11
                  nop
                  beq          s10, s2, 92f
92:               srli         t0, s8, 11
                  bge          a5, t6, 98f
                  srli         gp, s6, 31
                  ori          t4, a3, -332
                  add          gp, gp, a7
                  slli         gp, t0, 21
98:               slti         gp, ra, 1913
99:               srl          gp, a4, s5
                  slt          a6, a5, t2
                  sltiu        s11, gp, 1563
                  sltiu        a7, s2, -1427
                  sltu         s1, a0, t6
                  sltiu        a0, t6, 892
                  sub          ra, s8, t5
                  and          gp, s5, s6
                  slti         s9, a4, 1838
                  srai         s11, s4, 5
                  slt          a3, t2, t4
                  sra          a7, s11, t0
                  sra          a7, s8, t1
                  sll          a1, tp, s0
                  addi         t4, s9, 2028
                  auipc        s9, 998730
                  srl          s4, a7, a2
                  sub          ra, t5, a3
                  sra          a3, a7, s6
                  xor          t1, s1, t1
                  or           a1, s5, t6
                  xor          s5, t5, t0
                  xori         s2, a1, 601
                  sltu         a0, t3, s2
                  slli         a5, t2, 27
                  or           s9, t3, a4
                  srl          s7, a0, t3
                  srli         sp, s0, 29
                  slli         s6, a1, 26
                  bgeu         a0, s3, 146f
                  slt          s7, s0, s0
                  bne          t3, s6, 141f
                  addi         t5, zero, 1386
                  add          s0, t4, a1
                  bne          a1, tp, 145f
                  slti         a4, a2, -1879
                  ori          a1, a0, 22
                  bge          s3, s6, 150f
                  and          s0, t0, gp
                  add          t1, t5, t1
                  srai         t3, s5, 6
                  xori         a0, s7, 1484
141:              srai         s5, s2, 7
                  slt          s7, a6, a7
                  add          s2, s5, tp
                  xor          s1, t0, a0
145:              nop
146:              ori          s1, s1, 576
                  blt          s0, s0, 162f
                  srli         t5, s8, 25
                  xori         s10, s8, 85
150:              xor          a4, s1, s11
                  addi         s8, a0, -901
                  add          s4, s6, a4
                  ori          s1, a1, 1631
                  bgeu         gp, ra, 162f
                  bgeu         t0, ra, 175f
                  lui          s1, 815012
                  bltu         s6, sp, 168f
                  beq          a3, s9, 166f
                  bne          a5, a7, 170f
                  or           a0, sp, tp
                  beq          gp, a5, 179f
162:              bne          a2, a2, 169f
                  slli         t6, t2, 11
                  sra          s2, t5, a1
                  or           t3, ra, t1
166:              sll          s0, a6, t4
                  sltu         a3, s3, a6
168:              bltu         s11, ra, 188f
169:              sll          a0, a0, s6
170:              bgeu         a3, t4, 175f
                  bgeu         s11, s0, 178f
                  sub          a5, s3, s4
                  sra          s6, a4, s3
                  or           a7, s8, gp
175:              ori          t4, s3, 1712
                  and          s0, t5, a4
                  ori          ra, t1, -1575
178:              bltu         a4, t1, 198f
179:              bge          s0, tp, 182f
                  addi         s2, a7, -565
                  beq          s0, ra, 194f
182:              bgeu         a4, a5, 193f
                  sra          s5, a3, s0
                  sltiu        s8, s3, -818
                  bgeu         t3, t3, 193f
                  lui          ra, 51840
                  auipc        s4, 190341
188:              sra          t6, a0, a7
                  sltu         a0, gp, a3
                  bgeu         s6, a1, 198f
                  slli         t4, a1, 17
                  srli         zero, a0, 23
193:              bne          s5, a1, 201f
194:              slli         ra, s3, 9
                  bltu         a4, s5, 208f
                  sra          a7, a7, s1
                  sll          s9, a3, s2
198:              and          t6, a3, s5
                  beq          s0, a1, 201f
                  sltu         a6, s5, s10
201:              slt          ra, t4, a7
                  sub          zero, s8, s6
                  sra          a4, a6, t3
                  bltu         a7, s1, 219f
                  xori         s8, s7, 1335
                  srai         s6, s11, 16
                  auipc        t3, 198571
208:              ori          a7, s7, -1494
                  bltu         t0, s2, 229f
                  auipc        s2, 1016041
                  auipc        a6, 285938
                  andi         a7, t0, -1716
                  sub          s7, s0, a6
                  srl          a0, s4, s10
                  srli         s11, a7, 5
                  add          a1, s3, t3
                  srai         s10, s5, 11
                  sra          a0, a0, s7
219:              slli         s11, t6, 0
                  bltu         s4, s1, 231f
                  blt          s0, t3, 235f
                  srai         t4, s3, 2
                  bne          s2, t6, 227f
                  bltu         t6, s6, 234f
                  xori         a3, t4, -936
                  andi         t6, t1, -1449
227:              sltu         a4, t6, ra
                  slt          s4, a1, s4
229:              ori          a5, s7, -511
                  sub          s4, s1, a7
231:              add          gp, s9, sp
                  add          ra, s4, a4
                  andi         a0, s10, -754
234:              slt          t1, a4, s1
235:              sra          a7, a7, a3
                  xori         s2, t2, 2044
                  sltu         t1, s11, s6
                  bltu         s0, s3, 247f
                  addi         s4, tp, -813
                  auipc        s11, 931942
                  slt          t1, gp, a7
                  sltu         sp, zero, a6
                  srl          s9, s0, a2
                  nop
                  bgeu         s3, s6, 252f
                  sll          t0, ra, tp
247:              auipc        t0, 1027399
                  sll          s11, s10, s2
                  sll          a1, a5, s8
                  addi         sp, t5, -696
                  srli         s9, t3, 7
252:              and          s7, s6, s5
                  xor          a5, ra, gp
                  srai         t1, s6, 7
                  srai         s6, sp, 0
                  sub          s6, gp, s8
                  bltu         s5, ra, 274f
                  lui          a5, 275213
                  sltiu        s3, t6, 1473
                  sltiu        zero, a0, -141
                  addi         s1, a3, 2041
                  srl          s0, a0, a5
                  sra          a5, t6, s4
                  lui          a1, 383994
                  srai         ra, s5, 29
                  or           t4, s3, s10
                  sll          s11, a4, t2
                  slli         a1, t6, 21
                  srl          s7, s0, tp
                  slti         s10, a3, -1714
                  addi         a4, t4, 1893
                  sub          ra, s3, a0
                  beq          t5, s1, 284f
274:              and          a5, t4, s4
                  sltu         s10, a0, s9
                  srli         a3, s2, 16
                  ori          t3, tp, 300
                  add          s0, t6, zero
                  ori          s1, s4, -1086
                  and          s4, s9, s2
                  sll          s6, t5, s9
                  beq          s2, s5, 296f
                  auipc        s5, 300554
sub_4_33:         jal          a3, 7f
0:                jal          ra, 6f
1:                jal          t1, 8f
2:                jal          ra, 1b
3:                jal          a3, 15f
4:                jal          ra, 10f
5:                jal          t1, 0b
6:                jal          ra, 12f
7:                jal          ra, 5b
8:                jal          ra, 16f
9:                jal          t3, 13f
10:               jal          a0, 3b
11:               jal          t1, 2b
12:               jal          a5, 4b
13:               jal          ra, 14f
14:               jal          ra, 11b
15:               jal          ra, 9b
16:               slti         s2, s8, -576
284:              srli         zero, t0, 25
                  sub          s8, t1, ra
                  and          sp, t2, gp
                  sll          t5, s0, s1
                  addi         s4, t6, 1278
sub_4_39:         jal          a3, 2f
0:                jal          ra, 5f
1:                jal          t1, 4f
2:                jal          a5, 3f
3:                jal          ra, 7f
4:                jal          t1, 9f
5:                jal          t6, 8f
6:                jal          gp, 11f
7:                jal          t4, 10f
8:                jal          t1, 1b
9:                jal          gp, 6b
10:               jal          ra, 0b
11:               or           a0, t0, s11
                  xor          t4, a3, s6
                  bltu         s3, s0, 305f
                  beq          s5, t5, 303f
                  sltu         a0, t1, a2
                  xor          s7, t4, a5
                  lui          s2, 407514
                  xori         t6, t5, 194
296:              blt          s0, t3, 298f
                  lui          s0, 1001694
298:              sra          t4, s4, s0
                  xor          s6, ra, a2
                  bgeu         s11, t2, 301f
301:              slti         s4, t5, 1603
                  xor          s1, s4, t3
303:              srli         s5, t2, 3
                  sltiu        a0, s8, 1046
305:              sub          s10, s0, a4
                  sltiu        t5, s11, 345
                  nop
                  slti         s3, a4, -1861
                  sll          sp, t0, tp
                  beq          a1, sp, 318f
                  bgeu         s10, t0, 319f
                  srli         s6, s1, 18
                  srai         t6, s5, 14
                  nop
                  bgeu         t3, a4, 320f
                  lui          s5, 663255
                  sll          a1, s6, s2
318:              add          s10, s9, t3
319:              beq          a7, t3, 322f
320:              srli         s2, s2, 19
                  srl          s11, t1, t5
322:              beq          sp, sp, 333f
                  nop
                  beq          a7, s4, 332f
                  bgeu         t5, s9, 336f
                  or           t4, s0, s8
                  slli         a4, a6, 9
                  or           a5, s1, s5
                  auipc        s8, 317965
                  srl          a4, a5, a2
                  auipc        t3, 314133
332:              bltu         a1, s4, 350f
333:              srai         a0, t5, 14
                  srai         s4, t1, 9
                  beq          s7, s5, 350f
336:              bge          t0, s10, 349f
                  sub          zero, t6, s1
                  andi         s7, a0, 822
                  srai         gp, a5, 25
                  slt          a3, s11, a5
                  ori          s9, sp, 452
                  ori          a6, s1, -279
                  and          t0, s11, s2
                  bltu         s6, t0, 357f
                  nop
                  slli         s5, s11, 20
                  slt          s6, s0, s3
                  lui          s7, 928890
349:              bgeu         t0, s1, 360f
350:              beq          a0, s4, 364f
                  bgeu         gp, s0, 352f
352:              blt          s8, s6, 354f
                  srl          sp, sp, t0
354:              sra          a1, t6, s11
                  srl          a7, s5, t6
                  sll          t5, a1, ra
357:              sltu         s4, s10, s4
                  ori          s1, a3, 1592
                  auipc        t5, 113015
360:              sltiu        s9, t1, -1886
                  bltu         a6, a1, 372f
                  nop
                  bgeu         a7, t5, 375f
364:              bltu         s7, zero, 381f
                  add          sp, s5, t4
                  lui          a3, 836082
                  add          s1, a1, t3
                  xori         gp, zero, 1823
                  beq          a1, a5, 389f
                  srl          a0, ra, t1
                  slti         s6, sp, 1015
372:              srl          s11, t6, ra
                  addi         gp, s7, 1125
                  sub          s5, t4, a6
375:              or           t4, s1, t1
                  andi         s5, gp, 179
                  xor          s9, s10, t4
                  bge          sp, zero, 387f
                  sll          a7, t5, t6
                  slli         s2, s11, 3
381:              sll          s4, t2, t0
                  and          t1, s0, s9
                  slti         a5, a5, 739
                  sra          s0, s11, s2
                  bne          a7, t4, 395f
                  blt          zero, a2, 388f
387:              sltiu        s8, s2, -1429
388:              addi         a1, s1, 1874
389:              sltiu        s9, a0, -1109
                  srai         a0, s11, 27
                  add          s7, t4, a1
                  bltu         s10, zero, 396f
                  addi         ra, t5, -1118
                  slli         ra, s2, 7
395:              bgeu         sp, a5, 410f
396:              or           s0, a1, a4
                  xor          s1, a2, t5
                  and          t0, sp, sp
                  bne          tp, a4, 419f
                  ori          s6, t4, -1448
                  beq          s11, zero, 408f
                  ori          s4, s10, 1608
                  sub          a4, gp, zero
                  beq          a0, zero, 424f
                  srai         a4, t3, 26
                  slli         a3, s10, 11
                  add          t0, s9, s0
408:              srai         a6, a0, 14
                  andi         zero, t6, -1016
410:              bgeu         tp, s3, 424f
                  addi         a5, tp, -976
                  sra          s8, s2, a3
                  bne          t3, t1, 420f
                  blt          s3, t1, 421f
                  srai         t4, a5, 4
                  bgeu         s6, s7, 425f
                  slli         ra, s7, 4
                  slt          a5, t2, zero
419:              or           a0, t0, t5
420:              sltiu        a4, zero, -515
421:              xor          t3, s1, s10
                  srl          t6, ra, s10
                  slli         s1, s8, 20
424:              sub          s6, t2, t3
425:              srli         a4, a4, 4
                  slli         s4, sp, 0
                  xor          a3, sp, t4
                  slli         s4, s7, 16
                  bne          s10, t6, 433f
                  addi         a4, s0, 1909
                  beq          a2, s5, 432f
432:              nop
433:              sub          t0, s6, gp
                  lui          s10, 302890
                  sltiu        t4, s5, 1560
                  and          t5, a4, s5
                  sra          zero, s4, t0
                  xor          t1, s4, a1
                  srl          a1, s0, a2
                  ori          s7, gp, 701
                  ori          sp, t3, -1490
                  xori         a5, a6, -618
                  bgeu         ra, gp, 445f
                  sltiu        a6, gp, 2037
445:              srai         t0, s9, 12
                  srai         s10, s4, 13
                  slt          a0, s7, s6
                  xori         s4, a1, 345
                  sltiu        a4, t0, 1215
                  auipc        s7, 136671
                  bge          a7, s0, 459f
                  sub          t5, t2, t6
                  sub          s11, t2, s6
                  addi         a1, t2, -1551
                  xor          t1, s8, s3
                  sub          s5, ra, t4
                  bgeu         s1, t1, 464f
                  bltu         s3, tp, 475f
459:              or           s4, s6, t3
                  sltiu        ra, ra, -1793
                  or           s9, a4, zero
                  xori         s0, a1, -1449
                  bgeu         s1, tp, 477f
464:              addi         zero, s0, -440
                  beq          a6, t4, 483f
                  blt          s7, t6, 478f
                  srli         t3, s5, 29
                  slti         t1, s5, -1234
                  sra          s4, a4, a3
                  xor          s7, s7, s1
                  bne          s11, a0, 481f
                  blt          a6, t0, 487f
                  sra          s3, s8, a0
                  ori          t0, a4, 327
475:              sra          s11, t5, s10
                  slli         t6, a2, 18
477:              lui          a1, 77326
478:              slti         s8, a5, 1125
                  bgeu         s9, s11, 490f
                  sltu         s3, s8, s1
481:              slli         t3, a2, 14
                  and          s9, a2, sp
sub_4_14:         jal          a3, 8f
0:                jal          ra, 1f
1:                jal          ra, 12f
2:                jal          ra, 13f
3:                jal          ra, 4f
4:                jal          t4, 9f
5:                jal          ra, 11f
6:                jal          t1, 7f
7:                jal          ra, 16f
8:                jal          a7, 5b
9:                jal          ra, 6b
10:               jal          ra, 2b
11:               jal          t0, 14f
12:               jal          ra, 3b
13:               jal          ra, 17f
14:               jal          ra, 0b
15:               jal          ra, 10b
16:               jal          ra, 15b
17:               srai         zero, t2, 21
483:              add          sp, a2, zero
                  ori          s9, s1, 548
                  blt          s1, a2, 499f
                  andi         s7, s9, 535
487:              sll          a7, a5, t2
                  sltu         s10, s10, a5
                  sra          a0, sp, sp
490:              ori          a3, tp, 672
                  add          a5, tp, s11
                  srl          t1, t6, a6
                  add          zero, s9, s8
                  beq          s0, t0, 496f
                  srli         t1, a6, 23
496:              sltiu        s5, s3, 1632
                  sra          zero, s3, a0
                  bne          s10, a0, 505f
499:              nop
                  slt          s4, s9, a0
                  beq          t3, s8, 521f
                  auipc        s5, 697543
                  xori         sp, s6, -837
                  beq          gp, t1, 524f
505:              sra          a1, t4, s10
                  bne          a0, a2, 517f
                  slli         s6, a7, 11
                  srli         gp, t6, 20
                  bltu         s9, t0, 520f
                  bne          sp, s9, 518f
                  xor          a6, s8, s5
                  sltiu        a0, tp, 1695
                  lui          a6, 1026832
                  sll          s1, a7, t3
                  nop
                  bltu         a0, a0, 536f
517:              nop
518:              bgeu         s5, s11, 521f
                  srl          ra, s6, t1
520:              ori          gp, a6, 1851
521:              nop
                  srai         a6, ra, 3
                  sub          s6, s8, a4
524:              nop
                  sra          sp, s7, s8
                  nop
                  sltiu        s4, ra, -1560
                  beq          s4, s7, 536f
                  andi         s9, s9, -507
                  xor          a0, s2, a0
                  beq          t4, s11, 544f
                  bne          s3, s4, 537f
                  sra          t0, s2, a0
                  or           s10, s10, t3
                  xor          a0, t5, s7
536:              nop
537:              bne          s10, t1, 550f
                  bltu         tp, s4, 545f
                  xori         s11, t3, -252
                  sltu         zero, t5, s8
                  bltu         a4, sp, 552f
                  andi         s7, s5, -163
                  sltiu        a4, t6, 348
544:              sltiu        a1, a0, -20
545:              bltu         s11, s11, 560f
                  ori          zero, t1, -1839
                  bge          a1, a7, 560f
                  or           gp, s11, a4
                  bgeu         a0, s1, 563f
550:              sub          a3, s11, t3
                  lui          a6, 722433
552:              blt          s4, zero, 566f
                  xori         t3, a1, 914
                  or           sp, s7, t6
                  andi         s7, ra, 1831
                  srli         s3, ra, 14
                  and          t0, zero, a4
                  srli         sp, a6, 24
                  srli         a0, t3, 29
560:              xor          s0, a0, s0
                  srli         s10, gp, 23
                  nop
563:              bgeu         t0, a5, 564f
564:              srli         zero, t0, 22
                  lui          t4, 238275
566:              srli         zero, a0, 15
                  sub          s1, s10, t1
                  bltu         t0, t4, 575f
                  blt          s3, s4, 574f
                  sub          a3, s10, a3
                  sltiu        t5, a6, -1233
                  bgeu         s1, tp, 587f
                  andi         a5, s9, 1851
574:              sltiu        s1, sp, -1173
575:              and          zero, s4, s1
                  bne          s2, s0, 587f
                  nop
                  beq          s9, s3, 586f
                  xor          s5, a7, gp
                  and          zero, t3, t1
                  sra          t0, s4, s2
                  bne          gp, a2, 585f
                  sltu         s0, s1, a1
                  andi         a3, sp, 129
585:              andi         zero, s7, -1163
586:              auipc        gp, 86691
587:              lui          s8, 46994
                  srl          s7, zero, s7
                  srli         a6, a6, 30
                  xori         zero, t1, -1069
                  bltu         t1, s9, 593f
                  bge          s11, sp, 605f
593:              bgeu         a1, ra, 595f
                  sltu         s3, a7, s4
595:              srl          ra, sp, t3
                  or           zero, tp, s6
                  bge          s7, s10, 617f
                  bne          s7, a5, 609f
                  andi         a7, t0, 1860
                  andi         t0, tp, -230
                  xor          s5, a0, a0
                  lui          s8, 381765
                  xor          a3, t1, a6
                  sra          zero, t5, s3
605:              sub          a7, s4, a7
                  add          zero, s5, s3
                  blt          t4, t4, 614f
                  srli         s7, ra, 18
609:              sub          zero, a1, t6
                  bne          a3, zero, 619f
                  lui          t3, 60705
                  srli         t5, a2, 21
                  add          a3, a0, s2
614:              bne          a3, s9, 625f
                  srl          s9, s8, a3
                  blt          s5, s7, 620f
617:              bge          t6, a0, 624f
                  and          a4, zero, a5
619:              nop
620:              srai         a1, s1, 20
                  auipc        ra, 846104
                  blt          s10, a7, 633f
                  slli         t4, s11, 28
624:              srai         sp, a5, 14
625:              bge          t6, t3, 643f
                  blt          s6, a0, 641f
                  or           s9, a2, t2
                  bltu         zero, t3, 636f
                  nop
                  blt          a0, s2, 638f
                  blt          a7, s3, 641f
                  blt          t0, s11, 644f
633:              andi         gp, s7, 907
                  sra          t5, t4, t2
                  andi         zero, t2, -1248
636:              ori          t5, t3, -227
                  nop
638:              andi         a7, t4, -418
                  srli         t0, s7, 21
                  slti         s4, s0, 447
641:              slt          t6, s9, a4
                  sltu         a4, s10, t3
643:              sltiu        s7, t0, -1932
644:              auipc        a4, 736932
                  sub          t3, s9, t2
                  sll          s5, a3, s8
                  slli         s9, s1, 14
                  xor          s10, a1, s2
                  sub          a5, a5, a4
                  srli         s8, t6, 7
                  and          a7, s8, a4
                  xori         zero, sp, 1789
                  nop
                  add          s6, t4, s6
                  slt          s10, s2, s11
                  blt          t0, sp, 673f
                  bge          t2, t5, 677f
                  slli         a0, t1, 18
                  xor          s7, a6, ra
                  blt          s5, t3, 680f
                  sltu         t1, a3, t4
                  andi         a1, gp, 1007
                  sll          t3, a0, s6
                  bltu         a3, a4, 676f
                  srai         s8, zero, 26
                  auipc        s4, 283742
                  andi         gp, t1, 1347
                  ori          s2, s11, 876
                  slt          a6, sp, a2
                  sra          s5, s3, t1
                  nop
                  srli         s1, t0, 6
673:              sub          t3, a6, a0
                  auipc        t3, 287133
                  sltiu        s1, a2, -707
676:              slti         zero, s0, 160
677:              ori          t5, gp, -757
                  srli         t4, ra, 29
                  bge          a5, a2, 682f
680:              srai         a0, sp, 0
                  slt          s8, s11, a6
682:              sll          ra, gp, t2
                  auipc        s7, 332595
                  xori         t1, s8, 245
                  auipc        s8, 716009
                  sll          t6, a7, s5
                  slli         s6, s3, 17
                  slt          gp, s11, a2
                  srl          t1, a4, a2
                  slt          a3, s3, t2
                  blt          sp, t2, 702f
                  and          s11, s7, s8
                  xori         a4, a6, -1830
                  slt          a7, s9, ra
                  sltiu        s1, a6, -1015
                  or           t1, s6, a7
                  bge          s3, a1, 710f
                  bge          a3, a6, 715f
                  bgeu         a7, t1, 704f
                  sll          s11, a0, s1
                  andi         t1, a1, -1523
702:              bltu         s5, s0, 711f
                  lui          s10, 65763
                  xor          s2, a2, zero
                  la           a5, sub_5
                  lui          s11, 959948
                  and          t0, a3, t2
                  xor          s8, s11, a3
                  addi         a5, a5, -1004
                  andi         a4, a2, -686
                  auipc        s5, 231576
sub_4_j8:         jalr         a3, a5, 1004 #jump sub_4 -> sub_5
704:              slli         a0, s3, 17
                  slt          s5, sp, s8
                  ori          sp, t0, 320
                  srli         s2, s1, 21
                  sra          s7, a6, t2
                  auipc        s7, 998888
710:              sltu         gp, s2, ra
711:              bltu         t5, t6, 719f
                  nop
                  bne          a3, s3, 728f
                  xori         s10, a4, 727
715:              sltiu        s11, sp, 552
                  nop
                  srli         s6, s9, 2
                  sra          s0, a5, a2
719:              lui          a5, 260001
                  sll          t6, a3, s6
                  srli         a1, t1, 7
                  sra          a7, sp, s6
                  or           t6, a5, t0
                  sltiu        s6, s3, -668
                  xori         s5, gp, -928
                  lui          ra, 940691
                  xori         s11, ra, 1437
728:              bge          s7, a4, 748f
                  add          s4, s1, tp
                  addi         a4, t0, 1564
                  sra          t6, s10, a2
                  nop
                  nop
                  srl          gp, t6, s9
                  auipc        a7, 786485
                  bne          a3, a0, 750f
                  sltu         a0, s8, s2
                  srai         t1, s3, 7
                  blt          s11, a3, 749f
                  sll          t3, s2, s10
                  sra          t4, s9, ra
                  andi         t1, t4, 464
                  nop
                  or           s5, a6, a5
                  srli         t5, t1, 28
                  slli         s4, s1, 7
                  and          t1, a7, zero
748:              addi         t0, zero, -1636
749:              sltu         a4, s4, t2
750:              sltiu        a7, tp, 1092
                  lui          s9, 281886
                  bltu         s6, t2, 770f
                  andi         s5, a3, -1535
                  auipc        t1, 1025927
                  and          t3, a0, t4
                  bge          a4, s0, 776f
                  sll          t6, sp, gp
                  bge          t2, a6, 772f
                  addi         t0, a3, -529
                  sltiu        s4, s2, -1328
                  sltiu        gp, s0, -909
                  sltiu        a6, a4, -1754
                  slli         s7, a3, 24
                  srai         t0, a0, 29
                  bge          ra, t5, 772f
                  xori         s8, s4, 1962
                  addi         a3, a4, -259
                  bne          s0, t2, 770f
                  blt          a2, ra, 777f
770:              bltu         tp, s0, 772f
                  andi         s9, t2, 1107
772:              bgeu         s1, t0, 780f
                  bne          t0, a3, 784f
                  slli         a4, t2, 7
                  xor          a6, a6, a3
776:              srli         s2, t3, 2
777:              sub          a5, t0, t5
                  slt          sp, s6, a2
                  srai         a7, zero, 26
780:              beq          s1, a7, 793f
                  nop
                  bltu         a5, a6, 789f
                  addi         s2, a4, 478
784:              auipc        s6, 112778
                  bgeu         s5, s1, 789f
                  add          a0, gp, s6
                  srl          s6, t3, a5
                  srli         s4, s5, 3
789:              sltiu        t3, a6, -419
                  nop
                  bge          t6, t2, 798f
                  nop
793:              add          s3, a4, t0
                  or           gp, gp, t4
                  beq          sp, s9, 810f
                  sltu         s8, t5, s3
                  sll          s2, a6, a6
798:              sltiu        s11, a1, 818
                  bge          s0, s2, 800f
800:              bltu         t4, a2, 811f
                  sub          t6, t5, a7
                  beq          s7, s9, 822f
                  sub          t0, a2, a6
                  sltiu        s6, a7, 1178
                  and          s2, a2, s3
                  bne          s8, sp, 817f
                  sub          a4, a5, a0
                  srli         t4, gp, 31
                  lui          s0, 719972
810:              slt          t5, a3, s9
811:              lui          a7, 651896
                  blt          s6, s4, 819f
                  ori          s4, ra, -2047
                  ori          s8, s5, -392
                  sltiu        t6, s3, -1578
                  blt          t5, s1, 826f
817:              blt          s4, tp, 819f
                  lui          s1, 714802
819:              srl          t0, s9, s4
                  slt          a1, t0, t4
                  sltu         s7, s11, a6
822:              ori          s9, s4, -393
                  slli         s1, t3, 2
                  sra          zero, s2, t2
                  xori         s5, a0, -601
826:              srl          a1, s0, gp
                  srai         sp, s6, 31
                  bge          s11, s6, 842f
                  bge          a4, gp, 849f
                  and          t1, ra, zero
                  srli         s4, gp, 24
                  blt          t6, t4, 835f
                  bltu         sp, s4, 851f
                  xor          s4, a0, t0
835:              srai         s9, s4, 9
                  sra          gp, a7, s5
                  bne          zero, a3, 848f
                  xori         t1, a3, 1472
                  sub          t4, a1, s4
                  sra          a7, t0, s3
                  bge          a7, s0, 861f
842:              add          s10, s11, a4
                  sltu         t1, ra, t3
                  bge          s4, t6, 852f
                  sub          s3, s8, a4
                  sltu         t5, s5, s10
                  add          s3, a7, s11
848:              xori         s1, t5, -1119
849:              addi         t3, t0, 2007
                  andi         s7, gp, -1991
851:              addi         s1, s7, -1488
852:              srli         gp, t2, 18
                  ori          s4, a7, 1952
                  slt          sp, s1, s4
                  bltu         s0, s1, 868f
                  xori         a0, a3, -204
                  sltiu        a1, s10, -514
                  slt          t5, s6, ra
                  xori         t5, s3, 654
                  auipc        s4, 636030
861:              bltu         t2, s1, 876f
                  xor          a5, a0, s0
                  xori         a0, a4, 680
                  blt          s10, tp, 865f
865:              auipc        a4, 1033369
                  lui          s7, 632865
                  sub          a0, ra, a6
868:              lui          s10, 969482
                  xori         s5, s4, 797
                  andi         s2, s0, 725
                  srai         a7, ra, 26
                  xor          a7, s3, a1
                  bge          gp, s6, 886f
                  auipc        zero, 1026288
                  slti         a3, s10, -169
876:              slti         t1, s5, 372
                  srai         s11, s0, 16
                  srai         s3, a0, 21
                  sra          s3, gp, t0
                  add          s7, tp, a7
                  sltu         s6, s0, s2
                  sll          ra, zero, s2
                  sltu         sp, t0, a0
                  slt          s6, s3, s3
                  sltiu        t5, t2, -42
886:              nop
                  bltu         t0, t6, 902f
                  slti         sp, gp, 498
                  sll          s5, sp, sp
                  sltu         ra, a7, s9
                  srai         t1, s5, 30
                  nop
                  bltu         s11, s7, 901f
                  nop
                  beq          a2, ra, 907f
                  addi         a5, a7, -1911
                  srl          s5, sp, t5
                  srl          a0, sp, s6
                  sll          zero, a2, t4
sub_4_17:         jal          a3, 9f
0:                jal          t1, 15f
1:                jal          t1, 3f
2:                jal          ra, 14f
3:                jal          t1, 12f
4:                jal          t5, 10f
5:                jal          t1, 16f
6:                jal          s4, 13f
7:                jal          ra, 8f
8:                jal          sp, 5b
9:                jal          ra, 0b
10:               jal          s7, 1b
11:               jal          ra, 4b
12:               jal          ra, 2b
13:               jal          t1, 7b
14:               jal          s4, 6b
15:               jal          ra, 11b
16:               addi         s9, a3, -36
                  auipc        s7, 359476
901:              sll          s3, s6, s7
902:              sltiu        s1, t3, 1178
                  srli         s4, a3, 27
                  beq          a0, t3, 906f
                  sltiu        a3, a4, -320
906:              slli         s5, s6, 11
907:              sltiu        a0, s10, 827
                  add          t3, a7, gp
                  slt          s8, s7, a0
                  slli         s1, s6, 25
                  bge          tp, t5, 915f
                  xor          a3, sp, a6
                  ori          gp, a0, 357
                  ori          s10, s4, -175
915:              sltu         t0, s0, a2
                  and          s5, s2, s1
                  slli         s1, t6, 21
                  add          s10, s1, s2
                  sub          t3, s10, t5
                  bge          t6, s0, 931f
                  xor          s10, tp, s9
                  bge          s9, s4, 933f
                  sll          t1, t6, sp
                  addi         a3, a5, -835
                  srli         t4, t0, 28
                  andi         s10, s11, 201
                  slti         ra, a3, 449
                  add          a0, t2, s10
                  slli         s4, s5, 19
                  auipc        a3, 362119
931:              srai         a5, s11, 19
                  lui          s3, 140752
933:              addi         t4, sp, -560
                  sra          a1, a0, s3
                  srl          gp, a7, a1
                  bltu         ra, s11, 950f
                  nop
                  addi         s11, a0, -1204
                  ori          s1, a6, -1666
                  sub          zero, a2, a3
                  blt          a0, a0, 961f
                  sltu         s4, t1, a6
                  srl          a0, s10, a5
                  nop
                  slli         s8, t0, 26
                  sltu         t6, s6, a3
                  bge          a2, s4, 954f
                  nop
                  andi         s8, a0, 1482
950:              srl          zero, gp, a4
                  lui          s2, 755780
                  slt          a3, t4, tp
                  bltu         s0, s3, 962f
954:              xori         s5, t0, -917
                  sltiu        t5, s1, 507
                  sub          a4, t0, t6
                  or           a7, s0, t6
                  sll          sp, a3, zero
                  addi         s6, a5, -726
                  sltiu        t5, a2, -1383
961:              add          s10, s2, t6
962:              and          s11, t2, a4
                  and          a3, s4, zero
                  sltu         t6, tp, a0
                  bgeu         a0, t5, 970f
                  xor          t3, s5, t3
                  blt          zero, t0, 984f
                  andi         s6, s9, 2007
                  sll          sp, t1, s9
970:              beq          s5, s3, 978f
                  sll          sp, gp, a1
                  sltu         s4, a1, s2
                  ori          s5, s2, 1181
                  or           s11, a2, s5
                  xor          sp, a5, s0
                  sltu         a4, s4, t2
                  slt          sp, a4, a1
978:              bne          s2, s3, 989f
                  sll          t5, s8, t1
                  slti         a3, s11, -971
                  ori          s10, s0, 2
                  auipc        a0, 1008925
                  sltiu        s4, a1, -1825
984:              or           ra, a2, s4
                  blt          t3, a4, 992f
                  bne          a7, s7, 990f
                  bne          s3, a3, 998f
                  sub          a6, t3, s1
989:              and          t3, a6, t4
990:              sra          s4, a4, ra
                  srl          t1, s4, sp
992:              sra          s10, s6, s2
                  auipc        t4, 229846
                  bge          s6, s9, 1006f
                  ori          s2, a2, 1203
                  andi         s4, tp, 977
                  sll          s1, s8, t1
998:              srli         s11, ra, 25
                  sll          s4, gp, s5
                  bne          tp, t3, 1007f
                  sub          t6, s8, t3
sub_4_6:          jal          a3, 1f
0:                jal          sp, 2f
1:                jal          ra, 15f
2:                jal          ra, 9f
3:                jal          s0, 0b
4:                jal          t6, 18f
5:                jal          a4, 6f
6:                jal          t1, 13f
7:                jal          t1, 4b
8:                jal          ra, 16f
9:                jal          ra, 11f
10:               jal          t1, 7b
11:               jal          ra, 5b
12:               jal          s8, 17f
13:               jal          ra, 10b
14:               jal          ra, 8b
15:               jal          ra, 14b
16:               jal          t0, 19f
17:               jal          ra, 20f
18:               jal          t0, 12b
19:               jal          s2, 3b
20:               add          s11, s4, s0
                  blt          a1, t0, 1016f
                  andi         a4, s3, -805
                  nop
                  sra          s8, t2, s0
1006:             auipc        s6, 15289
1007:             andi         s0, s4, -1252
                  bltu         ra, s3, 1009f
1009:             sltu         t6, s10, s2
                  sltu         s10, s8, a3
                  sltu         s2, s0, s10
                  addi         s7, a0, -1185
                  beq          sp, t5, 1020f
                  xor          s3, zero, a3
                  and          ra, s5, a4
1016:             srl          t1, t1, a3
                  slt          s1, t2, tp
                  sub          t6, sp, a2
                  sltiu        s4, t2, 1661
1020:             beq          a5, s11, 1027f
                  and          t6, t6, s11
                  sltiu        s11, t4, -107
                  beq          s2, t6, 1025f
                  or           s1, a2, ra
1025:             add          t5, tp, s0
                  nop
1027:             xor          a4, tp, s11
                  slli         a6, s3, 18
                  xor          a1, a3, s10
                  sll          a7, ra, a7
                  add          t6, gp, t6
                  bltu         s11, t5, 1043f
                  srl          t0, a0, zero
                  auipc        a6, 751999
                  or           s9, s10, s10
                  nop
                  srli         s6, s10, 24
                  addi         t5, sp, 993
                  srli         ra, s1, 15
                  andi         a3, s8, -693
                  bgeu         gp, a4, 1049f
                  ori          s1, t4, 808
sub_4_19:         jal          a3, 23f
0:                jal          ra, 13f
1:                jal          a1, 27f
2:                jal          ra, 15f
3:                jal          ra, 0b
4:                jal          sp, 17f
5:                jal          t1, 7f
6:                jal          t0, 30f
7:                jal          ra, 4b
8:                jal          ra, 6b
9:                jal          ra, 14f
10:               jal          t0, 3b
11:               jal          ra, 1b
12:               jal          t1, 16f
13:               jal          ra, 11b
14:               jal          ra, 25f
15:               jal          t4, 20f
16:               jal          ra, 24f
17:               jal          ra, 9b
18:               jal          a1, 5b
19:               jal          t1, 22f
20:               jal          s5, 26f
21:               jal          t1, 28f
22:               jal          t1, 29f
23:               jal          ra, 10b
24:               jal          t1, 19b
25:               jal          ra, 8b
26:               jal          s9, 18b
27:               jal          t1, 12b
28:               jal          s1, 2b
29:               jal          s1, 21b
30:               nop
1043:             addi         s9, s5, -111
                  srl          t4, zero, t3
                  slti         t3, t3, -888
                  nop
                  add          sp, t1, sp
                  sra          ra, t3, gp
1049:             sll          a4, t0, zero
                  lui          a1, 402872
                  bltu         t4, t4, 1064f
                  andi         s9, s11, -1777
                  sub          s8, s4, ra
                  bltu         t2, s0, 1057f
                  xor          t5, s3, a4
                  sub          t6, s7, a1
1057:             xor          s9, t3, t5
                  and          s11, tp, s5
                  srli         s6, gp, 5
                  sltiu        s3, t5, -872
                  auipc        s9, 386712
                  blt          t1, t0, 1080f
                  bne          s4, s11, 1073f
1064:             lui          s11, 163895
                  sub          s1, a0, t1
                  lui          gp, 152448
                  add          t4, s3, s8
                  srli         t0, t2, 12
                  sltu         t0, t5, s2
                  auipc        s9, 748994
                  slt          s9, s9, s4
                  slti         s4, a2, -1653
1073:             sra          sp, t3, a4
                  sra          a4, s4, t3
                  sra          s0, s8, sp
                  beq          s2, zero, 1091f
                  add          gp, tp, sp
                  sub          s0, gp, a0
                  bgeu         s5, s6, 1093f
1080:             sub          t3, zero, t3
                  bgeu         s5, a0, 1089f
                  bltu         gp, s11, 1093f
                  slti         s2, s4, 1139
                  nop
                  and          s7, t2, ra
                  auipc        s11, 829209
                  srl          a0, t6, s9
                  or           t3, t6, sp
1089:             sltiu        s0, tp, 1072
                  xor          t0, t6, a1
1091:             addi         s2, s2, 1825
                  ori          s3, a0, -907
1093:             beq          a0, a6, 1113f
                  srl          t5, a6, a3
                  add          s8, a7, s4
                  slli         s3, t6, 17
                  bne          a0, t1, 1106f
                  or           t5, tp, s3
                  slti         a4, a6, -676
                  sub          s0, t5, t0
                  lui          t6, 371768
                  blt          a7, a3, 1104f
                  xori         s0, ra, -669
1104:             lui          s9, 305913
                  srai         s0, s2, 28
1106:             nop
                  and          t4, a4, s2
                  sltiu        s4, a5, 356
                  addi         a4, s0, -1030
                  sltiu        gp, s5, -1242
                  beq          s5, sp, 1124f
                  xori         s3, tp, 1052
1113:             bltu         s0, s7, 1124f
                  slt          a6, s10, s10
                  slt          zero, t1, tp
                  lui          t1, 737116
                  lui          s10, 237867
                  bne          s7, t1, 1135f
                  add          gp, a0, tp
                  slli         t3, s6, 23
                  sra          zero, s4, s1
                  slti         t6, s1, 576
                  srli         s10, s6, 31
1124:             srl          t5, s11, t1
                  xori         s1, s2, 705
                  sra          s8, a0, zero
                  sltiu        t0, s1, 402
                  andi         s8, a3, 1539
                  slti         a7, a0, 831
                  xor          s2, a7, s9
                  blt          s2, a7, 1146f
                  srli         t6, s10, 4
                  xori         a6, a2, -1353
                  srli         s6, a4, 28
1135:             sub          t0, s0, a2
                  bge          a2, t1, 1156f
                  addi         s2, a1, 1213
                  auipc        a7, 699427
                  srl          t1, a1, s7
                  bne          a5, s7, 1145f
                  xor          a6, s6, t6
                  sltu         t5, s8, a1
                  sltu         a0, a3, t1
                  bne          a4, s7, 1164f
1145:             bltu         sp, t3, 1153f
1146:             sltiu        sp, t4, 133
                  bne          s2, s6, 1162f
                  sltu         t0, s3, s10
                  sll          a4, a1, a3
                  bge          s4, t4, 1170f
                  slt          t1, a3, tp
                  bltu         s0, s10, 1160f
1153:             and          s7, a0, s0
                  xori         a5, a2, -220
                  sra          a7, t4, a0
1156:             sltiu        a6, a2, 314
                  bne          s11, s6, 1164f
                  blt          s1, t3, 1170f
                  lui          zero, 551568
1160:             srl          a0, s5, t0
                  blt          tp, s1, 1172f
1162:             andi         s1, t1, 1931
                  bge          t5, sp, 1177f
1164:             sub          zero, s7, a5
                  bge          a1, s7, 1185f
                  slli         a7, zero, 0
                  nop
                  bge          s4, t0, 1175f
                  sltiu        s9, s6, -147
1170:             nop
                  bne          a0, t4, 1178f
1172:             slti         a1, s6, 2015
                  bne          a2, t5, 1190f
                  xori         s1, s5, 725
1175:             srl          t1, a6, t5
                  sra          s7, s9, t6
1177:             bgeu         s5, a7, 1190f
1178:             nop
                  addi         s7, s10, 1887
                  addi         s4, s0, -1743
                  nop
                  bge          t2, s8, 1195f
                  or           s10, tp, s11
                  sll          s6, ra, t1
1185:             srl          s2, ra, a3
                  lui          s9, 530704
                  srai         ra, tp, 1
                  xori         a1, s10, -1381
                  sltiu        s0, s2, -305
sub_4_34:         jal          a3, 15f
0:                jal          ra, 14f
1:                jal          t4, 19f
2:                jal          ra, 11f
3:                jal          ra, 6f
4:                jal          ra, 17f
5:                jal          ra, 12f
6:                jal          gp, 2b
7:                jal          t3, 13f
8:                jal          ra, 7b
9:                jal          s7, 5b
10:               jal          s5, 3b
11:               jal          ra, 9b
12:               jal          s6, 0b
13:               jal          t1, 20f
14:               jal          ra, 18f
15:               jal          ra, 1b
16:               jal          t1, 10b
17:               jal          t1, 16b
18:               jal          t5, 8b
19:               jal          ra, 4b
20:               and          t4, t1, s9
1190:             srli         a4, a0, 11
                  bltu         s1, gp, 1211f
                  xor          a7, ra, s9
                  sltiu        t3, gp, -937
                  srli         sp, t1, 14
1195:             beq          s1, a7, 1197f
                  sub          t3, s5, a6
1197:             slli         t6, s1, 11
                  slt          ra, s3, a6
                  sub          sp, t0, s8
                  srl          a5, s8, t2
                  srli         a1, ra, 27
                  xor          t1, s11, t3
                  sll          sp, a7, s4
                  sltu         s10, s7, a0
                  slli         a5, t6, 6
                  sltiu        sp, s6, -917
                  xor          t6, s11, a4
                  sltu         t0, t3, sp
                  xori         s8, a6, 543
                  or           s6, a2, s8
1211:             and          t1, a3, s1
                  sll          t6, s2, a7
                  bge          s2, gp, 1215f
                  sltu         t4, s10, a5
1215:             lui          t6, 829848
                  slti         s5, s7, 1567
                  bgeu         a0, s3, 1227f
                  srli         a5, t4, 20
                  addi         s6, t4, 1177
                  sub          s2, zero, t4
                  bne          gp, t2, 1225f
                  ori          s5, s9, 652
                  nop
                  bne          s2, t3, 1229f
1225:             srli         a1, s6, 20
                  xor          s9, sp, a1
1227:             blt          a3, ra, 1238f
                  blt          a1, ra, 1237f
1229:             bge          a5, a4, 1240f
                  sltiu        s4, t4, 1751
                  bne          s8, s2, 1245f
                  xor          s7, zero, gp
                  ori          s10, s1, -754
                  slti         a0, t4, 175
                  sll          s11, tp, s5
                  or           a1, t6, a5
1237:             addi         s8, t2, -1780
1238:             sltiu        a6, t4, 309
                  slt          s5, a1, t0
1240:             srai         a1, t0, 2
                  srai         a4, s4, 13
                  slli         s11, t6, 24
                  blt          a0, a2, 1244f
1244:             blt          a3, s0, 1252f
1245:             bge          a5, s1, 1248f
                  sra          a6, s10, s0
                  sra          t4, t3, s9
1248:             srai         a7, t5, 5
                  nop
                  bge          tp, a2, 1265f
                  andi         t1, s8, 1188
1252:             blt          a6, a1, 1270f
                  sltu         s10, s2, s11
                  sll          a1, s10, s10
                  ori          sp, s2, -1545
                  sub          s1, ra, s10
                  addi         t1, s4, 577
                  blt          a1, a1, 1269f
                  xori         s11, ra, 1786
                  bge          a1, t2, 1268f
                  and          s10, sp, a6
                  srl          a0, s6, s6
                  ori          ra, ra, 2037
                  sltiu        a3, s1, 1811
1265:             or           a6, a5, t2
                  xori         t0, tp, -157
                  nop
1268:             bltu         ra, t6, 1275f
1269:             add          s5, t1, t6
1270:             srai         t4, a5, 17
                  or           t5, t4, s8
                  xor          s7, a6, zero
                  xor          s7, s9, a5
                  slti         s5, t1, 1788
1275:             ori          t6, t0, 1675
                  srai         t5, a6, 22
                  lui          a3, 544035
                  sub          s2, t3, s5
                  xori         a1, s0, -1624
                  sltu         t1, t4, a7
                  beq          t3, a7, 1292f
                  srai         a1, t1, 27
                  slti         t0, a1, -733
                  xor          ra, t5, sp
                  srli         s1, zero, 30
                  andi         s3, t3, -1401
                  bltu         a1, s4, 1296f
                  srli         a3, s8, 9
                  bgeu         s3, a4, 1304f
                  nop
                  beq          s3, a3, 1306f
1292:             lui          s8, 240196
                  srl          t3, s6, s2
                  add          s5, a7, s3
                  beq          t2, a2, 1309f
1296:             beq          a1, t4, 1313f
                  slti         s1, s1, 2024
                  sra          sp, s9, s6
                  srai         s7, s11, 15
                  sra          s5, a3, s2
                  andi         s8, t1, 567
                  andi         a4, s10, -420
                  beq          s10, a7, 1305f
1304:             sltu         zero, s11, t1
1305:             bgeu         t1, a4, 1313f
1306:             nop
                  sltiu        t6, t1, -1863
                  addi         a7, a2, -1302
1309:             bge          t3, t2, 1322f
                  and          s10, t6, t6
                  bge          zero, a6, 1329f
                  srai         sp, s10, 12
1313:             andi         s8, gp, -1176
                  srli         s6, s10, 18
                  bltu         tp, a6, 1320f
                  bne          s11, s0, 1318f
                  ori          s6, s9, -1244
1318:             sltiu        t0, s6, 484
                  slli         s3, a1, 12
1320:             slti         a4, a5, 1347
                  bgeu         s3, s7, 1328f
1322:             bltu         a3, a7, 1326f
                  sll          s4, s8, s2
                  bgeu         s2, s1, 1325f
1325:             or           t4, t1, s2
1326:             sltu         s1, s3, a5
                  slti         s2, s6, 1756
1328:             sub          t0, a4, t3
1329:             xori         s10, tp, -517
                  andi         a7, s2, -863
                  andi         a4, t2, -1194
                  or           s6, a5, t2
                  lui          s11, 423398
                  slli         a5, s8, 21
sub_4_0:          jal          a3, 1f
0:                jal          t1, 9f
1:                jal          a1, 8f
2:                jal          ra, 5f
3:                jal          ra, 2b
4:                jal          s6, 0b
5:                jal          t1, 10f
6:                jal          ra, 11f
7:                jal          t1, 6b
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               lui          s2, 346841
                  ori          t1, t0, 1301
                  sltiu        s7, a0, 1373
                  xor          gp, a6, zero
                  addi         sp, t2, -848
                  sll          t5, s6, s1
                  xori         s1, a3, -1703
                  nop
                  and          s6, s9, s9
                  sltiu        s7, s7, 215
                  addi         t4, a3, -465
                  slti         t4, a0, 183
                  blt          t1, a1, 1356f
                  bge          a6, t6, 1358f
                  bne          s9, a0, 1359f
                  srai         zero, ra, 23
                  blt          t4, ra, 1370f
                  auipc        sp, 503092
                  or           t6, a3, a6
                  sltu         t0, t3, a1
                  andi         a1, a5, 60
                  srai         a5, t2, 16
1356:             add          a3, t3, a0
                  sub          ra, sp, s7
1358:             auipc        s7, 136145
1359:             nop
                  add          a0, t0, a6
                  bge          sp, tp, 1364f
                  bge          a4, t6, 1370f
                  srl          s4, t0, a6
1364:             lui          t5, 1012536
                  bgeu         t6, t1, 1385f
                  srl          s2, t4, s7
                  sll          s2, t0, a4
                  sll          s11, a6, s0
                  sll          a1, s2, s0
1370:             sll          s10, gp, a6
                  lui          s10, 366710
                  srl          t6, a1, a4
                  lui          t1, 1989
                  nop
                  or           s7, t3, s1
                  sra          a3, a6, a1
                  xori         t0, t3, -220
                  bge          a4, a6, 1398f
                  bge          s11, tp, 1386f
                  add          zero, sp, zero
                  srl          a5, t6, s2
                  auipc        t6, 235380
                  bne          t1, ra, 1396f
                  beq          s9, a1, 1398f
1385:             nop
1386:             blt          a6, t0, 1397f
                  bltu         ra, t3, 1399f
                  and          s10, s0, s0
                  sll          s8, s8, a6
                  addi         a4, a1, 1292
                  auipc        s4, 119513
                  slt          s11, s11, a6
                  sltu         s4, a0, t6
                  srl          a1, s9, tp
                  srl          t0, a2, s6
1396:             bge          s6, sp, 1404f
1397:             srli         a0, a1, 16
1398:             bne          t1, a0, 1399f
1399:             xor          gp, ra, sp
                  xor          a1, a6, a2
                  addi         zero, s2, 1304
                  nop
                  srl          s2, s11, zero
1404:             andi         s4, s2, -1967
                  bge          t1, a5, 1408f
                  slt          s0, s4, s8
                  slli         t0, a1, 31
1408:             blt          sp, s11, 1428f
                  add          s3, t3, s5
                  addi         s1, t0, 1061
                  sub          t0, s10, gp
                  slli         a7, a3, 11
                  and          t4, t0, s6
                  and          a1, gp, a4
                  srli         t3, s11, 12
                  ori          s8, a7, 244
                  auipc        s2, 916519
                  andi         s11, s6, -201
                  sltiu        gp, s5, 1773
                  nop
                  slti         t4, ra, -1051
                  andi         s1, s4, -5
                  beq          a4, s7, 1440f
                  slt          t4, s1, s3
                  beq          s0, s10, 1443f
                  slt          a3, a5, s0
                  sll          s4, t6, s0
1428:             bne          s11, t3, 1437f
                  addi         s11, ra, -1444
                  bge          s0, t6, 1444f
                  sub          t6, a5, s4
                  or           gp, s9, t1
                  sll          s11, s6, a1
                  srli         t4, a3, 26
                  bgeu         a3, tp, 1446f
                  addi         t1, a4, 953
1437:             addi         s1, s1, -1176
                  srl          s11, t1, s0
                  slt          a1, a6, s0
1440:             sra          s4, s4, t0
                  auipc        s2, 102626
                  andi         a1, a1, 2044
1443:             or           t1, ra, s2
1444:             bge          s6, s7, 1457f
                  bne          s2, t6, 1452f
1446:             srai         t3, a0, 30
                  beq          s11, s10, 1460f
                  andi         ra, s5, -1326
                  add          a1, a0, s7
                  or           a6, a3, a4
                  ori          s11, t1, 23
1452:             sra          t3, s5, a7
                  ori          a3, s8, 1470
                  srli         gp, sp, 29
                  sll          s3, s8, s10
                  sll          a6, a4, t4
1457:             blt          tp, a4, 1459f
                  bne          s1, t6, 1472f
1459:             xori         t0, zero, 100
1460:             sra          a3, s6, a6
                  sll          a1, s7, zero
                  sub          s4, tp, sp
                  srl          s8, s4, t5
                  srl          a1, a7, s7
                  or           s4, s9, t5
                  sltiu        s7, sp, -551
                  ori          sp, a1, 971
                  bge          a4, s5, 1483f
                  sltu         s10, s11, s7
                  xor          a7, a7, s7
                  bge          a1, t0, 1478f
1472:             sub          a5, s2, s5
                  sra          ra, s8, s5
                  sltu         s5, a4, s8
                  add          a1, ra, a4
                  slti         s4, s6, 149
                  sltu         s10, gp, sp
1478:             slt          ra, t1, s10
                  lui          s1, 421052
                  slti         a7, t0, 1322
                  addi         sp, t6, 1998
                  ori          s7, a7, 1739
1483:             slli         s9, s1, 28
                  bltu         s5, s2, 1488f
                  auipc        a7, 153847
                  srai         s4, gp, 16
                  sltu         t1, s9, s9
1488:             slt          s2, s6, s9
                  slt          s5, s3, t0
                  bgeu         s1, a0, 1498f
                  bne          t6, s9, 1496f
                  add          t4, s0, s8
                  srai         a0, a5, 14
                  bltu         s10, a3, 1502f
                  or           zero, t6, t6
1496:             nop
                  srli         a7, t4, 4
1498:             beq          zero, tp, 1505f
                  auipc        t0, 1039892
                  xor          sp, s0, t1
                  bge          a4, a7, 1521f
1502:             sub          s6, t3, s8
                  bltu         t6, t3, 1513f
                  addi         t1, s4, 1284
1505:             andi         s10, t1, -1921
                  lui          s10, 934276
                  srli         t4, s10, 17
                  srli         s8, s8, 6
                  lui          s7, 1041716
                  srl          a7, a5, tp
                  bgeu         t4, a6, 1531f
                  lui          a6, 460064
1513:             bltu         s3, a4, 1515f
                  bne          a1, ra, 1529f
1515:             beq          t1, t2, 1526f
                  and          s6, tp, s2
                  andi         gp, t2, -897
                  sll          a3, t6, s11
                  and          t3, sp, s8
                  andi         s7, t4, 151
1521:             and          t3, sp, a7
                  xor          s0, gp, s2
                  addi         s6, a2, 756
                  bne          s10, a4, 1535f
                  add          s8, s6, a5
1526:             sub          s5, a6, s10
                  beq          a3, a4, 1539f
                  beq          s9, s0, 1539f
1529:             add          s1, s1, gp
                  srai         t5, t2, 12
1531:             srai         a6, t2, 6
                  or           t4, s8, s9
                  ori          sp, s1, -171
                  addi         t3, t6, -304
1535:             bne          t6, a5, 1543f
                  lui          s4, 859327
                  xor          t5, s9, s6
                  beq          a5, ra, 1546f
1539:             sll          a1, a1, t2
                  slti         a1, s8, 792
                  and          t4, s4, a2
                  srl          zero, t3, s0
1543:             sub          a4, a7, a0
                  srai         t1, s10, 2
                  sltiu        s4, a6, -646
1546:             srl          s2, ra, s2
                  sltu         a6, t6, s11
                  bne          s6, a4, 1558f
                  sll          sp, tp, gp
                  sub          a6, zero, a7
                  blt          a2, s8, 1558f
                  srai         ra, a2, 11
                  bgeu         tp, a6, 1561f
                  bltu         t3, s11, 1557f
                  sltu         s11, a6, t3
                  xor          ra, a1, a4
1557:             beq          s4, s10, 1568f
1558:             srl          zero, s10, ra
                  or           t5, s9, a4
                  sltiu        a7, a5, 1450
1561:             srai         s10, t6, 6
                  beq          s2, a1, 1577f
                  bgeu         s8, s0, 1571f
                  xori         s0, a3, 1221
                  lui          a3, 527900
                  sltiu        t6, t6, 229
                  add          a6, a3, sp
1568:             add          s7, s7, t4
                  xori         a3, s11, -345
                  or           sp, s1, a6
1571:             and          s10, gp, a5
                  andi         a7, t2, 1480
                  bgeu         s8, s11, 1587f
                  sll          s10, s0, s6
                  slli         gp, s0, 16
                  sll          sp, a5, a3
1577:             sll          a5, s8, tp
                  bge          t2, s2, 1583f
                  xor          a3, s1, s2
                  sltiu        s0, a1, -418
                  srai         ra, s2, 30
                  sll          a5, t4, s2
1583:             sll          ra, a6, a6
                  bne          s10, a0, 1599f
                  srli         s3, t1, 25
                  sltiu        a6, s2, 1094
1587:             bltu         s3, a0, 1594f
                  add          s3, t0, t2
                  sub          t0, s3, s2
                  slli         s9, a4, 30
                  blt          a3, s0, 1603f
                  slti         s4, t4, 1286
                  srl          t1, s2, a3
1594:             srai         a1, s3, 5
                  or           t3, t6, t6
                  beq          a1, a0, 1605f
                  lui          s5, 827482
                  sll          a5, a6, s10
1599:             bne          s2, t1, 1601f
                  sub          s1, a2, s4
1601:             auipc        gp, 923342
                  addi         a0, tp, 176
1603:             ori          t3, t1, -1912
                  xor          s2, a4, sp
1605:             or           s4, s4, s4
                  ori          s10, tp, 653
                  bne          gp, t5, 1625f
                  xor          a0, a5, a5
                  nop
                  addi         t1, t5, -1765
                  srai         a0, a1, 28
                  or           s4, a6, t1
                  add          a3, tp, a1
                  srl          t3, t0, t2
                  nop
                  xor          ra, t4, t2
                  beq          s6, s4, 1634f
                  sra          a7, sp, s0
                  andi         s2, s7, 583
                  and          a0, sp, a5
                  bne          a2, t3, 1641f
                  or           a4, a5, s1
                  add          s5, a7, ra
                  bge          t4, a7, 1635f
1625:             auipc        t1, 942075
                  sll          a4, tp, s4
                  blt          t4, t2, 1631f
                  sub          s2, t3, a1
                  or           s3, a3, s2
                  or           s1, gp, s7
1631:             addi         s10, a3, 269
                  slli         a7, s4, 29
                  lui          ra, 37112
1634:             andi         a0, s10, -885
1635:             and          s9, a0, ra
                  nop
                  slti         t4, zero, -549
                  sub          a7, a1, ra
                  blt          ra, ra, 1641f
                  srai         t0, s4, 0
1641:             bne          s4, a4, 1652f
                  addi         a3, a0, -1110
                  srai         t3, s3, 29
                  sltu         s8, t6, t0
                  ori          zero, t6, 1425
                  andi         a7, a0, -1137
                  xori         a1, tp, -1781
                  bgeu         s2, t2, 1649f
1649:             slli         ra, zero, 12
                  blt          a7, zero, 1657f
                  beq          a4, s0, 1664f
1652:             sltu         ra, t1, s2
                  srl          a5, a2, tp
sub_4_18:         jal          a3, 4f
0:                jal          t5, 10f
1:                jal          ra, 8f
2:                jal          t1, 1b
3:                jal          ra, 2b
4:                jal          t1, 12f
5:                jal          t1, 0b
6:                jal          a7, 5b
7:                jal          ra, 3b
8:                jal          a5, 14f
9:                jal          t1, 6b
10:               jal          ra, 11f
11:               jal          ra, 7b
12:               jal          t1, 13f
13:               jal          ra, 9b
14:               nop
                  sub          s10, s8, a2
                  lui          a5, 983363
                  xor          a3, t2, a5
1657:             bltu         a3, zero, 1671f
                  srl          a7, a6, s4
                  srai         s8, ra, 17
                  bgeu         a6, a1, 1673f
                  xori         s2, s0, -1939
                  or           ra, s3, a6
                  slt          a1, gp, a6
1664:             srl          t6, a5, t0
                  auipc        t1, 100649
                  slti         t4, a0, 1791
                  bge          a6, s7, 1687f
                  auipc        s3, 321130
                  slt          sp, zero, ra
                  xor          a0, s0, a7
1671:             srl          a7, s6, s10
                  blt          s10, gp, 1692f
1673:             beq          tp, s0, 1684f
                  slt          a7, a3, a2
                  srl          s9, gp, s4
                  andi         a5, s11, -1616
                  lui          s9, 332640
                  slt          s7, a5, tp
                  addi         t6, s9, -468
                  beq          s9, a1, 1683f
                  slli         s4, a4, 20
                  add          s1, a1, t2
1683:             addi         s8, t0, 1973
1684:             slt          sp, a4, t3
                  blt          s1, a3, 1700f
                  srl          s7, t3, s6
1687:             sll          s0, t2, a3
                  slli         a1, a7, 6
                  srl          t6, t0, s10
                  or           s0, sp, sp
                  slt          s3, a6, s0
1692:             sra          a1, s4, s5
                  lui          t3, 105448
                  ori          t3, t2, 456
                  sltu         t6, t5, s0
                  slti         a1, t4, 1865
                  slt          s8, s8, s3
                  xor          s5, t2, a7
                  xori         s9, t4, 80
1700:             blt          s9, gp, 1711f
                  auipc        a3, 416973
                  bne          t6, a2, 1707f
                  sra          s1, s5, sp
                  srli         t6, t3, 17
                  slli         s5, s2, 20
                  sra          s5, s3, t1
1707:             srai         t4, a1, 20
                  blt          t4, ra, 1723f
                  bltu         t4, a5, 1720f
                  bge          a1, s2, 1730f
1711:             bgeu         t1, gp, 1713f
                  sltu         s4, a6, s2
1713:             sra          ra, ra, a6
                  nop
                  srai         s1, s1, 8
                  bge          s6, s1, 1727f
                  sltiu        a5, a5, 11
                  or           t5, t5, t1
                  srai         t6, s9, 29
1720:             lui          s8, 727644
                  blt          s2, t1, 1723f
                  slli         s9, s7, 10
1723:             lui          s7, 434776
                  xori         s8, s7, -1883
                  srai         t6, s8, 26
                  slli         a3, s8, 10
1727:             addi         t3, s1, -1160
                  bge          s8, s7, 1739f
                  slli         a4, gp, 3
1730:             add          s0, tp, a5
                  bgeu         s1, t2, 1743f
                  blt          ra, sp, 1750f
                  slt          s3, ra, t4
                  slti         sp, t4, -772
                  srai         s0, a2, 20
                  xori         s8, s4, -853
                  andi         s7, s4, -686
                  slt          s3, s0, gp
1739:             slli         a0, ra, 11
                  auipc        t4, 170687
                  slt          s8, t1, ra
                  bne          s5, s8, 1750f
1743:             bltu         a6, a1, 1744f
1744:             xor          s3, a5, s10
                  beq          gp, tp, 1758f
                  bgeu         s7, t5, 1750f
                  addi         s6, s6, -1147
                  addi         a4, t5, -678
                  sltiu        a0, s0, -1058
1750:             ori          s7, s11, -1014
                  or           a4, s7, s6
                  slti         t6, t4, 1888
                  slti         t1, t3, 166
                  nop
                  srl          t5, s4, t0
                  sra          a7, s2, gp
                  xor          a0, s6, s6
1758:             nop
                  bgeu         s10, a1, 1767f
                  srai         a1, s0, 15
                  bltu         t3, t1, 1769f
                  sub          s9, s5, s3
                  blt          t3, t0, 1776f
                  bne          s5, a4, 1771f
                  sub          gp, s0, a7
                  sltu         s4, s5, s1
1767:             sltiu        s7, gp, 1518
                  sra          s5, s5, a0
1769:             srli         s9, a0, 4
                  bltu         t3, a0, 1779f
1771:             sltiu        a0, a1, 962
                  sra          s9, s4, a2
                  bgeu         s0, s8, 1780f
                  sll          s2, a7, t6
                  blt          s4, s11, 1789f
1776:             xor          s3, s5, s0
                  slt          s4, a2, a1
                  sltu         s7, s1, a7
1779:             srli         a0, s2, 22
1780:             slli         a5, sp, 21
                  or           sp, s2, s10
                  srl          a7, t1, s8
                  bgeu         sp, t6, 1790f
                  bne          a2, t3, 1804f
                  bgeu         s10, s7, 1799f
                  xor          s4, s3, a0
                  or           s10, s8, t4
                  srai         sp, s4, 13
1789:             addi         t6, s4, -1177
1790:             slli         s7, a4, 4
                  nop
                  sltu         t3, a0, s5
                  blt          s6, a5, 1810f
                  add          a0, s4, t3
                  slti         t3, t2, -1470
                  srai         s5, t1, 26
                  sub          t4, zero, ra
                  and          gp, s6, a4
1799:             xori         a4, s2, 1624
                  sltu         t5, t3, s5
                  srl          s9, s5, gp
                  bne          t6, tp, 1822f
                  sra          s9, s1, s1
1804:             sub          gp, s1, s1
                  sra          a1, s8, a7
                  and          s1, a4, s3
                  bgeu         s3, s3, 1817f
                  srai         s0, s6, 11
                  ori          t5, s8, -87
1810:             sub          s0, t6, s4
                  bltu         a3, s2, 1816f
                  sub          s6, s6, t5
                  slli         a1, s2, 5
                  addi         s6, s9, -1061
                  auipc        t6, 126426
1816:             sltiu        a6, zero, 356
1817:             sra          a1, s8, t0
                  lui          s8, 444164
                  bge          sp, a2, 1820f
1820:             slli         s11, a1, 7
                  sll          s6, t1, a0
1822:             bge          tp, t5, 1834f
                  sltiu        gp, a5, -1844
                  xori         t4, t3, -1277
                  beq          s8, a3, 1839f
                  slti         s6, tp, 1426
                  auipc        s8, 130366
                  bgeu         s5, a5, 1846f
                  bne          t1, tp, 1840f
                  auipc        t4, 543591
                  addi         a3, s3, 1272
                  add          s0, s10, t5
                  srl          a4, t6, s1
1834:             srai         a4, s4, 7
                  and          ra, s3, ra
                  bltu         a5, s9, 1856f
                  sltu         zero, s6, t5
                  ori          gp, t6, 1082
1839:             srai         sp, s3, 14
1840:             bne          s3, s9, 1853f
                  sub          s3, s5, s5
                  or           t6, s10, s9
                  slti         t0, ra, -220
                  ori          s6, a4, -181
                  add          s6, sp, a5
1846:             bgeu         a3, t0, 1866f
                  srl          s8, gp, s2
                  beq          a1, t1, 1863f
                  bge          a4, ra, 1859f
                  slti         s9, a7, -1071
                  srl          s1, s10, t4
                  srli         gp, a1, 8
1853:             add          s5, tp, a2
                  sub          a3, s6, t2
                  nop
1856:             sll          a7, t4, zero
                  slli         s10, s5, 17
                  srli         s4, t4, 31
1859:             lui          s9, 817459
                  srli         a5, gp, 16
                  slt          a5, a1, a3
                  sub          a7, tp, s11
1863:             srli         s8, t6, 1
                  blt          a3, s10, 1875f
                  bge          t4, a0, 1872f
1866:             srl          ra, a3, t2
                  srl          s1, ra, a1
                  bgeu         t3, tp, 1877f
                  slti         s1, t2, -1109
                  ori          s4, zero, 874
                  srai         s3, s10, 24
1872:             or           s4, a3, a4
                  addi         a7, s2, 966
                  slti         s9, a1, -1995
1875:             addi         zero, t1, 2028
                  bgeu         a6, s9, 1883f
1877:             sra          a5, s5, t4
                  sll          s8, s7, s6
                  addi         t3, t0, 531
                  add          ra, s5, s7
                  auipc        a3, 276465
                  bltu         t0, s9, 1890f
1883:             slt          s2, t2, a3
                  bltu         gp, t1, 1901f
                  sll          t1, a6, t1
                  srl          s6, a4, s10
                  sub          t4, a5, s5
                  sll          s7, a2, t3
                  xori         s3, s9, 1001
1890:             srai         s11, a3, 23
                  xor          s7, s7, zero
                  sub          ra, s6, a6
                  slli         s6, zero, 8
                  auipc        t0, 235852
                  slti         s2, t3, -305
                  sll          s2, s5, a7
                  srl          s11, s7, s5
                  auipc        s4, 346628
                  sra          t1, s0, s10
                  add          sp, a1, sp
1901:             sra          s6, zero, s1
                  sub          s8, a0, gp
                  sra          s3, s9, s0
                  srl          s9, a6, a3
                  sub          s0, a6, gp
                  sll          t3, ra, sp
                  sltu         s4, s1, zero
                  blt          tp, s3, 1919f
                  slti         a7, s7, 1764
                  bgeu         a3, s0, 1921f
                  bltu         tp, t6, 1925f
                  sltiu        s8, zero, 1955
                  slt          s10, t1, t5
                  slt          s10, a5, s7
                  srai         a6, s2, 19
                  bgeu         a1, a5, 1920f
                  bgeu         s9, s8, 1924f
                  bltu         tp, t0, 1931f
1919:             beq          a0, t6, 1921f
1920:             ori          s8, tp, -1598
1921:             sra          s6, s3, s4
                  xori         s3, t2, -33
                  sll          a7, s2, a0
1924:             xor          s2, t4, a1
1925:             sll          gp, a0, t3
                  auipc        s5, 766892
                  lui          t0, 829536
                  sltu         a6, tp, s0
                  sub          s8, s11, a2
                  slti         s3, a4, -1127
1931:             srl          s4, a1, s11
                  slt          s10, t5, t2
                  beq          t3, a7, 1941f
                  bgeu         s9, tp, 1954f
                  slli         s6, t3, 23
                  slt          s5, gp, a4
                  sub          a3, sp, sp
                  srai         t6, s2, 21
                  sll          t6, a6, s6
                  bne          t0, zero, 1955f
1941:             and          a3, gp, s11
                  addi         a6, s9, 1891
                  beq          t3, sp, 1945f
                  auipc        t5, 901570
1945:             slli         a4, s5, 24
                  beq          t5, zero, 1954f
                  xor          a7, zero, a1
                  add          t4, s5, s8
                  add          t5, t2, a6
                  sll          a7, gp, t0
                  slti         s5, s8, 933
                  bge          ra, t4, 1955f
                  xori         a6, s8, -1780
1954:             sra          s4, s4, t4
1955:             bltu         tp, s8, 1962f
                  slli         s9, a0, 15
                  sra          a3, s7, a3
                  srl          s1, s2, s3
                  ori          ra, a1, -1202
                  lui          a4, 974475
                  bgeu         a5, ra, 1974f
1962:             srai         a7, t4, 13
                  srl          s5, t5, t3
                  nop
                  sub          s2, zero, a5
                  nop
                  srai         s6, s4, 4
                  addi         sp, a5, -1147
                  sltiu        gp, t4, 1831
                  bne          s10, a3, 1974f
                  and          s1, s0, tp
                  bne          s2, a1, 1974f
                  add          t3, s3, s7
1974:             ori          s4, a0, -344
                  blt          a7, t6, 1983f
                  xor          t3, t2, tp
                  addi         s11, sp, 1389
                  srai         s8, s3, 23
                  or           t0, s10, t3
                  bltu         a7, s2, 1988f
                  and          a7, s11, t5
                  slt          a4, tp, a3
1983:             lui          s10, 520723
                  add          t1, s7, a7
                  beq          s1, tp, 1997f
                  xori         s6, t3, -1135
                  xor          s2, s7, t3
1988:             addi         ra, a5, 270
                  and          t3, a3, t1
                  slt          a5, s0, sp
                  add          s9, s4, s8
                  srai         a7, s6, 8
                  sra          a5, t1, a4
                  bltu         s7, s4, 2005f
                  nop
                  auipc        a6, 51023
1997:             srai         a5, sp, 24
                  auipc        a6, 225473
                  andi         s2, a3, 41
                  slli         ra, t6, 29
                  blt          a5, a7, 2002f
2002:             slt          s7, ra, s6
                  ori          a0, gp, -1439
                  bgeu         t4, tp, 2018f
2005:             xor          t1, s7, s1
                  beq          a2, t3, 2017f
                  ori          a0, zero, -1240
                  sll          a6, s4, t0
                  lui          s2, 906898
                  blt          s9, sp, 2015f
                  nop
                  blt          s8, gp, 2027f
                  slti         a7, s11, -1076
sub_4_21:         jal          a3, 2f
0:                jal          a5, 18f
1:                jal          t1, 8f
2:                jal          ra, 11f
3:                jal          ra, 13f
4:                jal          t1, 16f
5:                jal          ra, 1b
6:                jal          t1, 12f
7:                jal          ra, 3b
8:                jal          t1, 17f
9:                jal          s1, 4b
10:               jal          t1, 19f
11:               jal          t6, 5b
12:               jal          ra, 0b
13:               jal          t1, 10b
14:               jal          ra, 9b
15:               jal          ra, 7b
16:               jal          t1, 6b
17:               jal          t5, 14b
18:               jal          s5, 15b
19:               lui          t1, 521752
                  bgeu         t4, s6, 2032f
2015:             xor          zero, ra, t1
                  slti         a3, s3, -215
2017:             auipc        zero, 404062
2018:             bne          s10, a7, 2025f
                  auipc        a4, 1038671
                  andi         s10, t4, 678
                  slli         a1, t6, 19
                  ori          gp, a2, -725
                  sub          s2, tp, t3
                  sll          t6, s3, a2
2025:             and          t6, s10, t5
                  blt          s7, a1, 2040f
2027:             sra          t1, zero, zero
                  bne          t6, a4, 2035f
                  bge          ra, t1, 2037f
                  andi         s5, s0, 202
                  bltu         a6, s8, 2041f
2032:             xor          s1, sp, s5
                  sll          a0, a5, s9
                  or           t6, sp, s2
2035:             srl          a1, t3, a4
                  blt          a5, s11, 2056f
2037:             ori          s9, s0, 152
                  sll          s8, gp, s10
                  bgeu         s4, sp, 2050f
2040:             bgeu         t2, t0, 2053f
2041:             ori          s0, sp, 1559
                  srli         s6, t2, 7
                  sub          a0, t4, tp
                  beq          s3, s7, 2055f
                  slli         sp, a4, 25
                  sra          s6, tp, t5
                  srai         s4, s5, 0
                  srl          t3, a4, s3
                  sltu         s8, t2, a1
2050:             slti         s2, s4, 641
                  addi         t4, t5, -1200
                  srl          t1, s3, a4
2053:             sub          t4, tp, a5
                  slt          s10, t5, tp
2055:             ori          gp, s3, 39
2056:             slli         s3, gp, 8
                  bge          s5, s9, 2060f
                  and          t4, a3, s6
                  nop
2060:             slt          a4, sp, a1
                  xor          s5, sp, s0
                  slti         sp, a7, 117
                  nop
                  nop
                  auipc        s11, 236084
                  sub          s3, a2, a2
                  auipc        a1, 984281
                  srli         sp, t2, 6
                  sll          t4, t2, s9
                  slt          s4, tp, t4
                  bltu         s8, t0, 2076f
                  slt          t4, a7, t4
                  add          t6, s2, s2
                  add          a5, ra, a7
                  beq          t4, t2, 2076f
2076:             add          s1, t4, a4
                  addi         s2, t3, 485
                  slti         a1, t1, -1649
                  andi         s3, s8, -1542
                  nop
                  lw           a3, 4(tp)
                  srli         a0, a5, 17
                  addi         tp, tp, 16
                  slti         s1, s1, -964
3019:             addi x11, x13, 1
3019:             jalr x11, x11, 0
sub_2:            and          t6, a6, a4
                  addi         tp, tp, -12
                  sub          t0, t6, s8
                  slli         s11, t6, 0
                  slti         s9, a0, -550
                  slti         s3, s5, 365
                  xor          s3, a1, s9
                  sw           a3, 4(tp)
                  srl          a1, t4, a0
                  slli         s10, s0, 11
                  sub          s2, t2, t1
                  slli         s11, a7, 21
                  la           t5, sub_3
                  slli         a0, t0, 20
                  sltiu        ra, s0, -1797
                  lui          t6, 666115
                  addi         t5, t5, 877
                  sltu         s5, tp, a4
sub_2_j5:         jalr         a3, t5, -876 #jump sub_2 -> sub_3
sub_2_0:          jal          a3, 11f
0:                jal          ra, 6f
1:                jal          t1, 9f
2:                jal          s4, 5f
3:                jal          gp, 21f
4:                jal          ra, 1b
5:                jal          ra, 22f
6:                jal          ra, 28f
7:                jal          ra, 13f
8:                jal          ra, 18f
9:                jal          t3, 7b
10:               jal          ra, 16f
11:               jal          sp, 2b
12:               jal          t1, 17f
13:               jal          gp, 24f
14:               jal          ra, 25f
15:               jal          ra, 20f
16:               jal          t6, 4b
17:               jal          t1, 23f
18:               jal          ra, 26f
19:               jal          ra, 29f
20:               jal          ra, 30f
21:               jal          ra, 10b
22:               jal          s0, 27f
23:               jal          ra, 14b
24:               jal          ra, 0b
25:               jal          t1, 3b
26:               jal          ra, 15b
27:               jal          ra, 12b
28:               jal          t1, 19b
29:               jal          s11, 8b
30:               nop
                  and          a5, s8, sp
                  sltu         a1, a3, tp
                  sra          t5, s9, s10
                  sra          t5, a3, s2
                  beq          t3, s1, 16f
                  srl          a1, t2, tp
                  auipc        s5, 412267
                  bltu         t4, t3, 12f
                  slli         a5, t6, 11
                  sltiu        a4, tp, 669
                  addi         ra, a4, -537
                  xor          s3, a5, gp
12:               auipc        s11, 447058
                  sub          s9, s8, ra
                  sub          zero, t2, t5
                  andi         t3, t0, 286
16:               xor          a7, tp, s10
                  and          t4, ra, s3
                  sltu         sp, a5, a0
                  sltiu        a0, s4, -1275
                  sra          a7, t3, s2
                  nop
                  slli         s7, t0, 9
                  blt          ra, s7, 42f
                  sra          t3, a0, s7
                  andi         t0, t3, -104
                  auipc        a5, 795946
                  nop
                  lui          s8, 336036
                  sub          a3, s10, s2
                  and          t1, s10, a6
                  srai         s11, s10, 31
                  sltu         t6, s8, s6
                  bge          s3, zero, 46f
                  bgeu         s3, t1, 42f
                  srl          gp, s10, t6
                  srli         t4, ra, 2
                  add          t4, s1, zero
                  sltu         t6, t6, s11
                  srl          ra, a5, s4
                  bne          s3, a5, 53f
                  slli         ra, s1, 15
42:               bltu         t0, a1, 48f
                  nop
                  slt          zero, a7, s3
                  sltiu        gp, s8, 719
46:               and          s7, t2, s10
                  nop
48:               xor          s11, s3, s5
                  andi         t0, a4, 631
                  srl          t3, t6, s6
                  or           s2, gp, s8
                  ori          s1, t4, 916
53:               slli         gp, t0, 7
                  sub          s9, a1, sp
                  srl          a4, sp, s5
                  auipc        t1, 389266
                  andi         t1, s5, 671
                  bgeu         s0, t3, 61f
                  ori          a0, a0, -69
                  srl          a5, t2, t4
61:               bltu         s1, s9, 71f
                  add          t5, tp, a2
                  auipc        a1, 591326
                  andi         a5, a5, -8
                  add          s11, a4, s5
                  add          s10, t5, s5
                  xori         a7, s9, 1546
                  bgeu         a6, t0, 74f
                  xori         a5, s6, -322
                  ori          ra, t5, 1095
71:               srai         t4, s11, 15
                  slli         s6, sp, 22
                  lui          a1, 435707
74:               srl          s11, a5, a0
                  srli         a7, s9, 27
                  lw           a3, 4(tp)
                  slli         t1, a1, 10
                  sub          s0, s0, s0
                  sltu         t0, t4, a3
                  addi         s7, t1, 1021
                  auipc        t5, 468137
                  addi         tp, tp, 12
                  sltiu        zero, sp, -91
                  sra          s9, a7, ra
136:              addi x28, x13, 1
136:              jalr x28, x28, 0
sub_3:            addi         tp, tp, -16
                  add          zero, t6, s4
                  slti         s0, zero, 1915
                  sw           a3, 4(tp)
                  srl          s11, t6, s8
sub_3_4:          jal          a3, 1f
0:                jal          t1, 3f
1:                jal          ra, 2f
2:                jal          t1, 4f
3:                jal          t0, 10f
4:                jal          ra, 9f
5:                jal          ra, 0b
6:                jal          t0, 5b
7:                jal          ra, 6b
8:                jal          a4, 7b
9:                jal          s3, 8b
10:               add          zero, t6, ra
sub_3_5:          jal          a3, 17f
0:                jal          ra, 5f
1:                jal          t1, 15f
2:                jal          a1, 4f
3:                jal          s6, 11f
4:                jal          ra, 20f
5:                jal          a4, 14f
6:                jal          t1, 13f
7:                jal          sp, 6b
8:                jal          gp, 9f
9:                jal          s8, 10f
10:               jal          ra, 2b
11:               jal          ra, 12f
12:               jal          gp, 22f
13:               jal          t1, 21f
14:               jal          ra, 18f
15:               jal          ra, 7b
16:               jal          t1, 24f
17:               jal          t1, 3b
18:               jal          a4, 8b
19:               jal          ra, 0b
20:               jal          sp, 1b
21:               jal          ra, 25f
22:               jal          ra, 23f
23:               jal          ra, 16b
24:               jal          ra, 19b
25:               or           a7, s2, t0
sub_3_1:          jal          a3, 5f
0:                jal          ra, 26f
1:                jal          t1, 7f
2:                jal          ra, 19f
3:                jal          t1, 9f
4:                jal          s0, 10f
5:                jal          ra, 3b
6:                jal          a0, 13f
7:                jal          ra, 2b
8:                jal          ra, 15f
9:                jal          ra, 25f
10:               jal          t1, 27f
11:               jal          ra, 6b
12:               jal          sp, 16f
13:               jal          t1, 18f
14:               jal          s2, 20f
15:               jal          t1, 0b
16:               jal          s0, 17f
17:               jal          ra, 11b
18:               jal          ra, 8b
19:               jal          ra, 28f
20:               jal          ra, 24f
21:               jal          s6, 14b
22:               jal          t1, 12b
23:               jal          ra, 4b
24:               jal          ra, 23b
25:               jal          ra, 21b
26:               jal          a5, 1b
27:               jal          s10, 22b
28:               slti         t0, s9, 579
sub_3_0:          jal          a3, 17f
0:                jal          ra, 25f
1:                jal          t5, 24f
2:                jal          t1, 6f
3:                jal          ra, 27f
4:                jal          s2, 2b
5:                jal          ra, 13f
6:                jal          ra, 19f
7:                jal          sp, 14f
8:                jal          t0, 16f
9:                jal          ra, 26f
10:               jal          ra, 20f
11:               jal          ra, 18f
12:               jal          ra, 1b
13:               jal          t1, 10b
14:               jal          s0, 5b
15:               jal          ra, 9b
16:               jal          t1, 22f
17:               jal          ra, 0b
18:               jal          t1, 23f
19:               jal          ra, 15b
20:               jal          ra, 12b
21:               jal          t1, 4b
22:               jal          t1, 11b
23:               jal          ra, 3b
24:               jal          t1, 8b
25:               jal          sp, 7b
26:               jal          ra, 28f
27:               jal          ra, 21b
28:               addi         s3, t4, -152
sub_3_2:          jal          a3, 12f
0:                jal          ra, 17f
1:                jal          ra, 21f
2:                jal          a4, 15f
3:                jal          s5, 11f
4:                jal          ra, 14f
5:                jal          gp, 13f
6:                jal          ra, 20f
7:                jal          t0, 2b
8:                jal          t1, 23f
9:                jal          t1, 18f
10:               jal          t1, 0b
11:               jal          ra, 8b
12:               jal          t1, 1b
13:               jal          ra, 4b
14:               jal          s9, 6b
15:               jal          s0, 10b
16:               jal          t1, 9b
17:               jal          t6, 19f
18:               jal          ra, 22f
19:               jal          ra, 3b
20:               jal          ra, 24f
21:               jal          t3, 7b
22:               jal          ra, 5b
23:               jal          ra, 16b
24:               andi         s2, s11, -736
sub_3_3:          jal          a3, 6f
0:                jal          t4, 9f
1:                jal          ra, 10f
2:                jal          ra, 1b
3:                jal          ra, 5f
4:                jal          ra, 2b
5:                jal          gp, 8f
6:                jal          sp, 0b
7:                jal          ra, 4b
8:                jal          t0, 7b
9:                jal          s3, 3b
10:               sltu         s3, a3, a4
                  lui          s11, 1036513
                  srli         s3, a4, 1
                  srai         s11, s7, 17
                  sltiu        s1, t4, 1281
                  slli         sp, a5, 24
                  nop
                  bgeu         s10, t1, 19f
                  srai         s1, a7, 3
                  xori         t0, t3, 1853
                  auipc        s5, 873737
                  srai         a4, a3, 4
                  slt          s5, tp, a1
                  nop
                  slt          t4, t3, s1
                  nop
                  blt          s0, zero, 16f
16:               auipc        s2, 59544
                  addi         a0, s2, 1315
                  xor          s2, sp, s7
19:               beq          s0, s11, 33f
                  add          s6, s0, s8
                  slt          a7, sp, a6
                  andi         zero, tp, 971
                  bgeu         t6, a7, 26f
                  sltiu        ra, gp, 115
                  bne          s5, a5, 39f
26:               blt          s8, t0, 33f
                  addi         t0, gp, 1275
                  and          t1, s8, s10
                  sub          a7, tp, gp
                  bgeu         tp, t3, sub_3_j7 #branch to jump instr
                  sra          gp, s10, s4
                  add          ra, t0, ra
                  addi         s1, gp, -1058
                  ori          ra, t1, -484
                  sll          s3, zero, s8
                  srli         s8, a1, 15
                  slti         a4, t1, -1972
sub_3_j7:         jal          a3, sub_4 #jump sub_3 -> sub_4
                  xori         s7, a6, -415
                  add          s6, t3, tp
                  srai         sp, s0, 22
                  auipc        s0, 339396
                  slt          gp, a5, s7
                  bne          a6, a3, 42f
33:               sub          s6, s7, gp
                  slti         sp, a7, -1601
                  sll          sp, sp, t5
                  auipc        t6, 905340
                  beq          ra, s0, 48f
                  beq          s9, a6, 43f
39:               addi         t1, t2, 1951
                  or           sp, t1, s8
                  or           t1, s2, s9
42:               bge          a0, s5, 58f
43:               srl          s0, a4, s8
                  ori          gp, a4, 149
                  nop
                  xori         s6, s6, 1193
                  sltiu        a1, s3, -87
48:               addi         t6, s5, 1231
                  nop
                  bgeu         s5, t4, 53f
                  blt          a5, tp, 52f
52:               sll          s2, t3, s4
53:               srai         s1, sp, 3
                  srl          t6, s2, tp
                  bltu         t5, t5, 63f
                  bne          t4, a7, 66f
                  srli         s3, s1, 11
58:               sltu         a0, t5, s3
                  xor          ra, ra, s6
                  sltu         t1, a0, s10
                  beq          s5, s1, 74f
                  xor          t6, t1, gp
63:               bltu         s5, t6, 82f
                  beq          t0, t0, 78f
                  xor          t6, s0, s2
66:               ori          s6, t1, -1470
                  sltu         a5, t6, s11
                  slt          s9, t5, s3
                  andi         ra, a6, -682
                  slti         t5, sp, -1121
                  sra          t5, zero, a6
                  xori         a7, a1, 1243
                  srai         s2, t5, 31
74:               slti         s1, s2, -305
                  bltu         s5, t2, 80f
                  add          sp, s5, t2
                  sltiu        t1, s1, 1892
78:               nop
                  or           s7, a7, ra
80:               sub          s9, a4, a6
                  srl          s7, s10, a3
82:               xori         a3, s1, -765
                  xori         a6, a3, -974
                  sll          a3, tp, t1
                  and          a7, s6, t4
                  ori          sp, s8, 1730
                  bne          t1, t0, 96f
                  bgeu         s7, s10, 92f
                  bge          a6, t6, 108f
                  nop
                  add          s1, t5, s5
92:               bge          gp, ra, 95f
                  andi         t0, s10, -467
                  srli         t1, a7, 16
95:               bge          s0, a7, 98f
96:               blt          s10, a0, 112f
                  slli         t5, a5, 8
98:               or           s8, t3, t4
                  andi         ra, gp, -220
                  srai         s9, a3, 12
                  slli         s4, t4, 25
                  sltiu        a6, s3, -562
                  srai         a1, ra, 19
                  auipc        t3, 507842
                  sra          s11, a7, s4
                  and          gp, s4, t3
                  xori         s6, a3, -105
108:              or           a3, s7, s6
                  xor          sp, t5, a6
                  sub          s9, tp, tp
                  and          a5, s2, s3
112:              auipc        s9, 956376
                  sltiu        t6, s6, 287
                  sltiu        t6, s11, 1978
                  add          s0, a6, s10
                  srli         a4, sp, 8
                  srli         a0, a4, 10
                  sltiu        gp, s9, -1575
                  sra          a3, t5, t1
                  srai         t6, ra, 29
                  bne          gp, t2, 134f
                  and          t6, t0, tp
                  blt          a6, s10, 135f
                  slti         t4, t1, -1435
                  andi         s5, ra, 1752
                  xori         a5, s1, -1785
                  srai         s1, a3, 10
                  sltiu        a7, s9, -874
                  srli         a0, t6, 17
                  srli         gp, t4, 16
                  sltu         t6, s6, s9
                  bne          s6, t6, 137f
                  ori          s8, t2, -87
134:              nop
135:              blt          s8, a7, 140f
                  sltu         s7, a0, t2
137:              bltu         sp, t0, 155f
                  srai         a4, a7, 16
                  srai         t1, t5, 9
140:              bne          a2, s11, 146f
                  ori          s0, s5, -628
                  or           t5, s7, s10
                  bgeu         t5, t3, 150f
                  srai         s7, a2, 29
                  sltu         a1, t1, s6
146:              sll          t6, a6, s11
                  sll          s9, s5, a4
                  ori          s9, t3, 1199
                  blt          t2, s2, 152f
150:              slti         s8, s11, 108
                  srl          a5, gp, s10
152:              srai         t1, s3, 12
                  nop
                  andi         a5, a5, 827
155:              sll          a3, a6, t6
                  bge          a5, a5, 161f
                  addi         t5, s7, 51
                  auipc        sp, 388199
                  xori         a4, s9, 902
                  bne          sp, s1, 179f
161:              add          t0, s11, s4
                  sub          s1, a6, s0
                  srli         ra, s1, 5
                  sltiu        zero, t3, 1194
                  sra          a0, s7, t4
                  srl          s6, s10, s7
                  bgeu         ra, t1, 183f
                  sltu         a1, t4, s7
                  sra          t4, s4, a2
                  srai         s2, a1, 4
                  and          s0, ra, s5
                  blt          a0, t0, 175f
                  sltiu        a7, s4, -1787
                  bne          t0, s4, 184f
175:              beq          s10, gp, 183f
                  sltu         s0, t5, t1
                  beq          t2, a5, 178f
178:              srli         t6, s10, 2
179:              and          s1, s4, sp
                  add          sp, a6, t4
                  srai         a1, zero, 7
                  beq          t1, s1, 200f
183:              ori          a0, t3, 57
184:              bgeu         s7, s7, 187f
                  beq          t1, t6, 198f
                  sll          a3, s3, a6
187:              sltiu        a6, t5, 4
                  slt          t3, t6, s1
                  srl          t4, zero, s3
                  and          s7, gp, sp
                  xori         t3, s6, 1064
                  bgeu         tp, s5, 195f
                  sltiu        t4, t6, 1738
                  sltiu        a1, a3, -1742
195:              srli         s4, t4, 31
                  sltu         t0, a6, s3
                  sltiu        s11, s8, 1740
198:              sub          s1, s1, a6
                  xori         a7, s7, 1762
200:              slt          gp, t3, ra
                  add          gp, gp, s10
                  sll          s3, t1, s5
                  xor          t6, s8, a2
                  lui          s2, 913350
                  blt          gp, t6, 221f
                  blt          ra, s7, 217f
                  bgeu         sp, a6, 219f
                  bgeu         gp, t6, 227f
                  ori          t6, t3, -43
                  bne          zero, sp, 215f
                  sra          t3, s1, ra
                  bge          s2, a0, 213f
213:              nop
                  srli         s0, s3, 31
215:              srli         s7, t6, 8
                  srl          s0, s10, s1
217:              sra          s3, tp, gp
                  bltu         s0, t1, 232f
219:              andi         s7, s0, -853
                  beq          ra, t0, 226f
221:              or           t5, t0, t4
                  bgeu         zero, a4, 227f
                  slli         t6, s9, 10
                  blt          s11, s1, 229f
                  sltu         s2, s4, s1
226:              addi         a1, t3, 1191
227:              bgeu         s0, t4, 240f
                  or           t5, zero, t6
229:              nop
                  srl          s5, s2, s5
                  sltiu        a7, a2, 939
232:              ori          a6, a0, 70
                  bne          sp, s2, 246f
                  bgeu         s6, t2, 238f
                  auipc        a1, 29013
                  sub          a3, a2, s8
                  slti         a3, s5, -1548
238:              srli         t4, s11, 15
                  bgeu         s7, s7, 249f
240:              beq          s1, gp, 254f
                  bge          s4, s10, 250f
                  sltu         s7, t4, a1
                  srai         s11, s5, 18
                  sll          s9, a7, t4
                  bltu         a2, t1, 259f
246:              bgeu         a7, sp, 259f
                  sltu         t5, a1, s11
                  sltu         s6, s10, a3
249:              sra          s7, a0, t5
250:              ori          t1, sp, 877
                  ori          zero, ra, -112
                  and          a5, s3, a6
                  nop
254:              slli         s4, a5, 19
                  andi         a1, s8, -446
                  or           a4, s9, s6
                  sltiu        s6, t4, -351
                  bltu         s10, t3, 263f
259:              lui          s4, 521938
                  lui          s2, 982523
                  sub          s4, s2, t0
                  auipc        s5, 864928
263:              lui          s2, 646172
                  bgeu         s7, a2, 267f
                  ori          a1, a0, 2031
                  bne          t4, sp, 280f
267:              bltu         tp, a1, 286f
                  sra          a4, a3, t4
                  bltu         t4, t1, 277f
                  xor          t3, a3, t2
                  andi         t5, s11, -1829
                  xori         s1, s10, -1157
                  slt          t6, a2, s8
                  sra          t3, a3, t2
                  and          a5, a7, s0
                  bne          zero, t2, 292f
277:              xori         t5, tp, -1912
                  bge          s3, t4, 283f
                  slt          s2, s3, t2
280:              srai         a0, ra, 24
                  sll          s1, t0, s5
                  and          t1, t3, t3
283:              srl          s9, gp, t5
                  sll          ra, s6, s6
                  sra          a1, s5, a0
286:              blt          a4, s5, 299f
                  lui          s11, 131914
                  sltu         t4, gp, t2
                  and          s9, s8, t3
                  slt          s8, s7, a2
                  or           ra, s10, s8
292:              sltu         a3, s6, a1
                  xor          s10, t2, zero
                  lui          a6, 787560
                  slti         s11, s2, 1158
                  xori         s6, s4, 963
                  srai         t5, s11, 21
                  srli         s2, a4, 16
299:              blt          t4, t5, 304f
                  lui          s5, 913150
                  sll          t0, t2, a2
                  addi         s2, a4, 1394
                  srai         sp, s0, 9
304:              auipc        gp, 768544
                  la           a0, sub_4
                  ori          s0, a4, 443
                  slli         zero, a4, 3
                  sub          s5, a0, a4
                  slli         t4, s0, 25
                  addi         a0, a0, 246
                  bge          s1, s0, sub_3_j6 #branch to jump instr
                  srai         t0, s1, 30
                  addi         s6, a6, 1850
                  sra          t3, s5, a5
sub_3_j6:         jalr         a3, a0, -246 #jump sub_3 -> sub_4
                  sll          sp, a7, t3
                  blt          tp, s5, 307f
307:              srli         zero, ra, 5
                  sltiu        s5, s6, -1480
                  blt          s11, s2, 322f
                  xor          s2, a6, s6
                  sltiu        s4, s8, -1795
                  lui          a6, 66722
                  and          a1, t1, s11
                  sll          a4, tp, tp
                  sub          zero, s7, s5
                  add          s1, s9, s4
                  slti         a0, a6, 1571
                  bltu         s11, s9, 329f
                  xori         t1, t0, 1116
                  slt          s9, t6, s3
                  auipc        a4, 308284
322:              blt          s11, s10, 336f
                  xori         a4, zero, -44
                  slti         s2, zero, -1560
                  and          a1, s9, s9
                  bge          a5, s6, 336f
                  bgeu         a2, tp, 343f
                  sub          s9, sp, s8
329:              xor          t3, t2, gp
                  slt          ra, s1, sp
                  slt          s2, tp, a7
                  slti         s7, zero, -1607
                  lui          a0, 818484
                  srli         t6, t4, 4
                  sub          zero, tp, t0
336:              or           s3, a5, tp
                  sltiu        ra, s11, 1645
                  ori          a5, a2, -721
                  or           s4, ra, zero
                  slti         sp, s8, 766
                  bgeu         ra, s6, 344f
                  srai         s0, a5, 24
343:              slli         a0, a4, 0
344:              nop
                  srli         s5, a4, 20
                  and          t6, a1, sp
                  lw           a3, 4(tp)
                  slt          s2, s1, a0
                  addi         tp, tp, 16
                  slti         s5, s6, -1425
                  slti         s0, t2, 498
517:              addi x30, x13, 1
517:              jalr x30, x30, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x12, x4, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x31, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x31, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x31, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x31, x22, ecall_handler
                  li x22, 0x1
                  beq x31, x22, instr_fault_handler
                  li x22, 0x5
                  beq x31, x22, load_fault_handler
                  li x22, 0x7
                  beq x31, x22, store_fault_handler
                  li x22, 0xc
                  beq x31, x22, pt_fault_handler
                  li x22, 0xd
                  beq x31, x22, pt_fault_handler
                  li x22, 0xf
                  beq x31, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

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
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x4, x12, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
