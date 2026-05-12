.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x9, kernel_stack_end

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
                  li x0, 0xf30fa157
                  li x1, 0xc64a8216
                  li x2, 0x30797987
                  li x3, 0x80000000
                  li x5, 0x7
                  li x6, 0x9b49ddc2
                  li x7, 0x80000000
                  li x8, 0x7
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x464128ca
                  li x14, 0xf18c589c
                  li x15, 0xffad90f6
                  li x16, 0x2d0345b6
                  li x17, 0x7
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0xc
                  li x21, 0xb
                  li x22, 0xf0fa73f5
                  li x23, 0x80000000
                  li x24, 0xf0b99d30
                  li x25, 0xf27ab387
                  li x26, 0xd
                  li x27, 0x5780dbec
                  li x28, 0x0
                  li x29, 0x4
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x4, user_stack_end
main:             add          t2, ra, s7
                  xor          t6, a4, a2
                  and          a0, s8, t0
                  andi         s0, s7, -1865
                  sltiu        t6, s2, -1904
                  slli         t0, s9, 27
                  addi         s4, s6, -638
                  la           t3, sub_2
                  addi         t3, t3, -972
                  or           s10, s5, a0
                  or           a4, s8, t5
                  or           s3, s0, s9
main_j2:          jalr         ra, t3, 972 #jump main -> sub_2
                  add          t2, a3, sp
                  sra          ra, s0, t3
                  la           t6, sub_3
                  sra          a7, a5, t5
                  addi         t6, t6, 875
                  xori         s10, t5, -825
                  srl          a2, gp, s7
                  lui          zero, 217642
                  lui          a5, 106652
                  slt          t5, t0, a3
main_j4:          jalr         ra, t6, -875 #jump main -> sub_3
main_0:           jal          ra, 3f
0:                jal          t1, 21f
1:                jal          ra, 13f
2:                jal          t1, 9f
3:                jal          ra, 16f
4:                jal          t5, 17f
5:                jal          a7, 19f
6:                jal          ra, 15f
7:                jal          ra, 5b
8:                jal          ra, 25f
9:                jal          ra, 22f
10:               jal          ra, 8b
11:               jal          t1, 12f
12:               jal          ra, 10b
13:               jal          t3, 26f
14:               jal          ra, 23f
15:               jal          s7, 11b
16:               jal          a1, 6b
17:               jal          t1, 0b
18:               jal          a2, 4b
19:               jal          s9, 1b
20:               jal          ra, 18b
21:               jal          t1, 14b
22:               jal          t1, 24f
23:               jal          t4, 7b
24:               jal          ra, 20b
25:               jal          ra, 2b
26:               jal          t1, 27f
27:               and          t1, s8, s0
main_1:           jal          ra, 17f
0:                jal          t1, 2f
1:                jal          ra, 21f
2:                jal          s2, 11f
3:                jal          t1, 5f
4:                jal          t5, 9f
5:                jal          t1, 6f
6:                jal          ra, 16f
7:                jal          gp, 4b
8:                jal          gp, 12f
9:                jal          s9, 8b
10:               jal          sp, 7b
11:               jal          ra, 13f
12:               jal          ra, 20f
13:               jal          ra, 14f
14:               jal          a0, 1b
15:               jal          a1, 0b
16:               jal          ra, 10b
17:               jal          sp, 3b
18:               jal          t3, 15b
19:               jal          t0, 18b
20:               jal          s8, 19b
21:               auipc        t2, 682587
                  sltiu        t5, s5, -1838
                  srli         s9, s7, 21
                  sub          a7, s4, a0
                  nop
                  sra          gp, a4, ra
                  sltu         s3, s4, s9
                  sll          s11, t0, t5
                  bge          t5, s8, 20f
                  nop
                  blt          a7, a5, 22f
                  sll          t2, s2, a7
                  srl          a5, s0, s1
                  bge          a2, a5, 32f
                  slti         a0, a0, 1864
                  xori         s6, s8, -1093
                  slt          s7, s6, s5
                  srl          s11, gp, t6
                  srli         zero, a1, 29
                  xori         a2, sp, -498
                  bge          a0, s11, 36f
20:               blt          t1, ra, 30f
                  or           t4, s5, t5
22:               slli         a4, a6, 7
                  auipc        s11, 102622
                  ori          a4, a5, -683
                  lui          s3, 706116
                  sltiu        t1, t6, -1621
                  bgeu         t5, s7, 44f
                  xori         s6, t6, 1323
                  or           t0, s2, s3
30:               bgeu         s3, s4, 50f
                  sltiu        t4, s4, -166
                  slti         s10, s6, 86
                  la           ra, sub_1
                  slt          s2, a7, a0
                  addi         ra, ra, -633
                  slti         s8, t1, 1381
                  srai         s4, ra, 20
                  slti         t1, s1, 612
                  bge          s11, a3, main_j1 #branch to jump instr
                  sltu         zero, a6, s4
main_j1:          jalr         ra, ra, 634 #jump main -> sub_1
32:               beq          a2, tp, 34f
                  sra          a2, a7, s11
34:               or           gp, gp, sp
                  sll          s11, s1, a5
36:               lui          a2, 480582
                  add          s3, s8, sp
                  sltiu        a7, t2, -1927
                  bge          s0, s11, 46f
                  lui          t5, 465534
                  sub          a5, t6, s5
                  slt          s10, s3, ra
                  and          s2, gp, s9
44:               bge          s4, s0, 59f
                  sll          s2, s5, a0
46:               and          s5, a5, tp
                  sll          a4, s10, s1
                  andi         t4, a0, -1504
                  bltu         s9, t6, 65f
50:               srai         t4, a4, 30
                  xor          a3, t0, tp
                  addi         t4, s6, 63
                  nop
                  slt          t2, s10, s3
                  addi         t4, a1, 1516
                  srli         t6, ra, 3
                  nop
                  andi         s6, s6, 1276
59:               sub          s0, a7, t2
                  srai         t1, s10, 12
                  sltiu        a4, t3, 515
                  xor          t1, a1, t4
                  ori          s4, a4, -1951
                  xori         s9, gp, 541
65:               slt          s5, s8, s7
                  bne          t0, t3, 85f
                  sub          a1, s5, s1
                  andi         a5, a3, -1718
                  srai         s8, s9, 0
                  xor          ra, ra, s10
                  add          t4, s6, a5
                  nop
                  and          s0, a2, a2
                  and          s3, s0, s4
                  or           a2, gp, t0
                  sltiu        s5, zero, -1123
                  blt          s7, t1, 90f
                  bne          a3, t2, 84f
                  ori          s11, t0, -916
                  ori          t0, s8, -739
                  slti         s7, a0, 1291
                  la           a3, sub_4
                  srl          t1, t3, a6
                  srai         a4, a5, 28
                  lui          t4, 149286
                  xori         zero, a7, -1501
                  xori         t0, ra, 1042
                  lui          t6, 570746
                  addi         a3, a3, 569
                  bne          s8, s8, main_j3 #branch to jump instr
                  lui          t2, 865411
                  ori          t4, a5, -551
main_j3:          jalr         ra, a3, -569 #jump main -> sub_4
                  auipc        s9, 951454
                  xor          ra, a5, t3
                  bgeu         gp, t5, 86f
                  sra          t5, t6, a0
84:               bge          sp, zero, 103f
85:               bltu         s3, a6, 89f
86:               andi         a5, t3, 662
                  lui          s7, 859111
                  sltu         a2, s9, a4
89:               slt          a1, t4, tp
90:               srai         s11, t2, 3
                  and          t1, t2, s9
                  ori          t0, a7, -361
                  slt          t2, a7, s5
                  srl          a1, s11, s5
                  beq          s4, s6, 108f
                  srli         t3, s2, 2
                  andi         s9, t4, -265
                  slli         a3, s7, 30
                  bltu         a7, s2, 106f
                  srl          s5, s9, t2
                  bgeu         s2, s4, 111f
                  bgeu         s6, a7, 113f
103:              add          t4, s9, ra
                  sll          sp, s0, t4
                  add          zero, s9, s7
106:              srl          t3, t6, zero
                  slt          s5, s2, a1
108:              xor          s4, s5, s10
                  beq          s2, t5, 113f
                  sltu         a2, a7, t5
111:              blt          ra, s1, 127f
                  andi         sp, t2, 1010
113:              lui          a7, 893023
                  sra          s5, a6, a4
                  srai         a4, s1, 30
                  lui          s4, 19560
                  srli         s3, s11, 4
                  bne          t2, t2, 128f
                  addi         a3, zero, -1360
                  andi         t5, a4, 1850
                  add          t5, tp, s3
                  bgeu         t3, s2, 129f
                  srai         s11, s1, 9
                  sub          s4, ra, s9
                  srli         a2, ra, 17
                  sltiu        t5, a1, -382
127:              add          a2, t0, a4
128:              sltiu        s5, a4, -681
129:              lui          t4, 1026701
                  sltu         s5, t0, s8
                  ori          a3, tp, -349
                  sltu         s3, ra, t2
                  srli         a2, s9, 22
                  slt          a5, a0, s7
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltiu        sp, s0, 106
                  addi         tp, tp, -12
                  xori         a5, t2, -917
                  srli         s0, s3, 16
                  sw           ra, 4(tp)
                  slli         s0, s1, 3
sub_2_3:          jal          ra, 0f
0:                jal          ra, 20f
1:                jal          ra, 11f
2:                jal          ra, 16f
3:                jal          t1, 22f
4:                jal          ra, 13f
5:                jal          sp, 6f
6:                jal          gp, 3b
7:                jal          gp, 27f
8:                jal          ra, 18f
9:                jal          s6, 1b
10:               jal          t3, 8b
11:               jal          ra, 4b
12:               jal          sp, 21f
13:               jal          s4, 25f
14:               jal          ra, 5b
15:               jal          ra, 24f
16:               jal          a3, 10b
17:               jal          ra, 15b
18:               jal          ra, 7b
19:               jal          ra, 2b
20:               jal          ra, 23f
21:               jal          ra, 19b
22:               jal          ra, 28f
23:               jal          ra, 12b
24:               jal          t1, 9b
25:               jal          t0, 26f
26:               jal          t1, 14b
27:               jal          ra, 17b
28:               xori         s6, s3, 634
sub_2_5:          jal          ra, 0f
0:                jal          t1, 6f
1:                jal          ra, 2f
2:                jal          a1, 11f
3:                jal          ra, 9f
4:                jal          ra, 3b
5:                jal          t0, 10f
6:                jal          ra, 13f
7:                jal          t1, 14f
8:                jal          ra, 12f
9:                jal          ra, 16f
10:               jal          t1, 7b
11:               jal          a0, 15f
12:               jal          ra, 1b
13:               jal          ra, 8b
14:               jal          ra, 4b
15:               jal          gp, 5b
16:               srli         t2, t5, 7
sub_2_2:          jal          ra, 0f
0:                jal          ra, 11f
1:                jal          t4, 4f
2:                jal          ra, 10f
3:                jal          ra, 1b
4:                jal          ra, 17f
5:                jal          ra, 18f
6:                jal          ra, 2b
7:                jal          s10, 12f
8:                jal          sp, 16f
9:                jal          ra, 3b
10:               jal          t0, 9b
11:               jal          t1, 6b
12:               jal          ra, 14f
13:               jal          ra, 7b
14:               jal          s7, 8b
15:               jal          t0, 5b
16:               jal          t1, 15b
17:               jal          s2, 13b
18:               add          s8, s8, tp
sub_2_0:          jal          ra, 1f
0:                jal          ra, 25f
1:                jal          ra, 4f
2:                jal          ra, 18f
3:                jal          sp, 5f
4:                jal          t2, 6f
5:                jal          ra, 8f
6:                jal          ra, 20f
7:                jal          ra, 9f
8:                jal          ra, 21f
9:                jal          ra, 26f
10:               jal          ra, 0b
11:               jal          t1, 23f
12:               jal          t1, 22f
13:               jal          t1, 24f
14:               jal          ra, 11b
15:               jal          ra, 13b
16:               jal          t1, 17f
17:               jal          s4, 15b
18:               jal          ra, 27f
19:               jal          ra, 2b
20:               jal          ra, 14b
21:               jal          ra, 19b
22:               jal          t1, 3b
23:               jal          t1, 16b
24:               jal          ra, 7b
25:               jal          t0, 12b
26:               jal          t1, 10b
27:               slt          s3, t1, ra
sub_2_7:          jal          ra, 0f
0:                jal          t0, 9f
1:                jal          ra, 12f
2:                jal          t3, 5f
3:                jal          ra, 15f
4:                jal          ra, 16f
5:                jal          ra, 13f
6:                jal          t0, 3b
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          t3, 7b
10:               jal          ra, 14f
11:               jal          ra, 4b
12:               jal          ra, 2b
13:               jal          ra, 11b
14:               jal          ra, 8b
15:               jal          t1, 1b
16:               ori          t5, zero, 1863
                  add          ra, s2, s5
                  srli         s3, s11, 14
                  bge          a5, s6, 11f
                  ori          t6, s9, -17
                  addi         a7, s0, -1034
                  and          a2, a2, sp
                  beq          s0, t6, 8f
                  and          sp, s6, a2
8:                add          s5, s5, t0
                  bgeu         t4, t5, 10f
10:               bne          s10, a5, 30f
11:               sll          t0, a3, a2
                  xori         a4, t4, -1082
                  srli         t5, ra, 0
                  srli         a1, a6, 0
                  sub          a1, a0, s6
                  add          s11, t5, t3
                  beq          t4, t6, 23f
                  sltu         s11, t1, s4
                  sub          s11, a3, t5
                  beq          s3, s0, 39f
                  lui          t4, 967753
                  beq          s6, t6, 31f
23:               srl          a3, a2, ra
                  sll          s8, tp, zero
                  slli         a2, s3, 0
                  slti         a4, s6, 1534
                  bgeu         a6, a4, 46f
                  nop
                  slti         a5, t0, -1216
30:               add          s6, zero, t3
31:               srli         s6, s6, 6
                  nop
                  bne          s0, a1, 45f
                  slti         t3, t2, 717
                  slli         a4, s6, 21
                  blt          a1, a7, 53f
                  auipc        s6, 185012
                  sra          t1, gp, a4
39:               bgeu         s9, a7, 46f
                  beq          t2, t6, 46f
                  beq          a5, a3, 45f
                  beq          a3, s5, 51f
                  auipc        s3, 644884
                  xori         zero, s8, -1294
45:               bgeu         s7, s1, 50f
46:               addi         t6, ra, -874
                  beq          a3, s7, 67f
                  srai         s0, t4, 2
                  xor          t0, t4, s9
50:               sra          s2, s8, a0
51:               andi         s6, s11, 286
                  srai         t6, t1, 29
53:               blt          a7, t3, 61f
                  auipc        s8, 993988
                  xor          t0, a3, zero
                  auipc        s7, 660511
                  beq          sp, s5, 67f
                  slti         a3, t5, 1364
                  srai         a2, a2, 9
                  bgeu         a3, zero, 67f
61:               srli         t3, s3, 7
                  or           t0, a5, t1
                  beq          gp, gp, 72f
                  nop
                  or           a4, t0, s0
                  srl          t3, a7, s7
67:               bge          t6, s8, 83f
                  addi         s11, t5, 178
                  andi         s0, s6, -124
                  slt          s10, s2, s10
                  slli         s5, t5, 21
72:               addi         t1, a3, 687
                  add          s2, ra, t2
                  add          t1, zero, s11
                  xori         t5, zero, 1969
                  xor          gp, a4, s0
                  sltiu        s11, a2, -361
                  slt          s10, gp, s8
                  and          s8, a0, s10
                  xor          t1, s4, s6
                  addi         s10, a0, 991
                  xori         s10, s8, 1886
83:               slt          a0, zero, s2
                  andi         t0, s11, 1132
                  slti         sp, t4, -1247
                  srl          t2, s3, s9
                  srai         a5, a2, 23
                  srl          t3, ra, gp
                  and          s10, a6, s0
                  slli         s4, s8, 1
                  blt          t1, t4, 94f
                  ori          t0, a7, 1375
                  andi         s4, a6, -348
94:               nop
                  xori         a3, s9, -1747
                  srl          a3, gp, s2
                  bne          s1, s8, 98f
98:               slli         gp, t4, 26
                  bltu         s11, t1, 103f
                  bge          t0, s5, 110f
                  add          a3, zero, ra
                  sltiu        ra, a1, -657
103:              slli         ra, t3, 24
                  xor          t4, a3, s11
                  sltiu        t0, s6, -935
                  auipc        t5, 251865
                  xor          a5, s0, a7
                  bge          s8, a6, 125f
                  sltiu        a3, a0, -482
110:              slti         s8, s5, -2014
                  auipc        a2, 587138
                  beq          s5, ra, 119f
                  nop
                  srai         a5, t2, 0
                  srl          a3, s11, a6
                  bgeu         s1, s9, 131f
                  or           a2, t1, tp
                  srai         s7, a7, 25
119:              slli         a7, t2, 20
                  and          t1, s3, t2
                  addi         a3, s9, -1500
                  auipc        s8, 195199
                  nop
                  bne          zero, sp, 141f
125:              addi         t2, s0, 1973
                  blt          t3, a6, 134f
                  lui          s6, 854806
                  slli         t6, zero, 19
                  auipc        s3, 122869
                  addi         a2, t4, 1455
131:              beq          a0, s0, 141f
                  sltu         s6, a4, t5
                  slti         a1, a4, -21
134:              srli         t4, a5, 27
                  auipc        a4, 489073
                  bltu         s9, s1, 155f
                  srai         s8, s5, 0
                  sltu         s2, gp, s2
                  srai         s9, t2, 8
                  xor          sp, a5, s7
141:              and          a1, a3, s1
                  srli         a0, sp, 19
                  or           t1, s11, a3
                  sltu         t4, s5, zero
                  slti         a0, a6, -161
                  blt          s6, a4, 152f
                  andi         s11, a1, -999
                  srl          t0, a3, s9
                  slt          t1, ra, s3
                  ori          s3, s8, 195
                  lui          a2, 990860
152:              bgeu         a5, s2, 160f
sub_2_6:          jal          ra, 4f
0:                jal          a7, 24f
1:                jal          ra, 23f
2:                jal          ra, 15f
3:                jal          t1, 19f
4:                jal          ra, 11f
5:                jal          ra, 2b
6:                jal          ra, 16f
7:                jal          t1, 8f
8:                jal          ra, 12f
9:                jal          t1, 25f
10:               jal          a2, 9b
11:               jal          ra, 3b
12:               jal          ra, 26f
13:               jal          ra, 20f
14:               jal          s5, 10b
15:               jal          t1, 0b
16:               jal          ra, 14b
17:               jal          ra, 7b
18:               jal          ra, 5b
19:               jal          t1, 21f
20:               jal          t5, 17b
21:               jal          t2, 22f
22:               jal          ra, 18b
23:               jal          t0, 13b
24:               jal          t1, 6b
25:               jal          t0, 1b
26:               sll          gp, tp, ra
                  xori         zero, tp, 626
                  bltu         tp, a0, 163f
155:              bgeu         t5, a0, 174f
                  beq          t0, t6, 165f
                  auipc        t3, 8341
                  xor          t5, a0, s8
                  beq          s0, s5, 179f
160:              slli         a4, s4, 5
                  bne          t5, zero, 164f
                  srli         a0, a5, 15
163:              add          s11, a3, zero
164:              addi         t5, a3, 19
165:              bltu         a2, s10, 182f
                  auipc        t6, 297476
                  lui          a3, 855376
                  bltu         sp, t3, 173f
                  ori          s3, t0, -1966
                  ori          a0, a3, -293
                  slt          s8, a1, ra
                  add          s10, a0, gp
173:              bne          s9, s7, 177f
174:              srl          t5, t0, t3
                  beq          a7, s3, 192f
                  bge          s6, s4, 177f
177:              srai         t2, t6, 19
                  nop
179:              sltiu        s6, s10, 1431
                  xor          t4, s4, tp
                  bne          a2, a2, 185f
182:              srai         s9, a0, 20
                  slt          a7, gp, t4
                  and          s8, s0, gp
185:              or           t0, s9, ra
                  sra          a4, s8, a0
                  xori         s8, gp, 464
                  slt          a5, a0, s1
                  slti         s11, zero, 459
                  sub          s11, a7, sp
                  or           gp, t3, t5
192:              ori          a0, a7, 1048
                  bne          t3, a3, 209f
                  sub          t4, t4, a5
                  slli         t1, a6, 29
                  addi         s9, s6, -1922
                  srai         s0, sp, 19
                  slli         a3, a0, 13
                  blt          ra, t5, 208f
                  srai         a4, s3, 6
                  nop
                  srli         t2, s4, 29
                  bge          tp, t6, 210f
                  blt          t5, s6, 211f
                  bltu         a6, s0, 214f
                  xor          s6, s1, s1
                  slti         sp, s3, -849
208:              srli         a0, s3, 14
209:              beq          t6, a6, 210f
210:              sub          ra, s4, t4
211:              blt          sp, s2, 226f
                  ori          s9, tp, -935
                  ori          a4, a3, -94
214:              addi         s6, a7, -262
                  beq          s5, t2, 235f
                  ori          s4, tp, -371
                  slti         t5, a2, 1501
                  beq          t1, s10, 228f
                  sll          t1, gp, a7
                  auipc        ra, 74930
                  xori         s10, t2, 78
                  beq          s4, s3, 230f
                  sub          s10, s5, zero
                  beq          s2, s10, 241f
                  nop
226:              bltu         a4, s8, 232f
                  srl          s11, s8, gp
228:              bne          tp, a4, 230f
                  addi         s5, a2, 1695
230:              srl          gp, s10, t2
                  sltiu        s4, t3, -1979
232:              or           a3, s1, t6
                  bgeu         t1, sp, 245f
                  bgeu         ra, t3, 241f
235:              slti         s11, s6, -1685
                  srl          s3, t1, t6
                  bgeu         s3, s2, 246f
                  bltu         s11, s6, 239f
239:              xor          s7, a5, ra
                  ori          s10, s1, -917
241:              add          s11, sp, zero
                  slti         t6, a3, -1833
                  bge          s6, a6, 247f
                  nop
245:              bge          t0, s3, 260f
246:              srai         a5, s1, 2
247:              sltu         s11, s5, t3
                  bltu         s9, s2, 249f
249:              nop
                  xor          a3, t5, s11
                  sub          s8, a1, t4
                  bne          s10, a0, 272f
                  srli         a0, s8, 27
                  sra          a4, s8, s4
                  addi         s9, t2, 1573
                  bge          t1, a2, 264f
                  sra          s11, s11, t0
                  auipc        gp, 879769
                  lui          s9, 80308
260:              xor          s0, a0, a6
                  sll          s8, s7, t4
                  xori         s3, s5, 1817
                  sll          t3, ra, s5
264:              sltiu        a2, a1, -762
                  nop
                  slt          s3, s8, a1
                  sltiu        s6, s9, -1263
                  lui          s6, 243908
                  sltu         s8, ra, s4
                  slti         gp, s5, -1334
                  sltu         s5, sp, a5
272:              sll          a2, t6, s8
                  bge          s3, a7, 282f
                  srli         s7, a6, 27
                  bgeu         t1, s10, 285f
                  sltu         t4, s9, t5
                  andi         a1, a5, -72
                  bne          s10, s5, 290f
                  xor          ra, sp, gp
                  sra          sp, s8, s3
                  srai         t2, a3, 27
282:              bge          t3, ra, 289f
                  xor          t6, s8, a0
                  sltiu        t5, s8, 1805
sub_2_4:          jal          ra, 12f
0:                jal          ra, 7f
1:                jal          ra, 17f
2:                jal          t5, 11f
3:                jal          ra, 13f
4:                jal          t1, 6f
5:                jal          t1, 10f
6:                jal          ra, 2b
7:                jal          t6, 14f
8:                jal          t6, 3b
9:                jal          ra, 16f
10:               jal          ra, 8b
11:               jal          ra, 5b
12:               jal          ra, 4b
13:               jal          ra, 1b
14:               jal          ra, 15f
15:               jal          ra, 9b
16:               jal          a0, 19f
17:               jal          t1, 18f
18:               jal          ra, 0b
19:               jal          ra, 20f
20:               xori         a3, a5, -1334
285:              slt          a4, t0, s5
                  srl          s5, zero, s9
                  auipc        a0, 822478
                  beq          a4, a5, 297f
289:              beq          a5, ra, 297f
290:              ori          a3, s3, -2029
                  or           a7, tp, s7
                  bltu         s5, s6, 297f
                  slt          zero, s8, t0
                  xori         s6, zero, 1685
                  xor          t3, a6, t1
                  sll          t0, a2, t0
297:              srli         s0, s0, 4
                  xor          s2, s2, a1
                  blt          s1, a7, 315f
                  sub          a3, gp, a7
                  and          a0, s4, sp
                  bgeu         s2, s6, 304f
                  sltiu        a2, a2, 23
304:              sltiu        a7, a0, 1521
                  blt          s3, s9, 314f
                  xori         t4, a6, -659
                  slti         s9, s2, 140
                  addi         gp, s6, 1145
                  beq          t0, s7, 312f
                  xor          s4, t3, t2
                  lui          a0, 953086
312:              xor          t6, a6, t4
                  bltu         t4, sp, 317f
314:              sub          zero, t2, s0
315:              auipc        t4, 985131
                  bne          s5, t4, 333f
317:              slti         s4, a6, 794
                  xor          a3, a7, a1
                  slti         t0, s9, 661
                  slli         s11, tp, 0
                  sltu         gp, s4, gp
                  sll          s6, s3, ra
                  sra          sp, zero, a1
                  bne          t4, s3, 330f
                  andi         a2, s3, 1988
                  auipc        s4, 160091
                  sub          s7, t1, a4
                  bne          ra, a7, 338f
                  bgeu         a6, tp, 346f
330:              ori          s8, s11, -641
                  auipc        s10, 253613
                  addi         t2, t2, 1324
333:              blt          s11, s2, 340f
                  xor          s11, ra, s3
                  slti         t5, a6, 185
                  auipc        s6, 100177
                  xor          s4, zero, a2
sub_2_1:          jal          ra, 23f
0:                jal          t2, 7f
1:                jal          t1, 0b
2:                jal          t6, 14f
3:                jal          gp, 19f
4:                jal          ra, 6f
5:                jal          a5, 24f
6:                jal          t6, 2b
7:                jal          ra, 25f
8:                jal          ra, 1b
9:                jal          ra, 17f
10:               jal          t1, 13f
11:               jal          s3, 10b
12:               jal          ra, 9b
13:               jal          t1, 3b
14:               jal          ra, 22f
15:               jal          t1, 8b
16:               jal          ra, 15b
17:               jal          ra, 18f
18:               jal          sp, 4b
19:               jal          ra, 20f
20:               jal          ra, 16b
21:               jal          ra, 5b
22:               jal          a5, 11b
23:               jal          ra, 21b
24:               jal          gp, 12b
25:               lui          s0, 817464
338:              bltu         t4, a2, 345f
                  add          t4, a3, s9
sub_2_8:          jal          ra, 0f
0:                jal          t1, 3f
1:                jal          t3, 2f
2:                jal          a0, 10f
3:                jal          ra, 8f
4:                jal          t0, 6f
5:                jal          a5, 1b
6:                jal          sp, 9f
7:                jal          a7, 4b
8:                jal          t0, 7b
9:                jal          t1, 5b
10:               and          s10, s1, sp
340:              sltu         a2, ra, s3
                  bne          s0, s1, 360f
                  bge          s1, a7, 348f
                  slt          a0, a7, s8
                  beq          a5, s5, 363f
345:              sll          a2, sp, a7
346:              srai         s9, s4, 3
                  xor          sp, a3, s5
348:              sub          t2, a3, s4
                  bgeu         t2, a2, 369f
                  slti         t6, s2, 1053
                  slt          t0, a7, s7
                  or           s2, s1, tp
                  and          t6, s9, a3
                  srai         t4, a5, 23
                  bge          t6, zero, 372f
                  blt          a6, t0, 363f
                  sub          s3, a3, a3
                  sll          zero, tp, t5
                  srli         s7, t4, 12
360:              sub          t6, s6, s5
                  slli         s9, s10, 18
                  lui          a3, 139165
363:              bne          a2, s8, 382f
                  sll          s2, gp, a1
                  auipc        t5, 722402
                  lui          a0, 305936
                  or           sp, t4, s3
                  srl          a2, sp, s5
369:              bne          t4, t5, 381f
                  slli         zero, t5, 3
                  lui          s4, 289813
372:              bne          t1, a5, 389f
                  slti         s5, s11, 1364
                  nop
                  blt          s8, a7, 383f
                  slli         a3, s5, 24
                  bne          tp, ra, 378f
378:              lui          s2, 869289
                  beq          a0, gp, 399f
                  ori          s8, a2, -682
381:              lui          gp, 752222
382:              sub          s5, s10, a3
383:              lui          t1, 484264
                  beq          s3, a5, 394f
                  add          s8, s2, t1
                  sltiu        t0, t3, 609
                  sltu         s11, t1, a5
                  slti         a0, t5, 300
389:              or           ra, s1, s5
                  srai         gp, t2, 23
                  beq          s3, t4, 397f
                  bltu         t3, a1, 397f
                  xor          a3, a1, s10
394:              srai         s0, t3, 10
                  or           s11, t1, s10
                  sltiu        t6, a6, -787
397:              srai         s6, t3, 27
                  slli         s5, s9, 5
399:              and          s0, s3, s4
                  andi         s7, t4, 1683
                  srli         t5, s3, 12
                  addi         zero, a0, 496
                  andi         a4, t0, 144
                  or           t3, t3, t2
                  bltu         t3, s11, 414f
                  auipc        s6, 461201
                  srai         s0, s8, 4
                  andi         zero, tp, 627
                  addi         t6, s2, 804
                  sub          s10, s6, s3
                  nop
                  bgeu         s2, s10, 428f
                  bge          t6, t6, 432f
414:              sll          t3, s11, s10
                  addi         sp, s0, -1576
                  slti         sp, s9, -561
                  bne          s0, s11, 420f
                  sub          s11, s9, a6
                  sltu         s9, a6, s9
420:              slli         s7, a7, 27
                  sltu         t6, s2, t2
                  nop
                  slt          a0, zero, s2
                  sltu         t6, sp, a1
                  sltu         gp, a5, a1
                  bltu         s9, tp, 433f
                  bgeu         s6, s3, 435f
428:              sll          a4, a7, s5
                  srl          a2, s11, gp
                  xori         t1, sp, 614
                  auipc        s10, 30588
432:              bne          a2, s9, 441f
433:              slli         s6, s0, 23
                  or           s5, a4, s11
435:              auipc        t6, 304855
                  xori         s9, tp, -1279
                  xori         s5, s11, -394
                  lui          a7, 890715
                  xori         a0, a0, 158
                  sll          t5, s10, s0
441:              srl          s10, a1, ra
                  sra          s4, s8, s10
                  srl          s0, ra, s10
                  bltu         a4, s0, 445f
445:              bge          s10, a7, 459f
                  slli         s10, a2, 14
                  slt          s2, tp, s8
                  xori         s7, a5, -565
                  andi         t0, ra, 257
                  slti         a7, t4, 537
                  bltu         s5, t1, 459f
                  bge          t5, a7, 459f
                  sltiu        a2, s2, 1087
                  srli         zero, s6, 11
                  srl          s6, a6, s10
                  or           s0, s1, a6
                  sltiu        s3, s0, -1978
                  srai         a4, a4, 23
459:              andi         a3, s6, 370
                  slt          t2, ra, a7
                  add          a7, a3, t5
                  lw           ra, 4(tp)
                  slti         t1, a1, -109
                  andi         t2, s6, -2034
                  addi         tp, tp, 12
                  slt          s10, t4, a1
677:              addi x29, x1, 1
677:              jalr x29, x29, 0
sub_3:            addi         tp, tp, -44
                  slli         s4, a1, 26
                  sw           ra, 4(tp)
                  srai         a0, gp, 7
                  slti         a4, gp, 1409
                  xori         sp, s0, 1356
                  auipc        gp, 377682
sub_3_2:          jal          ra, 8f
0:                jal          ra, 4f
1:                jal          ra, 15f
2:                jal          ra, 7f
3:                jal          t1, 5f
4:                jal          ra, 12f
5:                jal          t1, 0b
6:                jal          t1, 24f
7:                jal          s6, 18f
8:                jal          t1, 6b
9:                jal          ra, 27f
10:               jal          ra, 16f
11:               jal          ra, 20f
12:               jal          ra, 26f
13:               jal          s7, 10b
14:               jal          t1, 29f
15:               jal          t0, 14b
16:               jal          t1, 1b
17:               jal          ra, 19f
18:               jal          s10, 25f
19:               jal          ra, 13b
20:               jal          ra, 22f
21:               jal          ra, 23f
22:               jal          s0, 2b
23:               jal          ra, 30f
24:               jal          ra, 9b
25:               jal          s6, 17b
26:               jal          ra, 11b
27:               jal          ra, 28f
28:               jal          t1, 3b
29:               jal          t1, 21b
30:               srl          s11, t2, a1
sub_3_4:          jal          ra, 20f
0:                jal          t0, 16f
1:                jal          ra, 17f
2:                jal          t1, 10f
3:                jal          ra, 7f
4:                jal          t0, 9f
5:                jal          t1, 18f
6:                jal          ra, 12f
7:                jal          t0, 2b
8:                jal          ra, 11f
9:                jal          ra, 8b
10:               jal          ra, 19f
11:               jal          t1, 1b
12:               jal          s9, 15f
13:               jal          a5, 14f
14:               jal          s6, 6b
15:               jal          t1, 3b
16:               jal          ra, 13b
17:               jal          t1, 0b
18:               jal          ra, 4b
19:               jal          ra, 21f
20:               jal          ra, 5b
21:               sra          zero, s5, s8
sub_3_1:          jal          ra, 5f
0:                jal          t1, 27f
1:                jal          gp, 15f
2:                jal          gp, 3f
3:                jal          s6, 7f
4:                jal          t6, 11f
5:                jal          ra, 6f
6:                jal          ra, 18f
7:                jal          a1, 4b
8:                jal          s10, 26f
9:                jal          t1, 23f
10:               jal          s7, 25f
11:               jal          s2, 14f
12:               jal          s3, 0b
13:               jal          s11, 10b
14:               jal          t1, 28f
15:               jal          ra, 17f
16:               jal          ra, 12b
17:               jal          ra, 24f
18:               jal          t1, 13b
19:               jal          t1, 2b
20:               jal          ra, 22f
21:               jal          ra, 16b
22:               jal          ra, 19b
23:               jal          a1, 21b
24:               jal          ra, 9b
25:               jal          t1, 8b
26:               jal          ra, 1b
27:               jal          ra, 20b
28:               sra          s3, t6, s1
sub_3_0:          jal          ra, 4f
0:                jal          ra, 10f
1:                jal          t4, 3f
2:                jal          s3, 1b
3:                jal          t1, 5f
4:                jal          ra, 9f
5:                jal          t1, 6f
6:                jal          ra, 8f
7:                jal          ra, 12f
8:                jal          t1, 7b
9:                jal          ra, 0b
10:               jal          ra, 11f
11:               jal          s7, 2b
12:               sltu         gp, ra, s11
                  bge          a7, a4, 19f
                  slt          t0, s4, t1
                  slli         zero, sp, 2
                  nop
                  sltu         t1, s6, s4
                  auipc        a7, 323480
                  srli         t4, tp, 12
                  sub          gp, t0, s3
                  blt          a7, s11, 28f
                  bge          t3, t3, 29f
                  bge          gp, t0, 21f
                  bne          a1, t5, 12f
12:               xor          s9, s4, s1
                  sltu         ra, s1, sp
                  bgeu         s8, a4, 22f
                  add          gp, a6, t1
                  auipc        s0, 474974
                  and          s7, s3, s9
                  beq          s11, t4, 26f
19:               sll          t4, a6, gp
                  slli         s2, s4, 13
21:               and          t1, t5, s2
22:               auipc        t2, 676320
                  or           s9, s11, ra
                  srai         s2, s8, 15
                  slli         a5, t4, 1
26:               beq          t1, a2, 44f
                  xor          t6, gp, s0
28:               nop
29:               addi         t0, t3, -1380
                  auipc        t2, 83003
                  slt          t1, t1, sp
                  xori         a3, t1, -1180
                  slli         a7, s5, 25
                  nop
                  andi         s6, t2, 957
                  slli         a7, a5, 18
                  slti         t4, s8, -561
                  srl          a2, t1, s1
                  nop
                  blt          t6, s8, 48f
                  slt          s10, gp, a0
                  nop
                  sll          a4, a3, s6
44:               slti         s9, s5, -1915
                  slli         t5, s7, 18
                  and          t5, t5, t4
                  bgeu         t0, t2, 57f
48:               bne          s3, s8, 63f
                  slti         a7, t0, -804
                  nop
                  sltiu        a4, a3, -120
                  or           s7, a2, s5
                  sll          a7, t5, t1
                  bgeu         s3, tp, 61f
                  lui          s2, 554454
                  or           a3, s5, t1
57:               slli         s11, tp, 27
                  add          t1, a7, s4
                  sltiu        t1, a6, 419
                  sll          s8, s11, s7
61:               slli         gp, ra, 5
                  srl          s3, t0, t2
63:               nop
                  beq          a4, s10, 76f
                  bgeu         tp, s11, 80f
                  bltu         s3, a7, 68f
                  sra          s11, s11, sp
68:               xori         zero, a1, 938
                  slt          s5, t0, a5
                  sra          zero, s2, a4
                  sub          s3, t6, a5
                  srai         t1, a7, 27
                  or           t4, s11, gp
                  sra          a4, s10, a3
                  or           ra, s1, tp
76:               lui          t3, 743026
                  sltiu        a2, t0, -730
                  sll          s7, zero, a0
                  slti         s5, s10, 1304
80:               sra          ra, t3, gp
                  srai         t6, gp, 0
                  bne          zero, t0, 102f
                  blt          s2, a5, 100f
                  sltiu        a7, zero, 1320
                  slti         s10, s0, 505
                  sll          s5, s4, a1
                  srli         a1, s10, 3
                  sll          t0, a6, gp
                  slli         a1, t3, 25
                  sltiu        s0, s6, 643
                  lui          s6, 746586
                  add          a1, t1, s11
                  bge          t4, a3, 106f
                  bge          a2, s5, 112f
                  xori         t2, t2, 1387
                  lui          a5, 790600
                  bgeu         ra, zero, 114f
                  srai         s9, s5, 31
                  xori         s9, t0, 1281
100:              bne          s4, s7, 113f
                  xor          a7, a7, s5
102:              xori         s0, sp, 277
                  and          a7, s10, a2
                  bgeu         t6, gp, 124f
                  addi         a3, t3, 397
106:              slli         a3, s10, 27
                  sltu         a2, a5, a6
                  srai         s5, s4, 25
                  xor          t6, s6, a6
                  bge          t5, t1, 119f
                  xori         s9, s10, 1343
112:              srl          s8, a4, s7
113:              and          t3, gp, s10
114:              andi         t4, s0, 824
                  sltu         a5, sp, s2
                  slli         s5, s8, 31
                  sltu         s2, s11, s3
                  bgeu         gp, a0, 132f
119:              srl          a5, s6, s9
                  xor          s6, s0, t6
                  srli         a4, gp, 14
                  sll          t4, zero, t2
                  ori          t5, s7, 22
124:              blt          s4, a0, 128f
                  and          t2, t5, a7
                  xori         a3, tp, 1657
                  bltu         gp, sp, 146f
128:              bge          s8, a1, 139f
                  beq          t1, t3, 133f
                  sub          t0, t1, t4
                  or           s10, t6, a0
132:              add          s3, a0, ra
133:              slti         t3, a0, 1003
                  and          t4, tp, t2
                  lui          a4, 476593
                  sltu         a3, a2, a1
                  slt          s0, ra, s6
                  sub          s4, t5, sp
139:              andi         a0, s4, 984
                  bge          a6, tp, 146f
                  srai         a2, t6, 26
                  srli         s4, s0, 3
                  blt          a2, sp, 160f
                  srl          s2, gp, a0
                  sll          s4, s7, t2
146:              xor          s8, t6, s2
                  bge          a5, s2, 165f
                  beq          s1, tp, 159f
                  lui          a0, 343898
                  xor          s0, s10, sp
                  nop
                  auipc        s11, 132617
                  sltu         a1, t2, a7
                  nop
                  sub          zero, s1, s10
                  srai         t4, a7, 5
                  srli         zero, gp, 0
                  beq          a1, t4, 168f
159:              auipc        s9, 190718
160:              addi         s5, t6, -1945
                  xori         zero, gp, 1897
                  addi         zero, a5, 1910
                  addi         s8, s3, 566
                  slti         s5, s5, 892
165:              slli         s7, t1, 14
                  bne          a3, s10, 181f
                  bgeu         s8, s3, 184f
168:              sra          s4, a3, tp
                  slt          a2, t6, a1
                  sltiu        a3, tp, -856
                  sra          a2, s10, s3
                  sll          s5, s6, t3
                  slti         a2, a0, -142
                  srl          s10, ra, s3
                  srli         t1, t0, 31
sub_3_3:          jal          ra, 0f
0:                jal          ra, 1f
1:                jal          ra, 9f
2:                jal          t1, 11f
3:                jal          a1, 7f
4:                jal          ra, 3b
5:                jal          a1, 8f
6:                jal          ra, 10f
7:                jal          ra, 6b
8:                jal          t3, 2b
9:                jal          ra, 4b
10:               jal          ra, 5b
11:               andi         gp, s5, -430
                  lui          s10, 530474
                  add          s4, t5, a6
                  xor          gp, a3, s6
                  beq          s11, ra, 191f
                  slt          t3, t1, a0
181:              beq          s1, s0, 200f
                  or           zero, s11, gp
                  auipc        t3, 954975
184:              ori          t6, a3, 1444
                  andi         a5, s9, 1113
                  xor          a2, s10, t5
                  bltu         a2, zero, 202f
                  srli         ra, a7, 7
                  xori         ra, zero, 473
                  sltu         s7, s6, s10
191:              or           zero, t1, a7
                  slti         t0, s4, 633
                  and          a5, s1, s5
                  beq          gp, s11, 198f
                  slti         s5, a0, -872
                  add          s2, t1, t6
                  sra          a7, s4, a7
198:              add          a2, a5, a6
                  xori         s7, a1, -1527
200:              sra          t4, t6, a6
                  andi         gp, s1, -409
202:              srai         s11, t6, 1
                  bge          a4, s1, 221f
                  nop
                  bge          s5, tp, 213f
                  sltiu        s11, s5, -658
                  sub          t2, s6, a6
                  sll          a2, t1, t5
                  and          t4, s1, a6
                  bge          t2, t0, 218f
                  blt          tp, t1, 230f
                  slti         s7, a6, -1767
213:              xor          gp, s4, t4
                  auipc        ra, 996597
                  slli         t1, t2, 17
                  xor          zero, t1, tp
                  blt          a1, ra, 224f
218:              sra          t1, s10, t5
                  nop
                  andi         t0, tp, -124
221:              slti         t5, s8, -1461
                  ori          t4, t1, 1950
                  auipc        t3, 497594
224:              andi         s10, s5, -155
                  beq          a2, ra, 242f
                  addi         s10, s1, -497
                  slli         s7, t2, 15
                  blt          ra, t4, 241f
                  srli         a0, ra, 28
230:              srl          a0, s5, s4
                  blt          a6, ra, 251f
                  xori         sp, s1, -439
                  srai         ra, a3, 16
                  and          s6, s11, a2
                  sll          t2, a1, a0
                  sll          sp, s1, t5
                  xori         a7, t5, -281
                  or           s11, t1, a0
                  sltiu        zero, s0, -617
                  addi         sp, a0, -628
241:              sltu         s9, a7, s7
242:              blt          a2, a6, 262f
                  sltiu        s0, s11, 742
                  sltiu        t5, t0, -1122
                  bge          t2, ra, 246f
246:              slti         sp, a4, -1081
                  slli         s5, a0, 23
                  or           a7, s4, t5
                  sltiu        a4, zero, 528
                  slt          t1, s3, s5
251:              sltu         a0, s5, t6
                  slti         a2, s6, 183
                  bltu         a6, s9, 273f
                  slti         a7, tp, 44
                  srl          s5, s10, t5
                  slli         zero, t5, 22
                  ori          t3, a6, -1877
                  slli         a5, a4, 28
                  addi         a7, tp, 1819
                  slt          a5, a4, s3
                  lui          ra, 68397
262:              addi         s0, t5, 2043
                  xori         a5, a7, 54
                  lui          t0, 169498
                  add          s8, a1, s8
                  srl          s9, a4, s11
                  slt          t0, s10, t5
                  xor          t3, s4, tp
                  bne          a1, a6, 271f
                  lui          a7, 102210
271:              sltiu        a0, sp, -1671
                  bne          t4, s7, 287f
273:              addi         s8, t2, 190
                  blt          t6, s5, 285f
                  auipc        gp, 227777
                  slti         t4, gp, -646
                  sll          s7, s8, s4
                  blt          a5, a3, 286f
                  sltu         a0, s0, s1
                  sll          s10, t5, t2
                  bge          s1, gp, 287f
                  bltu         zero, s11, 287f
                  srli         a5, zero, 19
                  sub          s9, gp, a1
285:              addi         s0, ra, -445
286:              add          s5, a0, a2
287:              auipc        t0, 33182
                  lw           ra, 4(tp)
                  xor          a3, s11, s4
                  addi         tp, tp, 44
                  sltu         s9, tp, a4
                  slli         sp, t2, 14
                  and          a1, t6, s2
413:              addi x11, x1, 0
413:              jalr x11, x11, 0
sub_5:            srai         s6, t5, 22
                  add          zero, s4, a3
                  addi         tp, tp, -40
                  srli         a5, a6, 29
                  slti         a2, s10, 1434
                  sltu         t6, s2, t6
                  add          a3, s8, s9
                  auipc        a7, 332689
                  and          s6, a2, a2
                  or           s3, t5, s0
                  sw           ra, 4(tp)
                  or           t2, t5, s1
sub_5_0:          jal          ra, 12f
0:                jal          ra, 2f
1:                jal          s2, 4f
2:                jal          t1, 18f
3:                jal          ra, 10f
4:                jal          ra, 17f
5:                jal          t1, 3b
6:                jal          s11, 5b
7:                jal          ra, 14f
8:                jal          ra, 0b
9:                jal          ra, 16f
10:               jal          s5, 15f
11:               jal          ra, 19f
12:               jal          ra, 9b
13:               jal          ra, 7b
14:               jal          t1, 6b
15:               jal          ra, 11b
16:               jal          ra, 8b
17:               jal          ra, 13b
18:               jal          ra, 1b
19:               auipc        s5, 728545
                  andi         s8, s6, -1586
                  or           t0, ra, ra
                  srai         a5, ra, 27
                  srai         a7, s6, 0
                  srl          s9, s4, a3
                  sltu         t2, gp, t6
                  sll          a5, t5, sp
                  slt          gp, s9, sp
                  sltu         a5, s5, t4
                  nop
                  addi         a3, ra, 1799
                  lui          sp, 125487
                  sub          a1, s7, t4
                  bge          ra, s9, 27f
                  lui          gp, 253729
                  bne          a6, tp, 34f
                  slti         a7, t3, 354
                  bne          t2, a3, 30f
                  xori         t5, a0, 325
                  andi         a7, s6, 1789
                  nop
                  bgeu         s2, s5, 38f
                  and          a0, s0, s0
                  slli         s5, a4, 14
                  bge          t0, s10, 40f
                  bne          s6, a0, 28f
                  addi         zero, tp, 827
27:               sub          t5, tp, t1
28:               auipc        t6, 246796
                  bgeu         sp, a3, 35f
30:               slti         a7, a4, 467
                  bge          s6, s1, 42f
                  bne          s7, t4, 47f
                  bne          ra, s9, 38f
34:               lui          s3, 802202
35:               srai         t1, s10, 11
                  or           t5, tp, zero
                  slti         a1, s6, 893
38:               addi         s9, a1, -1017
                  or           s4, sp, s11
40:               sll          s8, tp, s2
                  srai         t2, ra, 18
42:               sltu         zero, tp, t4
                  sra          s6, ra, s3
                  sra          s3, t2, s8
                  and          a2, t4, a4
                  and          ra, s0, a0
47:               srai         sp, a5, 21
                  xori         sp, s3, 1364
                  blt          t2, s11, 54f
                  sub          a3, t4, t3
                  sub          t0, s10, s11
                  beq          tp, s10, 53f
53:               ori          a7, gp, 1799
54:               nop
                  srli         s6, t0, 11
                  sub          zero, a4, s0
                  lw           ra, 4(tp)
                  auipc        s0, 10512
                  slti         a4, s9, 1038
                  slti         s8, t1, -1271
                  addi         tp, tp, 40
                  and          gp, t5, s11
                  sll          t5, t2, s10
                  ori          s3, t6, 1660
                  sub          t0, a7, gp
99:               addi x25, x1, 0
99:               jalr x25, x25, 0
sub_4:            or           s2, s5, t2
                  addi         tp, tp, -28
                  andi         a5, t5, -1923
                  sw           ra, 4(tp)
                  sltu         s0, a6, t2
                  sra          a0, zero, s8
                  auipc        s4, 947404
                  slli         s0, s3, 6
                  auipc        a1, 414622
                  ori          a3, a2, -1288
                  xori         t6, a3, -1585
                  sltu         ra, t3, a6
                  and          s6, t0, a5
                  blt          s4, a4, sub_4_j6 #branch to jump instr
                  ori          a2, t0, -283
                  sltu         s5, s10, s9
sub_4_j6:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  addi         t5, s8, 989
                  sub          t2, s9, sp
                  add          s7, s2, a1
                  blt          a0, s9, 8f
                  bgeu         t2, a3, 18f
                  bgeu         s4, s0, 25f
                  lui          ra, 465097
                  sltiu        a2, t5, 1832
8:                andi         s8, ra, 1595
                  sltu         t0, a1, t0
                  xori         s6, s5, -1024
                  auipc        s3, 418092
                  sra          a3, s6, a7
                  blt          a0, s0, 27f
                  srl          s5, t3, a4
                  beq          s4, s0, 16f
16:               bltu         s4, s8, 24f
                  auipc        s0, 973351
18:               auipc        s0, 1011315
                  auipc        s8, 710397
                  sltiu        a5, s2, -1731
                  auipc        a0, 825390
                  bgeu         s10, ra, 23f
23:               srl          zero, a3, a7
24:               slli         a2, a0, 17
25:               bgeu         a5, a6, 27f
                  srli         s7, t5, 20
27:               auipc        t3, 402648
                  lw           ra, 4(tp)
                  lui          s0, 401229
                  slti         t5, t6, -1992
                  sra          a0, t5, a7
                  sub          s4, t4, sp
                  lui          s0, 384885
                  and          a7, s4, sp
                  addi         tp, tp, 28
                  or           t1, sp, s6
                  srl          a3, a1, a6
55:               addi x26, x1, 0
55:               jalr x26, x26, 0
sub_1:            beq          a1, s5, sub_1_stack_p
                  sll          t5, a6, s6
sub_1_stack_p:    addi         tp, tp, -40
                  sw           ra, 4(tp)
                  sub          sp, a0, t5
                  xor          t1, ra, t6
                  sltiu        s9, s5, -1088
                  xori         t0, a7, -6
                  sll          sp, sp, t3
sub_1_38:         jal          ra, 13f
0:                jal          ra, 23f
1:                jal          s0, 9f
2:                jal          t1, 3f
3:                jal          ra, 30f
4:                jal          ra, 18f
5:                jal          ra, 8f
6:                jal          s4, 24f
7:                jal          t0, 5b
8:                jal          sp, 1b
9:                jal          s2, 16f
10:               jal          t1, 0b
11:               jal          ra, 15f
12:               jal          ra, 29f
13:               jal          ra, 19f
14:               jal          ra, 6b
15:               jal          ra, 10b
16:               jal          t1, 27f
17:               jal          ra, 20f
18:               jal          ra, 17b
19:               jal          t1, 11b
20:               jal          ra, 2b
21:               jal          ra, 7b
22:               jal          ra, 25f
23:               jal          t1, 26f
24:               jal          ra, 28f
25:               jal          t1, 21b
26:               jal          t0, 14b
27:               jal          ra, 4b
28:               jal          ra, 12b
29:               jal          s0, 22b
30:               srli         t2, t2, 20
sub_1_26:         jal          ra, 27f
0:                jal          t1, 16f
1:                jal          ra, 19f
2:                jal          ra, 3f
3:                jal          ra, 21f
4:                jal          t1, 6f
5:                jal          t6, 26f
6:                jal          gp, 5b
7:                jal          t1, 23f
8:                jal          t1, 9f
9:                jal          ra, 1b
10:               jal          t1, 12f
11:               jal          s8, 20f
12:               jal          ra, 28f
13:               jal          ra, 17f
14:               jal          ra, 22f
15:               jal          ra, 4b
16:               jal          ra, 24f
17:               jal          t1, 15b
18:               jal          s7, 25f
19:               jal          t1, 13b
20:               jal          t2, 14b
21:               jal          sp, 10b
22:               jal          t4, 18b
23:               jal          t1, 8b
24:               jal          gp, 7b
25:               jal          t1, 2b
26:               jal          ra, 11b
27:               jal          s8, 0b
28:               xor          t6, t0, a3
sub_1_6:          jal          ra, 3f
0:                jal          s0, 11f
1:                jal          a2, 7f
2:                jal          t1, 12f
3:                jal          ra, 10f
4:                jal          s5, 9f
5:                jal          ra, 4b
6:                jal          ra, 17f
7:                jal          t4, 13f
8:                jal          t1, 5b
9:                jal          ra, 2b
10:               jal          ra, 16f
11:               jal          t6, 14f
12:               jal          a1, 6b
13:               jal          ra, 8b
14:               jal          t6, 1b
15:               jal          a4, 0b
16:               jal          a4, 15b
17:               ori          a4, a1, 233
sub_1_4:          jal          ra, 18f
0:                jal          ra, 22f
1:                jal          ra, 11f
2:                jal          ra, 15f
3:                jal          t1, 14f
4:                jal          t0, 10f
5:                jal          ra, 17f
6:                jal          t0, 19f
7:                jal          t0, 0b
8:                jal          t0, 13f
9:                jal          s9, 4b
10:               jal          t1, 8b
11:               jal          ra, 2b
12:               jal          t1, 25f
13:               jal          ra, 21f
14:               jal          t1, 23f
15:               jal          a7, 16f
16:               jal          s10, 5b
17:               jal          t1, 9b
18:               jal          ra, 3b
19:               jal          ra, 12b
20:               jal          ra, 1b
21:               jal          ra, 6b
22:               jal          ra, 24f
23:               jal          ra, 7b
24:               jal          t6, 20b
25:               or           t5, zero, s11
sub_1_7:          jal          ra, 20f
0:                jal          a5, 28f
1:                jal          t1, 13f
2:                jal          t4, 5f
3:                jal          t1, 26f
4:                jal          ra, 6f
5:                jal          sp, 3b
6:                jal          t1, 21f
7:                jal          t0, 27f
8:                jal          sp, 14f
9:                jal          gp, 0b
10:               jal          t4, 8b
11:               jal          gp, 25f
12:               jal          s3, 17f
13:               jal          t3, 4b
14:               jal          a5, 23f
15:               jal          s0, 24f
16:               jal          t1, 10b
17:               jal          t1, 2b
18:               jal          ra, 9b
19:               jal          ra, 18b
20:               jal          ra, 7b
21:               jal          t1, 11b
22:               jal          gp, 1b
23:               jal          t4, 15b
24:               jal          ra, 12b
25:               jal          ra, 16b
26:               jal          t1, 19b
27:               jal          t3, 22b
28:               addi         s2, s4, -734
sub_1_12:         jal          ra, 2f
0:                jal          t1, 1f
1:                jal          ra, 24f
2:                jal          ra, 8f
3:                jal          t1, 5f
4:                jal          t2, 22f
5:                jal          a2, 4b
6:                jal          sp, 11f
7:                jal          s4, 12f
8:                jal          ra, 14f
9:                jal          s4, 15f
10:               jal          ra, 6b
11:               jal          ra, 13f
12:               jal          ra, 21f
13:               jal          ra, 25f
14:               jal          t1, 9b
15:               jal          ra, 17f
16:               jal          s2, 10b
17:               jal          s9, 23f
18:               jal          ra, 3b
19:               jal          s7, 20f
20:               jal          a1, 18b
21:               jal          ra, 19b
22:               jal          ra, 16b
23:               jal          ra, 0b
24:               jal          a2, 7b
25:               srai         t6, t6, 12
sub_1_14:         jal          ra, 4f
0:                jal          t1, 6f
1:                jal          ra, 14f
2:                jal          ra, 7f
3:                jal          t1, 10f
4:                jal          t1, 5f
5:                jal          ra, 8f
6:                jal          t1, 3b
7:                jal          ra, 1b
8:                jal          t1, 11f
9:                jal          t1, 0b
10:               jal          a3, 13f
11:               jal          s0, 12f
12:               jal          ra, 9b
13:               jal          ra, 2b
14:               slli         t1, s4, 30
sub_1_34:         jal          ra, 4f
0:                jal          ra, 7f
1:                jal          t1, 2f
2:                jal          t1, 6f
3:                jal          ra, 12f
4:                jal          t3, 8f
5:                jal          t1, 10f
6:                jal          ra, 5b
7:                jal          gp, 17f
8:                jal          t6, 3b
9:                jal          ra, 15f
10:               jal          ra, 13f
11:               jal          ra, 9b
12:               jal          s5, 16f
13:               jal          ra, 14f
14:               jal          t3, 0b
15:               jal          ra, 1b
16:               jal          s4, 11b
17:               jal          t1, 18f
18:               addi         sp, s7, -1916
sub_1_19:         jal          ra, 1f
0:                jal          a3, 24f
1:                jal          ra, 6f
2:                jal          ra, 13f
3:                jal          s6, 14f
4:                jal          gp, 21f
5:                jal          ra, 11f
6:                jal          ra, 15f
7:                jal          t6, 3b
8:                jal          t0, 0b
9:                jal          a2, 22f
10:               jal          t1, 18f
11:               jal          t1, 9b
12:               jal          ra, 16f
13:               jal          s2, 10b
14:               jal          gp, 8b
15:               jal          t1, 2b
16:               jal          ra, 5b
17:               jal          ra, 19f
18:               jal          ra, 4b
19:               jal          ra, 20f
20:               jal          ra, 23f
21:               jal          ra, 12b
22:               jal          ra, 17b
23:               jal          ra, 7b
24:               slli         a5, a2, 21
sub_1_33:         jal          ra, 22f
0:                jal          a1, 10f
1:                jal          s7, 5f
2:                jal          a1, 12f
3:                jal          t1, 1b
4:                jal          t1, 14f
5:                jal          s11, 6f
6:                jal          ra, 24f
7:                jal          t1, 13f
8:                jal          t0, 3b
9:                jal          ra, 28f
10:               jal          t1, 23f
11:               jal          s5, 15f
12:               jal          ra, 18f
13:               jal          s10, 11b
14:               jal          t1, 2b
15:               jal          t1, 9b
16:               jal          s7, 30f
17:               jal          ra, 26f
18:               jal          ra, 7b
19:               jal          ra, 17b
20:               jal          t6, 27f
21:               jal          sp, 16b
22:               jal          ra, 8b
23:               jal          ra, 21b
24:               jal          t5, 29f
25:               jal          gp, 20b
26:               jal          ra, 4b
27:               jal          t1, 19b
28:               jal          ra, 0b
29:               jal          a3, 25b
30:               slt          a3, s4, s2
sub_1_23:         jal          ra, 12f
0:                jal          t1, 16f
1:                jal          s8, 4f
2:                jal          ra, 15f
3:                jal          ra, 9f
4:                jal          gp, 0b
5:                jal          s5, 11f
6:                jal          sp, 1b
7:                jal          t1, 6b
8:                jal          ra, 7b
9:                jal          t1, 2b
10:               jal          s7, 17f
11:               jal          ra, 8b
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          t1, 10b
15:               jal          ra, 18f
16:               jal          s2, 14b
17:               jal          t1, 13b
18:               srai         s8, t0, 18
sub_1_29:         jal          ra, 1f
0:                jal          ra, 11f
1:                jal          gp, 5f
2:                jal          t1, 28f
3:                jal          ra, 24f
4:                jal          s9, 18f
5:                jal          t1, 21f
6:                jal          ra, 7f
7:                jal          ra, 2b
8:                jal          s7, 27f
9:                jal          a1, 6b
10:               jal          ra, 19f
11:               jal          ra, 25f
12:               jal          s9, 14f
13:               jal          ra, 4b
14:               jal          ra, 10b
15:               jal          gp, 8b
16:               jal          ra, 9b
17:               jal          ra, 20f
18:               jal          ra, 3b
19:               jal          ra, 26f
20:               jal          ra, 15b
21:               jal          ra, 0b
22:               jal          ra, 29f
23:               jal          a4, 12b
24:               jal          s8, 16b
25:               jal          t1, 23b
26:               jal          t1, 13b
27:               jal          ra, 22b
28:               jal          t1, 17b
29:               andi         t0, t2, 2000
sub_1_31:         jal          ra, 16f
0:                jal          t0, 17f
1:                jal          t1, 12f
2:                jal          ra, 13f
3:                jal          t1, 5f
4:                jal          gp, 8f
5:                jal          s4, 10f
6:                jal          ra, 1b
7:                jal          t1, 11f
8:                jal          ra, 6b
9:                jal          t1, 14f
10:               jal          s6, 15f
11:               jal          ra, 0b
12:               jal          t1, 7b
13:               jal          ra, 3b
14:               jal          ra, 4b
15:               jal          ra, 9b
16:               jal          gp, 2b
17:               srl          t3, sp, s7
sub_1_2:          jal          ra, 0f
0:                jal          t1, 17f
1:                jal          ra, 6f
2:                jal          a5, 10f
3:                jal          ra, 4f
4:                jal          ra, 18f
5:                jal          t1, 14f
6:                jal          ra, 16f
7:                jal          ra, 20f
8:                jal          t1, 19f
9:                jal          t1, 3b
10:               jal          ra, 9b
11:               jal          ra, 13f
12:               jal          t1, 1b
13:               jal          ra, 5b
14:               jal          s3, 2b
15:               jal          ra, 12b
16:               jal          ra, 8b
17:               jal          t1, 11b
18:               jal          ra, 15b
19:               jal          sp, 7b
20:               sub          s9, a1, s6
sub_1_10:         jal          ra, 10f
0:                jal          ra, 6f
1:                jal          ra, 8f
2:                jal          s2, 3f
3:                jal          ra, 4f
4:                jal          s7, 5f
5:                jal          ra, 11f
6:                jal          gp, 9f
7:                jal          a2, 0b
8:                jal          ra, 2b
9:                jal          t1, 1b
10:               jal          s9, 7b
11:               add          s5, s8, s2
sub_1_28:         jal          ra, 27f
0:                jal          t1, 29f
1:                jal          t0, 7f
2:                jal          ra, 26f
3:                jal          ra, 4f
4:                jal          ra, 18f
5:                jal          ra, 24f
6:                jal          ra, 25f
7:                jal          sp, 16f
8:                jal          ra, 23f
9:                jal          t0, 5b
10:               jal          t6, 19f
11:               jal          t1, 0b
12:               jal          ra, 13f
13:               jal          gp, 11b
14:               jal          a5, 21f
15:               jal          ra, 1b
16:               jal          ra, 10b
17:               jal          ra, 20f
18:               jal          ra, 12b
19:               jal          ra, 8b
20:               jal          s7, 15b
21:               jal          ra, 6b
22:               jal          ra, 3b
23:               jal          ra, 22b
24:               jal          ra, 17b
25:               jal          ra, 9b
26:               jal          t1, 14b
27:               jal          t6, 28f
28:               jal          t1, 2b
29:               slli         t0, tp, 8
sub_1_35:         jal          ra, 14f
0:                jal          ra, 15f
1:                jal          ra, 12f
2:                jal          ra, 5f
3:                jal          t1, 0b
4:                jal          gp, 9f
5:                jal          ra, 3b
6:                jal          t1, 11f
7:                jal          ra, 4b
8:                jal          ra, 6b
9:                jal          t1, 1b
10:               jal          ra, 2b
11:               jal          ra, 13f
12:               jal          ra, 10b
13:               jal          ra, 16f
14:               jal          ra, 7b
15:               jal          t1, 8b
16:               sub          t2, a3, zero
sub_1_22:         jal          ra, 23f
0:                jal          ra, 7f
1:                jal          ra, 15f
2:                jal          ra, 19f
3:                jal          ra, 13f
4:                jal          ra, 25f
5:                jal          ra, 8f
6:                jal          a2, 12f
7:                jal          ra, 21f
8:                jal          ra, 14f
9:                jal          t1, 18f
10:               jal          ra, 24f
11:               jal          t0, 22f
12:               jal          t1, 1b
13:               jal          ra, 11b
14:               jal          ra, 20f
15:               jal          t6, 3b
16:               jal          s4, 4b
17:               jal          sp, 16b
18:               jal          ra, 0b
19:               jal          s6, 9b
20:               jal          ra, 10b
21:               jal          ra, 5b
22:               jal          a7, 2b
23:               jal          ra, 6b
24:               jal          ra, 17b
25:               andi         a1, a0, -1359
sub_1_37:         jal          ra, 4f
0:                jal          ra, 16f
1:                jal          ra, 15f
2:                jal          ra, 18f
3:                jal          ra, 17f
4:                jal          ra, 19f
5:                jal          ra, 13f
6:                jal          t1, 8f
7:                jal          s11, 2b
8:                jal          t1, 0b
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          s11, 10b
12:               jal          ra, 6b
13:               jal          ra, 7b
14:               jal          s7, 11b
15:               jal          t1, 20f
16:               jal          t0, 9b
17:               jal          s5, 14b
18:               jal          sp, 1b
19:               jal          ra, 3b
20:               andi         zero, gp, -1596
sub_1_1:          jal          ra, 0f
0:                jal          s2, 4f
1:                jal          s0, 8f
2:                jal          ra, 7f
3:                jal          s6, 9f
4:                jal          sp, 15f
5:                jal          ra, 14f
6:                jal          t1, 16f
7:                jal          ra, 10f
8:                jal          t1, 5b
9:                jal          ra, 17f
10:               jal          ra, 1b
11:               jal          t6, 18f
12:               jal          a0, 2b
13:               jal          ra, 12b
14:               jal          ra, 11b
15:               jal          ra, 6b
16:               jal          ra, 3b
17:               jal          ra, 13b
18:               nop
sub_1_21:         jal          ra, 1f
0:                jal          ra, 4f
1:                jal          a7, 8f
2:                jal          t1, 10f
3:                jal          ra, 0b
4:                jal          a4, 6f
5:                jal          ra, 9f
6:                jal          ra, 2b
7:                jal          ra, 3b
8:                jal          gp, 5b
9:                jal          ra, 7b
10:               or           s10, s6, s5
sub_1_39:         jal          ra, 2f
0:                jal          ra, 7f
1:                jal          a3, 0b
2:                jal          ra, 14f
3:                jal          t0, 15f
4:                jal          s5, 5f
5:                jal          ra, 21f
6:                jal          ra, 12f
7:                jal          ra, 20f
8:                jal          s0, 9f
9:                jal          ra, 13f
10:               jal          ra, 25f
11:               jal          ra, 1b
12:               jal          a3, 24f
13:               jal          ra, 3b
14:               jal          s3, 6b
15:               jal          ra, 4b
16:               jal          t1, 8b
17:               jal          a1, 23f
18:               jal          s8, 19f
19:               jal          ra, 16b
20:               jal          gp, 17b
21:               jal          t1, 22f
22:               jal          ra, 11b
23:               jal          t1, 10b
24:               jal          ra, 18b
25:               xor          s0, a6, s6
sub_1_3:          jal          ra, 14f
0:                jal          ra, 8f
1:                jal          ra, 4f
2:                jal          s7, 17f
3:                jal          t1, 6f
4:                jal          ra, 16f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          ra, 10f
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          ra, 5b
11:               jal          ra, 12f
12:               jal          s8, 0b
13:               jal          t1, 11b
14:               jal          ra, 13b
15:               jal          t1, 18f
16:               jal          ra, 7b
17:               jal          t1, 9b
18:               add          a1, tp, s3
sub_1_17:         jal          ra, 18f
0:                jal          t1, 13f
1:                jal          gp, 3f
2:                jal          gp, 14f
3:                jal          ra, 11f
4:                jal          t1, 9f
5:                jal          ra, 4b
6:                jal          ra, 20f
7:                jal          ra, 8f
8:                jal          ra, 5b
9:                jal          ra, 1b
10:               jal          a3, 2b
11:               jal          ra, 10b
12:               jal          t1, 17f
13:               jal          t0, 26f
14:               jal          ra, 30f
15:               jal          s10, 25f
16:               jal          ra, 15b
17:               jal          t1, 21f
18:               jal          a3, 0b
19:               jal          s11, 6b
20:               jal          ra, 24f
21:               jal          t1, 19b
22:               jal          a1, 12b
23:               jal          ra, 28f
24:               jal          s2, 27f
25:               jal          ra, 23b
26:               jal          s8, 16b
27:               jal          a2, 29f
28:               jal          s3, 22b
29:               jal          a5, 7b
30:               addi         t3, a0, -909
sub_1_5:          jal          ra, 18f
0:                jal          ra, 5f
1:                jal          a5, 9f
2:                jal          ra, 1b
3:                jal          t0, 12f
4:                jal          s2, 27f
5:                jal          t1, 14f
6:                jal          ra, 28f
7:                jal          ra, 3b
8:                jal          s4, 26f
9:                jal          ra, 24f
10:               jal          t1, 23f
11:               jal          ra, 22f
12:               jal          ra, 25f
13:               jal          ra, 11b
14:               jal          ra, 7b
15:               jal          t0, 0b
16:               jal          t1, 20f
17:               jal          a5, 8b
18:               jal          t1, 21f
19:               jal          s0, 6b
20:               jal          t0, 2b
21:               jal          a4, 17b
22:               jal          t1, 16b
23:               jal          t1, 4b
24:               jal          ra, 10b
25:               jal          ra, 19b
26:               jal          ra, 13b
27:               jal          ra, 15b
28:               jal          sp, 29f
29:               sra          s7, a0, s7
sub_1_27:         jal          ra, 6f
0:                jal          s3, 3f
1:                jal          s8, 0b
2:                jal          t0, 18f
3:                jal          ra, 10f
4:                jal          t1, 8f
5:                jal          t2, 22f
6:                jal          s10, 16f
7:                jal          s0, 11f
8:                jal          t1, 28f
9:                jal          a0, 15f
10:               jal          ra, 2b
11:               jal          s0, 19f
12:               jal          ra, 23f
13:               jal          s10, 26f
14:               jal          ra, 29f
15:               jal          ra, 1b
16:               jal          ra, 21f
17:               jal          a0, 25f
18:               jal          ra, 20f
19:               jal          ra, 27f
20:               jal          ra, 17b
21:               jal          ra, 5b
22:               jal          ra, 12b
23:               jal          sp, 4b
24:               jal          ra, 9b
25:               jal          ra, 7b
26:               jal          ra, 14b
27:               jal          s6, 13b
28:               jal          sp, 24b
29:               add          a3, s5, sp
sub_1_18:         jal          ra, 6f
0:                jal          t1, 17f
1:                jal          t1, 11f
2:                jal          ra, 7f
3:                jal          t1, 2b
4:                jal          s11, 0b
5:                jal          ra, 19f
6:                jal          t1, 1b
7:                jal          t4, 12f
8:                jal          ra, 13f
9:                jal          t1, 15f
10:               jal          a4, 9b
11:               jal          ra, 4b
12:               jal          t1, 5b
13:               jal          t1, 20f
14:               jal          ra, 3b
15:               jal          ra, 8b
16:               jal          ra, 18f
17:               jal          ra, 14b
18:               jal          ra, 10b
19:               jal          ra, 16b
20:               andi         a3, a2, -1074
sub_1_30:         jal          ra, 8f
0:                jal          sp, 6f
1:                jal          t1, 7f
2:                jal          t1, 14f
3:                jal          ra, 10f
4:                jal          ra, 5f
5:                jal          ra, 0b
6:                jal          a2, 2b
7:                jal          t1, 16f
8:                jal          s2, 9f
9:                jal          ra, 15f
10:               jal          ra, 13f
11:               jal          t1, 17f
12:               jal          ra, 1b
13:               jal          ra, 12b
14:               jal          sp, 3b
15:               jal          ra, 4b
16:               jal          ra, 11b
17:               sltu         zero, a2, t5
sub_1_16:         jal          ra, 9f
0:                jal          s9, 12f
1:                jal          a1, 15f
2:                jal          ra, 16f
3:                jal          t1, 1b
4:                jal          ra, 7f
5:                jal          t1, 0b
6:                jal          ra, 5b
7:                jal          t1, 2b
8:                jal          t0, 11f
9:                jal          ra, 13f
10:               jal          ra, 17f
11:               jal          s6, 4b
12:               jal          t1, 3b
13:               jal          ra, 8b
14:               jal          t5, 6b
15:               jal          t1, 10b
16:               jal          ra, 14b
17:               or           sp, t3, a2
sub_1_13:         jal          ra, 1f
0:                jal          ra, 7f
1:                jal          s4, 17f
2:                jal          ra, 6f
3:                jal          s5, 12f
4:                jal          ra, 3b
5:                jal          ra, 0b
6:                jal          ra, 5b
7:                jal          sp, 20f
8:                jal          t1, 23f
9:                jal          ra, 16f
10:               jal          ra, 4b
11:               jal          t1, 14f
12:               jal          ra, 9b
13:               jal          t3, 2b
14:               jal          ra, 24f
15:               jal          ra, 25f
16:               jal          ra, 21f
17:               jal          ra, 8b
18:               jal          ra, 22f
19:               jal          t1, 11b
20:               jal          s8, 19b
21:               jal          t1, 18b
22:               jal          ra, 13b
23:               jal          t5, 10b
24:               jal          ra, 15b
25:               xor          a1, s1, s11
                  lui          a7, 791348
                  ori          s3, tp, 1169
                  ori          t6, a0, -1627
                  beq          tp, a7, 20f
                  andi         t2, s11, -226
                  srai         t3, t2, 17
                  nop
                  add          s9, t5, s6
                  sub          s10, a3, s5
                  ori          sp, t1, -1698
                  sra          a5, t6, s8
                  srli         t1, s5, 4
                  ori          s10, a2, 568
                  bltu         s11, sp, 32f
                  nop
                  andi         s0, t1, -1693
                  bne          sp, a7, 19f
                  sltu         a4, a5, t3
                  sltu         a5, t6, s1
19:               srli         s11, s5, 27
20:               sll          a5, t1, tp
                  bne          s10, t4, 34f
                  srai         ra, s9, 19
                  or           a7, a6, s0
                  or           ra, t1, s7
                  sub          ra, s7, ra
                  xori         t4, t1, -1769
                  add          s8, a4, gp
                  xor          s4, a3, s6
                  slti         t6, s0, -1664
                  xor          s4, a4, t3
                  or           s3, t3, s11
32:               or           a3, s3, s8
                  andi         t1, gp, -1067
34:               sra          t5, t0, gp
                  srai         a7, t3, 5
                  xori         t6, s10, 1003
                  sll          a2, a3, s0
                  xor          s6, s7, t4
                  andi         s5, t5, 1866
                  slt          s5, s0, s11
                  sltiu        s0, a7, -385
                  bgeu         ra, s0, 58f
                  add          a3, t4, t0
                  ori          s6, t4, -1857
                  nop
                  bne          s8, t2, 61f
                  lui          t5, 133843
                  sll          s10, s11, s0
                  xori         t1, s8, 510
                  add          a3, s7, a2
                  slli         a3, s8, 11
                  or           a3, s0, t2
                  nop
                  and          a5, s5, s8
                  srai         s4, t0, 22
                  srl          ra, sp, a7
                  beq          t1, s6, 74f
58:               xori         s8, s0, 696
                  lui          s7, 964217
                  lui          t3, 304882
61:               lui          s3, 728976
                  sub          t1, a3, s7
                  auipc        gp, 166456
                  beq          s6, s10, 75f
                  xori         ra, a3, 104
                  or           s9, a6, s10
                  bgeu         a1, a0, 87f
                  beq          t2, sp, 87f
                  slt          s2, ra, a6
                  and          t5, zero, s9
                  auipc        a0, 308753
                  sra          a3, s11, a7
                  sltu         a7, t3, tp
74:               sll          sp, t0, s2
75:               sub          s5, t5, ra
                  blt          s11, s9, 93f
                  xori         sp, a1, 63
                  sll          s11, a1, tp
                  sll          s9, ra, a3
                  blt          s0, s3, 93f
                  add          a3, zero, s7
                  srli         t4, a6, 27
                  srai         s8, t6, 6
                  sltu         s8, a4, a5
                  and          s10, t1, s4
                  lui          s8, 767972
87:               sll          s0, t6, t0
                  lui          s10, 1036229
                  and          a4, s0, t4
                  lui          s6, 971482
                  bge          s11, t5, 107f
                  srai         s5, a4, 9
93:               add          ra, t6, zero
                  addi         sp, t5, 1736
                  slt          s5, a7, a2
                  xori         a3, t3, 574
                  xor          s6, s1, a1
                  srl          a5, a1, s11
                  add          a3, a6, s6
                  nop
                  or           a4, a0, s4
                  auipc        a7, 220383
                  slt          s8, s3, a0
                  and          s4, t4, s9
                  and          a5, s4, ra
                  srai         s10, t2, 2
107:              srl          t5, a5, s0
                  slt          a2, s3, s2
                  slli         s6, sp, 7
                  sll          t2, sp, ra
                  addi         s11, s6, 1091
                  slti         a3, t5, -1120
                  bgeu         t4, s4, 132f
                  ori          sp, t2, 1117
                  slti         ra, s8, -2023
                  sltu         gp, zero, t1
                  xori         ra, s11, 1498
                  ori          a7, a5, 1392
                  sltiu        s3, a2, -980
                  bge          gp, t6, 125f
                  slti         s3, s6, 1623
                  srl          s7, a1, sp
                  xori         a0, s6, 229
                  and          s11, t5, s2
125:              srai         s6, t6, 14
                  srai         t3, s10, 13
                  bgeu         gp, a1, 136f
sub_1_9:          jal          ra, 18f
0:                jal          t0, 25f
1:                jal          ra, 15f
2:                jal          t1, 8f
3:                jal          ra, 9f
4:                jal          ra, 21f
5:                jal          ra, 24f
6:                jal          ra, 20f
7:                jal          t3, 27f
8:                jal          ra, 26f
9:                jal          t1, 7b
10:               jal          ra, 22f
11:               jal          ra, 0b
12:               jal          ra, 17f
13:               jal          t0, 16f
14:               jal          ra, 10b
15:               jal          t1, 23f
16:               jal          t2, 11b
17:               jal          a5, 4b
18:               jal          ra, 13b
19:               jal          t1, 1b
20:               jal          t0, 3b
21:               jal          ra, 19b
22:               jal          ra, 6b
23:               jal          ra, 14b
24:               jal          ra, 12b
25:               jal          ra, 2b
26:               jal          s0, 5b
27:               xori         a0, s6, 1359
                  srl          a7, t1, s10
                  nop
                  addi         s0, t5, -1406
                  sltu         t4, a7, s0
132:              slt          s2, a5, s0
                  bge          s4, a2, 151f
                  xor          s8, s2, s5
                  srli         t0, a4, 19
136:              bgeu         a5, s1, 151f
                  and          zero, t6, a1
                  sll          t2, s9, t2
                  blt          gp, s0, 143f
                  or           t1, s5, a0
                  sra          t0, a2, s0
                  blt          a1, t2, 159f
143:              add          t1, s6, s10
                  sltu         gp, a0, s2
                  sub          zero, sp, a6
                  xor          t5, a0, t5
                  sltiu        t3, sp, 841
                  xor          s10, s0, t4
                  add          s10, a2, sp
                  sltu         s0, t2, a6
151:              ori          t6, t0, 871
                  or           t3, s8, t0
                  sltiu        t0, t3, -1242
sub_1_24:         jal          ra, 0f
0:                jal          ra, 14f
1:                jal          ra, 17f
2:                jal          t1, 4f
3:                jal          ra, 19f
4:                jal          sp, 15f
5:                jal          ra, 8f
6:                jal          ra, 1b
7:                jal          a5, 2b
8:                jal          t1, 11f
9:                jal          t1, 3b
10:               jal          t1, 12f
11:               jal          t0, 18f
12:               jal          a5, 16f
13:               jal          a2, 6b
14:               jal          s7, 13b
15:               jal          t1, 9b
16:               jal          s7, 7b
17:               jal          ra, 5b
18:               jal          t1, 10b
19:               sltu         t6, s0, a4
                  srl          t6, s9, a4
                  sub          t5, ra, a7
                  nop
                  xori         s0, ra, 1477
                  bltu         s11, a2, 167f
159:              add          a4, a4, zero
                  beq          s11, a3, 166f
                  sltiu        a1, t2, -195
                  srai         s8, s9, 24
                  andi         zero, s11, -1427
                  sll          s5, s2, a0
                  bge          a6, a7, 168f
166:              ori          s2, t4, -787
167:              beq          zero, t1, 176f
168:              srai         s8, a2, 26
                  bgeu         s7, s10, 186f
                  auipc        s11, 63243
                  bne          a1, t4, 187f
                  srai         a2, a6, 0
                  ori          s8, a6, -1858
                  ori          a1, s6, -432
                  bne          a0, t4, 188f
176:              bgeu         sp, a6, 186f
                  xori         sp, t3, -873
                  ori          zero, t4, 874
                  sltiu        t5, s11, -931
                  srai         a0, sp, 6
                  bge          a4, s5, 201f
                  srl          s5, a5, s6
                  sll          s3, s11, a5
                  bne          a6, tp, 196f
                  beq          t2, a0, 200f
186:              sll          t4, s9, gp
187:              srai         t1, sp, 10
188:              xor          gp, a6, s5
                  nop
                  addi         s0, t5, -1348
                  beq          a4, s0, 204f
                  sll          t5, t2, s7
                  slli         gp, s8, 26
                  ori          a3, a7, -1269
                  sra          s2, zero, t2
196:              xor          t3, a4, a1
                  and          a4, a0, a4
                  slli         t4, sp, 9
                  or           t3, s1, s1
200:              addi         t2, s0, -1763
201:              srl          a1, s3, ra
                  bltu         s8, s5, 211f
                  auipc        t2, 554423
204:              addi         s2, s2, 71
                  srai         a7, t2, 9
                  slt          s8, s5, a0
                  sltiu        t6, t5, -1282
                  slt          s3, s8, t1
                  sub          t0, zero, t5
                  addi         ra, zero, -761
211:              bne          ra, a4, 226f
                  sra          s2, a6, s0
                  bltu         tp, tp, 222f
                  xori         s10, a0, 869
                  sltiu        s2, gp, 1908
                  auipc        s3, 813999
                  bge          zero, t0, 226f
                  srli         t2, t2, 31
                  auipc        s5, 492305
                  srl          a5, s3, s1
                  srai         s7, s3, 5
222:              bgeu         t6, a1, 232f
                  srl          s11, s5, t4
                  xori         t1, s7, -135
                  slt          s8, tp, ra
226:              sltiu        s8, s6, 75
                  bltu         a4, a0, 239f
                  add          a7, a3, t6
                  ori          a7, zero, -1362
                  beq          s2, s5, 246f
                  andi         t4, s10, 111
232:              beq          t6, t3, 251f
                  xori         t1, s0, 1153
                  bltu         gp, t5, 245f
                  bgeu         s7, s7, 254f
                  slt          t2, t5, t6
                  bgeu         a2, s2, 243f
                  and          a7, a0, s2
239:              bge          a6, s5, 244f
                  andi         s2, a4, 296
                  bne          t6, a6, 258f
                  sltiu        s11, s4, -1402
243:              ori          t2, s1, 998
244:              bge          a6, gp, 260f
245:              srai         ra, s6, 18
246:              slli         a3, t3, 8
                  addi         s2, sp, -947
                  srl          s0, a2, zero
                  addi         s5, s11, 586
                  addi         a4, tp, 1973
251:              andi         a5, s7, -585
                  nop
                  auipc        a1, 514336
254:              addi         sp, s11, 948
                  xori         s0, t5, -1326
                  or           sp, s6, s5
                  slti         s10, a4, 1341
258:              addi         a2, s2, -101
                  srli         a5, s11, 26
260:              sra          a7, tp, s4
                  slt          s7, t3, s0
                  sra          t4, s0, s7
                  auipc        s6, 885920
                  slti         s10, s2, -1331
                  bgeu         t5, s0, 284f
                  srai         s2, t1, 22
                  xor          a7, t3, s8
                  andi         s11, s10, 1547
                  and          t4, a3, t6
                  xor          s5, s4, t4
                  blt          s4, a1, 288f
                  beq          s3, s6, 275f
                  and          s5, a2, tp
                  sll          t2, sp, a1
275:              ori          t2, tp, -730
                  slti         a0, t5, -368
                  sll          t1, sp, sp
                  addi         s0, a6, -1693
                  add          s9, t3, s3
                  andi         t5, a0, 1052
                  andi         s8, s8, 1663
                  xori         a5, s6, 1521
                  bge          s1, t4, 286f
284:              xor          s8, s8, s5
                  srl          a4, a2, t3
286:              sltu         t0, gp, s4
                  slti         t0, zero, 1536
288:              slti         s8, t5, -1694
                  srli         gp, s3, 23
                  sltiu        s6, sp, -1493
                  sub          s10, zero, t6
                  xor          a4, a4, a0
                  sub          a7, s2, s6
                  bgeu         a1, a4, 312f
                  slli         zero, a5, 22
                  slt          t4, t3, a4
                  or           a2, s8, t5
                  sltu         s8, s5, a6
                  ori          zero, a2, -31
                  blt          a5, s8, 320f
                  slt          s8, s3, sp
                  bge          a3, a0, 319f
                  addi         t2, a7, -1768
                  xori         s0, s10, -742
                  xor          a2, t5, a2
                  auipc        s10, 223420
                  addi         s2, a3, 705
                  addi         s6, s8, 746
                  lui          s2, 416723
                  beq          s11, t3, 327f
                  srli         s11, t6, 9
312:              slli         s7, a0, 14
                  slli         a0, s11, 3
                  srl          s10, s1, s4
                  slt          a7, a0, a4
                  beq          t2, t3, 320f
                  srli         t5, s7, 15
                  srli         s4, s9, 24
319:              sltiu        s7, a2, 161
320:              addi         s7, s11, -412
                  add          a1, t2, a0
                  beq          s10, t0, 339f
                  and          s10, t5, gp
                  lui          s3, 384628
                  sll          t0, s8, tp
                  sra          s3, t1, s5
327:              lui          t5, 3745
                  nop
                  auipc        a7, 984351
                  blt          t5, s10, 343f
                  xori         t4, t1, -517
                  sltiu        s6, s0, 390
                  sltu         t4, a1, s10
                  bltu         gp, a3, 354f
                  nop
                  blt          a5, t1, 349f
                  beq          s9, a2, 353f
                  beq          sp, s5, 347f
339:              sll          t1, s9, a1
                  bge          tp, zero, 360f
                  bge          s3, s6, 358f
                  beq          ra, ra, 357f
343:              sll          s11, tp, gp
                  slt          a2, s0, a5
                  slti         t2, a6, -839
                  addi         t3, t3, 441
347:              bge          s7, a2, 350f
                  auipc        s3, 293790
349:              srl          s0, t1, t2
350:              bgeu         gp, a3, 363f
                  bgeu         zero, t5, 368f
                  nop
353:              srl          s5, t1, s0
354:              andi         t2, s10, 956
                  slt          t0, ra, t6
                  bne          ra, t0, 373f
357:              sll          gp, a5, t0
358:              andi         s11, a2, 1463
                  auipc        t3, 643326
360:              and          zero, s9, s11
                  slt          a5, t5, t1
                  addi         s4, t1, -1070
363:              or           a4, s0, t4
                  sra          s0, a2, t2
                  sltu         t2, zero, s10
                  sub          s8, a3, gp
                  bgeu         s2, sp, 371f
368:              sll          t6, a6, tp
                  and          a1, t4, a4
                  bgeu         a1, s2, 383f
371:              slti         a2, a5, -453
                  lui          a3, 460741
373:              bltu         s7, a1, 392f
                  add          t4, a7, ra
                  bgeu         s11, a1, 390f
                  sltiu        a1, s10, 132
                  auipc        t4, 1025608
                  sll          a3, s5, s0
                  bge          s1, a2, 391f
                  bne          s11, s6, 386f
                  blt          ra, t3, 398f
                  xor          t0, tp, s4
383:              xori         gp, s0, 804
                  lui          s11, 469478
                  slt          a0, tp, a2
386:              slli         s5, s0, 24
                  auipc        t2, 340827
                  nop
                  add          ra, s7, t5
390:              bgeu         s5, a1, 395f
391:              andi         s4, a6, -386
392:              xor          a7, zero, s6
                  sltiu        s5, t2, -1841
                  beq          ra, s2, 414f
395:              sll          t4, s7, zero
                  nop
                  sltu         t4, a1, t6
398:              bne          a4, a4, 408f
                  blt          a4, a2, 410f
                  srl          a7, s5, a6
                  sll          a4, t5, s9
                  and          s11, sp, a1
                  srli         a4, a7, 11
                  slt          t6, gp, s6
                  beq          s11, s1, 414f
                  sll          sp, s2, s4
                  bge          sp, s9, 425f
408:              or           t4, ra, gp
                  andi         t5, s4, -672
410:              xori         s11, a3, 1144
                  bltu         t4, a7, 428f
                  addi         a1, t3, 1749
                  ori          t3, s4, 1294
414:              ori          t4, t0, 1609
                  srli         sp, ra, 2
                  add          t6, s8, zero
                  bgeu         gp, a6, 433f
                  sltiu        s9, s4, 496
                  lui          a7, 757529
                  bne          sp, sp, 436f
                  sll          s4, t3, sp
                  xor          s3, s5, t1
                  bge          a2, a7, 439f
                  lui          s10, 5838
425:              bltu         a6, a3, 434f
                  srl          gp, zero, t2
                  slti         s0, s10, 584
428:              srli         a7, s9, 16
                  sll          t3, tp, t0
                  xori         zero, a3, 1706
                  beq          t3, t1, 434f
                  xori         s3, tp, 341
433:              slti         t4, a6, 722
434:              srai         a2, a0, 5
                  bne          t1, t3, 454f
436:              slti         a1, a4, -1967
                  beq          sp, s2, 456f
                  slt          s5, a2, s11
439:              slt          s5, s9, s9
                  bne          s10, s7, 453f
                  auipc        gp, 743207
                  slt          t2, a4, ra
                  auipc        s8, 223906
                  or           s8, zero, t6
                  bne          s7, s5, 449f
                  srli         gp, a3, 17
                  beq          s2, t1, 463f
                  slli         zero, s2, 31
449:              and          s2, s8, s6
                  bne          t3, a1, 469f
                  sub          t1, s0, a5
                  sra          t0, ra, t5
453:              lui          t4, 34591
454:              auipc        s6, 962165
                  slt          a2, a6, t3
456:              nop
                  auipc        s0, 899002
                  sltu         t1, t2, a7
                  blt          t6, sp, 468f
                  bge          s0, s6, 479f
                  lui          s11, 398790
                  sub          s11, t5, s5
463:              addi         t0, a3, 453
                  auipc        s2, 724307
                  blt          a3, a6, 474f
                  auipc        s4, 272663
                  lui          s9, 513225
468:              andi         s4, a0, 152
469:              addi         sp, t6, -225
                  lui          t2, 807839
                  auipc        sp, 707696
                  sll          a7, s3, a3
                  sll          s9, a1, a0
474:              slli         t1, gp, 1
                  lui          a1, 406020
                  bltu         s1, t5, 486f
                  srai         t4, t4, 5
                  bne          s5, a1, 484f
479:              andi         t5, s10, -778
                  xori         ra, s7, 1449
                  blt          a4, s6, 497f
                  slt          s5, t6, s3
                  nop
484:              xor          s9, s2, tp
                  sll          a0, a5, s6
486:              and          a0, zero, t0
                  slti         zero, a4, 1516
                  slt          zero, ra, s2
                  nop
                  srl          t1, a2, a6
                  addi         a1, a4, -99
                  or           s9, s6, t0
                  sll          t4, s1, a0
                  sltu         a0, a6, ra
                  srai         a5, s9, 6
                  xor          a2, s2, t6
497:              beq          a5, a2, 510f
                  bltu         s2, s4, 515f
                  sub          t1, t4, ra
                  sltu         t0, t2, sp
                  bgeu         s2, s4, 518f
                  andi         s11, s11, 615
                  slli         gp, t0, 3
                  slti         t0, s3, 157
                  bge          a1, a7, 523f
                  bne          t0, t1, 521f
                  add          ra, a3, s10
                  bne          t2, t1, 527f
                  srai         s11, a4, 14
510:              add          s7, s7, t2
                  beq          s5, s7, 514f
                  bgeu         s7, tp, 525f
                  srai         s9, s7, 23
514:              srai         t0, a5, 22
515:              sra          a3, s4, t0
                  andi         s0, s1, 255
                  xori         s8, a0, 1202
518:              ori          a3, a4, 354
                  bltu         s0, t3, 539f
                  sll          t0, ra, a2
521:              sltu         gp, a4, a5
                  addi         t1, s8, 165
523:              lui          a4, 235793
                  blt          a1, t4, 544f
525:              sub          a3, s4, s1
                  srai         a4, t3, 19
527:              bge          s2, s4, 543f
                  nop
                  bne          t6, a1, 546f
                  lui          s0, 445550
                  sltiu        t4, s6, -260
                  blt          t2, s10, 547f
                  sltiu        gp, t1, 1127
                  sltu         t6, s7, s6
                  beq          a7, s1, 548f
                  lui          a4, 150049
                  nop
                  slli         s9, t0, 20
539:              addi         t5, gp, -1471
                  ori          t6, t6, 1532
                  bgeu         s7, ra, 558f
                  sub          t6, t0, sp
543:              bne          zero, zero, 546f
544:              slti         ra, s5, -1189
                  xori         s7, s2, -16
546:              addi         t4, a6, 202
547:              bltu         t2, t4, 552f
548:              lui          s9, 391198
                  lui          a3, 574923
                  blt          t1, t5, 562f
                  lui          a7, 331235
552:              and          t5, a2, s0
                  addi         a5, ra, 1308
                  bltu         a7, a7, 563f
                  nop
                  xor          a5, a6, s2
                  addi         t6, a7, -545
558:              xori         s5, s6, -42
                  beq          t3, s6, 576f
                  sltiu        a5, t1, 1707
                  xor          t4, a0, t3
sub_1_0:          jal          ra, 10f
0:                jal          ra, 3f
1:                jal          t0, 7f
2:                jal          ra, 11f
3:                jal          ra, 2b
4:                jal          s7, 8f
5:                jal          ra, 6f
6:                jal          ra, 15f
7:                jal          t1, 0b
8:                jal          ra, 12f
9:                jal          ra, 4b
10:               jal          ra, 13f
11:               jal          a3, 9b
12:               jal          ra, 5b
13:               jal          ra, 14f
14:               jal          ra, 1b
15:               or           s7, a3, tp
562:              nop
563:              xor          ra, s8, s4
                  sll          t5, a0, a3
                  xori         s5, s6, 978
                  lui          t6, 148291
                  bltu         s7, a4, 578f
                  andi         a1, a7, 1956
                  srli         t0, zero, 13
                  and          a3, s4, s6
                  ori          sp, t1, 1716
                  bltu         s10, s9, 585f
sub_1_36:         jal          ra, 2f
0:                jal          ra, 5f
1:                jal          ra, 0b
2:                jal          s0, 8f
3:                jal          s5, 6f
4:                jal          t1, 3b
5:                jal          sp, 4b
6:                jal          t1, 9f
7:                jal          ra, 11f
8:                jal          ra, 1b
9:                jal          ra, 7b
10:               jal          s11, 12f
11:               jal          t1, 10b
12:               sltu         s9, a3, s0
                  addi         t0, a0, -1797
                  auipc        s8, 189971
                  slli         gp, a3, 21
576:              sra          a3, a0, a0
                  bne          t5, s6, 596f
578:              bne          gp, tp, 595f
                  andi         t3, gp, -230
                  ori          a5, s0, 800
                  bne          a2, s3, 594f
                  sltu         s8, s3, t5
                  sltu         s11, s2, s5
                  srl          a3, s11, s8
585:              auipc        s7, 538512
                  sltiu        t1, s9, 715
                  sub          a0, zero, s10
                  slti         s9, sp, -1726
                  xor          s8, gp, t6
                  sra          s7, s4, t1
                  bge          s11, s9, 607f
                  bgeu         sp, s8, 604f
                  blt          s1, s0, 613f
594:              and          t5, s6, a5
595:              bltu         s5, s11, 613f
596:              slli         t2, gp, 16
                  addi         s9, a4, 1445
                  xori         a7, s0, 998
                  sltu         a5, s0, s2
                  bge          s10, a4, 603f
                  add          s5, s0, a5
                  auipc        s10, 163305
603:              bge          ra, s0, 622f
604:              nop
                  srli         t0, s11, 24
                  slli         gp, a0, 16
607:              or           t6, s5, a7
                  srli         t0, a2, 15
                  beq          t1, a4, 629f
                  xori         a4, s9, -289
                  bgeu         sp, s1, 624f
                  bltu         t4, a4, 628f
613:              sll          s2, s10, s5
                  nop
                  blt          a4, sp, 630f
                  slli         a0, gp, 3
                  srli         a0, t2, 1
                  and          s0, a5, t1
                  and          a3, s11, s10
                  srai         a0, a5, 3
                  sra          t1, s2, t1
622:              bgeu         a2, t0, 625f
                  addi         s5, gp, -1544
624:              srl          a0, s8, sp
625:              or           a7, s4, s3
                  beq          s2, a5, 632f
                  slli         t2, s1, 6
628:              lui          t3, 280765
629:              bltu         a5, a7, 638f
630:              sltu         sp, a4, a0
                  xor          gp, gp, s9
632:              sra          a7, s8, t5
                  sltiu        a3, sp, 1779
                  blt          t3, t2, 644f
                  ori          a2, a7, -30
                  bltu         s10, gp, 653f
                  auipc        s4, 138940
638:              slli         s0, s5, 28
                  slti         a4, s10, -200
                  bgeu         tp, sp, 651f
                  sra          zero, s10, gp
                  beq          a4, t6, 659f
                  or           t0, a6, s7
644:              or           a2, a3, ra
                  bge          a0, s5, 649f
                  nop
                  bne          a6, tp, 656f
                  andi         t1, s3, -851
649:              ori          s9, s11, -171
                  sltu         t5, a6, t1
651:              addi         a1, sp, -1124
                  blt          s3, s6, 657f
653:              srai         a7, zero, 8
                  slti         t4, s9, 1934
                  bge          s4, t1, 671f
656:              and          a1, ra, a1
657:              blt          t4, s5, 674f
                  srai         s2, t4, 14
659:              slti         t2, s3, 1106
                  sll          gp, t1, zero
                  slti         t0, s6, -586
                  lui          t0, 220284
                  ori          s7, a1, 1272
                  or           zero, s11, s1
                  and          a0, t2, s3
                  slti         a3, a6, 4
                  bne          s7, s10, 686f
                  bltu         s10, a4, 683f
                  srai         t6, s1, 10
                  or           t0, s9, s2
671:              lui          s5, 782616
                  srai         t6, a5, 9
                  sltu         sp, a1, s9
674:              xor          t1, t0, a2
                  slt          s10, ra, s4
                  srai         s4, t5, 11
                  beq          ra, s10, 686f
                  srli         t2, s0, 24
                  xori         s0, s9, -1001
                  xori         t3, s11, 1069
                  slt          a3, s8, t6
                  bge          t0, s6, 699f
683:              xor          t2, s0, a4
                  and          t2, a6, ra
                  bltu         tp, s10, 698f
686:              slti         a4, t2, -534
                  sltu         t0, s8, s5
                  bne          a7, s5, 703f
                  beq          t2, s11, 705f
                  bltu         s7, gp, 693f
                  sub          s9, t0, t1
                  nop
693:              srai         a1, a5, 15
                  ori          s5, t4, -791
                  blt          a2, s2, 714f
                  sltiu        s4, s6, -828
                  sub          s2, t5, s1
698:              bge          s1, t2, 715f
699:              andi         sp, s0, 170
                  andi         a2, t6, -1405
                  sltu         zero, a2, t5
                  slt          t0, s2, s5
703:              sltu         s3, t3, s4
                  slli         ra, a0, 26
705:              slti         a5, s8, -1108
                  auipc        s2, 355987
                  sra          a2, t0, t3
                  srai         s11, gp, 16
                  beq          a0, s3, 714f
                  andi         s9, zero, -696
                  sub          a1, gp, t3
                  slti         t2, t2, -629
                  srl          a3, s7, a2
714:              addi         s5, t6, -619
715:              add          s6, t1, s6
                  slti         s2, t0, -1771
                  slli         t0, tp, 7
                  bgeu         s2, s0, 721f
                  auipc        a2, 254254
                  andi         s6, s1, -637
721:              add          t1, a5, s8
                  xor          a4, a7, s10
                  slti         s5, s1, 1484
                  or           s4, s3, s11
                  sltiu        zero, a1, 64
                  andi         s8, t4, 1031
                  srli         t0, a5, 7
                  or           a2, t0, zero
                  sltiu        s5, s9, -347
                  addi         a2, sp, 258
                  srai         s10, a0, 31
                  addi         t6, tp, 1403
                  slti         a0, a0, -826
                  blt          s2, zero, 743f
                  sra          s3, s0, s10
                  sltiu        s7, ra, -1996
                  srli         a0, a0, 4
                  bne          s1, s3, 755f
                  lui          s0, 248642
                  blt          a2, a7, 752f
                  sra          s9, a4, s10
                  blt          a6, a4, 753f
743:              slti         s2, s10, -101
                  bltu         a4, a4, 761f
                  bgeu         tp, sp, 751f
                  slti         s2, s7, 1579
                  andi         s11, a2, 255
                  ori          a4, s6, 1073
                  sltu         t1, s1, gp
                  add          s8, t2, t1
751:              xori         s6, t5, 1664
752:              slt          gp, t4, a0
753:              slli         zero, a0, 24
                  beq          a7, s10, 771f
755:              slli         t5, s5, 17
                  bne          s6, a4, 776f
                  ori          a2, t3, -950
                  sub          t3, t6, t1
                  slti         t0, s11, 410
                  srl          a3, t6, t5
761:              sub          s4, tp, zero
                  and          s4, a7, a4
                  sll          t3, t5, s4
                  beq          t2, zero, 783f
                  beq          a0, a1, 778f
                  addi         t6, a4, -639
                  bltu         s3, t3, 783f
                  sltu         a0, s6, s1
                  nop
                  or           s9, a7, sp
771:              bgeu         a6, a4, 787f
                  ori          s0, s4, -217
                  sra          a1, s1, s10
                  add          a7, tp, a2
                  lui          zero, 367237
776:              beq          gp, ra, 786f
                  bltu         t1, a2, 786f
778:              bne          gp, sp, 797f
                  slti         a4, a1, -423
                  slt          s9, t1, a7
                  sra          zero, t3, ra
                  lui          a7, 970325
783:              ori          a4, t3, 355
                  srl          a1, s3, sp
                  srl          s4, s9, a2
786:              andi         s3, s10, -1093
787:              auipc        s6, 793580
                  addi         sp, t5, 1421
                  and          a4, t5, ra
                  nop
                  and          s11, t6, s11
                  beq          sp, gp, 801f
                  slli         t0, a2, 22
                  xor          s8, s7, s5
                  bltu         t1, a1, 813f
                  addi         a2, a3, -2009
797:              sra          a0, zero, a5
                  srli         sp, t3, 12
                  srl          a2, t4, s9
                  lui          a4, 572981
801:              addi         t1, a4, 802
                  sub          a3, t3, s5
                  beq          s11, s4, 816f
                  sub          t5, s0, s7
                  or           s6, s8, a2
                  bgeu         s8, tp, 810f
                  sll          gp, t3, a6
                  sltiu        s9, s3, 1058
                  addi         s11, s9, 528
810:              sll          t4, t4, a0
                  andi         t2, a6, 1151
                  bltu         s8, ra, 832f
813:              bne          zero, t0, 830f
                  blt          s3, s10, 829f
                  sltu         a2, t6, s8
816:              add          t2, s3, t2
                  lui          s4, 206956
                  sltiu        s7, a4, 151
                  xori         s5, t3, -818
                  bne          s11, a3, 835f
                  srl          a2, gp, sp
                  srl          s9, t2, s11
                  slti         ra, s0, -748
                  sltu         s0, a6, s5
                  bge          s7, s5, 844f
                  slti         s0, a7, 390
                  xori         a7, s5, -1373
                  blt          s4, s7, 841f
829:              auipc        s6, 741624
830:              sll          t1, a7, t3
                  bne          t3, gp, 834f
832:              sra          s0, a7, t3
                  andi         a4, zero, 493
834:              and          t6, s3, t6
835:              xori         a5, a7, 335
                  slti         ra, s2, 937
                  ori          s11, s2, 1457
                  add          t5, s4, t4
                  xor          s8, ra, ra
                  lui          a1, 116077
841:              nop
                  addi         s6, s3, 24
                  lui          t4, 336760
844:              bgeu         a6, t3, 859f
                  xori         s8, t3, 1045
                  srai         s11, t1, 15
                  srai         a2, zero, 0
                  beq          tp, t0, 867f
                  slti         t3, s9, -1392
                  sltu         s9, s1, sp
                  sltu         s2, t0, a4
                  sub          a1, s7, a1
                  slt          s4, a6, t6
                  slt          a1, s4, a4
                  srai         s8, a4, 22
                  bge          a2, s8, 865f
                  auipc        sp, 427068
                  bne          s0, a2, 874f
859:              add          t4, ra, s3
                  and          s5, t6, s8
                  andi         a4, t5, -241
                  bge          a0, a1, 871f
                  bne          s0, t2, 881f
                  sub          a3, s6, s3
865:              sub          s11, a7, a1
                  beq          s8, s0, 882f
867:              bgeu         s10, a3, 880f
                  ori          t6, t5, 1245
                  and          s6, s1, tp
                  slti         t1, ra, 497
871:              lui          t3, 147844
                  srli         a7, tp, 7
                  and          s6, s9, s5
874:              xor          t6, s0, s8
                  or           t5, s11, s3
                  andi         s6, s4, -534
                  bltu         t0, a5, 896f
                  slt          t5, s3, s9
                  andi         a1, sp, 1964
880:              addi         t3, s1, -974
881:              addi         t0, a1, -1845
882:              sll          t3, t5, s7
                  or           a4, ra, s5
                  nop
                  sltu         t3, s7, sp
                  sll          s3, zero, a1
                  addi         s8, s5, 1019
                  beq          s0, sp, 897f
                  xor          t5, a6, s8
                  slti         s8, s8, -676
                  xori         s8, t5, 745
                  ori          s8, a0, 1049
                  nop
                  lui          s3, 213917
                  ori          s5, s9, 1949
896:              nop
897:              slt          s8, s6, a6
                  xor          t1, t5, s7
                  xor          a4, s9, s1
                  bge          t5, s8, 917f
                  bge          s4, s11, 914f
                  and          a0, s0, t3
                  auipc        a5, 871285
                  bgeu         a1, ra, 920f
                  lui          t3, 113589
                  bgeu         zero, a0, 923f
                  srli         s2, zero, 19
                  addi         t2, s5, -8
                  xori         a0, t0, 1828
                  auipc        a5, 697958
                  lui          s6, 891822
                  beq          t2, ra, 929f
                  andi         a3, s6, -1048
914:              blt          t3, zero, 917f
                  sltiu        s6, t0, 861
                  sub          s11, a1, a4
917:              lui          s5, 842676
                  add          zero, t0, a6
                  and          t3, a1, a6
920:              srli         s11, s0, 25
                  sub          s3, s2, t2
                  or           s4, zero, t2
923:              bltu         t1, t3, 943f
                  xor          s2, tp, a4
                  bne          s6, t2, 930f
                  sll          s11, s1, s1
                  bne          s11, s0, 937f
                  blt          zero, sp, 934f
929:              or           t5, zero, t5
930:              srli         s7, t5, 25
                  ori          zero, t0, -816
                  beq          s8, s0, 943f
                  bne          a6, t5, 953f
934:              or           a1, gp, ra
                  bne          a5, s8, 952f
                  xor          a0, s11, t5
937:              auipc        t1, 627608
                  ori          zero, a0, -875
                  sub          zero, t3, s2
                  bne          s9, tp, 944f
                  sra          t5, t2, a7
                  sll          zero, ra, ra
943:              sltiu        s2, t0, -419
944:              blt          tp, tp, 956f
                  sub          s10, s7, s3
                  blt          s8, sp, 963f
                  lui          t6, 882335
                  bge          s0, s5, 953f
                  bgeu         s7, ra, 962f
                  srli         s3, gp, 14
                  or           s10, a6, a7
952:              slli         t3, s8, 9
953:              bltu         a1, s11, 956f
                  andi         t1, s9, 322
                  sub          a3, sp, s8
956:              slt          t0, s2, t3
                  bgeu         s7, a2, 977f
                  bltu         s0, s2, 973f
                  ori          t2, s2, -1718
                  and          t0, t0, s2
                  bge          s7, a4, 974f
962:              auipc        s4, 1024728
963:              beq          t2, tp, 980f
                  xor          ra, a4, a7
                  srai         s5, a5, 13
                  bne          s9, a5, 986f
                  lui          s2, 419933
                  and          t3, tp, t6
                  addi         s5, s0, 1603
                  bgeu         a5, s8, 989f
                  srai         ra, sp, 7
                  auipc        a7, 152494
973:              ori          s9, a7, 563
974:              srl          t2, a7, s2
                  srai         ra, s9, 31
                  bge          tp, s0, 994f
977:              bge          s7, s4, 996f
                  blt          a1, s4, 995f
                  xor          t2, s6, s7
980:              lui          a2, 315116
                  slli         zero, s7, 15
                  bltu         a3, s8, 991f
                  slti         t5, a1, -1535
                  sll          s4, a6, s0
                  sltiu        s5, s7, 1455
986:              sub          a2, ra, ra
                  slt          s4, s3, s2
                  and          gp, t1, s9
989:              bge          t6, a2, 1002f
                  slti         s4, a2, 448
991:              xor          s8, a3, s0
                  bne          s1, a2, 1008f
                  sltu         a7, s9, s3
994:              srli         a2, t5, 14
995:              srai         t2, t1, 1
996:              sltu         a0, t3, s9
                  slt          s8, s9, s6
                  xor          s4, zero, sp
                  srli         a3, a6, 5
                  nop
                  beq          sp, a3, 1016f
1002:             slti         a1, a1, 892
                  sll          s5, s10, s0
                  bne          s0, a5, 1020f
                  sub          t4, tp, s1
                  xor          t2, t5, zero
                  lui          s7, 155049
1008:             and          s6, t4, a4
                  bgeu         tp, a0, 1018f
                  sub          s5, s10, t0
                  xori         sp, s4, 1963
                  add          s5, s7, a4
                  ori          s7, t1, 778
                  slt          s4, t6, t0
                  beq          ra, s7, 1026f
1016:             addi         t4, s11, 274
                  sltu         t0, zero, s7
1018:             xori         s10, a5, -1800
                  srli         a1, t1, 20
1020:             andi         t6, a1, -395
                  slt          s11, s7, a0
                  lui          t3, 528279
                  srai         t4, s4, 15
                  srli         s5, s11, 11
                  srl          s10, t4, gp
1026:             slti         t2, a5, -1653
                  bltu         s10, t1, 1044f
                  slli         t3, t0, 6
                  nop
                  bltu         s8, s3, 1047f
                  bge          s11, a3, 1037f
                  sub          s8, s8, s7
                  sra          s0, a2, sp
                  beq          s10, s5, 1053f
                  bne          a2, s3, 1047f
                  andi         t0, a4, 1496
1037:             sltu         s8, s8, s11
                  blt          s3, a0, 1055f
                  or           s6, s0, t0
                  ori          s11, a5, 621
                  nop
                  sltu         s0, a4, s6
                  bne          s4, s9, 1052f
1044:             xori         t6, t6, 1944
                  beq          t4, a4, 1048f
                  xor          t0, a2, s6
1047:             and          t4, s9, t4
1048:             sltiu        gp, s5, 329
                  ori          gp, a3, 1557
                  sltu         a4, s2, a6
                  slli         s9, sp, 6
1052:             sll          t4, s10, s9
1053:             auipc        a0, 198341
                  bgeu         ra, ra, 1058f
1055:             slti         s5, gp, -245
                  bge          t0, t3, 1066f
                  auipc        s10, 755911
1058:             nop
                  ori          s8, t0, -984
                  or           s4, a3, zero
                  srai         a2, s8, 22
                  sra          a4, t2, a7
                  beq          a6, s11, 1079f
                  sltiu        s5, t0, 1071
                  sltiu        s10, t5, -1865
1066:             slt          t4, sp, tp
                  bge          gp, a6, 1086f
                  srai         t6, s7, 21
                  blt          s9, s4, 1086f
                  auipc        t4, 1005701
                  slti         s11, t5, 1419
                  bltu         s10, a7, 1084f
                  slt          t4, s6, ra
                  add          gp, a7, gp
                  xor          s3, t0, t0
                  sltu         s2, t5, a5
                  sub          t5, tp, sp
                  xor          t0, sp, t5
1079:             srli         s4, a1, 20
                  sra          ra, a0, t0
                  or           a5, s6, sp
                  bgeu         a3, a3, 1092f
                  andi         a7, a7, 60
1084:             srli         s6, ra, 21
                  addi         s9, s3, -245
1086:             sub          a1, zero, t4
                  srli         s11, s6, 13
                  bltu         s2, a2, 1099f
                  bge          t0, s9, 1106f
                  bge          tp, s11, 1099f
                  srli         s9, a5, 18
1092:             or           gp, s7, s0
                  sub          ra, s9, a1
                  bltu         s5, s3, 1111f
                  and          s5, a2, t3
                  sll          s8, a3, a5
                  sra          t3, tp, s5
                  ori          t3, a7, 1603
1099:             andi         t2, s3, 867
                  sltiu        s0, t1, 1442
                  bltu         ra, tp, 1117f
                  sltiu        s7, a2, 1742
                  sltu         s7, s0, a6
                  addi         zero, s9, -651
                  andi         t5, a1, -1668
1106:             blt          s10, s5, 1125f
                  slt          a1, s0, zero
                  addi         sp, t1, -486
                  sltu         a5, a0, t3
                  nop
1111:             slt          t1, t4, t0
                  beq          a2, t2, 1118f
                  slti         s7, s6, -1592
                  andi         s5, t5, -1785
                  xori         a0, s11, -2016
                  ori          gp, s0, 165
1117:             bne          t5, a0, 1132f
1118:             xor          s0, s9, s6
                  and          a4, tp, a5
                  slli         s9, s1, 31
                  xor          s9, a1, a1
                  beq          s1, s4, 1138f
                  xor          s4, s2, t5
                  xor          ra, t2, zero
1125:             add          s10, ra, a6
                  slt          s3, a7, s6
                  srl          ra, sp, a6
                  sra          t6, a4, s7
                  slli         s7, s5, 11
                  beq          a1, t2, 1143f
                  slt          s9, t3, tp
1132:             srli         t5, t5, 14
                  bltu         t5, tp, 1146f
                  andi         a5, t1, 1760
                  srai         s6, t2, 8
                  and          zero, t4, s10
                  sra          s4, s11, s9
1138:             add          s3, a2, s4
                  slt          zero, a1, a0
                  slli         a5, a5, 9
                  xori         a2, ra, 1769
                  beq          ra, zero, 1162f
1143:             srli         t4, s4, 27
                  srli         s3, s3, 17
                  add          s0, a6, gp
1146:             lui          t6, 937831
                  srl          s8, t2, a1
                  slti         s10, a5, 229
                  add          ra, s3, s6
                  addi         sp, s5, 129
                  and          t4, a0, s2
                  lui          a5, 321410
                  bne          ra, t6, 1168f
                  slli         t0, s11, 0
                  bne          s8, t0, 1158f
                  lui          s3, 129397
                  bge          t5, a2, 1175f
1158:             srli         s10, a5, 14
                  beq          t3, tp, 1172f
                  beq          a7, s11, 1176f
                  bgeu         t6, a3, 1178f
1162:             addi         a4, s9, 1656
                  blt          s0, s6, 1183f
                  sub          s5, gp, a5
                  slli         a4, a1, 22
                  slt          s5, s8, a4
                  bgeu         t4, s7, 1184f
1168:             xori         s6, tp, 558
                  xori         t1, s3, 423
                  sltiu        a0, t0, 1522
                  lui          ra, 254724
1172:             sll          s6, t0, a0
                  slti         s5, zero, -684
                  srl          t3, tp, a4
1175:             lui          t3, 61989
1176:             sra          s3, t5, s4
                  slt          gp, t6, t1
1178:             beq          tp, a0, 1181f
                  sltu         a2, s5, s10
                  sub          a3, a6, a2
1181:             auipc        zero, 196770
                  auipc        s10, 826632
1183:             addi         s9, sp, 1619
1184:             srai         t3, a7, 29
                  bne          a2, sp, 1189f
                  or           t3, a5, sp
                  or           s4, s11, a3
                  blt          gp, s2, 1207f
1189:             nop
                  sltiu        s6, t3, -305
                  bne          s10, t1, 1200f
                  slli         a1, t2, 24
                  xori         s7, t5, -743
                  nop
sub_1_20:         jal          ra, 10f
0:                jal          ra, 1f
1:                jal          ra, 17f
2:                jal          ra, 16f
3:                jal          ra, 0b
4:                jal          t5, 2b
5:                jal          t1, 12f
6:                jal          ra, 11f
7:                jal          ra, 6b
8:                jal          ra, 4b
9:                jal          s4, 13f
10:               jal          s11, 8b
11:               jal          ra, 5b
12:               jal          t1, 14f
13:               jal          t1, 3b
14:               jal          ra, 15f
15:               jal          ra, 9b
16:               jal          ra, 7b
17:               sra          s7, s9, t3
                  slli         gp, a5, 23
                  sub          s4, t1, s10
                  nop
                  srli         s6, a7, 11
                  or           t6, t3, s8
1200:             addi         gp, t2, 1799
                  addi         a3, t6, -1817
                  slt          a0, a0, t4
                  and          t4, s7, a7
                  srl          s9, tp, s10
                  srai         zero, a1, 21
                  sub          a1, s1, sp
1207:             slt          s10, s10, a4
                  srli         a0, t2, 13
                  nop
                  srli         t3, s11, 12
                  bgeu         gp, a2, 1216f
                  srl          sp, sp, s0
                  srli         a7, ra, 31
                  blt          sp, t4, 1223f
                  and          s10, t0, a0
1216:             bgeu         s9, s7, 1231f
                  slt          s9, gp, s0
                  bltu         t2, s11, 1223f
                  bgeu         a6, s2, 1231f
                  sra          t3, a1, t0
                  sub          a2, t0, t2
                  slli         gp, t4, 26
1223:             bge          s8, s1, 1234f
                  sll          a4, s4, s6
                  slti         s4, a2, -155
                  ori          a7, t5, 426
                  and          a2, t0, s10
                  srli         s4, s11, 5
                  sll          s7, s1, a5
                  sll          s8, s4, s11
1231:             slt          a7, t4, ra
                  andi         a7, t1, 1071
                  sltu         s10, s9, a0
1234:             slli         t2, a6, 16
                  bne          t3, sp, 1251f
                  blt          a2, s7, 1254f
                  bltu         gp, s8, 1243f
                  bne          s1, ra, 1255f
                  slli         a0, a2, 25
                  srai         s0, s7, 26
                  bltu         s9, a2, 1260f
                  xor          a0, s7, sp
1243:             auipc        a7, 255205
                  bne          s10, s0, 1259f
                  slti         s4, s9, -476
                  sltiu        t1, t3, -1180
                  slli         ra, a5, 15
                  bne          t2, t2, 1267f
                  bgeu         tp, a7, 1262f
                  srli         t4, zero, 7
1251:             sll          a0, ra, a1
                  slli         t4, zero, 8
                  and          s0, s0, sp
1254:             srli         s5, s5, 2
1255:             and          a2, a2, s9
                  nop
                  lui          a4, 461227
                  addi         a1, a7, -607
1259:             slt          s6, t2, s11
1260:             slt          s11, a2, a2
                  add          s6, s2, a5
1262:             and          t5, s2, s6
                  ori          a7, s0, -936
                  or           s8, s9, tp
                  blt          s4, s5, 1274f
                  sub          t2, a4, a5
1267:             sub          a2, gp, zero
                  srai         s6, a0, 20
                  slti         s2, t3, 1831
                  srli         a1, s1, 31
                  lui          sp, 830562
                  slli         a3, s9, 3
                  beq          a1, s2, 1290f
1274:             sltu         gp, t5, s2
                  srli         s5, s0, 9
                  sll          zero, ra, s1
                  srli         a3, tp, 5
                  xori         gp, a1, 715
                  and          a1, s2, t1
                  srli         s3, t3, 16
                  xor          a0, s8, t3
                  bne          t2, s9, 1291f
                  ori          s2, s4, -567
                  and          a3, ra, s2
                  or           t4, s6, a0
                  bltu         t5, sp, 1306f
                  and          s6, ra, s5
                  and          t2, tp, zero
                  nop
1290:             xori         s10, a2, 1492
1291:             andi         s11, a4, 1958
                  and          s10, t0, s4
                  slt          t3, a7, s1
                  sub          t5, a4, s4
                  srai         s4, s0, 22
                  slt          s6, gp, t4
                  lui          a0, 321561
                  nop
                  lui          a2, 598739
                  ori          s7, a4, 1118
                  sub          s6, gp, s9
                  sub          s7, s7, tp
                  auipc        t5, 763919
                  and          t2, a5, t5
                  slli         t3, s2, 8
1306:             sltu         s10, s5, t5
                  or           a0, ra, s1
                  addi         s2, s1, -186
                  slli         s4, t4, 28
                  add          s8, t6, t0
                  bgeu         t4, zero, 1331f
                  srli         s2, s4, 0
                  add          t1, sp, s6
                  bgeu         s3, t2, 1318f
                  srl          s4, a4, a2
                  addi         a4, a3, -1177
                  srli         s10, zero, 29
1318:             sra          s4, a2, a1
                  srai         ra, zero, 18
                  srl          t0, gp, s10
                  or           ra, s0, s5
                  lui          sp, 773315
                  srai         zero, zero, 31
                  and          s8, sp, s6
                  beq          s0, a6, 1338f
                  bge          s4, a4, 1329f
                  bge          a5, t5, 1346f
                  slli         t6, s7, 17
1329:             lui          a5, 820067
                  and          zero, zero, s6
1331:             bge          t1, sp, 1347f
                  bne          a0, t3, 1341f
                  bne          a3, gp, 1350f
                  sltu         t5, t0, t0
                  bne          ra, s8, 1338f
                  beq          s5, s8, 1353f
                  srl          s4, s9, s8
1338:             ori          t0, a5, 1634
                  xor          s3, zero, s5
                  ori          sp, s9, 488
1341:             srli         a1, a1, 23
                  beq          s8, sp, 1359f
                  sub          t3, s1, s5
                  blt          t0, tp, 1360f
                  xori         s11, a1, -1076
1346:             srl          s7, t6, t0
1347:             slli         s3, s4, 12
                  or           s2, zero, a6
                  and          t1, s0, s10
1350:             sltu         t2, s3, gp
                  sra          a0, a3, s8
                  bltu         a7, s4, 1362f
1353:             blt          s6, sp, 1366f
                  addi         a3, a2, 1049
                  bge          t2, gp, 1374f
                  add          s8, a3, a6
                  sll          sp, t5, a4
                  srli         a7, t5, 8
1359:             srli         s10, a3, 11
1360:             bge          ra, t5, 1377f
                  andi         t4, t0, 1455
1362:             slt          s3, a2, a6
                  or           t5, s5, a7
                  ori          zero, s5, 1236
                  sltu         a3, t4, tp
1366:             lui          t5, 768410
                  blt          a5, t0, 1386f
                  bge          s1, a2, 1383f
                  slt          s0, s7, s6
                  slli         a3, s6, 27
                  sra          s9, s6, a1
                  auipc        s7, 71456
                  slt          s6, t2, s2
1374:             srai         s6, s2, 11
                  blt          t3, s1, 1390f
                  bne          t1, t4, 1393f
1377:             bgeu         s4, tp, 1387f
                  addi         s4, zero, 656
                  srli         s4, t4, 19
                  lui          s3, 543679
                  srli         a5, s5, 12
                  lui          gp, 678738
1383:             sub          t5, t0, s3
                  ori          s6, a7, -1346
                  srli         gp, s5, 10
1386:             sltiu        t6, a0, 820
1387:             srl          t3, t0, s11
                  or           s3, s6, a6
                  xori         a0, ra, 1267
1390:             srli         gp, a7, 3
                  bgeu         s7, a3, 1395f
                  srli         a1, a5, 5
1393:             sltu         a3, a0, t4
                  and          s7, s1, t2
1395:             lui          t2, 691848
                  bltu         t3, t0, 1414f
                  ori          s6, s6, -687
                  auipc        zero, 821506
                  srl          a4, sp, gp
                  add          a4, s2, a6
                  beq          a6, zero, 1414f
                  xori         s4, t2, -1077
                  srai         s8, t1, 8
                  nop
                  bgeu         a7, a3, 1421f
                  slli         t5, s3, 28
                  add          zero, t4, s1
                  bge          gp, tp, 1419f
                  bne          a1, tp, 1425f
                  sltiu        s2, s0, -223
                  bltu         s1, s4, 1431f
                  slt          t6, ra, s7
                  bge          t0, t2, 1419f
1414:             and          a3, tp, a2
                  auipc        ra, 434651
                  bge          s1, s3, 1419f
                  bgeu         s10, t2, 1426f
                  srli         a4, a1, 11
1419:             beq          t4, sp, 1424f
                  bltu         a1, s4, 1433f
1421:             add          t4, t1, a5
                  sltu         a1, s9, s4
                  add          t5, s10, t5
1424:             slti         s7, a0, -625
1425:             sub          a2, a1, s3
1426:             nop
                  sltu         ra, a3, a3
                  bne          s0, s9, 1431f
                  sltiu        t0, tp, 778
                  xor          t5, s10, gp
1431:             bgeu         s4, s0, 1444f
                  ori          t0, t6, -127
1433:             xor          t6, a2, ra
                  slt          s9, t6, tp
                  xori         s5, a4, -1187
                  sltiu        ra, t1, -803
                  xor          a4, t3, s5
                  lui          t0, 969146
                  bge          sp, gp, 1455f
                  andi         s11, s3, -1217
                  slli         a1, t0, 28
                  bltu         s2, t5, 1462f
                  and          s5, a7, s5
1444:             sltu         s8, a1, s4
                  sll          t6, s4, sp
                  nop
                  sra          gp, s11, a7
                  add          t2, s7, ra
                  sltiu        t0, ra, 1029
                  slt          t6, a3, ra
                  slt          s8, t4, t0
                  blt          s9, t6, 1461f
                  srai         sp, s9, 13
                  add          a3, a4, s9
1455:             srai         t1, t1, 4
                  add          s0, t0, a7
                  and          t3, s5, s3
                  xor          t2, gp, a3
                  xori         s8, a3, 1366
                  bltu         s2, a0, 1479f
1461:             ori          s0, t4, -1283
1462:             andi         s4, sp, 325
                  nop
                  sll          a4, t4, t6
                  xor          a0, t3, a5
                  blt          a0, gp, 1483f
                  ori          s3, s11, -1426
                  andi         s8, gp, -146
                  nop
                  bne          t5, t2, 1479f
                  and          s9, s0, s6
                  slti         a4, t4, -26
                  blt          s1, s5, 1490f
                  sltu         s9, ra, t2
                  blt          s3, ra, 1492f
                  bne          ra, a3, 1488f
                  sra          s5, s6, a5
                  or           s8, t1, s1
1479:             auipc        s11, 468333
                  sll          s11, zero, zero
                  nop
                  bge          t5, zero, 1499f
1483:             sub          s11, t1, t4
                  sub          s8, a7, sp
                  bltu         a1, sp, 1503f
                  slt          t2, s1, sp
                  add          sp, a4, t1
1488:             sub          t6, a7, s7
                  xori         a5, tp, 1413
1490:             andi         t5, t4, 550
                  srai         s11, s10, 0
1492:             sltu         s11, a1, a6
                  slli         a5, s7, 29
                  beq          s7, t0, 1510f
                  sra          t4, a6, ra
                  bgeu         gp, s6, 1512f
                  srl          a1, tp, t1
                  bltu         a0, a2, 1502f
1499:             slt          a4, s9, gp
                  bltu         s5, a4, 1506f
                  bltu         a1, s6, 1521f
1502:             blt          t5, s2, 1515f
1503:             blt          s2, a2, 1512f
                  bgeu         a5, a0, 1523f
                  sltu         t4, a2, a1
1506:             and          a5, t0, a7
                  auipc        t4, 646111
                  slti         t1, a2, 877
                  sltiu        s2, s0, 729
1510:             add          t1, t4, s4
                  bltu         t2, a5, 1514f
1512:             add          ra, s2, s9
                  bltu         s1, t6, 1525f
1514:             sltu         t2, t1, a5
1515:             or           t4, a1, a2
                  or           s8, s6, a1
                  slti         s6, s11, 1036
                  bltu         t4, s11, 1535f
                  bgeu         a3, t1, 1535f
                  bge          a1, t0, 1539f
1521:             xor          sp, t4, s4
                  bgeu         s10, s5, 1535f
1523:             slti         s4, t0, -1455
                  sll          s2, s10, s9
1525:             nop
                  slli         t6, s11, 10
                  sra          s11, a3, t3
                  sltiu        gp, s9, -712
                  andi         a2, s5, -1086
                  sltiu        t4, a1, -113
                  and          sp, s2, s3
                  or           t3, a5, s8
                  bge          s5, sp, 1542f
                  bltu         t1, t4, 1551f
sub_1_25:         jal          ra, 17f
0:                jal          ra, 9f
1:                jal          ra, 18f
2:                jal          ra, 30f
3:                jal          t1, 24f
4:                jal          ra, 19f
5:                jal          t1, 16f
6:                jal          t5, 13f
7:                jal          ra, 23f
8:                jal          ra, 4b
9:                jal          ra, 22f
10:               jal          ra, 0b
11:               jal          sp, 7b
12:               jal          ra, 11b
13:               jal          a3, 5b
14:               jal          t4, 20f
15:               jal          ra, 10b
16:               jal          ra, 21f
17:               jal          s6, 27f
18:               jal          sp, 8b
19:               jal          ra, 3b
20:               jal          a4, 26f
21:               jal          t5, 2b
22:               jal          ra, 1b
23:               jal          ra, 25f
24:               jal          ra, 6b
25:               jal          t1, 15b
26:               jal          gp, 29f
27:               jal          ra, 14b
28:               jal          t1, 12b
29:               jal          ra, 28b
30:               sll          t4, s0, s5
1535:             lui          t1, 295881
                  bltu         s4, gp, 1551f
                  sub          s7, s5, t1
                  srai         t6, t2, 2
1539:             xori         s6, t6, -561
                  srl          s9, a4, s0
                  sll          a3, s7, zero
1542:             or           a5, t6, s10
                  bge          t0, a3, 1563f
                  auipc        a4, 141562
                  blt          s5, t1, 1564f
                  sra          s8, s6, s10
                  ori          t0, s8, -738
                  bltu         s6, a2, 1565f
                  srl          t1, tp, t4
                  xori         s10, s1, 1500
1551:             beq          s2, s3, 1566f
                  auipc        t6, 321125
                  add          a7, s7, a7
                  bge          s0, s4, 1557f
                  andi         s5, zero, -437
                  sll          a3, s11, a1
1557:             srli         t4, a5, 15
                  sra          s6, sp, s0
                  bge          a7, s0, 1564f
                  bne          a4, t4, 1577f
                  or           a4, a7, a6
                  addi         s4, sp, 474
1563:             xori         s5, ra, -970
1564:             blt          a4, a1, 1577f
1565:             beq          tp, zero, 1574f
1566:             xori         s8, t6, 19
                  nop
                  addi         s9, t0, 36
                  sll          a2, zero, s2
                  sll          a1, t3, a1
                  and          t2, a7, s11
                  sltu         a7, s6, sp
                  andi         gp, s10, -1968
1574:             and          ra, a4, s6
                  blt          s11, s1, 1586f
                  beq          s11, s11, 1586f
1577:             bge          gp, ra, 1594f
                  srli         a5, t5, 25
                  srli         s4, a1, 0
                  blt          tp, a0, 1595f
                  lui          zero, 483293
                  sltu         s10, s9, s8
                  bne          t4, t4, 1588f
                  slli         a3, ra, 16
                  slti         s0, t5, 1244
1586:             srai         sp, s4, 25
                  beq          ra, a6, 1596f
1588:             nop
                  sltiu        s3, a1, 255
                  slti         s8, a0, -1097
                  addi         a1, t2, 859
                  beq          s5, s10, 1611f
                  bge          tp, t6, 1597f
1594:             bltu         zero, a0, 1611f
1595:             lui          s10, 712270
1596:             srli         s10, t2, 21
1597:             sub          a5, t2, tp
                  bgeu         s10, s1, 1609f
                  srl          sp, s3, a1
                  bne          a3, s3, 1617f
                  bgeu         a5, ra, 1619f
                  xori         sp, gp, 635
                  and          s10, s2, a3
                  slti         ra, t2, -1518
                  and          t0, a0, ra
                  and          t4, s9, sp
                  bge          a1, s10, 1623f
                  slli         sp, a6, 30
1609:             add          t0, t2, a4
                  auipc        s3, 339017
1611:             slti         s4, a3, -1284
                  sub          t5, t5, t5
                  sltiu        s4, t2, -1142
                  sub          ra, s0, s11
                  blt          t3, t6, 1624f
                  andi         s0, s2, -1844
1617:             lui          s9, 787696
                  sltu         t3, a7, t5
1619:             slt          s3, a5, a0
                  bgeu         zero, tp, 1633f
                  slli         ra, s9, 5
                  sub          t2, zero, a2
1623:             and          zero, t6, s2
1624:             srl          a4, s11, s3
                  sltu         a2, t5, s8
                  sll          sp, s10, ra
                  blt          gp, s1, 1636f
                  auipc        s5, 705701
                  auipc        a1, 183777
                  sltiu        s6, t0, 584
                  bge          s11, a0, 1651f
                  bne          t3, s8, 1652f
1633:             bge          t0, t0, 1646f
                  blt          a2, a1, 1651f
                  and          sp, s7, sp
1636:             ori          s9, a4, 1608
                  xor          t5, t0, t0
                  slti         s2, a5, 1677
                  or           t0, t0, s1
                  andi         t1, zero, 1547
                  slti         sp, t5, -892
                  and          t5, tp, s9
                  nop
                  srai         s9, ra, 25
                  slt          a3, a6, t4
1646:             beq          s8, zero, 1656f
                  sub          a5, gp, gp
                  bltu         s10, s0, 1663f
                  ori          t2, t4, 1311
                  auipc        s9, 226563
1651:             sltu         s5, sp, a2
1652:             sub          sp, sp, s0
                  la           ra, sub_5
                  and          s0, a6, s3
                  addi         s11, a5, 1463
                  addi         ra, ra, -478
                  and          t1, s9, a5
                  xori         t3, s2, -584
                  nop
                  slt          s5, tp, s0
                  slli         t4, s4, 11
                  blt          t1, a3, sub_1_j5 #branch to jump instr
                  sltu         s11, a6, t4
                  addi         t5, s6, -560
                  xor          s2, ra, a2
sub_1_j5:         jalr         ra, ra, 478 #jump sub_1 -> sub_5
                  bltu         t4, a5, 1669f
                  sltu         t5, t1, s4
                  nop
1656:             auipc        t3, 772190
                  bltu         gp, t1, 1660f
                  andi         t4, a6, -770
                  ori          zero, s8, 763
1660:             bge          s8, gp, 1679f
                  sll          s11, s9, a2
                  bge          t6, a4, 1681f
1663:             addi         t0, s2, -1072
                  xor          s0, t4, a4
                  sll          s7, s9, t0
                  slt          s10, s4, s1
                  bne          s4, a6, 1684f
                  slli         t2, s2, 6
1669:             srai         a3, s8, 4
                  and          a2, zero, s10
                  srl          a0, ra, s2
                  sub          s10, a4, a1
                  sll          a7, t0, a2
                  add          a4, a6, s6
                  addi         s3, s8, -465
                  slt          s10, t0, s11
                  nop
                  blt          tp, s6, 1684f
1679:             bne          sp, t5, 1692f
                  sltu         t3, a2, sp
1681:             bne          t6, sp, 1697f
                  addi         t5, t3, 1532
                  nop
1684:             slti         s7, ra, -1652
                  or           s7, t0, gp
                  add          a4, a6, s1
                  blt          t6, a1, 1690f
                  bgeu         s8, s5, 1700f
                  ori          t6, t0, 1487
1690:             sll          s6, a4, s4
                  bne          sp, s7, 1708f
1692:             srli         a7, s6, 13
                  ori          s10, s5, 546
                  addi         ra, a3, 909
                  bne          a1, s11, 1714f
                  slti         gp, s2, -485
1697:             xori         s4, t5, -572
                  sub          t5, t4, s8
                  blt          t1, s2, 1708f
1700:             bltu         zero, s0, 1703f
                  nop
                  add          s2, t4, gp
1703:             and          a2, gp, a2
                  xori         t5, a6, 1072
                  slli         s6, tp, 17
                  srai         zero, s4, 3
                  nop
1708:             srai         s5, a7, 3
                  andi         s3, s3, -1026
                  sltiu        t4, s3, -938
                  xor          a3, a3, t3
                  srai         t4, a5, 25
                  srai         s5, t4, 7
1714:             sll          zero, t6, t4
                  slt          a4, a0, gp
                  auipc        ra, 79488
                  auipc        s9, 794909
                  srl          a4, s3, t3
                  slti         s6, a6, 506
                  and          t6, s0, a3
                  bgeu         s11, a7, 1740f
                  xor          zero, t4, t6
                  bltu         t4, t1, 1739f
                  beq          t1, sp, 1741f
                  srl          s9, a4, s8
                  xor          ra, s5, t3
                  add          s6, t0, t1
                  nop
                  andi         s2, s1, 1391
                  beq          t2, t1, 1743f
                  blt          s8, s4, 1751f
                  xor          s2, a6, t4
                  slti         s10, t4, -609
                  srli         t4, sp, 11
                  add          sp, ra, s5
                  bge          tp, tp, 1751f
                  and          s11, s6, t2
                  add          s7, ra, s7
1739:             or           s8, s3, s5
1740:             sll          t1, t2, a6
1741:             xori         a5, t0, 981
                  srli         s9, zero, 17
1743:             slti         s0, zero, 1449
                  auipc        t6, 531350
                  bltu         t1, s8, 1762f
                  bge          t4, t4, 1762f
                  bgeu         t4, s5, 1765f
                  andi         t1, s4, 1355
                  bne          t1, s8, 1768f
                  and          s2, a6, s1
1751:             lui          s10, 518131
                  and          ra, s0, s0
                  srli         ra, s9, 30
                  sra          a2, a0, s11
                  slt          s3, a1, t0
                  lui          s9, 831623
                  sll          s7, a7, s2
                  bgeu         t1, zero, 1762f
                  bne          t5, t5, 1762f
                  sra          t4, tp, a4
                  auipc        t1, 717052
1762:             nop
                  lui          s0, 512360
                  srli         t0, t4, 19
1765:             xori         s8, a3, 1213
                  or           a1, t1, s9
                  srli         s2, a6, 20
1768:             xor          t6, s10, a1
                  slti         t5, ra, 1042
                  andi         t6, s5, -1271
                  or           t6, s5, t4
sub_1_32:         jal          ra, 1f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          a7, 12f
3:                jal          ra, 9f
4:                jal          t1, 8f
5:                jal          ra, 7f
6:                jal          ra, 3b
7:                jal          sp, 11f
8:                jal          ra, 13f
9:                jal          ra, 4b
10:               jal          s9, 6b
11:               jal          ra, 14f
12:               jal          sp, 5b
13:               jal          ra, 0b
14:               sll          t0, sp, a7
                  bge          s1, s1, 1781f
                  slt          s4, s4, gp
                  slt          t1, zero, a0
                  srai         a0, s0, 15
                  addi         sp, s8, 2001
                  or           t5, s7, t1
                  sltu         a2, s1, s0
                  xori         gp, gp, 842
                  xori         s9, a7, -1388
1781:             xori         s7, a7, -1035
                  bne          a7, s4, 1797f
                  add          t5, t4, s5
                  andi         ra, t1, -686
                  or           s3, s4, t3
                  addi         s9, a6, -714
                  ori          gp, a3, 153
                  sltu         t2, t6, a6
                  slt          s8, s3, sp
                  and          s11, s2, s0
                  srli         t5, t4, 9
                  andi         sp, sp, -1171
                  lui          a1, 688328
                  sltu         s7, s11, s5
                  sltiu        ra, t0, -1818
                  nop
1797:             andi         t0, s1, 1113
                  bgeu         t3, s7, 1807f
                  slti         ra, t1, -1094
                  slli         s4, a3, 23
                  and          t4, t0, a5
                  and          s2, s1, t5
                  blt          a2, s1, 1815f
                  xor          a2, a1, t4
                  sltu         gp, s11, t3
                  sra          ra, s2, a4
1807:             srai         a0, tp, 1
                  nop
                  lui          t2, 788995
                  blt          t1, a3, 1827f
                  slti         a2, t6, 35
                  srai         gp, s5, 2
                  sltu         s0, t0, a7
                  add          ra, s10, a6
1815:             bge          t5, sp, 1828f
                  slli         s7, s0, 14
                  lui          a1, 672271
                  bltu         s10, t0, 1835f
                  beq          a3, s3, 1824f
                  andi         s6, s4, -304
                  andi         s9, t3, 185
                  nop
                  and          a0, a3, s2
1824:             xor          s11, s7, a3
                  xori         s10, t2, 596
                  xori         a7, s0, 1737
1827:             add          a4, a2, t2
1828:             andi         s8, gp, -1899
                  bgeu         s7, s0, 1840f
                  sra          a4, s11, s4
                  sltiu        s10, a6, 1887
                  sll          t6, s0, t6
                  beq          a5, s7, 1853f
                  slti         a7, s0, 1854
1835:             and          t0, a6, a7
                  srl          t5, t6, a0
                  bltu         a3, a4, 1853f
                  and          a7, s2, t0
                  add          s9, a5, a7
1840:             bge          t6, s0, 1850f
                  andi         zero, s2, -635
                  xor          gp, tp, t1
                  bge          sp, tp, 1849f
                  srl          s0, t3, sp
                  sltu         s10, a4, gp
                  srai         zero, tp, 27
                  bltu         s5, t2, 1860f
                  xor          s10, s0, s10
1849:             slli         a2, s4, 20
1850:             bge          t4, a1, 1863f
                  sltiu        s10, s8, 45
                  sltiu        s4, s2, -93
1853:             srl          t6, s11, t3
                  slli         s4, t2, 23
                  sra          sp, s1, gp
                  andi         t0, t5, -1791
                  beq          sp, s3, 1876f
                  nop
                  slt          s9, t3, gp
1860:             xor          s6, a3, t1
                  slli         a4, tp, 7
                  bltu         t6, s8, 1875f
1863:             beq          s11, a1, 1880f
                  bne          t0, t3, 1881f
                  srli         t4, a3, 13
                  bge          s10, t3, 1885f
                  srli         a1, a2, 14
                  lui          s0, 555648
                  or           gp, s8, t5
                  addi         a0, s9, -1561
                  add          t6, t1, t6
                  andi         a5, t5, 1076
                  sltu         t1, a6, s1
                  sll          s4, t1, s2
1875:             sltiu        ra, ra, -1952
1876:             blt          s5, tp, 1893f
                  bge          gp, s10, 1894f
                  auipc        s3, 348394
                  srli         t1, ra, 28
1880:             bne          gp, s6, 1892f
1881:             add          s0, s10, ra
                  lui          a7, 416960
                  nop
                  slli         sp, s4, 12
1885:             sll          a0, t4, s1
                  sra          a1, t6, a7
                  sra          t6, a0, tp
                  addi         s2, s8, 455
                  andi         t1, t2, -1674
                  srai         t5, s8, 17
                  bne          t3, s10, 1906f
1892:             sltu         s3, s1, s2
1893:             sub          gp, gp, s6
1894:             sltu         ra, s9, s6
                  andi         s10, s10, 1254
                  slti         t6, t1, -693
                  slti         a5, tp, 2029
                  srl          ra, a5, s6
                  beq          t6, sp, 1917f
                  or           a7, s0, a2
                  srl          s4, t6, gp
                  nop
                  bgeu         s1, a1, 1919f
                  and          t5, gp, a4
                  addi         zero, t0, -1164
1906:             addi         s6, t3, -554
                  xori         t4, s0, -1416
                  beq          sp, t4, 1927f
                  srli         s7, s8, 3
                  sll          sp, s11, s2
                  bltu         s2, t3, 1931f
                  nop
                  sltu         t2, s10, a0
                  slt          s3, s0, sp
                  bne          ra, t6, 1920f
                  addi         s10, sp, 1087
1917:             srai         a7, a1, 17
                  bge          ra, a4, 1927f
1919:             lui          t6, 119204
1920:             sltu         ra, ra, t4
                  bgeu         s7, s3, 1938f
                  or           sp, s11, zero
                  xori         s8, a5, -972
                  add          t0, t1, s11
                  nop
                  slt          s10, s9, s1
1927:             srli         s6, t2, 16
                  bge          zero, t3, 1948f
                  sub          zero, s6, t6
                  andi         s8, a4, 852
1931:             nop
                  slli         t6, tp, 3
                  sltu         t4, s4, a2
                  bltu         a3, t4, 1949f
                  sltu         s10, s1, t2
                  bge          t0, t2, 1945f
                  beq          ra, s8, 1950f
1938:             slt          ra, s4, ra
                  sltu         s11, t3, ra
                  slt          t2, s6, sp
                  sltiu        s6, s8, -729
                  addi         t2, s3, -136
                  lui          a5, 817221
                  sra          t1, a3, s2
1945:             add          s7, s8, sp
sub_1_11:         jal          ra, 4f
0:                jal          ra, 3f
1:                jal          t1, 0b
2:                jal          t0, 19f
3:                jal          ra, 12f
4:                jal          sp, 15f
5:                jal          t1, 13f
6:                jal          ra, 18f
7:                jal          t4, 16f
8:                jal          ra, 5b
9:                jal          ra, 14f
10:               jal          t1, 7b
11:               jal          ra, 17f
12:               jal          ra, 6b
13:               jal          t0, 2b
14:               jal          ra, 10b
15:               jal          ra, 9b
16:               jal          s6, 11b
17:               jal          ra, 1b
18:               jal          a2, 8b
19:               andi         s8, t1, 1265
                  bgeu         s4, t0, 1955f
                  blt          ra, a4, 1958f
1948:             beq          zero, a7, 1954f
1949:             sltiu        s6, a7, -606
1950:             xori         s5, a5, -73
                  or           t4, t0, s2
                  slt          sp, t1, a7
                  sub          t3, s1, s10
1954:             or           a2, a7, s4
1955:             srai         a0, s5, 3
                  andi         s4, s0, -292
                  bge          s3, a0, 1967f
1958:             ori          t1, gp, -1086
                  sltiu        s5, sp, 490
                  sltu         t2, s3, s10
                  xor          a0, a3, ra
                  srl          s5, t5, gp
                  bge          ra, s5, 1979f
                  and          s2, s10, s0
                  ori          s2, s5, 1567
                  auipc        gp, 999831
1967:             sra          a1, zero, t1
                  sub          sp, s4, a6
                  andi         t5, a6, 1448
                  sll          t4, t0, gp
                  add          t5, a6, a7
                  bltu         t5, a0, 1976f
                  bge          s10, s1, 1976f
                  slt          s3, t0, sp
sub_1_8:          jal          ra, 6f
0:                jal          a2, 11f
1:                jal          t1, 5f
2:                jal          ra, 7f
3:                jal          gp, 8f
4:                jal          gp, 2b
5:                jal          ra, 10f
6:                jal          t1, 3b
7:                jal          t1, 1b
8:                jal          s2, 0b
9:                jal          t6, 13f
10:               jal          t1, 9b
11:               jal          t1, 12f
12:               jal          ra, 4b
13:               jal          ra, 14f
14:               jal          t1, 15f
15:               and          a7, s5, t6
                  srl          s4, t6, a3
1976:             xori         s7, a7, -881
                  bltu         s10, t6, 1980f
                  sltu         s3, a4, t2
1979:             sll          a7, sp, s8
1980:             nop
                  sll          s11, a7, s3
                  or           t2, a0, zero
                  xor          s2, a0, t0
                  andi         a4, tp, 793
                  xori         t4, t6, 1557
                  ori          s0, ra, 1671
                  srli         a4, s0, 17
                  srai         a1, s3, 6
                  sub          s3, t1, a5
                  add          s6, t3, t4
                  xori         t2, sp, -716
                  blt          s7, zero, 2008f
                  andi         t2, s0, 1818
                  sll          s6, a2, a6
sub_1_15:         jal          ra, 14f
0:                jal          ra, 4f
1:                jal          t1, 7f
2:                jal          ra, 3f
3:                jal          s5, 18f
4:                jal          ra, 11f
5:                jal          ra, 6f
6:                jal          ra, 12f
7:                jal          ra, 15f
8:                jal          t6, 2b
9:                jal          ra, 1b
10:               jal          t3, 0b
11:               jal          t1, 20f
12:               jal          ra, 17f
13:               jal          ra, 8b
14:               jal          ra, 16f
15:               jal          t1, 10b
16:               jal          ra, 5b
17:               jal          s6, 19f
18:               jal          ra, 9b
19:               jal          t1, 13b
20:               sll          t0, a0, a0
                  sra          a5, s5, a2
                  sra          s10, a7, s7
                  and          s3, t1, a5
                  nop
                  slt          s10, s1, t3
                  bgeu         t6, s10, 2018f
                  srai         a0, sp, 23
                  ori          s9, sp, 841
                  bge          zero, a0, 2020f
                  srai         a2, t5, 9
                  and          s7, a7, a0
                  auipc        a5, 106403
                  ori          s6, s0, -1156
2008:             add          a7, t0, a6
                  bgeu         t3, t3, 2026f
                  bge          ra, s3, 2016f
                  slti         t4, s4, 1062
                  sub          a7, t3, t4
                  blt          a5, t4, 2026f
                  auipc        t6, 600173
                  sub          a7, s6, t3
2016:             beq          a2, a4, 2033f
                  bltu         ra, ra, 2022f
2018:             slt          a3, a2, s2
                  auipc        gp, 547561
2020:             slti         zero, s2, -1487
                  srai         s11, s7, 11
2022:             bne          s11, a7, 2025f
                  bltu         s3, tp, 2033f
                  sll          t2, tp, t1
2025:             xor          zero, s4, zero
2026:             auipc        t6, 441888
                  bltu         t3, s7, 2033f
                  bge          a5, gp, 2033f
                  slti         s0, s10, -57
                  beq          a1, s7, 2033f
                  bltu         s11, s7, 2033f
                  sll          t1, a0, s0
2033:             sltiu        a2, s8, -1972
                  sltu         zero, s0, a3
                  lw           ra, 4(tp)
                  sltu         s10, a1, t5
                  xori         t1, s11, 833
                  or           s7, a4, t2
                  addi         tp, tp, 40
                  addi         t6, s11, 1071
                  slti         s2, tp, -1267
                  slti         t1, a1, 819
                  sltiu        s0, a4, -1910
2997:             addi x12, x1, 1
2997:             jalr x12, x12, 0
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_2:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_3:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_4:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_5:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_6:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_7:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_8:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_9:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_10:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_11:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_12:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_13:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_14:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_15:
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
                  add x9, x4, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

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
                  add x9, x4, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x26, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x26, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x26, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x26, x8, ecall_handler
                  li x8, 0x1
                  beq x26, x8, instr_fault_handler
                  li x8, 0x5
                  beq x26, x8, load_fault_handler
                  li x8, 0x7
                  beq x26, x8, store_fault_handler
                  li x8, 0xc
                  beq x26, x8, pt_fault_handler
                  li x8, 0xd
                  beq x26, x8, pt_fault_handler
                  li x8, 0xf
                  beq x26, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

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
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x4, x9, zero
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
                  add x4, x9, zero
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
                  add x4, x9, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x4, x9, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x4, x9, zero
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
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x4, x9, zero
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
