.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0x9a1c7e99
                  li x1, 0xc2a0166
                  li x2, 0xfb7cdfac
                  li x3, 0xf
                  li x4, 0x0
                  li x5, 0xf40bde03
                  li x6, 0xf5f70960
                  li x7, 0x80000000
                  li x8, 0x24764051
                  li x9, 0x84c5680b
                  li x10, 0x0
                  li x11, 0x80000000
                  li x13, 0x80000000
                  li x14, 0xd
                  li x15, 0xfa96fd40
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x567b5326
                  li x19, 0xf6647283
                  li x20, 0xa9e3b9d7
                  li x21, 0x80000000
                  li x22, 0x47d1e4b3
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0xa
                  li x27, 0x80b8d209
                  li x28, 0x0
                  li x29, 0xfb615b52
                  li x30, 0xf12236dd
                  li x31, 0xfe4076d7
                  la x23, user_stack_end
main:             la           a1, sub_1
                  srl          gp, t4, t2
                  slti         t1, s3, 1975
                  srli         s3, s3, 6
                  slli         t1, t4, 25
                  slt          tp, s10, tp
                  addi         a1, a1, -269
                  slti         s10, a2, 1589
main_j2:          jalr         t1, a1, 270 #jump main -> sub_1
main_0:           jal          t1, 11f
0:                jal          ra, 19f
1:                jal          a1, 10f
2:                jal          ra, 4f
3:                jal          t1, 13f
4:                jal          t1, 21f
5:                jal          tp, 8f
6:                jal          ra, 15f
7:                jal          t0, 6b
8:                jal          t1, 12f
9:                jal          t1, 17f
10:               jal          t1, 16f
11:               jal          ra, 0b
12:               jal          ra, 18f
13:               jal          t0, 20f
14:               jal          ra, 3b
15:               jal          t4, 9b
16:               jal          ra, 22f
17:               jal          ra, 5b
18:               jal          ra, 2b
19:               jal          ra, 14b
20:               jal          ra, 7b
21:               jal          t3, 1b
22:               xor          a3, s0, a4
                  and          t1, a3, a2
                  sltu         s5, a2, s7
                  xori         a4, t1, 1664
                  bgeu         s10, t1, 6f
                  sub          ra, t5, t0
                  add          a7, a1, s9
6:                ori          s11, t6, 1398
                  xor          s0, t4, a7
                  xor          ra, tp, a0
                  srl          a7, t2, a1
                  bltu         s3, t6, 24f
                  andi         s9, t2, -837
                  addi         s4, s8, 1433
                  add          a6, ra, s1
                  slt          a4, a6, t3
                  addi         s11, t2, -1820
                  sltu         s4, s11, a1
                  and          s1, a4, s4
                  slti         a3, gp, -1382
                  addi         s9, t6, -59
                  xor          t6, s6, t0
                  bgeu         t5, t2, 26f
                  bge          s7, s9, 26f
                  slli         a3, t0, 0
24:               beq          s9, tp, 26f
                  xori         a5, s5, 1863
                  sltu         t3, s2, s3
                  la           t1, sub_2
                  sub          t0, a2, t1
                  addi         t1, t1, 844
                  xori         a6, s7, 598
                  srai         ra, ra, 9
                  nop
                  andi         a3, s2, 677
                  slt          gp, s9, t3
main_j1:          jalr         t1, t1, -844 #jump main -> sub_2
26:               srli         sp, a0, 8
                  la x24, test_done
                  jalr x0, x24, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            sll          s10, t3, ra
                  addi         s7, s7, -24
                  sub          a6, s11, a7
                  sw           t1, 4(s7)
                  addi         tp, s4, -392
sub_5_1:          jal          t1, 1f
0:                jal          s11, 14f
1:                jal          t1, 15f
2:                jal          gp, 3f
3:                jal          t1, 12f
4:                jal          s0, 10f
5:                jal          ra, 11f
6:                jal          ra, 5b
7:                jal          a3, 4b
8:                jal          t0, 2b
9:                jal          ra, 0b
10:               jal          ra, 13f
11:               jal          ra, 16f
12:               jal          t1, 7b
13:               jal          ra, 6b
14:               jal          t1, 8b
15:               jal          a4, 9b
16:               slli         s11, s9, 21
sub_5_0:          jal          t1, 23f
0:                jal          ra, 25f
1:                jal          ra, 11f
2:                jal          a1, 4f
3:                jal          a6, 8f
4:                jal          ra, 28f
5:                jal          ra, 14f
6:                jal          a0, 10f
7:                jal          t1, 2b
8:                jal          s10, 21f
9:                jal          ra, 16f
10:               jal          ra, 7b
11:               jal          t1, 26f
12:               jal          sp, 19f
13:               jal          s10, 6b
14:               jal          t1, 27f
15:               jal          ra, 13b
16:               jal          ra, 0b
17:               jal          s3, 3b
18:               jal          s1, 22f
19:               jal          t6, 20f
20:               jal          s2, 9b
21:               jal          ra, 1b
22:               jal          t1, 5b
23:               jal          t1, 12b
24:               jal          ra, 18b
25:               jal          ra, 17b
26:               jal          t1, 24b
27:               jal          ra, 15b
28:               srl          t3, a7, a5
                  blt          a4, t2, 2f
                  sra          s5, t5, a0
2:                bgeu         zero, a4, 3f
3:                auipc        t1, 1019947
                  lui          t4, 566671
                  sub          s10, sp, a1
                  srl          t6, sp, t4
                  sra          a4, a7, s11
                  bge          s2, t0, 26f
                  or           s5, a1, a5
                  xor          gp, a0, t6
                  xori         t1, t4, 1260
                  xori         s10, s2, 95
                  bltu         t3, s9, 32f
                  xori         a5, a7, -1649
                  ori          s2, tp, -19
                  auipc        tp, 613727
                  srl          t0, zero, s1
                  ori          s3, a2, 793
                  andi         a6, t1, -1221
                  slli         t5, s4, 15
                  auipc        tp, 330972
                  bltu         s9, s2, 29f
                  add          tp, zero, a6
                  sltu         s10, s10, a1
                  bge          s5, a0, 42f
26:               blt          t0, s10, 32f
                  srli         tp, a6, 21
                  lui          s5, 919251
29:               xor          s0, t4, zero
                  bgeu         s1, s4, 43f
                  or           t0, a2, a3
32:               blt          s7, a3, 41f
                  sub          s9, a0, a3
                  xori         ra, s7, 1889
                  sltu         s10, s8, a5
                  bltu         a7, a2, 38f
                  nop
38:               sra          gp, t2, s9
                  bne          t1, t3, 44f
                  bge          s5, t2, 41f
41:               sra          tp, t2, a1
42:               blt          s11, a1, 50f
43:               auipc        s6, 410730
44:               srai         s9, s11, 0
                  slt          s0, a0, zero
                  sra          t1, s2, s3
                  sltu         a7, s6, ra
                  sll          a1, a4, a1
                  sltiu        gp, a6, -1166
50:               bne          a1, s4, 51f
51:               blt          zero, gp, 65f
                  sll          s9, zero, s6
                  sltiu        sp, t3, 1374
                  lui          t1, 30035
                  bne          s10, t1, 62f
                  slli         a4, s11, 1
                  xor          a4, ra, a6
                  slt          s3, s10, s10
                  sltu         t2, s9, s11
                  lui          t3, 770091
                  or           a5, t1, tp
62:               sltiu        s0, t0, -463
                  ori          s1, t4, 832
                  bltu         tp, a4, 73f
65:               sub          sp, gp, a2
                  bge          s4, s4, 83f
                  add          t5, s0, t0
                  blt          t5, s6, 87f
                  and          s3, s3, t2
                  srli         s10, t2, 0
                  srl          s11, t3, s0
                  srli         s11, s4, 8
73:               and          ra, tp, a1
                  srli         t0, s2, 25
                  bne          a6, s7, 80f
                  xori         s6, t3, -977
                  bltu         s7, a3, 85f
                  andi         t4, gp, -76
                  bne          s3, s9, 96f
80:               ori          t0, a3, 809
                  srl          tp, s9, s9
                  and          s5, a1, t0
83:               ori          s1, a4, 156
                  and          t0, s5, a0
85:               srli         t5, a7, 2
                  ori          t6, t6, -479
87:               addi         s1, s7, -898
                  bgeu         s3, s6, 96f
                  auipc        s9, 301798
                  sltu         s9, a4, s6
                  sltu         ra, a5, a7
                  srl          s11, s4, s1
                  add          a4, a2, s7
                  nop
                  bge          t6, t6, 99f
96:               sub          s10, sp, t5
                  xor          s4, a0, t1
                  addi         a6, s5, -1932
99:               srai         t6, a1, 19
                  srai         s11, t4, 19
                  sltu         gp, s0, s1
                  sltu         a7, s8, zero
                  srl          s11, s10, s4
                  slli         s10, s2, 5
                  ori          s0, a5, -205
                  bgeu         ra, s10, 118f
                  bgeu         s2, a3, 121f
                  andi         t0, t4, -1154
                  sltu         s9, t5, a3
                  srli         s6, t1, 8
                  bne          t5, t3, 117f
                  bne          a5, s1, 121f
                  srl          a6, t6, s1
                  add          s1, t1, s8
                  or           ra, s5, s4
                  srai         t6, a6, 21
117:              sll          s6, s5, t3
118:              or           tp, s4, t2
                  bltu         a3, t5, 121f
                  bne          a5, ra, 121f
121:              sltu         sp, t2, s6
                  lw           t1, 4(s7)
                  and          tp, s9, tp
                  srai         zero, t1, 27
                  xori         a3, tp, -834
                  add          s0, a4, a7
                  xor          t0, s7, t3
                  addi         s7, s7, 24
                  auipc        tp, 447370
                  ori          t5, t5, 1855
                  srai         s1, s6, 22
                  nop
                  ori          t4, t6, 1635
187:              addi x6, x6, 1
187:              jalr x6, x6, 0
sub_1:            sltiu        s6, t4, -1362
                  add          s6, s2, t2
                  sll          s1, s2, a5
                  nop
                  bltu         a6, a2, sub_1_stack_p
                  and          s3, tp, a3
sub_1_stack_p:    addi         s7, s7, -52
                  srli         ra, t6, 14
                  nop
                  sw           t1, 4(s7)
                  xori         s11, a1, -1188
                  add          t0, s9, a2
sub_1_7:          jal          t1, 5f
0:                jal          s10, 4f
1:                jal          ra, 2f
2:                jal          t1, 9f
3:                jal          t1, 13f
4:                jal          t1, 3b
5:                jal          ra, 11f
6:                jal          t1, 12f
7:                jal          ra, 6b
8:                jal          ra, 10f
9:                jal          t3, 0b
10:               jal          ra, 7b
11:               jal          ra, 8b
12:               jal          s5, 1b
13:               add          a1, s6, tp
sub_1_4:          jal          t1, 9f
0:                jal          s11, 6f
1:                jal          s1, 5f
2:                jal          s2, 12f
3:                jal          ra, 19f
4:                jal          ra, 8f
5:                jal          ra, 21f
6:                jal          t1, 2b
7:                jal          t1, 1b
8:                jal          t1, 17f
9:                jal          ra, 10f
10:               jal          tp, 0b
11:               jal          ra, 14f
12:               jal          sp, 18f
13:               jal          ra, 11b
14:               jal          t1, 7b
15:               jal          tp, 3b
16:               jal          ra, 4b
17:               jal          a0, 15b
18:               jal          s3, 16b
19:               jal          ra, 20f
20:               jal          ra, 13b
21:               andi         s9, s4, 1041
sub_1_12:         jal          t1, 8f
0:                jal          ra, 9f
1:                jal          t1, 7f
2:                jal          t1, 11f
3:                jal          t2, 0b
4:                jal          ra, 25f
5:                jal          t0, 15f
6:                jal          ra, 1b
7:                jal          a3, 17f
8:                jal          a4, 21f
9:                jal          sp, 4b
10:               jal          ra, 29f
11:               jal          s6, 27f
12:               jal          ra, 6b
13:               jal          ra, 30f
14:               jal          s11, 18f
15:               jal          ra, 16f
16:               jal          ra, 14b
17:               jal          s1, 19f
18:               jal          ra, 22f
19:               jal          ra, 5b
20:               jal          ra, 12b
21:               jal          ra, 10b
22:               jal          ra, 23f
23:               jal          gp, 28f
24:               jal          t1, 2b
25:               jal          ra, 20b
26:               jal          s3, 3b
27:               jal          t1, 26b
28:               jal          t0, 13b
29:               jal          ra, 24b
30:               slli         s4, t6, 4
sub_1_2:          jal          t1, 19f
0:                jal          ra, 4f
1:                jal          ra, 20f
2:                jal          s0, 14f
3:                jal          tp, 10f
4:                jal          a0, 21f
5:                jal          gp, 15f
6:                jal          t0, 7f
7:                jal          ra, 13f
8:                jal          ra, 9f
9:                jal          t1, 2b
10:               jal          ra, 22f
11:               jal          t1, 1b
12:               jal          ra, 17f
13:               jal          ra, 0b
14:               jal          t1, 12b
15:               jal          ra, 16f
16:               jal          ra, 6b
17:               jal          t1, 5b
18:               jal          a6, 8b
19:               jal          ra, 11b
20:               jal          ra, 18b
21:               jal          ra, 3b
22:               nop
sub_1_9:          jal          t1, 7f
0:                jal          ra, 15f
1:                jal          s4, 3f
2:                jal          ra, 10f
3:                jal          t5, 18f
4:                jal          ra, 14f
5:                jal          s11, 12f
6:                jal          s6, 8f
7:                jal          t1, 5b
8:                jal          ra, 22f
9:                jal          s9, 6b
10:               jal          t1, 21f
11:               jal          sp, 16f
12:               jal          ra, 13f
13:               jal          ra, 11b
14:               jal          tp, 0b
15:               jal          t1, 23f
16:               jal          ra, 20f
17:               jal          t1, 24f
18:               jal          t0, 19f
19:               jal          t6, 17b
20:               jal          s11, 4b
21:               jal          ra, 25f
22:               jal          ra, 1b
23:               jal          t1, 9b
24:               jal          ra, 2b
25:               sll          s4, s9, s0
sub_1_8:          jal          t1, 13f
0:                jal          t1, 9f
1:                jal          ra, 4f
2:                jal          t5, 24f
3:                jal          ra, 5f
4:                jal          t1, 19f
5:                jal          ra, 21f
6:                jal          t1, 28f
7:                jal          s10, 16f
8:                jal          t1, 11f
9:                jal          ra, 12f
10:               jal          t1, 23f
11:               jal          s9, 15f
12:               jal          ra, 10b
13:               jal          ra, 20f
14:               jal          ra, 7b
15:               jal          ra, 27f
16:               jal          s0, 26f
17:               jal          ra, 29f
18:               jal          a7, 2b
19:               jal          ra, 6b
20:               jal          a6, 3b
21:               jal          ra, 1b
22:               jal          t6, 18b
23:               jal          a6, 14b
24:               jal          t6, 8b
25:               jal          ra, 0b
26:               jal          ra, 22b
27:               jal          ra, 17b
28:               jal          ra, 25b
29:               and          s3, s2, s11
sub_1_11:         jal          t1, 12f
0:                jal          ra, 2f
1:                jal          tp, 11f
2:                jal          ra, 13f
3:                jal          ra, 7f
4:                jal          t1, 0b
5:                jal          t1, 1b
6:                jal          t1, 14f
7:                jal          t5, 9f
8:                jal          s6, 5b
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               jal          ra, 6b
12:               jal          ra, 4b
13:               jal          ra, 3b
14:               srli         s5, s2, 3
                  slti         s3, s5, 1997
                  addi         a3, t3, 1796
                  sub          t1, t2, s1
                  sltu         zero, gp, s5
                  sltiu        s11, a6, 1707
                  srl          s9, a0, t6
                  nop
                  addi         s1, t1, 385
                  bne          s1, t1, 26f
                  slt          s3, s9, s3
                  srl          s0, sp, t2
                  bne          zero, s5, 23f
                  or           t3, a0, s10
                  andi         sp, s5, 1641
                  srl          s1, a0, s6
                  srli         sp, t2, 30
                  addi         a6, t6, -884
                  bne          tp, t2, 26f
                  srli         t0, zero, 1
                  lui          zero, 14654
                  srai         ra, a5, 28
                  slt          s10, t4, tp
                  andi         a7, a5, -1509
23:               blt          s8, s6, 43f
                  addi         s9, s11, -1820
                  srai         t3, s9, 13
26:               xori         tp, s4, -1444
                  addi         t1, a4, 1524
                  srai         s10, s2, 5
                  or           t2, t4, a3
                  andi         a0, sp, 308
                  add          s3, s2, t2
                  and          gp, t5, s3
                  add          s6, t5, a6
                  beq          s7, s1, 43f
                  bge          s11, s2, 47f
                  bgeu         a4, t4, 38f
                  bge          a7, t3, 44f
38:               and          s1, s8, s0
                  sra          t0, s1, a2
                  and          s0, a1, gp
                  srli         s11, t4, 3
                  auipc        s9, 797807
43:               andi         a4, s1, 415
44:               auipc        a5, 647806
                  bne          t4, s7, 50f
                  and          t3, t3, s10
47:               lui          a7, 140017
                  nop
                  srai         t0, a7, 13
50:               nop
                  auipc        ra, 781302
                  add          s1, tp, a7
                  slti         a3, s10, 456
                  andi         ra, a6, 1092
                  andi         a1, s7, -1144
                  auipc        t4, 247239
                  slt          t6, zero, a2
                  sltiu        s2, t6, -887
                  bgeu         a0, t1, 71f
                  slt          sp, sp, a1
                  sll          s2, t0, s2
                  sll          sp, a3, s4
sub_1_0:          jal          t1, 5f
0:                jal          ra, 9f
1:                jal          ra, 10f
2:                jal          ra, 7f
3:                jal          ra, 8f
4:                jal          t1, 0b
5:                jal          ra, 2b
6:                jal          ra, 4b
7:                jal          ra, 6b
8:                jal          s11, 1b
9:                jal          ra, 3b
10:               slt          t5, s10, s1
                  srli         t3, a5, 20
                  sra          ra, s3, s8
                  ori          a4, s3, -198
                  bne          s8, a6, 78f
                  nop
                  bltu         s9, zero, 86f
                  or           a1, t2, zero
                  xor          s9, a6, a1
71:               srli         s2, s8, 23
                  sll          a5, t0, t0
                  bne          tp, t0, 92f
                  bge          a2, t5, 93f
                  bgeu         s1, s10, 93f
                  srl          gp, a4, t0
                  ori          s2, t6, -581
78:               srli         t2, tp, 1
                  bge          t1, s0, 98f
                  srli         s1, a7, 19
                  sub          s0, s5, a2
                  srai         a3, a7, 17
                  slti         s11, a1, 532
                  slli         t4, s6, 13
                  srli         zero, t1, 5
86:               bne          t1, t0, 102f
                  beq          ra, t3, 94f
                  ori          a5, a6, 1667
                  sll          t6, t1, t3
                  slti         s11, a5, -200
                  sltu         t5, s6, s2
92:               auipc        t6, 851688
93:               srli         zero, sp, 8
94:               sll          a3, a5, t6
                  xori         a4, t5, -1038
                  bne          ra, s10, 114f
                  xori         s4, t6, -2018
98:               ori          s4, a3, 993
sub_1_6:          jal          t1, 12f
0:                jal          ra, 14f
1:                jal          a3, 22f
2:                jal          tp, 11f
3:                jal          t0, 15f
4:                jal          ra, 17f
5:                jal          t1, 9f
6:                jal          ra, 2b
7:                jal          ra, 0b
8:                jal          s0, 7b
9:                jal          a0, 3b
10:               jal          t1, 1b
11:               jal          t1, 5b
12:               jal          t1, 13f
13:               jal          t1, 20f
14:               jal          ra, 4b
15:               jal          ra, 19f
16:               jal          ra, 10b
17:               jal          t0, 6b
18:               jal          t1, 16b
19:               jal          ra, 21f
20:               jal          s1, 8b
21:               jal          ra, 18b
22:               srai         gp, s5, 24
                  addi         t1, tp, 1495
                  bne          s2, a5, 116f
                  lui          t2, 191491
102:              xor          t2, s3, sp
                  srli         s4, zero, 21
                  bltu         t4, s1, 122f
                  slt          tp, sp, t5
                  xori         s0, s4, -544
                  slli         s9, a1, 28
                  sltu         a5, t6, a5
                  sub          s11, t5, t6
                  sll          t3, a6, a5
                  slli         a5, s1, 20
                  srli         t4, sp, 11
                  slti         s10, s8, -1263
114:              sll          a4, s1, zero
                  sra          s5, ra, zero
116:              ori          a1, s6, -530
                  xor          t1, a0, s0
                  sltiu        t5, s11, -1260
                  or           s3, s6, a5
                  blt          s0, s7, 128f
                  slt          sp, t0, s0
122:              nop
                  slti         a6, t6, -32
                  sltiu        t2, s0, 733
                  xor          t2, a3, a3
                  bltu         a5, s2, 132f
                  slt          s1, t3, s11
128:              bltu         a7, s9, 133f
                  slt          tp, a2, t3
                  ori          a0, t4, -99
                  andi         zero, tp, 1407
132:              srl          s3, a6, t2
133:              xor          t6, s6, t4
                  blt          s10, s9, 147f
                  nop
                  sll          a6, a7, t5
                  xor          a4, a7, a5
                  srl          s4, t5, tp
                  add          s3, s8, t3
                  bne          a1, a6, 146f
                  andi         t0, a5, 824
                  xori         t0, a6, 1528
                  sltiu        a0, t4, 477
                  ori          a3, a7, 1735
                  bltu         s9, t6, 147f
146:              bne          s1, a0, 163f
147:              nop
                  slti         t4, s6, 827
                  srai         s1, gp, 9
                  srai         gp, ra, 25
                  xori         t5, t1, 1106
                  bgeu         s4, t2, 168f
                  sub          s3, t5, s9
                  xori         s0, a1, -1365
                  srli         a7, t5, 29
                  addi         zero, s8, 413
                  auipc        s6, 84947
                  lui          t2, 1020852
                  srl          s1, gp, s2
                  bge          t1, s8, 161f
161:              bltu         s7, a6, 174f
                  bgeu         s6, tp, 181f
163:              srli         s3, s10, 17
                  and          ra, s3, s10
                  bgeu         s6, t5, 174f
                  add          a5, t2, a0
                  bne          s10, t3, 175f
168:              bge          s0, s8, 186f
                  blt          ra, t3, 175f
                  addi         s0, t3, -981
                  or           s0, s1, a0
                  srai         a0, a2, 17
                  slt          a1, s3, t5
174:              and          t5, a4, t6
175:              srl          t4, gp, s6
                  srai         s1, a3, 30
                  and          a0, zero, a6
                  xor          a5, a0, s1
                  sub          a3, a4, s0
                  auipc        gp, 653846
181:              addi         t1, a1, -208
                  sll          s9, tp, t3
                  slt          s3, ra, sp
                  nop
                  ori          s0, s1, 942
186:              srli         sp, s1, 2
                  and          t2, a7, s8
                  xori         a3, s1, -853
                  xori         s1, a3, -1240
                  andi         s1, t6, -2026
                  sll          s11, t5, a3
                  bne          a1, a4, 211f
                  bltu         t6, s2, 195f
                  blt          a6, s5, 212f
195:              addi         gp, s11, 1511
                  slt          a1, t3, s6
                  slli         a6, a2, 28
                  slt          s4, s9, s1
                  sub          s6, a3, t6
                  ori          a4, s5, 1738
                  andi         t4, a6, 2003
                  slti         t3, ra, 251
                  beq          t4, s3, 204f
204:              blt          s9, a5, 223f
                  slt          s6, gp, a0
                  and          s10, s1, ra
                  and          s4, t3, s7
                  addi         gp, s9, 184
                  sub          t0, tp, s7
                  andi         s5, ra, -1663
211:              xori         ra, zero, -612
212:              xor          zero, t2, s10
                  srli         gp, s1, 4
                  ori          a1, tp, 1407
                  sub          s6, sp, ra
                  and          s1, ra, a3
                  slt          s6, a6, s6
                  lui          t1, 70945
                  andi         s3, s2, -889
                  blt          t5, a2, 232f
                  xor          t5, s1, ra
                  ori          ra, t3, 2002
223:              xor          t5, s8, t6
                  sltiu        a7, s1, -917
                  sltiu        a7, t5, 639
                  bge          s6, sp, 244f
                  sll          a4, s9, t0
                  bne          gp, a3, 244f
                  srai         zero, t1, 8
                  srai         t1, s11, 9
                  slli         s6, t2, 10
232:              slli         s5, t1, 0
                  or           s2, t4, s11
                  add          a5, s1, sp
                  srl          a1, s4, a3
                  and          s5, a5, sp
                  xori         t4, t1, -1468
                  sltiu        s6, t4, 1020
                  bne          t0, a6, 255f
                  slt          t0, s4, s4
                  sub          s6, t1, a7
                  nop
                  beq          a7, s3, 248f
244:              sll          a4, a5, t2
                  bge          s8, zero, 257f
                  srli         ra, s7, 0
                  xori         t2, a1, -946
248:              sll          a5, s11, a5
                  sub          s3, s0, s2
                  ori          a6, t1, -1287
                  slti         s10, a2, -1307
                  srli         a5, t5, 14
                  srli         t5, ra, 21
                  lui          s3, 593126
255:              auipc        s6, 954422
                  slli         a7, a2, 4
257:              bge          s5, t3, 263f
                  bne          a1, a0, 265f
                  andi         t6, s11, -1800
                  sra          gp, tp, a5
                  sra          s1, s6, a1
                  ori          a1, s6, -654
263:              sll          a3, sp, ra
                  sltu         a7, a2, s5
265:              ori          sp, s5, -1981
                  sub          s10, s10, t0
                  bltu         t0, s6, 283f
                  nop
                  blt          a4, gp, 289f
                  addi         ra, a1, 934
                  nop
                  add          a5, s6, t1
                  srai         s5, s2, 4
                  addi         s5, s7, 1749
                  ori          tp, s10, -525
                  bge          t0, t3, 285f
                  sub          a0, t4, a7
                  add          s0, t0, s9
                  bne          t5, ra, 291f
                  bge          s2, s9, 298f
                  nop
                  add          sp, a5, a6
283:              nop
                  srli         gp, gp, 10
285:              addi         t4, a1, 1832
                  srai         s6, s3, 10
                  sll          t5, a0, a3
                  and          s11, a2, t1
289:              and          a1, t1, s1
                  bge          t6, s1, 295f
291:              sltiu        a7, s7, -1257
                  bgeu         a1, a7, 310f
                  beq          t5, a7, 300f
                  bne          s5, tp, 311f
295:              beq          sp, s10, 297f
                  bne          sp, a7, 308f
297:              sra          t1, sp, a1
298:              blt          s6, a4, 306f
                  srli         s5, t6, 19
300:              srl          s3, zero, t3
                  bne          s3, s2, 320f
                  ori          a7, a4, -1676
                  add          s2, s1, t3
                  andi         a5, t4, 1816
                  xori         a6, s7, 1883
306:              add          a4, a2, s10
                  sltiu        tp, a1, 1685
308:              blt          s8, s10, 317f
                  beq          a4, ra, 325f
310:              slti         gp, t2, -923
311:              beq          s3, s5, 320f
                  srl          a1, zero, s5
                  slti         s11, a1, 116
                  addi         a4, a1, -2036
                  sra          s0, tp, s6
                  bltu         a2, s7, 336f
317:              beq          s8, a4, 336f
                  blt          t5, t4, 336f
                  slti         a7, a5, -1003
320:              lui          t6, 175073
                  beq          s9, s7, 333f
                  blt          s4, s1, 334f
                  srai         t0, s1, 9
                  srai         t0, gp, 31
325:              srl          a4, a0, s5
                  xor          a7, s0, a1
                  slli         s10, t5, 26
                  ori          zero, s7, -240
                  sll          s3, s3, a0
                  sltu         t2, t2, a1
                  bge          s6, gp, 350f
                  and          s11, t0, a6
333:              bltu         a5, t6, 346f
334:              slt          s2, s6, s9
                  lui          t2, 645072
336:              sltiu        zero, a1, 1127
                  sll          s5, gp, t5
                  bltu         a1, s6, 354f
                  add          s6, s8, zero
                  xori         t1, a7, -1462
                  xor          gp, t2, t0
                  bge          s4, t0, 347f
                  srai         s11, s1, 22
                  add          s9, s1, t2
                  addi         a0, a3, 352
346:              addi         a7, s5, 439
347:              bltu         sp, s3, 349f
                  sub          ra, a3, s8
349:              bgeu         t4, s2, 365f
350:              or           s5, t6, s6
                  blt          a3, t6, 363f
                  sll          t3, t5, a3
                  and          s2, s9, t1
354:              and          s11, gp, s11
                  bne          a6, s0, 373f
                  srai         s0, s11, 17
                  slli         t3, s8, 18
                  bne          s9, tp, 375f
                  srli         zero, tp, 21
                  xor          t0, a1, s6
                  nop
                  bltu         t2, s9, 367f
363:              slti         a0, a7, 1422
                  srl          s5, t0, s5
365:              sll          t2, a7, gp
                  beq          s2, a0, 373f
367:              srl          zero, ra, t3
                  andi         a0, a6, 1620
                  sra          s1, sp, a1
sub_1_10:         jal          t1, 7f
0:                jal          ra, 2f
1:                jal          t1, 3f
2:                jal          ra, 11f
3:                jal          ra, 9f
4:                jal          ra, 8f
5:                jal          t3, 17f
6:                jal          ra, 5b
7:                jal          a1, 24f
8:                jal          ra, 18f
9:                jal          ra, 19f
10:               jal          t1, 20f
11:               jal          t1, 1b
12:               jal          s0, 23f
13:               jal          gp, 14f
14:               jal          ra, 16f
15:               jal          ra, 4b
16:               jal          ra, 15b
17:               jal          ra, 25f
18:               jal          a0, 22f
19:               jal          ra, 6b
20:               jal          ra, 12b
21:               jal          a0, 0b
22:               jal          t4, 10b
23:               jal          ra, 21b
24:               jal          ra, 13b
25:               or           s4, t1, a2
                  ori          t3, s7, 1994
                  sra          s5, s9, zero
                  srai         a7, a3, 22
373:              srli         tp, t6, 28
                  sub          a7, s4, s3
375:              slli         t0, s1, 4
                  bne          a4, s5, 382f
                  srai         t5, s9, 29
                  sltu         s4, s2, a2
                  slli         s11, a1, 21
                  ori          s11, s2, 149
                  sltu         a7, s9, a0
382:              xor          s9, sp, a2
                  sltiu        s5, t6, -815
                  srli         s6, s8, 4
                  ori          a1, s1, 482
                  slli         ra, s10, 23
                  bgeu         t3, t6, 405f
                  or           a3, s7, tp
                  srl          gp, sp, s10
                  srl          a1, s5, s5
                  bne          t0, ra, 393f
                  srai         s1, a3, 25
393:              srai         s3, zero, 21
                  slt          t6, a7, t5
                  blt          t4, a5, 413f
                  or           t3, s7, s5
                  sra          t4, s2, t1
                  bltu         s6, t0, 416f
                  lui          gp, 520797
                  beq          s11, s10, 406f
                  add          t6, t5, tp
                  auipc        s0, 103676
                  xori         a6, s4, 1185
                  xor          a7, tp, t0
405:              addi         ra, zero, -1787
406:              sll          t1, s6, t2
                  and          t3, s2, ra
                  bne          a7, a6, 420f
sub_1_3:          jal          t1, 7f
0:                jal          s10, 3f
1:                jal          ra, 8f
2:                jal          ra, 9f
3:                jal          s3, 14f
4:                jal          t1, 5f
5:                jal          t1, 6f
6:                jal          ra, 1b
7:                jal          t1, 4b
8:                jal          ra, 0b
9:                jal          ra, 13f
10:               jal          ra, 11f
11:               jal          ra, 2b
12:               jal          t1, 15f
13:               jal          ra, 12b
14:               jal          t1, 10b
15:               srl          s9, a4, t5
                  bgeu         tp, a3, 410f
410:              bge          s9, a5, 417f
                  sll          s6, s5, ra
                  andi         s3, s3, -962
413:              andi         a7, tp, 220
                  nop
                  slti         t5, s0, 889
416:              slli         t0, s3, 0
417:              xori         s9, tp, -1339
                  ori          s0, a7, 191
                  bltu         a1, a1, 420f
420:              sltu         t2, s8, a3
                  bgeu         t6, sp, 429f
                  ori          t2, s2, 397
                  sra          gp, a6, a3
                  addi         s5, a6, -800
                  bge          a5, gp, 443f
                  slti         t3, t4, -1951
sub_1_5:          jal          t1, 20f
0:                jal          tp, 15f
1:                jal          ra, 22f
2:                jal          t0, 8f
3:                jal          t1, 12f
4:                jal          ra, 6f
5:                jal          t1, 14f
6:                jal          gp, 18f
7:                jal          ra, 25f
8:                jal          t1, 7b
9:                jal          s0, 1b
10:               jal          tp, 3b
11:               jal          ra, 4b
12:               jal          ra, 5b
13:               jal          s4, 2b
14:               jal          ra, 24f
15:               jal          ra, 9b
16:               jal          ra, 21f
17:               jal          a6, 11b
18:               jal          ra, 13b
19:               jal          ra, 26f
20:               jal          t1, 16b
21:               jal          t1, 0b
22:               jal          ra, 17b
23:               jal          sp, 19b
24:               jal          t0, 23b
25:               jal          ra, 10b
26:               jal          s1, 27f
27:               srli         s10, s0, 4
                  bne          a4, a2, 446f
                  sltiu        t4, sp, 389
429:              blt          a5, a7, 447f
                  slli         ra, zero, 9
                  beq          s9, a5, 451f
                  sra          s5, a3, a0
                  xori         sp, t0, 1387
                  slli         sp, t4, 8
                  and          s11, a6, s8
                  and          a7, sp, s11
                  addi         a3, a5, -1668
                  slti         t2, zero, -1056
                  srai         s11, s2, 1
                  sltu         sp, s9, a4
                  bltu         a3, s9, 453f
                  bge          a4, a6, 458f
443:              or           a0, s7, s11
                  slt          a7, s5, t2
                  bltu         s6, a5, 461f
446:              beq          a7, ra, 464f
447:              ori          t5, a7, 1327
                  srai         a3, gp, 17
                  sll          t2, s9, tp
                  auipc        gp, 800120
451:              slli         s10, t0, 1
                  bgeu         sp, a6, 458f
453:              slti         s0, a1, -213
                  slt          s3, a5, s5
                  sltu         a1, t4, t6
                  bge          t1, a7, 468f
                  sltiu        tp, a7, -80
458:              addi         s9, a3, 348
                  sltu         s1, a5, s0
                  sll          a0, t3, s5
461:              sll          t4, s0, s7
                  andi         t5, sp, -1556
                  sltiu        s5, t5, -1024
464:              add          t0, a5, gp
                  sll          gp, s2, s6
                  xori         a7, t4, -199
                  addi         s10, a7, -395
468:              srai         s2, sp, 31
                  nop
                  lui          s2, 192448
                  lui          t1, 686862
                  auipc        t6, 593513
                  beq          a6, s9, 489f
                  sltiu        s4, s5, -669
                  addi         t0, tp, -1453
                  srl          a4, sp, s3
                  sll          s0, s1, t6
                  xori         t0, t0, -983
                  ori          t6, a4, -830
                  slli         t2, s5, 31
                  addi         a5, t6, 981
                  slli         a0, t2, 24
                  srl          s0, ra, a4
                  bge          zero, gp, 503f
                  sra          a5, a3, s1
                  slli         a6, a1, 15
                  bge          s3, t0, 492f
                  slt          tp, s0, s4
489:              ori          s0, a7, -137
                  slti         t3, s5, -1026
                  xor          t5, t4, s1
492:              sub          a1, a6, a2
                  add          t3, zero, s6
                  nop
                  beq          tp, tp, 507f
                  and          s1, tp, s11
                  bne          s2, a6, 509f
                  sub          t0, s0, s10
                  bge          s2, sp, 508f
                  slli         s11, s4, 8
                  add          s5, a7, s10
                  sltiu        s3, a3, -97
503:              bltu         zero, a2, 520f
                  xor          a0, a4, a1
                  bltu         s5, a6, 514f
                  slti         t6, t0, -1582
507:              bltu         t3, t6, 509f
508:              slli         s1, a2, 21
509:              srai         t0, t0, 1
                  sll          s11, a1, s4
                  srli         a0, t5, 25
                  sltu         a6, s6, a4
                  add          s3, a7, t2
514:              xor          s6, sp, gp
                  srl          ra, t6, s3
                  sra          a0, a3, s0
                  nop
                  srli         gp, t0, 12
                  bge          a1, s10, 524f
520:              bltu         s11, ra, 522f
                  xor          tp, t6, a6
522:              andi         a5, ra, 620
                  sub          a5, a6, t4
524:              sltiu        zero, s2, 29
                  srli         s1, s4, 12
                  xor          s2, zero, t4
                  sltu         s9, s9, a3
                  sltiu        a6, a2, -140
                  xor          s3, s4, s1
                  bne          t3, zero, 548f
                  slt          a6, s10, a6
                  sub          a0, t5, s4
                  xori         a7, t0, -359
                  blt          a1, t1, 541f
                  srai         zero, s4, 26
                  srai         tp, s9, 21
                  bltu         t0, t3, 544f
                  bltu         t5, s7, 557f
                  slli         s5, s7, 2
                  lui          a4, 606707
541:              sra          s4, s9, s4
                  auipc        s2, 324421
                  slti         sp, s2, -528
544:              andi         tp, s8, -891
                  auipc        s0, 668530
                  bltu         t0, zero, 559f
                  and          a7, t4, tp
548:              addi         s3, t5, 738
                  srl          a7, t1, s7
                  lui          a3, 563880
                  sra          t0, s10, a3
                  sll          t5, a3, t1
                  bltu         t4, t0, 559f
                  bgeu         t1, zero, 572f
                  slti         a5, a2, -1995
                  bgeu         a2, a0, 558f
557:              bgeu         s11, s8, 570f
558:              beq          s7, t3, 565f
559:              srli         s3, t5, 22
                  sltu         ra, t3, s10
                  slti         a1, t2, 997
                  sra          s10, zero, a4
                  sub          zero, a3, s6
                  andi         s3, s11, 809
565:              sltu         s10, s4, s7
                  xori         a3, a7, -1933
                  lui          sp, 748324
                  sra          a7, s10, zero
                  ori          zero, s4, -120
570:              sltu         a6, s3, t5
                  xori         s11, ra, -1017
572:              ori          s5, t3, 668
                  or           a5, gp, s1
                  sra          a0, gp, s9
                  sltiu        t2, s0, -936
                  slt          gp, s4, s3
sub_1_1:          jal          t1, 17f
0:                jal          t0, 5f
1:                jal          ra, 4f
2:                jal          ra, 3f
3:                jal          t1, 8f
4:                jal          ra, 0b
5:                jal          s10, 13f
6:                jal          a1, 19f
7:                jal          ra, 14f
8:                jal          ra, 18f
9:                jal          ra, 10f
10:               jal          ra, 12f
11:               jal          ra, 1b
12:               jal          t1, 15f
13:               jal          ra, 2b
14:               jal          ra, 9b
15:               jal          ra, 11b
16:               jal          t1, 6b
17:               jal          tp, 16b
18:               jal          s5, 20f
19:               jal          t1, 7b
20:               sltu         a5, a2, tp
                  sltu         s3, s2, gp
                  srli         gp, s11, 3
                  lui          t2, 170064
                  xor          a1, t6, t1
                  xor          t0, a3, t4
                  nop
                  sltiu        t5, a1, -593
                  andi         a0, a1, 1157
                  xor          s3, s1, t6
                  bne          zero, s9, 604f
                  beq          a1, s2, 607f
                  andi         t3, gp, 324
                  andi         s4, s2, 1504
                  slti         gp, t5, 362
                  sra          a4, tp, s3
                  bgeu         a1, tp, 611f
                  sltiu        t1, s8, -1941
                  bge          s2, s1, 606f
                  slti         a5, s3, 859
                  bltu         a7, s10, 598f
                  add          t2, a3, t3
598:              sltiu        s4, a5, -306
                  and          zero, t3, t5
                  addi         sp, gp, 449
                  slt          ra, t3, s11
                  sra          t6, a3, t0
                  andi         zero, s7, 1825
604:              andi         s11, a1, -1489
                  xor          a1, s5, a4
606:              beq          t1, s1, 624f
607:              add          ra, a2, s7
                  srli         t0, a5, 1
                  lui          t4, 628450
                  beq          a5, a5, 626f
611:              sub          s0, a5, s1
                  sltu         t4, s5, s8
                  auipc        tp, 165157
                  xori         a0, a3, 121
                  add          s5, t0, t4
                  slti         a3, zero, -1575
                  srl          t6, t6, tp
                  slt          a1, s2, t0
                  bge          t0, a7, 637f
                  and          a1, a0, a5
                  slti         s5, a2, -1141
                  slti         s6, sp, 1389
                  bne          t2, s5, 639f
624:              addi         a0, t2, -2002
                  ori          s2, t0, -1080
626:              bltu         s1, t3, 638f
                  or           s9, t3, s0
                  or           a3, t6, s2
                  bne          s1, s6, 641f
                  auipc        a6, 108837
                  bltu         a7, t1, 632f
632:              sub          t5, s1, t5
                  srl          t4, gp, s1
                  bltu         a0, s2, 652f
                  slt          s0, tp, s0
                  srli         a3, t0, 22
637:              bgeu         a4, s3, 653f
638:              srl          s11, a2, a3
639:              lui          s4, 3562
                  sltu         a1, a1, s11
641:              slt          a7, s6, sp
                  nop
                  bgeu         t5, a7, 661f
                  sra          tp, a7, a3
                  bltu         a6, a1, 653f
                  ori          s10, t1, 1315
                  srai         t4, a5, 19
                  slti         s2, a5, -1001
                  slli         t6, sp, 23
                  sltu         s6, sp, a3
                  addi         t4, a6, 1580
652:              bgeu         gp, s1, 661f
653:              xor          a3, a7, t3
                  andi         s1, s6, 702
                  xori         ra, s5, -1296
                  bgeu         sp, t4, 668f
                  sltiu        t6, t3, -1666
                  auipc        a7, 806700
                  sra          s1, a6, s2
                  xori         tp, a7, 1537
661:              bltu         a6, a7, 668f
                  xor          s1, sp, t3
                  slli         ra, t3, 2
                  sra          a6, s9, t0
                  bge          a4, s8, 674f
                  srl          gp, zero, a2
                  slli         a4, gp, 30
668:              blt          t4, sp, 676f
                  srli         s6, t1, 20
                  xor          a7, a3, gp
                  beq          a4, sp, 676f
                  sub          a1, a5, t1
                  slti         s3, a6, -629
674:              slli         gp, ra, 0
                  bltu         s0, t3, 676f
676:              sltiu        s5, s4, -1979
                  lw           t1, 4(s7)
                  slt          s10, s7, t1
                  sll          t5, a2, s6
                  sra          s6, gp, s10
                  and          zero, t0, ra
                  and          a1, t0, ra
                  srli         ra, s8, 6
                  srai         ra, s7, 13
                  slt          s9, s0, t6
                  addi         s7, s7, 52
                  srl          a3, s2, a4
999:              addi x3, x6, 0
999:              jalr x3, x3, 0
sub_4:            sltiu        a3, s5, -141
                  addi         s7, s7, -64
                  srai         s2, s7, 4
                  xor          a6, a2, a0
                  and          s0, s6, t4
                  sw           t1, 4(s7)
                  ori          t4, a7, 1417
                  xori         t3, t3, 1401
sub_4_3:          jal          t1, 16f
0:                jal          t3, 25f
1:                jal          ra, 26f
2:                jal          ra, 18f
3:                jal          ra, 17f
4:                jal          ra, 23f
5:                jal          ra, 4b
6:                jal          ra, 12f
7:                jal          t1, 3b
8:                jal          ra, 15f
9:                jal          t2, 10f
10:               jal          ra, 5b
11:               jal          s2, 22f
12:               jal          ra, 21f
13:               jal          a4, 2b
14:               jal          t1, 0b
15:               jal          ra, 1b
16:               jal          t1, 9b
17:               jal          t5, 6b
18:               jal          ra, 20f
19:               jal          t1, 11b
20:               jal          ra, 24f
21:               jal          ra, 14b
22:               jal          s10, 13b
23:               jal          ra, 19b
24:               jal          t1, 7b
25:               jal          ra, 8b
26:               slli         a7, s5, 12
sub_4_15:         jal          t1, 7f
0:                jal          gp, 2f
1:                jal          ra, 11f
2:                jal          ra, 8f
3:                jal          t1, 9f
4:                jal          ra, 10f
5:                jal          t1, 3b
6:                jal          ra, 4b
7:                jal          a0, 5b
8:                jal          tp, 6b
9:                jal          t1, 0b
10:               jal          sp, 1b
11:               sub          a6, s6, t3
sub_4_2:          jal          t1, 20f
0:                jal          ra, 2f
1:                jal          ra, 13f
2:                jal          ra, 4f
3:                jal          s11, 12f
4:                jal          ra, 3b
5:                jal          ra, 17f
6:                jal          s2, 15f
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          ra, 11f
10:               jal          s5, 9b
11:               jal          ra, 19f
12:               jal          t1, 5b
13:               jal          t1, 21f
14:               jal          s2, 18f
15:               jal          ra, 1b
16:               jal          ra, 14b
17:               jal          t1, 7b
18:               jal          t2, 10b
19:               jal          ra, 22f
20:               jal          ra, 8b
21:               jal          s11, 16b
22:               auipc        t4, 183218
sub_4_14:         jal          t1, 16f
0:                jal          a4, 24f
1:                jal          t1, 14f
2:                jal          t1, 17f
3:                jal          ra, 13f
4:                jal          t1, 9f
5:                jal          s1, 12f
6:                jal          ra, 28f
7:                jal          t1, 3b
8:                jal          t5, 26f
9:                jal          ra, 8b
10:               jal          ra, 0b
11:               jal          ra, 10b
12:               jal          t1, 2b
13:               jal          t1, 19f
14:               jal          t0, 21f
15:               jal          t1, 1b
16:               jal          t0, 5b
17:               jal          a6, 18f
18:               jal          ra, 25f
19:               jal          a0, 23f
20:               jal          ra, 4b
21:               jal          ra, 7b
22:               jal          a6, 6b
23:               jal          s9, 11b
24:               jal          t1, 22b
25:               jal          ra, 27f
26:               jal          ra, 15b
27:               jal          ra, 20b
28:               ori          a4, s8, 1802
sub_4_8:          jal          t1, 8f
0:                jal          t1, 2f
1:                jal          t1, 12f
2:                jal          ra, 17f
3:                jal          s2, 18f
4:                jal          t1, 7f
5:                jal          ra, 16f
6:                jal          ra, 0b
7:                jal          t1, 14f
8:                jal          ra, 6b
9:                jal          s3, 13f
10:               jal          ra, 1b
11:               jal          ra, 3b
12:               jal          t1, 22f
13:               jal          ra, 20f
14:               jal          ra, 21f
15:               jal          s2, 10b
16:               jal          ra, 15b
17:               jal          ra, 11b
18:               jal          t1, 19f
19:               jal          t1, 9b
20:               jal          ra, 4b
21:               jal          t1, 5b
22:               addi         s5, ra, 1542
sub_4_13:         jal          t1, 4f
0:                jal          ra, 12f
1:                jal          gp, 16f
2:                jal          sp, 15f
3:                jal          ra, 7f
4:                jal          s10, 11f
5:                jal          t1, 1b
6:                jal          t1, 17f
7:                jal          ra, 8f
8:                jal          a4, 9f
9:                jal          ra, 5b
10:               jal          t1, 3b
11:               jal          gp, 13f
12:               jal          ra, 2b
13:               jal          t1, 0b
14:               jal          tp, 6b
15:               jal          s2, 10b
16:               jal          ra, 14b
17:               jal          ra, 18f
18:               slti         s6, a3, 1498
sub_4_0:          jal          t1, 5f
0:                jal          t1, 7f
1:                jal          t1, 19f
2:                jal          t1, 18f
3:                jal          ra, 21f
4:                jal          t1, 24f
5:                jal          s6, 22f
6:                jal          ra, 1b
7:                jal          t0, 8f
8:                jal          s10, 3b
9:                jal          ra, 23f
10:               jal          gp, 15f
11:               jal          ra, 13f
12:               jal          ra, 17f
13:               jal          ra, 9b
14:               jal          ra, 16f
15:               jal          ra, 12b
16:               jal          ra, 4b
17:               jal          s0, 2b
18:               jal          ra, 14b
19:               jal          t1, 0b
20:               jal          ra, 10b
21:               jal          ra, 20b
22:               jal          a0, 11b
23:               jal          t1, 6b
24:               srli         s3, s6, 22
sub_4_6:          jal          t1, 1f
0:                jal          ra, 8f
1:                jal          t1, 14f
2:                jal          t1, 6f
3:                jal          ra, 4f
4:                jal          ra, 2b
5:                jal          ra, 9f
6:                jal          ra, 15f
7:                jal          a7, 17f
8:                jal          ra, 13f
9:                jal          tp, 16f
10:               jal          t1, 0b
11:               jal          ra, 7b
12:               jal          ra, 5b
13:               jal          sp, 12b
14:               jal          t1, 3b
15:               jal          s3, 11b
16:               jal          a6, 18f
17:               jal          a1, 10b
18:               sra          s1, s5, s6
sub_4_9:          jal          t1, 10f
0:                jal          ra, 6f
1:                jal          t1, 8f
2:                jal          ra, 0b
3:                jal          t1, 4f
4:                jal          t1, 1b
5:                jal          gp, 11f
6:                jal          ra, 12f
7:                jal          t1, 13f
8:                jal          ra, 7b
9:                jal          ra, 2b
10:               jal          ra, 5b
11:               jal          ra, 9b
12:               jal          t1, 3b
13:               slti         s10, a2, 1219
sub_4_4:          jal          t1, 19f
0:                jal          t1, 18f
1:                jal          ra, 8f
2:                jal          t1, 3f
3:                jal          t1, 30f
4:                jal          ra, 5f
5:                jal          ra, 16f
6:                jal          t1, 10f
7:                jal          ra, 26f
8:                jal          s6, 25f
9:                jal          ra, 6b
10:               jal          ra, 20f
11:               jal          a6, 7b
12:               jal          ra, 4b
13:               jal          a6, 27f
14:               jal          t1, 15f
15:               jal          ra, 0b
16:               jal          t5, 22f
17:               jal          ra, 12b
18:               jal          s9, 9b
19:               jal          ra, 29f
20:               jal          t1, 1b
21:               jal          t1, 11b
22:               jal          t1, 2b
23:               jal          tp, 13b
24:               jal          a3, 17b
25:               jal          ra, 23b
26:               jal          ra, 28f
27:               jal          s4, 21b
28:               jal          s11, 24b
29:               jal          ra, 14b
30:               xori         s5, t4, 938
sub_4_5:          jal          t1, 0f
0:                jal          ra, 15f
1:                jal          ra, 2f
2:                jal          s0, 18f
3:                jal          sp, 13f
4:                jal          gp, 14f
5:                jal          ra, 16f
6:                jal          t4, 1b
7:                jal          ra, 6b
8:                jal          ra, 7b
9:                jal          t1, 12f
10:               jal          t1, 5b
11:               jal          ra, 9b
12:               jal          t3, 4b
13:               jal          a4, 17f
14:               jal          ra, 10b
15:               jal          ra, 19f
16:               jal          t1, 20f
17:               jal          a0, 8b
18:               jal          s5, 11b
19:               jal          t1, 3b
20:               xori         a6, sp, 1178
sub_4_10:         jal          t1, 24f
0:                jal          ra, 16f
1:                jal          ra, 25f
2:                jal          s10, 15f
3:                jal          ra, 22f
4:                jal          ra, 0b
5:                jal          ra, 12f
6:                jal          ra, 3b
7:                jal          ra, 19f
8:                jal          ra, 23f
9:                jal          s5, 20f
10:               jal          ra, 18f
11:               jal          ra, 5b
12:               jal          t1, 17f
13:               jal          ra, 14f
14:               jal          t4, 9b
15:               jal          s2, 26f
16:               jal          ra, 13b
17:               jal          t1, 8b
18:               jal          t0, 1b
19:               jal          ra, 27f
20:               jal          t4, 6b
21:               jal          t1, 7b
22:               jal          ra, 11b
23:               jal          ra, 2b
24:               jal          gp, 10b
25:               jal          t1, 4b
26:               jal          ra, 21b
27:               srai         gp, s1, 12
sub_4_1:          jal          t1, 7f
0:                jal          t1, 11f
1:                jal          ra, 20f
2:                jal          s0, 12f
3:                jal          s3, 8f
4:                jal          ra, 0b
5:                jal          ra, 21f
6:                jal          t5, 16f
7:                jal          s6, 19f
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          s1, 6b
11:               jal          s5, 2b
12:               jal          ra, 1b
13:               jal          t6, 5b
14:               jal          t1, 13b
15:               jal          t1, 9b
16:               jal          ra, 18f
17:               jal          ra, 3b
18:               jal          t1, 15b
19:               jal          s1, 17b
20:               jal          ra, 14b
21:               add          t4, t0, s4
sub_4_12:         jal          t1, 11f
0:                jal          ra, 9f
1:                jal          t5, 3f
2:                jal          t1, 17f
3:                jal          t1, 6f
4:                jal          ra, 8f
5:                jal          ra, 14f
6:                jal          ra, 10f
7:                jal          ra, 12f
8:                jal          ra, 7b
9:                jal          ra, 13f
10:               jal          ra, 2b
11:               jal          ra, 5b
12:               jal          t0, 0b
13:               jal          a7, 15f
14:               jal          ra, 16f
15:               jal          t1, 1b
16:               jal          ra, 4b
17:               ori          s4, a5, -124
                  auipc        s11, 69997
                  ori          s6, gp, -548
                  bne          s6, s1, 11f
                  srai         a1, s1, 17
                  add          s3, gp, s10
                  bne          s4, s8, 6f
6:                bne          a4, tp, 23f
                  xor          tp, t2, t1
                  bne          s7, s8, 10f
                  srai         t3, s2, 24
10:               and          a7, a0, t0
11:               srai         t3, a5, 24
                  srli         s6, zero, 5
                  bltu         gp, s6, 17f
                  sltiu        t2, t0, 1198
                  nop
                  bne          zero, s10, 22f
17:               sltu         s9, s11, s10
                  xori         s11, tp, 633
                  sra          a4, a0, s7
                  nop
                  beq          s5, zero, 29f
22:               sra          t0, gp, s6
23:               beq          ra, a0, 32f
                  srli         t2, t4, 26
                  add          a3, a4, s7
                  sra          t6, zero, gp
                  slli         s9, ra, 5
                  slt          s5, tp, s2
29:               srai         sp, t5, 0
                  bltu         a2, s5, 41f
                  slt          s2, a5, s9
32:               srli         s0, a6, 21
                  bgeu         s6, ra, 39f
                  bgeu         s1, s9, 54f
                  sub          a6, t2, t2
                  add          sp, s1, s5
                  blt          tp, a4, 44f
                  sll          s2, gp, zero
39:               or           a7, s0, t0
                  sra          sp, a1, t1
41:               and          s1, a5, a7
                  nop
                  slli         s6, s11, 13
44:               sltiu        s1, a3, 1799
                  sra          s3, sp, s1
                  auipc        s11, 1009475
                  bltu         ra, s10, 59f
                  srl          s10, s1, gp
                  addi         a4, a0, -751
                  sub          a0, s9, sp
                  add          tp, t4, s0
                  or           s1, a7, a2
                  or           s6, a2, a5
54:               addi         s1, tp, 311
                  and          s9, t6, t3
                  xor          t6, a2, t2
                  add          ra, a3, s0
                  lui          s6, 129732
59:               add          a7, t2, s8
                  addi         a1, a4, -1612
                  xori         t3, a3, 2021
                  slti         a0, a0, 1642
                  xor          a1, t2, t5
                  blt          t1, a6, 66f
                  xori         s6, t3, 272
66:               bltu         a2, s8, 83f
                  andi         t5, zero, 706
                  xor          tp, s10, s1
                  srl          s5, s10, s9
                  slt          s3, t5, s3
                  xor          t2, t3, s7
                  xor          a0, ra, a1
                  add          s1, a7, s2
                  xori         t1, a6, -1277
                  bge          s8, s3, 87f
                  andi         a4, t3, -1397
                  ori          a0, s7, 359
                  sra          ra, gp, zero
                  xori         s0, s7, -1191
                  slt          t0, s9, ra
                  bgeu         s11, tp, 93f
                  blt          a6, s8, 93f
83:               lui          t6, 500221
                  bltu         s6, t2, 102f
                  auipc        s2, 337513
                  andi         t3, a4, -1260
87:               xori         t3, gp, 812
                  srai         t2, s10, 3
                  or           t5, s2, s1
                  sll          s9, zero, a7
                  and          t6, s2, s8
                  slti         s11, s1, 13
93:               ori          s10, gp, -1017
                  beq          t3, s1, 105f
                  xori         t0, t6, 1868
                  add          s5, t1, a1
                  lui          s11, 1026816
                  srai         s5, a0, 26
                  slt          t3, gp, ra
                  srl          t5, zero, s11
                  addi         t4, s3, 280
102:              sltu         s5, ra, s3
                  or           s9, gp, gp
                  beq          a3, a7, 111f
105:              sra          s5, t5, a6
                  nop
                  slli         t4, tp, 23
                  xori         sp, a1, 375
                  sra          a4, s11, zero
                  slt          s0, s8, t6
111:              srli         s2, t6, 10
                  or           s0, a4, s3
                  xori         t1, zero, -1424
                  bge          s8, a4, 118f
                  sltu         s1, a4, s10
                  srli         s3, t2, 13
                  beq          a2, t2, 124f
118:              slti         s10, t6, -1890
                  bgeu         s11, sp, 122f
                  add          t3, a1, sp
                  sltiu        sp, s11, 1000
122:              or           s1, t4, s10
                  bltu         a2, gp, 137f
124:              sll          s3, s0, a0
                  add          zero, s10, a6
                  sltu         s0, tp, a1
                  nop
                  slt          t6, t3, s8
                  bne          a4, a0, 137f
                  srl          t2, t1, a6
                  xor          t3, s6, s2
                  slli         s5, s10, 25
                  bgeu         t1, s11, 150f
                  or           s6, s9, t4
                  add          s6, ra, a0
                  sub          tp, s3, zero
137:              bgeu         s3, a1, 145f
                  xor          s1, t2, t5
                  sll          s2, t2, zero
                  xori         t5, ra, 925
                  slt          s9, a3, a6
                  and          s5, a5, gp
                  bgeu         a7, t5, 160f
                  slli         zero, ra, 11
145:              xor          s4, a1, t5
                  add          gp, t1, a2
                  bgeu         ra, s6, 163f
                  andi         t5, t3, 1135
                  andi         s4, t4, 1644
150:              auipc        s10, 585321
                  xori         a6, tp, 463
                  slt          s3, a3, s2
                  sra          s0, t4, ra
                  xor          a1, s2, a0
                  bne          a2, t1, 167f
                  ori          s3, t3, -438
                  blt          t3, gp, 169f
                  blt          s8, a3, 175f
                  sltu         ra, a0, s4
160:              auipc        zero, 1014391
                  sra          a5, s0, s11
                  bgeu         sp, sp, 170f
163:              xor          t0, ra, gp
                  nop
                  slli         tp, t1, 3
                  slli         s0, a5, 23
167:              and          s5, s8, s7
                  slli         a0, a7, 4
169:              sll          a7, a5, t6
170:              andi         s2, gp, 398
                  bltu         a0, a7, 173f
                  sll          a3, t4, a0
173:              slt          t2, s1, a0
                  addi         s0, s6, -15
175:              nop
                  sltiu        zero, s3, 345
                  srai         t5, t3, 6
                  sltu         zero, s11, a2
                  srl          t5, s4, t5
                  or           tp, ra, a4
                  or           s0, t0, s6
                  addi         t4, t4, -391
                  srli         gp, s1, 0
                  auipc        t3, 279714
                  sub          a0, s9, s1
                  add          a4, t2, s6
                  beq          t0, s11, 190f
                  addi         s5, t0, 1167
                  sub          gp, s9, s0
190:              sll          a4, s11, ra
                  beq          t2, tp, 193f
                  slli         ra, s4, 15
193:              blt          s7, a3, 202f
                  srl          gp, s5, s5
                  bge          ra, s2, 203f
                  nop
                  xor          s2, zero, s6
                  sltu         a1, a0, s10
                  add          t0, t5, a5
                  bgeu         a2, s9, 204f
                  slli         s6, sp, 27
202:              or           a4, a7, a3
203:              blt          s9, a4, 209f
204:              addi         s3, a1, -810
                  lui          a1, 349588
                  slli         s11, gp, 15
                  xori         a3, t6, 38
                  srli         ra, s3, 9
209:              xori         s10, t3, -1110
                  bgeu         t4, zero, 217f
                  bne          t6, a3, 228f
                  xori         gp, gp, 943
                  slt          a5, s9, sp
                  ori          t1, s3, 1458
                  bge          a6, t1, 233f
                  slli         t2, tp, 25
217:              sltu         s2, gp, t6
                  bltu         tp, a2, 226f
                  andi         s1, s7, -1334
                  blt          a4, a5, 232f
                  slt          t4, t3, s7
                  xori         s11, zero, -325
                  bgeu         zero, a5, 229f
                  sll          s9, a1, a1
                  addi         t3, s2, -777
226:              sub          a7, ra, s2
                  slli         s0, t2, 28
228:              bgeu         s2, t4, 245f
229:              bge          sp, s11, 236f
                  bne          s2, t6, 241f
                  srl          s11, zero, t6
232:              srl          zero, s10, t0
233:              bne          gp, s0, 242f
                  sub          s10, ra, s8
                  slt          s4, ra, a2
236:              and          s5, s3, t1
                  add          a4, a0, s6
                  bge          a4, a5, 254f
                  bgeu         s4, s6, 246f
                  sltu         ra, s5, s2
241:              xori         s1, s9, -1404
242:              bge          a5, a1, 243f
243:              beq          s3, s1, 263f
                  add          t4, tp, a3
245:              bne          s5, sp, 259f
246:              addi         s1, t4, 83
                  srl          t5, a3, t1
                  sub          zero, t2, s2
                  blt          s3, tp, 253f
                  bne          s1, t4, 267f
                  xor          a7, s5, t6
                  ori          a4, s5, -311
253:              add          s5, t0, t2
254:              sltu         a6, a4, a6
                  auipc        s6, 101392
                  slli         s1, a1, 17
                  xor          t0, s4, ra
                  slli         t6, sp, 25
259:              srli         s11, a6, 27
                  slt          t4, s2, a2
                  sra          gp, a0, a4
                  bgeu         a2, s1, 273f
263:              srl          s3, t5, s8
                  or           a6, zero, a0
                  bge          sp, sp, 276f
                  andi         a0, s3, 1024
267:              addi         a1, t2, -517
                  bgeu         a1, a3, 279f
                  srl          t3, t6, ra
                  sub          a3, s8, s8
                  sltiu        t6, s8, -571
                  bne          s7, t5, 281f
273:              srl          zero, a6, a5
                  xori         ra, t6, -910
                  srli         a5, a3, 15
276:              xor          s1, tp, a7
                  xori         a6, t4, 1178
                  bgeu         a6, a5, 298f
279:              nop
                  srli         tp, s6, 3
281:              add          t5, s10, ra
                  srl          ra, t5, gp
                  sll          a4, t5, sp
                  srai         s0, sp, 29
                  sltu         s2, s5, s9
                  and          t4, s2, s7
                  sub          t6, s4, t5
                  sltiu        s2, s11, -1690
                  bge          t6, s0, 301f
                  bne          s5, s5, 292f
                  sltu         t4, a5, s9
292:              slti         a5, s11, 797
                  add          a1, s10, s4
                  beq          s6, a0, 302f
                  srai         t0, zero, 1
                  auipc        a5, 405772
                  sltiu        t0, s7, -336
298:              nop
                  sra          a7, s1, a2
                  bltu         zero, s9, 307f
301:              bltu         a0, ra, 305f
302:              slt          s4, s4, t6
                  sltiu        t0, t4, -1038
                  sltiu        a6, s9, -1349
305:              sub          a4, s7, s10
                  beq          a7, a3, 313f
307:              auipc        s5, 124513
                  beq          s5, tp, 315f
                  slt          t6, a6, t1
                  beq          s0, gp, 316f
                  bgeu         a4, s0, 322f
                  bgeu         t4, a3, 323f
313:              blt          s3, t4, 330f
                  xori         t3, a4, -1053
315:              xor          t4, s6, s8
316:              sltu         a5, s1, s4
                  slti         s9, s8, 839
                  and          a3, s6, s9
                  blt          ra, zero, 337f
                  or           s1, t5, t6
                  and          s3, t2, zero
322:              and          a5, s2, a7
323:              ori          s10, t1, 1628
                  sltu         a1, s10, ra
                  bgeu         a7, s0, 341f
                  andi         a6, a1, -467
                  sra          s4, s11, t5
                  xori         t0, s7, -1239
                  bge          tp, s6, 346f
330:              bge          s8, s0, 347f
                  slti         a3, tp, 101
                  beq          s6, s3, 333f
333:              bltu         a0, s1, 339f
                  bge          a3, t6, 348f
                  beq          a6, s9, 343f
                  blt          s8, gp, 340f
337:              ori          s9, t6, -1868
                  or           a5, s10, a5
339:              and          gp, t0, s10
340:              lui          s0, 137771
341:              srai         ra, s7, 3
                  xori         t0, a4, -1198
343:              add          t3, s7, a3
                  slti         s4, gp, 1955
                  sltu         s10, a2, s2
346:              sltiu        t0, tp, -1476
347:              addi         a0, gp, -2022
348:              add          s11, zero, s4
                  or           s5, s11, a6
                  beq          gp, t4, 352f
                  xori         s2, a7, 1934
352:              blt          s1, t2, 364f
                  bne          s9, a0, 361f
                  sra          a4, t4, tp
                  bltu         t5, zero, 358f
                  bne          t0, t2, 368f
                  bne          a7, a7, 374f
358:              ori          t5, a7, 2038
                  nop
                  and          t1, a1, s5
361:              xori         t6, a3, 345
                  blt          a7, t0, 371f
                  sltiu        a4, t6, -1364
364:              bne          sp, a7, 368f
                  bltu         s3, sp, 371f
                  ori          ra, sp, 1994
                  blt          t3, a7, 387f
368:              bgeu         zero, s8, 380f
                  slti         ra, a6, 1263
                  xori         s9, s6, -1707
371:              sltu         a0, ra, t0
                  bne          s2, s0, 381f
                  sub          a0, s5, s6
374:              or           a4, t2, s1
                  sra          t1, ra, a1
                  add          a5, s1, s10
                  andi         t0, a3, 623
                  bltu         s10, t0, 385f
                  slti         a3, s9, 382
380:              slt          a3, s0, t6
381:              auipc        t4, 845664
                  bne          a2, a4, 393f
                  beq          t2, t3, 385f
                  nop
385:              and          ra, zero, gp
                  xori         t3, a3, 87
387:              xor          gp, t2, ra
                  nop
                  andi         s4, s11, 565
                  add          a7, zero, s7
                  sll          t4, t2, s5
                  blt          a2, a1, 399f
393:              add          a5, t6, s10
                  nop
                  auipc        t1, 642301
                  sra          gp, s4, gp
                  sltiu        t6, t0, -16
                  bge          t2, ra, 415f
399:              bgeu         t4, t2, 408f
                  blt          t0, tp, 417f
                  sra          a6, s9, sp
                  xor          s1, t4, a5
                  sra          t1, s0, a4
                  and          a0, s6, tp
                  slti         s4, t6, -1482
                  xor          t4, a4, t4
                  nop
408:              addi         a5, t5, 1564
                  srli         zero, s4, 31
                  lui          s9, 94545
                  addi         s6, a0, 67
                  ori          a4, s3, -708
                  sltu         tp, a5, s3
                  sltiu        s3, t2, 1442
415:              sltiu        s3, gp, -1416
                  srli         a5, a6, 26
417:              add          ra, s9, gp
                  xor          a1, s11, s11
                  blt          sp, t3, 433f
                  sra          a3, t3, s0
                  andi         t1, t5, 443
                  xor          zero, t1, s10
                  and          a7, sp, tp
                  bltu         s3, s0, 436f
                  bge          t0, t2, 442f
                  or           t2, s9, t5
                  addi         t4, t1, 1286
                  sub          gp, a2, a4
                  slti         t0, t1, 849
                  bne          s3, s10, 432f
                  srl          t1, zero, s11
432:              bne          a4, t5, 436f
433:              slli         s9, zero, 16
                  sra          s9, t1, a5
                  beq          s3, t6, 447f
436:              sra          a4, a1, tp
                  and          s6, a5, s0
                  beq          a1, a2, 446f
                  sub          t3, s8, s11
                  bltu         a4, tp, 456f
                  sltiu        s10, t6, 1705
442:              and          s5, ra, a3
                  lui          s10, 585278
                  bge          s1, a1, 450f
                  beq          s4, s5, 456f
446:              srai         tp, zero, 27
447:              andi         s3, a3, 1191
                  bgeu         s10, s2, 449f
449:              blt          s8, t2, 457f
450:              add          s5, s3, gp
                  xori         ra, s9, -1696
                  ori          s1, s6, -846
                  blt          zero, t5, 464f
                  ori          s0, s10, 445
                  add          s6, a6, s3
456:              sra          tp, s4, s3
457:              srai         gp, tp, 19
                  xor          a0, sp, a4
                  andi         a7, a5, -1933
                  bge          t5, a0, 478f
                  bgeu         s6, zero, 478f
                  ori          a4, s3, 995
                  or           t5, t3, s8
464:              nop
                  beq          zero, t1, 473f
                  ori          s5, a0, -69
                  blt          t3, s1, 474f
                  sub          sp, s2, t5
                  xori         t4, t0, -1657
                  xori         a6, a0, -163
                  sra          s10, s2, tp
                  slli         ra, s2, 24
473:              slli         s6, ra, 18
474:              xor          s3, s5, sp
                  xori         s10, sp, -399
                  sub          s1, s8, t5
                  srai         t0, ra, 21
sub_4_7:          jal          t1, 1f
0:                jal          ra, 12f
1:                jal          ra, 5f
2:                jal          ra, 14f
3:                jal          ra, 7f
4:                jal          a0, 11f
5:                jal          ra, 9f
6:                jal          a6, 13f
7:                jal          ra, 15f
8:                jal          ra, 0b
9:                jal          s4, 4b
10:               jal          ra, 3b
11:               jal          t1, 2b
12:               jal          ra, 6b
13:               jal          ra, 10b
14:               jal          s2, 8b
15:               srai         a4, a4, 8
478:              and          a6, ra, a0
                  lui          tp, 483894
                  xor          s4, s4, s9
                  slli         s0, a7, 21
                  or           t3, a2, a0
                  bne          zero, t4, 486f
                  bge          a5, s5, 490f
                  blt          t1, s10, 489f
486:              bltu         zero, a4, 497f
                  sltiu        a1, ra, 113
                  slli         t0, s11, 16
489:              bgeu         s2, t1, 506f
490:              add          a4, s0, t1
                  sra          s2, a4, t3
                  xor          gp, s5, a4
                  slt          t5, s2, t6
                  andi         s4, a3, -1486
                  and          s3, s9, s11
                  lui          t4, 167305
497:              slli         gp, a7, 8
                  slli         s5, t5, 10
                  nop
                  srl          zero, s3, a6
                  srl          a6, s7, a3
                  auipc        sp, 535051
                  srli         a7, t1, 17
                  add          tp, t4, s1
                  blt          t1, s10, 507f
506:              slt          a5, t5, a7
507:              addi         s5, s10, -1721
                  xor          s9, a2, t1
                  slti         ra, t0, 115
                  sll          a3, s6, ra
                  bge          a3, t2, 514f
                  slli         s5, zero, 14
                  sll          a6, tp, t1
514:              sltiu        s0, s9, 1635
                  add          s10, s10, t0
                  beq          s0, a1, 525f
                  blt          t3, sp, 526f
                  xori         t1, ra, 451
                  sll          tp, t5, t3
                  ori          t2, s3, -1376
                  sltu         s5, a1, a1
                  blt          a2, t4, 534f
                  bgeu         a1, a3, 525f
                  bltu         t5, s2, 540f
525:              bgeu         sp, a6, 533f
526:              slli         s1, s3, 26
                  andi         s0, s2, 748
                  auipc        sp, 1033228
                  sub          s1, a7, s1
                  srl          t6, s1, s10
                  bge          a6, tp, 535f
                  add          s4, s0, t6
533:              srl          s5, s5, a1
534:              bgeu         a7, s5, 551f
535:              sltu         zero, t2, s0
                  sra          a6, s4, s3
                  bgeu         t5, s5, 557f
                  lui          t6, 394885
                  nop
540:              andi         t1, a2, -1962
                  srli         t3, a6, 12
                  nop
                  bge          t4, a6, 551f
                  srli         a4, t2, 26
                  blt          s10, a6, 553f
                  sll          a5, s0, s7
                  srl          s5, s6, a5
                  andi         t5, t5, -1590
                  slli         a6, s5, 18
                  srai         a6, s5, 16
551:              sltu         s0, s4, a6
                  nop
553:              andi         t1, a6, 1717
                  lui          ra, 417146
                  bgeu         zero, s3, 566f
                  slti         a7, tp, 453
557:              sra          a7, s5, t0
                  lui          s5, 807354
                  bgeu         a0, s9, 577f
                  and          s6, gp, s1
                  sra          s11, s5, s3
                  andi         a5, s9, -185
                  lui          zero, 823914
                  srai         t5, t3, 20
                  andi         s4, s3, -136
566:              add          s5, s10, t3
                  nop
                  ori          a3, a6, 1722
                  addi         zero, s7, -1707
                  sltu         gp, t4, s1
                  blt          a2, a6, 588f
                  srai         s6, tp, 6
                  bge          s3, a2, 587f
                  addi         s9, gp, 1201
                  beq          t5, a1, 587f
                  slti         a1, s6, 1246
577:              addi         a3, s9, -234
                  add          s5, s7, s11
                  and          gp, a1, s7
                  srli         s4, a0, 25
                  sll          a1, a6, s4
                  sltiu        t1, s4, 842
                  add          s6, s9, s5
                  lui          s2, 499770
                  add          s10, a2, s0
                  bltu         s2, a4, 587f
587:              slt          zero, s5, s8
588:              andi         a3, s3, -1588
                  srli         s3, ra, 12
                  lui          s2, 352786
                  ori          s10, t6, 1079
                  bgeu         zero, s2, 599f
                  bltu         a4, a0, 600f
                  srli         s6, s9, 21
                  and          a3, s5, t4
                  xor          a1, s5, t0
                  bge          ra, tp, 604f
                  blt          s9, a1, 610f
599:              lui          a5, 760822
600:              slt          tp, s4, t3
                  slt          s10, s4, s8
                  sra          zero, s5, gp
                  srai         s2, t6, 27
604:              srl          t3, t4, a3
                  bne          s8, s6, 622f
                  addi         a6, tp, 144
                  bltu         s9, s0, 618f
                  slt          zero, s1, ra
                  bgeu         s10, t0, 615f
610:              sltiu        s0, a2, 1304
                  srl          s5, a2, s7
                  sra          s2, t2, s8
                  nop
                  slt          t1, s6, t6
615:              bge          s11, s7, 629f
                  bge          s1, zero, 634f
                  srli         t3, s1, 31
618:              ori          s9, s6, 82
                  sub          sp, s1, s6
                  or           s2, t4, sp
                  bgeu         t1, t5, 632f
622:              sll          s5, s10, s11
                  xori         t4, t1, 1658
                  slli         a3, gp, 22
                  nop
                  or           t5, a4, s8
                  slt          t3, t1, s5
                  slli         s4, a3, 13
629:              srli         s11, tp, 6
                  blt          a2, s7, 634f
                  beq          s0, t2, 648f
632:              auipc        s9, 321930
                  ori          a6, s8, 649
634:              sub          t3, t2, s9
                  xori         t5, t0, -857
                  sltu         a0, s8, ra
                  andi         a3, a0, -529
                  sll          t5, gp, s6
                  ori          s5, t3, 554
                  sltu         a7, t3, t3
                  or           t2, t6, zero
                  sra          tp, sp, zero
                  or           t6, s4, zero
                  nop
                  srli         t6, t4, 3
                  andi         s9, a5, 263
                  xori         a5, a0, -29
648:              bgeu         s0, t2, 665f
                  andi         a5, tp, 1959
                  ori          s1, t5, -1082
                  add          t0, s8, t6
                  lui          zero, 989915
                  srli         a6, s8, 18
                  srai         s2, t3, 2
                  srl          t4, s4, tp
                  slti         a0, t3, 180
                  slti         t0, s8, 651
                  blt          s0, t1, 669f
                  auipc        s0, 435623
                  sll          ra, a5, t5
                  sltiu        s10, s11, 495
                  and          s10, s11, s6
                  bgeu         s6, a1, 670f
                  xor          a6, tp, t1
665:              slt          gp, s1, a0
                  bltu         zero, s6, 668f
                  slti         gp, t1, 317
668:              bge          s3, s4, 671f
669:              or           t5, t0, a2
670:              nop
671:              lui          t2, 735244
                  slli         t0, s2, 14
                  and          t2, s11, s11
                  and          s1, s4, t3
                  sll          s5, t6, a1
                  slt          gp, s6, gp
                  auipc        s5, 995988
                  sll          t0, a4, t6
                  srai         s6, s9, 10
                  blt          s7, t0, 692f
                  srli         s10, s8, 24
                  and          s5, a7, t0
                  auipc        t0, 331707
                  bne          s10, a3, 700f
                  slt          t3, s6, ra
                  sltiu        a3, s2, -1945
                  add          a5, s5, s10
                  slli         ra, sp, 26
                  bne          s9, s1, 709f
                  srli         t1, t6, 27
                  srai         t0, s10, 12
692:              bge          s1, a4, 709f
                  bgeu         t3, s6, 701f
                  sub          sp, s5, a0
                  slti         s11, t2, -976
                  xori         s2, t2, -2029
                  andi         t3, s11, 1599
                  sll          s4, a1, t5
                  sltiu        s5, a3, -1134
700:              xori         tp, a1, -627
701:              ori          a7, t3, -1191
                  bne          t0, a1, 710f
                  addi         ra, t0, -306
                  srl          ra, s3, t3
                  srai         t2, s4, 30
                  srl          a4, a3, a6
                  slti         a0, tp, 800
                  add          s10, a1, s4
709:              auipc        s9, 371162
710:              andi         s6, s9, 1334
                  srai         tp, t2, 15
                  addi         t4, a2, 1990
                  slti         s10, t6, 1753
                  bne          s7, s11, 720f
                  srli         s5, t2, 7
                  nop
                  ori          s9, s7, 2039
                  srl          t1, t1, s3
                  xori         a4, ra, -205
720:              xor          s11, s9, a1
                  auipc        s4, 214406
                  xori         sp, s5, 1416
                  slti         a0, a6, 929
                  sll          s5, s10, s7
                  xor          t0, a5, sp
                  bge          ra, s10, 730f
                  ori          s2, a2, 1697
                  bltu         tp, tp, 745f
                  nop
730:              bltu         t0, s3, 737f
                  addi         a3, a5, 968
                  lui          a1, 828816
                  sra          a1, tp, gp
                  sltu         s4, a2, s6
                  bne          s7, t5, 747f
                  nop
737:              sltiu        a6, t5, 2026
                  srl          a1, ra, zero
                  addi         s9, s3, 602
                  sltiu        zero, a2, 113
                  bne          t3, t4, 743f
                  xor          s11, a7, t2
743:              or           zero, s8, sp
                  sltiu        t3, a3, -1719
745:              auipc        tp, 445147
                  bgeu         s0, gp, 757f
747:              sra          t2, a3, s9
                  srli         s0, a0, 11
sub_4_11:         jal          t1, 20f
0:                jal          ra, 2f
1:                jal          s0, 4f
2:                jal          s4, 8f
3:                jal          s9, 15f
4:                jal          s11, 9f
5:                jal          a3, 11f
6:                jal          a3, 19f
7:                jal          gp, 28f
8:                jal          ra, 14f
9:                jal          s1, 24f
10:               jal          ra, 25f
11:               jal          ra, 26f
12:               jal          t1, 0b
13:               jal          ra, 10b
14:               jal          t1, 27f
15:               jal          tp, 12b
16:               jal          ra, 6b
17:               jal          ra, 16b
18:               jal          gp, 7b
19:               jal          ra, 1b
20:               jal          a5, 5b
21:               jal          ra, 18b
22:               jal          t3, 23f
23:               jal          sp, 3b
24:               jal          ra, 13b
25:               jal          ra, 21b
26:               jal          t1, 22b
27:               jal          t1, 17b
28:               slli         ra, a4, 12
                  xor          s6, t5, gp
                  sltu         s6, s10, s7
                  sra          sp, a1, s2
                  auipc        tp, 36447
                  nop
                  sltiu        t2, t6, -995
                  add          t6, t0, s4
                  addi         a3, s8, -294
757:              sltiu        a6, s11, 736
                  xor          zero, s4, gp
                  bltu         s9, t3, 768f
                  srl          s2, t5, s0
                  slti         t2, t6, 91
                  slli         s10, s7, 25
                  ori          a5, s9, -440
                  blt          s5, s8, 772f
                  srli         a1, zero, 13
                  nop
                  blt          a3, s3, 768f
768:              bgeu         sp, zero, 777f
                  xori         zero, s11, -369
                  ori          t0, zero, -751
                  slti         t5, s11, -2019
772:              slt          t2, a7, s11
                  addi         t6, s9, 10
                  auipc        s10, 750387
                  andi         t4, zero, -478
                  slt          t1, a4, zero
777:              lui          s10, 271261
                  auipc        s6, 445088
                  bge          t1, t3, 786f
                  xor          a4, t4, a0
                  blt          a3, s7, 787f
                  beq          s6, s3, 794f
                  sub          s2, s5, tp
                  beq          a0, a7, 791f
                  blt          t4, t1, 803f
786:              or           sp, a3, s10
787:              sra          a1, sp, s6
                  bgeu         a0, sp, 799f
                  sll          s9, t5, s7
                  and          zero, tp, s1
791:              bgeu         t4, s4, 807f
                  srli         s1, s9, 1
                  sltiu        t0, t6, 1534
794:              sltiu        t4, s10, 516
                  nop
                  slli         t5, a2, 16
                  add          s0, a2, a2
                  auipc        t6, 492978
799:              beq          sp, a0, 801f
                  ori          s4, a0, 1017
801:              slti         a6, t3, -1710
                  xori         s3, s6, -1766
803:              and          a3, ra, s2
                  bgeu         s5, s4, 824f
                  sra          a0, s8, a5
                  sra          tp, a7, s5
807:              sll          a6, t3, s2
                  add          sp, a6, s7
                  srli         s4, s0, 0
                  nop
                  sra          s3, s1, t0
                  slti         a3, t3, -1374
                  bltu         t4, s1, 822f
                  add          s9, t4, t6
                  lui          a5, 732373
                  sltu         a1, s10, t5
                  or           t4, a4, a2
                  lui          t5, 790486
                  slti         t3, t1, 1549
                  addi         t2, ra, 2039
                  srai         t5, gp, 24
822:              blt          s5, s4, 835f
                  sub          zero, s7, a2
824:              sll          s5, s9, a3
                  srai         s6, s8, 14
                  sra          gp, a5, t1
                  lui          t2, 1001087
                  slti         sp, sp, -659
                  andi         s1, zero, -894
                  ori          s1, a3, 1770
                  sltiu        s9, s1, -1496
                  slt          tp, s4, s3
                  beq          a3, s11, 835f
                  andi         s5, t3, -1194
835:              and          tp, a0, a3
                  xor          s1, a3, s5
                  srli         s6, t0, 20
                  auipc        sp, 217627
                  lw           t1, 4(s7)
                  addi         s7, s7, 64
                  andi         a6, zero, -592
                  add          sp, s5, t4
1223:             addi x13, x6, 1
1223:             jalr x13, x13, 0
sub_2:            bltu         s3, s9, sub_2_stack_p
                  srai         t4, s3, 2
sub_2_stack_p:    addi         s7, s7, -20
                  srli         a3, s11, 5
                  sw           t1, 4(s7)
                  xor          t3, a3, t2
                  srli         a5, a1, 27
                  and          t6, t0, t5
                  la           a4, sub_3
                  ori          s1, s3, -197
                  ori          t0, a7, -606
                  auipc        s5, 846913
                  sltiu        a5, s10, -516
                  addi         a4, a4, 144
                  bltu         t1, a1, sub_2_j3 #branch to jump instr
                  sltu         t6, s11, sp
                  nop
sub_2_j3:         jalr         t1, a4, -144 #jump sub_2 -> sub_3
                  add          a4, a2, s1
                  andi         a3, a2, -502
                  sltu         s10, s10, zero
                  bltu         gp, t5, 4f
4:                auipc        s3, 276607
                  add          a3, a6, t2
                  lui          t1, 1042409
                  srl          t4, s9, a1
                  slti         s2, a6, -871
                  addi         a5, s10, 2012
                  bne          a4, a1, 16f
                  slli         s5, s10, 7
                  sra          tp, t1, s10
                  lui          tp, 212026
                  sll          t5, a0, t5
                  srai         s1, ra, 31
16:               or           s1, a4, s4
                  lui          t1, 771660
                  sltu         t2, a3, t0
                  and          t3, t2, a1
                  or           sp, gp, t4
                  add          a0, t6, s0
                  slli         tp, t4, 28
                  bgeu         t2, s5, 34f
                  srai         s4, a4, 24
                  srli         t6, t5, 31
                  lui          s11, 625949
                  xor          a4, s11, s9
                  sub          tp, t4, gp
                  add          s10, s1, a7
                  xor          tp, t1, a5
                  bge          s11, t2, 34f
                  xor          s9, t6, t6
                  lui          a6, 749016
34:               sra          s10, a7, a6
                  lw           t1, 4(s7)
                  srli         s1, s8, 25
                  addi         s7, s7, 20
                  srli         s0, ra, 8
                  slti         s3, a2, 1505
58:               addi x3, x6, 1
58:               jalr x3, x3, 0
sub_3:            bge          sp, t6, sub_3_stack_p
                  lui          a0, 715948
                  sll          s11, tp, s10
                  slt          t2, s1, a3
sub_3_stack_p:    addi         s7, s7, -12
                  sw           t1, 4(s7)
                  srai         s9, s9, 12
                  xor          s4, t0, tp
                  andi         s9, t5, -2022
                  add          a6, t4, s2
sub_3_14:         jal          t1, 16f
0:                jal          t3, 12f
1:                jal          t1, 5f
2:                jal          ra, 18f
3:                jal          s4, 13f
4:                jal          ra, 14f
5:                jal          s9, 0b
6:                jal          ra, 4b
7:                jal          t1, 21f
8:                jal          t1, 9f
9:                jal          t0, 3b
10:               jal          s0, 8b
11:               jal          t1, 17f
12:               jal          s5, 11b
13:               jal          t1, 7b
14:               jal          t3, 15f
15:               jal          tp, 10b
16:               jal          sp, 2b
17:               jal          ra, 20f
18:               jal          ra, 19f
19:               jal          gp, 1b
20:               jal          t1, 6b
21:               and          tp, t4, a3
sub_3_22:         jal          t1, 12f
0:                jal          a0, 4f
1:                jal          s11, 9f
2:                jal          ra, 22f
3:                jal          ra, 5f
4:                jal          ra, 18f
5:                jal          ra, 23f
6:                jal          ra, 20f
7:                jal          a7, 19f
8:                jal          s10, 15f
9:                jal          t1, 3b
10:               jal          s11, 16f
11:               jal          ra, 14f
12:               jal          ra, 17f
13:               jal          ra, 7b
14:               jal          ra, 8b
15:               jal          t1, 26f
16:               jal          t1, 21f
17:               jal          s5, 13b
18:               jal          ra, 25f
19:               jal          t0, 2b
20:               jal          t1, 1b
21:               jal          t1, 6b
22:               jal          t1, 10b
23:               jal          t0, 0b
24:               jal          ra, 11b
25:               jal          ra, 24b
26:               sub          t4, s2, s11
sub_3_18:         jal          t1, 1f
0:                jal          ra, 4f
1:                jal          a3, 3f
2:                jal          ra, 6f
3:                jal          s11, 7f
4:                jal          ra, 5f
5:                jal          t1, 12f
6:                jal          a0, 10f
7:                jal          ra, 8f
8:                jal          ra, 11f
9:                jal          t5, 2b
10:               jal          ra, 0b
11:               jal          ra, 9b
12:               sub          s3, ra, t4
sub_3_15:         jal          t1, 1f
0:                jal          ra, 5f
1:                jal          ra, 3f
2:                jal          s4, 11f
3:                jal          ra, 17f
4:                jal          t1, 6f
5:                jal          t0, 2b
6:                jal          t1, 8f
7:                jal          ra, 12f
8:                jal          t1, 13f
9:                jal          ra, 19f
10:               jal          ra, 4b
11:               jal          s11, 10b
12:               jal          a1, 16f
13:               jal          ra, 15f
14:               jal          s9, 0b
15:               jal          a3, 18f
16:               jal          tp, 14b
17:               jal          ra, 7b
18:               jal          tp, 9b
19:               xor          ra, t6, s0
sub_3_1:          jal          t1, 9f
0:                jal          ra, 2f
1:                jal          ra, 18f
2:                jal          t0, 5f
3:                jal          ra, 4f
4:                jal          gp, 21f
5:                jal          ra, 10f
6:                jal          a1, 7f
7:                jal          ra, 8f
8:                jal          ra, 26f
9:                jal          ra, 20f
10:               jal          tp, 17f
11:               jal          ra, 23f
12:               jal          ra, 14f
13:               jal          t1, 6b
14:               jal          ra, 15f
15:               jal          ra, 27f
16:               jal          ra, 24f
17:               jal          ra, 12b
18:               jal          sp, 22f
19:               jal          tp, 11b
20:               jal          t1, 3b
21:               jal          t1, 25f
22:               jal          ra, 16b
23:               jal          ra, 1b
24:               jal          s1, 13b
25:               jal          t0, 19b
26:               jal          t1, 0b
27:               and          t0, a5, a6
sub_3_6:          jal          t1, 25f
0:                jal          s0, 18f
1:                jal          ra, 29f
2:                jal          ra, 7f
3:                jal          ra, 28f
4:                jal          t2, 0b
5:                jal          ra, 11f
6:                jal          t1, 5b
7:                jal          t0, 4b
8:                jal          ra, 10f
9:                jal          t1, 20f
10:               jal          ra, 24f
11:               jal          t4, 12f
12:               jal          s4, 22f
13:               jal          ra, 30f
14:               jal          ra, 3b
15:               jal          s1, 14b
16:               jal          t1, 19f
17:               jal          ra, 15b
18:               jal          a6, 23f
19:               jal          t5, 17b
20:               jal          s10, 8b
21:               jal          ra, 9b
22:               jal          ra, 26f
23:               jal          ra, 1b
24:               jal          ra, 16b
25:               jal          ra, 21b
26:               jal          ra, 2b
27:               jal          t4, 6b
28:               jal          ra, 27b
29:               jal          t0, 13b
30:               auipc        a4, 644668
sub_3_9:          jal          t1, 15f
0:                jal          s6, 1f
1:                jal          ra, 7f
2:                jal          t1, 17f
3:                jal          t1, 6f
4:                jal          gp, 10f
5:                jal          t1, 11f
6:                jal          ra, 16f
7:                jal          ra, 20f
8:                jal          t1, 13f
9:                jal          ra, 2b
10:               jal          ra, 19f
11:               jal          tp, 9b
12:               jal          s3, 0b
13:               jal          s3, 14f
14:               jal          ra, 12b
15:               jal          t1, 3b
16:               jal          ra, 18f
17:               jal          ra, 8b
18:               jal          a4, 4b
19:               jal          ra, 5b
20:               andi         t4, gp, -1599
sub_3_24:         jal          t1, 7f
0:                jal          ra, 4f
1:                jal          s1, 9f
2:                jal          ra, 11f
3:                jal          ra, 12f
4:                jal          tp, 2b
5:                jal          ra, 0b
6:                jal          tp, 15f
7:                jal          sp, 8f
8:                jal          t1, 3b
9:                jal          s4, 6b
10:               jal          t1, 14f
11:               jal          tp, 13f
12:               jal          ra, 5b
13:               jal          ra, 10b
14:               jal          ra, 1b
15:               sltiu        t0, s0, 714
sub_3_19:         jal          t1, 1f
0:                jal          ra, 7f
1:                jal          s10, 15f
2:                jal          ra, 8f
3:                jal          t6, 13f
4:                jal          t1, 11f
5:                jal          t1, 10f
6:                jal          ra, 14f
7:                jal          a4, 16f
8:                jal          a4, 6b
9:                jal          ra, 0b
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          ra, 4b
13:               jal          ra, 18f
14:               jal          ra, 17f
15:               jal          ra, 9b
16:               jal          ra, 2b
17:               jal          t1, 12b
18:               xor          s3, sp, s9
sub_3_2:          jal          t1, 7f
0:                jal          ra, 11f
1:                jal          a0, 10f
2:                jal          s9, 8f
3:                jal          a3, 0b
4:                jal          a7, 23f
5:                jal          s3, 20f
6:                jal          s9, 5b
7:                jal          ra, 1b
8:                jal          t1, 16f
9:                jal          t1, 13f
10:               jal          ra, 12f
11:               jal          a5, 21f
12:               jal          ra, 6b
13:               jal          ra, 4b
14:               jal          a0, 2b
15:               jal          ra, 25f
16:               jal          s1, 22f
17:               jal          ra, 19f
18:               jal          sp, 14b
19:               jal          t5, 15b
20:               jal          t1, 9b
21:               jal          ra, 18b
22:               jal          s10, 24f
23:               jal          ra, 3b
24:               jal          ra, 17b
25:               jal          tp, 26f
26:               sra          s11, a7, tp
sub_3_13:         jal          t1, 13f
0:                jal          ra, 9f
1:                jal          ra, 12f
2:                jal          ra, 0b
3:                jal          t1, 14f
4:                jal          a0, 1b
5:                jal          ra, 4b
6:                jal          sp, 10f
7:                jal          t1, 3b
8:                jal          ra, 5b
9:                jal          ra, 15f
10:               jal          t1, 18f
11:               jal          ra, 17f
12:               jal          ra, 2b
13:               jal          t1, 7b
14:               jal          t0, 8b
15:               jal          ra, 11b
16:               jal          ra, 19f
17:               jal          a6, 6b
18:               jal          ra, 16b
19:               srai         s10, a7, 21
sub_3_4:          jal          t1, 9f
0:                jal          t1, 17f
1:                jal          ra, 14f
2:                jal          ra, 10f
3:                jal          t1, 2b
4:                jal          t1, 15f
5:                jal          t4, 22f
6:                jal          t1, 7f
7:                jal          t0, 13f
8:                jal          t1, 12f
9:                jal          a5, 23f
10:               jal          ra, 11f
11:               jal          s11, 5b
12:               jal          ra, 0b
13:               jal          a5, 19f
14:               jal          s0, 16f
15:               jal          gp, 3b
16:               jal          t3, 24f
17:               jal          ra, 25f
18:               jal          t1, 20f
19:               jal          a1, 1b
20:               jal          a4, 21f
21:               jal          ra, 26f
22:               jal          gp, 18b
23:               jal          ra, 8b
24:               jal          a3, 4b
25:               jal          t4, 6b
26:               slli         a4, gp, 1
sub_3_8:          jal          t1, 13f
0:                jal          s3, 8f
1:                jal          a3, 17f
2:                jal          ra, 4f
3:                jal          a3, 19f
4:                jal          t5, 12f
5:                jal          ra, 22f
6:                jal          ra, 1b
7:                jal          t3, 21f
8:                jal          s5, 16f
9:                jal          gp, 18f
10:               jal          ra, 26f
11:               jal          ra, 6b
12:               jal          sp, 3b
13:               jal          t1, 24f
14:               jal          tp, 10b
15:               jal          ra, 25f
16:               jal          t4, 14b
17:               jal          ra, 7b
18:               jal          ra, 5b
19:               jal          s11, 11b
20:               jal          sp, 23f
21:               jal          ra, 0b
22:               jal          t1, 15b
23:               jal          t1, 2b
24:               jal          t1, 9b
25:               jal          tp, 20b
26:               jal          ra, 27f
27:               and          s0, t2, a0
sub_3_16:         jal          t1, 16f
0:                jal          ra, 18f
1:                jal          a7, 10f
2:                jal          ra, 13f
3:                jal          a0, 11f
4:                jal          ra, 19f
5:                jal          ra, 12f
6:                jal          t1, 9f
7:                jal          t1, 5b
8:                jal          t1, 23f
9:                jal          s5, 21f
10:               jal          a4, 2b
11:               jal          ra, 14f
12:               jal          ra, 8b
13:               jal          s9, 0b
14:               jal          t1, 4b
15:               jal          a6, 1b
16:               jal          ra, 17f
17:               jal          ra, 20f
18:               jal          ra, 22f
19:               jal          gp, 7b
20:               jal          ra, 6b
21:               jal          t1, 15b
22:               jal          t1, 3b
23:               xori         t5, s1, -124
sub_3_21:         jal          t1, 11f
0:                jal          ra, 21f
1:                jal          s3, 14f
2:                jal          s9, 15f
3:                jal          t1, 20f
4:                jal          ra, 1b
5:                jal          t1, 17f
6:                jal          t1, 16f
7:                jal          t1, 8f
8:                jal          s3, 2b
9:                jal          t0, 4b
10:               jal          ra, 9b
11:               jal          ra, 12f
12:               jal          t1, 22f
13:               jal          t1, 3b
14:               jal          t3, 23f
15:               jal          ra, 18f
16:               jal          sp, 7b
17:               jal          ra, 13b
18:               jal          s5, 19f
19:               jal          ra, 24f
20:               jal          ra, 0b
21:               jal          gp, 10b
22:               jal          a7, 5b
23:               jal          ra, 6b
24:               sltu         s4, s6, s2
sub_3_12:         jal          t1, 5f
0:                jal          ra, 9f
1:                jal          ra, 3f
2:                jal          ra, 13f
3:                jal          a1, 11f
4:                jal          gp, 8f
5:                jal          s9, 7f
6:                jal          s3, 0b
7:                jal          t1, 10f
8:                jal          ra, 6b
9:                jal          a3, 1b
10:               jal          ra, 4b
11:               jal          s3, 12f
12:               jal          t4, 2b
13:               sll          t4, s0, gp
sub_3_5:          jal          t1, 2f
0:                jal          s1, 18f
1:                jal          sp, 19f
2:                jal          t1, 10f
3:                jal          ra, 12f
4:                jal          ra, 9f
5:                jal          tp, 4b
6:                jal          t1, 5b
7:                jal          t1, 16f
8:                jal          t1, 13f
9:                jal          t6, 0b
10:               jal          t5, 11f
11:               jal          t0, 17f
12:               jal          ra, 7b
13:               jal          ra, 14f
14:               jal          ra, 6b
15:               jal          gp, 8b
16:               jal          ra, 15b
17:               jal          ra, 3b
18:               jal          ra, 1b
19:               andi         s5, s6, -2017
sub_3_0:          jal          t1, 29f
0:                jal          ra, 5f
1:                jal          a7, 30f
2:                jal          ra, 11f
3:                jal          ra, 0b
4:                jal          s3, 26f
5:                jal          sp, 4b
6:                jal          ra, 10f
7:                jal          s11, 15f
8:                jal          gp, 18f
9:                jal          t1, 24f
10:               jal          t5, 17f
11:               jal          ra, 22f
12:               jal          ra, 21f
13:               jal          t1, 27f
14:               jal          ra, 25f
15:               jal          ra, 3b
16:               jal          ra, 9b
17:               jal          t3, 19f
18:               jal          t1, 7b
19:               jal          ra, 8b
20:               jal          ra, 13b
21:               jal          ra, 6b
22:               jal          ra, 14b
23:               jal          ra, 28f
24:               jal          a1, 23b
25:               jal          ra, 12b
26:               jal          sp, 1b
27:               jal          gp, 16b
28:               jal          ra, 2b
29:               jal          a3, 20b
30:               or           a5, s4, s0
sub_3_23:         jal          t1, 14f
0:                jal          ra, 10f
1:                jal          ra, 2f
2:                jal          ra, 17f
3:                jal          ra, 6f
4:                jal          s6, 8f
5:                jal          ra, 0b
6:                jal          t1, 11f
7:                jal          ra, 18f
8:                jal          t1, 12f
9:                jal          a6, 1b
10:               jal          t1, 4b
11:               jal          ra, 16f
12:               jal          ra, 9b
13:               jal          ra, 5b
14:               jal          s4, 3b
15:               jal          ra, 13b
16:               jal          ra, 15b
17:               jal          ra, 7b
18:               sll          ra, t2, t2
sub_3_11:         jal          t1, 15f
0:                jal          s9, 16f
1:                jal          t5, 3f
2:                jal          ra, 8f
3:                jal          s3, 7f
4:                jal          ra, 2b
5:                jal          sp, 4b
6:                jal          sp, 10f
7:                jal          ra, 6b
8:                jal          t1, 12f
9:                jal          ra, 14f
10:               jal          ra, 18f
11:               jal          ra, 1b
12:               jal          ra, 0b
13:               jal          t1, 5b
14:               jal          t2, 13b
15:               jal          ra, 17f
16:               jal          ra, 11b
17:               jal          t1, 9b
18:               and          s1, s2, a5
                  srli         zero, ra, 27
                  bne          a0, a0, 18f
                  ori          s6, s6, 1736
                  lui          t6, 461661
                  beq          t6, s0, 14f
                  slti         a0, t5, 728
                  or           ra, t4, s2
                  bge          s4, s0, 27f
                  sltiu        a1, t0, -198
                  sltu         t3, tp, s3
                  beq          s0, a6, 22f
                  addi         s10, s0, -1744
                  srli         t2, a7, 13
                  bltu         ra, gp, 24f
14:               andi         s0, gp, -374
                  lui          t3, 530376
                  addi         a3, s6, 1186
                  auipc        s1, 384986
sub_3_20:         jal          t1, 14f
0:                jal          t1, 18f
1:                jal          ra, 13f
2:                jal          a4, 6f
3:                jal          tp, 12f
4:                jal          a7, 2b
5:                jal          ra, 17f
6:                jal          s3, 22f
7:                jal          gp, 0b
8:                jal          t1, 16f
9:                jal          ra, 20f
10:               jal          ra, 23f
11:               jal          ra, 8b
12:               jal          ra, 21f
13:               jal          a0, 9b
14:               jal          t1, 11b
15:               jal          ra, 5b
16:               jal          t1, 15b
17:               jal          ra, 19f
18:               jal          ra, 10b
19:               jal          ra, 1b
20:               jal          s9, 4b
21:               jal          t1, 7b
22:               jal          sp, 3b
23:               add          s0, t4, zero
18:               beq          a1, s5, 36f
                  beq          t3, s9, 29f
                  bgeu         a0, zero, 23f
                  bltu         a6, a6, 38f
22:               nop
23:               slt          sp, a7, t6
24:               or           s3, t5, a2
                  and          t5, s10, s10
                  andi         a3, t5, 1073
27:               andi         ra, s7, -1564
                  slli         s11, zero, 9
29:               ori          t0, tp, 944
                  sra          t0, s7, a4
                  bgeu         a3, t0, 37f
                  addi         s5, t6, -777
                  srli         a1, s9, 21
                  addi         a5, s6, 876
                  slt          a0, gp, t1
36:               nop
37:               sltu         a3, s8, zero
38:               bltu         t0, s5, 56f
                  sll          s5, s9, t5
                  bge          s1, a4, 43f
                  sltiu        s9, s5, -1495
                  nop
43:               blt          s6, t1, 55f
                  addi         t2, s4, 600
                  ori          a5, t6, 1007
                  blt          a4, a0, 63f
                  bne          t4, t1, 65f
                  srai         s10, t6, 1
                  srl          t2, s9, tp
                  sltu         s3, t6, s9
                  bltu         a1, t4, 56f
                  addi         tp, tp, 661
                  nop
                  nop
55:               beq          a2, s11, 63f
56:               bne          s2, a6, 76f
                  lui          t2, 28060
                  nop
                  nop
                  sltiu        a5, s0, 661
                  sra          t6, s5, tp
                  beq          s2, a6, 69f
63:               ori          t0, tp, 1536
                  slti         s3, a7, -394
65:               srai         a3, ra, 2
                  andi         a5, t5, -2033
                  bltu         t0, t3, 80f
                  blt          a4, t5, 79f
69:               sltiu        tp, a3, -1582
                  sltiu        a3, s4, 1392
                  or           a7, s10, s0
                  auipc        s2, 995515
                  srl          a7, a1, sp
                  and          s6, zero, t1
                  and          t5, t0, a0
76:               lui          a6, 560066
                  and          s9, sp, t0
                  sub          tp, t4, a0
79:               xori         s10, s8, -1071
80:               ori          s1, ra, -1557
                  auipc        s1, 151311
                  bne          t4, t4, 100f
                  addi         t3, s9, -1066
                  xori         s9, t4, -1365
                  andi         a7, s0, 1439
                  and          tp, s8, a1
                  srai         s0, s2, 14
                  bltu         s5, s11, 104f
                  lui          a0, 428471
                  sll          a1, s4, a7
                  and          t4, tp, s2
                  add          a5, t4, a5
                  xori         a6, t5, -204
                  srai         t6, a7, 14
                  sltu         zero, t2, s10
                  or           t4, ra, t1
                  bge          t3, s4, 114f
                  lui          s3, 175391
                  srli         s0, s6, 5
100:              bltu         a0, s6, 109f
                  slli         a4, a7, 5
                  slti         s1, a4, 726
                  auipc        s5, 817164
104:              bgeu         s0, t2, 105f
105:              sltiu        ra, t3, -640
                  or           s5, a6, t3
                  blt          s3, gp, 117f
                  slt          ra, t3, sp
109:              srli         a1, a7, 1
                  xor          s4, s3, sp
                  bge          s7, s4, 115f
                  ori          a5, s4, 1800
                  xori         ra, a5, -775
114:              sub          zero, s11, t6
115:              slt          t4, a0, t2
                  and          zero, s7, t5
117:              srli         s1, s1, 10
                  ori          s2, s7, 275
                  add          t1, s0, sp
                  andi         t4, s1, 657
                  add          a4, s6, s8
                  slti         s2, s9, -579
                  auipc        s4, 3008
                  bgeu         s8, a0, 128f
                  beq          t1, a5, 136f
                  add          a7, s11, t2
                  add          a0, t5, t0
128:              bge          t5, s7, 135f
                  slt          s5, a7, a3
                  add          zero, t6, t4
                  slli         s5, t2, 20
                  beq          a4, tp, 143f
                  addi         a3, t1, 1545
                  xori         s11, s7, 1143
135:              sltu         a6, s2, s3
136:              or           ra, ra, s11
                  blt          t6, t6, 155f
                  bge          a3, t2, 144f
                  bgeu         t0, a7, 142f
                  xori         s0, s5, -982
                  sra          t2, ra, t0
142:              andi         s11, t4, 716
143:              andi         s1, t3, -1171
144:              beq          a6, t1, 161f
                  blt          t2, ra, 163f
                  lui          s4, 28783
                  blt          a6, a4, 159f
                  and          s10, a2, t6
                  bgeu         tp, gp, 158f
                  add          s1, s0, s0
                  auipc        a5, 1026624
                  slti         gp, a2, 1239
                  or           a5, zero, t3
                  srl          s3, s11, s5
155:              slt          t3, a2, s11
                  xor          ra, s1, t4
                  xor          s9, s11, s0
158:              add          s6, s8, t1
159:              add          s5, s7, s9
                  blt          a3, a4, 163f
161:              bne          t5, t1, 174f
                  srl          s10, a5, s2
163:              slt          t3, a0, s3
                  slt          s0, tp, gp
                  bltu         t4, s9, 177f
                  blt          s3, a6, 183f
                  slti         sp, a5, 1716
                  slti         t5, s11, 1087
sub_3_17:         jal          t1, 2f
0:                jal          t1, 5f
1:                jal          t0, 6f
2:                jal          ra, 3f
3:                jal          a4, 13f
4:                jal          a3, 10f
5:                jal          ra, 11f
6:                jal          t1, 4b
7:                jal          ra, 8f
8:                jal          ra, 15f
9:                jal          ra, 7b
10:               jal          t1, 0b
11:               jal          t1, 14f
12:               jal          sp, 1b
13:               jal          ra, 12b
14:               jal          ra, 9b
15:               slt          s11, s7, t3
                  sltu         s3, ra, a2
                  xori         s3, s10, 549
                  bge          t6, zero, 172f
172:              add          gp, t1, a2
                  srli         a5, a4, 20
174:              or           s6, t2, sp
                  bne          a2, zero, 192f
                  xor          a7, a6, s3
177:              addi         s2, a6, -1987
                  or           t1, a0, s2
                  sltu         t2, a7, s4
                  addi         a0, a3, 500
                  xor          zero, s4, s5
                  ori          t2, s10, 722
183:              and          s11, s6, a7
                  slt          t5, t1, s9
                  beq          t4, t5, 202f
                  add          t1, t2, a4
                  bge          t0, t4, 195f
                  bltu         t0, t2, 198f
                  xori         t2, t0, -1657
                  bgeu         s7, t2, 200f
                  bltu         t4, a5, 202f
192:              xori         t6, tp, 1698
                  sra          gp, ra, s2
                  sub          s5, s5, t6
195:              or           gp, s8, tp
                  xor          a3, s1, s11
                  sltiu        t5, zero, -263
198:              bne          s11, t2, 208f
                  sltu         t1, t6, a5
200:              sltu         tp, zero, s6
                  slt          s4, s3, zero
202:              add          s6, s10, ra
                  srli         s11, t3, 12
                  or           a7, s1, t3
                  beq          a0, tp, 223f
                  auipc        s0, 142432
                  sll          s9, s7, t3
208:              auipc        tp, 999952
                  add          s4, t2, s6
                  auipc        s0, 402632
                  nop
                  nop
                  andi         t5, t1, -1198
                  nop
                  blt          sp, a5, 231f
                  sltu         sp, s11, s4
                  nop
                  sltu         gp, t1, t3
                  sltiu        s6, t3, 1692
                  auipc        s9, 747642
                  srai         tp, s9, 2
                  sll          s2, s8, t6
223:              blt          s1, s4, 227f
                  srli         s0, s5, 18
                  slti         a7, a1, -572
                  add          zero, t6, a6
227:              slti         tp, a2, -632
                  add          t2, zero, s8
                  srl          s6, a4, a4
                  srli         s3, a0, 23
231:              add          s0, a3, s10
                  bne          s5, s5, 243f
                  sra          t5, a1, a1
                  sltu         s11, t4, s5
                  or           s10, s0, t6
                  srli         a0, t3, 6
                  srai         t2, s1, 24
                  bgeu         s8, s2, 242f
                  addi         a4, a5, 206
                  bgeu         t6, t0, 260f
                  slti         a1, s11, 1543
242:              andi         a0, t5, -811
243:              sra          s9, a4, a3
                  lui          t6, 293600
                  nop
                  andi         s10, s9, -842
                  and          tp, ra, s11
                  add          a3, a0, t4
                  sll          t6, a2, ra
                  sltiu        t3, s8, -1246
                  andi         a4, s6, 341
                  or           a5, s8, tp
                  slt          a6, sp, t1
sub_3_j4:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  slti         s9, a7, -1973
                  andi         s5, t3, -289
                  beq          s11, a3, 267f
                  ori          tp, t2, -1665
                  sltiu        gp, s8, 301
                  or           s1, s7, t6
                  sub          t2, s1, s5
                  blt          t1, s5, 274f
                  sltu         gp, gp, a3
                  add          a4, s1, s11
                  xor          a1, s4, gp
                  bltu         a7, s7, 263f
                  sub          s5, ra, a7
260:              bge          s5, t3, 273f
                  srl          a1, t3, s7
                  nop
263:              sra          a7, tp, s7
                  slt          t6, s10, a7
                  srli         a1, s0, 10
                  ori          t4, s8, 1989
267:              sll          a7, s0, s7
                  srl          a3, t1, s0
                  sltu         sp, a5, a2
                  beq          s1, a7, 280f
                  slt          s5, t5, s8
                  xor          a5, t4, s4
273:              auipc        t5, 295042
274:              bne          a7, ra, 291f
                  sll          s1, a4, t5
                  slti         s9, a4, 1989
                  srl          s9, s10, sp
                  sll          tp, zero, sp
                  lui          t3, 480091
280:              slli         a0, s7, 21
                  slli         a6, s11, 21
                  sra          a6, t1, s2
                  bltu         a3, t3, 295f
                  sra          zero, s2, a6
                  bgeu         a0, s9, 295f
                  slli         s4, s7, 31
                  xor          a5, s3, s5
                  andi         a7, a5, 160
                  bgeu         a6, t6, 307f
                  andi         tp, a0, 194
291:              srli         t4, t5, 2
                  and          ra, zero, s8
                  sltiu        zero, a2, 367
                  srli         zero, a5, 22
295:              or           t1, s8, t0
                  bge          s8, s6, 313f
                  srl          s3, t5, tp
                  srai         t0, tp, 16
                  xori         zero, t3, 188
                  sll          a5, s6, s8
                  sll          a0, t3, s1
                  xori         s5, ra, 1060
                  srli         t1, s8, 26
                  addi         t3, t4, -1181
                  sltu         gp, s2, s11
                  and          a5, s1, a3
307:              nop
                  andi         t1, ra, 1367
                  xor          a3, s9, gp
                  nop
                  sll          a3, s4, a2
                  sra          tp, a5, sp
313:              blt          a6, t2, 324f
                  bgeu         t2, tp, 322f
                  slli         t6, s10, 26
                  sltu         a7, zero, t4
                  bgeu         a3, s4, 321f
                  nop
                  sra          t5, t6, a1
                  sll          s9, a0, t4
321:              xori         s4, a2, -1646
322:              addi         t5, s5, 1024
                  andi         s11, s8, -1788
324:              sll          a6, s1, a5
                  or           s2, a7, a1
                  srai         a6, t4, 19
                  srli         s3, t4, 2
                  or           a0, a3, s6
                  slli         t5, a1, 24
                  addi         gp, gp, -376
                  sra          t1, t4, a4
                  lui          s0, 676917
                  slti         s2, s7, 1887
                  addi         s5, s4, 1205
                  ori          t2, sp, -1235
                  sll          s11, s11, a4
                  sub          a5, s2, a2
                  andi         t5, t6, 332
                  sll          a4, tp, s4
                  sltu         a0, t1, t4
                  ori          a4, t4, 1008
                  xori         t2, s2, 1588
                  sll          zero, t3, t5
                  slti         a7, a1, -583
                  ori          a4, s6, 1015
                  srai         a3, s1, 15
                  slli         a0, s6, 25
                  srl          a7, s11, t2
                  sub          s11, a4, gp
                  auipc        t6, 954379
                  add          s1, tp, s10
                  bltu         s10, t0, 364f
                  lui          t5, 694183
                  sra          t2, s10, t5
                  and          t1, s3, s9
                  bne          s2, a0, 360f
                  bge          a6, s2, 377f
                  srli         a7, s2, 14
sub_3_7:          jal          t1, 17f
0:                jal          gp, 3f
1:                jal          ra, 21f
2:                jal          t1, 16f
3:                jal          t1, 5f
4:                jal          sp, 14f
5:                jal          a3, 18f
6:                jal          ra, 0b
7:                jal          s3, 13f
8:                jal          ra, 19f
9:                jal          ra, 12f
10:               jal          ra, 7b
11:               jal          ra, 4b
12:               jal          ra, 15f
13:               jal          ra, 2b
14:               jal          ra, 6b
15:               jal          t1, 1b
16:               jal          ra, 9b
17:               jal          a6, 20f
18:               jal          sp, 10b
19:               jal          s10, 11b
20:               jal          t1, 8b
21:               sra          a5, t5, a6
                  xor          a1, t0, a7
360:              srl          ra, a3, s10
                  srli         t0, s7, 31
                  or           t5, s9, t6
                  xori         a6, s0, 1886
364:              srai         a4, zero, 21
                  sra          t2, s9, s4
                  add          s11, tp, gp
                  auipc        t5, 1046384
                  xor          s10, a2, t4
                  bge          s9, a1, 378f
                  sll          tp, a2, ra
                  blt          s1, t1, 391f
                  nop
                  la           s11, sub_4
                  andi         s0, t4, -1921
                  sll          tp, t0, t2
                  ori          gp, s10, 1558
                  addi         s11, s11, -13
                  ori          t6, s6, -1168
                  sltiu        t6, t6, -1302
sub_3_j5:         jalr         t1, s11, 13 #jump sub_3 -> sub_4
                  sltu         zero, s4, t5
                  blt          a5, s8, 390f
                  sltu         a4, t1, t6
                  auipc        t2, 260185
                  auipc        a7, 430637
377:              or           s4, ra, t1
378:              beq          t0, t1, 379f
379:              beq          t3, a6, 386f
                  sll          t5, a7, a6
                  bltu         a1, s11, 399f
                  sll          t5, tp, a0
                  xori         zero, a1, -535
                  sub          s5, s11, a3
                  bltu         ra, a7, 402f
386:              bgeu         a4, a6, 397f
                  auipc        t0, 3571
                  add          a1, ra, s9
                  sub          s10, s4, a2
390:              xori         a3, t4, 244
391:              slt          s2, a7, s6
                  sltiu        t0, s3, -378
                  sltu         t2, s5, s5
                  or           s3, s4, a7
                  sub          a0, s6, t6
                  bge          s10, s9, 399f
397:              nop
                  auipc        s2, 902255
399:              beq          t6, s6, 417f
                  blt          s3, a6, 406f
                  bge          ra, t3, 411f
402:              slti         s4, a6, -1013
                  srli         s11, ra, 14
                  bgeu         t1, s11, 415f
                  andi         a4, zero, 1885
406:              addi         s11, a1, -355
                  bltu         t5, a2, 410f
                  slt          s1, a5, t6
                  slti         s11, a7, 53
410:              bltu         sp, s10, 415f
411:              slti         s5, t1, -1647
                  sra          s9, ra, a4
                  srli         t0, t1, 9
                  beq          s8, s4, 430f
415:              beq          t5, s0, 433f
                  slti         s2, t4, -955
417:              slti         a4, s2, 1474
                  sra          t2, a5, s8
                  xor          t0, s0, tp
                  blt          a4, tp, 430f
                  bne          a6, s0, 422f
422:              bgeu         a3, t4, 440f
                  slli         s4, a2, 3
                  slt          t5, sp, t5
                  xori         a5, sp, 178
                  beq          a4, tp, 444f
                  srli         s4, s4, 4
                  bltu         t3, s4, 433f
                  beq          t4, s0, 441f
430:              sra          a3, t5, s8
                  slt          t2, a0, s0
                  slt          s6, s3, a0
433:              srli         s9, t4, 14
                  srai         s3, s3, 20
                  addi         t0, t4, -1882
                  bltu         sp, gp, 439f
                  slti         t1, t4, -1598
                  srai         s10, s9, 2
439:              bltu         s8, s9, 449f
440:              add          sp, a2, t4
441:              beq          s5, a0, 447f
                  sll          s2, s8, t2
                  and          s5, t3, t0
444:              srai         s1, t1, 1
                  beq          s5, s11, 453f
                  bne          t6, s1, 455f
447:              bltu         ra, ra, 465f
                  sll          t4, s0, gp
449:              blt          zero, t2, 467f
                  srli         zero, a2, 5
                  beq          a6, t5, 454f
                  lui          a4, 422133
453:              beq          a0, a1, 457f
454:              sra          a3, s3, s1
455:              add          s6, a1, s8
                  ori          t4, a3, 1026
457:              srli         a7, a0, 15
                  sll          s5, a7, s10
                  nop
                  lui          t6, 546694
                  sltiu        t4, t6, 422
                  bge          a6, s7, 479f
                  blt          s3, s8, 474f
                  andi         s1, sp, -737
465:              lui          s0, 76129
                  blt          t1, s7, 482f
467:              andi         s6, a6, -1135
                  sub          ra, a4, s0
                  lui          sp, 423698
                  srai         t2, s6, 0
                  srai         ra, s8, 11
                  add          s2, t2, s2
                  add          a5, s8, s0
474:              or           tp, t3, s11
                  srai         gp, s9, 6
                  slti         a3, t0, -2025
                  bne          s3, s1, 494f
                  srli         t5, t0, 15
479:              beq          a0, a7, 499f
                  sra          s1, a7, s1
                  srl          t5, s9, s3
482:              bne          s9, tp, 493f
                  sra          s2, s10, s5
                  beq          s8, s9, 488f
                  bltu         s5, a1, 492f
                  slt          a0, gp, a4
                  srai         a1, a4, 4
488:              beq          a1, tp, 498f
                  sra          zero, s8, a3
                  addi         t6, tp, 584
                  addi         t3, s0, 882
492:              sll          tp, s8, t5
493:              xor          s2, ra, t1
494:              slt          a6, t6, ra
                  blt          sp, a5, 515f
                  bgeu         a7, s6, 513f
                  slt          zero, s4, s1
498:              blt          s10, a7, 510f
499:              and          t1, s10, s3
                  andi         tp, zero, -992
                  bltu         t4, s9, 518f
                  auipc        a3, 589197
                  or           sp, tp, s8
                  srai         ra, s3, 27
                  or           ra, s8, tp
                  add          s3, s6, t2
                  xori         a7, a3, -823
                  and          a6, t4, a4
                  bge          s3, sp, 522f
510:              xor          t4, t4, a0
                  sra          t5, a5, s5
                  bgeu         tp, s8, 523f
513:              and          t6, a2, a3
                  auipc        tp, 584013
515:              slti         t6, s6, 1356
                  bltu         s5, s1, 534f
                  sltu         t3, a3, zero
518:              slt          t5, a7, s1
                  bltu         t0, t6, 528f
                  bge          s7, s1, 532f
                  slti         t4, a5, 588
522:              andi         s0, s6, 345
523:              slti         a3, s5, 1790
                  add          gp, t6, a5
                  add          s4, t3, a5
                  bge          a4, s10, 544f
                  nop
528:              slt          s5, s0, a6
                  beq          s11, t2, 540f
                  beq          tp, a6, 534f
                  auipc        s9, 796537
532:              auipc        s1, 347151
                  blt          s1, t0, 539f
534:              bltu         tp, s7, 551f
                  xori         s5, s3, -684
                  bge          t5, s9, 544f
                  sra          a6, s8, s0
                  add          s6, s4, t4
539:              ori          a4, s3, 591
540:              sll          s5, a7, zero
                  xori         t2, a5, -1581
                  or           sp, s5, t0
                  and          t1, s5, s2
544:              slti         a1, a2, -1971
                  slt          s10, a2, s2
                  sub          a1, s7, sp
                  addi         t3, s5, -1199
                  and          ra, s6, a7
                  add          s5, gp, t1
                  beq          s4, tp, 554f
551:              bge          s3, s7, 556f
                  blt          t0, s5, 564f
                  bltu         s3, a2, 570f
554:              beq          a5, s5, 570f
                  andi         a6, s3, -1997
556:              addi         t1, a3, 2016
                  sltu         sp, t1, s11
                  ori          s9, s1, -814
                  beq          s4, t0, 576f
                  and          t6, a7, s6
                  sltiu        t1, s0, 982
                  srai         a5, t1, 3
                  addi         t2, s1, -1680
564:              beq          a2, a4, 581f
                  sltu         a0, s5, a4
                  ori          a4, t1, 1728
                  or           s1, a2, ra
                  sltiu        t1, a4, -584
                  andi         t2, s10, 33
570:              add          s2, s7, a7
                  bltu         s1, t2, 589f
                  lui          s9, 211794
                  addi         gp, t1, -899
                  ori          a3, zero, -571
                  blt          t3, t3, 595f
576:              xor          t2, a0, s1
                  addi         t1, t1, -33
                  nop
                  srl          sp, a3, a5
                  slli         s10, s1, 5
581:              blt          s6, t1, 592f
                  sltiu        ra, sp, -506
                  nop
                  bltu         s11, s5, 602f
                  srai         t3, s1, 20
                  sra          s2, s8, t4
                  xor          s4, a4, s10
                  sub          a0, a1, gp
589:              or           zero, a0, t3
                  blt          t4, a5, 600f
                  bge          t5, a7, 601f
592:              bge          t5, s0, 612f
                  sll          a1, gp, sp
                  bge          a1, s8, 607f
595:              sra          s0, a2, t6
                  bne          s1, s10, 599f
                  or           tp, sp, s3
                  sra          t6, s0, a4
599:              bne          s11, zero, 609f
600:              auipc        t5, 397561
601:              bgeu         a6, a5, 612f
602:              add          s9, a4, s6
                  or           s1, a0, s4
                  sltiu        t6, t1, 372
                  sltu         a6, a5, s4
                  xor          a6, s11, a2
607:              auipc        s0, 405995
                  bge          s5, s2, 609f
609:              sltu         tp, a4, s2
                  srl          s10, s0, a6
                  blt          s7, a0, 614f
612:              auipc        s0, 1042195
                  srai         a6, s9, 15
614:              slli         a5, s10, 10
                  add          a6, a1, a0
                  xori         a4, t5, 1885
                  addi         a1, a7, 922
                  ori          t4, s0, -270
                  sub          gp, s0, t3
                  bgeu         t3, sp, 627f
                  sll          s10, s0, s8
                  sra          t2, a3, s2
                  sub          sp, t0, t0
                  auipc        a1, 166774
                  and          s11, s6, s5
                  auipc        t3, 1013446
627:              srl          t5, sp, s9
                  sll          t3, t3, s0
                  addi         s9, s8, -1863
                  slti         gp, t4, -319
                  andi         a5, ra, 2014
                  beq          a0, a1, 636f
                  bge          t0, s1, 636f
                  slti         t6, s1, -574
                  srli         t4, s6, 29
636:              srl          s0, t6, t6
                  xori         tp, a6, 957
                  blt          t6, a3, 650f
                  beq          s5, a7, 656f
                  srl          s10, s0, t4
                  nop
                  srl          a0, s8, s9
                  sub          a5, t5, s6
                  add          s5, t2, s2
                  or           t4, s2, a6
                  auipc        t1, 834365
                  add          t0, zero, s8
                  slti         s11, s7, -535
                  and          a5, s4, a3
650:              slti         t1, gp, 1456
                  slli         a1, s3, 13
                  beq          s8, t5, 670f
                  slt          s5, a2, t2
                  srai         a1, t6, 1
                  xori         s2, a4, -1472
656:              srli         a6, a7, 29
                  or           t5, tp, s10
                  addi         t3, s8, -1978
                  bne          s5, a2, 675f
                  sltiu        a1, gp, -1095
                  xor          t0, a5, t3
                  sll          s2, s7, ra
                  or           t2, s1, s6
                  nop
                  sra          t2, a5, t5
                  xori         gp, a5, 108
                  srai         s11, t4, 30
                  beq          ra, a6, 678f
                  auipc        s10, 720371
670:              blt          s1, a6, 675f
                  beq          t1, s7, 677f
                  xor          s5, a3, s11
                  sll          a7, a7, t6
                  ori          s5, s9, 269
675:              bgeu         s1, s1, 685f
                  slt          a3, s2, s2
677:              srli         a1, a2, 28
678:              srai         a5, ra, 7
                  slli         sp, s6, 18
                  sub          t2, s7, t4
                  nop
                  or           t5, t3, tp
                  andi         zero, s10, -44
                  auipc        s4, 38821
685:              xori         s10, a2, 1415
                  or           a3, s3, a1
                  sll          a4, s3, t4
                  xor          t1, sp, a2
                  sltu         t1, t2, a7
                  lui          t4, 411487
                  blt          ra, s0, 702f
                  srai         t0, a5, 5
                  bge          s0, s11, 710f
                  lui          ra, 137653
                  and          s9, t6, a4
                  ori          s3, s3, -1858
                  srai         t5, s9, 10
                  xori         t0, s11, 1834
                  andi         a5, a6, -1923
                  or           s6, a4, sp
                  xori         s6, s1, -1498
702:              bge          s1, a1, 720f
                  sltu         a1, t3, t2
                  bge          gp, a0, 707f
                  nop
                  andi         s10, ra, 1751
707:              ori          t1, t6, 1931
                  slt          gp, t6, gp
                  xori         a7, t6, 868
710:              sra          s9, t1, s11
                  srai         a0, a3, 25
                  srl          sp, s11, t3
                  sra          a0, a7, s2
                  beq          gp, ra, 731f
                  or           a3, s4, a0
                  sltiu        a3, t6, -972
                  andi         t5, a6, 1207
                  ori          s5, s2, -555
                  srl          a5, s7, t5
720:              sub          a6, s6, s8
                  andi         t4, a3, -1133
                  or           tp, t3, s1
                  srai         ra, s7, 5
                  srli         s11, a3, 27
                  addi         s10, s7, 1160
                  sll          a1, a6, s1
                  bne          s2, s11, 728f
728:              sltu         t1, t6, a2
                  bgeu         s7, s7, 737f
                  slli         zero, s11, 10
731:              sub          s1, t0, t2
                  sltiu        a0, s4, -456
                  blt          t1, ra, 743f
                  sltu         s11, s1, t5
                  and          s11, a5, s11
                  sltu         s5, s8, a6
737:              sra          a0, t6, a6
                  sll          a3, a7, t6
                  and          t5, s10, s9
                  bge          t6, a1, 760f
                  sll          s1, gp, a5
                  beq          tp, a4, 746f
743:              bge          s7, sp, 763f
                  addi         s0, s6, 2025
                  bge          tp, s4, 758f
746:              sll          t4, s6, a3
                  and          s9, t1, a5
                  ori          a3, t0, 1851
                  sra          a3, a4, a2
                  srai         s4, t2, 28
                  sltu         s6, gp, zero
                  srl          s0, s2, a3
                  add          a6, a7, a6
                  sltiu        a5, zero, -680
                  and          s10, s1, t6
                  andi         s9, s10, 1942
                  xor          a0, t5, s10
758:              bne          tp, a6, 776f
                  slti         t0, a5, 862
760:              andi         a1, a4, 619
                  bgeu         a0, s8, 772f
                  or           s0, a3, gp
763:              bgeu         s5, sp, 780f
                  nop
                  and          zero, s5, sp
                  andi         t5, a4, 1550
                  sub          a1, a5, a6
                  sra          a6, a4, t0
                  addi         ra, zero, -919
                  bne          a0, a2, 782f
                  auipc        ra, 834129
772:              xor          t5, s10, a5
                  slti         t3, t1, 1553
                  bltu         gp, s10, 783f
                  bgeu         zero, s7, 782f
776:              sltu         t4, t5, a5
                  sub          s9, s5, gp
                  sub          s3, a2, zero
                  xori         s1, a0, -1538
780:              bge          sp, s4, 798f
                  srai         t1, gp, 12
782:              blt          gp, ra, 793f
783:              srl          gp, s0, a0
                  srli         t6, s1, 2
                  xor          s5, a2, ra
                  sltu         s4, s11, s5
                  ori          t3, a0, -476
                  srl          t4, zero, s1
                  nop
                  srai         ra, s7, 2
sub_3_j6:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  bltu         a6, s10, 791f
                  slti         t3, a0, -907
                  ori          t4, t1, -624
                  srli         s6, s8, 15
                  blt          t6, s9, 806f
                  ori          s11, t1, 1743
                  bltu         t4, s4, 808f
791:              sltu         s6, t4, a0
                  bge          s3, a0, 796f
793:              sra          s1, tp, a1
                  auipc        s9, 396277
                  blt          s3, gp, 804f
796:              bge          a0, a4, 804f
                  slti         s5, s5, -1011
798:              srai         gp, a2, 18
                  srli         t0, s1, 20
                  ori          s1, a6, 689
                  nop
                  bne          t5, t2, 819f
                  or           a5, a0, t6
804:              slli         a6, s4, 22
                  sltiu        t1, s1, 721
806:              bgeu         a0, t1, 812f
                  blt          s5, a2, 824f
808:              sltu         a5, s11, s4
                  sub          a0, s7, zero
                  sub          sp, t4, a4
                  xor          a5, zero, s7
812:              sltu         a6, a6, s1
                  srl          ra, tp, zero
                  add          sp, ra, a6
                  bgeu         sp, ra, 835f
                  sub          s10, a4, a7
                  sltiu        t6, a5, 1829
                  ori          t2, s3, 119
819:              bltu         a4, s11, 823f
                  and          a1, s0, a7
                  sra          s11, a0, a4
                  srai         s0, ra, 10
823:              lui          s6, 400261
824:              slt          s9, s9, t4
                  xori         t3, t3, -1541
                  srai         s9, s0, 23
                  bge          s4, a0, 837f
                  sll          s10, a6, a2
                  blt          s1, s5, 840f
                  sltiu        s6, a7, -1791
                  slli         tp, tp, 30
                  slti         a6, zero, -1475
                  bge          t1, s6, 853f
                  or           t6, s2, tp
835:              slt          s11, a0, s3
                  addi         a0, t2, 1465
837:              srai         t0, s8, 22
                  beq          t1, t2, 850f
                  bne          a2, s8, 851f
840:              beq          a2, t3, 841f
841:              xor          s0, s9, tp
                  ori          t0, s8, -888
                  slt          a6, s8, t4
                  ori          s10, s11, -173
                  sll          s3, s11, t4
                  slti         a6, a3, -597
                  auipc        a1, 808190
                  srl          t0, s6, s5
                  blt          s2, t6, 860f
sub_3_3:          jal          t1, 5f
0:                jal          ra, 17f
1:                jal          ra, 10f
2:                jal          gp, 11f
3:                jal          ra, 7f
4:                jal          a6, 26f
5:                jal          sp, 19f
6:                jal          ra, 15f
7:                jal          t2, 6b
8:                jal          s9, 20f
9:                jal          ra, 16f
10:               jal          s0, 18f
11:               jal          s10, 3b
12:               jal          gp, 4b
13:               jal          t1, 14f
14:               jal          t1, 12b
15:               jal          s6, 0b
16:               jal          ra, 27f
17:               jal          gp, 9b
18:               jal          s4, 8b
19:               jal          ra, 25f
20:               jal          t0, 24f
21:               jal          t6, 13b
22:               jal          ra, 2b
23:               jal          ra, 21b
24:               jal          ra, 23b
25:               jal          ra, 1b
26:               jal          t1, 22b
27:               sub          s3, s8, t4
850:              bgeu         s10, s1, 853f
851:              sll          s11, s4, sp
                  bne          s11, s5, 869f
853:              and          s11, s5, s6
                  sll          ra, t5, s3
                  bge          s4, t4, 860f
                  auipc        s3, 68733
                  bge          s10, tp, 860f
                  sll          a7, s3, a2
                  andi         s3, gp, 722
860:              or           t2, a4, a7
                  andi         t5, t3, -1223
                  slli         t6, a2, 30
                  slli         t3, t1, 30
                  bne          a7, s10, 882f
                  sub          t1, t2, s4
                  sltu         s0, t4, t6
                  slt          a7, a4, sp
                  blt          a2, s6, 884f
869:              bltu         a0, t5, 882f
                  ori          a7, s5, 1430
                  andi         a1, a6, 1938
                  add          s1, s5, a7
                  and          s5, a3, t6
                  slti         t0, a7, 1453
                  andi         a4, s5, -1072
                  srai         t4, s11, 23
                  auipc        a6, 700901
                  blt          s0, a3, 888f
                  slli         s0, a4, 2
                  xori         a4, s1, 1057
                  andi         s9, sp, -1261
882:              bgeu         t2, a4, 893f
                  beq          s11, a4, 900f
884:              bne          t5, gp, 894f
                  and          t1, s11, a3
                  sub          tp, s0, t6
                  or           s10, s4, s0
888:              addi         t2, a3, -1296
                  beq          a3, a4, 907f
                  blt          s0, ra, 899f
                  sltu         s4, s10, sp
                  slti         t0, t3, -1988
893:              srl          t3, t4, s11
894:              lui          t1, 879418
                  or           a4, gp, a3
                  nop
                  xori         t4, s10, 189
                  and          t2, s9, s5
899:              xori         s10, s11, -1314
900:              addi         tp, a4, 712
                  nop
                  slt          a6, t0, s7
                  slti         t0, s11, -1393
                  auipc        s3, 689488
                  bgeu         t6, a0, 908f
                  slti         s5, tp, 1932
907:              sll          s2, t2, a3
908:              srai         sp, a6, 0
                  slt          s4, zero, s0
                  srli         s4, t6, 26
                  srli         a5, zero, 22
                  lui          a7, 670074
                  slti         a6, t6, -931
                  bge          sp, s10, 931f
                  sub          s5, a5, s3
                  srai         ra, s0, 15
                  xori         t4, s7, -172
                  nop
                  xor          t3, gp, a5
                  or           s10, a3, a5
                  or           a0, s0, s11
                  slt          a6, t0, t4
                  bne          s3, a4, 941f
                  sub          a0, t0, t3
                  srai         s5, a2, 7
                  xori         t4, s6, -1933
                  slti         s4, t6, -1072
                  lui          sp, 88049
                  sltu         t6, a2, a2
                  nop
931:              lui          s11, 338886
                  bge          tp, s3, 936f
                  xori         ra, a1, 1203
                  beq          s7, s1, 938f
                  and          a5, ra, a1
936:              lui          tp, 584696
                  and          t0, t2, a5
938:              andi         t3, a4, 1281
                  and          gp, t6, a7
                  bltu         s7, s6, 958f
941:              or           s4, a7, tp
                  slli         sp, t6, 22
                  blt          zero, t0, 960f
                  slt          s2, s1, t0
                  srai         s2, s8, 0
                  ori          s9, s1, -1947
                  srli         s1, t3, 4
                  add          gp, a5, sp
                  slt          a6, s5, a7
                  xori         t0, tp, 1795
                  bltu         s8, s0, 959f
                  blt          s7, a4, 964f
                  addi         s6, t6, -1961
                  blt          t2, s3, 966f
                  lui          s10, 266025
                  lui          s5, 507519
                  srli         t1, t2, 27
958:              addi         s6, a7, -308
959:              srli         s0, s1, 3
960:              xori         a7, s7, -1885
                  addi         a4, zero, 1934
                  bltu         a5, zero, 979f
                  addi         a0, t2, -538
964:              blt          s1, ra, 975f
                  sra          s11, zero, s7
966:              lui          t2, 181108
                  and          ra, s7, s11
                  lui          t5, 570541
                  bltu         a7, s11, 979f
                  beq          ra, sp, 980f
                  or           a7, ra, a6
                  slt          a0, sp, t2
                  xori         s4, sp, 2036
                  lui          a0, 27803
975:              sll          a5, sp, s5
                  auipc        t1, 398177
                  xori         a1, gp, 954
                  sltu         a5, s11, gp
979:              ori          s9, s3, 1186
980:              slli         s3, a0, 13
                  sll          s1, s0, a4
                  srl          t6, t5, s1
                  sltu         a3, t4, s7
                  or           tp, s7, gp
                  slt          a4, a7, s10
                  xor          ra, a7, a4
                  bne          t2, s9, 992f
                  lui          gp, 503779
                  sltu         a6, s2, zero
                  bge          s8, t1, 1000f
                  srl          t2, a1, a7
992:              xor          t0, tp, s1
                  sub          a6, tp, a2
                  or           s3, t0, s4
                  sub          s4, zero, t0
                  nop
                  sra          ra, a5, s1
                  srl          s10, a3, s6
                  addi         t3, a4, 1099
1000:             sra          s9, a4, s1
                  sub          a7, t5, s7
                  sub          t4, a1, s0
                  auipc        tp, 617593
                  beq          a3, a2, 1011f
                  sub          t3, s5, s6
                  bge          s5, a7, 1017f
                  srli         s10, s10, 2
                  xor          a4, s7, zero
                  sltu         gp, a2, a6
                  slti         s3, s0, -1056
1011:             sll          s11, s6, s1
                  sltiu        sp, a1, -1054
                  andi         a4, s1, 1537
                  or           s0, s0, s2
                  sll          s2, s4, zero
                  ori          s2, zero, 1038
1017:             srl          s0, t5, a5
                  addi         t6, a6, 1785
                  slti         t2, t0, 677
                  bne          s6, t2, 1036f
                  slli         t1, t4, 6
                  nop
                  blt          a4, t5, 1043f
                  lui          a7, 271240
                  and          a4, a3, a3
                  xori         a1, zero, -1448
                  bne          s0, t4, 1028f
1028:             srl          s11, s7, s2
                  bltu         ra, a7, 1047f
                  srli         s1, s10, 5
                  bne          s11, s7, 1042f
                  sltiu        t0, t2, 864
                  sub          a6, t0, t6
sub_3_10:         jal          t1, 9f
0:                jal          ra, 19f
1:                jal          s10, 14f
2:                jal          t6, 12f
3:                jal          ra, 18f
4:                jal          t1, 15f
5:                jal          t1, 6f
6:                jal          s10, 11f
7:                jal          a1, 20f
8:                jal          sp, 5b
9:                jal          ra, 3b
10:               jal          ra, 7b
11:               jal          ra, 1b
12:               jal          s0, 8b
13:               jal          ra, 17f
14:               jal          ra, 10b
15:               jal          t1, 2b
16:               jal          ra, 0b
17:               jal          ra, 16b
18:               jal          ra, 13b
19:               jal          t6, 4b
20:               sltu         t5, s6, zero
                  lui          s0, 939217
                  xor          t1, t5, s5
1036:             andi         s0, s4, -872
                  slt          zero, a4, tp
                  bgeu         s8, a0, 1058f
                  bgeu         s5, t1, 1057f
                  sub          t5, t1, a4
                  add          s5, t4, a4
1042:             sll          t1, a5, sp
1043:             slli         s4, s9, 17
                  add          zero, t5, t1
                  slli         a7, s7, 27
                  slli         t3, a0, 10
1047:             bne          s2, s0, 1060f
                  slli         a1, t5, 16
                  sub          sp, a6, a3
                  xor          sp, s11, s7
                  addi         s5, t6, -1378
                  lui          s5, 448711
                  add          t5, a7, s1
                  lui          a7, 197681
                  and          s2, tp, t0
                  slti         s4, s8, 1930
1057:             or           a4, s10, s6
1058:             bge          t1, a6, 1061f
                  srl          s10, s0, tp
1060:             sltiu        t2, a5, -1504
1061:             addi         s6, a2, 341
                  sltu         a0, t5, s1
                  xori         s10, t5, 956
                  xori         a0, a1, 1826
                  andi         s3, a5, -413
                  srli         ra, t5, 12
                  andi         s1, a0, -1319
                  xor          a7, ra, a3
                  sub          s9, tp, s10
                  sub          t6, t4, s6
                  sub          t6, t6, t2
                  addi         s11, s5, 595
                  srai         s9, a4, 16
                  sll          a7, s5, s9
                  sltiu        s11, s1, 398
                  bne          s9, zero, 1082f
                  ori          a3, s9, 1307
                  auipc        t0, 734556
                  sltu         s2, tp, a4
                  or           s10, gp, s1
                  slti         s0, tp, -1414
1082:             srl          t1, a7, s8
                  srai         tp, s2, 17
                  sll          s11, a2, tp
                  sltu         t5, s2, a0
                  slti         a0, s4, 1886
                  slt          ra, s10, a5
                  lui          a3, 180406
                  auipc        s9, 45866
                  ori          t2, t2, 1072
                  sltu         t6, t6, a3
                  bne          s1, a6, 1109f
                  bne          a7, gp, 1098f
                  xor          t3, a5, s3
                  and          t2, a3, zero
                  beq          s10, t6, 1106f
                  bne          s6, a7, 1100f
1098:             and          s1, sp, s2
                  blt          gp, t0, 1107f
1100:             bgeu         a4, t2, 1118f
                  xori         a7, tp, -1649
                  lui          a1, 742186
                  slli         s4, a0, 15
                  sltu         zero, s11, a4
                  bltu         a3, a4, 1122f
1106:             sra          s4, tp, s1
1107:             andi         tp, t3, -209
                  sra          s11, zero, s10
1109:             slti         a3, a1, 1591
                  andi         a7, ra, 499
                  bltu         a4, s7, 1129f
                  slt          s5, t2, tp
                  srl          t2, t4, s0
                  srl          t5, s9, a2
                  bne          s4, t6, 1133f
                  ori          s0, s4, -424
                  bgeu         t4, t5, 1127f
1118:             beq          tp, s3, 1128f
                  bge          s3, s0, 1137f
                  and          t1, tp, a5
                  sltiu        s10, s10, -1016
1122:             sltiu        s2, t3, 1116
                  sltu         t3, s0, t0
                  ori          t2, t1, 1392
                  nop
                  sltu         t2, s0, s11
1127:             sll          s0, s10, a0
1128:             sltu         s6, s0, a2
1129:             srai         s0, tp, 7
                  slt          s2, a5, s9
                  blt          gp, ra, 1143f
                  auipc        s10, 851415
1133:             slli         a3, a4, 22
                  lui          a0, 443161
                  srli         s5, t6, 17
                  bltu         a4, t2, 1148f
1137:             sub          s10, a5, t6
                  blt          a1, t2, 1154f
                  and          ra, a4, t2
                  sub          a6, s3, s4
                  xor          tp, s10, s10
                  sub          s3, s7, t3
1143:             beq          s3, s11, 1160f
                  srli         zero, s9, 22
                  sltu         a1, a4, a0
                  sub          s2, s5, t3
                  srai         ra, ra, 21
1148:             sub          ra, s3, t2
                  addi         t2, t4, 499
                  srl          zero, t2, tp
                  sub          s11, a2, s3
                  blt          s7, a5, 1169f
                  slli         a3, s1, 11
1154:             sub          t5, a7, s7
                  sltiu        a0, s1, 1710
                  slli         t3, s3, 5
                  nop
                  or           t1, t4, a5
                  add          s11, t4, sp
1160:             slt          tp, s0, a6
                  bgeu         a4, t4, 1165f
                  auipc        s3, 212537
                  or           s4, s2, s7
                  nop
1165:             or           s2, t4, s1
                  bge          s10, s6, 1177f
                  bltu         a0, s10, 1173f
                  srl          t3, s0, ra
1169:             bgeu         s10, s11, 1178f
                  bge          s9, s5, 1190f
                  bne          t3, a4, 1182f
                  add          s1, s11, t6
1173:             beq          s4, a3, 1184f
                  beq          gp, a5, 1177f
                  and          a4, s2, zero
                  ori          s3, gp, -1710
1177:             andi         gp, zero, -464
1178:             andi         s6, s4, -429
                  bgeu         a6, ra, 1180f
1180:             ori          s4, s3, -618
                  bltu         a5, a3, 1198f
1182:             beq          s5, a2, 1189f
                  xori         s11, ra, -717
1184:             srl          s5, ra, s3
                  sra          t1, a6, a1
                  beq          zero, a4, 1190f
                  lui          t6, 443188
                  auipc        t0, 960267
1189:             add          s1, a2, s3
1190:             slt          s5, s11, sp
                  bne          s2, a2, 1204f
                  slti         s6, a4, 890
                  blt          a7, t3, 1213f
                  slti         s0, s6, -1842
                  srai         s3, s8, 1
                  srli         s5, s9, 21
                  bge          gp, t0, 1201f
1198:             bgeu         sp, gp, 1209f
                  ori          s4, s8, 1159
                  and          gp, s3, zero
1201:             ori          a7, s10, 1673
                  sltu         s6, a6, s6
                  or           a7, s3, s6
1204:             or           gp, gp, s7
                  addi         s4, a0, -1127
                  sub          s9, tp, a4
                  andi         t2, sp, 1530
                  auipc        a6, 640774
1209:             slt          s10, a7, a6
                  srai         t0, ra, 13
                  or           a4, s10, s1
                  sltu         a1, a3, a2
1213:             blt          t0, s2, 1218f
                  bgeu         ra, s8, 1231f
                  xori         a0, s9, -1891
                  or           s4, s5, zero
                  xori         t3, s3, 1102
1218:             andi         s4, t2, 744
                  and          s2, s1, a1
                  xor          t5, t6, a2
                  lui          s2, 532804
                  ori          s10, s8, 834
                  sltiu        s9, a0, 906
                  xor          tp, t2, a0
                  xori         t4, s3, 907
                  addi         a4, a4, -1074
                  slt          a1, t0, a7
                  sub          ra, s0, a4
                  slti         s5, s2, 1947
                  and          t4, t2, a0
1231:             andi         s5, a6, -165
                  xor          a7, t0, a5
                  sll          s4, sp, a1
                  sll          s5, s6, a6
                  addi         t6, t6, -753
                  sra          a7, a7, t1
                  sra          s3, zero, s5
                  bne          s9, a0, 1244f
                  and          a3, s11, a3
                  xori         a3, a1, -1114
                  or           t0, s8, a5
                  sltiu        s9, a2, -535
                  bne          a3, a7, 1246f
1244:             beq          s11, s8, 1262f
                  lui          s0, 345115
1246:             bne          s9, t6, 1256f
                  xor          sp, t5, s2
                  ori          sp, tp, 719
                  blt          s4, t4, 1258f
                  bge          s9, a2, 1260f
                  slli         s5, t4, 16
                  slli         t0, t4, 1
                  bge          a7, a1, 1264f
                  sltu         t1, s8, s1
                  srai         s6, sp, 17
1256:             auipc        t1, 525634
                  srli         t6, a7, 11
1258:             srai         t1, s2, 1
                  srl          s9, s4, a1
1260:             srai         a6, a0, 29
                  add          a3, s8, s7
1262:             bge          sp, a3, 1279f
                  bltu         s6, t3, 1281f
1264:             beq          t6, a1, 1281f
                  srl          zero, a4, a4
                  auipc        s5, 472909
                  add          t6, s9, t2
                  sltu         s6, s3, s4
                  bne          s7, a4, 1272f
                  slt          s1, a0, a1
                  srl          t0, a3, t5
1272:             slti         s2, s0, -820
                  blt          s3, s1, 1277f
                  auipc        zero, 909730
                  ori          s2, t1, 1904
                  slti         a1, t3, -1266
1277:             ori          s10, t0, 116
                  sltu         a6, s4, a7
1279:             xori         s4, s3, 853
                  sra          s5, s3, s9
1281:             sll          s0, gp, t3
                  srai         a3, s2, 5
                  bltu         a5, a0, 1298f
                  blt          a3, s9, 1296f
                  slt          s3, t3, s11
                  lui          s4, 96234
                  bgeu         s7, s10, 1298f
                  ori          t0, t3, -795
                  slli         a3, t6, 18
                  auipc        t0, 573128
                  sltiu        t0, t4, 1296
                  addi         s10, s11, -902
                  ori          s11, s4, 1267
                  bltu         s3, gp, 1298f
                  and          s5, t1, a7
1296:             srl          s5, a2, t5
                  slli         zero, s10, 22
1298:             xor          t6, t3, a1
                  sub          t4, a2, s0
                  auipc        s5, 219067
                  lw           t1, 4(s7)
                  sra          s6, a5, zero
                  addi         s7, s7, 12
                  addi         a6, t5, -1419
                  srl          s0, t5, s9
1928:             addi x11, x6, 1
1928:             jalr x11, x11, 0
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
                  add x12, x23, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x16, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x16, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x16, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x16, x15, ecall_handler
                  li x15, 0x1
                  beq x16, x15, instr_fault_handler
                  li x15, 0x5
                  beq x16, x15, load_fault_handler
                  li x15, 0x7
                  beq x16, x15, store_fault_handler
                  li x15, 0xc
                  beq x16, x15, pt_fault_handler
                  li x15, 0xd
                  beq x16, x15, pt_fault_handler
                  li x15, 0xf
                  beq x16, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x23, x12, zero
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
                  add x23, x12, zero
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
                  add x23, x12, zero
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
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x23, x12, zero
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
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x23, x12, zero
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
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x23, x12, zero
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
