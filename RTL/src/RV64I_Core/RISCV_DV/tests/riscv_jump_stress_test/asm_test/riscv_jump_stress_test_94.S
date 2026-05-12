.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xfbe0872f
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x9
                  li x5, 0xf
                  li x6, 0x6
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0xf9f25daf
                  li x11, 0x80000000
                  li x12, 0xa
                  li x13, 0xfc07d369
                  li x14, 0xf00a4056
                  li x15, 0x80000000
                  li x16, 0xf55f3705
                  li x17, 0xdacba367
                  li x18, 0x0
                  li x19, 0x5
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x6
                  li x24, 0x5fdaf0bf
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xf57a7255
                  li x28, 0xfb060b8f
                  li x29, 0xfad6bbc2
                  li x30, 0x80000000
                  li x31, 0xe
                  la x23, user_stack_end
main:             la           sp, sub_3
                  addi         s3, s0, 363
                  addi         sp, sp, -834
                  andi         a2, a5, -735
                  bltu         t0, t1, main_j3 #branch to jump instr
                  xori         a1, ra, 1401
                  andi         tp, t5, -1425
                  auipc        s8, 691715
                  sll          s3, t3, a1
                  srai         t6, s7, 23
main_j3:          jalr         t1, sp, 834 #jump main -> sub_3
                  srl          t5, s5, a2
                  la           a7, sub_5
                  addi         a7, a7, -994
                  auipc        s3, 142531
                  slti         s6, ra, -1992
                  sltu         tp, t6, a6
                  blt          s2, s5, main_j4 #branch to jump instr
                  or           zero, sp, a7
                  srai         tp, s3, 16
                  andi         s6, gp, -370
main_j4:          jalr         t1, a7, 994 #jump main -> sub_5
                  auipc        s10, 627840
                  andi         s8, s9, -1317
                  sub          s3, s8, s1
                  la           s11, sub_1
                  sltiu        a6, a1, 400
                  add          sp, a4, t3
                  addi         s11, s11, 422
                  or           t6, ra, a0
main_j5:          jalr         t1, s11, -422 #jump main -> sub_1
main_0:           jal          t1, 5f
0:                jal          s4, 2f
1:                jal          ra, 6f
2:                jal          s1, 8f
3:                jal          ra, 11f
4:                jal          t0, 10f
5:                jal          ra, 0b
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          t1, 4b
9:                jal          a6, 12f
10:               jal          ra, 1b
11:               jal          s1, 7b
12:               sltu         a2, s10, ra
main_1:           jal          t1, 12f
0:                jal          s11, 10f
1:                jal          t1, 26f
2:                jal          ra, 19f
3:                jal          s0, 1b
4:                jal          ra, 28f
5:                jal          a6, 9f
6:                jal          t1, 4b
7:                jal          ra, 18f
8:                jal          t1, 24f
9:                jal          ra, 25f
10:               jal          a3, 20f
11:               jal          t1, 21f
12:               jal          ra, 6b
13:               jal          ra, 22f
14:               jal          t1, 11b
15:               jal          a1, 8b
16:               jal          ra, 0b
17:               jal          ra, 23f
18:               jal          t1, 5b
19:               jal          ra, 17b
20:               jal          tp, 7b
21:               jal          t1, 16b
22:               jal          ra, 14b
23:               jal          t0, 3b
24:               jal          ra, 29f
25:               jal          s9, 2b
26:               jal          ra, 30f
27:               jal          ra, 13b
28:               jal          t1, 15b
29:               jal          t1, 27b
30:               srai         zero, sp, 6
                  sltiu        sp, s0, 1329
                  slti         gp, gp, 316
                  and          a5, t1, s10
                  or           tp, a0, sp
                  sra          gp, t2, ra
                  lui          a6, 128827
                  bgeu         t1, s2, 20f
                  auipc        ra, 668178
                  and          s0, t4, s10
                  srl          t0, s6, s1
                  addi         a0, a3, -268
                  xor          t6, t3, t2
                  add          sp, s8, s7
                  andi         a3, s4, -604
                  sub          s11, s6, a2
                  srli         t5, s0, 22
                  slt          t5, a1, s5
                  blt          t3, s9, 32f
                  xor          a4, gp, t6
                  nop
20:               bne          a2, t6, 31f
                  auipc        s1, 180749
                  xor          s4, t3, t5
                  beq          s1, t6, 28f
                  srli         t0, gp, 4
                  bltu         a2, a5, 28f
                  bgeu         s11, t3, 42f
                  xor          t4, a4, t5
28:               bge          s10, s4, 34f
                  add          a4, zero, a1
                  addi         s3, s1, -996
31:               sltiu        sp, gp, -1688
32:               sub          t4, zero, s10
                  blt          tp, t4, 46f
34:               xor          a4, zero, s0
                  sltiu        s3, s3, 247
                  xori         s8, s2, 1596
                  srli         t4, a7, 19
                  andi         t1, a6, 1526
                  ori          a6, tp, 1504
                  nop
                  sltu         a0, s4, a6
42:               sub          sp, a0, a1
                  srl          a0, ra, s4
                  slt          zero, a0, s3
                  xor          t0, a0, tp
46:               bne          t6, s2, 51f
                  or           a3, a7, t5
                  xori         s3, s0, -1516
                  sltiu        s8, t3, 719
                  addi         s9, gp, -1173
51:               blt          s10, s5, 52f
52:               sltu         a6, s11, gp
                  sltiu        s1, s7, -1076
                  la           ra, sub_2
                  auipc        s6, 799920
                  addi         ra, ra, 169
                  bltu         a5, s7, main_j1 #branch to jump instr
                  addi         t4, t0, 911
                  lui          gp, 768873
                  srai         a2, a7, 7
                  sltu         s9, s4, a6
main_j1:          jalr         t1, ra, -168 #jump main -> sub_2
                  srl          zero, s6, gp
                  sltiu        sp, t3, 552
                  add          s3, t2, s9
                  ori          t6, zero, 1810
                  slli         a2, zero, 3
                  bgeu         t6, a4, 61f
                  lui          a1, 786694
61:               srl          a0, t4, s0
                  auipc        a6, 1005046
                  sltiu        t0, t2, 652
                  sltu         s4, a4, s3
                  sltu         a5, sp, s7
                  add          s3, gp, a3
                  sra          sp, s4, a2
                  nop
                  bgeu         s0, s8, 75f
                  add          s5, s3, s4
                  xori         a6, s5, 1414
                  addi         a5, s5, 148
                  srai         a6, t1, 8
                  nop
75:               xori         s9, t2, 743
                  sll          s8, s0, s8
                  add          a3, a1, zero
                  slli         s1, s7, 9
                  or           tp, s7, s2
                  lui          s3, 632665
                  sll          sp, a2, a5
                  nop
                  bne          sp, sp, 95f
                  blt          s5, a7, 99f
                  bgeu         t5, a5, 94f
                  lui          s11, 825642
                  srl          a4, t6, t2
                  addi         ra, t3, 1397
                  srai         t4, zero, 21
                  xori         s8, s7, -83
                  slt          t4, s10, a6
                  bltu         ra, t0, 111f
                  and          s4, s9, s0
94:               auipc        t1, 452160
95:               lui          a6, 625601
                  srli         ra, s6, 9
                  xori         a6, a3, 1149
                  bgeu         s4, s9, 110f
99:               beq          s6, a2, 105f
                  slli         a4, s7, 5
                  ori          s4, a5, 226
                  srl          zero, s11, a5
                  beq          t5, s9, 106f
                  and          t4, a2, sp
105:              beq          a4, a3, 116f
106:              bltu         s8, s9, 119f
                  and          zero, s10, tp
                  sltiu        a6, s4, 2020
                  blt          a3, a6, 124f
110:              andi         t5, a5, -1805
111:              blt          s1, a0, 126f
                  sra          s2, gp, s5
                  sll          a7, s4, a3
                  sll          s1, s3, s6
                  and          s8, s4, s2
                  la           s6, sub_4
                  addi         s6, s6, -580
                  ori          s0, ra, 1247
                  andi         a4, a0, 1488
                  ori          s11, t1, -300
                  bltu         a0, s4, main_j2 #branch to jump instr
                  nop
                  sub          t5, s11, s8
                  and          t6, t0, s11
                  andi         zero, s7, 1623
main_j2:          jalr         t1, s6, 580 #jump main -> sub_4
                  slt          s6, gp, t1
                  slti         s1, t3, 1546
116:              ori          tp, s5, -384
                  srai         tp, s2, 31
                  slt          a0, s4, t4
119:              lui          s0, 1005347
                  sll          a3, t2, s1
                  ori          t0, s4, -1025
                  sll          s9, t5, a6
                  slti         t4, a7, -930
124:              blt          a0, sp, 137f
                  slli         s11, s8, 20
126:              xor          s3, zero, s10
                  nop
                  slt          s10, tp, zero
                  slt          a6, t5, a5
                  ori          t4, s8, 1531
                  or           tp, t5, s1
                  auipc        a1, 499537
                  bgeu         gp, a1, 134f
134:              and          t1, t2, t4
                  slti         s4, gp, -1249
                  bltu         s10, s0, 137f
137:              slti         a3, s5, 1269
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            xor          a5, s6, a0
                  nop
                  nop
                  bne          s7, ra, sub_5_stack_p
sub_5_stack_p:    addi         s7, s7, -40
                  sw           t1, 4(s7)
                  andi         s4, sp, 1815
                  andi         a3, s0, 1688
                  slt          s6, a7, a6
                  auipc        s8, 910031
sub_5_1:          jal          t1, 9f
0:                jal          t0, 16f
1:                jal          t1, 18f
2:                jal          t1, 27f
3:                jal          gp, 22f
4:                jal          t1, 19f
5:                jal          ra, 3b
6:                jal          ra, 24f
7:                jal          a2, 12f
8:                jal          ra, 5b
9:                jal          ra, 11f
10:               jal          t1, 23f
11:               jal          t1, 26f
12:               jal          t0, 17f
13:               jal          ra, 25f
14:               jal          ra, 10b
15:               jal          ra, 6b
16:               jal          ra, 8b
17:               jal          t1, 0b
18:               jal          ra, 4b
19:               jal          ra, 20f
20:               jal          ra, 7b
21:               jal          ra, 15b
22:               jal          ra, 14b
23:               jal          t1, 2b
24:               jal          t0, 13b
25:               jal          t1, 1b
26:               jal          t1, 21b
27:               sltiu        s3, gp, 1063
sub_5_2:          jal          t1, 3f
0:                jal          a1, 8f
1:                jal          ra, 10f
2:                jal          t1, 1b
3:                jal          a4, 11f
4:                jal          t1, 7f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          t1, 2b
8:                jal          t1, 9f
9:                jal          s8, 12f
10:               jal          ra, 5b
11:               jal          t5, 6b
12:               jal          ra, 13f
13:               or           sp, t1, zero
sub_5_4:          jal          t1, 9f
0:                jal          t0, 8f
1:                jal          ra, 27f
2:                jal          gp, 22f
3:                jal          t1, 24f
4:                jal          a6, 15f
5:                jal          ra, 17f
6:                jal          ra, 23f
7:                jal          t5, 3b
8:                jal          ra, 21f
9:                jal          t1, 2b
10:               jal          ra, 0b
11:               jal          ra, 16f
12:               jal          ra, 19f
13:               jal          s3, 10b
14:               jal          ra, 20f
15:               jal          ra, 1b
16:               jal          ra, 12b
17:               jal          t4, 25f
18:               jal          ra, 14b
19:               jal          ra, 26f
20:               jal          ra, 4b
21:               jal          s3, 7b
22:               jal          t1, 5b
23:               jal          t6, 18b
24:               jal          ra, 6b
25:               jal          ra, 11b
26:               jal          ra, 13b
27:               nop
sub_5_0:          jal          t1, 10f
0:                jal          s4, 16f
1:                jal          t1, 19f
2:                jal          t0, 5f
3:                jal          ra, 0b
4:                jal          t0, 20f
5:                jal          ra, 4b
6:                jal          ra, 7f
7:                jal          s5, 12f
8:                jal          ra, 18f
9:                jal          t0, 22f
10:               jal          ra, 11f
11:               jal          t1, 21f
12:               jal          ra, 17f
13:               jal          ra, 6b
14:               jal          s3, 9b
15:               jal          ra, 13b
16:               jal          ra, 8b
17:               jal          ra, 1b
18:               jal          ra, 15b
19:               jal          ra, 2b
20:               jal          a5, 23f
21:               jal          ra, 14b
22:               jal          sp, 3b
23:               nop
sub_5_3:          jal          t1, 2f
0:                jal          ra, 16f
1:                jal          ra, 4f
2:                jal          t1, 0b
3:                jal          ra, 6f
4:                jal          ra, 8f
5:                jal          ra, 20f
6:                jal          t0, 1b
7:                jal          ra, 13f
8:                jal          s5, 11f
9:                jal          ra, 12f
10:               jal          ra, 3b
11:               jal          ra, 14f
12:               jal          t1, 5b
13:               jal          ra, 10b
14:               jal          ra, 15f
15:               jal          ra, 9b
16:               jal          a3, 19f
17:               jal          ra, 7b
18:               jal          ra, 21f
19:               jal          sp, 17b
20:               jal          s10, 18b
21:               jal          ra, 22f
22:               xori         a0, s10, -1117
                  sub          ra, s4, a6
                  bltu         s9, s3, 7f
                  lui          t0, 401092
                  sll          s1, a7, a4
                  nop
                  slli         a7, a0, 4
                  bge          s5, t2, 17f
7:                and          s8, t3, s10
                  addi         s4, a5, 1425
                  and          s3, a4, a7
                  xori         a4, a4, -1071
                  slti         s3, a3, -793
                  ori          s5, ra, -975
                  srli         s5, s11, 0
                  xor          a2, s1, zero
                  srai         s4, s6, 28
                  sltiu        t4, a2, 1552
17:               slli         t4, t6, 7
                  andi         a1, s10, -1465
                  sltiu        t1, a7, 1569
                  blt          tp, t3, 34f
                  add          s8, t0, a4
                  addi         s5, s2, 410
                  slli         zero, s11, 17
                  bgeu         t2, a1, 26f
                  sll          ra, s4, t2
26:               or           t5, t3, a7
                  addi         t0, zero, 99
                  auipc        s3, 830309
                  bgeu         a7, t6, 44f
                  sra          s11, a0, a3
                  bgeu         s5, tp, 36f
                  bgeu         t0, t6, 47f
                  lui          s6, 633722
34:               srl          s3, tp, s5
                  bne          zero, t6, 45f
36:               andi         tp, sp, -141
                  nop
                  add          s10, s4, gp
                  addi         a3, t1, 843
                  ori          s2, zero, -1319
                  add          s2, t2, a6
                  xor          ra, s5, s3
                  bltu         s3, t0, 50f
44:               auipc        a0, 67317
45:               blt          s4, s6, 56f
                  srli         a6, s8, 13
47:               andi         gp, s5, -1727
                  srli         t6, a7, 10
                  or           s9, s0, a3
50:               blt          a0, s8, 59f
                  addi         a2, a6, -1758
                  sll          a3, s1, a7
                  and          gp, t5, s4
                  xor          a1, a4, t0
                  slti         s0, a2, -1870
56:               sub          a5, tp, tp
                  sltu         a6, ra, s4
                  or           zero, t6, a7
59:               bltu         t6, s10, 67f
                  bge          t3, s5, 63f
                  and          sp, s8, s2
                  ori          t1, s9, 1942
63:               bgeu         t6, ra, 65f
                  sll          tp, t1, s8
65:               srli         a1, a2, 0
                  srl          zero, t5, a3
67:               slli         a5, zero, 28
                  ori          t6, s4, 440
                  beq          t4, t3, 75f
                  add          s0, gp, a6
                  lui          s10, 258389
                  nop
                  or           s10, sp, a7
                  bltu         s10, s7, 90f
75:               blt          s0, t0, 84f
                  lui          s8, 62368
                  ori          s10, s6, 1374
                  xori         gp, s6, -202
                  slli         t0, s6, 18
                  add          t0, t6, t0
                  slli         t0, tp, 26
                  and          s2, s6, a2
                  xor          s8, s6, t0
84:               auipc        a1, 931782
                  sltiu        sp, gp, -1996
                  sub          s4, s6, s11
                  nop
                  srl          s8, t6, s2
                  sll          s5, a2, s10
90:               slt          s4, a7, a3
                  sra          a5, a2, t4
                  andi         tp, zero, 391
                  sra          t6, a7, t0
                  slt          ra, a2, t0
                  bltu         tp, t4, 102f
                  sra          t1, zero, s3
                  auipc        s4, 891393
                  ori          s8, t2, 949
                  srli         t4, s4, 28
                  sub          t0, gp, a4
                  srli         a4, a5, 10
102:              andi         a3, a3, -1282
                  sub          s0, s4, gp
                  sltiu        a3, s5, 74
                  xor          t6, tp, a5
                  bge          a0, ra, 124f
                  srl          t4, t1, t0
                  add          a3, t0, a1
                  bgeu         tp, a7, 117f
                  bltu         s2, t1, 122f
                  sub          s2, sp, s11
                  bge          s3, t3, 123f
                  sra          s3, sp, a4
                  sra          ra, s10, sp
                  and          s0, s2, t5
                  bne          sp, t4, 120f
117:              sub          t1, s0, s5
                  slt          s1, s0, t3
                  lui          t6, 856524
120:              bgeu         a3, a0, 127f
                  beq          t3, a1, 138f
122:              srai         s4, s6, 26
123:              srai         sp, s7, 20
124:              bltu         s4, a1, 140f
                  sub          sp, t4, ra
                  blt          a7, s3, 127f
127:              nop
                  beq          zero, a4, 139f
                  blt          t2, s5, 137f
                  andi         s8, a2, 1092
                  sltu         a5, sp, t5
                  lui          a5, 115134
                  srli         s6, t2, 7
                  lui          a6, 1038112
                  sra          s4, a4, a7
                  lui          s8, 626124
137:              sra          a5, s2, s8
138:              slli         t5, s2, 17
139:              add          t6, s4, t4
140:              andi         gp, a1, -1661
                  nop
                  bge          t2, s6, 147f
                  sub          s11, a7, s0
                  srai         t5, s10, 8
                  sra          gp, t6, s11
                  srai         zero, s4, 18
147:              sltu         zero, s8, s5
                  ori          ra, a6, -109
                  srl          a5, a5, zero
                  srl          s10, t4, t1
                  sub          a2, t1, tp
                  ori          s8, s9, 193
                  sltiu        t5, s4, -768
                  nop
                  and          a5, s10, a6
                  srai         t0, zero, 25
                  sltiu        t0, s6, 765
                  slt          s4, a1, s2
                  sltiu        sp, s0, -846
                  srl          s8, s2, t0
                  slt          a2, s2, a4
                  sltu         tp, s6, t4
                  slti         s1, t0, 1062
                  sll          ra, a4, s4
                  add          a0, s9, gp
                  nop
                  or           t4, s4, gp
                  lui          s6, 362224
                  andi         s4, s11, 931
                  bge          t2, s2, 179f
                  bltu         a1, a6, 182f
                  xor          a0, a2, ra
                  bgeu         a1, a5, 178f
                  bgeu         t6, a1, 182f
                  beq          sp, t0, 189f
                  xori         s8, a5, -1478
                  srli         t0, t3, 8
178:              slti         tp, s7, -2027
179:              and          s6, s3, s11
                  nop
                  andi         s6, a3, -605
182:              nop
                  srl          s5, zero, s6
                  sltiu        s9, t4, -7
                  srai         a4, a7, 9
                  slli         a4, t1, 21
                  or           s10, a7, t6
                  srai         a5, s6, 24
189:              lui          s9, 825841
                  slt          a5, a1, a5
                  sra          a7, t6, a0
                  bltu         s1, t3, 207f
                  sll          a5, a6, t6
                  bltu         a0, a7, 202f
                  xor          s10, a1, s7
                  slti         s11, t6, 1751
                  addi         a2, s11, 1138
                  sra          ra, a3, s4
                  ori          s10, a6, 924
                  sltu         s2, a4, zero
                  beq          zero, t3, 213f
202:              add          s0, t3, t3
                  slt          a2, gp, s7
                  bgeu         t0, t2, 212f
                  slt          t0, s7, t1
                  nop
207:              ori          s6, a5, -44
                  ori          a2, a7, 1967
                  auipc        a2, 658520
                  addi         a6, a6, 1370
                  beq          t1, s11, 213f
212:              sltiu        a0, a6, 857
213:              andi         a4, s4, 819
                  sltiu        a6, a3, 311
                  bltu         s7, s1, 232f
                  bne          t2, tp, 232f
                  nop
                  sltiu        ra, t2, 634
                  slli         t0, gp, 21
                  sll          s5, t1, zero
                  andi         t1, a6, 1789
                  blt          gp, t6, 237f
                  andi         zero, t0, -364
                  or           s3, t0, zero
                  bltu         sp, t0, 231f
                  slti         t4, s8, -1798
                  bltu         t4, gp, 234f
                  bltu         gp, s0, 231f
                  xor          t1, s11, s10
                  slt          a6, t5, t3
231:              sltu         sp, sp, t4
232:              sub          t6, tp, a0
                  slli         t1, s10, 30
234:              beq          gp, t0, 238f
                  and          a0, s5, a3
                  add          t5, a0, t5
237:              bgeu         zero, a2, 243f
238:              xori         a5, t2, -1085
                  srai         s6, zero, 12
                  sltiu        t6, s7, -1997
                  sltiu        t1, a0, -274
                  bgeu         s6, t2, 253f
243:              sub          gp, s7, s8
                  srli         a6, t3, 12
                  nop
                  slt          t0, a0, a6
                  and          s10, a7, ra
                  nop
                  ori          s4, a0, -950
                  and          s2, a0, t3
                  slt          s8, s5, s5
                  nop
253:              bltu         tp, t2, 262f
                  or           t5, s11, s9
                  sltiu        zero, s6, 18
                  auipc        s9, 13309
                  xor          s5, a6, t2
                  andi         tp, a2, 1595
                  beq          a3, t6, 266f
                  sltiu        a5, s9, 966
                  beq          t2, tp, 271f
262:              slt          t5, a0, a5
                  sltiu        s2, t4, 1439
                  sra          t1, sp, tp
                  and          gp, t1, sp
266:              add          a1, s1, tp
                  sra          ra, s6, sp
                  addi         t5, gp, -102
                  slt          s2, sp, s7
                  bne          a0, s4, 272f
271:              beq          a2, ra, 272f
272:              auipc        s0, 493135
                  sra          s3, a0, t5
                  nop
                  sltiu        s10, zero, -1949
                  bge          s10, t1, 281f
                  lui          s10, 776168
                  sltiu        sp, t6, -1039
                  auipc        a7, 873506
                  xor          s8, a5, a6
281:              slt          s0, gp, t6
                  beq          tp, a0, 289f
                  sll          s9, tp, t4
                  lui          s0, 928640
                  srli         s9, a5, 2
                  slti         zero, s9, -1689
                  srai         t6, a5, 3
                  srai         s10, zero, 4
289:              or           s11, a4, s1
                  xori         t1, s1, -14
                  andi         a3, s10, -1325
                  add          s11, s8, s9
                  sltiu        t4, t6, -502
                  lw           t1, 4(s7)
                  andi         t0, a1, -464
                  sra          a1, s8, s6
                  addi         s7, s7, 40
                  ori          a4, ra, -1765
                  sra          t5, s3, s4
                  slti         s5, s9, 1040
                  sub          a3, zero, s10
                  slli         s6, s9, 0
                  slli         a0, tp, 29
                  sub          gp, t3, sp
437:              addi x3, x6, 1
437:              jalr x3, x3, 0
sub_4:            blt          zero, a0, sub_4_stack_p
sub_4_stack_p:    addi         s7, s7, -56
                  sw           t1, 4(s7)
                  and          ra, s8, a6
                  sll          s6, s9, s2
                  or           s8, tp, tp
                  srli         s8, s3, 30
                  slli         a0, t1, 26
                  add          s1, a1, a0
                  and          s11, a2, t0
sub_4_10:         jal          t1, 8f
0:                jal          ra, 6f
1:                jal          t4, 26f
2:                jal          t1, 21f
3:                jal          ra, 22f
4:                jal          ra, 15f
5:                jal          ra, 17f
6:                jal          a7, 5b
7:                jal          ra, 1b
8:                jal          t1, 24f
9:                jal          ra, 19f
10:               jal          tp, 11f
11:               jal          ra, 9b
12:               jal          ra, 18f
13:               jal          t1, 23f
14:               jal          t1, 27f
15:               jal          t1, 7b
16:               jal          ra, 28f
17:               jal          s2, 16b
18:               jal          t5, 20f
19:               jal          t1, 2b
20:               jal          ra, 0b
21:               jal          t5, 14b
22:               jal          ra, 29f
23:               jal          ra, 10b
24:               jal          ra, 12b
25:               jal          t1, 4b
26:               jal          t1, 13b
27:               jal          ra, 3b
28:               jal          ra, 25b
29:               slt          s0, t4, t4
sub_4_1:          jal          t1, 9f
0:                jal          t1, 2f
1:                jal          ra, 4f
2:                jal          ra, 11f
3:                jal          ra, 5f
4:                jal          ra, 6f
5:                jal          t5, 0b
6:                jal          ra, 8f
7:                jal          t1, 12f
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          ra, 3b
11:               jal          sp, 7b
12:               slti         s11, a6, -758
sub_4_7:          jal          t1, 3f
0:                jal          ra, 10f
1:                jal          ra, 14f
2:                jal          ra, 7f
3:                jal          t4, 13f
4:                jal          a4, 16f
5:                jal          t0, 8f
6:                jal          gp, 12f
7:                jal          ra, 4b
8:                jal          ra, 1b
9:                jal          ra, 2b
10:               jal          ra, 5b
11:               jal          t1, 9b
12:               jal          t1, 11b
13:               jal          ra, 0b
14:               jal          ra, 15f
15:               jal          ra, 6b
16:               andi         s11, a3, -831
sub_4_11:         jal          t1, 5f
0:                jal          sp, 21f
1:                jal          a2, 2f
2:                jal          t1, 22f
3:                jal          ra, 18f
4:                jal          a5, 3b
5:                jal          ra, 12f
6:                jal          ra, 15f
7:                jal          ra, 9f
8:                jal          ra, 11f
9:                jal          s9, 23f
10:               jal          sp, 13f
11:               jal          ra, 7b
12:               jal          ra, 6b
13:               jal          ra, 0b
14:               jal          s8, 16f
15:               jal          ra, 10b
16:               jal          t1, 17f
17:               jal          t1, 1b
18:               jal          a5, 20f
19:               jal          ra, 4b
20:               jal          ra, 14b
21:               jal          ra, 19b
22:               jal          t6, 8b
23:               xori         s3, s4, -849
sub_4_4:          jal          t1, 3f
0:                jal          t1, 12f
1:                jal          t6, 16f
2:                jal          ra, 13f
3:                jal          ra, 4f
4:                jal          s5, 15f
5:                jal          ra, 11f
6:                jal          s3, 2b
7:                jal          t0, 5b
8:                jal          t1, 7b
9:                jal          a6, 6b
10:               jal          ra, 17f
11:               jal          t1, 9b
12:               jal          ra, 14f
13:               jal          ra, 1b
14:               jal          a4, 10b
15:               jal          a2, 8b
16:               jal          ra, 0b
17:               sll          s9, a6, a3
sub_4_19:         jal          t1, 16f
0:                jal          a2, 23f
1:                jal          ra, 21f
2:                jal          ra, 7f
3:                jal          ra, 22f
4:                jal          ra, 2b
5:                jal          t5, 4b
6:                jal          ra, 0b
7:                jal          ra, 11f
8:                jal          tp, 10f
9:                jal          s8, 19f
10:               jal          t1, 12f
11:               jal          t1, 6b
12:               jal          ra, 5b
13:               jal          s10, 18f
14:               jal          ra, 1b
15:               jal          t5, 3b
16:               jal          t1, 17f
17:               jal          s4, 20f
18:               jal          ra, 9b
19:               jal          gp, 8b
20:               jal          ra, 14b
21:               jal          gp, 15b
22:               jal          t1, 13b
23:               ori          s2, a6, -2041
sub_4_16:         jal          t1, 9f
0:                jal          ra, 8f
1:                jal          a4, 10f
2:                jal          s8, 4f
3:                jal          s5, 2b
4:                jal          ra, 6f
5:                jal          s5, 15f
6:                jal          t1, 1b
7:                jal          a6, 5b
8:                jal          ra, 3b
9:                jal          s5, 13f
10:               jal          gp, 11f
11:               jal          ra, 12f
12:               jal          a2, 7b
13:               jal          a7, 14f
14:               jal          ra, 0b
15:               xor          t4, gp, s3
sub_4_22:         jal          t1, 11f
0:                jal          ra, 15f
1:                jal          t1, 14f
2:                jal          s3, 5f
3:                jal          a3, 17f
4:                jal          ra, 18f
5:                jal          t1, 9f
6:                jal          ra, 10f
7:                jal          ra, 12f
8:                jal          ra, 6b
9:                jal          t1, 3b
10:               jal          t1, 2b
11:               jal          t1, 7b
12:               jal          ra, 16f
13:               jal          ra, 19f
14:               jal          ra, 0b
15:               jal          t1, 22f
16:               jal          a2, 21f
17:               jal          t1, 20f
18:               jal          s2, 1b
19:               jal          t1, 8b
20:               jal          ra, 4b
21:               jal          a3, 13b
22:               auipc        zero, 362527
sub_4_17:         jal          t1, 7f
0:                jal          a6, 4f
1:                jal          t1, 8f
2:                jal          t1, 9f
3:                jal          ra, 13f
4:                jal          t6, 15f
5:                jal          ra, 6f
6:                jal          t1, 19f
7:                jal          t6, 16f
8:                jal          ra, 2b
9:                jal          ra, 14f
10:               jal          ra, 5b
11:               jal          ra, 17f
12:               jal          ra, 21f
13:               jal          ra, 10b
14:               jal          t1, 20f
15:               jal          a5, 18f
16:               jal          s8, 1b
17:               jal          s0, 12b
18:               jal          ra, 11b
19:               jal          t1, 0b
20:               jal          ra, 3b
21:               sub          a6, a5, a7
sub_4_12:         jal          t1, 8f
0:                jal          t1, 16f
1:                jal          t1, 6f
2:                jal          ra, 17f
3:                jal          t1, 13f
4:                jal          ra, 19f
5:                jal          a6, 0b
6:                jal          t1, 15f
7:                jal          ra, 9f
8:                jal          a3, 12f
9:                jal          t1, 14f
10:               jal          ra, 18f
11:               jal          ra, 1b
12:               jal          t1, 10b
13:               jal          t0, 2b
14:               jal          ra, 3b
15:               jal          ra, 5b
16:               jal          ra, 7b
17:               jal          t1, 20f
18:               jal          ra, 4b
19:               jal          ra, 11b
20:               addi         a7, ra, -196
sub_4_26:         jal          t1, 9f
0:                jal          t4, 15f
1:                jal          t1, 8f
2:                jal          ra, 17f
3:                jal          t1, 0b
4:                jal          t1, 16f
5:                jal          ra, 6f
6:                jal          t1, 12f
7:                jal          t4, 13f
8:                jal          t1, 7b
9:                jal          s3, 5b
10:               jal          t1, 3b
11:               jal          ra, 14f
12:               jal          t1, 4b
13:               jal          ra, 10b
14:               jal          ra, 2b
15:               jal          a3, 11b
16:               jal          ra, 1b
17:               slt          s4, s9, s2
sub_4_27:         jal          t1, 19f
0:                jal          t1, 7f
1:                jal          ra, 14f
2:                jal          ra, 16f
3:                jal          ra, 9f
4:                jal          ra, 12f
5:                jal          s2, 13f
6:                jal          ra, 15f
7:                jal          t1, 18f
8:                jal          ra, 20f
9:                jal          ra, 5b
10:               jal          t1, 4b
11:               jal          ra, 10b
12:               jal          t1, 6b
13:               jal          ra, 1b
14:               jal          t1, 8b
15:               jal          ra, 0b
16:               jal          t4, 17f
17:               jal          t1, 11b
18:               jal          ra, 3b
19:               jal          ra, 2b
20:               jal          tp, 21f
21:               nop
sub_4_3:          jal          t1, 1f
0:                jal          s9, 10f
1:                jal          ra, 11f
2:                jal          ra, 9f
3:                jal          a1, 5f
4:                jal          a7, 6f
5:                jal          ra, 7f
6:                jal          t1, 2b
7:                jal          ra, 13f
8:                jal          s4, 4b
9:                jal          ra, 12f
10:               jal          ra, 8b
11:               jal          s4, 0b
12:               jal          t1, 3b
13:               slt          s3, s8, a3
sub_4_15:         jal          t1, 19f
0:                jal          ra, 2f
1:                jal          ra, 15f
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          t1, 11f
5:                jal          ra, 4b
6:                jal          ra, 5b
7:                jal          tp, 14f
8:                jal          ra, 17f
9:                jal          ra, 20f
10:               jal          ra, 12f
11:               jal          ra, 22f
12:               jal          ra, 0b
13:               jal          ra, 3b
14:               jal          ra, 8b
15:               jal          s0, 16f
16:               jal          t1, 26f
17:               jal          t1, 27f
18:               jal          ra, 23f
19:               jal          ra, 24f
20:               jal          ra, 10b
21:               jal          ra, 25f
22:               jal          t1, 13b
23:               jal          ra, 9b
24:               jal          a5, 21b
25:               jal          s11, 18b
26:               jal          ra, 7b
27:               srli         sp, s2, 4
sub_4_13:         jal          t1, 24f
0:                jal          ra, 29f
1:                jal          ra, 28f
2:                jal          s9, 6f
3:                jal          ra, 17f
4:                jal          ra, 19f
5:                jal          ra, 1b
6:                jal          ra, 5b
7:                jal          ra, 23f
8:                jal          t1, 22f
9:                jal          ra, 12f
10:               jal          ra, 21f
11:               jal          ra, 14f
12:               jal          ra, 26f
13:               jal          s11, 18f
14:               jal          ra, 9b
15:               jal          ra, 4b
16:               jal          t1, 13b
17:               jal          ra, 15b
18:               jal          ra, 25f
19:               jal          t1, 10b
20:               jal          ra, 30f
21:               jal          ra, 7b
22:               jal          ra, 11b
23:               jal          ra, 20b
24:               jal          ra, 2b
25:               jal          ra, 8b
26:               jal          ra, 27f
27:               jal          ra, 3b
28:               jal          t4, 0b
29:               jal          a4, 16b
30:               slli         s11, s8, 17
sub_4_8:          jal          t1, 6f
0:                jal          ra, 16f
1:                jal          t1, 21f
2:                jal          s4, 12f
3:                jal          s5, 2b
4:                jal          ra, 13f
5:                jal          t4, 14f
6:                jal          ra, 7f
7:                jal          ra, 17f
8:                jal          ra, 9f
9:                jal          ra, 0b
10:               jal          ra, 4b
11:               jal          gp, 1b
12:               jal          ra, 11b
13:               jal          s6, 20f
14:               jal          s1, 19f
15:               jal          s10, 8b
16:               jal          t1, 10b
17:               jal          ra, 22f
18:               jal          t1, 23f
19:               jal          ra, 15b
20:               jal          t4, 3b
21:               jal          t6, 18b
22:               jal          t1, 5b
23:               andi         s0, ra, -1970
sub_4_18:         jal          t1, 3f
0:                jal          ra, 1f
1:                jal          t1, 6f
2:                jal          t1, 9f
3:                jal          ra, 10f
4:                jal          ra, 5f
5:                jal          ra, 8f
6:                jal          s1, 17f
7:                jal          a4, 4b
8:                jal          t0, 20f
9:                jal          ra, 19f
10:               jal          ra, 12f
11:               jal          ra, 14f
12:               jal          sp, 2b
13:               jal          ra, 24f
14:               jal          t1, 15f
15:               jal          ra, 13b
16:               jal          ra, 21f
17:               jal          t1, 18f
18:               jal          ra, 11b
19:               jal          ra, 23f
20:               jal          ra, 0b
21:               jal          t1, 25f
22:               jal          t1, 16b
23:               jal          sp, 7b
24:               jal          ra, 22b
25:               srai         s0, t4, 5
sub_4_0:          jal          t1, 2f
0:                jal          tp, 6f
1:                jal          ra, 11f
2:                jal          t1, 10f
3:                jal          ra, 8f
4:                jal          ra, 16f
5:                jal          t1, 0b
6:                jal          ra, 9f
7:                jal          ra, 15f
8:                jal          ra, 4b
9:                jal          s1, 14f
10:               jal          ra, 5b
11:               jal          t0, 12f
12:               jal          ra, 3b
13:               jal          s6, 1b
14:               jal          t1, 7b
15:               jal          ra, 13b
16:               sltiu        s2, a7, -128
sub_4_23:         jal          t1, 3f
0:                jal          a6, 1f
1:                jal          a1, 8f
2:                jal          s9, 20f
3:                jal          ra, 15f
4:                jal          t1, 22f
5:                jal          ra, 6f
6:                jal          ra, 23f
7:                jal          t1, 17f
8:                jal          t0, 7b
9:                jal          ra, 19f
10:               jal          a0, 5b
11:               jal          t1, 13f
12:               jal          a5, 9b
13:               jal          ra, 0b
14:               jal          ra, 12b
15:               jal          ra, 21f
16:               jal          s6, 4b
17:               jal          ra, 18f
18:               jal          t1, 16b
19:               jal          ra, 10b
20:               jal          t1, 14b
21:               jal          ra, 11b
22:               jal          ra, 2b
23:               xori         t5, s2, 1007
sub_4_5:          jal          t1, 2f
0:                jal          ra, 20f
1:                jal          t1, 12f
2:                jal          ra, 17f
3:                jal          a3, 14f
4:                jal          ra, 5f
5:                jal          ra, 8f
6:                jal          ra, 23f
7:                jal          t1, 24f
8:                jal          ra, 11f
9:                jal          ra, 25f
10:               jal          ra, 15f
11:               jal          t0, 7b
12:               jal          t1, 18f
13:               jal          sp, 10b
14:               jal          t1, 6b
15:               jal          ra, 16f
16:               jal          s0, 4b
17:               jal          t1, 3b
18:               jal          ra, 21f
19:               jal          ra, 13b
20:               jal          ra, 19b
21:               jal          t1, 9b
22:               jal          ra, 1b
23:               jal          a7, 0b
24:               jal          ra, 22b
25:               sra          gp, sp, a1
sub_4_9:          jal          t1, 16f
0:                jal          ra, 10f
1:                jal          t1, 5f
2:                jal          ra, 19f
3:                jal          t1, 8f
4:                jal          t5, 7f
5:                jal          ra, 15f
6:                jal          ra, 17f
7:                jal          s11, 11f
8:                jal          ra, 20f
9:                jal          t0, 13f
10:               jal          s2, 9b
11:               jal          ra, 3b
12:               jal          ra, 6b
13:               jal          ra, 2b
14:               jal          ra, 12b
15:               jal          t1, 18f
16:               jal          t1, 0b
17:               jal          ra, 4b
18:               jal          ra, 14b
19:               jal          a4, 1b
20:               srli         a2, ra, 15
sub_4_21:         jal          t1, 10f
0:                jal          ra, 7f
1:                jal          ra, 4f
2:                jal          a5, 9f
3:                jal          t0, 22f
4:                jal          ra, 23f
5:                jal          ra, 19f
6:                jal          ra, 25f
7:                jal          ra, 11f
8:                jal          ra, 28f
9:                jal          a3, 21f
10:               jal          ra, 17f
11:               jal          a7, 15f
12:               jal          s11, 0b
13:               jal          s0, 20f
14:               jal          t1, 3b
15:               jal          ra, 16f
16:               jal          ra, 5b
17:               jal          t4, 26f
18:               jal          t1, 1b
19:               jal          ra, 8b
20:               jal          ra, 18b
21:               jal          ra, 27f
22:               jal          ra, 6b
23:               jal          ra, 2b
24:               jal          t1, 13b
25:               jal          a1, 12b
26:               jal          ra, 24b
27:               jal          ra, 14b
28:               andi         a7, a6, 1524
                  slli         a7, s1, 6
                  sub          s11, a6, s6
                  lui          a7, 471404
                  bltu         s0, s1, 15f
                  slti         t6, a4, 1963
                  sll          a4, s5, s7
                  slli         tp, a4, 26
                  sub          s11, a5, zero
                  slti         gp, zero, -966
                  srl          a0, t6, t3
                  andi         tp, t4, -548
                  bge          s9, ra, 17f
                  srai         t6, a1, 19
                  srl          sp, s2, t6
                  srli         t1, gp, 14
15:               xor          gp, s7, a3
                  and          t6, ra, a3
17:               addi         a1, t1, 1682
                  and          a6, s0, s3
                  bgeu         s0, s2, 32f
                  xori         a3, s10, 1600
                  slti         s1, s2, 956
                  slt          s8, s4, s5
                  sltiu        a0, s5, 1301
                  add          a6, a5, s5
                  bne          s5, t1, 34f
                  slli         sp, tp, 3
                  sub          t1, gp, t1
                  andi         s5, ra, -941
                  nop
                  bge          a7, a0, 31f
31:               sltiu        s2, s10, 276
32:               xor          tp, t1, s1
                  or           s3, s2, s9
34:               xori         s2, s3, -520
                  slli         t0, s2, 14
                  blt          s11, t2, 38f
                  sra          a0, s11, s11
38:               xori         s4, sp, -283
                  slli         s8, t3, 11
                  srli         s9, a3, 29
                  srl          s0, gp, t2
                  beq          t4, t3, 54f
                  sltiu        t6, a6, 739
                  xori         s3, s3, 1157
                  slti         t5, t1, 750
                  auipc        s0, 640601
                  bne          a3, a7, 59f
                  bge          tp, t3, 62f
                  bne          s5, s4, 57f
                  slt          a0, s6, a5
                  srl          t1, s3, tp
                  srl          a3, s2, s6
                  bne          a2, s3, 61f
54:               xori         t0, a0, -1198
                  slt          s4, a1, s3
                  srai         s5, s6, 14
sub_4_2:          jal          t1, 10f
0:                jal          t1, 12f
1:                jal          s5, 2f
2:                jal          ra, 8f
3:                jal          t0, 4f
4:                jal          t6, 7f
5:                jal          a0, 3b
6:                jal          ra, 11f
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          t1, 5b
10:               jal          a3, 9b
11:               jal          s5, 1b
12:               xor          s1, t0, s1
57:               sll          s0, s8, t6
                  nop
59:               xori         a3, a1, -612
                  addi         a0, t6, -781
61:               add          a2, sp, zero
62:               add          s11, zero, t2
                  or           t0, a1, a4
                  bge          s8, s2, 82f
                  sra          t5, s11, s4
                  and          a4, s7, s9
                  sltu         gp, s10, a6
                  and          t0, s10, zero
                  sltu         s0, s6, a0
sub_4_20:         jal          t1, 4f
0:                jal          t0, 1f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          ra, 10f
4:                jal          ra, 13f
5:                jal          t1, 0b
6:                jal          ra, 5b
7:                jal          t1, 12f
8:                jal          ra, 6b
9:                jal          s8, 8b
10:               jal          ra, 11f
11:               jal          ra, 14f
12:               jal          t1, 2b
13:               jal          t1, 7b
14:               add          a6, s7, s5
                  nop
                  slli         s0, t0, 23
                  sll          tp, s0, s1
                  xor          zero, s5, t4
                  srai         a5, s9, 22
                  bne          s6, s5, 92f
                  nop
                  add          s2, gp, a2
                  slt          a3, sp, s0
                  lui          s2, 573469
                  slti         a2, t3, -894
                  add          t4, s0, s7
82:               andi         s1, sp, -1211
                  slti         s0, s5, 1775
                  and          s4, a0, t5
                  auipc        s8, 915354
                  xori         a1, gp, 1818
                  sub          s4, gp, a7
                  and          a4, s4, a2
                  slt          tp, s7, t0
                  andi         a0, s2, 2
                  and          s10, s0, t3
92:               andi         s11, tp, -1965
                  or           s1, s4, s0
                  nop
                  bge          ra, s1, 106f
                  and          s4, s6, zero
                  or           a3, t2, a7
                  nop
                  addi         s4, gp, -715
                  beq          s3, t4, 106f
                  and          s3, s10, a4
                  xori         gp, s8, 840
                  lui          gp, 800067
                  srli         s10, s2, 29
                  bge          ra, s5, 107f
106:              srai         t6, s4, 12
107:              or           s4, s5, s0
                  bltu         a7, t4, 109f
109:              blt          s0, t3, 117f
                  or           a4, t0, t2
                  srl          t5, s5, a0
                  andi         s0, t3, 1386
                  slli         s6, gp, 12
                  nop
                  bltu         t6, ra, 124f
                  xor          s8, t4, s10
117:              bltu         s7, s5, 133f
                  or           gp, a2, a3
                  bge          a5, a0, 136f
                  and          s5, a3, s1
                  blt          s3, s5, 130f
                  and          s5, a3, s0
                  srli         s6, ra, 28
124:              add          zero, tp, t2
                  bgeu         ra, zero, 145f
                  sub          s0, t0, t3
                  bltu         gp, t5, 137f
                  slti         t1, t4, 283
                  sra          s10, s5, s7
130:              sltiu        s1, t2, -890
                  slti         sp, s1, -1279
                  addi         t4, t2, 326
133:              add          gp, s5, t5
                  blt          a5, a3, 141f
                  addi         t1, s9, -1547
136:              andi         tp, zero, -1077
137:              slli         s4, s5, 5
                  ori          a0, t3, -211
                  lui          s11, 1046304
                  add          s3, s8, s6
141:              xori         t4, s5, 1145
                  sub          ra, t1, a2
                  blt          tp, s11, 155f
                  sll          s9, ra, a6
145:              srli         sp, a5, 1
                  bge          a5, a3, 154f
                  sra          gp, s3, s10
                  sltu         t6, sp, t3
                  slti         s11, t2, 731
                  ori          zero, s4, -208
                  bne          t4, ra, 153f
                  xori         t0, t5, -615
153:              slli         a1, s4, 30
154:              add          ra, t1, t5
155:              addi         s4, gp, -218
                  bge          s7, s10, 172f
                  srai         s2, s2, 11
                  sltu         t6, s4, t2
                  sra          ra, t1, a3
                  xori         t4, ra, 589
                  srai         a5, sp, 15
                  or           a2, a2, s11
                  srl          zero, t3, t6
                  slli         gp, s10, 13
                  xori         s9, a3, 91
                  and          a3, gp, s3
                  auipc        s6, 564148
                  nop
                  lui          s9, 467534
                  auipc        gp, 791567
                  bge          a2, sp, 182f
172:              slti         ra, a1, -1440
                  beq          s6, s1, 190f
                  ori          gp, a7, 1023
                  bgeu         t3, t5, 191f
                  addi         s6, a1, -1640
                  blt          a7, s8, 193f
                  addi         a6, a7, 1489
                  bne          tp, a4, 187f
                  bgeu         s5, s10, 191f
                  sll          s1, a0, ra
182:              bne          s10, s1, 183f
183:              slli         a0, a3, 22
                  sltiu        zero, t4, -887
                  add          s4, s4, a3
                  sra          s1, t1, s6
187:              bgeu         s0, gp, 195f
                  srl          t6, a4, s4
                  slti         s6, a6, 1748
190:              xor          gp, t1, s9
191:              srai         sp, s6, 23
                  slli         s5, t0, 6
193:              bltu         s7, a7, 205f
                  add          a0, s6, a0
195:              sltiu        s11, t6, -984
                  sll          s1, s7, zero
                  slli         gp, t4, 9
                  sltu         s11, t3, s9
                  beq          ra, a6, 201f
                  bge          tp, s0, 201f
201:              beq          a1, s5, 210f
                  addi         s9, t4, 890
                  slt          a2, s0, s5
                  blt          s11, tp, 217f
205:              sll          a1, s6, a1
                  addi         s2, a7, -1173
                  bgeu         a1, t3, 218f
                  lui          s11, 883422
                  slti         gp, sp, -511
210:              bgeu         s4, gp, 222f
sub_4_6:          jal          t1, 3f
0:                jal          ra, 13f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          t1, 11f
4:                jal          ra, 23f
5:                jal          s0, 9f
6:                jal          ra, 22f
7:                jal          sp, 2b
8:                jal          ra, 5b
9:                jal          ra, 1b
10:               jal          t1, 19f
11:               jal          ra, 21f
12:               jal          t1, 17f
13:               jal          a5, 7b
14:               jal          t1, 0b
15:               jal          t1, 6b
16:               jal          t1, 14b
17:               jal          ra, 15b
18:               jal          t1, 4b
19:               jal          ra, 16b
20:               jal          t1, 18b
21:               jal          s0, 8b
22:               jal          t1, 20b
23:               ori          s2, s8, 691
                  srl          sp, t5, s6
                  bgeu         t3, s4, 230f
                  sub          s6, t1, a6
                  nop
                  sltiu        tp, a4, -1871
                  addi         ra, s2, -413
217:              slli         s11, a6, 2
218:              sltu         s11, zero, ra
                  beq          s4, a2, 225f
                  sll          s10, s11, a0
                  sltiu        s9, t2, 898
222:              andi         ra, t1, -1043
                  srli         a3, a5, 6
                  beq          s0, a6, 233f
225:              bge          t2, s1, 227f
                  add          ra, t2, s3
227:              srai         a4, t5, 22
                  bgeu         t6, sp, 248f
                  srl          t4, a6, gp
230:              slt          s2, a3, a4
                  bge          t0, ra, 233f
                  bgeu         t6, s7, 244f
233:              sltiu        s3, t6, -721
                  blt          t3, t0, 246f
                  bne          s0, t0, 244f
                  sra          a3, t1, t5
                  sltiu        a6, t4, 694
                  sub          a6, s6, s11
                  lui          t6, 790422
                  blt          s7, t6, 247f
sub_4_24:         jal          t1, 9f
0:                jal          a2, 15f
1:                jal          t1, 21f
2:                jal          ra, 14f
3:                jal          tp, 16f
4:                jal          t5, 24f
5:                jal          a3, 19f
6:                jal          gp, 23f
7:                jal          t1, 0b
8:                jal          a7, 4b
9:                jal          ra, 6b
10:               jal          t1, 8b
11:               jal          a3, 1b
12:               jal          ra, 2b
13:               jal          ra, 20f
14:               jal          t1, 17f
15:               jal          a0, 22f
16:               jal          ra, 13b
17:               jal          ra, 7b
18:               jal          ra, 12b
19:               jal          t1, 11b
20:               jal          ra, 18b
21:               jal          sp, 3b
22:               jal          ra, 10b
23:               jal          ra, 5b
24:               addi         gp, s7, 1607
                  bgeu         s4, s8, 251f
                  sltu         t4, a3, sp
                  bge          s3, t0, 260f
244:              and          t5, s0, a2
                  andi         t6, s7, -1254
246:              slti         s2, gp, -1199
247:              or           tp, s11, sp
248:              addi         a7, a6, -159
                  addi         t1, s11, 955
                  srl          s1, s2, gp
251:              slt          a1, t4, t2
                  bltu         t5, a4, 258f
                  auipc        t5, 59360
                  sltu         t6, a5, s9
                  bgeu         a1, a1, 269f
                  bgeu         zero, s7, 264f
                  bge          a0, s10, 265f
258:              ori          t6, t6, 122
                  blt          a2, s6, 265f
260:              blt          t6, s5, 270f
                  bge          a2, a2, 269f
                  ori          a0, s7, 1789
                  auipc        s3, 631869
264:              blt          s9, a5, 271f
265:              nop
                  bltu         s8, gp, 272f
                  or           s8, t0, t5
                  slli         t4, s11, 1
269:              ori          s6, s6, -1388
270:              srl          a4, s11, a3
271:              bltu         s5, s11, 272f
272:              addi         s6, a4, -613
                  xor          a5, a4, s0
                  bne          s6, s4, 276f
                  or           a6, a3, t4
276:              bge          a5, s3, 288f
                  addi         a1, s10, 2025
                  bne          a5, t2, 286f
                  bne          a6, a3, 295f
                  xori         s1, s11, -1952
                  sltiu        a0, s9, -1530
                  bltu         a6, ra, 294f
                  sra          t1, a7, a6
                  xori         a3, a2, -1577
                  addi         s11, s4, -1548
286:              auipc        t5, 762553
                  addi         s2, s6, 1077
288:              addi         a6, sp, -475
                  nop
                  nop
                  ori          s3, s8, 1742
                  sltu         t4, s8, s3
                  srl          s0, s3, a7
294:              slli         s10, s9, 25
295:              bge          gp, t0, 296f
296:              bltu         s11, s7, 313f
                  bne          t2, s3, 305f
                  or           t5, s1, s5
                  sltiu        a1, s6, -353
                  beq          s1, a5, 316f
                  or           s8, s0, gp
                  lui          a0, 908809
                  bne          s6, t0, 305f
                  sra          s1, s4, sp
305:              sll          s2, s2, s3
                  srl          s6, s11, t3
                  beq          sp, s9, 309f
                  andi         t5, s7, 741
309:              ori          s6, t1, -1477
                  sltiu        s6, ra, -815
                  sltiu        a0, s1, -750
                  nop
313:              bge          t4, a4, 324f
                  slti         tp, s11, 680
                  slli         s10, a1, 9
316:              slti         sp, a5, -149
                  blt          s3, a6, 334f
                  sub          s10, ra, sp
                  sll          a6, a3, s5
                  slli         a2, s2, 10
                  sra          zero, a2, a5
                  slt          a7, s0, tp
                  srl          a5, tp, s8
324:              srai         t6, a2, 16
                  auipc        t1, 78467
                  blt          s10, t2, 338f
                  slli         a5, t2, 13
                  xor          tp, t4, s1
                  sll          s1, a4, a1
                  srai         s1, s4, 24
                  nop
                  sltu         tp, gp, s0
                  add          sp, a5, t6
334:              lui          s10, 263208
                  slli         t5, sp, 28
                  addi         zero, s6, -724
                  slt          s9, a5, t5
338:              sltiu        t6, a7, -173
                  slt          a6, a2, tp
                  srl          a2, s10, ra
                  sra          s4, s5, t5
                  ori          s9, a6, 211
                  addi         s10, s5, 1676
                  sll          s0, s7, s10
                  ori          s11, a4, -306
                  srai         s2, s1, 24
                  nop
                  blt          t1, s8, 357f
                  lui          ra, 842460
                  sll          gp, a0, a7
                  xori         s5, t6, 1627
                  srli         t1, s8, 0
                  andi         s9, s6, -1220
                  sltiu        s1, t3, -187
                  sub          a4, t0, s2
                  sra          s10, s1, s7
357:              beq          s3, s2, 377f
                  srli         s9, s10, 16
                  bge          s1, s1, 368f
                  srai         s11, gp, 8
                  slli         t5, t6, 24
                  srl          a7, a7, a0
                  slti         s9, ra, 1081
                  xor          s10, gp, sp
                  sltiu        a5, s0, 1743
                  sltiu        s1, s1, -1788
                  srli         a2, a6, 25
368:              and          s2, a7, gp
                  nop
                  bge          t1, s4, 383f
                  bltu         t4, sp, 383f
                  ori          a5, a2, 785
                  or           t6, t0, sp
                  sltiu        sp, s4, 672
                  or           a1, a5, t2
                  srai         ra, t3, 14
377:              srl          s10, t4, s10
                  srli         ra, ra, 23
                  and          s1, tp, a0
                  or           s0, t6, s3
                  lui          s0, 171841
                  bge          s4, s3, 400f
383:              sltiu        s3, a1, 735
                  slti         s8, t5, -882
                  sll          a2, gp, t0
                  nop
                  xori         zero, s5, 521
                  blt          s11, a0, 402f
                  or           a2, t6, s11
                  bltu         t3, a5, 401f
                  sra          a3, a5, a3
                  auipc        s3, 47965
                  blt          t1, t6, 402f
                  sub          s8, tp, ra
                  addi         a3, gp, -535
                  srai         ra, s4, 21
                  sltu         a7, sp, s2
                  sub          s0, a3, zero
                  auipc        s8, 103941
400:              slli         a4, t2, 12
401:              lui          s2, 489993
402:              xori         s0, s1, 1675
                  auipc        a1, 766032
                  auipc        s9, 903208
                  srai         s10, zero, 17
                  addi         s4, a0, -110
                  bgeu         s8, s1, 415f
                  xor          s2, t1, t6
                  sltu         s8, s0, s3
                  and          t5, a3, s11
                  slt          s1, a3, gp
                  add          s3, t2, s11
                  srli         s1, t6, 0
                  sra          a0, t6, s0
415:              blt          s4, a0, 423f
                  bltu         t2, a4, 422f
                  srai         zero, tp, 28
                  nop
                  sra          a5, a2, t3
                  sub          gp, t5, s6
                  srai         s8, s4, 22
422:              bltu         t2, a4, 439f
423:              and          zero, a2, s3
                  sra          t4, tp, s5
                  bge          s8, a0, 434f
                  sltiu        s9, s9, -1062
                  sub          t4, s7, a2
                  ori          tp, t1, -644
                  bltu         zero, a5, 431f
                  sra          a5, s9, t2
431:              slli         s2, s2, 15
                  bge          s11, a2, 444f
                  slli         s4, a2, 26
434:              sra          s9, a6, t4
                  slli         s8, s4, 31
                  sub          zero, a5, s8
                  sub          t5, sp, t1
                  ori          s1, s9, 494
439:              bge          a7, a3, 448f
                  sra          s9, s5, a4
                  srli         t4, s2, 20
                  blt          sp, tp, 449f
                  bgeu         s2, s1, 455f
444:              add          t1, s5, s2
                  or           a1, a7, a0
                  slti         t6, ra, 1753
                  andi         a2, s6, -1543
448:              andi         a0, t2, 276
449:              and          s11, s5, a6
                  srai         t0, t1, 21
                  auipc        a7, 938763
                  sll          a7, zero, s4
                  slti         a1, zero, 760
                  slti         sp, a6, 354
455:              lui          zero, 887169
                  bne          s11, a2, 457f
457:              blt          s10, a6, 471f
                  bltu         s9, t5, 459f
459:              bge          s1, s7, 461f
                  and          a0, sp, t6
461:              sll          a2, a7, zero
                  bne          s6, sp, 474f
                  sltu         s0, t6, tp
                  sltiu        a2, a7, 354
                  andi         gp, s0, 1149
                  xor          zero, s2, gp
                  bgeu         t3, s8, 485f
                  sltu         t1, t3, a0
                  andi         s8, ra, -1876
                  sltu         t0, a3, sp
471:              xor          t4, a1, s9
                  bgeu         a6, s0, 492f
                  slli         a6, tp, 14
474:              andi         t4, s10, 1337
                  srl          a6, t5, s3
                  srli         zero, s9, 11
                  beq          t0, a6, 479f
                  sra          s6, gp, sp
479:              srli         s1, s3, 2
                  nop
                  bltu         a1, t4, 492f
                  andi         t4, s11, 1634
                  addi         t0, zero, -1654
                  srli         a4, s1, 1
485:              bne          sp, s6, 495f
                  and          s5, a2, t5
                  xor          a1, t6, s10
                  beq          s6, a5, 499f
                  blt          a3, a7, 506f
                  or           a2, a7, a6
                  auipc        t5, 160444
492:              lui          a7, 600185
                  bge          ra, gp, 501f
                  bgeu         a5, t4, 502f
495:              blt          tp, t4, 503f
                  sltiu        a2, a4, 1311
                  bne          s4, s6, 513f
                  and          t1, a6, zero
499:              sra          a5, a1, s9
                  srai         s4, a2, 30
501:              sltiu        a1, a6, -1375
502:              slt          s11, s10, t1
503:              blt          s7, t3, 509f
                  sll          a6, s5, s7
                  add          t6, t3, s0
506:              and          s6, s7, s3
                  slli         a7, t5, 19
                  bge          a1, s2, 524f
509:              andi         a4, a4, -1372
                  sub          a2, a1, t2
                  slt          s6, a0, a0
                  sltiu        a2, t3, -1953
513:              beq          s8, s9, 522f
                  and          s9, sp, a6
                  or           s9, s10, s6
                  nop
                  auipc        s11, 769594
                  sll          a2, s6, s9
                  and          a6, s4, t3
                  bgeu         t2, t2, 533f
                  and          s5, a1, s8
522:              lui          s11, 626930
                  xor          s0, s8, t2
524:              lui          tp, 707251
                  ori          tp, t5, 88
                  beq          s10, a6, 538f
                  xori         zero, t2, 1115
                  bne          s6, sp, 539f
                  ori          t0, s2, -2028
                  sub          a6, a0, gp
                  slt          s3, s11, t1
                  andi         s6, s5, 1429
533:              bge          s0, a2, 542f
                  srli         s11, a2, 4
                  slt          a5, t4, sp
                  slli         t6, t1, 5
                  blt          s5, a6, 539f
538:              blt          s6, t2, 550f
539:              xori         a4, ra, 667
                  nop
                  nop
542:              sll          a7, t5, s5
                  srli         a1, t3, 24
                  auipc        a5, 409283
                  lui          a3, 117394
                  bge          s7, t5, 552f
                  xor          s6, s3, s7
                  sltu         sp, a2, tp
                  slt          a3, tp, s7
550:              and          a2, a4, s10
                  ori          a1, t0, -1031
552:              bgeu         s7, gp, 554f
                  blt          t3, gp, 559f
554:              beq          s1, s0, 562f
                  sll          t1, t6, tp
                  sltu         a3, s1, t4
                  andi         a7, t3, -323
                  beq          t5, s3, 567f
559:              bge          s6, t0, 571f
                  xori         a6, a3, -1127
                  and          t0, s5, a4
562:              ori          s11, a5, 971
                  bge          a6, s1, 572f
                  sll          s2, a0, s2
                  add          a5, s4, a4
                  bne          s2, s3, 579f
567:              sra          a3, s5, t5
                  bne          sp, s4, 579f
                  xor          s5, s4, t4
                  lui          t1, 68011
571:              bltu         ra, s5, 588f
572:              blt          t6, t0, 584f
                  andi         t4, t0, 935
                  slt          ra, a5, s2
                  sltiu        t6, t0, -1264
                  srai         t1, t4, 25
                  add          t1, t4, t1
                  andi         a2, t2, 230
579:              lui          s0, 954418
                  slli         s4, s8, 15
                  add          a5, s11, a0
                  beq          ra, a5, 598f
                  srli         a4, s3, 24
584:              bltu         s6, s7, 598f
                  or           s2, s10, a1
                  srli         t0, s2, 18
                  xor          t0, s0, t2
588:              auipc        s9, 356896
                  sltiu        a4, sp, 1078
                  sra          s4, s7, a6
                  lui          a5, 235437
                  sltu         t1, s9, s10
                  bgeu         s3, s7, 594f
594:              srl          s10, t4, a0
                  bge          s9, a7, 605f
                  srl          t5, a5, gp
                  slli         a5, a6, 13
598:              slli         sp, sp, 2
                  srai         s10, a6, 26
                  bgeu         s0, a5, 620f
                  addi         s3, s5, 1207
                  slt          s5, s1, a6
                  sra          s2, t4, s4
                  srli         s9, gp, 6
605:              xor          t4, tp, a1
                  blt          a6, a2, 614f
                  lui          a5, 146473
                  ori          sp, s3, -675
                  bne          t0, s4, 627f
                  srl          t4, zero, sp
                  sltiu        a1, t0, 965
                  sltu         s11, a6, t0
                  srli         ra, a4, 7
614:              xori         s9, s2, -1774
                  beq          s0, sp, 617f
                  lui          t5, 871952
617:              bltu         s11, t5, 624f
                  ori          a5, s8, -1914
                  xor          tp, t6, gp
620:              addi         a3, s11, -372
                  srl          tp, a4, s4
                  slt          sp, gp, t1
                  slli         s2, a5, 12
624:              xor          s10, s10, a2
                  nop
                  srli         t5, ra, 10
627:              bgeu         t6, ra, 643f
                  bne          t2, s3, 629f
629:              bltu         a1, s11, 637f
                  slti         s4, tp, 1162
                  sltu         t4, t1, s3
                  beq          a1, a1, 644f
                  lui          t4, 590942
                  addi         sp, zero, -1548
                  srli         s8, tp, 8
                  bgeu         s4, a3, 644f
637:              sub          s8, t1, ra
                  xori         t5, a6, 1243
                  srai         ra, s5, 13
                  xor          s11, s0, gp
                  lui          s8, 116146
                  slti         s3, a6, -1471
643:              srai         s11, a7, 6
644:              or           a0, a6, a3
                  sub          t0, ra, s8
                  auipc        sp, 863761
                  sub          t6, t6, s5
                  slt          gp, a4, s5
                  and          t5, t3, s11
                  or           a5, s6, a3
                  sll          s0, t4, s2
                  bge          s0, s0, 669f
                  add          a4, t6, a4
                  xori         s10, gp, 604
                  sub          t6, s7, t6
                  slti         zero, a6, -27
                  xor          a1, s2, s6
                  srl          s4, s10, s8
                  beq          s5, t5, 670f
                  srai         t0, s11, 25
                  sll          t1, a6, a4
                  sll          s10, s0, s9
                  srai         a6, a2, 30
                  sra          a4, t5, s5
                  sltiu        t1, a7, 705
                  addi         a7, a4, -1352
                  bne          s7, t6, 687f
                  slt          a1, t2, a5
669:              lui          t0, 330006
670:              or           a2, sp, t4
                  nop
                  sltu         s10, s7, a1
                  slti         s1, a1, -199
                  slti         tp, s5, -1507
                  slli         a7, s4, 8
                  sub          a3, a1, sp
                  andi         s8, a3, 150
                  bge          t0, s9, 680f
                  sra          s6, s10, s1
680:              lui          gp, 856184
                  slt          ra, sp, a1
                  bgeu         s7, sp, 691f
                  xori         tp, a6, 1324
                  blt          t6, s10, 692f
                  add          s2, a4, a0
                  bgeu         a1, a6, 698f
687:              sltiu        s10, a2, -1616
                  slt          s4, a6, tp
                  and          t1, a4, s6
                  bge          a5, s4, 697f
691:              sltiu        t6, s10, -1291
692:              sltiu        a3, s8, -1962
                  and          s1, a6, a5
                  slt          a2, s5, s3
                  sra          sp, a2, t4
                  and          a4, a6, a1
697:              lui          s1, 563491
698:              srai         t4, a6, 7
                  or           s9, t1, s0
                  slti         a1, s2, 786
                  sltiu        zero, s2, -809
                  add          zero, s4, sp
                  or           s9, t1, s0
                  sll          s0, sp, a1
                  srai         sp, s9, 2
                  xor          tp, s2, t0
                  sltiu        s10, s3, 1767
                  or           sp, s5, s7
                  sll          a6, t5, a7
                  slti         t4, s1, -348
                  beq          a1, t5, 724f
                  bgeu         ra, s7, 729f
                  add          a6, s1, t3
                  srai         s4, a2, 27
                  xori         s8, s5, -1837
                  or           zero, t3, s4
                  sra          s6, t4, a5
                  add          a3, s6, t0
                  ori          s10, a0, 1304
                  slti         s3, a4, 695
                  beq          gp, ra, 723f
                  bge          s2, a3, 723f
723:              ori          t5, a5, -1846
724:              xori         s0, t6, -224
                  bltu         s1, ra, 734f
                  slti         s0, t2, -433
                  slti         a4, t2, -24
                  sltu         a2, s10, gp
729:              srli         a6, s5, 31
                  xori         t5, s0, -868
                  xor          a7, t3, t2
                  blt          a0, a7, 749f
                  sub          a1, t2, s6
734:              xori         a3, s8, -1631
                  bgeu         a1, s3, 753f
sub_4_29:         jal          t1, 8f
0:                jal          ra, 9f
1:                jal          t4, 7f
2:                jal          ra, 4f
3:                jal          a0, 0b
4:                jal          t6, 3b
5:                jal          s0, 1b
6:                jal          a2, 2b
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          ra, 5b
10:               auipc        t1, 1042336
                  lui          s5, 995484
                  sltiu        sp, s4, -208
                  auipc        s0, 232246
                  srli         a4, a3, 1
                  bgeu         t6, a7, 756f
                  srl          s10, s7, a1
                  nop
                  sra          s11, a1, a7
                  srl          s1, a2, a0
                  bltu         t5, ra, 757f
                  slti         s1, ra, 868
                  sll          s8, a5, sp
                  or           a5, a6, tp
749:              xor          a1, s1, s4
                  sub          s8, t5, s11
                  srai         a2, s10, 8
                  xori         a2, a2, -868
753:              andi         a1, s1, 784
                  andi         t4, a0, -1813
                  nop
756:              srli         s1, s10, 31
757:              xor          ra, t0, a3
                  slli         ra, t1, 13
                  slti         a0, sp, 1119
                  bne          a2, s8, 766f
                  blt          t0, zero, 773f
                  sra          sp, sp, a3
                  beq          s1, a1, 765f
                  srli         a5, t3, 7
765:              blt          a3, t4, 781f
766:              srl          a3, s4, t3
                  srl          s11, a2, zero
                  srli         a2, s5, 15
                  ori          ra, sp, -1747
                  bltu         s4, a0, 771f
771:              or           zero, s5, zero
                  bne          a0, tp, 783f
773:              sltu         sp, s7, s8
                  addi         s2, s3, 1722
                  bltu         tp, s6, 783f
                  bltu         s3, s10, 788f
                  addi         s11, t5, 1709
                  nop
                  bne          ra, sp, 785f
                  lui          t6, 707219
781:              bge          a6, s2, 791f
                  srl          s5, s4, s8
783:              slt          gp, s7, t5
                  srl          s6, t3, t2
785:              bge          s2, s1, 793f
                  and          s0, t3, a2
                  beq          t3, t4, 796f
788:              srli         tp, s7, 21
                  or           s5, a2, s6
                  slt          s4, a7, t1
791:              bne          s7, s4, 805f
                  sll          s11, s5, gp
793:              slti         s6, s3, -496
                  or           s6, a1, a2
                  srl          s6, a6, s3
796:              bltu         s6, zero, 804f
                  sll          gp, t5, s10
                  bltu         s4, s10, 805f
                  srai         t4, s2, 22
                  sll          a4, s0, s8
                  slti         t1, sp, -485
                  sll          ra, a4, zero
                  andi         zero, a4, -155
804:              sltu         a3, s7, a0
805:              slti         sp, s1, 764
                  sltiu        s1, s5, 1143
                  sra          a6, s2, t2
                  srl          t1, t2, s3
                  srli         a0, s1, 7
                  blt          s9, a3, 819f
                  andi         s5, zero, -1316
                  xor          s9, a3, a6
                  sltu         a6, a7, t0
                  sll          a7, s4, sp
                  sub          s11, s2, zero
                  bgeu         s1, s0, 833f
                  auipc        s0, 741900
                  and          s4, s2, a0
819:              blt          s2, t0, 820f
820:              sll          t6, a2, zero
                  bltu         t5, s0, 823f
                  sltiu        a6, gp, -1610
823:              srai         s9, s3, 10
                  addi         sp, s2, -332
                  lui          t4, 400231
                  xori         t4, gp, 1751
                  blt          s5, a3, 829f
                  srli         s4, s3, 31
829:              andi         t1, s4, 1539
                  bltu         s10, s6, 838f
                  auipc        a7, 281600
                  sltiu        a1, a5, -1350
833:              sltiu        ra, t5, 240
                  slti         s2, s9, -215
                  xor          a1, ra, s4
                  sll          t5, s5, s9
                  beq          s9, s4, 839f
838:              slt          s8, a7, t6
839:              xori         t6, gp, 1395
                  slti         t0, s11, -1299
                  sll          a5, a7, s7
                  sll          s10, a0, s11
                  ori          s11, a7, 98
                  bge          ra, a1, 852f
                  slt          gp, t4, s1
                  add          s5, a2, ra
                  slt          s8, a5, sp
                  auipc        s6, 968525
                  bgeu         a0, zero, 861f
                  blt          ra, ra, 866f
                  srl          s1, zero, t0
852:              and          s4, t1, s9
                  srl          sp, a2, a6
                  xori         s6, a1, -699
                  slti         s8, s2, 1782
                  ori          tp, s4, -993
                  auipc        t6, 335367
                  sub          s10, zero, s11
                  slti         t1, zero, 1107
                  addi         a6, ra, 1261
861:              addi         s10, t6, -816
                  nop
                  sltu         sp, t4, s2
                  or           a6, a4, a0
                  bltu         t4, t0, 878f
866:              sra          a3, s4, s8
                  slt          s1, tp, a3
                  andi         a6, s1, 1123
                  bltu         sp, s11, 887f
                  or           s6, s2, s11
                  addi         a3, t4, -289
                  sltu         s10, t3, s10
                  srl          t4, t3, sp
                  srli         gp, s6, 22
                  sra          s0, ra, ra
                  andi         gp, t5, 797
                  add          s3, t3, t3
878:              bltu         s5, s4, 889f
                  bltu         ra, s10, 890f
                  add          s8, tp, a7
                  ori          s0, s10, -1556
                  sltu         s2, sp, ra
                  slt          a2, s6, s2
                  andi         s8, a6, 1097
                  sll          a2, tp, t1
                  nop
887:              and          a4, s0, s7
                  bne          a7, t2, 896f
889:              sub          a7, t1, t5
890:              or           a2, t5, s6
                  xor          a2, s7, t0
                  bne          t6, s2, 898f
                  xor          ra, s8, s7
                  lui          s10, 682235
                  beq          t0, s10, 909f
896:              sll          gp, a0, t1
                  auipc        tp, 1025996
898:              ori          s2, s8, 973
                  srl          a7, s2, s3
                  addi         s4, s9, -720
                  bltu         s1, a1, 913f
                  auipc        a0, 995999
                  ori          ra, a4, -1252
                  ori          s3, s8, -1740
                  nop
                  bltu         s8, s2, 914f
                  ori          s4, s3, 1772
                  sll          a7, s8, s5
909:              and          t0, t3, t5
                  xor          t0, s0, a0
                  srai         gp, a2, 11
                  sll          s6, s7, t5
913:              andi         gp, s4, 1047
914:              sub          s11, a4, s4
                  srai         a0, s11, 27
                  addi         s5, tp, 20
                  bge          sp, zero, 929f
                  bgeu         a6, a2, 924f
                  xori         t0, s8, 1826
                  sub          ra, a6, s11
                  srli         a0, s2, 7
                  auipc        s2, 1017843
                  bgeu         s2, s4, 932f
924:              bltu         t0, zero, 936f
                  nop
                  bgeu         gp, s1, 942f
                  addi         s11, ra, 293
                  slli         a0, a2, 11
929:              addi         s10, t2, -1658
                  bge          s8, a4, 940f
                  slt          a4, zero, a6
932:              lui          t6, 90908
                  sltiu        s2, a4, -1302
                  addi         s9, s4, 796
                  xor          s9, t2, a4
936:              nop
                  blt          s4, a2, 957f
                  bgeu         s4, s7, 947f
                  slt          s11, t6, s0
940:              addi         s6, a0, -1303
                  xori         s6, s1, -1641
942:              srli         a7, t3, 30
                  auipc        ra, 748904
                  ori          s10, t4, -1119
                  slt          s5, a4, s10
                  xori         s0, a2, -990
947:              sll          s3, t5, t4
                  nop
                  srl          t5, a4, a1
                  or           a4, s0, a5
                  auipc        a2, 538246
                  bne          a1, ra, 969f
                  sltu         tp, a6, a1
                  blt          s9, a3, 955f
sub_4_28:         jal          t1, 22f
0:                jal          t1, 1f
1:                jal          ra, 8f
2:                jal          ra, 12f
3:                jal          t1, 9f
4:                jal          a5, 17f
5:                jal          ra, 10f
6:                jal          ra, 13f
7:                jal          ra, 5b
8:                jal          ra, 14f
9:                jal          s6, 0b
10:               jal          ra, 11f
11:               jal          tp, 18f
12:               jal          ra, 3b
13:               jal          ra, 21f
14:               jal          t1, 24f
15:               jal          t1, 4b
16:               jal          ra, 19f
17:               jal          ra, 2b
18:               jal          ra, 16b
19:               jal          ra, 15b
20:               jal          ra, 6b
21:               jal          t1, 23f
22:               jal          ra, 20b
23:               jal          ra, 7b
24:               sll          tp, a6, s11
955:              slli         s0, t3, 12
                  sub          tp, s9, s11
957:              bge          zero, a1, 973f
                  xor          s11, s5, s11
                  sub          a1, s11, a0
                  nop
                  sra          s9, s2, tp
                  xor          t6, s9, s7
                  auipc        a1, 601427
                  ori          a6, s0, -818
                  sll          t4, a0, s7
                  auipc        s2, 152836
                  bltu         t3, t4, 968f
968:              add          s0, a3, s4
969:              andi         t1, a7, 1673
                  bgeu         zero, s8, 987f
                  sub          s8, t4, s1
                  slli         s4, s2, 13
973:              srai         tp, a1, 14
                  bne          sp, s3, 986f
                  sub          s9, a5, a7
                  slt          sp, s1, t1
                  addi         a0, t1, -1283
                  sltu         a1, s4, s9
                  andi         s11, s11, -775
                  sra          s10, s4, s9
                  blt          t5, a1, 987f
                  bne          a2, a2, 990f
                  sltiu        s10, s7, 880
                  xori         s6, s6, -413
                  sll          s1, zero, s10
986:              nop
987:              srli         a4, s9, 13
                  sra          sp, t5, a7
                  sltu         a0, s9, s7
990:              andi         ra, sp, -67
                  lui          a0, 832432
                  srai         a2, s8, 11
                  auipc        s1, 66848
                  bne          a3, s4, 1006f
                  srli         a7, a3, 15
                  and          t1, s5, zero
                  sub          s10, s6, s7
                  srl          a7, s11, s3
                  and          s11, a3, a5
                  sll          a4, t5, tp
                  blt          s3, s11, 1012f
                  blt          gp, a7, 1011f
                  bgeu         s6, t6, 1020f
                  nop
                  sltiu        s10, sp, 1560
1006:             slli         s1, s6, 16
                  sub          t6, t5, a2
                  bne          s10, s11, 1016f
                  ori          zero, t2, -1953
                  or           s9, s9, t0
1011:             ori          s3, t4, -1911
1012:             srli         zero, s2, 10
                  slti         s0, a2, 1841
                  sltu         s8, s10, a6
                  slti         a4, s5, -86
1016:             bltu         s8, gp, 1036f
                  blt          a1, t4, 1030f
                  sub          a5, s11, a5
                  slli         s8, s6, 26
1020:             addi         gp, a5, 1133
                  sub          t0, s2, t4
                  slli         t6, t6, 20
                  nop
                  xori         s6, s10, 1597
                  sub          a2, s0, s0
                  addi         s8, s2, 726
                  sra          sp, s6, s3
                  bne          t4, ra, 1046f
                  bltu         s11, a5, 1041f
1030:             ori          gp, a1, -1044
                  bne          sp, s5, 1033f
                  auipc        s0, 324794
1033:             sltiu        a5, a2, -1123
                  slli         a6, s1, 0
                  blt          a2, s11, 1043f
1036:             xori         zero, gp, -227
                  slt          a6, s2, sp
                  srai         zero, a3, 21
                  sub          t0, a7, s7
                  ori          s5, s1, -1983
1041:             xori         s9, a0, 572
                  andi         tp, t6, 1030
1043:             andi         t0, s10, -79
                  srli         s11, t3, 4
                  bne          t1, s10, 1046f
1046:             or           t1, s2, s7
                  lui          s6, 282247
                  bltu         t1, a7, 1055f
                  and          s5, s8, a6
                  slti         a1, tp, 1588
                  xor          tp, sp, t5
                  sub          s0, a2, t1
                  auipc        a1, 46067
                  bge          s9, a4, 1066f
1055:             slti         a7, a0, -139
                  beq          a5, s1, 1070f
                  xori         a4, gp, 514
                  bne          s1, t5, 1066f
                  bltu         a3, t6, 1061f
                  bge          s10, s6, 1071f
1061:             or           t6, a4, t0
                  blt          a6, s0, 1068f
                  lui          s9, 777587
                  slli         s10, s1, 20
                  addi         a7, a5, -261
1066:             srai         a7, s0, 29
                  andi         a6, s10, 1914
1068:             blt          s5, t0, 1077f
                  and          a5, a0, s0
1070:             sll          a3, t0, tp
1071:             nop
                  beq          a1, s9, 1074f
                  sltu         s1, s5, zero
1074:             sll          s6, a4, a3
                  sltiu        gp, a7, -363
                  bge          a6, s0, 1092f
1077:             addi         s3, s7, -1766
                  beq          a3, s7, 1087f
                  add          s9, a0, s2
                  slt          a3, s0, t5
                  bne          a5, s11, 1091f
                  ori          a7, t4, -388
                  addi         s8, s9, -1091
                  andi         t0, t1, 2017
                  bne          zero, a1, 1092f
                  blt          s4, t3, 1100f
1087:             xor          t0, a3, s10
                  addi         a7, s1, -1743
                  lui          tp, 455435
                  sra          t4, ra, t3
1091:             sltiu        s4, s1, -111
1092:             srai         t4, gp, 14
                  and          gp, a6, s3
                  add          a6, t5, tp
                  sltiu        s0, s7, -1779
                  andi         a2, gp, -307
                  srl          sp, s6, t2
                  slti         s6, a4, 1660
                  or           gp, t1, s6
1100:             blt          a2, s9, 1117f
                  bgeu         s4, a4, 1103f
                  lui          tp, 776006
1103:             xor          a0, s10, a2
                  bge          sp, sp, 1110f
                  lui          a0, 145349
                  xori         a4, s4, -221
                  sltu         a2, s5, a1
                  addi         a3, a0, 1786
                  srl          a3, s11, t3
1110:             slli         t6, a3, 12
                  bgeu         a2, s10, 1121f
                  bge          a5, gp, 1124f
                  bge          s9, a4, 1124f
                  xor          t6, a4, s0
                  slli         sp, t2, 26
                  auipc        t5, 739614
1117:             xori         gp, s0, 2022
                  andi         a0, a5, -1234
                  sltu         a5, a3, a0
                  addi         s3, a1, 250
1121:             srai         tp, a7, 1
                  bge          s8, s4, 1139f
                  bge          tp, sp, 1132f
1124:             srl          s6, s8, a2
                  nop
                  bge          a4, a4, 1127f
1127:             nop
                  or           a1, sp, s6
                  bgeu         a6, s10, 1135f
                  blt          t6, t6, 1146f
                  bgeu         t5, a6, 1140f
1132:             blt          t5, a1, 1134f
                  sltiu        s8, s6, 1672
1134:             srai         ra, s10, 14
1135:             ori          s3, s11, -458
                  bgeu         s1, t1, 1144f
                  sltu         s9, tp, s7
                  beq          ra, t1, 1146f
1139:             bge          s7, s2, 1151f
1140:             slti         a3, t5, -470
                  slt          s5, s4, s2
                  bge          s0, s3, 1150f
                  ori          t5, t5, -836
1144:             ori          s11, a2, 143
                  or           s3, a1, a0
1146:             srai         s6, zero, 29
                  slli         a5, t5, 27
                  ori          sp, s8, 753
                  sra          s4, gp, zero
1150:             srai         t4, s6, 11
1151:             andi         gp, s7, 141
                  and          t0, s2, a4
                  xori         a6, t2, -1301
                  slti         s6, s10, 816
                  sltiu        s10, t1, -172
                  auipc        a1, 568891
                  xori         a1, a3, 1634
                  srl          s1, a7, a2
                  sub          a7, a4, s11
                  sltiu        s6, t0, 736
                  auipc        gp, 672127
                  or           a5, a4, gp
                  beq          tp, a3, 1176f
                  add          a0, s4, s6
                  bltu         t5, t3, 1185f
                  bltu         a1, t4, 1178f
                  sra          t1, a7, a5
                  srli         s6, s2, 15
                  sltu         s1, t4, a6
                  slt          zero, s1, t1
                  xor          s4, s9, s6
                  srl          a7, s7, tp
                  xori         t0, s9, 1445
                  bgeu         s6, a7, 1176f
                  beq          a7, t2, 1186f
1176:             nop
                  srl          a1, s9, t0
1178:             xor          s8, a6, tp
                  xori         gp, s10, -640
                  bltu         a7, a6, 1181f
1181:             sll          a5, t1, s1
                  blt          a4, t4, 1194f
                  bne          gp, t6, 1192f
                  xor          a2, s7, s3
1185:             ori          t0, t5, 2028
1186:             bltu         t2, s6, 1194f
                  andi         tp, s11, 1039
                  xori         a6, t1, -756
                  sll          a7, s2, s8
                  bne          gp, s3, 1206f
                  slt          a7, gp, t4
1192:             xori         tp, s2, 1709
                  or           zero, t1, a4
1194:             nop
                  sra          s11, gp, s2
                  bgeu         s1, t2, 1214f
                  srai         a7, a3, 15
                  sra          a0, s1, a5
                  bge          s8, s5, 1201f
                  sub          s6, s6, t0
1201:             sll          s1, s11, s6
                  beq          ra, s4, 1212f
                  slt          s10, s10, s5
                  add          a3, a5, s3
                  sra          s4, s4, s3
1206:             srai         a4, s11, 17
                  srl          tp, sp, s6
                  slli         tp, a0, 16
                  ori          zero, t4, 2021
                  beq          tp, tp, 1226f
                  or           a7, t4, a0
1212:             lui          t5, 202283
                  lui          s11, 591661
1214:             bltu         t5, s8, 1231f
                  slti         s5, ra, 718
                  add          s5, t4, s10
                  slli         s10, a5, 28
                  ori          s8, s10, 924
                  add          sp, sp, a1
                  sltu         s3, t0, gp
                  slti         s1, a1, 1076
                  sra          ra, tp, s10
                  bge          s7, a4, 1230f
                  bge          a2, zero, 1240f
                  bge          s6, s1, 1233f
1226:             sltu         t0, s7, s2
                  bge          a2, s0, 1239f
                  andi         s2, t3, -1690
                  bne          t2, zero, 1231f
1230:             srli         gp, a2, 31
1231:             sub          s8, a3, t5
                  ori          a2, sp, 1037
1233:             bne          a3, s8, 1245f
                  beq          a4, s3, 1243f
                  or           tp, t0, s8
                  and          t1, s2, a3
                  or           t5, a7, a3
                  slt          s4, s6, s10
1239:             add          gp, a1, s3
1240:             lui          s1, 120510
                  blt          s0, s4, 1249f
                  sub          gp, t0, t2
1243:             slti         sp, s4, 1041
                  sra          s1, s4, s2
1245:             add          s5, zero, t5
                  lui          a3, 917377
                  srli         a2, sp, 11
                  sub          a6, zero, a5
1249:             srl          a6, s3, t4
                  srli         a4, s4, 26
                  and          a5, t3, a1
                  srai         s3, sp, 19
                  sub          s9, a3, a1
                  or           a0, a5, a4
                  andi         a5, a7, -1378
                  bgeu         s5, s7, 1268f
                  sra          t6, t2, s6
                  or           a1, a6, t6
                  sltiu        s9, a1, 766
                  andi         s6, t6, 748
                  srai         s2, a7, 26
                  srl          s11, s6, t3
                  blt          s9, a5, 1277f
                  sra          s5, a7, s10
                  sra          t6, gp, s11
                  bge          t1, a7, 1267f
1267:             sra          s8, s7, t5
sub_4_14:         jal          t1, 2f
0:                jal          t5, 11f
1:                jal          t1, 9f
2:                jal          t1, 5f
3:                jal          tp, 7f
4:                jal          ra, 6f
5:                jal          tp, 4b
6:                jal          t1, 3b
7:                jal          ra, 10f
8:                jal          ra, 14f
9:                jal          ra, 13f
10:               jal          ra, 12f
11:               jal          ra, 8b
12:               jal          sp, 1b
13:               jal          ra, 0b
14:               auipc        a1, 79620
1268:             srl          sp, tp, a7
                  lui          t1, 308782
                  nop
                  lui          a2, 26561
                  bge          a1, s7, 1284f
                  sll          s0, a5, a6
                  slli         a1, ra, 27
                  add          s0, zero, s8
                  or           s8, a1, a2
1277:             sll          t4, a6, s2
                  xor          tp, s9, t1
                  srl          s2, s0, sp
                  blt          s3, a1, 1300f
                  lui          a0, 244487
                  bge          zero, t0, 1299f
                  sub          t5, s10, sp
1284:             sll          s2, a7, s11
                  sra          s2, s8, s1
                  blt          a6, t3, 1297f
                  slli         s4, s3, 4
                  slli         t4, t5, 4
                  and          s8, s3, a1
                  addi         zero, s9, 939
                  and          t0, a7, a2
                  xor          a7, s2, t2
                  xori         t5, t5, 663
                  srl          a4, s5, t1
                  bltu         s2, s8, 1301f
                  beq          tp, s7, 1304f
1297:             srl          sp, t3, s1
                  andi         a3, s6, 1155
1299:             nop
1300:             srai         s9, a7, 22
1301:             bgeu         s2, a5, 1307f
                  bge          t0, a5, 1313f
                  blt          s10, s5, 1304f
1304:             add          t1, ra, t2
                  bgeu         a7, t6, 1314f
                  bne          t2, zero, 1315f
1307:             slti         t6, s11, -1314
                  slt          t5, a2, t5
                  srai         a3, a0, 23
                  sll          a2, a1, a1
                  sra          s10, s5, ra
                  sll          s4, s11, s10
1313:             and          sp, s11, t1
1314:             blt          t0, s7, 1332f
1315:             beq          s11, s10, 1323f
                  bltu         s10, a4, 1318f
                  slli         s0, sp, 2
1318:             add          s9, s4, t3
                  bge          s3, a3, 1332f
                  xori         a1, a4, -796
                  lui          tp, 914308
                  srl          s0, a5, gp
1323:             beq          a5, s0, 1325f
                  slli         s1, s2, 10
1325:             ori          gp, s6, -593
                  bge          s7, ra, 1339f
                  beq          t0, t4, 1336f
                  sub          ra, s9, s0
                  blt          t2, s6, 1337f
                  xor          a6, t0, a3
                  bgeu         s2, t2, 1342f
1332:             srli         t1, a4, 27
                  xori         s3, tp, 1664
                  lui          s6, 1008449
                  lui          a1, 96794
1336:             srli         t5, tp, 15
1337:             xori         tp, ra, 1838
                  srl          s11, t5, a1
1339:             ori          a1, t6, 892
                  blt          a2, a5, 1341f
1341:             slli         s9, ra, 24
1342:             lui          t4, 820242
                  xor          a5, a1, a7
                  srl          s8, a4, sp
                  ori          tp, a3, 322
                  addi         a2, zero, -1662
                  bge          a6, t0, 1353f
                  addi         s8, a7, -2031
                  bne          s1, t2, 1359f
                  sra          a6, a4, a5
                  slti         ra, a6, -1189
                  sra          s8, t4, s8
1353:             xor          zero, a5, s11
                  andi         s2, s11, -2013
                  slt          s4, t0, a7
                  slt          s11, t1, t2
                  andi         s1, a3, -1735
                  xor          s9, s2, a7
1359:             slli         t5, gp, 19
                  ori          a2, s4, 1465
                  sra          ra, t6, t0
                  add          s10, a1, s7
                  or           t0, a6, t6
                  bgeu         s9, s11, 1382f
                  bge          s8, a5, 1371f
                  bne          s4, a1, 1374f
                  nop
                  blt          s3, s7, 1370f
                  beq          a6, t5, 1377f
1370:             bge          t2, sp, 1386f
1371:             sltu         s9, t0, t4
                  and          s9, s10, a2
                  and          s6, s9, t6
1374:             sltiu        s1, s8, 297
                  bne          a6, s1, 1377f
                  xori         a0, a7, -487
1377:             srli         t6, a7, 18
                  lui          a2, 703786
                  xor          t0, a2, a5
                  lui          s8, 972257
                  sltiu        s0, a0, 991
1382:             auipc        s2, 569819
                  sra          t6, t1, s4
                  xor          t6, t4, s3
                  beq          a1, a4, 1402f
1386:             ori          ra, s11, 78
                  auipc        a1, 474853
                  and          s3, s9, s6
                  addi         a5, ra, -1314
                  slti         sp, a6, 1822
                  srl          a7, s10, a2
                  slti         a6, sp, 952
                  bge          a0, s3, 1405f
                  bgeu         s11, a2, 1414f
                  ori          tp, s0, -1355
                  slt          ra, t3, gp
                  slti         t5, s9, 1594
                  bne          t1, s6, 1405f
                  and          a7, s2, a4
                  sll          t6, ra, gp
                  srai         zero, a0, 25
1402:             slt          a3, tp, sp
                  auipc        t4, 984945
                  add          s4, ra, s8
1405:             add          t4, s11, t5
                  blt          s6, a7, 1418f
                  sltiu        gp, t6, 1328
                  or           s10, ra, a2
                  or           a1, tp, t4
                  srli         t1, s9, 8
                  srai         t1, zero, 24
                  auipc        a7, 106946
                  or           s11, s1, t3
1414:             or           sp, t0, a4
                  and          a7, a5, s8
                  auipc        a1, 100675
                  slt          t1, a2, gp
1418:             sra          s3, a1, a4
                  sll          gp, s10, ra
                  blt          s9, t1, 1434f
                  sltu         zero, s3, t3
                  sltu         s4, t5, a7
                  or           s4, t1, tp
                  auipc        s5, 808551
                  sltiu        tp, s2, -1044
                  bgeu         s0, gp, 1442f
                  bne          s11, s3, 1435f
                  bltu         s7, a6, 1440f
                  srl          tp, s1, sp
                  and          a5, t0, a3
                  bltu         sp, s7, 1443f
                  beq          s5, t0, 1433f
1433:             srl          a5, t3, t6
sub_4_25:         jal          t1, 0f
0:                jal          tp, 3f
1:                jal          t1, 13f
2:                jal          ra, 5f
3:                jal          t5, 6f
4:                jal          t1, 10f
5:                jal          ra, 1b
6:                jal          ra, 7f
7:                jal          ra, 8f
8:                jal          ra, 11f
9:                jal          t1, 12f
10:               jal          a3, 9b
11:               jal          a3, 4b
12:               jal          t1, 2b
13:               jal          ra, 14f
14:               slli         s8, a4, 30
1434:             sltu         t5, a7, t1
1435:             srl          t5, t4, t0
                  slt          s1, t1, a1
                  bltu         a3, tp, 1454f
                  xori         ra, a2, -162
                  ori          a0, a5, -110
1440:             sltiu        sp, a7, -914
                  or           a2, s9, a2
1442:             sra          a0, tp, s7
1443:             xor          s2, a1, t2
                  bltu         a2, s8, 1453f
                  slli         s11, s6, 24
                  bgeu         t4, gp, 1457f
                  bgeu         tp, ra, 1456f
                  auipc        a7, 59927
                  lui          t0, 370856
                  srli         gp, t1, 5
                  slti         a6, a6, -1294
                  srli         s8, a7, 26
1453:             sltu         s8, a5, t0
1454:             and          a3, t3, ra
                  slti         s3, s4, 870
1456:             slli         sp, sp, 6
1457:             sll          t1, s6, t1
                  bgeu         a6, a1, 1459f
1459:             bge          a0, t0, 1471f
                  srai         s6, t1, 7
                  sltu         a5, a7, t2
                  andi         zero, s7, -426
                  andi         s1, s11, -1505
                  blt          a3, sp, 1472f
                  bge          a7, s5, 1475f
                  ori          t5, s5, -1377
                  add          s5, t0, t6
                  slli         s4, s10, 29
                  sltiu        a5, a1, -841
                  slli         s8, t6, 16
1471:             blt          s2, s3, 1480f
1472:             bltu         a6, t6, 1474f
                  nop
1474:             slt          s5, a1, s4
1475:             srl          t6, zero, s7
                  and          zero, s11, a1
                  xori         a3, s6, -71
                  sll          a2, t0, t2
                  xori         sp, a4, -854
1480:             slli         a6, gp, 22
                  sll          t1, s4, s6
                  bne          s1, tp, 1498f
                  andi         a6, a1, -1250
                  nop
                  sra          a3, t0, a6
                  sltu         t0, t6, t6
                  or           t1, s9, s6
                  auipc        s10, 300302
                  xor          s8, s6, a2
                  bge          s1, t4, 1502f
                  xori         zero, a1, 1488
                  lui          s4, 557138
                  ori          a0, s2, 905
                  ori          s5, s5, -1105
                  nop
                  add          sp, s8, s8
                  auipc        s2, 643162
1498:             xori         s5, s7, 36
                  add          s5, zero, s8
                  beq          a4, s9, 1502f
                  bne          s9, a0, 1508f
1502:             add          s10, a4, s5
                  and          s0, a3, a7
                  or           t6, s3, s9
                  sll          ra, t6, s8
                  blt          s0, s6, 1512f
                  auipc        a1, 178310
1508:             xori         t0, t5, 1393
                  xor          tp, s1, t5
                  bgeu         ra, s3, 1514f
                  beq          t2, tp, 1514f
1512:             sra          a5, s3, s1
                  and          s6, a6, s9
1514:             srai         gp, s1, 25
                  lui          s8, 719323
                  lw           t1, 4(s7)
                  slti         gp, zero, -1408
                  srai         s0, s0, 10
                  srli         a7, t3, 5
                  addi         s7, s7, 56
                  slti         s4, s11, -1999
                  srl          a1, s11, t4
                  sll          a6, t3, a5
                  or           t0, tp, a3
                  lui          a2, 902993
                  xori         ra, s0, 2000
2198:             addi x24, x6, 1
2198:             jalr x24, x24, 0
sub_3:            addi         s7, s7, -20
                  sltiu        s4, s2, 394
                  sw           t1, 4(s7)
                  slli         s10, s10, 9
                  addi         a6, s6, -1437
sub_3_3:          jal          t1, 10f
0:                jal          a6, 15f
1:                jal          ra, 18f
2:                jal          t1, 0b
3:                jal          t1, 4f
4:                jal          ra, 1b
5:                jal          a7, 9f
6:                jal          tp, 11f
7:                jal          ra, 5b
8:                jal          t1, 12f
9:                jal          s10, 6b
10:               jal          ra, 8b
11:               jal          t1, 17f
12:               jal          gp, 2b
13:               jal          ra, 7b
14:               jal          ra, 13b
15:               jal          ra, 16f
16:               jal          gp, 14b
17:               jal          ra, 3b
18:               slli         a5, t1, 26
sub_3_5:          jal          t1, 5f
0:                jal          a3, 12f
1:                jal          a0, 2f
2:                jal          tp, 13f
3:                jal          ra, 7f
4:                jal          t1, 14f
5:                jal          t5, 0b
6:                jal          ra, 3b
7:                jal          a7, 4b
8:                jal          s9, 9f
9:                jal          s11, 6b
10:               jal          sp, 8b
11:               jal          t0, 10b
12:               jal          a2, 1b
13:               jal          ra, 11b
14:               nop
sub_3_0:          jal          t1, 3f
0:                jal          a4, 1f
1:                jal          sp, 7f
2:                jal          ra, 12f
3:                jal          s3, 0b
4:                jal          ra, 2b
5:                jal          ra, 11f
6:                jal          t1, 4b
7:                jal          ra, 5b
8:                jal          a0, 10f
9:                jal          t6, 6b
10:               jal          t4, 9b
11:               jal          ra, 8b
12:               lui          s8, 486767
sub_3_6:          jal          t1, 9f
0:                jal          ra, 6f
1:                jal          t6, 4f
2:                jal          ra, 7f
3:                jal          s9, 2b
4:                jal          a6, 8f
5:                jal          t1, 11f
6:                jal          t0, 3b
7:                jal          ra, 5b
8:                jal          s8, 10f
9:                jal          ra, 1b
10:               jal          t1, 0b
11:               srai         a1, a6, 31
sub_3_1:          jal          t1, 9f
0:                jal          ra, 13f
1:                jal          gp, 24f
2:                jal          ra, 16f
3:                jal          s2, 7f
4:                jal          t0, 1b
5:                jal          ra, 15f
6:                jal          ra, 14f
7:                jal          ra, 17f
8:                jal          t4, 4b
9:                jal          s4, 19f
10:               jal          ra, 8b
11:               jal          t1, 22f
12:               jal          t1, 11b
13:               jal          t1, 2b
14:               jal          s8, 18f
15:               jal          t1, 20f
16:               jal          ra, 6b
17:               jal          ra, 21f
18:               jal          ra, 12b
19:               jal          t1, 3b
20:               jal          ra, 10b
21:               jal          ra, 23f
22:               jal          t1, 5b
23:               jal          ra, 0b
24:               and          s9, t0, a3
                  xori         a1, a3, -1397
                  auipc        tp, 720433
                  nop
                  xor          zero, a7, s3
                  sll          t5, a0, s4
                  addi         a7, t4, 769
                  bltu         t4, s1, 19f
                  bne          a7, t3, 15f
                  sltu         s6, a4, zero
                  nop
                  sra          a2, s2, s11
                  sltu         a0, s1, a6
                  sltiu        s2, s6, 496
                  sltiu        a6, s8, 937
sub_3_4:          jal          t1, 21f
0:                jal          t0, 11f
1:                jal          tp, 3f
2:                jal          ra, 7f
3:                jal          ra, 15f
4:                jal          ra, 16f
5:                jal          a0, 14f
6:                jal          ra, 13f
7:                jal          ra, 12f
8:                jal          ra, 5b
9:                jal          ra, 17f
10:               jal          t1, 4b
11:               jal          ra, 18f
12:               jal          t1, 6b
13:               jal          ra, 0b
14:               jal          a7, 19f
15:               jal          ra, 22f
16:               jal          ra, 8b
17:               jal          s4, 23f
18:               jal          ra, 10b
19:               jal          tp, 20f
20:               jal          ra, 9b
21:               jal          ra, 1b
22:               jal          t1, 2b
23:               sltu         ra, s5, t1
                  xori         sp, t6, -1740
15:               bne          a3, s2, 25f
                  srai         t0, tp, 16
                  auipc        tp, 139928
                  sra          a7, s3, s6
19:               lui          t4, 360910
                  andi         s9, t1, 779
                  sll          a2, a3, t3
                  slt          s4, a1, s5
                  ori          s3, a5, -50
                  and          ra, a5, s1
25:               xori         s1, t0, 1106
sub_3_2:          jal          t1, 10f
0:                jal          t1, 16f
1:                jal          ra, 18f
2:                jal          ra, 19f
3:                jal          ra, 11f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          t1, 15f
7:                jal          ra, 1b
8:                jal          a2, 17f
9:                jal          ra, 3b
10:               jal          ra, 9b
11:               jal          ra, 13f
12:               jal          ra, 4b
13:               jal          t1, 5b
14:               jal          t1, 6b
15:               jal          ra, 12b
16:               jal          ra, 8b
17:               jal          t1, 7b
18:               jal          ra, 14b
19:               jal          ra, 20f
20:               jal          ra, 21f
21:               and          s9, t3, s0
                  srai         s3, s5, 16
                  andi         t6, a7, 1469
                  beq          s5, s1, 40f
                  nop
                  add          s0, s0, sp
                  andi         t4, t3, 1668
                  sll          tp, a4, s9
                  or           s1, gp, t4
                  beq          s3, s0, 36f
                  addi         s0, gp, -1652
36:               ori          s11, gp, -328
                  sra          gp, tp, s6
                  bne          sp, s11, 41f
                  auipc        sp, 299140
40:               nop
41:               slli         sp, s3, 31
                  nop
                  srli         s1, a6, 24
                  sub          s3, a2, s0
                  sltu         sp, a3, s3
                  srli         s10, s1, 27
                  add          gp, a6, t0
                  srl          s5, a1, s11
                  auipc        a5, 502057
                  bltu         tp, t0, 56f
                  bne          s11, sp, 71f
                  bge          t0, a1, 56f
                  beq          s4, zero, 66f
                  and          s9, s2, t4
                  sltu         s0, s11, ra
56:               xor          a2, s7, s10
                  bge          t1, s0, 67f
                  auipc        a6, 867888
                  sub          t4, s1, a5
                  blt          s8, s11, 70f
                  blt          t0, s6, 71f
                  slli         ra, a3, 18
                  beq          s10, t1, 79f
                  add          tp, s6, s2
                  blt          ra, a1, 69f
66:               sub          a1, a4, t5
67:               slti         t5, ra, 1835
                  ori          t6, s0, -1482
69:               lui          t5, 642839
70:               xor          gp, s10, t6
71:               lui          a3, 298967
                  srli         a5, t3, 10
                  beq          s4, t1, 89f
                  or           s3, t1, tp
                  bltu         s9, t0, 94f
                  bltu         sp, s4, 80f
                  slt          a2, a2, ra
                  sltiu        s9, gp, 1366
79:               bgeu         s6, s10, 86f
80:               srli         s2, t0, 28
                  add          tp, zero, a5
                  and          a3, s7, s3
                  beq          a5, gp, 101f
                  bgeu         t2, s0, 98f
                  xori         ra, a1, -334
86:               bltu         t1, a5, 97f
                  ori          s1, s6, -278
                  blt          t6, a7, 103f
89:               slli         s0, tp, 2
                  srli         s6, s1, 28
                  xor          s2, s4, t1
                  auipc        t4, 23028
                  srl          s3, a3, a0
94:               slt          s6, t0, a5
                  sltiu        t1, tp, 2043
                  srai         s4, s5, 2
97:               sltu         s6, s8, a4
98:               beq          s10, zero, 104f
                  xori         t6, t2, -2018
                  beq          ra, a1, 109f
101:              sub          zero, zero, tp
                  ori          s11, zero, 1530
103:              bltu         zero, a7, 108f
104:              beq          a6, a3, 117f
                  auipc        ra, 576657
                  srai         s3, tp, 23
                  andi         s10, s6, -1656
108:              srli         a0, t1, 9
109:              slt          s0, a3, s10
                  sltiu        t1, t1, 1939
                  beq          s5, s10, 123f
                  or           a0, zero, a3
                  slti         s6, t2, 316
                  beq          t4, t0, 123f
                  slti         a1, zero, 1607
                  and          s11, a5, s5
117:              bgeu         a6, sp, 119f
                  and          gp, s5, t6
119:              xor          s6, a7, t2
                  or           a3, s6, s10
                  lui          t6, 604163
                  srai         s9, a0, 2
123:              bltu         a2, t1, 126f
                  andi         s0, s0, 142
                  bne          sp, t1, 135f
126:              sub          sp, t1, a4
                  sltu         a6, tp, t0
                  sra          gp, a1, t5
                  srl          a0, zero, s9
                  add          s8, s10, s11
                  sltu         s1, t2, tp
                  sra          gp, t0, s5
                  srai         a7, tp, 10
                  slt          a0, s11, a3
135:              slt          t6, s4, s1
                  xori         a4, s11, 202
                  slt          s4, ra, t4
                  xor          s6, s10, t6
                  xor          a5, a5, sp
                  srl          s11, s8, s0
                  lui          s11, 970594
                  blt          a5, t5, 152f
                  srli         a6, a3, 20
                  bne          s1, a5, 153f
                  srli         s4, s11, 11
                  bltu         t4, s0, 155f
                  sub          a2, t5, s8
                  nop
                  add          a1, s6, gp
                  sll          s10, s9, zero
                  sltiu        sp, a6, -908
152:              and          a4, a3, s0
153:              and          s0, a3, gp
                  and          s3, a6, t2
155:              lui          s3, 553684
                  slti         gp, a5, 385
                  or           gp, a1, a4
                  bne          t4, a4, 162f
                  add          a1, gp, t3
                  ori          t0, t4, -175
                  srl          sp, tp, s3
162:              and          a1, s2, a4
                  sltiu        s8, t5, -1196
                  sll          a2, zero, t3
                  add          s11, s4, a2
                  slti         a0, tp, -1048
                  or           s2, s1, s11
                  and          s10, s4, a4
                  srl          a4, s3, a6
                  sll          s1, t5, zero
                  lui          t6, 583069
                  xor          a2, sp, s0
                  blt          s3, s8, 175f
                  sub          gp, a0, s10
175:              nop
                  bne          ra, a2, 189f
                  srli         t0, t6, 13
                  sra          s8, t6, a4
                  sltiu        a1, s5, -662
                  andi         a4, s8, 1248
                  srai         s9, s6, 28
                  blt          a5, t4, 190f
                  sub          a5, a3, a4
                  bgeu         s1, s11, 203f
                  bgeu         s9, t5, 195f
                  slli         zero, tp, 17
                  xori         s1, tp, 1768
                  slti         s10, t1, -1693
189:              sltiu        s11, s11, -1385
190:              slti         s3, s3, -412
                  sltiu        t1, s8, -1189
                  slt          a7, a1, s8
                  slt          a5, t6, zero
                  sra          s2, s5, a7
195:              sra          zero, tp, a0
                  bge          t6, s1, 200f
                  bgeu         t0, s5, 213f
                  srl          t6, a2, sp
                  andi         s6, t5, -775
200:              bltu         t6, ra, 202f
                  sra          a1, s6, a0
202:              srl          ra, gp, t2
203:              bge          sp, t4, 213f
                  sltiu        s1, ra, 567
                  slt          s10, s1, s1
                  bgeu         t6, t6, 217f
                  lui          a0, 13301
                  srli         s0, s2, 8
                  srli         t0, a3, 17
                  bltu         a7, s9, 223f
                  auipc        tp, 31603
                  auipc        s8, 452175
213:              bge          t4, t2, 233f
                  bge          a5, a6, 226f
                  sra          a5, s9, zero
                  lui          a3, 592599
217:              add          t0, a6, s6
                  add          a3, a0, a5
                  slti         s11, s0, -532
                  bgeu         a7, tp, 235f
                  bge          t6, ra, 226f
                  srli         a5, t1, 2
223:              nop
                  blt          s2, s1, 230f
                  or           t0, s3, a5
226:              sub          a7, s5, tp
                  beq          t5, t5, 241f
                  ori          t0, s11, -838
                  xor          sp, s0, a2
230:              sltu         s1, s4, t4
                  addi         s0, s0, 1359
                  and          t1, t5, t1
233:              sltu         s1, sp, a2
                  add          t5, a6, t1
235:              and          s0, t5, s1
                  sub          ra, t4, a5
                  lui          s3, 808754
                  bgeu         s10, s8, 250f
                  andi         t6, gp, -129
                  bne          zero, ra, 253f
241:              srl          a2, a4, a0
                  andi         t5, s11, 68
                  sub          tp, a1, s0
                  bltu         s1, s1, 262f
                  sub          s6, s0, t4
                  slli         t1, t4, 17
                  slli         a6, t2, 21
                  sltiu        s1, s10, 399
                  sub          t1, a0, s8
250:              bge          t6, s6, 266f
                  and          s2, s3, a1
                  xori         gp, s7, -1497
253:              sub          t6, a1, a6
                  blt          gp, s4, 260f
                  slti         s0, zero, -836
                  xor          a6, tp, a4
                  auipc        gp, 710491
                  slti         s5, s2, -377
                  xor          s0, s11, t5
260:              bge          t6, s4, 264f
                  xor          s1, s4, s6
262:              blt          t0, a7, 269f
                  add          s4, s5, tp
264:              slli         a0, tp, 1
                  slli         ra, a6, 23
266:              bgeu         t5, sp, 279f
                  slti         ra, t4, -1826
                  srli         a7, t2, 24
269:              blt          t0, t2, 278f
                  xor          zero, s8, t0
                  slti         t4, a5, 1155
                  sll          t0, a7, gp
                  xor          s11, a6, a1
                  sll          t0, gp, a4
                  addi         a3, t4, -963
                  xori         t4, a7, 1725
                  beq          s3, ra, 289f
278:              sltu         s9, s1, a0
279:              sra          a6, a5, s11
                  xor          s8, gp, a4
                  bge          s3, s10, 294f
                  sub          a6, s6, ra
                  sra          s2, a4, t0
                  srl          t0, s6, t0
                  sub          t5, t5, s1
                  and          zero, gp, s3
                  srai         s6, s11, 2
                  slli         a4, t0, 22
289:              bne          s1, a2, 302f
                  nop
                  and          tp, a3, a1
                  or           s1, a2, gp
                  sub          s0, s1, a6
294:              srai         a4, t3, 12
                  add          s6, a2, sp
                  sltu         s5, s2, s10
                  bge          s0, s6, 299f
                  xor          s1, s9, s8
299:              lui          s10, 103688
                  slli         zero, t5, 11
                  or           a0, t1, sp
302:              bne          tp, t0, 307f
                  sltu         ra, t6, t5
                  auipc        a2, 803632
                  sra          a2, a3, gp
                  or           sp, s10, a1
307:              add          a7, t0, a4
                  slti         tp, t6, -1058
                  beq          s1, t1, 327f
                  lui          a5, 1039600
                  lui          s2, 173757
                  nop
                  sub          a1, a3, a0
                  sltiu        ra, a1, -837
                  beq          s0, s2, 329f
                  and          tp, t5, t4
                  slti         a2, s7, 741
                  bne          s1, s7, 328f
                  srai         a6, s7, 8
                  or           t5, s7, s10
                  xor          a7, s5, tp
                  srli         t0, tp, 13
                  bgeu         s6, t0, 339f
                  srai         a6, s7, 29
                  sltu         tp, t3, s3
                  xor          s11, s8, s2
327:              sll          t6, s0, s9
328:              sll          s2, s3, ra
329:              blt          s10, a7, 333f
                  sra          s2, a6, s9
                  xori         t1, ra, -686
                  xori         a3, s0, 402
333:              slli         s0, gp, 8
                  auipc        sp, 207776
                  srl          t0, a6, s2
                  andi         s4, tp, 783
                  nop
                  bne          a5, s5, 358f
339:              bge          t6, ra, 349f
                  sll          t1, t0, s1
                  ori          a6, s4, 857
                  auipc        a4, 667354
                  and          s9, gp, t2
                  nop
                  bgeu         s1, t2, 361f
                  xor          a3, zero, s2
                  bltu         t3, s10, 366f
                  bge          a7, s2, 358f
349:              slt          s4, tp, a1
                  slli         sp, s1, 13
                  srl          t1, t0, t5
                  addi         t1, t4, -1263
                  sltu         t6, a7, a1
                  slti         s6, t3, -1150
                  andi         s3, s4, -223
                  sltu         s1, s10, zero
                  bgeu         zero, s1, 364f
358:              slli         ra, a7, 16
sub_3_7:          jal          t1, 6f
0:                jal          ra, 12f
1:                jal          ra, 9f
2:                jal          ra, 11f
3:                jal          a6, 7f
4:                jal          ra, 2b
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          ra, 4b
8:                jal          tp, 5b
9:                jal          t1, 0b
10:               jal          ra, 3b
11:               jal          ra, 1b
12:               jal          s0, 13f
13:               ori          s9, t6, -965
                  xori         a2, zero, 1775
                  sll          zero, t5, s10
361:              or           s6, zero, s5
                  srai         t6, t2, 13
                  bltu         t6, a4, 374f
364:              sub          a1, t4, s8
                  and          s11, a5, t3
366:              slt          t0, a7, tp
                  sltiu        t6, s9, -1884
                  beq          s4, zero, 372f
                  xor          t6, a3, s5
                  beq          s0, s5, 378f
                  auipc        t0, 1017375
372:              ori          a1, t1, -1657
                  slti         s6, t4, 1560
374:              bgeu         s3, tp, 386f
                  srl          a3, s9, a7
                  sltu         t1, s7, s6
                  andi         a1, a1, 521
378:              blt          s0, zero, 388f
                  sra          a7, a1, ra
                  srai         a4, t5, 22
                  sll          s0, s0, s0
                  bgeu         s8, a4, 385f
                  xori         s2, gp, -1934
                  and          s1, s7, s7
385:              slti         s11, s5, -448
386:              nop
                  beq          a7, ra, 396f
388:              bgeu         s3, s8, 394f
                  sll          t0, s5, s10
                  bne          a7, t3, 394f
                  add          a1, t6, t3
                  slt          s9, a7, s5
                  ori          s0, tp, -68
394:              bge          s0, s2, 399f
                  and          sp, t4, t1
396:              ori          t5, t3, 1636
                  beq          s9, a6, 399f
                  bltu         t2, t4, 399f
399:              sll          s6, s10, t5
                  or           s9, s6, s4
                  ori          s5, s9, -1108
                  andi         t0, a5, 1522
                  lui          gp, 645661
                  srl          s4, a3, s2
                  sll          s11, a5, s8
                  lw           t1, 4(s7)
                  lui          sp, 743320
                  addi         s7, s7, 20
                  sltiu        zero, s7, -1404
567:              addi x15, x6, 1
567:              jalr x15, x15, 0
sub_2:            addi         s7, s7, -12
                  xori         s4, a0, 1656
                  srai         s1, a3, 19
                  andi         gp, gp, -966
                  sw           t1, 4(s7)
                  xori         s10, sp, 687
sub_2_2:          jal          t1, 10f
0:                jal          s9, 18f
1:                jal          ra, 8f
2:                jal          s6, 27f
3:                jal          s11, 15f
4:                jal          t1, 12f
5:                jal          ra, 6f
6:                jal          t0, 16f
7:                jal          t6, 5b
8:                jal          t1, 17f
9:                jal          sp, 7b
10:               jal          ra, 11f
11:               jal          ra, 25f
12:               jal          tp, 23f
13:               jal          s0, 19f
14:               jal          ra, 26f
15:               jal          ra, 13b
16:               jal          ra, 0b
17:               jal          sp, 14b
18:               jal          t1, 1b
19:               jal          ra, 4b
20:               jal          t1, 24f
21:               jal          ra, 3b
22:               jal          ra, 9b
23:               jal          t1, 20b
24:               jal          s3, 2b
25:               jal          s9, 22b
26:               jal          ra, 21b
27:               srl          t1, t2, t2
sub_2_3:          jal          t1, 11f
0:                jal          ra, 15f
1:                jal          t1, 10f
2:                jal          a1, 13f
3:                jal          ra, 2b
4:                jal          ra, 6f
5:                jal          s9, 3b
6:                jal          ra, 7f
7:                jal          ra, 5b
8:                jal          ra, 12f
9:                jal          s9, 14f
10:               jal          t1, 0b
11:               jal          ra, 8b
12:               jal          t6, 9b
13:               jal          t0, 1b
14:               jal          gp, 4b
15:               slli         t0, t3, 16
sub_2_4:          jal          t1, 11f
0:                jal          ra, 3f
1:                jal          a1, 8f
2:                jal          ra, 5f
3:                jal          ra, 6f
4:                jal          t1, 7f
5:                jal          t5, 12f
6:                jal          ra, 4b
7:                jal          t1, 9f
8:                jal          ra, 13f
9:                jal          a7, 1b
10:               jal          ra, 0b
11:               jal          gp, 2b
12:               jal          ra, 10b
13:               ori          s5, a5, -639
sub_2_1:          jal          t1, 20f
0:                jal          t1, 14f
1:                jal          ra, 25f
2:                jal          ra, 5f
3:                jal          ra, 27f
4:                jal          ra, 22f
5:                jal          ra, 26f
6:                jal          s8, 1b
7:                jal          ra, 13f
8:                jal          ra, 29f
9:                jal          s5, 0b
10:               jal          ra, 21f
11:               jal          t0, 8b
12:               jal          t1, 23f
13:               jal          ra, 10b
14:               jal          t5, 28f
15:               jal          ra, 2b
16:               jal          t0, 7b
17:               jal          ra, 12b
18:               jal          a1, 4b
19:               jal          tp, 3b
20:               jal          tp, 24f
21:               jal          t1, 17b
22:               jal          ra, 15b
23:               jal          ra, 18b
24:               jal          t1, 9b
25:               jal          s3, 16b
26:               jal          ra, 19b
27:               jal          ra, 11b
28:               jal          ra, 6b
29:               sltiu        s8, s3, 1049
sub_2_11:         jal          t1, 2f
0:                jal          a1, 20f
1:                jal          a4, 10f
2:                jal          t1, 4f
3:                jal          s0, 13f
4:                jal          ra, 3b
5:                jal          ra, 8f
6:                jal          t0, 1b
7:                jal          t1, 15f
8:                jal          ra, 9f
9:                jal          t1, 12f
10:               jal          ra, 14f
11:               jal          ra, 17f
12:               jal          a0, 0b
13:               jal          a4, 18f
14:               jal          ra, 21f
15:               jal          t1, 6b
16:               jal          s6, 7b
17:               jal          ra, 5b
18:               jal          a5, 19f
19:               jal          ra, 11b
20:               jal          s5, 16b
21:               andi         s8, s4, 1693
sub_2_6:          jal          t1, 10f
0:                jal          ra, 8f
1:                jal          t1, 0b
2:                jal          ra, 6f
3:                jal          ra, 4f
4:                jal          t1, 7f
5:                jal          ra, 2b
6:                jal          ra, 12f
7:                jal          ra, 5b
8:                jal          ra, 9f
9:                jal          t1, 3b
10:               jal          t1, 1b
11:               jal          sp, 13f
12:               jal          ra, 11b
13:               slti         t4, a7, 796
sub_2_0:          jal          t1, 0f
0:                jal          gp, 10f
1:                jal          t1, 8f
2:                jal          ra, 11f
3:                jal          ra, 5f
4:                jal          t1, 12f
5:                jal          ra, 13f
6:                jal          ra, 2b
7:                jal          ra, 4b
8:                jal          t5, 3b
9:                jal          ra, 1b
10:               jal          t1, 7b
11:               jal          ra, 9b
12:               jal          t1, 6b
13:               and          t4, s10, s7
sub_2_10:         jal          t1, 18f
0:                jal          ra, 8f
1:                jal          t5, 21f
2:                jal          s5, 11f
3:                jal          ra, 10f
4:                jal          t1, 6f
5:                jal          tp, 14f
6:                jal          t1, 3b
7:                jal          sp, 5b
8:                jal          ra, 19f
9:                jal          ra, 1b
10:               jal          s2, 17f
11:               jal          t1, 4b
12:               jal          ra, 2b
13:               jal          a1, 12b
14:               jal          t1, 9b
15:               jal          s1, 16f
16:               jal          a6, 13b
17:               jal          ra, 20f
18:               jal          ra, 15b
19:               jal          ra, 7b
20:               jal          tp, 0b
21:               sltu         sp, s8, t5
sub_2_9:          jal          t1, 1f
0:                jal          t1, 17f
1:                jal          t1, 11f
2:                jal          t1, 8f
3:                jal          a0, 15f
4:                jal          gp, 0b
5:                jal          a5, 13f
6:                jal          t1, 18f
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          ra, 21f
10:               jal          a0, 14f
11:               jal          a3, 19f
12:               jal          ra, 2b
13:               jal          t1, 7b
14:               jal          t1, 20f
15:               jal          ra, 5b
16:               jal          ra, 12b
17:               jal          ra, 3b
18:               jal          ra, 9b
19:               jal          ra, 4b
20:               jal          sp, 16b
21:               slt          t5, s9, gp
sub_2_7:          jal          t1, 18f
0:                jal          t1, 5f
1:                jal          t1, 19f
2:                jal          a1, 15f
3:                jal          ra, 20f
4:                jal          sp, 11f
5:                jal          ra, 2b
6:                jal          a7, 16f
7:                jal          ra, 13f
8:                jal          t0, 0b
9:                jal          t1, 1b
10:               jal          t1, 9b
11:               jal          ra, 17f
12:               jal          s4, 14f
13:               jal          ra, 10b
14:               jal          ra, 6b
15:               jal          ra, 21f
16:               jal          t1, 8b
17:               jal          s6, 7b
18:               jal          ra, 4b
19:               jal          t1, 3b
20:               jal          sp, 12b
21:               sra          a2, s2, zero
                  addi         a5, a2, 1415
                  beq          s5, a1, 21f
                  bltu         a0, ra, 17f
                  bgeu         t6, t1, 20f
                  nop
                  blt          t3, s4, 13f
                  auipc        t1, 805985
                  srl          s1, gp, sp
                  slti         a3, s8, -84
                  auipc        sp, 77878
                  bltu         a2, s8, 25f
                  blt          s5, s10, 13f
                  bgeu         s0, a6, 16f
13:               sra          a5, t4, t0
                  bne          s8, t0, 34f
                  slti         a6, a4, -563
16:               sltu         a2, t5, t1
17:               sra          a6, s1, s4
                  auipc        t0, 905811
                  or           s3, s8, s10
20:               and          gp, t1, t5
sub_2_8:          jal          t1, 1f
0:                jal          ra, 13f
1:                jal          ra, 3f
2:                jal          t0, 6f
3:                jal          ra, 10f
4:                jal          s3, 5f
5:                jal          ra, 12f
6:                jal          gp, 9f
7:                jal          s11, 11f
8:                jal          ra, 0b
9:                jal          t1, 7b
10:               jal          s9, 8b
11:               jal          ra, 15f
12:               jal          ra, 14f
13:               jal          s11, 4b
14:               jal          ra, 2b
15:               sra          s6, s7, sp
21:               bge          s8, t0, 29f
                  slti         a6, t5, -603
                  beq          t2, gp, 38f
                  and          tp, a5, s4
25:               beq          gp, a3, 43f
                  sltu         s9, s6, t2
                  xori         t1, s9, -870
                  slti         a2, a3, -659
29:               slli         s0, t5, 21
                  srl          t0, ra, t3
                  xori         s10, s0, 1576
                  srli         t0, s4, 15
                  beq          a6, a2, 48f
34:               sra          t1, a4, ra
                  and          t1, t5, tp
                  sra          s2, s10, t3
                  add          a0, s8, zero
38:               slti         sp, s3, 1310
                  bgeu         sp, gp, 48f
                  bne          tp, a0, 52f
                  srl          a7, ra, t0
                  srli         t1, t2, 28
43:               sltu         tp, s6, a5
                  slt          s9, a5, s11
                  addi         a0, s3, 1288
                  and          a5, gp, s2
                  slt          a6, s6, s1
48:               xor          s6, a2, tp
                  bltu         a4, s11, 53f
                  bltu         s5, s7, 55f
                  lui          s4, 123150
52:               xor          s2, s8, t0
53:               sll          tp, s10, a1
                  bge          s3, sp, 56f
55:               sltu         t4, s8, a6
56:               sub          sp, s9, t3
                  sll          s0, t0, a3
                  srl          zero, a2, a2
                  add          ra, a3, a6
                  blt          s6, s6, 68f
                  and          s10, zero, t2
                  add          s2, t2, a2
                  bgeu         zero, t0, 80f
                  bge          a7, s2, 75f
                  lui          s11, 682522
                  slli         s1, a0, 3
                  bne          ra, a5, 87f
68:               sub          s2, s2, s1
                  lui          gp, 663001
                  xor          t6, s10, tp
                  addi         t1, t0, -773
                  nop
                  add          t1, s5, tp
                  nop
75:               slli         t0, s4, 24
                  sra          a1, s4, s3
                  xor          s11, a5, a3
                  bltu         s0, ra, 87f
                  or           t1, a5, t1
80:               sll          a1, s5, s10
                  srli         t0, a4, 26
                  andi         s4, t6, 1118
                  sub          s2, s9, s2
                  auipc        a3, 946618
                  bltu         sp, s7, 99f
                  xori         s8, s10, -1753
87:               bltu         t4, s5, 92f
                  bge          s7, s11, 101f
                  blt          tp, s6, 106f
                  addi         t1, s7, 471
                  add          s4, a2, s10
92:               or           s2, a5, s0
                  srai         t6, s4, 27
                  srai         t1, t3, 31
                  sltiu        a1, a1, -660
                  add          s8, s4, s9
                  sll          s5, zero, s2
                  andi         t5, s0, 388
99:               nop
                  bgeu         zero, a2, 115f
101:              or           a6, zero, s5
                  beq          s2, t6, 109f
                  and          t1, s2, s6
                  auipc        s2, 399087
                  sll          a7, a1, s11
106:              slti         gp, a0, 1038
                  beq          gp, a4, 126f
                  sltu         a1, t3, t6
109:              or           s3, a2, tp
                  bgeu         t1, s6, 123f
                  slli         t0, t0, 27
                  sub          s4, a6, a6
                  sltiu        gp, s3, 541
                  auipc        gp, 1021572
115:              lui          s9, 80370
                  slt          s1, s9, s9
                  andi         t5, t3, -346
                  slti         a2, tp, 893
                  xor          a5, s7, t3
                  sll          s5, t6, sp
                  sltu         t5, sp, a5
                  sltu         a6, t6, tp
123:              bgeu         sp, s2, 138f
                  ori          s2, a6, -721
                  blt          s0, a5, 129f
126:              and          a1, s7, t6
                  bgeu         a3, a4, 140f
                  sll          tp, t1, zero
129:              sltu         a5, a2, s1
                  sltu         t0, ra, t2
                  slt          sp, gp, a2
                  bne          a7, a1, 150f
                  xor          a3, s3, t5
                  bgeu         s7, s10, 151f
                  or           a6, t1, t4
                  add          s5, a7, ra
                  and          s5, s0, t5
138:              bltu         s2, gp, 146f
                  add          s11, t6, tp
140:              bgeu         t2, t5, 145f
                  srai         a0, s3, 18
                  auipc        a3, 1035953
                  slti         gp, a6, 1158
                  bge          t1, a0, 153f
145:              bgeu         s11, t0, 165f
146:              auipc        a7, 791415
                  slli         s3, t6, 7
                  srli         a6, t1, 6
                  xori         gp, t6, 1240
150:              sra          s5, a3, t5
151:              srli         zero, t1, 14
                  nop
153:              srl          a4, s11, t5
                  beq          a0, a6, 165f
                  xori         a2, t0, 248
                  xori         t0, s5, -2039
                  xor          a0, s9, t2
                  bgeu         a6, s2, 160f
                  addi         sp, s4, -1716
160:              slli         s10, a3, 22
                  beq          t3, s8, 169f
                  srai         ra, tp, 19
                  addi         a6, t6, 1319
                  sub          a3, s9, s11
165:              srli         s1, t5, 21
                  slt          t5, a3, t1
                  sub          s11, a6, a4
                  srai         a1, a1, 10
169:              blt          a0, a2, 173f
                  blt          s5, tp, 175f
                  bne          s6, zero, 188f
                  auipc        a0, 415798
173:              xori         t0, a1, 1811
                  blt          s9, t2, 183f
175:              bge          a5, s0, 187f
                  sltiu        zero, s8, 182
                  sub          sp, gp, a3
                  sub          t6, s1, t4
                  slt          s6, s8, s5
                  andi         s9, s11, 1184
                  sub          s5, s9, t4
                  auipc        s8, 763725
183:              addi         gp, ra, -425
                  slli         s1, s4, 16
                  srai         zero, s3, 30
                  lui          sp, 687843
187:              bge          a3, a5, 202f
188:              sltiu        s8, a7, -1283
                  xori         s8, t3, 403
                  xor          t0, a5, s3
                  bge          s2, t3, 208f
                  bltu         t3, zero, 200f
                  addi         t1, s7, 1576
                  and          t0, s6, s2
                  slt          a4, a2, t6
                  slli         a4, s0, 29
                  bge          ra, s3, 204f
                  auipc        gp, 196994
                  srl          zero, s0, s1
200:              srai         t4, a1, 2
                  slt          s10, s2, s9
202:              and          s9, a4, t4
                  nop
204:              xori         a7, s2, -638
                  bgeu         s2, a4, 225f
                  andi         a2, gp, -860
                  sra          gp, s3, a5
208:              slli         a5, s1, 19
                  ori          s3, s4, 1177
                  srai         a5, t4, 23
                  nop
                  auipc        t0, 75964
                  add          gp, s9, ra
                  add          s3, a7, a5
                  srai         s10, s5, 31
                  or           s3, tp, gp
                  srli         t4, s6, 2
                  bge          a2, zero, 231f
                  bltu         t6, a2, 233f
                  lui          s1, 345817
                  andi         s8, s10, 482
                  sra          s10, a6, s2
                  ori          a2, t2, -1077
                  auipc        t1, 375228
225:              bne          t6, s7, 240f
                  xori         s5, sp, 757
                  bltu         a6, t0, 242f
                  addi         s4, t5, -757
                  addi         a5, t3, -1389
                  slli         a1, a5, 11
231:              slti         a7, a0, 1024
                  beq          gp, sp, 251f
233:              sub          s10, s2, t1
                  auipc        a5, 816219
                  bgeu         a0, s11, 255f
                  blt          a5, a6, 251f
                  addi         s0, t1, 1422
                  xori         s0, s10, -1806
                  sltiu        a2, s9, 750
240:              sll          s6, t0, a7
                  lui          s6, 271346
242:              sltu         t6, a4, a0
                  andi         gp, s1, 1868
                  lui          a7, 955838
                  srli         a1, a5, 4
                  and          s0, t1, a6
                  lui          a1, 763424
                  addi         sp, t2, -491
                  sltiu        gp, t1, -458
                  sra          a7, s2, t5
251:              andi         a7, a4, -1857
                  lui          s3, 785452
                  bltu         ra, tp, 255f
                  slti         zero, t1, -1032
255:              bne          s6, a2, 259f
                  and          t1, a4, t4
                  lui          tp, 202255
                  srl          a5, sp, a4
259:              and          a0, s10, a5
                  sltiu        s5, a4, 1754
                  slti         s6, sp, 1354
                  sll          a4, s4, t5
                  bge          t0, s5, 272f
                  slti         s2, sp, -437
                  andi         s0, t5, -821
                  or           s11, s11, s0
                  blt          a5, s2, 285f
                  slti         s6, s1, 832
                  srl          a0, t2, t4
                  bne          t2, s8, 274f
                  nop
272:              or           t1, a6, gp
                  bne          t4, s11, 290f
274:              andi         gp, a4, 1792
                  bge          s6, s2, 283f
                  bltu         ra, s8, 296f
                  or           s8, s4, s5
                  srl          s2, a6, a6
                  or           gp, s7, zero
                  xor          a3, s3, s0
                  sra          gp, s7, tp
                  beq          s6, s3, 294f
283:              sltu         s11, s0, s9
                  beq          s8, s1, 297f
285:              auipc        s1, 416271
                  add          s9, s2, s7
                  and          tp, s6, a7
                  srai         s6, t4, 19
                  nop
290:              ori          s5, s2, 402
                  addi         t0, s2, -1812
                  auipc        zero, 442372
                  bltu         t0, zero, 312f
294:              sltu         t5, t5, s8
                  addi         s2, t1, 1615
296:              slti         a3, s11, 503
297:              slli         s9, s0, 22
                  bgeu         t5, a2, 311f
                  andi         s8, s6, 1766
                  slti         a1, t3, 429
                  bltu         s2, a5, 303f
                  srl          a5, t3, t3
303:              slti         sp, gp, -231
                  xor          s10, t6, s4
                  lui          a7, 552451
                  blt          s6, s1, 323f
                  bltu         a2, ra, 321f
                  srai         a6, a0, 17
                  sra          s10, a3, s0
                  sra          a3, a6, sp
311:              sll          gp, t1, a3
312:              and          t4, t0, a4
                  srl          a1, t4, a2
                  sltiu        sp, sp, 1265
                  srli         ra, a7, 12
                  slli         ra, sp, 27
                  auipc        s11, 411486
                  srli         ra, s2, 7
                  add          s2, s3, s0
                  xor          gp, s5, zero
321:              nop
                  xori         a2, t3, 759
323:              beq          tp, s0, 343f
                  auipc        t5, 307100
                  ori          gp, a2, -775
                  and          s3, t3, s10
                  auipc        ra, 297351
                  bge          t1, gp, 336f
                  sra          s8, t6, a1
                  addi         s2, s2, 1157
                  ori          s0, a3, -612
                  add          s4, t0, s0
                  srl          s3, zero, a4
                  nop
                  xor          s0, s6, gp
336:              sltu         a0, t1, s5
                  srl          s9, a2, t6
                  ori          t6, s2, -1981
                  sub          sp, s6, s6
                  nop
                  addi         a0, sp, -674
                  sra          a4, s8, a0
343:              srai         t5, s4, 23
                  sll          t0, tp, s4
                  add          s9, s5, a0
                  bltu         zero, t2, 351f
                  blt          a0, t5, 358f
                  bge          s8, s10, 363f
                  bgeu         s5, a6, 364f
                  auipc        gp, 738587
351:              nop
                  sltiu        gp, s0, 986
                  and          s11, s7, s5
                  xori         t1, s6, 1316
                  sltiu        s10, sp, -1605
                  xori         sp, s4, 1807
sub_2_5:          jal          t1, 4f
0:                jal          ra, 14f
1:                jal          ra, 10f
2:                jal          t1, 6f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          t1, 12f
6:                jal          ra, 3b
7:                jal          ra, 16f
8:                jal          ra, 13f
9:                jal          ra, 11f
10:               jal          ra, 7b
11:               jal          ra, 2b
12:               jal          ra, 15f
13:               jal          ra, 0b
14:               jal          ra, 1b
15:               jal          gp, 9b
16:               lui          ra, 441584
                  sra          t6, a4, t0
358:              xori         t6, s10, -741
                  beq          t1, a0, 366f
                  bge          tp, gp, 375f
                  add          s3, s0, ra
                  slt          a6, ra, tp
363:              sra          s5, a7, a3
364:              nop
                  bgeu         sp, t5, 374f
366:              bltu         tp, t3, 374f
                  srli         s2, s11, 29
                  nop
                  blt          a1, s6, 384f
                  add          s4, a2, s4
                  slti         tp, s5, 1766
                  slti         tp, a4, 408
                  sub          a6, a7, t5
374:              sub          s5, s9, s9
375:              ori          s8, t2, 635
                  beq          s6, s6, 381f
                  nop
                  beq          s5, s10, 398f
                  sub          s2, s4, a3
                  bgeu         s9, zero, 382f
381:              slt          sp, s2, t3
382:              bge          tp, t4, 397f
                  bltu         a6, t6, 400f
384:              andi         t6, tp, 977
                  slli         a1, t6, 25
                  sltiu        s5, s0, 1988
                  add          a5, a0, s11
                  andi         s11, t2, 1893
                  bne          t6, s7, 391f
                  or           ra, s4, a6
391:              slli         gp, t5, 28
                  slti         a1, s10, -1573
                  bge          a0, t2, 401f
                  xori         s9, s9, -25
                  srai         a7, a1, 3
                  and          t0, t0, ra
397:              bne          t3, t0, 406f
398:              andi         t6, a7, 835
                  bgeu         a6, a1, 412f
400:              ori          ra, s8, 1491
401:              sll          a2, s0, s7
                  bne          t1, s2, 419f
                  slt          sp, a1, s10
                  xor          s5, sp, t0
                  nop
406:              sub          s11, a4, t6
                  sll          gp, s7, s3
                  slti         s3, s6, 779
                  sltiu        t5, a7, -1584
                  slt          s9, s5, t2
                  sll          s10, tp, zero
412:              addi         s8, a5, -2011
                  or           s9, s0, s4
                  sub          s0, tp, a4
                  bltu         a5, a1, 435f
                  srli         t4, a3, 23
                  bgeu         t3, s11, 437f
                  andi         t5, s7, 382
419:              add          s8, s4, t1
                  and          zero, s8, t5
                  and          a2, a6, a5
                  bge          tp, s1, 439f
                  sra          s6, s3, s3
                  srai         s3, t1, 16
                  slti         s0, t0, -324
                  slli         a6, s8, 15
                  slti         ra, t2, 893
                  nop
                  lui          a6, 991891
                  srl          t1, t0, s6
                  sub          s1, t2, s2
                  lui          s4, 857632
                  sub          s6, t5, s8
                  blt          a5, t5, 453f
435:              and          sp, gp, s3
                  sltu         a0, a7, a1
437:              srl          a0, s0, a7
                  addi         a3, s3, 1172
439:              sltiu        a6, a7, -114
                  sltu         s5, t1, s1
                  srli         a6, a5, 18
                  add          s0, s3, s2
                  sub          t6, s7, s11
                  addi         s0, s11, -1539
                  lui          a2, 856040
                  ori          a2, s2, 548
                  blt          a2, a4, 465f
                  sltiu        a1, t0, 412
                  bltu         s3, t3, 453f
                  sltu         s0, sp, a4
                  xor          a3, gp, sp
                  sll          tp, s10, t6
453:              xor          s4, s9, s0
                  beq          s8, s1, 474f
                  srai         a4, s8, 12
                  and          s5, s9, t0
                  ori          a7, a3, -1666
                  bltu         s2, gp, 470f
                  and          a6, t2, s0
                  slli         s1, gp, 22
                  slli         a5, t1, 26
                  sub          tp, s4, zero
                  slli         a7, s0, 6
                  lui          tp, 141399
465:              addi         a4, t3, -1917
                  sra          sp, s9, a6
                  add          s2, t0, tp
                  slti         a1, s10, -282
                  auipc        tp, 268229
470:              bltu         s4, gp, 479f
                  bltu         s4, t3, 475f
                  and          s3, a7, a0
                  blt          s2, a0, 480f
474:              srli         s1, t1, 24
475:              beq          a3, t0, 480f
                  add          a5, t1, t2
                  bgeu         a6, sp, 490f
                  and          s2, a4, zero
479:              nop
480:              blt          s9, s3, 482f
                  xor          sp, a2, t0
482:              sll          s2, s4, t4
                  bge          s10, gp, 498f
                  slli         a7, a5, 15
                  auipc        s11, 56300
                  blt          a3, t4, 501f
                  bltu         t2, s5, 502f
                  sub          s11, s10, a1
                  bge          t6, t6, 503f
490:              srl          a7, a1, s2
                  nop
                  lui          a2, 1000384
                  andi         t4, a5, -1845
                  sltu         a3, a7, t0
                  and          t0, zero, a3
                  sltiu        s6, s10, -1543
                  sub          s8, a7, zero
498:              andi         s5, s7, -1370
                  ori          s10, a2, -334
                  xori         gp, a6, -1908
501:              auipc        tp, 644426
502:              srli         a0, a7, 16
503:              blt          s8, t3, 514f
                  sll          a4, a0, a2
                  or           zero, t5, sp
                  bge          s4, t6, 521f
                  sltu         s2, tp, sp
                  or           a4, t1, s2
                  lui          s8, 158152
                  or           a0, zero, t3
                  add          sp, gp, t3
                  slti         s11, s2, 937
                  beq          s6, a7, 530f
514:              slti         s4, a2, -622
                  beq          t4, t1, 523f
                  slt          t1, a4, t2
                  andi         s4, ra, 385
                  auipc        t5, 185303
                  beq          t4, gp, 524f
                  addi         s1, s0, 1808
521:              bge          a0, s10, 536f
                  bne          s6, s4, 530f
523:              xor          s3, ra, a1
524:              bne          t6, s0, 528f
                  nop
                  nop
                  nop
528:              bge          t3, a1, 541f
                  slti         t4, ra, -828
530:              nop
                  sltu         s2, t0, t6
                  srli         s10, a6, 8
                  andi         s4, s3, -1405
                  bge          t6, s6, 543f
                  addi         s6, t5, -74
536:              sll          a2, tp, tp
                  sltiu        a4, a0, 1098
                  sra          a1, s10, t6
                  beq          t6, s6, 547f
                  slli         a2, a4, 12
541:              slli         tp, tp, 20
                  xori         s10, s3, 344
543:              slti         s11, t0, -1467
                  bge          s4, a4, 551f
                  beq          t5, ra, 553f
                  or           tp, t5, s5
547:              nop
                  sub          t5, t5, t2
                  sra          a0, s6, t6
                  or           tp, gp, a3
551:              xor          s5, a0, t5
                  blt          a1, t1, 570f
553:              sltu         s1, s6, s8
                  srai         sp, a3, 8
                  sltu         a3, a3, s5
                  slti         s0, s9, -274
                  and          t4, a5, s5
                  xor          tp, gp, s11
                  sub          s1, tp, s3
                  xor          t5, a7, t2
                  addi         sp, a0, 1115
                  sub          s5, a2, a6
                  nop
                  xori         t6, t2, 148
                  slti         s9, s4, -1028
                  bgeu         t5, a1, 586f
                  xori         s10, t4, -2001
                  slt          tp, t2, s2
                  slli         sp, s8, 16
570:              bltu         s10, s5, 589f
                  slli         s4, t0, 21
                  ori          a3, a0, -1179
                  sra          t5, a1, t1
                  slti         a0, s5, -1467
                  srai         a2, a0, 10
                  slti         a1, s2, -77
                  add          t1, ra, s5
                  lui          s4, 71933
                  beq          a2, a3, 594f
                  ori          a3, a5, -254
                  slti         s8, t5, -908
                  srai         s10, s4, 9
                  sll          t0, sp, s5
                  bgeu         t5, tp, 601f
                  bgeu         a3, a1, 602f
586:              sra          a2, a0, t5
                  slti         t5, t0, -1209
                  add          t0, s3, s5
589:              sltu         a2, a2, tp
                  sub          a2, t4, zero
                  slti         s4, s8, -309
                  sltu         s10, a0, a7
                  sll          a2, t6, sp
594:              sltiu        s5, s10, -1305
                  addi         a6, t0, -368
                  slt          t0, s8, gp
                  srl          zero, sp, s10
                  ori          t6, s3, 1793
                  xor          a4, s4, s5
                  slli         s10, ra, 17
601:              addi         s2, s2, -83
602:              xori         t6, t4, 1733
                  bgeu         a2, gp, 605f
                  srl          a0, t3, s0
605:              slli         a6, s10, 16
                  add          tp, t3, s2
                  slli         s3, a5, 19
                  andi         t0, a5, -1176
                  bltu         t6, s6, 619f
                  slti         s3, a1, -750
                  xori         t4, t0, 1186
                  andi         t6, s4, 623
                  slti         a6, a1, -1083
                  bne          a2, s4, 619f
                  nop
                  sra          s11, s0, s9
                  sra          a7, t3, t6
                  beq          a7, gp, 619f
619:              srli         s6, gp, 2
                  lw           t1, 4(s7)
                  lui          a0, 806270
                  slti         zero, s6, -1727
                  srli         s8, a7, 14
                  addi         s7, s7, 12
                  slt          a2, a1, s9
881:              addi x11, x6, 1
881:              jalr x11, x11, 0
sub_1:            addi         s7, s7, -52
                  slli         s8, t6, 3
                  addi         s10, s8, 1714
                  nop
                  slli         sp, t5, 19
                  and          s3, s4, s11
                  slti         s9, s4, -864
                  sw           t1, 4(s7)
                  srl          s0, a1, a0
                  lui          t0, 33322
                  bne          tp, zero, 12f
                  bltu         s5, a6, 7f
                  addi         t1, a6, 1869
                  sra          a4, s10, s6
                  or           zero, t4, a2
                  addi         t0, s10, 1121
                  beq          a2, s8, 23f
7:                beq          ra, s11, 12f
                  bge          s8, a0, 14f
                  bne          a6, gp, 22f
                  bge          s2, s11, 17f
                  srli         s4, t1, 8
12:               bge          a0, tp, 31f
                  lui          tp, 764008
14:               and          t6, tp, tp
                  xori         gp, s7, 1650
                  srl          a7, s9, t1
17:               sll          s9, s9, a5
                  sub          s10, a5, t3
                  slli         ra, s1, 17
                  slli         t4, zero, 28
                  sll          s10, s7, gp
22:               addi         s5, s4, -218
23:               slti         t5, t3, -2028
                  blt          s11, t3, 32f
                  sub          t0, a1, t0
                  bltu         t3, t6, 32f
                  slti         t4, a4, -1060
                  bne          t1, t4, 32f
                  bgeu         s11, s3, 32f
                  sra          a1, s3, t6
31:               srli         t0, a4, 13
32:               addi         a2, a4, 1985
                  lw           t1, 4(s7)
                  addi         s7, s7, 52
                  sltu         s3, t4, t6
                  or           a4, s4, gp
                  sll          zero, s8, sp
48:               addi x26, x6, 0
48:               jalr x26, x26, 0
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x7, x23, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x26, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x26, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x26, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x26, x22, ecall_handler
                  li x22, 0x1
                  beq x26, x22, instr_fault_handler
                  li x22, 0x5
                  beq x26, x22, load_fault_handler
                  li x22, 0x7
                  beq x26, x22, store_fault_handler
                  li x22, 0xc
                  beq x26, x22, pt_fault_handler
                  li x22, 0xd
                  beq x26, x22, pt_fault_handler
                  li x22, 0xf
                  beq x26, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x23, x7, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x7, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x7, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x23, x7, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x23, x7, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x23, x7, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
