.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x18, kernel_stack_end

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
                  li x0, 0x14b84e9c
                  li x1, 0x80000000
                  li x2, 0x2cfc7316
                  li x3, 0x9c0a87eb
                  li x4, 0xce066304
                  li x6, 0x80000000
                  li x7, 0x5
                  li x8, 0xf8bdd59f
                  li x9, 0x80000000
                  li x10, 0x8
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x6
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0x74bed288
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0xe06b67d1
                  li x22, 0x0
                  li x23, 0xfd1a1cbc
                  li x24, 0x0
                  li x25, 0x6
                  li x26, 0xd9d603c7
                  li x27, 0x3b1a082
                  li x28, 0xe
                  li x29, 0x0
                  li x30, 0xf4840d80
                  li x31, 0x80000000
                  la x5, user_stack_end
main:             jal          t5, 2f
0:                jal          t1, 13f
1:                jal          t1, 17f
2:                jal          ra, 18f
3:                jal          t1, 14f
4:                jal          ra, 9f
5:                jal          ra, 21f
6:                jal          ra, 12f
7:                jal          t1, 23f
8:                jal          a5, 16f
9:                jal          ra, 22f
10:               jal          ra, 3b
11:               jal          sp, 7b
12:               jal          ra, 8b
13:               jal          gp, 19f
14:               jal          t1, 15f
15:               jal          ra, 6b
16:               jal          gp, 5b
17:               jal          s1, 4b
18:               jal          ra, 20f
19:               jal          ra, 1b
20:               jal          ra, 10b
21:               jal          t1, 0b
22:               jal          t1, 11b
23:               srl          a4, s5, s2
                  and          t1, s9, s0
                  slt          gp, s7, t0
                  xori         s5, a0, 1301
                  bgeu         a1, s10, 16f
                  la           sp, sub_1
                  addi         sp, sp, -747
                  sltu         s6, zero, sp
                  nop
                  sub          t1, s6, a7
                  srl          s0, gp, s5
                  slli         t6, t5, 3
                  sra          a3, a6, tp
main_j1:          jalr         t5, sp, 747 #jump main -> sub_1
                  sltiu        a6, s9, -827
                  auipc        a2, 381043
                  and          a4, sp, a7
                  addi         t2, zero, -230
                  and          s4, t5, s1
                  slli         t6, s8, 11
                  sltiu        s11, s11, 1837
                  srai         s11, s9, 13
                  slli         s3, s10, 27
                  srli         a2, a5, 26
                  bltu         s1, a6, 27f
                  slti         t2, t2, -1308
16:               bge          t6, s3, 29f
                  nop
                  sub          s10, a1, gp
                  srai         sp, t2, 26
                  xori         a7, a1, -476
                  slt          t3, zero, s5
                  slli         a7, s4, 26
                  srli         t3, s5, 4
                  slli         gp, tp, 7
                  ori          a1, t6, 1510
                  sll          a4, zero, s3
27:               or           t2, zero, t2
                  sll          t2, s10, sp
29:               bge          ra, a2, 31f
                  blt          a0, a7, 40f
31:               sltiu        a6, t0, 516
                  bltu         s5, s11, 36f
                  bltu         t1, s4, 38f
                  andi         a5, s0, -750
                  bgeu         sp, s3, 48f
36:               nop
                  addi         a4, s0, -441
38:               lui          t2, 293983
                  or           t4, s7, t2
40:               nop
                  sra          t4, t4, sp
                  auipc        a0, 954016
                  beq          t5, zero, 49f
                  bne          s10, a5, 49f
                  bltu         s8, t2, 49f
                  sltu         s3, t5, a3
                  slt          s7, s4, a7
48:               srli         t5, s10, 22
49:               and          ra, t4, t6
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bgeu         s6, a6, sub_1_stack_p
sub_1_stack_p:    addi         t0, t0, -40
                  sltiu        s3, s1, -1825
                  sw           t5, 4(t0)
                  sub          t3, tp, a2
                  auipc        ra, 970896
                  xor          a3, s2, s8
                  ori          s6, a6, -1502
                  beq          s1, s4, sub_1_j2 #branch to jump instr
                  or           s7, t2, s3
                  xori         t2, s0, 645
                  sltiu        s5, t6, -393
                  ori          a1, t2, 352
                  srl          s5, ra, s7
                  or           a2, a7, t3
                  slli         a6, s8, 12
                  ori          s5, a0, -989
                  andi         s6, zero, -38
                  add          sp, s3, t0
sub_1_j2:         jal          t5, sub_2 #jump sub_1 -> sub_2
                  la           t5, sub_3
                  andi         s5, a1, 791
                  ori          s0, gp, 2024
                  add          zero, t5, t1
                  addi         t1, a2, 1174
                  addi         t5, t5, -184
                  ori          a7, t2, -801
                  srai         a1, sp, 1
sub_1_j5:         jalr         t5, t5, 184 #jump sub_1 -> sub_3
sub_1_4:          jal          t5, 22f
0:                jal          ra, 19f
1:                jal          s11, 4f
2:                jal          a0, 9f
3:                jal          t1, 12f
4:                jal          ra, 13f
5:                jal          ra, 2b
6:                jal          ra, 27f
7:                jal          t1, 11f
8:                jal          ra, 18f
9:                jal          s1, 23f
10:               jal          ra, 7b
11:               jal          ra, 25f
12:               jal          s1, 8b
13:               jal          s5, 17f
14:               jal          ra, 3b
15:               jal          a5, 28f
16:               jal          a2, 14b
17:               jal          ra, 24f
18:               jal          ra, 21f
19:               jal          t1, 15b
20:               jal          t1, 10b
21:               jal          ra, 20b
22:               jal          t1, 16b
23:               jal          ra, 6b
24:               jal          ra, 26f
25:               jal          t1, 5b
26:               jal          ra, 0b
27:               jal          tp, 1b
28:               add          a5, a4, a1
sub_1_12:         jal          t5, 6f
0:                jal          sp, 7f
1:                jal          t6, 11f
2:                jal          ra, 1b
3:                jal          sp, 9f
4:                jal          ra, 5f
5:                jal          ra, 10f
6:                jal          ra, 0b
7:                jal          t1, 4b
8:                jal          ra, 12f
9:                jal          t1, 8b
10:               jal          t1, 2b
11:               jal          ra, 3b
12:               jal          sp, 13f
13:               auipc        s7, 201719
sub_1_1:          jal          t5, 20f
0:                jal          a4, 5f
1:                jal          t4, 6f
2:                jal          a1, 4f
3:                jal          tp, 19f
4:                jal          s3, 1b
5:                jal          t1, 7f
6:                jal          ra, 23f
7:                jal          ra, 13f
8:                jal          s8, 0b
9:                jal          gp, 15f
10:               jal          ra, 9b
11:               jal          ra, 18f
12:               jal          t1, 2b
13:               jal          tp, 3b
14:               jal          sp, 16f
15:               jal          ra, 8b
16:               jal          t1, 17f
17:               jal          ra, 11b
18:               jal          ra, 10b
19:               jal          ra, 22f
20:               jal          sp, 14b
21:               jal          ra, 12b
22:               jal          ra, 21b
23:               xori         t3, s4, -549
sub_1_17:         jal          t5, 1f
0:                jal          t1, 18f
1:                jal          tp, 9f
2:                jal          ra, 6f
3:                jal          sp, 12f
4:                jal          t3, 5f
5:                jal          ra, 16f
6:                jal          t1, 4b
7:                jal          sp, 3b
8:                jal          t4, 15f
9:                jal          gp, 17f
10:               jal          sp, 0b
11:               jal          ra, 13f
12:               jal          ra, 2b
13:               jal          t1, 7b
14:               jal          t2, 11b
15:               jal          ra, 14b
16:               jal          tp, 10b
17:               jal          ra, 8b
18:               ori          s11, a1, 339
sub_1_8:          jal          t5, 9f
0:                jal          t1, 16f
1:                jal          ra, 7f
2:                jal          ra, 15f
3:                jal          t1, 4f
4:                jal          ra, 6f
5:                jal          a6, 13f
6:                jal          ra, 11f
7:                jal          t1, 3b
8:                jal          t1, 0b
9:                jal          t6, 12f
10:               jal          ra, 14f
11:               jal          ra, 2b
12:               jal          ra, 10b
13:               jal          ra, 17f
14:               jal          ra, 1b
15:               jal          ra, 8b
16:               jal          ra, 5b
17:               sltu         sp, a2, zero
sub_1_19:         jal          t5, 10f
0:                jal          t1, 11f
1:                jal          ra, 7f
2:                jal          ra, 0b
3:                jal          t1, 1b
4:                jal          ra, 8f
5:                jal          ra, 2b
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          t1, 5b
9:                jal          t3, 4b
10:               jal          t1, 6b
11:               and          t1, s10, t0
sub_1_18:         jal          t5, 10f
0:                jal          ra, 6f
1:                jal          ra, 15f
2:                jal          ra, 17f
3:                jal          ra, 2b
4:                jal          tp, 7f
5:                jal          ra, 12f
6:                jal          ra, 16f
7:                jal          s7, 8f
8:                jal          ra, 5b
9:                jal          ra, 1b
10:               jal          ra, 9b
11:               jal          ra, 13f
12:               jal          t6, 3b
13:               jal          ra, 0b
14:               jal          ra, 4b
15:               jal          t1, 11b
16:               jal          s7, 14b
17:               srli         t4, s0, 17
sub_1_20:         jal          t5, 22f
0:                jal          ra, 21f
1:                jal          ra, 26f
2:                jal          ra, 10f
3:                jal          t1, 17f
4:                jal          ra, 20f
5:                jal          s6, 15f
6:                jal          ra, 3b
7:                jal          ra, 28f
8:                jal          s10, 24f
9:                jal          t1, 2b
10:               jal          s1, 19f
11:               jal          t4, 25f
12:               jal          ra, 11b
13:               jal          ra, 16f
14:               jal          t1, 29f
15:               jal          s7, 27f
16:               jal          ra, 12b
17:               jal          a5, 4b
18:               jal          ra, 1b
19:               jal          ra, 13b
20:               jal          t1, 0b
21:               jal          ra, 23f
22:               jal          ra, 6b
23:               jal          ra, 9b
24:               jal          ra, 7b
25:               jal          ra, 8b
26:               jal          ra, 5b
27:               jal          t1, 14b
28:               jal          ra, 18b
29:               nop
sub_1_6:          jal          t5, 14f
0:                jal          s10, 10f
1:                jal          ra, 6f
2:                jal          t2, 11f
3:                jal          ra, 13f
4:                jal          a7, 15f
5:                jal          ra, 8f
6:                jal          s1, 2b
7:                jal          ra, 1b
8:                jal          t1, 0b
9:                jal          ra, 4b
10:               jal          ra, 12f
11:               jal          t1, 3b
12:               jal          s1, 7b
13:               jal          ra, 9b
14:               jal          s4, 5b
15:               srl          a2, sp, a2
sub_1_22:         jal          t5, 18f
0:                jal          ra, 12f
1:                jal          ra, 23f
2:                jal          ra, 16f
3:                jal          ra, 24f
4:                jal          ra, 10f
5:                jal          sp, 26f
6:                jal          ra, 17f
7:                jal          ra, 2b
8:                jal          t1, 21f
9:                jal          ra, 1b
10:               jal          s5, 11f
11:               jal          a7, 8b
12:               jal          ra, 27f
13:               jal          ra, 4b
14:               jal          a0, 5b
15:               jal          t1, 0b
16:               jal          t4, 20f
17:               jal          ra, 13b
18:               jal          ra, 3b
19:               jal          ra, 22f
20:               jal          s6, 9b
21:               jal          s6, 25f
22:               jal          t1, 6b
23:               jal          ra, 15b
24:               jal          ra, 19b
25:               jal          sp, 7b
26:               jal          t6, 28f
27:               jal          s3, 14b
28:               srli         s4, s2, 11
sub_1_16:         jal          t5, 2f
0:                jal          t1, 12f
1:                jal          sp, 11f
2:                jal          t1, 1b
3:                jal          sp, 5f
4:                jal          ra, 9f
5:                jal          s4, 6f
6:                jal          ra, 13f
7:                jal          ra, 14f
8:                jal          s0, 0b
9:                jal          ra, 8b
10:               jal          ra, 3b
11:               jal          s7, 4b
12:               jal          ra, 10b
13:               jal          ra, 7b
14:               sub          a2, t0, a2
sub_1_11:         jal          t5, 5f
0:                jal          tp, 4f
1:                jal          sp, 0b
2:                jal          a3, 6f
3:                jal          t5, 7f
4:                jal          t1, 9f
5:                jal          ra, 8f
6:                jal          ra, 3b
7:                jal          t1, 11f
8:                jal          t1, 10f
9:                jal          s4, 2b
10:               jal          a2, 1b
11:               sub          s11, s5, s1
sub_1_21:         jal          t5, 0f
0:                jal          ra, 9f
1:                jal          t1, 4f
2:                jal          t6, 3f
3:                jal          ra, 11f
4:                jal          ra, 7f
5:                jal          t1, 10f
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          ra, 12f
9:                jal          t3, 6b
10:               jal          t2, 2b
11:               jal          t3, 1b
12:               xori         a7, s6, 1709
sub_1_14:         jal          t5, 10f
0:                jal          gp, 6f
1:                jal          ra, 3f
2:                jal          tp, 0b
3:                jal          ra, 7f
4:                jal          ra, 12f
5:                jal          ra, 13f
6:                jal          ra, 4b
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          s8, 5b
10:               jal          ra, 11f
11:               jal          s1, 1b
12:               jal          ra, 9b
13:               srai         a0, t5, 25
sub_1_13:         jal          t5, 4f
0:                jal          t1, 7f
1:                jal          t1, 0b
2:                jal          ra, 12f
3:                jal          a7, 15f
4:                jal          ra, 13f
5:                jal          t1, 9f
6:                jal          ra, 5b
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          t5, 11f
10:               jal          ra, 2b
11:               jal          sp, 3b
12:               jal          ra, 14f
13:               jal          ra, 10b
14:               jal          ra, 8b
15:               slli         ra, t3, 24
sub_1_9:          jal          t5, 15f
0:                jal          t5, 26f
1:                jal          gp, 21f
2:                jal          ra, 28f
3:                jal          t1, 18f
4:                jal          t1, 22f
5:                jal          s6, 20f
6:                jal          t1, 24f
7:                jal          ra, 16f
8:                jal          sp, 7b
9:                jal          s4, 23f
10:               jal          ra, 11f
11:               jal          t3, 17f
12:               jal          ra, 9b
13:               jal          t1, 6b
14:               jal          gp, 1b
15:               jal          t1, 25f
16:               jal          a4, 12b
17:               jal          gp, 5b
18:               jal          gp, 19f
19:               jal          gp, 27f
20:               jal          ra, 2b
21:               jal          s7, 3b
22:               jal          ra, 13b
23:               jal          ra, 14b
24:               jal          t1, 10b
25:               jal          t3, 8b
26:               jal          t1, 4b
27:               jal          tp, 0b
28:               or           s8, a1, a0
sub_1_0:          jal          t5, 15f
0:                jal          t3, 3f
1:                jal          gp, 21f
2:                jal          sp, 24f
3:                jal          t1, 4f
4:                jal          ra, 19f
5:                jal          ra, 25f
6:                jal          ra, 9f
7:                jal          a0, 6b
8:                jal          sp, 23f
9:                jal          t1, 16f
10:               jal          ra, 5b
11:               jal          t1, 7b
12:               jal          sp, 26f
13:               jal          ra, 18f
14:               jal          gp, 28f
15:               jal          ra, 1b
16:               jal          ra, 0b
17:               jal          sp, 20f
18:               jal          ra, 8b
19:               jal          ra, 2b
20:               jal          ra, 10b
21:               jal          ra, 27f
22:               jal          a5, 17b
23:               jal          ra, 12b
24:               jal          a2, 13b
25:               jal          ra, 11b
26:               jal          ra, 14b
27:               jal          t1, 22b
28:               nop
sub_1_5:          jal          t5, 1f
0:                jal          t1, 15f
1:                jal          t1, 0b
2:                jal          ra, 10f
3:                jal          t1, 8f
4:                jal          t1, 20f
5:                jal          a4, 23f
6:                jal          tp, 18f
7:                jal          ra, 14f
8:                jal          ra, 12f
9:                jal          t1, 2b
10:               jal          s6, 5b
11:               jal          ra, 22f
12:               jal          t1, 21f
13:               jal          t2, 6b
14:               jal          ra, 16f
15:               jal          t1, 4b
16:               jal          t2, 9b
17:               jal          ra, 3b
18:               jal          ra, 7b
19:               jal          ra, 13b
20:               jal          t1, 11b
21:               jal          s6, 19b
22:               jal          ra, 17b
23:               srli         t5, a6, 0
                  sll          s4, s4, tp
                  blt          s10, s1, 18f
                  srai         s5, s6, 3
                  andi         t6, s6, 1397
                  add          t3, t2, sp
                  sra          gp, gp, s4
                  or           s0, s8, a0
                  slt          a1, s3, t4
                  xor          t6, t6, t0
                  andi         a3, sp, -2031
                  sub          s0, s3, tp
                  or           s3, t5, s9
                  lui          s7, 586042
                  sltiu        t2, s6, -1589
                  srli         s4, s7, 18
                  andi         a1, a6, -1153
                  and          s6, ra, a3
                  bne          t3, a3, 25f
18:               bne          s3, a0, 20f
                  nop
20:               sltiu        a0, a4, 447
                  blt          s2, t1, 41f
                  xori         a4, t0, 716
                  bge          s11, zero, 27f
                  lui          a7, 1022909
25:               slli         a6, gp, 31
                  slt          tp, t3, a3
27:               andi         a2, a3, 1707
                  or           s6, a1, a5
                  sub          a2, s7, s10
                  slli         a1, t1, 24
                  blt          a5, a6, 39f
                  slt          t4, s4, tp
                  sll          tp, sp, s9
                  add          s5, s1, s11
                  sub          s8, tp, t1
                  beq          s7, s3, 40f
                  or           a5, t3, ra
                  sltiu        s7, t2, 348
39:               sll          s0, t4, t4
40:               srli         s6, a7, 8
41:               addi         s6, a3, -357
                  andi         t6, t0, -710
                  sltu         s8, s10, a4
                  and          sp, s0, tp
                  srl          t4, s2, s5
                  bge          t0, s5, 51f
                  and          s3, a1, s10
                  bge          a5, a2, 49f
49:               blt          s11, a7, 65f
                  beq          t5, t0, 61f
51:               addi         s7, t2, 1103
                  sra          s3, a6, ra
                  bltu         zero, s7, 70f
                  nop
                  and          a2, t4, s11
                  or           t5, s1, ra
                  andi         gp, a5, 261
                  beq          tp, s7, 76f
                  add          a5, s4, gp
                  slli         s10, s7, 3
61:               bne          s3, tp, 70f
                  srli         s6, a7, 24
                  sltu         a4, s8, t2
                  sltiu        tp, tp, 900
65:               andi         t4, t1, -882
                  and          s5, gp, a7
                  sltu         t5, ra, zero
                  sll          t3, s0, s6
                  bltu         s4, t0, 72f
70:               srai         t2, t3, 20
                  bltu         s10, s6, 80f
72:               sll          t1, s8, t3
                  slti         gp, ra, -1152
                  bgeu         t5, a0, 75f
75:               bne          s0, s2, 89f
76:               slti         s11, t0, -1255
                  xor          a7, a5, a2
                  bltu         ra, a1, 85f
                  and          a1, s5, t2
80:               sra          zero, a0, s1
                  addi         s5, t1, 1101
                  sub          zero, s1, s1
                  slt          a6, sp, a5
                  sltu         t1, t4, t5
85:               srai         t2, a0, 31
                  and          s8, s4, s3
                  bgeu         a2, s4, 92f
                  bne          s1, s7, 107f
89:               sub          s5, a5, s4
                  sltiu        tp, a5, 1974
                  srli         s0, t0, 12
92:               sra          s0, a7, gp
                  nop
                  ori          s4, t2, 571
                  blt          s2, s6, 111f
                  slti         a7, s11, -145
                  bge          t5, a3, 101f
                  beq          t4, a3, 110f
                  sra          a1, sp, s4
                  add          ra, t0, s11
101:              srl          a6, s2, s9
                  lui          a3, 86216
                  add          t3, zero, s2
                  beq          a4, s2, 109f
                  lui          s11, 201481
                  sltiu        t6, tp, -935
107:              slt          a4, s10, s4
                  and          a2, t5, a6
109:              slt          s1, tp, gp
110:              bge          a7, s7, 115f
111:              lui          a3, 245777
                  lui          a3, 172487
                  bltu         s5, s4, 127f
                  srli         s8, t0, 27
115:              add          t5, s11, gp
                  add          s3, s4, a3
                  nop
                  slt          ra, s7, s8
                  or           zero, ra, s0
                  ori          s4, ra, 831
                  srli         a5, a6, 19
                  and          s1, a3, tp
                  lui          s7, 455306
                  addi         s8, s10, 218
                  srai         t6, t4, 16
                  xor          s6, t6, a3
127:              srl          a4, s4, a6
                  andi         tp, s0, 630
                  blt          t1, a5, 145f
                  srai         s6, t4, 14
                  add          a0, gp, s6
                  and          a1, t6, a5
                  bge          ra, a0, 138f
                  auipc        tp, 592113
                  sra          s4, s7, a1
                  slt          gp, a3, a3
                  bgeu         s4, s9, 154f
138:              srl          s0, s10, a2
                  bltu         s9, s6, 151f
                  bne          a3, t0, 144f
                  srl          s11, t5, s7
                  ori          s5, ra, 683
                  bltu         s0, a4, 145f
144:              beq          s9, s11, 162f
145:              and          a2, a4, a5
                  nop
                  sltiu        a5, s5, -224
                  beq          a3, s6, 165f
                  bgeu         s2, s4, 165f
                  sltiu        ra, s0, -1698
151:              auipc        a3, 655842
                  bgeu         s8, s9, 166f
                  sltu         t3, a6, ra
154:              or           s0, s5, t5
                  add          s1, ra, s8
                  and          s7, gp, a5
                  xor          s1, s1, zero
                  nop
                  andi         s8, t2, 1538
                  sra          s1, gp, ra
                  xor          s3, s3, t5
162:              nop
sub_1_15:         jal          t5, 3f
0:                jal          ra, 1f
1:                jal          t1, 13f
2:                jal          ra, 9f
3:                jal          sp, 0b
4:                jal          ra, 11f
5:                jal          gp, 15f
6:                jal          ra, 4b
7:                jal          ra, 8f
8:                jal          a5, 12f
9:                jal          t1, 14f
10:               jal          s1, 5b
11:               jal          ra, 16f
12:               jal          t6, 10b
13:               jal          ra, 2b
14:               jal          tp, 7b
15:               jal          gp, 6b
16:               ori          ra, a7, 2040
                  sra          s11, gp, s7
                  bltu         t1, s11, 167f
165:              addi         a7, s5, -1951
166:              srl          a3, s2, t2
167:              addi         a0, a1, -1404
                  add          a4, t6, s4
                  bgeu         s0, s1, 173f
                  slt          s0, a7, a3
                  srl          s8, s1, s6
                  sll          a7, s11, s7
173:              nop
                  sra          s0, s11, zero
                  bne          s10, s8, 183f
                  slli         t6, a5, 29
                  slli         s3, t1, 2
                  bne          a7, ra, 183f
                  sra          a7, s11, a3
                  bgeu         gp, s6, 184f
                  nop
                  sra          a0, a7, t2
183:              sra          s7, s0, a3
184:              srli         sp, a3, 25
                  slti         zero, a2, -1215
                  auipc        s10, 472778
                  srl          s1, sp, ra
                  srli         s8, s7, 17
                  bne          s2, s8, 200f
                  lui          a6, 3273
                  bne          s2, a7, 211f
                  andi         s3, s8, -166
                  blt          a1, a4, 202f
                  srl          a4, t6, sp
                  sub          a7, t5, sp
                  lui          zero, 394967
sub_1_7:          jal          t5, 23f
0:                jal          ra, 8f
1:                jal          ra, 11f
2:                jal          ra, 13f
3:                jal          a3, 21f
4:                jal          ra, 2b
5:                jal          ra, 9f
6:                jal          gp, 14f
7:                jal          ra, 17f
8:                jal          ra, 22f
9:                jal          ra, 18f
10:               jal          gp, 19f
11:               jal          t1, 4b
12:               jal          ra, 24f
13:               jal          sp, 12b
14:               jal          ra, 16f
15:               jal          a3, 5b
16:               jal          ra, 15b
17:               jal          ra, 25f
18:               jal          ra, 10b
19:               jal          sp, 1b
20:               jal          s4, 6b
21:               jal          ra, 20b
22:               jal          ra, 3b
23:               jal          ra, 0b
24:               jal          ra, 7b
25:               add          a3, t3, s1
                  ori          s5, a7, 577
                  auipc        a1, 434176
                  and          s5, t1, s5
200:              sltu         tp, t3, sp
                  andi         a0, a7, -1700
202:              blt          a1, s4, 207f
                  srl          s11, tp, s3
                  bgeu         s8, a3, 213f
                  nop
                  sltiu        s1, t6, 741
207:              andi         a7, t5, 683
                  and          s4, s5, t4
                  ori          t1, t2, -1242
                  and          t2, gp, s6
211:              sra          a4, s0, s10
                  auipc        sp, 765399
213:              bgeu         a1, t1, 218f
                  bgeu         s7, s6, 228f
                  addi         t6, s3, 1611
                  sltiu        zero, s3, 1871
                  ori          t2, s6, 1724
218:              srli         gp, s5, 9
                  bne          a2, s10, 236f
                  sll          a3, t6, t3
                  ori          t3, s9, -656
                  addi         a0, t3, 701
                  sltiu        s11, t5, 1967
                  xori         a7, s6, -707
                  sltiu        s3, t2, 872
                  add          a4, t5, t2
                  or           s8, s6, a4
228:              add          gp, a1, s9
                  xori         t5, a7, -880
                  sub          sp, s3, t3
                  slli         t5, a7, 4
                  srai         t4, s4, 25
                  srl          s4, s5, a5
                  add          t2, zero, s4
                  sltu         t4, a1, a7
236:              sltu         s5, t1, zero
                  add          a6, ra, t1
                  andi         tp, t1, 502
                  bge          a5, gp, 244f
                  sub          a4, t1, t6
                  sub          s0, a2, s6
                  or           a4, zero, t2
                  sub          zero, gp, a1
244:              beq          a1, s11, 245f
245:              lui          s8, 263627
                  nop
                  beq          t4, t1, 263f
                  sltu         s0, t4, a5
                  add          s11, t4, t4
                  andi         s11, s5, -353
                  blt          a0, t4, 252f
252:              sltu         a1, s5, t1
                  slti         a2, t6, 678
                  ori          s1, a5, -1210
                  xori         t3, a4, -280
                  srai         gp, t5, 27
                  bgeu         s4, s3, 273f
                  xori         gp, tp, -75
                  srli         ra, t3, 1
                  sra          s6, s11, s10
                  srai         a6, t6, 18
                  slt          s5, t1, ra
263:              lui          s0, 375883
                  srai         s11, a4, 0
                  auipc        t1, 762694
                  andi         a5, t2, -1383
                  slli         t1, t3, 28
                  sltiu        a0, s2, -68
                  xori         t6, gp, 300
                  srli         a0, s10, 18
                  auipc        a5, 53732
                  xori         s8, gp, -378
273:              srli         tp, s5, 28
                  and          a7, t0, t1
                  bne          a1, a2, 282f
                  xor          s8, a3, t6
                  xori         a6, a7, 495
                  blt          zero, t1, 297f
                  slti         s3, t1, 1699
                  add          zero, s9, s2
                  auipc        ra, 514916
282:              blt          a2, s2, 287f
                  xor          a6, t6, a5
                  auipc        t2, 882528
                  bge          a3, s4, 293f
                  bgeu         t5, s9, 303f
287:              slti         s7, a2, 1444
                  srli         s10, ra, 3
                  ori          a6, a0, 1103
                  srli         s5, a3, 11
                  sltiu        t4, s8, 1223
                  srai         a6, t2, 31
293:              slli         s8, s4, 14
                  add          s11, a2, t5
                  slli         a0, t5, 15
                  blt          s10, s1, 301f
297:              slti         s8, t0, 1343
                  bgeu         s1, t4, 302f
                  nop
                  and          s1, t6, s7
301:              nop
302:              sub          a1, t0, a6
303:              blt          s4, a2, 305f
                  nop
305:              srl          a1, t0, s5
                  bge          a5, t6, 323f
                  srli         t1, t5, 31
                  ori          t4, zero, 555
                  xor          a7, s8, a3
                  sub          a1, sp, t0
                  and          sp, s3, tp
                  or           t3, ra, s11
                  srai         zero, s4, 25
                  sll          a2, t5, s6
                  srai         t4, a0, 0
                  and          s4, a4, s4
                  srl          a2, s7, s2
                  slt          s7, s3, sp
                  nop
                  slli         t3, tp, 21
                  sra          a2, a2, t2
                  andi         s1, t5, 1086
323:              ori          a1, t1, -1326
                  slt          s10, s4, s4
                  blt          a0, s10, 333f
                  andi         s4, zero, 1470
                  bge          s0, s9, 339f
                  slli         s7, s3, 15
                  bge          s1, tp, 330f
330:              slli         s3, s5, 26
                  sra          sp, zero, tp
                  add          s11, a3, s7
333:              addi         s0, s5, 1802
                  beq          t5, t0, 341f
                  nop
                  srli         a2, s7, 19
                  srl          zero, sp, gp
                  auipc        a0, 901887
339:              sltiu        a4, s8, -781
                  bltu         s0, s1, 360f
341:              sub          s4, sp, s8
                  slti         t5, s5, -1827
                  blt          sp, sp, 359f
                  xor          s8, s0, t3
                  andi         s5, s5, -1000
                  slli         ra, a1, 20
                  bge          a5, s11, 365f
                  srl          s1, a7, t6
                  and          a7, s10, tp
                  lui          a5, 823479
                  lui          s5, 726366
                  nop
                  beq          gp, s0, 372f
                  addi         s8, t3, -885
                  add          s5, s7, a3
                  sll          t1, a7, ra
                  lui          tp, 822783
                  srli         tp, s8, 18
359:              sub          a6, t2, gp
360:              nop
                  xor          a1, a2, s0
                  srai         a5, t4, 3
                  blt          t5, s2, 368f
                  slti         zero, s8, 24
365:              srai         t5, s8, 28
                  or           s7, t4, t6
                  srli         a3, s10, 30
368:              sll          s11, sp, s7
                  bgeu         tp, s2, 385f
                  addi         t4, t4, 1829
                  srai         zero, ra, 4
372:              sra          a3, t5, s2
                  srli         a1, t4, 3
                  blt          a4, t4, 385f
                  lui          a0, 191971
                  xori         t2, s5, -377
                  xori         a2, gp, -576
                  ori          s0, zero, 1471
                  beq          t2, s6, 396f
                  add          t5, tp, t5
                  sltu         gp, sp, sp
                  xori         s7, tp, -1464
                  blt          a0, t2, 397f
                  ori          s4, s2, 989
385:              bge          t6, s2, 390f
                  blt          a1, a4, 395f
                  andi         s10, s11, 1312
                  bltu         t5, t5, 389f
389:              sltiu        s6, t5, 483
390:              auipc        ra, 1033014
                  blt          zero, s5, 394f
                  slt          s5, s4, tp
                  andi         s4, s8, 780
394:              sltu         a1, s0, s5
395:              bge          t5, s10, 400f
396:              slli         s0, t1, 22
397:              sra          s1, a3, s1
                  sll          s8, s8, t5
                  bltu         s9, s2, 413f
400:              addi         zero, zero, -1209
                  slt          t5, s3, a5
                  sll          t2, s2, t1
                  sltiu        s4, a4, -256
                  srli         s11, tp, 5
                  bltu         s0, a0, 410f
                  nop
                  srl          gp, s11, t0
                  blt          s0, s2, 412f
                  sltu         a5, t1, s8
410:              or           zero, s4, s3
                  slli         a5, a3, 25
412:              auipc        a5, 490529
413:              beq          a4, a2, 429f
                  bne          s6, a2, 423f
                  auipc        a7, 673024
                  sltu         a5, s6, t4
                  ori          a5, t2, 1351
                  xor          tp, gp, a3
                  blt          s9, s10, 436f
                  bltu         sp, a3, 424f
                  slli         s4, a1, 15
                  xori         a4, a4, 968
423:              srli         a6, s5, 30
424:              slt          s7, t0, s0
                  xori         s3, a5, -985
                  nop
                  slli         sp, s2, 17
                  bne          tp, s5, 436f
429:              bne          s10, s11, 446f
sub_1_2:          jal          t5, 11f
0:                jal          ra, 17f
1:                jal          ra, 14f
2:                jal          ra, 5f
3:                jal          ra, 7f
4:                jal          t1, 10f
5:                jal          ra, 16f
6:                jal          t1, 8f
7:                jal          tp, 2b
8:                jal          gp, 0b
9:                jal          ra, 13f
10:               jal          ra, 3b
11:               jal          ra, 9b
12:               jal          t1, 4b
13:               jal          ra, 15f
14:               jal          t1, 6b
15:               jal          t1, 12b
16:               jal          s4, 1b
17:               sltiu        sp, sp, 1230
                  blt          t1, a4, 446f
                  srli         t4, sp, 19
                  xor          sp, gp, s10
                  and          a4, s0, s5
                  auipc        t6, 426300
                  beq          s11, t0, 451f
436:              srli         t5, s7, 14
                  sub          s3, s0, s2
                  blt          a5, t2, 446f
                  srl          a4, s3, s2
                  ori          t4, a4, 1285
                  srl          a4, t6, a2
                  ori          gp, t1, -1914
                  slti         t3, t0, -141
                  slti         t1, a1, 208
                  ori          a0, a4, -992
446:              ori          a3, a1, -1768
                  srli         a2, zero, 8
                  bgeu         a7, s5, 452f
                  andi         t3, s3, -1198
                  and          a2, tp, s6
451:              and          t6, a5, zero
452:              srai         s3, s3, 20
                  bgeu         a6, a2, 457f
                  sltiu        zero, s10, -413
                  beq          a7, t3, 456f
456:              nop
457:              srl          a1, t5, s5
                  slt          s10, s5, t1
                  sll          s11, s0, s9
                  srai         s3, a0, 19
                  sub          s6, tp, s1
                  and          s5, a5, s8
                  srl          s10, ra, s1
                  or           a2, a1, ra
                  srai         a2, t1, 25
                  sub          s10, s1, t5
                  slt          s3, s0, a7
                  sll          a1, s4, s11
                  nop
                  andi         s5, s8, -978
                  slli         s11, ra, 13
                  slti         s7, t4, -1338
                  slt          s3, t0, s7
                  blt          s2, s9, 479f
                  srl          s6, a5, t4
                  bne          t2, t2, 481f
                  lui          s1, 336739
                  nop
479:              bgeu         t4, a6, 495f
                  xor          sp, t5, tp
481:              xor          ra, s11, tp
                  sltiu        t6, s7, 1833
                  bltu         a2, s5, 488f
                  bltu         a0, a6, 486f
                  auipc        s3, 1030065
486:              slt          t5, a1, a5
                  and          a2, s2, a6
488:              slli         s4, a0, 11
                  addi         t4, t6, 1574
                  xor          s5, s6, a7
                  or           a4, gp, t5
                  sub          s5, s1, s10
                  beq          a7, t6, 504f
                  sra          s10, s8, a4
495:              lui          gp, 960363
                  xor          s4, tp, tp
                  or           t6, s7, s6
                  la           a3, sub_4
                  slt          a1, t3, s9
                  addi         a3, a3, 128
                  xori         a2, a0, -74
                  srai         sp, t5, 19
                  xori         sp, a5, -1877
                  bgeu         tp, s1, sub_1_j3 #branch to jump instr
                  andi         s0, s11, -1876
                  xori         a5, a4, -349
                  slt          tp, gp, t4
                  sub          s3, a7, a4
sub_1_j3:         jalr         t5, a3, -127 #jump sub_1 -> sub_4
                  sra          a1, sp, zero
                  addi         t6, a3, 1002
                  slli         s10, a2, 27
                  addi         a7, s8, 639
                  lui          zero, 807095
                  ori          s11, sp, 1048
                  srl          tp, t0, t0
                  auipc        a7, 900321
504:              nop
                  auipc        zero, 998761
                  bne          sp, t3, 510f
                  add          zero, t2, s10
                  slti         s11, t1, -96
                  addi         a1, t6, 235
510:              bne          s4, s10, 515f
                  slt          a6, s8, t5
                  srai         gp, s9, 27
                  srli         tp, a2, 29
                  bgeu         a2, a2, 531f
515:              lui          s1, 882660
                  slli         a2, a1, 24
                  ori          t2, a6, 1450
                  andi         a0, s7, 10
                  lui          zero, 646953
                  sltiu        s4, s9, 90
                  bne          sp, a6, 539f
                  sra          s10, t0, t2
                  bltu         t4, t2, 532f
                  bgeu         gp, s3, 532f
                  sll          sp, a3, s11
                  bltu         s9, s9, 527f
527:              srli         a4, tp, 18
                  sra          sp, sp, s7
                  and          a4, t3, a6
                  blt          gp, t0, 549f
531:              bne          s9, s10, 543f
532:              slli         a1, s5, 30
                  auipc        a0, 24956
                  bge          s7, s8, 548f
                  add          a2, tp, zero
                  ori          t4, s9, -1845
                  sra          ra, s3, sp
                  slti         s10, s5, -1938
539:              ori          s4, s7, -294
                  nop
                  sra          a1, t0, a1
                  addi         t3, t6, 1120
543:              auipc        s7, 690288
                  ori          t5, t1, 857
                  auipc        s8, 314749
                  slti         t6, s5, -498
                  sltu         a7, t0, a0
548:              bge          s11, t3, 568f
549:              beq          s3, t1, 554f
                  slti         zero, t3, -1247
                  lui          a6, 180235
                  beq          gp, s6, 561f
                  slti         t6, tp, -943
554:              bgeu         s0, zero, 568f
                  add          a1, a3, s10
                  srl          s1, t4, a7
                  slti         s10, s10, 1564
                  srai         a5, ra, 28
                  sltiu        a3, ra, -1651
                  auipc        a4, 812791
561:              srl          s5, t4, t3
                  bgeu         a2, zero, 569f
                  nop
                  or           a0, a6, s1
                  xori         a7, t1, -443
                  lui          s11, 305588
                  sub          a4, t3, s2
568:              sltiu        t6, t5, -638
569:              bgeu         a6, a5, 572f
                  slli         tp, sp, 0
                  lui          a7, 1020484
572:              sra          s8, s3, a1
                  srai         sp, a4, 21
                  srli         s6, tp, 16
                  slti         s3, a0, 944
                  sub          ra, s7, s4
                  slt          t2, s11, s3
                  or           a7, s1, a4
                  sltiu        t5, s8, -1664
                  andi         t2, s0, -61
                  slli         t4, t0, 16
                  xori         s8, ra, 1528
                  nop
                  srai         t2, s1, 18
                  xor          s10, t2, t0
                  bge          t5, tp, 603f
                  add          sp, zero, t0
                  xori         s5, a0, -934
                  srai         gp, t0, 8
                  srl          t4, s6, s4
                  add          sp, s7, a4
                  sub          t3, s8, t3
                  ori          s8, t5, 1011
                  srli         a1, s11, 19
                  ori          s0, s5, 1167
                  sub          s6, a5, a1
                  srai         ra, s4, 28
                  add          a7, tp, s9
                  or           a2, a5, s7
                  blt          t4, t4, 603f
                  lui          gp, 268901
                  slt          zero, a6, a6
603:              sll          s4, zero, sp
                  sltu         a0, s2, s5
                  nop
                  blt          t1, s10, 611f
                  nop
                  sltu         gp, t3, t5
                  bne          a7, t1, 625f
                  lui          t5, 24207
611:              auipc        a0, 124049
                  srl          s4, s7, t1
                  bgeu         s6, t0, 632f
                  nop
                  addi         s11, sp, -1019
                  slt          s11, s8, gp
                  add          gp, a6, a6
                  xori         s4, s5, -1241
                  bge          sp, ra, 627f
                  srl          s1, s1, t6
                  srai         s7, ra, 28
                  sltu         a0, sp, s8
                  srai         s6, a6, 8
                  srai         ra, s2, 6
625:              addi         s8, s9, -473
                  beq          s4, s7, 631f
627:              add          s11, t5, s10
                  nop
                  srai         a6, a5, 26
                  lui          t3, 591829
631:              add          gp, a2, a7
632:              beq          s7, a7, 646f
                  srli         t6, s6, 25
                  bltu         s9, zero, 635f
635:              sltu         sp, a6, a2
                  blt          a3, t4, 640f
                  srai         ra, sp, 2
                  blt          t5, t6, 654f
                  xor          s6, a7, s5
640:              sra          a5, s10, t0
                  sltu         s3, tp, a3
                  srl          t2, t5, s6
                  sra          ra, s0, t2
                  slt          sp, a7, a4
                  srli         s0, a5, 22
646:              lui          t2, 902126
                  nop
                  bltu         a3, a2, 650f
                  srl          zero, s7, s5
                  beq          s5, a4, sub_1_j4 #branch to jump instr
                  sra          t4, a7, s0
                  add          tp, s2, a5
                  auipc        s8, 228391
                  sra          ra, s3, s7
                  add          s3, t0, a0
                  xor          zero, s4, ra
sub_1_j4:         jal          t5, sub_2 #jump sub_1 -> sub_2
                  sltiu        a6, t3, -952
650:              slt          a6, s10, t2
                  srli         a4, sp, 18
                  bltu         s6, t1, 661f
                  bne          zero, t2, 661f
654:              and          t2, s2, s8
                  blt          s5, a4, 666f
                  ori          t6, a3, -1780
                  blt          s3, sp, 658f
658:              or           t4, a4, a0
                  ori          a0, a5, -293
                  srai         t5, sp, 10
661:              and          a2, s1, sp
                  srai         ra, s0, 3
                  or           a4, t5, s9
                  sub          t2, t5, a7
                  beq          a5, s8, 683f
666:              sra          a2, a2, s2
                  add          a2, a1, t4
                  xori         t4, s4, 101
                  sltiu        s10, t1, 749
                  sltiu        a6, s2, 2002
                  auipc        s11, 449282
                  slti         tp, s3, 1274
                  addi         t3, s3, -1107
                  bge          a1, a5, 690f
                  blt          s5, s6, 684f
                  addi         s1, t4, 138
                  auipc        s10, 46172
                  addi         tp, a4, 1106
                  lui          t4, 637477
                  auipc        a2, 251376
                  xori         t4, a5, -1612
                  bge          s5, sp, 699f
683:              srli         s11, t5, 24
684:              blt          a7, s7, 689f
                  sra          t5, s5, tp
                  srl          tp, a7, a3
                  and          s8, s4, t6
                  sll          s3, a1, zero
689:              srl          zero, s8, s1
690:              auipc        a2, 11582
                  ori          s10, a0, -537
                  srai         t4, a0, 30
                  sub          sp, s5, gp
                  sltu         a1, t1, t2
                  slti         s0, sp, -1770
                  blt          a7, t0, 713f
                  bne          a5, s8, 714f
                  and          zero, sp, t5
699:              bltu         t1, a3, 703f
                  ori          s7, a5, -49
                  slti         sp, s8, -701
                  slti         tp, s7, -1606
703:              sltu         a1, s8, a0
                  blt          tp, t2, 709f
                  bge          a7, t6, 709f
                  srl          ra, sp, t3
                  srl          ra, s0, t0
                  andi         a0, s1, 271
709:              sll          t2, s1, a7
                  xori         t6, a2, 163
                  blt          t0, a3, 718f
                  slli         s8, s0, 23
713:              sub          s10, s4, a4
714:              blt          s3, a4, 728f
                  sltu         a1, t2, ra
                  lui          s11, 106594
                  sltiu        s5, a1, 1355
718:              blt          s8, t3, 738f
                  sub          zero, a4, sp
                  xori         t3, ra, -864
                  sub          t2, t1, a4
                  lui          s7, 923507
                  sltiu        s5, a7, -1399
                  bgeu         a0, t1, 736f
                  bltu         s0, s11, 730f
                  andi         t2, s3, -1798
                  slt          s5, a5, t4
728:              bltu         s7, a4, 733f
                  lui          s1, 46342
730:              blt          s4, a4, 735f
                  sra          s10, s5, s4
                  srl          s4, s9, t2
733:              xori         tp, s10, -950
                  bge          s11, s2, 750f
735:              sltiu        a4, s1, 1463
736:              nop
                  slti         t4, s7, -1776
738:              srai         t2, s10, 25
                  sltu         s3, a4, t0
                  sll          a1, a1, s4
                  slli         sp, t4, 25
                  sltiu        s5, t2, 1114
                  nop
                  andi         t1, a5, -776
                  ori          zero, s0, -1826
                  xori         s3, ra, 1145
                  bltu         s9, t0, 767f
                  sub          s10, ra, a2
                  sltiu        t2, a4, -486
750:              xor          t3, t5, t5
                  slti         a1, s5, -1259
                  lui          a4, 176368
                  blt          s9, s3, 770f
                  sll          t4, t3, ra
                  sub          ra, a5, sp
                  xor          a4, zero, s2
                  srai         t5, a0, 5
                  auipc        tp, 52312
                  bne          a5, s1, 764f
                  addi         a1, s11, 529
                  nop
                  bne          t6, t4, 767f
                  beq          a1, s7, 767f
764:              lui          t3, 740852
                  and          s0, sp, s8
                  srli         t5, t6, 4
767:              slli         a7, a0, 4
                  sltiu        a7, s1, -1941
                  slti         a3, s1, 714
770:              sltiu        t3, s6, 1317
                  xor          s8, a6, tp
                  add          a6, t6, gp
                  slti         s10, t6, -1378
                  and          t1, sp, s11
                  add          gp, a3, s10
                  bgeu         t3, sp, 790f
                  srl          s1, a0, a6
                  bgeu         a3, a2, 794f
                  nop
                  srai         a0, s9, 5
                  or           t6, a5, s10
                  blt          a1, s9, 786f
                  lui          a5, 276295
                  slti         t3, s10, -50
                  beq          a0, a0, 796f
786:              sra          a7, zero, tp
                  and          a4, t5, s7
                  slt          s1, gp, s2
                  bltu         t1, s8, 794f
790:              xori         s8, t3, -1832
                  srli         a6, s11, 21
                  srli         t1, s0, 8
                  auipc        a4, 281333
794:              bltu         tp, s7, 813f
                  slli         a2, a3, 11
796:              sltiu        gp, a5, -288
                  bltu         s11, s2, 804f
                  bne          a5, a1, 815f
                  bgeu         t0, a2, 800f
800:              addi         t3, a5, -1267
                  add          t1, ra, ra
                  xori         a1, t5, -811
                  auipc        zero, 448937
804:              slli         s6, s7, 3
                  sub          a1, t2, s6
                  srai         s8, tp, 27
                  lui          t4, 627227
                  srai         t6, t2, 5
                  sub          s11, ra, a4
                  nop
                  ori          t6, t2, -241
                  nop
813:              blt          sp, t0, 827f
                  nop
815:              blt          t3, s10, 823f
                  bne          gp, a5, 828f
                  slti         a0, sp, -835
                  beq          t6, a7, 836f
                  sll          a5, s1, s5
                  bgeu         s10, a5, 829f
                  xor          a7, s7, tp
                  bgeu         tp, gp, 826f
823:              auipc        a7, 747642
                  sub          s5, a1, s9
                  slti         s1, s10, 391
826:              srli         gp, tp, 8
827:              xor          t4, a6, t6
828:              and          t6, s9, gp
829:              sltiu        s3, s0, -850
                  beq          s11, t1, 833f
                  srli         t4, tp, 28
                  ori          a5, t6, 2023
833:              beq          a7, a3, 850f
                  srl          s1, s2, a5
                  xori         zero, a7, 1767
836:              auipc        t4, 188609
                  bgeu         s2, s8, 846f
                  slt          a6, t3, s0
                  xor          t4, s3, ra
                  auipc        s0, 338475
                  sub          s1, s1, t0
                  sra          sp, tp, a2
                  sltiu        a5, s9, -1670
                  slt          s1, t0, s5
                  slli         t1, s8, 14
846:              auipc        t6, 248216
                  blt          s5, t1, 848f
848:              bltu         a1, ra, 864f
                  auipc        a3, 705534
850:              and          t4, t4, t1
                  srli         s3, a1, 12
                  slli         ra, t6, 25
                  blt          s10, a2, 861f
                  beq          s2, zero, 856f
                  srai         s4, s8, 25
856:              lui          a2, 16344
                  bltu         s3, a0, 862f
                  nop
                  srli         a7, a7, 21
                  and          t6, t2, s1
861:              srli         tp, ra, 6
862:              blt          t1, tp, 876f
                  or           a1, s2, s4
864:              beq          t6, a6, 869f
                  sltiu        s5, t1, 1968
                  bltu         s7, s10, 871f
                  sra          t6, gp, sp
                  and          s7, a2, zero
869:              or           s4, a1, t4
                  sra          t4, s8, t1
871:              bltu         ra, s9, 872f
872:              and          t4, s2, t3
                  srli         t5, t1, 13
                  and          s4, t0, a7
                  or           s10, a6, a2
876:              nop
                  blt          s9, t1, 886f
                  or           a1, tp, t6
                  blt          a7, s5, 896f
                  or           t3, s5, sp
                  bgeu         s3, t4, 884f
                  bne          gp, s8, 898f
                  bgeu         s9, s9, 887f
884:              nop
                  bne          s10, a2, 889f
886:              bltu         s1, s4, 905f
887:              beq          s5, s8, 903f
                  xor          s4, s0, a1
889:              blt          s5, a3, 894f
                  bltu         a4, s4, 898f
                  nop
                  ori          t1, t6, -1327
                  sra          s7, t5, t1
894:              bltu         s4, a2, 911f
                  slli         t4, s5, 12
896:              sltiu        t1, s9, 479
                  andi         a7, t0, -566
898:              sltiu        a4, t6, -1288
                  auipc        a3, 722756
                  sltu         ra, s1, a1
                  auipc        t5, 74715
                  bltu         s8, t1, 916f
903:              bgeu         t2, a2, 923f
                  slti         s0, s2, -1633
905:              bltu         s0, s11, 922f
                  nop
                  sltu         s5, a6, a0
                  lui          t3, 536780
                  beq          a5, s5, 925f
                  and          t5, s6, sp
911:              srai         s0, s11, 4
                  add          s1, t5, s5
                  sra          s5, gp, a6
                  srl          s10, s2, s2
                  sll          s0, ra, a5
916:              sltu         s11, sp, t3
                  sll          t2, a1, t3
                  xori         s5, s7, 2047
                  addi         a1, s3, -125
                  sltiu        a4, s11, -1951
                  sll          a1, t2, t2
922:              slti         s5, s9, 634
923:              addi         a5, s2, -1741
                  lui          s7, 363806
925:              bne          t5, a1, 934f
                  slli         t1, t5, 28
                  srli         s4, s1, 2
                  sra          t5, t2, a3
                  srai         s11, tp, 10
                  lui          tp, 566398
                  slti         s5, t2, -234
                  blt          t5, a0, 950f
                  xor          s11, sp, s10
934:              sltu         a0, s6, s8
                  auipc        s5, 28045
                  andi         s6, sp, 1163
                  sub          s6, s7, t4
                  beq          zero, s2, 943f
                  beq          s0, a6, 950f
                  blt          a0, ra, 941f
941:              srl          a1, t2, zero
                  sltiu        tp, s10, -235
943:              sltu         a3, a2, a6
                  auipc        t1, 631538
                  ori          s0, s9, -1021
                  slt          a6, zero, s1
                  andi         a4, a4, -1005
                  srl          s5, ra, gp
                  sltu         t5, a1, s8
950:              srai         a7, a3, 5
                  blt          a1, s8, 953f
                  addi         a4, a3, 735
953:              auipc        sp, 559250
                  bne          a4, s5, 962f
                  slli         s6, a5, 20
                  slti         t1, t5, 1698
                  ori          t1, a6, -771
sub_1_10:         jal          t5, 3f
0:                jal          sp, 23f
1:                jal          ra, 11f
2:                jal          t1, 16f
3:                jal          ra, 10f
4:                jal          t1, 0b
5:                jal          t1, 24f
6:                jal          ra, 14f
7:                jal          ra, 17f
8:                jal          ra, 6b
9:                jal          ra, 4b
10:               jal          s0, 25f
11:               jal          tp, 27f
12:               jal          ra, 15f
13:               jal          t1, 20f
14:               jal          ra, 1b
15:               jal          ra, 21f
16:               jal          t1, 28f
17:               jal          ra, 30f
18:               jal          ra, 22f
19:               jal          t4, 12b
20:               jal          ra, 7b
21:               jal          t3, 9b
22:               jal          a4, 13b
23:               jal          ra, 2b
24:               jal          t1, 18b
25:               jal          ra, 19b
26:               jal          t6, 29f
27:               jal          s8, 26b
28:               jal          ra, 8b
29:               jal          t1, 5b
30:               addi         s10, a1, 1381
                  ori          t2, a2, -996
                  andi         s4, tp, -1772
                  auipc        t5, 1038494
                  srai         a3, s2, 3
962:              blt          a2, a1, 969f
                  or           s4, tp, ra
                  sltiu        s10, t3, -244
                  sltiu        a0, s2, -592
                  sltiu        s5, a1, -158
                  bne          t0, s6, 979f
                  lui          s0, 407264
969:              blt          s8, s9, 973f
                  bne          s10, s1, 990f
                  xor          a5, s0, s11
                  srl          a5, a2, t4
973:              and          s3, s3, a1
                  beq          s0, s10, 975f
975:              auipc        s11, 146617
                  bne          s3, s3, 993f
                  xori         ra, a7, 439
                  sll          a5, s3, a5
979:              sub          a0, a1, s2
                  or           a0, t4, s7
                  xor          t3, a0, s0
                  blt          t2, a2, 990f
                  blt          s3, s0, 988f
                  srai         s6, s1, 16
                  sub          t4, a3, t1
                  sub          t3, t0, zero
                  blt          zero, s0, 1003f
988:              sltiu        s0, zero, 683
                  srai         a4, t4, 22
sub_1_3:          jal          t5, 6f
0:                jal          t6, 8f
1:                jal          a6, 3f
2:                jal          ra, 12f
3:                jal          ra, 2b
4:                jal          t3, 9f
5:                jal          ra, 10f
6:                jal          t1, 7f
7:                jal          ra, 0b
8:                jal          ra, 4b
9:                jal          ra, 5b
10:               jal          ra, 11f
11:               jal          t1, 1b
12:               and          s0, s1, s6
990:              lui          a6, 41920
                  and          a7, s9, sp
                  slt          a1, s2, a7
993:              ori          t4, s8, -918
                  slti         s8, t5, 1157
                  xori         s4, t4, -1482
                  slt          s1, s6, tp
                  slti         t6, t1, -802
                  and          zero, t3, s0
                  lui          s6, 416944
                  ori          a5, s4, -1608
                  xor          a7, s11, a7
                  bne          a1, a1, 1010f
1003:             beq          s4, a1, 1019f
                  sub          t6, s10, s5
                  xor          a3, t3, s11
                  xori         t4, s4, -631
                  sra          a3, s5, t4
                  sltiu        a2, s5, 2
                  addi         ra, s0, 166
1010:             or           t3, s5, s6
                  sra          ra, a6, gp
                  slt          gp, s6, s2
                  slli         s7, a4, 30
                  slti         a5, ra, -929
                  and          s5, s9, t3
                  srai         s11, a7, 4
                  or           s11, s2, zero
                  xori         s7, t6, -579
1019:             sltiu        zero, zero, 359
                  sra          s7, s10, s2
                  slt          a4, t5, tp
                  sra          a0, a3, ra
                  srli         s5, s7, 0
                  sltu         s8, t1, s8
                  slti         s10, t6, -1203
                  srai         a0, s0, 8
                  add          s6, t3, a2
                  srli         tp, a1, 18
                  xor          a0, s2, s0
                  add          a4, s3, s8
                  slli         s11, a7, 2
                  bne          s11, a5, 1043f
                  nop
                  beq          s0, a7, 1046f
                  slt          zero, s9, sp
                  or           s7, s9, t2
                  bgeu         a5, s6, 1056f
                  sltiu        t4, a5, -1738
                  slt          a1, t5, t5
                  srai         a0, a6, 15
                  srl          s10, a1, s11
                  beq          s0, t6, 1045f
1043:             nop
                  bgeu         a7, s8, 1061f
1045:             ori          t4, a2, 661
1046:             beq          s0, t2, 1050f
                  bge          s6, t6, 1049f
                  sra          a7, a1, s4
1049:             slli         t3, t1, 10
1050:             slt          a7, s7, t4
                  sra          a2, s1, s8
                  sra          s11, t4, t6
                  or           t1, t2, t0
                  slli         s11, t5, 26
                  slli         sp, s1, 29
1056:             sra          a0, t6, a5
                  slli         t6, t6, 11
                  srli         ra, gp, 3
                  nop
                  beq          gp, t5, 1077f
1061:             nop
                  or           t3, s4, t4
                  slli         s3, t4, 3
                  sltiu        t4, a0, 1322
                  nop
                  lui          ra, 804634
                  sll          a2, s6, t0
                  addi         s10, t3, 1589
                  or           s7, a4, s1
                  auipc        a6, 732332
                  andi         s3, a2, -83
                  xor          s7, s6, s8
                  sub          a7, a2, gp
                  addi         a6, s3, 57
                  slti         t1, s10, -330
                  blt          s7, s9, 1080f
1077:             auipc        a5, 827821
                  addi         t3, t5, -910
                  ori          a4, a3, -1493
1080:             bne          a6, a5, 1085f
                  or           a6, t1, a7
                  sll          a6, a2, tp
                  bge          ra, s11, 1092f
                  or           s3, s5, s7
1085:             sll          s3, t1, t6
                  bgeu         a6, zero, 1093f
                  xori         a3, t2, 818
                  xor          a4, ra, s9
                  slli         t2, a3, 11
                  or           ra, t5, gp
                  addi         ra, s6, 1406
1092:             ori          s6, t3, -670
1093:             nop
                  xori         a3, s10, -2015
                  nop
                  nop
                  xor          t3, s2, t1
                  srai         t1, s3, 7
                  sub          s3, zero, tp
                  beq          a4, t2, 1105f
                  srli         a4, s8, 10
                  addi         s10, t3, -766
                  slli         a6, a3, 22
                  slti         a2, a3, -1317
1105:             bltu         a3, t6, 1106f
1106:             sltu         a3, a7, s5
                  sra          a3, s9, a7
                  addi         s11, s8, 1897
                  blt          a3, s7, 1123f
                  sra          t1, s8, t0
                  bgeu         s10, s4, 1120f
                  beq          a4, t4, 1117f
                  bltu         a3, tp, 1117f
                  bltu         s10, a5, 1119f
                  ori          a0, t3, 1560
                  lui          a5, 929470
1117:             slt          zero, t4, s8
                  sra          t2, s5, s5
1119:             lui          t4, 222138
1120:             bne          zero, zero, 1138f
                  slli         ra, a0, 2
                  nop
1123:             bne          s5, t0, 1139f
                  bne          ra, zero, 1138f
                  bge          a0, s0, 1141f
                  lui          a1, 143869
                  ori          s0, t5, -528
                  xori         t5, s1, -64
                  srai         t3, a3, 0
                  sltiu        s0, a3, -1652
                  or           zero, a6, t2
                  sra          s0, s2, sp
                  addi         s8, t4, 1836
                  srai         a6, t4, 21
                  xori         t5, s9, -380
                  auipc        t4, 749961
                  srai         s0, a4, 6
1138:             and          sp, a5, zero
1139:             or           gp, a2, tp
                  nop
1141:             srl          t1, a7, t4
                  bne          a0, t3, 1143f
1143:             bge          s1, s9, 1147f
                  srl          t2, t1, s8
                  sltu         t6, t2, a3
                  slti         s0, t0, -1541
1147:             bltu         t5, t5, 1154f
                  addi         a3, a6, -1896
                  andi         gp, t6, -601
                  sub          a4, gp, s5
                  beq          ra, s2, 1165f
                  sra          a3, s5, a6
                  ori          a1, sp, 1595
1154:             sll          s8, s8, t2
                  srai         s11, t5, 16
                  srli         tp, s11, 4
                  auipc        a4, 687376
                  blt          s11, t2, 1177f
                  srl          gp, sp, zero
                  sll          sp, a3, s9
                  slti         s1, a3, 1922
                  bltu         t4, gp, 1179f
                  ori          tp, a6, 1257
                  andi         a6, a5, -181
1165:             xor          s11, s5, s5
                  and          t2, gp, t3
                  srl          s7, t5, t1
                  nop
                  slli         t1, t2, 23
                  ori          a7, sp, 1151
                  slti         s8, ra, -547
                  slt          t6, s6, s0
                  addi         a2, t3, 855
                  andi         t1, tp, 336
                  auipc        s3, 130814
                  slt          s6, t4, t3
1177:             sltiu        t5, s1, 1789
                  lui          sp, 664858
1179:             sub          a2, sp, s5
                  bgeu         s3, a0, 1188f
                  srli         a4, s2, 13
                  nop
                  sltu         a6, s5, s10
                  srl          a2, t3, s2
                  blt          s9, s1, 1196f
                  slli         ra, a4, 28
                  sltiu        t6, s11, -62
1188:             slti         t1, a4, -1748
                  andi         a3, a1, -408
                  blt          a7, a7, 1196f
                  nop
                  and          a5, t0, t0
                  sll          t6, s6, t5
                  blt          t1, a3, 1196f
                  auipc        a0, 11209
1196:             and          a5, t6, s6
                  lw           t5, 4(t0)
                  srl          a4, s9, s8
                  sub          tp, s9, t4
                  addi         t0, t0, 40
                  srli         a6, t6, 23
1743:             addi x30, x30, 1
1743:             jalr x30, x30, 0
sub_2:            slti         t4, s7, 118
                  addi         t0, t0, -8
                  sll          t2, s9, a3
                  add          a6, s3, s1
                  addi         t6, s10, -423
                  sw           t5, 4(t0)
                  sll          s4, t1, a7
                  slt          s8, t5, t3
                  auipc        a7, 643098
                  sltiu        t6, s4, -78
sub_2_2:          jal          t5, 21f
0:                jal          ra, 20f
1:                jal          ra, 11f
2:                jal          tp, 15f
3:                jal          t1, 2b
4:                jal          t4, 22f
5:                jal          t3, 26f
6:                jal          t1, 5b
7:                jal          tp, 4b
8:                jal          ra, 6b
9:                jal          a1, 1b
10:               jal          a3, 14f
11:               jal          ra, 8b
12:               jal          t1, 9b
13:               jal          t1, 18f
14:               jal          t1, 19f
15:               jal          t1, 12b
16:               jal          ra, 3b
17:               jal          ra, 13b
18:               jal          gp, 24f
19:               jal          ra, 7b
20:               jal          t1, 23f
21:               jal          ra, 10b
22:               jal          ra, 17b
23:               jal          s6, 25f
24:               jal          ra, 0b
25:               jal          ra, 16b
26:               sltu         s11, s7, s4
sub_2_0:          jal          t5, 13f
0:                jal          gp, 26f
1:                jal          t1, 29f
2:                jal          a3, 20f
3:                jal          ra, 12f
4:                jal          ra, 5f
5:                jal          ra, 14f
6:                jal          ra, 7f
7:                jal          ra, 27f
8:                jal          t4, 18f
9:                jal          t1, 2b
10:               jal          sp, 1b
11:               jal          gp, 19f
12:               jal          ra, 24f
13:               jal          ra, 16f
14:               jal          s7, 9b
15:               jal          a7, 17f
16:               jal          ra, 23f
17:               jal          ra, 8b
18:               jal          t1, 6b
19:               jal          ra, 0b
20:               jal          ra, 10b
21:               jal          a1, 22f
22:               jal          t1, 15b
23:               jal          s7, 21b
24:               jal          ra, 25f
25:               jal          ra, 4b
26:               jal          ra, 3b
27:               jal          ra, 11b
28:               jal          ra, 30f
29:               jal          sp, 28b
30:               slti         t4, gp, -678
sub_2_1:          jal          t5, 7f
0:                jal          s6, 15f
1:                jal          ra, 0b
2:                jal          t1, 9f
3:                jal          s5, 14f
4:                jal          ra, 8f
5:                jal          ra, 12f
6:                jal          ra, 18f
7:                jal          t3, 5b
8:                jal          ra, 2b
9:                jal          ra, 10f
10:               jal          s5, 16f
11:               jal          ra, 4b
12:               jal          ra, 17f
13:               jal          ra, 11b
14:               jal          ra, 6b
15:               jal          t1, 13b
16:               jal          s11, 3b
17:               jal          t1, 1b
18:               lui          a5, 372160
                  beq          s1, a2, 13f
                  auipc        a2, 549409
                  bne          sp, zero, 6f
                  sltu         a6, t3, a7
sub_2_3:          jal          t5, 11f
0:                jal          ra, 9f
1:                jal          t1, 10f
2:                jal          ra, 5f
3:                jal          t3, 4f
4:                jal          t3, 2b
5:                jal          ra, 7f
6:                jal          ra, 12f
7:                jal          ra, 0b
8:                jal          t6, 3b
9:                jal          ra, 6b
10:               jal          t1, 8b
11:               jal          t4, 1b
12:               jal          ra, 13f
13:               slt          sp, s4, s9
                  srl          a3, a6, s6
                  slli         ra, s4, 9
6:                add          s4, zero, gp
                  and          a3, t0, a4
                  bne          a6, tp, 19f
                  or           a3, s3, t4
                  and          t6, t1, s5
                  slli         a3, s11, 13
                  bltu         t0, s8, 32f
13:               xor          s10, t3, t6
                  bge          zero, s5, 20f
                  slt          s1, s1, s1
                  sltu         gp, s6, s0
                  bne          s11, s7, 31f
                  bge          a4, a1, 24f
19:               sll          a4, zero, t1
20:               and          ra, a2, sp
                  beq          a2, s11, 32f
                  srli         s0, s7, 9
                  auipc        a1, 159888
24:               or           a3, s1, a7
                  sltu         s8, t1, a7
                  bgeu         s11, tp, 32f
                  xori         t1, a5, -1305
                  nop
                  or           a6, s10, sp
                  slti         zero, s6, 1851
31:               sub          t3, a3, s3
32:               srl          a5, a3, t4
                  slti         s11, sp, 1734
                  bne          sp, ra, 37f
                  srl          a5, t4, s8
                  add          a6, ra, t2
37:               srai         a6, s11, 17
                  bltu         tp, s1, 57f
                  sltu         a2, a2, gp
                  ori          s8, t2, 1071
                  nop
                  lui          a4, 404622
                  slli         s3, a0, 1
                  sll          a4, gp, t5
                  srai         t4, sp, 8
                  addi         t5, s9, 699
                  bltu         a2, a7, 65f
                  add          a1, s10, t2
                  sra          ra, a0, s4
                  andi         a0, t6, -1672
                  sltiu        sp, sp, 82
                  sltu         a0, s8, s2
                  nop
                  sltiu        t2, a2, -161
                  add          t5, gp, s6
                  andi         tp, t1, 515
57:               srl          s11, t0, s11
                  addi         sp, zero, 2011
                  slti         s8, gp, 354
                  slli         a4, s8, 4
                  la           a6, sub_5
                  sltiu        sp, s0, 1438
                  addi         a6, a6, -683
                  or           s10, s6, t2
                  srai         a2, t0, 30
                  xor          zero, t2, t2
                  addi         s10, s8, -89
                  nop
                  slt          zero, tp, a7
                  sltiu        s1, a6, 1817
sub_2_j6:         jalr         t5, a6, 684 #jump sub_2 -> sub_5
                  srl          s1, s9, s2
                  beq          gp, s0, 72f
                  ori          s0, s9, -160
                  lui          s5, 271698
65:               sra          s5, t5, s3
                  blt          s8, s8, 80f
                  beq          s5, s4, 76f
                  srli         s11, s2, 2
                  bltu         gp, a4, 81f
                  xor          t5, s10, t3
                  bne          a0, t0, 90f
72:               srl          sp, s3, a0
                  slt          tp, s3, s10
                  auipc        a3, 975418
                  and          zero, s2, sp
76:               srai         a6, t6, 15
                  addi         t3, gp, 1415
                  bgeu         s8, tp, 88f
                  bltu         ra, s9, 96f
80:               slli         t6, a1, 5
81:               slt          t1, s9, s1
                  sltu         t6, s2, tp
                  slt          a4, a7, s5
                  slli         zero, t1, 23
                  srli         a0, t3, 5
                  nop
                  beq          s7, t1, 106f
88:               srl          a6, a2, s10
                  or           s8, t6, a6
90:               beq          t5, s10, 103f
                  lui          a7, 83580
                  and          sp, gp, s1
                  bge          t0, t1, 106f
                  xori         s11, a7, 1233
                  slli         s5, s7, 2
96:               lui          t3, 580484
                  xori         zero, t0, 1696
                  srl          sp, tp, t2
                  srai         s0, s10, 25
                  srl          t6, s11, s0
                  nop
                  bne          s6, s11, 117f
103:              sub          a0, t3, gp
                  ori          tp, t0, -1196
                  sltu         a5, s10, t2
106:              xor          t1, a4, s3
                  xor          gp, a3, a5
                  srai         s0, t4, 6
                  bgeu         a7, s11, 117f
                  bge          a5, t4, 113f
                  auipc        t6, 5187
                  srl          a1, t3, a0
113:              sltu         ra, t2, a1
                  bgeu         s5, a6, 134f
                  slli         a0, s4, 2
                  sltu         a1, ra, s3
117:              beq          s6, s2, 118f
118:              bgeu         a0, sp, 132f
                  bne          s0, a4, 126f
                  slt          sp, t3, t1
                  slli         sp, ra, 15
                  sra          s0, s3, t2
                  bne          gp, t6, 128f
                  beq          s6, t5, 137f
                  blt          a3, ra, 144f
126:              nop
                  sll          a0, s3, a7
128:              xor          s4, s2, gp
                  slti         t4, a5, -400
                  sll          t3, t3, t3
                  xori         a3, t6, -1457
132:              ori          s1, t6, 1835
                  beq          t0, a5, 139f
134:              xori         sp, gp, 1960
                  sub          t4, t0, tp
                  xori         a3, t5, 1813
137:              slt          a1, tp, s7
                  slli         t1, s3, 28
139:              slli         zero, t2, 1
                  ori          a5, s0, 2035
                  bge          t6, a2, 146f
                  lui          t5, 964025
                  sltu         s1, a1, s9
144:              and          sp, a6, a7
                  sll          s8, s11, s10
146:              bltu         zero, s2, 149f
                  bge          s9, t0, 157f
                  bne          a4, a2, 161f
149:              slli         s7, s5, 24
                  srai         sp, s1, 17
                  srai         a2, a4, 8
                  sra          ra, a3, s2
                  slti         s11, a3, -1644
                  slli         s6, t3, 10
                  add          a4, s8, a5
                  blt          s6, s0, 160f
157:              srai         a7, ra, 28
                  sra          tp, tp, s5
                  and          a5, t3, s11
160:              slli         gp, a4, 9
161:              xor          tp, zero, t6
                  add          s4, s10, s6
                  bltu         gp, a0, 166f
                  srl          a1, a1, a7
                  and          s6, a2, t6
166:              xori         t5, s10, 278
                  beq          gp, s10, 168f
168:              bgeu         a2, s5, 176f
                  beq          s4, s8, 183f
                  bge          a4, ra, 177f
                  nop
                  bne          s7, s6, 182f
                  addi         a5, s11, 1292
                  sltiu        a4, a1, 1751
                  srl          t4, gp, a4
176:              andi         gp, s5, 943
177:              nop
                  srl          a1, s6, s11
                  beq          s6, s5, 192f
                  slli         gp, a3, 20
                  xori         s10, a1, -1000
182:              srli         sp, a2, 30
183:              or           a1, t4, s3
                  add          t2, a5, a0
                  bne          s8, s2, 203f
                  bgeu         sp, s9, 195f
                  blt          s5, s9, 201f
                  sll          s3, a2, s7
                  or           s7, a3, t2
                  slti         s7, gp, -890
                  srli         s11, s1, 9
192:              srl          a7, t5, a2
                  bgeu         t4, s3, 199f
                  slt          a3, s3, s11
195:              xori         a6, s11, 1186
                  srl          tp, a6, s6
                  sub          s6, a7, s4
                  slli         a7, s8, 26
199:              addi         s10, s8, 654
                  xori         a0, s10, -1380
201:              bltu         s7, s4, 204f
                  or           s6, s7, s3
203:              sll          s1, s7, s6
204:              andi         s7, t5, 1246
                  lw           t5, 4(t0)
                  sra          a7, s11, s1
                  slli         ra, a5, 25
                  sub          s11, a6, a3
                  srl          t6, s2, s7
                  auipc        a7, 417220
                  slli         gp, s0, 31
                  addi         s3, s5, 2015
                  addi         t0, t0, 8
                  xori         a6, t5, -1535
                  and          t2, a1, s4
332:              addi x28, x30, 0
332:              jalr x28, x28, 0
sub_3:            xor          s6, s8, t4
                  xori         s6, s7, 1180
                  blt          a3, t4, sub_3_stack_p
                  slt          s1, s11, s3
                  addi         t4, s6, 68
sub_3_stack_p:    addi         t0, t0, -60
                  sw           t5, 4(t0)
                  ori          a2, s11, 1823
sub_3_1:          jal          t5, 4f
0:                jal          s8, 7f
1:                jal          ra, 10f
2:                jal          gp, 0b
3:                jal          ra, 2b
4:                jal          ra, 3b
5:                jal          a3, 9f
6:                jal          ra, 1b
7:                jal          s6, 5b
8:                jal          ra, 6b
9:                jal          t1, 8b
10:               nop
sub_3_2:          jal          t5, 13f
0:                jal          ra, 9f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          tp, 0b
4:                jal          ra, 1b
5:                jal          ra, 12f
6:                jal          ra, 2b
7:                jal          t1, 4b
8:                jal          ra, 14f
9:                jal          ra, 5b
10:               jal          tp, 8b
11:               jal          t1, 15f
12:               jal          t1, 10b
13:               jal          ra, 6b
14:               jal          ra, 11b
15:               andi         t6, t6, 1741
sub_3_0:          jal          t5, 19f
0:                jal          ra, 8f
1:                jal          ra, 24f
2:                jal          a5, 28f
3:                jal          ra, 26f
4:                jal          ra, 9f
5:                jal          s0, 4b
6:                jal          gp, 15f
7:                jal          t1, 0b
8:                jal          ra, 10f
9:                jal          ra, 17f
10:               jal          ra, 20f
11:               jal          ra, 22f
12:               jal          ra, 11b
13:               jal          ra, 25f
14:               jal          t1, 12b
15:               jal          t1, 14b
16:               jal          gp, 18f
17:               jal          ra, 13b
18:               jal          tp, 2b
19:               jal          ra, 23f
20:               jal          ra, 6b
21:               jal          a2, 7b
22:               jal          s6, 16b
23:               jal          t2, 27f
24:               jal          gp, 5b
25:               jal          ra, 3b
26:               jal          ra, 21b
27:               jal          ra, 1b
28:               or           a7, a4, a1
sub_3_4:          jal          t5, 4f
0:                jal          ra, 7f
1:                jal          ra, 15f
2:                jal          t1, 6f
3:                jal          ra, 17f
4:                jal          a0, 11f
5:                jal          a5, 9f
6:                jal          ra, 1b
7:                jal          ra, 8f
8:                jal          t1, 18f
9:                jal          ra, 3b
10:               jal          t1, 12f
11:               jal          t1, 0b
12:               jal          s11, 19f
13:               jal          s6, 2b
14:               jal          t4, 16f
15:               jal          ra, 10b
16:               jal          t1, 13b
17:               jal          ra, 14b
18:               jal          ra, 5b
19:               andi         s5, t1, -942
sub_3_3:          jal          t5, 7f
0:                jal          ra, 9f
1:                jal          t1, 11f
2:                jal          ra, 4f
3:                jal          ra, 8f
4:                jal          ra, 12f
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          t1, 10f
8:                jal          s1, 6b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               jal          ra, 2b
12:               slli         s1, t5, 14
                  add          zero, t4, a3
                  bgeu         s3, gp, 15f
                  bge          a1, s5, 14f
                  srai         gp, t2, 16
                  srl          a5, a0, a7
                  sll          s5, a3, s9
                  xori         tp, a7, -562
                  slli         s3, s10, 9
                  slli         a2, s2, 23
                  bne          s1, s8, 18f
                  ori          a3, a5, 1361
                  slti         ra, gp, -1804
                  or           t2, s11, t5
                  bltu         s8, t6, 22f
14:               bge          s8, a3, 21f
15:               andi         s11, s4, 277
                  nop
                  nop
18:               xor          sp, s2, s7
                  or           t5, t5, a4
                  nop
21:               beq          s4, s10, 37f
22:               sltiu        t5, s7, -2038
                  sltiu        s10, t5, 1888
                  beq          s6, sp, 36f
                  srl          a7, s2, s9
                  sll          sp, s5, t6
                  addi         a3, t4, 1971
                  sltiu        a3, t6, 1631
                  lui          a2, 464472
                  andi         s8, s11, -1759
                  slti         tp, s2, -450
                  srl          s5, t1, a5
                  sltu         s7, t3, s6
                  ori          a6, s6, -50
                  sra          a4, s2, s7
36:               bltu         t1, s2, 41f
37:               or           zero, s6, t3
                  add          sp, a7, s10
                  srai         a1, s11, 15
                  slti         s1, tp, 1907
41:               sub          a4, a4, gp
                  bgeu         t3, s4, 52f
                  sub          s7, zero, t0
                  beq          a6, a5, 48f
                  and          s11, s0, a1
                  sll          s1, a1, a6
                  andi         a1, sp, -1507
48:               blt          s4, s6, 59f
                  bltu         t5, s3, 54f
                  and          a4, a7, t0
                  addi         t1, gp, 324
52:               xor          s7, gp, s11
                  sra          a3, s0, s8
54:               blt          s4, a4, 66f
                  nop
                  andi         sp, t2, 1006
                  xori         t3, tp, 1001
                  or           sp, gp, a6
59:               bltu         ra, ra, 79f
                  xori         a0, a1, -468
                  beq          t1, t6, 78f
                  blt          s9, t0, 68f
                  or           gp, s10, t2
                  sltu         t5, s6, s3
                  add          s7, t3, a5
66:               sltiu        s11, s4, 884
                  bge          a4, s5, 80f
68:               slli         s3, s0, 29
                  auipc        tp, 235623
                  slti         a2, gp, -1870
                  xori         a0, t2, 1668
                  lui          a5, 408971
                  xori         a7, t3, -196
                  lui          tp, 751746
                  sll          s6, s7, s4
                  slt          a0, sp, a7
                  auipc        s10, 158110
78:               sll          t2, t3, t0
79:               srai         sp, t5, 14
80:               or           gp, sp, s7
                  slti         s0, tp, -932
                  srli         s5, t3, 1
                  xori         s5, t0, 1043
                  xori         sp, s3, -890
                  beq          a4, s9, 89f
                  srl          zero, t2, t2
                  srai         tp, s1, 6
                  xor          ra, a0, a2
89:               bgeu         a4, s4, 96f
                  slli         s7, a7, 6
                  slli         a5, gp, 14
                  blt          a0, sp, 93f
93:               srli         t4, s9, 6
                  srli         t1, a2, 3
                  auipc        s0, 1024752
96:               srli         sp, a4, 0
                  auipc        a4, 155305
                  auipc        s1, 779903
                  beq          ra, s3, 115f
                  srli         a6, s9, 20
                  addi         a0, a0, -1500
                  srai         s1, t2, 25
                  sltu         a0, s5, a6
                  bltu         t2, s1, 107f
                  srli         a6, s6, 8
                  xor          s10, a3, s9
107:              slt          s6, s0, a4
                  xor          a4, zero, t6
                  nop
                  bgeu         s2, a5, 127f
                  addi         s7, t1, 92
                  auipc        a0, 537178
                  sra          a2, s4, s7
                  sltiu        t1, s10, -1559
115:              srl          ra, s3, s6
                  sll          s1, s9, a7
                  xori         a5, a6, -422
                  sra          a6, s0, s3
                  blt          t5, s3, 139f
                  xor          gp, t1, a4
                  lui          a7, 982303
                  blt          s0, s7, 131f
                  addi         s10, s2, -1655
                  blt          a3, a3, 135f
                  and          t6, t4, a2
                  slti         a3, a6, -23
127:              sll          a6, t4, s10
                  lui          a5, 900595
                  srl          s7, s11, s9
                  sll          s4, s9, a0
131:              sltu         t1, s4, a0
                  sub          s11, t1, t2
                  xor          a4, zero, t1
                  bgeu         a5, a6, 144f
135:              xori         s7, t6, -2043
                  andi         a5, gp, 320
                  nop
                  beq          s7, a6, 157f
139:              xori         tp, a1, -1418
                  slti         s8, a3, -2035
                  bge          t0, zero, 160f
                  bge          a0, s11, 159f
                  sltiu        a6, s6, 208
144:              lui          ra, 374158
                  blt          a3, a5, 155f
                  bltu         s4, tp, 150f
                  srl          a7, s4, s8
                  and          t4, s9, a1
                  sra          a4, s11, a0
150:              xori         s0, s11, -625
                  bgeu         a6, a3, 171f
                  nop
                  xor          t5, s1, t3
                  add          t1, s5, s0
155:              or           s11, s0, s11
                  xor          s8, s1, s4
157:              add          s10, a4, sp
                  sltu         a1, s4, ra
159:              lui          t6, 617625
160:              sltiu        a6, s0, 2044
                  sltiu        t3, s2, -140
                  srli         sp, s9, 5
                  bgeu         ra, t4, 172f
                  bge          a4, s5, 184f
                  sltiu        t1, s3, -856
                  bge          a7, t6, 176f
                  bge          s4, s9, 186f
                  slt          a3, t1, s9
                  sra          s7, s2, s4
                  beq          gp, a4, 181f
171:              lui          a5, 666876
172:              blt          t2, t1, 179f
                  bltu         s6, ra, 178f
                  bne          a4, a7, 191f
                  sll          s5, a1, ra
176:              xor          gp, t3, t6
                  lui          s6, 736551
178:              andi         ra, s0, 795
179:              xor          a6, s9, t2
                  nop
181:              slli         a1, s2, 10
                  sltiu        s8, t4, -764
                  sub          a7, a1, t1
184:              slli         a3, zero, 22
                  bge          s0, sp, 202f
186:              andi         a4, s6, 637
                  sra          s7, t4, zero
                  slli         t4, t4, 12
                  sub          a5, zero, t0
                  srli         zero, s1, 21
191:              srl          a7, a4, ra
                  beq          t2, a5, 205f
                  beq          s5, t1, 202f
                  srl          s4, s8, s0
                  sra          t1, zero, s7
                  slt          a0, s11, s2
                  lui          a6, 388454
                  addi         ra, t5, -484
                  bltu         s8, s7, 205f
                  lui          s7, 291626
                  sltu         s7, t3, t6
202:              beq          s9, a3, 214f
                  sra          t1, s3, a3
                  srai         t3, s11, 31
205:              and          t1, s4, s5
                  xori         a1, s1, -832
                  sltiu        t3, s3, 1311
                  ori          t5, ra, 634
                  srai         t6, s7, 31
                  srai         t2, a7, 7
                  srai         s6, t6, 23
                  slli         a2, tp, 7
                  slt          a7, tp, s6
214:              auipc        ra, 60713
                  beq          a5, s8, 220f
                  nop
                  sll          sp, a7, t3
                  sub          a6, s1, a7
                  slt          zero, t1, s10
220:              andi         a7, t5, 1475
                  and          a0, t3, a1
                  lui          s11, 186089
                  bne          a7, gp, 240f
                  andi         a5, s8, 136
                  sll          ra, s5, a4
                  sub          a0, zero, s8
                  andi         t5, s2, -1243
                  or           s3, t3, s9
                  ori          a0, s11, -1234
                  sltiu        s10, s11, -345
                  srli         a2, a0, 28
                  xor          a5, s8, gp
                  beq          s9, t3, 234f
234:              sltiu        a1, t1, -382
                  bge          ra, s8, 251f
                  srai         a1, s8, 18
                  andi         t1, t6, -1010
                  xor          a0, t4, zero
                  xori         s1, a1, -1363
240:              slt          s7, s8, a4
                  sll          s6, a4, a6
                  sra          t6, s7, t1
                  nop
                  lui          a1, 961184
                  xori         a2, a7, 372
                  andi         ra, s10, 1854
                  bge          a5, t0, 252f
                  bge          zero, a7, 252f
                  bne          s3, s0, 252f
                  sra          s5, a3, a0
251:              lui          sp, 442016
252:              sltiu        sp, t5, 1008
                  lw           t5, 4(t0)
                  addi         t0, t0, 60
                  slli         s1, s4, 24
                  nop
                  ori          ra, s1, 1117
360:              addi x12, x30, 1
360:              jalr x12, x12, 0
sub_4:            bltu         a0, a5, sub_4_stack_p
                  slt          a6, s7, s4
sub_4_stack_p:    addi         t0, t0, -48
                  and          a2, s8, a4
                  lui          s3, 319693
                  sltu         a3, s8, sp
                  sw           t5, 4(t0)
                  nop
                  and          s8, t1, t2
sub_4_9:          jal          t5, 3f
0:                jal          s10, 13f
1:                jal          ra, 7f
2:                jal          ra, 1b
3:                jal          s7, 5f
4:                jal          a7, 10f
5:                jal          ra, 11f
6:                jal          ra, 2b
7:                jal          ra, 4b
8:                jal          s0, 6b
9:                jal          t1, 0b
10:               jal          t1, 9b
11:               jal          ra, 12f
12:               jal          t1, 8b
13:               andi         s7, a4, -340
sub_4_2:          jal          t5, 5f
0:                jal          a3, 1f
1:                jal          ra, 6f
2:                jal          ra, 9f
3:                jal          a3, 2b
4:                jal          t1, 8f
5:                jal          ra, 4b
6:                jal          s11, 7f
7:                jal          ra, 10f
8:                jal          sp, 3b
9:                jal          ra, 0b
10:               ori          tp, zero, 1395
sub_4_1:          jal          t5, 7f
0:                jal          ra, 8f
1:                jal          ra, 9f
2:                jal          ra, 3f
3:                jal          t6, 10f
4:                jal          t1, 2b
5:                jal          t1, 4b
6:                jal          a0, 0b
7:                jal          gp, 1b
8:                jal          ra, 5b
9:                jal          ra, 6b
10:               auipc        s3, 256548
sub_4_3:          jal          t5, 0f
0:                jal          ra, 3f
1:                jal          t1, 2f
2:                jal          t1, 11f
3:                jal          ra, 5f
4:                jal          ra, 16f
5:                jal          ra, 15f
6:                jal          ra, 12f
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          ra, 13f
10:               jal          ra, 4b
11:               jal          ra, 14f
12:               jal          ra, 7b
13:               jal          a6, 1b
14:               jal          ra, 8b
15:               jal          t1, 9b
16:               sltiu        a7, ra, -1737
sub_4_4:          jal          t5, 25f
0:                jal          ra, 18f
1:                jal          ra, 12f
2:                jal          ra, 17f
3:                jal          t1, 7f
4:                jal          ra, 5f
5:                jal          t1, 6f
6:                jal          ra, 0b
7:                jal          tp, 9f
8:                jal          ra, 15f
9:                jal          t1, 14f
10:               jal          t3, 26f
11:               jal          a5, 21f
12:               jal          sp, 8b
13:               jal          s7, 1b
14:               jal          ra, 16f
15:               jal          t1, 2b
16:               jal          ra, 4b
17:               jal          ra, 19f
18:               jal          t1, 20f
19:               jal          ra, 23f
20:               jal          t1, 10b
21:               jal          t1, 3b
22:               jal          s3, 24f
23:               jal          ra, 11b
24:               jal          ra, 13b
25:               jal          a6, 22b
26:               srli         a4, a0, 26
sub_4_0:          jal          t5, 3f
0:                jal          ra, 2f
1:                jal          ra, 7f
2:                jal          ra, 11f
3:                jal          ra, 12f
4:                jal          ra, 6f
5:                jal          ra, 1b
6:                jal          sp, 0b
7:                jal          a4, 9f
8:                jal          ra, 14f
9:                jal          sp, 13f
10:               jal          gp, 4b
11:               jal          ra, 8b
12:               jal          ra, 5b
13:               jal          ra, 10b
14:               sll          a7, sp, s0
sub_4_7:          jal          t5, 25f
0:                jal          ra, 24f
1:                jal          ra, 5f
2:                jal          ra, 9f
3:                jal          ra, 6f
4:                jal          ra, 8f
5:                jal          t1, 2b
6:                jal          t4, 4b
7:                jal          t4, 3b
8:                jal          ra, 18f
9:                jal          tp, 7b
10:               jal          ra, 17f
11:               jal          sp, 23f
12:               jal          ra, 11b
13:               jal          s10, 28f
14:               jal          ra, 0b
15:               jal          ra, 21f
16:               jal          t1, 12b
17:               jal          ra, 16b
18:               jal          s3, 26f
19:               jal          ra, 27f
20:               jal          ra, 30f
21:               jal          ra, 19b
22:               jal          t1, 20b
23:               jal          tp, 14b
24:               jal          ra, 15b
25:               jal          ra, 10b
26:               jal          s7, 13b
27:               jal          ra, 1b
28:               jal          ra, 29f
29:               jal          t1, 22b
30:               xori         a3, sp, 1215
sub_4_6:          jal          t5, 13f
0:                jal          ra, 7f
1:                jal          s6, 10f
2:                jal          ra, 4f
3:                jal          t1, 11f
4:                jal          t1, 6f
5:                jal          ra, 8f
6:                jal          ra, 14f
7:                jal          sp, 9f
8:                jal          a3, 1b
9:                jal          ra, 19f
10:               jal          s11, 3b
11:               jal          t3, 18f
12:               jal          t1, 0b
13:               jal          sp, 5b
14:               jal          s0, 12b
15:               jal          s8, 16f
16:               jal          ra, 2b
17:               jal          t1, 15b
18:               jal          ra, 17b
19:               or           s11, a4, a7
                  sltu         t6, t5, t3
                  nop
                  beq          t5, a7, 10f
                  bgeu         t5, s4, 15f
                  blt          t3, t4, 21f
                  sltu         s0, t1, a5
                  slti         s7, a1, -1403
                  srai         t6, t2, 30
                  add          a3, a2, tp
                  addi         a6, t0, -829
10:               srli         a6, ra, 27
                  add          gp, a3, sp
                  sll          a7, s0, zero
                  xori         s6, a6, 1415
                  and          a7, t1, tp
15:               and          t6, s1, s10
                  nop
                  sll          s1, s11, a0
                  addi         t1, a5, 250
                  blt          t5, t1, 26f
                  sra          t1, t4, s4
21:               sub          s4, s2, s7
                  srl          t6, s0, t2
                  xori         s10, t4, 649
                  sltu         sp, s9, t2
                  or           s3, s9, gp
26:               slli         s10, t1, 4
                  xori         a5, a7, -1116
                  sltu         sp, a6, s9
                  bne          s5, s0, 46f
                  andi         a4, a3, 1193
                  sra          tp, s5, s6
                  add          s1, a5, s11
                  beq          s11, s10, 36f
                  sltu         t4, s4, s8
                  andi         s10, t3, 518
36:               sltu         s10, s1, sp
                  bltu         t2, s11, 49f
                  beq          t4, zero, 46f
                  bgeu         s4, gp, 59f
                  sll          zero, t1, a6
                  slti         s6, t4, 350
                  nop
                  or           t2, s5, sp
                  blt          s9, t0, 63f
                  sltu         a4, s9, s2
46:               xori         s4, a7, -2032
                  bgeu         s11, s4, 62f
                  bne          a1, a1, 62f
49:               auipc        t5, 933287
                  bgeu         a3, t1, 53f
                  add          t3, tp, a5
                  xori         s3, s7, -1353
53:               lui          t3, 573164
                  auipc        t5, 49630
                  bgeu         t6, sp, 73f
                  slli         sp, zero, 12
                  ori          t1, t4, -791
                  xori         a5, a6, -70
59:               bne          ra, s7, 66f
                  blt          a1, t5, 69f
                  beq          s6, t4, 66f
62:               xor          s4, t3, s10
63:               bne          s4, a3, 80f
                  lui          t4, 577776
                  bltu         zero, s10, 79f
66:               xor          ra, gp, a4
                  beq          a0, a4, 81f
                  blt          a6, s3, 84f
69:               sub          s4, t5, t0
                  ori          a0, t3, -1282
                  auipc        a6, 1004306
                  srli         a6, tp, 28
73:               bgeu         t4, a2, 91f
                  bltu         t4, s10, 76f
                  sub          s3, t2, tp
76:               bgeu         s9, ra, 80f
                  blt          s7, gp, 95f
                  andi         s3, a1, -1329
79:               bltu         s0, tp, 92f
80:               auipc        a7, 899422
81:               auipc        s5, 575319
                  bgeu         a6, s3, 91f
                  blt          gp, s7, 100f
84:               andi         a6, a0, 1985
                  auipc        s4, 436248
                  xori         a5, t2, -90
                  bgeu         a3, ra, 98f
                  srai         s10, zero, 0
                  slli         a2, ra, 19
                  sra          s8, s0, zero
91:               slti         s0, tp, 1825
92:               andi         tp, s3, -375
                  auipc        s4, 1024306
                  bgeu         zero, s1, 99f
95:               bge          s3, s2, 114f
                  sra          tp, s5, s3
                  srli         a1, a6, 8
98:               auipc        s5, 396497
99:               slt          t3, s3, a5
100:              bltu         t3, t2, 118f
                  slti         t1, s1, -204
                  andi         s7, a6, -1692
                  srli         s4, t6, 8
                  srai         s1, zero, 13
                  srl          a6, s5, s9
                  sltu         t4, zero, s5
                  or           s3, s3, tp
                  bgeu         s8, a3, 110f
                  srli         gp, s11, 18
110:              slt          t6, a1, a7
                  sra          a7, sp, s0
                  slt          tp, s0, s5
                  beq          s0, s7, 131f
114:              addi         a0, s2, -716
                  addi         a0, t1, 1438
                  sltiu        a0, sp, -397
                  or           tp, t0, t1
118:              ori          zero, s9, -921
                  or           t3, t5, t6
                  bgeu         s9, t6, 125f
                  xor          s11, s9, s5
                  slli         s4, s7, 23
                  sltu         s4, s6, s4
                  sll          s11, t6, ra
125:              or           s5, t2, a3
                  andi         tp, a4, 1170
                  slti         s6, s6, 1117
                  auipc        s10, 791835
                  sll          a7, s5, a1
                  andi         sp, a6, 385
131:              sltu         s5, gp, a5
                  srl          s4, a3, ra
                  srli         t3, s5, 12
                  beq          zero, a4, 143f
                  auipc        s6, 185716
                  bltu         a2, s3, 139f
                  srl          t1, t1, s0
                  addi         a6, s8, 1839
139:              bne          s10, s8, 146f
                  lui          s5, 185278
                  beq          s0, s8, 144f
                  sltu         a3, s8, tp
143:              sra          s0, t0, tp
144:              sltiu        s5, s10, 1080
                  slti         t1, t1, 1947
146:              sra          s7, s8, s3
                  srl          s6, s0, s0
                  slti         s10, s11, 1807
                  sll          s8, s11, a0
                  bne          sp, s9, 158f
                  sltu         gp, s0, a7
                  srli         a4, a4, 4
                  or           s7, s2, s7
                  srli         a1, a5, 6
                  sltiu        s7, a3, -204
                  slli         s7, a6, 22
                  srai         s6, s4, 25
158:              srli         t6, a7, 25
                  srli         a7, s10, 28
                  sltiu        a3, a1, 1751
                  srl          tp, s2, s8
sub_4_5:          jal          t5, 13f
0:                jal          ra, 6f
1:                jal          a6, 5f
2:                jal          ra, 1b
3:                jal          t4, 10f
4:                jal          ra, 12f
5:                jal          tp, 8f
6:                jal          gp, 2b
7:                jal          ra, 15f
8:                jal          ra, 16f
9:                jal          s11, 11f
10:               jal          t1, 14f
11:               jal          ra, 3b
12:               jal          a7, 0b
13:               jal          ra, 9b
14:               jal          ra, 7b
15:               jal          ra, 4b
16:               or           s3, s7, t1
                  bltu         t4, s4, 179f
                  blt          a4, ra, 167f
                  xor          a0, gp, a1
                  or           s7, a5, s2
                  lui          gp, 396160
167:              or           t1, s2, t4
                  sltiu        s5, s1, -1168
                  bge          a7, s2, 183f
                  slli         s0, tp, 19
                  xor          tp, s10, s11
                  auipc        s4, 969269
                  beq          t6, s1, 186f
                  or           a5, s0, s7
                  addi         sp, t2, -924
                  bge          a7, zero, 181f
                  ori          s0, s5, 1371
                  lui          ra, 861826
179:              xori         t2, zero, -778
                  blt          a1, s9, 187f
181:              sra          s1, zero, t6
                  beq          s9, s7, 190f
183:              bgeu         t2, a7, 195f
                  srl          ra, a2, s8
                  bltu         s0, a7, 202f
186:              beq          s8, a1, 201f
187:              xor          s10, t0, s1
                  addi         t6, t5, 1879
                  srl          a0, gp, t5
190:              sltu         s11, s6, t1
                  sll          s11, a2, a5
                  sll          tp, s10, t3
                  ori          gp, a6, 2035
                  addi         t3, t5, -1978
195:              andi         s5, a5, -370
                  sltiu        a5, s2, 699
                  lui          s6, 543216
                  or           t1, s6, t6
                  slt          s5, a4, t3
                  srli         s11, a2, 28
201:              bltu         s5, t3, 215f
202:              bne          a0, s11, 214f
                  sub          a7, t1, tp
                  auipc        a5, 395738
                  xori         gp, s0, 256
                  xori         s8, t0, -542
                  sll          tp, a6, s6
                  lui          s5, 711331
                  lui          a5, 785336
                  add          ra, ra, a4
                  srli         t4, sp, 7
                  bgeu         a6, zero, 221f
                  xori         a2, a6, 113
214:              bgeu         t5, t4, 225f
215:              blt          t2, s7, 235f
                  bgeu         gp, t1, 230f
                  xori         s3, t4, 1405
                  sltiu        a4, t2, -1620
                  and          zero, s0, t2
                  ori          t5, t3, 681
221:              bgeu         sp, s0, 239f
                  sll          tp, zero, s0
                  srl          s6, tp, s0
                  sltiu        t5, s10, -325
225:              beq          sp, a5, 242f
                  srli         t2, t4, 23
                  and          t5, s5, s9
                  xori         t1, s4, -376
                  blt          a5, s7, 246f
230:              and          s4, s1, s11
                  slli         tp, s0, 5
                  nop
                  xori         t3, a4, -800
                  sub          s1, s1, s4
235:              srl          s8, t4, tp
                  bgeu         t6, t0, 252f
                  bne          s3, a0, 250f
                  sra          t4, gp, s6
239:              sub          s6, a3, t0
                  bge          a1, a3, 247f
                  sltu         s6, gp, s0
242:              nop
                  sll          a7, sp, a1
                  ori          s7, s8, -54
                  slt          sp, a4, a0
246:              sll          ra, a5, t1
247:              sltu         s1, a5, s0
                  ori          tp, a3, 433
                  sub          s10, s7, t1
250:              xori         zero, s11, 361
                  slti         s0, s4, -88
252:              ori          t3, a5, 1029
                  auipc        t2, 1018459
                  or           s8, sp, t3
                  blt          t3, ra, 273f
                  sub          s6, t4, s6
                  add          s7, a4, t4
                  slt          s6, sp, ra
                  sub          tp, s8, s3
                  slti         s11, a1, -1891
                  add          t3, s9, s8
                  srli         zero, ra, 7
                  bgeu         s11, s8, 270f
                  sltu         t2, s11, t1
                  xor          s5, s9, a7
                  and          a1, a6, s4
                  sra          t5, s1, sp
                  srli         s8, s1, 17
                  sub          t3, s3, a3
270:              slt          a4, sp, s5
                  addi         s3, s0, 117
                  bltu         s6, sp, 290f
273:              xori         a3, s11, 2016
                  bltu         gp, a1, 293f
                  bltu         s6, a4, 293f
                  sll          s5, a3, t4
                  sub          s10, s4, a7
                  addi         a4, s0, -2040
                  slti         s3, s11, 661
                  bge          a6, a2, 289f
                  xor          a6, t0, a5
                  srai         t1, t0, 28
                  bgeu         s9, s0, 297f
                  sltiu        t4, s6, -485
                  or           t1, t3, s9
                  and          s3, s9, s6
                  add          ra, tp, s7
                  sll          a6, s4, t3
289:              srli         a2, gp, 6
290:              xor          a3, s2, t4
                  sub          t4, a1, t1
                  srai         a6, t3, 14
293:              nop
                  sra          a6, s5, ra
                  bge          s10, a4, 311f
                  beq          zero, a5, 304f
297:              or           zero, s1, a0
                  sltu         ra, s3, t2
                  bne          s1, s11, 310f
                  blt          a6, s9, 302f
                  srli         a4, s7, 11
302:              or           s1, a1, s2
                  xor          a0, zero, s9
304:              addi         s6, a5, -1646
                  srl          a1, s7, s0
                  auipc        tp, 207943
                  srai         zero, s1, 9
                  bge          a3, zero, 322f
                  auipc        s11, 679029
310:              xori         sp, s3, 340
311:              lui          t6, 208452
                  xor          t3, t5, s2
                  sltu         t1, s1, t3
                  andi         t5, a4, -1141
                  sltiu        a2, t6, -1306
                  nop
                  sll          s10, sp, a6
                  sra          zero, s1, s6
                  xori         a4, a5, 1783
                  slli         s3, s10, 14
                  or           t5, t0, s6
322:              auipc        s6, 786460
                  srl          a6, a7, gp
                  lui          s5, 831992
                  srai         s5, s8, 9
                  slli         ra, zero, 19
                  add          s7, s4, s10
                  and          a7, a0, gp
                  sll          s6, a3, s8
                  bltu         a3, tp, 347f
                  srl          s7, zero, s1
                  bgeu         s11, a3, 337f
                  sltiu        a6, a1, -845
                  sltu         t4, tp, a5
                  nop
                  nop
337:              bltu         s10, a6, 349f
                  srai         a5, s0, 22
                  nop
                  blt          ra, a2, 354f
                  sltu         sp, s10, s9
                  slli         a5, a0, 8
                  bne          t1, s9, 355f
                  slti         s11, zero, 519
                  sub          zero, t2, tp
                  sll          t1, s8, a7
347:              auipc        s11, 519432
                  slti         s0, s2, -641
349:              sub          tp, s3, s10
                  xori         gp, sp, -540
                  lui          t1, 626199
                  sltu         a2, s7, s3
                  bltu         t0, s0, 368f
354:              auipc        t1, 217694
355:              and          s7, s1, a6
                  bgeu         a6, a7, 361f
                  slli         t3, s8, 31
                  sll          sp, s7, a5
                  srli         s8, t0, 7
                  xor          s3, s0, a7
361:              ori          t2, t3, -366
                  lui          a6, 259899
                  sltu         t4, s11, a3
sub_4_8:          jal          t5, 15f
0:                jal          ra, 4f
1:                jal          gp, 12f
2:                jal          ra, 6f
3:                jal          a3, 13f
4:                jal          ra, 10f
5:                jal          tp, 14f
6:                jal          ra, 8f
7:                jal          s10, 5b
8:                jal          t1, 17f
9:                jal          t1, 20f
10:               jal          tp, 7b
11:               jal          ra, 0b
12:               jal          ra, 19f
13:               jal          ra, 11b
14:               jal          gp, 16f
15:               jal          s11, 3b
16:               jal          ra, 1b
17:               jal          ra, 9b
18:               jal          ra, 2b
19:               jal          gp, 18b
20:               slli         t1, a5, 25
                  srai         t2, s1, 22
                  sub          ra, s9, a4
                  bge          ra, a0, 369f
                  bge          s9, tp, 370f
368:              sll          s10, a3, t1
369:              sltiu        ra, s2, -875
370:              nop
                  ori          gp, ra, -53
                  sub          s4, a2, t3
                  ori          a2, s5, -450
                  addi         s6, s6, -1333
                  bltu         a3, a7, 379f
                  bgeu         s10, tp, 393f
                  srai         a6, gp, 24
                  sll          s3, s7, s9
379:              lui          gp, 40032
                  auipc        zero, 786140
                  slli         a5, s6, 8
                  srai         s4, a3, 24
                  bltu         s9, a7, 391f
                  or           t1, t4, s7
                  auipc        a0, 399585
                  slt          a1, sp, t6
                  sra          s0, t0, a3
                  sltu         a5, s0, s4
                  add          t1, s4, t6
                  blt          sp, t3, 407f
391:              sll          s0, a4, zero
                  srai         t3, s2, 25
393:              bne          zero, s6, 402f
                  bne          s11, s5, 411f
                  and          s11, a6, t4
                  xor          s8, t6, tp
                  slt          t3, gp, s7
                  andi         s1, t5, 835
                  ori          zero, s5, -1050
                  auipc        s6, 863611
                  bltu         t2, a2, 421f
402:              srl          t6, ra, a5
                  sltiu        a0, s2, 1763
                  or           tp, zero, tp
                  srai         a6, tp, 1
                  slt          t1, s10, t3
407:              slt          s0, s1, zero
                  sltiu        a2, t3, -436
                  sltu         s10, s6, a3
                  blt          s7, t1, 419f
411:              slli         s5, s2, 21
                  slt          s0, t0, a1
                  srai         s8, s8, 23
                  slli         s7, a6, 24
                  sub          a0, s9, tp
                  andi         a2, zero, -1501
                  sra          t4, s4, ra
                  slli         t6, t6, 13
419:              srl          a2, s10, s11
                  slt          a3, s10, gp
421:              xori         s6, s9, 1228
                  xori         s4, t4, 1843
                  bge          a3, a7, 439f
                  srl          ra, sp, t4
                  sub          a6, s0, a7
                  sltu         s6, a3, s7
                  xor          t1, t5, ra
                  sltu         s6, s9, s8
                  auipc        t6, 786342
                  srl          a1, t3, sp
                  slt          ra, t1, t4
                  xor          ra, zero, tp
                  sltu         s8, s6, a2
                  srl          s5, t0, s1
                  and          a3, a3, s11
                  add          a1, s1, a4
                  srl          s6, a3, s11
                  ori          a7, t4, -571
439:              nop
                  xor          zero, s1, t0
                  beq          sp, s0, 459f
                  addi         a0, t6, 1270
                  xor          gp, s10, s3
                  xori         s1, s3, 671
                  ori          t2, zero, 335
                  ori          s0, a7, 1223
                  andi         a3, s8, 1130
                  bltu         s3, a3, 452f
                  addi         sp, s5, -1227
                  bne          s6, t6, 459f
                  srl          a7, a3, a6
452:              sub          a3, a1, a5
                  slti         s1, ra, -392
                  bne          s1, a2, 462f
                  bge          t0, a7, 458f
                  andi         s8, a0, -1571
                  bne          s8, sp, 477f
458:              andi         s10, a6, -1377
459:              sra          a6, s5, s7
                  bne          s9, a4, 465f
                  bltu         a5, t2, 472f
462:              auipc        a3, 246029
                  addi         t6, a7, -372
                  andi         a5, a1, -178
465:              andi         s5, s9, -858
                  sub          zero, s9, t4
                  slli         s10, s3, 8
                  addi         s3, a6, 1362
                  blt          s2, a0, 487f
                  blt          s10, zero, 487f
                  bgeu         s10, s8, 485f
472:              sltu         s3, a1, a2
                  slti         a2, t3, -2043
                  add          s1, s2, a4
                  nop
                  srl          a7, t0, t5
477:              nop
                  or           sp, a7, t0
                  nop
                  srai         s3, s11, 29
                  sra          a2, s0, t2
                  slli         t3, t6, 24
                  srli         s7, s7, 18
                  and          sp, s8, a5
485:              bgeu         sp, a4, 490f
                  sra          a4, a2, s3
487:              sll          t1, a0, s0
                  bgeu         t5, s9, 503f
                  sll          s4, s7, s3
490:              srli         s0, s1, 19
                  ori          a4, gp, -663
                  bne          t6, a6, 494f
                  beq          t6, a6, 507f
494:              blt          a7, t0, 501f
                  sltiu        sp, t2, 517
                  bge          ra, gp, 513f
                  sll          t6, gp, t6
                  xor          t4, s8, t1
                  slli         t6, tp, 9
                  andi         s1, s4, -1665
501:              nop
                  sra          t2, s9, s4
503:              andi         s3, t0, 832
                  auipc        s7, 855067
                  sltiu        t2, tp, 1410
                  addi         t1, t6, -1694
507:              bltu         s4, t3, 514f
                  bne          t2, tp, 520f
                  sll          s11, gp, a3
                  bgeu         a3, s2, 520f
                  auipc        sp, 796736
                  slt          a3, tp, a7
513:              or           gp, gp, a4
514:              lui          a1, 156031
                  xori         t1, t4, -174
                  bge          s11, a7, 520f
                  sub          s0, s9, s3
                  srai         a3, a0, 11
                  slt          s6, t2, a3
520:              srli         tp, t4, 3
                  srl          tp, gp, s8
                  sltu         zero, t4, s1
                  lw           t5, 4(t0)
                  srai         s5, s9, 10
                  sll          t2, sp, s9
                  slt          t3, s9, zero
                  addi         t0, t0, 48
                  addi         s8, a1, 204
                  sll          t2, t1, a5
                  slti         s5, s7, 227
734:              addi x11, x30, 1
734:              jalr x11, x11, 0
sub_5:            addi         t0, t0, -36
                  sltiu        s1, a6, 200
                  add          s3, a1, zero
                  srli         s8, t5, 25
                  lui          s3, 381452
                  sw           t5, 4(t0)
                  sll          t1, s1, s7
sub_5_8:          jal          t5, 7f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          a2, 6f
3:                jal          ra, 12f
4:                jal          ra, 5f
5:                jal          ra, 3b
6:                jal          sp, 9f
7:                jal          t1, 0b
8:                jal          ra, 1b
9:                jal          t1, 8b
10:               jal          t1, 11f
11:               jal          ra, 4b
12:               nop
sub_5_5:          jal          t5, 5f
0:                jal          ra, 20f
1:                jal          ra, 17f
2:                jal          t1, 15f
3:                jal          t1, 21f
4:                jal          ra, 27f
5:                jal          ra, 14f
6:                jal          ra, 24f
7:                jal          ra, 1b
8:                jal          t1, 16f
9:                jal          s11, 4b
10:               jal          ra, 7b
11:               jal          ra, 2b
12:               jal          ra, 9b
13:               jal          ra, 22f
14:               jal          t1, 23f
15:               jal          ra, 28f
16:               jal          s6, 19f
17:               jal          ra, 13b
18:               jal          ra, 26f
19:               jal          ra, 18b
20:               jal          ra, 8b
21:               jal          ra, 6b
22:               jal          ra, 3b
23:               jal          tp, 25f
24:               jal          ra, 11b
25:               jal          ra, 12b
26:               jal          tp, 10b
27:               jal          s6, 0b
28:               and          s1, s3, a6
sub_5_4:          jal          t5, 12f
0:                jal          ra, 3f
1:                jal          t1, 18f
2:                jal          ra, 11f
3:                jal          ra, 13f
4:                jal          t1, 6f
5:                jal          s7, 4b
6:                jal          ra, 20f
7:                jal          sp, 15f
8:                jal          ra, 1b
9:                jal          ra, 8b
10:               jal          t1, 2b
11:               jal          ra, 9b
12:               jal          ra, 14f
13:               jal          s7, 16f
14:               jal          t1, 17f
15:               jal          a2, 19f
16:               jal          tp, 5b
17:               jal          a5, 10b
18:               jal          t1, 7b
19:               jal          a6, 0b
20:               sltu         t3, gp, a1
sub_5_12:         jal          t5, 15f
0:                jal          ra, 16f
1:                jal          ra, 14f
2:                jal          t1, 20f
3:                jal          ra, 4f
4:                jal          t3, 0b
5:                jal          tp, 18f
6:                jal          sp, 12f
7:                jal          s6, 9f
8:                jal          t1, 19f
9:                jal          s11, 10f
10:               jal          ra, 11f
11:               jal          ra, 22f
12:               jal          s0, 7b
13:               jal          ra, 24f
14:               jal          ra, 21f
15:               jal          t1, 5b
16:               jal          ra, 8b
17:               jal          t1, 1b
18:               jal          ra, 17b
19:               jal          t1, 23f
20:               jal          ra, 6b
21:               jal          t1, 2b
22:               jal          gp, 3b
23:               jal          ra, 13b
24:               slli         tp, t0, 1
sub_5_11:         jal          t5, 2f
0:                jal          ra, 23f
1:                jal          ra, 26f
2:                jal          t1, 27f
3:                jal          t1, 9f
4:                jal          ra, 20f
5:                jal          a1, 1b
6:                jal          ra, 7f
7:                jal          ra, 11f
8:                jal          t1, 28f
9:                jal          ra, 29f
10:               jal          ra, 15f
11:               jal          t1, 24f
12:               jal          ra, 6b
13:               jal          ra, 16f
14:               jal          ra, 22f
15:               jal          t1, 5b
16:               jal          t1, 19f
17:               jal          ra, 21f
18:               jal          ra, 3b
19:               jal          ra, 0b
20:               jal          s5, 14b
21:               jal          s4, 25f
22:               jal          ra, 18b
23:               jal          t1, 4b
24:               jal          gp, 17b
25:               jal          ra, 8b
26:               jal          t1, 13b
27:               jal          t5, 12b
28:               jal          ra, 10b
29:               add          t3, t4, t1
sub_5_7:          jal          t5, 12f
0:                jal          gp, 14f
1:                jal          gp, 9f
2:                jal          t1, 15f
3:                jal          s4, 17f
4:                jal          ra, 6f
5:                jal          ra, 18f
6:                jal          t1, 13f
7:                jal          ra, 8f
8:                jal          ra, 16f
9:                jal          ra, 19f
10:               jal          ra, 5b
11:               jal          t1, 0b
12:               jal          s5, 7b
13:               jal          sp, 3b
14:               jal          ra, 10b
15:               jal          ra, 11b
16:               jal          ra, 2b
17:               jal          ra, 1b
18:               jal          ra, 4b
19:               sltiu        s5, tp, 982
sub_5_10:         jal          t5, 7f
0:                jal          ra, 14f
1:                jal          tp, 10f
2:                jal          t1, 24f
3:                jal          ra, 8f
4:                jal          sp, 17f
5:                jal          ra, 18f
6:                jal          s0, 12f
7:                jal          ra, 13f
8:                jal          tp, 21f
9:                jal          sp, 4b
10:               jal          ra, 20f
11:               jal          t1, 6b
12:               jal          s6, 16f
13:               jal          t1, 0b
14:               jal          ra, 1b
15:               jal          t1, 11b
16:               jal          t1, 23f
17:               jal          sp, 19f
18:               jal          ra, 15b
19:               jal          t1, 22f
20:               jal          t3, 9b
21:               jal          t3, 5b
22:               jal          t1, 3b
23:               jal          ra, 2b
24:               ori          a1, gp, -613
sub_5_2:          jal          t5, 13f
0:                jal          ra, 14f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          sp, 5f
4:                jal          tp, 8f
5:                jal          ra, 0b
6:                jal          t1, 16f
7:                jal          t1, 18f
8:                jal          ra, 11f
9:                jal          t1, 15f
10:               jal          t1, 12f
11:               jal          s4, 2b
12:               jal          ra, 17f
13:               jal          gp, 4b
14:               jal          ra, 7b
15:               jal          ra, 10b
16:               jal          ra, 1b
17:               jal          s3, 6b
18:               sltiu        a3, s2, 1994
sub_5_6:          jal          t5, 14f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          ra, 27f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          s5, 29f
6:                jal          ra, 17f
7:                jal          t1, 15f
8:                jal          a2, 4b
9:                jal          ra, 20f
10:               jal          t3, 28f
11:               jal          ra, 26f
12:               jal          ra, 23f
13:               jal          ra, 11b
14:               jal          ra, 21f
15:               jal          ra, 16f
16:               jal          a2, 2b
17:               jal          ra, 7b
18:               jal          ra, 9b
19:               jal          ra, 22f
20:               jal          t1, 1b
21:               jal          t1, 25f
22:               jal          t1, 0b
23:               jal          ra, 24f
24:               jal          ra, 13b
25:               jal          s10, 12b
26:               jal          ra, 19b
27:               jal          s6, 18b
28:               jal          ra, 6b
29:               and          s4, sp, s0
sub_5_13:         jal          t5, 16f
0:                jal          s10, 25f
1:                jal          gp, 17f
2:                jal          ra, 14f
3:                jal          t1, 9f
4:                jal          ra, 11f
5:                jal          a1, 7f
6:                jal          t1, 19f
7:                jal          ra, 29f
8:                jal          s4, 28f
9:                jal          ra, 15f
10:               jal          t1, 26f
11:               jal          gp, 23f
12:               jal          ra, 22f
13:               jal          a6, 27f
14:               jal          t1, 0b
15:               jal          t1, 10b
16:               jal          ra, 12b
17:               jal          a3, 18f
18:               jal          t1, 2b
19:               jal          ra, 8b
20:               jal          ra, 6b
21:               jal          t1, 20b
22:               jal          t1, 13b
23:               jal          gp, 5b
24:               jal          ra, 4b
25:               jal          t1, 30f
26:               jal          t1, 1b
27:               jal          a5, 24b
28:               jal          s10, 3b
29:               jal          a4, 21b
30:               ori          zero, t4, -1953
sub_5_3:          jal          t5, 13f
0:                jal          ra, 17f
1:                jal          ra, 8f
2:                jal          ra, 16f
3:                jal          tp, 1b
4:                jal          ra, 6f
5:                jal          t1, 7f
6:                jal          ra, 11f
7:                jal          sp, 18f
8:                jal          ra, 2b
9:                jal          a0, 5b
10:               jal          a2, 15f
11:               jal          ra, 12f
12:               jal          ra, 19f
13:               jal          a4, 10b
14:               jal          ra, 3b
15:               jal          ra, 9b
16:               jal          t1, 0b
17:               jal          t1, 20f
18:               jal          ra, 4b
19:               jal          ra, 14b
20:               xor          s10, tp, tp
sub_5_0:          jal          t5, 10f
0:                jal          tp, 6f
1:                jal          ra, 19f
2:                jal          gp, 0b
3:                jal          ra, 13f
4:                jal          ra, 12f
5:                jal          a7, 9f
6:                jal          tp, 8f
7:                jal          t6, 14f
8:                jal          s5, 4b
9:                jal          t1, 20f
10:               jal          t1, 17f
11:               jal          gp, 3b
12:               jal          ra, 16f
13:               jal          t1, 1b
14:               jal          s11, 15f
15:               jal          ra, 11b
16:               jal          ra, 7b
17:               jal          t3, 18f
18:               jal          ra, 2b
19:               jal          s1, 5b
20:               or           a6, s4, t0
sub_5_1:          jal          t5, 10f
0:                jal          ra, 8f
1:                jal          t1, 4f
2:                jal          ra, 3f
3:                jal          t1, 26f
4:                jal          ra, 18f
5:                jal          s3, 19f
6:                jal          ra, 7f
7:                jal          a0, 16f
8:                jal          ra, 22f
9:                jal          t1, 6b
10:               jal          ra, 5b
11:               jal          t1, 14f
12:               jal          tp, 27f
13:               jal          t1, 11b
14:               jal          t1, 12b
15:               jal          ra, 23f
16:               jal          t1, 1b
17:               jal          ra, 21f
18:               jal          s10, 17b
19:               jal          t1, 15b
20:               jal          t1, 0b
21:               jal          t1, 2b
22:               jal          gp, 25f
23:               jal          ra, 9b
24:               jal          ra, 13b
25:               jal          ra, 24b
26:               jal          ra, 20b
27:               slt          s11, s4, a3
sub_5_14:         jal          t5, 16f
0:                jal          t1, 20f
1:                jal          s1, 3f
2:                jal          t1, 12f
3:                jal          s0, 9f
4:                jal          tp, 0b
5:                jal          ra, 10f
6:                jal          ra, 11f
7:                jal          t3, 19f
8:                jal          t1, 4b
9:                jal          t1, 18f
10:               jal          ra, 15f
11:               jal          ra, 25f
12:               jal          sp, 21f
13:               jal          ra, 17f
14:               jal          gp, 2b
15:               jal          gp, 23f
16:               jal          t1, 1b
17:               jal          ra, 6b
18:               jal          gp, 8b
19:               jal          a5, 24f
20:               jal          ra, 7b
21:               jal          ra, 22f
22:               jal          ra, 5b
23:               jal          ra, 13b
24:               jal          ra, 14b
25:               srli         t4, a4, 3
                  add          s8, a1, s6
                  sltu         s3, a5, s6
                  srl          s0, s10, a1
                  sub          s8, s5, a5
                  blt          s6, gp, 24f
                  xori         a7, t2, -182
                  slt          a6, s4, t2
                  bne          s6, s8, 11f
                  beq          a6, s2, 19f
                  lui          a3, 864033
                  sra          gp, a1, a3
11:               slti         ra, t5, -587
                  sra          s3, s2, a5
                  slt          t3, s6, ra
                  or           s5, a6, s0
                  sltiu        a7, s6, -832
                  or           a0, tp, s3
                  and          a0, s7, t1
                  nop
19:               sltu         s10, gp, a2
                  srli         tp, sp, 23
                  srli         s0, t4, 27
                  nop
                  nop
24:               sra          a1, s0, sp
                  bgeu         s3, gp, 33f
                  slli         s6, a4, 14
                  andi         ra, s4, -1739
                  srl          t3, s2, t1
                  slti         ra, s4, -591
                  sltiu        a1, a3, -466
                  and          s1, a3, s5
                  bltu         tp, ra, 44f
33:               lui          s10, 896012
                  slt          t6, a0, s1
                  xor          s0, t0, t3
                  sltiu        a6, s3, 690
                  sub          t6, s9, a0
                  slt          s3, s8, s4
                  beq          a3, t0, 45f
                  slti         a3, zero, 306
                  sltiu        a4, s8, -320
                  ori          sp, a2, -475
                  addi         zero, a7, 1481
44:               slti         t5, t0, 2047
45:               bge          zero, s4, 60f
                  lui          s4, 659400
                  ori          s11, s5, 131
                  andi         s7, t6, -413
                  xor          s7, a0, a5
                  srl          s4, s6, gp
                  sra          s3, t5, s9
                  sltu         s8, a6, s7
                  add          s4, s0, t5
                  ori          s11, a7, -1237
                  nop
                  srai         s4, s4, 9
                  nop
                  lui          a4, 343764
                  lui          a7, 146651
60:               lui          ra, 496075
                  xori         s3, s10, -1265
                  add          s11, a1, s10
                  srai         a6, tp, 11
                  or           t3, a7, s3
                  andi         s3, t0, -1763
                  sll          a3, s0, s5
                  slt          s3, s2, t3
                  bne          a1, t3, 71f
                  bltu         t4, t3, 74f
                  slt          s1, s9, t6
71:               sub          s0, a2, ra
                  or           s3, t0, a0
                  xori         gp, sp, -639
74:               xor          s5, a4, gp
                  xori         s4, s8, 1858
                  bge          sp, s8, 95f
                  slti         t5, a1, 1994
                  xori         a5, s5, 8
                  srai         t2, t6, 7
                  slt          t4, t6, t0
                  or           a0, a7, t0
                  sltiu        s11, s4, 1465
                  add          a4, t6, s10
                  sll          s4, s1, s0
                  and          s6, gp, s2
                  addi         sp, s9, -1637
                  xori         s10, s2, 185
                  sltu         s0, a5, t5
                  auipc        s6, 556587
                  bne          t2, s6, 104f
                  slti         t1, s5, 237
                  bne          a5, t1, 102f
                  and          s3, a5, zero
                  add          t1, t3, s9
95:               sltiu        s5, s8, 347
                  lui          ra, 415791
                  bgeu         a7, tp, 115f
                  sll          tp, t2, a6
                  srli         a0, t4, 13
                  xori         a7, s6, -1952
                  bne          t6, t0, 120f
102:              or           zero, s10, t2
                  srai         a7, t1, 10
104:              xori         a3, t4, 527
                  srl          ra, s5, s10
                  bgeu         s2, s5, 107f
107:              auipc        a4, 1009801
                  srli         zero, s2, 1
                  bgeu         sp, t6, 123f
                  addi         a5, gp, 56
                  xori         s10, s8, 35
                  slli         t5, t2, 17
                  sltu         gp, t6, a5
                  srli         s7, t5, 21
115:              blt          s5, s3, 129f
                  nop
                  bgeu         zero, s6, 129f
                  nop
                  addi         t4, gp, -1771
120:              or           tp, s9, sp
                  auipc        a4, 71544
                  nop
123:              ori          a4, t0, -1207
                  add          zero, s8, s0
                  blt          t3, t6, 128f
                  srai         a3, t5, 26
                  srl          s4, t4, a6
128:              and          t1, s2, s10
129:              sra          a0, a7, t1
                  bge          s4, s8, 141f
                  slti         s6, a1, 1343
                  sll          s11, s1, s4
                  nop
                  auipc        t5, 579513
                  sll          a1, a0, gp
                  bge          a6, a4, 140f
                  bltu         s2, s3, 154f
                  xor          a3, s11, t1
                  andi         s11, t5, -6
140:              ori          t5, ra, 40
141:              lui          a2, 805913
                  beq          s10, s2, 159f
                  bne          s2, t6, 148f
                  sltiu        t2, a0, 976
                  lui          t6, 835759
                  sll          a1, t2, a4
                  slli         t3, t5, 17
148:              blt          sp, s10, 154f
                  bgeu         a5, s7, 168f
                  srai         sp, t4, 15
                  andi         s7, ra, -844
                  or           s7, s11, t2
                  xori         s10, t1, 226
154:              sltu         gp, s2, s5
                  andi         t2, a7, -498
                  auipc        s6, 501514
                  bne          ra, sp, 158f
158:              sub          a1, sp, a2
159:              or           t4, t2, sp
                  sll          t5, t4, a2
                  beq          a1, gp, 174f
                  sltu         a3, s8, s2
                  bge          a2, sp, 183f
                  auipc        t4, 496565
                  srai         t5, s2, 22
                  sll          a7, s7, a4
                  bgeu         s8, t0, 177f
168:              srl          s7, a5, t2
                  addi         a3, s11, -109
                  srli         t1, a2, 27
                  add          a4, t0, a0
                  xor          sp, s11, t1
                  beq          s9, zero, 179f
174:              slt          t1, s11, s7
                  andi         s7, t4, -637
                  bgeu         t2, t1, 180f
177:              srli         a0, s9, 17
                  xori         s1, t0, -312
179:              and          t2, a4, s2
180:              bltu         s2, s3, 199f
                  lui          t2, 366364
                  nop
183:              sltiu        s7, s4, 1393
                  bgeu         s5, t0, 189f
                  sll          sp, zero, s6
                  srli         zero, a1, 4
                  lui          tp, 396847
                  srl          s10, a1, s3
189:              bne          t1, a4, 193f
                  beq          t2, s11, 202f
                  and          a5, s4, a4
                  bltu         s6, t1, 203f
193:              bgeu         s9, zero, 210f
                  srai         ra, t6, 18
                  auipc        a0, 118072
                  bge          a5, a1, 201f
                  srl          ra, s3, a5
                  beq          s4, s7, 212f
199:              bgeu         s5, a2, 200f
200:              sra          ra, s4, a7
201:              srl          t3, ra, t4
202:              or           zero, a2, s11
203:              slt          s0, a5, a6
                  lui          s8, 1046381
                  addi         t5, a3, -1938
                  ori          s1, a0, 1973
                  bne          t0, t3, 217f
                  xori         s7, t0, 905
                  sltiu        t2, a7, -1097
210:              srai         a7, t0, 17
                  slli         s5, s9, 3
212:              srai         a2, t5, 29
                  bltu         a4, t2, 232f
                  sll          a2, t3, s2
                  add          s4, s6, t5
                  sub          t1, s1, a4
217:              and          s3, s2, s11
                  lui          s11, 919207
                  lui          s8, 1011804
                  bne          a5, s11, 234f
                  slt          s8, t4, s8
                  sll          t1, a0, tp
                  srli         sp, s5, 27
                  sub          s0, s10, s0
                  and          t5, s4, a0
                  lui          zero, 753724
                  add          a0, s3, s0
                  bne          a4, a1, 238f
                  sltiu        a3, t2, 819
                  bgeu         t2, s4, 236f
                  add          t1, t1, s2
232:              srai         a4, zero, 27
                  sll          t6, a1, t6
234:              beq          s11, t0, 245f
                  slt          a3, s3, gp
236:              sll          t4, t1, a0
                  addi         a3, ra, -483
238:              slt          zero, a5, t1
                  slli         a4, s0, 24
                  auipc        s0, 884469
                  sll          tp, s11, gp
                  or           a1, t4, s11
                  bge          t0, ra, 261f
                  slt          a6, t5, t0
245:              beq          s4, gp, 257f
                  lui          s3, 573877
                  slti         s3, zero, 1789
                  sll          s1, a2, a6
                  nop
                  or           a2, a6, tp
                  bne          t3, s10, 254f
                  blt          a4, t4, 272f
                  xori         t2, t6, 52
254:              lui          gp, 380413
                  auipc        a1, 184369
                  srl          t5, t5, s7
257:              ori          s4, s8, 142
                  lui          s8, 99031
                  sll          t3, s3, t1
                  sub          a5, a4, s0
261:              sll          t2, a6, t4
                  beq          a5, s9, 276f
                  bge          s6, a6, 280f
                  sltu         a7, t5, a1
                  ori          s4, a5, -494
                  xor          s5, a6, a6
                  srl          s7, ra, sp
                  sll          s8, sp, a2
                  slli         s1, s0, 9
                  add          t1, s11, a0
                  bne          ra, s11, 272f
272:              sub          s7, s10, s4
                  ori          gp, t4, 1437
                  andi         ra, s10, 1510
                  add          s1, gp, a2
276:              sltiu        a3, s3, 930
                  sll          t3, a6, t2
                  srai         s4, a0, 8
                  xor          zero, a0, s8
280:              add          a4, t2, ra
                  auipc        ra, 570470
                  sltiu        s0, tp, 317
                  add          gp, t2, s3
                  bgeu         t0, t5, 299f
                  bltu         t1, s3, 288f
                  bne          t6, t1, 299f
                  sub          s5, a7, s10
288:              lui          s10, 1000969
                  add          s1, tp, gp
                  auipc        a0, 538040
                  sra          s6, t2, s9
                  sub          gp, t1, zero
                  srli         tp, sp, 0
                  xor          a1, s5, s11
                  slli         a0, sp, 31
                  sll          a7, s3, s8
                  slli         a5, a7, 23
                  sra          a1, tp, a2
299:              nop
                  slli         t5, s11, 30
                  sltiu        s11, a2, -1808
                  addi         t6, s7, -1871
                  srai         a3, t6, 7
                  bge          t2, s11, 312f
                  bltu         s8, s8, 325f
                  sltu         a5, gp, a7
                  bltu         s4, gp, 326f
                  bge          t0, a7, 327f
                  add          s4, a5, s10
                  slt          s11, a1, sp
                  nop
312:              xori         a0, a0, 954
                  beq          t3, s3, 314f
314:              lui          t4, 751617
                  auipc        s6, 95091
                  blt          t5, t0, 327f
                  sltu         s7, t6, tp
                  xor          gp, a0, s10
                  bltu         s3, t5, 320f
320:              sltu         a0, ra, gp
                  sll          zero, t4, a2
                  auipc        a5, 611641
                  srli         gp, ra, 24
                  andi         s8, a2, 1375
325:              beq          t0, t4, 340f
326:              blt          sp, t6, 331f
327:              xor          zero, s1, tp
                  slti         a2, s2, -629
                  sltiu        a5, s1, 844
                  sltiu        a3, t1, -1537
331:              sltu         t6, s5, t6
                  slti         a5, a0, 1601
                  add          s10, s11, t3
                  ori          gp, s4, -554
                  sub          a3, t0, t0
                  andi         zero, a5, -2027
                  and          a3, s8, s10
                  andi         sp, zero, -1614
                  or           t6, a5, s5
340:              sll          s6, t2, s1
                  sltu         a7, a4, s9
                  ori          s4, a2, 552
                  bgeu         sp, a2, 349f
                  sltu         s8, s11, a6
                  sltu         ra, gp, a7
                  slti         s3, t2, 1179
                  srli         a3, s8, 23
                  srl          tp, a7, s7
349:              sltiu        s1, t6, -1319
                  sra          a5, a2, t4
                  srl          s6, s5, s10
                  sub          a1, t2, s0
                  bne          a3, s11, 359f
                  add          s4, a6, s9
                  blt          s8, a2, 375f
                  sltiu        a6, t6, -137
                  nop
                  bgeu         zero, t4, 375f
359:              ori          a4, s5, -763
                  xori         t6, a6, 1571
                  andi         a4, sp, -1579
                  sltiu        a5, s5, 1941
                  nop
                  add          ra, s8, sp
                  sub          s5, s1, s3
                  sll          t6, a5, s5
                  andi         a3, s9, -1691
                  nop
                  auipc        s3, 724763
                  srai         t4, t3, 5
                  srl          t4, a7, ra
                  bltu         t4, s1, 382f
                  or           s5, a6, s10
                  beq          s0, gp, 378f
375:              srli         s0, t6, 16
                  srli         s5, a1, 1
                  srli         a1, s5, 11
378:              and          s8, t4, t5
                  lui          s4, 468770
                  nop
                  bge          ra, t5, 395f
382:              bne          a3, t2, 400f
                  bgeu         tp, s4, 400f
                  srl          s4, s1, t3
                  addi         a4, a1, 1071
                  ori          sp, s6, 1122
                  sltu         sp, t1, s7
                  sub          a4, s9, a7
                  sub          s10, s11, s1
                  beq          a6, t1, 404f
                  or           s11, tp, s4
                  beq          a1, t6, 404f
                  sll          gp, a7, ra
                  addi         a7, zero, -71
395:              add          s8, a6, s5
                  bne          a0, a5, 401f
                  sll          a2, zero, gp
                  bltu         t0, a2, 417f
                  xori         a5, t3, -1793
400:              auipc        a1, 301918
401:              ori          s0, s9, 1875
                  or           zero, s7, a3
                  bge          a2, s10, 413f
404:              slti         t2, s10, -195
                  bltu         t3, a7, 408f
                  bne          s10, t3, 425f
                  slli         t2, s6, 14
408:              slt          s5, s7, a2
                  add          t6, a6, s8
                  bgeu         a5, t6, 422f
                  sll          s11, t3, a4
                  bge          s8, s0, 415f
413:              slli         s6, a2, 4
                  addi         t2, s4, 898
415:              srl          t6, s10, a6
                  lui          s6, 689243
417:              bge          a6, tp, 430f
                  ori          t3, tp, -743
                  andi         s1, s9, -1946
                  xori         tp, s8, 328
                  auipc        t2, 803462
422:              auipc        s6, 43170
                  srli         s4, sp, 31
                  beq          a3, s11, 432f
425:              sra          a3, s10, s6
                  sll          gp, a6, s1
                  sltu         t5, t1, s9
                  sltu         s1, s1, t1
                  sub          a6, s10, s0
430:              slti         s4, a5, -473
                  xori         zero, sp, -2036
432:              srl          gp, a5, s3
                  slt          a7, s5, a6
                  srai         a7, t4, 5
                  xori         zero, sp, 1003
                  or           gp, s10, ra
                  srli         a3, t1, 7
                  srli         s4, s11, 16
                  bne          sp, s10, 459f
                  slt          a5, a0, s9
                  bltu         tp, s0, 455f
                  srai         s7, s9, 30
                  sll          zero, ra, a6
                  slli         s11, s0, 17
                  srli         a6, s4, 22
                  blt          t1, gp, 450f
                  blt          s10, sp, 458f
                  xor          s3, a6, s9
                  srai         a0, s11, 14
450:              slli         a1, gp, 22
                  srli         t3, a3, 25
                  bltu         s7, t2, 466f
                  sltu         a4, s6, s3
                  nop
455:              auipc        t3, 500281
                  xor          a5, zero, tp
                  add          a6, t1, a5
458:              bge          t4, tp, 468f
459:              andi         s10, s5, -27
                  srl          s6, gp, a3
                  sll          gp, s4, tp
                  bltu         a6, t5, 474f
                  beq          s0, a1, 483f
                  sll          s6, t2, a6
                  slti         s11, t6, 591
466:              blt          a4, s5, 477f
                  bge          t6, s4, 486f
468:              slli         a6, ra, 25
                  bge          s7, ra, 475f
                  ori          t1, ra, -1895
                  andi         s10, s10, 1229
                  slli         a6, ra, 8
                  slli         t2, t3, 18
474:              add          zero, a1, ra
475:              sll          t5, t0, gp
                  auipc        t1, 172157
477:              sltu         s0, a0, a0
                  bltu         zero, zero, 479f
479:              srai         t5, s6, 22
                  slti         s3, t3, -366
                  bgeu         s5, a4, 482f
482:              sll          gp, a0, a5
483:              or           ra, t5, s10
                  bge          s10, tp, 497f
                  nop
486:              lui          a2, 966824
                  sll          s7, a5, t0
                  lui          a3, 304759
                  add          s10, s11, t3
                  addi         a1, s9, 1125
                  bgeu         t1, s6, 508f
                  slt          tp, s4, s9
                  srl          a4, sp, s3
                  sra          s0, s8, a0
                  or           s10, s10, tp
                  add          s4, a5, t4
497:              bge          s6, a0, 507f
                  add          s7, s6, s11
                  add          s10, a4, s11
                  bne          t2, tp, 511f
                  blt          s9, t2, 521f
                  addi         t5, s10, 1645
                  lui          a7, 742987
                  addi         s11, t3, 1137
                  xor          tp, s2, gp
                  slli         sp, s7, 20
507:              slli         t6, t6, 16
508:              auipc        a2, 617139
                  slti         zero, s11, 601
                  auipc        tp, 155387
511:              sll          sp, t0, a3
                  sub          a4, s1, a7
                  or           s11, s11, s10
                  nop
                  beq          a7, a7, 520f
                  sra          a7, s7, a5
                  bgeu         s0, s9, 522f
                  slti         a7, t4, 144
                  sra          s1, s3, s9
520:              bltu         t0, s9, 534f
521:              srli         a5, s5, 12
522:              slt          zero, s9, t4
                  blt          t4, zero, 540f
                  bltu         s2, ra, 532f
                  add          tp, t3, a7
                  srli         a6, s1, 24
                  sltu         a7, s2, s6
                  bne          t4, gp, 540f
                  sltu         s10, s4, s9
                  srli         a3, t6, 4
                  srai         a2, tp, 14
532:              sltiu        a1, t2, -327
                  slli         t2, sp, 22
534:              addi         a2, s11, 839
                  ori          t6, s0, 1431
                  xor          ra, a0, tp
                  xori         a5, s10, 741
                  sltiu        s4, a7, 1960
                  xori         t6, a0, 1072
540:              andi         s4, ra, 591
                  or           sp, s0, ra
                  addi         s6, t1, 1315
                  bltu         s5, s9, 546f
                  bne          t2, t5, 558f
                  ori          gp, sp, 191
546:              andi         a0, a6, 1118
                  and          a3, a6, a6
                  sub          s8, t2, s8
                  auipc        t6, 706890
                  bne          a3, s5, 553f
                  bge          a7, s0, 557f
                  bne          a2, s2, 571f
553:              or           s0, a5, a5
                  lui          s0, 189700
                  ori          zero, t5, 740
                  sll          s3, a3, ra
557:              add          s8, s2, t2
558:              auipc        tp, 258864
                  bgeu         a5, a7, 563f
                  addi         zero, gp, -25
                  slli         t2, s5, 29
                  blt          t0, s5, 566f
563:              ori          s3, s3, 1216
                  and          s11, s2, t5
                  addi         a3, t1, 998
sub_5_9:          jal          t5, 8f
0:                jal          t1, 2f
1:                jal          ra, 14f
2:                jal          ra, 23f
3:                jal          t1, 15f
4:                jal          t1, 13f
5:                jal          ra, 22f
6:                jal          tp, 16f
7:                jal          ra, 24f
8:                jal          t6, 7b
9:                jal          ra, 19f
10:               jal          s7, 17f
11:               jal          t1, 3b
12:               jal          t1, 18f
13:               jal          ra, 12b
14:               jal          ra, 6b
15:               jal          tp, 9b
16:               jal          ra, 4b
17:               jal          a6, 20f
18:               jal          t1, 21f
19:               jal          ra, 25f
20:               jal          ra, 5b
21:               jal          ra, 11b
22:               jal          gp, 1b
23:               jal          ra, 10b
24:               jal          ra, 0b
25:               srli         a4, s5, 16
566:              sll          s0, a6, a2
                  srli         a6, s2, 31
                  sltiu        s10, s2, -1567
                  and          s3, a4, s10
                  auipc        s7, 364520
571:              xor          zero, a2, t4
                  srai         sp, s3, 14
                  xori         sp, tp, -189
                  xor          a2, s1, zero
                  sll          gp, ra, a3
                  bne          zero, zero, 595f
                  bge          s4, t1, 592f
                  lui          a2, 64368
                  srli         s11, s5, 17
                  bgeu         tp, s5, 598f
                  sltu         s3, s3, t6
                  or           t6, s6, t2
                  sltu         ra, a7, gp
                  and          ra, zero, t4
                  sltiu        gp, ra, -94
                  bne          t4, a7, 592f
                  srl          s3, a5, t3
                  nop
                  addi         tp, a7, -482
                  slti         a4, tp, 1782
                  addi         a6, s8, 1447
592:              blt          t3, zero, 612f
                  addi         s1, gp, 1535
                  lui          a5, 1041625
595:              sra          a0, s1, s9
                  xori         t2, ra, -699
                  auipc        s3, 473226
598:              sll          s10, t1, s10
                  slt          a4, s11, sp
                  xor          ra, s11, s2
                  sub          t3, a0, s3
                  ori          t1, s0, -1294
                  bne          a3, t0, 607f
                  addi         s0, s6, 21
                  bgeu         a2, s4, 623f
                  slt          a4, s11, t5
607:              slt          ra, s5, s9
                  blt          t0, s9, 621f
                  addi         a4, sp, -1558
                  bne          s0, s3, 614f
                  slt          a5, s8, t6
612:              and          s3, s1, a0
                  sltu         s5, t2, zero
614:              andi         t4, a3, -1428
                  sub          gp, a5, t2
                  srli         ra, gp, 22
                  bge          t5, s2, 627f
                  ori          a5, t2, -1424
                  xori         t2, a3, -1173
                  slt          a0, s7, s1
621:              lui          s6, 87377
                  slti         t6, a5, -1619
623:              srl          s5, t6, t4
                  nop
                  srli         a4, tp, 3
                  bgeu         t3, t3, 631f
627:              bltu         s10, a3, 637f
                  sub          gp, s4, s0
                  lui          gp, 884414
                  srl          a1, a0, s2
631:              bgeu         s5, t4, 646f
                  xor          sp, s11, s0
                  slti         sp, s10, 1664
                  bgeu         s4, t1, 639f
                  ori          s11, t4, 1584
                  or           s4, ra, a4
637:              srli         s5, s8, 6
                  andi         s1, sp, 439
639:              sra          t3, a2, s8
                  and          s5, s4, t3
                  xor          gp, s11, s4
                  sltu         a2, a2, a1
                  auipc        s5, 696151
                  bne          s7, s2, 656f
                  bge          s3, s2, 659f
646:              beq          s6, t1, 649f
                  slt          t3, s11, t2
                  bge          s4, sp, 659f
649:              srai         s1, s4, 29
                  bne          s3, t3, 669f
                  ori          a3, t0, 1285
                  slt          s11, gp, s9
                  slti         a6, a2, -1986
                  slli         a6, a6, 24
                  srl          gp, gp, t0
656:              bgeu         s6, a0, 673f
                  nop
                  sltiu        a0, s1, 742
659:              sltiu        t1, a7, -1084
                  sltu         a0, tp, a3
                  slt          s3, s4, s6
                  sll          t3, s1, tp
                  andi         a5, a6, 128
                  sltiu        t3, s2, -1166
                  sub          sp, a3, s3
                  nop
                  addi         s3, t4, 1197
                  add          t1, s11, a5
669:              srai         a7, s8, 6
                  bne          t1, a0, 687f
                  sll          s10, s2, s8
                  bne          s0, zero, 684f
673:              srai         a4, s5, 11
                  blt          gp, a4, 688f
                  bltu         t4, a6, 686f
                  andi         t3, zero, -2007
                  andi         zero, s4, -823
                  slli         zero, a5, 5
                  sll          t4, a3, s10
                  andi         sp, s0, 1662
                  ori          t1, sp, 941
                  slt          a2, s3, t5
                  sltiu        zero, a1, -1020
684:              srai         s3, s10, 19
                  srai         t2, s2, 31
686:              sub          a2, a2, a6
687:              sra          sp, tp, a6
688:              xor          sp, a7, s7
                  sll          t2, s1, a4
                  andi         s8, s8, -1338
                  srl          s5, a5, s3
                  sltiu        ra, a3, -857
                  bltu         t5, zero, 694f
694:              sltu         t6, t2, sp
                  sll          a5, t1, a3
                  slti         s10, a4, -1659
                  xor          a3, s5, s11
                  add          t5, s9, t5
                  sltu         s3, s9, t2
                  slti         t4, a4, -679
                  beq          s1, a7, 709f
                  nop
                  addi         t3, t1, -320
                  sltiu        t6, t6, -1306
                  blt          a5, t0, 724f
                  srli         a0, s5, 12
                  beq          a6, a4, 726f
                  bltu         a0, s0, 728f
709:              slt          t2, s4, s5
                  lui          t2, 879187
                  slt          a2, s1, s6
                  xor          sp, a2, gp
                  srli         t4, sp, 27
                  blt          s4, s9, 720f
                  blt          t5, t2, 718f
                  or           s11, s8, tp
                  lui          s7, 204121
718:              addi         s11, s2, -637
                  srli         t6, a2, 0
720:              srl          t3, a2, t1
                  sltu         a5, a5, a6
                  srl          a1, s10, s5
                  ori          s7, t2, 867
724:              sub          t5, a2, a5
                  srai         s5, s4, 19
726:              sll          sp, t3, a2
                  sltiu        sp, t4, -1812
728:              beq          s9, t0, 729f
729:              bne          t0, s7, 743f
                  sltiu        t2, ra, -919
                  sub          ra, s4, s1
                  or           tp, s9, t3
                  bne          a3, a7, 748f
                  sltu         t5, a1, s9
                  sltiu        s5, a4, 1148
                  bge          a0, a5, 747f
                  beq          s5, zero, 743f
                  and          a3, s11, s1
                  sra          s3, s3, a3
                  bne          a5, t6, 757f
                  and          t5, t6, s7
                  sub          sp, a7, s4
743:              bgeu         a2, s1, 763f
                  srli         s0, tp, 13
                  xori         a4, t4, 200
                  sra          a7, a7, s6
747:              lui          sp, 293901
748:              srai         t1, t4, 27
                  or           s0, s1, s7
                  sll          sp, a3, s9
                  slt          a0, tp, a3
                  xor          s10, t2, a4
                  sra          s1, a6, s11
                  srai         tp, a4, 11
                  add          a1, t5, t2
                  sub          t4, sp, s10
757:              slli         sp, s10, 29
                  sll          gp, t3, s1
                  ori          sp, s9, 1241
                  sra          s5, s10, a1
                  and          s7, s11, s0
                  andi         a3, a5, 993
763:              sub          t4, sp, sp
                  slli         s11, tp, 27
                  andi         a4, a2, -1923
                  sltiu        t5, s1, -112
                  sltu         s4, t0, ra
                  nop
                  sltiu        s8, s2, -1725
                  srli         s5, s10, 24
                  addi         ra, a7, -218
                  sll          ra, s0, s5
                  lw           t5, 4(t0)
                  ori          sp, s11, -1841
                  sltiu        a4, s4, -79
                  slti         t4, a2, 1148
                  or           sp, a2, sp
                  addi         t0, t0, 36
                  lui          s5, 278096
1167:             addi x28, x30, 1
1167:             jalr x28, x28, 0
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x18, x5, zero
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x15, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x15, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x15, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x15, x9, ecall_handler
                  li x9, 0x1
                  beq x15, x9, instr_fault_handler
                  li x9, 0x5
                  beq x15, x9, load_fault_handler
                  li x9, 0x7
                  beq x15, x9, store_fault_handler
                  li x9, 0xc
                  beq x15, x9, pt_fault_handler
                  li x9, 0xd
                  beq x15, x9, pt_fault_handler
                  li x9, 0xf
                  beq x15, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

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
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x5, x18, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x18, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x18, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x5, x18, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x5, x18, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x5, x18, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
