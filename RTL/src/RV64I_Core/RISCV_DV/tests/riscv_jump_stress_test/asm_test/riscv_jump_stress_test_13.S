.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xff681fa8
                  li x2, 0x14941b78
                  li x3, 0x5
                  li x4, 0xf2931796
                  li x5, 0x2
                  li x6, 0xfe5eac5a
                  li x7, 0xb
                  li x8, 0x80000000
                  li x9, 0xc
                  li x10, 0x3
                  li x11, 0x4
                  li x12, 0xb
                  li x13, 0x8
                  li x14, 0xd6c035b5
                  li x15, 0x7
                  li x17, 0x73e761f7
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0xfebf92ed
                  li x21, 0xf
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0xd
                  li x26, 0xe6dff5e0
                  li x27, 0x66a57d7c
                  li x28, 0x2
                  li x29, 0x0
                  li x30, 0xfe2eb555
                  li x31, 0x80000000
                  la x16, user_stack_end
main:             la           s4, sub_2
                  addi         s4, s4, -139
                  or           s0, s9, ra
                  add          zero, s2, s2
                  xor          zero, s0, t3
                  addi         s11, s9, -514
                  nop
                  bltu         s8, t4, main_j3 #branch to jump instr
                  sra          t0, a6, t2
main_j3:          jalr         ra, s4, 140 #jump main -> sub_2
main_1:           jal          ra, 27f
0:                jal          ra, 6f
1:                jal          s10, 14f
2:                jal          ra, 4f
3:                jal          ra, 26f
4:                jal          t0, 20f
5:                jal          a1, 2b
6:                jal          ra, 28f
7:                jal          ra, 25f
8:                jal          ra, 11f
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               jal          t0, 13f
12:               jal          ra, 10b
13:               jal          sp, 12b
14:               jal          t1, 22f
15:               jal          ra, 21f
16:               jal          tp, 24f
17:               jal          s8, 16b
18:               jal          ra, 23f
19:               jal          t1, 18b
20:               jal          ra, 0b
21:               jal          ra, 19b
22:               jal          a2, 7b
23:               jal          t1, 9b
24:               jal          ra, 15b
25:               jal          ra, 17b
26:               jal          s8, 8b
27:               jal          ra, 3b
28:               andi         t4, zero, 35
main_0:           jal          ra, 12f
0:                jal          s11, 15f
1:                jal          ra, 4f
2:                jal          s11, 14f
3:                jal          sp, 21f
4:                jal          ra, 18f
5:                jal          ra, 20f
6:                jal          sp, 19f
7:                jal          ra, 8f
8:                jal          tp, 2b
9:                jal          sp, 6b
10:               jal          ra, 7b
11:               jal          t1, 10b
12:               jal          ra, 9b
13:               jal          t1, 3b
14:               jal          s1, 17f
15:               jal          ra, 13b
16:               jal          s4, 5b
17:               jal          t1, 1b
18:               jal          ra, 0b
19:               jal          ra, 16b
20:               jal          ra, 11b
21:               lui          a0, 1041021
                  sll          s8, t6, zero
                  sltiu        sp, a6, 609
                  andi         s10, s6, 1519
                  andi         a5, a7, 1358
                  lui          a7, 261736
                  bltu         zero, t5, 13f
                  sll          t0, t4, a7
                  sra          a1, t3, s7
                  slti         t2, t5, -1679
                  sra          a2, s6, t0
                  xori         s7, t3, 869
                  sub          s5, a1, s6
                  lui          a1, 815435
13:               slt          s10, s8, t3
                  beq          a1, sp, 27f
                  slli         t2, s3, 6
                  add          s10, t2, s2
                  lui          a4, 622075
                  bgeu         s10, a7, 22f
                  xori         t3, a2, -784
                  auipc        t2, 421541
                  slti         a2, t6, -1598
22:               bltu         s10, s3, 28f
                  slti         a2, s10, 355
                  lui          gp, 151251
                  addi         s2, a1, -1105
                  srli         s2, s8, 26
27:               and          a4, s11, s3
28:               addi         s1, s10, 1235
                  ori          t0, s5, -325
                  xori         a3, s6, -676
                  add          ra, t2, sp
                  bge          a5, t3, 47f
                  srai         a2, a1, 4
                  sra          tp, s0, sp
                  and          t5, s4, t0
                  sltiu        s10, s4, -890
                  la           a1, sub_1
                  sra          s2, t5, a3
                  sltiu        zero, ra, 794
                  or           s2, s1, s0
                  ori          s10, tp, 1962
                  addi         a1, a1, 136
                  add          t5, s10, t2
                  bgeu         s9, t1, main_j1 #branch to jump instr
                  sll          t5, gp, s9
main_j1:          jalr         ra, a1, -135 #jump main -> sub_1
                  slt          s0, zero, s3
                  sra          a4, t0, s1
                  add          s7, s9, gp
                  bge          s3, zero, 46f
                  beq          s11, t5, 42f
                  add          s5, t0, s7
                  xori         zero, a7, -924
                  and          a2, t5, s4
42:               or           t1, s8, a7
                  srai         sp, t1, 14
                  sltu         s8, s10, s2
                  sub          s3, s4, s10
46:               and          s2, a5, a4
47:               srl          tp, a2, s2
                  nop
                  bgeu         a3, s10, 64f
                  xori         s5, a7, -1646
                  srai         t1, t1, 21
                  blt          s4, a5, 70f
                  beq          s10, s9, 64f
                  sltiu        t5, gp, -592
                  srl          a3, t2, a4
                  bltu         a7, a2, 59f
                  andi         a7, a2, -1453
                  slti         t1, a0, -495
59:               srl          a7, s10, s8
                  sub          a7, a6, tp
                  add          zero, s9, s9
                  ori          zero, zero, 1828
                  add          tp, s9, sp
64:               bne          a2, t2, 75f
                  nop
                  bne          t0, a0, 75f
                  bge          a0, s5, 69f
                  sra          s10, s4, s4
69:               and          tp, s0, t5
70:               sll          gp, s11, s4
                  slli         t2, s6, 18
                  sltiu        s7, s8, 83
                  sltiu        a7, a2, -1168
                  or           t5, a3, t0
75:               sub          a7, s4, t4
                  nop
                  sub          t0, s11, s1
                  bltu         a7, s5, 87f
                  xor          s10, a6, t1
                  bgeu         zero, t4, 92f
                  slli         t2, t0, 3
                  nop
                  beq          s7, zero, 88f
                  xor          a7, a0, s5
                  auipc        s10, 524162
                  add          s7, s2, s9
87:               slti         tp, a7, 184
                  sub          s4, a1, s6
                  srai         a0, s6, 14
                  sll          s8, gp, a7
                  la           s11, sub_2
                  or           zero, s6, s10
                  addi         s11, s11, -194
                  slti         s10, s11, 1100
                  beq          s5, a3, main_j2 #branch to jump instr
                  add          s4, s5, s1
main_j2:          jalr         ra, s11, 195 #jump main -> sub_2
88:               andi         t3, ra, 1641
                  srai         t2, s4, 4
                  slli         sp, a2, 21
                  slli         sp, sp, 14
92:               addi         s7, s1, -993
                  bgeu         s10, s2, 95f
                  and          tp, sp, a3
95:               sltu         s1, s11, s2
                  andi         a7, t3, -1383
                  sra          zero, t5, s8
                  lui          tp, 682970
                  and          a7, s5, s7
                  sll          s0, a6, tp
                  ori          s2, t4, -1452
                  sra          a5, s11, a2
                  sltiu        t2, s0, -1219
                  add          a2, s7, gp
                  add          a1, ra, ra
                  bne          zero, s0, 124f
                  srl          t2, s7, s6
                  or           ra, tp, t4
                  beq          gp, s8, 110f
110:              sll          s0, t2, t0
                  slt          t4, s9, ra
                  add          a4, a7, gp
                  lui          s3, 918429
                  add          s11, sp, t6
                  bne          a6, t2, 134f
                  add          gp, zero, s9
                  bgeu         s1, a6, 130f
                  sltu         t0, t0, t5
                  addi         sp, a7, 426
                  sltiu        s8, zero, -163
                  bne          t0, tp, 141f
                  lui          t0, 475469
                  xori         t4, a1, 446
124:              andi         s2, s1, 774
                  sll          s10, a5, s9
                  nop
                  beq          zero, sp, 128f
128:              xor          a3, t2, s5
                  srli         s2, s3, 29
130:              xor          s3, a4, a5
                  add          s5, t6, t6
                  or           s7, a5, a5
                  addi         s8, s6, -803
134:              bne          a0, s1, 143f
                  beq          a7, a1, 143f
                  xori         t1, a2, 908
                  sll          s6, t3, a4
                  andi         a4, s0, 1805
                  sra          a2, s11, tp
                  or           gp, t5, t3
141:              slti         ra, s8, 1293
                  add          gp, a1, tp
143:              srli         tp, s3, 3
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltiu        s11, t6, 1488
                  and          s0, t4, t0
                  sltiu        s3, tp, 695
                  addi         t1, s10, -944
                  bgeu         gp, s1, sub_2_stack_p
sub_2_stack_p:    addi         a6, a6, -56
                  sltiu        gp, ra, -599
                  srl          s7, ra, s11
                  andi         tp, t4, -133
                  sw           ra, 4(a6)
                  addi         s1, s5, 1799
                  xor          s2, s9, s8
                  xor          t4, s1, t2
sub_2_8:          jal          ra, 21f
0:                jal          ra, 3f
1:                jal          ra, 22f
2:                jal          t1, 1b
3:                jal          sp, 5f
4:                jal          ra, 6f
5:                jal          ra, 27f
6:                jal          s3, 20f
7:                jal          a5, 13f
8:                jal          t5, 10f
9:                jal          a2, 16f
10:               jal          t1, 11f
11:               jal          sp, 14f
12:               jal          t3, 4b
13:               jal          ra, 9b
14:               jal          ra, 24f
15:               jal          ra, 8b
16:               jal          s7, 12b
17:               jal          t3, 7b
18:               jal          ra, 28f
19:               jal          a2, 17b
20:               jal          ra, 15b
21:               jal          ra, 0b
22:               jal          ra, 19b
23:               jal          ra, 26f
24:               jal          t1, 18b
25:               jal          ra, 23b
26:               jal          t1, 2b
27:               jal          ra, 25b
28:               auipc        a2, 961956
sub_2_3:          jal          ra, 13f
0:                jal          ra, 14f
1:                jal          sp, 18f
2:                jal          ra, 9f
3:                jal          t1, 16f
4:                jal          ra, 11f
5:                jal          ra, 10f
6:                jal          ra, 8f
7:                jal          t0, 12f
8:                jal          ra, 4b
9:                jal          ra, 19f
10:               jal          gp, 1b
11:               jal          ra, 7b
12:               jal          a2, 2b
13:               jal          t1, 15f
14:               jal          t0, 6b
15:               jal          ra, 17f
16:               jal          t1, 5b
17:               jal          t1, 3b
18:               jal          ra, 0b
19:               slti         a3, a3, -333
sub_2_10:         jal          ra, 10f
0:                jal          ra, 22f
1:                jal          ra, 17f
2:                jal          t0, 9f
3:                jal          ra, 2b
4:                jal          ra, 23f
5:                jal          tp, 15f
6:                jal          t2, 0b
7:                jal          ra, 6b
8:                jal          t1, 4b
9:                jal          ra, 21f
10:               jal          a7, 5b
11:               jal          ra, 25f
12:               jal          ra, 19f
13:               jal          t1, 24f
14:               jal          ra, 11b
15:               jal          ra, 1b
16:               jal          ra, 20f
17:               jal          t1, 13b
18:               jal          ra, 7b
19:               jal          a2, 14b
20:               jal          ra, 18b
21:               jal          ra, 16b
22:               jal          t3, 12b
23:               jal          s11, 3b
24:               jal          t1, 8b
25:               or           t2, s2, t4
sub_2_0:          jal          ra, 16f
0:                jal          ra, 7f
1:                jal          ra, 13f
2:                jal          ra, 9f
3:                jal          ra, 4f
4:                jal          t1, 0b
5:                jal          s2, 3b
6:                jal          ra, 8f
7:                jal          gp, 12f
8:                jal          ra, 5b
9:                jal          ra, 17f
10:               jal          tp, 11f
11:               jal          ra, 6b
12:               jal          t1, 2b
13:               jal          a5, 15f
14:               jal          t1, 1b
15:               jal          t1, 10b
16:               jal          s8, 14b
17:               xori         s10, s6, -1300
sub_2_7:          jal          ra, 5f
0:                jal          t1, 16f
1:                jal          a5, 6f
2:                jal          ra, 8f
3:                jal          ra, 13f
4:                jal          s8, 10f
5:                jal          ra, 14f
6:                jal          t1, 11f
7:                jal          sp, 4b
8:                jal          t1, 3b
9:                jal          ra, 0b
10:               jal          ra, 1b
11:               jal          ra, 15f
12:               jal          t5, 2b
13:               jal          t1, 7b
14:               jal          ra, 12b
15:               jal          ra, 9b
16:               srl          t5, a6, t0
sub_2_11:         jal          ra, 0f
0:                jal          ra, 5f
1:                jal          t1, 8f
2:                jal          ra, 1b
3:                jal          ra, 19f
4:                jal          t1, 24f
5:                jal          tp, 3b
6:                jal          ra, 21f
7:                jal          ra, 18f
8:                jal          t1, 15f
9:                jal          ra, 6b
10:               jal          ra, 16f
11:               jal          ra, 2b
12:               jal          t1, 20f
13:               jal          t1, 11b
14:               jal          ra, 13b
15:               jal          s6, 22f
16:               jal          t1, 12b
17:               jal          ra, 7b
18:               jal          ra, 10b
19:               jal          a4, 4b
20:               jal          t1, 25f
21:               jal          ra, 17b
22:               jal          s10, 9b
23:               jal          t1, 14b
24:               jal          ra, 23b
25:               andi         a3, s3, -1905
sub_2_6:          jal          ra, 3f
0:                jal          ra, 6f
1:                jal          ra, 2f
2:                jal          t1, 5f
3:                jal          ra, 1b
4:                jal          ra, 12f
5:                jal          s5, 10f
6:                jal          tp, 7f
7:                jal          ra, 9f
8:                jal          sp, 11f
9:                jal          ra, 8b
10:               jal          ra, 0b
11:               jal          t1, 4b
12:               and          s3, s5, s9
sub_2_2:          jal          ra, 17f
0:                jal          t1, 12f
1:                jal          a2, 21f
2:                jal          gp, 15f
3:                jal          ra, 14f
4:                jal          ra, 20f
5:                jal          s8, 18f
6:                jal          ra, 22f
7:                jal          t2, 4b
8:                jal          ra, 13f
9:                jal          tp, 6b
10:               jal          ra, 9b
11:               jal          t0, 10b
12:               jal          t1, 8b
13:               jal          ra, 1b
14:               jal          ra, 5b
15:               jal          t1, 16f
16:               jal          s5, 11b
17:               jal          ra, 19f
18:               jal          ra, 7b
19:               jal          ra, 3b
20:               jal          ra, 0b
21:               jal          t1, 2b
22:               jal          ra, 23f
23:               srli         tp, sp, 6
                  sll          s10, ra, s5
                  add          s4, t1, s1
                  bltu         a7, t4, 17f
                  xori         t0, a7, -1615
                  xori         t5, s5, 999
                  sll          s2, s6, s9
                  nop
                  nop
                  ori          ra, a0, -266
                  bge          a5, t1, 17f
                  bltu         t0, s8, 13f
                  srai         t4, a2, 12
                  or           s1, s8, s1
13:               or           s5, t0, a1
                  srai         s5, t2, 30
                  slt          s8, s7, t2
                  bne          s4, a4, 18f
17:               xor          s8, t0, s10
18:               blt          a1, s8, 19f
19:               auipc        a5, 716430
                  srl          zero, t5, a3
                  srai         t4, t5, 24
                  slli         ra, a0, 16
                  srai         s8, s8, 28
                  bge          t0, t1, 37f
                  slti         s2, sp, -1361
                  bgeu         t3, s4, 44f
                  srai         s4, s5, 21
                  beq          a1, t5, 34f
                  srai         t3, a0, 10
                  or           a0, sp, gp
                  slli         s3, a4, 21
                  addi         s11, s8, 1529
                  bltu         t2, t3, 42f
34:               add          s8, a0, a4
                  lui          zero, 657087
                  sra          a4, s11, a2
37:               slt          sp, t5, t5
                  auipc        s3, 212238
                  beq          a2, a7, 49f
                  and          s8, s11, s7
                  nop
42:               sub          s6, sp, t4
                  sra          t4, tp, a1
44:               auipc        a2, 959001
                  ori          s5, t4, -2043
                  slli         s0, s11, 27
                  nop
                  sll          a5, s11, a0
49:               sll          a3, t2, gp
                  slli         s6, s5, 21
                  blt          a7, t6, 64f
                  sra          a1, t4, t3
                  nop
                  blt          a4, tp, 62f
                  addi         a2, a1, 1016
                  lui          s2, 423187
                  blt          s3, s4, 69f
                  sll          a7, t4, t2
                  blt          t4, t2, 63f
                  slt          t4, s3, s6
                  or           s2, t0, tp
62:               sub          t5, a0, t5
63:               or           t2, s2, t4
64:               sra          t3, t2, s3
                  xori         a7, s8, 283
                  nop
                  nop
                  addi         a2, tp, 398
69:               slti         zero, s6, 1036
                  sub          t4, s10, a0
                  sub          s11, a7, s0
                  srai         a7, s8, 21
                  xori         gp, a5, 27
                  srai         t0, a4, 6
                  bgeu         t6, s9, 94f
                  slt          s4, t3, t5
                  bgeu         ra, a0, 91f
                  nop
                  beq          t5, s9, 84f
                  ori          ra, s9, 335
                  srai         s0, a7, 19
                  slt          t5, zero, s4
                  xori         tp, s1, 1070
84:               nop
                  add          t5, a6, s5
                  nop
                  srl          a2, t6, zero
                  slti         a7, s7, 699
                  slti         t5, a5, -1548
                  sll          s1, t0, s1
91:               blt          tp, t1, 96f
                  slti         zero, sp, 1236
                  xori         t4, gp, -337
94:               lui          a4, 367870
                  andi         s10, t1, -1309
96:               lui          s8, 109599
                  xori         gp, a0, 812
                  sltu         s3, tp, tp
                  andi         a0, a3, 867
                  xori         s6, t2, 1594
                  sltiu        t2, t6, -789
                  srli         zero, s2, 9
                  andi         t5, zero, 784
                  andi         s5, s1, -579
                  nop
                  sll          a3, a7, a7
                  srai         s7, s1, 30
                  srai         s4, s6, 7
                  lui          s5, 201827
                  beq          s3, t2, 111f
111:              and          t3, gp, t2
                  srl          a4, t1, s4
                  srli         gp, s9, 16
                  and          s0, s7, t4
                  and          s2, a7, a2
                  addi         a5, tp, -1998
                  slti         s1, t2, -1518
                  sltu         a0, a4, a7
                  srai         s5, s1, 19
                  nop
                  andi         t4, s10, 1621
                  auipc        a7, 59846
                  slt          a1, s3, a7
sub_2_1:          jal          ra, 4f
0:                jal          ra, 2f
1:                jal          t1, 13f
2:                jal          ra, 3f
3:                jal          ra, 16f
4:                jal          ra, 8f
5:                jal          ra, 7f
6:                jal          ra, 1b
7:                jal          tp, 11f
8:                jal          ra, 0b
9:                jal          t5, 5b
10:               jal          ra, 17f
11:               jal          t1, 10b
12:               jal          t0, 14f
13:               jal          ra, 9b
14:               jal          t1, 15f
15:               jal          ra, 6b
16:               jal          ra, 12b
17:               or           s7, t2, s11
                  or           a1, s11, ra
                  bgeu         a1, a6, 136f
                  bge          zero, s3, 129f
                  slt          s6, s7, s0
                  slti         a1, s6, -1042
129:              bltu         a6, a6, 142f
                  and          t5, s1, s1
                  bltu         a3, s11, 135f
                  bgeu         zero, s11, 152f
                  sub          t1, gp, t0
                  addi         a2, t3, -1191
135:              blt          a5, t5, 154f
136:              slli         sp, s10, 1
                  ori          s7, s7, 856
                  ori          s0, s7, -1655
                  slli         s4, s6, 29
                  slti         ra, t2, 1563
                  bge          a6, zero, 142f
142:              auipc        t1, 380133
                  xori         t0, s8, 605
                  xor          a7, gp, s2
                  blt          zero, t5, 165f
                  beq          a1, s5, 151f
                  sltu         ra, s0, ra
                  sra          s8, s0, s2
                  bltu         gp, t1, 166f
                  or           a4, s7, t1
151:              nop
152:              and          a1, a0, tp
                  and          sp, s3, ra
154:              addi         t2, a1, 449
                  sra          t1, zero, s9
                  blt          sp, gp, 174f
                  andi         t3, s10, -37
                  xor          a1, s9, s6
                  bge          s8, a4, 174f
                  slti         a7, tp, -2041
                  auipc        t0, 806045
                  andi         t0, a7, -1335
                  sub          tp, a2, t5
                  auipc        s1, 3066
165:              beq          s8, s8, 167f
166:              nop
167:              blt          t2, t3, 173f
                  srai         s4, t6, 12
                  srai         zero, a1, 11
                  sll          s2, s5, s11
                  sll          t1, s7, tp
                  bltu         zero, a2, 182f
173:              lui          ra, 900803
174:              beq          s0, t4, 175f
175:              xor          tp, a3, sp
                  bltu         a0, a0, 181f
                  slli         zero, s5, 3
                  bltu         a7, a4, 186f
                  nop
                  xor          s1, t6, a3
181:              beq          a0, a0, 184f
182:              nop
                  srai         s3, s2, 0
184:              xor          s6, s3, s3
                  lui          a2, 689733
186:              or           t5, s7, s11
                  slti         tp, t4, -526
                  and          s10, s2, a4
sub_2_5:          jal          ra, 4f
0:                jal          s5, 5f
1:                jal          ra, 0b
2:                jal          ra, 8f
3:                jal          t0, 14f
4:                jal          t1, 18f
5:                jal          t4, 3b
6:                jal          t1, 1b
7:                jal          t1, 21f
8:                jal          s4, 6b
9:                jal          ra, 12f
10:               jal          s2, 9b
11:               jal          ra, 20f
12:               jal          ra, 19f
13:               jal          t1, 15f
14:               jal          ra, 10b
15:               jal          t1, 2b
16:               jal          ra, 11b
17:               jal          ra, 13b
18:               jal          ra, 16b
19:               jal          ra, 7b
20:               jal          t3, 17b
21:               xor          s7, s8, a1
                  slli         s8, a4, 23
                  lui          s10, 319714
                  lui          gp, 634106
                  sltu         t5, s11, sp
                  xori         zero, s8, 633
                  and          gp, a3, s4
                  sub          t4, t6, s2
                  slt          gp, s3, a7
                  bgeu         s11, t6, 211f
                  slli         tp, t5, 18
                  slti         a1, s10, 1644
                  slli         s2, tp, 7
                  slt          t3, s11, a5
                  and          s3, s7, t4
                  and          t5, a4, s10
                  or           t3, ra, sp
                  bltu         t6, t3, 210f
                  srl          ra, t1, s3
                  ori          s6, gp, -1212
                  bltu         s4, sp, 226f
                  blt          a0, a7, 221f
210:              bge          t5, t3, 223f
211:              slli         t3, a0, 24
                  and          s1, t2, sp
                  xor          ra, gp, t3
                  lui          a4, 877207
                  lui          s4, 1029076
                  auipc        s11, 948452
                  sltiu        a3, t0, 1807
                  sll          a2, t1, s2
                  sll          s3, a0, t0
                  xor          t1, sp, s6
221:              add          s3, s5, a6
                  srai         gp, tp, 11
223:              sra          s6, a1, s8
                  slti         s8, t5, 716
                  slti         s5, t5, 1566
226:              nop
                  blt          a6, a0, 240f
                  sltiu        s3, a6, -1689
                  nop
                  xori         t0, a7, -312
                  slli         s1, t4, 28
                  xori         a2, a5, -971
                  sub          s8, a6, s0
                  bltu         gp, ra, 251f
                  bge          s3, sp, 239f
                  srli         s2, a7, 22
                  bltu         t2, t0, 240f
                  slti         s4, t0, 937
239:              blt          a3, ra, 250f
240:              add          sp, t6, s3
                  or           s10, t1, t1
                  srai         s8, a3, 31
                  sll          t3, a5, tp
                  beq          s9, tp, 263f
                  srli         a7, a4, 0
                  addi         t0, s5, -1681
                  srli         t1, a5, 28
                  blt          t4, t3, 261f
                  lui          s2, 687571
250:              or           a2, sp, a7
251:              auipc        s7, 649272
                  sll          ra, s7, t2
                  add          s4, zero, a7
                  slti         s3, a3, 599
                  xori         a7, s3, 1075
                  slt          ra, t4, tp
                  bne          s6, gp, 276f
                  beq          s10, zero, 278f
                  addi         s5, a3, 1869
                  and          s5, zero, t6
261:              or           ra, s11, s10
                  srl          s7, ra, s5
263:              blt          t3, zero, 268f
                  blt          a2, t4, 265f
265:              or           s1, s3, s3
                  srli         s8, t2, 0
                  bgeu         a1, s4, 271f
268:              or           s5, a2, tp
                  nop
                  beq          a1, a0, 278f
271:              srl          s11, s10, s10
                  slti         s8, gp, -874
                  slli         t3, gp, 3
                  andi         s10, a0, -816
                  lui          s4, 896903
276:              srl          t1, s4, t2
                  xori         s2, s10, -121
278:              and          s1, s3, a0
                  bge          s11, a3, 288f
                  bne          s7, s1, 300f
                  lui          s3, 816542
                  bltu         t0, a5, 300f
                  blt          s11, t4, 284f
284:              auipc        t5, 267246
                  blt          s7, t0, 290f
                  srai         s11, s4, 27
                  auipc        s10, 198382
288:              slti         t3, s4, -491
                  ori          s11, zero, 919
290:              bltu         s6, s10, 298f
                  sll          s8, s10, a5
                  or           sp, a7, s5
                  srai         t2, a4, 3
                  bne          a7, s4, 303f
                  blt          a1, a0, 310f
                  andi         s11, s9, -1844
                  srai         s2, tp, 17
298:              add          t2, t2, a5
                  slt          s6, a3, a3
300:              bgeu         s10, t4, 318f
                  beq          gp, s6, 305f
                  or           s1, a5, tp
303:              srl          s2, s3, s3
                  sll          s2, ra, t2
305:              add          t5, s1, a2
                  sltiu        s1, sp, -516
                  xori         t3, s5, 1053
                  andi         a5, zero, -1626
                  auipc        t4, 779687
310:              slli         t5, s10, 15
                  sub          s6, t4, sp
                  bge          s6, t4, 331f
                  beq          s1, s7, 326f
                  xor          s8, t4, zero
                  srli         t4, a0, 21
                  srli         gp, ra, 26
                  and          t3, s6, t2
318:              srl          s11, t0, a5
                  slli         s3, a4, 13
                  bgeu         t2, t3, 324f
                  beq          zero, zero, 326f
                  srai         ra, sp, 18
                  nop
324:              nop
                  xor          t1, s9, t1
326:              addi         s11, a4, 1168
                  sll          s8, t5, sp
                  sltiu        t2, a3, 612
                  srai         t1, a1, 14
                  sra          s8, s3, a0
331:              srl          s2, s3, s5
                  sra          a4, s9, a0
                  beq          ra, a2, 334f
334:              andi         ra, a7, 527
                  slti         s10, t5, -1339
                  ori          a7, s11, 1609
                  add          t5, a7, s5
                  slti         s10, a3, -730
                  add          t0, a4, gp
                  sll          s2, a3, s2
                  slt          t5, zero, s10
                  sltu         zero, s11, a2
                  beq          t4, a5, 356f
                  or           zero, s10, a5
                  srli         zero, s8, 24
                  beq          s3, sp, 354f
                  andi         a5, s8, 1463
                  slt          s8, t6, a4
                  srai         a2, t5, 30
                  beq          gp, a7, 352f
                  auipc        a7, 473039
352:              addi         s8, ra, 1796
                  or           t2, a7, a4
354:              sltu         s5, a0, a5
                  xori         a0, s5, -558
356:              auipc        a5, 394203
                  addi         s5, t5, -33
                  srl          t3, a4, sp
                  sltiu        t4, s9, 987
                  srai         a7, t5, 11
                  ori          a5, a4, -1452
                  bltu         a7, s3, 382f
                  slli         tp, s10, 18
                  add          s0, s2, gp
                  bgeu         s9, a4, 376f
                  auipc        a1, 56070
                  add          a2, s2, zero
                  sra          s5, a3, a5
                  addi         sp, t4, -1743
                  sra          a5, a1, s11
                  lui          a4, 807878
                  nop
                  ori          a4, t6, 1464
                  sltu         t4, s2, s5
                  sll          ra, s7, sp
376:              addi         t1, gp, -110
                  bltu         s7, ra, 387f
                  slti         a4, t4, -918
                  srai         a1, a7, 30
                  xori         a1, s0, 878
                  sltiu        t3, a7, 1730
382:              bge          a3, s2, 387f
                  blt          t5, tp, 384f
384:              bge          a7, t5, 397f
                  nop
                  auipc        t1, 268803
387:              andi         ra, s4, 408
                  xor          a1, t2, sp
                  lui          a0, 345009
                  slti         a1, a6, 1975
                  bne          t5, t2, 405f
                  xori         t4, t1, -74
                  auipc        sp, 762156
                  bge          s7, a7, 400f
                  slli         a1, s3, 27
                  or           t5, s4, s2
397:              add          t0, s8, tp
                  bltu         a3, a5, 415f
                  or           a0, gp, a4
400:              addi         s3, a4, 1156
                  xor          t1, t4, s9
                  xori         s0, s6, -1148
                  bge          a1, s2, 404f
404:              xor          tp, t2, t1
405:              and          gp, t6, s8
                  and          a1, t2, sp
                  slt          s1, t2, zero
                  add          s5, a5, a5
                  bne          gp, s8, 428f
                  andi         a1, s5, -462
                  nop
                  ori          t2, t1, 1398
                  sll          a1, a7, t5
                  sltu         s6, t2, s1
415:              ori          a2, ra, 408
                  sltiu        s8, s6, -33
                  sltiu        sp, s5, -1356
                  blt          zero, s5, 436f
                  sltu         a7, t2, a0
                  ori          sp, a5, 441
                  xori         a0, a4, 114
                  or           tp, sp, s7
                  blt          a0, s2, 435f
                  bltu         a1, gp, 427f
                  srai         s2, s5, 28
                  xori         t4, a2, 1424
427:              slt          t2, t2, s1
428:              slli         t1, a6, 11
                  blt          t5, s11, 449f
                  slti         s3, t1, 7
                  slti         sp, s3, 1244
                  add          a5, s5, s3
                  srai         s2, a1, 10
                  addi         s8, t0, 1890
435:              slti         tp, a0, 822
436:              slli         s4, s4, 12
                  nop
                  xori         t0, a0, 1865
                  beq          s7, gp, 442f
                  bgeu         a3, t4, 455f
                  add          s0, a5, a1
442:              srli         t3, s6, 0
                  ori          t5, t3, 1854
                  xori         a7, s10, 1895
                  slli         a0, a6, 28
                  xori         s10, a1, 831
                  bgeu         s4, a3, 465f
                  bgeu         a1, s8, 456f
449:              sll          t5, s8, s4
                  bge          s10, a6, 451f
451:              nop
                  sra          s7, s8, t2
                  bge          gp, s6, 473f
                  add          t0, s6, gp
455:              auipc        s8, 24660
456:              and          a3, sp, ra
                  addi         s11, t6, -756
                  and          t2, s6, t2
                  bge          s10, t3, 460f
460:              add          a7, s10, ra
                  sll          ra, a4, s7
                  add          s7, s8, zero
                  slti         a0, a0, 732
                  blt          a4, s0, 477f
465:              bge          s9, s10, 478f
                  slt          tp, s2, s10
                  sub          t1, a3, a5
                  and          s8, t3, sp
                  sra          s4, a6, zero
                  or           s7, s3, ra
                  sub          s7, a5, t3
                  bne          a1, s5, 492f
473:              addi         t2, s6, 2038
                  srli         t4, s4, 12
                  xor          t5, a2, s11
                  addi         t1, a7, -616
477:              lui          tp, 220761
478:              sll          s1, a1, t6
                  slti         a4, t5, -1568
                  slt          gp, t4, s8
                  sll          s2, s4, s3
                  sra          a1, zero, s7
                  xor          s11, s0, t3
                  bne          gp, s9, 489f
                  bltu         s10, a7, 498f
                  addi         s10, sp, -165
                  slti         s0, t1, -1903
                  srai         t3, t4, 7
489:              sltu         s0, a1, a1
                  bge          sp, s3, 491f
491:              nop
492:              blt          gp, s7, 497f
                  ori          s1, s0, -827
                  srai         a0, t5, 21
                  slt          s3, s4, t4
                  and          t1, t2, zero
497:              slt          tp, gp, zero
498:              slti         ra, a7, -1283
                  lui          zero, 815967
                  xor          t3, a1, t6
                  and          a1, t2, s2
                  slli         a0, a6, 8
                  blt          t2, s9, 513f
                  xori         t0, sp, 235
                  beq          a3, s1, 524f
                  srai         t4, a1, 5
                  bgeu         s11, t1, 511f
                  slli         s0, t5, 21
                  beq          sp, tp, 523f
                  bne          a7, s3, 514f
511:              addi         s6, a0, 298
                  lui          gp, 53133
sub_2_9:          jal          ra, 2f
0:                jal          t1, 6f
1:                jal          t3, 0b
2:                jal          ra, 4f
3:                jal          ra, 13f
4:                jal          t1, 5f
5:                jal          t3, 8f
6:                jal          ra, 18f
7:                jal          a4, 16f
8:                jal          ra, 14f
9:                jal          t1, 1b
10:               jal          ra, 15f
11:               jal          a7, 3b
12:               jal          a4, 10b
13:               jal          ra, 12b
14:               jal          t1, 7b
15:               jal          ra, 17f
16:               jal          a0, 11b
17:               jal          t1, 9b
18:               sll          t2, s11, a2
513:              sltiu        s11, a6, 365
514:              xor          s5, sp, s11
                  sub          s11, t3, a3
                  sll          s0, a3, s6
                  addi         s3, s5, 1965
                  sub          tp, s0, t0
                  slti         a1, s5, 1208
                  beq          a3, a4, 539f
                  slti         s3, s0, -1674
                  xor          t4, ra, a0
523:              srli         a1, t6, 22
524:              xori         a0, sp, 606
                  lui          t2, 411968
                  sra          a0, s4, s11
                  ori          tp, t5, -1812
                  xori         s4, a0, -1027
                  srl          a2, s8, a1
                  andi         sp, t4, -199
                  sltu         s10, t0, s9
                  bgeu         a4, gp, 544f
                  bgeu         gp, a7, 538f
                  lui          sp, 139272
                  sltu         s7, t4, a5
                  sltu         s4, ra, ra
                  sltiu        s1, a5, -35
538:              sll          t1, s5, s2
539:              bge          s0, sp, 542f
                  add          s4, tp, t3
                  srai         s6, s2, 3
542:              xori         s7, s11, -20
                  sltiu        t0, a6, 1956
544:              addi         t0, s8, 336
                  slt          a0, s5, s7
                  or           s10, s11, t1
                  auipc        t2, 913732
                  lui          a0, 671794
                  add          a5, t4, a3
                  ori          s6, s2, -29
                  beq          gp, a7, 557f
                  add          a0, s0, a6
                  srli         a1, t5, 23
                  bge          gp, s10, 565f
                  ori          gp, a4, -612
                  andi         a4, t2, 132
557:              lui          sp, 193390
                  andi         s7, gp, -1913
                  beq          s2, a0, 577f
                  sra          t3, s1, s4
                  or           ra, a1, a0
                  slli         s6, s9, 3
                  or           zero, a6, s9
                  srai         s11, a6, 27
565:              beq          s10, a0, 568f
                  auipc        s2, 666199
                  srli         sp, sp, 12
568:              slt          s4, t2, t1
                  bne          a4, s11, 578f
                  sub          s3, s10, a6
                  bge          t5, s4, 573f
                  lui          sp, 157356
573:              bltu         s10, t4, 581f
                  srli         s6, t4, 28
                  ori          a1, a6, -1882
                  auipc        s7, 525078
577:              bge          t1, t5, 594f
578:              lui          a2, 455189
                  or           a0, s2, a5
                  bgeu         s11, s1, 591f
581:              bgeu         a3, t0, 583f
                  sll          a5, s8, s0
583:              srai         a2, s4, 30
                  blt          s6, t6, 589f
                  slt          gp, t3, a0
                  add          t3, t1, gp
                  nop
                  bne          t6, a1, 592f
589:              srli         t0, s10, 13
                  blt          zero, t5, 610f
591:              and          t2, a6, tp
sub_2_4:          jal          ra, 1f
0:                jal          ra, 13f
1:                jal          ra, 4f
2:                jal          ra, 15f
3:                jal          ra, 20f
4:                jal          s3, 22f
5:                jal          sp, 16f
6:                jal          t1, 17f
7:                jal          s4, 10f
8:                jal          ra, 11f
9:                jal          t1, 19f
10:               jal          s7, 3b
11:               jal          t0, 0b
12:               jal          t1, 7b
13:               jal          t1, 9b
14:               jal          ra, 6b
15:               jal          ra, 5b
16:               jal          ra, 23f
17:               jal          t1, 12b
18:               jal          t0, 2b
19:               jal          s0, 21f
20:               jal          ra, 8b
21:               jal          ra, 18b
22:               jal          ra, 14b
23:               sltiu        s5, a0, 1979
592:              add          t3, s1, t5
                  bne          tp, t6, 611f
594:              bge          ra, s10, 603f
                  or           t3, s8, zero
                  lui          s0, 443976
                  bne          t1, t0, 598f
598:              slti         a4, a0, 618
                  ori          t3, s10, -1802
                  bne          s11, a2, 615f
                  srl          s5, s9, s2
                  sub          t4, a4, gp
603:              bge          s3, t4, 615f
                  sltu         s3, t0, s3
                  nop
                  sra          tp, s3, t2
                  slti         a1, t5, 1895
                  bgeu         s7, t0, 621f
                  nop
610:              add          s2, a0, s10
611:              slli         s2, t5, 5
                  bgeu         s5, t6, 620f
                  add          t5, t0, tp
                  slli         a1, t6, 8
615:              sra          ra, t4, a1
                  auipc        sp, 562591
                  add          s6, a3, s3
                  slti         a1, s8, -1649
                  blt          a1, t0, 627f
620:              beq          s4, t3, 627f
621:              sll          sp, t4, a7
                  add          t4, a6, t1
                  sltu         gp, a2, t2
                  beq          a5, t2, 627f
                  sll          s4, a1, t6
                  sll          ra, s10, s9
627:              srl          gp, s3, a2
                  lw           ra, 4(a6)
                  addi         a6, a6, 56
                  andi         t2, t4, 262
                  sltiu        t3, a7, 1022
                  xori         tp, a0, -1999
                  addi         a0, t0, 1581
915:              addi x27, x1, 1
915:              jalr x27, x27, 0
sub_1:            bgeu         a7, a2, sub_1_stack_p
sub_1_stack_p:    addi         a6, a6, -20
                  srai         t5, t6, 21
                  sll          s0, zero, zero
                  sw           ra, 4(a6)
                  auipc        s5, 441590
                  la           a2, sub_4
                  andi         t1, gp, -1097
                  ori          s1, s0, 589
                  sltu         s5, t1, a3
                  srai         s5, ra, 1
                  ori          s7, s1, 1184
                  addi         a2, a2, -993
                  slli         tp, s9, 14
                  xor          s2, t1, a2
                  sltiu        a0, t1, 16
sub_1_j7:         jalr         ra, a2, 993 #jump sub_1 -> sub_4
sub_1_1:          jal          ra, 1f
0:                jal          t1, 21f
1:                jal          ra, 16f
2:                jal          ra, 8f
3:                jal          ra, 2b
4:                jal          t1, 12f
5:                jal          ra, 14f
6:                jal          ra, 15f
7:                jal          t1, 23f
8:                jal          ra, 24f
9:                jal          ra, 25f
10:               jal          ra, 13f
11:               jal          ra, 18f
12:               jal          ra, 26f
13:               jal          ra, 7b
14:               jal          t1, 11b
15:               jal          ra, 3b
16:               jal          ra, 5b
17:               jal          ra, 9b
18:               jal          t1, 10b
19:               jal          ra, 6b
20:               jal          s5, 4b
21:               jal          a0, 17b
22:               jal          t1, 19b
23:               jal          ra, 22b
24:               jal          a2, 0b
25:               jal          t1, 20b
26:               slt          a1, s4, s0
sub_1_24:         jal          ra, 12f
0:                jal          s7, 14f
1:                jal          t1, 13f
2:                jal          tp, 11f
3:                jal          ra, 6f
4:                jal          gp, 2b
5:                jal          ra, 10f
6:                jal          ra, 0b
7:                jal          ra, 19f
8:                jal          t1, 1b
9:                jal          t1, 16f
10:               jal          t4, 3b
11:               jal          ra, 17f
12:               jal          gp, 4b
13:               jal          ra, 15f
14:               jal          ra, 18f
15:               jal          ra, 9b
16:               jal          ra, 5b
17:               jal          ra, 7b
18:               jal          s1, 20f
19:               jal          sp, 8b
20:               sltu         a2, tp, t4
sub_1_19:         jal          ra, 10f
0:                jal          ra, 8f
1:                jal          ra, 2f
2:                jal          t1, 0b
3:                jal          ra, 15f
4:                jal          ra, 12f
5:                jal          ra, 3b
6:                jal          gp, 1b
7:                jal          t1, 9f
8:                jal          t1, 14f
9:                jal          ra, 11f
10:               jal          ra, 13f
11:               jal          sp, 6b
12:               jal          ra, 5b
13:               jal          t1, 7b
14:               jal          t1, 4b
15:               sltiu        a3, t0, 760
sub_1_26:         jal          ra, 12f
0:                jal          a1, 13f
1:                jal          gp, 8f
2:                jal          ra, 21f
3:                jal          s8, 10f
4:                jal          ra, 14f
5:                jal          ra, 17f
6:                jal          ra, 15f
7:                jal          sp, 0b
8:                jal          ra, 22f
9:                jal          ra, 11f
10:               jal          ra, 1b
11:               jal          s6, 16f
12:               jal          sp, 9b
13:               jal          ra, 4b
14:               jal          tp, 18f
15:               jal          t1, 19f
16:               jal          s8, 2b
17:               jal          t1, 7b
18:               jal          t1, 20f
19:               jal          s1, 5b
20:               jal          ra, 3b
21:               jal          ra, 6b
22:               add          t1, t2, t2
sub_1_2:          jal          ra, 2f
0:                jal          ra, 12f
1:                jal          t3, 5f
2:                jal          ra, 4f
3:                jal          gp, 0b
4:                jal          ra, 8f
5:                jal          t1, 21f
6:                jal          t0, 1b
7:                jal          ra, 18f
8:                jal          ra, 20f
9:                jal          a1, 11f
10:               jal          ra, 17f
11:               jal          ra, 14f
12:               jal          t1, 6b
13:               jal          ra, 10b
14:               jal          ra, 3b
15:               jal          ra, 13b
16:               jal          a1, 23f
17:               jal          ra, 16b
18:               jal          ra, 19f
19:               jal          gp, 22f
20:               jal          ra, 7b
21:               jal          ra, 24f
22:               jal          ra, 15b
23:               jal          ra, 9b
24:               srli         sp, s6, 27
sub_1_21:         jal          ra, 22f
0:                jal          t1, 17f
1:                jal          s3, 23f
2:                jal          s1, 12f
3:                jal          ra, 13f
4:                jal          s4, 5f
5:                jal          a3, 14f
6:                jal          ra, 15f
7:                jal          ra, 18f
8:                jal          ra, 3b
9:                jal          ra, 11f
10:               jal          ra, 6b
11:               jal          ra, 21f
12:               jal          s8, 0b
13:               jal          ra, 16f
14:               jal          ra, 2b
15:               jal          ra, 20f
16:               jal          s10, 1b
17:               jal          ra, 7b
18:               jal          s3, 9b
19:               jal          t1, 10b
20:               jal          ra, 4b
21:               jal          t0, 8b
22:               jal          t4, 19b
23:               or           t5, sp, t5
sub_1_4:          jal          ra, 8f
0:                jal          ra, 11f
1:                jal          t1, 7f
2:                jal          ra, 12f
3:                jal          ra, 2b
4:                jal          ra, 3b
5:                jal          ra, 4b
6:                jal          t1, 10f
7:                jal          t1, 6b
8:                jal          ra, 0b
9:                jal          s6, 1b
10:               jal          t1, 5b
11:               jal          ra, 9b
12:               andi         a2, s4, 8
sub_1_11:         jal          ra, 17f
0:                jal          ra, 10f
1:                jal          ra, 0b
2:                jal          ra, 6f
3:                jal          s0, 16f
4:                jal          ra, 11f
5:                jal          tp, 1b
6:                jal          ra, 19f
7:                jal          ra, 14f
8:                jal          t1, 5b
9:                jal          s8, 3b
10:               jal          ra, 20f
11:               jal          s4, 12f
12:               jal          t1, 18f
13:               jal          ra, 8b
14:               jal          tp, 2b
15:               jal          ra, 4b
16:               jal          t1, 7b
17:               jal          t1, 9b
18:               jal          ra, 13b
19:               jal          ra, 15b
20:               xori         sp, t6, -1587
sub_1_18:         jal          ra, 13f
0:                jal          t1, 15f
1:                jal          ra, 3f
2:                jal          s0, 14f
3:                jal          s2, 9f
4:                jal          t1, 10f
5:                jal          t1, 17f
6:                jal          ra, 7f
7:                jal          s1, 23f
8:                jal          s7, 0b
9:                jal          t1, 22f
10:               jal          ra, 20f
11:               jal          ra, 12f
12:               jal          ra, 5b
13:               jal          a7, 4b
14:               jal          ra, 11b
15:               jal          a7, 18f
16:               jal          ra, 8b
17:               jal          sp, 6b
18:               jal          ra, 1b
19:               jal          t5, 16b
20:               jal          tp, 19b
21:               jal          s0, 2b
22:               jal          ra, 21b
23:               srai         t3, t0, 8
sub_1_7:          jal          ra, 9f
0:                jal          tp, 5f
1:                jal          a3, 7f
2:                jal          s7, 8f
3:                jal          s0, 14f
4:                jal          sp, 12f
5:                jal          t1, 6f
6:                jal          ra, 13f
7:                jal          ra, 0b
8:                jal          t1, 15f
9:                jal          t1, 1b
10:               jal          ra, 11f
11:               jal          s2, 4b
12:               jal          a3, 2b
13:               jal          t0, 3b
14:               jal          t1, 10b
15:               nop
sub_1_25:         jal          ra, 1f
0:                jal          ra, 14f
1:                jal          ra, 18f
2:                jal          ra, 0b
3:                jal          ra, 15f
4:                jal          tp, 8f
5:                jal          ra, 19f
6:                jal          ra, 5b
7:                jal          a1, 2b
8:                jal          t2, 7b
9:                jal          a5, 12f
10:               jal          ra, 9b
11:               jal          a5, 6b
12:               jal          ra, 17f
13:               jal          t1, 16f
14:               jal          ra, 13b
15:               jal          t1, 11b
16:               jal          t1, 3b
17:               jal          s5, 4b
18:               jal          a2, 10b
19:               andi         t5, zero, 1342
sub_1_27:         jal          ra, 0f
0:                jal          t1, 12f
1:                jal          s3, 15f
2:                jal          a3, 17f
3:                jal          ra, 18f
4:                jal          t0, 22f
5:                jal          ra, 16f
6:                jal          t0, 3b
7:                jal          ra, 23f
8:                jal          s1, 5b
9:                jal          ra, 6b
10:               jal          t4, 13f
11:               jal          s7, 19f
12:               jal          ra, 14f
13:               jal          tp, 4b
14:               jal          s11, 1b
15:               jal          t1, 2b
16:               jal          t1, 9b
17:               jal          ra, 10b
18:               jal          ra, 11b
19:               jal          ra, 20f
20:               jal          ra, 7b
21:               jal          ra, 8b
22:               jal          ra, 21b
23:               slt          s1, a5, t0
sub_1_22:         jal          ra, 3f
0:                jal          ra, 4f
1:                jal          t1, 8f
2:                jal          s1, 1b
3:                jal          t5, 2b
4:                jal          t1, 5f
5:                jal          tp, 9f
6:                jal          t1, 10f
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          ra, 7b
10:               ori          t5, s11, 1688
sub_1_10:         jal          ra, 19f
0:                jal          ra, 11f
1:                jal          t1, 23f
2:                jal          ra, 18f
3:                jal          a0, 24f
4:                jal          t1, 20f
5:                jal          ra, 21f
6:                jal          t1, 13f
7:                jal          sp, 9f
8:                jal          t1, 7b
9:                jal          ra, 2b
10:               jal          tp, 25f
11:               jal          ra, 22f
12:               jal          t1, 26f
13:               jal          t1, 10b
14:               jal          s11, 3b
15:               jal          ra, 8b
16:               jal          t1, 0b
17:               jal          ra, 4b
18:               jal          s3, 27f
19:               jal          s10, 6b
20:               jal          t1, 15b
21:               jal          t1, 16b
22:               jal          t1, 17b
23:               jal          ra, 14b
24:               jal          ra, 5b
25:               jal          sp, 12b
26:               jal          ra, 1b
27:               addi         s2, s10, -1581
sub_1_20:         jal          ra, 11f
0:                jal          t0, 6f
1:                jal          gp, 8f
2:                jal          s3, 0b
3:                jal          ra, 5f
4:                jal          t1, 13f
5:                jal          ra, 15f
6:                jal          a0, 14f
7:                jal          ra, 10f
8:                jal          t1, 7b
9:                jal          ra, 1b
10:               jal          t1, 12f
11:               jal          ra, 9b
12:               jal          ra, 4b
13:               jal          ra, 2b
14:               jal          ra, 3b
15:               srai         t2, a4, 13
sub_1_23:         jal          ra, 6f
0:                jal          t3, 11f
1:                jal          s3, 7f
2:                jal          gp, 0b
3:                jal          s1, 10f
4:                jal          sp, 2b
5:                jal          ra, 9f
6:                jal          ra, 3b
7:                jal          ra, 5b
8:                jal          ra, 4b
9:                jal          s11, 8b
10:               jal          ra, 1b
11:               sra          ra, s1, a2
sub_1_5:          jal          ra, 7f
0:                jal          ra, 2f
1:                jal          ra, 15f
2:                jal          tp, 10f
3:                jal          t1, 1b
4:                jal          t1, 6f
5:                jal          t1, 4b
6:                jal          ra, 16f
7:                jal          ra, 14f
8:                jal          t1, 20f
9:                jal          s5, 19f
10:               jal          ra, 18f
11:               jal          a0, 21f
12:               jal          s1, 5b
13:               jal          ra, 11b
14:               jal          s8, 9b
15:               jal          ra, 13b
16:               jal          t1, 0b
17:               jal          ra, 3b
18:               jal          ra, 17b
19:               jal          ra, 8b
20:               jal          ra, 12b
21:               srli         t5, ra, 2
sub_1_14:         jal          ra, 3f
0:                jal          t5, 7f
1:                jal          s6, 8f
2:                jal          tp, 4f
3:                jal          t1, 2b
4:                jal          ra, 1b
5:                jal          t1, 6f
6:                jal          ra, 9f
7:                jal          a1, 10f
8:                jal          s0, 5b
9:                jal          ra, 0b
10:               or           a3, a1, s6
sub_1_8:          jal          ra, 0f
0:                jal          ra, 7f
1:                jal          ra, 9f
2:                jal          t1, 11f
3:                jal          ra, 6f
4:                jal          s3, 2b
5:                jal          t5, 8f
6:                jal          ra, 10f
7:                jal          ra, 3b
8:                jal          t1, 4b
9:                jal          gp, 5b
10:               jal          ra, 1b
11:               slli         a1, t4, 26
sub_1_12:         jal          ra, 16f
0:                jal          ra, 21f
1:                jal          ra, 23f
2:                jal          t1, 0b
3:                jal          t1, 15f
4:                jal          t1, 18f
5:                jal          t1, 4b
6:                jal          s7, 8f
7:                jal          ra, 6b
8:                jal          ra, 9f
9:                jal          ra, 14f
10:               jal          ra, 17f
11:               jal          t0, 10b
12:               jal          ra, 24f
13:               jal          ra, 12b
14:               jal          sp, 11b
15:               jal          a1, 20f
16:               jal          ra, 5b
17:               jal          ra, 2b
18:               jal          ra, 1b
19:               jal          ra, 3b
20:               jal          ra, 7b
21:               jal          ra, 13b
22:               jal          t1, 19b
23:               jal          s8, 22b
24:               add          t4, s4, s0
sub_1_17:         jal          ra, 12f
0:                jal          ra, 7f
1:                jal          t5, 9f
2:                jal          s6, 10f
3:                jal          ra, 4f
4:                jal          t1, 13f
5:                jal          a4, 6f
6:                jal          ra, 14f
7:                jal          t1, 8f
8:                jal          a2, 2b
9:                jal          ra, 11f
10:               jal          a0, 5b
11:               jal          t1, 0b
12:               jal          ra, 3b
13:               jal          ra, 1b
14:               addi         a3, t2, -680
                  bltu         t2, ra, 5f
                  addi         s6, a6, 1255
                  slt          s8, t6, s9
                  bgeu         s4, s5, 8f
                  xori         a4, t1, 822
5:                lui          ra, 813836
                  xori         s1, t1, 797
                  and          a1, s3, s0
8:                sltiu        ra, a4, -122
                  ori          s10, a7, -1417
                  lui          a2, 259810
                  bge          t3, s2, 29f
                  add          gp, s10, gp
                  sra          gp, t6, s5
                  srai         s7, a7, 24
                  lui          a0, 414835
                  bge          a6, s8, 31f
                  add          s0, s0, s6
                  sll          tp, s0, a7
                  beq          t2, gp, 25f
                  slti         t5, s1, -663
                  or           a5, t0, a1
                  nop
                  add          zero, a0, t2
                  bne          a6, zero, 38f
25:               and          tp, tp, a5
                  andi         s6, zero, 1899
                  sra          a5, gp, s1
                  blt          a6, s2, 46f
29:               slti         a3, ra, -1082
                  andi         s7, a1, -1617
31:               nop
                  srli         t1, t4, 19
                  nop
                  srl          ra, s9, s1
                  sra          t1, a3, s1
                  sll          a2, t6, s0
                  beq          t4, ra, 57f
38:               srai         a1, a4, 14
                  sltu         t0, a4, s9
                  sll          t5, s5, s6
                  beq          s0, t6, 45f
                  slli         s11, s0, 23
                  ori          s11, a6, -891
                  sub          t5, a6, a7
45:               sll          s2, a5, s11
46:               nop
                  blt          s7, ra, 57f
                  slt          s5, s0, s10
                  bge          gp, s9, 59f
                  or           s4, s4, sp
                  nop
                  slt          s4, a7, t0
                  sll          s6, t1, a0
                  sltiu        tp, a4, 1656
                  and          s0, ra, sp
                  bgeu         s1, sp, 74f
57:               beq          a5, s10, 71f
                  sra          t1, gp, s3
59:               slti         s2, s2, 127
                  andi         s7, a7, 1065
                  bne          a0, t4, 74f
                  bgeu         t6, s2, 65f
                  sltiu        a5, a4, -1178
                  and          a0, t2, s8
65:               srai         a5, a3, 2
                  slt          ra, t1, s11
                  andi         a0, t2, -1778
                  slli         s4, t5, 30
                  add          t3, s7, t0
                  blt          ra, tp, 79f
71:               xori         s10, gp, 1331
                  slt          t5, s0, s1
                  add          zero, a7, a7
74:               sltu         t2, a5, sp
                  srai         s4, t5, 30
                  blt          a7, a2, 83f
                  slt          a2, s2, s0
                  add          a0, s9, a7
79:               slli         sp, a1, 4
                  add          s11, t3, a4
                  bne          t0, a7, 96f
                  xor          t4, s2, a1
83:               sll          a0, s10, s8
                  add          t5, t5, a2
                  beq          ra, zero, 99f
                  add          s11, s9, a0
                  beq          tp, s4, 90f
                  andi         s8, s3, -464
                  slli         gp, s11, 27
90:               sltiu        s6, a7, 1068
                  sub          s3, s5, s9
                  add          tp, a7, a6
                  and          s4, s2, sp
                  andi         zero, gp, -323
                  beq          s0, a6, 100f
96:               xor          sp, s9, a4
                  add          s8, a6, t5
                  bgeu         a5, ra, 116f
99:               sra          s10, a4, s5
100:              ori          s3, t0, 194
                  srl          zero, s5, s2
                  xor          s10, a1, a5
                  bgeu         s6, s5, 113f
                  bgeu         gp, s1, 119f
                  add          a5, t2, t2
                  ori          ra, s4, 403
                  sltu         a0, t4, a5
                  bge          ra, s1, 114f
                  srai         a0, s8, 19
                  slt          s8, t6, s11
                  sll          tp, t4, tp
sub_1_6:          jal          ra, 0f
0:                jal          s0, 12f
1:                jal          ra, 15f
2:                jal          ra, 14f
3:                jal          ra, 6f
4:                jal          t1, 9f
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          t0, 2b
8:                jal          t2, 11f
9:                jal          t0, 5b
10:               jal          ra, 1b
11:               jal          ra, 3b
12:               jal          ra, 4b
13:               jal          sp, 10b
14:               jal          ra, 13b
15:               slt          a7, s11, a4
                  or           t5, sp, a2
113:              slti         zero, a5, -1053
114:              bne          t2, s7, 123f
                  sub          a1, s11, a7
116:              bne          a6, a1, 118f
                  srli         s5, a5, 13
118:              blt          a5, a7, 120f
119:              sub          s5, s2, a1
120:              ori          a4, s9, 1150
                  sll          t1, a6, t1
                  sltu         a4, tp, gp
123:              slti         ra, t1, 597
                  slli         s6, t1, 9
                  sltiu        s8, t0, -411
                  bne          s10, a1, 138f
                  xori         zero, a1, -1382
                  and          a5, a3, sp
                  bne          t4, s2, 141f
                  andi         a3, t0, -673
                  sltu         s4, s10, s2
                  lui          a4, 328250
                  xori         sp, s1, -216
                  sltu         a5, s11, a4
                  bne          t1, s5, 149f
                  beq          s2, t1, 145f
                  sra          sp, a2, a4
138:              sra          a5, a1, a0
                  bge          a6, s11, 154f
                  sra          t4, s1, sp
141:              bgeu         s8, ra, 153f
                  addi         s4, a6, -898
                  xori         t2, s0, -1588
                  sltiu        t4, s1, -770
145:              blt          tp, a5, 151f
                  sltiu        a3, sp, -1071
                  sltiu        a2, tp, 616
                  bge          t5, s11, 150f
149:              srli         a2, tp, 9
150:              slt          a2, a7, zero
151:              xori         ra, s9, 661
                  srli         s10, sp, 3
153:              sltiu        t1, s9, -1902
154:              sra          s2, gp, s0
                  nop
                  blt          s9, tp, 162f
                  auipc        s11, 842316
                  lui          s6, 985520
                  or           s1, s0, s10
                  nop
                  andi         s0, s5, 242
162:              beq          s0, s6, 172f
                  andi         a0, gp, 1299
                  xor          s5, s1, s3
                  ori          a1, s8, -1488
                  xori         a7, s11, 1217
                  slli         s10, s3, 27
                  bgeu         gp, a6, 175f
                  andi         s3, s6, -1579
                  sub          a1, a5, a5
                  sll          a4, s0, s7
172:              or           s10, t1, t3
                  blt          s3, s9, 175f
                  or           s3, s1, s0
175:              sll          s0, t0, s6
                  bne          a6, t4, 194f
                  srl          s7, s1, s10
                  xori         s2, gp, -527
                  or           t1, a3, t0
                  lui          s0, 750718
                  and          t2, s9, s11
                  andi         a1, s0, 76
                  nop
                  slt          t0, a7, t2
                  xor          t4, t1, s10
                  sll          a1, a7, s7
                  srl          sp, a2, t0
                  bltu         s6, tp, 193f
                  srl          t4, a0, t2
                  sltiu        s2, a4, -1643
                  sra          a5, s9, t6
                  sltiu        a4, t3, 1037
193:              sltu         s5, s7, s8
194:              xor          a3, t6, s0
                  srl          t2, a5, s7
                  slt          a1, a1, t2
                  sub          s4, a1, tp
                  sra          sp, sp, a2
                  sltu         t5, a7, a7
                  and          s8, t5, s2
                  slti         t3, tp, -1806
                  sltiu        a2, s10, 168
                  addi         s5, s10, -854
                  slt          s4, ra, tp
                  add          t4, tp, s2
                  slti         s7, s8, -370
                  srli         a1, zero, 29
                  lui          a0, 20732
                  xor          s7, tp, s1
                  addi         t2, s0, -1972
                  addi         t4, tp, -442
                  and          s5, s7, a6
                  bgeu         a4, s4, 228f
                  slli         a4, t3, 15
                  sll          ra, sp, s6
                  sra          a0, t1, ra
                  sub          s3, t1, a5
                  blt          t0, s8, 236f
                  sra          s5, sp, a4
                  andi         s2, a1, -1049
                  ori          s7, s9, 733
                  slli         t5, tp, 24
                  lui          s5, 645916
                  srai         a5, tp, 18
                  sltiu        s8, gp, -1976
                  slt          a2, t4, s10
                  nop
228:              and          t2, ra, s4
                  bltu         s3, gp, 241f
                  bne          s11, t3, 248f
                  slli         s7, s8, 31
                  ori          zero, s2, 558
                  sra          ra, s10, s10
                  addi         s11, s7, -1729
                  bltu         a7, t6, 248f
236:              nop
                  slli         t5, s8, 20
                  beq          s3, s4, 252f
                  slt          t1, s0, s2
                  sll          s1, s2, a7
241:              sltiu        t0, s1, 2029
                  and          s11, zero, t5
                  sub          sp, a5, a2
                  lui          s0, 972466
                  srli         t3, s1, 0
                  slti         t4, a1, 1176
                  ori          s2, s9, -1863
248:              slti         s2, s10, -43
                  addi         s2, s1, 1264
                  srl          ra, sp, s3
                  sll          t2, s8, t1
                  xori         a2, a0, 1105
                  xor          s0, a4, s5
                  or           a3, t1, s3
                  la           s1, sub_3
                  andi         s5, t1, -1892
                  addi         s5, s4, 1711
                  addi         s1, s1, -337
                  srai         a5, s11, 14
                  slli         a4, s3, 26
                  xor          t2, t4, tp
                  ori          a5, a2, 2046
                  slli         s3, t5, 15
sub_1_j5:         jalr         ra, s1, 337 #jump sub_1 -> sub_3
252:              slt          t0, s5, a6
                  bne          t0, a5, 256f
                  bge          s1, t0, 264f
                  srli         ra, s11, 10
sub_1_13:         jal          ra, 5f
0:                jal          ra, 13f
1:                jal          ra, 12f
2:                jal          t1, 6f
3:                jal          t1, 9f
4:                jal          ra, 11f
5:                jal          ra, 8f
6:                jal          ra, 10f
7:                jal          t5, 14f
8:                jal          ra, 4b
9:                jal          ra, 2b
10:               jal          t1, 1b
11:               jal          ra, 3b
12:               jal          ra, 0b
13:               jal          ra, 7b
14:               slti         ra, a7, -703
256:              sub          gp, a1, s5
                  auipc        s1, 723010
                  lui          a2, 965397
                  srai         s3, t6, 13
                  xor          s10, s0, s4
                  sltu         s0, t2, s6
                  xor          t2, t2, a1
                  add          zero, s0, s4
264:              sltu         t5, a4, t0
                  addi         zero, t6, -179
                  blt          s11, a5, 270f
                  xor          s2, gp, t2
                  and          s1, s9, t4
                  srai         zero, t4, 23
270:              sltiu        s7, ra, 1699
                  xori         t0, t6, 1095
                  bltu         sp, a5, 282f
                  srli         a0, t1, 16
                  lui          a3, 659948
                  add          t2, t2, s0
                  or           s5, s3, a3
                  srai         s2, gp, 10
                  slt          sp, s2, s6
                  bge          a6, t3, 293f
                  slli         t1, a7, 10
                  srl          ra, sp, s8
282:              and          s11, a3, a3
                  slli         t4, t4, 10
                  bgeu         t1, t3, 304f
                  blt          gp, gp, 294f
                  sub          a0, sp, s5
                  nop
                  blt          tp, ra, 293f
                  sra          ra, s0, a3
                  srai         t4, t3, 18
                  slt          s5, s4, t5
                  lui          s4, 675967
293:              sltu         ra, a6, a2
294:              andi         a5, s10, 1774
                  bge          s8, a0, 298f
                  bne          ra, t1, 311f
                  sll          a2, a0, t2
298:              sub          t3, t0, s2
                  sltiu        t0, ra, -931
                  slli         a3, t3, 20
                  bltu         s6, a6, 319f
                  andi         a0, a7, -1666
                  sub          s0, sp, s2
304:              bne          t6, a0, 309f
                  add          gp, s1, s2
                  slli         zero, t6, 4
                  xori         ra, s5, -491
                  srli         a0, ra, 10
309:              beq          a5, s10, 314f
                  sub          t1, gp, s11
311:              addi         s1, t5, 655
                  sub          t1, s10, a1
                  srl          s5, ra, t6
314:              beq          a0, sp, 329f
                  srl          t3, a7, a1
                  addi         gp, ra, 697
                  sll          s10, a1, a3
                  sll          s11, s10, a3
319:              bgeu         s1, a5, 331f
                  srl          t1, t3, t3
                  or           s4, s9, t4
                  srai         t5, t4, 15
                  beq          a5, s3, 333f
                  andi         s5, t5, 688
                  sra          s5, ra, a2
                  and          s1, t3, t0
                  beq          a2, a0, 337f
                  srl          s10, a7, s5
329:              xor          s2, t6, s1
                  bge          a7, a3, 333f
331:              srai         s6, tp, 4
                  andi         a7, t6, 594
333:              slt          t5, a2, t0
sub_1_9:          jal          ra, 3f
0:                jal          s4, 20f
1:                jal          t1, 8f
2:                jal          sp, 5f
3:                jal          t1, 18f
4:                jal          ra, 14f
5:                jal          t0, 16f
6:                jal          t1, 15f
7:                jal          ra, 2b
8:                jal          gp, 7b
9:                jal          ra, 12f
10:               jal          s2, 19f
11:               jal          ra, 1b
12:               jal          ra, 11b
13:               jal          ra, 4b
14:               jal          ra, 0b
15:               jal          ra, 10b
16:               jal          s2, 17f
17:               jal          t1, 13b
18:               jal          ra, 6b
19:               jal          ra, 9b
20:               auipc        s4, 552223
                  beq          s1, a2, 347f
                  lui          t1, 537147
                  bgeu         t5, a6, 341f
337:              xori         s6, s4, -605
                  bge          a0, a2, 356f
                  or           s7, s11, a4
                  beq          t4, s1, 343f
341:              xori         a5, s7, 1647
                  add          tp, a7, t1
343:              add          s11, sp, a0
                  srl          s5, sp, gp
                  blt          s1, t2, 363f
                  blt          ra, s11, 348f
347:              sub          a3, s8, tp
348:              sll          t0, a1, t2
                  beq          s10, s5, 363f
                  blt          t1, a1, 352f
                  sltiu        s5, a3, 1816
352:              auipc        a2, 251207
                  srai         zero, t3, 11
                  addi         s8, t6, -1836
                  auipc        a4, 822561
356:              sltiu        s8, a7, -1126
                  sll          t5, sp, t5
                  sub          a0, zero, a5
                  sub          tp, t4, s6
                  bltu         a1, a1, 367f
                  bne          s6, t3, 379f
                  ori          a4, a6, 193
363:              sll          a7, a7, t2
                  or           t2, a4, s0
                  xor          a7, s10, s10
                  sltu         s0, zero, gp
367:              sra          a1, a5, t5
                  blt          s5, s5, 380f
                  sltu         s7, s8, t6
                  lui          tp, 322926
                  and          t2, t4, s11
                  xor          t3, zero, t2
                  srl          s6, s8, t0
                  xor          s3, s6, t1
                  srl          a2, s7, a2
                  sub          a4, a2, s5
                  or           sp, a0, s5
                  bne          s3, a2, 392f
379:              andi         s10, s5, -150
380:              add          a1, s11, a2
                  sub          s7, a4, a0
                  srl          zero, ra, s0
                  srl          sp, a2, s0
                  slt          zero, a1, s3
                  andi         s6, a6, -1422
                  sub          t1, s8, s6
                  bne          a0, s9, 391f
                  srl          ra, a2, a6
                  srl          s5, a2, s9
                  slt          tp, s1, a4
391:              bne          a0, t4, 411f
392:              blt          a2, s2, 397f
                  xori         t5, s7, 1555
                  slli         s6, a6, 1
                  beq          gp, s7, 404f
                  sub          t1, a5, tp
397:              bne          s2, t3, 403f
                  bltu         a2, a1, 413f
                  sra          s7, t5, t1
                  blt          s10, sp, 418f
                  and          s5, s11, a6
                  xori         t3, zero, 593
403:              auipc        sp, 682722
404:              lui          s4, 1033462
                  and          sp, a2, s8
                  bgeu         s2, s3, 412f
                  sll          t0, a2, s4
                  bne          s1, sp, 418f
                  sltu         t1, t6, s4
                  sra          t4, s5, s3
411:              srl          s10, t6, s5
412:              sltu         s2, ra, s11
413:              sltiu        s3, t3, 1189
                  andi         a4, s7, 1840
                  bgeu         a0, s8, 429f
                  srli         tp, t6, 3
                  sub          a2, a4, t3
418:              slti         a0, t2, 1266
                  blt          gp, ra, 428f
                  srl          s1, s4, t6
                  blt          s7, a2, 436f
                  sll          t4, s9, a5
                  slli         ra, s5, 23
                  slli         s1, zero, 20
                  ori          s8, s3, 1207
                  slli         a1, a5, 31
                  bne          s0, s9, 441f
428:              xor          t4, t0, s8
429:              srl          a3, t3, s1
                  bne          gp, a2, 450f
                  sltu         t1, t6, s9
                  or           s6, a4, sp
                  bltu         a0, s8, 443f
                  sll          a7, s4, a6
                  bltu         t5, s2, 439f
436:              nop
                  srai         a2, zero, 18
                  sltiu        a4, a0, 1749
439:              bltu         s0, gp, 452f
                  or           s10, s0, ra
441:              andi         s2, t2, 111
                  la           a5, sub_4
                  ori          tp, a2, -182
                  slli         s8, t4, 2
                  sub          a3, a2, s5
                  addi         a5, a5, 227
                  slt          a0, s3, a2
                  add          tp, ra, s10
                  or           t5, a7, s7
                  srai         s2, a1, 20
sub_1_j6:         jalr         ra, a5, -226 #jump sub_1 -> sub_4
                  sltiu        a7, a2, -544
443:              or           s4, s11, a6
                  slti         s0, s8, -1873
                  and          s7, tp, zero
                  sra          s2, s1, sp
                  bltu         a3, ra, 454f
                  add          a7, zero, sp
                  beq          s0, s6, 467f
450:              sub          sp, a2, t1
                  and          a0, gp, s9
452:              add          t3, a2, t5
                  and          a4, t2, t4
454:              and          t0, t5, t6
                  sltiu        t4, s2, -1685
                  bltu         a0, s6, 461f
                  sra          gp, t5, t1
                  slli         s5, s7, 24
                  ori          t3, s11, 437
                  add          a2, s11, zero
461:              lui          s0, 581209
                  beq          ra, s6, 476f
                  ori          t1, s6, 470
                  sra          s10, s8, gp
                  srli         s2, s3, 9
                  and          s11, t2, t6
467:              and          a1, s9, a2
                  or           s7, t2, s3
                  addi         a4, a6, -1005
                  slli         s4, a7, 29
                  sltu         a4, gp, a6
                  slli         t4, t4, 6
                  slli         a4, a7, 27
                  sra          a2, s3, a2
                  or           s1, a1, a4
476:              sll          t0, t0, s4
                  addi         a1, t1, 1080
                  ori          s11, s5, -219
                  blt          s0, tp, 482f
                  srli         tp, a7, 26
                  sra          s5, s11, gp
482:              beq          s0, a0, 487f
                  srl          t5, tp, a2
                  sltiu        s10, a7, -1435
                  slli         a1, t5, 14
                  bgeu         t2, a2, 498f
487:              and          s11, a4, zero
                  add          t4, s10, ra
                  sll          tp, ra, a0
                  or           s3, zero, sp
                  nop
                  sltu         a0, a7, s10
                  sltiu        t5, sp, 815
                  srli         t4, a4, 5
                  addi         s10, t0, -1181
                  sltiu        s0, a5, 1190
                  srl          s11, t1, s9
498:              sltu         t4, s5, a6
sub_1_3:          jal          ra, 3f
0:                jal          s0, 4f
1:                jal          ra, 5f
2:                jal          tp, 11f
3:                jal          a0, 6f
4:                jal          ra, 1b
5:                jal          ra, 8f
6:                jal          t1, 9f
7:                jal          ra, 0b
8:                jal          ra, 10f
9:                jal          t1, 7b
10:               jal          ra, 2b
11:               add          tp, a3, t2
                  sltu         t1, t5, s7
                  sll          s5, s9, a2
                  nop
                  sra          s0, a3, s4
                  slti         t1, sp, -940
sub_1_0:          jal          ra, 23f
0:                jal          ra, 13f
1:                jal          t1, 15f
2:                jal          ra, 17f
3:                jal          ra, 22f
4:                jal          ra, 12f
5:                jal          s3, 0b
6:                jal          ra, 19f
7:                jal          s7, 4b
8:                jal          t1, 16f
9:                jal          gp, 8b
10:               jal          ra, 25f
11:               jal          tp, 10b
12:               jal          ra, 24f
13:               jal          t1, 11b
14:               jal          ra, 18f
15:               jal          t1, 9b
16:               jal          ra, 2b
17:               jal          ra, 14b
18:               jal          ra, 5b
19:               jal          ra, 20f
20:               jal          tp, 26f
21:               jal          ra, 3b
22:               jal          ra, 1b
23:               jal          t1, 21b
24:               jal          t1, 6b
25:               jal          t3, 7b
26:               xor          s0, ra, s5
                  lui          ra, 119357
                  bne          sp, a2, 508f
                  addi         s4, s8, 731
                  slli         s5, s7, 5
508:              and          tp, s1, t5
                  addi         a0, zero, -979
                  sra          a5, t0, s5
                  andi         s11, a1, 1093
                  bne          t2, s8, 530f
                  and          s0, s4, t3
                  srli         a0, s3, 8
                  andi         a5, t0, 1007
                  sra          t3, t2, a6
                  andi         a4, t4, -1985
                  sll          a7, s4, s6
                  add          s7, s9, s5
                  xori         gp, t0, -1685
                  add          ra, sp, zero
                  sll          s4, a0, s1
                  ori          a4, s5, 1698
                  sll          t2, zero, s6
                  lui          s4, 227129
                  bltu         t1, s9, 535f
                  bgeu         gp, sp, 529f
                  addi         a2, t2, -549
529:              lui          t4, 399823
530:              and          t4, a5, s0
                  srai         zero, a2, 12
                  and          s6, t2, zero
                  beq          s4, s2, 542f
                  ori          s5, s5, -1612
535:              or           s8, s0, gp
                  sltiu        a5, s9, -1473
                  xori         s2, t5, 632
                  srai         a5, t2, 18
                  srai         s8, s9, 7
                  or           a3, ra, gp
                  nop
542:              and          s10, s11, a3
                  blt          s1, t1, 558f
                  and          t0, s4, s2
                  sub          t0, t2, s3
                  slt          s5, s5, t6
                  slli         t5, s3, 3
                  sll          a0, a1, t4
                  sltu         s5, zero, a2
                  srai         a1, t2, 1
                  ori          a3, a4, 136
                  sltiu        s6, a1, -2029
                  add          tp, t5, t3
                  nop
                  ori          s4, s10, -1472
                  addi         a7, s9, 1201
                  sub          s10, a5, s8
558:              addi         s4, a1, -263
                  blt          s9, a5, 577f
                  srli         s4, zero, 0
                  andi         a2, a0, 511
                  slt          s3, t4, a4
                  slt          t3, s9, t3
                  sltiu        s7, t2, -1913
                  sltu         a7, t4, s3
                  ori          zero, zero, 810
                  ori          s4, tp, 1726
                  bne          a0, t3, 583f
                  sll          a7, s0, t4
                  bne          t4, a2, 588f
                  and          s6, t4, t6
                  xor          s6, s7, s8
                  sra          gp, s5, s1
                  sra          s4, a1, ra
                  auipc        s4, 637921
                  srli         s0, a7, 21
577:              srai         zero, s0, 23
                  auipc        t1, 166131
                  slti         s8, s5, 1846
                  srl          s7, ra, s1
                  and          s10, s0, t4
                  or           gp, gp, s3
583:              srl          a5, tp, s11
                  beq          t1, a5, 586f
                  bne          s10, a3, 591f
586:              srl          a7, tp, a1
                  slt          a3, a1, s0
588:              sra          s10, s7, t0
                  bgeu         s2, a6, 599f
                  sltu         s10, t6, s9
591:              xor          t3, a1, s2
                  sra          a1, ra, s4
                  srai         t4, t4, 11
                  beq          t5, s0, 609f
                  andi         t2, a7, 435
                  bne          t1, tp, 602f
                  addi         s2, s2, -1921
                  nop
599:              xori         s8, t1, -1524
                  auipc        t5, 1036863
                  sra          sp, a7, s2
602:              ori          s5, a2, -197
                  xori         t3, t5, -1836
                  sll          s7, t4, a5
                  auipc        a7, 134900
                  sll          t5, a2, sp
                  xor          t2, s11, a1
                  bne          s9, sp, 620f
609:              sll          t1, s6, s7
                  beq          s5, a7, 615f
                  bgeu         s10, tp, 625f
                  srai         t1, a5, 16
                  bne          s0, t3, 623f
                  sltu         s11, s10, gp
615:              bne          zero, s2, 625f
                  sub          ra, s5, zero
                  beq          a7, a3, 632f
                  xor          zero, s7, t2
                  slt          s8, ra, a3
620:              sll          s10, tp, a6
                  sltu         a7, sp, gp
                  sll          t3, a6, s5
623:              bltu         s8, s11, 641f
                  bgeu         s4, s2, 639f
625:              lui          sp, 237928
                  bgeu         s5, sp, 638f
                  srai         sp, a1, 18
                  slli         s1, s0, 30
                  sltiu        s10, ra, 1361
                  slli         a0, s3, 13
                  add          gp, t2, s11
632:              srai         a2, a3, 15
                  xor          s11, s6, gp
                  xori         t0, a6, -1216
                  slti         s3, s11, -169
                  sll          s7, a0, a5
                  nop
638:              sra          s10, a6, zero
639:              nop
                  auipc        s2, 1027579
641:              sll          a5, gp, a7
                  sll          a5, a0, s11
                  bgeu         s1, s6, 656f
                  bltu         t3, s11, 650f
                  auipc        ra, 542073
                  andi         s11, a3, 150
                  bltu         s3, a4, 649f
                  blt          s9, t5, 655f
649:              andi         s1, s7, 1269
650:              slli         t1, a7, 4
                  bgeu         t5, a1, 661f
                  srai         t4, t1, 19
                  nop
                  beq          a3, t2, 666f
655:              sub          s2, s2, s6
656:              sra          a4, t2, s1
                  xori         sp, sp, -1055
                  add          t5, t4, tp
                  bge          t3, a0, 677f
                  bltu         s2, tp, 666f
661:              srl          t3, t4, s6
                  blt          t2, t3, 680f
                  xori         a7, t1, 1533
                  bge          s9, s9, 669f
                  or           s8, a2, t4
666:              bne          t0, zero, 675f
                  bgeu         t6, a0, 682f
                  sll          s0, a6, t4
669:              blt          gp, a1, 672f
                  auipc        s0, 502968
                  auipc        a2, 591488
672:              slt          s0, s3, a1
                  sll          s8, a7, s2
                  srai         t2, a4, 5
675:              ori          a1, t5, -384
                  bne          t1, s9, 696f
677:              nop
                  bgeu         s0, sp, 687f
                  add          s8, gp, a6
680:              bgeu         tp, a1, 684f
                  nop
682:              bne          sp, s4, 692f
                  lui          gp, 522405
684:              srai         sp, s6, 24
                  ori          s2, a5, -876
                  andi         tp, s11, -2009
687:              or           tp, s1, s0
                  add          t3, s7, t1
                  sub          s3, a5, t1
                  bge          s7, s9, 693f
                  srl          s11, tp, s5
692:              slli         a3, s1, 27
693:              xor          s11, a2, s8
                  sll          a0, a2, zero
                  bge          a5, s4, 709f
696:              srl          s2, a7, s0
                  auipc        a0, 279563
                  auipc        tp, 899887
                  lui          zero, 10585
                  nop
                  xori         a4, s8, -563
                  addi         a7, s9, 104
                  nop
                  slti         s3, s11, 16
                  slt          t1, t3, s3
                  bltu         s1, s1, 711f
                  xor          s11, a0, a4
                  beq          a0, a4, 726f
709:              bge          t6, t0, 723f
                  bge          zero, s11, 724f
711:              bgeu         s10, t3, 716f
                  beq          s1, t6, 714f
                  and          s0, s7, s8
714:              andi         a0, zero, -1426
                  add          t0, t3, a4
716:              srl          s11, ra, zero
                  ori          ra, s2, -409
                  bltu         s3, tp, 730f
                  slti         t5, t2, 746
                  addi         s8, s1, 973
                  lui          tp, 306907
                  andi         s2, t2, 1997
723:              add          a3, a7, t3
724:              slli         t1, a5, 27
                  xori         s2, s11, -1025
726:              bltu         s4, a6, 739f
                  nop
                  srai         t2, t4, 1
                  slli         a0, t0, 4
730:              lui          s0, 482176
                  srli         a1, t6, 11
                  sub          t0, s6, t2
                  andi         t1, s7, 988
                  sll          a4, a7, gp
                  sub          t2, zero, t4
                  nop
                  bne          s7, gp, 747f
                  bltu         a5, t2, 744f
739:              bltu         t3, t5, 754f
                  slt          t1, t1, sp
                  ori          t0, s9, 405
                  beq          s2, a4, 762f
                  ori          s3, zero, -681
744:              addi         tp, s7, -82
                  xori         a5, ra, -1496
                  auipc        tp, 615969
747:              add          a2, sp, s9
                  sub          s3, s3, t4
                  xori         s0, s4, -1716
                  bgeu         s0, a3, 764f
                  slli         a3, sp, 13
                  lui          zero, 178513
                  andi         s10, t2, -141
754:              lui          t3, 18179
                  lui          a0, 315761
                  xor          s10, sp, s7
                  srl          a7, zero, ra
                  sltiu        s2, s8, -1866
                  and          tp, t0, t3
                  addi         ra, gp, 1118
                  auipc        t3, 958640
762:              or           s3, ra, t4
                  srli         t5, a5, 28
764:              or           a4, a7, s11
                  xori         zero, s4, -615
                  bge          t6, tp, 776f
                  sub          s3, zero, s2
                  sub          ra, t6, s3
                  ori          a3, a1, 640
                  srli         s11, a3, 30
                  sltiu        a2, t3, -493
                  sll          a7, a1, a4
sub_1_16:         jal          ra, 20f
0:                jal          ra, 18f
1:                jal          gp, 17f
2:                jal          t1, 10f
3:                jal          t1, 14f
4:                jal          a7, 21f
5:                jal          t1, 8f
6:                jal          ra, 13f
7:                jal          a2, 4b
8:                jal          ra, 6b
9:                jal          ra, 3b
10:               jal          ra, 1b
11:               jal          ra, 2b
12:               jal          ra, 15f
13:               jal          ra, 7b
14:               jal          a0, 16f
15:               jal          a1, 9b
16:               jal          sp, 11b
17:               jal          ra, 19f
18:               jal          gp, 5b
19:               jal          s4, 0b
20:               jal          sp, 12b
21:               slti         a5, zero, -1155
                  sltu         s0, s7, a4
                  or           a1, s11, a5
                  nop
776:              srl          a7, s1, gp
                  sltu         a4, s2, a6
                  andi         s7, gp, -977
                  or           zero, a3, t6
                  or           a0, a2, s1
                  ori          t3, a2, 1883
                  xori         zero, t2, -705
                  blt          s6, a4, 788f
                  slli         a1, tp, 31
                  lui          a0, 360608
                  andi         tp, t1, 1568
                  srai         t5, zero, 10
788:              addi         ra, t4, -866
                  sltu         ra, s0, a1
                  slli         s1, s1, 1
                  addi         a3, t0, -1095
                  nop
                  slli         s7, a2, 29
                  slli         t2, a2, 8
                  beq          sp, gp, 804f
                  sub          s2, s2, s7
                  srai         gp, sp, 2
                  bne          a7, s7, 810f
                  slti         tp, tp, 1268
                  slt          s7, s8, s9
                  blt          s10, a1, 811f
                  sra          tp, s6, s10
                  blt          sp, s6, 810f
804:              auipc        t3, 442123
                  xori         s2, a2, 872
                  add          s8, s0, s4
                  sub          a1, a4, t5
                  srl          t0, a5, a4
                  or           t0, t4, a4
810:              slli         zero, s5, 6
811:              addi         zero, t2, -1970
                  blt          a3, t4, 814f
                  slt          s8, a2, a4
814:              xor          s4, t5, gp
                  bne          t4, t2, 820f
                  sll          t5, s6, s9
                  andi         s6, s10, 1586
                  auipc        t4, 713514
                  sll          a4, ra, a6
820:              srli         a3, sp, 30
                  srl          a3, a4, sp
                  andi         s10, s0, -1227
                  slt          t1, a2, a1
                  sra          s4, t4, s11
                  xori         s4, t6, -402
                  add          zero, s5, a4
                  ori          s7, s11, -903
                  add          s7, a4, s3
                  nop
                  blt          a0, s11, 844f
                  addi         s10, sp, 620
                  bge          a1, a2, 835f
                  xor          gp, a0, a1
                  andi         sp, a0, 733
835:              ori          tp, a5, -502
                  bne          t6, a7, 851f
                  auipc        s1, 876835
                  bge          a2, s0, 847f
                  auipc        t5, 330012
                  ori          gp, a2, -1263
                  bne          zero, ra, 843f
                  bge          gp, ra, 857f
843:              beq          a2, t4, 848f
844:              xori         a3, s5, 839
                  ori          t0, a1, 670
                  bltu         s0, ra, 864f
847:              andi         t0, a6, -1444
848:              blt          a4, t1, 851f
                  lui          s4, 44971
                  and          s2, a3, s11
851:              beq          a7, t5, 865f
                  slti         t0, a4, 767
                  srli         s7, s7, 14
                  sub          t1, sp, s6
                  slt          a4, a0, a4
                  addi         gp, s4, -988
857:              bgeu         t2, s8, 863f
                  bge          t5, a4, 876f
                  beq          a2, s5, 877f
                  sltu         a3, s1, t2
                  lui          s7, 548528
                  nop
863:              slli         t2, a7, 7
864:              bgeu         t6, gp, 868f
865:              sub          t3, s4, ra
                  sltu         t2, a4, sp
                  srli         zero, gp, 3
868:              sra          s10, t4, t4
                  ori          s1, a2, -1321
                  bgeu         s10, a6, 888f
                  lui          t2, 674602
                  xor          a1, t0, a5
                  xori         t0, sp, -542
                  sub          a3, s0, s2
                  bgeu         s10, t5, 893f
876:              slli         a3, s1, 17
877:              slti         sp, s7, 1591
                  ori          s11, sp, 1168
                  slt          s2, a4, a7
                  bgeu         gp, t4, 889f
                  and          a7, a0, zero
                  auipc        t1, 156705
                  addi         s6, s9, 663
                  and          s11, t6, a3
                  beq          s9, s6, 899f
                  or           s4, t5, gp
                  andi         a1, a0, -138
888:              xori         zero, a0, -962
889:              xor          s7, t4, a6
                  ori          t5, s7, -265
                  auipc        s11, 36966
                  sra          s0, a4, sp
893:              bltu         s4, s0, 897f
                  srl          a2, t1, t5
                  ori          a1, s1, -945
                  bltu         a4, a7, 910f
897:              andi         gp, s7, -1680
                  or           zero, t1, sp
899:              bltu         t4, a5, 919f
                  srl          t4, a4, ra
                  sub          t4, t3, s3
                  addi         a3, t4, 1325
                  sub          t1, t6, s6
                  xor          t4, s7, s4
                  nop
                  ori          tp, s6, -1555
                  add          s8, s2, s3
                  addi         s7, ra, -1690
                  bltu         t0, t0, 914f
910:              srai         tp, a7, 31
                  xori         s4, s5, -408
                  andi         a3, s3, 1355
                  srai         t3, s4, 19
914:              addi         s11, s10, 91
                  sll          s10, a0, a1
                  sltu         s5, a1, a7
                  srl          s0, t5, a1
                  beq          a4, s2, 931f
919:              sltiu        t4, t4, -1677
                  ori          t5, s7, 1946
                  bgeu         a5, tp, 931f
                  addi         t3, ra, -1392
                  and          a5, s4, a7
                  add          tp, gp, t4
                  andi         s0, s5, -1303
                  ori          a4, a7, 1154
                  addi         a1, ra, -1659
                  and          s0, s7, t6
                  addi         t1, t6, 505
                  beq          a6, s8, 940f
931:              bltu         t0, a6, 936f
                  or           s1, s9, ra
                  sll          s11, t0, t6
                  or           a5, s1, s8
                  lui          t3, 622257
936:              slli         t5, a1, 17
                  srai         t2, zero, 22
                  blt          a3, a4, 950f
                  xori         ra, s0, -751
940:              nop
                  slli         s3, gp, 7
                  srai         a4, zero, 18
                  bne          t4, a6, 948f
                  srli         a7, t1, 4
                  bne          s6, t5, 960f
                  bgeu         a3, t2, 949f
                  srai         ra, s9, 6
948:              bge          s2, t4, 957f
949:              and          s8, a3, t3
950:              lui          a4, 183975
                  srl          t1, s3, gp
                  ori          a0, a1, 937
                  sltu         a7, t0, gp
                  slt          sp, gp, s9
                  srl          sp, t3, zero
                  srli         s3, s9, 1
957:              ori          t4, t2, 1970
                  sltu         sp, t3, t1
                  addi         a1, s10, -1496
960:              bgeu         s4, a6, 978f
                  bge          a1, t1, 976f
                  beq          t3, t2, 980f
                  blt          t1, a1, 978f
                  sltu         s7, t0, a7
                  add          t1, s3, s7
                  srai         s10, s10, 31
                  sra          tp, tp, s1
                  srl          s5, a6, s9
                  sub          gp, zero, tp
                  slli         t3, s1, 28
                  nop
                  srl          a7, t1, s9
                  bgeu         a5, a0, 975f
                  sll          s8, s4, t5
975:              slt          a5, t2, t5
976:              ori          s4, a4, -1774
                  sub          a1, tp, a4
978:              and          gp, s10, s4
                  sub          t1, s2, zero
980:              xor          a4, ra, t0
                  sll          s7, s0, zero
                  blt          t6, t3, 989f
                  bltu         s7, t0, 989f
                  or           s6, s0, s10
                  or           s2, s8, t3
                  sltiu        tp, a1, -348
                  slt          a4, a0, s10
                  srai         ra, a5, 7
989:              lui          a7, 304543
                  xori         s4, s7, -1272
                  xor          t2, t3, s7
                  srl          a2, ra, t5
                  xori         s1, s2, 231
                  sra          gp, a6, s4
                  slti         ra, zero, -1857
                  srl          t3, s8, a1
                  sub          s11, s8, a6
                  or           s3, gp, sp
                  bne          t4, a5, 1002f
                  beq          s4, s1, 1006f
                  add          a4, t6, sp
1002:             sub          tp, s2, a7
                  slti         s3, s6, 1594
                  ori          a7, a0, 152
                  nop
1006:             and          s11, t1, gp
                  nop
                  srai         tp, t4, 30
                  nop
                  andi         t5, s7, 112
                  or           s8, t0, t4
                  slli         s10, s0, 12
                  andi         a1, zero, 720
                  sltiu        tp, sp, -1881
                  slti         s6, s1, 99
                  slti         gp, a5, 1515
                  slt          s0, a1, t4
                  xor          a5, gp, a2
                  srli         s7, a5, 29
                  nop
                  nop
                  or           s5, s2, s10
                  slt          s0, s9, s1
                  sra          s0, s10, t0
                  bgeu         s4, t4, 1043f
                  bltu         zero, s6, 1036f
                  sll          t5, s10, s7
                  and          a5, s7, t6
                  or           a5, t6, a6
                  auipc        t3, 348431
                  blt          t5, zero, 1033f
                  nop
1033:             auipc        s2, 12579
                  blt          s4, t2, 1048f
                  sltiu        tp, t1, -1614
1036:             addi         a3, s11, -207
                  bge          a1, a2, 1049f
                  bltu         s0, t4, 1045f
                  bgeu         s5, a2, 1049f
                  slt          s1, s6, gp
                  srl          t3, s9, zero
                  bltu         t0, t3, 1056f
1043:             xor          t2, s3, a0
                  bltu         t0, t5, 1049f
1045:             slt          a4, s4, ra
                  xori         a0, a6, 1987
                  or           s2, gp, t4
1048:             and          ra, a3, s9
1049:             or           a0, a5, a4
                  and          s5, t2, gp
                  slti         gp, a2, 1376
                  xori         tp, a0, 208
                  srli         s10, s0, 1
                  slli         gp, s10, 13
                  xor          s4, t0, s1
1056:             slt          s0, s1, a0
                  add          t2, t3, ra
                  and          s4, a6, t5
                  sltiu        s0, gp, 1935
                  bne          a2, s1, 1066f
                  andi         tp, t2, 60
                  andi         ra, s8, -361
                  ori          s4, a1, 1648
                  nop
                  srl          t0, t2, a7
1066:             add          a1, s5, gp
                  sll          a4, a0, sp
                  slt          a7, s4, a2
                  beq          s7, t6, 1084f
                  and          t1, a5, s11
                  srli         s11, a7, 10
                  and          a7, s7, zero
                  xori         a2, a4, -433
                  bge          a6, ra, 1089f
                  blt          s8, zero, 1090f
                  bltu         s10, zero, 1085f
                  srai         s2, t1, 13
                  xori         a7, a6, 138
                  srli         s0, s8, 17
                  slt          a2, t4, tp
                  nop
                  addi         s5, s0, -403
                  slt          a4, t3, s5
1084:             sub          s6, a0, s6
1085:             sub          s2, s4, a1
                  slti         a3, s11, 1317
                  srai         s1, zero, 1
                  lui          s7, 791077
1089:             srli         zero, a6, 8
1090:             slti         s0, t6, 1140
                  lui          zero, 904631
                  nop
                  sltu         t5, a6, zero
                  blt          a6, s6, 1100f
                  beq          s1, s11, 1100f
                  xori         a7, a4, 1359
                  slt          t3, s7, s2
                  auipc        s10, 361531
                  sltu         sp, t0, s4
1100:             bge          s3, tp, 1110f
                  sltu         sp, t6, a4
                  blt          s3, t1, 1120f
                  or           s6, s8, ra
                  and          t1, s0, s3
                  addi         a4, s1, -853
                  andi         s7, t6, -1520
                  bgeu         t4, t2, 1120f
                  srli         s7, s8, 31
                  la           a0, sub_5
                  xori         tp, s10, 1174
                  slti         t0, a3, 1509
                  addi         a0, a0, 907
                  srai         t3, t3, 6
                  bge          a3, a2, sub_1_j4 #branch to jump instr
                  or           t2, a6, tp
                  addi         s3, s9, 1644
sub_1_j4:         jalr         ra, a0, -906 #jump sub_1 -> sub_5
                  xori         a2, s6, 1070
1110:             slli         ra, t3, 30
                  xori         s1, t4, -529
                  nop
                  beq          s8, sp, 1122f
                  nop
                  blt          s7, t4, 1133f
                  srli         tp, a4, 13
                  blt          tp, t4, 1131f
                  srl          a0, a0, a3
                  sltiu        s11, t6, 1174
1120:             bgeu         a2, ra, 1134f
                  sll          t0, a1, a7
1122:             auipc        gp, 161182
                  andi         s4, a1, -502
                  bgeu         zero, s8, 1134f
                  srai         t2, s11, 27
                  srl          s1, s11, s6
                  add          s10, t0, s9
                  sltiu        t4, t0, -271
                  lui          a1, 710083
                  sll          zero, s8, gp
1131:             srli         s7, s11, 23
                  xor          a7, t5, a7
1133:             or           s10, a2, tp
1134:             sltu         s7, s0, t0
                  sltu         t4, a0, a7
                  lui          s7, 569305
                  andi         t1, s6, 612
                  nop
                  sltiu        a5, a4, -1729
                  andi         t2, s9, 1154
                  srl          s1, a4, s6
                  blt          a5, tp, 1154f
                  lui          t4, 726163
                  beq          s1, t4, 1148f
                  sltiu        ra, s2, 1493
                  slli         sp, s5, 13
                  add          a5, t0, a7
1148:             or           s4, t2, t3
                  blt          s2, a2, 1154f
                  srli         s7, a4, 31
                  addi         t3, a0, 57
                  blt          s8, a0, 1154f
                  slt          sp, t2, sp
1154:             bge          s9, s4, 1172f
                  slli         s10, t0, 10
                  slt          s0, s11, a1
                  slli         a1, s6, 18
                  and          s1, s0, s4
                  add          s2, ra, a5
                  andi         s7, t4, 1846
                  blt          t4, s2, 1163f
                  slt          s1, a3, a0
1163:             beq          t5, s7, 1181f
                  slt          t3, a5, t2
                  auipc        a0, 577575
                  slli         s0, s0, 14
                  xor          a2, zero, s1
                  srli         s2, t1, 31
                  xor          t1, ra, tp
                  sub          s8, a7, zero
                  sll          s3, s9, s8
1172:             slt          s2, a7, t5
                  sltiu        gp, a2, -1161
                  xori         s2, a7, -1037
                  or           s7, t5, a6
                  bge          t0, s0, 1179f
                  andi         s11, a2, -269
                  srli         s10, a7, 19
1179:             ori          t2, s2, 112
                  slt          s7, s0, t2
1181:             blt          a6, s1, 1201f
                  sltiu        t4, s7, 58
                  slt          s3, gp, s5
                  sltu         a7, ra, s6
                  lui          gp, 1009028
                  srli         t3, a4, 16
                  srai         t0, a3, 9
                  srl          s3, s4, a3
                  xori         s7, s3, 1908
                  auipc        tp, 133938
                  bge          t6, ra, 1203f
                  slti         tp, a1, 172
                  sltu         t1, gp, s5
                  sra          a5, a7, a7
                  blt          a4, t4, 1198f
                  nop
                  andi         s3, t5, 219
1198:             addi         t4, t2, 165
                  and          a2, t4, a2
                  andi         t4, tp, -1880
1201:             sltiu        t5, t3, 818
                  xor          s11, s1, ra
1203:             slli         s0, a5, 3
                  xor          a7, s11, s7
                  srli         s4, s5, 21
                  blt          s1, t2, 1209f
                  sll          s2, s7, t0
                  andi         a0, s10, -1274
1209:             sltiu        ra, s8, 50
                  and          a2, s2, t2
                  and          s11, a4, s2
                  slt          t2, s5, tp
                  bltu         sp, a0, 1218f
                  slti         tp, gp, -1141
                  slti         a7, a6, 531
                  or           s0, a4, s7
                  srl          zero, s1, s5
1218:             xor          s2, s9, s11
                  beq          tp, t2, 1234f
                  add          s8, s11, s10
                  bne          a7, a3, 1223f
                  slli         s3, tp, 27
1223:             sltiu        a7, t5, 2030
                  sltu         zero, t3, t1
                  nop
                  beq          a2, gp, 1229f
                  xor          a1, s11, a1
                  nop
1229:             slt          tp, s9, t5
                  sll          a2, gp, s2
                  or           a3, s8, s8
                  sltu         a1, a0, s5
                  andi         a3, t0, 1643
1234:             beq          s7, s6, 1248f
                  bge          a7, s11, 1241f
                  bltu         s10, a1, 1248f
                  addi         a7, s7, -1433
                  and          a1, a1, ra
                  sll          s3, s0, t5
                  sra          a3, s2, t2
1241:             sll          a5, sp, a6
                  ori          a5, t5, 1221
                  addi         s1, t3, -21
                  add          t0, a6, zero
                  xori         s2, sp, 263
                  sra          a7, sp, a1
                  srli         s7, a2, 19
1248:             and          t0, s6, s4
                  or           t0, s10, s2
                  or           a2, a3, s5
                  sub          a1, s5, s10
                  sltiu        s3, s10, -107
                  srai         a3, tp, 20
                  srl          zero, a0, gp
                  slli         a2, s0, 6
                  beq          s4, zero, 1263f
                  bge          t2, s8, 1271f
                  beq          a6, sp, 1267f
                  sltiu        s11, s10, 1196
                  sra          a7, s2, a7
                  srai         s2, t3, 26
                  xor          ra, s9, ra
1263:             sra          ra, a2, a0
                  add          a4, s0, t5
                  xori         ra, a7, -859
                  srli         a1, t5, 14
1267:             srli         t5, a0, 22
                  sll          s1, a5, zero
                  slt          a2, s7, a1
                  auipc        t3, 663944
1271:             srli         a1, sp, 10
                  bgeu         s11, s0, 1278f
                  auipc        a2, 385587
                  slt          s7, s4, a4
                  or           s6, ra, s0
                  xori         a4, t6, -1130
                  srai         zero, a6, 20
1278:             bne          a6, t5, 1293f
                  addi         tp, t6, -1535
                  addi         t1, s2, -951
                  beq          t2, s4, 1291f
                  beq          t4, a5, 1300f
sub_1_15:         jal          ra, 15f
0:                jal          ra, 16f
1:                jal          t5, 20f
2:                jal          ra, 7f
3:                jal          t1, 8f
4:                jal          ra, 1b
5:                jal          ra, 2b
6:                jal          tp, 14f
7:                jal          s11, 4b
8:                jal          t1, 9f
9:                jal          t1, 17f
10:               jal          ra, 23f
11:               jal          ra, 12f
12:               jal          ra, 0b
13:               jal          s7, 11b
14:               jal          ra, 19f
15:               jal          a3, 6b
16:               jal          t1, 18f
17:               jal          a7, 22f
18:               jal          ra, 26f
19:               jal          ra, 21f
20:               jal          ra, 10b
21:               jal          ra, 5b
22:               jal          ra, 25f
23:               jal          ra, 3b
24:               jal          s0, 13b
25:               jal          t0, 24b
26:               sltu         a3, t6, s5
                  bne          sp, t1, 1292f
                  sll          s0, s11, t5
                  auipc        s1, 338409
                  ori          t2, s6, 473
                  blt          a7, sp, 1300f
                  sltu         gp, a1, a4
                  srai         s11, s2, 20
                  slti         a5, a5, 1740
1291:             lui          s10, 416078
1292:             blt          s6, s0, 1297f
1293:             slt          s8, a0, a4
                  blt          t5, s11, 1314f
                  slli         a4, s10, 1
                  bge          t4, s9, 1311f
1297:             srli         t0, s3, 29
                  lui          t4, 256043
                  srl          s1, a1, s2
1300:             bltu         a5, s10, 1312f
                  srli         zero, t4, 19
                  addi         s8, s1, 937
                  xori         s1, a2, 94
                  srl          ra, t5, gp
                  sll          t2, t1, t6
                  sub          s11, s10, s2
                  sltiu        a7, a2, 766
                  nop
                  bge          a6, t6, 1311f
                  blt          t2, t2, 1324f
1311:             xor          a1, s8, s9
1312:             xori         a3, a7, 462
                  xor          t0, a6, a5
1314:             slli         s0, a2, 16
                  sll          s7, s10, t6
                  andi         a1, s0, 532
                  sltu         t5, s9, a4
                  auipc        s10, 4545
                  bgeu         s2, s3, 1329f
                  and          a3, a3, t0
                  xori         gp, t6, -2027
                  ori          t5, s1, 508
                  slti         s7, a7, -1059
1324:             sub          s10, s0, t4
                  bltu         s8, ra, 1343f
                  xor          a5, s3, s10
                  bne          tp, s5, 1332f
                  slt          s0, a6, a7
1329:             xori         zero, a1, -1121
                  lui          s10, 1046426
                  sra          s4, s7, a5
1332:             blt          s3, a1, 1336f
                  sll          s2, s9, t1
                  sub          s6, s6, zero
                  sra          s10, ra, s8
1336:             xori         gp, a0, 1115
                  xor          t0, sp, tp
                  sltiu        t4, a0, 1071
                  addi         s1, a7, 480
                  sltu         a1, s9, s6
                  sltu         s11, s3, s8
                  srai         gp, s11, 18
1343:             sra          zero, tp, s9
                  sub          s11, s4, a1
                  srai         s2, s6, 26
                  andi         s11, t2, -757
                  slti         a7, ra, -573
                  sltu         a2, a0, s0
                  nop
                  bne          s5, s1, 1360f
                  slt          s7, s11, s8
                  sltu         sp, s9, s6
                  or           a7, s8, s10
                  ori          a0, ra, 844
                  sll          s1, t5, s10
                  srai         tp, s9, 19
                  xori         s4, a1, 1376
                  lui          s2, 1032401
                  auipc        t1, 194477
1360:             beq          a3, a5, 1378f
                  or           t0, t4, zero
                  sltu         t3, s1, t4
                  bltu         gp, a6, 1381f
                  sll          zero, a7, s8
                  slli         t5, tp, 25
                  sltiu        ra, t4, -947
                  slli         a3, tp, 24
                  xor          t2, a0, t3
                  bgeu         s2, s6, 1387f
                  andi         s8, t4, 1577
                  sltu         tp, s7, s3
                  andi         t4, tp, -870
                  sltiu        s4, a1, 418
                  slt          a7, s7, s1
                  sltu         t3, s9, s6
                  sltu         a5, s0, t3
                  and          t1, t0, a6
1378:             sltu         a1, ra, s7
                  slti         a0, a4, -1409
                  beq          t2, a5, 1395f
1381:             or           sp, t1, s11
                  slli         s11, sp, 22
                  slti         ra, zero, -1850
                  nop
                  sltiu        ra, s2, 713
                  andi         ra, s4, 23
1387:             lui          gp, 892106
                  bgeu         tp, a5, 1403f
                  bgeu         t2, t1, 1407f
                  srai         t1, a7, 22
                  sltu         a4, sp, s0
                  nop
                  slt          t4, s2, a7
                  auipc        zero, 470030
1395:             srai         t3, a0, 23
                  nop
                  nop
                  sub          s8, gp, a7
                  bltu         zero, s7, 1401f
                  auipc        t1, 465260
1401:             addi         a1, s10, -1232
                  bge          s5, s6, 1404f
1403:             lui          t5, 101675
1404:             sra          a4, s5, a4
                  xori         t2, t0, -1911
                  beq          gp, s4, 1409f
1407:             and          gp, ra, a4
                  srai         t4, a7, 1
1409:             slt          zero, a7, s8
                  sltu         t0, s4, t3
                  sltu         s11, t2, s7
                  auipc        s2, 961490
                  nop
                  nop
                  ori          t1, ra, 1267
                  slt          gp, t0, s0
                  sltiu        t3, zero, -1986
                  auipc        s4, 82778
                  blt          tp, a4, 1425f
                  srli         s10, sp, 10
                  sub          t0, ra, a7
                  srli         s7, t2, 23
                  sltiu        tp, sp, -1087
                  sra          a5, s4, s8
1425:             bge          s6, a0, 1434f
                  lui          t0, 644065
                  add          t5, t1, a6
                  xor          a7, tp, t3
                  or           a5, s7, s3
                  bge          a6, s7, 1440f
                  sra          s2, sp, t0
                  srli         t5, t5, 28
                  add          gp, a1, a7
1434:             srl          t5, s11, s5
                  auipc        s3, 117918
                  auipc        s2, 692210
                  or           t1, sp, t6
                  slt          s5, s2, t3
                  or           a4, sp, s6
1440:             ori          a2, t0, -693
                  slli         s2, s10, 30
                  blt          t4, s5, 1445f
                  srl          t5, t4, a7
                  beq          a4, a5, 1445f
1445:             nop
                  sltu         s5, zero, s9
                  srl          tp, s4, s1
                  auipc        t3, 484890
                  sll          s10, s5, a2
                  srai         s11, a3, 27
                  lw           ra, 4(a6)
                  ori          tp, t4, 1876
                  andi         s5, a2, 1068
                  addi         a6, a6, 20
                  ori          a3, s10, -886
                  and          t0, s0, t0
2080:             addi x18, x1, 1
2080:             jalr x18, x18, 0
sub_4:            bge          tp, t2, sub_4_stack_p
sub_4_stack_p:    addi         a6, a6, -44
                  add          s2, a6, t1
                  slli         a5, s3, 27
                  sw           ra, 4(a6)
                  sll          a5, a1, t1
sub_4_5:          jal          ra, 12f
0:                jal          ra, 5f
1:                jal          ra, 17f
2:                jal          a0, 3f
3:                jal          ra, 19f
4:                jal          ra, 16f
5:                jal          s0, 23f
6:                jal          ra, 4b
7:                jal          t1, 0b
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          ra, 22f
11:               jal          ra, 13f
12:               jal          t1, 11b
13:               jal          ra, 7b
14:               jal          a4, 15f
15:               jal          ra, 9b
16:               jal          ra, 18f
17:               jal          ra, 20f
18:               jal          t1, 14b
19:               jal          a7, 24f
20:               jal          a3, 21f
21:               jal          ra, 2b
22:               jal          t0, 6b
23:               jal          ra, 8b
24:               auipc        s8, 328690
sub_4_2:          jal          ra, 0f
0:                jal          ra, 16f
1:                jal          ra, 10f
2:                jal          t1, 8f
3:                jal          s11, 2b
4:                jal          ra, 13f
5:                jal          ra, 3b
6:                jal          t2, 18f
7:                jal          ra, 14f
8:                jal          ra, 9f
9:                jal          t2, 7b
10:               jal          t0, 12f
11:               jal          ra, 4b
12:               jal          t1, 6b
13:               jal          ra, 1b
14:               jal          s6, 15f
15:               jal          tp, 11b
16:               jal          ra, 17f
17:               jal          ra, 5b
18:               srl          s3, t6, a5
sub_4_9:          jal          ra, 24f
0:                jal          t1, 10f
1:                jal          ra, 18f
2:                jal          ra, 27f
3:                jal          gp, 14f
4:                jal          s1, 21f
5:                jal          ra, 25f
6:                jal          a3, 7f
7:                jal          sp, 11f
8:                jal          t1, 4b
9:                jal          s2, 2b
10:               jal          a5, 26f
11:               jal          t1, 8b
12:               jal          t1, 6b
13:               jal          ra, 22f
14:               jal          t1, 23f
15:               jal          ra, 19f
16:               jal          t1, 9b
17:               jal          s6, 3b
18:               jal          ra, 5b
19:               jal          ra, 1b
20:               jal          ra, 16b
21:               jal          ra, 15b
22:               jal          t0, 0b
23:               jal          ra, 13b
24:               jal          s10, 12b
25:               jal          a0, 17b
26:               jal          s11, 20b
27:               sll          a3, a2, t4
sub_4_12:         jal          ra, 3f
0:                jal          ra, 2f
1:                jal          ra, 6f
2:                jal          ra, 12f
3:                jal          t1, 1b
4:                jal          t1, 8f
5:                jal          ra, 11f
6:                jal          ra, 0b
7:                jal          ra, 4b
8:                jal          ra, 10f
9:                jal          t1, 13f
10:               jal          ra, 5b
11:               jal          t1, 9b
12:               jal          t1, 7b
13:               slt          a5, t2, a6
sub_4_1:          jal          ra, 19f
0:                jal          ra, 4f
1:                jal          sp, 3f
2:                jal          ra, 10f
3:                jal          ra, 0b
4:                jal          t1, 2b
5:                jal          t1, 6f
6:                jal          ra, 12f
7:                jal          ra, 20f
8:                jal          ra, 21f
9:                jal          sp, 25f
10:               jal          a5, 14f
11:               jal          s8, 1b
12:               jal          ra, 24f
13:               jal          ra, 7b
14:               jal          ra, 26f
15:               jal          gp, 16f
16:               jal          ra, 11b
17:               jal          ra, 18f
18:               jal          t1, 13b
19:               jal          ra, 22f
20:               jal          ra, 5b
21:               jal          t1, 27f
22:               jal          ra, 17b
23:               jal          ra, 9b
24:               jal          ra, 23b
25:               jal          t5, 15b
26:               jal          a4, 8b
27:               auipc        t2, 267449
sub_4_7:          jal          ra, 13f
0:                jal          sp, 6f
1:                jal          ra, 10f
2:                jal          ra, 1b
3:                jal          ra, 16f
4:                jal          ra, 14f
5:                jal          ra, 0b
6:                jal          ra, 9f
7:                jal          t1, 5b
8:                jal          ra, 15f
9:                jal          sp, 4b
10:               jal          t1, 12f
11:               jal          t1, 3b
12:               jal          ra, 11b
13:               jal          s6, 7b
14:               jal          gp, 8b
15:               jal          ra, 2b
16:               ori          s8, s5, -649
sub_4_6:          jal          ra, 8f
0:                jal          t3, 2f
1:                jal          sp, 17f
2:                jal          s1, 16f
3:                jal          ra, 10f
4:                jal          a7, 14f
5:                jal          t1, 0b
6:                jal          ra, 15f
7:                jal          tp, 3b
8:                jal          ra, 13f
9:                jal          t2, 4b
10:               jal          s4, 12f
11:               jal          t1, 6b
12:               jal          t1, 9b
13:               jal          t1, 5b
14:               jal          ra, 1b
15:               jal          t1, 7b
16:               jal          ra, 11b
17:               sltiu        s6, a7, -698
sub_4_4:          jal          ra, 8f
0:                jal          ra, 9f
1:                jal          ra, 20f
2:                jal          a5, 18f
3:                jal          ra, 17f
4:                jal          ra, 3b
5:                jal          ra, 15f
6:                jal          s0, 12f
7:                jal          s5, 10f
8:                jal          s5, 2b
9:                jal          ra, 5b
10:               jal          ra, 19f
11:               jal          s8, 21f
12:               jal          ra, 14f
13:               jal          a3, 11b
14:               jal          ra, 4b
15:               jal          a7, 7b
16:               jal          s0, 13b
17:               jal          ra, 1b
18:               jal          t1, 0b
19:               jal          a4, 6b
20:               jal          ra, 16b
21:               slti         a4, a1, -1041
sub_4_10:         jal          ra, 1f
0:                jal          ra, 13f
1:                jal          ra, 6f
2:                jal          t1, 5f
3:                jal          ra, 10f
4:                jal          ra, 3b
5:                jal          ra, 0b
6:                jal          t1, 12f
7:                jal          ra, 9f
8:                jal          ra, 4b
9:                jal          a3, 2b
10:               jal          s1, 7b
11:               jal          ra, 8b
12:               jal          ra, 11b
13:               nop
sub_4_8:          jal          ra, 22f
0:                jal          ra, 21f
1:                jal          ra, 12f
2:                jal          ra, 15f
3:                jal          tp, 11f
4:                jal          t1, 16f
5:                jal          s0, 7f
6:                jal          t1, 20f
7:                jal          t1, 6b
8:                jal          t1, 26f
9:                jal          t1, 18f
10:               jal          ra, 19f
11:               jal          t4, 14f
12:               jal          ra, 3b
13:               jal          ra, 0b
14:               jal          ra, 2b
15:               jal          ra, 17f
16:               jal          ra, 23f
17:               jal          ra, 10b
18:               jal          ra, 5b
19:               jal          ra, 9b
20:               jal          t1, 13b
21:               jal          tp, 25f
22:               jal          ra, 1b
23:               jal          ra, 8b
24:               jal          sp, 4b
25:               jal          ra, 24b
26:               andi         a3, s11, -1305
                  xor          s1, a1, s8
                  beq          a0, s6, 8f
                  sra          s8, s10, s4
                  add          t5, s1, s9
                  bne          zero, t6, 14f
                  auipc        gp, 163058
                  slli         zero, t5, 28
                  and          gp, t0, zero
8:                sra          t5, s5, s2
                  sra          t4, a4, s0
                  nop
                  addi         s2, s5, 1264
                  sub          zero, gp, s4
                  lui          a2, 759154
14:               srai         s10, ra, 4
                  bne          s6, a5, 23f
                  lui          a7, 48221
                  bne          s9, s10, 25f
                  xori         t5, a5, -102
                  auipc        a5, 268788
                  bgeu         t6, s3, 21f
21:               nop
                  ori          a3, a1, -1093
23:               or           a1, s5, a6
                  xori         gp, s7, -1408
25:               sra          t5, a7, s2
                  ori          s11, a3, 1462
                  bge          sp, s9, 40f
                  addi         a1, zero, -555
                  or           sp, s11, a6
                  bne          s11, a7, 32f
                  sltu         s2, tp, s9
32:               lui          ra, 240445
                  sltiu        s4, gp, 1412
                  slti         tp, t1, -1953
sub_4_11:         jal          ra, 14f
0:                jal          t0, 22f
1:                jal          ra, 19f
2:                jal          ra, 28f
3:                jal          t1, 23f
4:                jal          ra, 11f
5:                jal          ra, 24f
6:                jal          t1, 3b
7:                jal          ra, 10f
8:                jal          ra, 7b
9:                jal          ra, 1b
10:               jal          ra, 18f
11:               jal          s7, 17f
12:               jal          ra, 6b
13:               jal          ra, 8b
14:               jal          a3, 20f
15:               jal          ra, 13b
16:               jal          ra, 26f
17:               jal          ra, 27f
18:               jal          ra, 29f
19:               jal          ra, 25f
20:               jal          s5, 9b
21:               jal          ra, 2b
22:               jal          sp, 16b
23:               jal          ra, 4b
24:               jal          ra, 0b
25:               jal          ra, 21b
26:               jal          ra, 15b
27:               jal          gp, 5b
28:               jal          s3, 12b
29:               andi         s0, a3, -1583
                  sltu         s7, t4, a3
                  blt          s3, s9, 37f
37:               bgeu         s7, s1, 53f
                  bltu         s3, s5, 50f
                  sltu         gp, s0, s10
40:               xor          a2, a7, tp
                  blt          s2, s2, 59f
                  srl          t1, s5, s3
                  xor          s4, t0, s10
sub_4_3:          jal          ra, 2f
0:                jal          ra, 15f
1:                jal          t1, 6f
2:                jal          a0, 12f
3:                jal          ra, 1b
4:                jal          t1, 14f
5:                jal          ra, 7f
6:                jal          s6, 4b
7:                jal          t1, 3b
8:                jal          ra, 11f
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          a0, 13f
12:               jal          ra, 10b
13:               jal          ra, 9b
14:               jal          t1, 8b
15:               sltu         s1, gp, tp
                  slt          gp, s10, s3
                  slli         s0, a4, 20
                  sll          t1, a3, a7
                  xor          s11, tp, a2
                  auipc        a1, 76377
                  andi         s2, s9, -1659
50:               ori          a5, t3, -1075
                  blt          s9, t5, 53f
                  nop
53:               slli         t2, s7, 4
                  and          s3, t4, s7
                  or           s5, zero, gp
                  sra          s6, t0, zero
                  srli         t2, sp, 21
                  xori         t5, s0, 1378
59:               beq          a7, a1, 77f
                  or           t3, s3, s0
                  auipc        s0, 128883
                  slt          t5, s1, gp
                  or           s8, t0, sp
                  lui          t2, 303934
                  or           tp, a4, t5
                  bgeu         t5, a2, 78f
                  sltu         a2, zero, t5
                  blt          s1, a1, 82f
                  or           ra, t2, a5
                  srai         gp, t6, 22
                  sub          s5, s8, a1
                  slti         a7, s11, 1955
                  bne          gp, s0, 83f
                  sltiu        a7, a3, 1993
                  srl          s8, sp, s7
                  beq          a2, a1, 84f
77:               srai         zero, s1, 20
78:               ori          gp, a4, -578
                  bne          a7, t5, 86f
                  slti         t0, t1, -1243
                  srl          s7, zero, s7
82:               slt          s11, t3, t4
83:               ori          a4, a4, -118
84:               xor          s5, s2, s2
                  bge          s0, s10, 91f
86:               or           zero, zero, t1
                  sltiu        s11, a7, -533
                  sll          s3, t3, s1
                  xori         t2, a3, -770
                  slli         t2, t0, 4
91:               slti         s5, s5, 1146
                  srl          t2, s3, t5
                  sub          s8, t5, s4
                  bltu         s10, a5, 109f
                  lui          a0, 340074
                  xori         s0, t0, 1861
                  srai         s2, a5, 19
                  and          s2, t5, s4
                  bge          s9, a2, 117f
                  beq          t0, t3, 114f
                  bne          zero, s6, 121f
                  slt          s1, a3, a3
                  srli         s8, tp, 20
                  lui          a2, 1027892
                  addi         a0, ra, 1165
                  xori         t4, t3, -105
                  and          s4, ra, a1
                  slli         t0, t2, 12
109:              or           a7, s6, s0
                  bge          s10, tp, 115f
                  srai         t1, s2, 20
                  slli         s3, zero, 12
                  add          t4, t6, a7
114:              or           ra, tp, s10
115:              and          s7, tp, s5
                  lui          t1, 697797
117:              xor          gp, sp, t2
                  blt          s8, s10, 119f
119:              bgeu         a0, t3, 138f
                  andi         tp, s5, 874
121:              srl          t4, ra, a2
                  add          s6, s7, s0
                  slli         t4, s11, 18
                  slt          t4, s2, t2
                  lui          a1, 408594
                  slti         a3, a5, -1986
                  slt          t2, a3, s3
                  auipc        s10, 609697
sub_4_0:          jal          ra, 12f
0:                jal          t1, 6f
1:                jal          t1, 7f
2:                jal          a0, 11f
3:                jal          t1, 4f
4:                jal          ra, 13f
5:                jal          ra, 16f
6:                jal          ra, 19f
7:                jal          sp, 17f
8:                jal          t1, 9f
9:                jal          t1, 14f
10:               jal          ra, 3b
11:               jal          ra, 21f
12:               jal          a3, 10b
13:               jal          ra, 15f
14:               jal          ra, 18f
15:               jal          t1, 8b
16:               jal          ra, 20f
17:               jal          t1, 2b
18:               jal          t1, 5b
19:               jal          s3, 1b
20:               jal          t1, 0b
21:               or           a5, s6, gp
                  and          s2, s11, a2
                  sltu         a3, s4, a3
                  slti         s10, s4, 1668
                  add          sp, s3, s0
                  slt          a7, t3, s2
                  bne          t3, t3, 150f
                  addi         a4, t5, 487
                  sltiu        a0, gp, -1935
                  xor          tp, tp, sp
138:              bne          s5, tp, 139f
139:              and          ra, s3, s0
                  ori          s10, a6, 2002
                  nop
                  blt          s11, a6, 154f
                  slli         s2, a5, 12
                  sltiu        a0, s10, 867
                  srai         tp, ra, 11
                  srl          gp, t3, ra
                  srai         zero, a7, 12
                  auipc        s1, 77106
                  bgeu         t2, s8, 165f
150:              nop
                  beq          s11, t0, 152f
152:              ori          s2, sp, -2003
                  sll          s3, t4, s5
154:              sub          s7, a7, zero
                  sltiu        t4, s1, 2015
                  nop
                  and          s8, s7, sp
                  srai         t1, tp, 17
                  addi         t2, s3, -545
                  slt          a2, gp, a0
                  and          a3, t2, a5
                  bgeu         s11, s6, 167f
                  slti         t4, s0, -604
                  slti         a7, t0, 676
165:              sll          t1, tp, a5
                  bltu         t1, s8, 178f
167:              xor          a5, s7, t1
                  or           s1, ra, gp
                  beq          t4, t4, 182f
                  andi         s7, s0, -1381
                  blt          t2, s10, 178f
                  nop
                  slti         s6, sp, 880
                  srl          s5, a3, s7
                  srli         s1, s5, 9
                  and          s1, a0, t6
                  addi         a3, gp, -972
178:              add          sp, a0, t5
                  sub          t0, s9, t0
                  lui          gp, 854333
                  and          a2, a4, s11
182:              slti         a1, ra, -143
                  bge          zero, t5, 199f
                  lui          sp, 844478
                  bltu         s3, a0, 203f
                  bgeu         a2, t3, 198f
                  slt          t3, s7, s6
                  bne          s2, s0, 194f
                  sltiu        s8, t3, -1470
                  sll          t3, s3, s7
                  srl          s10, s0, a5
                  sltiu        a0, ra, 1164
                  blt          a3, zero, 211f
194:              sra          a4, a2, t2
                  sub          a7, a5, sp
                  blt          zero, a0, 214f
                  slti         s8, s6, 1531
198:              slti         gp, a3, 1350
199:              addi         a0, a0, 974
                  slti         s4, tp, 1613
                  slli         a4, s10, 10
                  ori          t1, gp, 1281
203:              nop
                  slt          s0, s4, a7
                  sll          a4, t4, a3
                  or           s1, s11, s6
                  srai         s6, s7, 20
                  slt          s7, a1, t1
                  beq          s4, ra, 217f
                  xori         s4, s9, -352
211:              sltiu        a0, a5, 1119
                  bltu         s4, s6, 213f
213:              ori          s6, s5, 1278
214:              bltu         t2, s8, 234f
                  srl          gp, a5, a3
                  srli         tp, s1, 3
217:              sra          a0, t2, t6
                  sltu         s0, a0, a3
                  bne          a4, s2, 233f
                  slt          s2, zero, a3
                  sra          t0, a4, t0
                  beq          ra, a4, 224f
                  lui          zero, 861068
224:              xor          t3, s5, ra
                  and          s2, tp, s6
                  sltu         zero, gp, t5
                  auipc        ra, 778958
                  srl          s1, t6, s8
                  sltiu        s0, s1, -2015
                  xori         a0, s4, 1808
                  bltu         zero, t4, 238f
                  slti         t2, gp, -1577
233:              bgeu         s11, t5, 247f
234:              slli         tp, a7, 6
                  srli         t0, ra, 4
                  srl          a0, s9, a5
                  and          a1, t6, s9
238:              srli         a0, zero, 22
                  add          t4, s8, gp
                  add          s7, s6, zero
                  auipc        s11, 733721
                  or           s0, s9, s1
                  slli         s1, t2, 26
                  beq          tp, s10, 245f
245:              lui          a0, 132459
                  lui          s4, 300836
247:              lui          a4, 214567
                  ori          s11, t5, 1317
                  srli         zero, a4, 25
                  bgeu         t6, s2, 252f
                  sltu         a5, s0, t6
252:              sltu         tp, sp, t2
                  sll          s3, a6, zero
                  addi         s6, a4, -972
                  xori         s6, s9, -801
                  bne          a7, s9, 275f
                  auipc        ra, 833895
                  sra          gp, gp, t3
                  sra          t0, s11, s6
                  sltiu        s3, tp, -1953
                  nop
                  srli         s7, ra, 11
                  bne          s11, s0, 264f
264:              slti         t5, t4, 444
                  and          a5, s3, t5
                  bgeu         t0, t3, 276f
                  slli         a5, s11, 0
                  beq          s8, s8, 284f
                  sll          tp, s7, s8
                  sub          s7, zero, gp
                  sll          a5, a4, s4
                  and          a5, s1, t1
                  sltiu        ra, a7, -346
                  srai         s4, a7, 15
275:              xori         ra, t1, 1200
276:              addi         s2, tp, -1831
                  xor          zero, s9, a2
                  srl          s1, s10, s0
                  srai         t4, t1, 26
                  or           t5, t4, sp
                  add          sp, ra, s6
                  xor          t5, s4, t1
                  slti         ra, s11, -1274
284:              slli         t3, t3, 22
                  ori          t3, t1, -385
                  sra          a4, a3, a4
                  and          a2, s7, s4
                  andi         s2, a3, -1354
                  nop
                  beq          gp, t3, 305f
                  bge          t3, t2, 301f
                  srai         zero, s0, 31
                  blt          a6, t4, 301f
                  ori          t3, s9, -1443
                  addi         a7, t5, 547
                  bge          ra, s11, 312f
                  sltu         sp, t6, t0
                  bne          a1, sp, 310f
                  srli         a2, a6, 22
                  lui          s2, 133151
301:              ori          s11, t4, 895
                  add          s10, sp, s3
                  lui          t3, 1016380
                  slt          a4, s2, s8
305:              xor          t5, t3, ra
                  sltiu        t5, s3, -1042
                  ori          tp, gp, 1269
                  add          a3, ra, ra
                  sll          s10, a4, a1
310:              add          s7, s3, s4
                  andi         s10, s2, 1447
312:              andi         t1, t5, -1170
                  sll          s3, a2, a1
                  ori          a0, t0, 910
                  xor          s7, t6, t1
                  nop
                  bge          ra, s10, 325f
                  or           s5, s11, tp
                  slti         t4, s4, 1361
                  bne          tp, s5, 332f
                  nop
                  andi         a3, a4, -577
                  lui          a5, 674888
                  slti         s6, s0, -455
325:              srl          a5, sp, a4
                  and          sp, s9, s7
                  sra          t4, a7, t0
                  sltu         s0, a2, s9
                  sub          s4, s11, s9
                  bgeu         s11, s6, 331f
331:              and          gp, a4, a0
332:              bltu         a2, t2, 348f
                  sltu         s4, s1, s6
                  xori         t5, ra, -643
                  andi         ra, t6, 96
                  beq          t0, s6, 351f
                  bge          s6, s0, 351f
                  or           s3, a1, a6
                  xori         s11, a0, -1609
                  nop
                  sub          s1, a5, a1
                  bne          t3, a6, 362f
                  addi         t0, t4, -1319
                  srl          s10, s10, a1
                  slti         t4, a5, 1356
                  lui          a2, 836407
                  beq          t2, a3, 349f
348:              lui          s4, 507422
349:              nop
                  add          a0, a5, a3
351:              auipc        s1, 612562
                  beq          a7, s0, 358f
                  sra          s2, t3, a2
                  bgeu         a0, gp, 366f
                  bgeu         a6, t6, 363f
                  srl          zero, s7, a6
                  srli         s7, ra, 15
358:              andi         s2, s9, -1868
                  lui          s5, 927528
                  lui          t3, 562449
                  bne          s9, s9, 371f
362:              sltu         a0, a0, a1
363:              blt          ra, a3, 364f
364:              sltu         tp, a3, t1
                  or           t4, s8, a3
366:              sltu         a0, s7, s1
                  auipc        a0, 977502
                  slli         s8, s3, 4
                  blt          s0, t1, 376f
                  blt          t1, a3, 388f
371:              slt          a0, a0, sp
                  slli         t2, t3, 26
                  srli         t2, gp, 16
                  bltu         s8, ra, 393f
                  ori          t5, s9, -917
376:              ori          s2, s4, 94
                  sltiu        t3, tp, -618
                  bltu         zero, a2, 396f
                  and          ra, a5, s3
                  andi         sp, s8, 1396
                  bltu         s7, t2, 397f
                  srai         a5, t5, 4
                  andi         s1, a4, 2036
                  andi         a5, t2, -270
                  nop
                  addi         a7, s2, 1017
                  sll          s6, tp, s3
388:              sltu         a0, s2, t5
                  auipc        a3, 146419
                  slti         gp, t5, -469
                  slt          s7, s8, a3
                  add          t4, s1, t4
393:              srl          a1, t0, s7
                  sub          s8, s2, sp
                  xor          t0, s4, gp
396:              slt          t0, a7, a1
397:              auipc        a0, 964563
                  andi         s4, sp, 832
                  add          s6, a2, s4
                  srli         s6, t2, 5
                  bltu         tp, t1, 413f
                  bge          a2, s11, 418f
                  bgeu         ra, s0, 404f
404:              slti         t1, s8, 1707
                  sra          t2, s3, a2
                  addi         s8, tp, 1874
                  sub          t2, sp, t4
                  sll          a3, s2, s9
                  slli         t0, a1, 22
                  slli         s7, s3, 8
                  srl          s11, ra, t5
                  slti         s3, t4, -687
413:              sub          t1, tp, t4
                  add          gp, s7, s1
                  xor          a4, tp, s2
                  auipc        tp, 44755
                  nop
418:              bge          s6, s2, 425f
                  srai         s8, s4, 26
                  sra          t2, s4, s8
                  andi         s10, t1, -1366
                  bge          a2, t1, 440f
                  nop
                  andi         a5, t4, -1843
425:              sll          s5, a0, t5
                  ori          s10, t0, 467
                  srl          s4, sp, s6
                  and          a3, a0, s11
                  nop
                  auipc        a5, 1012318
                  sub          s4, t3, s4
                  srl          t1, a3, t1
                  srli         gp, t1, 25
                  slli         a7, a1, 0
                  addi         a1, a4, 1049
                  bne          s11, ra, 444f
                  nop
                  add          s4, t2, s3
                  sra          t4, s1, tp
440:              srai         zero, s4, 4
                  xor          s8, s4, s4
                  and          tp, s5, t6
                  blt          s10, t0, 453f
444:              bge          s3, s8, 457f
                  bne          gp, t4, 450f
                  slli         sp, a2, 5
                  andi         t2, s3, -1225
                  slli         s5, a7, 9
                  sll          s11, a0, a4
450:              slli         gp, a3, 11
                  srl          s11, gp, t2
                  slti         a1, a7, -1941
453:              sll          s3, a3, t5
                  srli         sp, gp, 3
                  bgeu         a1, s8, 456f
456:              sub          gp, s6, s0
457:              auipc        t5, 374578
                  xori         t5, s6, -1792
                  ori          a0, a2, -999
                  xori         s1, a3, -149
                  ori          gp, s6, 1349
                  xor          s6, a5, a5
                  xori         s0, s11, 1603
                  sltu         sp, s0, a4
                  srli         ra, t0, 17
                  bgeu         gp, t1, 474f
                  andi         zero, t6, 715
                  andi         t0, s11, 27
                  bltu         s2, s10, 483f
                  xori         t1, zero, 839
                  bge          a7, s0, 473f
                  addi         sp, t5, 986
473:              sll          sp, a4, t2
474:              slli         s0, t1, 26
                  sra          s10, s0, s9
                  lui          a3, 466230
                  sltu         s0, t1, a0
                  nop
                  slli         s0, a5, 19
                  auipc        s1, 451502
                  bne          gp, zero, 488f
                  xori         s5, t3, -1805
483:              auipc        gp, 97482
                  bne          t6, s5, 500f
                  or           t2, s2, tp
                  ori          a3, a0, -1943
                  srl          s4, s10, s3
488:              slti         t2, gp, 553
                  slti         t4, s1, 707
                  and          s7, ra, s2
                  blt          t5, s4, 504f
                  sltu         s11, s9, t1
                  bge          a7, tp, 513f
                  slti         t2, a1, 1683
                  beq          a2, a1, 513f
                  bge          sp, t0, 504f
                  bne          t6, t3, 509f
                  srl          a3, a7, t6
                  slli         a1, tp, 14
500:              addi         t4, ra, 1212
                  beq          s8, s1, 509f
                  srli         a1, s0, 2
                  add          s8, tp, s2
504:              bge          s0, t5, 519f
                  lui          a1, 1045071
                  bge          ra, t2, 507f
507:              lui          a0, 543713
                  sltiu        a1, a4, 1849
509:              bne          s2, t2, 519f
                  sll          t2, a5, a4
                  bgeu         gp, ra, 519f
                  and          a3, a0, s1
513:              bne          t1, a1, 532f
                  sra          a4, s11, t0
                  slli         t1, a1, 22
                  xori         a3, t6, -163
                  bge          s1, a7, 531f
                  srai         t0, s0, 17
519:              lui          a3, 542512
                  bgeu         s6, s3, 532f
                  slli         t3, zero, 13
                  or           s6, s8, s6
                  sll          ra, t2, s2
                  auipc        t5, 726904
                  auipc        gp, 916505
                  sltiu        t1, s8, -1447
                  lui          tp, 655187
                  beq          a0, a2, 542f
                  slli         t0, s2, 12
                  auipc        s0, 650310
531:              add          t2, s7, s11
532:              auipc        a3, 960456
                  bgeu         a0, t3, 538f
                  ori          a5, t3, 1525
                  srl          ra, t1, s10
                  bne          ra, gp, 537f
537:              auipc        t0, 299489
538:              bge          a3, s9, 550f
                  bne          s1, t2, 555f
                  beq          t1, gp, 542f
                  auipc        a1, 344347
542:              sra          zero, s5, t0
                  xori         zero, s7, 1962
                  xori         a3, a7, 982
                  bltu         t5, a4, 563f
                  add          a3, t0, gp
                  sll          s6, s0, a6
                  slt          zero, zero, s4
                  sub          a0, tp, t0
550:              srli         s10, a1, 30
                  bge          s4, a3, 552f
552:              slti         s7, s0, 1029
                  sll          s1, t1, sp
                  sll          a0, s8, s9
555:              beq          a0, a5, 571f
                  bgeu         a7, s8, 563f
                  and          t2, s5, s9
                  andi         a4, a3, -951
                  beq          t0, a4, 561f
                  addi         s6, sp, -2002
561:              slli         ra, t5, 2
                  blt          sp, a6, 572f
563:              sltu         s0, s6, t0
                  ori          a1, t1, 1966
                  xor          s11, t5, ra
                  ori          zero, s6, -991
                  sub          t4, s5, s6
                  sltu         a3, a0, a7
                  bgeu         s6, s6, 587f
                  sltu         s11, s7, s8
571:              slli         a1, gp, 14
572:              sll          a5, s11, s8
                  ori          a3, a4, -2037
                  srli         t0, a7, 3
                  sub          a0, ra, s1
                  slti         a5, s9, 1163
                  sub          s6, a2, t0
                  addi         s8, s6, 1854
                  sub          s4, s5, a6
                  addi         s0, t4, 682
                  bgeu         a3, s9, 582f
582:              addi         t0, t3, 35
                  xori         s8, s11, -1255
                  xori         a5, a4, 792
                  sub          s4, t4, s9
                  srl          a1, s6, t4
587:              add          sp, s8, s4
                  add          s11, t4, a1
                  bge          s11, a1, 595f
                  add          sp, s5, a6
                  beq          s2, t4, 605f
                  andi         t3, s11, -544
                  auipc        s11, 192462
                  xor          a1, a7, t4
595:              bltu         t5, t2, 602f
                  bgeu         s1, sp, 612f
                  srai         s5, t5, 8
                  bge          s4, tp, 604f
                  slti         ra, s8, 659
                  bltu         t3, s6, 610f
                  bltu         zero, gp, 613f
602:              and          a4, s11, zero
                  or           s1, s5, a4
604:              slti         s1, t4, -2037
605:              bltu         tp, a5, 623f
                  bge          t0, a0, 622f
                  xori         s11, t2, 1498
                  ori          s3, t2, 92
                  ori          s4, s3, 1099
610:              or           a0, s7, t0
                  nop
612:              srai         a1, s10, 30
613:              and          s10, a3, tp
                  bltu         t2, s9, 626f
                  bne          a7, a1, 629f
                  sltu         ra, t3, a7
                  sra          ra, s5, s9
                  addi         s6, a3, 687
                  srai         zero, t6, 12
                  xori         a7, t4, 1368
                  bltu         s8, s1, 629f
622:              bne          t5, a0, 623f
623:              slt          a5, a5, tp
                  slli         t4, s0, 26
                  blt          s3, a7, 630f
626:              addi         a7, a2, 1052
                  bne          s6, ra, 643f
                  bltu         s2, a0, 647f
629:              xor          a2, zero, s7
630:              or           s10, s2, s10
                  addi         s11, s10, 0
                  slt          a7, a0, s4
                  auipc        s5, 195076
                  sltu         s0, tp, s5
                  srl          a3, s3, tp
                  slt          tp, s2, t1
                  srli         s2, s5, 6
                  xor          t2, s3, s8
                  sltu         a1, sp, s2
                  and          ra, s0, a7
                  nop
                  or           t4, a0, a0
643:              sra          s3, t3, tp
                  sra          s2, t5, a4
                  add          s7, tp, t1
                  ori          a1, s9, -453
647:              slt          a7, ra, a0
                  sra          t2, ra, s8
                  andi         a0, a5, 148
                  blt          s2, gp, 658f
                  sltiu        a1, ra, 1390
                  bne          a5, s9, 662f
                  slli         a0, t2, 22
                  or           s8, s11, s6
                  ori          s11, a6, 30
                  add          a7, s7, s1
                  xori         s6, t3, 899
658:              sltiu        s0, ra, 567
                  or           s4, s10, sp
                  xori         s4, s6, -1630
                  slt          s0, t0, ra
662:              blt          a4, a2, 663f
663:              sll          a4, s1, a5
                  add          ra, gp, a2
                  sra          s1, ra, a5
                  sub          s5, s3, t6
                  nop
                  bne          sp, s10, 670f
                  addi         t5, a4, -1501
670:              sll          a2, t6, t2
                  slli         ra, s7, 26
                  slti         s8, tp, 957
                  or           t1, a4, t2
                  sra          gp, a1, s5
                  sub          s6, t4, s3
                  srl          s6, a5, t0
                  sltiu        t1, t6, 1767
                  lw           ra, 4(a6)
                  sub          a2, s9, a0
                  xori         t2, zero, -882
                  xori         s0, t4, 1108
                  srai         a3, s1, 29
                  andi         t0, t4, 1914
                  sll          sp, a2, t2
                  addi         a6, a6, 44
                  srli         a7, t2, 5
986:              addi x1, x1, 1
986:              jalr x1, x1, 0
sub_3:            lui          sp, 726563
                  slt          s0, s8, a1
                  slt          t5, t5, a4
                  srli         t5, ra, 16
                  sltiu        s10, zero, 1205
                  addi         a6, a6, -40
                  sw           ra, 4(a6)
                  andi         s2, sp, 966
                  addi         sp, s11, -1246
                  sra          a0, s6, t5
                  xori         s7, t4, -761
                  nop
                  auipc        t2, 459981
                  srl          s2, a3, s8
                  sub          t3, a7, s0
                  slli         a0, s7, 5
                  bne          s0, sp, 21f
                  slli         a2, t6, 13
                  and          s10, s2, tp
                  andi         s2, s7, 64
                  ori          a1, s4, -88
                  slli         t3, ra, 27
                  bge          gp, s5, 34f
                  auipc        t1, 622409
                  ori          a1, s7, -1383
                  sltiu        t4, a3, -1279
                  nop
                  andi         s10, s11, -1184
                  srai         zero, s4, 13
21:               bltu         s1, s1, 36f
                  slti         ra, t3, 1843
                  bge          s5, a4, 36f
                  sub          a4, s0, s7
                  or           s1, a4, a3
                  srai         s6, t6, 3
                  srli         t4, a1, 10
                  addi         s11, t6, -1551
                  sltu         t0, t1, a0
                  blt          zero, s7, 36f
                  beq          s11, a0, 36f
                  xori         s0, s4, 992
                  srl          t2, s5, t6
34:               bne          t5, a4, 36f
                  sub          a0, s8, s2
36:               or           s8, sp, s9
                  srai         s2, t0, 20
                  lw           ra, 4(a6)
                  slt          s3, s1, sp
                  srli         a3, t3, 4
                  srli         s0, ra, 25
                  or           s7, a7, a1
                  addi         a6, a6, 40
                  addi         gp, a1, 1900
53:               addi x11, x1, 1
53:               jalr x11, x11, 0
sub_5:            bgeu         a1, sp, sub_5_stack_p
                  sra          t1, zero, ra
                  sll          sp, t6, s11
sub_5_stack_p:    addi         a6, a6, -8
                  addi         a7, a5, 682
                  srai         t5, s9, 16
                  or           a7, s10, s6
                  srli         s5, a2, 26
                  sw           ra, 4(a6)
                  xori         t3, s3, 1889
                  xori         s1, s1, -1034
sub_5_0:          jal          ra, 6f
0:                jal          ra, 14f
1:                jal          a7, 2f
2:                jal          ra, 19f
3:                jal          t1, 5f
4:                jal          t0, 10f
5:                jal          ra, 20f
6:                jal          ra, 4b
7:                jal          t4, 17f
8:                jal          a1, 13f
9:                jal          ra, 15f
10:               jal          t1, 1b
11:               jal          t0, 12f
12:               jal          ra, 7b
13:               jal          ra, 0b
14:               jal          ra, 21f
15:               jal          t1, 11b
16:               jal          t1, 18f
17:               jal          ra, 8b
18:               jal          ra, 3b
19:               jal          ra, 16b
20:               jal          ra, 9b
21:               slt          a5, t5, a0
                  add          zero, s5, a5
                  sra          a5, gp, s0
                  and          t0, s6, t1
                  bltu         t4, a5, 7f
                  bltu         t6, s11, 10f
                  nop
                  and          s10, t0, s3
7:                sra          s6, gp, s6
                  auipc        s11, 437071
                  srl          a5, t6, zero
10:               blt          a5, t2, 29f
                  bgeu         t0, a5, 12f
12:               bge          a2, a4, 16f
                  bgeu         t2, a5, 33f
                  slt          t1, s1, a7
                  addi         a3, ra, -148
16:               sltiu        zero, gp, 1617
                  lui          gp, 209629
                  slti         t2, t4, -1998
                  slt          t5, t3, a1
                  bltu         t3, s1, 24f
                  xor          s1, a7, gp
                  add          s10, a4, t5
                  xori         s8, t4, 1238
24:               bge          s6, a4, 25f
25:               xor          t2, s1, a3
                  bne          a4, s8, 38f
                  and          s1, t1, s7
                  auipc        a5, 18779
29:               sltiu        a2, t5, 763
                  or           a3, gp, s0
                  andi         a3, s6, 392
                  add          a7, a6, s7
33:               andi         s2, a1, 1547
                  sltiu        a0, s2, 1721
                  slt          t0, t3, s9
                  srli         s6, t5, 23
                  or           t5, t3, a3
38:               sra          tp, s4, a6
                  bne          sp, s4, 49f
                  or           s6, a0, s5
                  bltu         a3, tp, 52f
                  beq          t6, s7, 50f
                  beq          t5, zero, 57f
                  bge          s0, a4, 45f
45:               addi         a0, a0, 1628
                  xori         s0, s6, -1294
                  bne          s4, t3, 53f
                  slti         a3, s0, 818
49:               andi         a5, s2, -1638
50:               slli         a3, a5, 16
                  bltu         s1, a0, 54f
52:               srai         sp, s10, 15
53:               andi         ra, gp, 517
54:               ori          a3, s11, -487
                  bgeu         t5, s4, 67f
                  and          a0, t3, t3
57:               bne          s10, a0, 67f
                  xori         t0, t1, -1708
                  sll          s4, a4, s1
                  xor          a7, a4, t0
                  srli         s8, t0, 0
                  slt          s3, s9, s1
                  and          s4, s10, s6
                  sub          s1, a2, a1
                  xori         s0, a7, 1233
                  blt          t0, gp, 67f
67:               andi         zero, s11, 703
                  add          a2, a7, s2
                  add          zero, s4, s11
                  xor          a3, t0, s0
                  slli         s0, tp, 22
                  sub          t4, s8, s9
                  lw           ra, 4(a6)
                  ori          s1, t2, 1408
                  slti         tp, zero, 1051
                  addi         a6, a6, 8
                  and          s4, s5, s11
112:              addi x20, x1, 0
112:              jalr x20, x20, 0
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
.align           2
mtvec_handler:    
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x25, x16, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x29, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x29, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x29, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x29, x21, ecall_handler
                  li x21, 0x1
                  beq x29, x21, instr_fault_handler
                  li x21, 0x5
                  beq x29, x21, load_fault_handler
                  li x21, 0x7
                  beq x29, x21, store_fault_handler
                  li x21, 0xc
                  beq x29, x21, pt_fault_handler
                  li x21, 0xd
                  beq x29, x21, pt_fault_handler
                  li x21, 0xf
                  beq x29, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x16, x25, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x25, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x25, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x16, x25, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x16, x25, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x16, x25, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
